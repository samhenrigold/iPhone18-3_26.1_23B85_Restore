uint64_t sub_26A3AF924()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3AF978()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_4_46(uint64_t a1)
{

  return sub_26A424964();
}

uint64_t OUTLINED_FUNCTION_15_38()
{

  return sub_26A4247B4();
}

uint64_t *OUTLINED_FUNCTION_38_17@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 24) = *(v1 - 256);
  *(v2 + 32) = a1;

  return __swift_allocate_boxed_opaque_existential_1Tm();
}

uint64_t OUTLINED_FUNCTION_39_22()
{

  return sub_26A424954();
}

uint64_t OUTLINED_FUNCTION_164_4()
{

  return sub_26A3AF8D0();
}

void *OUTLINED_FUNCTION_166_4()
{

  return sub_26A3AF978();
}

void *OUTLINED_FUNCTION_181_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_26A10D50C(0, v7, 0, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_183_1()
{

  return sub_26A3AF8D0();
}

void OUTLINED_FUNCTION_184_1()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t sub_26A3B0C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v46 = MEMORY[0x277D84F90];
  sub_26A10D50C(0, v7, 0, a4, a5, a6, a7);
  v10 = 0;
  v40 = a1 + 32;
  v41 = v7;
  result = v46;
  do
  {
    v43 = result;
    v12 = *(v40 + 8 * v10);
    v13 = *(v12 + 16);
    if (v13)
    {
      v42 = v10;

      sub_26A10D50C(0, v13, 0, v14, v15, v16, v17);
      v18 = v8;
      v19 = *(type metadata accessor for TextElement(0) - 8);
      v20 = v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC98, &unk_26A4439A0) + 32);
      v21 = *(v19 + 72);
      do
      {
        v26 = TextElement.description(redacted:)(*(a2 + v45));
        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_26A10D50C(v27 > 1, v28 + 1, 1, v22, v23, v24, v25);
        }

        *(v18 + 16) = v28 + 1;
        *(v18 + 16 * v28 + 32) = v26;
        v20 += v21;
        --v13;
      }

      while (v13);
      v29 = MEMORY[0x277D84F90];
      v10 = v42;
    }

    else
    {

      v29 = v8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
    sub_26A3B4E10();
    v30 = sub_26A424B54();
    v32 = v31;

    result = v43;
    v38 = *(v43 + 16);
    v37 = *(v43 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_26A10D50C(v37 > 1, v38 + 1, 1, v33, v34, v35, v36);
      result = v43;
    }

    ++v10;
    *(result + 16) = v38 + 1;
    v39 = result + 16 * v38;
    *(v39 + 32) = v30;
    *(v39 + 40) = v32;
    v8 = v29;
  }

  while (v10 != v41);
  return result;
}

void sub_26A3B0EC8(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_76();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v12 = sub_26A3B0C20(v7, v1, v3, v8, v9, v10, v11);
    v13 = *(v12 + 16);
    if (v13)
    {
      v52 = v6;
      v53 = v4;
      v54 = v1;
      v61 = MEMORY[0x277D84F90];
      v14 = OUTLINED_FUNCTION_22_27();
      sub_26A10D50C(v14, v15, v16, v17, v18, v19, v20);
      v51[4] = v12;
      v21 = (v12 + 40);
      v22 = v61;
      do
      {
        v55 = v13;
        v23 = *(v21 - 1);
        v24 = *v21;
        v59 = 538970715;
        v60 = 0xE400000000000000;

        v25 = sub_26A424CB4();
        v27 = v26;
        v57 = 10;
        v58 = 0xE100000000000000;
        MEMORY[0x28223BE20](v25);
        v51[2] = &v57;

        v56 = sub_26A3B47FC(0x7FFFFFFFFFFFFFFFLL, 0, sub_26A31BC60, v51, v23, v24, v28);
        v57 = 10;
        v58 = 0xE100000000000000;
        MEMORY[0x26D65BA70](v25, v27);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372890, &unk_26A43D730);
        sub_26A3B4E10();
        sub_26A31BCE4();
        v29 = sub_26A424D14();
        v31 = v30;

        MEMORY[0x26D65BA70](v29, v31);

        MEMORY[0x26D65BA70](23818, 0xE200000000000000);

        v36 = v59;
        v37 = v60;
        v61 = v22;
        v39 = *(v22 + 16);
        v38 = *(v22 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_26A10D50C(v38 > 1, v39 + 1, 1, v32, v33, v34, v35);
          v22 = v61;
        }

        *(v22 + 16) = v39 + 1;
        v40 = v22 + 16 * v39;
        *(v40 + 32) = v36;
        *(v40 + 40) = v37;
        v21 += 2;
        v13 = v55 - 1;
      }

      while (v55 != 1);

      v4 = v53;
      v2 = v54;
      v6 = v52;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    v59 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
    sub_26A3B4E10();
    v41 = sub_26A424B54();
    v43 = v42;

    v59 = 538970715;
    v60 = 0xE400000000000000;
    sub_26A31B838(v41, v43);

    v44 = OUTLINED_FUNCTION_12_2();
    MEMORY[0x26D65BA70](v44);

    MEMORY[0x26D65BA70](23818, 0xE200000000000000);
    v45 = v59;
    v46 = v60;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC98, &unk_26A4439A0) + 28);

    sub_26A10C6BC();
    v48 = *(*(v2 + v47) + 16);
    sub_26A10CAF0(v48);
    v49 = *(v2 + v47);
    *(v49 + 16) = v48 + 1;
    v50 = (v49 + 32 * v48);
    v50[4] = v6;
    v50[5] = v4;
    v50[6] = v45;
    v50[7] = v46;
    *(v2 + v47) = v49;
    OUTLINED_FUNCTION_75();
  }
}

uint64_t sub_26A3B1280()
{
  sub_26A33E0A4(v0, v7);
  if (v8 && v8 != 1)
  {
    type metadata accessor for _ProtoTable.Content(0);
    OUTLINED_FUNCTION_4_47();
    sub_26A3B4E70();
    return sub_26A4249C4();
  }

  else
  {
    sub_26A0D671C(v7, v6);
    v1 = type metadata accessor for _ProtoTable.Content(0);
    MEMORY[0x28223BE20](v1);
    OUTLINED_FUNCTION_4_47();
    v2 = sub_26A3B4E70();
    OUTLINED_FUNCTION_13_33(v2, v3, v4, v2);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }
}

void sub_26A3B145C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoOptionalInt(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C898, &qword_26A425E48);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v31[-v11];
  v13 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  OUTLINED_FUNCTION_41(v15);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v18 = &v31[-v17];
  sub_26A10FD9C();
  v19 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  OUTLINED_FUNCTION_37(v18, 1, v19);
  if (v20)
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v26 = sub_26A424AE4();
    __swift_project_value_buffer(v26, qword_2803A8950);
    v27 = sub_26A424AD4();
    v28 = sub_26A424E14();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v33 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_26A0E8788(0xD00000000000001DLL, 0x800000026A44B060, &v33);
      _os_log_impl(&dword_26A0B8000, v27, v28, "%{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x26D65C950](v30, -1, -1);
      MEMORY[0x26D65C950](v29, -1, -1);
    }

    sub_26A424FC4();
    __break(1u);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A3B4F44();
        *(&v34 + 1) = type metadata accessor for MultilineTextProperty(0);
        *&v35 = &protocol witness table for MultilineTextProperty;
        __swift_allocate_boxed_opaque_existential_1(&v33);
        sub_26A3B4F98();
        type metadata accessor for _ProtoTable.Content(0);
        sub_26A10FD9C();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v3);
        v23 = EnumTagSinglePayload;
        if (EnumTagSinglePayload == 1)
        {
          sub_26A3B4FEC();
          OUTLINED_FUNCTION_0_75();
          sub_26A3B4FEC();
          sub_26A13440C();
          v24 = 0;
        }

        else
        {
          v32 = EnumTagSinglePayload;
          sub_26A13440C();
          sub_26A10FD9C();
          OUTLINED_FUNCTION_37(v0, 1, v3);
          if (v20)
          {
            *v7 = 0;
            _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
            OUTLINED_FUNCTION_5_50();
            sub_26A3B4FEC();
            OUTLINED_FUNCTION_0_75();
            sub_26A3B4FEC();
            OUTLINED_FUNCTION_37(v0, 1, v3);
            if (!v20)
            {
              sub_26A13440C();
            }
          }

          else
          {
            sub_26A3B4FEC();
            OUTLINED_FUNCTION_0_75();
            sub_26A3B4FEC();
            sub_26A3B4F44();
          }

          v24 = *v7;
          sub_26A3B4FEC();
          v23 = v32;
        }

        *(&v35 + 1) = v24;
        v36 = v23 == 1;
        v25 = v34;
        *v2 = v33;
        *(v2 + 16) = v25;
        *(v2 + 32) = v35;
        *(v2 + 48) = v36;
      }

      else
      {
        sub_26A3B4FEC();
        *(v2 + 24) = type metadata accessor for VisualProperty(0);
        *(v2 + 32) = &protocol witness table for VisualProperty;
        __swift_allocate_boxed_opaque_existential_1(v2);
        sub_26A3B4F44();
        *(v2 + 49) = 1;
      }
    }

    else
    {
      sub_26A3B4FEC();
      *v2 = 0u;
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0u;
      *(v2 + 48) = 512;
      sub_26A3B4FEC();
    }

    OUTLINED_FUNCTION_75();
  }
}

void _ProtoTable.Content.redactedProto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = type metadata accessor for _ProtoVisualProperty(0);
  v25 = OUTLINED_FUNCTION_41(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v26);
  v27 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v28 = OUTLINED_FUNCTION_41(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  OUTLINED_FUNCTION_41(v30);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  sub_26A3B4F98();
  sub_26A10FD9C();
  v34 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  OUTLINED_FUNCTION_37(v33, 1, v34);
  if (!v35)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A3B4F44();
        _ProtoMultilineTextProperty.redactedProto.getter();
        OUTLINED_FUNCTION_0_75();
        sub_26A3B4FEC();
      }

      else
      {
        sub_26A3B4F44();
        _ProtoVisualProperty.redactedProto.getter();
        OUTLINED_FUNCTION_8_38();
      }

      sub_26A13440C();
      sub_26A3B4F44();
      OUTLINED_FUNCTION_97();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v34);
    }

    else
    {
      sub_26A3B4FEC();
    }
  }

  OUTLINED_FUNCTION_75();
}

uint64_t TableRow.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TableRow(0) + 20);
  sub_26A424734();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TableRow(uint64_t a1)
{
  result = qword_280373738;
  if (!qword_280373738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void TableRow.cells.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for _ProtoTable.Content(0);
  v2 = OUTLINED_FUNCTION_79_0(v1);
  v4 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  v6 = *v0;
  v7 = *(*v0 + 16);
  if (v7)
  {
    v20 = MEMORY[0x277D84F90];
    v8 = OUTLINED_FUNCTION_22_27();
    sub_26A10DABC(v8, v9, v10);
    v11 = v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_26A3B4F98();
      sub_26A3B4F98();
      sub_26A3B145C();
      OUTLINED_FUNCTION_5_50();
      sub_26A3B4FEC();
      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26A10DABC((v13 > 1), v14 + 1, 1);
      }

      *(v20 + 16) = v14 + 1;
      v15 = v20 + 56 * v14;
      *(v15 + 80) = v19;
      *(v15 + 48) = v17;
      *(v15 + 64) = v18;
      *(v15 + 32) = v16;
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_75();
}

void TableRow.action.getter()
{
  OUTLINED_FUNCTION_76();
  v20 = v0;
  v1 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  type metadata accessor for _ProtoTable.Row(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v20;
  sub_26A13440C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v10, 1, v1);
    if (v17)
    {
      *v5 = MEMORY[0x277D84F90];
      v5[1] = 0;
      v5[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v10, 1, v1);
      if (!v17)
      {
        sub_26A13440C();
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_2();
      sub_26A3B4F44();
    }

    sub_26A3B4F44();
    v14 = 0;
  }

  v18 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v16, v14, 1, v18);
  OUTLINED_FUNCTION_75();
}

uint64_t TableRow.backgrounds.getter()
{
  v1 = type metadata accessor for BackgroundElement(0);
  v2 = OUTLINED_FUNCTION_79_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v3 = *(v0 + 8);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    v6 = OUTLINED_FUNCTION_22_27();
    sub_26A10DADC(v6, v7, v8);
    v5 = v17;
    v9 = type metadata accessor for _ProtoBackgroundElement(0);
    OUTLINED_FUNCTION_79_0(v9);
    v11 = v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    do
    {
      sub_26A3B4F98();
      v15 = *(v17 + 16);
      v14 = *(v17 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26A10DADC(v14 > 1, v15 + 1, 1);
      }

      *(v17 + 16) = v15 + 1;
      sub_26A3B4F44();
      v11 += v13;
      --v4;
    }

    while (v4);
  }

  return v5;
}

void _ProtoTable.Row.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v63 = (v5 - v6);
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_48();
  v62 = v8;
  v9 = type metadata accessor for _ProtoVisualProperty(0);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v68 = v11 - v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_48();
  v67 = v14;
  v15 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  v66 = v17 - v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48();
  v65 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  OUTLINED_FUNCTION_41(v21);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v22);
  v24 = v58 - v23;
  v25 = type metadata accessor for _ProtoTable.Content(0);
  v26 = OUTLINED_FUNCTION_79_0(v25);
  v28 = v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = v58 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v34 = OUTLINED_FUNCTION_41(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17();
  v61 = v35 - v36;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_48();
  v64 = v38;
  OUTLINED_FUNCTION_7_31();
  sub_26A3B4F98();
  v39 = *v2;
  v40 = *(*v2 + 16);
  if (v40)
  {
    v59 = v3;
    v60 = v2;
    v72 = MEMORY[0x277D84F90];
    v41 = v39;
    sub_26A10D4B4(0, v40, 0);
    v42 = v72;
    v43 = *(v28 + 80);
    v58[1] = v41;
    v71 = (v43 + 32) & ~v43;
    v44 = v41 + v71;
    v45 = *(v28 + 72);
    v69 = v32;
    v70 = v45;
    do
    {
      sub_26A3B4F98();
      sub_26A3B4F98();
      sub_26A10FD9C();
      v46 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
      OUTLINED_FUNCTION_37(v24, 1, v46);
      if (!v47)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_26A3B4F44();
            _ProtoMultilineTextProperty.redactedProto.getter();
            OUTLINED_FUNCTION_0_75();
            sub_26A3B4FEC();
          }

          else
          {
            sub_26A3B4F44();
            _ProtoVisualProperty.redactedProto.getter();
            OUTLINED_FUNCTION_8_38();
          }

          sub_26A13440C();
          OUTLINED_FUNCTION_132();
          sub_26A3B4F44();
          swift_storeEnumTagMultiPayload();
          __swift_storeEnumTagSinglePayload(v0, 0, 1, v46);
        }

        else
        {
          sub_26A3B4FEC();
        }
      }

      sub_26A3B4F44();
      OUTLINED_FUNCTION_5_50();
      sub_26A3B4FEC();
      v72 = v42;
      v50 = *(v42 + 16);
      v49 = *(v42 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_26A10D4B4(v49 > 1, v50 + 1, 1);
        v42 = v72;
      }

      *(v42 + 16) = v50 + 1;
      v51 = v70;
      sub_26A3B4F44();
      v44 += v51;
      --v40;
    }

    while (v40);

    v3 = v59;
    v2 = v60;
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  *v2 = v42;
  v52 = *(type metadata accessor for _ProtoTable.Row(0) + 32);
  v53 = v64;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v3);
  sub_26A13440C();
  if (EnumTagSinglePayload != 1)
  {
    v55 = v61;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v55, 1, v3);
    if (v47)
    {
      v56 = v62;
      *v62 = MEMORY[0x277D84F90];
      v56[1] = 0;
      v56[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v55, 1, v3);
      v57 = v63;
      if (!v47)
      {
        sub_26A13440C();
      }
    }

    else
    {
      sub_26A3B4F44();
      v57 = v63;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v57);
    sub_26A3B4FEC();
    sub_26A13440C();
    sub_26A3B4F44();
    __swift_storeEnumTagSinglePayload(v2 + v52, 0, 1, v3);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t TableRow.init(proto:)()
{
  type metadata accessor for TableRow(0);
  sub_26A424724();
  OUTLINED_FUNCTION_175();
  return sub_26A3B4F44();
}

uint64_t TableRow.init(cells:backgrounds:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ProtoTable.Row(0);
  v13[2] = a1;
  v13[3] = a3;
  v13[4] = a2;
  v13[5] = a4;
  v13[6] = a5;
  OUTLINED_FUNCTION_3_57();
  v10 = sub_26A3B4E70();
  OUTLINED_FUNCTION_59_9(sub_26A3B4B58, v13, v11, v10);

  type metadata accessor for TableRow(0);
  sub_26A424724();
  return sub_26A13440C();
}

uint64_t sub_26A3B2B64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v53 = a5;
  v50 = a4;
  v55 = a1;
  v8 = type metadata accessor for BackgroundElement(0);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ProtoBackgroundElement(0);
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v47[5] = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v12 - 8);
  v47[4] = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _ProtoTable.Content(0);
  v56 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v15 - 8);
  v48 = v47 - v16;
  v49 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v49);
  v47[3] = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v47[2] = v47 - v19;
  v20 = *(a2 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v47[1] = a3;
    v66 = MEMORY[0x277D84F90];
    sub_26A10D4B4(0, v20, 0);
    v21 = v66;
    v22 = a2 + 32;
    do
    {
      sub_26A33E0A4(v22, v63);
      sub_26A33E0A4(v63, v59);
      if (v62)
      {
        if (v62 != 1)
        {
          sub_26A3B4E70();
          v28 = v57;
          sub_26A4249C4();
          v57 = v28;
          goto LABEL_9;
        }

        v23 = sub_26A0D671C(v59, v58);
        MEMORY[0x28223BE20](v23);
        v47[-2] = v58;
        sub_26A3B4E70();
      }

      else
      {
        v24 = v60;
        v25 = v61;
        v26 = sub_26A0D671C(v59, v58);
        MEMORY[0x28223BE20](v26);
        v47[-4] = v58;
        v47[-3] = v24;
        LOBYTE(v47[-2]) = v25;
        sub_26A3B4E70();
      }

      v27 = v57;
      sub_26A4249C4();
      v57 = v27;
      __swift_destroy_boxed_opaque_existential_1(v58);
LABEL_9:
      sub_26A3B4B94(v63);
      v66 = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_26A10D4B4(v29 > 1, v30 + 1, 1);
        v21 = v66;
      }

      *(v21 + 16) = v30 + 1;
      sub_26A3B4F44();
      v22 += 56;
      --v20;
    }

    while (v20);
  }

  v31 = v55;

  *v31 = v21;
  sub_26A10FD9C();
  v32 = v64;
  v33 = v50;
  v34 = v49;
  if (v64)
  {
    v35 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v35 + 8))(v32, v35);
    v36 = v48;
    sub_26A3B4F44();
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v34);
    __swift_destroy_boxed_opaque_existential_1(v63);
    if (__swift_getEnumTagSinglePayload(v36, 1, v34) != 1)
    {
      sub_26A3B4F44();
      sub_26A3B4F44();
      v37 = *(type metadata accessor for _ProtoTable.Row(0) + 32);
      sub_26A13440C();
      sub_26A3B4F44();
      __swift_storeEnumTagSinglePayload(v31 + v37, 0, 1, v34);
      goto LABEL_17;
    }
  }

  else
  {
    sub_26A13440C();
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v34);
  }

  sub_26A13440C();
LABEL_17:
  v38 = *(v33 + 16);
  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    *&v59[0] = MEMORY[0x277D84F90];
    sub_26A10D404(0, v38, 0);
    v39 = *&v59[0];
    v40 = v33 + 32;
    do
    {
      sub_26A0E5D68(v40, v63);
      v41 = v64;
      v42 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      (*(v42 + 8))(v41, v42);
      sub_26A3B4F44();
      __swift_destroy_boxed_opaque_existential_1(v63);
      *&v59[0] = v39;
      v44 = *(v39 + 16);
      v43 = *(v39 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_26A10D404(v43 > 1, v44 + 1, 1);
        v39 = *&v59[0];
      }

      *(v39 + 16) = v44 + 1;
      sub_26A3B4F44();
      v40 += 40;
      --v38;
    }

    while (v38);
    v31 = v55;
  }

  v31[1] = v39;
  v45 = v54;

  v31[2] = v53;
  v31[3] = v45;
  return result;
}

uint64_t TableRow.init(_:backgrounds:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_34_14();
  type metadata accessor for _ProtoTable.Row(0);
  v12[2] = a1;
  v12[3] = &v13;
  v12[4] = a2;
  v12[5] = a4;
  v12[6] = a5;
  OUTLINED_FUNCTION_3_57();
  v9 = sub_26A3B4E70();
  OUTLINED_FUNCTION_59_9(sub_26A3B5070, v12, v10, v9);

  type metadata accessor for TableRow(0);
  sub_26A424724();
  OUTLINED_FUNCTION_97();
  sub_26A13440C();
  return sub_26A13440C();
}

uint64_t sub_26A3B3548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_34_14();
  type metadata accessor for _ProtoTable.Row(0);
  v10[2] = a1;
  v10[3] = &v11;
  v10[4] = a2;
  v10[5] = 0;
  v10[6] = 0xE000000000000000;
  OUTLINED_FUNCTION_3_57();
  v7 = sub_26A3B4E70();
  OUTLINED_FUNCTION_59_9(a4, v10, v8, v7);

  type metadata accessor for TableRow(0);
  sub_26A424724();
  OUTLINED_FUNCTION_97();
  sub_26A13440C();
  return sub_26A13440C();
}

uint64_t sub_26A3B39D4()
{
  OUTLINED_FUNCTION_34_12();
  result = TableRow.backgrounds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A3B39FC()
{
  OUTLINED_FUNCTION_34_12();
  result = TableRow.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

BOOL TableRow.Content.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_26(a1, a2);
  v3 = 0;
  if (v9 == 2 && !v8)
  {
    v2 = vorrq_s8(v6, v7);
    if (!(*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v5[1] | v5[0]))
    {
      v3 = 1;
    }
  }

  sub_26A3B4B94(v5);
  return v3;
}

BOOL TableRow.Content.isText.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_26(a1, a2);
  v2 = v5;
  if (v5)
  {
    sub_26A3B4B94(v4);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v2 == 0;
}

BOOL TableRow.Content.isVisual.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_26(a1, a2);
  v2 = v4[49] == 1;
  sub_26A3B4B94(v4);
  return v2;
}

