void ToolDatabase.Accessor.tool(matching:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v27;
  a23 = v28;
  OUTLINED_FUNCTION_61_12();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_60_11();
  v40[0] = 0;
  sub_1C8EDAD68(v23, v40, v25);
  memcpy(v40, v41, sizeof(v40));
  v31 = OUTLINED_FUNCTION_50_14();
  v32(v31);
  v33 = OUTLINED_FUNCTION_59_14();
  OUTLINED_FUNCTION_171(v33);
  v34 = OUTLINED_FUNCTION_35_17();
  sub_1C8EE2C10(v34, &v38);
  v35 = sub_1C8F187B4(v40, &v39, v26, &a13);
  sub_1C8EDDEA4(v35, v24);
  v36 = OUTLINED_FUNCTION_69_9();
  v37(v36);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void ToolDatabase.Accessor.tools(matching:locale:scope:)()
{
  OUTLINED_FUNCTION_196();
  v20 = v2;
  v4 = v3;
  sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_59();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_60_11();
  v7 = *v4;
  v8 = *(v4 + 8);
  OUTLINED_FUNCTION_64_8();
  sub_1C8EDAD68(v20, v9, v0);
  OUTLINED_FUNCTION_38_18();
  v21[14] = v7;
  v22 = v8;
  v10 = OUTLINED_FUNCTION_9_29();
  v11(v10);
  Request = type metadata accessor for ToolDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);
  v13 = OUTLINED_FUNCTION_35_17();
  sub_1C8EE2C10(v13, v21);
  v14 = OUTLINED_FUNCTION_22_27();
  v17 = sub_1C8F187B4(v14, v15, v1, v16);
  sub_1C8EDDD8C(v17);
  OUTLINED_FUNCTION_34_13();
  v18 = OUTLINED_FUNCTION_49();
  v19(v18);

  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EDB9F4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_73_6();
  return sub_1C8D0D474(v1, v2, v3);
}

uint64_t sub_1C8EDBA68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t *)@<X5>, uint64_t *a6@<X8>)
{
  v9 = a3;
  v10 = a4 & 1;
  result = a5(a1, a2, &v9);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

void ToolDatabase.Accessor.tools(matching:localeOptions:scope:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_59();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_60_11();
  v8 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  OUTLINED_FUNCTION_64_8();
  sub_1C8EDAD68(v5, v9, v0);
  OUTLINED_FUNCTION_38_18();
  v20[14] = v8;
  v21 = v3;
  v10 = OUTLINED_FUNCTION_9_29();
  v11(v10);
  type metadata accessor for ToolDatabaseLocaleOptions(0);
  Request = type metadata accessor for ToolDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);
  v13 = OUTLINED_FUNCTION_35_17();
  sub_1C8EE2C10(v13, v20);
  v14 = OUTLINED_FUNCTION_22_27();
  v17 = sub_1C8F187B4(v14, v15, v1, v16);
  sub_1C8EDDD8C(v17);
  OUTLINED_FUNCTION_34_13();
  v18 = OUTLINED_FUNCTION_49();
  v19(v18);

  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDatabase.count(over:localeOptions:)()
{
  OUTLINED_FUNCTION_49_12();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_4_39();
  return sub_1C8D0D4B4(v1, v2, v3);
}

void sub_1C8EDBC7C(uint64_t *a3@<X8>)
{
  ToolDatabase.Accessor.count(over:localeOptions:)();
  if (!v3)
  {
    *a3 = v5;
  }
}

void ToolDatabase.Accessor.count(over:localeOptions:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v6 = v5;
  v7 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_59();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_84();
  memcpy(v28, v6, sizeof(v28));
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  v27[0] = *(v4 + *(type metadata accessor for ToolDatabaseLocaleOptions(0) + 20));
  sub_1C8EDAD68(v2, v27, v0);
  v13 = v2;
  v14 = *(v9 + 8);
  v14(v13, v7);
  OUTLINED_FUNCTION_38_18();
  v15 = OUTLINED_FUNCTION_9_29();
  v16(v15);
  v25[14] = 0;
  v26 = 1;
  Request = type metadata accessor for ToolDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);
  v18 = OUTLINED_FUNCTION_35_17();
  sub_1C8EE2C10(v18, v25);
  v19 = OUTLINED_FUNCTION_22_27();
  sub_1C8F187B4(v19, v20, v1, v21);
  OUTLINED_FUNCTION_14_31();
  sub_1C8EDE064(v22, v23);
  v24 = OUTLINED_FUNCTION_28_18();
  (v14)(v24);

  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDatabase.count(over:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_4_39();
  return sub_1C8D0D4B4(v1, v2, v3);
}

{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_4_39();
  return sub_1C8D0D4B4(v1, v2, v3);
}

void ToolDatabase.Accessor.count(over:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v27;
  a23 = v28;
  OUTLINED_FUNCTION_257();
  sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1_59();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_84();
  memcpy(v44, v23, sizeof(v44));
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  v43[0] = 0;
  sub_1C8EDAD68(v26, v43, v24);
  v32 = OUTLINED_FUNCTION_51_11();
  v33(v32);
  memcpy(v43, v44, sizeof(v43));
  v34 = OUTLINED_FUNCTION_9_29();
  v35(v34);
  v36 = OUTLINED_FUNCTION_59_14();
  OUTLINED_FUNCTION_171(v36);
  v37 = OUTLINED_FUNCTION_35_17();
  sub_1C8EE2C10(v37, &v41);
  sub_1C8F187B4(v43, &v42, v25, &a13);
  OUTLINED_FUNCTION_14_31();
  sub_1C8EDE064(v38, v39);
  v40 = OUTLINED_FUNCTION_28_18();
  v26(v40);

  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_198();
}

void ToolDatabase.Accessor.iterate(over:scope:localeOptions:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v26;
  a23 = v27;
  v46 = v28;
  v47 = v29;
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_41_15();
  v34 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v45 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_156_0();
  memcpy(v52, v23, sizeof(v52));
  v38 = *v33;
  v39 = *(v33 + 8);
  v40 = *(type metadata accessor for ToolDatabaseLocaleOptions(0) + 20);
  v51[0] = *(v31 + v40);
  sub_1C8EDAD68(v31, v51, v24);
  memcpy(v51, v52, sizeof(v51));
  v49 = v38;
  v50 = v39;
  (*(v45 + 16))(v25, v24, v34);
  a13 = *(v31 + v40);
  Request = type metadata accessor for ToolDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);
  v42 = OUTLINED_FUNCTION_35_17();
  sub_1C8EE2C10(v42, &v48);
  sub_1C8F187B4(v51, &v49, v25, &a13);
  OUTLINED_FUNCTION_18_24();
  sub_1C8EDE0A8(v43, v46, v47, v44);
  (*(v45 + 8))(v24, v34);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8EDC254(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_73_6();
  sub_1C8D0D434();
}

uint64_t ToolDatabase.iterate(over:scope:locale:block:)(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = v5;
  *(v6 + 128) = a3;
  *(v6 + 136) = a4;
  memcpy((v6 + 16), __src, 0x70uLL);
  *(v6 + 160) = *a2;
  *(v6 + 168) = *(a2 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1C8EDC4E4, 0, 0);
}

uint64_t sub_1C8EDC4E4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = swift_task_alloc();
  v5 = *(v0 + 128);
  *(v4 + 16) = v0 + 16;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  *(v4 + 56) = v3;
  sub_1C8D0D434();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t ToolDatabase.type(matching:locale:)()
{
  OUTLINED_FUNCTION_49_12();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_54_9();
  return sub_1C8D0D4F4(v1, v2, v3);
}

void ToolDatabase.Accessor.type(matching:locale:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_61_12();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_155_0();
  memcpy(v14, v3, sizeof(v14));
  v13[0] = 0;
  sub_1C8EDAD68(v0, v13, v1);
  OUTLINED_FUNCTION_62_10();
  v6 = OUTLINED_FUNCTION_50_14();
  v7(v6);
  v8 = OUTLINED_FUNCTION_78_8();
  OUTLINED_FUNCTION_171(v8);
  OUTLINED_FUNCTION_63_11();
  v9 = sub_1C8E01160(v13, &v12, v2);
  sub_1C8EDDEF8(v9);
  v10 = OUTLINED_FUNCTION_69_9();
  v11(v10);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDatabase.types(matching:scope:locale:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_4_39();
  return sub_1C8D0D534(v1, v2, v3);
}

void sub_1C8EDC7D4(void *a1@<X8>)
{
  ToolDatabase.Accessor.types(matching:scope:locale:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1C8EDC884(uint64_t *a2@<X8>)
{
  ToolDatabase.Accessor.count(over:)();
  if (!v2)
  {
    *a2 = v4;
  }
}

void ToolDatabase.Accessor.count(over:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_257();
  sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_59();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_84();
  memcpy(v16, v0, sizeof(v16));
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  v15[0] = 0;
  sub_1C8EDAD68(v3, v15, v1);
  v7 = OUTLINED_FUNCTION_51_11();
  v8(v7);
  OUTLINED_FUNCTION_62_10();
  v9 = OUTLINED_FUNCTION_9_29();
  v10(v9);
  v11 = OUTLINED_FUNCTION_78_8();
  OUTLINED_FUNCTION_171(v11);
  OUTLINED_FUNCTION_63_11();
  v12 = sub_1C8E01160(v15, &v14, v2);
  sub_1C8EDE064(v12, sub_1C8EE3CA4);
  v13 = OUTLINED_FUNCTION_28_18();
  v3(v13);

  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v26 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v38 = v6;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = v2[1];
  v25 = *v2;
  v13 = v2[2];
  v12 = v2[3];
  v14 = v2[4];
  v15 = v2[5];
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  OUTLINED_FUNCTION_77_5();
  sub_1C8EDAD68(v0, v16, v10);
  v17 = *(v4 + 8);
  v18 = v26;
  v27 = v4 + 8;
  v28 = v17;
  v17(v0, v26);
  v32 = v25;
  v33 = v11;
  v34 = v13;
  v35 = v12;
  v36 = v14;
  v37 = v15;
  v19 = *(v4 + 16);
  v29 = v10;
  v19(v38, v10, v18);
  v30 = 0;
  v31 = 1;
  Request = type metadata accessor for ContainerDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);

  v21 = OUTLINED_FUNCTION_70_4();
  v23 = sub_1C8EE4790(v21, v22, v38);
  sub_1C8EDE064(v23, sub_1C8EE3C6C);
  OUTLINED_FUNCTION_53_11();
  v28(v29, v18);

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_196();
  v3 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_233_0();
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  OUTLINED_FUNCTION_75_4();
  sub_1C8EDAD68(v2, v9, v0);
  v10 = v2;
  v11 = *(v5 + 8);
  v11(v10, v3);
  (*(v5 + 16))(v1, v0, v3);
  Request = type metadata accessor for TriggerDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);

  OUTLINED_FUNCTION_74_4();
  sub_1C902EB70();
  sub_1C8EDE064(v13, sub_1C8EE3BE0);
  OUTLINED_FUNCTION_53_11();
  v11(v0, v3);

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_198();
}

void ToolDatabase.iterate(over:scope:locale:block:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_4_39();
  sub_1C8D0D434();
}

uint64_t ToolDatabase.type(matching:)()
{
  v1 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  ToolDatabase.type(matching:locale:)();
  return (*(v3 + 8))(v0, v1);
}

uint64_t ToolDatabase.types(matching:scope:)()
{
  OUTLINED_FUNCTION_41_15();
  v3 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  ToolDatabase.types(matching:scope:locale:)(v2);
  OUTLINED_FUNCTION_34_13();
  (*(v5 + 8))(v1, v3);
  return v0;
}

void ToolDatabase.iterate(over:scope:block:)()
{
  OUTLINED_FUNCTION_196();
  v2 = OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  ToolDatabase.iterate(over:scope:locale:block:)(v1);
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDatabase.container(matching:locale:)(__n128 *a1)
{
  OUTLINED_FUNCTION_76_7(a1);
  v1 = OUTLINED_FUNCTION_4_39();
  return sub_1C8D0D574(v1, v2, v3);
}

void ToolDatabase.Accessor.container(matching:locale:)()
{
  OUTLINED_FUNCTION_196();
  v13 = v1;
  v2 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v14 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v12 = v5;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_77_5();
  sub_1C8EDAD68(v13, v7, v0);
  (*(v14 + 16))(v12, v0, v2);
  Request = type metadata accessor for ContainerDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);

  v9 = OUTLINED_FUNCTION_70_4();
  v11 = sub_1C8EE4790(v9, v10, v12);
  sub_1C8EDDF84(v11);
  (*(v14 + 8))(v0, v2);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8EDCFAC(void *a1@<X8>)
{
  ToolDatabase.Accessor.containers(matching:scope:locale:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t ToolDatabase.count(over:)(__n128 *a1)
{
  OUTLINED_FUNCTION_76_7(a1);
  v1 = OUTLINED_FUNCTION_4_39();
  return sub_1C8D0D4B4(v1, v2, v3);
}

void sub_1C8EDD040(uint64_t *a2@<X8>)
{
  ToolDatabase.Accessor.count(over:)();
  if (!v2)
  {
    *a2 = v4;
  }
}

void ToolDatabase.Accessor.trigger(matching:locale:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_59();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_75_4();
  sub_1C8EDAD68(v3, v11, v0);
  (*(v8 + 16))(v1, v0, v6);
  Request = type metadata accessor for TriggerDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);

  OUTLINED_FUNCTION_74_4();
  sub_1C902EB70();
  sub_1C8EDE010(v13, v5);
  (*(v8 + 8))(v0, v6);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDatabase.triggers(matching:scope:locale:)(uint64_t a1)
{
  OUTLINED_FUNCTION_40_18(a1);
  v1 = OUTLINED_FUNCTION_4_39();
  return sub_1C8D0D680(v1, v2, v3);
}

void sub_1C8EDD6A8(uint64_t *a6@<X8>)
{
  ToolDatabase.Accessor.triggers(matching:scope:locale:)();
  if (!v6)
  {
    *a6 = v8;
  }
}

void ToolDatabase.Accessor.triggers(matching:scope:locale:)()
{
  OUTLINED_FUNCTION_196();
  v11 = v2;
  v3 = OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_75_4();
  sub_1C8EDAD68(v11, v8, v0);
  (*(v5 + 16))(v1, v0, v3);
  Request = type metadata accessor for TriggerDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);

  OUTLINED_FUNCTION_74_4();
  sub_1C902EB70();
  sub_1C8EDDE18(v10);
  OUTLINED_FUNCTION_53_11();
  (*(v5 + 8))(v0, v3);

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_198();
}

void sub_1C8EDD88C(uint64_t *a3@<X8>)
{
  ToolDatabase.Accessor.count(over:)();
  if (!v3)
  {
    *a3 = v5;
  }
}

void ToolDatabase.iterate(over:scope:locale:block:)(uint64_t a1)
{
  OUTLINED_FUNCTION_40_18(a1);
  OUTLINED_FUNCTION_4_39();
  sub_1C8D0D434();
}

uint64_t sub_1C8EDE064(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v4 = a1;
  v3[2] = &v4;
  return sub_1C8EE0970("CountOverRequest", 16, 2, a2, v3);
}

uint64_t sub_1C8EDE0A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = a1;
  v5[2] = &v6;
  v5[3] = a2;
  v5[4] = a3;
  return sub_1C8EDFDC8("IterateOverRequest", 18, 2, a4, v5, &v6);
}

uint64_t sub_1C8EDE0EC@<X0>(uint64_t a2@<X1>, void (*a3)(void, void)@<X8>)
{
  v72 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F18, &qword_1C907A7B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v67[-v5];
  v75 = sub_1C9063D3C();
  v6 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v8 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v67[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v67[-v13];
  v70 = *MEMORY[0x1E69E10F0];
  sub_1C906371C();

  v15 = sub_1C9063D1C();
  v16 = sub_1C906446C();

  v17 = os_log_type_enabled(v15, v16);
  v74 = v6;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v76 = v69;
    *v18 = 136315138;
    v68 = v16;
    v19 = sub_1C8ED6CB8();
    v24 = v11;
    v25 = v8;
    v26 = sub_1C8CACE04(v19, v20, &v76, v21, v22, v23);

    *(v18 + 4) = v26;
    v8 = v25;
    v11 = v24;
    _os_log_impl(&dword_1C8C9B000, v15, v68, "Fetching single record using request: %s", v18, 0xCu);
    v27 = v69;
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x1CCA833A0](v27, -1, -1);
    v28 = v18;
    v6 = v74;
    MEMORY[0x1CCA833A0](v28, -1, -1);
  }

  v29 = *(v6 + 8);
  v29(v14, v75);
  v30 = *(a2 + 16);
  v31 = *(a2 + 32);
  v32 = v71;
  v33 = v72;
  sub_1C8ED74F8(v30, v31, v72);
  v34 = v73;
  if (v32)
  {
    sub_1C906371C();

    v35 = v32;
    v36 = sub_1C9063D1C();
    v37 = sub_1C906444C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v8;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v72 = v29;
      v41 = v40;
      v42 = swift_slowAlloc();
      v76 = v42;
      *v39 = 136315394;
      v43 = sub_1C8ED6CB8();
      v48 = sub_1C8CACE04(v43, v44, &v76, v45, v46, v47);

      *(v39 + 4) = v48;
      *(v39 + 12) = 2112;
      v49 = v32;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v50;
      *v41 = v50;
      _os_log_impl(&dword_1C8C9B000, v36, v37, "Failed to fetch single record using request: %s due to error: %@", v39, 0x16u);
      sub_1C8D3F0C4(v41, &qword_1EC312EC8, &qword_1C9071EA0);
      MEMORY[0x1CCA833A0](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1CCA833A0](v42, -1, -1);
      MEMORY[0x1CCA833A0](v39, -1, -1);

      v72(v38, v75);
    }

    else
    {

      v29(v8, v75);
    }

    return swift_willThrow();
  }

  else
  {
    sub_1C906371C();
    sub_1C8EE3DD8(v33, v34, &qword_1EC312F18, &qword_1C907A7B0);

    v51 = v11;
    v52 = sub_1C9063D1C();
    v53 = sub_1C906446C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v72 = v29;
      v55 = v54;
      v56 = swift_slowAlloc();
      v76 = v56;
      *v55 = 67109378;
      v57 = type metadata accessor for ToolDefinition(0);
      v58 = v51;
      v59 = __swift_getEnumTagSinglePayload(v34, 1, v57) != 1;
      sub_1C8D3F0C4(v34, &qword_1EC312F18, &qword_1C907A7B0);
      *(v55 + 4) = v59;
      *(v55 + 8) = 2080;
      v60 = sub_1C8ED6CB8();
      v65 = sub_1C8CACE04(v60, v61, &v76, v62, v63, v64);

      *(v55 + 10) = v65;
      _os_log_impl(&dword_1C8C9B000, v52, v53, "Fetched single record: %{BOOL}d for request: %s", v55, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1CCA833A0](v56, -1, -1);
      MEMORY[0x1CCA833A0](v55, -1, -1);

      return (v72)(v58, v75);
    }

    else
    {
      sub_1C8D3F0C4(v34, &qword_1EC312F18, &qword_1C907A7B0);

      return (v29)(v51, v75);
    }
  }
}

void *sub_1C8EDE6EC@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v59 = a2;
  v57 = a3;
  v3 = sub_1C9063D3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - v10;
  v58 = *MEMORY[0x1E69E10F0];
  sub_1C906371C();

  v12 = sub_1C9063D1C();
  v13 = sub_1C906446C();

  v14 = os_log_type_enabled(v12, v13);
  v66 = v4;
  v62 = v3;
  v56 = v8;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v64[0] = v16;
    *v15 = 136315138;
    v17 = sub_1C8ED6AC4();
    v22 = sub_1C8CACE04(v17, v18, v64, v19, v20, v21);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_1C8C9B000, v12, v13, "Fetching single record using request: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v23 = v16;
    v3 = v62;
    MEMORY[0x1CCA833A0](v23, -1, -1);
    MEMORY[0x1CCA833A0](v15, -1, -1);

    v24 = *(v66 + 8);
  }

  else
  {

    v24 = *(v4 + 8);
  }

  v24(v11, v3);
  v25 = v60;
  sub_1C8ED70A0(*(v59 + 32), __src);
  v26 = v61;
  if (v25)
  {
    sub_1C906371C();

    v27 = v25;
    v28 = sub_1C9063D1C();
    v29 = sub_1C906444C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v60 = v24;
      v32 = v31;
      v33 = swift_slowAlloc();
      v64[0] = v33;
      *v30 = 136315394;
      v34 = sub_1C8ED6AC4();
      v39 = sub_1C8CACE04(v34, v35, v64, v36, v37, v38);

      *(v30 + 4) = v39;
      *(v30 + 12) = 2112;
      v40 = v25;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v41;
      *v32 = v41;
      _os_log_impl(&dword_1C8C9B000, v28, v29, "Failed to fetch single record using request: %s due to error: %@", v30, 0x16u);
      sub_1C8D3F0C4(v32, &qword_1EC312EC8, &qword_1C9071EA0);
      MEMORY[0x1CCA833A0](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1CCA833A0](v33, -1, -1);
      MEMORY[0x1CCA833A0](v30, -1, -1);

      v60(v61, v62);
    }

    else
    {

      v24(v26, v62);
    }

    return swift_willThrow();
  }

  else
  {
    v42 = v56;
    sub_1C906371C();
    memcpy(v64, __src, 0x61uLL);

    sub_1C8EE3DD8(v64, v63, &qword_1EC312F08, &qword_1C9091C20);
    v43 = sub_1C9063D1C();
    v44 = sub_1C906446C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v60 = v24;
      v47 = v46;
      v63[0] = v46;
      *v45 = 67109378;
      *(v45 + 4) = LOBYTE(v64[12]) != 255;
      sub_1C8D3F0C4(v64, &qword_1EC312F08, &qword_1C9091C20);
      *(v45 + 8) = 2080;
      v48 = sub_1C8ED6AC4();
      v53 = sub_1C8CACE04(v48, v49, v63, v50, v51, v52);

      *(v45 + 10) = v53;
      _os_log_impl(&dword_1C8C9B000, v43, v44, "Fetched single record: %{BOOL}d for request: %s", v45, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1CCA833A0](v47, -1, -1);
      MEMORY[0x1CCA833A0](v45, -1, -1);

      v60(v42, v62);
    }

    else
    {
      sub_1C8D3F0C4(v64, &qword_1EC312F08, &qword_1C9091C20);

      v24(v42, v3);
    }

    return memcpy(v57, __src, 0x61uLL);
  }
}

void *sub_1C8EDECB0@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v59 = a2;
  v57 = a3;
  v3 = sub_1C9063D3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - v10;
  v58 = *MEMORY[0x1E69E10F0];
  sub_1C906371C();

  v12 = sub_1C9063D1C();
  v13 = sub_1C906446C();

  v14 = os_log_type_enabled(v12, v13);
  v66 = v4;
  v62 = v3;
  v56 = v8;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v64[0] = v16;
    *v15 = 136315138;
    v17 = sub_1C8ED68D0();
    v22 = sub_1C8CACE04(v17, v18, v64, v19, v20, v21);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_1C8C9B000, v12, v13, "Fetching single record using request: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v23 = v16;
    v3 = v62;
    MEMORY[0x1CCA833A0](v23, -1, -1);
    MEMORY[0x1CCA833A0](v15, -1, -1);

    v24 = *(v66 + 8);
  }

  else
  {

    v24 = *(v4 + 8);
  }

  v24(v11, v3);
  v25 = v60;
  sub_1C8ED7A10(*(v59 + 32), __src);
  v26 = v61;
  if (v25)
  {
    sub_1C906371C();

    v27 = v25;
    v28 = sub_1C9063D1C();
    v29 = sub_1C906444C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v60 = v24;
      v32 = v31;
      v33 = swift_slowAlloc();
      v64[0] = v33;
      *v30 = 136315394;
      v34 = sub_1C8ED68D0();
      v39 = sub_1C8CACE04(v34, v35, v64, v36, v37, v38);

      *(v30 + 4) = v39;
      *(v30 + 12) = 2112;
      v40 = v25;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v41;
      *v32 = v41;
      _os_log_impl(&dword_1C8C9B000, v28, v29, "Failed to fetch single record using request: %s due to error: %@", v30, 0x16u);
      sub_1C8D3F0C4(v32, &qword_1EC312EC8, &qword_1C9071EA0);
      MEMORY[0x1CCA833A0](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1CCA833A0](v33, -1, -1);
      MEMORY[0x1CCA833A0](v30, -1, -1);

      v60(v61, v62);
    }

    else
    {

      v24(v26, v62);
    }

    return swift_willThrow();
  }

  else
  {
    v42 = v56;
    sub_1C906371C();
    memcpy(v64, __src, 0x61uLL);

    sub_1C8EE3DD8(v64, v63, &qword_1EC312EF8, &unk_1C90839D0);
    v43 = sub_1C9063D1C();
    v44 = sub_1C906446C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v60 = v24;
      v47 = v46;
      v63[0] = v46;
      *v45 = 67109378;
      *(v45 + 4) = v64[1] != 0;
      sub_1C8D3F0C4(v64, &qword_1EC312EF8, &unk_1C90839D0);
      *(v45 + 8) = 2080;
      v48 = sub_1C8ED68D0();
      v53 = sub_1C8CACE04(v48, v49, v63, v50, v51, v52);

      *(v45 + 10) = v53;
      _os_log_impl(&dword_1C8C9B000, v43, v44, "Fetched single record: %{BOOL}d for request: %s", v45, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1CCA833A0](v47, -1, -1);
      MEMORY[0x1CCA833A0](v45, -1, -1);

      v60(v42, v62);
    }

    else
    {
      sub_1C8D3F0C4(v64, &qword_1EC312EF8, &unk_1C90839D0);

      v24(v42, v3);
    }

    return memcpy(v57, __src, 0x61uLL);
  }
}

