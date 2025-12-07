uint64_t sub_266F75CEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F75D50()
{
  result = qword_2800F0D40;
  if (!qword_2800F0D40)
  {
    sub_266F75DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0D40);
  }

  return result;
}

unint64_t sub_266F75DA8()
{
  result = qword_2800F0D38;
  if (!qword_2800F0D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0D38);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLinkActionFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWLINKSchemaFLOWLINKExecutionError(0);
  sub_266F76240(&qword_2800F0D68, type metadata accessor for FLOWLINKSchemaFLOWLINKExecutionError, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKExecutionError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F75FB0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWLINKSchemaFLOWLINKExecutionError(0);
  sub_266F76240(&qword_2800F0D68, type metadata accessor for FLOWLINKSchemaFLOWLINKExecutionError, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKExecutionError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F76134(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F76198(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F76240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F76288()
{
  result = qword_2800F0CD8;
  if (!qword_2800F0CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0CD8);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameter.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_266EC637C(v9, 1701667182, 0xE400000000000000);
  v13(v18, 0);
  v10(v6, *MEMORY[0x277D3E4E8], v3);
  v18[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x79617272417369, 0xE700000000000000);
  v14(v18, 0);
  type metadata accessor for LINKSchemaLINKParameterType(0);
  sub_266F767B0(&qword_2800F0D70, type metadata accessor for LINKSchemaLINKParameterType, &protocol conformance descriptor for LINKSchemaLINKParameterType);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 1701869940, 0xE400000000000000);
  return v15(v18, 0);
}

uint64_t sub_266F766A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F76708(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F767B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F767F8()
{
  result = qword_2800F0C48;
  if (!qword_2800F0C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0C48);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameterConfirmationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F0D78, 0x277D57438);
  sub_266ECAF2C(&qword_2800F0D80, &qword_2800F0D78, 0x277D57438, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F0D88, 0x277D57430);
  sub_266ECAF2C(&qword_2800F0D90, &qword_2800F0D88, 0x277D57430, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameterConfirmationEnded);
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

uint64_t sub_266F76C90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F76CF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameterConfirmationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026742FF60);
  return v8(v10, 0);
}

uint64_t sub_266F76FE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7704C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F770B0()
{
  result = qword_2800F0D90;
  if (!qword_2800F0D90)
  {
    sub_266F77108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0D90);
  }

  return result;
}

unint64_t sub_266F77108()
{
  result = qword_2800F0D88;
  if (!qword_2800F0D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0D88);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameter);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_266F7732C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameter);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_266F774CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F77530(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F0DA8, 0x277D57450);
  sub_266ECAF2C(&qword_2800F0DB0, &qword_2800F0DA8, 0x277D57450, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameterDisambiguationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F0DB8, 0x277D57448);
  sub_266ECAF2C(&qword_2800F0DC0, &qword_2800F0DB8, 0x277D57448, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameterDisambiguationEnded);
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

uint64_t sub_266F77A20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F77A84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameterDisambiguationEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F77D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F77DD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F77E38()
{
  result = qword_2800F0DC0;
  if (!qword_2800F0DC0)
  {
    sub_266F77E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0DC0);
  }

  return result;
}

unint64_t sub_266F77E90()
{
  result = qword_2800F0DB8;
  if (!qword_2800F0DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0DB8);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameterDisambiguationStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameter);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_266F780B4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameter);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_266F78254(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F782B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParametersUpdated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameter);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xEA00000000007372);
  return v5(v7, 0);
}

uint64_t sub_266F78534(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameter);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xEA00000000007372);
  return v5(v7, 0);
}

uint64_t sub_266F786D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F78738(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionPromptForValueContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F0DE8, 0x277D57470);
  sub_266ECAF2C(&qword_2800F0DF0, &qword_2800F0DE8, 0x277D57470, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionPromptForValueStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F0DF8, 0x277D57468);
  sub_266ECAF2C(&qword_2800F0E00, &qword_2800F0DF8, 0x277D57468, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionPromptForValueEnded);
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

uint64_t sub_266F78C28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F78C8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionPromptForValueEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F78F78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F78FDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F79040()
{
  result = qword_2800F0E00;
  if (!qword_2800F0E00)
  {
    sub_266F79098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0E00);
  }

  return result;
}

unint64_t sub_266F79098()
{
  result = qword_2800F0DF8;
  if (!qword_2800F0DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0DF8);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionPromptForValueStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameter);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_266F792BC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameter);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_266F7945C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F794C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLinkActionStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x41746E6572727563, 0xED00006E6F697463);
  return v5(v7, 0);
}

uint64_t sub_266F79744(uint64_t a1)
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
  sub_266EC637C(v3, 0x41746E6572727563, 0xED00006E6F697463);
  return v5(v7, 0);
}

uint64_t sub_266F798EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F79950(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
    sub_266ECB128(&unk_2878854A8);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_266F79DD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F79E38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F0E28, 0x277D57490);
  sub_266ECAF2C(&qword_2800F0E30, &qword_2800F0E28, 0x277D57490, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F0E38, 0x277D57488);
  sub_266ECAF2C(&qword_2800F0E40, &qword_2800F0E38, 0x277D57488, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationEnded);
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

uint64_t sub_266F7A328(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7A38C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267430300);
  return v8(v10, 0);
}

uint64_t sub_266F7A680(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7A6E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7A748()
{
  result = qword_2800F0E40;
  if (!qword_2800F0E40)
  {
    sub_266F7A7A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0E40);
  }

  return result;
}

unint64_t sub_266F7A7A0()
{
  result = qword_2800F0E38;
  if (!qword_2800F0E38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0E38);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F7AA34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7AA98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7AAFC()
{
  result = qword_2800F0E30;
  if (!qword_2800F0E30)
  {
    sub_266F7AB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0E30);
  }

  return result;
}

unint64_t sub_266F7AB54()
{
  result = qword_2800F0E28;
  if (!qword_2800F0E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0E28);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x74726F6853707061, 0xED00006449747563);
  return v8(v10, 0);
}

uint64_t sub_266F7ADF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7AE5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7AEC0()
{
  result = qword_2800F0E58;
  if (!qword_2800F0E58)
  {
    sub_266F7AF18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0E58);
  }

  return result;
}

unint64_t sub_266F7AF18()
{
  result = qword_2800F0E60;
  if (!qword_2800F0E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0E60);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267430400);
  return v8(v10, 0);
}

uint64_t sub_266F7B1B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7B218(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7B27C()
{
  result = qword_2800F0E68;
  if (!qword_2800F0E68)
  {
    sub_266F7B2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0E68);
  }

  return result;
}

unint64_t sub_266F7B2D4()
{
  result = qword_2800F0E70;
  if (!qword_2800F0E70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0E70);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x28223BE20](v1);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0E78, 0x277D57568);
  sub_266ECAF2C(&qword_2800F0E80, &qword_2800F0E78, 0x277D57568, &protocol conformance descriptor for FLOWSchemaFLOWEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v35, 0);
  sub_266ECB294(0, &qword_2800F0CF0, 0x277D573E0);
  sub_266ECAF2C(&qword_2800F0CE8, &qword_2800F0CF0, 0x277D573E0, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x8000000267430460);
  v9(v35, 0);
  sub_266ECB294(0, &qword_2800F0E88, 0x277D574B0);
  sub_266ECAF2C(&qword_2800F0E90, &qword_2800F0E88, 0x277D574B0, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKEntityDisambiguationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x8000000267430480);
  v10(v35, 0);
  sub_266ECB294(0, &qword_2800F0D30, 0x277D573E8);
  sub_266ECAF2C(&qword_2800F0D28, &qword_2800F0D30, 0x277D573E8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionConversionContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x80000002674304A0);
  v11(v35, 0);
  sub_266ECB294(0, &qword_2800F0D60, 0x277D57408);
  sub_266ECAF2C(&qword_2800F0D58, &qword_2800F0D60, 0x277D57408, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionExecutionContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x80000002674304C0);
  v12(v35, 0);
  sub_266ECB294(0, &qword_2800F0E10, 0x277D57460);
  sub_266ECAF2C(&qword_2800F0E08, &qword_2800F0E10, 0x277D57460, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionPromptForValueContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x80000002674304E0);
  v13(v35, 0);
  sub_266ECB294(0, &qword_2800F0DD0, 0x277D57440);
  sub_266ECAF2C(&qword_2800F0DC8, &qword_2800F0DD0, 0x277D57440, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000024, 0x8000000267430500);
  v14(v35, 0);
  sub_266ECB294(0, &qword_2800F0DA0, 0x277D57428);
  sub_266ECAF2C(&qword_2800F0D98, &qword_2800F0DA0, 0x277D57428, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameterConfirmationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000022, 0x8000000267430530);
  v15(v35, 0);
  sub_266ECB294(0, &qword_2800F0CB0, 0x277D573C8);
  sub_266ECAF2C(&qword_2800F0CA8, &qword_2800F0CB0, 0x277D573C8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionConfirmationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x8000000267430560);
  v16(v35, 0);
  sub_266ECB294(0, &qword_2800F0E70, 0x277D574A0);
  sub_266ECAF2C(&qword_2800F0E68, &qword_2800F0E70, 0x277D574A0, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x8000000267430580);
  v17(v35, 0);
  sub_266ECB294(0, &qword_2800F0E20, 0x277D57478);
  sub_266ECAF2C(&qword_2800F0E18, &qword_2800F0E20, 0x277D57478, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionTier1);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0x697463416B6E696CLL, 0xEF31726569546E6FLL);
  v18(v35, 0);
  sub_266ECB294(0, &qword_2800F0DE0, 0x277D57458);
  sub_266ECAF2C(&qword_2800F0DD8, &qword_2800F0DE0, 0x277D57458, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParametersUpdated);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v19 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x80000002674305A0);
  v19(v35, 0);
  sub_266ECB294(0, &qword_2800F0E50, 0x277D57480);
  sub_266ECAF2C(&qword_2800F0E48, &qword_2800F0E50, 0x277D57480, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v20 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000026, 0x80000002674305C0);
  v20(v35, 0);
  sub_266ECB294(0, &qword_2800F0E60, 0x277D57498);
  sub_266ECAF2C(&qword_2800F0E58, &qword_2800F0E60, 0x277D57498, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v21 = v32;
  v22 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000023, 0x80000002674305F0);
  v22(v35, 0);
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
  (*(v33 + 32))(v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, v21, v34);
  v23(v35, 0);
  sub_266ECB128(&unk_2878854D8);
  return sub_2673811CC();
}

uint64_t sub_266F7C174(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F7C20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F7C2D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7C33C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F7C39C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0E98, &qword_2800F0EA0, 0x277D574A8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F0EA8, &qword_2800F0EA0, 0x277D574A8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKClientEvent);
  result = sub_266ECAF2C(&qword_2800F0EB0, &qword_2800F0EA0, 0x277D574A8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKEntityDisambiguationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F0EC0, 0x277D574C8);
  sub_266ECAF2C(&qword_2800F0EC8, &qword_2800F0EC0, 0x277D574C8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKEntityDisambiguationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F0ED0, 0x277D574B8);
  sub_266ECAF2C(&qword_2800F0ED8, &qword_2800F0ED0, 0x277D574B8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKEntityDisambiguationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0EE0, 0x277D574C0);
  sub_266ECAF2C(&qword_2800F0EE8, &qword_2800F0EE0, 0x277D574C0, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKEntityDisambiguationFailed);
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

uint64_t sub_266F7C9B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7CA18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKEntityDisambiguationEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F7CD04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7CD68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7CDCC()
{
  result = qword_2800F0ED8;
  if (!qword_2800F0ED8)
  {
    sub_266F7CE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0ED8);
  }

  return result;
}

unint64_t sub_266F7CE24()
{
  result = qword_2800F0ED0;
  if (!qword_2800F0ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0ED0);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKEntityDisambiguationFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F7D0B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7D11C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7D180()
{
  result = qword_2800F0EE8;
  if (!qword_2800F0EE8)
  {
    sub_266F7D1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0EE8);
  }

  return result;
}