uint64_t TableRow.Content.lineLimit.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_26(a1, a2);
  if (v5)
  {
    sub_26A3B4B94(v4);
    return 0;
  }

  else
  {
    v2 = v4[5];
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v2;
}

uint64_t sub_26A3B3B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v5 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  return sub_26A3B4ED4(v4, a1);
}

uint64_t sub_26A3B3C50(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v24 = a4;
  v23 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C898, &qword_26A425E48);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v22 = type metadata accessor for _ProtoOptionalInt(0);
  MEMORY[0x28223BE20](v22);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  (*(v16 + 8))(v15, v16);
  sub_26A3B4F44();
  v17 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v17);
  result = sub_26A3B4ED4(v14, a1);
  if (v24)
  {
    return result;
  }

  v19 = v23;
  if (v23 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v23 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v20 = *(type metadata accessor for _ProtoTable.Content(0) + 24);
  sub_26A10FD9C();
  v21 = v22;
  if (__swift_getEnumTagSinglePayload(v8, 1, v22) == 1)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (__swift_getEnumTagSinglePayload(v8, 1, v21) != 1)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A3B4F44();
  }

  *v10 = v19;
  sub_26A13440C();
  sub_26A3B4F44();
  return __swift_storeEnumTagSinglePayload(a1 + v20, 0, 1, v21);
}

uint64_t sub_26A3B3F84(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(v9 + 8))(v8, v9);
  sub_26A3B4F44();
  v10 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
  return sub_26A3B4ED4(v7, a1);
}

Swift::String __swiftcall TableRow.Content.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA0, &unk_26A426730);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v75 - v3;
  v5 = type metadata accessor for VisualProperty(0);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  v77 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC98, &unk_26A4439A0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v15 = &v75 - v14;
  v16 = type metadata accessor for MultilineTextProperty(0);
  v17 = OUTLINED_FUNCTION_41(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  sub_26A33E0A4(v1, v84);
  if (v87)
  {
    if (v87 != 1)
    {
      goto LABEL_15;
    }

    sub_26A0D671C(v84, v81);
    v79 = 0xA286C6175736976;
    v80 = 0xEA00000000002020;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v22 = v77;
    v23 = OUTLINED_FUNCTION_12_2();
    v24(v23);
    sub_26A3B4F98();
    v25 = *(v22 + 9) ^ 1;
    if (*(v22 + 9))
    {
      sub_26A3B4F98();
    }

    else
    {
      _ProtoVisualProperty.redactedProto.getter();
    }

    v30 = v76;
    sub_26A3B4F44();
    v4[*(v30 + 32)] = v25;
    sub_26A3B4FEC();
    *&v4[*(v30 + 28)] = MEMORY[0x277D84F90];
    KeyPath = swift_getKeyPath();
    sub_26A0F739C(KeyPath, 0, 0, v32, v33, v34, v35, v36, v75, v76, v77, v78, v79, v80);

    OUTLINED_FUNCTION_12_31();
    sub_26A1467C0(v37, v38, v39, v40);
    VisualProperty.focusAction.getter();
    OUTLINED_FUNCTION_14_31();
    sub_26A109770();
    OUTLINED_FUNCTION_132();
    sub_26A13440C();
    VisualProperty.selectedAction.getter();
    OUTLINED_FUNCTION_11_36();
    sub_26A109770();
    OUTLINED_FUNCTION_132();
    v41 = sub_26A13440C();
    sub_26A100DE8(v41, v42, v43, v44, v45, v46, v47);
    sub_26A13440C();
    sub_26A3B4FEC();
    v48 = OUTLINED_FUNCTION_175();
    v50 = sub_26A31B838(v48, v49);
    v52 = v51;

    MEMORY[0x26D65BA70](v50, v52);
  }

  else
  {
    v77 = v85;
    v26 = v86;
    sub_26A0D671C(v84, v81);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_26A424EF4();

    v79 = 0x20200A2874786574;
    v80 = 0xE800000000000000;
    v27 = v82;
    v28 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    (*(v28 + 8))(v27, v28);
    sub_26A3B4F98();
    v29 = v21[9] ^ 1;
    if (v21[9])
    {
      sub_26A3B4F98();
    }

    else
    {
      _ProtoMultilineTextProperty.redactedProto.getter();
    }

    OUTLINED_FUNCTION_12_2();
    sub_26A3B4F44();
    v15[*(v12 + 32)] = v29;
    sub_26A3B4FEC();
    *&v15[*(v12 + 28)] = MEMORY[0x277D84F90];
    MultilineTextProperty.allTextElements.getter();
    sub_26A3B0EC8(v53);

    OUTLINED_FUNCTION_12_31();
    sub_26A14685C(v54, v55, v56, v57);
    MultilineTextProperty.focusAction.getter();
    OUTLINED_FUNCTION_14_31();
    sub_26A109874();
    OUTLINED_FUNCTION_97();
    sub_26A13440C();
    MultilineTextProperty.selectedAction.getter();
    OUTLINED_FUNCTION_11_36();
    sub_26A109874();
    OUTLINED_FUNCTION_97();
    v58 = sub_26A13440C();
    sub_26A100FB8(v58, v59, v60, v61, v62, v63, v64);
    sub_26A13440C();
    sub_26A3B4FEC();
    v65 = OUTLINED_FUNCTION_175();
    v67 = sub_26A31B838(v65, v66);
    v69 = v68;

    MEMORY[0x26D65BA70](v67, v69);

    MEMORY[0x26D65BA70](0x656E696C20200A2CLL, 0xEF203A74696D694CLL);
    v70 = v77;
    if (v26)
    {
      v70 = -1;
    }

    v78 = v70;
    v71 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v71);

    MEMORY[0x26D65BA70](10506, 0xE200000000000000);
  }

  __swift_destroy_boxed_opaque_existential_1(v81);
LABEL_15:
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v73;
  result._countAndFlagsBits = v72;
  return result;
}

void sub_26A3B4790()
{
  OUTLINED_FUNCTION_34_12();
  VisualProperty.allVisualElements.getter();
  *v0 = v1;
}

uint64_t sub_26A3B47B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26A425354() & 1;
  }
}

uint64_t sub_26A3B47FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v44 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_26A424CD4();
    OUTLINED_FUNCTION_27_25();
    sub_26A166AA8(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = v31;
    v9 = *(v31 + 16);
    a7 = *(v31 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 16) = v10;
      v32 = (v14 + 32 * v9);
      v32[4] = v7;
      v32[5] = v11;
      v32[6] = v12;
      v32[7] = v13;
      return v14;
    }

LABEL_41:
    sub_26A166AA8(a7 > 1, v10, 1, v14);
    v14 = v33;
    goto LABEL_38;
  }

  v7 = a4;
  v14 = 4 * v16;
  v42 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v40 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v14)
      {
        v17 = v40;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_23_36();
      v18 = sub_26A424CC4();
      v12 = v19;
      v43[0] = v18;
      v43[1] = v19;
      v20 = v44(v43);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      OUTLINED_FUNCTION_23_36();
      v17 = sub_26A424C24();
    }

    v23 = (v40 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v40 >> 14)
    {
      break;
    }

    v41 = sub_26A424CD4();
    v36 = v25;
    v37 = v24;
    v35 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A166AA8(0, *(v42 + 16) + 1, 1, v42);
      v42 = v29;
    }

    v13 = *(v42 + 16);
    v27 = *(v42 + 24);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      sub_26A166AA8(v27 > 1, v13 + 1, 1, v42);
      v42 = v30;
    }

    *(v42 + 16) = v12;
    v28 = (v42 + 32 * v13);
    v28[4] = v41;
    v28[5] = v37;
    v28[6] = v36;
    v28[7] = v35;
LABEL_20:
    OUTLINED_FUNCTION_23_36();
    v17 = sub_26A424C24();
    if ((v23 & 1) == 0 && *(v42 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v14 && (a2 & 1) != 0)
      {

        return v42;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_26A424CD4();
        OUTLINED_FUNCTION_27_25();
        v14 = v42;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 16);
          a7 = *(v14 + 24);
          goto LABEL_37;
        }
      }

      sub_26A166AA8(0, *(v14 + 16) + 1, 1, v14);
      v14 = v34;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3B4C7C(uint64_t a1)
{
  result = type metadata accessor for _ProtoTable.Row(319);
  if (v2 <= 0x3F)
  {
    result = sub_26A424734();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26A3B4D1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 50))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 49);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A3B4D58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A3B4DA8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 49) = a2;
  return result;
}

unint64_t sub_26A3B4E10()
{
  OUTLINED_FUNCTION_14_4();
  result = *v3;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A3B4E70()
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

uint64_t sub_26A3B4ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A3B4F44()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3B4F98()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3B4FEC()
{
  OUTLINED_FUNCTION_14_4();
  v1(0);
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_8_38()
{

  return sub_26A3B4FEC();
}

uint64_t OUTLINED_FUNCTION_19_26(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_26A33E0A4(v2, va);
}

uint64_t OUTLINED_FUNCTION_27_25()
{
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return sub_26A10FD9C();
}

uint64_t static _ProtoButton_Container.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_26A0DCCA8(*a1, *a2, a3, a4, a5, a6, a7, a8, v10, v11, v12, v13, vars0, vars8);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _ProtoButton_Container(0);
  sub_26A424794();
  OUTLINED_FUNCTION_2_53();
  sub_26A3B6B14();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t sub_26A3B531C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3B538C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A13440C();
  OUTLINED_FUNCTION_157();
  sub_26A3B531C();
  v4 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  OUTLINED_FUNCTION_21_3();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

uint64_t _ProtoButton_Container.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for _ProtoButton_Container(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoButton_Container.buttonItems.setter()
{
  OUTLINED_FUNCTION_14_4();

  *v1 = v0;
  return result;
}

void (*_ProtoButton_Container.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  type metadata accessor for _ProtoButton_Container(0);
  return nullsub_1;
}

uint64_t sub_26A3B5554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoButton_Container.ButtonItem.button.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_12_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_39();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_246();
      return sub_26A3B531C();
    }

    sub_26A3B58B0();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoButton(0) + 20);
  if (qword_28036C428 != -1)
  {
    OUTLINED_FUNCTION_60_4(&qword_28036C428);
  }

  *(a1 + v8) = qword_280371710;
}

void (*_ProtoButton_Container.ButtonItem.button.modify())(void **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  v9 = type metadata accessor for _ProtoButton(v8);
  OUTLINED_FUNCTION_12();
  v11 = *(v10 + 64);
  *(v0 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_4_48();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_157();
      sub_26A3B531C();
      return sub_26A3B5880;
    }

    sub_26A3B58B0();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v9 + 20);
  if (qword_28036C428 != -1)
  {
    OUTLINED_FUNCTION_60_4(&qword_28036C428);
  }

  *(v11 + v15) = qword_280371710;

  return sub_26A3B5880;
}

uint64_t sub_26A3B58B0()
{
  OUTLINED_FUNCTION_14_4();
  v1(0);
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t _ProtoButton_Container.ButtonItem.playerButton.getter()
{
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_39();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A3B531C();
    }

    sub_26A3B58B0();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoPlayerButton(0);
  v7 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  OUTLINED_FUNCTION_92();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
}

uint64_t sub_26A3B5A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  OUTLINED_FUNCTION_12_2();
  sub_26A3B5C74();
  return a7(v11);
}

void (*_ProtoButton_Container.ButtonItem.playerButton.modify())(void **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  type metadata accessor for _ProtoPlayerButton(v8);
  OUTLINED_FUNCTION_12();
  v10 = *(v9 + 64);
  *(v0 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_4_48();
  if (v12)
  {
    sub_26A13440C();
LABEL_7:
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoButton(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    return sub_26A3B5C44;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A3B58B0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A3B531C();
  return sub_26A3B5C44;
}

uint64_t sub_26A3B5C74()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t _ProtoButton_Container.ButtonItem.customCanvas.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_12_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_39();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A3B531C();
    }

    sub_26A3B58B0();
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_26A426400;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 66) = 0;
  type metadata accessor for _ProtoCustomCanvas(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void (*_ProtoButton_Container.ButtonItem.customCanvas.modify())(void **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  type metadata accessor for _ProtoCustomCanvas(v8);
  OUTLINED_FUNCTION_12();
  v10 = *(v9 + 64);
  *(v0 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_4_48();
  if (v12)
  {
    sub_26A13440C();
LABEL_7:
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0xE000000000000000;
    *(v10 + 32) = xmmword_26A426400;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0xE000000000000000;
    *(v10 + 64) = 0;
    *(v10 + 66) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    return sub_26A3B5F54;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_26A3B58B0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A3B531C();
  return sub_26A3B5F54;
}

void sub_26A3B5F84(void **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*a1 + 3);
  v6 = *(*a1 + 1);
  v7 = *(*a1 + 2);
  if (a2)
  {
    sub_26A3B5C74();
    sub_26A13440C();
    sub_26A3B531C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_4();
    sub_26A3B58B0();
  }

  else
  {
    sub_26A13440C();
    sub_26A3B531C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_4();
  }

  free(v5);
  free(v7);
  free(v6);

  free(v4);
}

uint64_t sub_26A3B60BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_26A3B6170(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

void (*_ProtoButton_Container.ButtonItem.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  return nullsub_1;
}

uint64_t static _ProtoButton_Container.ButtonItem.OneOf_Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v2 = type metadata accessor for _ProtoCustomCanvas(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v30 = v5 - v4;
  v6 = type metadata accessor for _ProtoPlayerButton(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v8 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v12 = v11 - v10;
  type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373788, &unk_26A442458);
  OUTLINED_FUNCTION_41(v20);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v21);
  sub_26A3B5C74();
  sub_26A3B5C74();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_26A3B5C74();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A3B531C();
      if (*&v19[*(v8 + 20)] == *(v12 + *(v8 + 20)) || (, , OUTLINED_FUNCTION_21_3(), sub_26A2A2580(), v28 = v27, , , (v28 & 1) != 0))
      {
        sub_26A424794();
        OUTLINED_FUNCTION_2_53();
        sub_26A3B6B14();
        if (sub_26A424B64())
        {
          sub_26A3B58B0();
          OUTLINED_FUNCTION_157();
          sub_26A3B58B0();
          OUTLINED_FUNCTION_0_76();
          sub_26A3B58B0();
          v24 = 1;
          return v24 & 1;
        }
      }

      sub_26A3B58B0();
      OUTLINED_FUNCTION_157();
      sub_26A3B58B0();
      OUTLINED_FUNCTION_0_76();
      sub_26A3B58B0();
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_26A3B5C74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v25 = v30;
      sub_26A3B531C();
      v24 = static _ProtoCustomCanvas.== infix(_:_:)(v15, v25);
      sub_26A3B58B0();
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  sub_26A3B5C74();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:
    sub_26A3B58B0();
    sub_26A13440C();
LABEL_11:
    v24 = 0;
    return v24 & 1;
  }

  sub_26A3B531C();
  static _ProtoPlayerButton.== infix(_:_:)();
  v24 = v23;
  sub_26A3B58B0();
LABEL_9:
  sub_26A3B58B0();
  OUTLINED_FUNCTION_0_76();
  sub_26A3B58B0();
  return v24 & 1;
}

uint64_t _ProtoButton_Container.ButtonItem.init()()
{
  type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A3B679C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373748);
  __swift_project_value_buffer(v0, qword_280373748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26A426410;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "button_items";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_26A424AA4();
}

uint64_t _ProtoButton_Container.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_246();
      sub_26A3B698C(v5, v6, v2, v1);
    }
  }

  return result;
}

uint64_t sub_26A3B698C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  sub_26A3B6B14();
  return sub_26A424934();
}

uint64_t _ProtoButton_Container.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_10();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoButton_Container.ButtonItem(0), sub_26A3B6B14(), result = sub_26A424A74(), !v1))
  {
    type metadata accessor for _ProtoButton_Container(0);
    return sub_26A424774();
  }

  return result;
}

unint64_t sub_26A3B6B14()
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

uint64_t sub_26A3B6BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A3B6B14();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A3B6C7C(uint64_t a1)
{
  v2 = sub_26A3B6B14();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3B6CEC(uint64_t a1, uint64_t a2)
{
  sub_26A3B6B14();

  return sub_26A4249B4();
}

uint64_t sub_26A3B6D6C()
{
  result = MEMORY[0x26D65BA70](0x496E6F747475422ELL, 0xEB000000006D6574);
  qword_280373760 = 0xD00000000000001ALL;
  *algn_280373768 = 0x800000026A44B080;
  return result;
}

uint64_t static _ProtoButton_Container.ButtonItem.protoMessageName.getter()
{
  if (qword_28036C730 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A3B6E44()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373770);
  __swift_project_value_buffer(v0, qword_280373770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "button";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "player_button";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "custom_canvas";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoButton_Container.ButtonItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v11 = OUTLINED_FUNCTION_10_3();
        sub_26A3B7AF0(v11, v12, v13, v14);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_10_3();
        sub_26A3B75F8(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_10_3();
        sub_26A3B7100(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_26A3B7100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A3B531C();
    sub_26A3B531C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26A3B58B0();
    }

    else
    {
      sub_26A13440C();
      sub_26A3B531C();
      sub_26A3B531C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_26A3B6B14();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A3B531C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A3B531C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A3B75F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoPlayerButton(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D248, &qword_26A4273C8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A3B531C();
    sub_26A3B531C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A3B531C();
      sub_26A3B531C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3B58B0();
    }
  }

  sub_26A3B6B14();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A3B531C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A3B531C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A3B7AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCC0, &qword_26A426750);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A3B531C();
    sub_26A3B531C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A13440C();
      sub_26A3B531C();
      sub_26A3B531C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3B58B0();
    }
  }

  sub_26A3B6B14();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A3B531C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A3B531C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t _ProtoButton_Container.ButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_10();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - v3;
  sub_26A10FD9C();
  v5 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = OUTLINED_FUNCTION_13_10();
      sub_26A3B8334(v7, v8, v9, v10);
    }

    else
    {
      v15 = OUTLINED_FUNCTION_13_10();
      sub_26A3B8548(v15, v16, v17, v18);
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_10();
    sub_26A3B8124(v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_0_76();
  result = sub_26A3B58B0();
  if (!v0)
  {
LABEL_8:
    type metadata accessor for _ProtoButton_Container.ButtonItem(0);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A3B8124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A3B531C();
      sub_26A3B6B14();
      sub_26A424A84();
      return sub_26A3B58B0();
    }

    result = sub_26A3B58B0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3B8334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoPlayerButton(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A3B531C();
      sub_26A3B6B14();
      sub_26A424A84();
      return sub_26A3B58B0();
    }

    result = sub_26A3B58B0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3B8548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A3B531C();
      sub_26A3B6B14();
      sub_26A424A84();
      return sub_26A3B58B0();
    }

    result = sub_26A3B58B0();
  }

  __break(1u);
  return result;
}