void *sub_1C8EDF274@<X0>(void (*a2)(char *, uint64_t)@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v72 = a2;
  v66 = a3;
  v5 = sub_1C9063D3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v68 = *MEMORY[0x1E69E10F0];
  sub_1C906371C();

  v14 = sub_1C9063D1C();
  v15 = sub_1C906446C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v64 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v65 = v5;
    v63 = v18;
    __dst[0] = v18;
    *v17 = 136315138;
    v19 = sub_1C8ED6EAC();
    v24 = v8;
    v25 = v6;
    v26 = sub_1C8CACE04(v19, v20, __dst, v21, v22, v23);

    *(v17 + 4) = v26;
    v6 = v25;
    v8 = v24;
    _os_log_impl(&dword_1C8C9B000, v14, v15, "Fetching single record using request: %s", v17, 0xCu);
    v27 = v63;
    __swift_destroy_boxed_opaque_existential_1(v63);
    v5 = v65;
    MEMORY[0x1CCA833A0](v27, -1, -1);
    v28 = v17;
    v4 = v64;
    MEMORY[0x1CCA833A0](v28, -1, -1);
  }

  v29 = *(v6 + 1);
  v29(v13, v5);
  sub_1C8ED7D00(*(v72 + 32), __src);
  if (v4)
  {
    sub_1C906371C();

    v30 = v4;
    v31 = v8;
    v32 = sub_1C9063D1C();
    v33 = sub_1C906444C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v68 = v31;
      v35 = v34;
      v36 = swift_slowAlloc();
      v67 = v6;
      v37 = v36;
      v38 = swift_slowAlloc();
      v72 = v29;
      v39 = v38;
      __dst[0] = v38;
      *v35 = 136315394;
      v40 = sub_1C8ED6EAC();
      v45 = sub_1C8CACE04(v40, v41, __dst, v42, v43, v44);

      *(v35 + 4) = v45;
      *(v35 + 12) = 2112;
      v46 = v4;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v47;
      *v37 = v47;
      _os_log_impl(&dword_1C8C9B000, v32, v33, "Failed to fetch single record using request: %s due to error: %@", v35, 0x16u);
      sub_1C8D3F0C4(v37, &qword_1EC312EC8, &qword_1C9071EA0);
      MEMORY[0x1CCA833A0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1CCA833A0](v39, -1, -1);
      MEMORY[0x1CCA833A0](v35, -1, -1);

      v72(v68, v5);
    }

    else
    {

      v29(v31, v5);
    }

    return swift_willThrow();
  }

  else
  {
    v48 = v67;
    sub_1C906371C();
    memcpy(__dst, __src, sizeof(__dst));

    sub_1C8EE3DD8(__dst, v69, &qword_1EC312EE8, &unk_1C9091C10);
    v49 = sub_1C9063D1C();
    v50 = sub_1C906446C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v72 = v29;
      v53 = v5;
      v54 = v52;
      v69[0] = v52;
      *v51 = 67109378;
      *(v51 + 4) = __dst[1] != 0;
      sub_1C8D3F0C4(__dst, &qword_1EC312EE8, &unk_1C9091C10);
      *(v51 + 8) = 2080;
      v55 = sub_1C8ED6EAC();
      v60 = sub_1C8CACE04(v55, v56, v69, v57, v58, v59);

      *(v51 + 10) = v60;
      _os_log_impl(&dword_1C8C9B000, v49, v50, "Fetched single record: %{BOOL}d for request: %s", v51, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1CCA833A0](v54, -1, -1);
      MEMORY[0x1CCA833A0](v51, -1, -1);

      v72(v67, v53);
    }

    else
    {
      sub_1C8D3F0C4(__dst, &qword_1EC312EE8, &unk_1C9091C10);

      v29(v48, v5);
    }

    return memcpy(v66, __src, 0x50uLL);
  }
}