unint64_t sub_266F7D1D8()
{
  result = qword_2800F0EE0;
  if (!qword_2800F0EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0EE0);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKEntityDisambiguationReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x8000000267430750, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x8000000267430780, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000037, 0x80000002674307C0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F7D438(uint64_t a1)
{
  v2 = sub_266F7D53C(&qword_2800F0EF8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F7D4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F7D53C(&qword_2800F0EF8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F7D53C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKEntityDisambiguationStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason(0);
  sub_266F7D9CC(&qword_2800F0EF0, type metadata accessor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F7D73C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason(0);
  sub_266F7D9CC(&qword_2800F0EF0, type metadata accessor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F7D8C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7D924(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F7D9CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F7DA14()
{
  result = qword_2800F0EC0;
  if (!qword_2800F0EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0EC0);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKExecutionError.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267430890, isUniquelyReferenced_nonNull_native);
  *v3 = v62;

  v1(v77, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x80000002674308B0, v8);
  *v7 = v63;

  v5(v77, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x80000002674308E0, v12);
  *v11 = v64;

  v9(v77, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x8000000267430910, v16);
  *v15 = v65;

  v13(v77, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(2000, 0xD000000000000037, 0x8000000267430940, v20);
  *v19 = v66;

  v17(v77, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(2001, 0xD000000000000040, 0x8000000267430980, v24);
  *v23 = v67;

  v21(v77, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(2002, 0xD000000000000040, 0x80000002674309D0, v28);
  *v27 = v68;

  v25(v77, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(2003, 0xD000000000000043, 0x8000000267430A20, v32);
  *v31 = v69;

  v29(v77, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(2004, 0xD000000000000046, 0x8000000267430A70, v36);
  *v35 = v70;

  v33(v77, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(2005, 0xD00000000000004DLL, 0x8000000267430AC0, v40);
  *v39 = v71;

  v37(v77, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(2006, 0xD00000000000003ALL, 0x8000000267430B10, v44);
  *v43 = v72;

  v41(v77, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(2007, 0xD00000000000003ELL, 0x8000000267430B50, v48);
  *v47 = v73;

  v45(v77, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(2008, 0xD000000000000044, 0x8000000267430B90, v52);
  *v51 = v74;

  v49(v77, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(2009, 0xD00000000000003DLL, 0x8000000267430BE0, v56);
  *v55 = v75;

  v53(v77, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(2010, 0xD000000000000040, 0x8000000267430C20, v60);
  *v59 = v76;

  return v57(v77, 0);
}

uint64_t sub_266F7E1C0(uint64_t a1)
{
  v2 = sub_266F7E2C4(&qword_2800F0F00, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKExecutionError);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F7E228(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F7E2C4(&qword_2800F0F00, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKExecutionError);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F7E2C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWLINKSchemaFLOWLINKExecutionError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWAppContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v34 = a1;
  v1 = sub_26738113C();
  v31 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E530];
  v9 = *(v2 + 104);
  v32 = (v2 + 104);
  v33 = v9;
  v9(v4, v8, v1);
  v37[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v35 = *(v10 - 8);
  v11 = (v35 + 56);
  v12 = *(v35 + 56);
  v30 = v10;
  v12(v7, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449656C646E7562, 0xE800000000000000);
  v13(v37, 0);
  v14 = v31;
  v15 = v33;
  v33(v4, v8, v31);
  v37[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6973726556707061, 0xEA00000000006E6FLL);
  v16(v37, 0);
  v15(v4, *MEMORY[0x277D3E4E8], v14);
  v37[0] = 1;
  sub_26738114C();
  v17 = v30;
  v32 = v12;
  v33 = v11;
  v12(v7, 0, 1, v30);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x8000000267430CA0);
  v18(v37, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v36, 0xD00000000000001DLL, 0x8000000267430CA0);
  v21 = *(v35 + 48);
  v35 += 48;
  v31 = v21;
  if (!v21(v22, 1, v17))
  {
    sub_266ECB128(&unk_287885510);
    sub_26738115C();
  }

  (v20)(v36, 0);
  v19(v37, 0);
  type metadata accessor for FLOWSchemaFLOWAppResolutionType(0);
  sub_266F7EAE4(&qword_2800F0F08, type metadata accessor for FLOWSchemaFLOWAppResolutionType, &protocol conformance descriptor for FLOWSchemaFLOWAppResolutionType);
  sub_26738120C();
  v23 = v32;
  v32(v7, 0, 1, v17);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267430CC0);
  v24(v37, 0);
  type metadata accessor for FLOWSchemaFLOWProtectedAppType(0);
  sub_266F7EAE4(&qword_2800F0F10, type metadata accessor for FLOWSchemaFLOWProtectedAppType, &protocol conformance descriptor for FLOWSchemaFLOWProtectedAppType);
  sub_26738120C();
  v23(v7, 0, 1, v17);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267430CE0);
  v25(v37, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v36, 0xD000000000000010, 0x8000000267430CE0);
  if (!v31(v28, 1, v17))
  {
    sub_266ECB128(&unk_287885538);
    sub_26738115C();
  }

  (v27)(v36, 0);
  return v26(v37, 0);
}

uint64_t sub_266F7E9D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7EA3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F7EAE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F7EB2C()
{
  result = qword_2800F0F20;
  if (!qword_2800F0F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0F20);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWAppResolutionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267430D30, isUniquelyReferenced_nonNull_native);
  *v3 = v58;

  v1(v72, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267430D50, v8);
  *v7 = v59;

  v5(v72, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267430D70, v12);
  *v11 = v60;

  v9(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x8000000267430D90, v16);
  *v15 = v61;

  v13(v72, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000038, 0x8000000267430DC0, v20);
  *v19 = v62;

  v17(v72, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000032, 0x8000000267430E00, v24);
  *v23 = v63;

  v21(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000037, 0x8000000267430E40, v28);
  *v27 = v64;

  v25(v72, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x8000000267430E80, v32);
  *v31 = v65;

  v29(v72, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000027, 0x8000000267430EB0, v36);
  *v35 = v66;

  v33(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002FLL, 0x8000000267430EE0, v40);
  *v39 = v67;

  v37(v72, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000046, 0x8000000267430F10, v44);
  *v43 = v68;

  v41(v72, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x8000000267430F60, v48);
  *v47 = v69;

  v45(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000023, 0x8000000267430F90, v52);
  *v51 = v70;

  v49(v72, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000024, 0x8000000267430FC0, v56);
  *v55 = v71;

  return v53(v72, 0);
}

uint64_t sub_266F7F260(uint64_t a1)
{
  v2 = sub_266F7F364(&qword_2800F0F28, &protocol conformance descriptor for FLOWSchemaFLOWAppResolutionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F7F2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F7F364(&qword_2800F0F28, &protocol conformance descriptor for FLOWSchemaFLOWAppResolutionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F7F364(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWAppResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWBriefingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWBriefingEnabledFeatures(0);
  sub_266F7F76C(&qword_2800F0F30, type metadata accessor for FLOWSchemaFLOWBriefingEnabledFeatures, &protocol conformance descriptor for FLOWSchemaFLOWBriefingEnabledFeatures);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x4664656C62616E65, 0xEF73657275746165);
  v6(v9, 0);
  type metadata accessor for FLOWSchemaFLOWBriefingTaskAttribute(0);
  sub_266F7F76C(&qword_2800F0F38, type metadata accessor for FLOWSchemaFLOWBriefingTaskAttribute, &protocol conformance descriptor for FLOWSchemaFLOWBriefingTaskAttribute);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267431020);
  return v7(v9, 0);
}

uint64_t sub_266F7F660(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7F6C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F7F76C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F7F7B4()
{
  result = qword_2800F0F48;
  if (!qword_2800F0F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0F48);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWBriefingEnabledFeatures.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267431080, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x80000002674310B0, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x80000002674310E0, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267431110, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x8000000267431140, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x8000000267431170, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x80000002674311A0, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x80000002674311D0, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_266F7FC50(uint64_t a1)
{
  v2 = sub_266F7FD54(&qword_2800F0F50, &protocol conformance descriptor for FLOWSchemaFLOWBriefingEnabledFeatures);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F7FCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F7FD54(&qword_2800F0F50, &protocol conformance descriptor for FLOWSchemaFLOWBriefingEnabledFeatures);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F7FD54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWBriefingEnabledFeatures(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWBriefingTaskAttribute.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267431240, isUniquelyReferenced_nonNull_native);
  *v3 = v54;

  v1(v67, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267431270, v8);
  *v7 = v55;

  v5(v67, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x80000002674312A0, v12);
  *v11 = v56;

  v9(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x80000002674312D0, v16);
  *v15 = v57;

  v13(v67, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267431300, v20);
  *v19 = v58;

  v17(v67, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x8000000267431330, v24);
  *v23 = v59;

  v21(v67, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x8000000267431360, v28);
  *v27 = v60;

  v25(v67, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267431390, v32);
  *v31 = v61;

  v29(v67, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x80000002674313B0, v36);
  *v35 = v62;

  v33(v67, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000023, 0x80000002674313E0, v40);
  *v39 = v63;

  v37(v67, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000021, 0x8000000267431410, v44);
  *v43 = v64;

  v41(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000020, 0x8000000267431440, v48);
  *v47 = v65;

  v45(v67, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000020, 0x8000000267431470, v52);
  *v51 = v66;

  return v49(v67, 0);
}

uint64_t sub_266F8041C(uint64_t a1)
{
  v2 = sub_266F80520(&qword_2800F0F58, &protocol conformance descriptor for FLOWSchemaFLOWBriefingTaskAttribute);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F80484(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F80520(&qword_2800F0F58, &protocol conformance descriptor for FLOWSchemaFLOWBriefingTaskAttribute);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F80520(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWBriefingTaskAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0E78, 0x277D57568);
  sub_266ECAF2C(&qword_2800F0E80, &qword_2800F0E78, 0x277D57568, &protocol conformance descriptor for FLOWSchemaFLOWEventMetadata);
  v57 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v12(v60, 0);
  sub_266ECB294(0, &qword_2800F0F60, 0x277D57710);
  sub_266ECAF2C(&qword_2800F0F68, &qword_2800F0F60, 0x277D57710, &protocol conformance descriptor for FLOWSchemaFLOWStep);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x70657453776F6C66, 0xE800000000000000);
  v13(v60, 0);
  sub_266ECB294(0, &qword_2800F0F70, 0x277D57558);
  sub_266ECAF2C(&qword_2800F0F78, &qword_2800F0F70, 0x277D57558, &protocol conformance descriptor for FLOWSchemaFLOWEntityContextTier1);
  sub_26738121C();
  v54 = v11;
  v55 = v10 + 56;
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x80000002674314D0);
  v14(v60, 0);
  v58 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v59, 0xD000000000000016, 0x80000002674314D0);
  v53 = *(v10 + 48);
  v56 = v10 + 48;
  if (!v53(v17, 1, v9))
  {
    sub_266ECB128(&unk_287885560);
    sub_26738115C();
  }

  (v16)(v59, 0);
  v15(v60, 0);
  sub_266ECB294(0, &qword_2800F0F80, 0x277D576D0);
  sub_266ECAF2C(&qword_2800F0F88, &qword_2800F0F80, 0x277D576D0, &protocol conformance descriptor for FLOWSchemaFLOWSmsAttachmentMetadataTier1);
  sub_26738121C();
  v18 = v54;
  v54(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x80000002674314F0);
  v19(v60, 0);
  sub_266ECB294(0, &qword_2800F0F90, 0x277D57678);
  sub_266ECAF2C(&qword_2800F0F98, &qword_2800F0F90, 0x277D57678, &protocol conformance descriptor for FLOWSchemaFLOWPegasusContextTier1);
  sub_26738121C();
  v18(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267431510);
  v20(v60, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v59, 0xD000000000000013, 0x8000000267431510);
  v23 = v53;
  if (!v53(v24, 1, v9))
  {
    sub_266ECB128(&unk_287885588);
    sub_26738115C();
  }

  (v22)(v59, 0);
  v21(v60, 0);
  sub_266ECB294(0, &qword_2800F0FA0, 0x277D57640);
  sub_266ECAF2C(&qword_2800F0FA8, &qword_2800F0FA0, 0x277D57640, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerPlaybackContextTier1);
  sub_26738121C();
  v54(v8, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x8000000267431530);
  v25(v60, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v59, 0xD00000000000001FLL, 0x8000000267431530);
  if (!v23(v28, 1, v9))
  {
    sub_266ECB128(&unk_2878855B0);
    sub_26738115C();
  }

  (v27)(v59, 0);
  v26(v60, 0);
  sub_266ECB294(0, &qword_2800F0FB0, 0x277D57658);
  sub_266ECAF2C(&qword_2800F0FB8, &qword_2800F0FB0, 0x277D57658, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerRadioStationContextTier1);
  sub_26738121C();
  v54(v8, 0, 1, v9);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, 0x8000000267431550);
  v29(v60, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v59, 0xD000000000000023, 0x8000000267431550);
  if (!v23(v32, 1, v9))
  {
    sub_266ECB128(&unk_2878855D8);
    sub_26738115C();
  }

  (v31)(v59, 0);
  v30(v60, 0);
  sub_266ECB294(0, &qword_2800F0FC0, 0x277D57528);
  sub_266ECAF2C(&qword_2800F0FC8, &qword_2800F0FC0, 0x277D57528, &protocol conformance descriptor for FLOWSchemaFLOWDomainExecutionContext);
  sub_26738121C();
  v33 = v54;
  v54(v8, 0, 1, v9);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267431580);
  v34(v60, 0);
  sub_266ECB294(0, &qword_2800F0FD0, 0x277D575F0);
  sub_266ECAF2C(&qword_2800F0FD8, &qword_2800F0FD0, 0x277D575F0, &protocol conformance descriptor for FLOWSchemaFLOWLocationAccessPermissionPromptContext);
  sub_26738121C();
  v33(v8, 0, 1, v9);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, 0x80000002674315A0);
  v35(v60, 0);
  sub_266ECB294(0, &qword_2800F0FE0, 0x277D57510);
  sub_266ECAF2C(&qword_2800F0FE8, &qword_2800F0FE0, 0x277D57510, &protocol conformance descriptor for FLOWSchemaFLOWContactTier1);
  sub_26738121C();
  v33(v8, 0, 1, v9);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674315D0);
  v36(v60, 0);
  v37 = sub_2673811AC();
  v38 = sub_266ECB6CC(v59, 0xD000000000000010, 0x80000002674315D0);
  if (!v53(v39, 1, v9))
  {
    sub_266ECB128(&unk_287885600);
    sub_26738115C();
  }

  (v38)(v59, 0);
  v37(v60, 0);
  v40 = v50;
  sub_26738117C();
  v41 = sub_2673811BC();
  v43 = v42;
  v44 = *v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v43 = v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v44 = sub_266ECAD54(0, v44[2] + 1, 1, v44);
    *v43 = v44;
  }

  v47 = v44[2];
  v46 = v44[3];
  if (v47 >= v46 >> 1)
  {
    v44 = sub_266ECAD54((v46 > 1), v47 + 1, 1, v44);
    *v43 = v44;
  }

  v44[2] = v47 + 1;
  (*(v51 + 32))(v44 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v47, v40, v52);
  v41(v60, 0);
  sub_266ECB128(&unk_287885628);
  return sub_2673811CC();
}

uint64_t sub_266F81364(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F813FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F814C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8152C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F8158C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0FF0, &qword_2800F0FF8, 0x277D57500, &protocol conformance descriptor for FLOWSchemaFLOWClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F1000, &qword_2800F0FF8, 0x277D57500, &protocol conformance descriptor for FLOWSchemaFLOWClientEvent);
  result = sub_266ECAF2C(&qword_2800F1008, &qword_2800F0FF8, 0x277D57500, &protocol conformance descriptor for FLOWSchemaFLOWClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static FLOWSchemaFLOWContact.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v18, 0);
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v17 + 104);
  v17 += 104;
  v12(v4, v11, v16);
  v18[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6974616C65527369, 0xEE00706968736E6FLL);
  v13(v18, 0);
  v12(v4, v11, v16);
  v18[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x8000000267431620);
  return v14(v18, 0);
}

uint64_t sub_266F81A88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F81AEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWContactTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0x4E746361746E6F63, 0xEB00000000656D61);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x4E746361746E6F63, 0xEB00000000656D61);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287885658);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_266F81F70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F81FD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWCrossIntentRankerResponse.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "ssIntentRankerResponse";
  v9 = *MEMORY[0x277D3E530];
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
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x80000002674316D0);
  v14(v19, 0);
  sub_266ECB128(&unk_287885680);
  return sub_2673811CC();
}

uint64_t sub_266F823C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F82424(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F82488()
{
  result = qword_2800F1028;
  if (!qword_2800F1028)
  {
    sub_266F824E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1028);
  }

  return result;
}

unint64_t sub_266F824E0()
{
  result = qword_2800F1030;
  if (!qword_2800F1030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1030);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWDomainContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1038, 0x277D57728);
  sub_266ECAF2C(&qword_2800F1040, &qword_2800F1038, 0x277D57728, &protocol conformance descriptor for FLOWSchemaFLOWVoiceShortcutContext);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x8000000267431720);
  v8(v34, 0);
  sub_266ECB294(0, &qword_2800F1048, 0x277D57578);
  sub_266ECAF2C(&qword_2800F1050, &qword_2800F1048, 0x277D57578, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000015, 0x8000000267431740);
  v9(v34, 0);
  sub_266ECB294(0, &qword_2800F1058, 0x277D57680);
  sub_266ECAF2C(&qword_2800F1060, &qword_2800F1058, 0x277D57680, &protocol conformance descriptor for FLOWSchemaFLOWPhoneCallContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x8000000267431760);
  v10(v34, 0);
  sub_266ECB294(0, &qword_2800F1068, 0x277D576E0);
  sub_266ECAF2C(&qword_2800F1070, &qword_2800F1068, 0x277D576E0, &protocol conformance descriptor for FLOWSchemaFLOWSmsContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x65746E6F43736D73, 0xEA00000000007478);
  v11(v34, 0);
  sub_266ECB294(0, &qword_2800F1078, 0x277D57628);
  sub_266ECAF2C(&qword_2800F1080, &qword_2800F1078, 0x277D57628, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x8000000267431780);
  v12(v34, 0);
  sub_266ECB294(0, &qword_2800F1088, 0x277D575B0);
  sub_266ECAF2C(&qword_2800F1090, &qword_2800F1088, 0x277D575B0, &protocol conformance descriptor for FLOWSchemaFLOWIdentityContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x797469746E656469, 0xEF747865746E6F43);
  v13(v34, 0);
  sub_266ECB294(0, &qword_2800F0F48, 0x277D574F8);
  sub_266ECAF2C(&qword_2800F0F40, &qword_2800F0F48, 0x277D574F8, &protocol conformance descriptor for FLOWSchemaFLOWBriefingContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0x676E696665697262, 0xEF747865746E6F43);
  v14(v34, 0);
  sub_266ECB294(0, &qword_2800F1098, 0x277D57670);
  sub_266ECAF2C(&qword_2800F10A0, &qword_2800F1098, 0x277D57670, &protocol conformance descriptor for FLOWSchemaFLOWPegasusContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0x4373757361676570, 0xEE00747865746E6FLL);
  v15(v34, 0);
  sub_266ECB294(0, &qword_2800F10A8, 0x277D575B8);
  sub_266ECAF2C(&qword_2800F10B0, &qword_2800F10A8, 0x277D575B8, &protocol conformance descriptor for FLOWSchemaFLOWInformationPluginContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x80000002674317A0);
  v16(v34, 0);
  sub_266ECB294(0, &qword_2800F10B8, 0x277D57590);
  sub_266ECAF2C(&qword_2800F10C0, &qword_2800F10B8, 0x277D57590, &protocol conformance descriptor for FLOWSchemaFLOWHomeCommunicationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x80000002674317C0);
  v17(v34, 0);
  sub_266ECB294(0, &qword_2800F10C8, 0x277D57668);
  sub_266ECAF2C(&qword_2800F10D0, &qword_2800F10C8, 0x277D57668, &protocol conformance descriptor for FLOWSchemaFLOWNotificationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x80000002674317E0);
  v18(v34, 0);
  sub_266ECB294(0, &qword_2800F10D8, 0x277D57690);
  sub_266ECAF2C(&qword_2800F10E0, &qword_2800F10D8, 0x277D57690, &protocol conformance descriptor for FLOWSchemaFLOWPhotosContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v19 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F43736F746F6870, 0xED0000747865746ELL);
  v19(v34, 0);
  sub_266ECB294(0, &qword_2800F10E8, 0x277D576B8);
  sub_266ECAF2C(&qword_2800F10F0, &qword_2800F10E8, 0x277D576B8, &protocol conformance descriptor for FLOWSchemaFLOWSafariContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v20 = v31;
  v21 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F43697261666173, 0xED0000747865746ELL);
  v21(v34, 0);
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
  (*(v32 + 32))(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, v20, v33);
  return v22(v34, 0);
}

uint64_t sub_266F832B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F83318(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWDomainExecutionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F1108, 0x277D57548);
  sub_266ECAF2C(&qword_2800F1110, &qword_2800F1108, 0x277D57548, &protocol conformance descriptor for FLOWSchemaFLOWDomainExecutionStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F1118, 0x277D57530);
  sub_266ECAF2C(&qword_2800F1120, &qword_2800F1118, 0x277D57530, &protocol conformance descriptor for FLOWSchemaFLOWDomainExecutionEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F1128, 0x277D57538);
  sub_266ECAF2C(&qword_2800F1130, &qword_2800F1128, 0x277D57538, &protocol conformance descriptor for FLOWSchemaFLOWDomainExecutionFailed);
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

uint64_t sub_266F83998(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F839FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWDomainExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F83CE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F83D4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F83DB0()
{
  result = qword_2800F1120;
  if (!qword_2800F1120)
  {
    sub_266F83E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1120);
  }

  return result;
}

unint64_t sub_266F83E08()
{
  result = qword_2800F1118;
  if (!qword_2800F1118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1118);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWDomainExecutionFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F8409C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F84100(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F84164()
{
  result = qword_2800F1130;
  if (!qword_2800F1130)
  {
    sub_266F841BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1130);
  }

  return result;
}

unint64_t sub_266F841BC()
{
  result = qword_2800F1128;
  if (!qword_2800F1128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1128);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWDomainExecutionMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000020, 0x8000000267431900);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0xD000000000000020, 0x8000000267431900);
  if (!(*(v8 + 48))(v12, 1, v7))
  {
    sub_266ECB128(&unk_2878856B0);
    sub_26738115C();
  }

  (v11)(v14, 0);
  v10(v15, 0);
  sub_266ECB128(&unk_2878856E0);
  return sub_2673811CC();
}