uint64_t static _ProtoButton_Container.ButtonItem.== infix(_:_:)()
{
  type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_18();
  v3 = v2 - v1;
  v4 = OUTLINED_FUNCTION_22_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F0, &unk_26A425EA0);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_28(v13);
  if (v16)
  {
    OUTLINED_FUNCTION_28(&v13[v15]);
    if (v16)
    {
      sub_26A13440C();
LABEL_12:
      type metadata accessor for _ProtoButton_Container.ButtonItem(0);
      sub_26A424794();
      OUTLINED_FUNCTION_2_53();
      sub_26A3B6B14();
      v17 = OUTLINED_FUNCTION_14_7();
      return v17 & 1;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_12_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_28(&v13[v15]);
  if (v16)
  {
    sub_26A3B58B0();
LABEL_9:
    sub_26A13440C();
    goto LABEL_10;
  }

  sub_26A3B531C();
  v18 = static _ProtoButton_Container.ButtonItem.OneOf_Value.== infix(_:_:)(v9, v3);
  sub_26A3B58B0();
  sub_26A3B58B0();
  sub_26A13440C();
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_26A3B8A30(uint64_t (*a1)(void))
{
  sub_26A425504();
  a1(0);
  sub_26A3B6B14();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3B8C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A3B6B14();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A3B8D70(uint64_t a1)
{
  v2 = sub_26A3B6B14();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3B8E28(uint64_t a1, uint64_t a2)
{
  sub_26A3B6B14();

  return sub_26A4249B4();
}

void sub_26A3B8F60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_26A3B8FF0(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_26A424794();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A3B8FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26A3B9054(uint64_t a1)
{
  result = type metadata accessor for _ProtoButton(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoPlayerButton(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for _ProtoCustomCanvas(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_48()
{
  v2 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

Swift::String __swiftcall BackgroundElement.description(redacted:)(Swift::Bool redacted)
{
  v4 = type metadata accessor for _ProtoVisualElement(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_14();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC28, &qword_26A43A760);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for BackgroundElement(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC38, &qword_26A4266C8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  OUTLINED_FUNCTION_1_62();
  sub_26A3BA4BC(v1, v17);
  if (redacted)
  {
    sub_26A2DD288();
  }

  else
  {
    sub_26A3BA4BC(v17, v14);
  }

  sub_26A3B9694(v14, v21);
  v21[*(v18 + 32)] = redacted;
  OUTLINED_FUNCTION_4_49();
  sub_26A3B9F64(v17, v22);
  *&v21[*(v18 + 28)] = MEMORY[0x277D84F90];
  _ProtoBackgroundElement.visual.getter(v2);
  VisualElement.init(proto:)();
  v23 = type metadata accessor for VisualElement(0);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v23);
  sub_26A10458C();
  sub_26A0E48F0(v9, &qword_28036CC28, &qword_26A43A760);
  v24 = v21[8];

  sub_26A145D18(v25, (v24 & 1) == 0, 0x696C696269736976, 0xEA00000000007974, 0, v26, v27, v28, v43);

  sub_26A0FA2C4(v29, v30, v31, v32, v33, v34, v35);
  v37 = v36;
  v39 = v38;
  sub_26A0E48F0(v21, &qword_28036CC38, &qword_26A4266C8);
  v40 = v37;
  v41 = v39;
  result._object = v41;
  result._countAndFlagsBits = v40;
  return result;
}

uint64_t type metadata accessor for BackgroundElement(uint64_t a1)
{
  result = qword_28157AA98;
  if (!qword_28157AA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BackgroundElement.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _ProtoVisualElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  OUTLINED_FUNCTION_5_51();
  sub_26A3BA4BC(v1, a1);
  v15 = *(type metadata accessor for _ProtoBackgroundElement(0) + 28);
  sub_26A1FCB98(a1 + v15, v14);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v3);
  result = sub_26A0E48F0(v14, &qword_28036C848, &qword_26A426690);
  if (EnumTagSinglePayload != 1)
  {
    _ProtoBackgroundElement.visual.getter(v10);
    _ProtoVisualElement.redacted.getter();
    sub_26A3B9F64(v10, type metadata accessor for _ProtoVisualElement);
    sub_26A0E48F0(a1 + v15, &qword_28036C848, &qword_26A426690);
    sub_26A3B9694(v7, a1 + v15);
    return __swift_storeEnumTagSinglePayload(a1 + v15, 0, 1, v3);
  }

  return result;
}

uint64_t sub_26A3B9694(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(a2, v2);
  return a2;
}

void BackgroundElement.visual.getter()
{
  v1 = type metadata accessor for _ProtoVisualElement(0);
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_14();
  _ProtoBackgroundElement.visual.getter(v0);
  VisualElement.init(proto:)();
}

uint64_t BackgroundElement.isShown(for:)(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v2 = *(v1 + 8);
    v3 = sub_26A165034(*a1, *(a1 + 8), *v1) ^ v2;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t BackgroundElement.init(_:_:)(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  type metadata accessor for _ProtoBackgroundElement(0);
  OUTLINED_FUNCTION_0_77();
  sub_26A3BA3CC(v5, v6, &protocol conformance descriptor for _ProtoBackgroundElement);
  sub_26A4249C4();
  sub_26A148B4C(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A3B9898(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v20 = a3;
  v7 = ~a4;
  v8 = type metadata accessor for _ProtoVisualElement(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VisualElement(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  (*(v14 + 8))(v15, v14);
  VisualElement.proto.getter();
  sub_26A3B9F64(v13, type metadata accessor for VisualElement);
  v16 = *(type metadata accessor for _ProtoBackgroundElement(0) + 28);
  sub_26A0E48F0(a1 + v16, &qword_28036C848, &qword_26A426690);
  sub_26A3B9694(v10, a1 + v16);
  result = __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v8);
  if (v7)
  {
    *(a1 + 8) = (a4 & 1) == 0;
    v18 = v20;
    j__swift_bridgeObjectRetain();

    *a1 = v18;
  }

  return result;
}

uint64_t sub_26A3B9AB8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a1(0);
  v10[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  sub_26A3BA4BC(v4, boxed_opaque_existential_1);
  type metadata accessor for _ProtoBackgroundElement(0);
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_0_77();
  sub_26A3BA3CC(v7, v8, &protocol conformance descriptor for _ProtoBackgroundElement);
  sub_26A4249C4();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t BackgroundElementConvertible<>.asBackgroundElement()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = a1;
  v9[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  type metadata accessor for _ProtoBackgroundElement(0);
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_0_77();
  sub_26A3BA3CC(v6, v7, &protocol conformance descriptor for _ProtoBackgroundElement);
  sub_26A4249C4();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t static BackgroundElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoVisualElement(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VisualElement(0);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  _ProtoBackgroundElement.visual.getter(v7);
  VisualElement.init(proto:)();
  _ProtoBackgroundElement.visual.getter(v7);
  VisualElement.init(proto:)();
  static VisualElement.== infix(_:_:)();
  v17 = v16;
  sub_26A3B9F64(v12, type metadata accessor for VisualElement);
  sub_26A3B9F64(v15, type metadata accessor for VisualElement);
  if ((v17 & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {

    v20 = sub_26A10BE7C(v19);

    v22 = sub_26A10BE7C(v21);
    v18 = sub_26A290AE0(v20, v22);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_26A3B9F64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t BackgroundElement.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoBackgroundElement(0);
  OUTLINED_FUNCTION_0_77();
  sub_26A3BA3CC(v1, v2, &protocol conformance descriptor for _ProtoBackgroundElement);

  return sub_26A424B44();
}

uint64_t BackgroundElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoBackgroundElement(0);
  OUTLINED_FUNCTION_0_77();
  sub_26A3BA3CC(v0, v1, &protocol conformance descriptor for _ProtoBackgroundElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3BA0B0(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoBackgroundElement(0);
  sub_26A3BA3CC(&qword_28036FAC8, type metadata accessor for _ProtoBackgroundElement, &protocol conformance descriptor for _ProtoBackgroundElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t Array<A>.backgroundVisual(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = type metadata accessor for _ProtoVisualElement(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_14();
  v8 = type metadata accessor for BackgroundElement(0) - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = 0;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a2 + 16);
  while (v18 != v15)
  {
    OUTLINED_FUNCTION_1_62();
    sub_26A3BA4BC(v19, v11);
    if (!*(*v11 + 16) || (v20 = v11[8], v20 != sub_26A165034(v16, v17, *v11)))
    {
      sub_26A3B9694(v11, v14);
      _ProtoBackgroundElement.visual.getter(v3);
      v21 = v27;
      VisualElement.init(proto:)();
      OUTLINED_FUNCTION_4_49();
      sub_26A3B9F64(v14, v22);
      v23 = 0;
      goto LABEL_8;
    }

    sub_26A3B9F64(v11, type metadata accessor for BackgroundElement);
    ++v15;
  }

  v23 = 1;
  v21 = v27;
LABEL_8:
  v24 = type metadata accessor for VisualElement(0);
  return __swift_storeEnumTagSinglePayload(v21, v23, 1, v24);
}

uint64_t sub_26A3BA3CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A3BA43C(uint64_t a1)
{
  result = type metadata accessor for _ProtoBackgroundElement(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3BA4BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_26A3BA590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v21 = MEMORY[0x277D84F90];
    sub_26A10D50C(0, v7, 0, a4, a5, a6, a7);
    v8 = v21;
    v10 = (a1 + 32);
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC88, &qword_26A442940) + 32);
    do
    {
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      v16 = Component.description(redacted:)(*(a2 + v11));
      v18 = *(v21 + 16);
      v17 = *(v21 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_26A10D50C(v17 > 1, v18 + 1, 1, v12, v13, v14, v15);
      }

      *(v21 + 16) = v18 + 1;
      *(v21 + 16 * v18 + 32) = v16;
      v10 += 5;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_26A3BA6DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v1162 = a1;
  v4 = type metadata accessor for _ProtoSummaryItem_Switch(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v1158 = v6;
  v7 = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for _ProtoSummaryItem_PairNumber(v7);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v1157 = v10;
  v11 = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for _ProtoSummaryItem_Pair(v11);
  v13 = OUTLINED_FUNCTION_41(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v1155 = v14;
  v15 = OUTLINED_FUNCTION_45();
  v16 = type metadata accessor for TertiaryHeaderStandard(v15);
  v17 = OUTLINED_FUNCTION_13_31(v16, v1014);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  v1154 = v18;
  v19 = OUTLINED_FUNCTION_45();
  v1150[1] = type metadata accessor for _ProtoTertiaryHeader_Standard(v19);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v1152 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_48();
  v1156 = v23;
  v24 = OUTLINED_FUNCTION_45();
  v25 = type metadata accessor for KeyValueStandard(v24);
  v26 = OUTLINED_FUNCTION_13_31(v25, v1013);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11();
  v1151 = v27;
  v28 = OUTLINED_FUNCTION_45();
  v29 = type metadata accessor for _ProtoKeyValue_Standard(v28);
  v30 = OUTLINED_FUNCTION_13_31(v29, &v1172);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  v1150[0] = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_48();
  v1153 = v33;
  v34 = OUTLINED_FUNCTION_45();
  v35 = type metadata accessor for HorizontalListStandard(v34);
  v36 = OUTLINED_FUNCTION_13_31(v35, v1012);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_11();
  v38 = OUTLINED_FUNCTION_35(v37);
  v39 = type metadata accessor for _ProtoHorizontalList_Standard(v38);
  v40 = OUTLINED_FUNCTION_13_31(v39, &v1169);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11();
  v42 = OUTLINED_FUNCTION_35(v41);
  v43 = type metadata accessor for HeroHeader(v42);
  v44 = OUTLINED_FUNCTION_13_31(v43, v1011);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_11();
  v46 = OUTLINED_FUNCTION_35(v45);
  v47 = type metadata accessor for _ProtoHeroHeader(v46);
  v48 = OUTLINED_FUNCTION_13_31(v47, &v1167);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_48();
  v51 = OUTLINED_FUNCTION_35(v50);
  v52 = type metadata accessor for SashStandard(v51);
  v53 = OUTLINED_FUNCTION_13_31(v52, v1010);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_11();
  v55 = OUTLINED_FUNCTION_35(v54);
  v56 = type metadata accessor for _ProtoSash_Standard(v55);
  v57 = OUTLINED_FUNCTION_13_31(v56, &v1164);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_48();
  v60 = OUTLINED_FUNCTION_35(v59);
  v61 = type metadata accessor for IntentsUIStandard(v60);
  v62 = OUTLINED_FUNCTION_13_31(v61, v1009);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_11();
  v64 = OUTLINED_FUNCTION_35(v63);
  v65 = type metadata accessor for _ProtoIntentsUI_Standard(v64);
  v66 = OUTLINED_FUNCTION_13_31(v65, &v1163);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_48();
  v69 = OUTLINED_FUNCTION_35(v68);
  v70 = type metadata accessor for ButtonContainer(v69);
  v71 = OUTLINED_FUNCTION_13_31(v70, v1008);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_11();
  v73 = OUTLINED_FUNCTION_35(v72);
  v74 = type metadata accessor for _ProtoButton_Container(v73);
  v75 = OUTLINED_FUNCTION_13_31(v74, v1159);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_11();
  v77 = OUTLINED_FUNCTION_35(v76);
  v78 = type metadata accessor for VisualizationMap(v77);
  v79 = OUTLINED_FUNCTION_13_31(v78, v1007);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_11();
  v81 = OUTLINED_FUNCTION_35(v80);
  v82 = type metadata accessor for _ProtoVisualization_Map(v81);
  v83 = OUTLINED_FUNCTION_13_31(v82, &v1156);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_48();
  v86 = OUTLINED_FUNCTION_35(v85);
  v87 = type metadata accessor for VisualizationImage(v86);
  v88 = OUTLINED_FUNCTION_13_31(v87, v1006);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_11();
  v90 = OUTLINED_FUNCTION_35(v89);
  v91 = type metadata accessor for _ProtoVisualization_Image(v90);
  v92 = OUTLINED_FUNCTION_13_31(v91, &v1152);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_48();
  v95 = OUTLINED_FUNCTION_35(v94);
  v96 = type metadata accessor for VisualizationChart(v95);
  v97 = OUTLINED_FUNCTION_13_31(v96, v1005);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_11();
  v99 = OUTLINED_FUNCTION_35(v98);
  v100 = type metadata accessor for _ProtoVisualization_Chart(v99);
  v101 = OUTLINED_FUNCTION_13_31(v100, &v1149);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_48();
  v104 = OUTLINED_FUNCTION_35(v103);
  v105 = type metadata accessor for LongItemText(v104);
  v106 = OUTLINED_FUNCTION_13_31(v105, v1004);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_11();
  v108 = OUTLINED_FUNCTION_35(v107);
  v109 = type metadata accessor for _ProtoLongItem_Text(v108);
  v110 = OUTLINED_FUNCTION_13_31(v109, &v1147);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_48();
  v113 = OUTLINED_FUNCTION_35(v112);
  v114 = type metadata accessor for Table(v113);
  v115 = OUTLINED_FUNCTION_13_31(v114, v1003);
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_11();
  v117 = OUTLINED_FUNCTION_35(v116);
  v118 = type metadata accessor for _ProtoTable(v117);
  v119 = OUTLINED_FUNCTION_13_31(v118, &v1144);
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_48();
  v122 = OUTLINED_FUNCTION_35(v121);
  v123 = type metadata accessor for ControlSlider(v122);
  v124 = OUTLINED_FUNCTION_13_31(v123, v1002);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_11();
  v126 = OUTLINED_FUNCTION_35(v125);
  v127 = type metadata accessor for _ProtoControl_Slider(v126);
  v128 = OUTLINED_FUNCTION_13_31(v127, &v1143);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_48();
  v131 = OUTLINED_FUNCTION_35(v130);
  v132 = type metadata accessor for TextInput(v131);
  v133 = OUTLINED_FUNCTION_13_31(v132, v1000);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_11();
  v135 = OUTLINED_FUNCTION_35(v134);
  v136 = type metadata accessor for _ProtoTextInput(v135);
  v137 = OUTLINED_FUNCTION_41(v136);
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_11();
  v139 = OUTLINED_FUNCTION_35(v138);
  v140 = type metadata accessor for StatusIndicatorCancelled(v139);
  v141 = OUTLINED_FUNCTION_13_31(v140, v1001);
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_11();
  v143 = OUTLINED_FUNCTION_35(v142);
  v144 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v143);
  v145 = OUTLINED_FUNCTION_13_31(v144, &v1138);
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_48();
  v148 = OUTLINED_FUNCTION_35(v147);
  v149 = type metadata accessor for StatusIndicatorInProgress(v148);
  v150 = OUTLINED_FUNCTION_13_31(v149, v999);
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_11();
  v152 = OUTLINED_FUNCTION_35(v151);
  v153 = type metadata accessor for _ProtoStatusIndicator_InProgress(v152);
  v154 = OUTLINED_FUNCTION_13_31(v153, &v1135);
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_48();
  v157 = OUTLINED_FUNCTION_35(v156);
  v158 = type metadata accessor for StatusIndicatorError(v157);
  v159 = OUTLINED_FUNCTION_13_31(v158, v998);
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_11();
  v161 = OUTLINED_FUNCTION_35(v160);
  v162 = type metadata accessor for _ProtoStatusIndicator_Error(v161);
  v163 = OUTLINED_FUNCTION_13_31(v162, &v1133);
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_48();
  v166 = OUTLINED_FUNCTION_35(v165);
  v167 = type metadata accessor for StatusIndicatorSuccess(v166);
  v168 = OUTLINED_FUNCTION_13_31(v167, v997);
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_11();
  v170 = OUTLINED_FUNCTION_35(v169);
  v171 = type metadata accessor for _ProtoStatusIndicator_Success(v170);
  v172 = OUTLINED_FUNCTION_13_31(v171, &v1131);
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_48();
  v175 = OUTLINED_FUNCTION_35(v174);
  v176 = type metadata accessor for ReferenceFootnote(v175);
  v177 = OUTLINED_FUNCTION_13_31(v176, v996);
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_11();
  v179 = OUTLINED_FUNCTION_35(v178);
  v180 = type metadata accessor for _ProtoReference_Footnote(v179);
  v181 = OUTLINED_FUNCTION_13_31(v180, &v1129);
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v182);
  OUTLINED_FUNCTION_48();
  v184 = OUTLINED_FUNCTION_35(v183);
  v185 = type metadata accessor for ReferenceButton(v184);
  v186 = OUTLINED_FUNCTION_13_31(v185, v995);
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_11();
  v188 = OUTLINED_FUNCTION_35(v187);
  v189 = type metadata accessor for _ProtoReference_Button(v188);
  v190 = OUTLINED_FUNCTION_13_31(v189, &v1127);
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_48();
  v193 = OUTLINED_FUNCTION_35(v192);
  v194 = type metadata accessor for ReferenceRich(v193);
  v195 = OUTLINED_FUNCTION_13_31(v194, v994);
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_11();
  v197 = OUTLINED_FUNCTION_35(v196);
  v198 = type metadata accessor for _ProtoReference_Rich(v197);
  v199 = OUTLINED_FUNCTION_13_31(v198, &v1125);
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_48();
  v202 = OUTLINED_FUNCTION_35(v201);
  v203 = type metadata accessor for ReferenceLogo(v202);
  v204 = OUTLINED_FUNCTION_13_31(v203, v993);
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_11();
  v206 = OUTLINED_FUNCTION_35(v205);
  v207 = type metadata accessor for _ProtoReference_Logo(v206);
  v208 = OUTLINED_FUNCTION_13_31(v207, &v1121);
  MEMORY[0x28223BE20](v208);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v209);
  OUTLINED_FUNCTION_48();
  v211 = OUTLINED_FUNCTION_35(v210);
  v212 = type metadata accessor for ReferenceStandard(v211);
  v213 = OUTLINED_FUNCTION_13_31(v212, v992);
  MEMORY[0x28223BE20](v213);
  OUTLINED_FUNCTION_11();
  v215 = OUTLINED_FUNCTION_35(v214);
  v216 = type metadata accessor for _ProtoReference_Standard(v215);
  v217 = OUTLINED_FUNCTION_13_31(v216, &v1118);
  MEMORY[0x28223BE20](v217);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v218);
  OUTLINED_FUNCTION_48();
  v220 = OUTLINED_FUNCTION_35(v219);
  v221 = type metadata accessor for BinaryButton(v220);
  v222 = OUTLINED_FUNCTION_13_31(v221, v991);
  MEMORY[0x28223BE20](v222);
  OUTLINED_FUNCTION_11();
  v224 = OUTLINED_FUNCTION_35(v223);
  v225 = type metadata accessor for _ProtoBinaryButton(v224);
  v226 = OUTLINED_FUNCTION_13_31(v225, &v1115);
  MEMORY[0x28223BE20](v226);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v227);
  OUTLINED_FUNCTION_48();
  v229 = OUTLINED_FUNCTION_35(v228);
  v230 = type metadata accessor for Button(v229);
  v231 = OUTLINED_FUNCTION_13_31(v230, v990);
  MEMORY[0x28223BE20](v231);
  OUTLINED_FUNCTION_11();
  v233 = OUTLINED_FUNCTION_35(v232);
  v234 = type metadata accessor for _ProtoButton(v233);
  v235 = OUTLINED_FUNCTION_13_31(v234, &v1112);
  MEMORY[0x28223BE20](v235);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v236);
  OUTLINED_FUNCTION_48();
  v238 = OUTLINED_FUNCTION_35(v237);
  v239 = type metadata accessor for SectionHeaderRich(v238);
  v240 = OUTLINED_FUNCTION_13_31(v239, v989);
  MEMORY[0x28223BE20](v240);
  OUTLINED_FUNCTION_11();
  v242 = OUTLINED_FUNCTION_35(v241);
  v243 = type metadata accessor for _ProtoSectionHeader_Rich(v242);
  v244 = OUTLINED_FUNCTION_13_31(v243, &v1109);
  MEMORY[0x28223BE20](v244);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v245);
  OUTLINED_FUNCTION_48();
  v247 = OUTLINED_FUNCTION_35(v246);
  v248 = type metadata accessor for SectionHeaderStandard(v247);
  v249 = OUTLINED_FUNCTION_13_31(v248, v988);
  MEMORY[0x28223BE20](v249);
  OUTLINED_FUNCTION_11();
  v251 = OUTLINED_FUNCTION_35(v250);
  v252 = type metadata accessor for _ProtoSectionHeader_Standard(v251);
  v253 = OUTLINED_FUNCTION_13_31(v252, &v1106);
  MEMORY[0x28223BE20](v253);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v254);
  OUTLINED_FUNCTION_48();
  v256 = OUTLINED_FUNCTION_35(v255);
  v257 = type metadata accessor for SecondaryHeaderEmphasized(v256);
  v258 = OUTLINED_FUNCTION_13_31(v257, v987);
  MEMORY[0x28223BE20](v258);
  OUTLINED_FUNCTION_11();
  v260 = OUTLINED_FUNCTION_35(v259);
  v261 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v260);
  v262 = OUTLINED_FUNCTION_13_31(v261, &v1103);
  MEMORY[0x28223BE20](v262);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v263);
  OUTLINED_FUNCTION_48();
  v265 = OUTLINED_FUNCTION_35(v264);
  v266 = type metadata accessor for SecondaryHeaderStandard(v265);
  v267 = OUTLINED_FUNCTION_13_31(v266, v986);
  MEMORY[0x28223BE20](v267);
  OUTLINED_FUNCTION_11();
  v269 = OUTLINED_FUNCTION_35(v268);
  v270 = type metadata accessor for _ProtoSecondaryHeader_Standard(v269);
  v271 = OUTLINED_FUNCTION_13_31(v270, &v1100);
  MEMORY[0x28223BE20](v271);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v272);
  OUTLINED_FUNCTION_48();
  v274 = OUTLINED_FUNCTION_35(v273);
  v275 = type metadata accessor for PrimaryHeaderRich(v274);
  v276 = OUTLINED_FUNCTION_13_31(v275, v985);
  MEMORY[0x28223BE20](v276);
  OUTLINED_FUNCTION_11();
  v278 = OUTLINED_FUNCTION_35(v277);
  v279 = type metadata accessor for _ProtoPrimaryHeader_Rich(v278);
  v280 = OUTLINED_FUNCTION_13_31(v279, &v1097);
  MEMORY[0x28223BE20](v280);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v281);
  OUTLINED_FUNCTION_48();
  v283 = OUTLINED_FUNCTION_35(v282);
  v284 = type metadata accessor for PrimaryHeaderMarquee(v283);
  v285 = OUTLINED_FUNCTION_13_31(v284, v984);
  MEMORY[0x28223BE20](v285);
  OUTLINED_FUNCTION_11();
  v287 = OUTLINED_FUNCTION_35(v286);
  v288 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v287);
  v289 = OUTLINED_FUNCTION_13_31(v288, &v1094);
  MEMORY[0x28223BE20](v289);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v290);
  OUTLINED_FUNCTION_48();
  v292 = OUTLINED_FUNCTION_35(v291);
  v293 = type metadata accessor for PrimaryHeaderStandard(v292);
  v294 = OUTLINED_FUNCTION_13_31(v293, v983);
  MEMORY[0x28223BE20](v294);
  OUTLINED_FUNCTION_11();
  v296 = OUTLINED_FUNCTION_35(v295);
  v297 = type metadata accessor for _ProtoPrimaryHeader_Standard(v296);
  v298 = OUTLINED_FUNCTION_13_31(v297, &v1091);
  MEMORY[0x28223BE20](v298);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v299);
  OUTLINED_FUNCTION_48();
  v301 = OUTLINED_FUNCTION_35(v300);
  v302 = type metadata accessor for SimpleItemRichSearchResult(v301);
  v303 = OUTLINED_FUNCTION_13_31(v302, v982);
  MEMORY[0x28223BE20](v303);
  OUTLINED_FUNCTION_11();
  v305 = OUTLINED_FUNCTION_35(v304);
  v306 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v305);
  v307 = OUTLINED_FUNCTION_13_31(v306, &v1088);
  MEMORY[0x28223BE20](v307);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v308);
  OUTLINED_FUNCTION_48();
  v310 = OUTLINED_FUNCTION_35(v309);
  v311 = type metadata accessor for SimpleItemPlayer(v310);
  v312 = OUTLINED_FUNCTION_13_31(v311, v981);
  MEMORY[0x28223BE20](v312);
  OUTLINED_FUNCTION_11();
  v314 = OUTLINED_FUNCTION_35(v313);
  v315 = type metadata accessor for _ProtoSimpleItem_Player(v314);
  v316 = OUTLINED_FUNCTION_13_31(v315, &v1085);
  MEMORY[0x28223BE20](v316);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v317);
  OUTLINED_FUNCTION_48();
  v319 = OUTLINED_FUNCTION_35(v318);
  v320 = type metadata accessor for SimpleItemVisual(v319);
  v321 = OUTLINED_FUNCTION_13_31(v320, v980);
  MEMORY[0x28223BE20](v321);
  OUTLINED_FUNCTION_11();
  v323 = OUTLINED_FUNCTION_35(v322);
  v324 = type metadata accessor for _ProtoSimpleItem_Visual(v323);
  v325 = OUTLINED_FUNCTION_13_31(v324, &v1082);
  MEMORY[0x28223BE20](v325);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v326);
  OUTLINED_FUNCTION_48();
  v328 = OUTLINED_FUNCTION_35(v327);
  v329 = type metadata accessor for SimpleItemReverseRich(v328);
  v330 = OUTLINED_FUNCTION_13_31(v329, v979);
  MEMORY[0x28223BE20](v330);
  OUTLINED_FUNCTION_11();
  v332 = OUTLINED_FUNCTION_35(v331);
  v333 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v332);
  v334 = OUTLINED_FUNCTION_13_31(v333, &v1079);
  MEMORY[0x28223BE20](v334);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v335);
  OUTLINED_FUNCTION_48();
  v337 = OUTLINED_FUNCTION_35(v336);
  v338 = type metadata accessor for SimpleItemRich(v337);
  v339 = OUTLINED_FUNCTION_13_31(v338, v978);
  MEMORY[0x28223BE20](v339);
  OUTLINED_FUNCTION_11();
  v341 = OUTLINED_FUNCTION_35(v340);
  v342 = type metadata accessor for _ProtoSimpleItem_Rich(v341);
  v343 = OUTLINED_FUNCTION_13_31(v342, &v1076);
  MEMORY[0x28223BE20](v343);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v344);
  OUTLINED_FUNCTION_48();
  v346 = OUTLINED_FUNCTION_35(v345);
  v347 = type metadata accessor for SimpleItemStandard(v346);
  v348 = OUTLINED_FUNCTION_13_31(v347, v977);
  MEMORY[0x28223BE20](v348);
  OUTLINED_FUNCTION_11();
  v350 = OUTLINED_FUNCTION_35(v349);
  v351 = type metadata accessor for _ProtoSimpleItem_Standard(v350);
  v352 = OUTLINED_FUNCTION_13_31(v351, &v1073);
  MEMORY[0x28223BE20](v352);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v353);
  OUTLINED_FUNCTION_48();
  v355 = OUTLINED_FUNCTION_35(v354);
  v356 = type metadata accessor for SystemTextClarificationTitle(v355);
  v357 = OUTLINED_FUNCTION_13_31(v356, v976);
  MEMORY[0x28223BE20](v357);
  OUTLINED_FUNCTION_11();
  v359 = OUTLINED_FUNCTION_35(v358);
  v360 = type metadata accessor for _ProtoSystemText_ClarificationTitle(v359);
  v361 = OUTLINED_FUNCTION_13_31(v360, &v1070);
  MEMORY[0x28223BE20](v361);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v362);
  OUTLINED_FUNCTION_48();
  v364 = OUTLINED_FUNCTION_35(v363);
  v365 = type metadata accessor for SummaryItemSwitchV2(v364);
  v366 = OUTLINED_FUNCTION_13_31(v365, v975);
  MEMORY[0x28223BE20](v366);
  OUTLINED_FUNCTION_11();
  v368 = OUTLINED_FUNCTION_35(v367);
  v369 = type metadata accessor for _ProtoSummaryItem_SwitchV2(v368);
  v370 = OUTLINED_FUNCTION_13_31(v369, &v1067);
  MEMORY[0x28223BE20](v370);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v371);
  OUTLINED_FUNCTION_48();
  v373 = OUTLINED_FUNCTION_35(v372);
  v374 = type metadata accessor for SummaryItemPlayer(v373);
  v375 = OUTLINED_FUNCTION_13_31(v374, v974);
  MEMORY[0x28223BE20](v375);
  OUTLINED_FUNCTION_11();
  v377 = OUTLINED_FUNCTION_35(v376);
  v378 = type metadata accessor for _ProtoSummaryItem_Player(v377);
  v379 = OUTLINED_FUNCTION_13_31(v378, &v1064);
  MEMORY[0x28223BE20](v379);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v380);
  OUTLINED_FUNCTION_48();
  v382 = OUTLINED_FUNCTION_35(v381);
  v383 = type metadata accessor for SummaryItemButton(v382);
  v384 = OUTLINED_FUNCTION_13_31(v383, v973);
  MEMORY[0x28223BE20](v384);
  OUTLINED_FUNCTION_11();
  v386 = OUTLINED_FUNCTION_35(v385);
  v387 = type metadata accessor for _ProtoSummaryItem_Button(v386);
  v388 = OUTLINED_FUNCTION_13_31(v387, &v1061);
  MEMORY[0x28223BE20](v388);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v389);
  OUTLINED_FUNCTION_48();
  v391 = OUTLINED_FUNCTION_35(v390);
  v392 = type metadata accessor for SummaryItemPairNumberV2(v391);
  v393 = OUTLINED_FUNCTION_13_31(v392, v972);
  MEMORY[0x28223BE20](v393);
  OUTLINED_FUNCTION_11();
  v395 = OUTLINED_FUNCTION_35(v394);
  v396 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(v395);
  v397 = OUTLINED_FUNCTION_13_31(v396, &v1058);
  MEMORY[0x28223BE20](v397);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v398);
  OUTLINED_FUNCTION_48();
  v400 = OUTLINED_FUNCTION_35(v399);
  v401 = type metadata accessor for SummaryItemPairV2(v400);
  v402 = OUTLINED_FUNCTION_13_31(v401, v971);
  MEMORY[0x28223BE20](v402);
  OUTLINED_FUNCTION_11();
  v404 = OUTLINED_FUNCTION_35(v403);
  v405 = type metadata accessor for _ProtoSummaryItem_PairV2(v404);
  v406 = OUTLINED_FUNCTION_13_31(v405, &v1055);
  MEMORY[0x28223BE20](v406);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v407);
  OUTLINED_FUNCTION_48();
  v409 = OUTLINED_FUNCTION_35(v408);
  v410 = type metadata accessor for SummaryItemDetailedText(v409);
  v411 = OUTLINED_FUNCTION_13_31(v410, v970);
  MEMORY[0x28223BE20](v411);
  OUTLINED_FUNCTION_11();
  v413 = OUTLINED_FUNCTION_35(v412);
  v414 = type metadata accessor for _ProtoSummaryItem_DetailedText(v413);
  v415 = OUTLINED_FUNCTION_13_31(v414, &v1052);
  MEMORY[0x28223BE20](v415);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v416);
  OUTLINED_FUNCTION_48();
  v418 = OUTLINED_FUNCTION_35(v417);
  v419 = type metadata accessor for SummaryItemLargeText(v418);
  v420 = OUTLINED_FUNCTION_13_31(v419, v969);
  MEMORY[0x28223BE20](v420);
  OUTLINED_FUNCTION_11();
  v422 = OUTLINED_FUNCTION_35(v421);
  v423 = type metadata accessor for _ProtoSummaryItem_LargeText(v422);
  v424 = OUTLINED_FUNCTION_13_31(v423, &v1049);
  MEMORY[0x28223BE20](v424);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v425);
  OUTLINED_FUNCTION_48();
  v427 = OUTLINED_FUNCTION_35(v426);
  v428 = type metadata accessor for SummaryItemText(v427);
  v429 = OUTLINED_FUNCTION_13_31(v428, v968);
  MEMORY[0x28223BE20](v429);
  OUTLINED_FUNCTION_11();
  v431 = OUTLINED_FUNCTION_35(v430);
  v432 = type metadata accessor for _ProtoSummaryItem_Text(v431);
  v433 = OUTLINED_FUNCTION_13_31(v432, &v1046);
  MEMORY[0x28223BE20](v433);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v434);
  OUTLINED_FUNCTION_48();
  v436 = OUTLINED_FUNCTION_35(v435);
  v437 = type metadata accessor for SummaryItemShortNumber(v436);
  v438 = OUTLINED_FUNCTION_13_31(v437, v967);
  MEMORY[0x28223BE20](v438);
  OUTLINED_FUNCTION_11();
  v440 = OUTLINED_FUNCTION_35(v439);
  v441 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v440);
  v442 = OUTLINED_FUNCTION_13_31(v441, &v1043);
  MEMORY[0x28223BE20](v442);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v443);
  OUTLINED_FUNCTION_48();
  v445 = OUTLINED_FUNCTION_35(v444);
  v446 = type metadata accessor for SummaryItemStandard(v445);
  v447 = OUTLINED_FUNCTION_13_31(v446, v966);
  MEMORY[0x28223BE20](v447);
  OUTLINED_FUNCTION_11();
  v449 = OUTLINED_FUNCTION_35(v448);
  v450 = type metadata accessor for _ProtoSummaryItem_Standard(v449);
  v451 = OUTLINED_FUNCTION_13_31(v450, &v1040);
  MEMORY[0x28223BE20](v451);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v452);
  OUTLINED_FUNCTION_48();
  v454 = OUTLINED_FUNCTION_35(v453);
  v455 = type metadata accessor for FactItemButton(v454);
  v456 = OUTLINED_FUNCTION_13_31(v455, v965);
  MEMORY[0x28223BE20](v456);
  OUTLINED_FUNCTION_11();
  v458 = OUTLINED_FUNCTION_35(v457);
  v459 = type metadata accessor for _ProtoFactItem_Button(v458);
  v460 = OUTLINED_FUNCTION_13_31(v459, &v1037);
  MEMORY[0x28223BE20](v460);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v461);
  OUTLINED_FUNCTION_48();
  v463 = OUTLINED_FUNCTION_35(v462);
  v464 = type metadata accessor for FactItemHeroNumber(v463);
  v465 = OUTLINED_FUNCTION_13_31(v464, v964);
  MEMORY[0x28223BE20](v465);
  OUTLINED_FUNCTION_11();
  v467 = OUTLINED_FUNCTION_35(v466);
  v468 = type metadata accessor for _ProtoFactItem_HeroNumber(v467);
  v469 = OUTLINED_FUNCTION_13_31(v468, &v1034);
  MEMORY[0x28223BE20](v469);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v470);
  OUTLINED_FUNCTION_48();
  v472 = OUTLINED_FUNCTION_35(v471);
  v473 = type metadata accessor for FactItemShortNumber(v472);
  v474 = OUTLINED_FUNCTION_13_31(v473, v963);
  MEMORY[0x28223BE20](v474);
  OUTLINED_FUNCTION_11();
  v476 = OUTLINED_FUNCTION_35(v475);
  v477 = type metadata accessor for _ProtoFactItem_ShortNumber(v476);
  v478 = OUTLINED_FUNCTION_13_31(v477, &v1032);
  MEMORY[0x28223BE20](v478);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v479);
  OUTLINED_FUNCTION_48();
  v481 = OUTLINED_FUNCTION_35(v480);
  v482 = type metadata accessor for FactItemStandard(v481);
  v483 = OUTLINED_FUNCTION_13_31(v482, v962);
  MEMORY[0x28223BE20](v483);
  OUTLINED_FUNCTION_11();
  v485 = OUTLINED_FUNCTION_35(v484);
  v486 = type metadata accessor for _ProtoFactItem_Standard(v485);
  v487 = OUTLINED_FUNCTION_13_31(v486, v1030);
  MEMORY[0x28223BE20](v487);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v488);
  OUTLINED_FUNCTION_48();
  v490 = OUTLINED_FUNCTION_35(v489);
  v491 = type metadata accessor for CustomCanvas(v490);
  v492 = OUTLINED_FUNCTION_13_31(v491, v960);
  MEMORY[0x28223BE20](v492);
  OUTLINED_FUNCTION_11();
  v494 = OUTLINED_FUNCTION_35(v493);
  v495 = type metadata accessor for _ProtoCustomCanvas(v494);
  v496 = OUTLINED_FUNCTION_41(v495);
  MEMORY[0x28223BE20](v496);
  OUTLINED_FUNCTION_11();
  v498 = OUTLINED_FUNCTION_35(v497);
  v499 = type metadata accessor for ControlPlayerButton(v498);
  v500 = OUTLINED_FUNCTION_13_31(v499, v961);
  MEMORY[0x28223BE20](v500);
  OUTLINED_FUNCTION_11();
  v502 = OUTLINED_FUNCTION_35(v501);
  v503 = type metadata accessor for _ProtoControl_PlayerButton(v502);
  v504 = OUTLINED_FUNCTION_13_31(v503, v1027);
  MEMORY[0x28223BE20](v504);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v505);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v506);
  sub_26A4247D4();
  OUTLINED_FUNCTION_24();
  v1159[1] = v507;
  v1160 = v508;
  MEMORY[0x28223BE20](v507);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v509);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v510);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v511);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v512);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v513);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v514);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v515);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v516);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v517);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v518);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v519);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v520);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v521);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v522);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v523);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v524);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v525);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v526);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v527);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v528);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v529);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v530);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v531);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v532);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v533);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v534);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v535);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v536);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v537);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v538);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v539);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v540);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v541);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v542);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v543);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v544);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v545);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v546);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v547);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v548);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v549);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v550);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v551);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v552);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v553);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v554);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v555);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v556);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v557);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v558);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v559);
  v561 = &v948 - v560;
  MEMORY[0x28223BE20](v562);
  v564 = &v948 - v563;
  MEMORY[0x28223BE20](v565);
  v567 = &v948 - v566;
  v568 = type metadata accessor for ControlSwitch(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v569);
  v571 = &v948 - ((v570 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _ProtoControl_Switch(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v572);
  MEMORY[0x28223BE20](v573);
  OUTLINED_FUNCTION_48();
  v1159[0] = v574;
  v575 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v575);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v576);
  v578 = &v948 - v577;
  v1161 = v3;
  sub_26A3C3320(v3, &v948 - v577);
  v579 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v578, 1, v579) == 1)
  {
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v580 = sub_26A424AE4();
    __swift_project_value_buffer(v580, qword_2803A8950);
    v581 = sub_26A424AD4();
    v582 = sub_26A424E04();
    v583 = os_log_type_enabled(v581, v582);
    v584 = v1162;
    if (v583)
    {
      v585 = swift_slowAlloc();
      *v585 = 0;
      _os_log_impl(&dword_26A0B8000, v581, v582, "Expected a Component value, but found none!", v585, 2u);
      MEMORY[0x26D65C950](v585, -1, -1);
    }

    *(v584 + 24) = type metadata accessor for _ProtoResponse.Component(0);
    *(v584 + 32) = &protocol witness table for _ProtoResponse.Component;
    __swift_allocate_boxed_opaque_existential_1Tm();
    OUTLINED_FUNCTION_11_37();
    return sub_26A3C33E8(v1161, v586);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v647 = v1021;
        sub_26A3C3390(v578, v1021);
        sub_26A3C33E8(v647, v1020);
        OUTLINED_FUNCTION_22_28();
        _ProtoFactItem_Standard.redactedProto.getter();
        sub_26A4247C4();
        sub_26A3C3440();
        v648 = v1168;
        v649 = sub_26A424954();
        if (v648)
        {
          OUTLINED_FUNCTION_15_39();
          v651(v561);
          sub_26A3C3484();
          goto LABEL_125;
        }

        v838 = v649;
        v839 = v650;
        OUTLINED_FUNCTION_15_39();
        v840(v561);
        sub_26A3C3484();
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        v841 = v1162;
        *(v1162 + 24) = v951;
        *(v841 + 32) = &protocol witness table for FactItemStandard;
        __swift_allocate_boxed_opaque_existential_1Tm();
        sub_26A3AFAA4(v838, v839);
        return sub_26A3C3484();
      case 2u:
        v634 = v1022;
        sub_26A3C3390(v578, v1022);
        OUTLINED_FUNCTION_17_30(v634, &v1035);
        OUTLINED_FUNCTION_10_51();
        _ProtoFactItem_ShortNumber.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v820 = OUTLINED_FUNCTION_0_78();
        v821(v820);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemShortNumber);
        v822 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFE64(v822, v823);
        return sub_26A3C3484();
      case 3u:
        v637 = v1023;
        sub_26A3C3390(v578, v1023);
        OUTLINED_FUNCTION_17_30(v637, &v1038);
        OUTLINED_FUNCTION_10_51();
        _ProtoFactItem_HeroNumber.redactedProto.getter(v638, v639, v640, v641, v642, v643, v644, v645, v948, v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v828 = OUTLINED_FUNCTION_0_78();
        v829(v828);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemHeroNumber);
        v830 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFA2C(v830, v831);
        return sub_26A3C3484();
      case 4u:
        v618 = v1025;
        sub_26A3C3390(v578, v1025);
        OUTLINED_FUNCTION_17_30(v618, &v1044);
        OUTLINED_FUNCTION_10_51();
        _ProtoSummaryItem_Standard.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v797 = OUTLINED_FUNCTION_0_78();
        v798(v797);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemStandard);
        v799 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFC54(v799, v800);
        return sub_26A3C3484();
      case 5u:
        v661 = v1026;
        sub_26A3C3390(v578, v1026);
        OUTLINED_FUNCTION_17_30(v661, &v1047);
        OUTLINED_FUNCTION_10_51();
        _ProtoSummaryItem_ShortNumber.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v854 = OUTLINED_FUNCTION_0_78();
        v855(v854);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemShortNumber);
        v856 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFE94(v856, v857);
        return sub_26A3C3484();
      case 6u:
        v665 = v1029;
        sub_26A3C3390(v578, v1029);
        OUTLINED_FUNCTION_17_30(v665, &v1050);
        OUTLINED_FUNCTION_10_51();
        _ProtoSummaryItem_Text.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v866 = OUTLINED_FUNCTION_0_78();
        v867(v866);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemText);
        v868 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFDA4(v868, v869);
        return sub_26A3C3484();
      case 7u:
        v646 = v1031;
        sub_26A3C3390(v578, v1031);
        OUTLINED_FUNCTION_17_30(v646, &v1053);
        OUTLINED_FUNCTION_10_51();
        _ProtoSummaryItem_LargeText.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v832 = OUTLINED_FUNCTION_0_78();
        v833(v832);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemLargeText);
        v834 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFB4C(v834, v835);
        return sub_26A3C3484();
      case 8u:
        v669 = v1033;
        sub_26A3C3390(v578, v1033);
        OUTLINED_FUNCTION_17_30(v669, &v1056);
        OUTLINED_FUNCTION_10_51();
        _ProtoSummaryItem_DetailedText.redactedProto.getter(v670, v671, v672, v673, v674, v675, v676, v677, v948, v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v878 = OUTLINED_FUNCTION_0_78();
        v879(v878);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemDetailedText);
        v880 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFEAC(v880, v881);
        return sub_26A3C3484();
      case 9u:
        v621 = v1054;
        sub_26A3C3390(v578, v1054);
        OUTLINED_FUNCTION_17_30(v621, &v1077);
        OUTLINED_FUNCTION_10_51();
        _ProtoSimpleItem_Standard.redactedProto.getter(v622, v623, v624, v625, v626, v627, v628, v629, v948, v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v809 = OUTLINED_FUNCTION_0_78();
        v810(v809);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemStandard);
        v811 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFE1C(v811, v812);
        return sub_26A3C3484();
      case 0xAu:
        v668 = v1057;
        sub_26A3C3390(v578, v1057);
        OUTLINED_FUNCTION_17_30(v668, &v1080);
        OUTLINED_FUNCTION_10_51();
        _ProtoSimpleItem_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v874 = OUTLINED_FUNCTION_0_78();
        v875(v874);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemRich);
        v876 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFB1C(v876, v877);
        return sub_26A3C3484();
      case 0xBu:
        v614 = v1063;
        sub_26A3C3390(v578, v1063);
        OUTLINED_FUNCTION_17_30(v614, &v1086);
        OUTLINED_FUNCTION_10_51();
        _ProtoSimpleItem_Visual.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v790 = OUTLINED_FUNCTION_0_78();
        v791(v790);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemVisual);
        v792 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFDBC(v792, v793);
        return sub_26A3C3484();
      case 0xCu:
        v620 = v1072;
        sub_26A3C3390(v578, v1072);
        OUTLINED_FUNCTION_17_30(v620, &v1095);
        OUTLINED_FUNCTION_10_51();
        _ProtoPrimaryHeader_Standard.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v805 = OUTLINED_FUNCTION_0_78();
        v806(v805);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for PrimaryHeaderStandard);
        v807 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFA74(v807, v808);
        return sub_26A3C3484();
      case 0xDu:
        v664 = v1075;
        sub_26A3C3390(v578, v1075);
        OUTLINED_FUNCTION_17_30(v664, &v1098);
        OUTLINED_FUNCTION_10_51();
        _ProtoPrimaryHeader_Marquee.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v862 = OUTLINED_FUNCTION_0_78();
        v863(v862);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for PrimaryHeaderMarquee);
        v864 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFD14(v864, v865);
        return sub_26A3C3484();
      case 0xEu:
        v607 = v1078;
        sub_26A3C3390(v578, v1078);
        OUTLINED_FUNCTION_17_30(v607, &v1101);
        OUTLINED_FUNCTION_10_51();
        _ProtoPrimaryHeader_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v778 = OUTLINED_FUNCTION_0_78();
        v779(v778);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for PrimaryHeaderRich);
        v780 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFDD4(v780, v781);
        return sub_26A3C3484();
      case 0xFu:
        v635 = v1081;
        sub_26A3C3390(v578, v1081);
        OUTLINED_FUNCTION_17_30(v635, &v1104);
        OUTLINED_FUNCTION_10_51();
        _ProtoSecondaryHeader_Standard.redactedProto.getter(v636);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v824 = OUTLINED_FUNCTION_0_78();
        v825(v824);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SecondaryHeaderStandard);
        v826 = OUTLINED_FUNCTION_3_58();
        sub_26A3AF9FC(v826, v827);
        return sub_26A3C3484();
      case 0x10u:
        v604 = v1093;
        sub_26A3C3390(v578, v1093);
        OUTLINED_FUNCTION_17_30(v604, &v1116);
        OUTLINED_FUNCTION_10_51();
        _ProtoButton.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v770 = OUTLINED_FUNCTION_0_78();
        v771(v770);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for Button);
        v772 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFAEC(v772, v773);
        return sub_26A3C3484();
      case 0x11u:
        v656 = v1096;
        sub_26A3C3390(v578, v1096);
        OUTLINED_FUNCTION_17_30(v656, &v1119);
        OUTLINED_FUNCTION_10_51();
        _ProtoBinaryButton.redactedProto.getter(v657);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v842 = OUTLINED_FUNCTION_0_78();
        v843(v842);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for BinaryButton);
        v844 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFBAC(v844, v845);
        return sub_26A3C3484();
      case 0x12u:
        v666 = v1114;
        sub_26A3C3390(v578, v1114);
        OUTLINED_FUNCTION_17_30(v666, &v1134);
        OUTLINED_FUNCTION_10_51();
        sub_26A27E314(v667);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v870 = OUTLINED_FUNCTION_0_78();
        v871(v870);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorSuccess);
        v872 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFB7C(v872, v873);
        return sub_26A3C3484();
      case 0x13u:
        v690 = v1117;
        sub_26A3C3390(v578, v1117);
        OUTLINED_FUNCTION_17_30(v690, &v1136);
        OUTLINED_FUNCTION_10_51();
        sub_26A1F33A8(v691);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v896 = OUTLINED_FUNCTION_0_78();
        v897(v896);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorError);
        v898 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFB04(v898, v899);
        return sub_26A3C3484();
      case 0x14u:
        v659 = v1120;
        sub_26A3C3390(v578, v1120);
        OUTLINED_FUNCTION_17_30(v659, &v1139);
        OUTLINED_FUNCTION_10_51();
        sub_26A156AB0(v660);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v850 = OUTLINED_FUNCTION_0_78();
        v851(v850);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorInProgress);
        v852 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFABC(v852, v853);
        return sub_26A3C3484();
      case 0x15u:
        v662 = v1124;
        sub_26A3C3390(v578, v1124);
        OUTLINED_FUNCTION_17_30(v662, &v1142);
        OUTLINED_FUNCTION_10_51();
        sub_26A380EA0(v663);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v858 = OUTLINED_FUNCTION_0_78();
        v859(v858);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorCancelled);
        v860 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFEC4(v860, v861);
        return sub_26A3C3484();
      case 0x16u:
        v685 = v1123;
        sub_26A3C3390(v578, v1123);
        OUTLINED_FUNCTION_17_30(v685, &v1141);
        OUTLINED_FUNCTION_33_18();
        TextInput.jsonString(redacted:)(v686);
        if (v687)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for TextInput);
        v890 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFEF4(v890, v891);
        return sub_26A3C3484();
      case 0x17u:
        v704 = v1159[0];
        sub_26A3C3390(v578, v1159[0]);
        sub_26A3C33E8(v704, v571);
        _ProtoControl_Switch.redactedProto.getter();
        sub_26A4247C4();
        sub_26A3C3440();
        v705 = v1168;
        sub_26A424954();
        if (v705)
        {
          OUTLINED_FUNCTION_15_39();
          v706(v567);
          sub_26A3C3484();
          OUTLINED_FUNCTION_20_30();
          sub_26A3C3484();
        }

        else
        {
          OUTLINED_FUNCTION_4_50();
          v912(v567);
          sub_26A3C3484();
          OUTLINED_FUNCTION_20_30();
          sub_26A3C3484();
          v913 = v1162;
          *(v1162 + 24) = v568;
          *(v913 + 32) = &protocol witness table for ControlSwitch;
          __swift_allocate_boxed_opaque_existential_1Tm();
          v914 = OUTLINED_FUNCTION_3_58();
          sub_26A3AFA14(v914, v915);
        }

        return sub_26A3C3484();
      case 0x18u:
        v633 = v1128;
        sub_26A3C3390(v578, v1128);
        OUTLINED_FUNCTION_17_30(v633, &v1145);
        OUTLINED_FUNCTION_10_51();
        _ProtoControl_Slider.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v816 = OUTLINED_FUNCTION_0_78();
        v817(v816);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ControlSlider);
        v818 = OUTLINED_FUNCTION_3_58();
        sub_26A3AF9E4(v818, v819);
        return sub_26A3C3484();
      case 0x19u:
        v630 = v1019;
        sub_26A3C3390(v578, v1019);
        sub_26A3C33E8(v630, v1017);
        OUTLINED_FUNCTION_22_28();
        _ProtoControl_PlayerButton.redactedProto.getter();
        sub_26A4247C4();
        sub_26A3C3440();
        v631 = v1168;
        sub_26A424954();
        if (v631)
        {
          OUTLINED_FUNCTION_15_39();
          v632(v564);
          sub_26A3C3484();
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_4_50();
        v813(v564);
        sub_26A3C3484();
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ControlPlayerButton);
        v814 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFE4C(v814, v815);
        break;
      case 0x1Au:
        sub_26A3C3484();
        v719 = type metadata accessor for _ProtoResponse.Component(0);
        v720 = v1162;
        *(v1162 + 24) = v719;
        *(v720 + 32) = &protocol witness table for _ProtoResponse.Component;
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_11_37();
        return sub_26A3C33E8(v1161, v721);
      case 0x1Bu:
        v601 = v1099;
        sub_26A3C3390(v578, v1099);
        OUTLINED_FUNCTION_17_30(v601, &v1122);
        OUTLINED_FUNCTION_10_51();
        _ProtoReference_Standard.redactedProto.getter(v602);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v762 = OUTLINED_FUNCTION_0_78();
        v763(v762);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceStandard);
        v764 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFDEC(v764, v765);
        return sub_26A3C3484();
      case 0x1Cu:
        v707 = v1102;
        sub_26A3C3390(v578, v1102);
        OUTLINED_FUNCTION_17_30(v707, &v1126);
        OUTLINED_FUNCTION_10_51();
        _ProtoReference_Logo.redactedProto.getter(v708);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v916 = OUTLINED_FUNCTION_0_78();
        v917(v916);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceLogo);
        v918 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFD5C(v918, v919);
        return sub_26A3C3484();
      case 0x1Du:
        v709 = v1105;
        sub_26A3C3390(v578, v1105);
        OUTLINED_FUNCTION_17_30(v709, &v1128);
        OUTLINED_FUNCTION_10_51();
        _ProtoReference_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v920 = OUTLINED_FUNCTION_0_78();
        v921(v920);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceRich);
        v922 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFD74(v922, v923);
        return sub_26A3C3484();
      case 0x1Eu:
        v678 = v1108;
        sub_26A3C3390(v578, v1108);
        OUTLINED_FUNCTION_17_30(v678, &v1130);
        OUTLINED_FUNCTION_10_51();
        _ProtoReference_Button.redactedProto.getter(v679);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v882 = OUTLINED_FUNCTION_0_78();
        v883(v882);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceButton);
        v884 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFD8C(v884, v885);
        return sub_26A3C3484();
      case 0x1Fu:
        sub_26A3C3390(v578, v1155);
        v1164 = type metadata accessor for SummaryItemPair(0);
        v1165 = &protocol witness table for SummaryItemPair;
        v1166 = sub_26A3C3440();
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_31_20(boxed_opaque_existential_1Tm);
        __swift_project_boxed_opaque_existential_1(&v1163, v1164);
        v653 = OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_32_20(v653, v654, v655);
        goto LABEL_93;
      case 0x20u:
        v680 = v1036;
        sub_26A3C3390(v578, v1036);
        OUTLINED_FUNCTION_17_30(v680, &v1059);
        OUTLINED_FUNCTION_10_51();
        _ProtoSummaryItem_PairV2.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v886 = OUTLINED_FUNCTION_0_78();
        v887(v886);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemPairV2);
        v888 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFCE4(v888, v889);
        return sub_26A3C3484();
      case 0x21u:
        sub_26A3C3390(v578, v1157);
        v1164 = type metadata accessor for SummaryItemPairNumber(0);
        v1165 = &protocol witness table for SummaryItemPairNumber;
        v1166 = sub_26A3C3440();
        v608 = __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_31_20(v608);
        __swift_project_boxed_opaque_existential_1(&v1163, v1164);
        v609 = OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_32_20(v609, v610, v611);
        goto LABEL_93;
      case 0x22u:
        v603 = v1039;
        sub_26A3C3390(v578, v1039);
        OUTLINED_FUNCTION_17_30(v603, &v1062);
        OUTLINED_FUNCTION_10_51();
        _ProtoSummaryItem_PairNumberV2.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v766 = OUTLINED_FUNCTION_0_78();
        v767(v766);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemPairNumberV2);
        v768 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFA5C(v768, v769);
        return sub_26A3C3484();
      case 0x23u:
        v599 = v1042;
        sub_26A3C3390(v578, v1042);
        OUTLINED_FUNCTION_17_30(v599, &v1065);
        OUTLINED_FUNCTION_10_51();
        _ProtoSummaryItem_Button.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v754 = OUTLINED_FUNCTION_0_78();
        v755(v754);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemButton);
        v756 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFE04(v756, v757);
        return sub_26A3C3484();
      case 0x24u:
        v600 = v1024;
        sub_26A3C3390(v578, v1024);
        OUTLINED_FUNCTION_17_30(v600, &v1041);
        OUTLINED_FUNCTION_10_51();
        _ProtoFactItem_Button.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v758 = OUTLINED_FUNCTION_0_78();
        v759(v758);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemButton);
        v760 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFB64(v760, v761);
        return sub_26A3C3484();
      case 0x25u:
        v593 = v1130;
        sub_26A3C3390(v578, v1130);
        OUTLINED_FUNCTION_17_30(v593, &v1148);
        OUTLINED_FUNCTION_10_51();
        _ProtoTable.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v739 = OUTLINED_FUNCTION_0_78();
        v740(v739);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for Table);
        v741 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFEDC(v741, v742);
        return sub_26A3C3484();
      case 0x26u:
        v710 = v1111;
        sub_26A3C3390(v578, v1111);
        OUTLINED_FUNCTION_17_30(v710, &v1132);
        OUTLINED_FUNCTION_10_51();
        _ProtoReference_Footnote.redactedProto.getter(v711, v712, v713, v714, v715, v716, v717, v718, v948, v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v924 = OUTLINED_FUNCTION_0_78();
        v925(v924);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceFootnote);
        v926 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFA8C(v926, v927);
        return sub_26A3C3484();
      case 0x27u:
        v688 = v1132;
        sub_26A3C3390(v578, v1132);
        OUTLINED_FUNCTION_17_30(v688, v1150);
        OUTLINED_FUNCTION_10_51();
        _ProtoLongItem_Text.redactedProto.getter(v689);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v892 = OUTLINED_FUNCTION_0_78();
        v893(v892);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for LongItemText);
        v894 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFC0C(v894, v895);
        return sub_26A3C3484();
      case 0x28u:
        v619 = v1134;
        sub_26A3C3390(v578, v1134);
        OUTLINED_FUNCTION_17_30(v619, &v1153);
        OUTLINED_FUNCTION_10_51();
        _ProtoVisualization_Chart.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v801 = OUTLINED_FUNCTION_0_78();
        v802(v801);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for VisualizationChart);
        v803 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFCCC(v803, v804);
        return sub_26A3C3484();
      case 0x29u:
        v658 = v1045;
        sub_26A3C3390(v578, v1045);
        OUTLINED_FUNCTION_17_30(v658, &v1068);
        OUTLINED_FUNCTION_10_51();
        _ProtoSummaryItem_Player.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v846 = OUTLINED_FUNCTION_0_78();
        v847(v846);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemPlayer);
        v848 = OUTLINED_FUNCTION_3_58();
        sub_26A3AF9CC(v848, v849);
        return sub_26A3C3484();
      case 0x2Au:
        v694 = v1066;
        sub_26A3C3390(v578, v1066);
        OUTLINED_FUNCTION_17_30(v694, &v1089);
        OUTLINED_FUNCTION_10_51();
        _ProtoSimpleItem_Player.redactedProto.getter(v695, v696, v697, v698, v699, v700, v701, v702, v948, v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v904 = OUTLINED_FUNCTION_0_78();
        v905(v904);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemPlayer);
        v906 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFCB4(v906, v907);
        return sub_26A3C3484();
      case 0x2Bu:
        v592 = v1060;
        sub_26A3C3390(v578, v1060);
        OUTLINED_FUNCTION_17_30(v592, &v1083);
        OUTLINED_FUNCTION_10_51();
        _ProtoSimpleItem_ReverseRich.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v735 = OUTLINED_FUNCTION_0_78();
        v736(v735);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemReverseRich);
        v737 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFBF4(v737, v738);
        return sub_26A3C3484();
      case 0x2Cu:
        v605 = v1084;
        sub_26A3C3390(v578, v1084);
        OUTLINED_FUNCTION_17_30(v605, &v1107);
        OUTLINED_FUNCTION_10_51();
        _ProtoSecondaryHeader_Emphasized.redactedProto.getter(v606);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v774 = OUTLINED_FUNCTION_0_78();
        v775(v774);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SecondaryHeaderEmphasized);
        v776 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFAD4(v776, v777);
        return sub_26A3C3484();
      case 0x2Du:
        sub_26A3C3390(v578, v1158);
        v1164 = type metadata accessor for SummaryItemSwitch(0);
        v1165 = &protocol witness table for SummaryItemSwitch;
        v1166 = sub_26A3C3440();
        v681 = __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_31_20(v681);
        __swift_project_boxed_opaque_existential_1(&v1163, v1164);
        v682 = OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_32_20(v682, v683, v684);