void sub_1C8EDF888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v87 = v21;
  v88 = v24;
  v26 = v25;
  v28 = v27;
  v85 = v30;
  v86 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = a21;
  v82 = sub_1C9063C8C();
  OUTLINED_FUNCTION_11();
  v81 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_12();
  v75 = v40;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v73 - v42;
  v78 = sub_1C9063CBC();
  OUTLINED_FUNCTION_11();
  v77 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_12();
  v74 = v46;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v73 - v48;
  v80 = sub_1C906345C();
  OUTLINED_FUNCTION_11();
  v79 = v50;
  MEMORY[0x1EEE9AC00](v51);
  v89 = v36;
  v83 = v34;
  v76 = sub_1C90633FC();
  v52 = OUTLINED_FUNCTION_82_6(v28);
  *(v52 + 16) = 32;
  v53 = OUTLINED_FUNCTION_82_6(v26);
  *(v53 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3163E8, &qword_1C9085028);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9084EE0;
  *(inited + 32) = v88;
  *(inited + 40) = v52;
  *(inited + 48) = v37;
  *(inited + 56) = v53;
  OUTLINED_FUNCTION_17_26(inited);
  sub_1C906341C();
  sub_1C9063C9C();
  sub_1C9063C5C();
  v55 = sub_1C9063C9C();
  v56 = sub_1C906453C();
  v57 = sub_1C906461C();
  v84 = v32;
  if ((v57 & 1) == 0)
  {
    goto LABEL_5;
  }

  LODWORD(v88) = v56;
  if ((v32 & 1) == 0)
  {
    v58 = v89;
    if (!v89)
    {
      __break(1u);
LABEL_5:
      v59 = v43;

LABEL_14:
      v65 = v81;
      v66 = v82;
      (*(v81 + 16))(v75, v59, v82);
      v67 = sub_1C9063CFC();
      OUTLINED_FUNCTION_171(v67);
      sub_1C9063CEC();
      v68 = v77;
      v69 = v78;
      (*(v77 + 16))(v74, v49, v78);
      sub_1C906346C();
      (*(v65 + 8))(v59, v66);
      v70 = (*(v68 + 8))(v49, v69);
      v86(&a10, v70);
      sub_1C8EE2F8C();
      v71 = OUTLINED_FUNCTION_39_16();
      v72(v71);

      OUTLINED_FUNCTION_198();
      return;
    }

LABEL_10:
    v73 = v58;
    v60 = OUTLINED_FUNCTION_57_11();
    v61 = OUTLINED_FUNCTION_18_19();
    v62 = 0;
    v90 = v61;
    v91 = 0;
    *v60 = 258;
    v92 = v60 + 2;
    while (v62 != 48)
    {
      v63 = *(inited + v62 + 32);

      v63(&v92, &v91, &v90);

      v62 += 16;
    }

    v59 = v43;

    v64 = sub_1C9063C6C();
    _os_signpost_emit_with_name_impl(&dword_1C8C9B000, v55, v88, v64, v73, "%s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();

    goto LABEL_14;
  }

  if (v89 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v89 & 0xFFFFF800) != 0xD800)
  {
    if (v89 >> 16 <= 0x10)
    {
      v58 = &v93;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1C8EDFDC8@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v52 = a4;
  v7 = a3;
  v50 = a6;
  v47 = sub_1C9063C8C();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v43 = sub_1C9063CBC();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v45 = sub_1C906345C();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v48 = a2;
  v41 = sub_1C90633FC();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3163E8, &qword_1C9085028);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9084EE0;
  *(inited + 32) = sub_1C8E1AA80;
  *(inited + 40) = v20;
  *(inited + 48) = sub_1C8E1BB4C;
  *(inited + 56) = v21;
  *(inited + 64) = sub_1C8E1AA88;
  *(inited + 72) = 0;
  sub_1C906341C();
  sub_1C9063C9C();
  sub_1C9063C5C();
  v23 = sub_1C9063C9C();
  v24 = sub_1C906453C();
  result = sub_1C906461C();
  v53 = v6;
  v49 = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v38 = v24;
  if ((v7 & 1) == 0)
  {
    v26 = v54;
    if (!v54)
    {
      __break(1u);
LABEL_5:

LABEL_14:
      v32 = v46;
      v33 = v47;
      (*(v46 + 16))(v40, v13, v47);
      sub_1C9063CFC();
      swift_allocObject();
      sub_1C9063CEC();
      v34 = v42;
      v35 = v43;
      (*(v42 + 16))(v39, v17, v43);
      sub_1C906346C();
      (*(v32 + 8))(v13, v33);
      v36 = (*(v34 + 8))(v17, v35);
      v52(v36);
      sub_1C8EE2F8C();
      (*(v44 + 8))(v19, v45);
    }

LABEL_10:
    v37 = v26;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = 0;
    v55 = v28;
    v56 = 0;
    *v27 = 258;
    v57 = v27 + 2;
    while (v29 != 48)
    {
      v30 = *(inited + v29 + 32);

      v30(&v57, &v56, &v55);

      v29 += 16;
    }

    v31 = sub_1C9063C6C();
    _os_signpost_emit_with_name_impl(&dword_1C8C9B000, v23, v38, v31, v37, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1CCA833A0](v28, -1, -1);
    MEMORY[0x1CCA833A0](v27, -1, -1);

    goto LABEL_14;
  }

  if (v54 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v54 & 0xFFFFF800) != 0xD800)
  {
    if (v54 >> 16 <= 0x10)
    {
      v26 = &v58;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C8EE039C@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v52 = a4;
  v7 = a3;
  v50 = a6;
  v47 = sub_1C9063C8C();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v43 = sub_1C9063CBC();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v45 = sub_1C906345C();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v48 = a2;
  v41 = sub_1C90633FC();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3163E8, &qword_1C9085028);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9084EE0;
  *(inited + 32) = sub_1C8E1BB4C;
  *(inited + 40) = v20;
  *(inited + 48) = sub_1C8E1BB4C;
  *(inited + 56) = v21;
  *(inited + 64) = sub_1C8E1AA88;
  *(inited + 72) = 0;
  sub_1C906341C();
  sub_1C9063C9C();
  sub_1C9063C5C();
  v23 = sub_1C9063C9C();
  v24 = sub_1C906453C();
  result = sub_1C906461C();
  v53 = v6;
  v49 = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v38 = v24;
  if ((v7 & 1) == 0)
  {
    v26 = v54;
    if (!v54)
    {
      __break(1u);
LABEL_5:

LABEL_14:
      v32 = v46;
      v33 = v47;
      (*(v46 + 16))(v40, v13, v47);
      sub_1C9063CFC();
      swift_allocObject();
      sub_1C9063CEC();
      v34 = v42;
      v35 = v43;
      (*(v42 + 16))(v39, v17, v43);
      sub_1C906346C();
      (*(v32 + 8))(v13, v33);
      v36 = (*(v34 + 8))(v17, v35);
      v52(v36);
      sub_1C8EE2F8C();
      (*(v44 + 8))(v19, v45);
    }

LABEL_10:
    v37 = v26;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = 0;
    v55 = v28;
    v56 = 0;
    *v27 = 258;
    v57 = v27 + 2;
    while (v29 != 48)
    {
      v30 = *(inited + v29 + 32);

      v30(&v57, &v56, &v55);

      v29 += 16;
    }

    v31 = sub_1C9063C6C();
    _os_signpost_emit_with_name_impl(&dword_1C8C9B000, v23, v38, v31, v37, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1CCA833A0](v28, -1, -1);
    MEMORY[0x1CCA833A0](v27, -1, -1);

    goto LABEL_14;
  }

  if (v54 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v54 & 0xFFFFF800) != 0xD800)
  {
    if (v54 >> 16 <= 0x10)
    {
      v26 = &v58;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C8EE0970(const char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v51 = a5;
  v6 = a3;
  v49 = sub_1C9063C8C();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v44 = sub_1C9063CBC();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v46 = sub_1C906345C();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v48 = a2;
  v42 = sub_1C90633FC();
  v19 = swift_allocObject();
  *(v19 + 16) = 32;
  v20 = swift_allocObject();
  *(v20 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3163E8, &qword_1C9085028);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9084EE0;
  *(inited + 32) = sub_1C8E1BB4C;
  *(inited + 40) = v19;
  *(inited + 48) = sub_1C8E1BB4C;
  *(inited + 56) = v20;
  *(inited + 64) = sub_1C8E1AA88;
  *(inited + 72) = 0;
  sub_1C906341C();
  sub_1C9063C9C();
  sub_1C9063C5C();
  v22 = sub_1C9063C9C();
  v23 = sub_1C906453C();
  result = sub_1C906461C();
  v52 = a4;
  v50 = v6;
  if (result)
  {
    v39 = v23;
    if (v6)
    {
      if (!(v54 >> 32))
      {
        if ((v54 & 0xFFFFF800) == 0xD800)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        if (v54 >> 16 <= 0x10)
        {
          v26 = v18;
          v25 = &v58;
LABEL_10:
          v38 = v25;
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v29 = 0;
          v55 = v28;
          v56 = 0;
          *v27 = 258;
          v57 = v27 + 2;
          while (v29 != 48)
          {
            v30 = *(inited + v29 + 32);

            v30(&v57, &v56, &v55);
            v26 = v18;

            v29 += 16;
          }

          v18 = v26;

          v31 = sub_1C9063C6C();
          _os_signpost_emit_with_name_impl(&dword_1C8C9B000, v22, v39, v31, v38, "%s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x1CCA833A0](v28, -1, -1);
          MEMORY[0x1CCA833A0](v27, -1, -1);

          goto LABEL_14;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      v25 = v54;
      if (v54)
      {
        v26 = v18;
        goto LABEL_10;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  v32 = v47;
  v33 = v49;
  (*(v47 + 16))(v41, v12, v49);
  sub_1C9063CFC();
  swift_allocObject();
  sub_1C9063CEC();
  v34 = v43;
  v35 = v44;
  (*(v43 + 16))(v40, v16, v44);
  sub_1C906346C();
  (*(v32 + 8))(v12, v33);
  v36 = (*(v34 + 8))(v16, v35);
  v37 = v53;
  v52(&v59, v36);
  sub_1C8EE2F8C();
  (*(v45 + 8))(v18, v46);
  if (v37)
  {
  }

  return v59;
}

void sub_1C8EE0F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_196();
  a19 = v24;
  a20 = v25;
  v69 = v26;
  v28 = v27;
  v30 = v29;
  v68 = v31;
  v33 = v32;
  v35 = v34;
  v36 = a21;
  v67 = sub_1C9063C8C();
  OUTLINED_FUNCTION_11();
  v66 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_12();
  v61 = v39;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_233_0();
  v63 = sub_1C9063CBC();
  OUTLINED_FUNCTION_11();
  v62 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_12();
  v60 = v43;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_32();
  v65 = sub_1C906345C();
  OUTLINED_FUNCTION_11();
  v64 = v45;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_14();
  v71 = v35;
  sub_1C90633FC();
  v47 = OUTLINED_FUNCTION_82_6(v30);
  *(v47 + 16) = 32;
  v48 = OUTLINED_FUNCTION_82_6(v28);
  v48[16] = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3163E8, &qword_1C9085028);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9084EE0;
  *(inited + 32) = v69;
  *(inited + 40) = v47;
  *(inited + 48) = v36;
  *(inited + 56) = v48;
  OUTLINED_FUNCTION_17_26(inited);
  sub_1C906341C();
  sub_1C9063C9C();
  sub_1C9063C5C();
  v50 = sub_1C9063C9C();
  v51 = sub_1C906453C();
  if ((sub_1C906461C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v70 = v51;
  if ((v33 & 1) == 0)
  {
    v52 = v71;
    if (!v71)
    {
      __break(1u);
LABEL_5:

LABEL_14:
      (*(v66 + 16))(v61, v23, v67);
      v57 = sub_1C9063CFC();
      OUTLINED_FUNCTION_171(v57);
      sub_1C9063CEC();
      (*(v62 + 16))(v60, v21, v63);
      sub_1C906346C();
      (*(v66 + 8))(v23, v67);
      v58 = (*(v62 + 8))(v21, v63);
      v68(v58);
      sub_1C8EE2F8C();
      (*(v64 + 8))(v22, v65);

      OUTLINED_FUNCTION_198();
      return;
    }

LABEL_10:
    v59 = v52;
    OUTLINED_FUNCTION_57_11();
    v53 = OUTLINED_FUNCTION_33_15();
    v54 = 0;
    v72 = v53;
    v73 = 0;
    *v48 = 258;
    v74 = v48 + 2;
    while (v54 != 48)
    {
      v55 = *(inited + v54 + 32);

      v55(&v74, &v73, &v72);

      v54 += 16;
    }

    v56 = sub_1C9063C6C();
    _os_signpost_emit_with_name_impl(&dword_1C8C9B000, v50, v70, v56, v59, "%s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();

    goto LABEL_14;
  }

  if (v71 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v71 & 0xFFFFF800) != 0xD800)
  {
    if (v71 >> 16 <= 0x10)
    {
      v52 = &a10;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1C8EE1488@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v52 = a4;
  v7 = a3;
  v50 = a6;
  v47 = sub_1C9063C8C();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v43 = sub_1C9063CBC();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v45 = sub_1C906345C();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v48 = a2;
  v41 = sub_1C90633FC();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3163E8, &qword_1C9085028);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9084EE0;
  *(inited + 32) = sub_1C8E1BB4C;
  *(inited + 40) = v20;
  *(inited + 48) = sub_1C8E1BB4C;
  *(inited + 56) = v21;
  *(inited + 64) = sub_1C8E1AA88;
  *(inited + 72) = 0;
  sub_1C906341C();
  sub_1C9063C9C();
  sub_1C9063C5C();
  v23 = sub_1C9063C9C();
  v24 = sub_1C906453C();
  result = sub_1C906461C();
  v53 = v6;
  v49 = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v38 = v24;
  if ((v7 & 1) == 0)
  {
    v26 = v54;
    if (!v54)
    {
      __break(1u);
LABEL_5:

LABEL_14:
      v32 = v46;
      v33 = v47;
      (*(v46 + 16))(v40, v13, v47);
      sub_1C9063CFC();
      swift_allocObject();
      sub_1C9063CEC();
      v34 = v42;
      v35 = v43;
      (*(v42 + 16))(v39, v17, v43);
      sub_1C906346C();
      (*(v32 + 8))(v13, v33);
      v36 = (*(v34 + 8))(v17, v35);
      v52(v36);
      sub_1C8EE2F8C();
      (*(v44 + 8))(v19, v45);
    }

LABEL_10:
    v37 = v26;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = 0;
    v55 = v28;
    v56 = 0;
    *v27 = 258;
    v57 = v27 + 2;
    while (v29 != 48)
    {
      v30 = *(inited + v29 + 32);

      v30(&v57, &v56, &v55);

      v29 += 16;
    }

    v31 = sub_1C9063C6C();
    _os_signpost_emit_with_name_impl(&dword_1C8C9B000, v23, v38, v31, v37, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1CCA833A0](v28, -1, -1);
    MEMORY[0x1CCA833A0](v27, -1, -1);

    goto LABEL_14;
  }

  if (v54 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v54 & 0xFFFFF800) != 0xD800)
  {
    if (v54 >> 16 <= 0x10)
    {
      v26 = &v58;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1C8EE1A5C()
{
  OUTLINED_FUNCTION_196();
  v60 = v2;
  v4 = v3;
  v59 = v5;
  v7 = v6;
  v8 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v62 = v12;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_216();
  v61 = v14;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  sub_1C906371C();

  v16 = sub_1C9063D1C();
  v17 = sub_1C906446C();

  v58 = v4;
  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_57_11();
    v63 = OUTLINED_FUNCTION_33_15();
    *v8 = 136315138;
    v18 = v4();
    v24 = v10;
    v25 = OUTLINED_FUNCTION_42_12(v18, v19, v20, v21, v22, v23);

    *(v8 + 4) = v25;
    _os_log_impl(&dword_1C8C9B000, v16, v17, "Fetching multiple records using request: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();

    v26 = v24;
  }

  else
  {

    v26 = v10;
  }

  v27 = *(v26 + 8);
  v27(v0, v8);
  v28 = v60(*(v59 + 16), *(v59 + 32));
  if (v1)
  {
    sub_1C906371C();

    v29 = v1;
    v30 = sub_1C9063D1C();
    v31 = sub_1C906444C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_164_2();
      v33 = OUTLINED_FUNCTION_84_4();
      v64 = OUTLINED_FUNCTION_18_19();
      *v32 = 136315394;
      v34 = v58();
      OUTLINED_FUNCTION_42_12(v34, v35, v36, v37, v38, v39);
      OUTLINED_FUNCTION_85_4();
      OUTLINED_FUNCTION_80_5();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v40;
      *v33 = v40;
      OUTLINED_FUNCTION_79_7(&dword_1C8C9B000, v41, v42, "Failed to fetch multiple records using request: %s due to error: %@");
      sub_1C8D3F0C4(v33, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_25_0();
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();
    }

    v27(v62, v8);
    swift_willThrow();
  }

  else
  {
    sub_1C906371C();

    v43 = sub_1C9063D1C();
    v44 = sub_1C906446C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_164_2();
      v65 = OUTLINED_FUNCTION_18_19();
      *v45 = 134218242;
      *(v45 + 4) = *(v28 + 16);

      *(v45 + 12) = 2080;
      v47 = (v58)(v46);
      OUTLINED_FUNCTION_42_12(v47, v48, v49, v50, v51, v52);
      OUTLINED_FUNCTION_85_4();
      *(v45 + 14) = v7;
      OUTLINED_FUNCTION_45_18();
      _os_log_impl(v53, v54, v55, v56, v57, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v65);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();
    }

    else
    {
    }

    v27(v61, v8);
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8EE1EE8()
{
  OUTLINED_FUNCTION_196();
  v60 = v2;
  v4 = v3;
  v58 = v5;
  OUTLINED_FUNCTION_41_15();
  v6 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v62 = v10;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_216();
  v61 = v12;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v14 = *MEMORY[0x1E69E10F0];
  sub_1C906371C();

  v15 = sub_1C9063D1C();
  v16 = sub_1C906446C();

  v57 = v4;
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_57_11();
    v17 = OUTLINED_FUNCTION_33_15();
    v18 = OUTLINED_FUNCTION_55_9(v17);
    *v6 = 136315138;
    v19 = (v4)(v18);
    v25 = OUTLINED_FUNCTION_42_12(v19, v20, v21, v22, v23, v24);

    *(v6 + 4) = v25;
    _os_log_impl(&dword_1C8C9B000, v15, v16, "Counting over request: %s", v6, 0xCu);
    OUTLINED_FUNCTION_52_13();
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();
  }

  v26 = *(v8 + 8);
  v26(v0, v6);
  v60(*(v58 + 16), *(v58 + 32));
  if (v1)
  {
    sub_1C906371C();

    v27 = v1;
    v28 = sub_1C9063D1C();
    v29 = sub_1C906444C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_164_2();
      v59 = v26;
      v31 = OUTLINED_FUNCTION_84_4();
      v63 = OUTLINED_FUNCTION_18_19();
      *v30 = 136315394;
      v32 = v57();
      OUTLINED_FUNCTION_42_12(v32, v33, v34, v35, v36, v37);
      OUTLINED_FUNCTION_85_4();
      OUTLINED_FUNCTION_80_5();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v38;
      *v31 = v38;
      OUTLINED_FUNCTION_79_7(&dword_1C8C9B000, v39, v40, "Failed to count records using request: %s due to error: %@");
      sub_1C8D3F0C4(v31, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_25_0();
      __swift_destroy_boxed_opaque_existential_1(v63);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();

      v59(v62, v6);
    }

    else
    {

      v56 = OUTLINED_FUNCTION_44_19();
      (v26)(v56);
    }

    swift_willThrow();
  }

  else
  {
    sub_1C906371C();

    v41 = sub_1C9063D1C();
    sub_1C906446C();
    OUTLINED_FUNCTION_83_5();
    if (os_log_type_enabled(v41, v14))
    {
      v42 = OUTLINED_FUNCTION_164_2();
      v43 = OUTLINED_FUNCTION_18_19();
      OUTLINED_FUNCTION_55_9(v43);
      *v42 = 134218242;
      OUTLINED_FUNCTION_66_11();
      v44 = v57();
      v50 = OUTLINED_FUNCTION_42_12(v44, v45, v46, v47, v48, v49);

      *(v42 + 14) = v50;
      OUTLINED_FUNCTION_45_18();
      _os_log_impl(v51, v52, v53, v54, v55, 0x16u);
      OUTLINED_FUNCTION_52_13();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();
    }

    v26(v61, v6);
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8EE2324()
{
  OUTLINED_FUNCTION_196();
  v58 = v3;
  v61 = v4;
  v57 = v5;
  v7 = v6;
  v56 = v8;
  OUTLINED_FUNCTION_41_15();
  v9 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v62 = v13;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_216();
  v55 = v15;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_156_0();
  sub_1C906371C();

  v17 = sub_1C9063D1C();
  sub_1C906446C();
  OUTLINED_FUNCTION_83_5();
  v54 = v7;
  if (os_log_type_enabled(v17, v1))
  {
    OUTLINED_FUNCTION_57_11();
    v18 = OUTLINED_FUNCTION_33_15();
    v19 = OUTLINED_FUNCTION_55_9(v18);
    *v9 = 136315138;
    v20 = (v7)(v19);
    v26 = OUTLINED_FUNCTION_42_12(v20, v21, v22, v23, v24, v25);

    *(v9 + 4) = v26;
    _os_log_impl(&dword_1C8C9B000, v17, v1, "Counting over request: %s", v9, 0xCu);
    OUTLINED_FUNCTION_52_13();
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();
  }

  v27 = *(v11 + 8);
  v27(v2, v9);
  sub_1C8ED93F0(*(v56 + 16), *(v56 + 32), v57, v58, v61);
  if (v0)
  {
    sub_1C906371C();

    v28 = v0;
    v29 = sub_1C9063D1C();
    v30 = sub_1C906444C();

    if (os_log_type_enabled(v29, v30))
    {
      v59 = v27;
      v31 = OUTLINED_FUNCTION_164_2();
      v32 = OUTLINED_FUNCTION_84_4();
      v63 = OUTLINED_FUNCTION_18_19();
      *v31 = 136315394;
      v33 = v54();
      OUTLINED_FUNCTION_42_12(v33, v34, v35, v36, v37, v38);
      OUTLINED_FUNCTION_85_4();
      *(v31 + 4) = v11;
      *(v31 + 12) = 2112;
      v39 = v0;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v40;
      *v32 = v40;
      _os_log_impl(&dword_1C8C9B000, v29, v30, "Failed to count records using request: %s due to error: %@", v31, 0x16u);
      sub_1C8D3F0C4(v32, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_25_0();
      __swift_destroy_boxed_opaque_existential_1(v63);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();

      v59(v62, v9);
    }

    else
    {

      v52 = OUTLINED_FUNCTION_44_19();
      (v27)(v52);
    }

    swift_willThrow();
  }

  else
  {
    sub_1C906371C();

    v41 = sub_1C9063D1C();
    v42 = sub_1C906446C();

    if (os_log_type_enabled(v41, v42))
    {
      v60 = v27;
      v43 = OUTLINED_FUNCTION_164_2();
      v44 = OUTLINED_FUNCTION_18_19();
      OUTLINED_FUNCTION_55_9(v44);
      *v43 = 134218242;
      OUTLINED_FUNCTION_66_11();
      v45 = v54();
      v51 = OUTLINED_FUNCTION_42_12(v45, v46, v47, v48, v49, v50);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_1C8C9B000, v41, v42, "Counted: %ld records for request: %s", v43, 0x16u);
      OUTLINED_FUNCTION_52_13();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();

      v60(v55, v9);
    }

    else
    {

      v53 = OUTLINED_FUNCTION_44_19();
      (v27)(v53);
    }
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8EE2784()
{
  OUTLINED_FUNCTION_196();
  v65 = v3;
  v5 = v4;
  v62 = v7;
  v63 = v6;
  v64 = v8;
  OUTLINED_FUNCTION_41_15();
  v9 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_216();
  v66 = v17;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_155_0();
  sub_1C906371C();

  v19 = sub_1C9063D1C();
  sub_1C906446C();
  OUTLINED_FUNCTION_83_5();
  v60 = v5;
  if (os_log_type_enabled(v19, v1))
  {
    v61 = v9;
    v20 = OUTLINED_FUNCTION_57_11();
    v67 = OUTLINED_FUNCTION_18_19();
    *v20 = 136315138;
    v21 = v5();
    v27 = v15;
    v28 = OUTLINED_FUNCTION_42_12(v21, v22, v23, v24, v25, v26);

    *(v20 + 4) = v28;
    v15 = v27;
    _os_log_impl(&dword_1C8C9B000, v19, v1, "Iterating over request: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_25_0();
    v9 = v61;
    OUTLINED_FUNCTION_25_0();
  }

  v29 = *(v11 + 8);
  (v29)(v2, v9);
  v65(v63, v64, *(v62 + 16), *(v62 + 32));
  if (v0)
  {
    sub_1C906371C();

    v30 = v0;
    v31 = v15;
    v32 = sub_1C9063D1C();
    v33 = sub_1C906444C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_164_2();
      OUTLINED_FUNCTION_84_4();
      v68 = OUTLINED_FUNCTION_33_15();
      *v34 = 136315394;
      v35 = v60();
      v41 = OUTLINED_FUNCTION_42_12(v35, v36, v37, v38, v39, v40);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2112;
      v42 = v0;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v43;
      *v29 = v43;
      _os_log_impl(&dword_1C8C9B000, v32, v33, "Failed to iterate records using request: %s due to error: %@", v34, 0x16u);
      sub_1C8D3F0C4(v29, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_25_0();
      __swift_destroy_boxed_opaque_existential_1(v68);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();
    }

    (v29)(v31, v9);
    swift_willThrow();
  }

  else
  {
    sub_1C906371C();

    v44 = sub_1C9063D1C();
    sub_1C906446C();
    OUTLINED_FUNCTION_83_5();
    if (os_log_type_enabled(v44, v1))
    {
      v45 = OUTLINED_FUNCTION_57_11();
      v46 = OUTLINED_FUNCTION_18_19();
      v47 = OUTLINED_FUNCTION_55_9(v46);
      *v45 = 136315138;
      v48 = (v60)(v47);
      v54 = OUTLINED_FUNCTION_42_12(v48, v49, v50, v51, v52, v53);

      *(v45 + 4) = v54;
      OUTLINED_FUNCTION_45_18();
      _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
      OUTLINED_FUNCTION_52_13();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();
    }

    (v29)(v66, v9);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EE2D74(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v9 = *(v2 + 24);
  v10 = v4;
  return a2(v3, &v9, v5, v6, v7);
}

uint64_t sub_1C8EE2F8C()
{
  v0 = sub_1C9063CCC();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v25 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1C9063C8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C9063CBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C906340C();
  v29 = sub_1C906343C();
  v28 = v10;
  sub_1C906344C();
  v11 = sub_1C9063C9C();
  sub_1C9063CDC();
  v24 = sub_1C906452C();
  v12 = v11;
  result = sub_1C906461C();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  v21 = v9;
  v22 = v7;
  v23 = v3;
  if ((v28 & 1) == 0)
  {
    if (v29)
    {
      v14 = v11;
      v16 = v26;
      v15 = v27;
      v17 = v25;
LABEL_9:

      sub_1C9063D0C();

      if ((*(v16 + 88))(v17, v15) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v16 + 8))(v17, v15);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1C9063C6C();
      v12 = v14;
      _os_signpost_emit_with_name_impl(&dword_1C8C9B000, v14, v24, v20, v29, v18, v19, 2u);
      MEMORY[0x1CCA833A0](v19, -1, -1);
      v7 = v22;
      v3 = v23;
      v9 = v21;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (HIDWORD(v29))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v29 & 0xFFFFF800) != 0xD800)
  {
    v14 = v11;
    v16 = v26;
    v15 = v27;
    v17 = v25;
    if (v29 >> 16 <= 0x10)
    {
      v29 = &v30;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1C8EE3324(uint64_t a1, uint64_t *a2)
{
  sub_1C8D28184(&qword_1EC319330, &qword_1EC319338, &qword_1C909EDA0, MEMORY[0x1E699FF10]);
  result = sub_1C9062A0C();
  if (!v2)
  {
    return v4;
  }

  return result;
}

void *sub_1C8EE33D8(uint64_t a1, uint64_t *a2)
{
  sub_1C8D28184(&qword_1EDA62C70, &qword_1EC3192E0, &qword_1C909ED70, MEMORY[0x1E699FF10]);
  result = sub_1C9062A0C();
  if (!v2)
  {
    return v4;
  }

  return result;
}

void sub_1C8EE348C(void *a1@<X8>)
{
  sub_1C8EE1A5C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C8EE34E4(void *__src, uint64_t *a2, char a3, void *a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1C8ED89A4(__dst, *a2, a3 & 1);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

void sub_1C8EE3560(void *a1@<X8>)
{
  sub_1C8EE1A5C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C8EE35B8(void *__src, uint64_t *a2, char a3, void *a4)
{
  memcpy(v9, __src, sizeof(v9));
  result = sub_1C8ED89CC(v9, *a2, a3 & 1);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_1C8EE3634(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x61uLL);
  sub_1C8ED89F4(__dst, *a2, v3, v4, v5);
  return v6 & 1;
}

void *sub_1C8EE36C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_1C8EE3324(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

void sub_1C8EE3710(void *a1@<X8>)
{
  sub_1C8EE1A5C();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1C8EE3788(void *a1@<X8>)
{
  sub_1C8EE1EE8();
  if (!v1)
  {
    *a1 = v3;
  }
}

void *sub_1C8EE37E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_1C8EE33D8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1C8EE386C(void *a1@<X8>)
{
  sub_1C8EE1EE8();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1C8EE38E0(void *a1@<X8>)
{
  sub_1C8EE2324();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1C8EE39A8(void *a1@<X8>)
{
  sub_1C8EE1A5C();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1C8EE3A00(void *a1@<X8>)
{
  sub_1C8EE2324();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_1C8EE3AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3192A8;
  if (!qword_1EC3192A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3192A8);
  }

  return result;
}

unint64_t sub_1C8EE3B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3192C0;
  if (!qword_1EC3192C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3192C0);
  }

  return result;
}

unint64_t sub_1C8EE3CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319320;
  if (!qword_1EC319320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319320);
  }

  return result;
}

uint64_t sub_1C8EE3D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F18, &qword_1C907A7B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8EE3DD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_24_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8EE3E34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8EE3F9C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_257();
  v5(v4);
  OUTLINED_FUNCTION_24_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C8EE3FF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8EE4050(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_257();
  v5(v4);
  OUTLINED_FUNCTION_24_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_57_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_61_12()
{

  return sub_1C90620BC();
}

uint64_t OUTLINED_FUNCTION_78_8()
{
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;

  return type metadata accessor for TypeDefinitionQueryRequest(0);
}

void OUTLINED_FUNCTION_79_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

id OUTLINED_FUNCTION_80_5()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;

  return v2;
}

uint64_t OUTLINED_FUNCTION_82_6(uint64_t a1)
{

  return swift_allocObject();
}

int64x2_t static ContainerDefinitionQuery.local()@<Q0>(int64x2_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  result = vdupq_n_s64(0xA000000000000000);
  *a1 = result;
  a1[1] = result;
  a1[2].i64[0] = v2;
  a1[2].i64[1] = 0xA000000000000000;
  return result;
}

uint64_t ContainerDefinitionQuery.identifier.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t ContainerDefinitionQuery.origin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t ContainerDefinitionQuery.containerType.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t ContainerDefinitionQuery.sourceDevice.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
  return result;
}

uint64_t ContainerDefinitionQuery.version.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 40) = v2;
  return result;
}

int64x2_t static ContainerDefinitionQuery.all()@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0xA000000000000000);
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  return result;
}

uint64_t static ContainerDefinitionQuery.from(device:)@<X0>(uint64_t *a1@<X0>, int64x2_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  v6 = vdupq_n_s64(0xA000000000000000);
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = v6;
  a2[1] = v6;
  a2[2].i64[0] = v5;
  a2[2].i64[1] = 0xA000000000000000;
}

uint64_t ContainerDefinitionQuery.debugDescription.getter()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD000000000000026, 0x80000001C90CCA50);
  v6 = sub_1C8DFFCB8(v2);
  MEMORY[0x1CCA81A90](v6);

  MEMORY[0x1CCA81A90](0x3A6E696769726F20, 0xE900000000000020);
  v7 = sub_1C8E003A8(v1);
  MEMORY[0x1CCA81A90](v7);

  MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CCA80);
  v8 = sub_1C8E004C0(v4);
  MEMORY[0x1CCA81A90](v8);

  MEMORY[0x1CCA81A90](0x44656372756F7320, 0xEF203A6563697665);
  v9 = sub_1C8E00098(v3);
  MEMORY[0x1CCA81A90](v9);

  MEMORY[0x1CCA81A90](0x6E6F697372657620, 0xEA0000000000203ALL);
  v10 = sub_1C8DFFCB8(v5);
  MEMORY[0x1CCA81A90](v10);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_1C8EE464C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8EE4674(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8EE4674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA607F0;
  if (!qword_1EDA607F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA607F0);
  }

  return result;
}

uint64_t sub_1C8EE46CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 48))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C8EE4720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1C8EE4790(_OWORD *a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  (*(v6 + 16))(v9 - v8, a3, v4);
  v10 = sub_1C902E068();
  (*(v6 + 8))(a3, v4);
  return v10;
}

double sub_1C8EE48C4@<D0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C8D50178(__dst, &v4);
  return sub_1C8F28B4C(__dst, a2);
}

uint64_t sub_1C8EE4924(uint64_t a1)
{
  v20 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = (v1 + *(*v1 + 136));
  v10 = v9[1];
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;

  *&v23 = v15;
  *(&v23 + 1) = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v16 = *v1;
  v17 = v1 + *(*v1 + 144);
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  v21 = v18;
  v22 = v17;
  (*(v4 + 16))(v8, v1 + *(v16 + 152), v20);
  type metadata accessor for ContainerDefinitionQueryRequest(0);
  swift_allocObject();
  return sub_1C8EE4790(&v23, &v21, v8);
}

uint64_t sub_1C8EE4AC8(uint64_t a1)
{
  v2 = v1;
  v81 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313268, &unk_1C909F240);
  OUTLINED_FUNCTION_11();
  v79 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D38, &qword_1C90C6380);
  OUTLINED_FUNCTION_11();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C8, &unk_1C909F250);
  OUTLINED_FUNCTION_11();
  v85 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v66 - v20;
  v21 = *v2;
  v22 = (v2 + *(*v2 + 136));
  v23 = v22[2];
  v72 = v22[1];
  v73 = v23;
  v24 = v22[4];
  v75 = v22[3];
  v77 = v24;
  v78 = v22[5];
  v80 = v3;
  v25 = v11;
  if (qword_1EDA69688 != -1)
  {
    swift_once();
    v21 = *v2;
  }

  v26 = qword_1EDA6EB98;
  v69 = *(v21 + 152);
  v27 = sub_1C906206C();
  v68 = v2;
  v26(v27);

  v70 = *(v11 + 32);
  v70(v14, v81, v9);
  sub_1C8D28184(&qword_1EDA6B4E0, &qword_1EC3133C8, &unk_1C909F250, MEMORY[0x1E699FEB0]);
  v28 = v83;
  sub_1C9062A1C();
  v29 = sub_1C8D28184(&qword_1EDA62C10, &qword_1EC318D38, &qword_1C90C6380, MEMORY[0x1E699FF78]);
  sub_1C8D28184(&qword_1EDA6B4E8, &qword_1EC3133C8, &unk_1C909F250, MEMORY[0x1E699FEA8]);
  v67 = v29;
  sub_1C906295C();
  v30 = *(v85 + 8);
  v85 += 8;
  v76 = v30;
  v30(v18, v28);
  v31 = *(v25 + 8);
  v71 = v25 + 8;
  v66 = v31;
  (v31)(v14, v9);
  if (qword_1EDA69630 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDA6EAE0;
  v33 = sub_1C906206C();
  v32(v33);

  v70(v14, v81, v9);
  sub_1C8D28184(&qword_1EDA6B4D0, &qword_1EC313268, &unk_1C909F240, MEMORY[0x1E699FEE0]);
  v34 = v74;
  v35 = v80;
  sub_1C9062B1C();
  sub_1C906294C();
  v36 = v34;
  v37 = *(v79 + 8);
  v37(v36, v35);
  (v66)(v14, v9);
  if (qword_1EDA69668 != -1)
  {
    swift_once();
  }

  v38 = sub_1C9062E6C();
  __swift_project_value_buffer(v38, qword_1EDA6EB50);
  v39 = OUTLINED_FUNCTION_2_56();
  sub_1C8EE52DC(v39, v40, v72, v41);
  sub_1C8D5F498(v73, v42, v43, v44, v45, v46, v47, v48, v66, v67, v68, v69);
  if (qword_1EDA69658 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v38, qword_1EDA6EB20);
  OUTLINED_FUNCTION_3_44(v49);

  sub_1C8D5F6F4(v75, v50, v51, v52, v53, v54, v55, v56, v66, v67, v68, v69);
  if (qword_1EDA69670 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v38, qword_1EDA6EB68);
  OUTLINED_FUNCTION_3_44(v57);

  sub_1C8D5ED2C(v77, &v86);
  v58 = v86;
  if (qword_1EDA69640 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v38, qword_1EDA6EAF0);
  v59 = OUTLINED_FUNCTION_2_56();
  sub_1C8EE52DC(v59, v60, v58, v61);

  if (qword_1EDA69680 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v38, qword_1EDA6EB80);
  v62 = OUTLINED_FUNCTION_2_56();
  sub_1C8EE52DC(v62, v63, v78, v64);
  v37(v84, v35);
  return v76(v82, v83);
}

uint64_t sub_1C8EE523C()
{
  v0 = sub_1C902E46C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ContainerDefinitionQueryRequest(uint64_t a1)
{
  result = qword_1EDA60720;
  if (!qword_1EDA60720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8EE52DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v28 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D38, &qword_1C90C6380);
  OUTLINED_FUNCTION_11();
  v27 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_1C90627EC();
  OUTLINED_FUNCTION_11();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  v22 = sub_1C9062E6C();
  v30[3] = v22;
  v30[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, a2, v22);
  a4(v30, a3);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8EE55D8(v14);
  }

  else
  {
    (*(v17 + 32))(v21, v14, v15);
    v24 = v27;
    (*(v27 + 32))(v11, v28, v7);
    v29[3] = v15;
    v29[4] = MEMORY[0x1E699FE60];
    v25 = __swift_allocate_boxed_opaque_existential_1(v29);
    (*(v17 + 16))(v25, v21, v15);
    sub_1C8D28184(&qword_1EDA62C18, &qword_1EC318D38, &qword_1C90C6380, MEMORY[0x1E699FF70]);
    sub_1C906292C();
    (*(v24 + 8))(v11, v7);
    (*(v17 + 8))(v21, v15);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_1C8EE55D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C8EE564C()
{
  OUTLINED_FUNCTION_196();
  v25 = v2;
  v32 = v1;
  v4 = v3;
  v27 = v5;
  v6 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v28 = v8 - v7;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11();
  v30 = v9;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_142();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_278();
  v13 = sub_1C90643AC();
  if (v13)
  {
    v29 = v13;
    sub_1C906486C();
    sub_1C906487C();
    sub_1C906481C();
    OUTLINED_FUNCTION_278();
    sub_1C906439C();
    if ((v29 & 0x8000000000000000) == 0)
    {
      v24 = v4;
      v14 = 0;
      v26 = (v30 + 16);
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_1C90643EC();
        (*v26)(v0);
        v15(&v33, 0);
        v27(v0, v28);
        if (v32)
        {
          v20 = OUTLINED_FUNCTION_214_2();
          v21(v20);
          v22 = OUTLINED_FUNCTION_47_3();
          v23(v22);

          (*(v6 + 32))(v25, v28, v24);
          goto LABEL_10;
        }

        v32 = 0;
        v16 = OUTLINED_FUNCTION_214_2();
        v17(v16);
        sub_1C906485C();
        sub_1C90643BC();
        ++v14;
        if (v31 == v29)
        {
          v18 = OUTLINED_FUNCTION_47_3();
          v19(v18);
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1C906420C();
LABEL_10:
    OUTLINED_FUNCTION_198();
  }
}

__n128 EntityDefinition.init(identifier:properties:coercions:displayRepresentation:runtimeFlags:runtimeRequirements:systemProtocols:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = a4->n128_u64[0];
  v9 = a4->n128_u64[1];
  v10 = a4[2].n128_u64[0];
  v11 = *a5;
  *a8 = *a1;
  *(a8 + 8) = a2;
  *(a8 + 72) = a3;
  *(a8 + 80) = 0;
  *(a8 + 24) = v8;
  *(a8 + 32) = v9;
  result = a4[1];
  *(a8 + 40) = result;
  *(a8 + 88) = v11;
  *(a8 + 16) = a6;
  *(a8 + 56) = v10;
  *(a8 + 64) = a7;
  return result;
}

__n128 QueryDefinition.init(identifier:templates:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *a3 = *a1;
  *(a3 + 24) = v3;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  v5 = MEMORY[0x1E69E7CC0];
  *(a3 + 56) = *(a2 + 48);
  *(a3 + 64) = v5;
  return result;
}

void __swiftcall CodableDefinition.init(identifier:displayRepresentation:)(ToolKit::CodableDefinition *__return_ptr retstr, Swift::String identifier, ToolKit::TypeDisplayRepresentation *displayRepresentation)
{
  countAndFlagsBits = displayRepresentation->name._countAndFlagsBits;
  object = displayRepresentation->name._object;
  rawValue = displayRepresentation->synonyms._rawValue;
  retstr->identifier = identifier;
  retstr->displayRepresentation.name._countAndFlagsBits = countAndFlagsBits;
  retstr->displayRepresentation.name._object = object;
  retstr->displayRepresentation.numericFormat = displayRepresentation->numericFormat;
  retstr->displayRepresentation.synonyms._rawValue = rawValue;
}

void EnumerationDefinition.init(identifier:cases:kind:systemProtocols:runtimeRequirements:displayRepresentation:)(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = a6->n128_u64[0];
  v9 = a6->n128_u64[1];
  *a7 = *a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = v8;
  *(a7 + 48) = v9;
  OUTLINED_FUNCTION_192_6(a7, a6[1]);
}

uint64_t static QueryDefinition.PredicateTemplates.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  v113 = *(a1 + 13);
  v114 = *(a1 + 12);
  v109 = *(a1 + 24);
  v110 = *(a1 + 16);
  v111 = *(a1 + 32);
  v112 = *(a1 + 40);
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  v9 = *(a2 + 11);
  v10 = *(a2 + 12);
  v11 = *(a2 + 13);
  v108 = *(a2 + 16);
  v107 = *(a2 + 24);
  v104 = *(a1 + 48);
  v105 = *(a2 + 32);
  v106 = *(a2 + 40);
  v103 = *(a2 + 48);
  sub_1C8CEB7E4();
  result = OUTLINED_FUNCTION_274();
  if ((v14 & 1) != 0 && ((v2 ^ v6) & 1) == 0 && ((v3 ^ v7) & 1) == 0 && ((v4 ^ v8) & 1) == 0 && ((v5 ^ v9) & 1) == 0 && ((v114 ^ v10) & 1) == 0 && ((v113 ^ v11) & 1) == 0)
  {
    if (v109)
    {
      if (v107)
      {
        v15 = v110 == v108 && v109 == v107;
        if (v15 || (OUTLINED_FUNCTION_249(), (sub_1C9064C2C() & 1) != 0))
        {
          if (v111 != v105 || v112 != v106)
          {
            OUTLINED_FUNCTION_92_5();
            v17 = sub_1C9064C2C();
            v18 = OUTLINED_FUNCTION_4_40();
            sub_1C8D16DD0(v18, v19, v20, v21, v22);
            v23 = OUTLINED_FUNCTION_31_18();
            sub_1C8D16DD0(v23, v24, v25, v26, v27);
            v28 = OUTLINED_FUNCTION_4_40();
            sub_1C8D16DD0(v28, v29, v30, v31, v32);
            v33 = OUTLINED_FUNCTION_31_18();
            sub_1C8D16E14(v33, v34);

            v35 = OUTLINED_FUNCTION_4_40();
            sub_1C8D16E14(v35, v36);
            result = 0;
            if ((v17 & 1) == 0)
            {
              return result;
            }

            goto LABEL_29;
          }

          v61 = OUTLINED_FUNCTION_4_40();
          sub_1C8D16DD0(v61, v62, v63, v64, v65);
          v66 = OUTLINED_FUNCTION_211();
          sub_1C8D16DD0(v66, v67, v111, v112, v68);
          v69 = OUTLINED_FUNCTION_4_40();
          sub_1C8D16DD0(v69, v70, v71, v72, v73);
          v74 = OUTLINED_FUNCTION_211();
          sub_1C8D16E14(v74, v75);

LABEL_28:
          v81 = OUTLINED_FUNCTION_4_40();
          sub_1C8D16E14(v81, v82);
LABEL_29:
          v83 = v103 & 0xF000000000000007;
          if ((~v104 & 0xF000000000000007) != 0)
          {
            if (v83 != 0xF000000000000007)
            {
              v116 = v104;
              v115 = v103;
              OUTLINED_FUNCTION_231_3();

              static TypeInstance.== infix(_:_:)(&v116, &v115);
              v102 = v101;

              sub_1C8CD0FB0(v104);
              return (v102 & 1) != 0;
            }

            OUTLINED_FUNCTION_231_3();
          }

          else
          {
            sub_1C8CD1784(v104);
            sub_1C8CD1784(v103);
            if (v83 == 0xF000000000000007)
            {
              sub_1C8CD0FB0(v104);
              return 1;
            }
          }

          sub_1C8CD0FB0(v104);
          sub_1C8CD0FB0(v103);
          return 0;
        }

        v84 = OUTLINED_FUNCTION_4_40();
        sub_1C8D16DD0(v84, v85, v86, v87, v88);
        v89 = OUTLINED_FUNCTION_31_18();
        sub_1C8D16DD0(v89, v90, v91, v92, v93);
        v94 = OUTLINED_FUNCTION_4_40();
        sub_1C8D16DD0(v94, v95, v96, v97, v98);
        v99 = OUTLINED_FUNCTION_31_18();
        sub_1C8D16E14(v99, v100);

        v59 = OUTLINED_FUNCTION_4_40();
LABEL_25:
        sub_1C8D16E14(v59, v60);
        return 0;
      }

      v42 = OUTLINED_FUNCTION_4_40();
      sub_1C8D16DD0(v42, v43, v44, v45, v46);
      OUTLINED_FUNCTION_92_5();
      sub_1C8D16DD0(v47, v48, v49, v50, v51);
      v52 = OUTLINED_FUNCTION_4_40();
      sub_1C8D16DD0(v52, v53, v54, v55, v56);
    }

    else
    {
      sub_1C8D16DD0(v110, 0, v111, v112, v13);
      if (!v107)
      {
        OUTLINED_FUNCTION_92_5();
        sub_1C8D16DD0(v76, v77, v78, v79, v80);
        goto LABEL_28;
      }

      v37 = OUTLINED_FUNCTION_31_18();
      sub_1C8D16DD0(v37, v38, v39, v40, v41);
    }

    v57 = OUTLINED_FUNCTION_4_40();
    sub_1C8D16E14(v57, v58);
    v59 = OUTLINED_FUNCTION_31_18();
    goto LABEL_25;
  }

  return result;
}

uint64_t EntityDefinition.fetchSampleInvocations(cacheResults:)()
{
  OUTLINED_FUNCTION_166_3();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v0;
  v4 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v5 = objc_opt_self();

  v6 = [v5 sharedProvider];
  v7 = sub_1C9063EBC();

  v8 = [v6 examplePhrasesForBundleIdentifier:v7 useCache:v3 & 1];

  sub_1C8D72FC8();
  sub_1C906419C();

  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_147_2();
  static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_228_4();

  return v4;
}

void *CoercionDefinition.init(type:direction:)@<X0>(void *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t QueryDefinition.PredicateTemplates.fetchSampleInvocations(cacheResults:)(char a1)
{
  if (!*(v1 + 24))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v1 + 16);
  v4 = [objc_opt_self() sharedProvider];
  v5 = sub_1C9063EBC();
  v6 = [v4 examplePhrasesForBundleIdentifier:v5 useCache:a1 & 1];

  sub_1C8D72FC8();
  sub_1C906419C();

  OUTLINED_FUNCTION_147_2();
  static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_228_4();
  return v3;
}

unint64_t TypeDefinition.typeIdentifier.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  switch(*(v1 + 96))
  {
    case 1:
    case 2:
    case 3:
      *a1 = v2;
      goto LABEL_8;
    case 4:
      v4 = *(v1 + 8);
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = v4;
      *a1 = v5 | 0x8000000000000000;

      break;
    case 5:
      *a1 = *(v1 + 32);
LABEL_8:

      break;
    default:
      result = swift_allocObject();
      *(result + 16) = v2;
      *a1 = result;
      break;
  }

  return result;
}

uint64_t EntityPropertyDefinition.init(id:displayName:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = v6;
  return result;
}

void QueryDefinition.PredicateTemplates.init(comparison:stringSearch:idSearch:searchableItem:all:valid:suggested:valueSearch:metadata:)(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10)
{
  v10 = *a8;
  *a9 = a1;
  *(a9 + 8) = (a2 & 1) == 0;
  *(a9 + 9) = (a3 & 1) == 0;
  *(a9 + 10) = (a4 & 1) == 0;
  *(a9 + 11) = (a5 & 1) == 0;
  *(a9 + 12) = (a6 & 1) == 0;
  *(a9 + 13) = (a7 & 1) == 0;
  v11 = a10[1];
  *(a9 + 16) = *a10;
  *(a9 + 32) = v11;
  *(a9 + 48) = v10;
  OUTLINED_FUNCTION_101_5();
}

void __swiftcall TypeDisplayRepresentation.init(name:numericFormat:synonyms:)(ToolKit::TypeDisplayRepresentation *__return_ptr retstr, Swift::String name, Swift::String_optional numericFormat, Swift::OpaquePointer synonyms)
{
  retstr->name = name;
  retstr->numericFormat = numericFormat;
  retstr->synonyms = synonyms;
}

uint64_t TypeDefinition.systemProtocols.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = MEMORY[0x1E69E7CC0];
  switch(*(v5 + 96))
  {
    case 1:
    case 2:

      break;
    default:
      return result;
  }

  return result;
}

void static TypeDisplayRepresentation.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[2];
  v5 = v3[3];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (!v8 && (sub_1C9064C2C() & 1) == 0)
  {
    return;
  }

  if (!v5)
  {
    if (v6)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    v9 = v4 == v7 && v5 == v6;
    if (v9 || (sub_1C9064C2C() & 1) != 0)
    {
LABEL_13:
      v10 = OUTLINED_FUNCTION_94();

      sub_1C8CEB10C(v10, v11);
    }
  }
}

uint64_t EnumerationCaseDefinition.init(id:displayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  OUTLINED_FUNCTION_143_3();

  return sub_1C8D60F48(a3, a4 + v6);
}

uint64_t TypeDefinition.displayRepresentation.getter@<X0>(uint64_t *a5@<X8>)
{
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);
  result = *(v5 + 40);
  v9 = *(v5 + 48);
  v10 = *(v5 + 56);
  switch(*(v5 + 96))
  {
    case 1:
      *a5 = v7;
      a5[1] = v6;
      a5[2] = result;
      a5[3] = v9;
      a5[4] = v10;

      goto LABEL_6;
    case 2:
      v11 = *(v5 + 64);
      v12 = *(v5 + 72);
      *a5 = result;
      a5[1] = v9;
      a5[2] = v10;
      a5[3] = v11;
      a5[4] = v12;

      goto LABEL_6;
    case 4:
      *a5 = *(v5 + 16);
      a5[1] = v7;
      a5[2] = v6;
      a5[3] = result;
      a5[4] = v9;

LABEL_6:

      break;
    default:
      a5[4] = 0;
      *a5 = 0u;
      *(a5 + 1) = 0u;
      break;
  }

  return result;
}

uint64_t TypeDefinition.coercions.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5 + 96) == 1)
  {
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void CoercionDefinition.wrappedUTTypes.getter()
{
  OUTLINED_FUNCTION_164();
  v24[17] = *v0;
  TypeInstance.restrictionContexts.getter();
  v2 = v1;
  v3 = v1 + 56;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(v2 + 48) + 136 * (v11 | (v8 << 6)));
    memcpy(__dst, v12, sizeof(__dst));
    memmove(v24, v12, 0x88uLL);
    if (sub_1C8CA638C(v24) == 2)
    {
      v13 = *sub_1C8CA62B8(v24);
      memcpy(v22, __dst, sizeof(v22));
      sub_1C8CA62B8(v22);
    }

    else
    {
      sub_1C8CA62B8(v24);
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = *(v13 + 16);
    v15 = *(v9 + 16);
    if (__OFADD__(v15, v14))
    {
      goto LABEL_25;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v16 = *(v9 + 24) >> 1, v16 < v15 + v14))
    {
      sub_1C8CACA10();
      v9 = v17;
      v16 = *(v17 + 24) >> 1;
    }

    if (*(v13 + 16))
    {
      v18 = v16 - *(v9 + 16);
      sub_1C9063C4C();
      if (v18 < v14)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v14)
      {
        v19 = *(v9 + 16);
        v20 = __OFADD__(v19, v14);
        v21 = v19 + v14;
        if (v20)
        {
          goto LABEL_28;
        }

        *(v9 + 16) = v21;
      }
    }

    else
    {

      if (v14)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      OUTLINED_FUNCTION_163();
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_9;
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
}

unint64_t static TypeDefinition.entity(builtin:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  OUTLINED_FUNCTION_140_4(v4 | 0x2000000000000000);
  *(a2 + 96) = 1;

  return sub_1C8D3F120(v3);
}

void EntityDefinition.init(builtin:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_140_4(v2 | 0x2000000000000000);
}

uint64_t static TypeDefinition.entity(primitive:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = OUTLINED_FUNCTION_138_5(v4, MEMORY[0x1E69E7CC0]);
  *(a2 + 96) = 1;
  return result;
}

uint64_t EntityDefinition.init(primitive:)(char *a1)
{
  v1 = *a1;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  return OUTLINED_FUNCTION_138_5(v2, MEMORY[0x1E69E7CC0]);
}

void static TypeDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  memcpy(__dst, v2, 0x61uLL);
  memcpy(v257, v1, 0x61uLL);
  memcpy(v258, v3, 0x61uLL);
  memcpy(v259, v1, sizeof(v259));
  v11 = __dst[0];
  v12 = *&__dst[40];
  v13 = *&__dst[48];
  switch(__dst[96])
  {
    case 1:
      if (LOBYTE(v257[12]) == 1)
      {
        OUTLINED_FUNCTION_55_10();
        v135 = OUTLINED_FUNCTION_159_5(v127, v128, v129, v130, v131, v132, v133, v134, v224, v225, v226, v227, v228, v229, v230, v231, v232, v3[9], v3[10], v3[11], v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
        v143 = OUTLINED_FUNCTION_160_6(v135, v136, v137, v138, v139, v140, v141, v142, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
        v151 = OUTLINED_FUNCTION_159_5(v143, v144, v145, v146, v147, v148, v149, v150, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
        OUTLINED_FUNCTION_160_6(v151, v152, v153, v154, v155, v156, v157, v158, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
        static EntityDefinition.== infix(_:_:)(&v224, v1);
        goto LABEL_14;
      }

      v214 = OUTLINED_FUNCTION_194_5(*&__dst[40], v4, v5, v6, v7, v8, v9, v10, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);
      v222 = OUTLINED_FUNCTION_216_3(v214, v215, v216, v217, v218, v219, v220, v221, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243);
      v12 = sub_1C8EF7CF4(v222, v223);
      goto LABEL_20;
    case 2:
      if (LOBYTE(v257[12]) == 2)
      {
        *&v61 = OUTLINED_FUNCTION_55_10().n128_u64[0];
        v70 = OUTLINED_FUNCTION_159_5(v62, v63, v64, v65, v66, v67, v68, v69, v224, v225, v226, v227, v228, v229, v230, v231, v232, v3[9], v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], v61);
        v78 = OUTLINED_FUNCTION_160_6(v70, v71, v72, v73, v74, v75, v76, v77, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
        v86 = OUTLINED_FUNCTION_159_5(v78, v79, v80, v81, v82, v83, v84, v85, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
        OUTLINED_FUNCTION_160_6(v86, v87, v88, v89, v90, v91, v92, v93, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
        static EnumerationDefinition.== infix(_:_:)(&v224, v1);
        goto LABEL_14;
      }

      v194 = OUTLINED_FUNCTION_194_5(*&__dst[40], v4, v5, v6, v7, v8, v9, v10, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);
      v202 = OUTLINED_FUNCTION_216_3(v194, v195, v196, v197, v198, v199, v200, v201, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243);
      v12 = sub_1C8EF7CBC(v202, v203);
      goto LABEL_20;
    case 3:
      if (LOBYTE(v257[12]) == 3)
      {
        *&v94 = OUTLINED_FUNCTION_55_10().n128_u64[0];
        v103 = OUTLINED_FUNCTION_159_5(v95, v96, v97, v98, v99, v100, v101, v102, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], v94);
        v111 = OUTLINED_FUNCTION_160_6(v103, v104, v105, v106, v107, v108, v109, v110, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
        v119 = OUTLINED_FUNCTION_159_5(v111, v112, v113, v114, v115, v116, v117, v118, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
        OUTLINED_FUNCTION_160_6(v119, v120, v121, v122, v123, v124, v125, v126, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
        static QueryDefinition.== infix(_:_:)(&v224, v1);
        goto LABEL_14;
      }

      v204 = OUTLINED_FUNCTION_194_5(*&__dst[40], v4, v5, v6, v7, v8, v9, v10, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);
      v212 = OUTLINED_FUNCTION_216_3(v204, v205, v206, v207, v208, v209, v210, v211, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243);
      v12 = sub_1C8EF7C84(v212, v213);
      goto LABEL_20;
    case 4:
      if (LOBYTE(v257[12]) == 4)
      {
        v25 = OUTLINED_FUNCTION_215_2();
        v37 = OUTLINED_FUNCTION_159_5(v26, v27, v28, v29, v30, v31, v32, v33, v224, v225, v226, v227, v228, v229, v13, v231, v232, v233, v234, v235, v25.n128_i64[0], v25.n128_i64[1], v36, v35, v257[4], v257[5], v34, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
        v45 = OUTLINED_FUNCTION_160_6(v37, v38, v39, v40, v41, v42, v43, v44, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
        v53 = OUTLINED_FUNCTION_159_5(v45, v46, v47, v48, v49, v50, v51, v52, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
        OUTLINED_FUNCTION_160_6(v53, v54, v55, v56, v57, v58, v59, v60, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
        static CodableDefinition.== infix(_:_:)(&v224);
        goto LABEL_14;
      }

      goto LABEL_20;
    case 5:
      if (LOBYTE(v257[12]) == 5)
      {
        v159 = OUTLINED_FUNCTION_215_2();
        v170 = OUTLINED_FUNCTION_159_5(v160, v161, v162, v163, v164, v165, v166, v167, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v159.n128_i64[0], v159.n128_i64[1], v169, v168, v257[4], v257[5], v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
        v178 = OUTLINED_FUNCTION_160_6(v170, v171, v172, v173, v174, v175, v176, v177, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
        v186 = OUTLINED_FUNCTION_159_5(v178, v179, v180, v181, v182, v183, v184, v185, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
        OUTLINED_FUNCTION_160_6(v186, v187, v188, v189, v190, v191, v192, v193, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
        static DynamicEnumerationDefinition.== infix(_:_:)(&v224);
LABEL_14:
        sub_1C8D16D78(v258, &qword_1EC319370, &qword_1C909F278);
        sub_1C8D90DB0(v257);
        sub_1C8D90DB0(__dst);
      }

      else
      {

LABEL_20:
        OUTLINED_FUNCTION_159_5(v12, v4, v5, v6, v7, v8, v9, v10, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
        sub_1C8D16D78(v258, &qword_1EC319370, &qword_1C909F278);
      }

LABEL_21:
      OUTLINED_FUNCTION_163();
      return;
    default:
      if (LOBYTE(v257[12]))
      {
        goto LABEL_20;
      }

      v14 = v257[0];
      v15 = sub_1C8D16D78(v258, &qword_1EC319370, &qword_1C909F278);
      LOBYTE(v224) = v14;
      v23 = OUTLINED_FUNCTION_216_3(v15, v16, v17, v18, v19, v20, v21, v22, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v11);
      static TypeIdentifier.PrimitiveTypeIdentifier.== infix(_:_:)(v23, v24);
      goto LABEL_21;
  }
}

BOOL static EntityDefinition.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  v26 = a1[4];
  v27 = a1[3];
  v24 = a1[6];
  v25 = a1[5];
  v22 = a1[8];
  v23 = a1[7];
  v18 = a1[10];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v20 = a1[9];
  v21 = a2[8];
  v19 = a2[9];
  v16 = a1[11];
  v17 = a2[10];
  v15 = a2[11];
  v29[0] = *a1;
  v28[0] = v3;

  v10 = static TypeIdentifier.== infix(_:_:)(v29, v28);

  if (v10 & 1) != 0 && (sub_1C8CEADC4(v2, v4))
  {
    OUTLINED_FUNCTION_114_0();
    if (sub_1C8CEB710())
    {
      v29[0] = v27;
      v29[1] = v26;
      v29[2] = v25;
      v29[3] = v24;
      v29[4] = v23;
      v28[0] = v5;
      v28[1] = v6;
      v28[2] = v7;
      v28[3] = v8;
      v28[4] = v9;
      static TypeDisplayRepresentation.== infix(_:_:)(v29);
      if (v11)
      {
        sub_1C8CEC1A8(v22, v21);
        if (v12 & 1) != 0 && (sub_1C8CEC1E8(v20, v19))
        {
          if (v18)
          {
            if (v17)
            {
              sub_1C8CEB4A0(v18, v17);
              if (v13)
              {
                return v16 == v15;
              }
            }
          }

          else if (!v17)
          {
            return v16 == v15;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t static EnumerationDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v20 = *(a1 + 48);
  v21 = *(a1 + 40);
  v18 = *(a1 + 64);
  v19 = *(a1 + 56);
  v3 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a1 + 72);
  v14 = *(a2 + 64);
  v15 = *(a2 + 56);
  v13 = *(a2 + 72);
  v23[0] = *a1;
  v22[0] = v3;

  v6 = static TypeIdentifier.== infix(_:_:)(v23, v22);

  if (v6 & 1) != 0 && (sub_1C8CEA9F4(), (v7) && (sub_1C8E5A138(v2, v4) & 1) != 0 && (v8 = OUTLINED_FUNCTION_276(), sub_1C8CEC1A8(v8, v9), (v10) && (OUTLINED_FUNCTION_145(), (sub_1C8CEB710()))
  {
    v23[0] = v21;
    v23[1] = v20;
    v23[2] = v19;
    v23[3] = v18;
    v23[4] = v17;
    v22[0] = v5;
    v22[1] = v16;
    v22[2] = v15;
    v22[3] = v14;
    v22[4] = v13;
    static TypeDisplayRepresentation.== infix(_:_:)(v23);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t static QueryDefinition.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v23 = *(a1 + 1);
  v24 = v3;
  v25 = *(a1 + 5);
  v26 = a1[7];
  v30 = a2[7];
  v4 = *a2;
  v5 = *(a2 + 5);
  v6 = *(a2 + 3);
  v27 = *(a2 + 1);
  v28 = v6;
  v29 = v5;
  *&v21[0] = v2;
  *&v19[0] = v4;

  LOBYTE(v2) = static TypeIdentifier.== infix(_:_:)(v21, v19);

  if (v2 & 1) != 0 && (v15 = v23, v16 = v24, v17 = v25, v18 = v26, v11 = v27, v12 = v28, v13 = v29, v14 = v30, sub_1C8D3A7FC(&v23, v10), sub_1C8D3A7FC(&v27, v10), v7 = static QueryDefinition.PredicateTemplates.== infix(_:_:)(&v15, &v11), v19[0] = v11, v19[1] = v12, v19[2] = v13, v20 = v14, sub_1C8D3ABC4(v19), v21[0] = v15, v21[1] = v16, v21[2] = v17, v22 = v18, sub_1C8D3ABC4(v21), (v7))
  {
    OUTLINED_FUNCTION_94();
    sub_1C8CEBA80();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t static CodableDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  v8 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (v8 || (sub_1C9064C2C(), v9 = OUTLINED_FUNCTION_274(), (v10 & 1) != 0))
  {
    v12[0] = v4;
    v12[1] = v5;
    v13 = v6;
    v14 = v7;
    static TypeDisplayRepresentation.== infix(_:_:)(v12);
  }

  return v9 & 1;
}

uint64_t static DynamicEnumerationDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v2[2];
  v9 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v12 = v1 == *v2 && v3[1] == v2[1];
  if (v12 || (sub_1C9064C2C()) && (v4 == v8 ? (v13 = v5 == v9) : (v13 = 0), (v13 || (OUTLINED_FUNCTION_94(), OUTLINED_FUNCTION_164_5(), (sub_1C9064C2C())) && (, v14 = , v22 = OUTLINED_FUNCTION_106(v14, v15, v16, v17, v18, v19, v20, v21, v11, v6), v24 = static TypeIdentifier.== infix(_:_:)(v22, v23), v32 = OUTLINED_FUNCTION_156_4(v24, v25, v26, v27, v28, v29, v30, v31, v67), OUTLINED_FUNCTION_344(v32, v33, v34, v35, v36, v37, v38, v39, v68, v71), (v4)))
  {

    v48 = OUTLINED_FUNCTION_106(v40, v41, v42, v43, v44, v45, v46, v47, v10, v7);
    v50 = static TypeIdentifier.== infix(_:_:)(v48, v49);
    v58 = OUTLINED_FUNCTION_156_4(v50, v51, v52, v53, v54, v55, v56, v57, v69);
    OUTLINED_FUNCTION_344(v58, v59, v60, v61, v62, v63, v64, v65, v70, v72);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1C8EE7088(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766974696D697270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746172656D756E65 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C6261646F63 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000012 && 0x80000001C90C9B80 == a2)
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

unint64_t sub_1C8EE727C(char a1)
{
  result = 0x766974696D697270;
  switch(a1)
  {
    case 1:
      result = 0x797469746E65;
      break;
    case 2:
      result = 0x746172656D756E65;
      break;
    case 3:
      result = 0x7972657571;
      break;
    case 4:
      result = 0x656C6261646F63;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EE7338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF7E28(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EE7374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF7E28(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EE73B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EE7088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EE73E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF7D2C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EE741C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF7D2C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EE7458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF7D80(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EE7494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF7D80(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EE74D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8020(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EE750C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8020(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EE7548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF7F78(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EE7584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF7F78(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EE75C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF80C8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EE75FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF80C8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EE7638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF7ED0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EE7674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF7ED0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypeDefinition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319378, &qword_1C909F280);
  OUTLINED_FUNCTION_4_22(v28, &a17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319380, &qword_1C909F288);
  OUTLINED_FUNCTION_4_22(v31, &a14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319388, &qword_1C909F290);
  OUTLINED_FUNCTION_4_22(v34, &a11);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319390, &qword_1C909F298);
  OUTLINED_FUNCTION_4_22(v37, &v87);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319398, &qword_1C909F2A0);
  OUTLINED_FUNCTION_4_22(v40, &v85);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_142();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3193A0, &qword_1C909F2A8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3193A8, &qword_1C909F2B0);
  OUTLINED_FUNCTION_11();
  v84 = v44;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_72();
  v46 = *(v25 + 96);
  v47 = *(v27 + 24);
  v48 = OUTLINED_FUNCTION_276();
  v50 = OUTLINED_FUNCTION_217(v48, v49);
  sub_1C8EF7D2C(v50, v51, v52);
  OUTLINED_FUNCTION_200();
  v53 = sub_1C9064E1C();
  switch(v46)
  {
    case 1:
      sub_1C8EF8020(v53, v54, v55);
      sub_1C9064ACC();
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_98_6();
      v85 = *(v25 + 72);
      v86 = *(v25 + 88);
      sub_1C8EF8074(v72, v73, v74);
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296();
      v75(v20);
      v76 = OUTLINED_FUNCTION_47_3();
      v78 = v84;
      goto LABEL_12;
    case 2:
      sub_1C8EF7F78(v53, v54, v55);
      OUTLINED_FUNCTION_70_5(&type metadata for TypeDefinition.EnumerationCodingKeys);
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_98_6();
      *&v85 = *(v25 + 72);
      sub_1C8EF7FCC(v66, v67, v68);
      OUTLINED_FUNCTION_135();
      sub_1C9064B8C();
      goto LABEL_6;
    case 3:
      sub_1C8EF7ED0(v53, v54, v55);
      OUTLINED_FUNCTION_70_5(&type metadata for TypeDefinition.QueryCodingKeys);
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_98_6();
      sub_1C8EF7F24(v69, v70, v71);
      OUTLINED_FUNCTION_135();
      sub_1C9064B8C();
LABEL_6:
      v60 = OUTLINED_FUNCTION_45();
      goto LABEL_10;
    case 4:
      sub_1C8EF7E28(v53, v54, v55);
      v62 = v82;
      OUTLINED_FUNCTION_70_5(&type metadata for TypeDefinition.CodableCodingKeys);
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_98_6();
      sub_1C8EF7E7C(v63, v64, v65);
      OUTLINED_FUNCTION_135();
      sub_1C9064B8C();
      goto LABEL_9;
    case 5:
      sub_1C8EF7D80(v53, v54, v55);
      v62 = v83;
      OUTLINED_FUNCTION_70_5(&type metadata for TypeDefinition.DynamicEnumerationCodingKeys);
      OUTLINED_FUNCTION_9_30();
      sub_1C8EF7DD4(v79, v80, v81);
      OUTLINED_FUNCTION_135();
      sub_1C9064B8C();
LABEL_9:
      OUTLINED_FUNCTION_296();
      v60 = v62;
LABEL_10:
      v61 = v47;
      break;
    default:
      sub_1C8EF80C8(v53, v54, v55);
      v56 = OUTLINED_FUNCTION_70_5(&type metadata for TypeDefinition.PrimitiveCodingKeys);
      sub_1C8CA0FC8(v56, v57, v58);
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296();
      v60 = v22;
      v61 = v42;
      break;
  }

  v59(v60, v61);
  v76 = OUTLINED_FUNCTION_30();
  v78 = v20;
LABEL_12:
  v77(v76, v78);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void TypeDefinition.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 64);
  switch(*(v1 + 96))
  {
    case 1:
      MEMORY[0x1CCA82810](1);
      OUTLINED_FUNCTION_141_7();
      EntityDefinition.hash(into:)();
      goto LABEL_12;
    case 2:
      MEMORY[0x1CCA82810](2);
      v6 = OUTLINED_FUNCTION_141_7();
      TypeIdentifier.hash(into:)(v6);
      OUTLINED_FUNCTION_117();
      sub_1C8D0225C();
      sub_1C8D2FEF0();
      sub_1C8D030C8(a1, v2);
      OUTLINED_FUNCTION_145();
      sub_1C8D02E34();
      sub_1C9063FBC();
      if (v4)
      {
        OUTLINED_FUNCTION_284();
        sub_1C9063FBC();
      }

      else
      {
        OUTLINED_FUNCTION_283();
      }

      goto LABEL_16;
    case 3:
      MEMORY[0x1CCA82810](3);
      v7 = OUTLINED_FUNCTION_141_7();
      TypeIdentifier.hash(into:)(v7);
      v8 = OUTLINED_FUNCTION_141_7();
      QueryDefinition.PredicateTemplates.hash(into:)(v8);
      OUTLINED_FUNCTION_118();
      OUTLINED_FUNCTION_222_4();

      sub_1C8D03AE4();
      return;
    case 4:
      MEMORY[0x1CCA82810](4);
      OUTLINED_FUNCTION_253();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_210();
      sub_1C9063FBC();
      if (v3)
      {
        OUTLINED_FUNCTION_284();
        OUTLINED_FUNCTION_145();
        sub_1C9063FBC();
      }

      else
      {
        OUTLINED_FUNCTION_283();
      }

      OUTLINED_FUNCTION_118();
LABEL_16:
      OUTLINED_FUNCTION_222_4();

      sub_1C8CC1590();
      return;
    case 5:
      MEMORY[0x1CCA82810](5);
      OUTLINED_FUNCTION_253();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_210();
      sub_1C9063FBC();
      v10 = OUTLINED_FUNCTION_141_7();
      TypeIdentifier.hash(into:)(v10);
      v11 = OUTLINED_FUNCTION_141_7();
      TypeIdentifier.hash(into:)(v11);
      goto LABEL_12;
    default:
      MEMORY[0x1CCA82810](0);
      OUTLINED_FUNCTION_141_7();
      TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
LABEL_12:
      OUTLINED_FUNCTION_222_4();
      return;
  }
}

uint64_t TypeDefinition.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  TypeDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

void TypeDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  a10 = v20;
  v26 = v25;
  v129 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3193C0, &qword_1C909F2B8);
  OUTLINED_FUNCTION_4_22(v28, &a10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3193C8, &qword_1C909F2C0);
  OUTLINED_FUNCTION_4_22(v31, &v139);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_97();
  v128 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3193D0, &qword_1C909F2C8);
  OUTLINED_FUNCTION_4_22(v34, &a9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_97();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3193D8, &qword_1C909F2D0);
  OUTLINED_FUNCTION_4_22(v36, &v138);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3193E0, &qword_1C909F2D8);
  OUTLINED_FUNCTION_4_22(v39, &v137 + 8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_73();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3193E8, &qword_1C909F2E0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_86();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3193F0, &unk_1C909F2E8);
  OUTLINED_FUNCTION_11();
  v45 = v44;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15_0();
  v130 = v26;
  v47 = OUTLINED_FUNCTION_217(v26, v26[3]);
  sub_1C8EF7D2C(v47, v48, v49);
  OUTLINED_FUNCTION_103_0();
  v50 = a10;
  sub_1C9064DEC();
  if (!v50)
  {
    a10 = v45;
    v51 = sub_1C9064A9C();
    v52 = sub_1C8CB8914(v51, 0);
    if (v54 != v53 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      v127 = v21;
      OUTLINED_FUNCTION_282_1();
      if (v59 == v60)
      {
        __break(1u);
        return;
      }

      v61 = v43;
      v62 = *(v58 + v56);
      sub_1C8CB891C(v56 + 1, v55, v52, v58, v56, v57);
      v64 = v63;
      v66 = v65;
      v67 = swift_unknownObjectRelease();
      if (v64 == v66 >> 1)
      {
        v70 = v62;
        switch(v62)
        {
          case 1:
            LOBYTE(v131[0]) = 1;
            sub_1C8EF8020(v67, v68, v69);
            v88 = OUTLINED_FUNCTION_40_19(&type metadata for TypeDefinition.EntityCodingKeys, v131);
            sub_1C8EF826C(v88, v94, v95);
            OUTLINED_FUNCTION_105_4(&type metadata for EntityDefinition, v96);
            OUTLINED_FUNCTION_41_16();
            swift_unknownObjectRelease();
            v118 = OUTLINED_FUNCTION_37_18();
            v119(v118);
            v120 = OUTLINED_FUNCTION_120_6();
            v121(v120, 0);
            v115 = OUTLINED_FUNCTION_56_9();
            v136 = v133;
            v137 = v134;
            v116 = v117 & 0xFFFFFFFFFFFFFF00;
            v138 = v135;
            goto LABEL_18;
          case 2:
            LOBYTE(v131[0]) = 2;
            sub_1C8EF7F78(v67, v68, v69);
            v80 = OUTLINED_FUNCTION_40_19(&type metadata for TypeDefinition.EnumerationCodingKeys, v131);
            sub_1C8EF8218(v80, v81, v82);
            OUTLINED_FUNCTION_105_4(&type metadata for EnumerationDefinition, v83);
            OUTLINED_FUNCTION_41_16();
            swift_unknownObjectRelease();
            v100 = OUTLINED_FUNCTION_37_18();
            v101(v100);
            v102 = OUTLINED_FUNCTION_120_6();
            v103(v102, 0);
            v115 = OUTLINED_FUNCTION_56_9();
            v136 = v133;
            *&v137 = v134;
            goto LABEL_17;
          case 3:
            LOBYTE(v131[0]) = 3;
            sub_1C8EF7ED0(v67, v68, v69);
            v84 = OUTLINED_FUNCTION_40_19(&type metadata for TypeDefinition.QueryCodingKeys, v131);
            sub_1C8EF81C4(v84, v85, v86);
            OUTLINED_FUNCTION_105_4(&type metadata for QueryDefinition, v87);
            OUTLINED_FUNCTION_41_16();
            swift_unknownObjectRelease();
            v104 = OUTLINED_FUNCTION_37_18();
            v105(v104);
            v106 = OUTLINED_FUNCTION_120_6();
            v107(v106, 0);
            v115 = OUTLINED_FUNCTION_56_9();
            v136 = v133;
            goto LABEL_17;
          case 4:
            LOBYTE(v131[0]) = 4;
            sub_1C8EF7E28(v67, v68, v69);
            v79 = sub_1C906498C();
            sub_1C8EF8170(v79, v90, v91);
            OUTLINED_FUNCTION_63_12();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_41_16();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296();
            v99(v128);
            (*(v128 + 8))(v127, v61);
            v115 = OUTLINED_FUNCTION_56_9();
LABEL_17:
            v116 = v117 & 0xFFFFFFFFFFFFFF00;
            goto LABEL_18;
          case 5:
            LOBYTE(v131[0]) = 5;
            sub_1C8EF7D80(v67, v68, v69);
            v89 = OUTLINED_FUNCTION_40_19(&type metadata for TypeDefinition.DynamicEnumerationCodingKeys, v131);
            sub_1C8EF811C(v89, v97, v98);
            OUTLINED_FUNCTION_153_0();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_41_16();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296();
            v123();
            v124 = OUTLINED_FUNCTION_120_6();
            v125(v124, v61);
            LOBYTE(v117) = v131[0];
            v111 = v131[1];
            v112 = v131[2];
            v113 = v131[3];
            v115 = v132;
            v116 = v131[0] & 0xFFFFFFFFFFFFFF00;
            v126 = v130;
            v70 = v62;
            goto LABEL_19;
          default:
            LOBYTE(v131[0]) = 0;
            sub_1C8EF80C8(v67, v68, v69);
            v71 = sub_1C906498C();
            sub_1C8CB8A20(v71, v92, v93);
            OUTLINED_FUNCTION_63_12();
            sub_1C9064A6C();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296();
            v108(v22, v41);
            v109 = OUTLINED_FUNCTION_54_10();
            v110(v109, v61);
            v116 = 0;
            LOBYTE(v117) = 0;
LABEL_18:
            v126 = v130;
LABEL_19:
            *(v129 + 32) = v115;
            v122 = v137;
            *(v129 + 56) = v136;
            *v129 = v116 | v117;
            *(v129 + 8) = v111;
            *(v129 + 16) = v112;
            *(v129 + 24) = v113;
            *(v129 + 48) = v114;
            *(v129 + 72) = v122;
            *(v129 + 88) = v138;
            *(v129 + 96) = v70;
            __swift_destroy_boxed_opaque_existential_1(v126);
            break;
        }

        goto LABEL_11;
      }

      v43 = v61;
    }

    v72 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v72, MEMORY[0x1E69E6B28]);
    v74 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v74 = &type metadata for TypeDefinition;
    v75 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v75);
    OUTLINED_FUNCTION_10_0();
    (*(v76 + 104))(v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    v77 = OUTLINED_FUNCTION_54_10();
    v78(v77, v43);
  }

  __swift_destroy_boxed_opaque_existential_1(v130);
LABEL_11:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EE8B40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x74726F706D69 && a2 == 0xE600000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726F707865 && a2 == 0xE600000000000000)
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

uint64_t sub_1C8EE8C04(char a1)
{
  if (a1)
  {
    return 0x74726F707865;
  }

  else
  {
    return 0x74726F706D69;
  }
}

uint64_t sub_1C8EE8C60(uint64_t a1)
{
  sub_1C9064D7C();
  TypeDefinition.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8EE8CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EE8B40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EE8CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF82C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EE8D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF82C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EE8D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8314(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EE8D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8314(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EE8DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8368(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EE8DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8368(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void CoercionDefinition.Direction.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319400, &qword_1C909F2F8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319408, &qword_1C909F300);
  OUTLINED_FUNCTION_11();
  v27 = v7;
  v28 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_86();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319410, &qword_1C909F308);
  OUTLINED_FUNCTION_11();
  v11 = v10;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_233();
  v13 = *v0;
  v14 = OUTLINED_FUNCTION_217(v4, v4[3]);
  sub_1C8EF82C0(v14, v15, v16);
  OUTLINED_FUNCTION_197();
  v17 = sub_1C9064E1C();
  v20 = (v11 + 8);
  if (v13)
  {
    OUTLINED_FUNCTION_275();
    sub_1C8EF8314(v21, v22, v23);
    OUTLINED_FUNCTION_153_0();
    sub_1C9064ACC();
    v24 = OUTLINED_FUNCTION_30();
  }

  else
  {
    sub_1C8EF8368(v17, v18, v19);
    OUTLINED_FUNCTION_153_0();
    sub_1C9064ACC();
    v25 = v28;
    v26 = *(v27 + 8);
    v24 = v2;
  }

  v26(v24, v25);
  (*v20)(v1, v9);
  OUTLINED_FUNCTION_198();
}

uint64_t CoercionDefinition.Direction.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  v0 = OUTLINED_FUNCTION_297();
  MEMORY[0x1CCA82810](v0);
  return sub_1C9064DBC();
}

void CoercionDefinition.Direction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v71 = v28;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319418, &qword_1C909F310);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_142();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319420, &qword_1C909F318);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319428, &qword_1C909F320);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_73();
  v34 = OUTLINED_FUNCTION_217(v27, v27[3]);
  sub_1C8EF82C0(v34, v35, v36);
  sub_1C9064DEC();
  if (!v23)
  {
    v73 = v27;
    v37 = sub_1C9064A9C();
    v38 = sub_1C8CB8914(v37, 0);
    if (v40 != v39 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v45 == v46)
      {
        __break(1u);
        return;
      }

      v47 = *(v44 + v42);
      sub_1C8CB891C(v42 + 1, v41, v38, v44, v42, v43);
      v49 = v48;
      v51 = v50;
      v52 = swift_unknownObjectRelease();
      if (v49 == v51 >> 1)
      {
        if (v47)
        {
          OUTLINED_FUNCTION_275();
          sub_1C8EF8314(v55, v56, v57);
          OUTLINED_FUNCTION_191_0(&type metadata for CoercionDefinition.Direction.ExportCodingKeys, &a13);
          v58 = v71;
          swift_unknownObjectRelease();
          v59 = OUTLINED_FUNCTION_54_10();
          v61 = v72;
        }

        else
        {
          a12 = 0;
          sub_1C8EF8368(v52, v53, v54);
          OUTLINED_FUNCTION_191_0(&type metadata for CoercionDefinition.Direction.ImportCodingKeys, &a12);
          v58 = v71;
          swift_unknownObjectRelease();
          v59 = OUTLINED_FUNCTION_54_10();
          v61 = v30;
        }

        v60(v59, v61);
        v69 = OUTLINED_FUNCTION_120_6();
        v70(v69, v49);
        *v58 = v47;
        __swift_destroy_boxed_opaque_existential_1(v73);
        goto LABEL_10;
      }
    }

    v62 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v62, MEMORY[0x1E69E6B28]);
    v64 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v64 = &type metadata for CoercionDefinition.Direction;
    v65 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v65);
    OUTLINED_FUNCTION_10_0();
    (*(v66 + 104))(v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    v67 = OUTLINED_FUNCTION_241();
    v68(v67, v32);
    v27 = v73;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_10:
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t static CoercionDefinition.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v32 = *a2;
  v35 = *a1;

  v13 = OUTLINED_FUNCTION_106(v5, v6, v7, v8, v9, v10, v11, v12, v32, v35);
  static TypeInstance.== infix(_:_:)(v13, v14);
  v23 = OUTLINED_FUNCTION_156_4(v15, v16, v17, v18, v19, v20, v21, v22, v33);
  OUTLINED_FUNCTION_344(v23, v24, v25, v26, v27, v28, v29, v30, v34, v36);
  return v2 & ~(v3 ^ v4) & 1;
}

uint64_t sub_1C8EE9598(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_1C8EE9668(char a1)
{
  if (a1)
  {
    return 0x6F69746365726964;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1C8EE96A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EE9598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EE96CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF83BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EE9708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF83BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void CoercionDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319430, &qword_1C909F328);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_72();
  v4 = OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8EF83BC(v4, v5, v6);

  OUTLINED_FUNCTION_200();
  v7 = sub_1C9064E1C();
  sub_1C8CA6D90(v7, v8, v9);
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  v10 = OUTLINED_FUNCTION_193_4();
  if (!v0)
  {
    sub_1C8EF8410(v10, v11, v12);
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  v13 = OUTLINED_FUNCTION_93();
  v14(v13);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t CoercionDefinition.hash(into:)()
{
  v1 = *(v0 + 8);
  TypeInstance.hash(into:)();
  return MEMORY[0x1CCA82810](v1);
}

uint64_t CoercionDefinition.hashValue.getter()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_252_1(v2, v3, v4, v5, v6, v7, v8, v9, v1, v12);
  TypeInstance.hash(into:)();
  v10 = OUTLINED_FUNCTION_297();
  MEMORY[0x1CCA82810](v10);
  return sub_1C9064DBC();
}

void CoercionDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319438, &qword_1C909F330);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15_0();
  v17 = OUTLINED_FUNCTION_210();
  v19 = OUTLINED_FUNCTION_217(v17, v18);
  sub_1C8EF83BC(v19, v20, v21);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_106_0();
  v22 = sub_1C9064DEC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1C8CAC450(v22, v23, v24);
    OUTLINED_FUNCTION_63_12();
    v25 = sub_1C9064A6C();
    sub_1C8EF8464(v25, v26, v27);
    OUTLINED_FUNCTION_63_12();
    sub_1C9064A6C();
    v28 = OUTLINED_FUNCTION_59_2();
    v29(v28, v15);
    *v14 = a10;
    *(v14 + 8) = v30;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EE9B34(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1C9064D7C();
  TypeInstance.hash(into:)();
  MEMORY[0x1CCA82810](v2);
  return sub_1C9064DBC();
}

uint64_t CodableDefinition.displayRepresentation.getter@<X0>(void *a6@<X8>)
{
  OUTLINED_FUNCTION_188_5(*(v6 + 40), a6);
}

uint64_t sub_1C8EE9C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF84B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EE9C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF84B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void CodableDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319440, &qword_1C909F338);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_202_4();
  v4 = OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8EF84B8(v4, v5, v6);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_146_5();
  if (!v0)
  {
    OUTLINED_FUNCTION_275();
    sub_1C8E2F488(v7, v8, v9);

    OUTLINED_FUNCTION_168_5();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_225_4();
  }

  v10 = OUTLINED_FUNCTION_93();
  v11(v10);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t CodableDefinition.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C9063FBC();
  OUTLINED_FUNCTION_211();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v3)
  {
    OUTLINED_FUNCTION_172_2(a1);
  }

  OUTLINED_FUNCTION_148();

  return sub_1C8CC1590();
}

uint64_t CodableDefinition.hashValue.getter()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_298();
  sub_1C9063FBC();
  sub_1C9063FBC();
  if (v1)
  {
    sub_1C9064D9C();
    v2 = OUTLINED_FUNCTION_172_2(v12);
  }

  else
  {
    v2 = sub_1C9064D9C();
  }

  OUTLINED_FUNCTION_18_20(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0]);
  sub_1C8CC1590();
  return sub_1C9064DBC();
}

void CodableDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319450, &qword_1C909F340);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_233();
  v4 = OUTLINED_FUNCTION_118();
  v6 = OUTLINED_FUNCTION_217(v4, v5);
  sub_1C8EF84B8(v6, v7, v8);
  OUTLINED_FUNCTION_197();
  sub_1C9064DEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    LOBYTE(v17) = 0;
    v9 = sub_1C9064A0C();
    v11 = v10;
    OUTLINED_FUNCTION_275();
    sub_1C8E2FB84(v12, v13, v14);
    OUTLINED_FUNCTION_21_21();
    sub_1C9064A6C();
    v15 = OUTLINED_FUNCTION_5_9();
    v16(v15);
    *v2 = v9;
    v2[1] = v11;
    v2[2] = v17;
    v2[3] = v18;
    v2[4] = v19;
    v2[5] = v20;
    v2[6] = v21;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EEA15C(uint64_t a1)
{
  sub_1C9064D7C();
  sub_1C9063FBC();
  TypeDisplayRepresentation.hash(into:)(v2);
  return sub_1C9064DBC();
}

ToolKit::EntityDefinition::RuntimeFlags sub_1C8EEA29C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = EntityDefinition.RuntimeFlags.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C8EEA2DC@<X0>(uint64_t *a1@<X8>)
{
  result = EntityDefinition.RuntimeFlags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t EntityDefinition.displayRepresentation.getter@<X0>(void *a6@<X8>)
{
  OUTLINED_FUNCTION_188_5(*(v6 + 48), a6);
}

uint64_t EntityDefinition.sampleInvocations.getter()
{
  OUTLINED_FUNCTION_166_3();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = objc_opt_self();

  v2 = [v1 sharedProvider];
  OUTLINED_FUNCTION_249();
  v3 = sub_1C9063EBC();

  v4 = [v2 examplePhrasesForBundleIdentifier:v3 useCache:1];

  sub_1C8D72FC8();
  sub_1C906419C();

  OUTLINED_FUNCTION_147_2();
  static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

void EntityDefinition.init(identifier:properties:coercions:displayRepresentation:runtimeFlags:runtimeRequirements:systemProtocols:overriddenSampleInvocations:)()
{
  OUTLINED_FUNCTION_301_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = *v12;
  v18 = v14[1];
  v19 = *v14;
  v15 = *(v14 + 4);
  v17 = *v16;

  *v11 = v13;
  *(v11 + 8) = v9;
  *(v11 + 16) = v5;
  *(v11 + 24) = v19;
  *(v11 + 40) = v18;
  *(v11 + 56) = v15;
  *(v11 + 64) = v3;
  *(v11 + 80) = v1;
  *(v11 + 88) = v17;
  *(v11 + 72) = v7;
  OUTLINED_FUNCTION_183_0();
}

__n128 EntityDefinition.init(identifier:properties:coercions:displayRepresentation:runtimeFlags:runtimeRequirements:systemProtocols:sampleInvocations:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  v16 = a4->n128_u64[0];
  v17 = a4->n128_u64[1];
  v18 = a4[2].n128_u64[0];
  v19 = *a5;
  *a8 = *a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a6;
  *(a8 + 24) = v16;
  *(a8 + 32) = v17;
  result = a4[1];
  *(a8 + 40) = result;
  *(a8 + 56) = v18;
  *(a8 + 64) = a7;
  *(a8 + 72) = a3;
  *(a8 + 80) = 0;
  *(a8 + 88) = v19;
  return result;
}

__n128 EntityDefinition.init(identifier:properties:displayRepresentation:runtimeFlags:runtimeRequirements:systemProtocols:sampleInvocations:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{

  v14 = a3->n128_u64[0];
  v15 = a3->n128_u64[1];
  v16 = a3[2].n128_u64[0];
  v17 = *a4;
  *a7 = *a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a5;
  *(a7 + 24) = v14;
  *(a7 + 32) = v15;
  result = a3[1];
  *(a7 + 40) = result;
  *(a7 + 56) = v16;
  *(a7 + 64) = a6;
  *(a7 + 72) = MEMORY[0x1E69E7CC0];
  *(a7 + 80) = 0;
  *(a7 + 88) = v17;
  return result;
}

__n128 EntityDefinition.init(identifier:displayRepresentation:runtimeRequirements:properties:sampleInvocations:runtimeFlags:)()
{
  OUTLINED_FUNCTION_157_3();
  v6 = v3->n128_u64[0];
  v7 = v3->n128_u64[1];
  v8 = v3[2].n128_u64[0];
  v9 = *v0;
  *v5 = *v4;
  *(v5 + 8) = v1;
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 32) = v7;
  result = v3[1];
  v11 = MEMORY[0x1E69E7CC0];
  *(v5 + 40) = result;
  *(v5 + 56) = v8;
  *(v5 + 64) = v11;
  *(v5 + 72) = v11;
  *(v5 + 80) = 0;
  *(v5 + 88) = v9;
  return result;
}

uint64_t EntityDefinition.init(identifier:displayName:properties:sampleInvocations:runtimeFlags:)()
{
  result = OUTLINED_FUNCTION_157_3();
  v7 = *v0;
  *v5 = *v4;
  v5[1] = v1;
  v8 = MEMORY[0x1E69E7CC0];
  v5[2] = MEMORY[0x1E69E7CC0];
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = v8;
  v5[8] = v8;
  v5[9] = v8;
  v5[10] = 0;
  v5[11] = v7;
  return result;
}

uint64_t EntityDefinition.fetchSampleInvocations()()
{
  OUTLINED_FUNCTION_166_3();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v3 = objc_opt_self();

  v4 = [v3 sharedProvider];
  OUTLINED_FUNCTION_211();
  v5 = sub_1C9063EBC();

  v6 = [v4 examplePhrasesForBundleIdentifier:v5 useCache:1];

  sub_1C8D72FC8();
  sub_1C906419C();

  OUTLINED_FUNCTION_147_2();
  static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_228_4();

  return v2;
}

void EntityDefinition.implements(_:)()
{
  OUTLINED_FUNCTION_46_12();
  v17 = v6 == 4;
  v19 = v18 == 0;
  v20 = v18 == 0;
  v21 = v19 && v6 == 3;
  v22 = v19 && v6 == 6;
  v23 = v19 && v6 == 7;
  v24 = v6 == 8;
  if (v6 == 15 && v20)
  {
    v25 = v11;
  }

  else
  {
    v25 = v8;
  }

  v26 = v15 < 2;
  v27 = (v16 & v20) == 0;
  if ((v16 & v20) != 0)
  {
    v28 = v2;
  }

  else
  {
    v28 = v1;
  }

  if (v27)
  {
    v29 = v9;
  }

  else
  {
    v29 = v12;
  }

  v30 = v26 && v20;
  if (!v30)
  {
    v28 = v0;
    v29 = v13;
  }

  v31 = (v14 == 0) | v30 | v21;
  if (v14)
  {
    v32 = v29;
  }

  else
  {
    v28 = v5;
    v32 = 0xE700000000000000;
  }

  v33 = (v6 & 0xFFFFFFFFFFFFFFFELL) == 4;
  v34 = !v17 || !v20;
  if (v17 && v20)
  {
    v35 = v4;
  }

  else
  {
    v35 = v3;
  }

  if (!v34)
  {
    v10 = 0xE700000000000000;
  }

  v36 = v31 | (v33 && v20 || v22);
  if (!v33 || !v20)
  {
    v35 = 0x476567617373656DLL;
  }

  v37 = 0xEC00000070756F72;
  if (v33 && v20)
  {
    v37 = v10;
  }

  v38 = (v31 & 1) == 0;
  if (v31)
  {
    v39 = v28;
  }

  else
  {
    v39 = v35;
  }

  if (v38)
  {
    v40 = v37;
  }

  else
  {
    v40 = v32;
  }

  if ((v36 & 1) == 0)
  {
    v39 = 0xD000000000000012;
  }

  v118 = v39;
  v41 = 0x80000001C90CA340;
  v110 = 0x80000001C90CA340;
  if (v36)
  {
    v41 = v40;
  }

  v117 = v41;
  v42 = 0xEF797469746E4574;
  if (!v24 || !v20)
  {
    v42 = 0xEC00000079746974;
  }

  v43 = 0x6E6569736E617274;
  if (!v24 || !v20)
  {
    v43 = 0x6E45657571696E75;
  }

  v44 = v6 == 10 || (v6 & 0xFFFFFFFFFFFFFFFELL) == 8;
  v45 = 0x6C62617461647075;
  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 8 && v20)
  {
    v45 = v43;
  }

  else
  {
    v42 = 0xEF797469746E4565;
  }

  v46 = v6 == 11 || v44;
  if (!v20 || !v44)
  {
    v45 = 0x4564657865646E69;
    v42 = 0xED0000797469746ELL;
  }

  if (v6 == 12)
  {
    v47 = 1;
  }

  else
  {
    v47 = v46;
  }

  if ((v20 & v46) == 0)
  {
    v45 = 0xD000000000000015;
  }

  v112 = 0x80000001C90CA320;
  if ((v20 & v46) == 0)
  {
    v42 = 0x80000001C90CA320;
  }

  v123 = v6;
  if (v6 == 13)
  {
    v48 = 1;
  }

  else
  {
    v48 = v47;
  }

  if ((v20 & v47) == 0)
  {
    v45 = 0xD000000000000010;
  }

  v109 = 0x80000001C90CA300;
  if ((v20 & v47) == 0)
  {
    v42 = 0x80000001C90CA300;
  }

  v49 = 0xD00000000000001ALL;
  if (v6 != 14 || !v20)
  {
    v49 = 0x65536C6175736976;
  }

  v111 = 0x80000001C90CA2E0;
  if (v6 == 14 && v20)
  {
    v25 = 0x80000001C90CA2E0;
  }

  HIDWORD(v116) = v36 | v23;
  if ((v20 & v48) != 0)
  {
    v50 = v45;
  }

  else
  {
    v50 = v49;
  }

  if ((v20 & v48) != 0)
  {
    v51 = v42;
  }

  else
  {
    v51 = v25;
  }

  v114 = v51;
  v115 = v50;
  HIDWORD(v124) = *(v7 + 32);
  OUTLINED_FUNCTION_106_5();
  do
  {
    v52 = v6-- != 0;
    if (!v52)
    {
      break;
    }

    OUTLINED_FUNCTION_210_4();
    if (v52)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_134_2();
    v126 = v53;
    v127 = v54;
    switch(v55)
    {
      case 1:

        v5 = 0xD000000000000015;
        v0 = v112;
        break;
      case 2:

        v5 = 0xD00000000000001ALL;
        v0 = v111;
        break;
      case 3:
        OUTLINED_FUNCTION_150_4();
        if (v84)
        {
          v85 = v82 | v77 | v83;
          if (v1 != 1 || (OUTLINED_FUNCTION_119_8(), OUTLINED_FUNCTION_180_3(), v85))
          {
            if (v1 != 2 || (OUTLINED_FUNCTION_119_8(), OUTLINED_FUNCTION_149_4(), v85))
            {
              if (v1 != 3 || (OUTLINED_FUNCTION_119_8(), OUTLINED_FUNCTION_177_6(), v85))
              {
                if (v1 != 4 || v85)
                {
                  if (v1 != 5 || (OUTLINED_FUNCTION_116_7(), v85))
                  {
                    if (v1 != 6 || (OUTLINED_FUNCTION_132_3(), v85))
                    {
                      if (v1 != 7 || v85)
                      {
                        if (v1 != 8 || v85)
                        {
                          if (v1 != 9 || (OUTLINED_FUNCTION_135_4(), v85))
                          {
                            if (v1 != 10 || (OUTLINED_FUNCTION_113_5(), v85))
                            {
                              if (v1 != 11 || (OUTLINED_FUNCTION_115_4(), v85))
                              {
                                if (v1 != 12 || (v5 = 0xD000000000000010, v0 = v109, v85))
                                {
                                  if (v85)
                                  {
                                    v108 = 0;
                                  }

                                  else
                                  {
                                    v108 = v1 == 13;
                                  }

                                  if (v108)
                                  {
                                    v0 = 0xEC00000068637261;
                                  }

                                  else
                                  {
                                    v0 = 0xEF52434F68637261;
                                  }

                                  OUTLINED_FUNCTION_204_3();
                                }
                              }
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_104_6();
                        }
                      }

                      else
                      {
                        v5 = 0xD000000000000012;
                        v0 = v110;
                      }
                    }
                  }
                }

                else
                {
                  v0 = 0xE700000000000000;
                  OUTLINED_FUNCTION_119_8();
                  v5 = v5 | 0x786F6200000000;
                }
              }
            }
          }
        }

        else
        {
          v0 = 0xE700000000000000;
          OUTLINED_FUNCTION_57_12();
        }

        break;
      default:
        v128 = 0xD000000000000010;
        v129 = v121;
        v56 = OUTLINED_FUNCTION_182_1();
        sub_1C8EF850C(v56, v57, v58, v59, v60, v0, v2, 0);

        v61 = OUTLINED_FUNCTION_253();
        v62 = MEMORY[0x1CCA81A90](v61);
        OUTLINED_FUNCTION_151_5(v62, v63, v64, v65, v66, v67);
        OUTLINED_FUNCTION_230_2();

        OUTLINED_FUNCTION_151_5(v68, v69, v70, v71, v72, v73);
        v74 = OUTLINED_FUNCTION_182_1();
        MEMORY[0x1CCA81A90](v74);

        v5 = 0xD000000000000010;
        v0 = v121;
        break;
    }

    if (!HIDWORD(v124))
    {
      OUTLINED_FUNCTION_209_2(v113);
      v75 = MEMORY[0x1CCA81A90](v123, v122);
      goto LABEL_105;
    }

    if (HIDWORD(v124) == 1)
    {
      OUTLINED_FUNCTION_209_2(v121);
      v86 = MEMORY[0x1CCA81A90]();
      OUTLINED_FUNCTION_148_3(v86, v87, v88, v89, v90, v91);
      OUTLINED_FUNCTION_230_2();

      OUTLINED_FUNCTION_148_3(v92, v93, v94, v95, v96, v97);
      MEMORY[0x1CCA81A90](v123, v122);

LABEL_105:
      v98 = v128;
      v99 = v129;
      goto LABEL_112;
    }

    if ((v116 & 0x100000000) != 0)
    {
      v98 = v118;
    }

    else
    {
      v98 = v115;
    }

    if ((v116 & 0x100000000) != 0)
    {
      v99 = v117;
    }

    else
    {
      v99 = v114;
    }

LABEL_112:
    if (v5 == v98 && v0 == v99)
    {
      OUTLINED_FUNCTION_49_13(v75, v76, v98, v77, v78, v79, v80, v81, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);

      return;
    }

    v5 = OUTLINED_FUNCTION_224_2(v75, v76, v98);
    OUTLINED_FUNCTION_49_13(v5, v101, v102, v103, v104, v105, v106, v107, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
  }

  while ((v5 & 1) == 0);
}

uint64_t sub_1C8EEADEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001C90CAB00 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72506D6574737973 && a2 == 0xEF736C6F636F746FLL;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F696372656F63 && a2 == 0xE900000000000073;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x80000001C90CC040 == a2;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x46656D69746E7572 && a2 == 0xEC0000007367616CLL)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C9064C2C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C8EEB084(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x69747265706F7270;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x72506D6574737973;
      break;
    case 5:
      result = 0x6E6F696372656F63;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0x46656D69746E7572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EEB1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EEADEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EEB1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF857C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EEB204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF857C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void EntityDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319458, &qword_1C909F348);
  OUTLINED_FUNCTION_11();
  v4 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_73();
  v6 = v2[3];
  v7 = v2;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_217(v7, v6);
  v13 = sub_1C8EF857C(v10, v11, v12);

  v14 = sub_1C9064E1C();
  sub_1C8C9FB9C(v14, v15, v16);
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_59_10();
  sub_1C9064B8C();
  if (v13)
  {
    OUTLINED_FUNCTION_226();
    (*(v4 + 8))(v0, v9);
  }

  else
  {
    OUTLINED_FUNCTION_226();
    OUTLINED_FUNCTION_275();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C58, &unk_1C909F350);
    sub_1C8EF85D0();
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_59_10();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_119_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD0, &qword_1C90921D8);
    sub_1C8E959E8();
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_59_10();
    v17 = sub_1C9064B8C();
    v20 = sub_1C8E2F488(v17, v18, v19);

    OUTLINED_FUNCTION_20_23();
    OUTLINED_FUNCTION_59_10();
    sub_1C9064B8C();
    if (v20)
    {
      OUTLINED_FUNCTION_225_4();

      (*(v4 + 8))(v0, v9);
    }

    else
    {
      OUTLINED_FUNCTION_225_4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319460, &qword_1C909F360);
      sub_1C8EF8654();
      OUTLINED_FUNCTION_11_30();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_219_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319468, &unk_1C909F368);
      sub_1C8EF86D8();
      OUTLINED_FUNCTION_12_29();
      sub_1C9064B8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A70, &qword_1C9087680);
      sub_1C8E95AF0();
      OUTLINED_FUNCTION_12_29();
      v21 = sub_1C9064B0C();
      sub_1C8EF875C(v21, v22, v23);
      OUTLINED_FUNCTION_20_23();
      sub_1C9064B8C();
      (*(v4 + 8))(v0, v9);
    }
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void EntityDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_301_0();
  v2 = v1;
  v3 = v0[6];
  v5 = v0[8];
  v4 = v0[10];
  v6 = v0[11];
  TypeIdentifier.hash(into:)(v1);
  sub_1C8D02D7C();
  OUTLINED_FUNCTION_145();
  sub_1C8D02E34();
  OUTLINED_FUNCTION_117();
  sub_1C9063FBC();
  if (v3)
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_210();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  OUTLINED_FUNCTION_118();
  sub_1C8CC1590();
  sub_1C8D030C8(v2, v5);
  sub_1C8D03A74();
  if (v4)
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_253();
    sub_1C8D03494();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  MEMORY[0x1CCA82810](v6);
  OUTLINED_FUNCTION_183_0();
}

uint64_t EntityDefinition.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  EntityDefinition.hash(into:)();
  return sub_1C9064DBC();
}

void EntityDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319470, &qword_1C909F378);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_233();
  v16 = OUTLINED_FUNCTION_278();
  v18 = OUTLINED_FUNCTION_217(v16, v17);
  sub_1C8EF857C(v18, v19, v20);
  OUTLINED_FUNCTION_197();
  v21 = sub_1C9064DEC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1C8CB892C(v21, v22, v23);
    OUTLINED_FUNCTION_18_25();
    sub_1C9064A6C();
    v24 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C58, &unk_1C909F350);
    OUTLINED_FUNCTION_91_4(1);
    sub_1C8EF87B0();
    OUTLINED_FUNCTION_3_45();
    sub_1C9064A6C();
    v42 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD0, &qword_1C90921D8);
    OUTLINED_FUNCTION_91_4(2);
    sub_1C8E95FEC();
    OUTLINED_FUNCTION_3_45();
    sub_1C9064A6C();
    v36 = v44;
    OUTLINED_FUNCTION_91_4(3);
    sub_1C8E2FB84(v25, v26, v27);
    OUTLINED_FUNCTION_18_25();
    sub_1C9064A6C();
    v35 = v44;
    v40 = v45;
    v39 = v47;
    v41 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319460, &qword_1C909F360);
    OUTLINED_FUNCTION_91_4(4);
    sub_1C8EF8834();
    OUTLINED_FUNCTION_3_45();
    sub_1C9064A6C();
    v34 = v46;
    v38 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319468, &unk_1C909F368);
    OUTLINED_FUNCTION_91_4(5);
    sub_1C8EF88B8();
    OUTLINED_FUNCTION_3_45();
    sub_1C9064A6C();
    v37 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A70, &qword_1C9087680);
    OUTLINED_FUNCTION_91_4(6);
    sub_1C8E960F4();
    OUTLINED_FUNCTION_3_45();
    v28 = sub_1C90649EC();
    v29 = v44;
    v56 = 7;
    sub_1C8EF893C(v28, v30, v31);
    OUTLINED_FUNCTION_18_25();
    sub_1C9064A6C();
    v32 = OUTLINED_FUNCTION_92();
    v33(v32);
    v43[0] = v44;
    v43[1] = v44;
    v43[2] = v44;
    v43[3] = v44;
    v43[4] = v45;
    v43[5] = v46;
    v43[6] = v47;
    v43[7] = v48;
    v43[8] = v44;
    v43[9] = v44;
    v43[10] = v44;
    v43[11] = a10;
    memcpy(v14, v43, 0x60uLL);
    sub_1C8EF7CF4(v43, &v44);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v44 = v24;
    v45 = v42;
    v46 = v36;
    v47 = v35;
    v48 = v40;
    v49 = v34;
    v50 = v39;
    v51 = v41;
    v52 = v38;
    v53 = v37;
    v54 = v29;
    v55 = a10;
    sub_1C8EF8990(&v44);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EEBD08(uint64_t a1)
{
  sub_1C9064D7C();
  EntityDefinition.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t static EntityPropertyDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v1 == *v2 && v3[1] == v2[1];
  if (v10 || (sub_1C9064C2C()) && (v4 == v7 ? (v11 = v5 == v8) : (v11 = 0), v11 || (OUTLINED_FUNCTION_94(), OUTLINED_FUNCTION_164_5(), (sub_1C9064C2C())))
  {

    v20 = OUTLINED_FUNCTION_106(v12, v13, v14, v15, v16, v17, v18, v19, v9, v6);
    v22 = static TypeInstance.== infix(_:_:)(v20, v21);
    v30 = OUTLINED_FUNCTION_156_4(v22, v23, v24, v25, v26, v27, v28, v29, v39);
    OUTLINED_FUNCTION_344(v30, v31, v32, v33, v34, v35, v36, v37, v40, v41);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1C8EEBE44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_1C8EEBF50(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x4E79616C70736964;
  }

  return 1701869940;
}

uint64_t sub_1C8EEBFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EEBE44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EEBFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF89C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EEC008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF89C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void EntityPropertyDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319478, &qword_1C909F380);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_171_5();
  v3 = OUTLINED_FUNCTION_219();
  v5 = OUTLINED_FUNCTION_217(v3, v4);
  sub_1C8EF89C0(v5, v6, v7);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  v8 = OUTLINED_FUNCTION_102_6();
  OUTLINED_FUNCTION_187_7(v8, v9, v10);
  if (!v0)
  {
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
    OUTLINED_FUNCTION_177_4();
    sub_1C8CA6D90(v11, v12, v13);

    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  v14 = OUTLINED_FUNCTION_174_4();
  v15(v14, v1);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void EntityPropertyDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_161_5();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_145();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_297();
  TypeInstance.hash(into:)();
}

uint64_t EntityPropertyDefinition.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_18_20(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20);
  sub_1C9063FBC();
  OUTLINED_FUNCTION_104_2();
  v10 = sub_1C9063FBC();
  OUTLINED_FUNCTION_252_1(v10, v11, v12, v13, v14, v15, v16, v17, v1, v21);
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

void EntityPropertyDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319480, &qword_1C909F388);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15_0();
  v4 = OUTLINED_FUNCTION_210();
  v6 = OUTLINED_FUNCTION_217(v4, v5);
  sub_1C8EF89C0(v6, v7, v8);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_203_4();
    OUTLINED_FUNCTION_108();
    sub_1C9064A0C();
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_108();
    sub_1C9064A0C();
    OUTLINED_FUNCTION_177_4();
    sub_1C8CAC450(v9, v10, v11);
    OUTLINED_FUNCTION_98_4();
    sub_1C9064A6C();
    v12 = OUTLINED_FUNCTION_3_21();
    v13(v12);
    OUTLINED_FUNCTION_183_5();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EEC4B0(uint64_t a1)
{
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C9063FBC();
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

ToolKit::EnumerationDefinition::Kind_optional __swiftcall EnumerationDefinition.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C906497C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EnumerationDefinition.Kind.rawValue.getter()
{
  result = 0x6D756E45707061;
  switch(*v0)
  {
    case 1:
      result = 0x6E456E6F69746361;
      break;
    case 2:
      result = 0x4572656767697274;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EEC620@<X0>(uint64_t *a1@<X8>)
{
  result = EnumerationDefinition.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EnumerationDefinition.displayRepresentation.getter@<X0>(void *a6@<X8>)
{
  OUTLINED_FUNCTION_188_5(*(v6 + 64), a6);
}

void EnumerationDefinition.init(identifier:cases:kind:runtimeRequirements:displayRepresentation:)(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = a5->n128_u64[0];
  v8 = a5->n128_u64[1];
  *a6 = *a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = MEMORY[0x1E69E7CC0];
  *(a6 + 32) = a4;
  *(a6 + 40) = v7;
  *(a6 + 48) = v8;
  OUTLINED_FUNCTION_192_6(a6, a5[1]);
}

uint64_t EnumerationDefinition.init(identifier:cases:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = TypeIdentifier.debugDescription.getter();
  *a3 = v5;
  *(a3 + 8) = a2;
  *(a3 + 16) = 3;
  v7 = MEMORY[0x1E69E7CC0];
  *(a3 + 24) = MEMORY[0x1E69E7CC0];
  *(a3 + 32) = v7;
  *(a3 + 40) = result;
  *(a3 + 48) = v8;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = v7;
  return result;
}

__n128 EnumerationDefinition.init(identifier:cases:runtimeRequirements:displayRepresentation:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4->n128_u64[0];
  v6 = a4->n128_u64[1];
  v7 = a4[2].n128_u64[0];
  *a5 = *a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 3;
  *(a5 + 24) = MEMORY[0x1E69E7CC0];
  *(a5 + 32) = a3;
  *(a5 + 40) = v5;
  *(a5 + 48) = v6;
  result = a4[1];
  *(a5 + 56) = result;
  *(a5 + 72) = v7;
  return result;
}

void EnumerationDefinition.implements(_:)()
{
  OUTLINED_FUNCTION_46_12();
  v17 = v6 == 4;
  v19 = v18 == 0;
  v20 = v18 == 0;
  v21 = v19 && v6 == 3;
  v22 = v19 && v6 == 6;
  v23 = v19 && v6 == 7;
  v24 = v6 == 8;
  if (v6 == 15 && v20)
  {
    v25 = v11;
  }

  else
  {
    v25 = v8;
  }

  v26 = v15 < 2;
  v27 = (v16 & v20) == 0;
  if ((v16 & v20) != 0)
  {
    v28 = v2;
  }

  else
  {
    v28 = v1;
  }

  if (v27)
  {
    v29 = v9;
  }

  else
  {
    v29 = v12;
  }

  v30 = v26 && v20;
  if (!v30)
  {
    v28 = v0;
    v29 = v13;
  }

  v31 = (v14 == 0) | v30 | v21;
  if (v14)
  {
    v32 = v29;
  }

  else
  {
    v28 = v5;
    v32 = 0xE700000000000000;
  }

  v33 = (v6 & 0xFFFFFFFFFFFFFFFELL) == 4;
  v34 = !v17 || !v20;
  if (v17 && v20)
  {
    v35 = v4;
  }

  else
  {
    v35 = v3;
  }

  if (!v34)
  {
    v10 = 0xE700000000000000;
  }

  v36 = v31 | (v33 && v20 || v22);
  if (!v33 || !v20)
  {
    v35 = 0x476567617373656DLL;
  }

  v37 = 0xEC00000070756F72;
  if (v33 && v20)
  {
    v37 = v10;
  }

  v38 = (v31 & 1) == 0;
  if (v31)
  {
    v39 = v28;
  }

  else
  {
    v39 = v35;
  }

  if (v38)
  {
    v40 = v37;
  }

  else
  {
    v40 = v32;
  }

  if ((v36 & 1) == 0)
  {
    v39 = 0xD000000000000012;
  }

  v118 = v39;
  v41 = 0x80000001C90CA340;
  v110 = 0x80000001C90CA340;
  if (v36)
  {
    v41 = v40;
  }

  v117 = v41;
  v42 = 0xEF797469746E4574;
  if (!v24 || !v20)
  {
    v42 = 0xEC00000079746974;
  }

  v43 = 0x6E6569736E617274;
  if (!v24 || !v20)
  {
    v43 = 0x6E45657571696E75;
  }

  v44 = v6 == 10 || (v6 & 0xFFFFFFFFFFFFFFFELL) == 8;
  v45 = 0x6C62617461647075;
  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 8 && v20)
  {
    v45 = v43;
  }

  else
  {
    v42 = 0xEF797469746E4565;
  }

  v46 = v6 == 11 || v44;
  if (!v20 || !v44)
  {
    v45 = 0x4564657865646E69;
    v42 = 0xED0000797469746ELL;
  }

  if (v6 == 12)
  {
    v47 = 1;
  }

  else
  {
    v47 = v46;
  }

  if ((v20 & v46) == 0)
  {
    v45 = 0xD000000000000015;
  }

  v112 = 0x80000001C90CA320;
  if ((v20 & v46) == 0)
  {
    v42 = 0x80000001C90CA320;
  }

  v123 = v6;
  if (v6 == 13)
  {
    v48 = 1;
  }

  else
  {
    v48 = v47;
  }

  if ((v20 & v47) == 0)
  {
    v45 = 0xD000000000000010;
  }

  v109 = 0x80000001C90CA300;
  if ((v20 & v47) == 0)
  {
    v42 = 0x80000001C90CA300;
  }

  v49 = 0xD00000000000001ALL;
  if (v6 != 14 || !v20)
  {
    v49 = 0x65536C6175736976;
  }

  v111 = 0x80000001C90CA2E0;
  if (v6 == 14 && v20)
  {
    v25 = 0x80000001C90CA2E0;
  }

  HIDWORD(v116) = v36 | v23;
  if ((v20 & v48) != 0)
  {
    v50 = v45;
  }

  else
  {
    v50 = v49;
  }

  if ((v20 & v48) != 0)
  {
    v51 = v42;
  }

  else
  {
    v51 = v25;
  }

  v114 = v51;
  v115 = v50;
  HIDWORD(v124) = *(v7 + 32);
  OUTLINED_FUNCTION_106_5();
  do
  {
    v52 = v6-- != 0;
    if (!v52)
    {
      break;
    }

    OUTLINED_FUNCTION_210_4();
    if (v52)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_134_2();
    v126 = v53;
    v127 = v54;
    switch(v55)
    {
      case 1:

        v5 = 0xD000000000000015;
        v0 = v112;
        break;
      case 2:

        v5 = 0xD00000000000001ALL;
        v0 = v111;
        break;
      case 3:
        OUTLINED_FUNCTION_150_4();
        if (v84)
        {
          v85 = v82 | v77 | v83;
          if (v1 != 1 || (OUTLINED_FUNCTION_119_8(), OUTLINED_FUNCTION_180_3(), v85))
          {
            if (v1 != 2 || (OUTLINED_FUNCTION_119_8(), OUTLINED_FUNCTION_149_4(), v85))
            {
              if (v1 != 3 || (OUTLINED_FUNCTION_119_8(), OUTLINED_FUNCTION_177_6(), v85))
              {
                if (v1 != 4 || v85)
                {
                  if (v1 != 5 || (OUTLINED_FUNCTION_116_7(), v85))
                  {
                    if (v1 != 6 || (OUTLINED_FUNCTION_132_3(), v85))
                    {
                      if (v1 != 7 || v85)
                      {
                        if (v1 != 8 || v85)
                        {
                          if (v1 != 9 || (OUTLINED_FUNCTION_135_4(), v85))
                          {
                            if (v1 != 10 || (OUTLINED_FUNCTION_113_5(), v85))
                            {
                              if (v1 != 11 || (OUTLINED_FUNCTION_115_4(), v85))
                              {
                                if (v1 != 12 || (v5 = 0xD000000000000010, v0 = v109, v85))
                                {
                                  if (v85)
                                  {
                                    v108 = 0;
                                  }

                                  else
                                  {
                                    v108 = v1 == 13;
                                  }

                                  if (v108)
                                  {
                                    v0 = 0xEC00000068637261;
                                  }

                                  else
                                  {
                                    v0 = 0xEF52434F68637261;
                                  }

                                  OUTLINED_FUNCTION_204_3();
                                }
                              }
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_104_6();
                        }
                      }

                      else
                      {
                        v5 = 0xD000000000000012;
                        v0 = v110;
                      }
                    }
                  }
                }

                else
                {
                  v0 = 0xE700000000000000;
                  OUTLINED_FUNCTION_119_8();
                  v5 = v5 | 0x786F6200000000;
                }
              }
            }
          }
        }

        else
        {
          v0 = 0xE700000000000000;
          OUTLINED_FUNCTION_57_12();
        }

        break;
      default:
        v128 = 0xD000000000000010;
        v129 = v121;
        v56 = OUTLINED_FUNCTION_182_1();
        sub_1C8EF850C(v56, v57, v58, v59, v60, v0, v2, 0);

        v61 = OUTLINED_FUNCTION_253();
        v62 = MEMORY[0x1CCA81A90](v61);
        OUTLINED_FUNCTION_151_5(v62, v63, v64, v65, v66, v67);
        OUTLINED_FUNCTION_230_2();

        OUTLINED_FUNCTION_151_5(v68, v69, v70, v71, v72, v73);
        v74 = OUTLINED_FUNCTION_182_1();
        MEMORY[0x1CCA81A90](v74);

        v5 = 0xD000000000000010;
        v0 = v121;
        break;
    }

    if (!HIDWORD(v124))
    {
      OUTLINED_FUNCTION_209_2(v113);
      v75 = MEMORY[0x1CCA81A90](v123, v122);
      goto LABEL_105;
    }

    if (HIDWORD(v124) == 1)
    {
      OUTLINED_FUNCTION_209_2(v121);
      v86 = MEMORY[0x1CCA81A90]();
      OUTLINED_FUNCTION_148_3(v86, v87, v88, v89, v90, v91);
      OUTLINED_FUNCTION_230_2();

      OUTLINED_FUNCTION_148_3(v92, v93, v94, v95, v96, v97);
      MEMORY[0x1CCA81A90](v123, v122);

LABEL_105:
      v98 = v128;
      v99 = v129;
      goto LABEL_112;
    }

    if ((v116 & 0x100000000) != 0)
    {
      v98 = v118;
    }

    else
    {
      v98 = v115;
    }

    if ((v116 & 0x100000000) != 0)
    {
      v99 = v117;
    }

    else
    {
      v99 = v114;
    }

LABEL_112:
    if (v5 == v98 && v0 == v99)
    {
      OUTLINED_FUNCTION_49_13(v75, v76, v98, v77, v78, v79, v80, v81, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);

      return;
    }

    v5 = OUTLINED_FUNCTION_224_2(v75, v76, v98);
    OUTLINED_FUNCTION_49_13(v5, v101, v102, v103, v104, v105, v106, v107, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
  }

  while ((v5 & 1) == 0);
}

uint64_t sub_1C8EECE20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365736163 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72506D6574737973 && a2 == 0xEF736C6F636F746FLL;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C90CAB00 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
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

unint64_t sub_1C8EED020(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x7365736163;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0x72506D6574737973;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EED0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EECE20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EED114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8A14(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EED150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8A14(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void EnumerationDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319488, &unk_1C909F390);
  OUTLINED_FUNCTION_11();
  v4 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_72();
  v6 = v2[3];
  v7 = v2;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_217(v7, v6);
  v13 = sub_1C8EF8A14(v10, v11, v12);

  OUTLINED_FUNCTION_200();
  v14 = sub_1C9064E1C();
  sub_1C8C9FB9C(v14, v15, v16);
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  if (v13)
  {
    OUTLINED_FUNCTION_226();
    v17 = OUTLINED_FUNCTION_174_4();
    v18(v17, v9);
  }

  else
  {
    OUTLINED_FUNCTION_226();
    OUTLINED_FUNCTION_275();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317DE8, &qword_1C9090C08);
    sub_1C8EF8A68();
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_119_1();
    sub_1C8E0532C(v19, v20, v21);
    OUTLINED_FUNCTION_20_23();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319460, &qword_1C909F360);
    sub_1C8EF8654();
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD0, &qword_1C90921D8);
    sub_1C8E959E8();
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_219_1();
    sub_1C8E2F488(v22, v23, v24);

    OUTLINED_FUNCTION_20_23();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_225_4();

    (*(v4 + 8))(v0, v9);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t EnumerationDefinition.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 64);
  TypeIdentifier.hash(into:)(a1);
  sub_1C8D0225C();
  sub_1C8D2FEF0();
  v3 = OUTLINED_FUNCTION_118();
  sub_1C8D030C8(v3, v4);
  OUTLINED_FUNCTION_210();
  sub_1C8D02E34();
  sub_1C9063FBC();
  if (v2)
  {
    OUTLINED_FUNCTION_284();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  OUTLINED_FUNCTION_145();

  return sub_1C8CC1590();
}

uint64_t EnumerationDefinition.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  sub_1C9064D7C();
  TypeIdentifier.hash(into:)(v4);
  sub_1C8D0225C();
  sub_1C8D2FEF0();
  sub_1C8D030C8(v4, v1);
  sub_1C8D02E34();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v2)
  {
    sub_1C9063FBC();
  }

  sub_1C8CC1590();
  return sub_1C9064DBC();
}

void EnumerationDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319490, &qword_1C909F3A0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_233();
  v6 = OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8EF8A14(v6, v7, v8);
  OUTLINED_FUNCTION_197();
  v9 = sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1C8CB892C(v9, v10, v11);
    OUTLINED_FUNCTION_181_5();
    OUTLINED_FUNCTION_8_37();
    sub_1C9064A6C();
    v12 = v30[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317DE8, &qword_1C9090C08);
    OUTLINED_FUNCTION_91_4(1);
    sub_1C8EF8B1C();
    OUTLINED_FUNCTION_181_5();
    OUTLINED_FUNCTION_178_3();
    OUTLINED_FUNCTION_36_17();
    sub_1C9064A6C();
    v28 = v30[0];
    OUTLINED_FUNCTION_91_4(2);
    sub_1C8E053D4(v13, v14, v15);
    OUTLINED_FUNCTION_181_5();
    OUTLINED_FUNCTION_8_37();
    sub_1C9064A6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319460, &qword_1C909F360);
    OUTLINED_FUNCTION_91_4(3);
    sub_1C8EF8834();
    OUTLINED_FUNCTION_181_5();
    OUTLINED_FUNCTION_178_3();
    OUTLINED_FUNCTION_36_17();
    sub_1C9064A6C();
    v27 = v30[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD0, &qword_1C90921D8);
    OUTLINED_FUNCTION_91_4(4);
    sub_1C8E95FEC();
    OUTLINED_FUNCTION_181_5();
    OUTLINED_FUNCTION_178_3();
    OUTLINED_FUNCTION_36_17();
    sub_1C9064A6C();
    v44 = v30[0];
    v16 = v30[0];
    OUTLINED_FUNCTION_219_1();
    sub_1C8E2FB84(v17, v18, v19);
    OUTLINED_FUNCTION_8_37();
    sub_1C9064A6C();
    v20 = OUTLINED_FUNCTION_5_9();
    v21(v20);
    v26 = v39;
    v25 = v40;
    v22 = v42;
    v24 = v41;
    v23 = v43;
    v29[0] = v30[0];
    v29[1] = v30[0];
    LOBYTE(v29[2]) = v30[0];
    v29[3] = v30[0];
    v29[4] = v30[0];
    v29[5] = v39;
    v29[6] = v40;
    v29[7] = v41;
    v29[8] = v42;
    v29[9] = v43;
    memcpy(v4, v29, 0x50uLL);
    sub_1C8EF7CBC(v29, v30);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v30[0] = v12;
    v30[1] = v28;
    v31 = v44;
    v32 = v27;
    v33 = v16;
    v34 = v26;
    v35 = v25;
    v36 = v24;
    v37 = v22;
    v38 = v23;
    sub_1C8EF8C18(v30);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EEDA8C(uint64_t a1)
{
  sub_1C9064D7C();
  EnumerationDefinition.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t EnumerationCaseDefinition.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_143_3();

  return sub_1C8DF0C88(v1 + v3, a1);
}

uint64_t EnumerationCaseDefinition.displayName.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_143_3();
  sub_1C8DF0C88(v1 + v4, v0);
  v5 = type metadata accessor for DisplayRepresentation(0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
  }

  else
  {

    OUTLINED_FUNCTION_7_38();
    sub_1C8EF8C9C(v0, v6);
  }

  return OUTLINED_FUNCTION_209();
}

uint64_t EnumerationCaseDefinition.init(id:displayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  OUTLINED_FUNCTION_143_3();
  v11 = a5 + v10;
  v12 = type metadata accessor for DisplayRepresentation(0);
  v13 = v12[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  __swift_storeEnumTagSinglePayload(&v11[v13], 1, 1, v14);
  *v11 = a3;
  *(v11 + 1) = a4;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v11[32] = -1;
  *(v11 + 5) = 0;
  *(v11 + 6) = 0;
  v11[56] = -1;
  v15 = &v11[v12[8]];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *&v11[v12[9]] = MEMORY[0x1E69E7CC0];
  result = __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  *a5 = a1;
  a5[1] = a2;
  return result;
}

uint64_t static EnumerationCaseDefinition.== infix(_:_:)(void *a1, void *a2)
{
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_109_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_201();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51();
  v12 = *a1 == *a2 && a1[1] == a2[1];
  if (v12 || (sub_1C9064C2C(), result = OUTLINED_FUNCTION_274(), (v14 & 1) != 0))
  {
    v15 = *(type metadata accessor for EnumerationCaseDefinition(0) + 20);
    v16 = *(v10 + 48);
    sub_1C8DF0C88(a1 + v15, v3);
    sub_1C8DF0C88(a2 + v15, v3 + v16);
    if (OUTLINED_FUNCTION_229_3(v3) == 1)
    {
      if (OUTLINED_FUNCTION_229_3(v3 + v16) == 1)
      {
        sub_1C8D16D78(v3, &qword_1EC312788, &unk_1C906A3A0);
        return 1;
      }
    }

    else
    {
      v17 = OUTLINED_FUNCTION_209();
      sub_1C8DF0C88(v17, v18);
      if (OUTLINED_FUNCTION_229_3(v3 + v16) != 1)
      {
        OUTLINED_FUNCTION_28_19();
        sub_1C8CCEBBC(v3 + v16, v2, v20);
        static DisplayRepresentation.== infix(_:_:)();
        v22 = v21;
        sub_1C8EF8C9C(v2, type metadata accessor for DisplayRepresentation);
        sub_1C8EF8C9C(v4, type metadata accessor for DisplayRepresentation);
        sub_1C8D16D78(v3, &qword_1EC312788, &unk_1C906A3A0);
        return (v22 & 1) != 0;
      }

      OUTLINED_FUNCTION_7_38();
      sub_1C8EF8C9C(v4, v19);
    }

    sub_1C8D16D78(v3, &qword_1EC312A20, &qword_1C9068E00);
    return 0;
  }

  return result;
}

uint64_t sub_1C8EEDF04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
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

uint64_t sub_1C8EEDFCC(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1C8EEE004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EEDF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EEE02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8C48(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EEE068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8C48(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t EnumerationCaseDefinition.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319498, &qword_1C909F3A8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_38();
  v4 = OUTLINED_FUNCTION_217(a1, a1[3]);
  sub_1C8EF8C48(v4, v5, v6);
  sub_1C9064E1C();
  sub_1C9064B2C();
  if (!v1)
  {
    type metadata accessor for EnumerationCaseDefinition(0);
    OUTLINED_FUNCTION_223_0();
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_88_3();
    sub_1C8EF8BD0(v7, v8, &protocol conformance descriptor for DisplayRepresentation);
    sub_1C9064B0C();
  }

  v9 = OUTLINED_FUNCTION_148();
  return v10(v9);
}

uint64_t EnumerationCaseDefinition.hash(into:)(uint64_t a1)
{
  v4 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_109_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_201();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_143_3();
  sub_1C8DF0C88(v2 + v8, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_1C9064D9C();
  }

  OUTLINED_FUNCTION_28_19();
  sub_1C8CCEBBC(v3, v1, v10);
  sub_1C9064D9C();
  DisplayRepresentation.hash(into:)();
  OUTLINED_FUNCTION_7_38();
  return sub_1C8EF8C9C(v1, v11);
}

void EnumerationCaseDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_196();
  v24 = v23;
  v50 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v26);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v49 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194A0, &qword_1C909F3B0);
  OUTLINED_FUNCTION_11();
  v51 = v31;
  v52 = v30;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_233();
  v33 = type metadata accessor for EnumerationCaseDefinition(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  v37 = (v36 - v35);
  v38 = OUTLINED_FUNCTION_253();
  v40 = OUTLINED_FUNCTION_217(v38, v39);
  sub_1C8EF8C48(v40, v41, v42);
  OUTLINED_FUNCTION_197();
  sub_1C9064DEC();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    OUTLINED_FUNCTION_203_4();
    *v37 = sub_1C9064A0C();
    v37[1] = v43;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_88_3();
    sub_1C8EF8BD0(v44, v45, &protocol conformance descriptor for DisplayRepresentation);
    sub_1C90649EC();
    v46 = OUTLINED_FUNCTION_109();
    v47(v46);
    sub_1C8D60F48(v29, v37 + *(v33 + 20));
    sub_1C8EF92B4(v37, v50, type metadata accessor for EnumerationCaseDefinition);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_87_6();
    sub_1C8EF8C9C(v37, v48);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t EnumerationCaseDefinition.debugDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_51();
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_143_3();
  sub_1C8DF0C88(v0 + v5, v0);
  if (OUTLINED_FUNCTION_229_3(v0) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
    sub_1C906478C();

    MEMORY[0x1CCA81A90](*v0, v0[1]);
    MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  }

  else
  {
    OUTLINED_FUNCTION_28_19();
    v6 = OUTLINED_FUNCTION_209();
    sub_1C8CCEBBC(v6, v7, v8);
    sub_1C906478C();

    MEMORY[0x1CCA81A90](*v0, v0[1]);
    MEMORY[0x1CCA81A90](0x616C70736964202CLL, 0xEF203A7270655279);
    DisplayRepresentation.debugDescription.getter();
    MEMORY[0x1CCA81A90]();

    MEMORY[0x1CCA81A90](41, 0xE100000000000000);
    OUTLINED_FUNCTION_7_38();
    sub_1C8EF8C9C(v1, v9);
  }

  return OUTLINED_FUNCTION_94();
}

void QueryDefinition.PredicateTemplates.metadata.getter(uint64_t a1@<X4>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  sub_1C8D16DD0(v3, v4, v5, v6, a1);
}

uint64_t QueryDefinition.PredicateTemplates.valueSearch.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1C8CD1784(v2);
}

uint64_t QueryDefinition.PredicateTemplates.sampleInvocations.getter()
{
  if (!*(v0 + 24))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = [objc_opt_self() sharedProvider];
  v2 = sub_1C9063EBC();
  v3 = [v1 examplePhrasesForBundleIdentifier:v2 useCache:1];

  sub_1C8D72FC8();
  sub_1C906419C();

  OUTLINED_FUNCTION_147_2();
  static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v4, v5, v6, v7, v8);
  v10 = v9;

  return v10;
}

ToolKit::QueryDefinition::PredicateTemplates::PredicateMetadata __swiftcall QueryDefinition.PredicateTemplates.PredicateMetadata.init(queryIdentifier:bundleIdentifier:)(Swift::String queryIdentifier, Swift::String bundleIdentifier)
{
  *v2 = queryIdentifier;
  v2[1] = bundleIdentifier;
  result.bundleIdentifier = bundleIdentifier;
  result.queryIdentifier = queryIdentifier;
  return result;
}

uint64_t static QueryDefinition.PredicateTemplates.PredicateMetadata.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (sub_1C9064C2C(), result = OUTLINED_FUNCTION_274(), (v10 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_164_5();

      return sub_1C9064C2C();
    }
  }

  return result;
}

uint64_t sub_1C8EEEA20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564497972657571 && a2 == 0xEF7265696669746ELL;
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

uint64_t sub_1C8EEEAF8(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6564497972657571;
  }
}

uint64_t sub_1C8EEEB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EEEA20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EEEB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8CF4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EEEBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8CF4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void QueryDefinition.PredicateTemplates.PredicateMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194A8, &qword_1C909F3B8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_72();
  v3 = OUTLINED_FUNCTION_219();
  v5 = OUTLINED_FUNCTION_217(v3, v4);
  sub_1C8EF8CF4(v5, v6, v7);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_102_6();
  OUTLINED_FUNCTION_205();
  sub_1C9064B2C();
  if (!v0)
  {
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
  }

  v8 = OUTLINED_FUNCTION_30();
  v9(v8, v1);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t QueryDefinition.PredicateTemplates.PredicateMetadata.hash(into:)(uint64_t a1)
{
  sub_1C9063FBC();
  OUTLINED_FUNCTION_145();

  return sub_1C9063FBC();
}

uint64_t QueryDefinition.PredicateTemplates.PredicateMetadata.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_18_20(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1C9063FBC();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void QueryDefinition.PredicateTemplates.PredicateMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194B0, &qword_1C909F3C0);
  OUTLINED_FUNCTION_11();
  v28 = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15_0();
  v30 = OUTLINED_FUNCTION_210();
  v32 = OUTLINED_FUNCTION_217(v30, v31);
  sub_1C8EF8CF4(v32, v33, v34);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    OUTLINED_FUNCTION_203_4();
    v35 = sub_1C9064A0C();
    v37 = v36;
    OUTLINED_FUNCTION_223_0();
    v38 = sub_1C9064A0C();
    v40 = v39;
    v41 = v38;
    (*(v28 + 8))(v25, v26);
    *v24 = v35;
    v24[1] = v37;
    v24[2] = v41;
    v24[3] = v40;

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

void QueryDefinition.PredicateTemplates.init(comparison:stringSearch:idSearch:searchableItem:all:suggested:valueSearch:metadata:)(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a7;
  *a9 = a1;
  *(a9 + 8) = (a2 & 1) == 0;
  *(a9 + 9) = (a3 & 1) == 0;
  *(a9 + 10) = (a4 & 1) == 0;
  *(a9 + 11) = (a5 & 1) == 0;
  *(a9 + 12) = 1;
  *(a9 + 13) = (a6 & 1) == 0;
  v10 = a8[1];
  *(a9 + 16) = *a8;
  *(a9 + 32) = v10;
  *(a9 + 48) = v9;
  OUTLINED_FUNCTION_101_5();
}

double static QueryDefinition.PredicateTemplates.all.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 257;
  *(a1 + 10) = 16842753;
  return OUTLINED_FUNCTION_38_19(a1);
}

double static QueryDefinition.PredicateTemplates.valid.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 257;
  *(a1 + 10) = 16777473;
  return OUTLINED_FUNCTION_38_19(a1);
}

double sub_1C8EEF0C8@<D0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = MEMORY[0x1E69E7CC0];
  *(a5 + 8) = a1;
  *(a5 + 9) = a2;
  *(a5 + 10) = a3;
  *(a5 + 11) = 257;
  *(a5 + 13) = a4;
  return OUTLINED_FUNCTION_38_19(a5);
}

uint64_t static QueryDefinition.PredicateTemplates.valueSearch(input:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 257;
  *(a2 + 10) = 16843009;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = v2;
}

void QueryDefinition.PredicateTemplates.merging(with:)(uint64_t *a1@<X0>, uint64_t a6@<X8>)
{
  v28 = *(a1 + 9);
  v29 = *(a1 + 10);
  v30 = *(a1 + 11);
  v26 = *(a1 + 8);
  v27 = *(a1 + 12);
  v8 = a1[6];
  v22 = *(v6 + 9);
  v23 = *(v6 + 10);
  v24 = *(v6 + 11);
  v25 = *(a1 + 13);
  v20 = *(v6 + 8);
  v21 = *(v6 + 12);
  v9 = *(v6 + 13);
  v10 = v6[2];
  v11 = v6[3];
  v12 = v6[4];
  v13 = v6[5];
  v14 = v6[6];
  v31 = *v6;

  sub_1C8D37D9C(v15);
  v16 = v14;
  if ((~v14 & 0xF000000000000007) == 0)
  {
    sub_1C8CD1784(v8);
    v16 = v8;
  }

  *a6 = v31;
  *(a6 + 8) = v20 & v26;
  *(a6 + 9) = v22 & v28;
  *(a6 + 10) = v23 & v29;
  *(a6 + 11) = v24 & v30;
  *(a6 + 12) = v21 & v27;
  *(a6 + 13) = v9 & v25;
  *(a6 + 16) = v10;
  *(a6 + 24) = v11;
  *(a6 + 32) = v12;
  *(a6 + 40) = v13;
  *(a6 + 48) = v16;
  sub_1C8CD1784(v14);
  v17 = OUTLINED_FUNCTION_249();

  sub_1C8D16DD0(v17, v18, v12, v13, v19);
}

uint64_t QueryDefinition.PredicateTemplates.fetchSampleInvocations()()
{
  if (!*(v0 + 24))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedProvider];
  v3 = sub_1C9063EBC();
  v4 = OUTLINED_FUNCTION_178_3();
  v6 = [v4 v5];

  sub_1C8D72FC8();
  sub_1C906419C();

  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_147_2();
  static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_228_4();
  return v1;
}

uint64_t sub_1C8EEF3BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6553676E69727473 && a2 == 0xEC00000068637261;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6863726165536469 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6261686372616573 && a2 == 0xEE006D657449656CLL;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 7105633 && a2 == 0xE300000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x64696C6176 && a2 == 0xE500000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6574736567677573 && a2 == 0xE900000000000064;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x61655365756C6176 && a2 == 0xEB00000000686372)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9064C2C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8EEF698(char a1)
{
  result = 0x73697261706D6F63;
  switch(a1)
  {
    case 1:
      result = 0x6553676E69727473;
      break;
    case 2:
      result = 0x6863726165536469;
      break;
    case 3:
      result = 0x6261686372616573;
      break;
    case 4:
      result = 7105633;
      break;
    case 5:
      result = 0x64696C6176;
      break;
    case 6:
      result = 0x6574736567677573;
      break;
    case 7:
      result = 0x617461646174656DLL;
      break;
    case 8:
      result = 0x61655365756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EEF7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EEF3BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EEF7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8D48(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EEF818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF8D48(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void QueryDefinition.PredicateTemplates.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194B8, &qword_1C909F3C8);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72();
  v41 = v0[2];
  v42 = v0[3];
  v43 = v0[5];
  v44 = v0[4];
  v7 = v0[6];
  v8 = v3[3];
  v9 = v3;
  v11 = v10;
  v12 = OUTLINED_FUNCTION_217(v9, v8);
  v15 = sub_1C8EF8D48(v12, v13, v14);

  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194C0, &qword_1C909F3D0);
  sub_1C8EF8D9C();
  OUTLINED_FUNCTION_35_18();
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  if (v15)
  {

    (*(v5 + 8))(v1, v11);
  }

  else
  {

    OUTLINED_FUNCTION_275();
    sub_1C8DCE1D8(v16, v17, v18);
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    OUTLINED_FUNCTION_119_1();
    sub_1C8D0BDD4(v19, v20, v21);
    OUTLINED_FUNCTION_35_18();
    v22 = sub_1C9064B0C();
    sub_1C8EF8E50(v22, v23, v24);
    OUTLINED_FUNCTION_35_18();
    v25 = sub_1C9064B0C();
    sub_1C8DCDA34(v25, v26, v27);
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    OUTLINED_FUNCTION_219_1();
    sub_1C8DCD98C(v28, v29, v30);
    OUTLINED_FUNCTION_35_18();
    v31 = sub_1C9064B0C();
    sub_1C8D94414(v31, v32, v33);
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    sub_1C8D16DD0(v41, v42, v44, v43, v34);
    sub_1C8EF8EA4(v35, v36, v37);
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    sub_1C8D16E14(v41, v42);
    v38 = sub_1C8CD1784(v7);
    sub_1C8E2E5F0(v38, v39, v40);
    OUTLINED_FUNCTION_35_18();
    sub_1C9064B0C();
    sub_1C8CD0FB0(v7);
    (*(v5 + 8))(v1, v11);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t QueryDefinition.PredicateTemplates.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 48);
  sub_1C8D03E64();
  sub_1C9064D9C();
  sub_1C9064D9C();
  sub_1C9064D9C();
  sub_1C9064D9C();
  sub_1C9064D9C();
  sub_1C9064D9C();
  if (v2)
  {
    OUTLINED_FUNCTION_284();
    sub_1C9063FBC();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  if ((~v4 & 0xF000000000000007) == 0)
  {
    return OUTLINED_FUNCTION_283();
  }

  OUTLINED_FUNCTION_284();
  return TypeInstance.hash(into:)();
}

uint64_t QueryDefinition.PredicateTemplates.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  QueryDefinition.PredicateTemplates.hash(into:)(v1);
  return sub_1C9064DBC();
}

void QueryDefinition.PredicateTemplates.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194C8, &qword_1C909F3D8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_233();
  v6 = OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8EF8D48(v6, v7, v8);
  OUTLINED_FUNCTION_197();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194C0, &qword_1C909F3D0);
    sub_1C8EF8EF8();
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_178_3();
    OUTLINED_FUNCTION_36_17();
    v9 = sub_1C9064A6C();
    v41 = v44;
    sub_1C8DCE280(v9, v10, v11);
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    v12 = sub_1C90649EC();
    v49 = v44;
    sub_1C8D0BD80(v12, v13, v14);
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    v15 = sub_1C90649EC();
    v54 = v44;
    sub_1C8EF8FAC(v15, v16, v17);
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    v18 = sub_1C90649EC();
    v53 = v44;
    sub_1C8DCDE28(v18, v19, v20);
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    v21 = sub_1C90649EC();
    v52 = v44;
    sub_1C8DCDDD4(v21, v22, v23);
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    v24 = sub_1C90649EC();
    v51 = v44;
    sub_1C8D943C0(v24, v25, v26);
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    v27 = sub_1C90649EC();
    v50 = v44;
    sub_1C8EF9000(v27, v28, v29);
    OUTLINED_FUNCTION_122_7();
    OUTLINED_FUNCTION_8_37();
    v30 = sub_1C90649EC();
    v31 = v44;
    v40 = v45;
    sub_1C8E2E59C(v30, v32, v33);
    OUTLINED_FUNCTION_8_37();
    sub_1C90649EC();
    v34 = OUTLINED_FUNCTION_5_9();
    v35(v34);
    v36 = v48;
    *&v42[0] = v44;
    BYTE8(v42[0]) = v44;
    BYTE9(v42[0]) = v44;
    BYTE10(v42[0]) = v44;
    BYTE11(v42[0]) = v44;
    BYTE12(v42[0]) = v44;
    BYTE13(v42[0]) = v44;
    v42[1] = v44;
    v42[2] = v45;
    v43 = v48;
    v37 = v42[0];
    v38 = v44;
    v39 = v45;
    *(v4 + 48) = v48;
    *(v4 + 16) = v38;
    *(v4 + 32) = v39;
    *v4 = v37;
    sub_1C8D3A7FC(v42, &v44);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *&v44 = v41;
    WORD4(v44) = __PAIR16__(v54, v49);
    WORD5(v44) = __PAIR16__(v52, v53);
    BYTE12(v44) = v51;
    BYTE13(v44) = v50;
    v45 = v31;
    v46 = v40;
    v47 = v36;
    sub_1C8D3ABC4(&v44);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF0160(uint64_t a1)
{
  sub_1C9064D7C();
  QueryDefinition.PredicateTemplates.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t QueryDefinition.templates.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v2;
  v8 = *(v1 + 40);
  v3 = v8;
  v9 = *(v1 + 56);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1C8D3A7FC(v7, v6);
}

void QueryDefinition.init(identifier:predicates:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = 257;
  *(a3 + 18) = 16843009;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0xF000000000000007;
  *(a3 + 64) = a2;
  OUTLINED_FUNCTION_101_5();
}

uint64_t sub_1C8EF024C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574616C706D6574 && a2 == 0xE900000000000073;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7461636964657270 && a2 == 0xEA00000000007365)
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

uint64_t sub_1C8EF0370(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x6574616C706D6574;
  }

  return 0x7461636964657270;
}

uint64_t sub_1C8EF03D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EF024C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EF0400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9054(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF043C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9054(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void QueryDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194D0, &qword_1C909F3E0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_72();
  v6 = *v0;
  v7 = *(v0 + 3);
  v24 = *(v0 + 1);
  v25 = v7;
  v26 = *(v0 + 5);
  v27 = v0[7];
  v8 = OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8EF9054(v8, v9, v10);

  OUTLINED_FUNCTION_200();
  v11 = sub_1C9064E1C();
  *&v20 = v6;
  v19[0] = 0;
  sub_1C8C9FB9C(v11, v12, v13);
  sub_1C9064B8C();
  if (v1)
  {
  }

  else
  {

    v20 = v24;
    v21 = v25;
    v22 = v26;
    v23 = v27;
    v19[63] = 1;
    v14 = sub_1C8D3A7FC(&v24, v19);
    sub_1C8D3DD18(v14, v15, v16);
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_112_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194D8, &qword_1C909F3E8);
    sub_1C8EF90A8();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  v17 = OUTLINED_FUNCTION_174_4();
  v18(v17, v4);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void QueryDefinition.hash(into:)(uint64_t a1)
{
  TypeIdentifier.hash(into:)(a1);
  QueryDefinition.PredicateTemplates.hash(into:)(a1);
  OUTLINED_FUNCTION_249();

  sub_1C8D03AE4();
}

uint64_t QueryDefinition.hashValue.getter()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_298();
  v10 = OUTLINED_FUNCTION_252_1(v2, v3, v4, v5, v6, v7, v8, v9, v1, v12[0]);
  TypeIdentifier.hash(into:)(v10);
  QueryDefinition.PredicateTemplates.hash(into:)(v12);
  sub_1C8D03AE4();
  return sub_1C9064DBC();
}

void QueryDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194E0, &unk_1C909F3F0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_233();
  v6 = OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8EF9054(v6, v7, v8);
  OUTLINED_FUNCTION_197();
  v9 = sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v19[0]) = 0;
    sub_1C8CB892C(v9, v10, v11);
    OUTLINED_FUNCTION_153_0();
    v12 = sub_1C9064A6C();
    v18 = v20;
    v28 = 1;
    sub_1C8D3DDC0(v12, v13, v14);
    OUTLINED_FUNCTION_153_0();
    sub_1C9064A6C();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    v36 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194D8, &qword_1C909F3E8);
    v26 = 2;
    sub_1C8EF917C();
    sub_1C9064A6C();
    v15 = OUTLINED_FUNCTION_52_14();
    v16(v15, v37);
    v17 = v27;
    v19[0] = v18;
    *&v19[1] = v33;
    *&v19[3] = v34;
    *&v19[5] = v35;
    v19[7] = v36;
    v19[8] = v27;
    memcpy(v4, v19, 0x48uLL);
    sub_1C8EF7C84(v19, &v20);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v20 = v18;
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v17;
    sub_1C8EF9230(&v20);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF0AA8(uint64_t a1)
{
  sub_1C9064D7C();
  QueryDefinition.hash(into:)(v2);
  return sub_1C9064DBC();
}

void TypeDefinition.debugDescription.getter()
{
  OUTLINED_FUNCTION_164();
  v2 = type metadata accessor for EnumerationCaseDefinition(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_109_3();
  v4 = v1[1];
  switch(*(v1 + 96))
  {
    case 1:
      v6 = v1[3];
      v7 = v1[4];
      goto LABEL_5;
    case 2:
      v8 = *(v4 + 16);
      if (v8)
      {
        v24 = MEMORY[0x1E69E7CC0];
        sub_1C8CA6480();
        v9 = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v10 = *(v3 + 72);
        do
        {
          v11 = OUTLINED_FUNCTION_148();
          sub_1C8EF92B4(v11, v12, v13);
          v15 = *v0;
          v14 = v0[1];

          OUTLINED_FUNCTION_87_6();
          sub_1C8EF8C9C(v0, v16);
          v17 = *(v24 + 16);
          if (v17 >= *(v24 + 24) >> 1)
          {
            sub_1C8CA6480();
          }

          *(v24 + 16) = v17 + 1;
          v18 = v24 + 16 * v17;
          *(v18 + 32) = v15;
          *(v18 + 40) = v14;
          v9 += v10;
          --v8;
        }

        while (v8);
      }

      v19 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
      OUTLINED_FUNCTION_0_0();
      sub_1C8D28184(v21, &qword_1EC312558, &qword_1C9066990, v22);
      sub_1C9063E9C();

      v23 = OUTLINED_FUNCTION_253();
      MEMORY[0x1CCA81A90](v23);
      goto LABEL_12;
    case 3:
    case 5:
      goto LABEL_14;
    case 4:
      v6 = *v1;
      v7 = v1[1];
LABEL_5:
      MEMORY[0x1CCA81A90](v6, v7);
      goto LABEL_13;
    default:
      v5 = TypeIdentifier.PrimitiveTypeIdentifier.debugDescription.getter();
      MEMORY[0x1CCA81A90](v5);
LABEL_12:

LABEL_13:
      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
LABEL_14:
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t DynamicEnumerationDefinition.init(toolIdentifier:parameterKey:typeIdentifier:enumeratedTypeIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v7 = *a5;
  v8 = *a6;
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = v7;
  a7[5] = v8;
  return result;
}

uint64_t sub_1C8EF0E30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564496C6F6F74 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
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

    else
    {
      v7 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000018 && 0x80000001C90CCB30 == a2)
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

unint64_t sub_1C8EF0FA4(char a1)
{
  result = 0x6E6564496C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x6574656D61726170;
      break;
    case 2:
      result = 0x6E65644965707974;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EF1044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EF0E30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EF106C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9260(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF10A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9260(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void DynamicEnumerationDefinition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v24;
  a20 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194E8, &qword_1C909F400);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_171_5();
  v38 = *(v20 + 40);
  v39 = *(v20 + 32);
  v28 = OUTLINED_FUNCTION_219();
  v30 = OUTLINED_FUNCTION_217(v28, v29);
  sub_1C8EF9260(v30, v31, v32);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  LOBYTE(a10) = 0;
  OUTLINED_FUNCTION_187_7(v22, v23, &a10);
  if (!v21)
  {
    OUTLINED_FUNCTION_277_0();
    OUTLINED_FUNCTION_205();
    v33 = sub_1C9064B2C();
    a10 = v39;
    sub_1C8C9FB9C(v33, v34, v35);

    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_193_4();
    a10 = v38;

    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_193_4();
  }

  v36 = OUTLINED_FUNCTION_174_4();
  v37(v36, v26);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t DynamicEnumerationDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_161_5();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_145();
  sub_1C9063FBC();
  v0 = OUTLINED_FUNCTION_297();
  TypeIdentifier.hash(into:)(v0);
  v1 = OUTLINED_FUNCTION_297();
  return TypeIdentifier.hash(into:)(v1);
}

uint64_t DynamicEnumerationDefinition.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_18_20(v3, v4, v5, v6, v7, v8, v9, v10, v30, v31);
  sub_1C9063FBC();
  OUTLINED_FUNCTION_104_2();
  v11 = sub_1C9063FBC();
  v19 = OUTLINED_FUNCTION_252_1(v11, v12, v13, v14, v15, v16, v17, v18, v1, v32);
  v20 = TypeIdentifier.hash(into:)(v19);
  v28 = OUTLINED_FUNCTION_252_1(v20, v21, v22, v23, v24, v25, v26, v27, v2, v33);
  TypeIdentifier.hash(into:)(v28);
  return sub_1C9064DBC();
}

void DynamicEnumerationDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194F0, &unk_1C909F408);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_86();
  v16 = OUTLINED_FUNCTION_117();
  v18 = OUTLINED_FUNCTION_217(v16, v17);
  sub_1C8EF9260(v18, v19, v20);
  sub_1C9064DEC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    LOBYTE(a10) = 0;
    v21 = OUTLINED_FUNCTION_223_3();
    v30 = v22;
    OUTLINED_FUNCTION_277_0();
    v23 = OUTLINED_FUNCTION_223_3();
    v29 = v24;
    v28 = v23;
    sub_1C8CB892C(v23, v24, v25);
    OUTLINED_FUNCTION_63_12();
    sub_1C9064A6C();
    OUTLINED_FUNCTION_63_12();
    sub_1C9064A6C();
    v26 = OUTLINED_FUNCTION_12_2();
    v27(v26);
    *v14 = v21;
    v14[1] = v30;
    v14[2] = v28;
    v14[3] = v29;
    v14[4] = a10;
    v14[5] = a10;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF1658(uint64_t a1)
{
  sub_1C9064D7C();
  DynamicEnumerationDefinition.hash(into:)();
  return sub_1C9064DBC();
}

void static ComparisonPredicateTypeOrPredicate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for ComparisonPredicate(0);
  v6 = OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  type metadata accessor for ComparisonPredicateTypeOrPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v40 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129C0, &qword_1C9068DA0);
  OUTLINED_FUNCTION_9(v17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_51();
  v20 = (v0 + *(v19 + 56));
  sub_1C8EF92B4(v4, v0, type metadata accessor for ComparisonPredicateTypeOrPredicate);
  sub_1C8EF92B4(v2, v20, type metadata accessor for ComparisonPredicateTypeOrPredicate);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_36();
    sub_1C8EF92B4(v0, v13, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_85_5();
      v22 = OUTLINED_FUNCTION_249();
      sub_1C8CCEBBC(v22, v23, v24);
      v25 = OUTLINED_FUNCTION_278();
      static ComparisonPredicate.== infix(_:_:)(v25, v26);
      sub_1C8EF8C9C(v9, type metadata accessor for ComparisonPredicate);
      sub_1C8EF8C9C(v13, type metadata accessor for ComparisonPredicate);
LABEL_9:
      sub_1C8EF8C9C(v0, type metadata accessor for ComparisonPredicateTypeOrPredicate);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_27_16();
    sub_1C8EF8C9C(v13, v32);
  }

  else
  {
    OUTLINED_FUNCTION_6_36();
    v27 = OUTLINED_FUNCTION_276();
    sub_1C8EF92B4(v27, v28, v29);
    v30 = v16[1];
    v43[0] = *v16;
    v43[1] = v30;
    v31 = v16[3];
    v43[2] = v16[2];
    v43[3] = v31;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v33 = v20[1];
      v42[0] = *v20;
      v42[1] = v33;
      v34 = v20[3];
      v36 = *v20;
      v35 = v20[1];
      v42[2] = v20[2];
      v42[3] = v34;
      v37 = v16[1];
      v41[0] = *v16;
      v41[1] = v37;
      v38 = v16[3];
      v41[2] = v16[2];
      v41[3] = v38;
      v40[0] = v36;
      v40[1] = v35;
      v39 = v20[3];
      v40[2] = v20[2];
      v40[3] = v39;
      static ComparisonPredicateType.== infix(_:_:)(v41);
      sub_1C8D07050(v42);
      sub_1C8D07050(v43);
      goto LABEL_9;
    }

    sub_1C8D07050(v43);
  }

  sub_1C8D16D78(v0, &qword_1EC3129C0, &qword_1C9068DA0);
LABEL_10:
  OUTLINED_FUNCTION_163();
}

uint64_t static ComparisonPredicateType.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  v10 = v3[7];
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  v14 = v2[5];
  v15 = v1 == *v2 && v4 == v2[1];
  v16 = v2[6];
  v20 = v2[7];
  v21 = v10;
  if (v15 || (sub_1C9064C2C()) && (v23[0] = v5, v23[1] = v6, v23[2] = v7, v23[3] = v8, v23[4] = v9, v22[0] = v11, v22[1] = v12, v22[2] = v13, v22[3] = v14, v22[4] = v16, , , , , , , v17 = static EntityPropertyDefinition.== infix(_:_:)(v23), , , , , , , (v17))
  {
    v23[0] = v21;
    v22[0] = v20;
    sub_1C8D076FC(v21);
    sub_1C8D076FC(v20);
    v18 = static ComparisonPredicateType.ComparisonType.== infix(_:_:)(v23, v22);
    sub_1C8D07700(v20);
    sub_1C8D07700(v21);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1C8EF1AAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7461636964657270 && a2 == 0xED00006570795465;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
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

uint64_t sub_1C8EF1BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EF1AAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EF1BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9310(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF1C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9310(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF1C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9364(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF1C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9364(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF1CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF93B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF1D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF93B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ComparisonPredicateTypeOrPredicate.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v65 = v20;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3194F8, &qword_1C909F418);
  OUTLINED_FUNCTION_11();
  v64 = v26;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_97();
  type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_0(v30 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319500, &qword_1C909F420);
  OUTLINED_FUNCTION_4_22(v31, &a16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_142();
  type metadata accessor for ComparisonPredicateTypeOrPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v36 = (v35 - v34);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319508, &qword_1C909F428);
  OUTLINED_FUNCTION_11();
  v39 = v38;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15_0();
  v41 = OUTLINED_FUNCTION_217(v25, v25[3]);
  sub_1C8EF9310(v41, v42, v43);
  OUTLINED_FUNCTION_103_0();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_6_36();
  sub_1C8EF92B4(v65, v36, v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v48 = sub_1C8CCEBBC(v36, v63, type metadata accessor for ComparisonPredicate);
    LOBYTE(v66[0]) = 1;
    sub_1C8EF9364(v48, v49, v50);
    OUTLINED_FUNCTION_23_23();
    sub_1C9064ACC();
    OUTLINED_FUNCTION_83_6();
    sub_1C8EF8BD0(v51, v52, &protocol conformance descriptor for ComparisonPredicate);
    sub_1C9064B8C();
    v53 = OUTLINED_FUNCTION_30();
    v54(v53, v64);
    OUTLINED_FUNCTION_27_16();
    sub_1C8EF8C9C(v63, v55);
    (*(v39 + 8))(v21, v37);
  }

  else
  {
    v56 = v36[1];
    v66[0] = *v36;
    v66[1] = v56;
    v57 = v36[3];
    v66[2] = v36[2];
    v66[3] = v57;
    sub_1C8EF93B8(EnumCaseMultiPayload, v46, v47);
    OUTLINED_FUNCTION_23_23();
    v58 = sub_1C9064ACC();
    sub_1C8EF940C(v58, v59, v60);
    sub_1C9064B8C();
    OUTLINED_FUNCTION_296();
    v61 = OUTLINED_FUNCTION_253();
    v62(v61);
    (*(v39 + 8))(v21, v37);
    sub_1C8D07050(v66);
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void ComparisonPredicateTypeOrPredicate.hash(into:)()
{
  OUTLINED_FUNCTION_164();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for ComparisonPredicate(0);
  v6 = OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  type metadata accessor for ComparisonPredicateTypeOrPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_6_36();
  sub_1C8EF92B4(v2, v10, v11);
  OUTLINED_FUNCTION_276();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_85_5();
    v12 = OUTLINED_FUNCTION_209();
    sub_1C8CCEBBC(v12, v13, v14);
    MEMORY[0x1CCA82810](1);
    ComparisonPredicate.hash(into:)(v4);
    OUTLINED_FUNCTION_27_16();
    sub_1C8EF8C9C(v1, v15);
  }

  else
  {
    v16 = *(v10 + 56);
    MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_145();
    sub_1C9063FBC();
    OUTLINED_FUNCTION_117();
    sub_1C9063FBC();
    OUTLINED_FUNCTION_118();
    sub_1C9063FBC();
    TypeInstance.hash(into:)();
    ComparisonPredicateType.ComparisonType.hash(into:)();

    sub_1C8D07700(v16);
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8EF22CC(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_298();
  a1(v3);
  return sub_1C9064DBC();
}

void ComparisonPredicateTypeOrPredicate.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v84 = v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319528, &qword_1C909F430);
  OUTLINED_FUNCTION_11();
  v89 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97();
  v92 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319530, &qword_1C909F438);
  OUTLINED_FUNCTION_11();
  v85 = v8;
  v86 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v88 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319538, &qword_1C909F440);
  OUTLINED_FUNCTION_11();
  v90 = v12;
  v91 = v11;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_38();
  v14 = type metadata accessor for ComparisonPredicateTypeOrPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v80 - v23;
  v25 = OUTLINED_FUNCTION_219();
  v27 = OUTLINED_FUNCTION_217(v25, v26);
  sub_1C8EF9310(v27, v28, v29);
  sub_1C9064DEC();
  if (!v0)
  {
    v80 = v21;
    v81 = v24;
    v82 = v18;
    v83 = v14;
    v30 = v91;
    v97 = v2;
    v31 = sub_1C9064A9C();
    v32 = sub_1C8CB8914(v31, 0);
    if (v34 != v33 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v39 == v40)
      {
        __break(1u);
        return;
      }

      v41 = *(v38 + v36);
      sub_1C8CB891C(v36 + 1, v35, v32, v38, v36, v37);
      v43 = v42;
      v45 = v44;
      v46 = swift_unknownObjectRelease();
      if (v43 == v45 >> 1)
      {
        if (v41)
        {
          LOBYTE(v93) = 1;
          sub_1C8EF9364(v46, v47, v48);
          OUTLINED_FUNCTION_98_4();
          sub_1C906498C();
          type metadata accessor for ComparisonPredicate(0);
          OUTLINED_FUNCTION_83_6();
          sub_1C8EF8BD0(v59, v60, &protocol conformance descriptor for ComparisonPredicate);
          v61 = v82;
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          v66 = OUTLINED_FUNCTION_117();
          v67(v66);
          v68 = OUTLINED_FUNCTION_54_10();
          v69(v68, v30);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_29_19();
          v71 = v61;
        }

        else
        {
          LOBYTE(v93) = 0;
          sub_1C8EF93B8(v46, v47, v48);
          v57 = v88;
          OUTLINED_FUNCTION_98_4();
          v58 = sub_1C906498C();
          sub_1C8EF9460(v58, v62, v63);
          v64 = v86;
          sub_1C9064A6C();
          v65 = (v85 + 8);
          swift_unknownObjectRelease();
          (*v65)(v57, v64);
          v72 = OUTLINED_FUNCTION_114_0();
          v73(v72);
          v74 = v94;
          v75 = v80;
          *v80 = v93;
          v75[1] = v74;
          v76 = v96;
          v75[2] = v95;
          v75[3] = v76;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_29_19();
          v71 = v75;
        }

        v77 = v81;
        sub_1C8CCEBBC(v71, v81, v70);
        OUTLINED_FUNCTION_29_19();
        sub_1C8CCEBBC(v77, v78, v79);
        __swift_destroy_boxed_opaque_existential_1(v97);
        goto LABEL_11;
      }
    }

    v49 = v83;
    v50 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v50, MEMORY[0x1E69E6B28]);
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v52 = v49;
    v53 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v53);
    OUTLINED_FUNCTION_10_0();
    (*(v54 + 104))(v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = OUTLINED_FUNCTION_54_10();
    v56(v55, v30);
    v2 = v97;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_11:
  OUTLINED_FUNCTION_198();
}