uint64_t sub_1C8D2219C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D22200(uint64_t a1)
{
  v2 = type metadata accessor for ToolRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8D2225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B348;
  if (!qword_1EDA6B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B348);
  }

  return result;
}

unint64_t sub_1C8D222B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B288;
  if (!qword_1EDA6B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B288);
  }

  return result;
}

unint64_t sub_1C8D22304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66498;
  if (!qword_1EDA66498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66498);
  }

  return result;
}

unint64_t sub_1C8D22358(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131B8, &unk_1C906B520);
    v6 = sub_1C8D21FDC(v3, v4, v5);
    v16 = sub_1C8D22030(v6, v7, v8);
    result = OUTLINED_FUNCTION_62_4(v16, v9, v10, v11, v12, v13, v14, v15, v6);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C8D223C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA691D8;
  if (!qword_1EDA691D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA691D8);
  }

  return result;
}

unint64_t sub_1C8D22414(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131C0, &unk_1C906B4E0);
    v6 = sub_1C8CAC450(v3, v4, v5);
    v16 = sub_1C8CA6D90(v6, v7, v8);
    result = OUTLINED_FUNCTION_62_4(v16, v9, v10, v11, v12, v13, v14, v15, v6);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C8D2254C(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C8D21E8C(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t sub_1C8D2261C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_142();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313278, &qword_1C90C63C0);
  __swift_allocate_value_buffer(v11, a2);
  __swift_project_value_buffer(v11, a2);
  type metadata accessor for ToolRecord(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313280, &qword_1C906B0B8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C906A950;
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = sub_1C9062E6C();
  __swift_project_value_buffer(v13, a4);
  v14 = MEMORY[0x1E69A0030];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  OUTLINED_FUNCTION_10_0();
  (*(v15 + 16))();
  sub_1C906240C();
  v16 = sub_1C90623FC();
  OUTLINED_FUNCTION_67_1(v16);
  OUTLINED_FUNCTION_0_13();
  v18 = sub_1C8D24DBC(v17);
  sub_1C8D24BA0(v18, v19, v20);
  OUTLINED_FUNCTION_21_1();
  sub_1C906254C();
  return sub_1C8D16D78(v5, &qword_1EC3131F8, &qword_1C90A6B60);
}

void sub_1C8D22808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  a19 = v20;
  a20 = v21;
  v22 = sub_1C9062E6C();
  OUTLINED_FUNCTION_11();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &a9 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  if (qword_1EDA6C790 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v22, qword_1EDA6EBF8);
  v36 = *(v24 + 16);
  v36(v34, v35, v22);
  if (qword_1EDA624D8 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v22, qword_1EDA6E6C0);
  v36(v31, v34, v22);
  v36(v28, v37, v22);
  (*(v24 + 8))(v34, v22);
  v38 = *(v24 + 80);
  v39 = (v38 + 16) & ~v38;
  v40 = (v26 + v38 + v39) & ~v38;
  v41 = swift_allocObject();
  v42 = *(v24 + 32);
  v42(v41 + v39, v31, v22);
  v42(v41 + v40, v28, v22);
  qword_1EDA6E5F0 = sub_1C8D24C48;
  *algn_1EDA6E5F8 = v41;
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D22A54()
{
  v0 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_72();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313260, &unk_1C90A7A60);
  __swift_allocate_value_buffer(v2, qword_1EDA6E600);
  OUTLINED_FUNCTION_10(v2, qword_1EDA6E600);
  type metadata accessor for ToolRecord(0);
  OUTLINED_FUNCTION_49_2();
  v3 = sub_1C90623FC();
  OUTLINED_FUNCTION_17_1(v3);
  OUTLINED_FUNCTION_0_13();
  v5 = sub_1C8D24DBC(v4);
  sub_1C8D24B4C(v5, v6, v7);
  OUTLINED_FUNCTION_2_7(&type metadata for ToolParameterRecord);
  return OUTLINED_FUNCTION_45_5();
}

uint64_t sub_1C8D22B48()
{
  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_11();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_55_1();
  if (qword_1EDA66A00 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDA6E878);
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_58(v6);
  result = v8(v7);
  qword_1EDA6EA38 = sub_1C8D249F4;
  unk_1EDA6EA40 = v2;
  return result;
}

uint64_t sub_1C8D22C70()
{
  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_11();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_55_1();
  if (qword_1EDA66928 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDA6E848);
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_58(v6);
  result = v8(v7);
  qword_1EDA6EA28 = sub_1C8D249DC;
  unk_1EDA6EA30 = v2;
  return result;
}

uint64_t sub_1C8D22D98()
{
  v0 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_72();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313238, &qword_1C906B0B0);
  __swift_allocate_value_buffer(v2, qword_1EDA6E9E0);
  OUTLINED_FUNCTION_10(v2, qword_1EDA6E9E0);
  type metadata accessor for ToolRecord(0);
  OUTLINED_FUNCTION_49_2();
  v3 = sub_1C90623FC();
  OUTLINED_FUNCTION_17_1(v3);
  OUTLINED_FUNCTION_0_13();
  v5 = sub_1C8D24DBC(v4);
  sub_1C8D24988(v5, v6, v7);
  OUTLINED_FUNCTION_2_7(&type metadata for SampleInvocationRecord);
  return OUTLINED_FUNCTION_45_5();
}

uint64_t sub_1C8D22E8C()
{
  v0 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_72();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313258, &unk_1C90A7A30);
  __swift_allocate_value_buffer(v2, qword_1EDA6E9B0);
  OUTLINED_FUNCTION_10(v2, qword_1EDA6E9B0);
  type metadata accessor for ToolRecord(0);
  OUTLINED_FUNCTION_49_2();
  v3 = sub_1C90623FC();
  OUTLINED_FUNCTION_17_1(v3);
  OUTLINED_FUNCTION_0_13();
  v5 = sub_1C8D24DBC(v4);
  sub_1C8D24AF8(v5, v6, v7);
  OUTLINED_FUNCTION_2_7(&type metadata for LinkActionIdentifierRecord);
  return OUTLINED_FUNCTION_45_5();
}

uint64_t sub_1C8D22F80()
{
  v0 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_72();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313218, &qword_1C906B0A0);
  __swift_allocate_value_buffer(v2, qword_1EDA6E9F8);
  OUTLINED_FUNCTION_10(v2, qword_1EDA6E9F8);
  type metadata accessor for ToolRecord(0);
  OUTLINED_FUNCTION_49_2();
  v3 = sub_1C90623FC();
  OUTLINED_FUNCTION_17_1(v3);
  OUTLINED_FUNCTION_0_13();
  v5 = sub_1C8D24DBC(v4);
  sub_1C8D248E0(v5, v6, v7);
  OUTLINED_FUNCTION_2_7(&type metadata for SystemToolProtocolRecord);
  return OUTLINED_FUNCTION_45_5();
}

uint64_t sub_1C8D23074()
{
  v0 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_72();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313210, &unk_1C90A7A10);
  __swift_allocate_value_buffer(v2, qword_1EDA6E998);
  OUTLINED_FUNCTION_10(v2, qword_1EDA6E998);
  type metadata accessor for ToolRecord(0);
  OUTLINED_FUNCTION_49_2();
  v3 = sub_1C90623FC();
  OUTLINED_FUNCTION_17_1(v3);
  OUTLINED_FUNCTION_0_13();
  v5 = sub_1C8D24DBC(v4);
  sub_1C8D2488C(v5, v6, v7);
  OUTLINED_FUNCTION_2_7(&type metadata for ToolOutputTypeRecord);
  return OUTLINED_FUNCTION_45_5();
}

void sub_1C8D23168()
{
  OUTLINED_FUNCTION_164();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313220, &qword_1C90C7320);
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313228, &qword_1C906B0A8);
  OUTLINED_FUNCTION_11();
  v12 = v11;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_38();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313230, &unk_1C90A6FF0);
  __swift_allocate_value_buffer(v14, qword_1EDA6E980);
  __swift_project_value_buffer(v14, qword_1EDA6E980);
  type metadata accessor for ToolRecord(0);
  v15 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v15);
  OUTLINED_FUNCTION_0_13();
  v17 = sub_1C8D24DBC(v16);
  sub_1C8D24934(v17, v18, v19);
  OUTLINED_FUNCTION_21_1();
  sub_1C906251C();
  sub_1C8D16D78(v10, &qword_1EC3131F8, &qword_1C90A6B60);
  if (qword_1EDA69348 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v1, qword_1EDA6EA68);
  (*(v3 + 16))(v6, v20, v1);
  sub_1C8D24EA8(&unk_1EDA693F8);
  sub_1C8D24EA8(&unk_1EDA69398);
  v21 = v23;
  sub_1C906252C();
  (*(v3 + 8))(v6, v1);
  (*(v12 + 8))(v0, v21);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D234B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  a19 = v21;
  a20 = v22;
  v23 = sub_1C9062E6C();
  OUTLINED_FUNCTION_11();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v29);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_142();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313200, &qword_1C906B098);
  __swift_allocate_value_buffer(v31, qword_1EC3906B0);
  __swift_project_value_buffer(v31, qword_1EC3906B0);
  v32 = OUTLINED_FUNCTION_49_2();
  type metadata accessor for ToolRecord(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C906A950;
  if (qword_1EC311228 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v23, qword_1EC390810);
  (*(v25 + 16))(v28, v34, v23);
  v35 = sub_1C9062E5C();
  v37 = v36;
  (*(v25 + 8))(v28, v23);
  *(v33 + 32) = v35;
  *(v33 + 40) = v37;
  sub_1C906241C();
  v38 = sub_1C90623FC();
  OUTLINED_FUNCTION_67_1(v38);
  OUTLINED_FUNCTION_0_13();
  v40 = sub_1C8D24DBC(v39);
  sub_1C8D24838(v40, v41, v42);
  OUTLINED_FUNCTION_21_1();
  sub_1C906251C();
  sub_1C8D16D78(v20, &qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D23714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a6;
  v32 = a4;
  v31 = a3;
  v35 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313270, &unk_1C90A7010);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v29 - v13;
  type metadata accessor for ToolRecord(0);
  v15 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
  v16 = sub_1C8D24DBC(&qword_1EDA6B220);
  sub_1C8D24D14(v16, v17, v18);
  sub_1C90624EC();
  sub_1C8D16D78(v12, &qword_1EC3131F8, &qword_1C90A6B60);
  v19 = sub_1C9062E6C();
  v42 = v19;
  v43 = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  v21 = *(*(v19 - 8) + 16);
  v21(boxed_opaque_existential_1, a5, v19);
  v22 = MEMORY[0x1E69E6158];
  v23 = MEMORY[0x1E69A0130];
  v38 = MEMORY[0x1E69E6158];
  v39 = MEMORY[0x1E69A0130];
  v37[0] = a1;
  v37[1] = a2;
  v24 = sub_1C90627EC();
  v25 = MEMORY[0x1E699FE60];
  v40[3] = v24;
  v40[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v40);

  sub_1C9062D6C();
  sub_1C8D16D78(v37, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v41);
  v42 = v19;
  v43 = MEMORY[0x1E69A0050];
  v26 = __swift_allocate_boxed_opaque_existential_1(v41);
  v21(v26, v30, v19);
  v36[3] = v22;
  v36[4] = v23;
  v36[0] = v31;
  v36[1] = v32;
  v38 = v24;
  v39 = v25;
  __swift_allocate_boxed_opaque_existential_1(v37);

  sub_1C9062D6C();
  sub_1C8D16D78(v36, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v41);
  v42 = v24;
  v43 = v25;
  __swift_allocate_boxed_opaque_existential_1(v41);
  sub_1C9062D4C();
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_1C8D24EA8(&unk_1EDA69400);
  v27 = v33;
  sub_1C906292C();
  (*(v34 + 8))(v14, v27);
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1C8D23AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313250, &unk_1C90A7000);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22[-1] - v12;
  type metadata accessor for ToolRecord(0);
  v14 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  v15 = sub_1C8D24DBC(&qword_1EDA6B220);
  sub_1C8D24AA4(v15, v16, v17);
  sub_1C906251C();
  sub_1C8D16D78(v9, &qword_1EC3131F8, &qword_1C90A6B60);
  v18 = sub_1C9062E6C();
  v23[3] = v18;
  v23[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a3, v18);
  v22[3] = MEMORY[0x1E69E6158];
  v22[4] = MEMORY[0x1E69A0130];
  v22[0] = a1;
  v22[1] = a2;
  v24[3] = sub_1C90627EC();
  v24[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v24);

  sub_1C9062D6C();
  sub_1C8D16D78(v22, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_1C8D24EA8(&unk_1EDA693B0);
  sub_1C906292C();
  (*(v11 + 8))(v13, v10);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1C8D23DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313240, &unk_1C90A7A20);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22[-1] - v12;
  type metadata accessor for ToolRecord(0);
  v14 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  v15 = sub_1C8D24DBC(&qword_1EDA6B220);
  sub_1C8CE6CE8(v15, v16, v17);
  sub_1C906251C();
  sub_1C8D16D78(v9, &qword_1EC3131F8, &qword_1C90A6B60);
  v18 = sub_1C9062E6C();
  v23[3] = v18;
  v23[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a3, v18);
  v22[3] = MEMORY[0x1E69E6158];
  v22[4] = MEMORY[0x1E69A0130];
  v22[0] = a1;
  v22[1] = a2;
  v24[3] = sub_1C90627EC();
  v24[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v24);

  sub_1C9062D6C();
  sub_1C8D16D78(v22, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_1C8D24EA8(&unk_1EDA693E0);
  sub_1C906292C();
  (*(v11 + 8))(v13, v10);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void sub_1C8D240D4()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3132A0, &unk_1C9084E20);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28();
  v9 = sub_1C90623FC();
  v10 = OUTLINED_FUNCTION_47_2(v9);
  v13 = sub_1C8D24E00(v10, v11, v12);
  sub_1C8D24E54(v13, v14, v15);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_65_0(v16, v17, v18, v19, v20);
  sub_1C8D16D78(v0, &qword_1EC3131F8, &qword_1C90A6B60);
  v25[3] = sub_1C9062E6C();
  v25[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_10_0();
  (*(v21 + 16))();
  v26[3] = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  v26[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_60_1();

  sub_1C9062D6C();
  sub_1C8D16D78(&v24, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_3_2();
  v23 = sub_1C8D24EA8(v22);
  OUTLINED_FUNCTION_44_2(v23);
  (*(v7 + 8))(v1, v5);
  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D242EC()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313288, &qword_1C906B0C0);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_28();
  type metadata accessor for EnumerationCaseRecord(v9);
  v10 = sub_1C90623FC();
  v11 = OUTLINED_FUNCTION_47_2(v10);
  sub_1C8D24D68(v11, v12, v13);
  sub_1C8D24DBC(&unk_1EC313290);
  OUTLINED_FUNCTION_21_1();
  sub_1C906251C();
  sub_1C8D16D78(v0, &qword_1EC3131F8, &qword_1C90A6B60);
  v18[3] = sub_1C9062E6C();
  v18[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_10_0();
  (*(v14 + 16))();
  v19[3] = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  v19[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v19);

  sub_1C9062D6C();
  sub_1C8D16D78(&v17, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_3_2();
  v16 = sub_1C8D24EA8(v15);
  OUTLINED_FUNCTION_44_2(v16);
  (*(v7 + 8))(v1, v5);
  __swift_destroy_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D24550()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313268, &unk_1C909F240);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28();
  v9 = sub_1C90623FC();
  v10 = OUTLINED_FUNCTION_47_2(v9);
  v13 = sub_1C8D24BA0(v10, v11, v12);
  sub_1C8D24BF4(v13, v14, v15);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_65_0(v16, v17, v18, v19, v20);
  sub_1C8D16D78(v0, &qword_1EC3131F8, &qword_1C90A6B60);
  v25[3] = sub_1C9062E6C();
  v25[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_10_0();
  (*(v21 + 16))();
  v26[3] = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  v26[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_60_1();

  sub_1C9062D6C();
  sub_1C8D16D78(&v24, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_3_2();
  v23 = sub_1C8D24EA8(v22);
  OUTLINED_FUNCTION_44_2(v23);
  (*(v7 + 8))(v1, v5);
  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D24768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_1C8D24838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313208;
  if (!qword_1EC313208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313208);
  }

  return result;
}

unint64_t sub_1C8D2488C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA691F0;
  if (!qword_1EDA691F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA691F0);
  }

  return result;
}

unint64_t sub_1C8D248E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69340;
  if (!qword_1EDA69340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69340);
  }

  return result;
}

unint64_t sub_1C8D24934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B4B8;
  if (!qword_1EDA6B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B4B8);
  }

  return result;
}

unint64_t sub_1C8D24988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA668D8;
  if (!qword_1EDA668D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA668D8);
  }

  return result;
}

uint64_t sub_1C8D24A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1C9062E6C();
  OUTLINED_FUNCTION_9(v6);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(a1, a2, v8);
}

unint64_t sub_1C8D24AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA669F8;
  if (!qword_1EDA669F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA669F8);
  }

  return result;
}

unint64_t sub_1C8D24AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66848[0];
  if (!qword_1EDA66848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA66848);
  }

  return result;
}

unint64_t sub_1C8D24B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62680;
  if (!qword_1EDA62680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62680);
  }

  return result;
}

unint64_t sub_1C8D24BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69628;
  if (!qword_1EDA69628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69628);
  }

  return result;
}

unint64_t sub_1C8D24BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69508;
  if (!qword_1EDA69508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69508);
  }

  return result;
}

uint64_t sub_1C8D24C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(sub_1C9062E6C() - 8);
  v12 = *(v11 + 80);
  v13 = (v12 + 16) & ~v12;
  v14 = v5 + ((*(v11 + 64) + v12 + v13) & ~v12);

  return sub_1C8D23714(a1, a2, a3, a4, v5 + v13, v14, a5);
}

unint64_t sub_1C8D24D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6C780;
  if (!qword_1EDA6C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C780);
  }

  return result;
}

unint64_t sub_1C8D24D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66B00;
  if (!qword_1EDA66B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66B00);
  }

  return result;
}

unint64_t sub_1C8D24DBC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C8D24E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3132A8;
  if (!qword_1EC3132A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132A8);
  }

  return result;
}

unint64_t sub_1C8D24E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3132B0;
  if (!qword_1EC3132B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132B0);
  }

  return result;
}

unint64_t sub_1C8D24EA8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ToolRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8D25054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3132C0;
  if (!qword_1EC3132C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132C0);
  }

  return result;
}

unint64_t sub_1C8D250AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B250;
  if (!qword_1EDA6B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B250);
  }

  return result;
}

unint64_t sub_1C8D25104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B258;
  if (!qword_1EDA6B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B258);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_37_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_1C9062BFC();
}

uint64_t sub_1C8D251D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8D25210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8D25270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E4965707974 && a2 == 0xEC00000065636E61;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4972656767697274 && a2 == 0xE900000000000064)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9064C2C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8D254B0(char a1)
{
  result = 0x74736E4965707974;
  switch(a1)
  {
    case 1:
      result = 7955819;
      break;
    case 2:
      result = 0x6564724F74726F73;
      break;
    case 3:
      result = 0x6E6F6974616C6572;
      break;
    case 4:
      result = 0x7367616C66;
      break;
    case 5:
      result = 0x644965707974;
      break;
    case 6:
      result = 0x4972656767697274;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C8D2558C()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313330, &unk_1C906B4F0);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  v9 = v0[1];
  v10 = v0[3];
  v20[7] = v0[2];
  v20[8] = v9;
  v11 = v0[5];
  v20[5] = v0[4];
  v20[6] = v10;
  v12 = v0[7];
  v20[3] = v0[6];
  v20[4] = v11;
  v20[1] = v0[8];
  v20[2] = v12;
  v13 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v16 = sub_1C8D267AC(v13, v14, v15);

  sub_1C9064E1C();
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8D269CC(&qword_1EC3131E8);
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  if (v16)
  {
  }

  else
  {

    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
    OUTLINED_FUNCTION_205();
    sub_1C9064B6C();
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313320, &qword_1C90A6B50);
    sub_1C8D26800(&qword_1EC313338);
    OUTLINED_FUNCTION_205();
    v17 = sub_1C9064B8C();
    v21 = 4;
    sub_1C8D26A34(v17, v18, v19);
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
    OUTLINED_FUNCTION_205();
    sub_1C9064B9C();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_198();
}