LABEL_93:
        sub_26A3C3484();
        return sub_26A1EDCF8(&v1163);
      case 0x2Eu:
        v726 = v1051;
        sub_26A3C3390(v578, v1051);
        OUTLINED_FUNCTION_17_30(v726, &v1074);
        OUTLINED_FUNCTION_10_51();
        _ProtoSystemText_ClarificationTitle.redactedProto.getter(v727);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v940 = OUTLINED_FUNCTION_0_78();
        v941(v940);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SystemTextClarificationTitle);
        v942 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFC84(v942, v943);
        return sub_26A3C3484();
      case 0x2Fu:
        v597 = v1137;
        sub_26A3C3390(v578, v1137);
        OUTLINED_FUNCTION_17_30(v597, &v1157);
        OUTLINED_FUNCTION_10_51();
        _ProtoVisualization_Image.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v746 = OUTLINED_FUNCTION_0_78();
        v747(v746);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for VisualizationImage);
        v748 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFE34(v748, v749);
        return sub_26A3C3484();
      case 0x30u:
        v612 = v1138;
        sub_26A3C3390(v578, v1138);
        OUTLINED_FUNCTION_17_30(v612, &v1160);
        OUTLINED_FUNCTION_10_51();
        _ProtoVisualization_Map.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v782 = OUTLINED_FUNCTION_0_78();
        v783(v782);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for VisualizationMap);
        v784 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFC9C(v784, v785);
        return sub_26A3C3484();
      case 0x31u:
        v615 = v1140;
        sub_26A3C3390(v578, v1140);
        OUTLINED_FUNCTION_17_30(v615, &v1162);
        v616 = v1015;
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_33_18();
        sub_26A424954();
        if (v2)
        {
          OUTLINED_FUNCTION_15_39();
          v617(v616);
          OUTLINED_FUNCTION_27_26();
        }

        else
        {
          OUTLINED_FUNCTION_4_50();
          v794(v616);
          OUTLINED_FUNCTION_27_26();
          OUTLINED_FUNCTION_38_17(&protocol witness table for ButtonContainer);
          v795 = OUTLINED_FUNCTION_3_58();
          sub_26A3AFB94(v795, v796);
        }

        return sub_26A3C3484();
      case 0x32u:
        v591 = v1143;
        sub_26A3C3390(v578, v1143);
        OUTLINED_FUNCTION_17_30(v591, &v1165);
        OUTLINED_FUNCTION_10_51();
        sub_26A2B3BB8();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v731 = OUTLINED_FUNCTION_0_78();
        v732(v731);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for IntentsUIStandard);
        v733 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFC3C(v733, v734);
        return sub_26A3C3484();
      case 0x33u:
        v728 = v1146;
        sub_26A3C3390(v578, v1146);
        OUTLINED_FUNCTION_17_30(v728, &v1168);
        OUTLINED_FUNCTION_10_51();
        _ProtoSash_Standard.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v944 = OUTLINED_FUNCTION_0_78();
        v945(v944);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SashStandard);
        v946 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFD44(v946, v947);
        return sub_26A3C3484();
      case 0x34u:
        v725 = v1148;
        sub_26A3C3390(v578, v1148);
        OUTLINED_FUNCTION_17_30(v725, &v1170);
        OUTLINED_FUNCTION_10_51();
        HeroHeader.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v936 = OUTLINED_FUNCTION_0_78();
        v937(v936);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for HeroHeader);
        v938 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFCFC(v938, v939);
        return sub_26A3C3484();
      case 0x35u:
        v594 = v1149;
        sub_26A3C3390(v578, v1149);
        OUTLINED_FUNCTION_17_30(v594, &v1171);
        v595 = v1016;
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_33_18();
        sub_26A424954();
        if (v2)
        {
          OUTLINED_FUNCTION_15_39();
          v596(v595);
          OUTLINED_FUNCTION_26_33();
        }

        else
        {
          OUTLINED_FUNCTION_4_50();
          v743(v595);
          OUTLINED_FUNCTION_26_33();
          OUTLINED_FUNCTION_38_17(&protocol witness table for HorizontalListStandard);
          v744 = OUTLINED_FUNCTION_3_58();
          sub_26A3AFBC4(v744, v745);
        }

        return sub_26A3C3484();
      case 0x36u:
        v722 = v1087;
        sub_26A3C3390(v578, v1087);
        OUTLINED_FUNCTION_17_30(v722, &v1110);
        OUTLINED_FUNCTION_10_51();
        _ProtoSectionHeader_Standard.redactedProto.getter(v723);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v928 = OUTLINED_FUNCTION_0_78();
        v929(v928);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SectionHeaderStandard);
        v930 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFE7C(v930, v931);
        return sub_26A3C3484();
      case 0x37u:
        v724 = v1090;
        sub_26A3C3390(v578, v1090);
        OUTLINED_FUNCTION_17_30(v724, &v1113);
        OUTLINED_FUNCTION_10_51();
        _ProtoSectionHeader_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v932 = OUTLINED_FUNCTION_0_78();
        v933(v932);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SectionHeaderRich);
        v934 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFD2C(v934, v935);
        return sub_26A3C3484();
      case 0x38u:
        v598 = v1153;
        sub_26A3C3390(v578, v1153);
        sub_26A3C33E8(v598, v1151);
        sub_26A2B2C30();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v750 = OUTLINED_FUNCTION_0_78();
        v751(v750);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for KeyValueStandard);
        v752 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFC24(v752, v753);
        return sub_26A3C3484();
      case 0x39u:
        v692 = v1156;
        sub_26A3C3390(v578, v1156);
        sub_26A3C33E8(v692, v1154);
        _ProtoTertiaryHeader_Standard.redactedProto.getter(v1152);
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        v693 = v1168;
        sub_26A424954();
        if (v693)
        {
          goto LABEL_124;
        }

        v900 = OUTLINED_FUNCTION_0_78();
        v901(v900);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for TertiaryHeaderStandard);
        v902 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFA44(v902, v903);
        return sub_26A3C3484();
      case 0x3Au:
        v613 = v1069;
        sub_26A3C3390(v578, v1069);
        OUTLINED_FUNCTION_17_30(v613, &v1092);
        OUTLINED_FUNCTION_10_51();
        _ProtoSimpleItem_RichSearchResult.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
          goto LABEL_124;
        }

        v786 = OUTLINED_FUNCTION_0_78();
        v787(v786);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemRichSearchResult);
        v788 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFBDC(v788, v789);
        return sub_26A3C3484();
      case 0x3Bu:
        v703 = v1048;
        sub_26A3C3390(v578, v1048);
        OUTLINED_FUNCTION_17_30(v703, &v1071);
        OUTLINED_FUNCTION_10_51();
        _ProtoSummaryItem_SwitchV2.redactedProto.getter();
        OUTLINED_FUNCTION_22_28();
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31();
        if (v2)
        {
LABEL_124:
          v729 = OUTLINED_FUNCTION_9_42();
          v730(v729);
          sub_26A3C3484();
LABEL_125:
          sub_26A3C3484();
        }

        else
        {
          v908 = OUTLINED_FUNCTION_0_78();
          v909(v908);
          OUTLINED_FUNCTION_20_30();
          sub_26A3C3484();
          OUTLINED_FUNCTION_29_23();
          OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemSwitchV2);
          v910 = OUTLINED_FUNCTION_3_58();
          sub_26A3AFB34(v910, v911);
        }

        break;
      default:
        v588 = v1018;
        sub_26A3C3390(v578, v1018);
        OUTLINED_FUNCTION_17_30(v588, &v1028);
        OUTLINED_FUNCTION_33_18();
        CustomCanvas.jsonString(redacted:)(v589);
        if (v590)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for CustomCanvas);
        v836 = OUTLINED_FUNCTION_3_58();
        sub_26A3AFC6C(v836, v837);
        return sub_26A3C3484();
    }

    return sub_26A3C3484();
  }
}