uint64_t sub_266F84524(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F84588(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F845EC()
{
  result = qword_2800F1138;
  if (!qword_2800F1138)
  {
    sub_266F84644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1138);
  }

  return result;
}

unint64_t sub_266F84644()
{
  result = qword_2800F1140;
  if (!qword_2800F1140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1140);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWDomainExecutionStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWDomainExecutionType(0);
  sub_266F849EC();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267431970);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F1140, 0x277D57540);
  sub_266ECAF2C(&qword_2800F1138, &qword_2800F1140, 0x277D57540, &protocol conformance descriptor for FLOWSchemaFLOWDomainExecutionMetadata);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267431990);
  return v7(v9, 0);
}

uint64_t sub_266F84928(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8498C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F849EC()
{
  result = qword_2800F1148;
  if (!qword_2800F1148)
  {
    type metadata accessor for FLOWSchemaFLOWDomainExecutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1148);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWDomainExecutionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v242 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674319F0, isUniquelyReferenced_nonNull_native);
  *v3 = v242;

  v1(v302, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v243 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(100, 0xD000000000000036, 0x8000000267431A10, v8);
  *v7 = v243;

  v5(v302, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v244 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(101, 0xD000000000000039, 0x8000000267431A50, v12);
  *v11 = v244;

  v9(v302, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v245 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(102, 0xD000000000000047, 0x8000000267431A90, v16);
  *v15 = v245;

  v13(v302, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v246 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(103, 0xD00000000000003ELL, 0x8000000267431AE0, v20);
  *v19 = v246;

  v17(v302, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v247 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(104, 0xD000000000000037, 0x8000000267431B20, v24);
  *v23 = v247;

  v21(v302, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v248 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(200, 0xD000000000000038, 0x8000000267431B60, v28);
  *v27 = v248;

  v25(v302, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v249 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(201, 0xD00000000000003BLL, 0x8000000267431BA0, v32);
  *v31 = v249;

  v29(v302, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v250 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(202, 0xD00000000000003ALL, 0x8000000267431BE0, v36);
  *v35 = v250;

  v33(v302, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v251 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(203, 0xD000000000000044, 0x8000000267431C20, v40);
  *v39 = v251;

  v37(v302, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v252 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(204, 0xD000000000000040, 0x8000000267431C70, v44);
  *v43 = v252;

  v41(v302, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v253 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(205, 0xD000000000000046, 0x8000000267431CC0, v48);
  *v47 = v253;

  v45(v302, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v254 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(206, 0xD000000000000048, 0x8000000267431D10, v52);
  *v51 = v254;

  v49(v302, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v255 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(207, 0xD000000000000038, 0x8000000267431D60, v56);
  *v55 = v255;

  v53(v302, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v256 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(208, 0xD000000000000037, 0x8000000267431DA0, v60);
  *v59 = v256;

  v57(v302, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v257 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(300, 0xD000000000000029, 0x8000000267431DE0, v64);
  *v63 = v257;

  v61(v302, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v258 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(301, 0xD00000000000002ELL, 0x8000000267431E10, v68);
  *v67 = v258;

  v65(v302, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v259 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(302, 0xD000000000000029, 0x8000000267431E40, v72);
  *v71 = v259;

  v69(v302, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v260 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(400, 0xD00000000000003ALL, 0x8000000267431E70, v76);
  *v75 = v260;

  v73(v302, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v261 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(401, 0xD000000000000036, 0x8000000267431EB0, v80);
  *v79 = v261;

  v77(v302, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v262 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(1000, 0xD000000000000039, 0x8000000267431EF0, v84);
  *v83 = v262;

  v81(v302, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v263 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(1001, 0xD000000000000046, 0x8000000267431F30, v88);
  *v87 = v263;

  v85(v302, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v264 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(1002, 0xD00000000000004CLL, 0x8000000267431F80, v92);
  *v91 = v264;

  v89(v302, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v265 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(1003, 0xD00000000000004DLL, 0x8000000267431FD0, v96);
  *v95 = v265;

  v93(v302, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v266 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(1004, 0xD00000000000003ELL, 0x8000000267432020, v100);
  *v99 = v266;

  v97(v302, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v267 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(1005, 0xD00000000000003ALL, 0x8000000267432060, v104);
  *v103 = v267;

  v101(v302, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v268 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(1006, 0xD000000000000034, 0x80000002674320A0, v108);
  *v107 = v268;

  v105(v302, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v269 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(1007, 0xD000000000000030, 0x80000002674320E0, v112);
  *v111 = v269;

  v109(v302, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v270 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(1008, 0xD000000000000038, 0x8000000267432120, v116);
  *v115 = v270;

  v113(v302, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v271 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(1009, 0xD000000000000047, 0x8000000267432160, v120);
  *v119 = v271;

  v117(v302, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v272 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(1010, 0xD000000000000041, 0x80000002674321B0, v124);
  *v123 = v272;

  v121(v302, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v273 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(1011, 0xD000000000000046, 0x8000000267432200, v128);
  *v127 = v273;

  v125(v302, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v274 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(1012, 0xD000000000000046, 0x8000000267432250, v132);
  *v131 = v274;

  v129(v302, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v275 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(1013, 0xD000000000000045, 0x80000002674322A0, v136);
  *v135 = v275;

  v133(v302, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v276 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(1014, 0xD000000000000049, 0x80000002674322F0, v140);
  *v139 = v276;

  v137(v302, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v277 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(1015, 0xD000000000000048, 0x8000000267432340, v144);
  *v143 = v277;

  v141(v302, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v278 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(1016, 0xD00000000000004ALL, 0x8000000267432390, v148);
  *v147 = v278;

  v145(v302, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v279 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(1017, 0xD00000000000004ALL, 0x80000002674323E0, v152);
  *v151 = v279;

  v149(v302, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v280 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(1018, 0xD00000000000004CLL, 0x8000000267432430, v156);
  *v155 = v280;

  v153(v302, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v281 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(1019, 0xD000000000000045, 0x8000000267432480, v160);
  *v159 = v281;

  v157(v302, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v282 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(1020, 0xD000000000000048, 0x80000002674324D0, v164);
  *v163 = v282;

  v161(v302, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v283 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(1021, 0xD000000000000045, 0x8000000267432520, v168);
  *v167 = v283;

  v165(v302, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v284 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(1022, 0xD000000000000054, 0x8000000267432570, v172);
  *v171 = v284;

  v169(v302, 0);
  v173 = sub_26738111C();
  v175 = v174;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *v175;
  *v175 = 0x8000000000000000;
  sub_266ECD368(1023, 0xD000000000000055, 0x80000002674325D0, v176);
  *v175 = v285;

  v173(v302, 0);
  v177 = sub_26738111C();
  v179 = v178;
  v180 = swift_isUniquelyReferenced_nonNull_native();
  v286 = *v179;
  *v179 = 0x8000000000000000;
  sub_266ECD368(1024, 0xD000000000000057, 0x8000000267432630, v180);
  *v179 = v286;

  v177(v302, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v287 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(1025, 0xD000000000000047, 0x8000000267432690, v184);
  *v183 = v287;

  v181(v302, 0);
  v185 = sub_26738111C();
  v187 = v186;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v288 = *v187;
  *v187 = 0x8000000000000000;
  sub_266ECD368(1026, 0xD00000000000002ALL, 0x80000002674326E0, v188);
  *v187 = v288;

  v185(v302, 0);
  v189 = sub_26738111C();
  v191 = v190;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v289 = *v191;
  *v191 = 0x8000000000000000;
  sub_266ECD368(1027, 0xD000000000000035, 0x8000000267432710, v192);
  *v191 = v289;

  v189(v302, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v290 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(1028, 0xD000000000000035, 0x8000000267432750, v196);
  *v195 = v290;

  v193(v302, 0);
  v197 = sub_26738111C();
  v199 = v198;
  v200 = swift_isUniquelyReferenced_nonNull_native();
  v291 = *v199;
  *v199 = 0x8000000000000000;
  sub_266ECD368(1029, 0xD000000000000045, 0x8000000267432790, v200);
  *v199 = v291;

  v197(v302, 0);
  v201 = sub_26738111C();
  v203 = v202;
  v204 = swift_isUniquelyReferenced_nonNull_native();
  v292 = *v203;
  *v203 = 0x8000000000000000;
  sub_266ECD368(1030, 0xD000000000000048, 0x80000002674327E0, v204);
  *v203 = v292;

  v201(v302, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = swift_isUniquelyReferenced_nonNull_native();
  v293 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(1031, 0xD00000000000004BLL, 0x8000000267432830, v208);
  *v207 = v293;

  v205(v302, 0);
  v209 = sub_26738111C();
  v211 = v210;
  v212 = swift_isUniquelyReferenced_nonNull_native();
  v294 = *v211;
  *v211 = 0x8000000000000000;
  sub_266ECD368(1032, 0xD000000000000036, 0x8000000267432880, v212);
  *v211 = v294;

  v209(v302, 0);
  v213 = sub_26738111C();
  v215 = v214;
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v295 = *v215;
  *v215 = 0x8000000000000000;
  sub_266ECD368(1033, 0xD000000000000033, 0x80000002674328C0, v216);
  *v215 = v295;

  v213(v302, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(1034, 0xD000000000000032, 0x8000000267432900, v220);
  *v219 = v296;

  v217(v302, 0);
  v221 = sub_26738111C();
  v223 = v222;
  v224 = swift_isUniquelyReferenced_nonNull_native();
  v297 = *v223;
  *v223 = 0x8000000000000000;
  sub_266ECD368(1035, 0xD000000000000039, 0x8000000267432940, v224);
  *v223 = v297;

  v221(v302, 0);
  v225 = sub_26738111C();
  v227 = v226;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v298 = *v227;
  *v227 = 0x8000000000000000;
  sub_266ECD368(1036, 0xD000000000000038, 0x8000000267432980, v228);
  *v227 = v298;

  v225(v302, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = swift_isUniquelyReferenced_nonNull_native();
  v299 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(1037, 0xD000000000000034, 0x80000002674329C0, v232);
  *v231 = v299;

  v229(v302, 0);
  v233 = sub_26738111C();
  v235 = v234;
  v236 = swift_isUniquelyReferenced_nonNull_native();
  v300 = *v235;
  *v235 = 0x8000000000000000;
  sub_266ECD368(1038, 0xD000000000000033, 0x8000000267432A00, v236);
  *v235 = v300;

  v233(v302, 0);
  v237 = sub_26738111C();
  v239 = v238;
  v240 = swift_isUniquelyReferenced_nonNull_native();
  v301 = *v239;
  *v239 = 0x8000000000000000;
  sub_266ECD368(1039, 0xD000000000000021, 0x8000000267432A40, v240);
  *v239 = v301;

  return v237(v302, 0);
}

uint64_t sub_266F865BC(uint64_t a1)
{
  v2 = sub_266F866C0(&qword_2800F1150, &protocol conformance descriptor for FLOWSchemaFLOWDomainExecutionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F86624(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F866C0(&qword_2800F1150, &protocol conformance descriptor for FLOWSchemaFLOWDomainExecutionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F866C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWDomainExecutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWEmergencyCallType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267432AA0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267432AC0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267432AE0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267432B00, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F86990(uint64_t a1)
{
  v2 = sub_266F86A94(&qword_2800F1160, &protocol conformance descriptor for FLOWSchemaFLOWEmergencyCallType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F869F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F86A94(&qword_2800F1160, &protocol conformance descriptor for FLOWSchemaFLOWEmergencyCallType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F86A94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWEmergencyCallType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWEntityContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267432B50);
  return v10(v14, 0);
}

uint64_t sub_266F86E08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F86E6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWEntityContextTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v12[1] = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496B6E696CLL, 0xE600000000000000);
  v8(v13, 0);
  v12[0] = "iri.flow.FLOWEntityContextTier1";
  sub_266ECB294(0, &qword_2800F1178, 0x277D57560);
  sub_266ECAF2C(&qword_2800F1180, &qword_2800F1178, 0x277D57560, &protocol conformance descriptor for FLOWSchemaFLOWEntityTier1);
  sub_26738122C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, v12[0] | 0x8000000000000000);
  v9(v13, 0);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6553797469746E65, 0xEE0064657463656CLL);
  return v10(v13, 0);
}

uint64_t sub_266F87280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F872E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWEntityTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6449797469746E65, 0xE800000000000000);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x6449797469746E65, 0xE800000000000000);
  if (!(*(v8 + 48))(v12, 1, v7))
  {
    sub_266ECB128(&unk_287885710);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_266F87688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F876EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F87750()
{
  result = qword_2800F1180;
  if (!qword_2800F1180)
  {
    sub_266F877A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1180);
  }

  return result;
}

unint64_t sub_266F877A8()
{
  result = qword_2800F1178;
  if (!qword_2800F1178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1178);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v3 = sub_26738113C();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v34[1] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8, 0, 1, v10);
  v39 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496B736174, 0xE600000000000000);
  v13(v42, 0);
  (*(v37 + 104))(v5, *MEMORY[0x277D3E530], v38);
  v42[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674206D0);
  v14(v42, 0);
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0, &protocol conformance descriptor for SISchemaVersion);
  sub_26738120C();
  v12(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F6973726576, 0xE700000000000000);
  v15(v42, 0);
  v37 = v9;
  sub_26738120C();
  v36 = v12;
  v12(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449776F6C66, 0xE600000000000000);
  v16(v42, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v41, 0x6449776F6C66, 0xE600000000000000);
  v19 = *(v11 + 48);
  v38 = v11 + 48;
  v35 = v19;
  if (!v19(v20, 1, v10))
  {
    sub_266ECB128(&unk_287885738);
    sub_26738115C();
  }

  (v18)(v41, 0);
  v17(v42, 0);
  sub_26738120C();
  v36(v8, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x4974736575716572, 0xE900000000000064);
  v21(v42, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v41, 0x4974736575716572, 0xE900000000000064);
  if (!v35(v24, 1, v10))
  {
    sub_266ECB128(&unk_287885768);
    sub_26738115C();
  }

  (v23)(v41, 0);
  v22(v42, 0);
  sub_26738120C();
  v25 = v10;
  v26 = v10;
  v27 = v36;
  v36(v8, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449707274, 0xE500000000000000);
  v28(v42, 0);
  sub_26738120C();
  v27(v8, 0, 1, v26);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0x6575716552627573, 0xEC00000064497473);
  v29(v42, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v41, 0x6575716552627573, 0xEC00000064497473);
  if (!v35(v32, 1, v26))
  {
    sub_266ECB128(&unk_287885798);
    sub_26738115C();
  }

  (v31)(v41, 0);
  return v30(v42, 0);
}

uint64_t sub_266F8801C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F88080(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWholeHouseAudioDestinationContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "eHouseAudioDestinationContext";
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267432C80);
  return v14(v19, 0);
}

uint64_t sub_266F88458(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F884BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F88520()
{
  result = qword_2800F1188;
  if (!qword_2800F1188)
  {
    sub_266F88578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1188);
  }

  return result;
}

unint64_t sub_266F88578()
{
  result = qword_2800F1190;
  if (!qword_2800F1190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1190);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeAutomationCommand.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v16 = *(v1 - 8);
  v17 = v1;
  MEMORY[0x28223BE20](v1);
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
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x49646E616D6D6F63, 0xE900000000000064);
  v9(v18, 0);
  type metadata accessor for FLOWSchemaFLOWHomeAutomationCommandType(0);
  sub_266F88CE0(&qword_2800F1198, type metadata accessor for FLOWSchemaFLOWHomeAutomationCommandType, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationCommandType);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x54646E616D6D6F63, 0xEB00000000657079);
  v10(v18, 0);
  type metadata accessor for FLOWSchemaFLOWHomeAutomationOutcome(0);
  sub_266F88CE0(&qword_2800F11A0, type metadata accessor for FLOWSchemaFLOWHomeAutomationOutcome, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationOutcome);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x4F646E616D6D6F63, 0xEE00656D6F637475);
  v11(v18, 0);
  type metadata accessor for FLOWSchemaFLOWHomeAutomationCommandErrorReason(0);
  sub_266F88CE0(&qword_2800F11A8, type metadata accessor for FLOWSchemaFLOWHomeAutomationCommandErrorReason, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationCommandErrorReason);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267432CE0);
  v12(v18, 0);
  (*(v16 + 104))(v3, *MEMORY[0x277D3E538], v17);
  v18[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x44646E616D6D6F63, 0xEF6E6F6974617275);
  v13(v18, 0);
  sub_266ECB294(0, &qword_2800F11B0, 0x277D57580);
  sub_266ECAF2C(&qword_2800F11B8, &qword_2800F11B0, 0x277D57580, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationRequest);
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267432D00);
  return v14(v18, 0);
}

uint64_t sub_266F88C1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F88C80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F88CE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static FLOWSchemaFLOWHomeAutomationCommandErrorReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x8000000267432D60, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000033, 0x8000000267432D90, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003FLL, 0x8000000267432DD0, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000034, 0x8000000267432E10, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003DLL, 0x8000000267432E50, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000035, 0x8000000267432E90, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003ALL, 0x8000000267432ED0, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000036, 0x8000000267432F10, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003ALL, 0x8000000267432F50, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000039, 0x8000000267432F90, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000003BLL, 0x8000000267432FD0, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_266F89308(uint64_t a1)
{
  v2 = sub_266F8940C(&qword_2800F11D0, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationCommandErrorReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F89370(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8940C(&qword_2800F11D0, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationCommandErrorReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8940C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeAutomationCommandErrorReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeAutomationCommandType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267433050, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267433080, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x80000002674330B0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x80000002674330E0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267433110, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266F89748(uint64_t a1)
{
  v2 = sub_266F8984C(&qword_2800F11D8, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationCommandType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F897B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8984C(&qword_2800F11D8, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationCommandType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8984C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeAutomationCommandType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeAutomationConditionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x8000000267433180, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x80000002674331B0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x80000002674331E0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000032, 0x8000000267433220, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000037, 0x8000000267433260, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000036, 0x80000002674332A0, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_266F89BF4(uint64_t a1)
{
  v2 = sub_266F89CF8(&qword_2800F11E8, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationConditionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F89C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F89CF8(&qword_2800F11E8, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationConditionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F89CF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeAutomationConditionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeAutomationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F11F0, 0x277D575A8);
  sub_266ECAF2C(&qword_2800F11F8, &qword_2800F11F0, 0x277D575A8, &protocol conformance descriptor for FLOWSchemaFLOWHomeKitServiceResponse);
  v15[1] = a1;
  sub_26738122C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000016, 0x8000000267433320);
  v8(v17, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v16, 0xD000000000000016, 0x8000000267433320);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_2878857C8);
    sub_26738115C();
  }

  (v10)(v16, 0);
  v9(v17, 0);
  sub_266ECB294(0, &qword_2800F1200, 0x277D575A0);
  sub_266ECAF2C(&qword_2800F1208, &qword_2800F1200, 0x277D575A0, &protocol conformance descriptor for FLOWSchemaFLOWHomeContext);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x746E6F43656D6F68, 0xEB00000000747865);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F11C8, 0x277D57570);
  sub_266ECAF2C(&qword_2800F11C0, &qword_2800F11C8, 0x277D57570, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationCommand);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v13 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000015, 0x8000000267433340);
  return v13(v17, 0);
}

uint64_t sub_266F8A194(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8A1F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWHomeAutomationOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674333A0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x80000002674333D0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x8000000267433400, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x8000000267433430, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F8A524(uint64_t a1)
{
  v2 = sub_266F8A628(&qword_2800F1210, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationOutcome);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F8A58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8A628(&qword_2800F1210, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationOutcome);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8A628(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeAutomationOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeAutomationRequest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v28 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x80000002674334A0);
  v11(v31, 0);
  type metadata accessor for FLOWSchemaFLOWHomeAutomationRequestType(0);
  sub_266F8ADBC(&qword_2800F1218, type metadata accessor for FLOWSchemaFLOWHomeAutomationRequestType, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationRequestType);
  v27 = a1;
  sub_26738120C();
  v24 = v9;
  v25 = v10;
  v9(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x80000002674334C0);
  v12(v31, 0);
  type metadata accessor for FLOWSchemaFLOWHomeAutomationOutcome(0);
  sub_266F8ADBC(&qword_2800F11A0, type metadata accessor for FLOWSchemaFLOWHomeAutomationOutcome, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationOutcome);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x80000002674334E0);
  v13(v31, 0);
  v23 = "homeAutomationRequestOutcome";
  v14 = *MEMORY[0x277D3E530];
  v15 = v28;
  v29 = *(v29 + 104);
  v16 = v30;
  (v29)(v28, v14, v30);
  v31[0] = 1;
  sub_26738114C();
  v26 = v7;
  v17 = v24;
  v24(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000020, v23 | 0x8000000000000000);
  v18(v31, 0);
  (v29)(v15, *MEMORY[0x277D3E538], v16);
  v31[0] = 1;
  sub_26738114C();
  v19 = v17;
  v17(v6, 0, 1, v7);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, 0x8000000267433530);
  v20(v31, 0);
  sub_266ECB294(0, &qword_2800F1220, 0x277D57588);
  sub_266ECAF2C(&qword_2800F1228, &qword_2800F1220, 0x277D57588, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationRequestMetadata);
  sub_26738120C();
  v19(v6, 0, 1, v26);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, 0x8000000267433550);
  return v21(v31, 0);
}

uint64_t sub_266F8ACF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8AD5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F8ADBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static FLOWSchemaFLOWHomeAutomationRequestMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v39 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v10 = a2;
  sub_26738119C();
  v41 = "eAutomationRequestMetadata";
  v43 = *MEMORY[0x277D3E4E8];
  v11 = *(v4 + 104);
  v46 = v4 + 104;
  v47 = v11;
  v48 = v3;
  (v11)(v6);
  v49[0] = 1;
  sub_26738114C();
  v44 = sub_26738116C();
  v12 = *(v44 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v44);
  v39[1] = v10;
  v39[2] = v14;
  v45 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, v41 | 0x8000000000000000);
  v15(v49, 0);
  v41 = "RequestAsynchronous";
  v16 = *MEMORY[0x277D3E538];
  v17 = v47;
  v47(v6, v16, v3);
  v49[0] = 1;
  sub_26738114C();
  v18 = v44;
  v13(v9, 0, 1, v44);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v41 | 0x8000000000000000);
  v19(v49, 0);
  v41 = "targetedEntityCount";
  v17(v6, v16, v48);
  v49[0] = 1;
  sub_26738114C();
  v20 = v18;
  v21 = v45;
  v45(v9, 0, 1, v20);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v41 | 0x8000000000000000);
  v22(v49, 0);
  LODWORD(v41) = *MEMORY[0x277D3E530];
  (v17)(v6);
  v49[0] = 1;
  sub_26738114C();
  v23 = v44;
  v21(v9, 0, 1, v44);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267433620);
  v24(v49, 0);
  type metadata accessor for FLOWSchemaFLOWHomeContainerType(0);
  sub_266F8B848(&qword_2800F1230, type metadata accessor for FLOWSchemaFLOWHomeContainerType, &protocol conformance descriptor for FLOWSchemaFLOWHomeContainerType);
  sub_26738120C();
  v25 = v45;
  v45(v9, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x8000000267433640);
  v26(v49, 0);
  v40 = v6;
  v47(v6, v41, v48);
  v49[0] = 1;
  sub_26738114C();
  v27 = v23;
  v25(v9, 0, 1, v23);
  v28 = v25;
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0x7441746567726174, 0xEF65747562697274);
  v29(v49, 0);
  type metadata accessor for FLOWSchemaFLOWHomeAutomationConditionType(0);
  sub_266F8B848(&qword_2800F11E0, type metadata accessor for FLOWSchemaFLOWHomeAutomationConditionType, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationConditionType);
  sub_26738120C();
  v28(v9, 0, 1, v27);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F697469646E6F63, 0xED0000657079546ELL);
  v30(v49, 0);
  v31 = v40;
  v32 = v43;
  v33 = v47;
  v47(v40, v43, v48);
  v49[0] = 1;
  sub_26738114C();
  v34 = v27;
  v35 = v45;
  v45(v9, 0, 1, v34);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0x7272756365527369, 0xEB00000000676E69);
  v36(v49, 0);
  v33(v31, v32, v48);
  v49[0] = 1;
  sub_26738114C();
  v35(v9, 0, 1, v44);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x8000000267433660);
  return v37(v49, 0);
}

uint64_t sub_266F8B73C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8B7A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F8B848(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F8B890()
{
  result = qword_2800F1220;
  if (!qword_2800F1220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1220);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeAutomationRequestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x80000002674336C0, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x80000002674336F0, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267433720, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x8000000267433750, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x8000000267433780, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x80000002674337B0, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000028, 0x80000002674337E0, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x8000000267433810, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000023, 0x8000000267433840, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000025, 0x8000000267433870, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000027, 0x80000002674338A0, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_266F8BE7C(uint64_t a1)
{
  v2 = sub_266F8BF80(&qword_2800F1238, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationRequestType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F8BEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8BF80(&qword_2800F1238, &protocol conformance descriptor for FLOWSchemaFLOWHomeAutomationRequestType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8BF80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeAutomationRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeCommunicationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F1200, 0x277D575A0);
  sub_266ECAF2C(&qword_2800F1208, &qword_2800F1200, 0x277D575A0, &protocol conformance descriptor for FLOWSchemaFLOWHomeContext);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x746E6F43656D6F68, 0xEB00000000747865);
  v8(v24, 0);
  type metadata accessor for FLOWSchemaFLOWHomeCommunicationTaskType(0);
  sub_266F8C560();
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x657079546B736174, 0xE800000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F1248, 0x277D57598);
  sub_266ECAF2C(&qword_2800F1250, &qword_2800F1248, 0x277D57598, &protocol conformance descriptor for FLOWSchemaFLOWHomeCommunicationSendOrReply);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  v11 = v21;
  sub_266EC637C(v5, 0xD000000000000012, 0x8000000267433910);
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
  return v12(v24, 0);
}

uint64_t sub_266F8C49C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8C500(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F8C560()
{
  result = qword_2800F1240;
  if (!qword_2800F1240)
  {
    type metadata accessor for FLOWSchemaFLOWHomeCommunicationTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1240);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeCommunicationEntityType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x8000000267433970, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x80000002674339A0, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x80000002674339D0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267433A00, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267433A30, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x8000000267433A60, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000027, 0x8000000267433A90, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266F8C9DC(uint64_t a1)
{
  v2 = sub_266F8CAE0(&qword_2800F1260, &protocol conformance descriptor for FLOWSchemaFLOWHomeCommunicationEntityType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F8CA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8CAE0(&qword_2800F1260, &protocol conformance descriptor for FLOWSchemaFLOWHomeCommunicationEntityType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8CAE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeCommunicationEntityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeCommunicationSendOrReply.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWHomeCommunicationEntityType(0);
  sub_266F8CF80(&qword_2800F1258, type metadata accessor for FLOWSchemaFLOWHomeCommunicationEntityType, &protocol conformance descriptor for FLOWSchemaFLOWHomeCommunicationEntityType);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954746567726174, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_266F8CCE8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWHomeCommunicationEntityType(0);
  sub_266F8CF80(&qword_2800F1258, type metadata accessor for FLOWSchemaFLOWHomeCommunicationEntityType, &protocol conformance descriptor for FLOWSchemaFLOWHomeCommunicationEntityType);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954746567726174, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_266F8CE74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8CED8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F8CF80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F8CFC8()
{
  result = qword_2800F1248;
  if (!qword_2800F1248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1248);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeCommunicationTaskType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267433B40, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x8000000267433B70, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267433BA0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267433BD0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267433C00, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266F8D310(uint64_t a1)
{
  v2 = sub_266F8D414(&qword_2800F1268, &protocol conformance descriptor for FLOWSchemaFLOWHomeCommunicationTaskType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F8D378(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8D414(&qword_2800F1268, &protocol conformance descriptor for FLOWSchemaFLOWHomeCommunicationTaskType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8D414(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeCommunicationTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeContainerType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267433C60, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267433C80, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267433CA0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x8000000267433CC0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x8000000267433CE0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266F8D754(uint64_t a1)
{
  v2 = sub_266F8D858(&qword_2800F1270, &protocol conformance descriptor for FLOWSchemaFLOWHomeContainerType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F8D7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8D858(&qword_2800F1270, &protocol conformance descriptor for FLOWSchemaFLOWHomeContainerType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8D858(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeContainerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6E756F43656D6F68, 0xE900000000000074);
  v12(v25, 0);
  v13 = v22;
  (v22)(v3, v8, v0);
  v25[0] = 1;
  sub_26738114C();
  v11(v6, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x43646F50656D6F68, 0xEC000000746E756FLL);
  v14(v25, 0);
  v15 = v20;
  (v13)(v3, v21, v20);
  v25[0] = 1;
  sub_26738114C();
  v11(v6, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x437654656C707061, 0xEC000000746E756FLL);
  v16(v25, 0);
  (v13)(v3, *MEMORY[0x277D3E4E8], v15);
  v25[0] = 1;
  sub_26738114C();
  v11(v6, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x6572727543736168, 0xEE00656D6F48746ELL);
  return v17(v25, 0);
}

uint64_t sub_266F8DD60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8DDC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F8DE28()
{
  result = qword_2800F1208;
  if (!qword_2800F1208)
  {
    sub_266F8DE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1208);
  }

  return result;
}

unint64_t sub_266F8DE80()
{
  result = qword_2800F1200;
  if (!qword_2800F1200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1200);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeKitServiceResponse.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for FLOWSchemaFLOWHomeKitServiceType(0);
  sub_266F8E3F4(&qword_2800F1278, type metadata accessor for FLOWSchemaFLOWHomeKitServiceType, &protocol conformance descriptor for FLOWSchemaFLOWHomeKitServiceType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v18 = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267433D70);
  v10(v21, 0);
  v17 = "homeKitServiceType";
  v11 = *MEMORY[0x277D3E508];
  v12 = v19;
  v13 = *(v20 + 104);
  v20 += 104;
  v13(v4, v11, v19);
  v21[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, v17 | 0x8000000000000000);
  v14(v21, 0);
  v13(v4, v11, v12);
  v21[0] = 1;
  sub_26738114C();
  v18(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267433DB0);
  v15(v21, 0);
  sub_266ECB128(&unk_2878857F0);
  return sub_2673811CC();
}

uint64_t sub_266F8E2E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8E34C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F8E3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F8E43C()
{
  result = qword_2800F11F0;
  if (!qword_2800F11F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F11F0);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeKitServiceType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267433E00, isUniquelyReferenced_nonNull_native);
  *v3 = v178;

  v1(v222, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267433E20, v8);
  *v7 = v179;

  v5(v222, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267433E50, v12);
  *v11 = v180;

  v9(v222, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267433E80, v16);
  *v15 = v181;

  v13(v222, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x8000000267433EB0, v20);
  *v19 = v182;

  v17(v222, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x8000000267433EE0, v24);
  *v23 = v183;

  v21(v222, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x8000000267433F00, v28);
  *v27 = v184;

  v25(v222, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x8000000267433F30, v32);
  *v31 = v185;

  v29(v222, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001DLL, 0x8000000267433F60, v36);
  *v35 = v186;

  v33(v222, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001DLL, 0x8000000267433F80, v40);
  *v39 = v187;

  v37(v222, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000029, 0x8000000267433FA0, v44);
  *v43 = v188;

  v41(v222, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000026, 0x8000000267433FD0, v48);
  *v47 = v189;

  v45(v222, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000029, 0x8000000267434000, v52);
  *v51 = v190;

  v49(v222, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000023, 0x8000000267434030, v56);
  *v55 = v191;

  v53(v222, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000002DLL, 0x8000000267434060, v60);
  *v59 = v192;

  v57(v222, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001DLL, 0x8000000267434090, v64);
  *v63 = v193;

  v61(v222, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000025, 0x80000002674340B0, v68);
  *v67 = v194;

  v65(v222, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000026, 0x80000002674340E0, v72);
  *v71 = v195;

  v69(v222, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000027, 0x8000000267434110, v76);
  *v75 = v196;

  v73(v222, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000027, 0x8000000267434140, v80);
  *v79 = v197;

  v77(v222, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000025, 0x8000000267434170, v84);
  *v83 = v198;

  v81(v222, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000024, 0x80000002674341A0, v88);
  *v87 = v199;

  v85(v222, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000024, 0x80000002674341D0, v92);
  *v91 = v200;

  v89(v222, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000022, 0x8000000267434200, v96);
  *v95 = v201;

  v93(v222, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000002CLL, 0x8000000267434230, v100);
  *v99 = v202;

  v97(v222, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000026, 0x8000000267434260, v104);
  *v103 = v203;

  v101(v222, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001DLL, 0x8000000267434290, v108);
  *v107 = v204;

  v105(v222, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v205 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000023, 0x80000002674342B0, v112);
  *v111 = v205;

  v109(v222, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v206 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000029, 0x80000002674342E0, v116);
  *v115 = v206;

  v113(v222, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v207 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000024, 0x8000000267434310, v120);
  *v119 = v207;

  v117(v222, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v208 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000002ELL, 0x8000000267434340, v124);
  *v123 = v208;

  v121(v222, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v209 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000001BLL, 0x8000000267434370, v128);
  *v127 = v209;

  v125(v222, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v210 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000001ELL, 0x8000000267434390, v132);
  *v131 = v210;

  v129(v222, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v211 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001FLL, 0x80000002674343B0, v136);
  *v135 = v211;

  v133(v222, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v212 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000025, 0x80000002674343D0, v140);
  *v139 = v212;

  v137(v222, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v213 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000028, 0x8000000267434400, v144);
  *v143 = v213;

  v141(v222, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v214 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001CLL, 0x8000000267434430, v148);
  *v147 = v214;

  v145(v222, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000001DLL, 0x8000000267434450, v152);
  *v151 = v215;

  v149(v222, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v216 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000021, 0x8000000267434470, v156);
  *v155 = v216;

  v153(v222, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v217 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000027, 0x80000002674344A0, v160);
  *v159 = v217;

  v157(v222, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v218 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000021, 0x80000002674344D0, v164);
  *v163 = v218;

  v161(v222, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v219 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(41, 0xD00000000000001DLL, 0x8000000267434500, v168);
  *v167 = v219;

  v165(v222, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v220 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(42, 0xD00000000000001BLL, 0x8000000267434520, v172);
  *v171 = v220;

  v169(v222, 0);
  v173 = sub_26738111C();
  v175 = v174;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v221 = *v175;
  *v175 = 0x8000000000000000;
  sub_266ECD368(43, 0xD00000000000001FLL, 0x8000000267434540, v176);
  *v175 = v221;

  v173(v222, 0);
  sub_266ECB128(&unk_287885818);
  return sub_26738112C();
}

uint64_t sub_266F8F8C4(uint64_t a1)
{
  v2 = sub_266F8F9C8(&qword_2800F1280, &protocol conformance descriptor for FLOWSchemaFLOWHomeKitServiceType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F8F92C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8F9C8(&qword_2800F1280, &protocol conformance descriptor for FLOWSchemaFLOWHomeKitServiceType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8F9C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeKitServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWIdentityContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1288, 0x277D576A0);
  sub_266ECAF2C(&qword_2800F1290, &qword_2800F1288, 0x277D576A0, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchContext);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x8000000267434590);
  return v5(v7, 0);
}

uint64_t sub_266F8FC04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8FC68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWInformationPluginContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for FLOWSchemaFLOWInformationPluginEventType(0);
  sub_266F901EC(&qword_2800F1298, type metadata accessor for FLOWSchemaFLOWInformationPluginEventType, &protocol conformance descriptor for FLOWSchemaFLOWInformationPluginEventType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x707954746E657665, 0xE900000000000065);
  v10(v19, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x80000002674345F0);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0xD000000000000015, 0x80000002674345F0);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287885840);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_266F900E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F90144(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F901EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F90234()
{
  result = qword_2800F10A8;
  if (!qword_2800F10A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F10A8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWInformationPluginEventType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267434650, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267434680, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x80000002674346B0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F90494(uint64_t a1)
{
  v2 = sub_266F90598(&qword_2800F12A0, &protocol conformance descriptor for FLOWSchemaFLOWInformationPluginEventType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F904FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F90598(&qword_2800F12A0, &protocol conformance descriptor for FLOWSchemaFLOWInformationPluginEventType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F90598(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWInformationPluginEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWKeyboardUsageMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v23 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E538];
  v21 = *(v1 + 104);
  v20 = v7;
  v21(v3, v7, v0);
  v19[1] = v1 + 104;
  v24[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v22 = v9 + 56;
  v10(v6, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x73726168436D756ELL, 0xED00006465646441);
  v11(v24, 0);
  v12 = v7;
  v13 = v23;
  v14 = v21;
  v21(v3, v12, v23);
  v24[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x73726168436D756ELL, 0xEF646574656C6544);
  v15(v24, 0);
  v14(v3, v20, v13);
  v24[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267434720);
  v16(v24, 0);
  v14(v3, *MEMORY[0x277D3E4E8], v23);
  v24[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x55696A6F6D457369, 0xEB00000000646573);
  return v17(v24, 0);
}

uint64_t sub_266F90AA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F90B08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F90B6C()
{
  result = qword_2800F12A8;
  if (!qword_2800F12A8)
  {
    sub_266F90BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F12A8);
  }

  return result;
}

unint64_t sub_266F90BC4()
{
  result = qword_2800F12B0;
  if (!qword_2800F12B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F12B0);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWKGQAExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
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
  type metadata accessor for FLOWSchemaFLOWKGQAUsecase(0);
  sub_266F912C0(&qword_2800F12B8, type metadata accessor for FLOWSchemaFLOWKGQAUsecase, &protocol conformance descriptor for FLOWSchemaFLOWKGQAUsecase);
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

uint64_t sub_266F911B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F91218(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F912C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F91308()
{
  result = qword_2800F12C8;
  if (!qword_2800F12C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F12C8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWKGQAExecutionTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v35 = v3 + 104;
  v36 = v2;
  v32 = v9;
  v9(v5);
  v38[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v31 = v11 + 56;
  v30(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x457972616D697270, 0xEF7365697469746ELL);
  v12(v38, 0);
  v33 = a1;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v37, 0x457972616D697270, 0xEF7365697469746ELL);
  v15 = *(v11 + 48);
  v34 = v11 + 48;
  v29 = v15;
  if (!v15(v16, 1, v10))
  {
    sub_266ECB128(&unk_287885870);
    sub_26738115C();
  }

  (v14)(v37, 0);
  v13(v38, 0);
  v17 = v28;
  v32(v5, v28, v36);
  v38[0] = 1;
  sub_26738114C();
  v30(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674347E0);
  v18(v38, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v37, 0xD000000000000011, 0x80000002674347E0);
  if (!v29(v21, 1, v10))
  {
    sub_266ECB128(&unk_287885898);
    sub_26738115C();
  }

  (v20)(v37, 0);
  v19(v38, 0);
  v32(v5, v17, v36);
  v38[0] = 1;
  sub_26738114C();
  v30(v8, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449726577736E61, 0xE800000000000000);
  v22(v38, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v37, 0x6449726577736E61, 0xE800000000000000);
  if (!v29(v25, 1, v10))
  {
    sub_266ECB128(&unk_2878858C0);
    sub_26738115C();
  }

  (v24)(v37, 0);
  return v23(v38, 0);
}

uint64_t sub_266F91924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F91988(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F919EC()
{
  result = qword_2800F12D0;
  if (!qword_2800F12D0)
  {
    sub_266F91A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F12D0);
  }

  return result;
}

unint64_t sub_266F91A44()
{
  result = qword_2800F12D8;
  if (!qword_2800F12D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F12D8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWKGQAUsecase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267434830, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267434850, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267434870, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x8000000267434890, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x80000002674348B0, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x80000002674348D0, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000015, 0x80000002674348F0, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000019, 0x8000000267434910, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_266F91EDC(uint64_t a1)
{
  v2 = sub_266F91FE0(&qword_2800F12E0, &protocol conformance descriptor for FLOWSchemaFLOWKGQAUsecase);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F91F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F91FE0(&qword_2800F12E0, &protocol conformance descriptor for FLOWSchemaFLOWKGQAUsecase);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F91FE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWKGQAUsecase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWLanguageConfidence.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for SISchemaISOLanguageCode(0);
  sub_266F9246C(&qword_2800F12E8, type metadata accessor for SISchemaISOLanguageCode, &protocol conformance descriptor for SISchemaISOLanguageCode);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x65676175676E616CLL, 0xEC00000065646F43);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E540], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656469666E6F63, 0xEF65726F63536563);
  return v10(v14, 0);
}

uint64_t sub_266F92360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F923C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F9246C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F924B4()
{
  result = qword_2800F12F8;
  if (!qword_2800F12F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F12F8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWLanguageConfidenceArray.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F12F8, 0x277D575D8);
  sub_266ECAF2C(&qword_2800F12F0, &qword_2800F12F8, 0x277D575D8, &protocol conformance descriptor for FLOWSchemaFLOWLanguageConfidence);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674349A0);
  return v5(v7, 0);
}

uint64_t sub_266F926F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9275C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWLanguageConfidenceMatrix.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1308, 0x277D575E0);
  sub_266ECAF2C(&qword_2800F1300, &qword_2800F1308, 0x277D575E0, &protocol conformance descriptor for FLOWSchemaFLOWLanguageConfidenceArray);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x8000000267434A00);
  return v5(v7, 0);
}

uint64_t sub_266F929F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F92A5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWLocationAccessPermissionFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000031, 0x8000000267434A70, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000031, 0x8000000267434AB0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000043, 0x8000000267434AF0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000037, 0x8000000267434B40, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003ELL, 0x8000000267434B80, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000040, 0x8000000267434BC0, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_266F92E68(uint64_t a1)
{
  v2 = sub_266F92F6C(&qword_2800F1328, &protocol conformance descriptor for FLOWSchemaFLOWLocationAccessPermissionFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F92ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F92F6C(&qword_2800F1328, &protocol conformance descriptor for FLOWSchemaFLOWLocationAccessPermissionFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F92F6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWLocationAccessPermissionPromptContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F1330, 0x277D57608);
  sub_266ECAF2C(&qword_2800F1338, &qword_2800F1330, 0x277D57608, &protocol conformance descriptor for FLOWSchemaFLOWLocationAccessPermissionPromptStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F1340, 0x277D575F8);
  sub_266ECAF2C(&qword_2800F1348, &qword_2800F1340, 0x277D575F8, &protocol conformance descriptor for FLOWSchemaFLOWLocationAccessPermissionPromptEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F1350, 0x277D57600);
  sub_266ECAF2C(&qword_2800F1358, &qword_2800F1350, 0x277D57600, &protocol conformance descriptor for FLOWSchemaFLOWLocationAccessPermissionPromptFailed);
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

uint64_t sub_266F934C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9352C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWLocationAccessPermissionPromptEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionStatusResult(0);
  sub_266F93A10(&qword_2800F1360, type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionStatusResult, &protocol conformance descriptor for FLOWSchemaFLOWLocationAccessPermissionStatusResult);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267434CB0);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267434CD0);
  return v10(v14, 0);
}

uint64_t sub_266F93904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F93968(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F93A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F93A58()
{
  result = qword_2800F1340;
  if (!qword_2800F1340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1340);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWLocationAccessPermissionPromptFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionFailureReason(0);
  sub_266F93F10(&qword_2800F1320, type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionFailureReason, &protocol conformance descriptor for FLOWSchemaFLOWLocationAccessPermissionFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266F93C70(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionFailureReason(0);
  sub_266F93F10(&qword_2800F1320, type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionFailureReason, &protocol conformance descriptor for FLOWSchemaFLOWLocationAccessPermissionFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266F93E04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F93E68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F93F10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F93F58()
{
  result = qword_2800F1350;
  if (!qword_2800F1350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1350);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWLocationAccessPermissionPromptStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F941EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F94250(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F942B4()
{
  result = qword_2800F1338;
  if (!qword_2800F1338)
  {
    sub_266F9430C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1338);
  }

  return result;
}

unint64_t sub_266F9430C()
{
  result = qword_2800F1330;
  if (!qword_2800F1330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1330);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWLocationAccessPermissionStatusResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000030, 0x8000000267434DE0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x8000000267434E20, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x8000000267434E50, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003FLL, 0x8000000267434E90, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F945E0(uint64_t a1)
{
  v2 = sub_266F946E4(&qword_2800F1368, &protocol conformance descriptor for FLOWSchemaFLOWLocationAccessPermissionStatusResult);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F94648(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F946E4(&qword_2800F1368, &protocol conformance descriptor for FLOWSchemaFLOWLocationAccessPermissionStatusResult);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F946E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionStatusResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMapsEntity.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
    sub_266ECB128(&unk_2878858E8);
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
    sub_266ECB128(&unk_287885910);
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
    sub_266ECB128(&unk_287885938);
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
  v30(v49, 0);
  sub_266ECB128(&unk_287885960);
  return sub_2673811CC();
}

uint64_t sub_266F94E78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F94EDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F94F40()
{
  result = qword_2800F1370;
  if (!qword_2800F1370)
  {
    sub_266F94F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1370);
  }

  return result;
}

unint64_t sub_266F94F98()
{
  result = qword_2800F1378;
  if (!qword_2800F1378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1378);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMapsExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
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
  type metadata accessor for FLOWSchemaFLOWMapsFeature(0);
  sub_266F956B8(&qword_2800F1380, type metadata accessor for FLOWSchemaFLOWMapsFeature, &protocol conformance descriptor for FLOWSchemaFLOWMapsFeature);
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
  type metadata accessor for FLOWSchemaFLOWMapsQueryLabel(0);
  sub_266F956B8(&qword_2800F1388, type metadata accessor for FLOWSchemaFLOWMapsQueryLabel, &protocol conformance descriptor for FLOWSchemaFLOWMapsQueryLabel);
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
  v22(v30, 0);
  sub_266ECB128(&unk_287885990);
  return sub_2673811CC();
}

uint64_t sub_266F955AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F95610(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F956B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F95700()
{
  result = qword_2800F1398;
  if (!qword_2800F1398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1398);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMapsExecutionTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1378, 0x277D57610);
  sub_266ECAF2C(&qword_2800F1370, &qword_2800F1378, 0x277D57610, &protocol conformance descriptor for FLOWSchemaFLOWMapsEntity);
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
    sub_266ECB128(&unk_2878859C0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  v7(v12, 0);
  sub_266ECB128(&unk_2878859E8);
  return sub_2673811CC();
}

uint64_t sub_266F95A0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F95A70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWMapsFeature.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267434FF0, isUniquelyReferenced_nonNull_native);
  *v3 = v54;

  v1(v67, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x8000000267435010, v8);
  *v7 = v55;

  v5(v67, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267435030, v12);
  *v11 = v56;

  v9(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267435050, v16);
  *v15 = v57;

  v13(v67, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x8000000267435070, v20);
  *v19 = v58;

  v17(v67, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x8000000267435090, v24);
  *v23 = v59;

  v21(v67, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x80000002674350C0, v28);
  *v27 = v60;

  v25(v67, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x80000002674350F0, v32);
  *v31 = v61;

  v29(v67, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000019, 0x8000000267435120, v36);
  *v35 = v62;

  v33(v67, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001FLL, 0x8000000267435140, v40);
  *v39 = v63;

  v37(v67, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x8000000267435160, v44);
  *v43 = v64;

  v41(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000017, 0x8000000267435180, v48);
  *v47 = v65;

  v45(v67, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000015, 0x80000002674351A0, v52);
  *v51 = v66;

  v49(v67, 0);
  sub_266ECB128(&unk_287885A18);
  return sub_26738112C();
}

uint64_t sub_266F961A4(uint64_t a1)
{
  v2 = sub_266F962A8(&qword_2800F13B0, &protocol conformance descriptor for FLOWSchemaFLOWMapsFeature);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9620C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F962A8(&qword_2800F13B0, &protocol conformance descriptor for FLOWSchemaFLOWMapsFeature);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F962A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMapsFeature(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMapsQueryLabel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674351F0, isUniquelyReferenced_nonNull_native);
  *v3 = v50;

  v1(v62, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267435210, v8);
  *v7 = v51;

  v5(v62, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267435230, v12);
  *v11 = v52;

  v9(v62, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x8000000267435260, v16);
  *v15 = v53;

  v13(v62, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x8000000267435290, v20);
  *v19 = v54;

  v17(v62, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x80000002674352C0, v24);
  *v23 = v55;

  v21(v62, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000028, 0x80000002674352F0, v28);
  *v27 = v56;

  v25(v62, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x8000000267435320, v32);
  *v31 = v57;

  v29(v62, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x8000000267435350, v36);
  *v35 = v58;

  v33(v62, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000022, 0x8000000267435370, v40);
  *v39 = v59;

  v37(v62, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000019, 0x80000002674353A0, v44);
  *v43 = v60;

  v41(v62, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000017, 0x80000002674353C0, v48);
  *v47 = v61;

  v45(v62, 0);
  sub_266ECB128(&unk_287885A48);
  return sub_26738112C();
}

uint64_t sub_266F96918(uint64_t a1)
{
  v2 = sub_266F96A1C(&qword_2800F13B8, &protocol conformance descriptor for FLOWSchemaFLOWMapsQueryLabel);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F96980(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F96A1C(&qword_2800F13B8, &protocol conformance descriptor for FLOWSchemaFLOWMapsQueryLabel);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F96A1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMapsQueryLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerChosenExecutionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x8000000267435420, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267435450, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x8000000267435480, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x80000002674354B0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000033, 0x80000002674354E0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266F96D58(uint64_t a1)
{
  v2 = sub_266F96E5C(&qword_2800F13C8, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerChosenExecutionSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F96DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F96E5C(&qword_2800F13C8, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerChosenExecutionSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F96E5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerChosenExecutionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerContentSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267435560, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267435590, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674355C0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F970B4(uint64_t a1)
{
  v2 = sub_266F971B8(&qword_2800F13D8, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerContentSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9711C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F971B8(&qword_2800F13D8, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerContentSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F971B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerContentSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_26738113C();
  v4 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWMediaPlayerTaskType(0);
  sub_266F98134(&qword_2800F13E0, type metadata accessor for FLOWSchemaFLOWMediaPlayerTaskType, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerTaskType);
  v59 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v56 = *(v9 - 8);
  v10 = v56 + 56;
  v11 = *(v56 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x657079546B736174, 0xE800000000000000);
  v12(v65, 0);
  type metadata accessor for FLOWSchemaFLOWMediaType(0);
  sub_266F98134(&qword_2800F13E8, type metadata accessor for FLOWSchemaFLOWMediaType, &protocol conformance descriptor for FLOWSchemaFLOWMediaType);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x707954616964656DLL, 0xE900000000000065);
  v13(v65, 0);
  LODWORD(v55) = *MEMORY[0x277D3E4E8];
  v14 = *(v4 + 104);
  v62 = v4 + 104;
  v60 = v14;
  (v14)(v61);
  v65[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  v58 = 0xD000000000000011;
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267435620);
  v15(v65, 0);
  sub_266ECB294(0, &qword_2800F1190, 0x277D57740);
  sub_266ECAF2C(&qword_2800F1188, &qword_2800F1190, 0x277D57740, &protocol conformance descriptor for FLOWSchemaFLOWholeHouseAudioDestinationContext);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267435640);
  v16(v65, 0);
  v17 = v61;
  v60(v61, v55, v63);
  v65[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, v58, 0x8000000267435670);
  v18(v65, 0);
  type metadata accessor for SISchemaAppleMediaProductsSubscription(0);
  sub_266F98134(&qword_2800F13F0, type metadata accessor for SISchemaAppleMediaProductsSubscription, &protocol conformance descriptor for SISchemaAppleMediaProductsSubscription);
  sub_26738122C();
  v11(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267435690);
  v19(v65, 0);
  v60(v17, v55, v63);
  v65[0] = 1;
  sub_26738114C();
  v58 = v11;
  v11(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x80000002674356B0);
  v20(v65, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v64, 0xD000000000000019, 0x80000002674356B0);
  v23 = *(v56 + 48);
  v56 += 48;
  v57 = v9;
  v51 = v23;
  if (!v23(v24, 1, v9))
  {
    sub_266ECB128(&unk_287885A78);
    sub_26738115C();
  }

  (v22)(v64, 0);
  v21(v65, 0);
  sub_266ECB294(0, &qword_2800F13F8, 0x277D57638);
  sub_266ECAF2C(&qword_2800F1400, &qword_2800F13F8, 0x277D57638, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerPlaybackContext);
  sub_26738121C();
  v25 = v57;
  v26 = v58;
  v58(v8, 0, 1, v57);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x80000002674356D0);
  v27(v65, 0);
  v60(v61, v55, v63);
  v65[0] = 1;
  sub_26738114C();
  v55 = v10;
  v26(v8, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x80000002674356F0);
  v28(v65, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v64, 0xD000000000000017, 0x80000002674356F0);
  if (!v51(v31, 1, v25))
  {
    sub_266ECB128(&unk_287885AA8);
    sub_26738115C();
  }

  (v30)(v64, 0);
  v29(v65, 0);
  v32 = *MEMORY[0x277D3E538];
  v33 = v61;
  v34 = v63;
  v35 = v60;
  v60(v61, v32, v63);
  v65[0] = 1;
  sub_26738114C();
  v58(v8, 0, 1, v57);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267435710);
  v36(v65, 0);
  v35(v33, v32, v34);
  v65[0] = 1;
  sub_26738114C();
  v38 = v57;
  v37 = v58;
  v58(v8, 0, 1, v57);
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, 0x8000000267435730);
  v39(v65, 0);
  type metadata accessor for FLOWSchemaFLOWMediaPlayerSetAirPlayRoutesStatus(0);
  sub_266F98134(&qword_2800F1408, type metadata accessor for FLOWSchemaFLOWMediaPlayerSetAirPlayRoutesStatus, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerSetAirPlayRoutesStatus);
  sub_26738120C();
  v37(v8, 0, 1, v38);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267435760);
  v40(v65, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona(0);
  sub_266F98134(&qword_2800F1410, type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppSelectionUserPersona);
  sub_26738120C();
  v37(v8, 0, 1, v38);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, 0x7372655072657375, 0xEB00000000616E6FLL);
  v41(v65, 0);
  v42 = v52;
  sub_26738117C();
  v43 = sub_2673811BC();
  v45 = v44;
  v46 = *v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v45 = v46;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = sub_266ECAD54(0, v46[2] + 1, 1, v46);
    *v45 = v46;
  }

  v49 = v46[2];
  v48 = v46[3];
  if (v49 >= v48 >> 1)
  {
    v46 = sub_266ECAD54((v48 > 1), v49 + 1, 1, v46);
    *v45 = v46;
  }

  v46[2] = v49 + 1;
  (*(v53 + 32))(v46 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v49, v42, v54);
  return v43(v65, 0);
}

uint64_t sub_266F98070(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F980D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F98134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static FLOWSchemaFLOWMediaPlayerEndpoint.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674357E0, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267435800, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x8000000267435820, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267435850, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267435880, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000029, 0x80000002674358A0, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000027, 0x80000002674358D0, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x8000000267435900, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_266F98608(uint64_t a1)
{
  v2 = sub_266F9870C(&qword_2800F1420, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerEndpoint);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F98670(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9870C(&qword_2800F1420, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerEndpoint);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9870C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerEndpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerMediaItem.makeTypeManifestAndEnsureFields(in:)@<X0>(void (*a1)(char *, void, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v4 + 104);
  v43 = v3;
  v45 = v11;
  v46 = v4 + 104;
  v11(v6, v10, v3);
  v48[0] = 1;
  v41 = v6;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v44 = v13 + 56;
  v14(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C746974, 0xE500000000000000);
  v15(v48, 0);
  v42 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v47, 0x656C746974, 0xE500000000000000);
  v40 = *(v13 + 48);
  if (!v40(v18, 1, v12))
  {
    sub_266ECB128(&unk_287885AD8);
    sub_26738115C();
  }

  (v17)(v47, 0);
  v16(v48, 0);
  v38 = v10;
  v45(v41, v10, v43);
  v48[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x747369747261, 0xE600000000000000);
  v19(v48, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v47, 0x747369747261, 0xE600000000000000);
  if (!v40(v22, 1, v12))
  {
    sub_266ECB128(&unk_287885B00);
    sub_26738115C();
  }

  (v21)(v47, 0);
  v20(v48, 0);
  type metadata accessor for FLOWSchemaFLOWMediaType(0);
  sub_266F99140(&qword_2800F13E8, type metadata accessor for FLOWSchemaFLOWMediaType, &protocol conformance descriptor for FLOWSchemaFLOWMediaType);
  sub_26738120C();
  v14(v9, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x707954616964656DLL, 0xE900000000000065);
  v23(v48, 0);
  v45(v41, v38, v43);
  v48[0] = 1;
  sub_26738114C();
  v39 = v14;
  v14(v9, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449797469746E65, 0xE800000000000000);
  v24(v48, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v47, 0x6449797469746E65, 0xE800000000000000);
  if (!v40(v27, 1, v12))
  {
    sub_266ECB128(&unk_287885B28);
    sub_26738115C();
  }

  (v26)(v47, 0);
  v25(v48, 0);
  v29 = v41;
  LODWORD(v40) = *MEMORY[0x277D3E4E8];
  v28 = v40;
  v30 = v43;
  v45(v41, v40, v43);
  v48[0] = 1;
  sub_26738114C();
  v31 = v39;
  v39(v9, 0, 1, v12);
  v37 = v12;
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E7265746C417369, 0xED00006576697461);
  v32(v48, 0);
  v33 = v45;
  v45(v29, v28, v30);
  v48[0] = 1;
  sub_26738114C();
  v31(v9, 0, 1, v12);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0x736552736C4E7369, 0xEB00000000746C75);
  v34(v48, 0);
  v33(v29, v40, v30);
  v48[0] = 1;
  sub_26738114C();
  v31(v9, 0, 1, v37);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267435960);
  return v35(v48, 0);
}

uint64_t sub_266F99034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F99098(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F99140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F99188()
{
  result = qword_2800F1430;
  if (!qword_2800F1430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1430);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerPlaybackContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496B6E696CLL, 0xE600000000000000);
  v8(v27, 0);
  type metadata accessor for FLOWSchemaFLOWMediaPlayerChosenExecutionSource(0);
  sub_266F999F8(&qword_2800F13C0, type metadata accessor for FLOWSchemaFLOWMediaPlayerChosenExecutionSource, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerChosenExecutionSource);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F69747563657865, 0xEF656372756F536ELL);
  v9(v27, 0);
  type metadata accessor for FLOWSchemaFLOWMediaPlayerEndpoint(0);
  sub_266F999F8(&qword_2800F1418, type metadata accessor for FLOWSchemaFLOWMediaPlayerEndpoint, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerEndpoint);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x746E696F70646E65, 0xE800000000000000);
  v10(v27, 0);
  type metadata accessor for FLOWSchemaFLOWMediaPlayerContentSource(0);
  sub_266F999F8(&qword_2800F13D0, type metadata accessor for FLOWSchemaFLOWMediaPlayerContentSource, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerContentSource);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x53746E65746E6F63, 0xED0000656372756FLL);
  v11(v27, 0);
  sub_266ECB294(0, &qword_2800F1438, 0x277D57650);
  sub_266ECAF2C(&qword_2800F1440, &qword_2800F1438, 0x277D57650, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerRadioStationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x80000002674359C0);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800F1448, 0x277D57648);
  sub_266ECAF2C(&qword_2800F1450, &qword_2800F1448, 0x277D57648, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerPlaylistContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0x7473696C79616C70, 0xEF747865746E6F43);
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

uint64_t sub_266F99934(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F99998(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F999F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static FLOWSchemaFLOWMediaPlayerPlaybackContextTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51[1] = a2;
  v58 = sub_26738113C();
  v3 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v51 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v53 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496B6E696CLL, 0xE600000000000000);
  v12(v64, 0);
  v13 = *(v3 + 104);
  v52 = *MEMORY[0x277D3E530];
  v56 = v3 + 104;
  v54 = v13;
  v13(v5);
  v64[0] = 1;
  v55 = v5;
  sub_26738114C();
  v61 = v11;
  v62 = v10 + 56;
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  v57 = v8;
  sub_266EC637C(v8, 0x54746E65746E6F63, 0xEC000000656C7469);
  v14(v64, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v63, 0x54746E65746E6F63, 0xEC000000656C7469);
  v17 = v9;
  v59 = *(v10 + 48);
  v60 = v10 + 48;
  if (!v59(v18, 1, v9))
  {
    sub_266ECB128(&unk_287885B50);
    sub_26738115C();
  }

  (v16)(v63, 0);
  v15(v64, 0);
  v54(v55, *MEMORY[0x277D3E538], v58);
  v64[0] = 1;
  v19 = v57;
  sub_26738114C();
  v61(v19, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v19, 0x64496D616461, 0xE600000000000000);
  v20(v64, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v63, 0x64496D616461, 0xE600000000000000);
  if (!v59(v23, 1, v9))
  {
    sub_266ECB128(&unk_287885B78);
    sub_26738115C();
  }

  (v22)(v63, 0);
  v21(v64, 0);
  v54(v55, v52, v58);
  v64[0] = 1;
  sub_26738114C();
  v61(v19, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v19, 0x745364496D616461, 0xEC000000676E6972);
  v24(v64, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v63, 0x745364496D616461, 0xEC000000676E6972);
  if (!v59(v27, 1, v9))
  {
    sub_266ECB128(&unk_287885BA8);
    sub_26738115C();
  }

  (v26)(v63, 0);
  v25(v64, 0);
  sub_266ECB294(0, &qword_2800F1430, 0x277D57630);
  sub_266ECAF2C(&qword_2800F1428, &qword_2800F1430, 0x277D57630, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerMediaItem);
  v28 = v57;
  sub_26738122C();
  v61(v28, 0, 1, v9);
  v29 = sub_2673811AC();
  sub_266EC637C(v28, 0x6552686372616573, 0xED000073746C7573);
  v29(v64, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v63, 0x6552686372616573, 0xED000073746C7573);
  if (!v59(v32, 1, v9))
  {
    sub_266ECB128(&unk_287885BD0);
    sub_26738115C();
  }

  (v31)(v63, 0);
  v30(v64, 0);
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260, &protocol conformance descriptor for USOSchemaUSOGraph);
  v33 = v57;
  sub_26738120C();
  v61(v33, 0, 1, v9);
  v34 = sub_2673811AC();
  sub_266EC637C(v33, 0x6172476F73553275, 0xEA00000000006870);
  v34(v64, 0);
  v35 = sub_2673811AC();
  v36 = sub_266ECB6CC(v63, 0x6172476F73553275, 0xEA00000000006870);
  if (!v59(v37, 1, v9))
  {
    sub_266ECB128(&unk_287885BF8);
    sub_26738115C();
  }

  (v36)(v63, 0);
  v35(v64, 0);
  sub_266ECB294(0, &qword_2800F0290, 0x277D5B270);
  sub_266ECAF2C(&qword_2800F0298, &qword_2800F0290, 0x277D5B270, &protocol conformance descriptor for USOSchemaUSOGraphTier1);
  v38 = v57;
  sub_26738120C();
  v61(v38, 0, 1, v9);
  v39 = sub_2673811AC();
  sub_266EC637C(v38, 0x6172476F73553275, 0xEF31726569546870);
  v39(v64, 0);
  v40 = sub_2673811AC();
  v41 = sub_266ECB6CC(v63, 0x6172476F73553275, 0xEF31726569546870);
  if (!v59(v42, 1, v9))
  {
    sub_266ECB128(&unk_287885C20);
    sub_26738115C();
  }

  (v41)(v63, 0);
  v40(v64, 0);
  LODWORD(v60) = *MEMORY[0x277D3E4E8];
  v43 = v55;
  v44 = v58;
  v45 = v54;
  (v54)(v55);
  v64[0] = 1;
  sub_26738114C();
  v46 = v17;
  v51[0] = v17;
  v47 = v61;
  v61(v38, 0, 1, v46);
  v48 = sub_2673811AC();
  sub_266EC637C(v38, 0x736552736C4E7369, 0xEB00000000746C75);
  v48(v64, 0);
  v45(v43, v60, v44);
  v64[0] = 1;
  sub_26738114C();
  v47(v38, 0, 1, v51[0]);
  v49 = sub_2673811AC();
  sub_266EC637C(v38, 0xD000000000000014, 0x8000000267435960);
  return v49(v64, 0);
}

uint64_t sub_266F9A6F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9A754(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWMediaPlayerPlaylistContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype(0);
  sub_266F9AC64(&qword_2800F1458, type metadata accessor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7473696C79616C70, 0xEF65707974627553);
  return v5(v7, 0);
}

uint64_t sub_266F9A9C4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype(0);
  sub_266F9AC64(&qword_2800F1458, type metadata accessor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7473696C79616C70, 0xEF65707974627553);
  return v5(v7, 0);
}

uint64_t sub_266F9AB58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9ABBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F9AC64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F9ACAC()
{
  result = qword_2800F1448;
  if (!qword_2800F1448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1448);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerPlaylistSubtype.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267435AA0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267435AD0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x8000000267435B00, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F9AF0C(uint64_t a1)
{
  v2 = sub_266F9B010(&qword_2800F1460, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9AF74(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9B010(&qword_2800F1460, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9B010(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerRadioStationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for FLOWSchemaFLOWMediaPlayerRadioStationSubtype(0);
  sub_266F9B3A0();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267435B70);
  return v7(v9, 0);
}

uint64_t sub_266F9B2DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9B340(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F9B3A0()
{
  result = qword_2800F1468;
  if (!qword_2800F1468)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerRadioStationSubtype(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1468);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerRadioStationContextTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0x536E6F6974617473, 0xEF656D614E646565);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x536E6F6974617473, 0xEF656D614E646565);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287885C48);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_266F9B820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9B884(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWMediaPlayerRadioStationSubtype.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x8000000267435C20, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267435C50, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x8000000267435C80, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267435CB0, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x8000000267435CE0, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x8000000267435D10, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000026, 0x8000000267435D40, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x8000000267435D70, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003BLL, 0x8000000267435DA0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_266F9BDE0(uint64_t a1)
{
  v2 = sub_266F9BEE4(&qword_2800F1470, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerRadioStationSubtype);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9BE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9BEE4(&qword_2800F1470, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerRadioStationSubtype);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9BEE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerRadioStationSubtype(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerSetAirPlayRoutesStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x8000000267435E20, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x8000000267435E50, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x8000000267435E80, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x8000000267435EC0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000035, 0x8000000267435F00, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000003BLL, 0x8000000267435F40, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003FLL, 0x8000000267435F80, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266F9C304(uint64_t a1)
{
  v2 = sub_266F9C408(&qword_2800F1478, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerSetAirPlayRoutesStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9C36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9C408(&qword_2800F1478, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerSetAirPlayRoutesStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9C408(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerSetAirPlayRoutesStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerTaskType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001FLL, 0x8000000267436000, isUniquelyReferenced_nonNull_native);
  *v3 = v167;

  v1(v206, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267436020, v8);
  *v7 = v168;

  v5(v206, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267436040, v12);
  *v11 = v169;

  v9(v206, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267436060, v16);
  *v15 = v170;

  v13(v206, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267436080, v20);
  *v19 = v171;

  v17(v206, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x80000002674360A0, v24);
  *v23 = v172;

  v21(v206, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x80000002674360C0, v28);
  *v27 = v173;

  v25(v206, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000027, 0x80000002674360E0, v32);
  *v31 = v174;

  v29(v206, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ALL, 0x8000000267436110, v36);
  *v35 = v175;

  v33(v206, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000027, 0x8000000267436140, v40);
  *v39 = v176;

  v37(v206, 0);
  v41 = sub_266ECB128(&unk_287885C70);
  v43 = v42;
  v44 = sub_2673810FC();
  v46 = v45;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v46;
  *v46 = 0x8000000000000000;
  sub_266ECD4CC(v41, v43, 9, v47);
  *v46 = v177;
  v44(v206, 0);
  v48 = sub_26738111C();
  v50 = v49;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v50;
  *v50 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000027, 0x8000000267436170, v51);
  *v50 = v178;

  v48(v206, 0);
  v52 = sub_266ECB128(&unk_287885C98);
  v54 = v53;
  v55 = sub_2673810FC();
  v57 = v56;
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD4CC(v52, v54, 10, v58);
  *v57 = v179;
  v55(v206, 0);
  v59 = sub_26738111C();
  v61 = v60;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v61;
  *v61 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000020, 0x80000002674361A0, v62);
  *v61 = v180;

  v59(v206, 0);
  v63 = sub_26738111C();
  v65 = v64;
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v65;
  *v65 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001FLL, 0x80000002674361D0, v66);
  *v65 = v181;

  v63(v206, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000022, 0x80000002674361F0, v70);
  *v69 = v182;

  v67(v206, 0);
  v71 = sub_26738111C();
  v73 = v72;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v73;
  *v73 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000020, 0x8000000267436220, v74);
  *v73 = v183;

  v71(v206, 0);
  v75 = sub_26738111C();
  v77 = v76;
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v77;
  *v77 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000022, 0x8000000267436250, v78);
  *v77 = v184;

  v75(v206, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001CLL, 0x8000000267436280, v82);
  *v81 = v185;

  v79(v206, 0);
  v83 = sub_26738111C();
  v85 = v84;
  v86 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v85;
  *v85 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001ELL, 0x80000002674362A0, v86);
  *v85 = v186;

  v83(v206, 0);
  v87 = sub_26738111C();
  v89 = v88;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v89;
  *v89 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000022, 0x80000002674362C0, v90);
  *v89 = v187;

  v87(v206, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001ELL, 0x80000002674362F0, v94);
  *v93 = v188;

  v91(v206, 0);
  v95 = sub_26738111C();
  v97 = v96;
  v98 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v97;
  *v97 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000021, 0x8000000267436310, v98);
  *v97 = v189;

  v95(v206, 0);
  v99 = sub_26738111C();
  v101 = v100;
  v102 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v101;
  *v101 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000029, 0x8000000267436340, v102);
  *v101 = v190;

  v99(v206, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001FLL, 0x8000000267436370, v106);
  *v105 = v191;

  v103(v206, 0);
  v107 = sub_26738111C();
  v109 = v108;
  v110 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v109;
  *v109 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000025, 0x8000000267436390, v110);
  *v109 = v192;

  v107(v206, 0);
  v111 = sub_26738111C();
  v113 = v112;
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v113;
  *v113 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000022, 0x80000002674363C0, v114);
  *v113 = v193;

  v111(v206, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000022, 0x80000002674363F0, v118);
  *v117 = v194;

  v115(v206, 0);
  v119 = sub_26738111C();
  v121 = v120;
  v122 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v121;
  *v121 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000027, 0x8000000267436420, v122);
  *v121 = v195;

  v119(v206, 0);
  v123 = sub_26738111C();
  v125 = v124;
  v126 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v125;
  *v125 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000028, 0x8000000267436450, v126);
  *v125 = v196;

  v123(v206, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000002ALL, 0x8000000267436480, v130);
  *v129 = v197;

  v127(v206, 0);
  v131 = sub_26738111C();
  v133 = v132;
  v134 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v133;
  *v133 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001CLL, 0x80000002674364B0, v134);
  *v133 = v198;

  v131(v206, 0);
  v135 = sub_26738111C();
  v137 = v136;
  v138 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v137;
  *v137 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000025, 0x80000002674364D0, v138);
  *v137 = v199;

  v135(v206, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000002ALL, 0x8000000267436500, v142);
  *v141 = v200;

  v139(v206, 0);
  v143 = sub_26738111C();
  v145 = v144;
  v146 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v145;
  *v145 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000031, 0x8000000267436530, v146);
  *v145 = v201;

  v143(v206, 0);
  v147 = sub_26738111C();
  v149 = v148;
  v150 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v149;
  *v149 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000020, 0x8000000267436570, v150);
  *v149 = v202;

  v147(v206, 0);
  v151 = sub_266ECB128(&unk_287885CC0);
  v153 = v152;
  v154 = sub_2673810FC();
  v156 = v155;
  v157 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v156;
  *v156 = 0x8000000000000000;
  sub_266ECD4CC(v151, v153, 33, v157);
  *v156 = v203;
  v154(v206, 0);
  v158 = sub_26738111C();
  v160 = v159;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v160;
  *v160 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000025, 0x80000002674365A0, v161);
  *v160 = v204;

  v158(v206, 0);
  v162 = sub_26738111C();
  v164 = v163;
  v165 = swift_isUniquelyReferenced_nonNull_native();
  v205 = *v164;
  *v164 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000023, 0x80000002674365D0, v165);
  *v164 = v205;

  return v162(v206, 0);
}

uint64_t sub_266F9D69C(uint64_t a1)
{
  v2 = sub_266F9D7A0(&qword_2800F1480, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerTaskType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9D704(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9D7A0(&qword_2800F1480, &protocol conformance descriptor for FLOWSchemaFLOWMediaPlayerTaskType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9D7A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267436630, isUniquelyReferenced_nonNull_native);
  *v3 = v118;

  v1(v147, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267436650, v8);
  *v7 = v119;

  v5(v147, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267436670, v12);
  *v11 = v120;

  v9(v147, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x8000000267436690, v16);
  *v15 = v121;

  v13(v147, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x80000002674366B0, v20);
  *v19 = v122;

  v17(v147, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000010, 0x80000002674366D0, v24);
  *v23 = v123;

  v21(v147, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000015, 0x80000002674366F0, v28);
  *v27 = v124;

  v25(v147, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000013, 0x8000000267436710, v32);
  *v31 = v125;

  v29(v147, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000015, 0x8000000267436730, v36);
  *v35 = v126;

  v33(v147, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000010, 0x8000000267436750, v40);
  *v39 = v127;

  v37(v147, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000013, 0x8000000267436770, v44);
  *v43 = v128;

  v41(v147, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001CLL, 0x8000000267436790, v48);
  *v47 = v129;

  v45(v147, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000019, 0x80000002674367B0, v52);
  *v51 = v130;

  v49(v147, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000012, 0x80000002674367D0, v56);
  *v55 = v131;

  v53(v147, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000019, 0x80000002674367F0, v60);
  *v59 = v132;

  v57(v147, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000016, 0x8000000267436810, v64);
  *v63 = v133;

  v61(v147, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000015, 0x8000000267436830, v68);
  *v67 = v134;

  v65(v147, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000025, 0x8000000267436850, v72);
  *v71 = v135;

  v69(v147, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001DLL, 0x8000000267436880, v76);
  *v75 = v136;

  v73(v147, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001DLL, 0x80000002674368A0, v80);
  *v79 = v137;

  v77(v147, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000018, 0x80000002674368C0, v84);
  *v83 = v138;

  v81(v147, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001BLL, 0x80000002674368E0, v88);
  *v87 = v139;

  v85(v147, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000016, 0x8000000267436900, v92);
  *v91 = v140;

  v89(v147, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000012, 0x8000000267436920, v96);
  *v95 = v141;

  v93(v147, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000014, 0x8000000267436940, v100);
  *v99 = v142;

  v97(v147, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000012, 0x8000000267436960, v104);
  *v103 = v143;

  v101(v147, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000015, 0x8000000267436980, v108);
  *v107 = v144;

  v105(v147, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000015, 0x80000002674369A0, v112);
  *v111 = v145;

  v109(v147, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000013, 0x80000002674369C0, v116);
  *v115 = v146;

  return v113(v147, 0);
}