void sub_1C8D25878()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313310, &qword_1C906B4D8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C8D267AC(v6, v7, v8);
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
    sub_1C8D269CC(&qword_1EC3131C8);
    OUTLINED_FUNCTION_27_1();
    sub_1C9064A6C();
    v24 = v27[0];
    OUTLINED_FUNCTION_9_7(1);
    v9 = sub_1C9064A0C();
    v25 = v10;
    OUTLINED_FUNCTION_9_7(2);
    v23 = sub_1C9064A4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313320, &qword_1C90A6B50);
    sub_1C8D26800(&qword_1EC313328);
    OUTLINED_FUNCTION_27_1();
    v11 = sub_1C9064A6C();
    v22 = v27[0];
    LOBYTE(v26[0]) = 4;
    sub_1C8D26910(v11, v12, v13);
    OUTLINED_FUNCTION_27_1();
    sub_1C9064A6C();
    v21 = v27[0];
    OUTLINED_FUNCTION_9_7(5);
    v20 = sub_1C9064A0C();
    v19 = v9;
    v15 = v14;
    OUTLINED_FUNCTION_27_1();
    v16 = sub_1C9064A7C();
    v17 = OUTLINED_FUNCTION_5_9();
    v18(v17);
    v26[0] = v24;
    v26[1] = v19;
    v26[2] = v25;
    v26[3] = v23;
    v26[4] = v22;
    v26[5] = v21;
    v26[6] = v20;
    v26[7] = v15;
    v26[8] = v16;
    memcpy(v4, v26, 0x48uLL);
    sub_1C8D26964(v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v27[0] = v24;
    v27[1] = v19;
    v27[2] = v25;
    v27[3] = v23;
    v27[4] = v22;
    v27[5] = v21;
    v27[6] = v20;
    v27[7] = v15;
    v27[8] = v16;
    sub_1C8D2699C(v27);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D25CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D25270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D25CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D267AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D25D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D267AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D25DA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_1EC3111B8 != -1)
  {
    OUTLINED_FUNCTION_23_4(&qword_1EC3111B8);
  }

  v4 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v4, qword_1EC3906C8);
  v5 = sub_1C9062E5C();
  sub_1C8D277DC(v5, v6, v7, v8, v9, v10, v11, v12, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, vars0, vars8);

  *a2 = v26;
  if (qword_1EC3111C0 != -1)
  {
    OUTLINED_FUNCTION_22_5(&qword_1EC3111C0);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC3906E0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  v14 = v13;
  v16 = v15;

  a2[1] = v14;
  a2[2] = v16;
  if (qword_1EC3111C8 != -1)
  {
    OUTLINED_FUNCTION_21_5(&qword_1EC3111C8);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC3906F8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B088();
  OUTLINED_FUNCTION_60_1();

  a2[3] = v14;
  if (qword_1EC3111D0 != -1)
  {
    OUTLINED_FUNCTION_20_3(&qword_1EC3111D0);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC390710);
  sub_1C9062E5C();
  sub_1C8D27A0C();
  OUTLINED_FUNCTION_60_1();

  a2[4] = a1;
  if (qword_1EC3111D8 != -1)
  {
    OUTLINED_FUNCTION_19_3(&qword_1EC3111D8);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC390728);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B088();
  OUTLINED_FUNCTION_60_1();

  a2[5] = a1;
  if (qword_1EC3111E0 != -1)
  {
    OUTLINED_FUNCTION_18_1(&qword_1EC3111E0);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC390740);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  v18 = v17;
  v20 = v19;

  a2[6] = v18;
  a2[7] = v20;
  if (qword_1EC3111E8 != -1)
  {
    OUTLINED_FUNCTION_17_2(&qword_1EC3111E8);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC390758);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v22 = v21;

  a2[8] = v22;
  return result;
}

uint64_t sub_1C8D26090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8D26658(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8D26188()
{
  v48 = *(v0 + 24);
  v1 = qword_1EC3111B8;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_23_4(&qword_1EC3111B8);
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, qword_1EC3906C8);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  OUTLINED_FUNCTION_23_0();
  sub_1C8D28184(v3, &qword_1EC3131C0, &unk_1C906B4E0, v4);
  sub_1C9062BFC();
  if (qword_1EC3111C0 != -1)
  {
    OUTLINED_FUNCTION_22_5(&qword_1EC3111C0);
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC3906E0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8_6(v5, v6, v7, v8, v9, v10, v11, v12, v48);
  if (qword_1EC3111C8 != -1)
  {
    OUTLINED_FUNCTION_21_5(&qword_1EC3111C8);
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC3906F8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8_6(v13, v14, v15, v16, v17, v18, v19, v20, v49);
  if (qword_1EC3111D0 != -1)
  {
    OUTLINED_FUNCTION_20_3(&qword_1EC3111D0);
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390710);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313320, &qword_1C90A6B50);
  OUTLINED_FUNCTION_11_5();
  sub_1C8D28184(v21, &qword_1EC313320, &qword_1C90A6B50, v22);
  sub_1C9062BFC();
  if (qword_1EC3111D8 != -1)
  {
    OUTLINED_FUNCTION_19_3(&qword_1EC3111D8);
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390728);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8_6(v23, v24, v25, v26, v27, v28, v29, v30, v50);
  if (qword_1EC3111E0 != -1)
  {
    OUTLINED_FUNCTION_18_1(&qword_1EC3111E0);
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390740);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8_6(v31, v32, v33, v34, v35, v36, v37, v38, v51);
  if (qword_1EC3111E8 != -1)
  {
    OUTLINED_FUNCTION_17_2(&qword_1EC3111E8);
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390758);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  return OUTLINED_FUNCTION_8_6(v39, v40, v41, v42, v43, v44, v45, v46, v52);
}

uint64_t sub_1C8D264DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC3132C8;

  return v5;
}

unint64_t sub_1C8D26518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3132D8;
  if (!qword_1EC3132D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132D8);
  }

  return result;
}

unint64_t sub_1C8D26570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3132E0;
  if (!qword_1EC3132E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132E0);
  }

  return result;
}

unint64_t sub_1C8D265C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D26604(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8D26658(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D266AC(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8D26700(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D26604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3132E8;
  if (!qword_1EC3132E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132E8);
  }

  return result;
}

unint64_t sub_1C8D26658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3132F0;
  if (!qword_1EC3132F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132F0);
  }

  return result;
}

unint64_t sub_1C8D266AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3132F8;
  if (!qword_1EC3132F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132F8);
  }

  return result;
}

unint64_t sub_1C8D26700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313300;
  if (!qword_1EC313300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313300);
  }

  return result;
}

unint64_t sub_1C8D26758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313308;
  if (!qword_1EC313308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313308);
  }

  return result;
}

unint64_t sub_1C8D267AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313318;
  if (!qword_1EC313318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313318);
  }

  return result;
}

uint64_t sub_1C8D26800(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313320, &qword_1C90A6B50);
    v6 = sub_1C8D26868(v3, v4, v5);
    v9 = sub_1C8D268BC(v6, v7, v8);
    result = OUTLINED_FUNCTION_43(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8D26868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA694D0;
  if (!qword_1EDA694D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694D0);
  }

  return result;
}

unint64_t sub_1C8D268BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA694D8;
  if (!qword_1EDA694D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694D8);
  }

  return result;
}

unint64_t sub_1C8D26910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66968;
  if (!qword_1EDA66968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66968);
  }

  return result;
}

uint64_t sub_1C8D269CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131C0, &unk_1C906B4E0);
    v6 = sub_1C8CAC450(v3, v4, v5);
    v9 = sub_1C8CA6D90(v6, v7, v8);
    result = OUTLINED_FUNCTION_43(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8D26A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66970;
  if (!qword_1EDA66970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66970);
  }

  return result;
}

uint64_t sub_1C8D26AF8(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C8D267AC(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t sub_1C8D26B70()
{
  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v6 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA62480 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EDA6E630);
  (*(v2 + 16))(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v0);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  result = (*(v2 + 32))(v9 + v8, v6, v0);
  qword_1EC390770 = sub_1C8D27EB4;
  *algn_1EC390778 = v9;
  return result;
}

uint64_t sub_1C8D26CC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313380, &qword_1C906B530);
  __swift_allocate_value_buffer(v4, qword_1EC390780);
  OUTLINED_FUNCTION_10(v4, qword_1EC390780);
  sub_1C90623FC();
  OUTLINED_FUNCTION_115();
  v9 = __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v12 = sub_1C8D26570(v9, v10, v11);
  sub_1C8D24D68(v12, v13, v14);
  sub_1C906254C();
  return sub_1C8D27F8C(v3, &qword_1EC3131F8, &qword_1C90A6B60);
}

uint64_t sub_1C8D26DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313388, &qword_1C906B538);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25[-1] - v12;
  v14 = sub_1C90623FC();
  v15 = __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  v18 = sub_1C8D26570(v15, v16, v17);
  sub_1C8D27F38(v18, v19, v20);
  sub_1C90624EC();
  sub_1C8D27F8C(v9, &qword_1EC3131F8, &qword_1C90A6B60);
  v21 = sub_1C9062E6C();
  v26[3] = v21;
  v26[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, a3, v21);
  v25[3] = MEMORY[0x1E69E6158];
  v25[4] = MEMORY[0x1E69A0130];
  v25[0] = a1;
  v25[1] = a2;
  v27[3] = sub_1C90627EC();
  v27[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v27);

  sub_1C9062D6C();
  sub_1C8D27F8C(v25, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1C8D28184(&qword_1EC313398, &qword_1EC313388, &qword_1C906B538, MEMORY[0x1E699FEC0]);
  sub_1C906292C();
  (*(v11 + 8))(v13, v10);
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

void sub_1C8D2709C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v0);
  v1 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133D0, &qword_1C906B560);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_28();
  v4 = sub_1C90623FC();
  v5 = OUTLINED_FUNCTION_47_2(v4);
  v8 = sub_1C8D24D68(v5, v6, v7);
  sub_1C8D28130(v8, v9, v10);
  OUTLINED_FUNCTION_3_11(&type metadata for TypeDisplayRepresentationRecord, v11, v12, v13, &type metadata for TypeRecord);
  OUTLINED_FUNCTION_30_3();
  v14 = sub_1C9062E6C();
  OUTLINED_FUNCTION_46_3(v14, MEMORY[0x1E69A0050]);
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_39_4();
  v15();
  v16 = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_45_1(v16, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_31_4();
  sub_1C8D27F8C(&v22, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  OUTLINED_FUNCTION_0_14();
  v19 = sub_1C8D28184(v17, &qword_1EC3133D0, &qword_1C906B560, v18);
  OUTLINED_FUNCTION_44_2(v19);
  v20 = OUTLINED_FUNCTION_14_8();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_1(&v24);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D2726C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v0);
  v1 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C8, &unk_1C909F250);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_28();
  v4 = sub_1C90623FC();
  v5 = OUTLINED_FUNCTION_47_2(v4);
  v8 = sub_1C8D24BA0(v5, v6, v7);
  sub_1C8D280DC(v8, v9, v10);
  OUTLINED_FUNCTION_3_11(&type metadata for ContainerMetadataLocalizationRecord, v11, v12, v13, &unk_1F48A86A0);
  OUTLINED_FUNCTION_30_3();
  v14 = sub_1C9062E6C();
  OUTLINED_FUNCTION_46_3(v14, MEMORY[0x1E69A0050]);
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_39_4();
  v15();
  v16 = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_45_1(v16, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_31_4();
  sub_1C8D27F8C(&v22, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  OUTLINED_FUNCTION_0_14();
  v19 = sub_1C8D28184(v17, &qword_1EC3133C8, &unk_1C909F250, v18);
  OUTLINED_FUNCTION_44_2(v19);
  v20 = OUTLINED_FUNCTION_14_8();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_1(&v24);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D2743C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v0);
  v1 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133A0, &unk_1C90C58F0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_28();
  v4 = sub_1C90623FC();
  v5 = OUTLINED_FUNCTION_47_2(v4);
  v8 = sub_1C8D27FE0(v5, v6, v7);
  sub_1C8D28034(v8, v9, v10);
  OUTLINED_FUNCTION_3_11(&type metadata for TriggerDefinitionLocalizationRecord, v11, v12, v13, &type metadata for TriggerDefinitionRecord);
  OUTLINED_FUNCTION_30_3();
  v14 = sub_1C9062E6C();
  OUTLINED_FUNCTION_46_3(v14, MEMORY[0x1E69A0050]);
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_39_4();
  v15();
  v16 = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_45_1(v16, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_31_4();
  sub_1C8D27F8C(&v22, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  OUTLINED_FUNCTION_0_14();
  v19 = sub_1C8D28184(v17, &qword_1EC3133A0, &unk_1C90C58F0, v18);
  OUTLINED_FUNCTION_44_2(v19);
  v20 = OUTLINED_FUNCTION_14_8();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_1(&v24);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D2760C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v0);
  v1 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C0, &unk_1C906B550);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_28();
  v4 = sub_1C90623FC();
  v5 = OUTLINED_FUNCTION_47_2(v4);
  v8 = sub_1C8D24B4C(v5, v6, v7);
  sub_1C8D28088(v8, v9, v10);
  OUTLINED_FUNCTION_3_11(&type metadata for ToolParameterLocalizationRecord, v11, v12, v13, &type metadata for ToolParameterRecord);
  OUTLINED_FUNCTION_30_3();
  v14 = sub_1C9062E6C();
  OUTLINED_FUNCTION_46_3(v14, MEMORY[0x1E69A0050]);
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_39_4();
  v15();
  v16 = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_45_1(v16, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_31_4();
  sub_1C8D27F8C(&v22, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  OUTLINED_FUNCTION_0_14();
  v19 = sub_1C8D28184(v17, &qword_1EC3133C0, &unk_1C906B550, v18);
  OUTLINED_FUNCTION_44_2(v19);
  v20 = OUTLINED_FUNCTION_14_8();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_1(&v24);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D277DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313340, &qword_1C9087E00);
  OUTLINED_FUNCTION_9(v20);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  v22 = sub_1C9062B6C();
  OUTLINED_FUNCTION_11();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v28 = v27 - v26;
  sub_1C9062DDC();
  if (v29)
  {
    sub_1C9062EAC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);

    sub_1C9062B5C();
    sub_1C9062A8C();
    v34 = sub_1C8D27BE0();
    OUTLINED_FUNCTION_29_0(v34);
    OUTLINED_FUNCTION_33_3();
    sub_1C9062A7C();
    (*(v24 + 8))(v28, v22);
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
    OUTLINED_FUNCTION_23_0();
    sub_1C8D28184(v35, &qword_1EC3131C0, &unk_1C906B4E0, v36);
    sub_1C9062CDC();
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8D27A0C()
{
  OUTLINED_FUNCTION_196();
  v21 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313340, &qword_1C9087E00);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C9062B6C();
  OUTLINED_FUNCTION_11();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  sub_1C9062DDC();
  if (v14)
  {
    sub_1C9062EAC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);

    sub_1C9062B5C();
    sub_1C9062A8C();
    v19 = sub_1C8D27BE0();
    OUTLINED_FUNCTION_29_0(v19);
    OUTLINED_FUNCTION_33_3();
    sub_1C9062A7C();
    (*(v9 + 8))(v13, v7);
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
    OUTLINED_FUNCTION_11_5();
    sub_1C8D28184(v21, v4, v2, v20);
    sub_1C9062CDC();
  }

  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8D27BE0()
{
  result = qword_1EC313348;
  if (!qword_1EC313348)
  {
    sub_1C9062A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313348);
  }

  return result;
}

void sub_1C8D27CC8()
{
  OUTLINED_FUNCTION_196();
  v21 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313340, &qword_1C9087E00);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28();
  v7 = sub_1C9062B6C();
  OUTLINED_FUNCTION_11();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  sub_1C9062DDC();
  if (v14)
  {
    sub_1C9062EAC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);

    sub_1C9062B5C();
    sub_1C9062A8C();
    v19 = sub_1C8D27BE0();
    OUTLINED_FUNCTION_29_0(v19);
    OUTLINED_FUNCTION_33_3();
    sub_1C9062A7C();
    (*(v9 + 8))(v13, v7);
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
    OUTLINED_FUNCTION_23_0();
    sub_1C8D28184(v21, v4, v2, v20);
    sub_1C9062CDC();
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D27EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C9062E6C();
  OUTLINED_FUNCTION_9(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_1C8D26DE0(a1, a2, v9, a3);
}

unint64_t sub_1C8D27F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313390;
  if (!qword_1EC313390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313390);
  }

  return result;
}

uint64_t sub_1C8D27F8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_38_2();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C8D27FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3133A8;
  if (!qword_1EC3133A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3133A8);
  }

  return result;
}

unint64_t sub_1C8D28034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3133B0;
  if (!qword_1EC3133B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3133B0);
  }

  return result;
}

unint64_t sub_1C8D28088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62460;
  if (!qword_1EDA62460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62460);
  }

  return result;
}

unint64_t sub_1C8D280DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69488;
  if (!qword_1EDA69488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69488);
  }

  return result;
}

unint64_t sub_1C8D28130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3133D8;
  if (!qword_1EC3133D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3133D8);
  }

  return result;
}

uint64_t sub_1C8D28184(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriggerParameterRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8D282AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3133E8;
  if (!qword_1EC3133E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3133E8);
  }

  return result;
}

unint64_t sub_1C8D28304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3133F0;
  if (!qword_1EC3133F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3133F0);
  }

  return result;
}

unint64_t sub_1C8D2835C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3133F8;
  if (!qword_1EC3133F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3133F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1)
{

  return swift_once();
}

uint64_t Query.init(protobuf:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v26 - v6;
  type metadata accessor for AnyPredicate(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolKitProtoQuery(0);
  sub_1C8D28704(&a1[*(v11 + 20)], v7);
  sub_1C8D28AB4(&qword_1EC313408, type metadata accessor for AnyPredicate, &protocol conformance descriptor for AnyPredicate);
  sub_1C906351C();
  if (v2)
  {
    OUTLINED_FUNCTION_0_15();
    v13 = a1;
    return sub_1C8D2883C(v13, v12);
  }

  sub_1C8D28774(v10, a2);
  if (!*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313410, &qword_1C906B688);
    sub_1C8D287D8();
    swift_allocError();
    *v16 = MEMORY[0x1E6969CB8];
    OUTLINED_FUNCTION_10_0();
    (*(v17 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_0_15();
    sub_1C8D2883C(a1, v18);
    v12 = type metadata accessor for AnyPredicate;
    v13 = a2;
    return sub_1C8D2883C(v13, v12);
  }

  v15 = *a1 != 1;
  v19 = type metadata accessor for Query(0);
  a2[*(v19 + 20)] = v15;
  v20 = &a1[*(v11 + 24)];
  v21 = *v20;
  v22 = v20[8];
  OUTLINED_FUNCTION_0_15();
  result = sub_1C8D2883C(a1, v23);
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = v21;
  }

  v25 = &a2[*(v19 + 24)];
  *v25 = v24;
  v25[8] = v22;
  return result;
}

uint64_t SortOrder.init(protobuf:)(_BYTE *a1)
{
  if (*a1)
  {
    return *a1 != 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313410, &qword_1C906B688);
  sub_1C8D287D8();
  swift_allocError();
  *v2 = MEMORY[0x1E6969CB8];
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 104))();
  return swift_willThrow();
}

uint64_t sub_1C8D28704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D28774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyPredicate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D287D8()
{
  result = qword_1EC313418;
  if (!qword_1EC313418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313410, &qword_1C906B688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313418);
  }

  return result;
}

uint64_t sub_1C8D2883C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

void Query.protobuf(useCase:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  AnyPredicate.protobuf(useCase:)(a1, v20 - v7);
  if (!v3)
  {
    v9 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    v10 = type metadata accessor for Query(0);
    v11 = *(v10 + 24);
    if (*(v2 + *(v10 + 20)))
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = v2 + v11;
    v14 = *(v2 + v11);
    v15 = *(v13 + 8);
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v17 = type metadata accessor for ToolKitProtoQuery(0);
    v18 = *(v17 + 20);
    __swift_storeEnumTagSinglePayload(&a2[v18], 1, 1, v9);
    v19 = &a2[*(v17 + 24)];
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    sub_1C8D289FC(v8, &a2[v18]);
    *a2 = v12;
    *v19 = v16;
    v19[8] = v15;
  }
}

void SortOrder.protobuf(useCase:)(char a1@<W1>, char *a2@<X8>)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a2 = v2;
}

uint64_t sub_1C8D289FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D28AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C8D28B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313428;
  if (!qword_1EC313428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313428);
  }

  return result;
}