Swift::String __swiftcall ComponentGroupReference.description(redacted:)(Swift::Bool redacted)
{
  v2 = *v1;
  v3 = v1[1];
  sub_26A424EF4();

  MEMORY[0x26D65BA70](v2, v3);
  MEMORY[0x26D65BA70](10530, 0xE200000000000000);
  v4 = 0xD00000000000001DLL;
  v5 = 0x800000026A448550;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

void sub_26A3C1E64(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _ProtoResponse.Component(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_8();
  v35 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  OUTLINED_FUNCTION_13_34();
  sub_26A3C33E8(v1, a1);
  v9 = *(a1 + 16);
  v10 = *(v9 + 16);
  if (v10)
  {
    v34 = a1;
    v43 = MEMORY[0x277D84F90];
    sub_26A10D258(0, v10, 0);
    v11 = 0;
    v12 = 0;
    v39 = v43;
    v36 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v37 = v9 + v36;
    v13 = v35;
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_11_37();
      sub_26A3C33E8(v14, v13);
      sub_26A3BA6DC(v40);
      if (v12)
      {
        break;
      }

      v38 = 0;
      v15 = v9;
      v16 = v4;
      v18 = v41;
      v17 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      (*(v17 + 8))(v18, v17);
      OUTLINED_FUNCTION_20_30();
      sub_26A3C3484();
      __swift_destroy_boxed_opaque_existential_1(v40);
      v19 = v39;
      v43 = v39;
      v21 = *(v39 + 16);
      v20 = *(v39 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26A10D258(v20 > 1, v21 + 1, 1);
        v13 = v35;
        v19 = v43;
      }

      ++v11;
      *(v19 + 16) = v21 + 1;
      v39 = v19;
      OUTLINED_FUNCTION_11_37();
      sub_26A3C3390(v8, v22);
      v4 = v16;
      v9 = v15;
      v12 = v38;
      if (v10 == v11)
      {

        a1 = v34;
        v32 = v39;
        goto LABEL_13;
      }
    }

    sub_26A3C3484();

    if (qword_28036C5A0 == -1)
    {
      goto LABEL_11;
    }

LABEL_16:
    OUTLINED_FUNCTION_0_34();
    swift_once();
LABEL_11:
    v23 = sub_26A424AE4();
    __swift_project_value_buffer(v23, qword_2803A8950);
    v24 = v12;
    v25 = sub_26A424AD4();
    v26 = sub_26A424E04();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40[0] = v28;
      *v27 = 136446210;
      swift_getErrorValue();
      v29 = sub_26A4254B4();
      v31 = sub_26A0E8788(v29, v30, v40);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_26A0B8000, v25, v26, "Unable to redact component %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x26D65C950](v28, -1, -1);
      MEMORY[0x26D65C950](v27, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
LABEL_13:
    *(a1 + 16) = v32;
  }
}

uint64_t ComponentGroup.init(_:components:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_26A3C249C(a1, a2, a3, sub_26A3C2464);
}

{
  return sub_26A3C249C(a1, a2, a3, sub_26A3C34D8);
}

uint64_t sub_26A3C2278(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for _ProtoResponse.Component(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  *a1 = a2;
  a1[1] = a3;
  v13 = *(a4 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v21 = v4;
    v25 = MEMORY[0x277D84F90];
    sub_26A10D258(0, v13, 0);
    v14 = v25;
    v15 = a4 + 32;
    do
    {
      sub_26A0E5D68(v15, v22);
      v16 = v23;
      v17 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      (*(v17 + 8))(v16, v17);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v25 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26A10D258(v18 > 1, v19 + 1, 1);
        v14 = v25;
      }

      *(v14 + 16) = v19 + 1;
      sub_26A3C3390(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19);
      v15 += 40;
      --v13;
    }

    while (v13);
  }

  a1[2] = v14;
  return result;
}

uint64_t sub_26A3C249C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoResponse.Group(0);
  OUTLINED_FUNCTION_12_32();
  sub_26A3C3440();
  sub_26A4249C4();
}

Swift::String __swiftcall ComponentGroup.description(redacted:)(Swift::Bool redacted)
{
  v2 = v1;
  v4 = type metadata accessor for ComponentGroup(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC88, &qword_26A442940);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = v41 - v13;
  sub_26A3C33E8(v2, v10);
  if (redacted)
  {
    sub_26A3C1E64(v7);
  }

  else
  {
    sub_26A3C33E8(v10, v7);
  }

  sub_26A3C3390(v7, v14);
  v14[*(v11 + 32)] = redacted;
  sub_26A3C3484();
  *&v14[*(v11 + 28)] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  sub_26A0F7E08(KeyPath, 25705, 0xE200000000000000, 0, v16, v17, v18, v19, v41[0], v41[1]);

  sub_26A31BF28();
  v26 = sub_26A3BA590(v20, v14, v21, v22, v23, v24, v25);

  sub_26A3A2BE4(v26, 0, 0, 0);

  sub_26A0FFBD0(v27, v28, v29, v30, v31, v32, v33);
  v35 = v34;
  v37 = v36;
  sub_26A13440C();
  v38 = v35;
  v39 = v37;
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t type metadata accessor for ComponentGroup(uint64_t a1)
{
  result = qword_280373830;
  if (!qword_280373830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static ComponentGroup.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (sub_26A425354() & 1) != 0)
  {
    sub_26A0D887C(a1[2], a2[2]);
    if (v5)
    {
      type metadata accessor for _ProtoResponse.Group(0);
      sub_26A424794();
      sub_26A3C3440();
      if (sub_26A424B64())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t ComponentGroup.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoResponse.Group(0);
  OUTLINED_FUNCTION_12_32();
  sub_26A3C3440();

  return sub_26A424B44();
}

uint64_t ComponentGroup.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoResponse.Group(0);
  OUTLINED_FUNCTION_12_32();
  sub_26A3C3440();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3C29C8(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoResponse.Group(0);
  sub_26A3C3440();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3C2A7C(uint64_t a1)
{
  v2 = sub_26A3C2C20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A3C2AB8(uint64_t a1)
{
  v2 = sub_26A3C2C20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComponentGroupReference.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373810, &qword_26A442970);
  OUTLINED_FUNCTION_24();
  v4 = v3;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A3C2C20();
  sub_26A425594();
  sub_26A425114();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_26A3C2C20()
{
  result = qword_280373818;
  if (!qword_280373818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373818);
  }

  return result;
}

uint64_t ComponentGroupReference.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373820, &qword_26A442978);
  OUTLINED_FUNCTION_24();
  v7 = v6;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A3C2C20();
  sub_26A425574();
  if (!v2)
  {
    v11 = sub_26A425034();
    v13 = v12;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ComponentGroupReference.componentProto.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  v6 = type metadata accessor for _ProtoResponse.Component(0);

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v7 = *(v6 + 24);
  v8 = type metadata accessor for _ProtoSeparators(0);
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  sub_26A13440C();
  *a1 = v4;
  a1[1] = v3;
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
}

uint64_t ComponentGroupReference.asSection()()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = &type metadata for ComponentGroupReference;
  *(inited + 64) = &protocol witness table for ComponentGroupReference;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  swift_beginAccess();

  sub_26A10BF5C(v4);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A3C3440();
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A3C30F0(uint64_t a1)
{
  result = type metadata accessor for _ProtoResponse.Group(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ComponentGroupReference.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_26A3C321C()
{
  result = qword_280373840;
  if (!qword_280373840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373840);
  }

  return result;
}

unint64_t sub_26A3C3274()
{
  result = qword_280373848;
  if (!qword_280373848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373848);
  }

  return result;
}

unint64_t sub_26A3C32CC()
{
  result = qword_280373850;
  if (!qword_280373850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373850);
  }

  return result;
}

uint64_t sub_26A3C3320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A3C3390(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return a2;
}

uint64_t sub_26A3C33E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return a2;
}

unint64_t sub_26A3C3440()
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

uint64_t sub_26A3C3484()
{
  OUTLINED_FUNCTION_14_4();
  v1(0);
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_17_30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_26A3C33E8(a1, v3);
}

uint64_t OUTLINED_FUNCTION_18_31()
{

  return sub_26A424954();
}

uint64_t OUTLINED_FUNCTION_26_33()
{

  return sub_26A3C3484();
}

uint64_t OUTLINED_FUNCTION_27_26()
{

  return sub_26A3C3484();
}

uint64_t OUTLINED_FUNCTION_29_23()
{

  return sub_26A3C3484();
}

uint64_t OUTLINED_FUNCTION_31_20(uint64_t a1)
{

  return sub_26A3C33E8(v1, a1);
}

uint64_t OUTLINED_FUNCTION_32_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  return sub_26A3451EC(a1, a2, v3, a3);
}

void sub_26A3C36AC(char *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[8] == 1)
  {
    v3 = *a1;
  }

  else
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v4 = sub_26A424AE4();
    __swift_project_value_buffer(v4, qword_2803A8950);
    v5 = sub_26A424AD4();
    v6 = sub_26A424E04();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26A0B8000, v5, v6, "Unrecognized CornerRoundingMode, defaulting to 'default'", v7, 2u);
      MEMORY[0x26D65C950](v7, -1, -1);
    }

    v3 = 0;
  }

  *a2 = v3;
}

