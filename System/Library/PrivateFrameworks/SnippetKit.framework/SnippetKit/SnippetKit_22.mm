uint64_t sub_26A3076A0(void (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_141_0();
  a1(0);
  OUTLINED_FUNCTION_48_11();
  type metadata accessor for _ProtoActionProperty(0);
  v4 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_88();
  sub_26A0E48F0(v9, v10, &off_26A427400);
  return v8;
}

uint64_t sub_26A30776C@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  (a1)(0, v6);
  OUTLINED_FUNCTION_32_2();
  v9 = type metadata accessor for _ProtoActionProperty(0);
  v10 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v10, v11, v9);
  if (!v12)
  {
    return sub_26A27BEAC();
  }

  *a2 = MEMORY[0x277D84F90];
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v13 = OUTLINED_FUNCTION_71();
  result = OUTLINED_FUNCTION_37(v13, v14, v9);
  if (!v12)
  {
    return sub_26A0E48F0(v8, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t sub_26A3078AC()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  sub_26A0E48F0(v0 + *(v3 + 24), &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_3_44();
  sub_26A27BEAC();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26A307944()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  sub_26A0E48F0(v0 + *(v3 + 28), &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_10_41();
  sub_26A27BEAC();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26A3079DC(void (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_141_0();
  a1(0);
  OUTLINED_FUNCTION_48_11();
  type metadata accessor for _ProtoTextProperty(0);
  v4 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_88();
  sub_26A0E48F0(v9, v10, &unk_26A425BF0);
  return v8;
}

void (*_ProtoSecondaryHeader_Standard.text1.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  v7 = type metadata accessor for _ProtoTextProperty(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoSecondaryHeader_Standard(v12);
  OUTLINED_FUNCTION_15_16(v13);
  v14 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v14, v15, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v17 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
    v24 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_37(v24, v25, v7);
    if (!v16)
    {
      sub_26A0E48F0(v5, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A27BEAC();
  }

  return sub_26A307BFC;
}

void (*_ProtoSecondaryHeader_Standard.action.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  v7 = type metadata accessor for _ProtoActionProperty(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoSecondaryHeader_Standard(v12);
  OUTLINED_FUNCTION_26_25(v13);
  v14 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v14, v15, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    v17 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v17, v18, v7);
    if (!v16)
    {
      sub_26A0E48F0(v5, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A27BEAC();
  }

  return sub_26A307D78;
}

void sub_26A307DA0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    sub_26A27C654();
    sub_26A0E48F0(v12 + v7, a3, a4);
    sub_26A27BEAC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
    OUTLINED_FUNCTION_12_2();
    sub_26A27C6A8();
  }

  else
  {
    sub_26A0E48F0(v12 + v7, a3, a4);
    sub_26A27BEAC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t _ProtoSecondaryHeader_Standard.componentName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void (*_ProtoSecondaryHeader_Standard.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoSecondaryHeader_Standard(v0);
  return nullsub_1;
}

uint64_t (*_ProtoSecondaryHeader_Emphasized.text1.modify())(uint64_t, uint64_t)
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  v7 = type metadata accessor for _ProtoTextProperty(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v12);
  OUTLINED_FUNCTION_15_16(v13);
  v14 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v14, v15, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v17 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
    v24 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_37(v24, v25, v7);
    if (!v16)
    {
      sub_26A0E48F0(v5, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A27BEAC();
  }

  return sub_26A309F54;
}

uint64_t sub_26A308154(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_26A0E48F0(v1 + *(v2 + 24), &qword_28036C7B8, &unk_26A425BF0);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_26A3081C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_12_2();
  sub_26A27C654();
  return a7(v7);
}

uint64_t (*_ProtoSecondaryHeader_Emphasized.action.modify())(uint64_t, uint64_t)
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  v7 = type metadata accessor for _ProtoActionProperty(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v12);
  OUTLINED_FUNCTION_26_25(v13);
  v14 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v14, v15, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    v17 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v17, v18, v7);
    if (!v16)
    {
      sub_26A0E48F0(v5, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A27BEAC();
  }

  return sub_26A309F58;
}

uint64_t sub_26A3083A4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_26A0E48F0(v1 + *(v2 + 28), &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_26A308448@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_26A3084DC()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

void (*_ProtoSecondaryHeader_Emphasized.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoSecondaryHeader_Emphasized(v0);
  return nullsub_1;
}

uint64_t sub_26A3085AC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a1(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_26A308728(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A3087CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A308728(&qword_280372530, type metadata accessor for _ProtoSecondaryHeader_Standard, &protocol conformance descriptor for _ProtoSecondaryHeader_Standard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A30884C(uint64_t a1)
{
  v2 = sub_26A308728(&qword_28036D098, type metadata accessor for _ProtoSecondaryHeader_Standard, &protocol conformance descriptor for _ProtoSecondaryHeader_Standard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3088BC(uint64_t a1, uint64_t a2)
{
  sub_26A308728(&qword_28036D098, type metadata accessor for _ProtoSecondaryHeader_Standard, &protocol conformance descriptor for _ProtoSecondaryHeader_Standard);

  return sub_26A4249B4();
}

uint64_t sub_26A308964(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26A424AC4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26A425BE0;
  v8 = (v7 + v6);
  v9 = v7 + v6 + v4[14];
  *v8 = 1;
  *v9 = "text_1";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v11 = sub_26A424A94();
  OUTLINED_FUNCTION_12();
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v14 = 0x26A44B000;
  *(v14 + 1) = 6;
  v14[16] = 2;
  v13();
  v15 = (v8 + 2 * v5);
  v16 = v15 + v4[14];
  *v15 = 3;
  *v16 = "component_name";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v13();
  return sub_26A424AA4();
}

uint64_t sub_26A308BA8(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_26A424834();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_26A424924();
        break;
      case 2:
        OUTLINED_FUNCTION_25_16();
        sub_26A308CC0();
        break;
      case 1:
        OUTLINED_FUNCTION_25_16();
        sub_26A308C48();
        break;
    }
  }

  return result;
}

uint64_t sub_26A308C48()
{
  v0 = OUTLINED_FUNCTION_18_15();
  v1(v0);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_5_38();
  v4 = sub_26A308728(v2, v3, &protocol conformance descriptor for _ProtoTextProperty);
  return OUTLINED_FUNCTION_23_9(v4);
}

uint64_t sub_26A308CC0()
{
  v0 = OUTLINED_FUNCTION_18_15();
  v1(v0);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_11_28();
  v4 = sub_26A308728(v2, v3, &protocol conformance descriptor for _ProtoActionProperty);
  return OUTLINED_FUNCTION_23_9(v4);
}

uint64_t sub_26A308D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  result = sub_26A308E50(v5, a1, a2, a3);
  if (!v6)
  {
    sub_26A308FC4(v5, a1, a2, a3);
    v12 = v5[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_26A424A64();
    }

    a5(0);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A308E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_10(a1, a2, a3, a4);
  v6 = OUTLINED_FUNCTION_12_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_140_0();
  v11 = type metadata accessor for _ProtoTextProperty(v10);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v15 = v14 - v13;
  v5(0);
  OUTLINED_FUNCTION_49_12();
  if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
  {
    return sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A27BEAC();
  OUTLINED_FUNCTION_5_38();
  v19 = sub_26A308728(v17, v18, &protocol conformance descriptor for _ProtoTextProperty);
  OUTLINED_FUNCTION_47_7(v15, 1, v20, v19);
  return sub_26A27C6A8();
}

uint64_t sub_26A308FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_10(a1, a2, a3, a4);
  v6 = OUTLINED_FUNCTION_12_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_140_0();
  v11 = type metadata accessor for _ProtoActionProperty(v10);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v15 = v14 - v13;
  v5(0);
  OUTLINED_FUNCTION_49_12();
  if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
  {
    return sub_26A0E48F0(v4, &off_28036C7C0, &off_26A427400);
  }

  sub_26A27BEAC();
  OUTLINED_FUNCTION_11_28();
  v19 = sub_26A308728(v17, v18, &protocol conformance descriptor for _ProtoActionProperty);
  OUTLINED_FUNCTION_47_7(v15, 2, v20, v19);
  return sub_26A27C6A8();
}

uint64_t sub_26A309150(void *a1, void *a2, uint64_t (*a3)(void))
{
  v56 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v52 = (v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v53 = (&v51 - v11);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v57 = &v51 - v13;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v19);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0) - 8;
  OUTLINED_FUNCTION_39();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v51 - v26;
  v55 = (a3)(0, v25);
  v28 = *(v23 + 56);
  v58 = a1;
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_37(v27, 1, v14);
  if (v29)
  {
    OUTLINED_FUNCTION_37(&v27[v28], 1, v14);
    if (v29)
    {
      sub_26A0E48F0(v27, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v30 = &qword_28036C7D0;
    v31 = &qword_26A426DE0;
    v32 = v27;
LABEL_36:
    sub_26A0E48F0(v32, v30, v31);
LABEL_37:
    v41 = 0;
    return v41 & 1;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&v27[v28], 1, v14);
  if (v29)
  {
    sub_26A27C6A8();
    goto LABEL_9;
  }

  sub_26A27BEAC();
  v33 = static _ProtoTextProperty.== infix(_:_:)(v22, v18);
  sub_26A27C6A8();
  sub_26A27C6A8();
  sub_26A0E48F0(v27, &qword_28036C7B8, &unk_26A425BF0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  v34 = *(v54 + 48);
  v36 = v57;
  v35 = v58;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v37 = v56;
  OUTLINED_FUNCTION_37(v36, 1, v56);
  if (v29)
  {
    OUTLINED_FUNCTION_37(v36 + v34, 1, v37);
    if (v29)
    {
      sub_26A0E48F0(v36, &off_28036C7C0, &off_26A427400);
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v42 = v53;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v36 + v34, 1, v37);
  if (v43)
  {
    sub_26A27C6A8();
LABEL_25:
    v30 = &qword_28036C7C8;
    v31 = &qword_26A425C00;
LABEL_35:
    v32 = v36;
    goto LABEL_36;
  }

  v44 = v52;
  sub_26A27BEAC();
  sub_26A0E36D8(*v42, *v44);
  if ((v45 & 1) == 0 || (v42[1] == v44[1] ? (v46 = v42[2] == v44[2]) : (v46 = 0), !v46 && (sub_26A425354() & 1) == 0))
  {
    sub_26A27C6A8();
    sub_26A27C6A8();
    v30 = &off_28036C7C0;
    v31 = &off_26A427400;
    goto LABEL_35;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_4_35();
  sub_26A308728(v47, v48, MEMORY[0x277D216D0]);
  v49 = sub_26A424B64();
  sub_26A27C6A8();
  sub_26A27C6A8();
  sub_26A0E48F0(v36, &off_28036C7C0, &off_26A427400);
  if ((v49 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_16:
  v38 = *v35 == *a2 && v35[1] == a2[1];
  if (!v38 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_4_35();
  sub_26A308728(v39, v40, MEMORY[0x277D216D0]);
  v41 = sub_26A424B64();
  return v41 & 1;
}

uint64_t sub_26A309768(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_26A425504();
  a1(0);
  sub_26A308728(a2, a3, a4);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3099B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A308728(&qword_280372528, type metadata accessor for _ProtoSecondaryHeader_Emphasized, &protocol conformance descriptor for _ProtoSecondaryHeader_Emphasized);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A309AC4(uint64_t a1)
{
  v2 = sub_26A308728(&qword_28036D968, type metadata accessor for _ProtoSecondaryHeader_Emphasized, &protocol conformance descriptor for _ProtoSecondaryHeader_Emphasized);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A309B7C(uint64_t a1, uint64_t a2)
{
  sub_26A308728(&qword_28036D968, type metadata accessor for _ProtoSecondaryHeader_Emphasized, &protocol conformance descriptor for _ProtoSecondaryHeader_Emphasized);

  return sub_26A4249B4();
}

uint64_t __swift_get_extra_inhabitant_indexTm_7(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_26A424794();
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
        v11 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_6(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_26A424794();
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_26A309E88(uint64_t a1)
{
  sub_26A424794();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_3_44();
    sub_26A0E456C(319, v2, v3);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_10_41();
      sub_26A0E456C(319, v5, v6);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_26_25(uint64_t a1)
{
  *(v1 + 40) = *(a1 + 28);

  return sub_26A10FD9C();
}

uint64_t _ProtoCoreChartElement.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for _ProtoCoreChartElement(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for _ProtoCoreChart(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t type metadata accessor for _ProtoCoreChartElement(uint64_t a1)
{
  result = qword_281579600;
  if (!qword_281579600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static _ProtoCoreChartElement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for _ProtoCoreChart(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372550, &qword_26A43C9E8) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  v15 = *(OUTLINED_FUNCTION_2_41() + 24);
  v16 = *(v13 + 56);
  sub_26A30A3F0(a1 + v15, v2);
  sub_26A30A3F0(a2 + v15, v2 + v16);
  v17 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v17, v18, v5);
  if (v20)
  {
    OUTLINED_FUNCTION_37(v2 + v16, 1, v5);
    if (v20)
    {
      sub_26A13440C();
      goto LABEL_6;
    }

LABEL_11:
    sub_26A13440C();
    goto LABEL_12;
  }

  sub_26A30A3F0(v2, v12);
  OUTLINED_FUNCTION_37(v2 + v16, 1, v5);
  if (v20)
  {
    sub_26A30A460(v12);
    goto LABEL_11;
  }

  sub_26A14BF4C(v2 + v16, v8);
  if ((MEMORY[0x26D65B4F0](*v12, v12[1], *v8, v8[1]) & 1) == 0)
  {
    sub_26A30A460(v8);
    sub_26A30A460(v12);
    goto LABEL_11;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_1_47();
  sub_26A30B61C();
  v22 = sub_26A424B64();
  sub_26A30A460(v8);
  sub_26A30A460(v12);
  sub_26A13440C();
  if ((v22 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((sub_26A0DB6A0(*a1, *a2) & 1) == 0)
  {
LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_1_47();
  sub_26A30B61C();
  v19 = sub_26A424B64();
  return v19 & 1;
}

uint64_t sub_26A30A3F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A30A460(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoCoreChart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _ProtoCoreChartElement.chart.getter@<X0>(_OWORD *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_2_41();
  sub_26A30A3F0(v1 + *(v6 + 24), v2);
  v7 = type metadata accessor for _ProtoCoreChart(0);
  v8 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v8, v9, v7);
  if (!v10)
  {
    return sub_26A14BF4C(v2, a1);
  }

  *a1 = xmmword_26A426400;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v11 = OUTLINED_FUNCTION_71();
  result = OUTLINED_FUNCTION_37(v11, v12, v7);
  if (!v10)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t sub_26A30A5A0(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoCoreChart(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A14BEAC(a1, v4);
  return _ProtoCoreChartElement.chart.setter(v4);
}

uint64_t _ProtoCoreChartElement.chart.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoCoreChartElement(0) + 24);
  sub_26A13440C();
  sub_26A14BF4C(a1, v1 + v3);
  v4 = type metadata accessor for _ProtoCoreChart(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*_ProtoCoreChartElement.chart.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoCoreChart(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoCoreChartElement(0) + 24);
  *(v3 + 10) = v11;
  sub_26A30A3F0(v1 + v11, v6);
  OUTLINED_FUNCTION_37(v6, 1, v7);
  if (v12)
  {
    *v10 = xmmword_26A426400;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_37(v6, 1, v7);
    if (!v12)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A14BF4C(v6, v10);
  }

  return sub_26A30A808;
}

void sub_26A30A808(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_26A14BEAC((*a1)[4], v4);
    sub_26A13440C();
    sub_26A14BF4C(v4, v7 + v3);
    OUTLINED_FUNCTION_70();
    sub_26A30A460(v5);
  }

  else
  {
    sub_26A13440C();
    sub_26A14BF4C(v5, v7 + v3);
    OUTLINED_FUNCTION_70();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t _ProtoCoreChartElement.hasChart.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_2_41();
  sub_26A30A3F0(v0 + *(v4 + 24), v1);
  type metadata accessor for _ProtoCoreChart(0);
  v5 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_26A13440C();
  return v9;
}

Swift::Void __swiftcall _ProtoCoreChartElement.clearChart()()
{
  v1 = *(type metadata accessor for _ProtoCoreChartElement(0) + 24);
  sub_26A13440C();
  v2 = type metadata accessor for _ProtoCoreChart(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t _ProtoCoreChartElement.idioms.setter()
{
  OUTLINED_FUNCTION_14_4();

  *v1 = v0;
  return result;
}

uint64_t _ProtoCoreChartElement.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoCoreChartElement(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoCoreChartElement.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoCoreChartElement(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

void (*_ProtoCoreChartElement.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  type metadata accessor for _ProtoCoreChartElement(0);
  return nullsub_1;
}

uint64_t sub_26A30AB90()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372538);
  __swift_project_value_buffer(v0, qword_280372538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "chart";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "idioms";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoCoreChartElement._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C550 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_280372538);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoCoreChartElement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_26A424834();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v9 = OUTLINED_FUNCTION_5_6();
      sub_26A1FD7CC(v9, v10, v11, v12);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_5_6();
      sub_26A30AE74(v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t sub_26A30AE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoCoreChartElement(0);
  type metadata accessor for _ProtoCoreChart(0);
  sub_26A30B61C();
  return sub_26A424944();
}

uint64_t _ProtoCoreChartElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A30AFEC(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_26A11EF50();
      sub_26A4249D4();
    }

    type metadata accessor for _ProtoCoreChartElement(0);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A30AFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for _ProtoCoreChart(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ProtoCoreChartElement(0);
  sub_26A30A3F0(a1 + *(v11 + 24), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A14BF4C(v7, v10);
  sub_26A30B61C();
  sub_26A424A84();
  return sub_26A30A460(v10);
}

uint64_t _ProtoCoreChartElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoCoreChartElement(0);
  sub_26A30B61C();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A30B2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A30B61C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A30B3C8(uint64_t a1)
{
  v2 = sub_26A30B61C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A30B480(uint64_t a1, uint64_t a2)
{
  sub_26A30B61C();

  return sub_26A4249B4();
}

void sub_26A30B528(uint64_t a1)
{
  sub_26A11FDC8();
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      sub_26A30B5C4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A30B5C4(uint64_t a1)
{
  if (!qword_28157AB68[0])
  {
    type metadata accessor for _ProtoCoreChart(255);
    v1 = sub_26A424E44();
    if (!v2)
    {
      atomic_store(v1, qword_28157AB68);
    }
  }
}

unint64_t sub_26A30B61C()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return type metadata accessor for _ProtoCoreChartElement(0);
}

uint64_t _ProtoVisualization_Map.mapProperty.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoVisualization_Map(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoVisualization_Map.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoVisualization_Map(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoVisualization_Map.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoVisualization_Map(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoVisualization_Map.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoVisualization_Map(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoVisualization_Map.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoVisualization_Map(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoVisualization_Map.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoVisualization_Map(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A30BB4C()
{
  v1 = OUTLINED_FUNCTION_53();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t sub_26A30BBE0(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  OUTLINED_FUNCTION_142(v3, v6);
  v4 = *v3;

  return v4;
}

uint64_t _ProtoVisualization_Map.mapProperty.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Map(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_82_8();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  v6 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036CAE8, &unk_26A426430);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Map.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Map(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_82_8();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  v6 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036C7B8, &unk_26A425BF0);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Map.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Map(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_82_8();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  v6 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036C7B8, &unk_26A425BF0);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Map.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Map(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_82_8();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  v6 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v6, v7, &off_28036C7C0, &off_26A427400);
  return swift_endAccess();
}

uint64_t sub_26A30C098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v10 = v6;
  v13 = *(a3(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_5_3();
    v15 = a5(v16);
    *(v10 + v13) = v15;
  }

  v17 = (v15 + *a6);
  swift_beginAccess();
  *v17 = a1;
  v17[1] = a2;
}

uint64_t _ProtoVisualization_Map.hasMapProperty.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoVisualization_Map(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoVisualization_Chart.visual.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoVisualization_Chart(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoVisualization_Chart.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoVisualization_Chart(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoVisualization_Chart.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoVisualization_Chart(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoVisualization_Chart.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoVisualization_Chart(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoVisualization_Chart.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoVisualization_Chart(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoVisualization_Chart.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoVisualization_Chart(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A30C684@<X0>(void (*a1)(void)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_141_0();
  a1(0);
  OUTLINED_FUNCTION_97_0();
  v10 = *a2;
  OUTLINED_FUNCTION_142(v3 + v10, v14);
  sub_26A1F9BEC(v3 + v10, v4, &off_28036C7C0, &off_26A427400);
  v11 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_37(v4, 1, v11);
  if (!v12)
  {
    return sub_26A30BB4C();
  }

  *a3 = MEMORY[0x277D84F90];
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_37(v4, 1, v11);
  if (!v12)
  {
    return sub_26A0E48F0(v4, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t _ProtoVisualization_Chart.visual.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Chart(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_82_8();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  v6 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036CAE8, &unk_26A426430);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Chart.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Chart(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_82_8();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  v6 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036C7B8, &unk_26A425BF0);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Chart.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Chart(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_82_8();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  v6 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036C7B8, &unk_26A425BF0);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Chart.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Chart(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_82_8();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  v6 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v6, v7, &off_28036C7C0, &off_26A427400);
  return swift_endAccess();
}

uint64_t _ProtoVisualization_Chart.hasVisual.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoVisualization_Chart(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

void _ProtoVisualization_Chart.visual.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoVisualProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Chart.clearVisual()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Chart(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  v6 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036CAE8, &unk_26A426430);
  swift_endAccess();
}

uint64_t sub_26A30CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  sub_26A3130B0();
  return a7(v7);
}

void _ProtoVisualization_Chart.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Chart.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Chart(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  v6 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
}

void _ProtoVisualization_Chart.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Chart.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Chart(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  v6 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
}

void _ProtoVisualization_Chart.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoActionProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Chart.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Chart(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A30FA94();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  v6 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v6, v7, &off_28036C7C0, &off_26A427400);
  swift_endAccess();
}

uint64_t sub_26A30D5E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoVisualization_Chart.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoVisualization_Chart.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoVisualization_Chart(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A30D6D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoVisualization_Chart.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoVisualization_Chart.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoVisualization_Chart(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoVisualization_Image.visual.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoVisualization_Image(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoVisualization_Image.visual.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Image(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_82_8();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  v6 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036CAE8, &unk_26A426430);
  return swift_endAccess();
}

void _ProtoVisualization_Image.visual.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoVisualProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoVisualization_Image.hasVisual.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoVisualization_Image(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoVisualization_Image.clearVisual()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Image(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  v6 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036CAE8, &unk_26A426430);
  swift_endAccess();
}

uint64_t _ProtoVisualization_Image.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoVisualization_Image(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoVisualization_Image.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Image(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_82_8();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  v6 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036C7B8, &unk_26A425BF0);
  return swift_endAccess();
}

void _ProtoVisualization_Image.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoVisualization_Image.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoVisualization_Image(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoVisualization_Image.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Image(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  v6 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
}

uint64_t _ProtoVisualization_Image.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoVisualization_Image(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_31_17();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_86_9();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoVisualization_Image.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Image(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_82_8();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  v6 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036C7B8, &unk_26A425BF0);
  return swift_endAccess();
}

void _ProtoVisualization_Image.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoVisualization_Image.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoVisualization_Image(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoVisualization_Image.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Image(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  v6 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
}

uint64_t _ProtoVisualization_Image.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Image(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_82_8();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  v6 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_73_8(v6, v7, &off_28036C7C0, &off_26A427400);
  return swift_endAccess();
}

void _ProtoVisualization_Image.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoActionProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoVisualization_Image.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoVisualization_Image(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_23_26();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoVisualization_Image.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Image(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A311400();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  v6 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v6, v7, &off_28036C7C0, &off_26A427400);
  swift_endAccess();
}

uint64_t sub_26A30E97C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoVisualization_Image.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoVisualization_Image.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoVisualization_Image(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A30EAD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoVisualization_Image.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoVisualization_Image.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoVisualization_Image(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A30EC64@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

void _ProtoVisualization_Map.mapProperty.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoVisualProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Map.clearMapProperty()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Map(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  v6 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036CAE8, &unk_26A426430);
  swift_endAccess();
}

void _ProtoVisualization_Map.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Map.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Map(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  v6 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
}

void _ProtoVisualization_Map.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoVisualization_Map.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Map(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  v6 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v6, v7, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
}

void _ProtoVisualization_Map.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoActionProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A30BB4C();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A30F49C(uint64_t a1, char a2, void (*a3)(void *), void (*a4)(void))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_103();
    sub_26A3130B0();
    a3(v6);
    sub_26A313104(v7, a4);
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

Swift::Void __swiftcall _ProtoVisualization_Map.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoVisualization_Map(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A312D54();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  v6 = OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_73_8(v6, v7, &off_28036C7C0, &off_26A427400);
  swift_endAccess();
}

uint64_t sub_26A30F614(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoVisualization_Map.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoVisualization_Map.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoVisualization_Map(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A30F704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoVisualization_Map.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoVisualization_Map.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoVisualization_Map(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void sub_26A30F7F4()
{
  OUTLINED_FUNCTION_76();
  v5 = *v4;
  v6 = *(*v4 + 48);
  v7 = *(*v4 + 56);
  if (v8)
  {
    v9 = v3;

    v9(v6, v7);
  }

  else
  {
    v10 = v2;
    v11 = v1;
    v12 = v0;
    v13 = *(v5 + 72);
    v14 = *(v5 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v5 + 72);
      v18 = *(v5 + 64);
      v12(0);
      OUTLINED_FUNCTION_100_0();
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_5_3();
      v16 = v11(v19);
      *(v18 + v17) = v16;
    }

    v20 = (v16 + *v10);
    swift_beginAccess();
    *v20 = v6;
    v20[1] = v7;
  }

  OUTLINED_FUNCTION_75();

  free(v21);
}

uint64_t sub_26A30F9BC()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual;
  v2 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A30FA94()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47_13(v6, v42);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_173_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  v16 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v43 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  OUTLINED_FUNCTION_107_6();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_172_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  v27 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  *v27 = 0;
  v27[1] = v28;
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, &v49);
  v29 = OUTLINED_FUNCTION_65_12();
  sub_26A1F9BEC(v29, v30, v31, &unk_26A426430);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_77_6();
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, &v48);
  sub_26A1F9BEC(v3 + v32, v1, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_21_8();
  v33 = swift_beginAccess();
  OUTLINED_FUNCTION_62_10(v33, v0 + v15);
  swift_endAccess();
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, &v47);
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_21_8();
  v34 = swift_beginAccess();
  OUTLINED_FUNCTION_62_10(v34, v0 + v43);
  swift_endAccess();
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &v46);
  v35 = OUTLINED_FUNCTION_61_10();
  sub_26A1F9BEC(v35, v36, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_75_8();
  v37 = swift_endAccess();
  OUTLINED_FUNCTION_129_1(v37, &v45);
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_262();

  v39 = (v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_129_1(v38, &v44);
  v41 = *v39;
  v40 = v39[1];

  OUTLINED_FUNCTION_74_7();
  *v27 = v41;
  v27[1] = v40;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A30FDB0()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A30FEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A310020(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A3100FC(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A3101D8(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A3102B4(a2, a1, a3, a4);
        break;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName;
        goto LABEL_10;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier;
LABEL_10:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A310020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A31319C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3100FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3101D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3102B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A31319C(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3103C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A31054C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A310734(a1, a2, a3, a4);
    sub_26A31091C(a1, a2, a3, a4);
    sub_26A310B04(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A31054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v11, v7, &qword_28036CAE8, &unk_26A426430);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A30BB4C();
  sub_26A31319C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A313104(v10, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A310734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v11, v7, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A313104(v10, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A31091C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v11, v7, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A313104(v10, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A310B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v11, v7, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A313104(v10, type metadata accessor for _ProtoActionProperty);
}

uint64_t static _ProtoVisualization_Chart.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_53();
  type metadata accessor for _ProtoVisualization_Chart(v0);
  OUTLINED_FUNCTION_63_9();
  if (!v1)
  {

    sub_26A314398();
    v3 = v2;

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_9_35();
  sub_26A31319C(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_68_7() & 1;
}

uint64_t sub_26A310E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A31319C(&qword_280372720, type metadata accessor for _ProtoVisualization_Chart, &protocol conformance descriptor for _ProtoVisualization_Chart);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A310EE8(uint64_t a1)
{
  v2 = sub_26A31319C(&qword_28036F810, type metadata accessor for _ProtoVisualization_Chart, &protocol conformance descriptor for _ProtoVisualization_Chart);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A310F58(uint64_t a1, uint64_t a2)
{
  sub_26A31319C(&qword_28036F810, type metadata accessor for _ProtoVisualization_Chart, &protocol conformance descriptor for _ProtoVisualization_Chart);

  return sub_26A4249B4();
}

uint64_t sub_26A310FF0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26A424AC4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26A42B080;
  v7 = v23 + v6;
  v8 = v23 + v6 + v4[14];
  *(v23 + v6) = 1;
  *v8 = "visual";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21870];
  sub_26A424A94();
  OUTLINED_FUNCTION_14_8();
  v11 = *(v10 + 104);
  (v11)(v8, v9, 6);
  v12 = OUTLINED_FUNCTION_194_0(v7 + v5);
  *v13 = 2;
  *v12 = "text_1";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_12_7();
  v11();
  v14 = OUTLINED_FUNCTION_194_0(v7 + 2 * v5);
  *v15 = 3;
  *v14 = "text_2";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_12_7();
  v11();
  v16 = OUTLINED_FUNCTION_194_0(v7 + 3 * v5);
  *v17 = 4;
  *v16 = "action";
  *(v16 + 8) = 6;
  *(v16 + 16) = 2;
  v11();
  v18 = OUTLINED_FUNCTION_194_0(v7 + 4 * v5);
  *v19 = 5;
  *v18 = "component_name";
  *(v18 + 8) = 14;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_12_7();
  v11();
  v20 = OUTLINED_FUNCTION_194_0(v7 + 5 * v5);
  *v21 = 6;
  *v20 = "link_identifier";
  *(v20 + 8) = 15;
  *(v20 + 16) = 2;
  OUTLINED_FUNCTION_12_7();
  v11();
  return sub_26A424AA4();
}

uint64_t sub_26A3112D8(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_100_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26A311328()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual;
  v2 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A311400()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47_13(v6, v42);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_173_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  v16 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v43 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  OUTLINED_FUNCTION_107_6();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_172_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  v27 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  *v27 = 0;
  v27[1] = v28;
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, &v49);
  v29 = OUTLINED_FUNCTION_65_12();
  sub_26A1F9BEC(v29, v30, v31, &unk_26A426430);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_77_6();
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, &v48);
  sub_26A1F9BEC(v3 + v32, v1, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_21_8();
  v33 = swift_beginAccess();
  OUTLINED_FUNCTION_62_10(v33, v0 + v15);
  swift_endAccess();
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, &v47);
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_21_8();
  v34 = swift_beginAccess();
  OUTLINED_FUNCTION_62_10(v34, v0 + v43);
  swift_endAccess();
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &v46);
  v35 = OUTLINED_FUNCTION_61_10();
  sub_26A1F9BEC(v35, v36, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_75_8();
  v37 = swift_endAccess();
  OUTLINED_FUNCTION_129_1(v37, &v45);
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_262();

  v39 = (v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_129_1(v38, &v44);
  v41 = *v39;
  v40 = v39[1];

  OUTLINED_FUNCTION_74_7();
  *v27 = v41;
  v27[1] = v40;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A31171C()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A31185C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A31198C(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A311A68(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A311B44(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A311C20(a2, a1, a3, a4);
        break;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName;
        goto LABEL_10;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier;
LABEL_10:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A31198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A31319C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A311A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A311B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A311C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A31319C(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A311D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A311EB8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A3120A0(a1, a2, a3, a4);
    sub_26A312288(a1, a2, a3, a4);
    sub_26A312470(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A311EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v11, v7, &qword_28036CAE8, &unk_26A426430);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A30BB4C();
  sub_26A31319C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A313104(v10, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A3120A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v11, v7, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A313104(v10, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A312288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v11, v7, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A313104(v10, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A312470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v11, v7, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A313104(v10, type metadata accessor for _ProtoActionProperty);
}

uint64_t static _ProtoVisualization_Image.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_53();
  type metadata accessor for _ProtoVisualization_Image(v0);
  OUTLINED_FUNCTION_63_9();
  if (!v1)
  {

    sub_26A314398();
    v3 = v2;

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_9_35();
  sub_26A31319C(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_68_7() & 1;
}

uint64_t sub_26A3127D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A31319C(&qword_280372718, type metadata accessor for _ProtoVisualization_Image, &protocol conformance descriptor for _ProtoVisualization_Image);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A312854(uint64_t a1)
{
  v2 = sub_26A31319C(&qword_28036F7E0, type metadata accessor for _ProtoVisualization_Image, &protocol conformance descriptor for _ProtoVisualization_Image);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3128C4(uint64_t a1, uint64_t a2)
{
  sub_26A31319C(&qword_28036F7E0, type metadata accessor for _ProtoVisualization_Image, &protocol conformance descriptor for _ProtoVisualization_Image);

  return sub_26A4249B4();
}

uint64_t sub_26A312960()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803725B8);
  __swift_project_value_buffer(v0, qword_2803725B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A42B080;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "map_property";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_1";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_2";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "action";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "component_name";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "link_identifier";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A312C7C()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__mapProperty;
  v2 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A312D54()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47_13(v6, v42);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_173_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  v16 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v43 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  OUTLINED_FUNCTION_107_6();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_172_0(OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  v27 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  *v27 = 0;
  v27[1] = v28;
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__mapProperty, &v49);
  v29 = OUTLINED_FUNCTION_65_12();
  sub_26A1F9BEC(v29, v30, v31, &unk_26A426430);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_77_6();
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, &v48);
  sub_26A1F9BEC(v3 + v32, v1, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_21_8();
  v33 = swift_beginAccess();
  OUTLINED_FUNCTION_62_10(v33, v0 + v15);
  swift_endAccess();
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, &v47);
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_21_8();
  v34 = swift_beginAccess();
  OUTLINED_FUNCTION_62_10(v34, v0 + v43);
  swift_endAccess();
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &v46);
  v35 = OUTLINED_FUNCTION_61_10();
  sub_26A1F9BEC(v35, v36, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_75_8();
  v37 = swift_endAccess();
  OUTLINED_FUNCTION_129_1(v37, &v45);
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_262();

  v39 = (v3 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_129_1(v38, &v44);
  v41 = *v39;
  v40 = v39[1];

  OUTLINED_FUNCTION_74_7();
  *v27 = v41;
  v27[1] = v40;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3130B0()
{
  v1 = OUTLINED_FUNCTION_53();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t sub_26A313104(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A31319C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A3131E4()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__mapProperty, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A3132CC(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_26A31337C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_5_3();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_26A313440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A313570(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A31364C(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A313728(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A313804(a2, a1, a3, a4);
        break;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName;
        goto LABEL_10;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier;
LABEL_10:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A313570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A31319C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A31364C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A313728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A313804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A31319C(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A313910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A31398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A313B18(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A313D00(a1, a2, a3, a4);
    sub_26A313EE8(a1, a2, a3, a4);
    sub_26A3140D0(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A313B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__mapProperty;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v11, v7, &qword_28036CAE8, &unk_26A426430);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A30BB4C();
  sub_26A31319C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A313104(v10, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A313D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v11, v7, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A313104(v10, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A313EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v11, v7, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A313104(v10, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A3140D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v11, v7, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A30BB4C();
  sub_26A31319C(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A313104(v10, type metadata accessor for _ProtoActionProperty);
}

uint64_t static _ProtoVisualization_Map.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_53();
  type metadata accessor for _ProtoVisualization_Map(v0);
  OUTLINED_FUNCTION_63_9();
  if (!v1)
  {

    sub_26A314398();
    v3 = v2;

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_9_35();
  sub_26A31319C(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_68_7() & 1;
}

void sub_26A314398()
{
  OUTLINED_FUNCTION_76();
  v145 = v1;
  v147 = v2;
  v150 = v3;
  v156 = v4;
  v160 = v5;
  v7 = v6;
  v168 = v8;
  v10 = v9;
  v151 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v146 = v12;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v152 = &v144 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v148 = v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  v154 = &v144 - v19;
  v162 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11();
  v155 = v21;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  v157 = v23;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v24);
  v161 = &v144 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v27 = OUTLINED_FUNCTION_41(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v153 = v28;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v29);
  v163 = &v144 - v30;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v31);
  v158 = &v144 - v32;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v33);
  v166 = &v144 - v34;
  v35 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_11();
  v159 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_141_0();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v41 = OUTLINED_FUNCTION_41(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8();
  v164 = v42;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v43);
  v45 = &v144 - v44;
  v46 = *v7;
  OUTLINED_FUNCTION_142(v10 + *v7, &v180);
  v167 = v10;
  sub_26A1F9BEC(v10 + v46, v45, &qword_28036CAE8, &unk_26A426430);
  v47 = *v7;
  v48 = v35;
  v49 = v168;
  OUTLINED_FUNCTION_142(v168 + v47, &v179);
  v50 = *(v38 + 56);
  sub_26A1F9BEC(v45, v0, &qword_28036CAE8, &unk_26A426430);
  sub_26A1F9BEC(v49 + v47, v0 + v50, &qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_1_4();
  if (v54)
  {
    v51 = v167;

    sub_26A0E48F0(v45, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_37(v0 + v50, 1, v48);
    v52 = v49;
    if (v54)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_12;
    }

LABEL_9:
    sub_26A0E48F0(v0, &qword_28036D190, &unk_26A427130);
    goto LABEL_61;
  }

  v51 = v167;
  v52 = v49;
  v53 = v164;
  sub_26A1F9BEC(v0, v164, &qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_37(v0 + v50, 1, v48);
  if (v54)
  {

    sub_26A0E48F0(v45, &qword_28036CAE8, &unk_26A426430);
    sub_26A313104(v53, type metadata accessor for _ProtoVisualProperty);
    goto LABEL_9;
  }

  v55 = v159;
  sub_26A30BB4C();

  static _ProtoVisualProperty.== infix(_:_:)(v53, v55);
  OUTLINED_FUNCTION_106_4();
  sub_26A0E48F0(v45, &qword_28036CAE8, &unk_26A426430);
  sub_26A313104(v53, type metadata accessor for _ProtoVisualProperty);
  v56 = OUTLINED_FUNCTION_103();
  sub_26A0E48F0(v56, v57, &unk_26A426430);
  if ((v47 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_12:
  v58 = v160;
  OUTLINED_FUNCTION_142(v51 + *v160, &v178);
  v59 = v166;
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v60, v61, v62, v63);
  OUTLINED_FUNCTION_142(v52 + *v58, &v177);
  v64 = *(v165 + 48);
  v65 = v161;
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v66, v67, v68, v69);
  OUTLINED_FUNCTION_112_1();
  v70 = v65;
  sub_26A1F9BEC(v71, v72, v73, v74);
  v75 = v162;
  OUTLINED_FUNCTION_37(v65, 1, v162);
  v76 = v51;
  if (v54)
  {
    sub_26A0E48F0(v59, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(v70 + v64, 1, v75);
    v77 = v163;
    if (v54)
    {
      sub_26A0E48F0(v70, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_22;
    }

LABEL_20:
    v80 = &qword_28036C7D0;
    v81 = &qword_26A426DE0;
    v82 = v70;
    goto LABEL_60;
  }

  v78 = v158;
  sub_26A1F9BEC(v70, v158, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_37(v70 + v64, 1, v75);
  v77 = v163;
  if (v79)
  {
    sub_26A0E48F0(v166, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_59_13();
    goto LABEL_20;
  }

  sub_26A30BB4C();
  v83 = OUTLINED_FUNCTION_103();
  static _ProtoTextProperty.== infix(_:_:)(v83, v84);
  OUTLINED_FUNCTION_106_4();
  sub_26A0E48F0(v166, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A313104(v78, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v70, &qword_28036C7B8, &unk_26A425BF0);
  if ((v70 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_22:
  v85 = v156;
  OUTLINED_FUNCTION_142(v51 + *v156, &v176);
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v86, v87, v88, v89);
  OUTLINED_FUNCTION_142(v52 + *v85, &v175);
  v90 = *(v165 + 48);
  v91 = v77;
  v92 = v157;
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v93, v94, v95, v96);
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v97, v98, v99, v100);
  OUTLINED_FUNCTION_37(v92, 1, v75);
  if (v54)
  {
    sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(v92 + v90, 1, v75);
    if (v54)
    {
      sub_26A0E48F0(v92, &qword_28036C7B8, &unk_26A425BF0);
      v101 = v154;
      goto LABEL_32;
    }

LABEL_30:
    v80 = &qword_28036C7D0;
    v81 = &qword_26A426DE0;
    v82 = v92;
    goto LABEL_60;
  }

  v102 = v153;
  sub_26A1F9BEC(v92, v153, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_37(v92 + v90, 1, v75);
  v101 = v154;
  if (v103)
  {
    sub_26A0E48F0(v163, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_59_13();
    goto LABEL_30;
  }

  sub_26A30BB4C();
  v104 = OUTLINED_FUNCTION_103();
  static _ProtoTextProperty.== infix(_:_:)(v104, v105);
  OUTLINED_FUNCTION_106_4();
  OUTLINED_FUNCTION_27_2(v163);
  sub_26A313104(v102, type metadata accessor for _ProtoTextProperty);
  OUTLINED_FUNCTION_27_2(v92);
  if ((&unk_26A425BF0 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_32:
  v106 = v150;
  OUTLINED_FUNCTION_142(v76 + *v150, &v174);
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v107, v108, v109, v110);
  OUTLINED_FUNCTION_142(v52 + *v106, &v173);
  v111 = *(v149 + 48);
  v112 = v152;
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v113, v114, v115, v116);
  OUTLINED_FUNCTION_112_1();
  sub_26A1F9BEC(v117, v118, v119, v120);
  v121 = v151;
  OUTLINED_FUNCTION_37(v112, 1, v151);
  if (!v54)
  {
    v136 = v148;
    sub_26A1F9BEC(v112, v148, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_37(v112 + v111, 1, v121);
    if (!v137)
    {
      v138 = v146;
      sub_26A30BB4C();
      sub_26A0E36D8(*v136, *v138);
      if (v139)
      {
        v140 = v136[1] == v138[1] && v136[2] == v138[2];
        if (v140 || (sub_26A425354() & 1) != 0)
        {
          sub_26A424794();
          OUTLINED_FUNCTION_9_35();
          sub_26A31319C(v141, v142, MEMORY[0x277D216D0]);
          v143 = sub_26A424B64();
          sub_26A313104(v138, type metadata accessor for _ProtoActionProperty);
          OUTLINED_FUNCTION_27_2(v101);
          sub_26A313104(v136, type metadata accessor for _ProtoActionProperty);
          v122 = OUTLINED_FUNCTION_27_2(v112);
          if ((v143 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_37;
        }
      }

      sub_26A313104(v138, type metadata accessor for _ProtoActionProperty);
      sub_26A0E48F0(v101, &off_28036C7C0, &off_26A427400);
      sub_26A313104(v136, type metadata accessor for _ProtoActionProperty);
      v82 = OUTLINED_FUNCTION_88();
      v81 = &off_26A427400;
LABEL_60:
      sub_26A0E48F0(v82, v80, v81);
      goto LABEL_61;
    }

    sub_26A0E48F0(v101, &off_28036C7C0, &off_26A427400);
    sub_26A313104(v136, type metadata accessor for _ProtoActionProperty);
LABEL_50:
    v80 = &qword_28036C7C8;
    v81 = &qword_26A425C00;
    v82 = v112;
    goto LABEL_60;
  }

  sub_26A0E48F0(v101, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_37(v112 + v111, 1, v121);
  if (!v54)
  {
    goto LABEL_50;
  }

  v122 = sub_26A0E48F0(v112, &off_28036C7C0, &off_26A427400);
LABEL_37:
  v123 = v147;
  v124 = (v76 + *v147);
  OUTLINED_FUNCTION_129_1(v122, &v172);
  v125 = *v124;
  v126 = v124[1];
  v127 = (v52 + *v123);
  v128 = OUTLINED_FUNCTION_142(v127, &v171);
  v129 = v125 == *v127 && v126 == v127[1];
  if (v129 || (v128 = sub_26A425354(), (v128 & 1) != 0))
  {
    v130 = v145;
    v131 = (v76 + *v145);
    OUTLINED_FUNCTION_129_1(v128, &v170);
    v132 = *v131;
    v133 = v131[1];
    v134 = (v52 + *v130);
    OUTLINED_FUNCTION_142(v134, &v169);
    if (v132 != *v134 || v133 != v134[1])
    {
      sub_26A425354();
    }
  }

LABEL_61:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A315040(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_26A425504();
  a1(0);
  sub_26A31319C(a2, a3, a4);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3153A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A31319C(&qword_280372710, type metadata accessor for _ProtoVisualization_Map, &protocol conformance descriptor for _ProtoVisualization_Map);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A3154B4(uint64_t a1)
{
  v2 = sub_26A31319C(&qword_28036F828, type metadata accessor for _ProtoVisualization_Map, &protocol conformance descriptor for _ProtoVisualization_Map);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A31556C(uint64_t a1, uint64_t a2)
{
  sub_26A31319C(&qword_28036F828, type metadata accessor for _ProtoVisualization_Map, &protocol conformance descriptor for _ProtoVisualization_Map);

  return sub_26A4249B4();
}

uint64_t sub_26A31566C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26A424794();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A315740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A31579C(uint64_t a1)
{
  sub_26A315740(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
  if (v1 <= 0x3F)
  {
    sub_26A315740(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A315740(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_23_26()
{

  return sub_26A1F9BEC(v1 + v4, v3, v0, v2);
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return sub_26A1F9BEC(v1 + v4, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_59_13()
{

  return sub_26A313104(v0, type metadata accessor for _ProtoTextProperty);
}

uint64_t OUTLINED_FUNCTION_60_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_62_10(uint64_t a1, uint64_t a2)
{

  return sub_26A1F9C88(v4, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_68_7()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_73_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26A1F9C88(v4, v5 + v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_74_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_75_8()
{

  return sub_26A1F9C88(v3, v0 + v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_76_7()
{

  return sub_26A1F9BEC(v0 + v1, v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_77_6()
{

  return sub_26A1F9C88(v3, v0 + v2, v4, v1);
}

uint64_t OUTLINED_FUNCTION_82_8()
{

  return sub_26A30BB4C();
}

uint64_t OUTLINED_FUNCTION_86_9()
{

  return sub_26A30BB4C();
}

uint64_t OUTLINED_FUNCTION_106_4()
{

  return sub_26A313104(v1, v0);
}

uint64_t OUTLINED_FUNCTION_107_6()
{
  *(v1 - 296) = v0;

  return type metadata accessor for _ProtoActionProperty(0);
}

uint64_t sub_26A315D94(uint64_t a1, uint64_t a2)
{
  sub_26A0E5D68(a1, &v5);
  v2 = type metadata accessor for RedactingEncoder();
  OUTLINED_FUNCTION_9_36();
  v3 = swift_allocObject();
  sub_26A0D671C(&v5, v3 + 16);
  v6 = v2;
  v7 = sub_26A318F74();
  *&v5 = v3;
  sub_26A424B34();
  return __swift_destroy_boxed_opaque_existential_1(&v5);
}

uint64_t sub_26A315E6C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return a1(v3, v4);
}

uint64_t sub_26A315EB8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v23[0] = a1;
  v23[1] = a4;
  v5 = sub_26A425184();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_10_42();
  v10 = type metadata accessor for RedactingKeyedEncodingContainer(v6, v7, v8, v9);
  OUTLINED_FUNCTION_3_46();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v23 - v18;
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  OUTLINED_FUNCTION_10_42();
  sub_26A425594();
  OUTLINED_FUNCTION_10_42();
  sub_26A316060(v20, v21);
  (*(v12 + 16))(v16, v19, v10);
  OUTLINED_FUNCTION_4_36();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_24();
  sub_26A425194();
  return (*(v12 + 8))(v19, v10);
}

uint64_t sub_26A316060@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_26A425184();
  v7 = *(*(v6 - 8) + 32);

  return v7(a4, a1, v6);
}

uint64_t sub_26A316144@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v10 = v5[5];
  v11 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v10);
  a5[3] = a1;
  a5[4] = a2();
  OUTLINED_FUNCTION_9_36();
  *a5 = swift_allocObject();
  return a4(v10, v11);
}

uint64_t sub_26A3161D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_9_36();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

unint64_t sub_26A3162E0()
{
  result = qword_280372728;
  if (!qword_280372728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372728);
  }

  return result;
}

unint64_t sub_26A316334()
{
  result = qword_280372730[0];
  if (!qword_280372730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280372730);
  }

  return result;
}

uint64_t sub_26A3163A8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A316418(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_26A316554(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26A316770(uint64_t a1)
{
  result = sub_26A425184();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26A31682C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26A31686C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A3168CC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return a1(v3, v4);
}

uint64_t sub_26A316978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = *(v7 + 16);
  v12(v24 - v13, a1, a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372840, &qword_26A43D588);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v25);
    __swift_mutable_project_boxed_opaque_existential_1(v4, *(v4 + 24));
    return sub_26A425214();
  }

  else
  {
    (v12)(v9, a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372858, &qword_26A43D5A0);
    if (swift_dynamicCast())
    {
      sub_26A319028(v24, &v25);
      v15 = v26;
      v16 = v27;
      v17 = __swift_project_boxed_opaque_existential_1(&v25, v26);
      v28 = v24;
      v18 = *(v15 - 8);
      v19 = MEMORY[0x28223BE20](v17);
      v21 = v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 8))(v15, v16, v19);
      __swift_mutable_project_boxed_opaque_existential_1(v4, *(v4 + 24));
      sub_26A425214();
      (*(v18 + 8))(v21, v15);
    }

    else
    {
      memset(v24, 0, sizeof(v24));
      sub_26A318FC8(v24, &qword_280372860, &unk_26A43D5A8);
      __swift_mutable_project_boxed_opaque_existential_1(v4, *(v4 + 24));
      sub_26A4251E4();
      v22 = type metadata accessor for RedactingEncoder();
      v23 = swift_allocObject();
      sub_26A0D671C(&v25, v23 + 16);
      v26 = v22;
      v27 = sub_26A318F74();
      *&v25 = v23;
      sub_26A424B34();
    }

    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }
}

unint64_t sub_26A316CE4@<X0>(uint64_t *a1@<X8>)
{
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  sub_26A4251E4();
  v3 = type metadata accessor for RedactingEncoder();
  v4 = swift_allocObject();
  sub_26A0D671C(&v6, v4 + 16);
  a1[3] = v3;
  result = sub_26A318F74();
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_26A316D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v9 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372840, &qword_26A43D588);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v12);
    goto LABEL_9;
  }

  v15 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372848, &qword_26A43D590);
  if (!swift_dynamicCast())
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_26A318FC8(&v9, &qword_280372850, &qword_26A43D598);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    goto LABEL_8;
  }

  v6 = *(&v10 + 1);
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
  v7 = *(v5 + 8);
  *(&v13 + 1) = v6;
  v14 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v12);
  v7(v6, v5);
  __swift_destroy_boxed_opaque_existential_1(&v9);
  if (!*(&v13 + 1))
  {
LABEL_8:
    sub_26A318FC8(&v12, &qword_280372850, &qword_26A43D598);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
    sub_26A4251F4();
    return swift_unknownObjectRelease();
  }

LABEL_9:
  __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
  return sub_26A4251F4();
}

uint64_t sub_26A316F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a1;
  v25 = a5;
  v6 = type metadata accessor for RedactingKeyedEncodingContainer(0, a2, a3, a4);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v23 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v21 = sub_26A425184();
  v11 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  __swift_mutable_project_boxed_opaque_existential_1(v5, *(v5 + 24));
  sub_26A4251C4();
  v17 = v21;
  (*(v11 + 16))(v13, v16, v21);
  sub_26A316060(v13, v10);
  v18 = v24;
  (*(v24 + 16))(v23, v10, v6);
  swift_getWitnessTable();
  sub_26A425194();
  (*(v18 + 8))(v10, v6);
  return (*(v11 + 8))(v16, v17);
}

uint64_t sub_26A317218@<X0>(uint64_t *a1@<X8>)
{
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  a1[3] = &type metadata for RedactingUnkeyedEncodingContainer;
  a1[4] = sub_26A316334();
  *a1 = swift_allocObject();
  return sub_26A4251D4();
}

uint64_t sub_26A3178C8(uint64_t a1)
{
  v1 = sub_26A425184();

  return MEMORY[0x2821FDAA8](v1);
}

uint64_t sub_26A3178F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A425184();
  OUTLINED_FUNCTION_11_29();
  return sub_26A425114();
}

uint64_t sub_26A31793C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_46();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v17 = *(v10 + 16);
  v17(v29 - v18, a1, v19, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372840, &qword_26A43D588);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_26A425184();
    return sub_26A425154();
  }

  else
  {
    v29[1] = a3;
    v29[2] = a2;
    (v17)(v14, a1, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372858, &qword_26A43D5A0);
    if (swift_dynamicCast())
    {
      sub_26A319028(v30, v31);
      v21 = v32;
      v22 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      OUTLINED_FUNCTION_3_46();
      v24 = v23;
      v26 = MEMORY[0x28223BE20](v25);
      v28 = v29 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 8))(v21, v22, v26);
      sub_26A425184();
      sub_26A425154();
      (*(v24 + 8))(v28, v21);
    }

    else
    {
      memset(v30, 0, sizeof(v30));
      sub_26A318FC8(v30, &qword_280372860, &unk_26A43D5A8);
      sub_26A317C44(v31);
      sub_26A424B34();
    }

    return __swift_destroy_boxed_opaque_existential_1(v31);
  }
}

unint64_t sub_26A317C44@<X0>(uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_7_24();
  sub_26A425184();
  sub_26A4250C4();
  v3 = type metadata accessor for RedactingEncoder();
  OUTLINED_FUNCTION_9_36();
  v4 = swift_allocObject();
  sub_26A0D671C(&v6, v4 + 16);
  a2[3] = v3;
  result = sub_26A318F74();
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_26A317CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v14 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372840, &qword_26A43D588);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v17);
    goto LABEL_9;
  }

  v20 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372848, &qword_26A43D590);
  if (!swift_dynamicCast())
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_26A318FC8(&v14, &qword_280372850, &qword_26A43D598);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    goto LABEL_8;
  }

  v5 = *(&v15 + 1);
  v6 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  v7 = *(v6 + 8);
  *(&v18 + 1) = v5;
  v19 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v17);
  v7(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(&v14);
  if (!*(&v18 + 1))
  {
LABEL_8:
    sub_26A318FC8(&v17, &qword_280372850, &qword_26A43D598);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v8 = v14;
    v9 = sub_26A425184();
    OUTLINED_FUNCTION_13_24(v8, v10, v9);
    return swift_unknownObjectRelease();
  }

LABEL_9:
  v12 = sub_26A425184();
  return OUTLINED_FUNCTION_13_24(a1, v13, v12);
}

uint64_t sub_26A317EC0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_24();
  sub_26A425184();
  return sub_26A425174();
}

uint64_t sub_26A317F4C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_24();
  sub_26A425184();
  return sub_26A425134();
}

uint64_t sub_26A317F8C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_24();
  sub_26A425184();
  return sub_26A425144();
}

uint64_t sub_26A317FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_48(a1, a2, a3);
  v4 = OUTLINED_FUNCTION_8_29();
  return v3(v4);
}

uint64_t sub_26A318000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_48(a1, a2, a3);
  v4 = OUTLINED_FUNCTION_8_29();
  return v3(v4);
}

uint64_t sub_26A318034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_48(a1, a2, a3);
  v4 = OUTLINED_FUNCTION_8_29();
  return v3(v4);
}

uint64_t sub_26A3180A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v31 = a1;
  v33 = a6;
  v6 = type metadata accessor for RedactingKeyedEncodingContainer(0, a4, a5, a4);
  OUTLINED_FUNCTION_3_46();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  OUTLINED_FUNCTION_10_42();
  v30 = sub_26A425184();
  OUTLINED_FUNCTION_3_46();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v29 - v23;
  sub_26A425184();
  sub_26A4250A4();
  v25 = v30;
  (*(v17 + 16))(v21, v24, v30);
  OUTLINED_FUNCTION_10_42();
  sub_26A316060(v26, v27);
  (*(v8 + 16))(v12, v15, v6);
  OUTLINED_FUNCTION_4_36();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_24();
  sub_26A425194();
  (*(v8 + 8))(v15, v6);
  return (*(v17 + 8))(v24, v25);
}

uint64_t sub_26A3182E4@<X0>(uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for RedactingUnkeyedEncodingContainer;
  a3[4] = sub_26A316334();
  OUTLINED_FUNCTION_9_36();
  *a3 = swift_allocObject();
  sub_26A425184();
  return sub_26A425094();
}

unint64_t sub_26A318364@<X0>(uint64_t *a2@<X8>)
{
  sub_26A425184();
  sub_26A4250D4();
  v3 = type metadata accessor for RedactingEncoder();
  OUTLINED_FUNCTION_9_36();
  v4 = swift_allocObject();
  sub_26A0D671C(&v6, v4 + 16);
  a2[3] = v3;
  result = sub_26A318F74();
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_26A318980()
{
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_11_29();
  return sub_26A425384();
}

uint64_t sub_26A318A44(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_0_59();
  v2 = OUTLINED_FUNCTION_5_39();
  return a1(v2);
}

uint64_t sub_26A318A84(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  return a2(a1, v5, v6);
}

uint64_t sub_26A318AE8(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_0_59();
  v2 = OUTLINED_FUNCTION_5_39();
  return a1(v2);
}

uint64_t sub_26A318B2C(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_0_59();
  v2 = OUTLINED_FUNCTION_5_39();
  return a1(v2);
}

uint64_t sub_26A318B70(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_59();
  v3 = OUTLINED_FUNCTION_2_42();
  return a2(v3);
}

uint64_t sub_26A318BB0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_59();
  v3 = OUTLINED_FUNCTION_2_42();
  return a2(v3);
}

uint64_t sub_26A318BF0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_59();
  v3 = OUTLINED_FUNCTION_2_42();
  return a2(v3);
}

unint64_t sub_26A318F74()
{
  result = qword_280372838;
  if (!qword_280372838)
  {
    type metadata accessor for RedactingEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372838);
  }

  return result;
}

uint64_t sub_26A318FC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_26A319028(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_59()
{
  v2 = *(v0 + 24);

  return __swift_mutable_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_1_48(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26A425184();
}

uint64_t OUTLINED_FUNCTION_13_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FDB30](a1, v5, a3, v4, v3);
}

uint64_t SectionHeaderRich.text1.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v22[-v4 - 8];
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = type metadata accessor for _ProtoSectionHeader_Rich(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v11 + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__text1, v22);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v5, 1, v6);
  if (v12)
  {
    *v10 = MEMORY[0x277D84F90];
    *(v10 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
    OUTLINED_FUNCTION_37(v5, 1, v6);
    if (!v12)
    {
      sub_26A0E48F0(v5, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A31AE08();
  }

  return sub_26A31AE08();
}

void SectionHeaderRich.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v25 = v2;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_142(*(v0 + *(v13 + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__thumbnail, &v26);
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v14, v15, &unk_26A426430);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      *v6 = MEMORY[0x277D84F90];
      *(v6 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v17 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
      OUTLINED_FUNCTION_38_0();
      if (!v16)
      {
        sub_26A0E48F0(v11, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A31AE08();
    }

    sub_26A31AE08();
    v1 = 0;
  }

  v24 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v25, v1, 1, v24);
  OUTLINED_FUNCTION_75();
}

uint64_t SectionHeaderRich.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSectionHeader_Rich(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void SectionHeaderRich.action.getter()
{
  OUTLINED_FUNCTION_76();
  v18 = v2;
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_142(*(v0 + *(v13 + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__action, &v19);
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v14, v15, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      *v6 = MEMORY[0x277D84F90];
      v6[1] = 0;
      v6[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v16)
      {
        sub_26A0E48F0(v11, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A31AE08();
    }

    sub_26A31AE08();
    v1 = 0;
  }

  v17 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v18, v1, 1, v17);
  OUTLINED_FUNCTION_75();
}

void _ProtoSectionHeader_Rich.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v88 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v84 = v3;
  MEMORY[0x28223BE20](v4);
  v83 = (v80 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v85 = v8;
  MEMORY[0x28223BE20](v9);
  v82 = v80 - v10;
  MEMORY[0x28223BE20](v11);
  v87 = v80 - v12;
  v86 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  v81 = (v80 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v17 = OUTLINED_FUNCTION_41(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  v21 = v80 - v20;
  v22 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  v26 = v80 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v28 = OUTLINED_FUNCTION_41(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  v31 = v80 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v80 - v33;
  OUTLINED_FUNCTION_1_49();
  sub_26A31B250();
  v89 = *(type metadata accessor for _ProtoSectionHeader_Rich(0) + 20);
  v90 = v1;
  v35 = *(v1 + v89);
  OUTLINED_FUNCTION_142(v35 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__text1, &v93);
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v34, 1, v22);
  sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
  v36 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v31, 1, v22);
    if (v37)
    {
      *v26 = v36;
      *(v26 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v38 = v88;
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v88);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v38);
      OUTLINED_FUNCTION_37(v31, 1, v22);
      v46 = v89;
      v45 = v90;
      if (!v37)
      {
        sub_26A0E48F0(v31, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A31AE08();
      v46 = v89;
      v45 = v90;
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A31AE5C(v26, type metadata accessor for _ProtoTextProperty);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v45 + v46);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for _ProtoSectionHeader_Rich._StorageClass(0);
      swift_allocObject();
      sub_26A117F4C();
      v35 = v48;
      *(v45 + v46) = v48;
    }

    sub_26A31AE08();
    v49 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v22);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v35 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__thumbnail, &v92);
  sub_26A10FD9C();
  v52 = v86;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v86);
  sub_26A0E48F0(v21, &qword_28036CAE8, &unk_26A426430);
  if (EnumTagSinglePayload == 1)
  {
    v54 = v88;
    v55 = v90;
  }

  else
  {
    v56 = v80[2];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v56, 1, v52);
    v55 = v90;
    if (v37)
    {
      v63 = v81;
      *v81 = v36;
      *(v63 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v54 = v88;
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v88);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v54);
      OUTLINED_FUNCTION_37(v56, 1, v52);
      v64 = v89;
      if (!v37)
      {
        sub_26A0E48F0(v56, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v63 = v81;
      sub_26A31AE08();
      v54 = v88;
      v64 = v89;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A31AE5C(v63, type metadata accessor for _ProtoVisualProperty);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v55 + v64);
    if ((v65 & 1) == 0)
    {
      type metadata accessor for _ProtoSectionHeader_Rich._StorageClass(0);
      swift_allocObject();
      sub_26A117F4C();
      v35 = v66;
      *(v55 + v64) = v66;
    }

    sub_26A31AE08();
    v67 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v52);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v35 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__action, &v91);
  v70 = v87;
  sub_26A10FD9C();
  v71 = __swift_getEnumTagSinglePayload(v70, 1, v54);
  sub_26A0E48F0(v70, &off_28036C7C0, &off_26A427400);
  if (v71 != 1)
  {
    v72 = v82;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v72, 1, v54);
    v73 = v89;
    if (v37)
    {
      v74 = v83;
      *v83 = v36;
      *(v74 + 8) = 0;
      *(v74 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v72, 1, v54);
      v75 = v84;
      if (!v37)
      {
        sub_26A0E48F0(v72, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v74 = v83;
      sub_26A31AE08();
      v75 = v84;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v75);
    sub_26A31AE5C(v74, type metadata accessor for _ProtoActionProperty);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for _ProtoSectionHeader_Rich._StorageClass(0);
      swift_allocObject();
      sub_26A117F4C();
      *(v55 + v73) = v76;
    }

    sub_26A31AE08();
    v77 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v54);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SectionHeaderRich.init(text1:thumbnail:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ProtoSectionHeader_Rich(0);
  OUTLINED_FUNCTION_9_37();
  sub_26A31B12C(v8, v9, &protocol conformance descriptor for _ProtoSectionHeader_Rich);
  sub_26A4249C4();

  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a2, &qword_28036CB00, &unk_26A426450);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A31A1E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v31 = a1;
  v7 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v7 - 8);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v12);
  v28 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v29 = &v28 - v15;
  v16 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v16 - 8);
  v17 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v17 - 8);
  v18 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v18 - 8);
  v19 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  (*(v20 + 8))(v21, v20);
  sub_26A31AE08();
  _ProtoSectionHeader_Rich.text1.setter();
  sub_26A10FD9C();
  if (v37)
  {
    sub_26A0D671C(&v36, v38);
    v22 = v39;
    v23 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v23 + 8))(v22, v23);
    sub_26A31AE08();
    _ProtoSectionHeader_Rich.thumbnail.setter();
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_26A0E48F0(&v36, &qword_28036CB00, &unk_26A426450);
  }

  sub_26A10FD9C();
  v24 = v39;
  if (!v39)
  {
    sub_26A0E48F0(v38, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    goto LABEL_8;
  }

  v25 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v25 + 8))(v24, v25);
  sub_26A31AE08();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  __swift_destroy_boxed_opaque_existential_1(v38);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
LABEL_8:
    sub_26A0E48F0(v11, &off_28036C7C0, &off_26A427400);
    goto LABEL_9;
  }

  v26 = v29;
  sub_26A31AE08();
  sub_26A31B250();
  _ProtoSectionHeader_Rich.action.setter();
  sub_26A31AE5C(v26, type metadata accessor for _ProtoActionProperty);
LABEL_9:

  return _ProtoSectionHeader_Rich.componentName.setter(v34);
}

uint64_t SectionHeaderRich.init(text1:thumbnail:action:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_26A0E5D68(a1, v11);
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSectionHeader_Rich(0);
  OUTLINED_FUNCTION_9_37();
  sub_26A31B12C(v6, v7, &protocol conformance descriptor for _ProtoSectionHeader_Rich);
  sub_26A4249C4();
  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a2, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v9, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v10, &qword_28036CB00, &unk_26A426450);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

Swift::String __swiftcall SectionHeaderRich.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v61 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v60 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v13 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v18);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v22 = type metadata accessor for SectionHeaderRich(0);
  v23 = OUTLINED_FUNCTION_41(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE38, &qword_26A4269C0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  v30 = &v59 - v29;
  OUTLINED_FUNCTION_8_30();
  sub_26A31B250();
  if (v2)
  {
    _ProtoSectionHeader_Rich.redactedProto.getter();
  }

  else
  {
    sub_26A31B250();
  }

  sub_26A31AE08();
  v30[*(v27 + 32)] = v2 & 1;
  sub_26A31AE5C(v26, type metadata accessor for SectionHeaderRich);
  v31 = MEMORY[0x277D84F90];
  *&v30[*(v27 + 28)] = MEMORY[0x277D84F90];
  v32 = type metadata accessor for _ProtoSectionHeader_Rich(0);
  OUTLINED_FUNCTION_142(*&v30[*(v32 + 20)] + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__text1, &v62);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v12, 1, v13);
  if (v33)
  {
    *v17 = v31;
    *(v17 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v34 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);
    OUTLINED_FUNCTION_37(v12, 1, v13);
    if (!v33)
    {
      sub_26A0E48F0(v12, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A31AE08();
  }

  sub_26A31AE08();
  v41 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  sub_26A105B54(v21, 0x3174786574, 0xE500000000000000);
  sub_26A0E48F0(v21, &qword_28036CB30, &qword_26A426480);
  v42 = v60;
  SectionHeaderRich.thumbnail.getter();
  sub_26A105B2C(v42, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v42, &qword_28036CB20, &unk_26A426470);
  v43 = v61;
  SectionHeaderRich.action.getter();
  sub_26A105A28();
  sub_26A0E48F0(v43, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F79A8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v45, v46, v47, v48, v59, v60);

  sub_26A0FC55C(v49, v50, v51, v52, v53, v54, v55);
  sub_26A0E48F0(v30, &qword_28036CE38, &qword_26A4269C0);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v57;
  result._countAndFlagsBits = v56;
  return result;
}

uint64_t type metadata accessor for SectionHeaderRich(uint64_t a1)
{
  result = qword_280372868;
  if (!qword_280372868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A31AE08()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A31AE5C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SectionHeaderRich.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSectionHeader_Rich(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1_49();
  sub_26A31B250();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_10_43();
  sub_26A31AE08();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t SectionHeaderRich.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SectionHeaderRich(0);
  *(inited + 64) = &protocol witness table for SectionHeaderRich;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_8_30();
  sub_26A31B250();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A31B12C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A31B12C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A31B1E4(uint64_t a1)
{
  result = type metadata accessor for _ProtoSectionHeader_Rich(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A31B250()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_20_24()
{

  return type metadata accessor for _ProtoSectionHeader_Rich(0);
}

uint64_t OUTLINED_FUNCTION_23_27()
{

  return type metadata accessor for _ProtoSectionHeader_Rich(0);
}

const char *RFFeatureFlags.ResponseFramework.feature.getter()
{
  result = "BICS";
  switch(*v0)
  {
    case 1:
      result = "Enabled";
      break;
    case 2:
      result = "SMART";
      break;
    case 3:
      result = "ModernizedStyling";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26A31B480(uint64_t a1, char a2, _BYTE *a3)
{
  v7[3] = &type metadata for RFFeatureFlags.ResponseFramework;
  v7[4] = sub_26A31B7E4();
  LOBYTE(v7[0]) = a2;
  v5 = sub_26A424744();
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  *a3 = v5 & 1;
  return result;
}

uint64_t sub_26A31B504(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

uint64_t RFFeatureFlags.ResponseFramework.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

unint64_t sub_26A31B5D0()
{
  result = qword_280372880;
  if (!qword_280372880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372880);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RFFeatureFlags(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RFFeatureFlags.ResponseFramework(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A31B7E4()
{
  result = qword_28157ACB8;
  if (!qword_28157ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157ACB8);
  }

  return result;
}

uint64_t sub_26A31B838(uint64_t a1, unint64_t a2)
{
  v4 = sub_26A424CB4();
  v6 = v5;
  v11 = 10;
  v12 = 0xE100000000000000;
  v10[2] = &v11;

  v10[4] = sub_26A3B47FC(0x7FFFFFFFFFFFFFFFLL, 0, sub_26A31BC60, v10, a1, a2, v7);
  v11 = 10;
  v12 = 0xE100000000000000;
  MEMORY[0x26D65BA70](v4, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372890, &unk_26A43D730);
  sub_26A31BC80();
  sub_26A31BCE4();
  v8 = sub_26A424D14();

  return v8;
}

void sub_26A31B964(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1();
  v8 = v7;

  v9 = sub_26A424AD4();
  v10 = sub_26A424E14();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_26A0E8788(v6, v8, &v13);
    _os_log_impl(&dword_26A0B8000, v9, v10, "%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D65C950](v12, -1, -1);
    MEMORY[0x26D65C950](v11, -1, -1);
  }

  sub_26A424FC4();
  __break(1u);
}

uint64_t sub_26A31BAAC()
{
  v0 = sub_26A424AE4();
  __swift_allocate_value_buffer(v0, qword_2803A8950);
  v1 = __swift_project_value_buffer(v0, qword_2803A8950);
  if (qword_28036C5B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2803A8968);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26A31BB74()
{
  sub_26A31BD38();
  result = sub_26A424E34();
  qword_280372888 = result;
  return result;
}

uint64_t sub_26A31BBD4()
{
  v0 = sub_26A424AE4();
  __swift_allocate_value_buffer(v0, qword_2803A8968);
  __swift_project_value_buffer(v0, qword_2803A8968);
  if (qword_28036C5A8 != -1)
  {
    swift_once();
  }

  v1 = qword_280372888;
  return sub_26A424AF4();
}

unint64_t sub_26A31BC80()
{
  result = qword_280372898;
  if (!qword_280372898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280372890, &unk_26A43D730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372898);
  }

  return result;
}

unint64_t sub_26A31BCE4()
{
  result = qword_2803728A0;
  if (!qword_2803728A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803728A0);
  }

  return result;
}

unint64_t sub_26A31BD38()
{
  result = qword_2803728A8;
  if (!qword_2803728A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803728A8);
  }

  return result;
}

uint64_t Section.init(_:levelOfDetail:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_26A31C4C8(a1, a2, a3, sub_26A10D098);
}

{
  return sub_26A31C4C8(a1, a2, a3, sub_26A1EDE8C);
}

void sub_26A31BDC0()
{
  OUTLINED_FUNCTION_76();
  v5 = v4;
  type metadata accessor for TextElement(0);
  OUTLINED_FUNCTION_2_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_21();
  if (v2)
  {
    v12[5] = MEMORY[0x277D84F90];
    v9 = OUTLINED_FUNCTION_13_25();
    sub_26A10D1E0(v9, v2, 0);
    OUTLINED_FUNCTION_12_25();
    do
    {
      sub_26A31D8AC();
      OUTLINED_FUNCTION_20_25();
      if (v11)
      {
        sub_26A10D1E0((v10 > 1), v7, 1);
      }

      v12[3] = v0;
      v12[4] = &protocol witness table for TextElement;
      __swift_allocate_boxed_opaque_existential_1(v12);
      sub_26A31D8AC();
      OUTLINED_FUNCTION_23_28();
      sub_26A31D904(v1, type metadata accessor for TextElement);
      v5 += v3;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A31BF28()
{
  OUTLINED_FUNCTION_76();
  v5 = v4;
  type metadata accessor for _ProtoResponse.Component(0);
  OUTLINED_FUNCTION_2_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_21();
  if (v2)
  {
    v13[5] = MEMORY[0x277D84F90];
    v9 = OUTLINED_FUNCTION_13_25();
    sub_26A10D91C(v9, v2, 0);
    OUTLINED_FUNCTION_12_25();
    do
    {
      sub_26A31D8AC();
      OUTLINED_FUNCTION_20_25();
      if (v11)
      {
        sub_26A10D91C((v10 > 1), v7, 1);
      }

      v13[3] = v0;
      v13[4] = &protocol witness table for _ProtoResponse.Component;
      __swift_allocate_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_7_25();
      sub_26A31D8AC();
      OUTLINED_FUNCTION_23_28();
      OUTLINED_FUNCTION_6_30();
      sub_26A31D904(v1, v12);
      v5 += v3;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A31C07C()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v2 = type metadata accessor for _ProtoResponse.Component(0);
  v3 = OUTLINED_FUNCTION_79_0(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v33 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_9_38();
  sub_26A31D8AC();
  v9 = *v1;
  v10 = *(*v1 + 16);
  if (v10)
  {
    v32 = v1;
    v38 = MEMORY[0x277D84F90];
    v11 = OUTLINED_FUNCTION_13_25();
    sub_26A10D258(v11, v10, 0);
    v12 = 0;
    v34 = v38;
    v13 = v33;
    while (v12 < *(v9 + 16))
    {
      OUTLINED_FUNCTION_7_25();
      sub_26A31D8AC();
      sub_26A3BA6DC(v35);
      v14 = v9;
      v15 = v5;
      v17 = v36;
      v16 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      (*(v16 + 8))(v17, v16);
      OUTLINED_FUNCTION_6_30();
      sub_26A31D904(v13, v18);
      __swift_destroy_boxed_opaque_existential_1(v35);
      v19 = v34;
      v38 = v34;
      v21 = *(v34 + 16);
      v20 = *(v34 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26A10D258(v20 > 1, v21 + 1, 1);
        v13 = v33;
        v19 = v38;
      }

      ++v12;
      *(v19 + 16) = v21 + 1;
      v34 = v19;
      OUTLINED_FUNCTION_5_40();
      sub_26A31D95C();
      v5 = v15;
      v9 = v14;
      if (v10 == v12)
      {

        v1 = v32;
        v31 = v34;
        goto LABEL_11;
      }
    }

    __break(1u);
    swift_once();
    v22 = sub_26A424AE4();
    __swift_project_value_buffer(v22, qword_2803A8950);
    v23 = 0;
    v24 = sub_26A424AD4();
    v25 = sub_26A424E04();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35[0] = v27;
      *v26 = 136446210;
      swift_getErrorValue();
      v28 = sub_26A4254B4();
      v30 = sub_26A0E8788(v28, v29, v35);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_26A0B8000, v24, v25, "Error redacting Section.componentList: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x26D65C950](v27, -1, -1);
      MEMORY[0x26D65C950](v26, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
LABEL_11:
    *v1 = v31;
  }

  OUTLINED_FUNCTION_75();
}

uint64_t Section.isShown(for:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 24);
    v4 = sub_26A165034(*a1, *(a1 + 8), v2) ^ v3;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_26A31C4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  type metadata accessor for _ProtoResponse.Section(0);
  OUTLINED_FUNCTION_2_43();
  sub_26A31D7BC(v6, v7, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  return sub_26A148B4C(v4, v5);
}

uint64_t sub_26A31C594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for _ProtoResponse.Component(0);
  v10 = OUTLINED_FUNCTION_79_0(v9);
  MEMORY[0x28223BE20](v10);
  v11 = *(a2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v21 = a5;
    v22 = a4;
    v26 = MEMORY[0x277D84F90];
    sub_26A10D258(0, v11, 0);
    v12 = v26;
    v13 = a2 + 32;
    do
    {
      sub_26A0E5D68(v13, v23);
      v14 = v24;
      v15 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v15 + 8))(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v26 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_26A10D258(v16 > 1, v17 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v17 + 1;
      OUTLINED_FUNCTION_5_40();
      sub_26A31D95C();
      v13 += 40;
      --v11;
    }

    while (v11);
    a4 = v22;
    a5 = v21;
  }

  *a1 = v12;

  v19 = sub_26A419308(v18);

  *(a1 + 8) = v19;
  if (a5 != -1)
  {
    *(a1 + 24) = (a5 & 1) == 0;
    j__swift_bridgeObjectRetain();

    *(a1 + 16) = a4;
  }

  return result;
}

uint64_t type metadata accessor for Section(uint64_t a1)
{
  result = qword_2803728C0;
  if (!qword_2803728C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Section.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_26A0D887C(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v6 = sub_26A10BE48(v5);

  v8 = sub_26A10BE48(v7);
  sub_26A29095C(v6, v8);
  v10 = v9;

  if ((v10 & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v13 = sub_26A10BE7C(v12);

  v15 = sub_26A10BE7C(v14);
  v16 = sub_26A290AE0(v13, v15);

  return v16 & 1;
}

uint64_t Section.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoResponse.Section(0);
  OUTLINED_FUNCTION_2_43();
  sub_26A31D7BC(v1, v2, &protocol conformance descriptor for _ProtoResponse.Section);

  return sub_26A424B44();
}

uint64_t Section.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoResponse.Section(0);
  OUTLINED_FUNCTION_2_43();
  sub_26A31D7BC(v0, v1, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A31CCD8(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A31D7BC(&qword_2803728B0, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A424B44();
  return sub_26A425554();
}

void Array<A>.sections(for:)()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_53();
  v4 = type metadata accessor for Section(v3);
  v5 = OUTLINED_FUNCTION_79_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_121_0();
  v7 = 0;
  v20 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v0 + 16);
  v10 = MEMORY[0x277D84F90];
  while (v9 != v7)
  {
    OUTLINED_FUNCTION_1_50();
    sub_26A31D8AC();
    v11 = *(v2 + 16);
    if (*(v11 + 16) && (v12 = v10, v13 = *(v2 + 24), v14 = v13 == sub_26A165034(v20, v8, v11), v10 = v12, v14))
    {
      sub_26A31D904(v2, type metadata accessor for Section);
      ++v7;
    }

    else
    {
      sub_26A31D95C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = OUTLINED_FUNCTION_13_25();
        sub_26A10D93C(v15, v16, 1);
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_26A10D93C(v17 > 1, v18 + 1, 1);
        v19 = v18 + 1;
      }

      ++v7;
      *(v10 + 16) = v19;
      OUTLINED_FUNCTION_8_31();
      sub_26A31D95C();
    }
  }

  OUTLINED_FUNCTION_75();
}

void Array<A>.description(redacted:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v113 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_121_0();
  v10 = type metadata accessor for Section(0);
  v11 = OUTLINED_FUNCTION_79_0(v10);
  v13 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v103 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v103 - v21;
  if (*(v2 + 16))
  {
    v119 = MEMORY[0x277D84F90];
    v23 = OUTLINED_FUNCTION_13_25();
    v108 = v24;
    sub_26A10D50C(v23, v24, 0, v25, v26, v27, v28);
    v29 = 0;
    v30 = v119;
    v107 = v2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v106 = *(v13 + 72);
    HIDWORD(v105) = v4 & 1;
    v103 = xmmword_26A426390;
    v111 = v16;
    v112 = v5;
    v114 = v0;
    v109 = v22;
    v110 = v19;
    LODWORD(v105) = v4;
    while (1)
    {
      v115 = v29;
      v116 = v30;
      sub_26A31D8AC();
      sub_26A31D8AC();
      if (v4)
      {
        sub_26A31C07C();
      }

      else
      {
        sub_26A31D8AC();
      }

      v31 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_8_31();
      v32 = v113;
      sub_26A31D95C();
      *(v32 + *(v5 + 32)) = BYTE4(v105);
      OUTLINED_FUNCTION_0_60();
      sub_26A31D904(v19, v33);
      *(v32 + *(v5 + 28)) = v31;
      sub_26A31D6BC(v32, v0);
      sub_26A31BF28();
      v39 = v38;
      v40 = *(v38 + 16);
      if (v40)
      {
        v117 = v31;
        sub_26A10D50C(0, v40, 0, v34, v35, v36, v37);
        v41 = v117;
        v42 = (v39 + 32);
        v43 = *(v0 + *(v5 + 32));
        do
        {
          __swift_project_boxed_opaque_existential_1(v42, v42[3]);
          v48 = Component.description(redacted:)(v43);
          v117 = v41;
          v50 = *(v41 + 16);
          v49 = *(v41 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_26A10D50C(v49 > 1, v50 + 1, 1, v44, v45, v46, v47);
            v41 = v117;
          }

          *(v41 + 16) = v50 + 1;
          *(v41 + 16 * v50 + 32) = v48;
          v42 += 5;
          --v40;
        }

        while (v40);

        LOBYTE(v4) = v105;
        v0 = v114;
      }

      else
      {
      }

      v51 = OUTLINED_FUNCTION_21_23();
      sub_26A3A25E0(v51, v52, v53, v54);

      OUTLINED_FUNCTION_11_30(v55, v56, v57, v58, v59, v60, v61);

      v62 = *(v0 + 16);
      v63 = *(v62 + 16);
      v64 = v109;
      if (*(v0 + 24))
      {
        if (!v63)
        {
          goto LABEL_19;
        }

        v65 = 1701079400;
      }

      else
      {
        if (!v63)
        {
LABEL_19:

          v68 = 0;
          v67 = 0xE000000000000000;
          goto LABEL_20;
        }

        v65 = 2003789939;
      }

      v117 = v65 | 0x3A6E6F2800000000;
      v118 = 0xE900000000000020;
      swift_bridgeObjectRetain_n();
      v66 = sub_26A12CBBC(v62);
      MEMORY[0x26D65BA70](v66);

      MEMORY[0x26D65BA70](41, 0xE100000000000000);

      v68 = v117;
      v67 = v118;
LABEL_20:
      v5 = v112;
      v69 = HIBYTE(v67) & 0xF;
      if ((v67 & 0x2000000000000000) == 0)
      {
        v69 = v68 & 0xFFFFFFFFFFFFLL;
      }

      if (v69)
      {
        v70 = *(v112 + 28);
        v71 = *(v0 + v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A166DA4(0, *(v71 + 16) + 1, 1, v71);
          v71 = v95;
        }

        v73 = *(v71 + 16);
        v72 = *(v71 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_26A166DA4(v72 > 1, v73 + 1, 1, v71);
          v71 = v96;
        }

        *(v71 + 16) = v73 + 1;
        v74 = v71 + 32 * v73;
        *(v74 + 32) = v103;
        *(v74 + 48) = v68;
        *(v74 + 56) = v67;

        v0 = v114;
        *(v114 + v70) = v71;
      }

      else
      {
      }

      sub_26A0F9448(v75, v76, v77, v78, v79, v80, v81, v82, v103, *(&v103 + 1), v104, v105, v106);
      v84 = v83;
      v86 = v85;
      OUTLINED_FUNCTION_0_60();
      sub_26A31D904(v64, v87);
      sub_26A31D654(v0);
      v30 = v116;
      v119 = v116;
      v93 = *(v116 + 16);
      v92 = *(v116 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_26A10D50C(v92 > 1, v93 + 1, 1, v88, v89, v90, v91);
        v30 = v119;
      }

      v29 = v115 + 1;
      *(v30 + 16) = v93 + 1;
      v94 = v30 + 16 * v93;
      *(v94 + 32) = v84;
      *(v94 + 40) = v86;
      v19 = v110;
      if (v29 == v108)
      {
        goto LABEL_34;
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_34:
  v117 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
  sub_26A10D548();
  v97 = sub_26A424B54();
  v99 = v98;

  v117 = 0x202020200A5BLL;
  v118 = 0xE600000000000000;
  v100 = sub_26A31B838(v97, v99);
  v102 = v101;

  MEMORY[0x26D65BA70](v100, v102);

  MEMORY[0x26D65BA70](23818, 0xE200000000000000);
  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoResponse.LevelOfDetail.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0x6E6F69747061632ELL;
    }

    else
    {
      return 0x746E65746E6F632ELL;
    }
  }

  else
  {
    sub_26A424EF4();

    strcpy(v3, ".UNRECOGNIZED(");
    v2 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v2);

    MEMORY[0x26D65BA70](41, 0xE100000000000000);
    return v3[0];
  }
}

uint64_t sub_26A31D654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A31D6BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A31D7BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A31D82C(uint64_t a1)
{
  result = type metadata accessor for _ProtoResponse.Section(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A31D8AC()
{
  v2 = OUTLINED_FUNCTION_53();
  v3(v2);
  OUTLINED_FUNCTION_12();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A31D904(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A31D95C()
{
  v2 = OUTLINED_FUNCTION_53();
  v3(v2);
  OUTLINED_FUNCTION_12();
  (*(v4 + 32))(v0, v1);
  return v0;
}

void OUTLINED_FUNCTION_11_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_26A3A231C(a1, 0x44664F6C6576656CLL, 0xED00006C69617465, 0, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_22_17()
{

  return type metadata accessor for _ProtoResponse.Section(0);
}

uint64_t OUTLINED_FUNCTION_23_28()
{
  *(v0 + 16) = v1;

  return sub_26A0D671C((v4 - 128), v0 + v3 * v2 + 32);
}

void SashStandard.title.getter()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_26_13();
  v4 = type metadata accessor for _ProtoSash_Standard.SashTitle(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371E60, &qword_26A43A9E0);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = type metadata accessor for _ProtoSash_Standard(0);
  OUTLINED_FUNCTION_23_23(*(v1 + *(v14 + 20)) + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__title);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v4);
  sub_26A0E48F0(v13, &qword_280371E60, &qword_26A43A9E0);
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_8;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_38_0();
  if (v16)
  {
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = -1;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_38_0();
    if (!v16)
    {
      sub_26A0E48F0(v2, &qword_280371E60, &qword_26A43A9E0);
    }
  }

  else
  {
    sub_26A320AE8();
  }

  v17 = *v8;
  v18 = *(v8 + 8);
  v19 = *(v8 + 16);
  v20 = OUTLINED_FUNCTION_78_1();
  sub_26A148B68(v20, v21, v19);
  OUTLINED_FUNCTION_5_41();
  sub_26A320B90(v8, v22);
  if (v19 == 255)
  {
LABEL_8:
    v17 = 0;
    v18 = 0;
    v23 = -1;
  }

  else
  {
    v23 = v19 & 1;
  }

  *v0 = v17;
  *(v0 + 8) = v18;
  *(v0 + 16) = v23;
  OUTLINED_FUNCTION_75();
}

uint64_t SashStandard.Title.init(proto:)(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_26_13();
  v4 = type metadata accessor for _ProtoSash_Standard.SashTitle(v3);
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) == 1)
  {
    result = sub_26A0E48F0(a1, &qword_280371E60, &qword_26A43A9E0);
LABEL_6:
    *v1 = 0;
    *(v1 + 8) = 0;
    v12 = -1;
    goto LABEL_7;
  }

  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = OUTLINED_FUNCTION_78_1();
  sub_26A148B68(v9, v10, v8);
  OUTLINED_FUNCTION_5_41();
  result = sub_26A320B90(a1, v11);
  if (v8 == 255)
  {
    goto LABEL_6;
  }

  *v1 = v6;
  *(v1 + 8) = v7;
  if (v8)
  {
    v12 = 1;
LABEL_7:
    *(v1 + 16) = v12;
    return result;
  }

  *(v1 + 16) = 0;
  return result;
}

void sub_26A31DE44()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v24 = v4;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_23_23(*(v0 + *(v12 + 20)) + *v3);
  OUTLINED_FUNCTION_127_0();
  v13 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v13, v14, &unk_26A426430);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v15)
    {
      *v8 = MEMORY[0x277D84F90];
      *(v8 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v16 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
      OUTLINED_FUNCTION_38_0();
      if (!v15)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A320AE8();
    }

    sub_26A320AE8();
    v3 = 0;
  }

  v23 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v24, v3, 1, v23);
  OUTLINED_FUNCTION_75();
}

void SashStandard.action.getter()
{
  OUTLINED_FUNCTION_76();
  v16 = v3;
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_23_23(*(v0 + *(v11 + 20)) + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__action);
  OUTLINED_FUNCTION_127_0();
  v12 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v12, v13, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v14)
    {
      *v7 = MEMORY[0x277D84F90];
      v7[1] = 0;
      v7[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v14)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A320AE8();
    }

    sub_26A320AE8();
    v2 = 0;
  }

  v15 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v16, v2, 1, v15);
  OUTLINED_FUNCTION_75();
}

uint64_t SashStandard.componentName.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoSash_Standard(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName;
  OUTLINED_FUNCTION_142(v1, v3);

  return OUTLINED_FUNCTION_246();
}

uint64_t SashStandard.showOnWatch.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoSash_Standard(0) + 20));
  v2 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
  OUTLINED_FUNCTION_142(v1 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch, v4);
  return *(v1 + v2);
}

void _ProtoSash_Standard.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_26_13();
  v132 = type metadata accessor for _ProtoActionProperty(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v9);
  v130 = type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371E60, &qword_26A43A9E0);
  v15 = OUTLINED_FUNCTION_41(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v18);
  v19 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  v27 = v120 - v26;
  v28 = OUTLINED_FUNCTION_78_1();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  v31 = OUTLINED_FUNCTION_41(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  v36 = v120 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47();
  v133 = v38;
  MEMORY[0x28223BE20](v39);
  v41 = v120 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = v120 - v43;
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_246();
  sub_26A320B3C();
  v45 = *(type metadata accessor for _ProtoSash_Standard(0) + 20);
  v134 = v0;
  v135 = v45;
  v46 = *(v0 + v45);
  OUTLINED_FUNCTION_142(v46 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__thumbnail, &v141);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v19);
  sub_26A0E48F0(v44, &qword_28036CAE8, &unk_26A426430);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v41);
    if (v48)
    {
      *v27 = MEMORY[0x277D84F90];
      *(v27 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v49 = v132;
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v132);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v49);
      OUTLINED_FUNCTION_3_6(v41);
      v56 = v135;
      if (!v48)
      {
        sub_26A0E48F0(v41, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A320AE8();
      v56 = v135;
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_6_31();
    sub_26A320B90(v27, v57);
    v58 = v134;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v58 + v56);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = type metadata accessor for _ProtoSash_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v60);
      OUTLINED_FUNCTION_22_18();
      v46 = v61;
      *(v58 + v56) = v61;
    }

    sub_26A320AE8();
    v62 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v19);
    OUTLINED_FUNCTION_211(v46 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__thumbnail, v140);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v46 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__titleColor, v140);
  OUTLINED_FUNCTION_209();
  v65 = __swift_getEnumTagSinglePayload(v36, 1, v19);
  OUTLINED_FUNCTION_162_0(v36);
  if (v65 == 1)
  {
    v66 = v132;
    v67 = v134;
    v68 = v130;
  }

  else
  {
    v69 = v120[2];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v69);
    v66 = v132;
    v67 = v134;
    v70 = v135;
    v68 = v130;
    if (v48)
    {
      v46 = v120[3];
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_15_30(*(v19 + 32));
      OUTLINED_FUNCTION_15_30(*(v19 + 36));
      OUTLINED_FUNCTION_3_6(v69);
      if (!v48)
      {
        sub_26A0E48F0(v69, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164();
      sub_26A320AE8();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_6_31();
    sub_26A320B90(v46, v71);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v67 + v70);
    if ((v72 & 1) == 0)
    {
      v73 = type metadata accessor for _ProtoSash_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v73);
      OUTLINED_FUNCTION_22_18();
      v46 = v74;
      *(v67 + v70) = v74;
    }

    sub_26A320AE8();
    v75 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v19);
    OUTLINED_FUNCTION_211(v46 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__titleColor, v139);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v46 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__title, v139);
  v78 = v128;
  OUTLINED_FUNCTION_209();
  v79 = v68;
  v80 = __swift_getEnumTagSinglePayload(v78, 1, v68);
  OUTLINED_FUNCTION_162_0(v78);
  if (v80 != 1)
  {
    OUTLINED_FUNCTION_164();
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v46, 1, v79) == 1)
    {
      v81 = v121;
      *v121 = 0;
      *(v81 + 8) = 0;
      *(v81 + 16) = -1;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v82 = __swift_getEnumTagSinglePayload(v46, 1, v79);
      v83 = v135;
      v84 = v122;
      if (v82 != 1)
      {
        sub_26A0E48F0(v46, &qword_280371E60, &qword_26A43A9E0);
      }
    }

    else
    {
      v81 = v121;
      sub_26A320AE8();
      v83 = v135;
      v84 = v122;
    }

    sub_26A320B3C();
    v85 = *(v81 + 16);
    if (v85 == 255)
    {
      sub_26A320B90(v81, type metadata accessor for _ProtoSash_Standard.SashTitle);
    }

    else if (v85)
    {
      sub_26A320B90(v81, type metadata accessor for _ProtoSash_Standard.SashTitle);
      sub_26A0D6768(*v84, *(v84 + 8), *(v84 + 16));
      *v84 = xmmword_26A42D990;
      *(v84 + 16) = 1;
    }

    else
    {
      v86 = *v81;
      v87 = *(v81 + 8);

      OUTLINED_FUNCTION_5_41();
      sub_26A320B90(v81, v88);
      sub_26A0D6768(*v84, *(v84 + 8), *(v84 + 16));
      *v84 = v86;
      *(v84 + 8) = v87;
      *(v84 + 16) = 0;
    }

    sub_26A320AE8();
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v67 + v83);
    if ((v89 & 1) == 0)
    {
      v90 = type metadata accessor for _ProtoSash_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v90);
      OUTLINED_FUNCTION_22_18();
      v46 = v91;
      *(v67 + v83) = v91;
    }

    sub_26A320AE8();
    v92 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v79);
    OUTLINED_FUNCTION_211(v46 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__title, v138);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v46 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__backgroundColor, v138);
  v95 = v129;
  OUTLINED_FUNCTION_209();
  v96 = __swift_getEnumTagSinglePayload(v95, 1, v19);
  OUTLINED_FUNCTION_162_0(v95);
  if (v96 != 1)
  {
    v97 = v123;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v97);
    v98 = v135;
    if (v48)
    {
      v46 = v124;
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_15_30(*(v19 + 32));
      OUTLINED_FUNCTION_15_30(*(v19 + 36));
      OUTLINED_FUNCTION_3_6(v97);
      if (!v48)
      {
        sub_26A0E48F0(v97, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164();
      sub_26A320AE8();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_6_31();
    sub_26A320B90(v46, v99);
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v67 + v98);
    if ((v100 & 1) == 0)
    {
      v101 = type metadata accessor for _ProtoSash_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v101);
      OUTLINED_FUNCTION_22_18();
      v46 = v102;
      *(v67 + v98) = v102;
    }

    sub_26A320AE8();
    v103 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v19);
    OUTLINED_FUNCTION_211(v46 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__backgroundColor, v137);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v46 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__action, v137);
  v106 = v131;
  OUTLINED_FUNCTION_209();
  v107 = __swift_getEnumTagSinglePayload(v106, 1, v66);
  OUTLINED_FUNCTION_162_0(v106);
  if (v107 != 1)
  {
    v108 = v125;
    sub_26A10FD9C();
    v109 = __swift_getEnumTagSinglePayload(v108, 1, v66);
    v110 = v135;
    if (v109 == 1)
    {
      v46 = v126;
      *v126 = MEMORY[0x277D84F90];
      *(v46 + 8) = 0;
      *(v46 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v111 = __swift_getEnumTagSinglePayload(v108, 1, v66);
      v112 = v127;
      if (v111 != 1)
      {
        sub_26A0E48F0(v108, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164();
      sub_26A320AE8();
      v112 = v127;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v112);
    sub_26A320B90(v46, type metadata accessor for _ProtoActionProperty);
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v114 = *(v67 + v110);
    if ((v113 & 1) == 0)
    {
      v115 = type metadata accessor for _ProtoSash_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v115);
      sub_26A2E4FA8();
      v114 = v116;
      *(v67 + v110) = v116;
    }

    sub_26A320AE8();
    v117 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v66);
    OUTLINED_FUNCTION_211(v114 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__action, &v136);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SashStandard.init(title:thumbnail:titleColor:backgroundColor:action:componentName:showOnWatch:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11 = *a1;
  v12 = a1[1];
  type metadata accessor for _ProtoSash_Standard(0);
  OUTLINED_FUNCTION_4_37();
  sub_26A320AA0(v13, v14, &protocol conformance descriptor for _ProtoSash_Standard);
  sub_26A4249C4();

  sub_26A0D6740(v11, v12);
  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_187_0(a4);
  OUTLINED_FUNCTION_187_0(a3);
  return sub_26A0E48F0(a2, &qword_28036CB20, &unk_26A426470);
}

uint64_t sub_26A31F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v62 = a8;
  v59 = a7;
  v57 = a6;
  v56 = a5;
  v55 = a4;
  v72 = a9;
  v14 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v14 - 8);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v16 - 8);
  v53 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  MEMORY[0x28223BE20](v18 - 8);
  v63 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v58 = &v51 - v21;
  v61 = type metadata accessor for Color(0);
  MEMORY[0x28223BE20](v61);
  v52 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v51 = &v51 - v24;
  v25 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v25 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v51 - v27;
  v29 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v29);
  v60 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v51 - v32;
  v34 = type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  MEMORY[0x28223BE20](v34);

  _ProtoSash_Standard.componentName.setter(a2, a3);
  v65 = v55;
  v66 = v56;
  sub_26A320AA0(&qword_280371EC8, type metadata accessor for _ProtoSash_Standard.SashTitle, &protocol conformance descriptor for _ProtoSash_Standard.SashTitle);
  v35 = v64;
  sub_26A4249C4();
  v64 = v35;
  v36 = a1;
  _ProtoSash_Standard.title.setter();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_26A0E48F0(v28, &qword_28036CB20, &unk_26A426470);
  }

  else
  {
    sub_26A320AE8();
    sub_26A320B3C();
    _ProtoSash_Standard.thumbnail.setter();
    sub_26A320B90(v33, type metadata accessor for VisualProperty);
  }

  v37 = v58;
  sub_26A10FD9C();
  v38 = v61;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v61);
  v40 = v63;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A0E48F0(v37, &qword_28036CBA0, &qword_26A4265B0);
  }

  else
  {
    v41 = v51;
    sub_26A320AE8();
    sub_26A3F3AC0();
    sub_26A320AE8();
    _ProtoSash_Standard.titleColor.setter();
    sub_26A320B90(v41, type metadata accessor for Color);
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v40, 1, v38) == 1)
  {
    sub_26A0E48F0(v40, &qword_28036CBA0, &qword_26A4265B0);
  }

  else
  {
    v42 = v52;
    sub_26A320AE8();
    sub_26A3F3AC0();
    sub_26A320AE8();
    _ProtoSash_Standard.backgroundColor.setter();
    sub_26A320B90(v42, type metadata accessor for Color);
  }

  sub_26A10FD9C();
  if (v68)
  {
    sub_26A0D671C(&v67, v69);
    v43 = v70;
    v44 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v44 + 8))(v43, v44);
    sub_26A320AE8();
    _ProtoSash_Standard.action.setter();
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    sub_26A0E48F0(&v67, &qword_28036CAF8, &unk_26A426D30);
  }

  v45 = *(type metadata accessor for _ProtoSash_Standard(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v36 + v45);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for _ProtoSash_Standard._StorageClass(0);
    swift_allocObject();
    sub_26A2E4FA8();
    v47 = v48;
    *(v36 + v45) = v48;
  }

  v49 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
  result = swift_beginAccess();
  *(v47 + v49) = a11 & 1;
  return result;
}

uint64_t sub_26A31F9BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);

  result = sub_26A0D6768(v8, v9, v10);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  return result;
}

void SashStandard.init(title:thumbnail:titleColor:backgroundColor:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v33 = v0;
  v32 = v1;
  v30 = v2;
  v29 = v3;
  v31 = v4;
  v34 = v5;
  v35 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v14);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v18 = *(v8 + 8);
  v26 = *v8;
  v27 = v18;
  v19 = *(v8 + 16);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v20 = v28;
  sub_26A10FD9C();
  v21 = v30;
  sub_26A10FD9C();
  type metadata accessor for _ProtoSash_Standard(0);
  v36 = v32;
  v37 = v33;
  v22 = v26;
  v23 = v27;
  v38 = v26;
  v39 = v27;
  v40 = v19;
  v41 = v17;
  v42 = v13;
  v43 = v20;
  v44 = v46;
  v45 = 0;
  OUTLINED_FUNCTION_4_37();
  sub_26A320AA0(v24, v25, &protocol conformance descriptor for _ProtoSash_Standard);
  sub_26A4249C4();
  sub_26A0D6740(v22, v23);

  sub_26A0E48F0(v21, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v29, &qword_28036CBA0, &qword_26A4265B0);
  sub_26A0E48F0(v31, &qword_28036CBA0, &qword_26A4265B0);
  sub_26A0E48F0(v34, &qword_28036CB20, &unk_26A426470);
  sub_26A0E48F0(v46, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v20, &qword_28036CBA0, &qword_26A4265B0);
  sub_26A0E48F0(v13, &qword_28036CBA0, &qword_26A4265B0);
  sub_26A0E48F0(v17, &qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_75();
}

void SashStandard.init(title:thumbnail:titleColor:backgroundColor:action:)()
{
  OUTLINED_FUNCTION_76();
  v26 = v0;
  v25 = v1;
  v27 = v2;
  v28 = v3;
  v29 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v12);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = *v6;
  v17 = *(v6 + 8);
  v18 = *(v6 + 16);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v19 = v25;
  v20 = v24;
  sub_26A10FD9C();
  v21 = v26;
  sub_26A10FD9C();
  type metadata accessor for _ProtoSash_Standard(0);
  v30 = 0;
  v31 = 0xE000000000000000;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v15;
  v36 = v11;
  v37 = v20;
  v38 = v40;
  v39 = 0;
  OUTLINED_FUNCTION_4_37();
  sub_26A320AA0(v22, v23, &protocol conformance descriptor for _ProtoSash_Standard);
  sub_26A4249C4();
  sub_26A0D6740(v16, v17);
  sub_26A0E48F0(v21, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v19, &qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_187_0(v27);
  sub_26A0E48F0(v28, &qword_28036CB20, &unk_26A426470);
  sub_26A0E48F0(v40, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_187_0(v20);
  OUTLINED_FUNCTION_187_0(v11);
  sub_26A0E48F0(v15, &qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SashStandard.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for SashStandard(0);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE18, &qword_26A4269A0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  OUTLINED_FUNCTION_13_26();
  sub_26A320B3C();
  if (v2)
  {
    _ProtoSash_Standard.redactedProto.getter();
  }

  else
  {
    sub_26A320B3C();
  }

  sub_26A320AE8();
  v19[*(v16 + 32)] = v2 & 1;
  sub_26A320B90(v15, type metadata accessor for SashStandard);
  v20 = *(v16 + 28);
  *&v19[v20] = MEMORY[0x277D84F90];
  SashStandard.title.getter();
  v21 = v53;
  if (v53 != 255)
  {
    v23 = v51;
    v22 = v52;
    if (v53 & 1) != 0 && (v2)
    {
      sub_26A0D6768(v51, v52, v53);
      v24 = 0xEC000000223E4445;
      v25 = 0x5443414445523C22;
    }

    else
    {
      v51 = 34;
      v52 = 0xE100000000000000;
      MEMORY[0x26D65BA70](v23, v22);
      MEMORY[0x26D65BA70](34, 0xE100000000000000);
      sub_26A0D6768(v23, v22, v21);
      v25 = v51;
      v24 = v52;
    }

    v26 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v26 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {

      sub_26A16819C(0, 1, 1, MEMORY[0x277D84F90]);
      v28 = v27;
      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_26A16819C(v29 > 1, v30 + 1, 1, v27);
        v28 = v48;
      }

      *(v28 + 16) = v30 + 1;
      v31 = (v28 + 32 * v30);
      v31[4] = 0;
      v31[5] = 0;
      v31[6] = v25;
      v31[7] = v24;
      *&v19[v20] = v28;
    }

    else
    {
    }
  }

  SashStandard.thumbnail.getter();
  sub_26A109B80(v10, 0x69616E626D756874, 0xE90000000000006CLL);
  OUTLINED_FUNCTION_28_16();
  SashStandard.titleColor.getter();
  sub_26A109B80(v10, 0x6C6F43656C746974, 0xEA0000000000726FLL);
  OUTLINED_FUNCTION_28_16();
  SashStandard.backgroundColor.getter();
  sub_26A109B80(v10, 0x756F72676B636162, 0xEF726F6C6F43646ELL);
  OUTLINED_FUNCTION_28_16();
  SashStandard.action.getter();
  sub_26A109A7C();
  sub_26A0E48F0(v6, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7F20(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v33, v34, v35, v36, v50, v51);

  v37 = *&v19[*(type metadata accessor for _ProtoSash_Standard(0) + 20)];
  v38 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
  OUTLINED_FUNCTION_23_23(v37 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch);
  sub_26A146ACC(*(v37 + v38), 0x61576E4F776F6873, 0xEB00000000686374, 0);
  sub_26A101520(v39, v40, v41, v42, v43, v44, v45);
  sub_26A0E48F0(v19, &qword_28036CE18, &qword_26A4269A0);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v47;
  result._countAndFlagsBits = v46;
  return result;
}

uint64_t type metadata accessor for SashStandard(uint64_t a1)
{
  result = qword_2803728D0;
  if (!qword_2803728D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SashStandard.Title.proto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_26_13();
  v3 = type metadata accessor for _ProtoSash_Standard.SashTitle(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  v9 = *v1;
  v8 = v1[1];
  v10 = *(v1 + 16);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = -1;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v11 = *v7;
  v12 = *(v7 + 8);
  v13 = *(v7 + 16);

  sub_26A0D6768(v11, v12, v13);
  *v7 = v9;
  *(v7 + 8) = v8;
  *(v7 + 16) = v10;
  sub_26A320AE8();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v3);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SashStandard.Title.description(redacted:)(Swift::Bool redacted)
{
  if ((*(v1 + 16) & 1) != 0 && redacted)
  {
    v2 = 0xEC000000223E4445;
    v3 = 0x5443414445523C22;
  }

  else
  {
    MEMORY[0x26D65BA70](*v1, *(v1 + 8));
    MEMORY[0x26D65BA70](34, 0xE100000000000000);
    v3 = 34;
    v2 = 0xE100000000000000;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t SashStandard.Title.applicationBundleIdentifier.getter()
{
  if ((*(v0 + 16) & 1) == 0)
  {
  }

  return OUTLINED_FUNCTION_246();
}

uint64_t SashStandard.Title.text.getter()
{
  if (*(v0 + 16) == 1)
  {
  }

  return OUTLINED_FUNCTION_246();
}

uint64_t SashStandard.componentProto.getter()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = type metadata accessor for _ProtoSash_Standard(v1);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_78_1();
  sub_26A320B3C();
  sub_26A0E48F0(v0, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_14_22();
  sub_26A320AE8();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v4);
}

uint64_t SashStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SashStandard(0);
  *(inited + 64) = &protocol witness table for SashStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_13_26();
  sub_26A320B3C();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A320AA0(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A3209F8(uint64_t a1)
{
  result = type metadata accessor for _ProtoSash_Standard(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A320AA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A320AE8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A320B3C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A320B90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_15_30@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
}

void OUTLINED_FUNCTION_22_18()
{

  sub_26A2E4FA8();
}

uint64_t OUTLINED_FUNCTION_28_16()
{

  return sub_26A0E48F0(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_38_13()
{

  return type metadata accessor for _ProtoSash_Standard(0);
}

uint64_t OUTLINED_FUNCTION_41_14()
{

  return type metadata accessor for _ProtoSash_Standard(0);
}

Swift::String __swiftcall ActionElement.description(redacted:)(Swift::Bool redacted)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD90, &qword_26A4268F0);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_113();
  v6 = type metadata accessor for ActionElement(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD98, &qword_26A4268F8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_35_19();
  OUTLINED_FUNCTION_23_29();
  sub_26A321058();
  if (redacted)
  {
    _s10SnippetKit13ActionElementV13redactedProtoAA01_fcD0Vvg_0();
  }

  else
  {
    sub_26A321058();
  }

  OUTLINED_FUNCTION_217_0();
  sub_26A3210AC();
  *(v2 + *(v11 + 32)) = redacted;
  sub_26A326630(v10, type metadata accessor for ActionElement);
  *(v2 + *(v11 + 28)) = MEMORY[0x277D84F90];
  ActionElement.command.getter();
  type metadata accessor for Command(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_26A146614(v1, 0, 0, 0);
  sub_26A0E48F0(v1, &qword_28036CD90, &qword_26A4268F0);
  KeyPath = swift_getKeyPath();
  sub_26A0F7238(KeyPath, 0x6D656C4574786574, 0xEC00000073746E65, v18, v19, v20, v21, v22, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5]);

  v23 = swift_getKeyPath();
  sub_26A28FD74(v23, 0x736D6F696469, 0xE600000000000000);

  sub_26A100A40(v24, v25, v26, v27, v28, v29, v30);
  sub_26A0E48F0(v2, &qword_28036CD98, &qword_26A4268F8);
  v31 = OUTLINED_FUNCTION_175();
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

uint64_t sub_26A321058()
{
  OUTLINED_FUNCTION_90_5();
  v1 = OUTLINED_FUNCTION_16_11();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t sub_26A3210AC()
{
  OUTLINED_FUNCTION_90_5();
  v1 = OUTLINED_FUNCTION_16_11();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

void ActionElement.command.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_163_1();
  v4 = type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  type metadata accessor for _ProtoActionElement(0);
  sub_26A3270CC();
  OUTLINED_FUNCTION_15(v1);
  if (v6)
  {
    v7 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
    __swift_storeEnumTagSinglePayload(v0, 1, 1, v7);
    *(v0 + *(v4 + 20)) = 0;
    *(v0 + *(v4 + 24)) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_15(v1);
    if (!v6)
    {
      sub_26A0E48F0(v1, &qword_28036C868, &qword_26A42D090);
    }
  }

  else
  {
    sub_26A3210AC();
  }

  sub_26A3212CC();
}

void sub_26A3212CC()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v190 = v5;
  v195 = *MEMORY[0x277D85DE8];
  type metadata accessor for _ProtoCommand.AppPunchout(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v14 = (v13 - v12);
  v15 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v187 = v18 - v17;
  v188 = type metadata accessor for Command(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_120();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_70_6();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  v186 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  v25 = &v186 - v24;
  v26 = &dword_26A42D080;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  OUTLINED_FUNCTION_41(v27);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_44_6();
  v189 = v4;
  sub_26A3270CC();
  v29 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v29) == 1)
  {
LABEL_64:
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v178 = sub_26A424AE4();
    __swift_project_value_buffer(v178, qword_2803A8950);
    v179 = sub_26A424AD4();
    v180 = sub_26A424E14();
    if (OUTLINED_FUNCTION_27_20(v180))
    {
      OUTLINED_FUNCTION_44_13();
      *&v192 = OUTLINED_FUNCTION_33_13();
      *v26 = 136446210;
      *(v26 + 4) = sub_26A0E8788(0xD000000000000022, 0x800000026A44A420, &v192);
      OUTLINED_FUNCTION_14_23();
      _os_log_impl(v181, v182, v183, v184, v185, 0xCu);
      OUTLINED_FUNCTION_16_22();
      OUTLINED_FUNCTION_32_16();
    }

    OUTLINED_FUNCTION_31_18();
    v186 = 443;
    OUTLINED_FUNCTION_66_7();
    sub_26A424FC4();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v70 = v190;
        objc_opt_self();
        OUTLINED_FUNCTION_65_4();
        v71 = sub_26A4246B4();
        *&v192 = 0;
        v72 = OUTLINED_FUNCTION_59_14(v71, sel_propertyListWithData_options_format_error_);

        if (v72)
        {
          v73 = v192;
          sub_26A424E64();
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FB50, &qword_26A43B4F0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_28;
          }

          v74 = v191;
          v75 = objc_opt_self();
          v76 = sub_26A326788(v74, v75);
          if (v76)
          {
            v77 = v76;
            objc_opt_self();
            v78 = swift_dynamicCastObjCClass();
            if (v78)
            {
              v79 = v78;
              v80 = OUTLINED_FUNCTION_65_4();
              sub_26A0E4784(v80, v81);

              type metadata accessor for _ProtoCommand(0);
              v82 = OUTLINED_FUNCTION_18_24();
              v84 = *(v82 + v83);
              OUTLINED_FUNCTION_2_44();
              sub_26A326630(v85, v86);
              *v70 = v79;
              *(v70 + 8) = v84;
              OUTLINED_FUNCTION_22_19();
              goto LABEL_59;
            }
          }

          if (qword_28036C5A0 != -1)
          {
            OUTLINED_FUNCTION_0_34();
            swift_once();
          }

          v166 = sub_26A424AE4();
          __swift_project_value_buffer(v166, qword_2803A8950);

          v122 = sub_26A424AD4();
          v167 = sub_26A424E04();

          if (os_log_type_enabled(v122, v167))
          {
            v168 = OUTLINED_FUNCTION_44_13();
            v169 = OUTLINED_FUNCTION_43_10();
            *&v192 = v169;
            *v168 = 136315138;
            sub_26A424B14();

            v170 = OUTLINED_FUNCTION_68_8();
            v173 = sub_26A0E8788(v170, v171, v172);

            *(v168 + 4) = v173;
            _os_log_impl(&dword_26A0B8000, v122, v167, "Unable to create concrete SABaseCommand from dictionary for: %s", v168, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v169);
            OUTLINED_FUNCTION_1_21();
            goto LABEL_56;
          }

          v176 = OUTLINED_FUNCTION_65_4();
          sub_26A0E4784(v176, v177);

          goto LABEL_58;
        }

        v144 = v192;
        v145 = sub_26A4245B4();

        swift_willThrow();
        if (qword_28036C5A0 != -1)
        {
          OUTLINED_FUNCTION_0_34();
          swift_once();
        }

        v146 = sub_26A424AE4();
        __swift_project_value_buffer(v146, qword_2803A8950);
        v147 = v145;
        v46 = sub_26A424AD4();
        v148 = sub_26A424E04();

        if (!os_log_type_enabled(v46, v148))
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 2:
        v41 = OUTLINED_FUNCTION_65_4();
        sub_26A0E45C0(v41, v42);
        v43 = OUTLINED_FUNCTION_65_4();
        sub_26A22F9D0(v43);
        v136 = OUTLINED_FUNCTION_65_4();
        sub_26A0E4784(v136, v137);
        v138 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803728F0, &qword_26A43DA00) + 48);
        type metadata accessor for _ProtoCommand(0);
        v139 = OUTLINED_FUNCTION_18_24();
        v141 = *(v139 + v140);
        OUTLINED_FUNCTION_2_44();
        sub_26A326630(v142, v143);
        v25[v138] = v141;
        OUTLINED_FUNCTION_22_19();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_38();
        goto LABEL_38;
      case 3:
        v54 = *v0;
        v55 = v0[1];
        type metadata accessor for _ProtoCommand(0);
        v56 = OUTLINED_FUNCTION_18_24();
        v58 = *(v56 + v57);
        OUTLINED_FUNCTION_2_44();
        sub_26A326630(v59, v60);
        v61 = v190;
        *v190 = v54;
        v61[1] = v55;
        *(v61 + 16) = v58;
        OUTLINED_FUNCTION_22_19();
        goto LABEL_59;
      case 4:
        v31 = v187;
        v32 = sub_26A3210AC();
        v33 = *v31;
        v34 = *(*v31 + 16);
        if (!v34)
        {
          OUTLINED_FUNCTION_58_15(v32, type metadata accessor for _ProtoCommand);
          OUTLINED_FUNCTION_26_26();
          v35 = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_22_19();
          goto LABEL_37;
        }

        v191 = MEMORY[0x277D84F90];
        sub_26A10CCB8(0, v34, 0);
        v35 = v191;
        v36 = type metadata accessor for _ProtoBackgroundElement(0);
        v37 = 0;
        OUTLINED_FUNCTION_41(v36);
        OUTLINED_FUNCTION_166_0();
        while (v37 < v33[2])
        {
          v193 = type metadata accessor for BackgroundElement(0);
          v194 = &protocol witness table for BackgroundElement;
          __swift_allocate_boxed_opaque_existential_1(&v192);
          sub_26A321058();
          v191 = v35;
          v39 = v35[2];
          v38 = v35[3];
          v0 = (v39 + 1);
          if (v39 >= v38 >> 1)
          {
            sub_26A10CCB8((v38 > 1), v39 + 1, 1);
            v35 = v191;
          }

          ++v37;
          v35[2] = v0;
          v40 = sub_26A0D671C(&v192, &v35[5 * v39 + 4]);
          if (v34 == v37)
          {
            OUTLINED_FUNCTION_58_15(v40, type metadata accessor for _ProtoCommand);
            OUTLINED_FUNCTION_26_26();
            OUTLINED_FUNCTION_22_19();
LABEL_37:
            *v186 = v35;
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_4_38();
            OUTLINED_FUNCTION_246();
            goto LABEL_38;
          }
        }

        __break(1u);
        OUTLINED_FUNCTION_0_34();
        swift_once();
        v44 = sub_26A424AE4();
        __swift_project_value_buffer(v44, qword_2803A8950);
        v45 = v33;
        v46 = sub_26A424AD4();
        sub_26A424E04();

        if (os_log_type_enabled(v46, v0))
        {
          v47 = OUTLINED_FUNCTION_44_13();
          v48 = OUTLINED_FUNCTION_43_10();
          *&v192 = v48;
          *v47 = 136446210;
          swift_getErrorValue();
          v49 = sub_26A4254B4();
          v51 = sub_26A0E8788(v49, v50, &v192);

          *(v47 + 4) = v51;
          _os_log_impl(&dword_26A0B8000, v46, v0, "Unable to deserialize data: %{public}s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          OUTLINED_FUNCTION_1_21();
          OUTLINED_FUNCTION_1_21();

          v52 = OUTLINED_FUNCTION_65_4();
          EnumCaseMultiPayload = sub_26A0E4784(v52, v53);
          goto LABEL_58;
        }

        v162 = OUTLINED_FUNCTION_65_4();
        sub_26A0E4784(v162, v163);
        v161 = v33;
LABEL_49:

LABEL_58:
        OUTLINED_FUNCTION_58_15(EnumCaseMultiPayload, type metadata accessor for _ProtoCommand);
        OUTLINED_FUNCTION_22_19();
LABEL_59:
        swift_storeEnumTagMultiPayload();
LABEL_60:
        OUTLINED_FUNCTION_75();
        break;
      case 5:
        v87 = objc_allocWithZone(MEMORY[0x277D4C740]);
        v88 = OUTLINED_FUNCTION_217_0();
        sub_26A0E45C0(v88, v89);
        v90 = OUTLINED_FUNCTION_217_0();
        v92 = sub_26A32659C(v90, v91);
        if (v92)
        {
          v93 = v92;
          v94 = [objc_allocWithZone(MEMORY[0x277D4C2A8]) initWithProtobuf_];

          if (v94)
          {
            v95 = OUTLINED_FUNCTION_217_0();
            sub_26A0E4784(v95, v96);
            v97 = *(v189 + *(type metadata accessor for _ProtoCommand(0) + 20));
            OUTLINED_FUNCTION_2_44();
            sub_26A326630(v98, v99);
            *v2 = v94;
            *(v2 + 8) = v97;
            OUTLINED_FUNCTION_22_19();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_4_38();
            goto LABEL_38;
          }
        }

        if (qword_28036C5A0 != -1)
        {
          OUTLINED_FUNCTION_0_34();
          swift_once();
        }

        v129 = sub_26A424AE4();
        v130 = __swift_project_value_buffer(v129, qword_2803A8950);
        v131 = sub_26A424AD4();
        v132 = sub_26A424E04();
        if (OUTLINED_FUNCTION_27_20(v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 0;
          _os_log_impl(&dword_26A0B8000, v131, v130, "Unable to build SFCommand from data", v133, 2u);
          OUTLINED_FUNCTION_1_21();

          v134 = OUTLINED_FUNCTION_217_0();
          EnumCaseMultiPayload = sub_26A0E4784(v134, v135);
        }

        else
        {
          v164 = OUTLINED_FUNCTION_217_0();
          sub_26A0E4784(v164, v165);
        }

        goto LABEL_58;
      case 6:
        objc_opt_self();
        OUTLINED_FUNCTION_65_4();
        v100 = sub_26A4246B4();
        *&v192 = 0;
        v101 = OUTLINED_FUNCTION_59_14(v100, sel_propertyListWithData_options_format_error_);

        if (!v101)
        {
          v149 = v192;
          v145 = sub_26A4245B4();

          swift_willThrow();
          if (qword_28036C5A0 != -1)
          {
            OUTLINED_FUNCTION_0_34();
            swift_once();
          }

          v150 = sub_26A424AE4();
          __swift_project_value_buffer(v150, qword_2803A8950);
          v151 = v145;
          v46 = sub_26A424AD4();
          v148 = sub_26A424E04();

          if (os_log_type_enabled(v46, v148))
          {
LABEL_46:
            v152 = OUTLINED_FUNCTION_44_13();
            v153 = OUTLINED_FUNCTION_43_10();
            *&v192 = v153;
            *v152 = 136446210;
            swift_getErrorValue();
            v154 = sub_26A4254B4();
            v156 = sub_26A0E8788(v154, v155, &v192);

            *(v152 + 4) = v156;
            _os_log_impl(&dword_26A0B8000, v46, v148, "Failed to deserialize plist data to dictionary: %{public}s", v152, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v153);
            OUTLINED_FUNCTION_1_21();
            OUTLINED_FUNCTION_1_21();
            v157 = OUTLINED_FUNCTION_65_4();
            sub_26A0E4784(v157, v158);

            goto LABEL_58;
          }

LABEL_47:
          v159 = OUTLINED_FUNCTION_65_4();
          sub_26A0E4784(v159, v160);
          v161 = v145;
          goto LABEL_49;
        }

        v102 = v192;
        sub_26A424E64();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FB50, &qword_26A43B4F0);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_28:
          if (qword_28036C5A0 != -1)
          {
            OUTLINED_FUNCTION_0_34();
            swift_once();
          }

          v121 = sub_26A424AE4();
          __swift_project_value_buffer(v121, qword_2803A8950);
          v122 = sub_26A424AD4();
          v123 = sub_26A424E04();
          if (OUTLINED_FUNCTION_27_20(v123))
          {
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_14_23();
            _os_log_impl(v124, v125, v126, v127, v128, 2u);
LABEL_56:
            OUTLINED_FUNCTION_1_21();
          }

          v174 = OUTLINED_FUNCTION_65_4();
          sub_26A0E4784(v174, v175);

          goto LABEL_58;
        }

        v26 = v191;
        v103 = objc_allocWithZone(MEMORY[0x277D47438]);

        v105 = sub_26A20A208(v104);
        if (!v105)
        {
          __break(1u);
          goto LABEL_64;
        }

        v106 = v105;
        v107 = OUTLINED_FUNCTION_65_4();
        sub_26A0E4784(v107, v108);

        type metadata accessor for _ProtoCommand(0);
        v109 = OUTLINED_FUNCTION_18_24();
        v111 = *(v109 + v110);
        OUTLINED_FUNCTION_2_44();
        sub_26A326630(v112, v113);
        *v1 = v106;
        *(v1 + 8) = v111;
        OUTLINED_FUNCTION_22_19();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_38();
LABEL_38:
        sub_26A3210AC();
        goto LABEL_60;
      case 7:
        sub_26A3210AC();
        v63 = *v14;
        v62 = v14[1];

        sub_26A326630(v14, type metadata accessor for _ProtoCommand.ResponseGroup);
        type metadata accessor for _ProtoCommand(0);
        v64 = OUTLINED_FUNCTION_18_24();
        v66 = *(v64 + v65);
        OUTLINED_FUNCTION_2_44();
        sub_26A326630(v67, v68);
        v69 = v190;
        *v190 = v63;
        v69[1] = v62;
        *(v69 + 16) = v66;
        OUTLINED_FUNCTION_22_19();
        goto LABEL_59;
      case 8:
        v114 = sub_26A3210AC();
        *&v115 = MEMORY[0x28223BE20](v114);
        *(&v186 - 3) = v115;
        *(&v186 - 2) = v116;
        *(&v186 - 2) = v117;
        *(&v186 - 1) = v118;
        sub_26A326688(&qword_28036D350, type metadata accessor for _ProtoCommand.AppPunchout, &protocol conformance descriptor for _ProtoCommand.AppPunchout);
        sub_26A4249C4();
        OUTLINED_FUNCTION_2_44();
        OUTLINED_FUNCTION_58_15(v119, v120);
        sub_26A326630(v9, type metadata accessor for _ProtoCommand.AppPunchout);
        OUTLINED_FUNCTION_22_19();
        goto LABEL_59;
      default:
        goto LABEL_58;
    }
  }
}

uint64_t ActionElement.allTextElements.getter()
{
  v1 = type metadata accessor for TextElement(0);
  v2 = OUTLINED_FUNCTION_79_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  v3 = *v0;
  v4 = *(*v0 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    sub_26A10CD30(0, v4, 0);
    v5 = v14;
    v6 = type metadata accessor for _ProtoTextElement(0);
    OUTLINED_FUNCTION_79_0(v6);
    v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v9 + 72);
    do
    {
      sub_26A321058();
      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_26A10CD30(v11 > 1, v12 + 1, 1);
      }

      *(v14 + 16) = v12 + 1;
      OUTLINED_FUNCTION_166_0();
      OUTLINED_FUNCTION_21_24();
      sub_26A3210AC();
      v8 += v10;
      --v4;
    }

    while (v4);
  }

  return v5;
}

void *ActionElement.idioms.getter()
{
  if (*(*(v0 + 8) + 16))
  {
  }

  else
  {
    return &unk_287B01470;
  }
}

void _s10SnippetKit13ActionElementV13redactedProtoAA01_fcD0Vvg_0()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v5 = type metadata accessor for _ProtoTextElement(0);
  v6 = OUTLINED_FUNCTION_79_0(v5);
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_120();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_70_6();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v40 = v13 - v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  v42 = v38 - v16;
  v39 = type metadata accessor for _ProtoActionElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_39();
  v41 = v18;
  sub_26A321058();
  v19 = *v0;
  v20 = *(*v0 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v38[0] = v11;
    v38[1] = v4;
    v45 = MEMORY[0x277D84F90];
    sub_26A10CCD8(0, v20, 0);
    v21 = v45;
    OUTLINED_FUNCTION_166_0();
    v44 = v22;
    v23 = v19 + v22;
    v24 = *(v8 + 72);
    v43 = xmmword_26A42D990;
    do
    {
      sub_26A321058();
      sub_26A321058();
      v25 = *(v1 + 16);
      if (v25 != 255)
      {
        sub_26A0D6768(*v1, *(v1 + 8), *(v1 + 16));
        *v1 = v43;
        *(v1 + 16) = v25 & 1;
      }

      sub_26A3210AC();
      sub_26A326630(v2, type metadata accessor for _ProtoTextElement);
      v45 = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_26A10CCD8(v26 > 1, v27 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v27 + 1;
      sub_26A3210AC();
      v23 += v24;
      --v20;
    }

    while (v20);
    v11 = v38[0];
  }

  v28 = v41;

  *v28 = v21;
  v29 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  v30 = v42;
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v29);
  v30[*(v11 + 20)] = 0;
  v30[*(v11 + 24)] = 0;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  sub_26A0E48F0(v30, &qword_28036C858, &dword_26A42D080);
  *v30 = 1;
  OUTLINED_FUNCTION_48_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v29);
  sub_26A321058();
  sub_26A0E48F0(v28 + *(v39 + 28), &qword_28036C868, &qword_26A42D090);
  sub_26A3210AC();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v11);
  OUTLINED_FUNCTION_9_39();
  OUTLINED_FUNCTION_12_2();
  sub_26A321058();
  OUTLINED_FUNCTION_2_44();
  sub_26A326630(v30, v37);
  sub_26A326630(v28, type metadata accessor for _ProtoActionElement);
  OUTLINED_FUNCTION_75();
}