uint64_t sub_1C8D28B84@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SortOrder.init(protobuf:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1C8D28BE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8D28C20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8D28C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x46636972656D756ELL && a2 == 0xED000074616D726FLL;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C8D28E30(char a1)
{
  result = 0x644965707974;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x46636972656D756ELL;
      break;
    case 4:
      result = 0x736D796E6F6E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D28EC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313480, &unk_1C906B9B0);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D29D94(v11, v12, v13);
  sub_1C9064E1C();
  v20 = 0;
  OUTLINED_FUNCTION_3_12();
  sub_1C9064B2C();
  if (!v2)
  {
    v19 = 1;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v18 = 2;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v17 = 3;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064ADC();
    v16 = *(v3 + 64);
    v15[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313358, &qword_1C906B508);
    sub_1C8D29E50(&qword_1EC313488, &unk_1C908BCF8);
    sub_1C9064B8C();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_1C8D290BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313468, &unk_1C906B9A0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D29D94(v6, v7, v8);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_2_8();
  v9 = sub_1C9064A0C();
  v25 = v10;
  OUTLINED_FUNCTION_2_8();
  v11 = sub_1C9064A0C();
  v24 = v12;
  v21 = v11;
  OUTLINED_FUNCTION_2_8();
  v20 = sub_1C9064A0C();
  v23 = v13;
  LOBYTE(v27[0]) = 3;
  OUTLINED_FUNCTION_2_8();
  v19 = sub_1C90649AC();
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313358, &qword_1C906B508);
  v28[0] = 4;
  sub_1C8D29E50(&qword_1EC313478, &unk_1C908BC78);
  sub_1C9064A6C();
  v15 = OUTLINED_FUNCTION_0_4();
  v16(v15);
  v18 = v29;
  __src[0] = v9;
  __src[1] = v25;
  __src[2] = v21;
  __src[3] = v24;
  __src[4] = v20;
  __src[5] = v23;
  __src[6] = v19;
  __src[7] = v22;
  __src[8] = v29;
  sub_1C8D29DE8(__src, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27[0] = v9;
  v27[1] = v25;
  v27[2] = v21;
  v27[3] = v24;
  v27[4] = v20;
  v27[5] = v23;
  v27[6] = v19;
  v27[7] = v22;
  v27[8] = v18;
  sub_1C8D29E20(v27);
  return memcpy(a2, __src, 0x48uLL);
}

uint64_t sub_1C8D29468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D28C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D29490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D28E28();
  *a1 = result;
  return result;
}

uint64_t sub_1C8D294B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D29D94(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D294F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D29D94(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void *sub_1C8D29530@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C8D290BC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

uint64_t sub_1C8D295D4@<X0>(uint64_t *a2@<X8>)
{
  if (qword_1EC311200 != -1)
  {
    OUTLINED_FUNCTION_8_7(&qword_1EC311200);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EC390798);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v5 = v4;
  v7 = v6;

  if (qword_1EC311208 != -1)
  {
    OUTLINED_FUNCTION_7_5(&qword_1EC311208);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC3907B0);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v23 = v9;
  v24 = v8;
  v25 = v7;

  if (qword_1EC311210 != -1)
  {
    OUTLINED_FUNCTION_6_6(&qword_1EC311210);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC3907C8);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v11 = v10;
  v22 = v12;
  v13 = v5;

  if (qword_1EC311218 != -1)
  {
    OUTLINED_FUNCTION_5_10(&qword_1EC311218);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC3907E0);
  v14 = sub_1C9062E5C();
  v16 = sub_1C8E293EC(v14, v15);
  v18 = v17;

  if (qword_1EC311220 != -1)
  {
    OUTLINED_FUNCTION_4_7(&qword_1EC311220);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC3907F8);
  sub_1C9062E5C();
  sub_1C8D27C38();
  v20 = v19;

  *a2 = v13;
  a2[1] = v25;
  a2[2] = v24;
  a2[3] = v23;
  a2[4] = v11;
  a2[5] = v22;
  a2[6] = v16;
  a2[7] = v18;
  a2[8] = v20;
  return result;
}

uint64_t sub_1C8D2982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8D29C94(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8D29924()
{
  if (qword_1EC311200 != -1)
  {
    OUTLINED_FUNCTION_8_7(&qword_1EC311200);
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EC390798);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v3 = *v0;
  v2 = v0[1];
  v4 = MEMORY[0x1E69E6158];
  v5 = MEMORY[0x1E69A0138];
  v31 = MEMORY[0x1E69E6158];
  v32 = MEMORY[0x1E69A0138];
  v28 = v3;
  v29 = v2;

  OUTLINED_FUNCTION_1_0(v6, v7, v8);
  if (qword_1EC311208 != -1)
  {
    OUTLINED_FUNCTION_7_5(&qword_1EC311208);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC3907B0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v10 = v0[2];
  v9 = v0[3];
  v31 = v4;
  v32 = v5;
  v28 = v10;
  v29 = v9;

  OUTLINED_FUNCTION_1_0(v11, v12, v13);
  if (qword_1EC311210 != -1)
  {
    OUTLINED_FUNCTION_6_6(&qword_1EC311210);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC3907C8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v15 = v0[4];
  v14 = v0[5];
  v31 = v4;
  v32 = v5;
  v28 = v15;
  v29 = v14;

  OUTLINED_FUNCTION_1_0(v16, v17, v18);
  if (qword_1EC311218 != -1)
  {
    OUTLINED_FUNCTION_5_10(&qword_1EC311218);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC3907E0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v33 = *(v0 + 3);
  if (*(&v33 + 1))
  {
    v19 = MEMORY[0x1E69A0138];
    v20 = MEMORY[0x1E69E6158];
    v21 = v33;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v30 = 0;
  }

  v28 = v21;
  v29 = *(&v33 + 1);
  v31 = v20;
  v32 = v19;
  v22 = sub_1C8D29F88(&v33, v27);
  OUTLINED_FUNCTION_1_0(v22, v23, v24);
  if (qword_1EC311220 != -1)
  {
    OUTLINED_FUNCTION_4_7(&qword_1EC311220);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC3907F8);
  sub_1C9062E5C();
  v25 = v0[8];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313358, &qword_1C906B508);
  v32 = sub_1C8D29FF8();
  v28 = v25;

  return sub_1C9062BFC();
}

uint64_t sub_1C8D29B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC313430;

  return v5;
}

unint64_t sub_1C8D29BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313440;
  if (!qword_1EC313440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313440);
  }

  return result;
}

unint64_t sub_1C8D29C00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D29C40(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8D29C94(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D16868(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8D29CE8(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D29C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313448;
  if (!qword_1EC313448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313448);
  }

  return result;
}

unint64_t sub_1C8D29C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313450;
  if (!qword_1EC313450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313450);
  }

  return result;
}

unint64_t sub_1C8D29CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313458;
  if (!qword_1EC313458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313458);
  }

  return result;
}

unint64_t sub_1C8D29D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313460;
  if (!qword_1EC313460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313460);
  }

  return result;
}

unint64_t sub_1C8D29D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313470;
  if (!qword_1EC313470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313470);
  }

  return result;
}

uint64_t sub_1C8D29E50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313358, &qword_1C906B508);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8D29F10(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C8D29D94(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t sub_1C8D29F88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312580, &qword_1C9073EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D29FF8()
{
  result = qword_1EC313360;
  if (!qword_1EC313360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313358, &qword_1C906B508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313360);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypeDisplayRepresentationRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8D2A13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313490;
  if (!qword_1EC313490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313490);
  }

  return result;
}

unint64_t sub_1C8D2A194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313498;
  if (!qword_1EC313498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313498);
  }

  return result;
}

unint64_t sub_1C8D2A1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3134A0;
  if (!qword_1EC3134A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3134A0);
  }

  return result;
}

uint64_t sub_1C8D2A240@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (*(result + 16))
  {
    v3 = *(result + 32);
  }

  else
  {
    v3 = 0xF000000000000007;
  }

  *a2 = v3;
  return result;
}

void sub_1C8D2A280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v29;
    v6 = sub_1C8D39D38(v2);
    v7 = 0;
    v28 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v8 = v6 >> 6;
        if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_26;
        }

        v27 = v5;
        v25 = v7;
        v26 = v4;
        v9 = TypeInstance.debugDescription.getter();
        v11 = v10;
        v12 = *(v3 + 16);
        if (v12 >= *(v3 + 24) >> 1)
        {
          sub_1C8CA6480();
        }

        *(v3 + 16) = v12 + 1;
        v13 = v3 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v11;
        if (v27)
        {
          goto LABEL_30;
        }

        v2 = v24;
        v14 = 1 << *(v24 + 32);
        if (v6 >= v14)
        {
          goto LABEL_27;
        }

        v15 = *(v28 + 8 * v8);
        if ((v15 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v24 + 36) != v26)
        {
          goto LABEL_29;
        }

        v16 = v15 & (-2 << (v6 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v3;
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v14 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C8CAF698(v6, v26, 0);
              v14 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v6, v26, 0);
LABEL_19:
          v3 = v17;
        }

        v7 = v25 + 1;
        if (v25 + 1 == v1)
        {
          return;
        }

        v5 = 0;
        v4 = *(v24 + 36);
        v6 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