uint64_t ImageElement.CornerRoundingMode.description.getter()
{
  v1 = 0x64656C6261736964;
  if (*v0 != 1)
  {
    v1 = 0x656C63726963;
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

unint64_t ImageElement.CornerRoundingMode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_26A3C381C()
{
  result = qword_280373858;
  if (!qword_280373858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373858);
  }

  return result;
}

uint64_t sub_26A3C3888@<X0>(uint64_t *a1@<X8>)
{
  result = ImageElement.CornerRoundingMode.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s18CornerRoundingModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

Swift::String __swiftcall SummaryItemButton.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v99 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v107 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v106 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42();
  v100 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v14);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42();
  v104 = v16;
  v101 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v102 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  v21 = OUTLINED_FUNCTION_41(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_51_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_48();
  v103 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v24);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  v27 = &v98 - v26;
  v28 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v34 = OUTLINED_FUNCTION_41(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8();
  v105 = v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v98 - v37;
  v39 = type metadata accessor for SummaryItemButton(0);
  v40 = OUTLINED_FUNCTION_41(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v41);
  v43 = &v98 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD30, &unk_26A426810);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v45);
  v47 = &v98 - v46;
  OUTLINED_FUNCTION_26_34();
  sub_26A3C82F8();
  if (v4)
  {
    _ProtoSummaryItem_Button.redactedProto.getter();
  }

  else
  {
    sub_26A3C82F8();
  }

  OUTLINED_FUNCTION_72_9();
  v47[*(v44 + 32)] = v4 & 1;
  sub_26A3C7EC0(v43, type metadata accessor for SummaryItemButton);
  v48 = MEMORY[0x277D84F90];
  *&v47[*(v44 + 28)] = MEMORY[0x277D84F90];
  v49 = *&v47[*(type metadata accessor for _ProtoSummaryItem_Button(0) + 20)];
  OUTLINED_FUNCTION_142(v49 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v109);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v27, 1, v28);
  if (v50)
  {
    *v32 = v48;
    *(v32 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v51 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v51);
    OUTLINED_FUNCTION_37(v27, 1, v28);
    v58 = v102;
    if (!v50)
    {
      sub_26A0E48F0(v27, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3C834C();
    v58 = v102;
  }

  sub_26A3C834C();
  v59 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v59);
  OUTLINED_FUNCTION_222();
  sub_26A106F8C(v38, v60 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  sub_26A0E48F0(v38, &qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_142(v49 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button1, &v108);
  v61 = v104;
  sub_26A10FD9C();
  v62 = OUTLINED_FUNCTION_116();
  v63 = v101;
  OUTLINED_FUNCTION_37(v62, v64, v101);
  if (v50)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v65 = *(v63 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    *(v58 + v65) = qword_280371710;
    v66 = OUTLINED_FUNCTION_116();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, v67, v63);

    if (EnumTagSinglePayload != 1)
    {
      sub_26A0E48F0(v61, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    sub_26A3C834C();
  }

  v69 = v103;
  sub_26A3C834C();
  v70 = type metadata accessor for Button(0);
  __swift_storeEnumTagSinglePayload(v69, 0, 1, v70);
  OUTLINED_FUNCTION_49_13();
  sub_26A106FDC();
  OUTLINED_FUNCTION_162_0(v69);
  SummaryItemButton.button2.getter();
  OUTLINED_FUNCTION_49_13();
  sub_26A106FDC();
  OUTLINED_FUNCTION_162_0(v2);
  SummaryItemButton.button3.getter();
  OUTLINED_FUNCTION_49_13();
  sub_26A106FDC();
  OUTLINED_FUNCTION_162_0(v2);
  v71 = v100;
  SummaryItemButton.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106FB4(v71, v72 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v71);
  SummaryItemButton.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106FB4(v71, v73 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v71);
  v74 = v105;
  SummaryItemButton.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106F8C(v74, v75 & 0xFFFF0000FFFFFFFFLL | 0x3400000000, 0xE500000000000000);
  sub_26A0E48F0(v74, &qword_28036CB30, &qword_26A426480);
  v76 = v106;
  SummaryItemButton.thumbnail.getter();
  sub_26A106F64(v76, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v76, &qword_28036CB20, &unk_26A426470);
  v77 = v107;
  SummaryItemButton.action.getter();
  sub_26A106E70();
  sub_26A0E48F0(v77, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7BB0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v79, v80, v81, v82, v98, v99);

  v83 = swift_getKeyPath();
  sub_26A0F8544(v83, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v84, v85, v86, v87, v98, v99);

  sub_26A0FDCF8(v88, v89, v90, v91, v92, v93, v94);
  sub_26A0E48F0(v47, &qword_28036CD30, &unk_26A426810);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v96;
  result._countAndFlagsBits = v95;
  return result;
}

uint64_t type metadata accessor for SummaryItemButton(uint64_t a1)
{
  result = qword_280373860;
  if (!qword_280373860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryItemButton.text1.getter()
{
  v2 = OUTLINED_FUNCTION_104();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = type metadata accessor for _ProtoSummaryItem_Button(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v12 + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v26);
  OUTLINED_FUNCTION_54_1();
  v13 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v13, v14, v7);
  if (v15)
  {
    *v11 = MEMORY[0x277D84F90];
    *(v11 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
    v23 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v23, v24, v7);
    if (!v15)
    {
      sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3C834C();
  }

  return sub_26A3C834C();
}

uint64_t SummaryItemButton.button1.getter()
{
  v2 = OUTLINED_FUNCTION_104();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoButton(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = type metadata accessor for _ProtoSummaryItem_Button(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v12 + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button1, v21);
  OUTLINED_FUNCTION_54_1();
  v13 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v13, v14, v7);
  if (v15)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = *(v7 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    *(v11 + v16) = qword_280371710;
    v17 = OUTLINED_FUNCTION_107();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, v18, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_26A0E48F0(v1, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    sub_26A3C834C();
  }

  return sub_26A3C834C();
}

void sub_26A3C4634()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v22 = v9 - v8;
  v10 = OUTLINED_FUNCTION_104();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v13 = OUTLINED_FUNCTION_41(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_84();
  type metadata accessor for _ProtoSummaryItem_Button(v15);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v16 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v16, v17, &unk_26A4385C0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v18)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v19 = *(v6 + 20);
      if (qword_28036C428 != -1)
      {
        OUTLINED_FUNCTION_60_4(&qword_28036C428);
      }

      *(v22 + v19) = qword_280371710;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v6);

      if (EnumTagSinglePayload != 1)
      {
        sub_26A0E48F0(v1, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      sub_26A3C834C();
    }

    sub_26A3C834C();
    v3 = 0;
  }

  v21 = type metadata accessor for Button(0);
  __swift_storeEnumTagSinglePayload(v5, v3, 1, v21);
  OUTLINED_FUNCTION_75();
}

void sub_26A3C4844()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoMultilineTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v7 = OUTLINED_FUNCTION_104();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_84();
  type metadata accessor for _ProtoSummaryItem_Button(v12);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v13 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v13, v14, &unk_26A4273F0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v15)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v16 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
      OUTLINED_FUNCTION_38_0();
      if (!v15)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_73_14();
    }

    OUTLINED_FUNCTION_72_9();
    v3 = 0;
  }

  v23 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v24, v3, 1, v23);
  OUTLINED_FUNCTION_75();
}

void SummaryItemButton.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_104();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_84();
  type metadata accessor for _ProtoSummaryItem_Button(v11);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v12 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v12, v13, &unk_26A425BF0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v14)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v15 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
      OUTLINED_FUNCTION_38_0();
      if (!v14)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_73_14();
    }

    OUTLINED_FUNCTION_72_9();
    v2 = 0;
  }

  v22 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v23, v2, 1, v22);
  OUTLINED_FUNCTION_75();
}

void SummaryItemButton.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoVisualProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_104();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_84();
  type metadata accessor for _ProtoSummaryItem_Button(v11);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v12 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v12, v13, &unk_26A426430);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v14)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v15 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
      OUTLINED_FUNCTION_38_0();
      if (!v14)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_73_14();
    }

    OUTLINED_FUNCTION_72_9();
    v2 = 0;
  }

  v22 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v23, v2, 1, v22);
  OUTLINED_FUNCTION_75();
}