void sub_1C8D2A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_184_0();
  if (v32 != v33 && (v34 = v33, v35 = v32, OUTLINED_FUNCTION_126(), v36))
  {
    v37 = 0;
    v38 = 1 << *(v35 + 32);
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v40 = v39 & *(v35 + 56);
    v41 = (v38 + 63) >> 6;
    if (v40)
    {
      while (2)
      {
        OUTLINED_FUNCTION_173_0();
LABEL_14:
        sub_1C9064D7C();

        TypedValue.hash(into:)();
        v45 = sub_1C9064DBC();
        v46 = ~(-1 << *(v34 + 32));
        do
        {
          v47 = v45 & v46;
          if (((*(v34 + 56 + (((v45 & v46) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v46)) & 1) == 0)
          {

            goto LABEL_21;
          }

          static TypedValue.== infix(_:_:)();
          v49 = v48;

          v45 = v47 + 1;
        }

        while ((v49 & 1) == 0);

        if (v40)
        {
          continue;
        }

        break;
      }
    }

    v42 = v37;
    while (1)
    {
      v37 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v37 >= v41)
      {
        goto LABEL_21;
      }

      ++v42;
      if (*(v35 + 56 + 8 * v37))
      {
        OUTLINED_FUNCTION_10_6();
        v40 = v44 & v43;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    OUTLINED_FUNCTION_182();
  }
}

void sub_1C8D2A650(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_126();
    if (v21)
    {
      v4 = 0;
      v5 = v3 + 56;
      v6 = 1 << *(v3 + 32);
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      else
      {
        v7 = -1;
      }

      v8 = v7 & *(v3 + 56);
      v9 = (v6 + 63) >> 6;
      v23 = v3;
      if (v8)
      {
        while (2)
        {
          v10 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
LABEL_14:
          v14 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
          v16 = *v14;
          v15 = v14[1];
          sub_1C9064D7C();

          sub_1C9063FBC();
          v17 = sub_1C9064DBC();
          v18 = ~(-1 << *(a2 + 32));
          do
          {
            v19 = v17 & v18;
            if (((*(a2 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
            {

              return;
            }

            v20 = (*(a2 + 48) + 16 * v19);
            v21 = *v20 == v16 && v20[1] == v15;
            if (v21)
            {
              break;
            }

            v22 = sub_1C9064C2C();
            v17 = v19 + 1;
          }

          while ((v22 & 1) == 0);

          v3 = v23;
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v11 = v4;
      while (1)
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v4 >= v9)
        {
          return;
        }

        ++v11;
        if (*(v5 + 8 * v4))
        {
          OUTLINED_FUNCTION_10_6();
          v8 = v13 & v12;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_1C8D2A7E8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    OUTLINED_FUNCTION_126();
    if (v40)
    {
      v4 = 0;
      v348 = v3 + 56;
      v5 = 1 << *(v3 + 32);
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(v3 + 56);
      v8 = (v5 + 63) >> 6;
      v9 = v2 + 56;
      v397 = v2 + 56;
      v398 = v2;
      v356 = v8;
      v364 = v3;
LABEL_8:
      while (v7)
      {
        v10 = __clz(__rbit64(v7));
        v11 = (v7 - 1) & v7;
LABEL_15:
        v15 = *(v3 + 48) + 16 * (v10 | (v4 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        sub_1C9064D7C();
        v399 = v17 >> 5;
        v372 = v11;
        v380 = v4;
        switch(v17 >> 5)
        {
          case 1u:
            v18 = 3;
            goto LABEL_23;
          case 2u:
            v19 = 4;
            goto LABEL_20;
          case 3u:
            v19 = 5;
LABEL_20:
            MEMORY[0x1CCA82810](v19);
            v20 = OUTLINED_FUNCTION_334();
            sub_1C8D07154(v20, v21, v22, v23, v24, v25);
            sub_1C8D3977C(__src, v16);
            sub_1C9064D9C();
            goto LABEL_24;
          case 4u:
            v18 = 6;
            goto LABEL_23;
          case 5u:
            v18 = 7;
            goto LABEL_23;
          case 6u:
            MEMORY[0x1CCA82810]((v16 | v17 ^ 0xC0) != 0);
            goto LABEL_24;
          default:
            v18 = 2;
LABEL_23:
            MEMORY[0x1CCA82810](v18);
            v26 = OUTLINED_FUNCTION_334();
            sub_1C8D07154(v26, v27, v28, v29, v30, v31);
            sub_1C8D3977C(__src, v16);
LABEL_24:
            v32 = sub_1C9064DBC();
            v33 = -1 << *(v2 + 32);
            v34 = v32 & ~v33;
            v35 = v17 >> 5;
            if (((*(v9 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {
              goto LABEL_157;
            }

            v36 = ~v33;
            v37 = (v17 >> 5);
            v38 = v17 != 192 || v16 != 1;
            v39 = v17 != 192 || v16 != 0;
            v40 = v37 == 6;
            v400 = v17;
            v401 = v16 + 56;
            v41 = v37 != 6 || v38;
            v42 = !v40 || v39;
            v388 = __PAIR64__(v41, v42);
            v396 = v36;
            break;
        }

        while (2)
        {
          v43 = *(v2 + 48) + 16 * v34;
          v44 = *v43;
          v45 = *(v43 + 8);
          switch(v45 >> 5)
          {
            case 1u:
              if (v35 != 1)
              {
                goto LABEL_143;
              }

              if (v44 == v16)
              {
                goto LABEL_151;
              }

              OUTLINED_FUNCTION_22_6();
              if (!v40)
              {
                goto LABEL_143;
              }

              OUTLINED_FUNCTION_0_16(v180, v181, v182, v183, v184, v185);
              if (v35)
              {
                goto LABEL_97;
              }

              while (1)
              {
                v186 = v9;
                do
                {
                  v9 = v186 + 1;
                  if (__OFADD__(v186, 1))
                  {
                    goto LABEL_161;
                  }

                  if (v9 >= v2)
                  {
                    goto LABEL_149;
                  }

                  OUTLINED_FUNCTION_97_0();
                }

                while (!v187);
                OUTLINED_FUNCTION_5_11();
                while (1)
                {
                  OUTLINED_FUNCTION_8_8();

                  OUTLINED_FUNCTION_151_0(v188, v189, v190, v191, v192, v193, v194, v195, v332, v340, v348, v356, v364, v372, v380, v388);
                  sub_1C9064DBC();
                  OUTLINED_FUNCTION_21_6();
                  do
                  {
                    OUTLINED_FUNCTION_2_9();
                    if ((v196 & 1) == 0)
                    {
                      goto LABEL_147;
                    }

                    v197 = OUTLINED_FUNCTION_27_3();
                    OUTLINED_FUNCTION_152_0(v197, v198, v199, v200, v201, v202, v203, v204, v333, v341, v349, v357, v365, v373, v381, v389);
                    OUTLINED_FUNCTION_67_2(v205, v206, v207, v208, v209, v210, v211, v212, v337, v345, v353, v361, v369, v377, v385, v393, v396, v397, v398, v399, v400, v401, v402, v403, __src[0]);
                  }

                  while ((__src & 1) == 0);
                  OUTLINED_FUNCTION_144_0(0, v213, v214, v215, v216, v217, v218, v219, v333, v341, v349, v357, v365, v373, v381, v389, v396, v397, v398, v399, v400, v401, v402, v403);
                  OUTLINED_FUNCTION_23_5();
                  if (!__src)
                  {
                    break;
                  }

LABEL_97:
                  OUTLINED_FUNCTION_4_8();
                }
              }

            case 2u:
              if (v35 != 2)
              {
                goto LABEL_143;
              }

              if (v44 == v16)
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_22_6();
              if (!v40)
              {
                goto LABEL_143;
              }

              OUTLINED_FUNCTION_0_16(v126, v127, v128, v129, v130, v131);
              if (v35)
              {
                goto LABEL_76;
              }

LABEL_77:
              v132 = v9;
              while (2)
              {
                v9 = v132 + 1;
                if (__OFADD__(v132, 1))
                {
                  goto LABEL_164;
                }

                if (v9 < v2)
                {
                  OUTLINED_FUNCTION_97_0();
                  if (v133)
                  {
                    OUTLINED_FUNCTION_5_11();
                    while (1)
                    {
                      OUTLINED_FUNCTION_8_8();

                      OUTLINED_FUNCTION_151_0(v134, v135, v136, v137, v138, v139, v140, v141, v332, v340, v348, v356, v364, v372, v380, v388);
                      sub_1C9064DBC();
                      OUTLINED_FUNCTION_21_6();
                      do
                      {
                        OUTLINED_FUNCTION_2_9();
                        if ((v142 & 1) == 0)
                        {
                          goto LABEL_147;
                        }

                        v143 = OUTLINED_FUNCTION_27_3();
                        OUTLINED_FUNCTION_152_0(v143, v144, v145, v146, v147, v148, v149, v150, v333, v341, v349, v357, v365, v373, v381, v389);
                        OUTLINED_FUNCTION_67_2(v151, v152, v153, v154, v155, v156, v157, v158, v336, v344, v352, v360, v368, v376, v384, v392, v396, v397, v398, v399, v400, v401, v402, v403, __src[0]);
                      }

                      while ((__src & 1) == 0);
                      OUTLINED_FUNCTION_144_0(0, v159, v160, v161, v162, v163, v164, v165, v333, v341, v349, v357, v365, v373, v381, v389, v396, v397, v398, v399, v400, v401, v402, v403);
                      OUTLINED_FUNCTION_23_5();
                      if (!__src)
                      {
                        goto LABEL_77;
                      }

LABEL_76:
                      OUTLINED_FUNCTION_4_8();
                    }
                  }

                  continue;
                }

                goto LABEL_148;
              }

            case 3u:
              if (v35 != 3)
              {
                goto LABEL_143;
              }

              if (v44 == v16)
              {
LABEL_89:
                v166 = OUTLINED_FUNCTION_334();
                sub_1C8D07154(v166, v167, v168, v169, v170, v171);
                sub_1C8D07154(v16, v45, v172, v173, v174, v175);
              }

              else
              {
                OUTLINED_FUNCTION_22_6();
                if (!v40)
                {
LABEL_143:
                  v306 = OUTLINED_FUNCTION_334();
                  sub_1C8D07154(v306, v307, v308, v309, v310, v311);
                  v260 = OUTLINED_FUNCTION_114();
                  goto LABEL_144;
                }

                OUTLINED_FUNCTION_0_16(v266, v267, v268, v269, v270, v271);
                if (v35)
                {
LABEL_132:
                  OUTLINED_FUNCTION_4_8();
                  goto LABEL_138;
                }

LABEL_133:
                v272 = v9;
                while (1)
                {
                  v9 = v272 + 1;
                  if (__OFADD__(v272, 1))
                  {
                    goto LABEL_163;
                  }

                  if (v9 >= v2)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_97_0();
                  if (v273)
                  {
                    OUTLINED_FUNCTION_5_11();
LABEL_138:
                    OUTLINED_FUNCTION_8_8();

                    OUTLINED_FUNCTION_151_0(v274, v275, v276, v277, v278, v279, v280, v281, v332, v340, v348, v356, v364, v372, v380, v388);
                    sub_1C9064DBC();
                    OUTLINED_FUNCTION_21_6();
                    do
                    {
                      OUTLINED_FUNCTION_2_9();
                      if ((v282 & 1) == 0)
                      {
                        goto LABEL_147;
                      }

                      v283 = OUTLINED_FUNCTION_27_3();
                      OUTLINED_FUNCTION_152_0(v283, v284, v285, v286, v287, v288, v289, v290, v333, v341, v349, v357, v365, v373, v381, v389);
                      OUTLINED_FUNCTION_67_2(v291, v292, v293, v294, v295, v296, v297, v298, v339, v347, v355, v363, v371, v379, v387, v395, v396, v397, v398, v399, v400, v401, v402, v403, __src[0]);
                    }

                    while ((__src & 1) == 0);
                    OUTLINED_FUNCTION_144_0(0, v299, v300, v301, v302, v303, v304, v305, v333, v341, v349, v357, v365, v373, v381, v389, v396, v397, v398, v399, v400, v401, v402, v403);
                    OUTLINED_FUNCTION_23_5();
                    if (__src)
                    {
                      goto LABEL_132;
                    }

                    goto LABEL_133;
                  }
                }

LABEL_148:
                v324 = OUTLINED_FUNCTION_114();
                sub_1C8D07168(v324, v325);
                v9 = v397;
                v2 = v398;
                v35 = v399;
                v36 = v396;
              }

              v176 = OUTLINED_FUNCTION_114();
              sub_1C8D07168(v176, v177);
              v178 = OUTLINED_FUNCTION_334();
              sub_1C8D07168(v178, v179);
              if ((v45 ^ v17))
              {
                goto LABEL_145;
              }

LABEL_152:
              v331 = v16;
              v330 = v17;
              break;
            case 4u:
              if (v35 != 4)
              {
                goto LABEL_143;
              }

              if (v44 == v16)
              {
                goto LABEL_151;
              }

              OUTLINED_FUNCTION_22_6();
              if (!v40)
              {
                goto LABEL_143;
              }

              OUTLINED_FUNCTION_0_16(v86, v87, v88, v89, v90, v91);
              if (v35)
              {
                goto LABEL_60;
              }

LABEL_61:
              v92 = v9;
              while (2)
              {
                v9 = v92 + 1;
                if (__OFADD__(v92, 1))
                {
                  goto LABEL_160;
                }

                if (v9 < v2)
                {
                  OUTLINED_FUNCTION_97_0();
                  if (v93)
                  {
                    OUTLINED_FUNCTION_5_11();
                    while (1)
                    {
                      OUTLINED_FUNCTION_8_8();

                      OUTLINED_FUNCTION_151_0(v94, v95, v96, v97, v98, v99, v100, v101, v332, v340, v348, v356, v364, v372, v380, v388);
                      sub_1C9064DBC();
                      OUTLINED_FUNCTION_21_6();
                      do
                      {
                        OUTLINED_FUNCTION_2_9();
                        if ((v102 & 1) == 0)
                        {
                          goto LABEL_147;
                        }

                        v103 = OUTLINED_FUNCTION_27_3();
                        OUTLINED_FUNCTION_152_0(v103, v104, v105, v106, v107, v108, v109, v110, v333, v341, v349, v357, v365, v373, v381, v389);
                        OUTLINED_FUNCTION_67_2(v111, v112, v113, v114, v115, v116, v117, v118, v335, v343, v351, v359, v367, v375, v383, v391, v396, v397, v398, v399, v400, v401, v402, v403, __src[0]);
                      }

                      while ((__src & 1) == 0);
                      OUTLINED_FUNCTION_144_0(0, v119, v120, v121, v122, v123, v124, v125, v333, v341, v349, v357, v365, v373, v381, v389, v396, v397, v398, v399, v400, v401, v402, v403);
                      OUTLINED_FUNCTION_23_5();
                      if (!__src)
                      {
                        goto LABEL_61;
                      }

LABEL_60:
                      OUTLINED_FUNCTION_4_8();
                    }
                  }

                  continue;
                }

                goto LABEL_149;
              }

            case 5u:
              if (v35 != 5)
              {
                goto LABEL_143;
              }

              if (v44 == v16)
              {
                goto LABEL_151;
              }

              OUTLINED_FUNCTION_22_6();
              if (!v40)
              {
                goto LABEL_143;
              }

              OUTLINED_FUNCTION_0_16(v220, v221, v222, v223, v224, v225);
              if (v35)
              {
                goto LABEL_113;
              }

LABEL_114:
              v226 = v9;
              while (2)
              {
                v9 = v226 + 1;
                if (__OFADD__(v226, 1))
                {
                  goto LABEL_159;
                }

                if (v9 < v2)
                {
                  OUTLINED_FUNCTION_97_0();
                  if (v227)
                  {
                    OUTLINED_FUNCTION_5_11();
                    while (1)
                    {
                      OUTLINED_FUNCTION_8_8();

                      OUTLINED_FUNCTION_151_0(v228, v229, v230, v231, v232, v233, v234, v235, v332, v340, v348, v356, v364, v372, v380, v388);
                      sub_1C9064DBC();
                      OUTLINED_FUNCTION_21_6();
                      do
                      {
                        OUTLINED_FUNCTION_2_9();
                        if ((v236 & 1) == 0)
                        {
                          goto LABEL_147;
                        }

                        v237 = OUTLINED_FUNCTION_27_3();
                        OUTLINED_FUNCTION_152_0(v237, v238, v239, v240, v241, v242, v243, v244, v333, v341, v349, v357, v365, v373, v381, v389);
                        OUTLINED_FUNCTION_67_2(v245, v246, v247, v248, v249, v250, v251, v252, v338, v346, v354, v362, v370, v378, v386, v394, v396, v397, v398, v399, v400, v401, v402, v403, __src[0]);
                      }

                      while ((__src & 1) == 0);
                      OUTLINED_FUNCTION_144_0(0, v253, v254, v255, v256, v257, v258, v259, v333, v341, v349, v357, v365, v373, v381, v389, v396, v397, v398, v399, v400, v401, v402, v403);
                      OUTLINED_FUNCTION_23_5();
                      if (!__src)
                      {
                        goto LABEL_114;
                      }

LABEL_113:
                      OUTLINED_FUNCTION_4_8();
                    }
                  }

                  continue;
                }

                goto LABEL_149;
              }

            case 6u:
              if (v44 | v45 ^ 0xC0)
              {
                if ((v388 & 0x100000000) != 0)
                {
LABEL_128:
                  v260 = OUTLINED_FUNCTION_334();
LABEL_144:
                  sub_1C8D07154(v260, v261, v262, v263, v264, v265);
                  OUTLINED_FUNCTION_158_1();
                  v312 = OUTLINED_FUNCTION_334();
                  sub_1C8D07168(v312, v313);
                  goto LABEL_145;
                }

                OUTLINED_FUNCTION_158_1();
                v331 = 1;
              }

              else
              {
                if (v388)
                {
                  goto LABEL_128;
                }

                OUTLINED_FUNCTION_158_1();
                v331 = 0;
              }

              v330 = -64;
              break;
            default:
              if (v17 >= 0x20)
              {
                goto LABEL_143;
              }

              if (v44 == v16)
              {
LABEL_151:

                sub_1C8D07168(v16, v45);
                goto LABEL_152;
              }

              OUTLINED_FUNCTION_22_6();
              if (!v40)
              {
                goto LABEL_143;
              }

              OUTLINED_FUNCTION_0_16(v46, v47, v48, v49, v50, v51);
              if (v35)
              {
LABEL_44:
                OUTLINED_FUNCTION_4_8();
                goto LABEL_50;
              }

LABEL_45:
              v52 = v9;
              do
              {
                v9 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
                  goto LABEL_162;
                }

                if (v9 >= v2)
                {
LABEL_149:
                  v326 = OUTLINED_FUNCTION_334();
                  sub_1C8D07168(v326, v327);
                  v328 = OUTLINED_FUNCTION_114();
                  sub_1C8D07168(v328, v329);
                  OUTLINED_FUNCTION_158_1();
                  sub_1C8D07168(v16, v17);
                  v9 = v397;
                  v2 = v398;
                  v8 = v356;
                  v3 = v364;
                  v7 = v372;
                  v4 = v380;
                  goto LABEL_8;
                }

                OUTLINED_FUNCTION_97_0();
              }

              while (!v53);
              OUTLINED_FUNCTION_5_11();
LABEL_50:
              OUTLINED_FUNCTION_8_8();

              OUTLINED_FUNCTION_151_0(v54, v55, v56, v57, v58, v59, v60, v61, v332, v340, v348, v356, v364, v372, v380, v388);
              sub_1C9064DBC();
              OUTLINED_FUNCTION_21_6();
              while (2)
              {
                OUTLINED_FUNCTION_2_9();
                if (v62)
                {
                  v63 = OUTLINED_FUNCTION_27_3();
                  OUTLINED_FUNCTION_152_0(v63, v64, v65, v66, v67, v68, v69, v70, v333, v341, v349, v357, v365, v373, v381, v389);
                  OUTLINED_FUNCTION_67_2(v71, v72, v73, v74, v75, v76, v77, v78, v334, v342, v350, v358, v366, v374, v382, v390, v396, v397, v398, v399, v400, v401, v402, v403, __src[0]);
                  if ((__src & 1) == 0)
                  {
                    continue;
                  }

                  OUTLINED_FUNCTION_144_0(0, v79, v80, v81, v82, v83, v84, v85, v333, v341, v349, v357, v365, v373, v381, v389, v396, v397, v398, v399, v400, v401, v402, v403);
                  OUTLINED_FUNCTION_23_5();
                  if (__src)
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_45;
                }

                break;
              }

LABEL_147:
              v314 = OUTLINED_FUNCTION_114();
              sub_1C8D07168(v314, v315);
              LODWORD(v17) = v400;
              sub_1C8D07168(v16, v400);
              v316 = OUTLINED_FUNCTION_158_1();
              OUTLINED_FUNCTION_144_0(v316, v317, v318, v319, v320, v321, v322, v323, v333, v341, v349, v357, v365, v373, v381, v389, v396, v397, v398, v399, v400, v401, v402, v403);
              v9 = v397;
              v2 = v398;
              v35 = v399;
              v36 = v396;
LABEL_145:
              v34 = (v34 + 1) & v36;
              if (((*(v9 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
              {
LABEL_157:
                sub_1C8D07168(v16, v17);
                return;
              }

              continue;
          }

          break;
        }

        sub_1C8D07168(v331, v330);
        v8 = v356;
        v3 = v364;
        v7 = v372;
        v4 = v380;
      }

      v12 = v4;
      while (1)
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v4 >= v8)
        {
          return;
        }

        ++v12;
        if (*(v348 + 8 * v4))
        {
          OUTLINED_FUNCTION_10_6();
          v11 = v14 & v13;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
    }
  }
}

uint64_t sub_1C8D2AF4C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v16 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v17 = (v7 - 1) & v7;
LABEL_13:
      v19 = *(*(result + 48) + 8 * (v9 | (v3 << 6)));
      v18[9] = v19;
      sub_1C9064D7C();

      TypeInstance.hash(into:)();
      v12 = sub_1C9064DBC();
      v13 = ~(-1 << *(a2 + 32));
      do
      {
        v14 = v12 & v13;
        if (((*(a2 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
        {

          return 0;
        }

        v18[0] = *(*(a2 + 48) + 8 * v14);

        v15 = static TypeInstance.== infix(_:_:)(v18, &v19);

        v12 = v14 + 1;
      }

      while ((v15 & 1) == 0);

      result = v16;
      v7 = v17;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v17 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D2B0FC(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1C8D2B114(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1C8D2B12C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_223();
  v2 = sub_1C9063C4C();
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v35 - v10;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v12;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_163();
  }

  else
  {
    v15 = 0;
    v16 = *(v1 + 56);
    v36 = v1 + 56;
    v17 = 1 << *(v1 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v42 = v4 + 32;
    v44 = v0 + 56;
    v45 = v4 + 16;
    v21 = (v4 + 8);
    v37 = v20;
    v38 = &v35 - v12;
    v39 = v4;
    v40 = v1;
    if (v19)
    {
      while (2)
      {
        v22 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
LABEL_13:
        v26 = *(v1 + 48);
        v43 = *(v4 + 72);
        v27 = *(v4 + 16);
        v27(v14, v26 + v43 * (v22 | (v15 << 6)), v2, v13);
        (*(v4 + 32))(v46, v14, v2);
        OUTLINED_FUNCTION_48_1();
        sub_1C8D3EE90(&qword_1EDA66688);
        v28 = sub_1C9063E6C();
        v29 = v0;
        v30 = ~(-1 << *(v0 + 32));
        do
        {
          v31 = v28 & v30;
          if (((*(v44 + (((v28 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v30)) & 1) == 0)
          {
            (*v21)(v46, v2);
            goto LABEL_20;
          }

          (v27)(v8, *(v29 + 48) + v31 * v43, v2);
          OUTLINED_FUNCTION_48_1();
          sub_1C8D3EE90(&qword_1EDA62BA8);
          v32 = sub_1C9063EAC();
          v33 = *v21;
          v34 = OUTLINED_FUNCTION_278();
          (v33)(v34);
          v28 = v31 + 1;
        }

        while ((v32 & 1) == 0);
        v33(v46, v2);
        v0 = v29;
        v4 = v39;
        v1 = v40;
        v20 = v37;
        v14 = v38;
        v19 = v41;
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_20;
      }

      ++v23;
      if (*(v36 + 8 * v15))
      {
        OUTLINED_FUNCTION_10_6();
        v41 = v25 & v24;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C8D2B45C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8D2B520(char a1)
{
  if (a1)
  {
    return 0x56746C7561666564;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1C8D2B554(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_31_0(12383, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_31_0(0x747865746E6F63, 0xE700000000000000);
    OUTLINED_FUNCTION_420();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8D2B5F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 26223 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8D2B670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8C9F5F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2B6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8C9F5F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D2B6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA6D3C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2B724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA6D3C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D2B760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D37FEC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2B79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D37FEC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D2B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D37F98(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2B814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D37F98(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D2B858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2B45C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2B880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D38158(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2B8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D38158(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D2B8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA5614(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2B934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA5614(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D2B970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8C9F5A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2B9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8C9F5A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D2B9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2B5F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8D2BA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D38094(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2BA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D38094(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t TypeInstance.hashValue.getter()
{
  OUTLINED_FUNCTION_191_2();
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2BAE0(uint64_t a1)
{
  sub_1C9064D7C();
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

void TypeInstance.typeIdentifiers.getter()
{
  OUTLINED_FUNCTION_135_1();
  switch(v3)
  {
    case 1:
    case 2:
    case 5:
    case 6:
      OUTLINED_FUNCTION_169_0();
      TypeInstance.typeIdentifiers.getter();
      return;
    case 3:
      v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_186_0(v6, v7, v8, v9, v10, v11);
      v12 = 0;
      if (v1)
      {
        goto LABEL_8;
      }

      break;
    case 4:
      v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312B98, &unk_1C9068F30);
      goto LABEL_10;
    default:
      v4 = *(v2 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312B98, &unk_1C9068F30);
LABEL_10:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C906A950;
      *(inited + 32) = v4;

      sub_1C8D38200();
      return;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v0)
    {

      OUTLINED_FUNCTION_88_0();
      sub_1C8CAF750(v16, v17, v18, sub_1C8D8630C);
      return;
    }

    ++v12;
    if (*(v5 + 56 + 8 * v13))
    {
      while (1)
      {
LABEL_8:
        OUTLINED_FUNCTION_78_2();
        v14 = TypeInstance.typeIdentifiers.getter();
        sub_1C8D375B4(v14);
      }
    }
  }

  __break(1u);
}

uint64_t sub_1C8D2BCE0(uint64_t a1)
{
  result = MEMORY[0x1CCA81DD0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1C8D8634C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D2BDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1C8D3EF64(a1, a2, a3);
  result = MEMORY[0x1CCA81DD0](v4, &type metadata for RestrictionContext, v5);
  v7 = 0;
  v12 = result;
  v8 = *(a1 + 16);
  for (i = 32; ; i += 136)
  {
    if (v8 == v7)
    {

      return v12;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    memcpy(__dst, (a1 + i), sizeof(__dst));
    ++v7;
    sub_1C8D073F4(__dst, v11);
    sub_1C8D86494();
    memcpy(v11, v10, sizeof(v11));
    result = sub_1C8D073A0(v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D2BE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1C8D3EED4(a1, a2, a3);
  v10 = MEMORY[0x1CCA81DD0](v4, &type metadata for RuntimePlatform, v5);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 32;
    do
    {
      sub_1C8D86644(&v9, *(a1 + v7++));
      --v6;
    }

    while (v6);

    return v10;
  }

  else
  {
    OUTLINED_FUNCTION_45_2();
  }

  return v4;
}

void sub_1C8D2BF0C()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C8D3EDD4();
  v6 = OUTLINED_FUNCTION_125();
  MEMORY[0x1CCA81DD0](v6);
  v7 = *(v1 + 16);
  if (v7)
  {
    OUTLINED_FUNCTION_139();
    v9 = v1 + v8;
    v10 = *(v3 + 72);
    do
    {
      sub_1C8D3F068();
      OUTLINED_FUNCTION_100();
      sub_1C8D86720();
      v11 = OUTLINED_FUNCTION_287();
      sub_1C8D3F0C4(v11, v12, &qword_1C9072940);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D2C06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1C8D3ED80(a1, a2, a3);
  result = MEMORY[0x1CCA81DD0](v4, &type metadata for ContainerDefinition, v5);
  v7 = 0;
  v12 = result;
  v8 = *(a1 + 16);
  for (i = 32; ; i += 104)
  {
    if (v8 == v7)
    {

      return v12;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    memcpy(__dst, (a1 + i), 0x61uLL);
    ++v7;
    sub_1C8CC1340(__dst, v11);
    sub_1C8D86CF0();
    memcpy(v11, v10, 0x61uLL);
    result = sub_1C8CC15FC(v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D2C1FC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_OWORD *, uint64_t *), void (*a5)(uint64_t *, _OWORD *))
{
  v9 = *(a1 + 16);
  v10 = a2();
  result = MEMORY[0x1CCA81DD0](v9, a3, v10);
  v12 = 0;
  v18 = result;
  v13 = *(a1 + 16);
  for (i = 32; ; i += 40)
  {
    if (v13 == v12)
    {

      return v18;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    v15 = *(a1 + i + 16);
    v19[0] = *(a1 + i);
    v19[1] = v15;
    v20 = *(a1 + i + 32);
    ++v12;
    a4(v19, v16);
    a5(v16, v19);
    result = sub_1C8D3ED20(v16[0], v16[1], v16[2], v16[3], v17);
  }

  __break(1u);
  return result;
}

void sub_1C8D2C314(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void))
{
  v8[1] = MEMORY[0x1CCA81DD0](*(a1 + 16), a2, a3);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 32;
    do
    {
      a4(v8, *(a1 + v7));
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  else
  {
    OUTLINED_FUNCTION_45_2();
  }

  OUTLINED_FUNCTION_199_0();
}

void sub_1C8D2C3A0()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v2 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  v9 = *(v1 + 16);
  v10 = sub_1C8D3EE90(&qword_1EDA666F0);
  v19[1] = MEMORY[0x1CCA81DD0](v9, v2, v10);
  v11 = *(v1 + 16);
  if (v11)
  {
    v14 = *(v4 + 16);
    v12 = v4 + 16;
    v13 = v14;
    OUTLINED_FUNCTION_139();
    v19[0] = v1;
    v16 = v1 + v15;
    v17 = *(v12 + 56);
    do
    {
      v18 = OUTLINED_FUNCTION_287();
      v13(v18);
      OUTLINED_FUNCTION_112();
      sub_1C8D881DC();
      (*(v12 - 8))(v8, v2);
      v16 += v17;
      --v11;
    }

    while (v11);
  }

  else
  {
    OUTLINED_FUNCTION_45_2();
  }

  OUTLINED_FUNCTION_163();
}

uint64_t TypeInstance.asOptional(withDefaultValue:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  OUTLINED_FUNCTION_2();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = v6 | 0x4000000000000000;

  return sub_1C8D2B0FC(v4);
}

uint64_t TypeInstance.asCollection()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_50();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4 | 0x2000000000000000;
}

uint64_t TypeInstance.collectionIfMultiple(isCollection:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    OUTLINED_FUNCTION_50();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v5 | 0x2000000000000000;
  }

  else
  {
    v6 = v4;
  }

  *a2 = v6;
}

uint64_t TypeInstance.inUnion(with:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v10 = *v2;
  v11 = v4;
  static TypeInstance.== infix(_:_:)(&v11, &v10);
  if (v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v8 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DF8, &qword_1C906BB80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C906BAE0;
    *(inited + 32) = v5;
    *(inited + 40) = v4;

    result = sub_1C8D39264(inited);
    *(v8 + 16) = result;
    v5 = v8 | 0x6000000000000000;
  }

  *a2 = v5;
  return result;
}

void TypeInstance.restrictionContexts.getter()
{
  OUTLINED_FUNCTION_135_1();
  switch(v3)
  {
    case 1:
    case 2:
    case 6:
      OUTLINED_FUNCTION_169_0();
      TypeInstance.restrictionContexts.getter();
      goto LABEL_3;
    case 3:
      v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_186_0(v5, v6, v7, v8, v9, v10);
      v11 = 0;
      if (v1)
      {
        goto LABEL_9;
      }

      break;
    case 4:
    case 5:

      goto LABEL_11;
    default:
LABEL_3:
      OUTLINED_FUNCTION_199_0();
      return;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v0)
    {
      break;
    }

    ++v11;
    if (*(v4 + 56 + 8 * v12))
    {
      while (1)
      {
LABEL_9:
        OUTLINED_FUNCTION_78_2();
        v13 = TypeInstance.restrictionContexts.getter();
        sub_1C8D378D8(v13);
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_199_0();

  sub_1C8D2BDA0(v14, v15, v16);
}

void static RestrictionContext.ValueSetDefinition.Inner.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v8 = *(v0 + 16);
  v126 = *v0;
  v127 = v8;
  *v128 = *(v0 + 32);
  v9 = *v128;
  v10 = v1[1];
  v129 = *v1;
  v130 = v10;
  v12 = *v1;
  v11 = v1[1];
  *v131 = v1[2];
  *&v131[9] = *(v1 + 41);
  *&v128[9] = *(v0 + 41);
  v132[0] = v126;
  v132[1] = v8;
  v133[0] = v9;
  *(v133 + 9) = *&v128[9];
  *(v134 + 9) = *(v1 + 41);
  v13 = v1[2];
  v133[3] = v11;
  v134[0] = v13;
  v133[2] = v12;
  v14 = v8;
  v15 = *v128;
  v16 = *&v128[9] >> 56;
  switch(v128[24])
  {
    case 1:
      if (v131[24] != 1)
      {
        goto LABEL_45;
      }

      v39 = v129;
      HIDWORD(v95) = v131[0];
      LOBYTE(v117) = v128[0];
      LOBYTE(v112) = v131[0];
      v40 = OUTLINED_FUNCTION_195_0(v0, v1, v2, v3, v4, v5, v6, v7, *&v131[16], *&v131[8], *(&v129 + 1), v130, v95, *(&v130 + 1), v129, *(&v129 + 1), v130, *(&v130 + 1), v112, v126, *(&v126 + 1), v8, *(&v8 + 1), v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, *(&v126 + 1), v127, *(&v127 + 1), *v128, *&v128[8], *&v128[16], *&v128[24]);
      OUTLINED_FUNCTION_194_0(v40, v41, v42, v43, v44, v45, v46, v47, v73, v79, v85, v91, v97, v104, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
      v48 = OUTLINED_FUNCTION_100();
      sub_1C8D06F98(v48, v49, v14, *(&v14 + 1), v15, v50);
      sub_1C8D06F98(v129, *(&v129 + 1), v130, v105, v101, v51);
      v98 = static ContentItemClassDescriptor.Inner.== infix(_:_:)(&v113, &v108);
      sub_1C8D06FF4(v39, v86, v92, v105, v101);
      v52 = OUTLINED_FUNCTION_100();
      sub_1C8D06FF4(v52, v53, v14, *(&v14 + 1), v15);
      if ((v98 & 1) != 0 && (*(&v15 + 1) != v80 || v16 != v74))
      {
        sub_1C9064C2C();
      }

      goto LABEL_48;
    case 2:
      if (v131[24] != 2)
      {
        goto LABEL_45;
      }

      v3 = *(&v129 + 1);
      v2 = v129;
      if (v126 == v129 && *(&v126 + 1) == *(&v129 + 1))
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_100();
      goto LABEL_37;
    case 3:
      if (v131[24] != 3)
      {
        goto LABEL_45;
      }

      v3 = *(&v129 + 1);
      v2 = v129;
      if (v126 != v129 || *(&v126 + 1) != *(&v129 + 1))
      {
        OUTLINED_FUNCTION_100();
        v0 = sub_1C9064C2C();
        if ((v0 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      if (v14 != v130 || *(&v14 + 1) != *(&v130 + 1))
      {
        OUTLINED_FUNCTION_95_0();
        v0 = sub_1C9064C2C();
        if ((v0 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      if (*v128 == *v131 && *&v128[8] == *&v131[8])
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_125();
      goto LABEL_37;
    case 4:
      if (v131[24] == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_45;
    default:
      if (v131[24])
      {
        goto LABEL_45;
      }

LABEL_5:
      v3 = *(&v129 + 1);
      v2 = v129;
      v17 = v126 == v129 && *(&v126 + 1) == *(&v129 + 1);
      if (v17 || (OUTLINED_FUNCTION_100(), v0 = sub_1C9064C2C(), (v0 & 1) != 0))
      {
        if (v14 == v130 && *(&v14 + 1) == *(&v130 + 1))
        {
LABEL_47:
          v63 = OUTLINED_FUNCTION_195_0(v0, v1, v2, v3, v4, v5, v6, v7, v71, v77, v83, v89, v95, v102, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, *(&v126 + 1), v127, *(&v127 + 1), *v128, *&v128[8], *&v128[16], *&v128[24]);
          OUTLINED_FUNCTION_194_0(v63, v64, v65, v66, v67, v68, v69, v70, v76, v82, v88, v94, v100, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
        }

        else
        {
          OUTLINED_FUNCTION_95_0();
LABEL_37:
          v23 = sub_1C9064C2C();
          v31 = OUTLINED_FUNCTION_195_0(v23, v24, v25, v26, v27, v28, v29, v30, v71, v77, v83, v89, v95, v102, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, *(&v126 + 1), v127, *(&v127 + 1), *v128, *&v128[8], *&v128[16], *&v128[24]);
          OUTLINED_FUNCTION_194_0(v31, v32, v33, v34, v35, v36, v37, v38, v72, v78, v84, v90, v96, v103, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
        }
      }

      else
      {
LABEL_45:
        v55 = OUTLINED_FUNCTION_195_0(v0, v1, v2, v3, v4, v5, v6, v7, v71, v77, v83, v89, v95, v102, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, *(&v126 + 1), v127, *(&v127 + 1), *v128, *&v128[8], *&v128[16], *&v128[24]);
        OUTLINED_FUNCTION_194_0(v55, v56, v57, v58, v59, v60, v61, v62, v75, v81, v87, v93, v99, v106, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
      }

LABEL_48:
      sub_1C8D3F0C4(v132, &qword_1EC313540, &qword_1C906BB88);
      OUTLINED_FUNCTION_163();
      return;
  }
}

void static ContentItemClassDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_184_0();
  a31 = v32;
  a32 = v33;
  v35 = *(v34 + 8);
  v36 = *(v34 + 16);
  v37 = *(v34 + 24);
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = *(v38 + 16);
  v42 = *(v38 + 24);
  v43 = *(v34 + 32);
  v44 = *(v38 + 32);
  a16 = *v34;
  a17 = v35;
  a18 = v36;
  a19 = v37;
  a20 = v43;
  a11 = v39;
  a12 = v40;
  a13 = v41;
  a14 = v42;
  LOBYTE(a15) = v44;
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_368();
  sub_1C8D06F98(v45, v46, v47, v48, v43, v49);
  v50 = OUTLINED_FUNCTION_133_1();
  sub_1C8D06F98(v50, v51, v52, v53, v54, v55);
  static ContentItemClassDescriptor.Inner.== infix(_:_:)(&a16, &a11);
  v56 = OUTLINED_FUNCTION_133_1();
  sub_1C8D06FF4(v56, v57, v58, v59, v60);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_368();
  sub_1C8D06FF4(v61, v62, v63, v64, v43);
  OUTLINED_FUNCTION_182();
}

uint64_t sub_1C8D2CBC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001C90C9B80 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001DLL && 0x80000001C90C9BA0 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726575516B6E696CLL && a2 == 0xE900000000000079;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001C90C9BC0 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001BLL && 0x80000001C90C9BE0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C8D2CD6C(char a1)
{
  result = 0x726575516B6E696CLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1C8D2CE2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90C9C40 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79747265706F7270 && a2 == 0xEC000000656D614ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8D2CF00(char a1)
{
  if (a1)
  {
    return 0x79747265706F7270;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C8D2CF44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564496C6F6F74 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEC00000079654B72)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8D2D018(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0x6E6564496C6F6F74;
  }
}

uint64_t sub_1C8D2D064(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C90C9C00 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEC00000079654B72)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8D2D138(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1C8D2D17C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6564497972657571 && a2 == 0xEF7265696669746ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8D2D220(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90C9C20 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEC00000079654B72;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6564497972657571 && a2 == 0xEF7265696669746ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8D2D344(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6574656D61726170;
  }

  return 0x6564497972657571;
}

uint64_t sub_1C8D2D3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2CBC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2D3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D39ECC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2D420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D39ECC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D2D464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2CE2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2D48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3A01C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2D4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3A01C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D2D50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2CF44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2D534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3A0C4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2D570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3A0C4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D2D5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2D064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2D5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D39F20(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2D618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D39F20(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D2D658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2D17C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8D2D684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D39FC8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2D6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D39FC8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D2D704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2D220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2D72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D39F74(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2D768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D39F74(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void RestrictionContext.ValueSetDefinition.Inner.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v70 = v1;
  v4 = v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313548, &qword_1C906BB90);
  OUTLINED_FUNCTION_11();
  v62 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v60 = v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313550, &qword_1C906BB98);
  OUTLINED_FUNCTION_11();
  v61 = v8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v59 = v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313558, &qword_1C906BBA0);
  OUTLINED_FUNCTION_11();
  v55[4] = v11;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v55[3] = v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313560, &qword_1C906BBA8);
  OUTLINED_FUNCTION_11();
  v56 = v14;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313568, &qword_1C906BBB0);
  OUTLINED_FUNCTION_11();
  v55[2] = v16;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313570, &qword_1C906BBB8);
  OUTLINED_FUNCTION_11();
  v71 = v18;
  v72 = v19;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v55 - v21;
  v23 = v0[1];
  v68 = *v0;
  v69 = v23;
  v24 = v0[3];
  v66 = v0[2];
  v67 = v24;
  v25 = v0[5];
  v65 = v0[4];
  v55[1] = v25;
  v55[0] = v0[6];
  v26 = *(v0 + 56);
  v27 = *(v4 + 24);
  v28 = OUTLINED_FUNCTION_148();
  v30 = OUTLINED_FUNCTION_217(v28, v29);
  sub_1C8D39ECC(v30, v31, v32);
  v33 = sub_1C9064E1C();
  switch(v26)
  {
    case 1:
      LOBYTE(v73) = 1;
      sub_1C8D3A01C(v33, v34, v35);
      OUTLINED_FUNCTION_41_4();
      v50 = sub_1C9064ACC();
      v73 = v68;
      v74 = v69;
      v75 = v66;
      v76 = v67;
      v77 = v65;
      sub_1C8D3A070(v50, v51, v52);
      v53 = v58;
      v54 = v70;
      sub_1C9064B8C();
      if (!v54)
      {
        LOBYTE(v73) = 1;
        sub_1C9064B2C();
      }

      (*(v56 + 8))(v2, v53);
      v40 = OUTLINED_FUNCTION_125_1();
      goto LABEL_14;
    case 2:
      OUTLINED_FUNCTION_171_2();
      sub_1C8D39FC8(v43, v44, v45);
      OUTLINED_FUNCTION_26_1();
      v41 = v22;
      sub_1C9064ACC();
      OUTLINED_FUNCTION_69_0();
      sub_1C9064B2C();
      goto LABEL_12;
    case 3:
      LOBYTE(v73) = 3;
      sub_1C8D39F74(v33, v34, v35);
      OUTLINED_FUNCTION_26_1();
      v41 = v22;
      sub_1C9064ACC();
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_69_0();
      v46 = v70;
      sub_1C9064B2C();
      if (!v46)
      {
        OUTLINED_FUNCTION_72_0();
        OUTLINED_FUNCTION_58_2();
        sub_1C9064B2C();
        OUTLINED_FUNCTION_171_2();
        OUTLINED_FUNCTION_58_2();
        sub_1C9064B2C();
      }

      goto LABEL_12;
    case 4:
      LOBYTE(v73) = 4;
      sub_1C8D39F20(v33, v34, v35);
      OUTLINED_FUNCTION_26_1();
      v41 = v22;
      sub_1C9064ACC();
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_69_0();
      v42 = v70;
      sub_1C9064B2C();
      if (!v42)
      {
        OUTLINED_FUNCTION_72_0();
        OUTLINED_FUNCTION_58_2();
        sub_1C9064B2C();
      }

LABEL_12:
      v47 = OUTLINED_FUNCTION_36_3();
      v48(v47);
      v39 = *(v72 + 8);
      v40 = v41;
      break;
    default:
      LOBYTE(v73) = 0;
      sub_1C8D3A0C4(v33, v34, v35);
      OUTLINED_FUNCTION_26_1();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_117_0();
      v36 = v70;
      sub_1C9064B2C();
      if (!v36)
      {
        OUTLINED_FUNCTION_72_0();
        OUTLINED_FUNCTION_58_2();
        sub_1C9064B2C();
      }

      v37 = OUTLINED_FUNCTION_125_1();
      v38(v37);
      v39 = *(v72 + 8);
      v40 = v22;
      break;
  }

  v49 = v27;
LABEL_14:
  v39(v40, v49);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t RestrictionContext.ValueSetDefinition.Inner.hash(into:)()
{
  OUTLINED_FUNCTION_164();
  v1 = *(v0 + 32);
  switch(*(v0 + 56))
  {
    case 1:
      MEMORY[0x1CCA82810](1);
      switch(v1)
      {
        case 1:
          v4 = 1;
          goto LABEL_13;
        case 2:
          v4 = 2;
LABEL_13:
          MEMORY[0x1CCA82810](v4);
          OUTLINED_FUNCTION_33_4();
          sub_1C9063FBC();
          OUTLINED_FUNCTION_116_2();
          goto LABEL_14;
        case 3:
          v3 = 3;
          goto LABEL_11;
        default:
          v3 = 0;
LABEL_11:
          MEMORY[0x1CCA82810](v3);
          OUTLINED_FUNCTION_33_4();
LABEL_14:
          sub_1C9063FBC();
          break;
      }

      break;
    case 2:
      MEMORY[0x1CCA82810](2);
      OUTLINED_FUNCTION_33_4();
      break;
    case 3:
      MEMORY[0x1CCA82810](3);
      OUTLINED_FUNCTION_33_4();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_116_2();
      sub_1C9063FBC();
      break;
    case 4:
      v2 = 4;
      goto LABEL_4;
    default:
      v2 = 0;
LABEL_4:
      MEMORY[0x1CCA82810](v2);
      OUTLINED_FUNCTION_33_4();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_116_2();
      break;
  }

  OUTLINED_FUNCTION_163();

  return sub_1C9063FBC();
}

uint64_t RestrictionContext.ValueSetDefinition.Inner.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  RestrictionContext.ValueSetDefinition.Inner.hash(into:)();
  return sub_1C9064DBC();
}

void RestrictionContext.ValueSetDefinition.Inner.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  v27 = v26;
  v141 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313580, &qword_1C906BBC0);
  OUTLINED_FUNCTION_11();
  v143 = v29;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313588, &qword_1C906BBC8);
  OUTLINED_FUNCTION_11();
  v146 = v31;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_97();
  v149 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313590, &qword_1C906BBD0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313598, &qword_1C906BBD8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_86();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135A0, &qword_1C906BBE0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_110();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135A8, &qword_1C906BBE8);
  OUTLINED_FUNCTION_11();
  v40 = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_142();
  v150 = v27;
  v42 = OUTLINED_FUNCTION_217(v27, v27[3]);
  sub_1C8D39ECC(v42, v43, v44);
  sub_1C9064DEC();
  if (v24)
  {
    goto LABEL_9;
  }

  v140 = v36;
  v151 = v40;
  v45 = sub_1C9064A9C();
  v46 = sub_1C8CB8914(v45, 0);
  if (v48 == v47 >> 1)
  {
LABEL_8:
    v68 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v68, MEMORY[0x1E69E6B28]);
    v70 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v70 = &type metadata for RestrictionContext.ValueSetDefinition.Inner;
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_10_0();
    (*(v71 + 104))(v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    v72 = OUTLINED_FUNCTION_57_0();
    v73(v72, v38);
LABEL_9:
    v25 = v150;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_198();
    return;
  }

  OUTLINED_FUNCTION_119_0();
  v139 = v38;
  if (v53 < (v49 >> 1))
  {
    v138 = *(v52 + v50);
    v54 = sub_1C8CB891C(v50 + 1, v49 >> 1, v46, v52, v50, v51);
    v56 = v55;
    v58 = v57;
    v59 = swift_unknownObjectRelease();
    LOBYTE(v46) = v54;
    if (v56 == v58 >> 1)
    {
      v62 = v151;
      switch(v138)
      {
        case 1:
          OUTLINED_FUNCTION_86_0();
          sub_1C8D3A01C(v91, v92, v93);
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_159_1(v94, v95, v96, v97);
          OUTLINED_FUNCTION_174_0();
          sub_1C8D3A118(v98, v99, v100);
          sub_1C9064A6C();
          v137 = v152[0];
          v147 = v152[2];
          v148 = v152[3];
          LOBYTE(v46) = v153;
          v112 = sub_1C9064A0C();
          v62 = v127;
          v144 = v152[1];
          v128 = v112;
          swift_unknownObjectRelease();
          v129 = OUTLINED_FUNCTION_332();
          v130(v129);
          v131 = OUTLINED_FUNCTION_181_2();
          v132(v131);
          v123 = v128;
          v126 = 0;
          goto LABEL_15;
        case 2:
          OUTLINED_FUNCTION_171_2();
          sub_1C8D39FC8(v78, v79, v80);
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_159_1(v81, v82, v83, v84);
          OUTLINED_FUNCTION_174_0();
          v85 = sub_1C9064A0C();
          OUTLINED_FUNCTION_162_1(v85);
          v144 = v104;
          swift_unknownObjectRelease();
          v105 = OUTLINED_FUNCTION_68_0();
          v106(v105);
          v107 = OUTLINED_FUNCTION_20_4();
          v108(v107);
          v126 = 0;
          break;
        case 3:
          sub_1C8D39F74(v59, v60, v61);
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_159_1(v86, v87, v88, v89);
          OUTLINED_FUNCTION_174_0();
          LOBYTE(v152[0]) = 0;
          v90 = OUTLINED_FUNCTION_99_1(v152);
          OUTLINED_FUNCTION_162_1(v90);
          v144 = v109;
          OUTLINED_FUNCTION_86_0();
          v147 = OUTLINED_FUNCTION_99_1(v152);
          v148 = v117;
          OUTLINED_FUNCTION_171_2();
          v118 = OUTLINED_FUNCTION_99_1(v152);
          v145 = v133;
          v134 = v118;
          swift_unknownObjectRelease();
          (*(v146 + 8))(v149, v142);
          v135 = OUTLINED_FUNCTION_20_4();
          v136(v135);
          v123 = v145;
          v126 = v134 & 0xFFFFFFFFFFFFFF00;
          LOBYTE(v46) = v134;
LABEL_15:
          v124 = v147;
          v125 = v148;
          break;
        case 4:
          sub_1C8D39F20(v59, v60, v61);
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_159_1(v74, v75, v76, v77);
          LOBYTE(v152[0]) = 0;
          OUTLINED_FUNCTION_99_1(v152);
          OUTLINED_FUNCTION_174_0();
          v102 = v101;
          OUTLINED_FUNCTION_162_1(v103);
          OUTLINED_FUNCTION_86_0();
          LOBYTE(v46) = v143 + 8;
          v144 = v102;
          v62 = sub_1C9064A0C();
          v114 = v113;
          swift_unknownObjectRelease();
          v115 = OUTLINED_FUNCTION_332();
          v116(v115);
          (*(v151 + 8))(v23, v139);
          v124 = v62;
          v125 = v114;
          v126 = 0;
          break;
        default:
          sub_1C8D3A0C4(v59, v60, v61);
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_159_1(v63, v64, v65, v66);
          LOBYTE(v152[0]) = 0;
          v67 = sub_1C9064A0C();
          v111 = v110;
          OUTLINED_FUNCTION_162_1(v67);
          v62 = v23;
          OUTLINED_FUNCTION_86_0();
          v144 = v111;
          v46 = sub_1C9064A0C();
          v120 = v119;
          swift_unknownObjectRelease();
          v121 = OUTLINED_FUNCTION_170_1();
          v122(v121, v140);
          (*(v151 + 8))(v23, v139);
          v124 = v46;
          v125 = v120;
          v126 = 0;
          v25 = v150;
          break;
      }

      *v141 = v137;
      *(v141 + 8) = v144;
      *(v141 + 16) = v124;
      *(v141 + 24) = v125;
      *(v141 + 32) = v126 | v46;
      *(v141 + 40) = v123;
      *(v141 + 48) = v62;
      *(v141 + 56) = v138;
      goto LABEL_10;
    }

    v38 = v139;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C8D2EA94(uint64_t a1)
{
  sub_1C9064D7C();
  RestrictionContext.ValueSetDefinition.Inner.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t RestrictionContext.ValueSetDefinition.inner.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1C8D39E94(v7, &v6);
}

__n128 RestrictionContext.ValueSetDefinition.init(inner:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *v4 = a1[2];
  *&v4[9] = *(a1 + 41);
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *v4;
  *(a2 + 32) = *v4;
  *(a2 + 48) = *&v4[16];
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

__n128 RestrictionContext.ValueSetDefinition.init(inner:bundleIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(a4 + 41) = result;
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return result;
}

void static RestrictionContext.ValueSetDefinition.mock()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 56) = 2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
}

uint64_t RestrictionContext.ValueSetDefinition.id.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = *(v5 + 72);
  switch(*(v5 + 56))
  {
    case 1:
      sub_1C90648BC();
      MEMORY[0x1CCA81A90](46, 0xE100000000000000);
      v19 = OUTLINED_FUNCTION_145();
      MEMORY[0x1CCA81A90](v19);
      return 0;
    case 2:
      v20 = 0;
      if (v8)
      {
        v14 = *(v5 + 72);
      }

      else
      {
        v14 = 0xE900000000000045;
      }

      v15 = OUTLINED_FUNCTION_297();
      MEMORY[0x1CCA81A90](v15, v14);

      OUTLINED_FUNCTION_81();
      v9 = v7;
      v10 = v6;
      goto LABEL_12;
    case 3:
      v20 = *v5;

      OUTLINED_FUNCTION_81();
      v16 = OUTLINED_FUNCTION_278();
      MEMORY[0x1CCA81A90](v16);
      MEMORY[0x1CCA81A90](35, 0xE100000000000000);

      v17 = OUTLINED_FUNCTION_287();
      MEMORY[0x1CCA81A90](v17);

      OUTLINED_FUNCTION_81();
      v9 = OUTLINED_FUNCTION_148();
      goto LABEL_12;
    case 4:
      v20 = *v5;

      OUTLINED_FUNCTION_81();
      v11 = OUTLINED_FUNCTION_278();
      MEMORY[0x1CCA81A90](v11);
      MEMORY[0x1CCA81A90](35, 0xE100000000000000);
      if (v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = 0xE900000000000045;
      }

      v13 = OUTLINED_FUNCTION_297();
      MEMORY[0x1CCA81A90](v13, v12);

      return v20;
    default:
      v20 = *v5;

      OUTLINED_FUNCTION_81();
      v9 = OUTLINED_FUNCTION_278();
LABEL_12:
      MEMORY[0x1CCA81A90](v9, v10);
      return v20;
  }
}

uint64_t static RestrictionContext.ValueSetDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v4;
  v17[0] = *(a1 + 32);
  *(v17 + 9) = *(a1 + 41);
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v7;
  v19[0] = *(a2 + 32);
  *(v19 + 9) = *(a2 + 41);
  v9 = *(a2 + 64);
  v8 = *(a2 + 72);
  sub_1C8D39E94(v16, v22);
  sub_1C8D39E94(v18, v22);
  static RestrictionContext.ValueSetDefinition.Inner.== infix(_:_:)();
  v11 = v10;
  v12 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v12;
  v21[0] = *(a2 + 32);
  *(v21 + 9) = *(a2 + 41);
  sub_1C8D3A16C(v20);
  v13 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v13;
  v23[0] = *(a1 + 32);
  *(v23 + 9) = *(a1 + 41);
  sub_1C8D3A16C(v22);
  if (v11)
  {
    if (v5)
    {
      if (v8)
      {
        if (v6 == v9 && v5 == v8)
        {
          return 1;
        }

        OUTLINED_FUNCTION_95_0();
        if (sub_1C9064C2C())
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C8D2EF20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E6E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C90C96C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8D2EFEC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x72656E6E69;
  }
}

uint64_t sub_1C8D2F02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2EF20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2F054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3A19C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D2F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3A19C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void RestrictionContext.ValueSetDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135B0, &qword_1C906BBF0);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_72();
  v9 = v0[1];
  v18 = *v0;
  v19 = v9;
  v20[0] = v0[2];
  *(v20 + 9) = *(v0 + 41);
  OUTLINED_FUNCTION_217(v4, v4[3]);
  v10 = sub_1C8D39E94(&v18, v16);
  sub_1C8D3A19C(v10, v11, v12);
  v13 = sub_1C9064E1C();
  v16[0] = v18;
  v16[1] = v19;
  v17[0] = v20[0];
  *(v17 + 9) = *(v20 + 9);
  sub_1C8D3A1F0(v13, v14, v15);
  OUTLINED_FUNCTION_16_1();
  sub_1C9064B8C();
  OUTLINED_FUNCTION_76_0();
  if (!v1)
  {
    sub_1C9064ADC();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t RestrictionContext.ValueSetDefinition.hash(into:)()
{
  v1 = *(v0 + 72);
  RestrictionContext.ValueSetDefinition.Inner.hash(into:)();
  if (v1)
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_145();

    return sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_73_0();
    return sub_1C9064D9C();
  }
}

uint64_t RestrictionContext.ValueSetDefinition.hashValue.getter()
{
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_298();
  RestrictionContext.ValueSetDefinition.Inner.hash(into:)();
  sub_1C9064D9C();
  if (v1)
  {
    sub_1C9063FBC();
  }

  return sub_1C9064DBC();
}

void RestrictionContext.ValueSetDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v32 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135B8, &qword_1C906BBF8);
  OUTLINED_FUNCTION_11();
  v6 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8D3A19C(v10, v11, v12);
  v13 = sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v25 = 0;
    sub_1C8D3A244(v13, v14, v15);
    OUTLINED_FUNCTION_107_1();
    sub_1C9064A6C();
    v29 = v26;
    v30 = v27;
    v31[0] = v28[0];
    *(v31 + 9) = *(v28 + 9);
    v24 = 1;
    v16 = sub_1C90649AC();
    v17 = *(v6 + 8);
    v19 = v18;
    v17(v9, v4);
    v20[0] = v29;
    v20[1] = v30;
    v20[2] = v31[0];
    v20[3] = v31[1];
    *&v20[4] = v16;
    *(&v20[4] + 1) = v19;
    memcpy(v32, v20, 0x50uLL);
    sub_1C8D3A298(v20, v21);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v21[0] = v29;
    v21[1] = v30;
    v21[2] = v31[0];
    v21[3] = v31[1];
    v22 = v16;
    v23 = v19;
    sub_1C8D3A2D0(v21);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D2F5D4(uint64_t a1)
{
  sub_1C9064D7C();
  RestrictionContext.ValueSetDefinition.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2F610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = RestrictionContext.ValueSetDefinition.id.getter(a1, a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v8;
  return result;
}

id RestrictionContext.NumberInclusiveRangeDefinition.lowerBound.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *RestrictionContext.NumberInclusiveRangeDefinition.upperBound.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t RestrictionContext.NumberInclusiveRangeDefinition.init(lowerBound:upperBound:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C8D2F690(uint64_t a1, uint64_t a2)
{
  sub_1C906497C();
  OUTLINED_FUNCTION_45_2();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8D2F6E0(char a1)
{
  if (a1)
  {
    return 0x756F427265707075;
  }

  else
  {
    return 0x756F427265776F6CLL;
  }
}

uint64_t sub_1C8D2FBB0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_191_2();
  v4 = a2(v3);
  OUTLINED_FUNCTION_54_1(v4, v5, v6, v7, v8, v9, v10, v11, v13);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2FC5C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_191_2();
  v4 = a2(v3);
  OUTLINED_FUNCTION_54_1(v4, v5, v6, v7, v8, v9, v10, v11, v13);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2FCA4(uint64_t a1)
{
  OUTLINED_FUNCTION_298();
  sub_1C9064D9C();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2FCE4()
{
  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_190_1();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2FE28(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_298();
  a2(v5, a1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2FE7C()
{
  OUTLINED_FUNCTION_298();
  v0 = OUTLINED_FUNCTION_297();
  MEMORY[0x1CCA82810](v0);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2FEF0()
{
  OUTLINED_FUNCTION_166_1();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_121();
      break;
    case 2:
      OUTLINED_FUNCTION_165_0();
      break;
    case 3:
      OUTLINED_FUNCTION_66_2();
      break;
    default:
      break;
  }

  sub_1C9063FBC();
}

uint64_t sub_1C8D2FF9C(uint64_t a1, unsigned __int8 a2)
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D30020(uint64_t a1, char a2)
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D300D8(uint64_t a1, unsigned __int8 a2)
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D30160(uint64_t a1, char a2)
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D301C0(uint64_t a1, char a2)
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D3027C(uint64_t a1, unsigned __int8 a2)
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D302F4(uint64_t a1, char a2)
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D303AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  OUTLINED_FUNCTION_62_5(v3, v4);
}

uint64_t sub_1C8D303FC(uint64_t a1, char a2)
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D304BC(uint64_t a1, char a2)
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D305AC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_121();
      break;
    case 3:
      OUTLINED_FUNCTION_66_2();
      break;
    default:
      break;
  }

  sub_1C9063FBC();
}

uint64_t sub_1C8D3066C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_93_0();
  }

  sub_1C9063FBC();
}

uint64_t sub_1C8D306FC(uint64_t a1, char a2)
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D30788()
{
  v0 = OUTLINED_FUNCTION_130();
  v2 = v1(v0);
  OUTLINED_FUNCTION_62_5(v2, v3);
}

uint64_t sub_1C8D307F4(uint64_t a1)
{
  OUTLINED_FUNCTION_192_0(a1);
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D30874(uint64_t a1)
{
  OUTLINED_FUNCTION_192_0(a1);
  if (!v1)
  {
    OUTLINED_FUNCTION_93_0();
  }

  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D30970(uint64_t a1, char a2)
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](a2 & 1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D30D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C9064D7C();
  v5 = a3(v4);
  OUTLINED_FUNCTION_54_1(v5, v6, v7, v8, v9, v10, v11, v12, v14);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D30E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C9064D7C();
  v5 = a3(v4);
  OUTLINED_FUNCTION_54_1(v5, v6, v7, v8, v9, v10, v11, v12, v14);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D30ED0(uint64_t a1)
{
  OUTLINED_FUNCTION_192_0(a1);
  sub_1C9064D9C();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D30F0C(uint64_t a1)
{
  OUTLINED_FUNCTION_192_0(a1);
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D30F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C9064D7C();
  a3(v4);
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D30FFC(uint64_t a1, char a2)
{
  sub_1C9064D7C();
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D31088(uint64_t a1, char a2)
{
  sub_1C9064D7C();
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D31120(uint64_t a1, char a2)
{
  sub_1C9064D7C();
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D3119C(uint64_t a1, char a2)
{
  sub_1C9064D7C();
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D31250(uint64_t a1, uint64_t (*a2)(__n128))
{
  sub_1C9064D7C();
  v3 = OUTLINED_FUNCTION_130();
  a2(v3);
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D312B4(uint64_t a1)
{
  sub_1C9064D7C();
  v1 = OUTLINED_FUNCTION_297();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D3130C(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_1C9064D7C();
  a3(v6, a2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D31358(uint64_t a1)
{
  sub_1C9064D7C();
  OUTLINED_FUNCTION_190_1();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D31394(uint64_t a1, unsigned __int8 a2)
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](a2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D313D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C8D2F690(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C8D31408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D2F6E0(*v1);
  *a1 = result;
  a1[1] = 0xEA0000000000646ELL;
  return result;
}

uint64_t sub_1C8D31460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2F690(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D31494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3A300(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D314D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3A300(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void RestrictionContext.NumberInclusiveRangeDefinition.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135C0, &qword_1C906BC00);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  v6 = OUTLINED_FUNCTION_56_0();
  sub_1C8D3A300(v6, v7, v8);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_196_1(v9, v10, v11);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_42_0();
    sub_1C90649CC();
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
      v13 = sub_1C906459C();
    }

    OUTLINED_FUNCTION_42_0();
    sub_1C90649CC();
    if (v14)
    {
      v15 = OUTLINED_FUNCTION_203();
      v16(v15);
      v17 = 0;
    }

    else
    {
      sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
      v17 = sub_1C906459C();
      v18 = OUTLINED_FUNCTION_203();
      v19(v18);
    }

    *a2 = v13;
    a2[1] = v17;
    v20 = v17;
    v21 = v13;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_164_0();
}

void RestrictionContext.NumberInclusiveRangeDefinition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135D0, &qword_1C906BC08);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_38();
  v28 = *v23;
  v37 = *(v23 + 8);
  v29 = OUTLINED_FUNCTION_217(v26, v26[3]);
  sub_1C8D3A300(v29, v30, v31);
  v32 = v28;
  OUTLINED_FUNCTION_132_0();
  sub_1C9064E1C();
  if (v28)
  {
    [v32 doubleValue];
    sub_1C9064B4C();
    if (v24)
    {
      goto LABEL_6;
    }
  }

  if (!v37)
  {
    v35 = OUTLINED_FUNCTION_148();
    v36(v35);
    goto LABEL_8;
  }

  v32 = v37;
  [v32 doubleValue];
  sub_1C9064B4C();
LABEL_6:
  v33 = OUTLINED_FUNCTION_148();
  v34(v33);

LABEL_8:
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t static RestrictionContext.NumberInclusiveRangeDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
    v6 = v4;
    v7 = v2;
    v8 = sub_1C90645BC();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
      v9 = v5;
      v10 = v3;
      v11 = sub_1C90645BC();

      if (v11)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

void RestrictionContext.NumberInclusiveRangeDefinition.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  if (!*v1)
  {
    OUTLINED_FUNCTION_73_0();
    sub_1C9064D9C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    OUTLINED_FUNCTION_73_0();
    sub_1C9064D9C();
    return;
  }

  OUTLINED_FUNCTION_284();
  v4 = v3;
  OUTLINED_FUNCTION_45_2();
  sub_1C90645CC();

  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  OUTLINED_FUNCTION_284();
  v5 = v2;
  sub_1C90645CC();
}

uint64_t RestrictionContext.NumberInclusiveRangeDefinition.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_298();
  sub_1C9064D9C();
  if (v2)
  {
    v3 = v2;
    sub_1C90645CC();
  }

  sub_1C9064D9C();
  if (v1)
  {
    v4 = v1;
    sub_1C90645CC();
  }

  return sub_1C9064DBC();
}

uint64_t sub_1C8D31B24(uint64_t a1)
{
  v4 = *v1;
  sub_1C9064D7C();
  RestrictionContext.NumberInclusiveRangeDefinition.hash(into:)(v3);
  return sub_1C9064DBC();
}

ToolKit::RestrictionContext::PersonRepresentationDefinition_optional __swiftcall RestrictionContext.PersonRepresentationDefinition.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  sub_1C906497C();
  result.value = OUTLINED_FUNCTION_156_1();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t RestrictionContext.PersonRepresentationDefinition.rawValue.getter()
{
  result = 0x746361746E6F63;
  switch(*v0)
  {
    case 1:
      result = 0x656E6F6870;
      break;
    case 2:
      result = 0x6C69616D65;
      break;
    case 3:
      result = 0x50724F6C69616D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D31C50@<X0>(uint64_t *a1@<X8>)
{
  result = RestrictionContext.PersonRepresentationDefinition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ToolKit::RestrictionContext::DateRepresentationDefinition_optional __swiftcall RestrictionContext.DateRepresentationDefinition.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  sub_1C906497C();
  result.value = OUTLINED_FUNCTION_156_1();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t RestrictionContext.DateRepresentationDefinition.rawValue.getter()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x54646E4165746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_1C8D31E48@<X0>(uint64_t *a1@<X8>)
{
  result = RestrictionContext.DateRepresentationDefinition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id RestrictionContext.MeasurementRepresentationDefinition.unit.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t RestrictionContext.MeasurementRepresentationDefinition.init(unit:unitAdjustForLocale:supportsNegativeNumbers:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 9) = a3;
  return result;
}

unint64_t sub_1C8D31F80(uint64_t a1)
{
  sub_1C906497C();
  OUTLINED_FUNCTION_45_2();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C8D31FC8(char a1)
{
  if (!a1)
  {
    return 1953066613;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD000000000000019;
}

unint64_t sub_1C8D32040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C8D31F80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C8D32070@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D31FC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C8D320A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C8D31F80(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C8D320CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3A354(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D32108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3A354(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void RestrictionContext.MeasurementRepresentationDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135D8, &qword_1C906BC10);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_0();
  v7 = OUTLINED_FUNCTION_56_0();
  sub_1C8D3A354(v7, v8, v9);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_196_1(v10, v11, v12);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_42_0();
    v13 = sub_1C90649AC();
    v15 = v14;
    if (v14)
    {
      v16 = v13;
      sub_1C8CB78AC(0, &qword_1EDA6DAA8, 0x1E696AFD0);
      v17 = sub_1C8D32334(v16, v15);
    }

    else
    {
      v17 = 0;
    }

    OUTLINED_FUNCTION_42_0();
    v18 = sub_1C9064A1C();
    OUTLINED_FUNCTION_42_0();
    v19 = sub_1C9064A1C();
    v20 = OUTLINED_FUNCTION_59_2();
    v21(v20, v5);
    *v4 = v17;
    *(v4 + 8) = v18 & 1;
    *(v4 + 9) = v19 & 1;
    v22 = v17;
    v23 = OUTLINED_FUNCTION_45_2();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

id sub_1C8D32334(void *a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C9063EBC();
  OUTLINED_FUNCTION_156_1();
  v4 = [v3 initWithSymbol_];

  return v4;
}

void RestrictionContext.MeasurementRepresentationDefinition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_196();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135E8, &qword_1C906BC18);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_38();
  v29 = *v24;
  v30 = OUTLINED_FUNCTION_217(v27, v27[3]);
  sub_1C8D3A354(v30, v31, v32);
  OUTLINED_FUNCTION_132_0();
  sub_1C9064E1C();
  if (v29)
  {
    v33 = [v29 symbol];
    sub_1C9063EEC();

    sub_1C9064B2C();
    if (v25)
    {
      v34 = OUTLINED_FUNCTION_112();
      v35(v34);

      goto LABEL_8;
    }
  }

  sub_1C9064B3C();
  if (!v25)
  {
    sub_1C9064B3C();
  }

  v36 = OUTLINED_FUNCTION_112();
  v37(v36);
LABEL_8:
  OUTLINED_FUNCTION_198();
}

uint64_t static RestrictionContext.MeasurementRepresentationDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  if (!*a1)
  {
    result = 0;
    if (v5)
    {
      return result;
    }

LABEL_6:
    if (((v3 ^ v6) & 1) == 0)
    {
      return v4 ^ v7 ^ 1u;
    }

    return result;
  }

  if (!v5)
  {
    return 0;
  }

  sub_1C8CB78AC(0, &qword_1EDA6DAA8, 0x1E696AFD0);
  v8 = v5;
  v9 = v2;
  v10 = sub_1C90645BC();

  result = 0;
  if (v10)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t RestrictionContext.MeasurementRepresentationDefinition.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    OUTLINED_FUNCTION_284();
    v2 = v1;
    OUTLINED_FUNCTION_45_2();
    sub_1C90645CC();
  }

  else
  {
    OUTLINED_FUNCTION_73_0();
    sub_1C9064D9C();
  }

  sub_1C9064D9C();
  return sub_1C9064D9C();
}

uint64_t RestrictionContext.MeasurementRepresentationDefinition.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  sub_1C9064D9C();
  if (v1)
  {
    v2 = v1;
    sub_1C90645CC();
  }

  sub_1C9064D9C();
  sub_1C9064D9C();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D32734(uint64_t a1)
{
  sub_1C9064D7C();
  RestrictionContext.MeasurementRepresentationDefinition.hash(into:)();
  return sub_1C9064DBC();
}

ToolKit::RestrictionContext::KeyboardTraitsDefinition::AutocorrectionType_optional __swiftcall RestrictionContext.KeyboardTraitsDefinition.AutocorrectionType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  sub_1C906497C();
  result.value = OUTLINED_FUNCTION_156_1();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t RestrictionContext.KeyboardTraitsDefinition.AutocorrectionType.rawValue.getter()
{
  v1 = 28271;
  if (*v0 != 1)
  {
    v1 = 6710895;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1C8D3286C@<X0>(uint64_t *a1@<X8>)
{
  result = RestrictionContext.KeyboardTraitsDefinition.AutocorrectionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ToolKit::RestrictionContext::KeyboardTraitsDefinition::KeyboardType_optional __swiftcall RestrictionContext.KeyboardTraitsDefinition.KeyboardType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  sub_1C906497C();
  result.value = OUTLINED_FUNCTION_156_1();
  v4 = 12;
  if (v2 < 0xC)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t RestrictionContext.KeyboardTraitsDefinition.KeyboardType.rawValue.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 0x7061436969637361;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 5001813;
      break;
    case 4:
      result = 0x61507265626D756ELL;
      break;
    case 5:
      result = 0x646150656E6F6870;
      break;
    case 6:
      result = 0x6E6F6850656D616ELL;
      break;
    case 7:
      result = 0x6464416C69616D65;
      break;
    case 8:
      result = 0x506C616D69636564;
      break;
    case 9:
      result = 0x72657474697774;
      break;
    case 0xA:
      result = 0x6372616553626577;
      break;
    case 0xB:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C8D32B1C@<X0>(unint64_t *a1@<X8>)
{
  result = RestrictionContext.KeyboardTraitsDefinition.KeyboardType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ToolKit::RestrictionContext::KeyboardTraitsDefinition::CapitalizationType_optional __swiftcall RestrictionContext.KeyboardTraitsDefinition.CapitalizationType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  sub_1C906497C();
  result.value = OUTLINED_FUNCTION_156_1();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t RestrictionContext.KeyboardTraitsDefinition.CapitalizationType.rawValue.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      result = 0x7364726F77;
      break;
    case 2:
      result = 0x65636E65746E6573;
      break;
    case 3:
      result = 0x61726168436C6C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D32D44@<X0>(uint64_t *a1@<X8>)
{
  result = RestrictionContext.KeyboardTraitsDefinition.CapitalizationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ToolKit::RestrictionContext::KeyboardTraitsDefinition __swiftcall RestrictionContext.KeyboardTraitsDefinition.init(keyboardType:autocorrectionType:capitalizationType:multilineAllowed:smartQuotesEnabled:smartDashesEnabled:)(ToolKit::RestrictionContext::KeyboardTraitsDefinition::KeyboardType keyboardType, ToolKit::RestrictionContext::KeyboardTraitsDefinition::AutocorrectionType autocorrectionType, ToolKit::RestrictionContext::KeyboardTraitsDefinition::CapitalizationType capitalizationType, Swift::Bool multilineAllowed, Swift::Bool smartQuotesEnabled, Swift::Bool smartDashesEnabled)
{
  v7 = *autocorrectionType;
  v8 = *capitalizationType;
  *v6 = *keyboardType;
  v6[1] = v7;
  v6[2] = v8;
  v6[3] = multilineAllowed;
  v6[4] = smartQuotesEnabled;
  v6[5] = smartDashesEnabled;
  result.keyboardType = keyboardType;
  return result;
}

void static RestrictionContext.KeyboardTraitsDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0[1];
  v2 = v0[2];
  v4 = v3[1];
  v5 = v3[2];
  if (sub_1C8E5A61C(*v0, *v3) & 1) != 0 && (sub_1C8E5A634(v1, v4))
  {
    sub_1C8E5A6FC(v2, v5);
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D32F88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6472616F6279656BLL && a2 == 0xEC00000065707954;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C90C9C60 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C90C9C80 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C90C9CA0 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C90C9CC0 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000012 && 0x80000001C90C9CE0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9064C2C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C8D33180(char a1)
{
  result = 0x6472616F6279656BLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D33244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D32F88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D3326C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3A3A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D332A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3A3A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void RestrictionContext.KeyboardTraitsDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135F0, &qword_1C906BC20);
  OUTLINED_FUNCTION_11();
  v6 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  v8 = OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8D3A3A8(v8, v9, v10);
  v11 = sub_1C9064E1C();
  sub_1C8D3A3FC(v11, v12, v13);
  OUTLINED_FUNCTION_16_1();
  sub_1C9064B8C();
  if (!v0)
  {
    OUTLINED_FUNCTION_141_0();
    sub_1C8D3A450(v14, v15, v16);
    OUTLINED_FUNCTION_16_1();
    v17 = sub_1C9064B8C();
    sub_1C8D3A4A4(v17, v18, v19);
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B3C();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B3C();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B3C();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t RestrictionContext.KeyboardTraitsDefinition.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = RestrictionContext.KeyboardTraitsDefinition.KeyboardType.rawValue.getter();
  OUTLINED_FUNCTION_62_5(v4, v5);

  sub_1C9063FBC();

  sub_1C8D301C0(a1, v3);
  sub_1C9064D9C();
  sub_1C9064D9C();
  return sub_1C9064D9C();
}

uint64_t RestrictionContext.KeyboardTraitsDefinition.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6[37] = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  OUTLINED_FUNCTION_191_2();
  RestrictionContext.KeyboardTraitsDefinition.hash(into:)(v6);
  return sub_1C9064DBC();
}

void RestrictionContext.KeyboardTraitsDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16)
{
  OUTLINED_FUNCTION_196();
  v18 = v17;
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313618, &unk_1C906BC28);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15_0();
  v23 = OUTLINED_FUNCTION_56_0();
  sub_1C8D3A3A8(v23, v24, v25);
  OUTLINED_FUNCTION_103_0();
  v29 = OUTLINED_FUNCTION_196_1(v26, v27, v28);
  if (!v16)
  {
    sub_1C8D3A4F8(v29, v30, v31);
    OUTLINED_FUNCTION_41_4();
    OUTLINED_FUNCTION_58_2();
    sub_1C9064A6C();
    OUTLINED_FUNCTION_141_0();
    sub_1C8D3A54C(v32, v33, v34);
    OUTLINED_FUNCTION_41_4();
    OUTLINED_FUNCTION_58_2();
    v35 = sub_1C9064A6C();
    sub_1C8D3A5A0(v35, v36, v37);
    OUTLINED_FUNCTION_41_4();
    OUTLINED_FUNCTION_58_2();
    sub_1C9064A6C();
    OUTLINED_FUNCTION_58_2();
    v42 = sub_1C9064A1C();
    OUTLINED_FUNCTION_58_2();
    v38 = sub_1C9064A1C();
    OUTLINED_FUNCTION_58_2();
    v39 = sub_1C9064A1C();
    v40 = OUTLINED_FUNCTION_59_2();
    v41(v40, v21);
    *v20 = a16;
    v20[1] = a14;
    v20[2] = a12;
    v20[3] = v42 & 1;
    v20[4] = v38 & 1;
    v20[5] = v39 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D33894(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v7[37] = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  sub_1C9064D7C();
  RestrictionContext.KeyboardTraitsDefinition.hash(into:)(v7);
  return sub_1C9064DBC();
}

void RestrictionContext.id.getter()
{
  OUTLINED_FUNCTION_164();
  v34 = sub_1C9063C4C();
  OUTLINED_FUNCTION_11();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_354(v36);
  v6 = sub_1C8CA638C(v36);
  v7 = sub_1C8CA62B8(v36);
  switch(v6)
  {
    case 1:
      v13 = *v7;
      v14 = v7[1];
      v35[0] = 91;
      v35[1] = 0xE100000000000000;
      v15 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313638, &qword_1C906BC38);
      v16 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v16);

      MEMORY[0x1CCA81A90](8236, 0xE200000000000000);
      v35[10] = v14;
      v17 = v14;
      v18 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v18);

      MEMORY[0x1CCA81A90](93, 0xE100000000000000);
      break;
    case 2:
      v19 = *v7;
      v20 = *(*v7 + 2);
      v21 = MEMORY[0x1E69E7CC0];
      if (v20)
      {
        v35[0] = MEMORY[0x1E69E7CC0];
        sub_1C8CA6480();
        v21 = v35[0];
        v33 = *(v1 + 16);
        OUTLINED_FUNCTION_139();
        v23 = &v19[v22];
        v32 = *(v24 + 56);
        v25 = (v24 - 8);
        do
        {
          v33(v5, v23, v34);
          v26 = sub_1C9063C1C();
          v28 = v27;
          (*v25)(v5, v34);
          v35[0] = v21;
          v30 = *(v21 + 16);
          v29 = *(v21 + 24);
          if (v30 >= v29 >> 1)
          {
            OUTLINED_FUNCTION_176(v29);
            sub_1C8CA6480();
            v21 = v35[0];
          }

          *(v21 + 16) = v30 + 1;
          v31 = v21 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
          v23 += v32;
          --v20;
        }

        while (v20);
      }

      v35[0] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      sub_1C8D3A5F4();
      sub_1C9063E9C();

      break;
    case 3:
    case 4:
    case 5:
    case 6:
      break;
    default:
      v8 = memcpy(v35, v7, 0x50uLL);
      RestrictionContext.ValueSetDefinition.id.getter(v8, v9, v10, v11, v12);
      break;
  }

  OUTLINED_FUNCTION_276();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D33CBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8D33D94(char a1)
{
  if (a1)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x6974696E69666564;
  }
}

uint64_t sub_1C8D33DD4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313898, &qword_1C906F3D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  memcpy(__dst, v1, sizeof(__dst));
  v8 = *(v1 + 96);
  v28 = *(v1 + 80);
  v29 = v8;
  v30 = *(v1 + 112);
  v31 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1C8D3A298(__dst, v26);
  sub_1C8D3DC70(v9, v10, v11);
  sub_1C9064E1C();
  v12 = memcpy(v26, __dst, sizeof(v26));
  v33 = 0;
  sub_1C8D3DCC4(v12, v13, v14);
  sub_1C9064B8C();
  memcpy(v25, v26, sizeof(v25));
  sub_1C8D3A2D0(v25);
  if (!v2)
  {
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v32 = 1;
    v16 = sub_1C8D3A7FC(&v28, v19);
    sub_1C8D3DD18(v16, v17, v18);
    sub_1C9064B8C();
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v20 = v24;
    sub_1C8D3ABC4(v19);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C8D3402C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3138A0, &unk_1C906F3D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-v6 - 8];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D3DC70(v8, v9, v10);
  v11 = sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v29;
  v26 = 0;
  sub_1C8D3DD6C(v11, v12, v13);
  sub_1C9064A6C();
  v15 = memcpy(__dst, v27, 0x50uLL);
  v21[143] = 1;
  sub_1C8D3DDC0(v15, v16, v17);
  sub_1C9064A6C();
  (*(v5 + 8))(v7, v4);
  __dst[5] = v22;
  __dst[6] = v23;
  __dst[7] = v24;
  *&__dst[8] = v25;
  memcpy(v20, __dst, sizeof(v20));
  memcpy(v14, __dst, 0x88uLL);
  sub_1C8D3DE14(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v21, __dst, 0x88uLL);
  return sub_1C8D3A8AC(v21);
}

uint64_t sub_1C8D342BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D33CBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D342E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3DC70(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D34320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3DC70(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D34398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA6338(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D343D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA6338(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t static RestrictionContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_354(v254);
  memcpy(__dst, v0, sizeof(__dst));
  OUTLINED_FUNCTION_354(v256);
  memcpy(v257, v0, sizeof(v257));
  OUTLINED_FUNCTION_354(v258);
  switch(sub_1C8CA638C(v258))
  {
    case 1u:
      v70 = sub_1C8CA62B8(v258);
      v71 = *v70;
      v72 = v70[1];
      OUTLINED_FUNCTION_53_4(v70, v73, v74, v75, v76, v77, v78, v79, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
      v80 = sub_1C8CA638C(&v245);
      if (v80 == 1)
      {
        v88 = sub_1C8CA62B8(&v245);
        v96 = OUTLINED_FUNCTION_153_2(v88, v89, v90, v91, v92, v93, v94, v95, *v88, v88[1], *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), v71, v72, *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230);
        v104 = OUTLINED_FUNCTION_154_0(v96, v97, v98, v99, v100, v101, v102, v103, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
        v112 = OUTLINED_FUNCTION_153_2(v104, v105, v106, v107, v108, v109, v110, v111, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230);
        OUTLINED_FUNCTION_154_0(v112, v113, v114, v115, v116, v117, v118, v119, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
        v120 = static RestrictionContext.NumberInclusiveRangeDefinition.== infix(_:_:)(v221, v220);
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_101_1(v80, v81, v82, v83, v84, v85, v86, v87, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
      v195 = sub_1C8CA62B8(&v230);
      v196 = *v195;
      v197 = *(v195 + 8);
      v198 = v196;
      goto LABEL_21;
    case 2u:
      v28 = sub_1C8CA62B8(v258);
      OUTLINED_FUNCTION_53_4(v28, v29, v30, v31, v32, v33, v34, v35, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
      v36 = sub_1C8CA638C(&v245);
      if (v36 != 2)
      {
        OUTLINED_FUNCTION_101_1(v36, v37, v38, v39, v40, v41, v42, v43, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
        sub_1C8CA62B8(&v230);

        goto LABEL_21;
      }

      v44 = sub_1C8CA62B8(&v245);
      v52 = OUTLINED_FUNCTION_153_2(v44, v45, v46, v47, v48, v49, v50, v51, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230);
      OUTLINED_FUNCTION_154_0(v52, v53, v54, v55, v56, v57, v58, v59, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
      OUTLINED_FUNCTION_94();
      sub_1C8CEAF48();
LABEL_17:
      v175 = v27;
      sub_1C8D3F0C4(v256, &qword_1EC313698, &qword_1C906BC58);
      return v175 & 1;
    case 3u:
      v60 = sub_1C8CA62B8(v258);
      v61 = *v60;
      OUTLINED_FUNCTION_53_4(v60, v62, v63, v64, v65, v66, v67, v68, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
      if (sub_1C8CA638C(&v245) != 3)
      {
        goto LABEL_21;
      }

      v69 = sub_1C8CA62B8(&v245);
      v27 = sub_1C8E5A288(v61, *v69);
      goto LABEL_17;
    case 4u:
      v17 = sub_1C8CA62B8(v258);
      v18 = *v17;
      OUTLINED_FUNCTION_53_4(v17, v19, v20, v21, v22, v23, v24, v25, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
      if (sub_1C8CA638C(&v245) != 4)
      {
        goto LABEL_21;
      }

      v26 = sub_1C8CA62B8(&v245);
      v27 = sub_1C8E5A3C8(v18, *v26);
      goto LABEL_17;
    case 5u:
      v121 = sub_1C8CA62B8(v258);
      v122 = *v121;
      v123 = *(v121 + 8);
      v124 = *(v121 + 9);
      OUTLINED_FUNCTION_53_4(v121, v125, v126, v127, v128, v129, v130, v131, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
      v132 = sub_1C8CA638C(&v245);
      if (v132 != 5)
      {
        OUTLINED_FUNCTION_101_1(v132, v133, v134, v135, v136, v137, v138, v139, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
        v199 = *sub_1C8CA62B8(&v230);
        goto LABEL_21;
      }

      v140 = sub_1C8CA62B8(&v245);
      v141 = *v140;
      v142 = *(v140 + 8);
      v143 = *(v140 + 9);
      BYTE8(v221[0]) = v123;
      BYTE9(v221[0]) = v124;
      BYTE8(v220[0]) = v142;
      BYTE9(v220[0]) = v143;
      v151 = OUTLINED_FUNCTION_153_2(v140, v144, v145, v146, v147, v148, v149, v150, v141, *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), v122, *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230);
      v159 = OUTLINED_FUNCTION_154_0(v151, v152, v153, v154, v155, v156, v157, v158, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
      v167 = OUTLINED_FUNCTION_153_2(v159, v160, v161, v162, v163, v164, v165, v166, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230);
      OUTLINED_FUNCTION_154_0(v167, v168, v169, v170, v171, v172, v173, v174, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
      v120 = static RestrictionContext.MeasurementRepresentationDefinition.== infix(_:_:)(v221, v220);
LABEL_14:
      v175 = v120;
      sub_1C8D3F0C4(v256, &qword_1EC313698, &qword_1C906BC58);
      sub_1C8D073A0(__dst);
      sub_1C8D073A0(v254);
      return v175 & 1;
    case 6u:
      v176 = sub_1C8CA62B8(v258);
      v177 = *v176;
      v178 = v176[1];
      v179 = v176[2];
      v180 = v176[3];
      v181 = v176[4];
      v182 = v176[5];
      OUTLINED_FUNCTION_53_4(v176, v183, v184, v185, v186, v187, v188, v189, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
      if (sub_1C8CA638C(&v245) != 6)
      {
        goto LABEL_21;
      }

      sub_1C8CA62B8(&v245);
      OUTLINED_FUNCTION_128_1();
      LOBYTE(v230) = v177;
      BYTE1(v230) = v178;
      BYTE2(v230) = v179;
      BYTE3(v230) = v180;
      BYTE4(v230) = v181;
      BYTE5(v230) = v182;
      LOWORD(v221[0]) = v190;
      BYTE2(v221[0]) = v191;
      BYTE3(v221[0]) = v192;
      BYTE4(v221[0]) = v193;
      BYTE5(v221[0]) = v194;
      static RestrictionContext.KeyboardTraitsDefinition.== infix(_:_:)();
      goto LABEL_17;
    default:
      v1 = sub_1C8CA62B8(v258);
      OUTLINED_FUNCTION_53_4(v1, v2, v3, v4, v5, v6, v7, v8, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
      v9 = sub_1C8CA638C(&v245);
      if (v9)
      {
        OUTLINED_FUNCTION_101_1(v9, v10, v11, v12, v13, v14, v15, v16, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
        sub_1C8CA62B8(&v230);
        sub_1C8D3F068();
LABEL_21:
        sub_1C8D073F4(__dst, &v245);
        goto LABEL_22;
      }

      v201 = sub_1C8CA62B8(&v245);
      memcpy(v221, v1, sizeof(v221));
      v202 = memcpy(v220, v201, sizeof(v220));
      v210 = OUTLINED_FUNCTION_153_2(v202, v203, v204, v205, v206, v207, v208, v209, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230);
      OUTLINED_FUNCTION_154_0(v210, v211, v212, v213, v214, v215, v216, v217, *&v220[0], *(&v220[0] + 1), *&v220[1], *(&v220[1] + 1), *&v220[2], *(&v220[2] + 1), *&v220[3], *(&v220[3] + 1), *&v220[4], *(&v220[4] + 1), *&v221[0], *(&v221[0] + 1), *&v221[1], *(&v221[1] + 1), *&v221[2], *(&v221[2] + 1), *&v221[3], *(&v221[3] + 1), *&v221[4], *(&v221[4] + 1), v222, v223, v224, v225, v226, v227, v228, v229, v230, *(&v230 + 1), v231, *(&v231 + 1), v232, *(&v232 + 1), v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
      sub_1C8D3A7FC(v1 + 80, &v230);
      sub_1C8D3A7FC(v201 + 80, &v230);
      if ((static RestrictionContext.ValueSetDefinition.== infix(_:_:)(v221, v220) & 1) == 0)
      {
        sub_1C8D3ABC4(v201 + 80);
        sub_1C8D3ABC4(v1 + 80);
LABEL_22:
        sub_1C8D3F0C4(v256, &qword_1EC313698, &qword_1C906BC58);
        v175 = 0;
        return v175 & 1;
      }

      v218 = *(v1 + 96);
      v230 = *(v1 + 80);
      v231 = v218;
      v232 = *(v1 + 112);
      v233 = *(v1 + 128);
      v219 = *(v201 + 96);
      v221[0] = *(v201 + 80);
      v221[1] = v219;
      v221[2] = *(v201 + 112);
      *&v221[3] = *(v201 + 128);
      v175 = static QueryDefinition.PredicateTemplates.== infix(_:_:)(&v230, v221);
      sub_1C8D3F0C4(v256, &qword_1EC313698, &qword_1C906BC58);
      sub_1C8D3ABC4(v201 + 80);
      sub_1C8D3ABC4(v1 + 80);
      return v175 & 1;
  }
}

void RestrictionContext.hash(into:)(void *a1)
{
  OUTLINED_FUNCTION_354(v15);
  OUTLINED_FUNCTION_354(v16);
  v2 = sub_1C8CA638C(v16);
  v3 = sub_1C8CA62B8(v16);
  v4 = v3;
  switch(v2)
  {
    case 1:
      v10 = *v3;
      v9 = *(v3 + 8);
      MEMORY[0x1CCA82810](1);
      if (!v10)
      {
        OUTLINED_FUNCTION_73_0();
        sub_1C9064D9C();
        if (v9)
        {
          goto LABEL_9;
        }

LABEL_16:
        OUTLINED_FUNCTION_73_0();
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_284();
      v11 = v10;
      OUTLINED_FUNCTION_45_2();
      sub_1C90645CC();

      if (!v9)
      {
        goto LABEL_16;
      }

LABEL_9:
      OUTLINED_FUNCTION_284();
      v12 = v9;
      OUTLINED_FUNCTION_45_2();
      sub_1C90645CC();

      return;
    case 2:
      MEMORY[0x1CCA82810](2);
      v6 = OUTLINED_FUNCTION_145();
      sub_1C8D03724(v6, v7);
      return;
    case 3:
      v8 = *v3;
      MEMORY[0x1CCA82810](3);
      sub_1C8D30020(a1, v8);
      return;
    case 4:
      MEMORY[0x1CCA82810](4);
      sub_1C9063FBC();

      return;
    case 5:
      v13 = *v3;
      MEMORY[0x1CCA82810](5);
      if (v13)
      {
        OUTLINED_FUNCTION_284();
        v14 = v13;
        OUTLINED_FUNCTION_45_2();
        sub_1C90645CC();
        sub_1C8D073A0(v15);
      }

      else
      {
        OUTLINED_FUNCTION_73_0();
        sub_1C9064D9C();
      }

      sub_1C9064D9C();
LABEL_19:
      sub_1C9064D9C();
      return;
    case 6:
      MEMORY[0x1CCA82810](6);
      RestrictionContext.KeyboardTraitsDefinition.hash(into:)(a1);
      return;
    default:
      MEMORY[0x1CCA82810](0);
      v5 = *(v4 + 72);
      RestrictionContext.ValueSetDefinition.Inner.hash(into:)();
      if (v5)
      {
        OUTLINED_FUNCTION_284();
        OUTLINED_FUNCTION_104_2();
        sub_1C9063FBC();
      }

      else
      {
        OUTLINED_FUNCTION_73_0();
        sub_1C9064D9C();
      }

      QueryDefinition.PredicateTemplates.hash(into:)(a1);
      return;
  }
}

uint64_t RestrictionContext.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  RestrictionContext.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D34B70(uint64_t a1)
{
  sub_1C9064D7C();
  RestrictionContext.hash(into:)(v2);
  return sub_1C9064DBC();
}

void sub_1C8D34BAC(void *a1@<X8>)
{
  RestrictionContext.id.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t static ContentItemClassDescriptor.Inner.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  v59[0] = *a1;
  v59[1] = v3;
  v59[2] = v4;
  v59[3] = v5;
  v60 = v6;
  v61 = v8;
  v62 = v7;
  v63 = v10;
  v64 = v9;
  v65 = v11;
  switch(v6)
  {
    case 1:
      if (v11 != 1)
      {
        goto LABEL_37;
      }

      if (v2 != v8 || v3 != v7)
      {
        v33 = OUTLINED_FUNCTION_94();
        if ((OUTLINED_FUNCTION_100_0(v33, v34) & 1) == 0)
        {
          v6 = 1;
          v36 = OUTLINED_FUNCTION_6_7();
          v40 = 1;
          goto LABEL_38;
        }
      }

      if (v4 != v10 || v5 != v9)
      {
        OUTLINED_FUNCTION_249();
        OUTLINED_FUNCTION_52_1();
        v13 = sub_1C9064C2C();
        v6 = 1;
        v23 = OUTLINED_FUNCTION_6_7();
        v28 = 1;
        goto LABEL_36;
      }

      v6 = 1;
      OUTLINED_FUNCTION_368();
      v47 = 1;
      goto LABEL_43;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_37;
      }

      if (v2 != v8 || v3 != v7)
      {
        v20 = OUTLINED_FUNCTION_94();
        if ((OUTLINED_FUNCTION_100_0(v20, v21) & 1) == 0)
        {
          v6 = 2;
          v36 = OUTLINED_FUNCTION_6_7();
          v40 = 2;
          goto LABEL_38;
        }
      }

      if (v4 != v10 || v5 != v9)
      {
        OUTLINED_FUNCTION_249();
        OUTLINED_FUNCTION_52_1();
        v13 = sub_1C9064C2C();
        v6 = 2;
        v23 = OUTLINED_FUNCTION_6_7();
        v28 = 2;
        goto LABEL_36;
      }

      v6 = 2;
      OUTLINED_FUNCTION_368();
      v47 = 2;
      goto LABEL_43;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_37;
      }

      if (v2 != v8 || v3 != v7)
      {
        v30 = OUTLINED_FUNCTION_94();
        v13 = OUTLINED_FUNCTION_100_0(v30, v31);
        v6 = 3;
        v23 = OUTLINED_FUNCTION_6_7();
        v28 = 3;
LABEL_36:
        sub_1C8D06F98(v23, v24, v25, v26, v28, v27);
        goto LABEL_45;
      }

      v6 = 3;
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_52_1();
      v47 = 3;
LABEL_43:
      sub_1C8D06F98(v42, v43, v44, v45, v47, v46);
      goto LABEL_44;
    default:
      if (v11)
      {
LABEL_37:
        v36 = OUTLINED_FUNCTION_6_7();
LABEL_38:
        sub_1C8D06F98(v36, v37, v38, v39, v40, v41);
        v13 = 0;
      }

      else if (v2 == v8 && v3 == v7)
      {
        OUTLINED_FUNCTION_52_1();
        sub_1C8D06F98(v48, v49, v50, v51, 0, v52);
        v6 = 0;
LABEL_44:
        v13 = 1;
      }

      else
      {
        v13 = OUTLINED_FUNCTION_100_0(v2, v3);
        v14 = OUTLINED_FUNCTION_6_7();
        sub_1C8D06F98(v14, v15, v16, v17, 0, v18);
        v6 = 0;
      }

LABEL_45:
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_368();
      sub_1C8D06F98(v53, v54, v55, v56, v6, v57);
      sub_1C8D3F0C4(v59, &qword_1EC3136A0, &qword_1C906BC68);
      return v13 & 1;
  }
}

uint64_t sub_1C8D34E30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001C90C9D20 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001C90C9D40 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001C90C9D60 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001BLL && 0x80000001C90C9D80 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C8D34F8C(char a1)
{
  result = 0xD000000000000017;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D35008(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8D350A4()
{
  OUTLINED_FUNCTION_223();
  v3 = v1 == 0x696669746E656469 && v2 == 0xEA00000000007265;
  if (v3 || (OUTLINED_FUNCTION_31_0(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0xD000000000000010 && 0x80000001C90C96C0 == v0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_31_0(0xD000000000000010, 0x80000001C90C96C0);
    OUTLINED_FUNCTION_420();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8D35158(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1C9064C2C();
    OUTLINED_FUNCTION_420();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8D351C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D34E30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D351F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3AC18(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D3522C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3AC18(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D3526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D35008(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8D35298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3AC6C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D352D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3AC6C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D35310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3AD14(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D3534C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3AD14(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D35388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3ACC0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D353C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3ACC0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D35400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3AD68(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D3543C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3AD68(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ContentItemClassDescriptor.Inner.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_196();
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136A8, &qword_1C906BC70);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136B0, &qword_1C906BC78);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136B8, &qword_1C906BC80);
  OUTLINED_FUNCTION_11();
  v57 = v36;
  v58 = v35;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_73();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136C0, &qword_1C906BC88);
  OUTLINED_FUNCTION_11();
  v56 = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_142();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136C8, &qword_1C906BC90);
  OUTLINED_FUNCTION_11();
  v59 = v41;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_38();
  v43 = *(v28 + 32);
  v44 = OUTLINED_FUNCTION_217(v32, v32[3]);
  sub_1C8D3AC18(v44, v45, v46);
  OUTLINED_FUNCTION_132_0();
  v47 = sub_1C9064E1C();
  switch(v43)
  {
    case 1:
      sub_1C8D3AD14(v47, v48, v49);
      OUTLINED_FUNCTION_380();
      sub_1C9064ACC();
      sub_1C9064B2C();
      if (!v29)
      {
        sub_1C9064B2C();
      }

      (*(v57 + 8))(v30, v58);
      v50 = OUTLINED_FUNCTION_47_3();
      v52 = v59;
      break;
    case 2:
      sub_1C8D3ACC0(v47, v48, v49);
      v53 = v59;
      OUTLINED_FUNCTION_380();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_69_0();
      sub_1C9064B2C();
      if (!v29)
      {
        OUTLINED_FUNCTION_141_0();
        OUTLINED_FUNCTION_42_0();
        sub_1C9064B2C();
      }

      goto LABEL_7;
    case 3:
      sub_1C8D3AC6C(v47, v48, v49);
      v53 = v59;
      OUTLINED_FUNCTION_380();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_69_0();
      sub_1C9064B2C();
LABEL_7:
      v54 = OUTLINED_FUNCTION_36_3();
      v55(v54);
      v50 = OUTLINED_FUNCTION_47_3();
      v52 = v53;
      break;
    default:
      sub_1C8D3AD68(v47, v48, v49);
      OUTLINED_FUNCTION_380();
      sub_1C9064ACC();
      sub_1C9064B2C();
      (*(v56 + 8))(v27, v38);
      v50 = OUTLINED_FUNCTION_47_3();
      v52 = v59;
      break;
  }

  v51(v50, v52);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

void ContentItemClassDescriptor.Inner.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_196();
  v30 = v29;
  v97 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136E0, &qword_1C906BC98);
  OUTLINED_FUNCTION_11();
  v91 = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136E8, &qword_1C906BCA0);
  OUTLINED_FUNCTION_11();
  v93 = v34;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_97();
  v98 = v36;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136F0, &qword_1C906BCA8);
  OUTLINED_FUNCTION_11();
  v96 = v37;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_72();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136F8, &qword_1C906BCB0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_86();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313700, &qword_1C906BCB8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_38();
  v100 = v30;
  v43 = OUTLINED_FUNCTION_136();
  v45 = OUTLINED_FUNCTION_217(v43, v44);
  sub_1C8D3AC18(v45, v46, v47);
  OUTLINED_FUNCTION_132_0();
  sub_1C9064DEC();
  if (v27)
  {
    goto LABEL_9;
  }

  v48 = sub_1C9064A9C();
  v49 = sub_1C8CB8914(v48, 0);
  v51 = v41;
  if (v52 == v50 >> 1)
  {
LABEL_8:
    v69 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v69, MEMORY[0x1E69E6B28]);
    v71 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v71 = &type metadata for ContentItemClassDescriptor.Inner;
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_10_0();
    (*(v72 + 104))(v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    v73 = OUTLINED_FUNCTION_57_0();
    v74(v73, v51);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_10:
    OUTLINED_FUNCTION_198();
    return;
  }

  OUTLINED_FUNCTION_119_0();
  if (v57 < (v53 >> 1))
  {
    v89 = *(v56 + v54);
    sub_1C8CB891C(v54 + 1, v53 >> 1, v49, v56, v54, v55);
    v59 = v58;
    v61 = v60;
    v62 = swift_unknownObjectRelease();
    if (v59 == v61 >> 1)
    {
      switch(v89)
      {
        case 1:
          sub_1C8D3AD14(v62, v63, v64);
          OUTLINED_FUNCTION_107_1();
          sub_1C906498C();
          v90 = sub_1C9064A0C();
          v92 = v80;
          v99 = v28;
          v81 = sub_1C9064A0C();
          v83 = v86;
          swift_unknownObjectRelease();
          (*(v96 + 8))(v99, v94);
          v87 = OUTLINED_FUNCTION_38_5();
          v88(v87);
          v65 = v100;
          break;
        case 2:
          sub_1C8D3ACC0(v62, v63, v64);
          OUTLINED_FUNCTION_107_1();
          sub_1C906498C();
          v65 = v30;
          v90 = sub_1C9064A0C();
          v92 = v79;
          OUTLINED_FUNCTION_141_0();
          v81 = sub_1C9064A0C();
          v83 = v82;
          swift_unknownObjectRelease();
          (*(v93 + 8))(v98, v95);
          v84 = OUTLINED_FUNCTION_38_5();
          v85(v84);
          break;
        case 3:
          sub_1C8D3AC6C(v62, v63, v64);
          OUTLINED_FUNCTION_107_1();
          sub_1C906498C();
          v65 = v30;
          v66 = v91;
          v67 = sub_1C9064A0C();
          goto LABEL_14;
        default:
          sub_1C8D3AD68(v62, v63, v64);
          OUTLINED_FUNCTION_107_1();
          sub_1C906498C();
          v65 = v30;
          v66 = v39;
          v67 = sub_1C9064A0C();
LABEL_14:
          v90 = v67;
          v92 = v68;
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_170_1();
          v76(v75, v66);
          v77 = OUTLINED_FUNCTION_38_5();
          v78(v77);
          v81 = 0;
          v83 = 0;
          break;
      }

      *v97 = v90;
      *(v97 + 8) = v92;
      *(v97 + 16) = v81;
      *(v97 + 24) = v83;
      *(v97 + 32) = v89;
      __swift_destroy_boxed_opaque_existential_1(v65);
      goto LABEL_10;
    }

    v51 = v41;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C8D361B8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1C9064D7C();
  ContentItemClassDescriptor.hash(into:)(v5);
  return sub_1C9064DBC();
}

uint64_t ContentItemClassDescriptor.bundleIdentifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5 + 32) - 1 <= 1)
  {
  }

  return OUTLINED_FUNCTION_95_0();
}

uint64_t ContentItemClassDescriptor.inner.getter@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  v7 = *(v2 + 32);
  *(a2 + 32) = v7;
  return sub_1C8D06F98(v3, v4, v5, v6, v7, a1);
}

__n128 ContentItemClassDescriptor.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_1C8D36284(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72656E6E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8D36310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D36284(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8D3633C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3ADBC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D36378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D3ADBC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ContentItemClassDescriptor.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313708, &qword_1C906BCC0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_38();
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_217(v7, v8);
  v10 = sub_1C8D06F98(v2, v3, v4, v5, v6, v9);
  sub_1C8D3ADBC(v10, v11, v12);
  OUTLINED_FUNCTION_132_0();
  v13 = sub_1C9064E1C();
  sub_1C8D3AE10(v13, v14, v15);
  sub_1C9064B8C();
  sub_1C8D06FF4(v2, v3, v4, v5, v6);
  v16 = OUTLINED_FUNCTION_17_3();
  v17(v16);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D3650C()
{
  switch(*(v0 + 32))
  {
    case 1:
      v2 = 1;
      goto LABEL_7;
    case 2:
      v2 = 2;
LABEL_7:
      MEMORY[0x1CCA82810](v2);
      OUTLINED_FUNCTION_168_0();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_278();
      goto LABEL_8;
    case 3:
      v1 = 3;
      goto LABEL_5;
    default:
      v1 = 0;
LABEL_5:
      MEMORY[0x1CCA82810](v1);
      OUTLINED_FUNCTION_168_0();
LABEL_8:

      return sub_1C9063FBC();
  }
}

uint64_t _s7ToolKit26ContentItemClassDescriptorV5InnerO9hashValueSivg_0()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_298();
  switch(v1)
  {
    case 1:
      v3 = 1;
      goto LABEL_7;
    case 2:
      v3 = 2;
LABEL_7:
      MEMORY[0x1CCA82810](v3);
      OUTLINED_FUNCTION_168_0();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_104_2();
      goto LABEL_8;
    case 3:
      v2 = 3;
      goto LABEL_5;
    default:
      v2 = 0;
LABEL_5:
      MEMORY[0x1CCA82810](v2);
      OUTLINED_FUNCTION_168_0();
LABEL_8:
      sub_1C9063FBC();
      return sub_1C9064DBC();
  }
}

void ContentItemClassDescriptor.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313710, &qword_1C906BCC8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_0();
  v7 = OUTLINED_FUNCTION_56_0();
  sub_1C8D3ADBC(v7, v8, v9);
  OUTLINED_FUNCTION_103_0();
  v13 = OUTLINED_FUNCTION_196_1(v10, v11, v12);
  if (!v0)
  {
    sub_1C8D3AE64(v13, v14, v15);
    OUTLINED_FUNCTION_34();
    sub_1C9064A6C();
    v16 = OUTLINED_FUNCTION_59_2();
    v17(v16, v5);
    *v4 = v18;
    *(v4 + 16) = v19;
    *(v4 + 32) = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D367E0(uint64_t a1)
{
  sub_1C9064D7C();
  ContentItemClassDescriptor.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t TypeInstance.debugDescription.getter()
{
  OUTLINED_FUNCTION_135_1();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_134_0();
      v10[0] = 91;
      v10[1] = 0xE100000000000000;

      TypeInstance.debugDescription.getter();
      OUTLINED_FUNCTION_414();

      v4 = 93;
      goto LABEL_11;
    case 2:
      OUTLINED_FUNCTION_169_0();
      strcpy(v10, "Optional<");
      WORD1(v10[1]) = 0;
      HIDWORD(v10[1]) = -385875968;
      TypeInstance.debugDescription.getter();
      goto LABEL_5;
    case 3:
      v10[0] = 0x3C6E6F696E55;
      v10[1] = 0xE600000000000000;
      sub_1C8D2A280(*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      sub_1C8D3A5F4();
      sub_1C9063E9C();

      v3 = OUTLINED_FUNCTION_249();
      MEMORY[0x1CCA81A90](v3);
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_127_1();
      MEMORY[0x1CCA81A90](0x7463697274736552, 0xEB000000003C6465);
      sub_1C90648BC();
      OUTLINED_FUNCTION_149_0();
      MEMORY[0x1CCA81C60](v0, &type metadata for RestrictionContext);
LABEL_5:
      OUTLINED_FUNCTION_414();
LABEL_7:

      MEMORY[0x1CCA81A90](62, 0xE100000000000000);
      break;
    case 5:
      OUTLINED_FUNCTION_127_1();

      strcpy(v10, "Constrained<");
      BYTE5(v10[1]) = 0;
      HIWORD(v10[1]) = -5120;
      TypeInstance.typeIdentifiers.getter();
      sub_1C8D3AEB8(v5, v6, v7);
      sub_1C906433C();

      v8 = OUTLINED_FUNCTION_249();
      MEMORY[0x1CCA81A90](v8);

      OUTLINED_FUNCTION_149_0();
      MEMORY[0x1CCA81C60](v0, &type metadata for RestrictionContext);
      OUTLINED_FUNCTION_414();

      break;
    case 6:
      OUTLINED_FUNCTION_134_0();
      strcpy(v10, "Deferred<");
      WORD1(v10[1]) = 0;
      HIDWORD(v10[1]) = -385875968;

      TypeInstance.debugDescription.getter();
      OUTLINED_FUNCTION_414();

      v4 = 62;
LABEL_11:
      MEMORY[0x1CCA81A90](v4, 0xE100000000000000);

      break;
    default:
      v10[0] = 0;
      v10[1] = 0xE000000000000000;
      sub_1C90648BC();
      break;
  }

  return v10[0];
}

uint64_t RestrictionContext.debugDescription.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_1C8CA638C(__dst);
  v2 = sub_1C8CA62B8(__dst);
  v3 = v2;
  switch(v1)
  {
    case 1:
      v25 = *v2;
      v26 = *(v2 + 8);
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_163_0();
      *&v44[0] = v28;
      *(&v44[0] + 1) = v27;
      v29 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313638, &qword_1C906BC38);
      v30 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v30);

      v31 = OUTLINED_FUNCTION_122_0();
      MEMORY[0x1CCA81A90](v31);
      *&v46 = v26;
      v32 = v26;
      v33 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v33);

      v34 = 10589;
      v35 = 0xE200000000000000;
      goto LABEL_10;
    case 2:
      v20 = *v2;
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_163_0();
      *&v44[0] = v22 - 2;
      *(&v44[0] + 1) = v21;
      v23 = sub_1C9063C4C();
      v24 = MEMORY[0x1CCA81C30](v20, v23);
      MEMORY[0x1CCA81A90](v24);

      goto LABEL_9;
    case 3:
    case 4:
      v19 = *v2;
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();
      OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_150_0();
      LOBYTE(v46) = v19;
      goto LABEL_8;
    case 5:
      v36 = *v2;
      v37 = *(v2 + 8);
      v38 = *(v2 + 9);
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();
      OUTLINED_FUNCTION_177_0();
      MEMORY[0x1CCA81A90](0xD000000000000019, 0x80000001C90C99E0);
      *&v46 = v36;
      BYTE8(v46) = v37;
      BYTE9(v46) = v38;
      goto LABEL_8;
    case 6:
      v39 = *v2;
      v40 = *(v2 + 2);
      v41 = *(v2 + 3);
      v42 = *(v2 + 4);
      v43 = *(v2 + 5);
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();
      OUTLINED_FUNCTION_177_0();
      MEMORY[0x1CCA81A90](0x6570795474786574, 0xEE00286874695764);
      LOWORD(v46) = v39;
      BYTE2(v46) = v40;
      BYTE3(v46) = v41;
      BYTE4(v46) = v42;
      BYTE5(v46) = v43;
LABEL_8:
      sub_1C90648BC();
LABEL_9:
      v34 = 41;
      v35 = 0xE100000000000000;
LABEL_10:
      MEMORY[0x1CCA81A90](v34, v35);
      result = *&v44[0];
      break;
    default:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();
      v46 = v44[0];
      MEMORY[0x1CCA81A90](0x287465536E69, 0xE600000000000000);
      v4 = memcpy(v44, v3, sizeof(v44));
      OUTLINED_FUNCTION_188_0(v4, v5, &type metadata for RestrictionContext.ValueSetDefinition, v6, v7, v8, v9, v10, *&v44[0], *(&v44[0] + 1), *&v44[1], *(&v44[1] + 1), *&v44[2], *(&v44[2] + 1), *&v44[3], *(&v44[3] + 1), *&v44[4], *(&v44[4] + 1), v45, v46);
      v11 = MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90C9A80);
      OUTLINED_FUNCTION_188_0(v11, v12, &type metadata for QueryDefinition.PredicateTemplates, v13, v14, v15, v16, v17, v3[10], v3[11], v3[12], v3[13], v3[14], v3[15], v3[16], *(&v44[3] + 1), *&v44[4], *(&v44[4] + 1), v45, v46);
      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
      result = v46;
      break;
  }

  return result;
}