void SummaryItemButton.action.getter()
{
  OUTLINED_FUNCTION_76();
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v7 = OUTLINED_FUNCTION_104();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_84();
  type metadata accessor for _ProtoSummaryItem_Button(v12);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v13 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v13, v14, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v15)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v15)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_73_14();
    }

    sub_26A3C834C();
    v2 = 0;
  }

  v16 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v17, v2, 1, v16);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemButton.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Button(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t SummaryItemButton.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Button(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoSummaryItem_Button.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v224 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v10);
  v222 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
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
  v221 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v25 = OUTLINED_FUNCTION_41(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v30);
  v220 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_12();
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
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v39 = OUTLINED_FUNCTION_41(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v45);
  v46 = OUTLINED_FUNCTION_84();
  v47 = type metadata accessor for _ProtoTextProperty(v46);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  MEMORY[0x28223BE20](v51);
  v53 = &v207 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v55 = OUTLINED_FUNCTION_41(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v58);
  v60 = &v207 - v59;
  MEMORY[0x28223BE20](v61);
  v63 = &v207 - v62;
  OUTLINED_FUNCTION_10_52();
  sub_26A3C82F8();
  v64 = *(type metadata accessor for _ProtoSummaryItem_Button(0) + 20);
  v225 = v2;
  v226 = v64;
  v65 = *(v2 + v64);
  OUTLINED_FUNCTION_142(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v236);
  sub_26A10FD9C();
  v223 = v47;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v47);
  sub_26A0E48F0(v63, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v67 = OUTLINED_FUNCTION_116();
    v68 = v223;
    OUTLINED_FUNCTION_37(v67, v69, v223);
    if (v70)
    {
      *v53 = MEMORY[0x277D84F90];
      *(v53 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_55_14(v71, v72, v73);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, EnumTagSinglePayload);
      v77 = OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_37(v77, v78, v68);
      v79 = v225;
      if (!v70)
      {
        sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3C834C();
      v79 = v225;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_27_27();
    sub_26A3C7EC0(v53, v80);
    v81 = v226;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v79 + v81);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v83 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v83);
      OUTLINED_FUNCTION_25_30();
      v65 = v84;
      *(v79 + v81) = v84;
    }

    OUTLINED_FUNCTION_129();
    sub_26A3C834C();
    v85 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v68);
    OUTLINED_FUNCTION_211(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v235);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button1, v235);
  sub_26A10FD9C();
  v88 = v220;
  LODWORD(v89) = __swift_getEnumTagSinglePayload(v0, 1, v220);
  OUTLINED_FUNCTION_162_0(v0);
  if (v89 != 1)
  {
    v90 = v207;
    sub_26A10FD9C();
    v91 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v91, v92, v88);
    v93 = v226;
    if (v70)
    {
      v96 = v208;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_47_18();
      LODWORD(v89) = v209;
      if (!v70)
      {
        OUTLINED_FUNCTION_60_4(&qword_28036C428);
      }

      *(v96 + v65) = qword_280371710;
      v94 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_57_14(v94, v95);
      if (v65 != 1)
      {
        sub_26A0E48F0(v90, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      v96 = v208;
      sub_26A3C834C();
      LODWORD(v89) = v209;
    }

    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_8_40();
    sub_26A3C7EC0(v96, v97);
    v98 = v225;
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v98 + v93);
    if ((v99 & 1) == 0)
    {
      v100 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v100);
      OUTLINED_FUNCTION_25_30();
      v65 = v101;
      *(v98 + v93) = v101;
    }

    OUTLINED_FUNCTION_129();
    sub_26A3C834C();
    v102 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v88);
    OUTLINED_FUNCTION_211(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button1, v234);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button2, v234);
  OUTLINED_FUNCTION_19_27();
  v105 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v105, v106, v88);
  OUTLINED_FUNCTION_23_37();
  v107 = v225;
  if (v89 != 1)
  {
    v108 = v210;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v108, 1, v88);
    if (v70)
    {
      v89 = v211;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_47_18();
      if (!v70)
      {
        OUTLINED_FUNCTION_60_4(&qword_28036C428);
      }

      *(v89 + v65) = qword_280371710;
      OUTLINED_FUNCTION_57_14(v108, 1);
      if (v65 != 1)
      {
        sub_26A0E48F0(v108, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      v89 = v211;
      sub_26A3C834C();
    }

    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_8_40();
    sub_26A3C7EC0(v89, v109);
    v110 = v226;
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v107 + v110);
    if ((v111 & 1) == 0)
    {
      v112 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v112);
      OUTLINED_FUNCTION_25_30();
      v65 = v113;
      *(v107 + v110) = v113;
    }

    OUTLINED_FUNCTION_129();
    sub_26A3C834C();
    v114 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v88);
    OUTLINED_FUNCTION_211(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button2, v233);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button3, v233);
  v117 = &unk_26A4385C0;
  OUTLINED_FUNCTION_19_27();
  v118 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v118, v119, v88);
  OUTLINED_FUNCTION_23_37();
  if (v89 == 1)
  {
    v120 = v221;
  }

  else
  {
    v121 = v212;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v121, 1, v88);
    if (v70)
    {
      v117 = v213;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_47_18();
      LODWORD(v89) = v214;
      if (!v70)
      {
        OUTLINED_FUNCTION_60_4(&qword_28036C428);
      }

      *&v117[v65] = qword_280371710;
      OUTLINED_FUNCTION_57_14(v121, 1);
      v120 = v221;
      if (v65 != 1)
      {
        sub_26A0E48F0(v121, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_129();
      sub_26A3C834C();
      v120 = v221;
      LODWORD(v89) = v214;
    }

    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_8_40();
    sub_26A3C7EC0(v117, v122);
    v123 = v226;
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v107 + v123);
    if ((v124 & 1) == 0)
    {
      v125 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v125);
      OUTLINED_FUNCTION_25_30();
      v65 = v126;
      *(v107 + v123) = v126;
    }

    OUTLINED_FUNCTION_129();
    sub_26A3C834C();
    v127 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v88);
    OUTLINED_FUNCTION_211(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button3, v232);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v232);
  OUTLINED_FUNCTION_19_27();
  v130 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v130, v131, v120);
  OUTLINED_FUNCTION_23_37();
  v132 = v226;
  if (v89 != 1)
  {
    OUTLINED_FUNCTION_129();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(&unk_26A4273F0);
    if (v70)
    {
      OUTLINED_FUNCTION_37_15(MEMORY[0x277D84F90]);
      v133 = OUTLINED_FUNCTION_44_0(*(v120 + 32));
      OUTLINED_FUNCTION_55_14(v133, v134, v135);
      v136 = OUTLINED_FUNCTION_44_0(*(v120 + 36));
      __swift_storeEnumTagSinglePayload(v136, v137, v138, &qword_28036CAE0);
      OUTLINED_FUNCTION_17_3(&unk_26A4273F0);
      if (!v70)
      {
        sub_26A0E48F0(&unk_26A4273F0, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_17();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_34_15();
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v107 + v132);
    if ((v139 & 1) == 0)
    {
      v140 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v140);
      OUTLINED_FUNCTION_25_30();
      OUTLINED_FUNCTION_66_11(v141);
    }

    OUTLINED_FUNCTION_129();
    sub_26A3C834C();
    v142 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v142, v143, v144, v120);
    OUTLINED_FUNCTION_211(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v231);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v231);
  OUTLINED_FUNCTION_19_27();
  v145 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v145, v146, v120);
  OUTLINED_FUNCTION_23_37();
  if (v89 == 1)
  {
    v147 = v223;
  }

  else
  {
    OUTLINED_FUNCTION_129();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(&unk_26A4273F0);
    v147 = v223;
    if (v70)
    {
      OUTLINED_FUNCTION_37_15(MEMORY[0x277D84F90]);
      v148 = OUTLINED_FUNCTION_44_0(*(v120 + 32));
      OUTLINED_FUNCTION_55_14(v148, v149, v150);
      v151 = OUTLINED_FUNCTION_44_0(*(v120 + 36));
      __swift_storeEnumTagSinglePayload(v151, v152, v153, &qword_28036CAE0);
      OUTLINED_FUNCTION_17_3(&unk_26A4273F0);
      if (!v70)
      {
        sub_26A0E48F0(&unk_26A4273F0, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_17();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_34_15();
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v107 + v132);
    if ((v154 & 1) == 0)
    {
      v155 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v155);
      OUTLINED_FUNCTION_25_30();
      OUTLINED_FUNCTION_66_11(v156);
    }

    OUTLINED_FUNCTION_129();
    sub_26A3C834C();
    v157 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v157, v158, v159, v120);
    OUTLINED_FUNCTION_211(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v230);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v230);
  OUTLINED_FUNCTION_19_27();
  v160 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v160, v161, v147);
  v162 = v147;
  OUTLINED_FUNCTION_23_37();
  if (v147 == 1)
  {
    v163 = v224;
    v164 = v222;
  }

  else
  {
    v165 = v215;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v165);
    if (v70)
    {
      OUTLINED_FUNCTION_37_15(MEMORY[0x277D84F90]);
      v166 = OUTLINED_FUNCTION_44_0(*(v162 + 32));
      v163 = v224;
      __swift_storeEnumTagSinglePayload(v166, v167, v168, v224);
      v169 = OUTLINED_FUNCTION_44_0(*(v162 + 36));
      __swift_storeEnumTagSinglePayload(v169, v170, v171, v163);
      OUTLINED_FUNCTION_17_3(v165);
      if (!v70)
      {
        sub_26A0E48F0(v165, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_17();
      v163 = v224;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_27_27();
    sub_26A3C7EC0(v65, v172);
    v173 = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v107 + v132);
    if ((v173 & 1) == 0)
    {
      v174 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v174);
      OUTLINED_FUNCTION_25_30();
      OUTLINED_FUNCTION_66_11(v175);
    }

    v164 = v222;
    OUTLINED_FUNCTION_129();
    sub_26A3C834C();
    v176 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v176, v177, v178, v162);
    OUTLINED_FUNCTION_211(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v229);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, v229);
  OUTLINED_FUNCTION_30_15();
  v179 = v164;
  v180 = __swift_getEnumTagSinglePayload(v162, 1, v164);
  OUTLINED_FUNCTION_162_0(v162);
  if (v180 != 1)
  {
    OUTLINED_FUNCTION_129();
    sub_26A10FD9C();
    v181 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_37(v181, v182, v179);
    if (v70)
    {
      v65 = v216;
      *v216 = MEMORY[0x277D84F90];
      *(v65 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v183 = OUTLINED_FUNCTION_44_0(*(v179 + 32));
      __swift_storeEnumTagSinglePayload(v183, v184, v185, v163);
      v186 = OUTLINED_FUNCTION_44_0(*(v179 + 36));
      __swift_storeEnumTagSinglePayload(v186, v187, v188, v163);
      v189 = OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_37(v189, v190, v179);
      if (!v70)
      {
        sub_26A0E48F0(&unk_26A426430, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_17();
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A3C7EC0(v65, type metadata accessor for _ProtoVisualProperty);
    v191 = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v107 + v132);
    if ((v191 & 1) == 0)
    {
      v192 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v192);
      OUTLINED_FUNCTION_25_30();
      OUTLINED_FUNCTION_66_11(v193);
    }

    OUTLINED_FUNCTION_129();
    sub_26A3C834C();
    v194 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v194, v195, v196, v179);
    OUTLINED_FUNCTION_211(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, v228);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, v228);
  OUTLINED_FUNCTION_30_15();
  v197 = __swift_getEnumTagSinglePayload(v162, 1, v163);
  OUTLINED_FUNCTION_162_0(v162);
  if (v197 != 1)
  {
    v198 = v217;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v198, 1, v163);
    if (v70)
    {
      v65 = v218;
      *v218 = MEMORY[0x277D84F90];
      *(v65 + 8) = 0;
      *(v65 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v198, 1, v163);
      v199 = v219;
      if (!v70)
      {
        sub_26A0E48F0(v198, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_17();
      v199 = v219;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v199);
    sub_26A3C7EC0(v65, type metadata accessor for _ProtoActionProperty);
    v200 = swift_isUniquelyReferenced_nonNull_native();
    v201 = *(v107 + v132);
    if ((v200 & 1) == 0)
    {
      v202 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v202);
      sub_26A1B2A8C();
      v201 = v203;
      *(v107 + v132) = v203;
    }

    OUTLINED_FUNCTION_129();
    sub_26A3C834C();
    v204 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v204, v205, v206, v163);
    OUTLINED_FUNCTION_211(v201 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v227);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemButton.init(text1:button1:button2:button3:text2:text3:text4:thumbnail:action:componentName:linkIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for _ProtoSummaryItem_Button(0);
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a9;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  v42 = a13;
  OUTLINED_FUNCTION_9_43();
  v21 = sub_26A3C81D0(v19, v20, &protocol conformance descriptor for _ProtoSummaryItem_Button);
  OUTLINED_FUNCTION_59_9(sub_26A3C7EA8, v29, v22, v21);

  sub_26A0E48F0(a9, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a8, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_187_0(a6);
  OUTLINED_FUNCTION_187_0(a5);
  OUTLINED_FUNCTION_187_0(a4);
  OUTLINED_FUNCTION_187_0(a3);
  sub_26A3C7EC0(a2, type metadata accessor for Button);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A3C6804(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v122 = a8;
  v120 = a7;
  v117 = a6;
  v114 = a5;
  v111 = a3;
  v112 = a4;
  v110 = a1;
  v15 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v15 - 8);
  v108 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v17 - 8);
  v126 = &v95 - v18;
  v125 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v125);
  v102 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v95 - v21;
  v22 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v22 - 8);
  v107 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v24 - 8);
  v124 = &v95 - v25;
  v123 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v123);
  v100 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v101 = &v95 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v29 - 8);
  v121 = &v95 - v30;
  v31 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v31 - 8);
  v116 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v33 - 8);
  v119 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v113 = &v95 - v36;
  v115 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v115);
  v97 = &v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v106 = &v95 - v39;
  MEMORY[0x28223BE20](v40);
  v96 = &v95 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  MEMORY[0x28223BE20](v42 - 8);
  v109 = &v95 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v95 - v45;
  v47 = type metadata accessor for Button(0);
  MEMORY[0x28223BE20](v47);
  v104 = &v95 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v95 - v50;
  v52 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v52 - 8);
  v118 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v118);
  v99 = &v95 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v56 = &v95 - v55;
  v57 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = &v95 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a2[3];
  v61 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v60);
  (*(v61 + 8))(v60, v61);
  v105 = v59;
  sub_26A3C834C();
  v98 = v56;
  _ProtoSummaryItem_Button.text1.setter();
  sub_26A3C82F8();
  _ProtoSummaryItem_Button.button1.setter();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
  {
    sub_26A0E48F0(v46, &qword_28036CD38, &qword_26A437B70);
  }

  else
  {
    sub_26A3C834C();
    sub_26A3C82F8();
    _ProtoSummaryItem_Button.button2.setter();
    sub_26A3C7EC0(v51, type metadata accessor for Button);
  }

  v62 = v109;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v62, 1, v47) == 1)
  {
    sub_26A0E48F0(v62, &qword_28036CD38, &qword_26A437B70);
  }

  else
  {
    v63 = v104;
    sub_26A3C834C();
    sub_26A3C82F8();
    _ProtoSummaryItem_Button.button3.setter();
    sub_26A3C7EC0(v63, type metadata accessor for Button);
  }

  v64 = v115;
  sub_26A10FD9C();
  v65 = v128;
  if (v128)
  {
    v66 = v129;
    __swift_project_boxed_opaque_existential_1(&v127, v128);
    (*(v66 + 8))(v65, v66);
    v67 = v113;
    sub_26A3C834C();
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v64);
    __swift_destroy_boxed_opaque_existential_1(&v127);
    if (__swift_getEnumTagSinglePayload(v67, 1, v64) != 1)
    {
      v68 = v96;
      sub_26A3C834C();
      sub_26A3C82F8();
      _ProtoSummaryItem_Button.text2.setter();
      sub_26A3C7EC0(v68, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_12;
    }
  }

  else
  {
    sub_26A0E48F0(&v127, &qword_28036CB10, &unk_26A426460);
    v67 = v113;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v64);
  }

  sub_26A0E48F0(v67, &qword_28036CAE0, &unk_26A4273F0);
LABEL_12:
  sub_26A10FD9C();
  v69 = v128;
  if (v128)
  {
    v70 = v129;
    __swift_project_boxed_opaque_existential_1(&v127, v128);
    (*(v70 + 8))(v69, v70);
    v71 = v119;
    sub_26A3C834C();
    __swift_storeEnumTagSinglePayload(v71, 0, 1, v64);
    __swift_destroy_boxed_opaque_existential_1(&v127);
    if (__swift_getEnumTagSinglePayload(v71, 1, v64) != 1)
    {
      v72 = v97;
      sub_26A3C834C();
      sub_26A3C82F8();
      _ProtoSummaryItem_Button.text3.setter();
      sub_26A3C7EC0(v72, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_17;
    }
  }

  else
  {
    sub_26A0E48F0(&v127, &qword_28036CB10, &unk_26A426460);
    v71 = v119;
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v64);
  }

  sub_26A0E48F0(v71, &qword_28036CAE0, &unk_26A4273F0);
LABEL_17:
  sub_26A10FD9C();
  v73 = v128;
  if (v128)
  {
    v74 = v129;
    __swift_project_boxed_opaque_existential_1(&v127, v128);
    (*(v74 + 8))(v73, v74);
    v75 = v121;
    sub_26A3C834C();
    v76 = v118;
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v118);
    __swift_destroy_boxed_opaque_existential_1(&v127);
    if (__swift_getEnumTagSinglePayload(v75, 1, v76) != 1)
    {
      v77 = v99;
      sub_26A3C834C();
      sub_26A3C82F8();
      _ProtoSummaryItem_Button.text4.setter();
      sub_26A3C7EC0(v77, type metadata accessor for _ProtoTextProperty);
      goto LABEL_22;
    }
  }

  else
  {
    sub_26A0E48F0(&v127, &qword_28036CB08, &unk_26A428720);
    v75 = v121;
    __swift_storeEnumTagSinglePayload(v121, 1, 1, v118);
  }

  sub_26A0E48F0(v75, &qword_28036C7B8, &unk_26A425BF0);
LABEL_22:
  sub_26A10FD9C();
  v78 = v128;
  if (v128)
  {
    v79 = v129;
    __swift_project_boxed_opaque_existential_1(&v127, v128);
    (*(v79 + 8))(v78, v79);
    v80 = v124;
    sub_26A3C834C();
    v81 = v123;
    __swift_storeEnumTagSinglePayload(v80, 0, 1, v123);
    __swift_destroy_boxed_opaque_existential_1(&v127);
    if (__swift_getEnumTagSinglePayload(v80, 1, v81) != 1)
    {
      v82 = v101;
      sub_26A3C834C();
      sub_26A3C82F8();
      _ProtoSummaryItem_Button.thumbnail.setter();
      sub_26A3C7EC0(v82, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_27;
    }
  }

  else
  {
    sub_26A0E48F0(&v127, &qword_28036CB00, &unk_26A426450);
    v80 = v124;
    __swift_storeEnumTagSinglePayload(v124, 1, 1, v123);
  }

  sub_26A0E48F0(v80, &qword_28036CAE8, &unk_26A426430);
LABEL_27:
  sub_26A10FD9C();
  v83 = v128;
  if (v128)
  {
    v84 = v129;
    __swift_project_boxed_opaque_existential_1(&v127, v128);
    (*(v84 + 8))(v83, v84);
    v85 = v126;
    sub_26A3C834C();
    v86 = v125;
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v125);
    __swift_destroy_boxed_opaque_existential_1(&v127);
    if (__swift_getEnumTagSinglePayload(v85, 1, v86) != 1)
    {
      v87 = v103;
      sub_26A3C834C();
      sub_26A3C82F8();
      _ProtoSummaryItem_Button.action.setter();
      sub_26A3C7EC0(v87, type metadata accessor for _ProtoActionProperty);
      goto LABEL_32;
    }
  }

  else
  {
    sub_26A0E48F0(&v127, &qword_28036CAF8, &unk_26A426D30);
    v85 = v126;
    __swift_storeEnumTagSinglePayload(v126, 1, 1, v125);
  }

  sub_26A0E48F0(v85, &off_28036C7C0, &off_26A427400);
LABEL_32:

  result = _ProtoSummaryItem_Button.componentName.setter(a11, a12, v88, v89, v90);
  if (a14)
  {

    return _ProtoSummaryItem_Button.linkIdentifier.setter(a13, a14, v92, v93, v94);
  }

  return result;
}

void SummaryItemButton.init(text1:button1:button2:button3:text2:text3:thumbnail:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_76();
  v46 = v25;
  v47 = v26;
  v44 = v28;
  v45 = v27;
  v48 = v29;
  OUTLINED_FUNCTION_62_13(v30, v31, v32);
  v51 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  v35 = OUTLINED_FUNCTION_41(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_51_9();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_43_8();
  v38 = OUTLINED_FUNCTION_41(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_31_21();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_104();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_54_14();
  sub_26A10FD9C();
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Button(0);
  OUTLINED_FUNCTION_32_21();
  v52[10] = v53;
  v52[11] = a21;
  v52[12] = a22;
  OUTLINED_FUNCTION_9_43();
  v41 = sub_26A3C81D0(v39, v40, &protocol conformance descriptor for _ProtoSummaryItem_Button);
  v52[13] = 0;
  v52[14] = 0;
  OUTLINED_FUNCTION_59_9(sub_26A3C83A0, v52, v42, v41);

  sub_26A0E48F0(v47, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v46, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v44, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v45, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v48, &qword_28036CD38, &qword_26A437B70);
  sub_26A0E48F0(v49, &qword_28036CD38, &qword_26A437B70);
  OUTLINED_FUNCTION_29_24();
  sub_26A3C7EC0(v50, v43);
  __swift_destroy_boxed_opaque_existential_1(v51);
  sub_26A0E48F0(v53, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(&v54, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v55, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(&v57, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(&v58, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v22, &qword_28036CD38, &qword_26A437B70);
  sub_26A0E48F0(v23, &qword_28036CD38, &qword_26A437B70);
  sub_26A3C7EC0(v24, &qword_28036CB10);
  __swift_destroy_boxed_opaque_existential_1(v59);
  OUTLINED_FUNCTION_75();
}

void SummaryItemButton.init(text1:button1:button2:button3:text2:text3:thumbnail:action:)()
{
  OUTLINED_FUNCTION_76();
  v25 = v3;
  v26 = v4;
  v23 = v5;
  v24 = v6;
  v22 = v7;
  OUTLINED_FUNCTION_62_13(v8, v9, v10);
  v29 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  v13 = OUTLINED_FUNCTION_41(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_51_9();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_43_8();
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_31_21();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_104();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_54_14();
  OUTLINED_FUNCTION_54_14();
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Button(0);
  OUTLINED_FUNCTION_32_21();
  v30[10] = v31;
  v30[11] = 0;
  v30[12] = 0xE000000000000000;
  OUTLINED_FUNCTION_9_43();
  v19 = sub_26A3C81D0(v17, v18, &protocol conformance descriptor for _ProtoSummaryItem_Button);
  v30[13] = 0;
  v30[14] = 0;
  OUTLINED_FUNCTION_59_9(sub_26A3C83A0, v30, v20, v19);
  sub_26A0E48F0(v26, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v24, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v22, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v23, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v25, &qword_28036CD38, &qword_26A437B70);
  sub_26A0E48F0(v27, &qword_28036CD38, &qword_26A437B70);
  OUTLINED_FUNCTION_29_24();
  sub_26A3C7EC0(v28, v21);
  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_26A0E48F0(v31, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v32, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v33, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(&v35, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(&v36, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v0, &qword_28036CD38, &qword_26A437B70);
  sub_26A0E48F0(v1, &qword_28036CD38, &qword_26A437B70);
  sub_26A3C7EC0(v2, v32);
  __swift_destroy_boxed_opaque_existential_1(v37);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3C7EC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SummaryItemButton.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_Button(0);
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
  OUTLINED_FUNCTION_10_52();
  sub_26A3C82F8();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_30_17();
  sub_26A3C834C();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t SummaryItemButton.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemButton(0);
  *(inited + 64) = &protocol witness table for SummaryItemButton;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_26_34();
  sub_26A3C82F8();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A3C81D0(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A3C81D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A3C828C(uint64_t a1)
{
  result = type metadata accessor for _ProtoSummaryItem_Button(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3C82F8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3C834C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_19_27()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_23_37()
{

  return sub_26A0E48F0(v2, v0, v1);
}

void OUTLINED_FUNCTION_25_30()
{

  sub_26A1B2A8C();
}

uint64_t OUTLINED_FUNCTION_31_21()
{

  return sub_26A3C82F8();
}

void OUTLINED_FUNCTION_32_21()
{
  v0[14] = v5 - 128;
  v0[15] = v4;
  v0[16] = v3;
  v0[17] = v2;
  v0[18] = v5 - 168;
  v0[19] = v5 - 208;
  v0[20] = v5 - 256;
  v0[21] = v1;
}

uint64_t OUTLINED_FUNCTION_34_15()
{

  return sub_26A3C7EC0(v0, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t OUTLINED_FUNCTION_37_15@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 - 256);
  *v4 = a2;
  *(v4 + 8) = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_54_14()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_55_14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 352);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_57_14(uint64_t a1, uint64_t a2)
{
  __swift_getEnumTagSinglePayload(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_59_17()
{

  return sub_26A3C834C();
}

uint64_t OUTLINED_FUNCTION_68_12()
{

  return type metadata accessor for _ProtoSummaryItem_Button(0);
}

uint64_t OUTLINED_FUNCTION_70_10()
{

  return sub_26A0E5D68(v0, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_72_9()
{

  return sub_26A3C834C();
}

uint64_t OUTLINED_FUNCTION_73_14()
{

  return sub_26A3C834C();
}

Swift::String __swiftcall SummaryItemDetailedText.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v98 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v104 = &v97 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v103 = &v97 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v102 = &v97 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v15 = OUTLINED_FUNCTION_41(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  v101 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v97 - v18;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v100 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v97 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v26 = OUTLINED_FUNCTION_41(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  v99 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_54_15();
  MEMORY[0x28223BE20](v29);
  v31 = &v97 - v30;
  v32 = type metadata accessor for SummaryItemDetailedText(0);
  v33 = OUTLINED_FUNCTION_41(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD40, &qword_26A426820);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v36);
  v38 = &v97 - v37;
  OUTLINED_FUNCTION_18_32();
  v39 = sub_26A3CC8F8();
  if (v4)
  {
    _ProtoSummaryItem_DetailedText.redactedProto.getter(v39, v40, v41, v42, v43, v44, v45, v46, v97, v98, v99, v100, v101, v102, v103, v104, v105[0], v105[1], v105[2], v106);
  }

  else
  {
    sub_26A3CC8F8();
  }

  sub_26A3CC44C();
  v38[*(v35 + 32)] = v4 & 1;
  OUTLINED_FUNCTION_44_15();
  v47 = MEMORY[0x277D84F90];
  *&v38[*(v35 + 28)] = MEMORY[0x277D84F90];
  v48 = *&v38[*(type metadata accessor for _ProtoSummaryItem_DetailedText(0) + 20)];
  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v106);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_0(v19);
  if (v49)
  {
    *v24 = v47;
    *(v24 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v50 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_57_15(v51, v52, v53, v50);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v50);
    OUTLINED_FUNCTION_48_0(v19);
    if (!v49)
    {
      sub_26A0E48F0(v19, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3CC44C();
  }

  sub_26A3CC44C();
  v57 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v57);
  OUTLINED_FUNCTION_222();
  sub_26A1074F4(v31, v58 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  sub_26A0E48F0(v31, &qword_28036CB30, &qword_26A426480);
  SummaryItemDetailedText.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1074F4(v2, v59 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  sub_26A0E48F0(v2, &qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v105);
  v60 = v101;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_11_4();
  if (v49)
  {
    v61 = v100;
    *v100 = v47;
    *(v61 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v62 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_57_15(v63, v64, v65, v62);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v62);
    OUTLINED_FUNCTION_11_4();
    if (!v49)
    {
      sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3CC44C();
  }

  v69 = v99;
  sub_26A3CC44C();
  __swift_storeEnumTagSinglePayload(v69, 0, 1, v57);
  OUTLINED_FUNCTION_222();
  sub_26A1074F4(v69, v70 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v69);
  SummaryItemDetailedText.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1074F4(v2, v71 & 0xFFFF0000FFFFFFFFLL | 0x3400000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v2);
  v72 = v102;
  SummaryItemDetailedText.text5.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1074CC(v72, v73 & 0xFFFF0000FFFFFFFFLL | 0x3500000000, 0xE500000000000000);
  sub_26A0E48F0(v72, &qword_28036CB28, &qword_26A427980);
  SummaryItemDetailedText.text6.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1074F4(v2, v74 & 0xFFFF0000FFFFFFFFLL | 0x3600000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v2);
  v75 = v103;
  SummaryItemDetailedText.thumbnail.getter();
  sub_26A1074A4(v75, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v75, &qword_28036CB20, &unk_26A426470);
  v76 = v104;
  SummaryItemDetailedText.action.getter();
  sub_26A1073A0();
  sub_26A0E48F0(v76, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7C28(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v78, v79, v80, v81, v97, v98);

  v82 = swift_getKeyPath();
  sub_26A0F85BC(v82, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v83, v84, v85, v86, v97, v98);

  sub_26A0FE26C(v87, v88, v89, v90, v91, v92, v93);
  sub_26A0E48F0(v38, &qword_28036CD40, &qword_26A426820);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v95;
  result._countAndFlagsBits = v94;
  return result;
}

uint64_t type metadata accessor for SummaryItemDetailedText(uint64_t a1)
{
  result = qword_280373870;
  if (!qword_280373870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A3C8EFC(void *a1)
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v21[-v5 - 8];
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = type metadata accessor for _ProtoSummaryItem_DetailedText(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v11 + 20)) + *a1, v21);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    *v10 = MEMORY[0x277D84F90];
    *(v10 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3CC44C();
  }

  return sub_26A3CC44C();
}

void sub_26A3C90F0()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_29();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &unk_26A425BF0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v13 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_14();
    }

    sub_26A3CC44C();
    v3 = 0;
  }

  v20 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v21, v3, 1, v20);
  OUTLINED_FUNCTION_75();
}

void SummaryItemDetailedText.text5.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoMultilineTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_29();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &unk_26A4273F0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
      OUTLINED_FUNCTION_38_0();
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_14();
    }

    sub_26A3CC44C();
    v2 = 0;
  }

  v19 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void SummaryItemDetailedText.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoVisualProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_29();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &unk_26A426430);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
      OUTLINED_FUNCTION_38_0();
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_14();
    }

    sub_26A3CC44C();
    v2 = 0;
  }

  v19 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void SummaryItemDetailedText.action.getter()
{
  OUTLINED_FUNCTION_76();
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_29();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_14();
    }

    sub_26A3CC44C();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemDetailedText.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_DetailedText(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t SummaryItemDetailedText.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_DetailedText(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoSummaryItem_DetailedText.redactedProto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  v22 = v21;
  v236 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v27 = OUTLINED_FUNCTION_41(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v30);
  v234 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v35 = OUTLINED_FUNCTION_41(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v38);
  v233 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v43 = OUTLINED_FUNCTION_41(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v46);
  v47 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v57);
  v59 = v224 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v61 = OUTLINED_FUNCTION_41(v60);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v68);
  v70 = v224 - v69;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_54_15();
  MEMORY[0x28223BE20](v73);
  v75 = v224 - v74;
  OUTLINED_FUNCTION_10_53();
  sub_26A3CC8F8();
  v76 = *(type metadata accessor for _ProtoSummaryItem_DetailedText(0) + 20);
  v237 = v22;
  v238 = v76;
  v77 = *(v22 + v76);
  OUTLINED_FUNCTION_142(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v247);
  OUTLINED_FUNCTION_32_1();
  v78 = OUTLINED_FUNCTION_107();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, v79, v47);
  OUTLINED_FUNCTION_164_0(v75);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v20);
    if (v81)
    {
      *v59 = MEMORY[0x277D84F90];
      *(v59 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v82 = v236;
      OUTLINED_FUNCTION_57_15(v83, v84, v85, v236);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v82);
      OUTLINED_FUNCTION_48_0(v20);
      v89 = v237;
      v90 = v238;
      if (!v81)
      {
        sub_26A0E48F0(v20, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3CC44C();
      v89 = v237;
      v90 = v238;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_79();
    sub_26A3CC4A0(v59, v91);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *(v89 + v90);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v93 = type metadata accessor for _ProtoSummaryItem_DetailedText._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v93);
      OUTLINED_FUNCTION_20_31();
      v77 = v94;
      *(v89 + v90) = v94;
    }

    OUTLINED_FUNCTION_43_13();
    v95 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v47);
    OUTLINED_FUNCTION_211(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v246);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v246);
  OUTLINED_FUNCTION_209();
  v98 = __swift_getEnumTagSinglePayload(v70, 1, v47);
  OUTLINED_FUNCTION_162_0(v70);
  if (v98 == 1)
  {
    v99 = v236;
    v100 = v237;
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_11_4();
    v100 = v237;
    if (v81)
    {
      v77 = v224[3];
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v101 = OUTLINED_FUNCTION_44_0(*(v47 + 32));
      v99 = v236;
      OUTLINED_FUNCTION_57_15(v101, v102, v103, v236);
      v105 = OUTLINED_FUNCTION_44_0(v104);
      __swift_storeEnumTagSinglePayload(v105, v106, v107, v99);
      OUTLINED_FUNCTION_11_4();
      v108 = v238;
      if (!v81)
      {
        sub_26A0E48F0(v98, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_48_21();
      v99 = v236;
      v108 = v238;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_79();
    sub_26A3CC4A0(v77, v109);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v77 = *(v100 + v108);
    if ((v110 & 1) == 0)
    {
      v111 = type metadata accessor for _ProtoSummaryItem_DetailedText._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v111);
      OUTLINED_FUNCTION_20_31();
      OUTLINED_FUNCTION_244(v112);
    }

    OUTLINED_FUNCTION_25_31();
    v113 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v47);
    OUTLINED_FUNCTION_211(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v245);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v245);
  OUTLINED_FUNCTION_19_27();
  v116 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_28_22(v116, v117);
  if (v98 != 1)
  {
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_11_4();
    v118 = v238;
    if (v81)
    {
      v77 = v224[6];
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v119 = OUTLINED_FUNCTION_44_0(*(v47 + 32));
      OUTLINED_FUNCTION_57_15(v119, v120, v121, v99);
      v123 = OUTLINED_FUNCTION_44_0(v122);
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v99);
      OUTLINED_FUNCTION_11_4();
      if (!v81)
      {
        sub_26A0E48F0(v98, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_48_21();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_79();
    sub_26A3CC4A0(v77, v126);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    v77 = *(v100 + v118);
    if ((v127 & 1) == 0)
    {
      v128 = type metadata accessor for _ProtoSummaryItem_DetailedText._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v128);
      OUTLINED_FUNCTION_20_31();
      OUTLINED_FUNCTION_244(v129);
    }

    OUTLINED_FUNCTION_25_31();
    v130 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v47);
    OUTLINED_FUNCTION_211(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v244);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v244);
  OUTLINED_FUNCTION_19_27();
  v133 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_28_22(v133, v134);
  if (v98 == 1)
  {
    v135 = v99;
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_11_4();
    v136 = v238;
    if (v81)
    {
      v77 = v224[9];
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v137 = OUTLINED_FUNCTION_44_0(*(v47 + 32));
      OUTLINED_FUNCTION_57_15(v137, v138, v139, v99);
      v141 = OUTLINED_FUNCTION_44_0(v140);
      __swift_storeEnumTagSinglePayload(v141, v142, v143, v99);
      OUTLINED_FUNCTION_11_4();
      if (!v81)
      {
        sub_26A0E48F0(v98, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_48_21();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_79();
    sub_26A3CC4A0(v77, v144);
    v145 = swift_isUniquelyReferenced_nonNull_native();
    v77 = *(v100 + v136);
    if ((v145 & 1) == 0)
    {
      v146 = type metadata accessor for _ProtoSummaryItem_DetailedText._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v146);
      OUTLINED_FUNCTION_20_31();
      OUTLINED_FUNCTION_244(v147);
    }

    v135 = v99;
    OUTLINED_FUNCTION_17_31();
    v148 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v148, v149, v150, v47);
    OUTLINED_FUNCTION_211(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v243);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, v243);
  v151 = v231;
  OUTLINED_FUNCTION_209();
  v152 = v233;
  v153 = __swift_getEnumTagSinglePayload(v151, 1, v233);
  OUTLINED_FUNCTION_162_0(v151);
  if (v153 == 1)
  {
    v154 = v135;
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v155 = __swift_getEnumTagSinglePayload(v153, 1, v152);
    v156 = v238;
    v154 = v135;
    if (v155 == 1)
    {
      v157 = v225;
      *v225 = MEMORY[0x277D84F90];
      *(v157 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v158 = OUTLINED_FUNCTION_44_0(*(v152 + 32));
      __swift_storeEnumTagSinglePayload(v158, v159, v160, v135);
      v161 = OUTLINED_FUNCTION_44_0(*(v152 + 36));
      __swift_storeEnumTagSinglePayload(v161, v162, v163, v135);
      if (__swift_getEnumTagSinglePayload(v153, 1, v152) != 1)
      {
        sub_26A0E48F0(v153, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_48_21();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_44_15();
    v164 = swift_isUniquelyReferenced_nonNull_native();
    v77 = *(v100 + v156);
    if ((v164 & 1) == 0)
    {
      v165 = type metadata accessor for _ProtoSummaryItem_DetailedText._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v165);
      OUTLINED_FUNCTION_20_31();
      OUTLINED_FUNCTION_244(v166);
    }

    OUTLINED_FUNCTION_43_13();
    v167 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v152);
    OUTLINED_FUNCTION_211(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, v242);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, v242);
  v170 = v232;
  OUTLINED_FUNCTION_209();
  v171 = __swift_getEnumTagSinglePayload(v170, 1, v47);
  OUTLINED_FUNCTION_162_0(v170);
  if (v171 == 1)
  {
    v172 = v154;
    v173 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_11_4();
    v174 = v238;
    if (v81)
    {
      v77 = v226;
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v175 = OUTLINED_FUNCTION_44_0(*(v47 + 32));
      OUTLINED_FUNCTION_57_15(v175, v176, v177, v154);
      v179 = OUTLINED_FUNCTION_44_0(v178);
      __swift_storeEnumTagSinglePayload(v179, v180, v181, v154);
      OUTLINED_FUNCTION_11_4();
      if (!v81)
      {
        sub_26A0E48F0(v171, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_48_21();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_79();
    sub_26A3CC4A0(v77, v182);
    v183 = swift_isUniquelyReferenced_nonNull_native();
    v77 = *(v100 + v174);
    v172 = v154;
    if ((v183 & 1) == 0)
    {
      v184 = type metadata accessor for _ProtoSummaryItem_DetailedText._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v184);
      OUTLINED_FUNCTION_20_31();
      OUTLINED_FUNCTION_244(v185);
    }

    v173 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_17_31();
    v186 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v186, v187, v188, v47);
    OUTLINED_FUNCTION_211(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, v241);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, v241);
  OUTLINED_FUNCTION_19_27();
  v189 = OUTLINED_FUNCTION_107();
  v190 = v234;
  OUTLINED_FUNCTION_28_22(v189, v191);
  if (v171 == 1)
  {
    v192 = v173;
    v193 = v172;
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_11_4();
    v194 = v238;
    if (v81)
    {
      v195 = v227;
      v192 = v173;
      *v227 = v173;
      *(v195 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v196 = OUTLINED_FUNCTION_44_0(*(v190 + 32));
      v193 = v172;
      OUTLINED_FUNCTION_57_15(v196, v197, v198, v172);
      v200 = OUTLINED_FUNCTION_44_0(v199);
      __swift_storeEnumTagSinglePayload(v200, v201, v202, v172);
      OUTLINED_FUNCTION_11_4();
      if (!v81)
      {
        sub_26A0E48F0(v171, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_48_21();
      v192 = v173;
      v193 = v172;
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_44_15();
    v203 = swift_isUniquelyReferenced_nonNull_native();
    v77 = *(v100 + v194);
    if ((v203 & 1) == 0)
    {
      v204 = type metadata accessor for _ProtoSummaryItem_DetailedText._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v204);
      OUTLINED_FUNCTION_20_31();
      v77 = v205;
      *(v100 + v194) = v205;
    }

    OUTLINED_FUNCTION_43_13();
    v206 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v206, v207, v208, v190);
    OUTLINED_FUNCTION_211(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, v240);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v77 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, v240);
  v209 = v235;
  OUTLINED_FUNCTION_209();
  v210 = __swift_getEnumTagSinglePayload(v209, 1, v193);
  OUTLINED_FUNCTION_162_0(v209);
  if (v210 != 1)
  {
    v211 = v228;
    sub_26A10FD9C();
    v212 = __swift_getEnumTagSinglePayload(v211, 1, v193);
    v213 = v238;
    if (v212 == 1)
    {
      v214 = v229;
      *v229 = v192;
      v214[1] = 0;
      v214[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v215 = __swift_getEnumTagSinglePayload(v211, 1, v193);
      v216 = v230;
      if (v215 != 1)
      {
        sub_26A0E48F0(v211, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_48_21();
      v216 = v230;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v216);
    OUTLINED_FUNCTION_44_15();
    v217 = swift_isUniquelyReferenced_nonNull_native();
    v218 = *(v100 + v213);
    if ((v217 & 1) == 0)
    {
      v219 = type metadata accessor for _ProtoSummaryItem_DetailedText._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v219);
      sub_26A19A508();
      v218 = v220;
      *(v100 + v213) = v220;
    }

    OUTLINED_FUNCTION_43_13();
    v221 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v221, v222, v223, v193);
    OUTLINED_FUNCTION_211(v218 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v239);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemDetailedText.init(text1:text3:text2:text4:text5:text6:thumbnail:action:componentName:linkIdentifier:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for _ProtoSummaryItem_DetailedText(0);
  v15 = a4;
  v16 = a5;
  v18 = a6;
  v17 = a8;
  OUTLINED_FUNCTION_3_59();
  v21 = sub_26A3CC7D0(v19, v20, &protocol conformance descriptor for _ProtoSummaryItem_DetailedText);
  OUTLINED_FUNCTION_41_18(v21, v22, v23, v21, v24, v25, v26, v27, v29, a12, a6, a8);

  sub_26A0E48F0(v17, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a7, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v18, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(v16, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v15, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A3CAD3C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v112 = a8;
  v108 = a6;
  v109 = a7;
  v103 = a4;
  v104 = a5;
  v101 = a3;
  v14 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v14 - 8);
  v100 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v16 - 8);
  v114 = &v89 - v17;
  v113 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v113);
  v96 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = &v89 - v20;
  v21 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v21 - 8);
  v99 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v23 - 8);
  v111 = &v89 - v24;
  v110 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v110);
  v94 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v95 = &v89 - v27;
  v28 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v28 - 8);
  v98 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v30 - 8);
  v106 = &v89 - v31;
  v105 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v105);
  v91 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v92 = &v89 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v35 - 8);
  v107 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v102 = &v89 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v89 - v40;
  v42 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v42);
  v93 = &v89 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v90 = &v89 - v45;
  MEMORY[0x28223BE20](v46);
  v89 = &v89 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = (&v89 - v49);
  v51 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v51 - 8);
  v52 = a2[3];
  v53 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v52);
  (*(v53 + 8))(v52, v53);
  sub_26A3CC44C();
  _ProtoSummaryItem_DetailedText.text1.setter();
  v55 = v101[3];
  v54 = v101[4];
  __swift_project_boxed_opaque_existential_1(v101, v55);
  (*(v54 + 8))(v55, v54);
  sub_26A3CC44C();
  v101 = v50;
  _ProtoSummaryItem_DetailedText.text3.setter();
  sub_26A10FD9C();
  v56 = v116;
  if (v116)
  {
    v57 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    (*(v57 + 8))(v56, v57);
    sub_26A3CC44C();
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
    __swift_destroy_boxed_opaque_existential_1(v115);
    if (__swift_getEnumTagSinglePayload(v41, 1, v42) != 1)
    {
      v58 = v89;
      sub_26A3CC44C();
      sub_26A3CC8F8();
      _ProtoSummaryItem_DetailedText.text2.setter();
      sub_26A3CC4A0(v58, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v115, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v42);
  }

  sub_26A0E48F0(v41, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v59 = v116;
  v60 = v102;
  if (v116)
  {
    v61 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    (*(v61 + 8))(v59, v61);
    sub_26A3CC44C();
    __swift_storeEnumTagSinglePayload(v60, 0, 1, v42);
    __swift_destroy_boxed_opaque_existential_1(v115);
    if (__swift_getEnumTagSinglePayload(v60, 1, v42) != 1)
    {
      v62 = v90;
      sub_26A3CC44C();
      sub_26A3CC8F8();
      _ProtoSummaryItem_DetailedText.text4.setter();
      sub_26A3CC4A0(v62, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v115, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v42);
  }

  sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v63 = v116;
  if (v116)
  {
    v64 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    (*(v64 + 8))(v63, v64);
    v65 = v106;
    sub_26A3CC44C();
    v66 = v105;
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v105);
    __swift_destroy_boxed_opaque_existential_1(v115);
    if (__swift_getEnumTagSinglePayload(v65, 1, v66) != 1)
    {
      v67 = v92;
      sub_26A3CC44C();
      sub_26A3CC8F8();
      _ProtoSummaryItem_DetailedText.text5.setter();
      sub_26A3CC4A0(v67, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v115, &qword_28036CB10, &unk_26A426460);
    v65 = v106;
    __swift_storeEnumTagSinglePayload(v106, 1, 1, v105);
  }

  sub_26A0E48F0(v65, &qword_28036CAE0, &unk_26A4273F0);
LABEL_16:
  sub_26A10FD9C();
  v68 = v116;
  if (v116)
  {
    v69 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    (*(v69 + 8))(v68, v69);
    v70 = v107;
    sub_26A3CC44C();
    __swift_storeEnumTagSinglePayload(v70, 0, 1, v42);
    __swift_destroy_boxed_opaque_existential_1(v115);
    if (__swift_getEnumTagSinglePayload(v70, 1, v42) != 1)
    {
      v71 = v93;
      sub_26A3CC44C();
      sub_26A3CC8F8();
      _ProtoSummaryItem_DetailedText.text6.setter();
      sub_26A3CC4A0(v71, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v115, &qword_28036CB08, &unk_26A428720);
    v70 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v42);
  }

  sub_26A0E48F0(v70, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v72 = v116;
  if (v116)
  {
    v73 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    (*(v73 + 8))(v72, v73);
    v74 = v111;
    sub_26A3CC44C();
    v75 = v110;
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v110);
    __swift_destroy_boxed_opaque_existential_1(v115);
    if (__swift_getEnumTagSinglePayload(v74, 1, v75) != 1)
    {
      v76 = v95;
      sub_26A3CC44C();
      sub_26A3CC8F8();
      _ProtoSummaryItem_DetailedText.thumbnail.setter();
      sub_26A3CC4A0(v76, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v115, &qword_28036CB00, &unk_26A426450);
    v74 = v111;
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v110);
  }

  sub_26A0E48F0(v74, &qword_28036CAE8, &unk_26A426430);
LABEL_26:
  sub_26A10FD9C();
  v77 = v116;
  if (v116)
  {
    v78 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    (*(v78 + 8))(v77, v78);
    v79 = v114;
    sub_26A3CC44C();
    v80 = v113;
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v113);
    __swift_destroy_boxed_opaque_existential_1(v115);
    if (__swift_getEnumTagSinglePayload(v79, 1, v80) != 1)
    {
      v81 = v97;
      sub_26A3CC44C();
      sub_26A3CC8F8();
      _ProtoSummaryItem_DetailedText.action.setter();
      sub_26A3CC4A0(v81, type metadata accessor for _ProtoActionProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(v115, &qword_28036CAF8, &unk_26A426D30);
    v79 = v114;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v113);
  }

  sub_26A0E48F0(v79, &off_28036C7C0, &off_26A427400);
LABEL_31:

  result = _ProtoSummaryItem_DetailedText.componentName.setter(a10, a11, v82, v83, v84);
  if (a13)
  {

    return _ProtoSummaryItem_DetailedText.linkIdentifier.setter(a12, a13, v86, v87, v88);
  }

  return result;
}

void SummaryItemDetailedText.init(text1:text3:text2:text4:text5:text6:thumbnail:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_76();
  v23 = v22;
  v25 = v24;
  v35 = v26;
  v36 = v27;
  v37 = v29;
  v38 = v28;
  v31 = v30;
  v39 = v30;
  v40 = v32;
  sub_26A0E5D68(v32, v48);
  sub_26A0E5D68(v31, v47);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_DetailedText(0);
  OUTLINED_FUNCTION_3_59();
  sub_26A3CC7D0(v33, v34, &protocol conformance descriptor for _ProtoSummaryItem_DetailedText);
  sub_26A4249C4();

  sub_26A0E48F0(v23, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v25, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v35);
  sub_26A0E48F0(v36, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v37);
  OUTLINED_FUNCTION_164_0(v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_26A0E48F0(v41, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v42, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v43);
  OUTLINED_FUNCTION_40_1(v44);
  OUTLINED_FUNCTION_164_0(&v45);
  OUTLINED_FUNCTION_164_0(&v46);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  OUTLINED_FUNCTION_75();
}