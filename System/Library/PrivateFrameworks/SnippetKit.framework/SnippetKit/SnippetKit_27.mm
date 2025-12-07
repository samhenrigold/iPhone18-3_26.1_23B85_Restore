void sub_26A3947EC()
{
  OUTLINED_FUNCTION_5_49();
  if (v4)
  {
    OUTLINED_FUNCTION_125();
    sub_26A390F6C();
    sub_26A13440C();
    OUTLINED_FUNCTION_23_34();
    OUTLINED_FUNCTION_106_7();
    OUTLINED_FUNCTION_69();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_67_10();
    sub_26A390FC0();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_23_34();
    OUTLINED_FUNCTION_80_9();
    sub_26A390448();
    OUTLINED_FUNCTION_69();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_32_19();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t _ProtoTable.ContentColumnCell.alignment.getter()
{
  v2 = OUTLINED_FUNCTION_26_13();
  result = type metadata accessor for _ProtoTable.ContentColumnCell(v2);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t _ProtoTable.ContentColumnCell.alignment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t _ProtoTable.ContentColumnCell.alignment.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoTable.ContentColumnCell(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoTable.ContentColumnCell.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoTable.ContentColumnCell(v0);
  return OUTLINED_FUNCTION_51_5();
}

void static _ProtoTable.ContentColumnCell.OneOf_Size.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  type metadata accessor for _ProtoTable.FixedColumnSize(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v3 = OUTLINED_FUNCTION_36_2();
  v4 = type metadata accessor for _ProtoTable.AutoColumnSize(v3);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373410, &qword_26A440DC8);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_62_3();
  sub_26A390F6C();
  sub_26A390F6C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26A390F6C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A390448();
      sub_26A424794();
      OUTLINED_FUNCTION_0_74();
      sub_26A395728();
      OUTLINED_FUNCTION_69();
      sub_26A424B64();
      sub_26A390FC0();
      sub_26A390FC0();
      OUTLINED_FUNCTION_2_51();
      sub_26A390FC0();
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_26A390F6C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:
    sub_26A390FC0();
    sub_26A13440C();
    goto LABEL_9;
  }

  sub_26A390448();
  if (*v1 == *v0)
  {
    sub_26A424794();
    OUTLINED_FUNCTION_0_74();
    sub_26A395728();
    sub_26A424B64();
    OUTLINED_FUNCTION_67_10();
  }

  sub_26A390FC0();
  sub_26A390FC0();
  OUTLINED_FUNCTION_2_51();
  sub_26A390FC0();
LABEL_9:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A394E2C()
{
  OUTLINED_FUNCTION_53();
  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

uint64_t static _ProtoTable.FixedColumnSize.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_53();
  type metadata accessor for _ProtoTable.FixedColumnSize(v2);
  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t _ProtoTable.FixedColumnSize.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoTable.FixedColumnSize(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t static _ProtoTable.ColumnAlignment.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_280373238 = a1;
}

uint64_t (*static _ProtoTable.ColumnAlignment.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26A3950C8@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoTable.ColumnAlignment.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A395114()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373240);
  __swift_project_value_buffer(v0, qword_280373240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "separator_lines";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "columns";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "header";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rows";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12_7();
        sub_26A424874();
        break;
      case 2:
        OUTLINED_FUNCTION_5_6();
        sub_26A39693C();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A395478(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_5_6();
        sub_26A39552C(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A395478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTable(0);
  type metadata accessor for _ProtoTable.Header(0);
  sub_26A395728();
  return sub_26A424944();
}

uint64_t sub_26A39552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTable.Row(0);
  sub_26A395728();
  return sub_26A424934();
}

uint64_t _ProtoTable.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (*v0 != 1 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_87(), result = sub_26A4249E4(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for _ProtoTable.Column(0), sub_26A395728(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
    {
      OUTLINED_FUNCTION_124();
      OUTLINED_FUNCTION_29_22();
      result = sub_26A39576C(v4, v5, v6, v7);
      if (!v1)
      {
        if (*(*(v2 + 16) + 16))
        {
          type metadata accessor for _ProtoTable.Row(0);
          sub_26A395728();
          OUTLINED_FUNCTION_218_1();
          OUTLINED_FUNCTION_48_8();
          sub_26A424A74();
        }

        type metadata accessor for _ProtoTable(0);
        return OUTLINED_FUNCTION_19_6();
      }
    }
  }

  return result;
}

unint64_t sub_26A395728()
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

uint64_t sub_26A39576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373400, &qword_26A440D98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTable.Header(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for _ProtoTable(0);
  sub_26A1F9BEC(a1 + *(v9 + 32), v7, &qword_280373400, &qword_26A440D98);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A390448();
  sub_26A395728();
  sub_26A424A84();
  return sub_26A390FC0();
}

uint64_t sub_26A3959F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A395A74(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A395AE4(uint64_t a1, uint64_t a2)
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A395B64()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373258);
  __swift_project_value_buffer(v0, qword_280373258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LEADING";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CENTER";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TRAILING";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A395E10()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373280);
  __swift_project_value_buffer(v0, qword_280373280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cells";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "component_name";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.Header.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12_7();
      sub_26A424924();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_6();
      sub_26A396824();
    }
  }

  return result;
}

uint64_t _ProtoTable.Header.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoTable.HeaderCell(0), sub_26A395728(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
  {
    OUTLINED_FUNCTION_84_0();
    if (!v3 || (OUTLINED_FUNCTION_20_4(), result = sub_26A424A64(), !v1))
    {
      type metadata accessor for _ProtoTable.Header(0);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t static _ProtoTable.Header.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_26A0E3268(*a1, *a2, a3, a4, a5, a6, a7, a8, v13, v14, v15, v16);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v11 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _ProtoTable.Header(0);
  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t sub_26A3962CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39634C(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3963BC(uint64_t a1, uint64_t a2)
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A396478()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803732A8);
  __swift_project_value_buffer(v0, qword_2803732A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "cells";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "backgrounds";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "component_name";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.Row.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_5_6();
        sub_26A396824();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A396888(v3, v4, v5, v6);
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A39693C();
        break;
      case 4:
        OUTLINED_FUNCTION_12_7();
        sub_26A424924();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A396824()
{
  v1 = OUTLINED_FUNCTION_73_12();
  v2(v1);
  OUTLINED_FUNCTION_157();
  v3 = sub_26A395728();
  return OUTLINED_FUNCTION_114_2(v0, v4, v3);
}

uint64_t sub_26A396888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTable.Row(0);
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A395728();
  return sub_26A424944();
}

uint64_t sub_26A39693C()
{
  v1 = OUTLINED_FUNCTION_73_12();
  v2(v1);
  OUTLINED_FUNCTION_157();
  v3 = sub_26A395728();
  return OUTLINED_FUNCTION_114_2(v0 + 8, v4, v3);
}

uint64_t _ProtoTable.Row.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoTable.Content(0), sub_26A395728(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_29_22();
    result = sub_26A396B00(v4, v5, v6, v7);
    if (!v1)
    {
      if (*(*(v2 + 8) + 16))
      {
        type metadata accessor for _ProtoBackgroundElement(0);
        sub_26A395728();
        OUTLINED_FUNCTION_218_1();
        OUTLINED_FUNCTION_48_8();
        sub_26A424A74();
      }

      OUTLINED_FUNCTION_84_0();
      if (v8)
      {
        OUTLINED_FUNCTION_20_4();
        sub_26A424A64();
      }

      type metadata accessor for _ProtoTable.Row(0);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t sub_26A396B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for _ProtoTable.Row(0);
  sub_26A1F9BEC(a1 + *(v9 + 32), v7, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A390448();
  sub_26A395728();
  sub_26A424A84();
  return sub_26A390FC0();
}

void static _ProtoTable.Row.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_47_1();
  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_59_7();
  sub_26A0E3EB0(*v1, *v0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for _ProtoTable.Row(0);
  v14 = *(v11 + 48);
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v15, v16, v17, v18);
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v19, v20, v21, v22);
  v23 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v23, v24, v4);
  if (v28)
  {
    OUTLINED_FUNCTION_37(v2 + v14, 1, v4);
    if (v28)
    {
      sub_26A13440C();
      goto LABEL_7;
    }

LABEL_27:
    sub_26A13440C();
LABEL_28:
    v27 = 0;
    goto LABEL_29;
  }

  sub_26A1F9BEC(v2, v3, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_37(v2 + v14, 1, v4);
  if (v28)
  {
    sub_26A390FC0();
    goto LABEL_27;
  }

  sub_26A390448();
  sub_26A0E36D8(*v3, *v8);
  if ((v29 & 1) == 0 || (v3[1] == v8[1] ? (v30 = v3[2] == v8[2]) : (v30 = 0), !v30 && (sub_26A425354() & 1) == 0))
  {
    sub_26A390FC0();
    sub_26A390FC0();
    goto LABEL_27;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  v31 = sub_26A424B64();
  sub_26A390FC0();
  OUTLINED_FUNCTION_22_1();
  sub_26A390FC0();
  sub_26A13440C();
  if ((v31 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_7:
  sub_26A0DDAD4(v1[1], v0[1]);
  if ((v25 & 1) == 0)
  {
    goto LABEL_28;
  }

  v26 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v26 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  v27 = OUTLINED_FUNCTION_46_3();
LABEL_29:
  OUTLINED_FUNCTION_214_1(v27);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3970E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A397164(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3971D4(uint64_t a1, uint64_t a2)
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A397298()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803732D0);
  __swift_project_value_buffer(v0, qword_2803732D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "empty";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "visual";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "line_limit";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.Content.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_10_3();
        sub_26A3975A4(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_10_3();
        sub_26A397A9C(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_10_3();
        sub_26A397F94(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_5_6();
        sub_26A39848C(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A3975A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoTable.EmptyCell(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373728, &qword_26A4420E8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A1F9BEC(a1, v10, &qword_28036C8B0, &unk_26A425E60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26A390FC0();
    }

    else
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_26A395728();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v18, v15, &qword_280373728, &qword_26A4420E8);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A397A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A1F9BEC(a1, v10, &qword_28036C8B0, &unk_26A425E60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A390FC0();
    }
  }

  sub_26A395728();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v18, v15, &qword_28036CAE0, &unk_26A4273F0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A397F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A1F9BEC(a1, v10, &qword_28036C8B0, &unk_26A425E60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A390FC0();
    }
  }

  sub_26A395728();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v18, v15, &qword_28036CAE8, &unk_26A426430);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A39848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTable.Content(0);
  type metadata accessor for _ProtoOptionalInt(0);
  sub_26A395728();
  return sub_26A424944();
}

uint64_t _ProtoTable.Content.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_117_4();
  v2 = OUTLINED_FUNCTION_68_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v6, v7, v8, v9);
  type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  OUTLINED_FUNCTION_17_3(v1);
  if (v10)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = OUTLINED_FUNCTION_13_10();
      sub_26A398874(v12, v13, v14, v15);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_13_10();
      sub_26A398A88(v20, v21, v22, v23);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_13_10();
    sub_26A398664(v16, v17, v18, v19);
  }

  OUTLINED_FUNCTION_66_9();
  result = sub_26A390FC0();
  if (!v0)
  {
LABEL_8:
    v25 = OUTLINED_FUNCTION_13_10();
    result = sub_26A398C9C(v25, v26, v27, v28);
    if (!v0)
    {
      type metadata accessor for _ProtoTable.Content(0);
      OUTLINED_FUNCTION_69();
      return sub_26A424774();
    }
  }

  return result;
}

uint64_t sub_26A398664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTable.EmptyCell(0);
  MEMORY[0x28223BE20](v8);
  sub_26A1F9BEC(a1, v7, &qword_28036C8B0, &unk_26A425E60);
  v9 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A398874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v8);
  sub_26A1F9BEC(a1, v7, &qword_28036C8B0, &unk_26A425E60);
  v9 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A398A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v8);
  sub_26A1F9BEC(a1, v7, &qword_28036C8B0, &unk_26A425E60);
  v9 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A398C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C898, &qword_26A425E48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoOptionalInt(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for _ProtoTable.Content(0);
  sub_26A1F9BEC(a1 + *(v9 + 24), v7, &qword_28036C898, &qword_26A425E48);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A390448();
  sub_26A395728();
  sub_26A424A84();
  return sub_26A390FC0();
}

void static _ProtoTable.Content.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v41 = type metadata accessor for _ProtoOptionalInt(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v38 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C898, &qword_26A425E48);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v39 = (&v38 - v10);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8A0, &unk_26A425E50);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_46();
  v13 = type metadata accessor for _ProtoTable.Content.OneOf_Value(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v15 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v15);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B8, &qword_26A440DD0);
  OUTLINED_FUNCTION_41(v19);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  v24 = *(v23 + 56);
  v42 = v4;
  OUTLINED_FUNCTION_112_4(v4, &v38 - v21);
  v43 = v2;
  OUTLINED_FUNCTION_112_4(v2, &v22[v24]);
  OUTLINED_FUNCTION_37(v22, 1, v13);
  if (v25)
  {
    OUTLINED_FUNCTION_37(&v22[v24], 1, v13);
    if (!v25)
    {
      goto LABEL_20;
    }

    sub_26A13440C();
  }

  else
  {
    sub_26A1F9BEC(v22, v18, &qword_28036C8B0, &unk_26A425E60);
    OUTLINED_FUNCTION_37(&v22[v24], 1, v13);
    if (v25)
    {
      sub_26A390FC0();
      goto LABEL_20;
    }

    sub_26A390448();
    static _ProtoTable.Content.OneOf_Value.== infix(_:_:)();
    v27 = v26;
    sub_26A390FC0();
    sub_26A390FC0();
    sub_26A13440C();
    if ((v27 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v28 = *(type metadata accessor for _ProtoTable.Content(0) + 24);
  v29 = *(v40 + 48);
  OUTLINED_FUNCTION_131_5(v42 + v28, v0);
  OUTLINED_FUNCTION_131_5(v43 + v28, v0 + v29);
  v30 = OUTLINED_FUNCTION_71();
  v31 = v41;
  OUTLINED_FUNCTION_37(v30, v32, v41);
  if (v25)
  {
    OUTLINED_FUNCTION_37(v0 + v29, 1, v31);
    if (v25)
    {
      sub_26A13440C();
      goto LABEL_16;
    }

LABEL_20:
    sub_26A13440C();
LABEL_21:
    v33 = 0;
    goto LABEL_22;
  }

  v34 = v39;
  sub_26A1F9BEC(v0, v39, &qword_28036C898, &qword_26A425E48);
  OUTLINED_FUNCTION_37(v0 + v29, 1, v31);
  if (v35)
  {
    sub_26A390FC0();
    goto LABEL_20;
  }

  v36 = v38;
  sub_26A390448();
  if (*v34 != *v36)
  {
    sub_26A390FC0();
    sub_26A390FC0();
    goto LABEL_20;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  v37 = sub_26A424B64();
  sub_26A390FC0();
  sub_26A390FC0();
  sub_26A13440C();
  if ((v37 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  v33 = sub_26A424B64();
LABEL_22:
  OUTLINED_FUNCTION_214_1(v33);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A39945C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A3994DC(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39954C(uint64_t a1, uint64_t a2)
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A399690(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A399710(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A399780(uint64_t a1, uint64_t a2)
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A399848()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373320);
  __swift_project_value_buffer(v0, qword_280373320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "column_span";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "alignment";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.HeaderCell.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_5_6();
        sub_26A399BB0(v7, v8);
        break;
      case 2:
        OUTLINED_FUNCTION_12_7();
        sub_26A4248E4();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A399AFC(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_26A399AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTable.HeaderCell(0);
  type metadata accessor for _ProtoTable.Content(0);
  sub_26A395728();
  return sub_26A424944();
}

uint64_t _ProtoTable.HeaderCell.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_87();
  result = sub_26A399CEC(v2, v3, v4, v5);
  if (!v1)
  {
    if (*v0)
    {
      OUTLINED_FUNCTION_20_4();
      OUTLINED_FUNCTION_87();
      sub_26A424A34();
    }

    if (*(v0 + 8))
    {
      sub_26A399ECC();
      OUTLINED_FUNCTION_48_8();
      sub_26A4249F4();
    }

    type metadata accessor for _ProtoTable.HeaderCell(0);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A399CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C888, &qword_26A440D90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTable.Content(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for _ProtoTable.HeaderCell(0);
  sub_26A1F9BEC(a1 + *(v9 + 28), v7, &qword_28036C888, &qword_26A440D90);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A390448();
  sub_26A395728();
  sub_26A424A84();
  return sub_26A390FC0();
}

unint64_t sub_26A399ECC()
{
  result = qword_280373450;
  if (!qword_280373450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373450);
  }

  return result;
}

void static _ProtoTable.HeaderCell.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for _ProtoTable.Content(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_68_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_131_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C890, &qword_26A425E40) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_141_0();
  type metadata accessor for _ProtoTable.HeaderCell(0);
  v14 = *(v12 + 56);
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v15, v16, v17, v18);
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v19, v20, v21, v22);
  OUTLINED_FUNCTION_37(v0, 1, v6);
  if (v23)
  {
    OUTLINED_FUNCTION_37(v0 + v14, 1, v6);
    if (v23)
    {
      sub_26A13440C();
      goto LABEL_11;
    }

LABEL_9:
    sub_26A13440C();
LABEL_14:
    v26 = 0;
    goto LABEL_15;
  }

  sub_26A1F9BEC(v0, v1, &qword_28036C888, &qword_26A440D90);
  OUTLINED_FUNCTION_37(v0 + v14, 1, v6);
  if (v23)
  {
    sub_26A390FC0();
    goto LABEL_9;
  }

  sub_26A390448();
  static _ProtoTable.Content.== infix(_:_:)();
  v25 = v24;
  sub_26A390FC0();
  sub_26A390FC0();
  sub_26A13440C();
  if ((v25 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (*v5 != *v3 || !sub_26A257DA8(*(v5 + 8), *(v5 + 16), *(v3 + 8)))
  {
    goto LABEL_14;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  v26 = sub_26A424B64();
LABEL_15:
  OUTLINED_FUNCTION_214_1(v26);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A39A280(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39A300(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39A370(uint64_t a1, uint64_t a2)
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A39A434()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373348);
  __swift_project_value_buffer(v0, qword_280373348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spacer";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.Column.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_10_3();
      sub_26A39AB7C(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_10_3();
      sub_26A39A684(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_26A39A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373718, &qword_26A4420D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A1F9BEC(a1, v10, &qword_28036C8D8, &qword_26A425E88);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A390FC0();
    }

    else
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_26A395728();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v18, v15, &qword_280373718, &qword_26A4420D8);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A39AB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoTable.SpacerColumnCell(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373720, &qword_26A4420E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A1F9BEC(a1, v10, &qword_28036C8D8, &qword_26A425E88);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A390FC0();
    }
  }

  sub_26A395728();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v18, v15, &qword_280373720, &qword_26A4420E0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t _ProtoTable.Column.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_117_4();
  v2 = OUTLINED_FUNCTION_68_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v6, v7, v8, v9);
  type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  OUTLINED_FUNCTION_17_3(v1);
  if (v10)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_22_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = OUTLINED_FUNCTION_13_10();
    sub_26A39B38C(v11, v12, v13, v14);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_13_10();
    sub_26A39B178(v15, v16, v17, v18);
  }

  OUTLINED_FUNCTION_64_11();
  result = sub_26A390FC0();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for _ProtoTable.Column(0);
    OUTLINED_FUNCTION_69();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A39B178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  MEMORY[0x28223BE20](v8);
  sub_26A1F9BEC(a1, v7, &qword_28036C8D8, &qword_26A425E88);
  v9 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A39B38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTable.SpacerColumnCell(0);
  MEMORY[0x28223BE20](v8);
  sub_26A1F9BEC(a1, v7, &qword_28036C8D8, &qword_26A425E88);
  v9 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A39B87C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39B8FC(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39B96C(uint64_t a1, uint64_t a2)
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A39B9EC()
{
  result = MEMORY[0x26D65BA70](0xD000000000000011, 0x800000026A44AF90);
  qword_280373360 = 0x5574657070696E53;
  *algn_280373368 = 0xEF656C6261542E49;
  return result;
}

uint64_t sub_26A39BB00(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39BB80(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39BBF0(uint64_t a1, uint64_t a2)
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A39BC6C()
{
  result = MEMORY[0x26D65BA70](0xD000000000000012, 0x800000026A44AF70);
  qword_280373388 = 0x5574657070696E53;
  unk_280373390 = 0xEF656C6261542E49;
  return result;
}

uint64_t sub_26A39BD04()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373398);
  __swift_project_value_buffer(v0, qword_280373398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "auto";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fixed";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "alignment";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.ContentColumnCell.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v11 = OUTLINED_FUNCTION_5_6();
        sub_26A39C99C(v11, v12);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_10_3();
        sub_26A39C4A4(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_10_3();
        sub_26A39BFAC(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_26A39BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoTable.AutoColumnSize(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373708, &qword_26A4420C8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A1F9BEC(a1, v10, &qword_28036C8C0, &qword_26A425E70);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A390FC0();
    }

    else
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_26A395728();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v18, v15, &qword_280373708, &qword_26A4420C8);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A39C4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoTable.FixedColumnSize(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373710, &qword_26A4420D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A1F9BEC(a1, v10, &qword_28036C8C0, &qword_26A425E70);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A390FC0();
    }
  }

  sub_26A395728();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v18, v15, &qword_280373710, &qword_26A4420D0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A39C99C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoTable.ContentColumnCell(0);
  sub_26A399ECC();
  return sub_26A424894();
}

uint64_t _ProtoTable.ContentColumnCell.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  v2 = OUTLINED_FUNCTION_68_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v8, v9, v10, v11);
  type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  OUTLINED_FUNCTION_17_3(v7);
  if (v12)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_29_22();
    sub_26A39CD78(v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_29_22();
    sub_26A39CB64(v17, v18, v19, v20);
  }

  OUTLINED_FUNCTION_2_51();
  result = sub_26A390FC0();
  if (!v0)
  {
LABEL_6:
    v22 = (v1 + *(type metadata accessor for _ProtoTable.ContentColumnCell(0) + 20));
    v23 = *v22;
    if (!*v22)
    {
      return OUTLINED_FUNCTION_19_6();
    }

    v24 = *(v22 + 8);
    v25 = v23;
    v26 = v24;
    sub_26A399ECC();
    OUTLINED_FUNCTION_48_8();
    result = sub_26A4249F4();
    if (!v0)
    {
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t sub_26A39CB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTable.AutoColumnSize(0);
  MEMORY[0x28223BE20](v8);
  sub_26A1F9BEC(a1, v7, &qword_28036C8C0, &qword_26A425E70);
  v9 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A39CD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTable.FixedColumnSize(0);
  MEMORY[0x28223BE20](v8);
  sub_26A1F9BEC(a1, v7, &qword_28036C8C0, &qword_26A425E70);
  v9 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A39D014(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39D094(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39D104(uint64_t a1, uint64_t a2)
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A39D1B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D65BA70](a2, a3);
  *a4 = 0x5574657070696E53;
  *a5 = 0xEF656C6261542E49;
  return result;
}

uint64_t sub_26A39D254(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26A424AC4();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_246();
  __swift_project_value_buffer(v4, v5);
  return sub_26A424AB4();
}

uint64_t _ProtoTable.AutoColumnSize.decodeMessage<A>(decoder:)()
{
  do
  {
    OUTLINED_FUNCTION_44();
    result = sub_26A424834();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_26A39D360(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39D3E0(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39D450(uint64_t a1, uint64_t a2)
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A39D4CC()
{
  result = MEMORY[0x26D65BA70](0xD000000000000010, 0x800000026A44AF40);
  qword_2803733D8 = 0x5574657070696E53;
  unk_2803733E0 = 0xEF656C6261542E49;
  return result;
}

uint64_t sub_26A39D564()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803733E8);
  __swift_project_value_buffer(v0, qword_2803733E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26A426410;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "percent";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_26A424AA4();
}

uint64_t _ProtoTable.FixedColumnSize.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12_7();
      sub_26A4248D4();
    }
  }

  return result;
}

uint64_t _ProtoTable.FixedColumnSize.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_12_7(), result = sub_26A424A24(), !v1))
  {
    type metadata accessor for _ProtoTable.FixedColumnSize(0);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A39D7FC()
{
  OUTLINED_FUNCTION_101_3();
  v1 = v0;
  sub_26A425504();
  v1(0);
  OUTLINED_FUNCTION_125();
  sub_26A395728();
  sub_26A424B44();
  return sub_26A425554();
}

unint64_t sub_26A39D880()
{
  result = qword_280373488;
  if (!qword_280373488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373488);
  }

  return result;
}

unint64_t sub_26A39D8D8()
{
  result = qword_280373490;
  if (!qword_280373490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373490);
  }

  return result;
}

unint64_t sub_26A39D930()
{
  result = qword_280373498;
  if (!qword_280373498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803734A0, &qword_26A440F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373498);
  }

  return result;
}

uint64_t sub_26A39E55C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39E66C(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39E724(uint64_t a1, uint64_t a2)
{
  sub_26A395728();

  return sub_26A4249B4();
}

void sub_26A39E7CC(uint64_t a1)
{
  sub_26A39E920(319, &qword_280373590, type metadata accessor for _ProtoTable.Column, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A39E920(319, &qword_280373598, type metadata accessor for _ProtoTable.Row, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_26A424794();
      if (v3 <= 0x3F)
      {
        sub_26A39E920(319, &qword_2803735A0, type metadata accessor for _ProtoTable.Header, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A39E920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A39EA20(uint64_t a1)
{
  sub_26A39E920(319, &qword_2803735D0, type metadata accessor for _ProtoTable.Content, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A39E920(319, &qword_28036F5F0, type metadata accessor for _ProtoBackgroundElement, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_26A424794();
      if (v3 <= 0x3F)
      {
        sub_26A39E920(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A39EB94(uint64_t a1)
{
  sub_26A39E920(319, &qword_2803735E8, type metadata accessor for _ProtoTable.Content.OneOf_Value, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      sub_26A39E920(319, &qword_2803735F0, type metadata accessor for _ProtoOptionalInt, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A39EC90(uint64_t a1)
{
  result = type metadata accessor for _ProtoTable.EmptyCell(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoMultilineTextProperty(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for _ProtoVisualProperty(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_26A39ED68(uint64_t a1)
{
  sub_26A424794();
  if (v1 <= 0x3F)
  {
    sub_26A39E920(319, &qword_280373628, type metadata accessor for _ProtoTable.Content, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A39EE5C(uint64_t a1)
{
  sub_26A39E920(319, &qword_280373640, type metadata accessor for _ProtoTable.Column.OneOf_Cell, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A39EFC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  sub_26A39E920(319, a4, a5, a6);
  if (v7 <= 0x3F)
  {
    sub_26A424794();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26A39F088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26A39F130(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A39F1C4(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_37@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_26A1F9BEC(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_32_19()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_39_21(uint64_t a1)
{
  *(v3 + 24) = a1;

  return sub_26A1F9BEC(v2, v1, v4, v5);
}

uint64_t OUTLINED_FUNCTION_60_14(uint64_t a1)
{

  return sub_26A1F9BEC(a1, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_87_9(uint64_t a1)
{

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_93_8()
{

  return sub_26A390FC0();
}

void *OUTLINED_FUNCTION_94_7(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_106_7()
{

  return sub_26A390448();
}

uint64_t OUTLINED_FUNCTION_107_7()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_112_4(uint64_t a1, uint64_t a2)
{

  return sub_26A1F9BEC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_114_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26A424934();
}

uint64_t OUTLINED_FUNCTION_126_5()
{

  return sub_26A1F9BEC(v0, v1 + v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_127_4@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_128_3()
{

  return sub_26A424794();
}

uint64_t OUTLINED_FUNCTION_130_4@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = v2;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_131_5(uint64_t a1, uint64_t a2)
{

  return sub_26A1F9BEC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_133_4()
{

  return sub_26A390448();
}

uint64_t OUTLINED_FUNCTION_134_1()
{

  return sub_26A390448();
}

uint64_t OUTLINED_FUNCTION_135_5()
{

  return sub_26A390448();
}

uint64_t sub_26A39F798(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_26A10D50C(0, v7, 0, a4, a5, a6, a7);
    v8 = v22;
    v11 = (a1 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      if (a3)
      {
        MEMORY[0x26D65BA70](v13, v12);
        MEMORY[0x26D65BA70](34, 0xE100000000000000);

        v13 = 34;
        v12 = 0xE100000000000000;
      }

      v19 = *(v22 + 16);
      v18 = *(v22 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26A10D50C(v18 > 1, v19 + 1, 1, v14, v15, v16, v17);
      }

      *(v22 + 16) = v19 + 1;
      v20 = v22 + 16 * v19;
      *(v20 + 32) = v13;
      *(v20 + 40) = v12;
      v11 += 2;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_26A39F8C8()
{
  v3 = OUTLINED_FUNCTION_194_2();
  v4 = type metadata accessor for _ProtoCustomCanvas(v3);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = type metadata accessor for CustomCanvas(0);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  if (v2)
  {
    v14 = *(v1 + 64);
    OUTLINED_FUNCTION_28_21();
    OUTLINED_FUNCTION_67_7();
    sub_26A3AF924();
    if ((v14 & 1) == 0)
    {

      strcpy(v8, "SystemPlugin");
      *(v8 + 13) = 0;
      *(v8 + 14) = -5120;

      *(v8 + 16) = 0x6C6F686563616C50;
      *(v8 + 24) = 0xEB00000000726564;

      sub_26A28E6C8();
      v16 = v15;
      v18 = v17;
      sub_26A0E4784(*(v8 + 32), *(v8 + 40));
      *(v8 + 32) = v16;
      *(v8 + 40) = v18;
    }

    sub_26A3AF978();
  }

  else
  {
    OUTLINED_FUNCTION_245();
    sub_26A3AF924();
  }

  sub_26A3AF978();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  OUTLINED_FUNCTION_189_3(v19);
  OUTLINED_FUNCTION_26_32();
  result = sub_26A3AF8D0();
  *(v0 + *(v13 + 28)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26A39FA98()
{
  v2 = OUTLINED_FUNCTION_194_2();
  v3 = type metadata accessor for _ProtoTextElement(v2);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for TextElement(0);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  if (v1)
  {
    OUTLINED_FUNCTION_67_7();
    sub_26A3AF924();
    v14 = *(v7 + 16);
    if (v14 != 255)
    {
      sub_26A0D6768(*v7, *(v7 + 8), *(v7 + 16));
      *v7 = xmmword_26A42D990;
      *(v7 + 16) = v14 & 1;
    }

    sub_26A3AF978();
    sub_26A3AF978();
  }

  else
  {
    OUTLINED_FUNCTION_245();
    sub_26A3AF924();
  }

  sub_26A3AF978();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE0, &qword_26A43DEA0);
  OUTLINED_FUNCTION_189_3(v15);
  result = sub_26A3AF8D0();
  *(v0 + *(v13 + 28)) = MEMORY[0x277D84F90];
  return result;
}

void sub_26A39FC64()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoSummaryItem_Switch(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A39FD50()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoSummaryItem_Pair(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A39FE3C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoCommand.AppPunchout(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A39FF28()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoCoreChart(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0014()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoColor(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0100()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoSeparators(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A01EC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoResponse.Component(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A02D8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoSummaryItem_PairNumber(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A03C4()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoColorElement(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A04B0()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoStandardPlayerButton(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A059C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoHorizontalList_Standard.Item(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0688()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoKeyValue_Standard.Pair(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0774()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoIntentsUI_Standard.Slot(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0860()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoOrnamentElement(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A094C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoSwitch(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0A38()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoResponse.Section(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0B24()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoTable.Header(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0C10()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoTextElement(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0CFC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoImageElement(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0DE8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoPlayerButton(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0ED4()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoTextProperty(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0FC0()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoActionElement(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A10AC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoCustomElement(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1198(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_15_38();
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  type metadata accessor for _ProtoVisualElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  sub_26A4247A4();
  sub_26A3AED00();
  sub_26A424964();
  if (!v1)
  {
    sub_26A3AF924();
    VisualElement.init(proto:)();
    OUTLINED_FUNCTION_29_8();
    sub_26A3AF8D0();
  }

  OUTLINED_FUNCTION_9_18();
}

void sub_26A3A130C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoActionProperty(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A13F8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoResponse.Group(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A14E4()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoVisualProperty(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A15D0()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoWatchListButton(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A16BC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoCoreChartElement(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A17A8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoBackgroundElement(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1894()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoMultilineTextProperty(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1980()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoPlayer(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1A6C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoSlider(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1B58()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoResponse(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1C44()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_24_8();
  type metadata accessor for _ProtoTable.Row(v3);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  v5 = sub_26A3AED00();
  OUTLINED_FUNCTION_4_46(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF924();
    type metadata accessor for TableRow(0);
    sub_26A424724();
    sub_26A3AF8D0();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1D60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for ImageElement.SourceType(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_18();
  if (a1)
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      v47 = a4;
      v48 = a2;
      v49 = a3;
      v50 = MEMORY[0x277D84F90];
      sub_26A10D50C(0, v15, 0, v11, v12, v13, v14);
      v16 = v50;
      v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v18 = *(v10 + 72);
      do
      {
        sub_26A3AF924();
        ImageElement.SourceType.description.getter();
        v20 = v19;
        v22 = v21;
        sub_26A3AF8D0();
        v50 = v16;
        v28 = *(v16 + 16);
        v27 = *(v16 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_26A10D50C(v27 > 1, v28 + 1, 1, v23, v24, v25, v26);
          v16 = v50;
        }

        *(v16 + 16) = v28 + 1;
        v29 = v16 + 16 * v28;
        *(v29 + 32) = v20;
        *(v29 + 40) = v22;
        v17 += v18;
        --v15;
      }

      while (v15);
      v50 = v16;

      sub_26A3AED68(&v50);

      sub_26A39F798(v50, v4, v47, v30, v31, v32, v33);
      OUTLINED_FUNCTION_126_4();
      v50 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_65_0();
      sub_26A424B54();

      OUTLINED_FUNCTION_81_0();
      v50 = v34;
      v51 = v35;
      v36 = OUTLINED_FUNCTION_245();
      v38 = sub_26A31B838(v36, v37);
      v40 = v39;

      MEMORY[0x26D65BA70](v38, v40);

      OUTLINED_FUNCTION_184_1();
      v41 = v50;
      v42 = v51;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC20, &unk_26A426680) + 28);

      sub_26A10C464();
      v44 = OUTLINED_FUNCTION_195_0();
      sub_26A10C898(v44);
      OUTLINED_FUNCTION_56_16(*(v4 + v43));
      v45[4] = v48;
      v45[5] = v49;
      v45[6] = v41;
      v45[7] = v42;
      *(v4 + v43) = v46;
    }
  }
}

void sub_26A3A2064(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = v4;
    v10 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_20;
    }

    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        v49 = a2;
        v50 = v10;
        v48 = a4;
        v11 = sub_26A3AED44(result);
        a4 = MEMORY[0x277D84F90];
        if (!v11)
        {
LABEL_16:
          v51 = a4;

          sub_26A3AED68(&v51);

          sub_26A39F798(v51, v5, v48, v29, v30, v31, v32);
          OUTLINED_FUNCTION_126_4();
          v51 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
          sub_26A10D548();
          OUTLINED_FUNCTION_65_0();
          sub_26A424B54();

          OUTLINED_FUNCTION_81_0();
          v51 = v33;
          v52 = v34;
          v35 = OUTLINED_FUNCTION_245();
          v37 = sub_26A31B838(v35, v36);
          v39 = v38;

          MEMORY[0x26D65BA70](v37, v39);

          OUTLINED_FUNCTION_184_1();
          v40 = v51;
          v41 = v52;
          v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC10, &qword_26A426670) + 28);

          sub_26A10C494();
          v43 = OUTLINED_FUNCTION_195_0();
          sub_26A10C8C8(v43);
          OUTLINED_FUNCTION_56_16(*&v5[v42]);
          v44[4] = v49;
          v44[5] = a3;
          v44[6] = v40;
          v44[7] = v41;
          *&v5[v42] = v45;
          return;
        }

        v16 = v11;
        v46 = a3;
        v47 = v5;
        v51 = MEMORY[0x277D84F90];
        sub_26A10D50C(0, v11 & ~(v11 >> 63), 0, v12, v13, v14, v15);
        if (v16 < 0)
        {
          __break(1u);

          __break(1u);
          return;
        }

        a3 = 0;
        a4 = v51;
        a2 = result & 0xC000000000000001;
        v5 = &property descriptor for _ProtoResponse.Component.primaryHeaderMarquee;
        while (1)
        {
          if (a2)
          {
            v17 = MEMORY[0x26D65BD40](a3, result);
            goto LABEL_12;
          }

          if ((a3 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (a3 >= *(v50 + 16))
          {
            goto LABEL_19;
          }

          v17 = *(result + 8 * a3 + 32);
LABEL_12:
          v18 = v17;
          v19 = [v17 description];
          v20 = sub_26A424B84();
          v22 = v21;

          v51 = a4;
          v10 = *(a4 + 16);
          v27 = *(a4 + 24);
          if (v10 >= v27 >> 1)
          {
            sub_26A10D50C(v27 > 1, v10 + 1, 1, v23, v24, v25, v26);
            a4 = v51;
          }

          ++a3;
          *(a4 + 16) = v10 + 1;
          v28 = a4 + 16 * v10;
          *(v28 + 32) = v20;
          *(v28 + 40) = v22;
          if (v16 == a3)
          {
            a3 = v46;
            v5 = v47;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

      while (sub_26A424FD4());
    }
  }
}

void sub_26A3A231C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v8 = *(result + 16);
    if (v8)
    {
      v38 = a4;
      OUTLINED_FUNCTION_181_2(result, a2, a3, a4, a5, a6, a7);
      v13 = v43;
      v14 = (result + 40);
      do
      {
        if (*v14 == 1)
        {
          if (*(v14 - 1))
          {
            v15 = 0x6E6F69747061632ELL;
          }

          else
          {
            v15 = 0x746E65746E6F632ELL;
          }

          v16 = 0xE800000000000000;
        }

        else
        {
          sub_26A424EF4();

          strcpy(v42, ".UNRECOGNIZED(");
          HIBYTE(v42[1]) = -18;
          v17 = sub_26A4251B4();
          MEMORY[0x26D65BA70](v17);

          MEMORY[0x26D65BA70](41, 0xE100000000000000);
          v15 = v42[0];
          v16 = v42[1];
        }

        v43 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_26A10D50C(v18 > 1, v19 + 1, 1, v9, v10, v11, v12);
          v13 = v43;
        }

        *(v13 + 16) = v19 + 1;
        v20 = v13 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v16;
        v14 += 16;
        --v8;
      }

      while (v8);
      v42[0] = v13;

      sub_26A3AED68(v42);

      sub_26A39F798(v42[0], v41, v38, v21, v22, v23, v24);
      OUTLINED_FUNCTION_126_4();
      v42[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_65_0();
      v25 = sub_26A424B54();
      v27 = v26;

      OUTLINED_FUNCTION_81_0();
      v42[0] = v28;
      v42[1] = v29;
      v30 = sub_26A31B838(v25, v27);
      v32 = v31;

      MEMORY[0x26D65BA70](v30, v32);

      OUTLINED_FUNCTION_184_1();
      v33 = v42[0];
      v34 = v42[1];
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740) + 28);

      sub_26A10C4AC();
      sub_26A10C8E0(*(*(v41 + v35) + 16));
      OUTLINED_FUNCTION_56_16(*(v41 + v35));
      v36[4] = a2;
      v36[5] = a3;
      v36[6] = v33;
      v36[7] = v34;
      *(v41 + v35) = v37;
    }
  }
}

void sub_26A3A261C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t), uint64_t (*a8)(void))
{
  if (result)
  {
    v10 = *(result + 16);
    if (v10)
    {
      v11 = v8;
      v12 = a4;
      v47 = MEMORY[0x277D84F90];
      sub_26A10D50C(0, v10, 0, a4, a5, a6, a7);
      v13 = v47;
      v14 = (result + 40);
      do
      {
        v16 = *(v14 - 1);
        v15 = *v14;
        v47 = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);

        if (v18 >= v17 >> 1)
        {
          sub_26A10D50C(v17 > 1, v18 + 1, 1, v19, v20, v21, v22);
          v13 = v47;
        }

        *(v13 + 16) = v18 + 1;
        v23 = v13 + 16 * v18;
        *(v23 + 32) = v16;
        *(v23 + 40) = v15;
        v14 += 2;
        --v10;
      }

      while (v10);
      v47 = v13;

      sub_26A3AED68(&v47);

      sub_26A39F798(v47, v11, v12, v24, v25, v26, v27);
      OUTLINED_FUNCTION_126_4();
      v47 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_65_0();
      sub_26A424B54();

      OUTLINED_FUNCTION_81_0();
      v47 = v28;
      v48 = v29;
      v30 = OUTLINED_FUNCTION_67_7();
      v32 = sub_26A31B838(v30, v31);
      v34 = v33;

      MEMORY[0x26D65BA70](v32, v34);

      OUTLINED_FUNCTION_184_1();
      v35 = v47;
      v36 = v48;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) + 28);

      a7(v38);
      a8(*(*(v11 + v37) + 16));
      OUTLINED_FUNCTION_56_16(*(v11 + v37));
      v39[4] = a2;
      v39[5] = a3;
      v39[6] = v35;
      v39[7] = v36;
      *(v11 + v37) = v40;
    }
  }
}

void sub_26A3A2878(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v8 = *(result + 16);
    if (v8)
    {
      v41 = a4;
      OUTLINED_FUNCTION_181_2(result, a2, a3, a4, a5, a6, a7);
      v13 = v47;
      v14 = (result + 32);
      do
      {
        if (HIBYTE(*(v14 + 2)) == 4)
        {
          v15 = 0xE600000000000000;
          v16 = 0x726563617073;
        }

        else
        {
          v17 = *v14 | (*(v14 + 2) << 32);
          v45 = 0x286C6C6563;
          v46 = 0xE500000000000000;
          if ((v17 & 0x100000000) != 0)
          {
            v19 = 0xE400000000000000;
            v18 = 1869903201;
          }

          else
          {
            MEMORY[0x26D65BA70](0x286465786966, 0xE600000000000000);
            sub_26A424DC4();
            MEMORY[0x26D65BA70](41, 0xE100000000000000);
            v18 = 0;
            v19 = 0xE000000000000000;
          }

          MEMORY[0x26D65BA70](v18, v19);

          MEMORY[0x26D65BA70](8236, 0xE200000000000000);
          v20 = 0xE700000000000000;
          v21 = 0x746C7561666564;
          switch(v17 >> 40)
          {
            case 1uLL:
              v21 = 0x676E696461656CLL;
              break;
            case 2uLL:
              v20 = 0xE600000000000000;
              v21 = 0x7265746E6563;
              break;
            case 3uLL:
              v20 = 0xE800000000000000;
              v21 = 0x676E696C69617274;
              break;
            default:
              break;
          }

          MEMORY[0x26D65BA70](v21, v20);

          MEMORY[0x26D65BA70](41, 0xE100000000000000);
          v16 = v45;
          v15 = v46;
        }

        v47 = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_26A10D50C(v22 > 1, v23 + 1, 1, v9, v10, v11, v12);
          v13 = v47;
        }

        *(v13 + 16) = v23 + 1;
        v24 = v13 + 16 * v23;
        *(v24 + 32) = v16;
        *(v24 + 40) = v15;
        v14 += 2;
        --v8;
      }

      while (v8);
      v45 = v13;

      sub_26A3AED68(&v45);

      sub_26A39F798(v45, v44, v41, v25, v26, v27, v28);
      OUTLINED_FUNCTION_126_4();
      v45 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_65_0();
      sub_26A424B54();

      OUTLINED_FUNCTION_81_0();
      v45 = v29;
      v46 = v30;
      v31 = OUTLINED_FUNCTION_67_7();
      v33 = sub_26A31B838(v31, v32);
      v35 = v34;

      MEMORY[0x26D65BA70](v33, v35);

      OUTLINED_FUNCTION_184_1();
      v36 = v45;
      v37 = v46;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF90, &qword_26A426B40) + 28);

      sub_26A10C554();
      sub_26A10C988(*(*(v44 + v38) + 16));
      OUTLINED_FUNCTION_56_16(*(v44 + v38));
      v39[4] = a2;
      v39[5] = a3;
      v39[6] = v36;
      v39[7] = v37;
      *(v44 + v38) = v40;
    }
  }
}

Swift::String __swiftcall Component.description(redacted:)(Swift::Bool redacted)
{
  v4 = v1;
  v820 = redacted;
  v5 = type metadata accessor for _ProtoSummaryItem_Switch(0);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v8 = OUTLINED_FUNCTION_35(v7);
  v9 = type metadata accessor for _ProtoSummaryItem_PairNumber(v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v12 = OUTLINED_FUNCTION_35(v11);
  v13 = type metadata accessor for _ProtoSummaryItem_Pair(v12);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v16 = OUTLINED_FUNCTION_35(v15);
  v17 = type metadata accessor for TertiaryHeaderStandard(v16);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v20 = OUTLINED_FUNCTION_35(v19);
  v21 = type metadata accessor for _ProtoTertiaryHeader_Standard(v20);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v24 = OUTLINED_FUNCTION_35(v23);
  v25 = type metadata accessor for KeyValueStandard(v24);
  v26 = OUTLINED_FUNCTION_41(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11();
  v28 = OUTLINED_FUNCTION_35(v27);
  v29 = type metadata accessor for _ProtoKeyValue_Standard(v28);
  v30 = OUTLINED_FUNCTION_41(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v32 = OUTLINED_FUNCTION_35(v31);
  v33 = type metadata accessor for HorizontalListStandard(v32);
  v34 = OUTLINED_FUNCTION_41(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11();
  v36 = OUTLINED_FUNCTION_35(v35);
  v37 = type metadata accessor for _ProtoHorizontalList_Standard(v36);
  v38 = OUTLINED_FUNCTION_41(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_11();
  v40 = OUTLINED_FUNCTION_35(v39);
  v41 = type metadata accessor for HeroHeader(v40);
  v42 = OUTLINED_FUNCTION_41(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_11();
  v44 = OUTLINED_FUNCTION_35(v43);
  v45 = type metadata accessor for _ProtoHeroHeader(v44);
  v46 = OUTLINED_FUNCTION_41(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_11();
  v48 = OUTLINED_FUNCTION_35(v47);
  v49 = type metadata accessor for SashStandard(v48);
  v50 = OUTLINED_FUNCTION_41(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_11();
  v52 = OUTLINED_FUNCTION_35(v51);
  v53 = type metadata accessor for _ProtoSash_Standard(v52);
  v54 = OUTLINED_FUNCTION_41(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFA0, &qword_26A426BC8);
  OUTLINED_FUNCTION_13_31(v56, v821);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_42();
  v59 = OUTLINED_FUNCTION_35(v58);
  v60 = type metadata accessor for IntentsUIStandard(v59);
  v61 = OUTLINED_FUNCTION_41(v60);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_8();
  v817 = v62;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_48();
  v66 = OUTLINED_FUNCTION_35(v65);
  v67 = type metadata accessor for _ProtoIntentsUI_Standard(v66);
  v68 = OUTLINED_FUNCTION_41(v67);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_11();
  v70 = OUTLINED_FUNCTION_35(v69);
  v71 = type metadata accessor for ButtonContainer(v70);
  v72 = OUTLINED_FUNCTION_41(v71);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_11();
  v74 = OUTLINED_FUNCTION_35(v73);
  v75 = type metadata accessor for _ProtoButton_Container(v74);
  v76 = OUTLINED_FUNCTION_41(v75);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_11();
  v78 = OUTLINED_FUNCTION_35(v77);
  v79 = type metadata accessor for VisualizationMap(v78);
  v80 = OUTLINED_FUNCTION_41(v79);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_11();
  v82 = OUTLINED_FUNCTION_35(v81);
  v83 = type metadata accessor for _ProtoVisualization_Map(v82);
  v84 = OUTLINED_FUNCTION_41(v83);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_11();
  v86 = OUTLINED_FUNCTION_35(v85);
  v87 = type metadata accessor for VisualizationImage(v86);
  v88 = OUTLINED_FUNCTION_41(v87);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_11();
  v90 = OUTLINED_FUNCTION_35(v89);
  v91 = type metadata accessor for _ProtoVisualization_Image(v90);
  v92 = OUTLINED_FUNCTION_41(v91);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_11();
  v94 = OUTLINED_FUNCTION_35(v93);
  v95 = type metadata accessor for VisualizationChart(v94);
  v96 = OUTLINED_FUNCTION_41(v95);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_11();
  v98 = OUTLINED_FUNCTION_35(v97);
  v99 = type metadata accessor for _ProtoVisualization_Chart(v98);
  v100 = OUTLINED_FUNCTION_41(v99);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_11();
  v102 = OUTLINED_FUNCTION_35(v101);
  v103 = type metadata accessor for LongItemText(v102);
  v104 = OUTLINED_FUNCTION_41(v103);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_11();
  v106 = OUTLINED_FUNCTION_35(v105);
  v107 = type metadata accessor for _ProtoLongItem_Text(v106);
  v108 = OUTLINED_FUNCTION_41(v107);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF98, &unk_26A42DA10);
  OUTLINED_FUNCTION_41(v110);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_42();
  v815 = v112;
  v814 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF90, &qword_26A426B40);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_42();
  v816 = v114;
  v115 = OUTLINED_FUNCTION_45();
  v116 = type metadata accessor for Table(v115);
  v117 = OUTLINED_FUNCTION_41(v116);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_8();
  v813 = v118;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_48();
  v122 = OUTLINED_FUNCTION_35(v121);
  v123 = type metadata accessor for _ProtoTable(v122);
  v124 = OUTLINED_FUNCTION_41(v123);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_11();
  v126 = OUTLINED_FUNCTION_35(v125);
  v127 = type metadata accessor for ControlPlayerButton(v126);
  v128 = OUTLINED_FUNCTION_41(v127);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_11();
  v130 = OUTLINED_FUNCTION_35(v129);
  v131 = type metadata accessor for _ProtoControl_PlayerButton(v130);
  v132 = OUTLINED_FUNCTION_41(v131);
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_11();
  v134 = OUTLINED_FUNCTION_35(v133);
  v135 = type metadata accessor for ControlSlider(v134);
  v136 = OUTLINED_FUNCTION_41(v135);
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_11();
  v138 = OUTLINED_FUNCTION_35(v137);
  v139 = type metadata accessor for _ProtoControl_Slider(v138);
  v140 = OUTLINED_FUNCTION_41(v139);
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_11();
  v142 = OUTLINED_FUNCTION_35(v141);
  v143 = type metadata accessor for TextInput(v142);
  v144 = OUTLINED_FUNCTION_41(v143);
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_11();
  v146 = OUTLINED_FUNCTION_35(v145);
  v147 = type metadata accessor for _ProtoTextInput(v146);
  v148 = OUTLINED_FUNCTION_41(v147);
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_11();
  v150 = OUTLINED_FUNCTION_35(v149);
  v151 = type metadata accessor for SystemTextClarificationTitle(v150);
  v152 = OUTLINED_FUNCTION_41(v151);
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_11();
  v154 = OUTLINED_FUNCTION_35(v153);
  v155 = type metadata accessor for _ProtoSystemText_ClarificationTitle(v154);
  v156 = OUTLINED_FUNCTION_41(v155);
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v157);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF88, &qword_26A42DA20);
  OUTLINED_FUNCTION_13_31(v158, v803);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_42();
  v161 = OUTLINED_FUNCTION_35(v160);
  v162 = type metadata accessor for StatusIndicatorCancelled(v161);
  v163 = OUTLINED_FUNCTION_41(v162);
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_8();
  v812 = v164;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_48();
  v168 = OUTLINED_FUNCTION_35(v167);
  v169 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v168);
  v170 = OUTLINED_FUNCTION_41(v169);
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v171);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFD8, &unk_26A426C00);
  OUTLINED_FUNCTION_13_31(v172, v801);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_42();
  v175 = OUTLINED_FUNCTION_35(v174);
  v176 = type metadata accessor for StatusIndicatorInProgress(v175);
  v177 = OUTLINED_FUNCTION_41(v176);
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_8();
  v811 = v178;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_48();
  v182 = OUTLINED_FUNCTION_35(v181);
  v183 = type metadata accessor for _ProtoStatusIndicator_InProgress(v182);
  v184 = OUTLINED_FUNCTION_41(v183);
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v185);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF80, &unk_26A426B30);
  OUTLINED_FUNCTION_13_31(v186, v800);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v187);
  OUTLINED_FUNCTION_42();
  v189 = OUTLINED_FUNCTION_35(v188);
  v190 = type metadata accessor for StatusIndicatorError(v189);
  v191 = OUTLINED_FUNCTION_41(v190);
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_8();
  v809 = v192;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_48();
  v196 = OUTLINED_FUNCTION_35(v195);
  v197 = type metadata accessor for _ProtoStatusIndicator_Error(v196);
  v198 = OUTLINED_FUNCTION_41(v197);
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v199);
  v808 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF78, &qword_26A4354C0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_42();
  v810 = v201;
  v202 = OUTLINED_FUNCTION_45();
  v203 = type metadata accessor for StatusIndicatorSuccess(v202);
  v204 = OUTLINED_FUNCTION_41(v203);
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v205);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v206);
  OUTLINED_FUNCTION_48();
  v208 = OUTLINED_FUNCTION_35(v207);
  v209 = type metadata accessor for _ProtoStatusIndicator_Success(v208);
  v210 = OUTLINED_FUNCTION_41(v209);
  MEMORY[0x28223BE20](v210);
  OUTLINED_FUNCTION_11();
  v212 = OUTLINED_FUNCTION_35(v211);
  v213 = type metadata accessor for ReferenceFootnote(v212);
  v214 = OUTLINED_FUNCTION_41(v213);
  MEMORY[0x28223BE20](v214);
  OUTLINED_FUNCTION_11();
  v216 = OUTLINED_FUNCTION_35(v215);
  v217 = type metadata accessor for _ProtoReference_Footnote(v216);
  v218 = OUTLINED_FUNCTION_41(v217);
  MEMORY[0x28223BE20](v218);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v219);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v220);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v221);
  OUTLINED_FUNCTION_42();
  v818 = v222;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v223);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v224);
  OUTLINED_FUNCTION_42();
  v819 = v225;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF70, &unk_26A426B20);
  OUTLINED_FUNCTION_13_31(v226, &v826);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v227);
  OUTLINED_FUNCTION_42();
  v229 = OUTLINED_FUNCTION_35(v228);
  v230 = type metadata accessor for ReferenceButton(v229);
  v231 = OUTLINED_FUNCTION_41(v230);
  MEMORY[0x28223BE20](v231);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v232);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v233);
  OUTLINED_FUNCTION_48();
  v235 = OUTLINED_FUNCTION_35(v234);
  v236 = type metadata accessor for _ProtoReference_Button(v235);
  v237 = OUTLINED_FUNCTION_41(v236);
  MEMORY[0x28223BE20](v237);
  OUTLINED_FUNCTION_11();
  v239 = OUTLINED_FUNCTION_35(v238);
  v240 = type metadata accessor for ReferenceRich(v239);
  v241 = OUTLINED_FUNCTION_41(v240);
  MEMORY[0x28223BE20](v241);
  OUTLINED_FUNCTION_11();
  v243 = OUTLINED_FUNCTION_35(v242);
  v244 = type metadata accessor for _ProtoReference_Rich(v243);
  v245 = OUTLINED_FUNCTION_41(v244);
  MEMORY[0x28223BE20](v245);
  OUTLINED_FUNCTION_11();
  v247 = OUTLINED_FUNCTION_35(v246);
  v248 = type metadata accessor for ReferenceLogo(v247);
  v249 = OUTLINED_FUNCTION_41(v248);
  MEMORY[0x28223BE20](v249);
  OUTLINED_FUNCTION_11();
  v251 = OUTLINED_FUNCTION_35(v250);
  v252 = type metadata accessor for _ProtoReference_Logo(v251);
  v253 = OUTLINED_FUNCTION_41(v252);
  MEMORY[0x28223BE20](v253);
  OUTLINED_FUNCTION_11();
  v255 = OUTLINED_FUNCTION_35(v254);
  v256 = type metadata accessor for ReferenceStandard(v255);
  v257 = OUTLINED_FUNCTION_41(v256);
  MEMORY[0x28223BE20](v257);
  OUTLINED_FUNCTION_11();
  v259 = OUTLINED_FUNCTION_35(v258);
  v260 = type metadata accessor for _ProtoReference_Standard(v259);
  v261 = OUTLINED_FUNCTION_41(v260);
  MEMORY[0x28223BE20](v261);
  OUTLINED_FUNCTION_11();
  v263 = OUTLINED_FUNCTION_35(v262);
  v264 = type metadata accessor for BinaryButton(v263);
  v265 = OUTLINED_FUNCTION_41(v264);
  MEMORY[0x28223BE20](v265);
  OUTLINED_FUNCTION_11();
  v267 = OUTLINED_FUNCTION_35(v266);
  v268 = type metadata accessor for _ProtoBinaryButton(v267);
  v269 = OUTLINED_FUNCTION_41(v268);
  MEMORY[0x28223BE20](v269);
  OUTLINED_FUNCTION_11();
  v271 = OUTLINED_FUNCTION_35(v270);
  v272 = type metadata accessor for Button(v271);
  v273 = OUTLINED_FUNCTION_41(v272);
  MEMORY[0x28223BE20](v273);
  OUTLINED_FUNCTION_11();
  v275 = OUTLINED_FUNCTION_35(v274);
  v276 = type metadata accessor for _ProtoButton(v275);
  v277 = OUTLINED_FUNCTION_41(v276);
  MEMORY[0x28223BE20](v277);
  OUTLINED_FUNCTION_11();
  v279 = OUTLINED_FUNCTION_35(v278);
  v280 = type metadata accessor for SectionHeaderRich(v279);
  v281 = OUTLINED_FUNCTION_41(v280);
  MEMORY[0x28223BE20](v281);
  OUTLINED_FUNCTION_11();
  v283 = OUTLINED_FUNCTION_35(v282);
  v284 = type metadata accessor for _ProtoSectionHeader_Rich(v283);
  v285 = OUTLINED_FUNCTION_41(v284);
  MEMORY[0x28223BE20](v285);
  OUTLINED_FUNCTION_11();
  v287 = OUTLINED_FUNCTION_35(v286);
  v288 = type metadata accessor for SectionHeaderStandard(v287);
  v289 = OUTLINED_FUNCTION_41(v288);
  MEMORY[0x28223BE20](v289);
  OUTLINED_FUNCTION_11();
  v291 = OUTLINED_FUNCTION_35(v290);
  v292 = type metadata accessor for _ProtoSectionHeader_Standard(v291);
  v293 = OUTLINED_FUNCTION_41(v292);
  MEMORY[0x28223BE20](v293);
  OUTLINED_FUNCTION_11();
  v295 = OUTLINED_FUNCTION_35(v294);
  v296 = type metadata accessor for SecondaryHeaderEmphasized(v295);
  v297 = OUTLINED_FUNCTION_41(v296);
  MEMORY[0x28223BE20](v297);
  OUTLINED_FUNCTION_11();
  v299 = OUTLINED_FUNCTION_35(v298);
  v300 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v299);
  v301 = OUTLINED_FUNCTION_41(v300);
  MEMORY[0x28223BE20](v301);
  OUTLINED_FUNCTION_11();
  v303 = OUTLINED_FUNCTION_35(v302);
  v304 = type metadata accessor for SecondaryHeaderStandard(v303);
  v305 = OUTLINED_FUNCTION_41(v304);
  MEMORY[0x28223BE20](v305);
  OUTLINED_FUNCTION_11();
  v307 = OUTLINED_FUNCTION_35(v306);
  v308 = type metadata accessor for _ProtoSecondaryHeader_Standard(v307);
  v309 = OUTLINED_FUNCTION_41(v308);
  MEMORY[0x28223BE20](v309);
  OUTLINED_FUNCTION_11();
  v311 = OUTLINED_FUNCTION_35(v310);
  v312 = type metadata accessor for PrimaryHeaderRich(v311);
  v313 = OUTLINED_FUNCTION_41(v312);
  MEMORY[0x28223BE20](v313);
  OUTLINED_FUNCTION_11();
  v315 = OUTLINED_FUNCTION_35(v314);
  v316 = type metadata accessor for _ProtoPrimaryHeader_Rich(v315);
  v317 = OUTLINED_FUNCTION_41(v316);
  MEMORY[0x28223BE20](v317);
  OUTLINED_FUNCTION_11();
  v319 = OUTLINED_FUNCTION_35(v318);
  v320 = type metadata accessor for PrimaryHeaderMarquee(v319);
  v321 = OUTLINED_FUNCTION_41(v320);
  MEMORY[0x28223BE20](v321);
  OUTLINED_FUNCTION_11();
  v323 = OUTLINED_FUNCTION_35(v322);
  v324 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v323);
  v325 = OUTLINED_FUNCTION_41(v324);
  MEMORY[0x28223BE20](v325);
  OUTLINED_FUNCTION_11();
  v327 = OUTLINED_FUNCTION_35(v326);
  v328 = type metadata accessor for PrimaryHeaderStandard(v327);
  v329 = OUTLINED_FUNCTION_41(v328);
  MEMORY[0x28223BE20](v329);
  OUTLINED_FUNCTION_11();
  v331 = OUTLINED_FUNCTION_35(v330);
  v332 = type metadata accessor for _ProtoPrimaryHeader_Standard(v331);
  v333 = OUTLINED_FUNCTION_41(v332);
  MEMORY[0x28223BE20](v333);
  OUTLINED_FUNCTION_11();
  v335 = OUTLINED_FUNCTION_35(v334);
  v336 = type metadata accessor for SimpleItemRichSearchResult(v335);
  v337 = OUTLINED_FUNCTION_41(v336);
  MEMORY[0x28223BE20](v337);
  OUTLINED_FUNCTION_11();
  v339 = OUTLINED_FUNCTION_35(v338);
  v340 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v339);
  v341 = OUTLINED_FUNCTION_41(v340);
  MEMORY[0x28223BE20](v341);
  OUTLINED_FUNCTION_11();
  v343 = OUTLINED_FUNCTION_35(v342);
  v344 = type metadata accessor for SimpleItemPlayer(v343);
  v345 = OUTLINED_FUNCTION_41(v344);
  MEMORY[0x28223BE20](v345);
  OUTLINED_FUNCTION_11();
  v347 = OUTLINED_FUNCTION_35(v346);
  v348 = type metadata accessor for _ProtoSimpleItem_Player(v347);
  v349 = OUTLINED_FUNCTION_41(v348);
  MEMORY[0x28223BE20](v349);
  OUTLINED_FUNCTION_11();
  v351 = OUTLINED_FUNCTION_35(v350);
  v352 = type metadata accessor for SimpleItemVisual(v351);
  v353 = OUTLINED_FUNCTION_41(v352);
  MEMORY[0x28223BE20](v353);
  OUTLINED_FUNCTION_11();
  v355 = OUTLINED_FUNCTION_35(v354);
  v356 = type metadata accessor for _ProtoSimpleItem_Visual(v355);
  v357 = OUTLINED_FUNCTION_41(v356);
  MEMORY[0x28223BE20](v357);
  OUTLINED_FUNCTION_11();
  v359 = OUTLINED_FUNCTION_35(v358);
  v360 = type metadata accessor for SimpleItemReverseRich(v359);
  v361 = OUTLINED_FUNCTION_41(v360);
  MEMORY[0x28223BE20](v361);
  OUTLINED_FUNCTION_11();
  v363 = OUTLINED_FUNCTION_35(v362);
  v364 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v363);
  v365 = OUTLINED_FUNCTION_41(v364);
  MEMORY[0x28223BE20](v365);
  OUTLINED_FUNCTION_11();
  v367 = OUTLINED_FUNCTION_35(v366);
  v368 = type metadata accessor for SimpleItemRich(v367);
  v369 = OUTLINED_FUNCTION_41(v368);
  MEMORY[0x28223BE20](v369);
  OUTLINED_FUNCTION_11();
  v371 = OUTLINED_FUNCTION_35(v370);
  v372 = type metadata accessor for _ProtoSimpleItem_Rich(v371);
  v373 = OUTLINED_FUNCTION_41(v372);
  MEMORY[0x28223BE20](v373);
  OUTLINED_FUNCTION_11();
  v375 = OUTLINED_FUNCTION_35(v374);
  v376 = type metadata accessor for SimpleItemStandard(v375);
  v377 = OUTLINED_FUNCTION_41(v376);
  MEMORY[0x28223BE20](v377);
  OUTLINED_FUNCTION_11();
  v379 = OUTLINED_FUNCTION_35(v378);
  v380 = type metadata accessor for _ProtoSimpleItem_Standard(v379);
  v381 = OUTLINED_FUNCTION_41(v380);
  MEMORY[0x28223BE20](v381);
  OUTLINED_FUNCTION_11();
  v383 = OUTLINED_FUNCTION_35(v382);
  v384 = type metadata accessor for SummaryItemSwitchV2(v383);
  v385 = OUTLINED_FUNCTION_41(v384);
  MEMORY[0x28223BE20](v385);
  OUTLINED_FUNCTION_11();
  v387 = OUTLINED_FUNCTION_35(v386);
  v388 = type metadata accessor for _ProtoSummaryItem_SwitchV2(v387);
  v389 = OUTLINED_FUNCTION_41(v388);
  MEMORY[0x28223BE20](v389);
  OUTLINED_FUNCTION_11();
  v391 = OUTLINED_FUNCTION_35(v390);
  v392 = type metadata accessor for SummaryItemPlayer(v391);
  v393 = OUTLINED_FUNCTION_41(v392);
  MEMORY[0x28223BE20](v393);
  OUTLINED_FUNCTION_11();
  v395 = OUTLINED_FUNCTION_35(v394);
  v396 = type metadata accessor for _ProtoSummaryItem_Player(v395);
  v397 = OUTLINED_FUNCTION_41(v396);
  MEMORY[0x28223BE20](v397);
  OUTLINED_FUNCTION_11();
  v399 = OUTLINED_FUNCTION_35(v398);
  v400 = type metadata accessor for SummaryItemButton(v399);
  v401 = OUTLINED_FUNCTION_41(v400);
  MEMORY[0x28223BE20](v401);
  OUTLINED_FUNCTION_11();
  v403 = OUTLINED_FUNCTION_35(v402);
  v404 = type metadata accessor for _ProtoSummaryItem_Button(v403);
  v405 = OUTLINED_FUNCTION_41(v404);
  MEMORY[0x28223BE20](v405);
  OUTLINED_FUNCTION_11();
  v407 = OUTLINED_FUNCTION_35(v406);
  v408 = type metadata accessor for SummaryItemPairNumberV2(v407);
  v409 = OUTLINED_FUNCTION_41(v408);
  MEMORY[0x28223BE20](v409);
  OUTLINED_FUNCTION_11();
  v411 = OUTLINED_FUNCTION_35(v410);
  v412 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(v411);
  v413 = OUTLINED_FUNCTION_41(v412);
  MEMORY[0x28223BE20](v413);
  OUTLINED_FUNCTION_11();
  v415 = OUTLINED_FUNCTION_35(v414);
  v416 = type metadata accessor for SummaryItemPairV2(v415);
  v417 = OUTLINED_FUNCTION_41(v416);
  MEMORY[0x28223BE20](v417);
  OUTLINED_FUNCTION_11();
  v419 = OUTLINED_FUNCTION_35(v418);
  v420 = type metadata accessor for _ProtoSummaryItem_PairV2(v419);
  v421 = OUTLINED_FUNCTION_41(v420);
  MEMORY[0x28223BE20](v421);
  OUTLINED_FUNCTION_11();
  v423 = OUTLINED_FUNCTION_35(v422);
  v424 = type metadata accessor for SummaryItemDetailedText(v423);
  v425 = OUTLINED_FUNCTION_41(v424);
  MEMORY[0x28223BE20](v425);
  OUTLINED_FUNCTION_11();
  v427 = OUTLINED_FUNCTION_35(v426);
  v428 = type metadata accessor for _ProtoSummaryItem_DetailedText(v427);
  v429 = OUTLINED_FUNCTION_41(v428);
  MEMORY[0x28223BE20](v429);
  OUTLINED_FUNCTION_11();
  v431 = OUTLINED_FUNCTION_35(v430);
  v432 = type metadata accessor for SummaryItemLargeText(v431);
  v433 = OUTLINED_FUNCTION_41(v432);
  MEMORY[0x28223BE20](v433);
  OUTLINED_FUNCTION_11();
  v435 = OUTLINED_FUNCTION_35(v434);
  v436 = type metadata accessor for _ProtoSummaryItem_LargeText(v435);
  v437 = OUTLINED_FUNCTION_41(v436);
  MEMORY[0x28223BE20](v437);
  OUTLINED_FUNCTION_11();
  v439 = OUTLINED_FUNCTION_35(v438);
  v440 = type metadata accessor for SummaryItemText(v439);
  v441 = OUTLINED_FUNCTION_41(v440);
  MEMORY[0x28223BE20](v441);
  OUTLINED_FUNCTION_11();
  v443 = OUTLINED_FUNCTION_35(v442);
  v444 = type metadata accessor for _ProtoSummaryItem_Text(v443);
  v445 = OUTLINED_FUNCTION_41(v444);
  MEMORY[0x28223BE20](v445);
  OUTLINED_FUNCTION_11();
  v447 = OUTLINED_FUNCTION_35(v446);
  v448 = type metadata accessor for SummaryItemShortNumber(v447);
  v449 = OUTLINED_FUNCTION_41(v448);
  MEMORY[0x28223BE20](v449);
  OUTLINED_FUNCTION_11();
  v451 = OUTLINED_FUNCTION_35(v450);
  v452 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v451);
  v453 = OUTLINED_FUNCTION_41(v452);
  MEMORY[0x28223BE20](v453);
  OUTLINED_FUNCTION_11();
  v455 = OUTLINED_FUNCTION_35(v454);
  v456 = type metadata accessor for SummaryItemStandard(v455);
  v457 = OUTLINED_FUNCTION_41(v456);
  MEMORY[0x28223BE20](v457);
  OUTLINED_FUNCTION_11();
  v459 = OUTLINED_FUNCTION_35(v458);
  v460 = type metadata accessor for _ProtoSummaryItem_Standard(v459);
  v461 = OUTLINED_FUNCTION_41(v460);
  MEMORY[0x28223BE20](v461);
  OUTLINED_FUNCTION_11();
  v463 = OUTLINED_FUNCTION_35(v462);
  v464 = type metadata accessor for FactItemButton(v463);
  v465 = OUTLINED_FUNCTION_41(v464);
  MEMORY[0x28223BE20](v465);
  OUTLINED_FUNCTION_11();
  v467 = OUTLINED_FUNCTION_35(v466);
  v468 = type metadata accessor for _ProtoFactItem_Button(v467);
  v469 = OUTLINED_FUNCTION_41(v468);
  MEMORY[0x28223BE20](v469);
  OUTLINED_FUNCTION_11();
  v471 = OUTLINED_FUNCTION_35(v470);
  v472 = type metadata accessor for FactItemHeroNumber(v471);
  v473 = OUTLINED_FUNCTION_41(v472);
  MEMORY[0x28223BE20](v473);
  OUTLINED_FUNCTION_11();
  v475 = OUTLINED_FUNCTION_35(v474);
  v476 = type metadata accessor for _ProtoFactItem_HeroNumber(v475);
  v477 = OUTLINED_FUNCTION_41(v476);
  MEMORY[0x28223BE20](v477);
  OUTLINED_FUNCTION_11();
  v479 = OUTLINED_FUNCTION_35(v478);
  v480 = type metadata accessor for FactItemShortNumber(v479);
  v481 = OUTLINED_FUNCTION_41(v480);
  MEMORY[0x28223BE20](v481);
  OUTLINED_FUNCTION_11();
  v483 = OUTLINED_FUNCTION_35(v482);
  v484 = type metadata accessor for _ProtoFactItem_ShortNumber(v483);
  v485 = OUTLINED_FUNCTION_41(v484);
  MEMORY[0x28223BE20](v485);
  OUTLINED_FUNCTION_11();
  v487 = OUTLINED_FUNCTION_35(v486);
  v488 = type metadata accessor for FactItemStandard(v487);
  v489 = OUTLINED_FUNCTION_41(v488);
  MEMORY[0x28223BE20](v489);
  OUTLINED_FUNCTION_2_52();
  v490 = type metadata accessor for _ProtoFactItem_Standard(0);
  v491 = OUTLINED_FUNCTION_41(v490);
  MEMORY[0x28223BE20](v491);
  OUTLINED_FUNCTION_1_20();
  v492 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  OUTLINED_FUNCTION_41(v492);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v493);
  OUTLINED_FUNCTION_42();
  v495 = OUTLINED_FUNCTION_35(v494);
  v496 = type metadata accessor for CustomCanvas(v495);
  v497 = OUTLINED_FUNCTION_41(v496);
  MEMORY[0x28223BE20](v497);
  OUTLINED_FUNCTION_17();
  v500 = v498 - v499;
  MEMORY[0x28223BE20](v501);
  OUTLINED_FUNCTION_48();
  v503 = OUTLINED_FUNCTION_35(v502);
  v504 = type metadata accessor for _ProtoCustomCanvas(v503);
  v505 = OUTLINED_FUNCTION_41(v504);
  MEMORY[0x28223BE20](v505);
  OUTLINED_FUNCTION_11();
  v507 = OUTLINED_FUNCTION_35(v506);
  v508 = type metadata accessor for ControlSwitch(v507);
  v509 = OUTLINED_FUNCTION_41(v508);
  MEMORY[0x28223BE20](v509);
  OUTLINED_FUNCTION_18();
  v510 = type metadata accessor for _ProtoControl_Switch(0);
  v511 = OUTLINED_FUNCTION_41(v510);
  MEMORY[0x28223BE20](v511);
  OUTLINED_FUNCTION_18();
  object = (v513 - v512);
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v515);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v516);
  v517 = OUTLINED_FUNCTION_177();
  v518 = type metadata accessor for _ProtoResponse.Component(v517);
  v519 = OUTLINED_FUNCTION_41(v518);
  MEMORY[0x28223BE20](v519);
  OUTLINED_FUNCTION_18();
  v520 = v4;
  v521 = *(v4 + 8);
  v522 = v821[1];
  v521(v821[0], v520);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_20_29();
  sub_26A3AF8D0();
  type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  v523 = OUTLINED_FUNCTION_193_1();
  if (__swift_getEnumTagSinglePayload(v523, v524, v525) == 1)
  {
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    object = 0xE90000000000003ELL;
    countAndFlagsBits = 0x676E697373696D3CLL;
    v526 = sub_26A424AE4();
    __swift_project_value_buffer(v526, qword_2803A8950);
    v527 = sub_26A424AD4();
    v528 = sub_26A424E04();
    if (os_log_type_enabled(v527, v528))
    {
      v529 = swift_slowAlloc();
      *v529 = 0;
      _os_log_impl(&dword_26A0B8000, v527, v528, "Expected a Component value, but found none!", v529, 2u);
      MEMORY[0x26D65C950](v529, -1, -1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_94_1();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_26A3AF978();
        OUTLINED_FUNCTION_122_2();
        sub_26A3AF924();
        v589 = OUTLINED_FUNCTION_52_20();
        FactItemStandard.description(redacted:)(v589);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_61_13();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 2u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v585 = OUTLINED_FUNCTION_52_20();
        FactItemShortNumber.description(redacted:)(v585);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_65_14();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 3u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v587 = OUTLINED_FUNCTION_52_20();
        FactItemHeroNumber.description(redacted:)(v587);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_63_12();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 4u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v579 = OUTLINED_FUNCTION_52_20();
        SummaryItemStandard.description(redacted:)(v579);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_72_8();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 5u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v597 = OUTLINED_FUNCTION_52_20();
        SummaryItemShortNumber.description(redacted:)(v597);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_162_2();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 6u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v599 = OUTLINED_FUNCTION_52_20();
        SummaryItemText.description(redacted:)(v599);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_160_2();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 7u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v588 = OUTLINED_FUNCTION_52_20();
        SummaryItemLargeText.description(redacted:)(v588);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_62_12();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 8u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v601 = OUTLINED_FUNCTION_52_20();
        SummaryItemDetailedText.description(redacted:)(v601);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_158_4();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 9u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v582 = OUTLINED_FUNCTION_52_20();
        SimpleItemStandard.description(redacted:)(v582);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_67_11();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0xAu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v600 = OUTLINED_FUNCTION_52_20();
        SimpleItemRich.description(redacted:)(v600);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_159_3();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0xBu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v577 = OUTLINED_FUNCTION_52_20();
        SimpleItemVisual.description(redacted:)(v577);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_78_9();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0xCu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v581 = OUTLINED_FUNCTION_52_20();
        PrimaryHeaderStandard.description(redacted:)(v581);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_68_11();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0xDu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v598 = OUTLINED_FUNCTION_52_20();
        PrimaryHeaderMarquee.description(redacted:)(v598);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_161_2();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0xEu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v569 = OUTLINED_FUNCTION_52_20();
        PrimaryHeaderRich.description(redacted:)(v569);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_91_8();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0xFu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v586 = OUTLINED_FUNCTION_52_20();
        SecondaryHeaderStandard.description(redacted:)(v586);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_64_12();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x10u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v567 = OUTLINED_FUNCTION_52_20();
        Button.description(redacted:)(v567);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_94_8();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x11u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v595 = OUTLINED_FUNCTION_52_20();
        BinaryButton.description(redacted:)(v595);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_59_16();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x12u:
        OUTLINED_FUNCTION_116_1();
        sub_26A3AF978();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148();
        sub_26A3AF924();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_171_3();
        sub_26A3AF924();
        countAndFlagsBits = v806;
        if (v820)
        {
          sub_26A27E314(v806);
        }

        else
        {
          sub_26A3AF924();
        }

        v714 = v819;
        v715 = v808;
        OUTLINED_FUNCTION_94_1();
        sub_26A3AF978();
        OUTLINED_FUNCTION_38_9();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_126_2(*(v715 + 28));
        StatusIndicatorSuccess.text.getter();
        v716 = type metadata accessor for TextProperty(0);
        v717 = OUTLINED_FUNCTION_25_13(v716);
        sub_26A105654(v717);
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7908(v718, v719, v720, v721, v722, v723, v724, v725, v784, v788);

        v726 = StatusIndicatorSuccess.showIndicator.getter();
        v727 = OUTLINED_FUNCTION_20_14(v726);
        sub_26A1461DC(v727, v728, v729, v730);
        StatusIndicatorSuccess.action.getter(v714);
        OUTLINED_FUNCTION_27_13();
        sub_26A105550();
        v731 = sub_26A13440C();
        sub_26A0FBE18(v731, v732, v733, v734, v735, v736, v737);
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_183_1();
        goto LABEL_77;
      case 0x13u:
        OUTLINED_FUNCTION_116_1();
        sub_26A3AF978();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148();
        sub_26A3AF924();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_171_3();
        sub_26A3AF924();
        if (v820)
        {
          sub_26A1F33A8(v809);
        }

        else
        {
          sub_26A3AF924();
        }

        v760 = v819;
        OUTLINED_FUNCTION_122_2();
        OUTLINED_FUNCTION_164();
        sub_26A3AF978();
        OUTLINED_FUNCTION_38_9();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_126_2(*(v797 + 28));
        StatusIndicatorError.text.getter();
        v761 = type metadata accessor for TextProperty(0);
        v762 = OUTLINED_FUNCTION_25_13(v761);
        sub_26A105528(v762);
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F78E0(v763, v764, v765, v766, v767, v768, v769, v770, v784, v788);

        v771 = StatusIndicatorError.showIndicator.getter();
        v772 = OUTLINED_FUNCTION_20_14(v771);
        sub_26A146140(v772, v773, v774, v775);
        StatusIndicatorError.action.getter(v760);
        OUTLINED_FUNCTION_27_13();
        sub_26A105424();
        v776 = sub_26A13440C();
        sub_26A0FBC48(v776, v777, v778, v779, v780, v781, v782);
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_183_1();
        goto LABEL_77;
      case 0x14u:
        OUTLINED_FUNCTION_116_1();
        sub_26A3AF978();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148();
        sub_26A3AF924();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_171_3();
        sub_26A3AF924();
        if (v820)
        {
          sub_26A156AB0(v811);
        }

        else
        {
          sub_26A3AF924();
        }

        v668 = v819;
        OUTLINED_FUNCTION_122_2();
        OUTLINED_FUNCTION_164();
        sub_26A3AF978();
        OUTLINED_FUNCTION_38_9();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_126_2(*(v798 + 28));
        StatusIndicatorInProgress.text.getter();
        v669 = type metadata accessor for TextProperty(0);
        v670 = OUTLINED_FUNCTION_25_13(v669);
        sub_26A1053FC(v670);
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F78B8(v671, v672, v673, v674, v675, v676, v677, v678, v784, v788);

        v679 = StatusIndicatorInProgress.showIndicator.getter();
        v680 = OUTLINED_FUNCTION_20_14(v679);
        sub_26A1460A4(v680, v681, v682, v683);
        StatusIndicatorInProgress.action.getter(v668);
        OUTLINED_FUNCTION_27_13();
        sub_26A1052F8();
        v684 = sub_26A13440C();
        sub_26A0FBA74(v684, v685, v686, v687, v688, v689, v690);
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_183_1();
        goto LABEL_77;
      case 0x15u:
        OUTLINED_FUNCTION_116_1();
        sub_26A3AF978();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148();
        sub_26A3AF924();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_171_3();
        sub_26A3AF924();
        if (v820)
        {
          sub_26A380EA0(v812);
        }

        else
        {
          sub_26A3AF924();
        }

        v691 = v819;
        OUTLINED_FUNCTION_122_2();
        OUTLINED_FUNCTION_164();
        sub_26A3AF978();
        OUTLINED_FUNCTION_38_9();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_126_2(*(v799 + 28));
        StatusIndicatorCancelled.text.getter();
        v692 = type metadata accessor for TextProperty(0);
        v693 = OUTLINED_FUNCTION_25_13(v692);
        sub_26A1052D0(v693);
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7890(v694, v695, v696, v697, v698, v699, v700, v701, v784, v788);

        v702 = StatusIndicatorCancelled.showIndicator.getter();
        v703 = OUTLINED_FUNCTION_20_14(v702);
        sub_26A146008(v703, v704, v705, v706);
        StatusIndicatorCancelled.action.getter(v691);
        OUTLINED_FUNCTION_27_13();
        sub_26A1051CC();
        v707 = sub_26A13440C();
        sub_26A0FB8A0(v707, v708, v709, v710, v711, v712, v713);
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_183_1();
        goto LABEL_77;
      case 0x16u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v608 = OUTLINED_FUNCTION_52_20();
        TextInput.description(redacted:)(v608);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_154_5();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x17u:
        sub_26A3AF978();
        OUTLINED_FUNCTION_149_5();
        sub_26A3AF924();
        v613 = OUTLINED_FUNCTION_52_20();
        v614 = ControlSwitch.description(redacted:)(v613);
        countAndFlagsBits = v614._countAndFlagsBits;
        OUTLINED_FUNCTION_27_24();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_148_4();
        object = v614._object;
        goto LABEL_77;
      case 0x18u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v584 = OUTLINED_FUNCTION_52_20();
        ControlSlider.description(redacted:)(v584);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_66_10();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x19u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v583 = OUTLINED_FUNCTION_52_20();
        ControlPlayerButton.description(redacted:)(v583);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_22_26();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x1Au:
        v618 = *countAndFlagsBits;
        v619 = *(countAndFlagsBits + 8);
        v822 = 0;
        v823 = 0xE000000000000000;
        sub_26A424EF4();

        v822 = 0xD00000000000001DLL;
        v823 = 0x800000026A448550;
        MEMORY[0x26D65BA70](v618, v619);
        MEMORY[0x26D65BA70](10530, 0xE200000000000000);

        countAndFlagsBits = v822;
        object = v823;
        break;
      case 0x1Bu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v565 = OUTLINED_FUNCTION_52_20();
        ReferenceStandard.description(redacted:)(v565);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_98_10();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x1Cu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v615 = OUTLINED_FUNCTION_52_20();
        ReferenceLogo.description(redacted:)(v615);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_147_6();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x1Du:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v616 = OUTLINED_FUNCTION_52_20();
        ReferenceRich.description(redacted:)(v616);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_146_4();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x1Eu:
        OUTLINED_FUNCTION_116_1();
        sub_26A3AF978();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148();
        sub_26A3AF924();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_171_3();
        sub_26A3AF924();
        countAndFlagsBits = v804;
        if (v820)
        {
          _ProtoReference_Button.redactedProto.getter(v804);
        }

        else
        {
          sub_26A3AF924();
        }

        v739 = v818;
        v738 = v819;
        v740 = v807;
        v741 = v805;
        OUTLINED_FUNCTION_94_1();
        sub_26A3AF978();
        OUTLINED_FUNCTION_38_9();
        OUTLINED_FUNCTION_24_38();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_126_2(*(v741 + 28));
        ReferenceButton.action.getter();
        v742 = type metadata accessor for ActionProperty(0);
        __swift_storeEnumTagSinglePayload(v738, 0, 1, v742);
        OUTLINED_FUNCTION_125_2();
        sub_26A1081A0();
        sub_26A13440C();
        ReferenceButton.label.getter();
        v743 = type metadata accessor for TextProperty(0);
        __swift_storeEnumTagSinglePayload(v739, 0, 1, v743);
        sub_26A108178(v739);
        sub_26A13440C();
        v744 = 0;
        if (*(v740 + 24) == 1)
        {
          v744 = *(v740 + 16);
        }

        sub_26A146454(v744, 0x6F526E6F74747562, 0xEA0000000000656CLL, 0);
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7D90(v745, v746, v747, v748, v749, v750, v751, v752, v784, v788);

        sub_26A0FF490(v753, v754, v755, v756, v757, v758, v759);
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_24_38();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x1Fu:
        OUTLINED_FUNCTION_128();
        sub_26A3AF978();
        v824 = type metadata accessor for SummaryItemPair(0);
        v825 = &protocol witness table for SummaryItemPair;
        OUTLINED_FUNCTION_60_15();
        v590 = sub_26A3AED00();
        OUTLINED_FUNCTION_169_3(v590);
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_123_2();
        sub_26A3AF924();
        v591 = OUTLINED_FUNCTION_168_2();
        __swift_project_boxed_opaque_existential_1(v591, v592);
        v593 = OUTLINED_FUNCTION_41_17();
        v594(v593);
        OUTLINED_FUNCTION_45_12();
        goto LABEL_59;
      case 0x20u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v602 = OUTLINED_FUNCTION_52_20();
        SummaryItemPairV2.description(redacted:)(v602);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_157_3();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x21u:
        OUTLINED_FUNCTION_128();
        sub_26A3AF978();
        v824 = type metadata accessor for SummaryItemPairNumber(0);
        v825 = &protocol witness table for SummaryItemPairNumber;
        OUTLINED_FUNCTION_90_10();
        v570 = sub_26A3AED00();
        OUTLINED_FUNCTION_169_3(v570);
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_123_2();
        sub_26A3AF924();
        v571 = OUTLINED_FUNCTION_168_2();
        __swift_project_boxed_opaque_existential_1(v571, v572);
        v573 = OUTLINED_FUNCTION_41_17();
        v574(v573);
        OUTLINED_FUNCTION_45_12();
        goto LABEL_59;
      case 0x22u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v566 = OUTLINED_FUNCTION_52_20();
        SummaryItemPairNumberV2.description(redacted:)(v566);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_96_6();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x23u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v563 = OUTLINED_FUNCTION_52_20();
        SummaryItemButton.description(redacted:)(v563);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_102_7();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x24u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v564 = OUTLINED_FUNCTION_52_20();
        FactItemButton.description(redacted:)(v564);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_99_7();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x25u:
        OUTLINED_FUNCTION_116_1();
        sub_26A3AF978();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148();
        sub_26A3AF924();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_188_2();
        sub_26A3AF924();
        v559 = v820;
        object = v813;
        if (v820)
        {
          _ProtoTable.redactedProto.getter();
        }

        else
        {
          sub_26A3AF924();
        }

        v649 = v816;
        v650 = v814;
        sub_26A3AF978();
        v649[*(v650 + 32)] = v559;
        sub_26A3AF8D0();
        *&v649[*(v650 + 28)] = MEMORY[0x277D84F90];
        sub_26A145ED0(*v649, 0x6F74617261706573, 0xEE0073656E694C72, 0);
        Table.columns.getter();
        sub_26A3A2878(v651, 0x736E6D756C6F63, 0xE700000000000000, 0, v652, v653, v654);

        Table.header.getter();
        sub_26A104CFC();
        sub_26A13440C();
        KeyPath = swift_getKeyPath();
        sub_26A0F710C(KeyPath, 1937207154, 0xE400000000000000, v656, v657, v658, v659, v660, v784, v788, v792, v793, v794, v795);

        sub_26A0FB144(v661, v662, v663, v664, v665, v666, v667);
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_183_1();
        goto LABEL_77;
      case 0x26u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v617 = OUTLINED_FUNCTION_52_20();
        ReferenceFootnote.description(redacted:)(v617);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_145_5();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x27u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v609 = OUTLINED_FUNCTION_52_20();
        LongItemText.description(redacted:)(v609);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_153_5();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x28u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v580 = OUTLINED_FUNCTION_52_20();
        VisualizationChart.description(redacted:)(v580);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_69_7();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x29u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v596 = OUTLINED_FUNCTION_52_20();
        SummaryItemPlayer.description(redacted:)(v596);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_163_3();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x2Au:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v611 = OUTLINED_FUNCTION_52_20();
        SimpleItemPlayer.description(redacted:)(v611);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_151_4();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x2Bu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v558 = OUTLINED_FUNCTION_52_20();
        SimpleItemReverseRich.description(redacted:)(v558);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_116_3();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x2Cu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v568 = OUTLINED_FUNCTION_52_20();
        SecondaryHeaderEmphasized.description(redacted:)(v568);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_92_8();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x2Du:
        OUTLINED_FUNCTION_128();
        sub_26A3AF978();
        v824 = type metadata accessor for SummaryItemSwitch(0);
        v825 = &protocol witness table for SummaryItemSwitch;
        OUTLINED_FUNCTION_156_3();
        v603 = sub_26A3AED00();
        OUTLINED_FUNCTION_169_3(v603);
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_123_2();
        sub_26A3AF924();
        v604 = OUTLINED_FUNCTION_168_2();
        __swift_project_boxed_opaque_existential_1(v604, v605);
        v606 = OUTLINED_FUNCTION_41_17();
        v607(v606);
        OUTLINED_FUNCTION_45_12();
LABEL_59:
        sub_26A3AF8D0();
        sub_26A1EDCF8(&v822);
        break;
      case 0x2Eu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        SystemTextClarificationTitle.description(redacted:)(1);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_140_3();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x2Fu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v561 = OUTLINED_FUNCTION_52_20();
        VisualizationImage.description(redacted:)(v561);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_108_7();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x30u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v575 = OUTLINED_FUNCTION_52_20();
        VisualizationMap.description(redacted:)(v575);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_85_8();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x31u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v578 = OUTLINED_FUNCTION_52_20();
        ButtonContainer.description(redacted:)(v578);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_23_35();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x32u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_123_2();
        OUTLINED_FUNCTION_116_1();
        sub_26A3AF924();
        v557 = *(v500 + 40) ^ 1;
        if (*(v500 + 40))
        {
          sub_26A3AF924();
        }

        else
        {
          v522 = v2;
          sub_26A2B3BB8();
        }

        OUTLINED_FUNCTION_164();
        sub_26A3AF978();
        v626 = v802;
        *(v522 + *(v802 + 32)) = v557;
        sub_26A3AF8D0();
        *(v522 + *(v626 + 28)) = MEMORY[0x277D84F90];
        v627 = IntentsUIStandard.interaction.getter();
        sub_26A145DF0(v627, 0x7463617265746E69, 0xEB000000006E6F69, 0);

        v628 = swift_getKeyPath();
        sub_26A0F6FF0(v628, 0x73746F6C73, 0xE500000000000000, v629, v630, v631, v632, v633, v784, v788, v792, v793);

        IntentsUIStandard.action.getter();
        OUTLINED_FUNCTION_125_2();
        sub_26A1047FC();
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7778(v634, v635, v636, v637, v638, v639, v640, v641, v787, v791);

        sub_26A0FAA04(v642, v643, v644, v645, v646, v647, v648);
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x33u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v623 = OUTLINED_FUNCTION_52_20();
        SashStandard.description(redacted:)(v623);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_139_3();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x34u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v622 = OUTLINED_FUNCTION_52_20();
        HeroHeader.description(redacted:)(v622);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_142_5();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x35u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v560 = OUTLINED_FUNCTION_52_20();
        HorizontalListStandard.description(redacted:)(v560);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_25_29();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x36u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v620 = OUTLINED_FUNCTION_52_20();
        SectionHeaderStandard.description(redacted:)(v620);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_144_6();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x37u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v621 = OUTLINED_FUNCTION_52_20();
        SectionHeaderRich.description(redacted:)(v621);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_143_4();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x38u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v562 = OUTLINED_FUNCTION_52_20();
        KeyValueStandard.description(redacted:)(v562);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_105_5();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x39u:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v610 = OUTLINED_FUNCTION_52_20();
        TertiaryHeaderStandard.description(redacted:)(v610);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_152_5();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x3Au:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v576 = OUTLINED_FUNCTION_52_20();
        SimpleItemRichSearchResult.description(redacted:)(v576);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_82_11();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x3Bu:
        OUTLINED_FUNCTION_166_4();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A3AF924();
        v612 = OUTLINED_FUNCTION_52_20();
        SummaryItemSwitchV2.description(redacted:)(v612);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_150_4();
        sub_26A3AF8D0();
        goto LABEL_77;
      default:
        OUTLINED_FUNCTION_188_2();
        sub_26A3AF978();
        OUTLINED_FUNCTION_28_21();
        OUTLINED_FUNCTION_116_1();
        sub_26A3AF924();
        OUTLINED_FUNCTION_117_2();
        sub_26A3AF924();
        sub_26A39F8C8();
        v530 = swift_getKeyPath();
        sub_26A0F7F70(v530, 0x614E656C646E7562, 0xEA0000000000656DLL, 1, v531, v532, v533, v534, v784, v788);

        v535 = swift_getKeyPath();
        sub_26A0F7F70(v535, 0x644977656976, 0xE600000000000000, 1, v536, v537, v538, v539, v785, v789);

        v540 = *(v796 + 32);
        v541 = *(v796 + 40);
        sub_26A0E45C0(v540, v541);
        sub_26A3A70F0(v540, v541, 0x6174614477656976, 0xE800000000000000, &qword_28036CD58, &unk_26A437B60, sub_26A10C704, sub_26A10CB38);
        sub_26A0E4784(v540, v541);
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7F70(v542, v543, v544, v545, v546, v547, v548, v549, v786, v790);

        sub_26A146B68(*(v796 + 65), 0xD000000000000011, 0x800000026A446720, 0);
        sub_26A146B68(*(v796 + 66), 0xD000000000000017, 0x800000026A446740, 0);
        sub_26A1018D0(v550, v551, v552, v553, v554, v555, v556);
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_26_32();
        sub_26A3AF8D0();
LABEL_77:
        sub_26A3AF8D0();
        break;
    }
  }

  v624 = countAndFlagsBits;
  v625 = object;
  result._object = v625;
  result._countAndFlagsBits = v624;
  return result;
}

uint64_t sub_26A3A70F0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), void (*a8)(uint64_t))
{
  if (a2 >> 60 != 15)
  {
    v13 = result;
    sub_26A280558(result, a2);

    sub_26A424EF4();

    OUTLINED_FUNCTION_176_1();
    v25 = v14;
    v26 = v15;
    MEMORY[0x26D65B520](v13, a2);
    v16 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v16);

    v17 = OUTLINED_FUNCTION_187_3();
    MEMORY[0x26D65BA70](v17, 0xEA0000000000292FLL);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) + 28);
    a7();
    v19 = *(*(v8 + v18) + 16);
    a8(v19);
    result = sub_26A10E794(v13, a2);
    v20 = *(v8 + v18);
    *(v20 + 16) = v19 + 1;
    v21 = (v20 + 32 * v19);
    v21[4] = a3;
    v21[5] = a4;
    v21[6] = v25;
    v21[7] = v26;
    *(v8 + v18) = v20;
  }

  return result;
}

uint64_t sub_26A3A7250(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    v8 = result;
    sub_26A280558(result, a2);

    sub_26A424EF4();

    OUTLINED_FUNCTION_176_1();
    v17 = v9;
    v18 = v10;
    MEMORY[0x26D65B520](v8, a2);
    v11 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v11);

    v12 = OUTLINED_FUNCTION_187_3();
    MEMORY[0x26D65BA70](v12, 0xEA0000000000292FLL);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA8, &qword_26A4265B8) + 28);
    sub_26A10C7F4();
    v14 = *(*(v4 + v13) + 16);
    sub_26A10CC28(v14);
    result = sub_26A10E794(v8, a2);
    v15 = *(v4 + v13);
    *(v15 + 16) = v14 + 1;
    v16 = (v15 + 32 * v14);
    v16[4] = a3;
    v16[5] = a4;
    v16[6] = v17;
    v16[7] = v18;
    *(v4 + v13) = v15;
  }

  return result;
}

uint64_t sub_26A3A73CC()
{
  OUTLINED_FUNCTION_34_12();
  result = StatusIndicatorError.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A3A73F4()
{
  OUTLINED_FUNCTION_34_12();
  result = StatusIndicatorSuccess.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A3A741C()
{
  OUTLINED_FUNCTION_34_12();
  result = IntentsUIStandard.slots.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A3A7444()
{
  OUTLINED_FUNCTION_34_12();
  result = IntentsUIStandard.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A3A746C()
{
  OUTLINED_FUNCTION_34_12();
  result = CustomCanvas.bundleName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A3A7494()
{
  OUTLINED_FUNCTION_34_12();
  result = CustomCanvas.viewId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A3A74BC()
{
  OUTLINED_FUNCTION_34_12();
  result = CustomCanvas.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t Component.redactedComponent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v1021 = a2;
  v1028 = a1;
  v1019 = a3;
  v5 = type metadata accessor for _ProtoSummaryItem_Switch(0);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v1016[2] = v7;
  v8 = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for _ProtoSummaryItem_PairNumber(v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v1016[1] = v11;
  v12 = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for _ProtoSummaryItem_Pair(v12);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v1015[3] = v15;
  v16 = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for TertiaryHeaderStandard(v16);
  v18 = OUTLINED_FUNCTION_13_31(v17, v968);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v1015[2] = v19;
  v20 = OUTLINED_FUNCTION_45();
  v1014[2] = type metadata accessor for _ProtoTertiaryHeader_Standard(v20);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v1015[0] = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_48();
  v1016[0] = v24;
  v25 = OUTLINED_FUNCTION_45();
  v26 = type metadata accessor for KeyValueStandard(v25);
  v27 = OUTLINED_FUNCTION_13_31(v26, v967);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11();
  v1014[3] = v28;
  v29 = OUTLINED_FUNCTION_45();
  v30 = type metadata accessor for _ProtoKeyValue_Standard(v29);
  v31 = OUTLINED_FUNCTION_13_31(v30, &v1030);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_48();
  v1015[1] = v33;
  v34 = OUTLINED_FUNCTION_45();
  v35 = type metadata accessor for HorizontalListStandard(v34);
  v36 = OUTLINED_FUNCTION_13_31(v35, v966);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_11();
  v38 = OUTLINED_FUNCTION_35(v37);
  v39 = type metadata accessor for _ProtoHorizontalList_Standard(v38);
  v40 = OUTLINED_FUNCTION_13_31(v39, &v1029);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11();
  v42 = OUTLINED_FUNCTION_35(v41);
  v43 = type metadata accessor for HeroHeader(v42);
  v44 = OUTLINED_FUNCTION_13_31(v43, v965);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_11();
  v46 = OUTLINED_FUNCTION_35(v45);
  v47 = type metadata accessor for _ProtoHeroHeader(v46);
  v48 = OUTLINED_FUNCTION_13_31(v47, &v1027);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_48();
  v51 = OUTLINED_FUNCTION_35(v50);
  v52 = type metadata accessor for SashStandard(v51);
  v53 = OUTLINED_FUNCTION_13_31(v52, v964);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_11();
  v55 = OUTLINED_FUNCTION_35(v54);
  v56 = type metadata accessor for _ProtoSash_Standard(v55);
  v57 = OUTLINED_FUNCTION_13_31(v56, &v1023);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_48();
  v60 = OUTLINED_FUNCTION_35(v59);
  v61 = type metadata accessor for IntentsUIStandard(v60);
  v62 = OUTLINED_FUNCTION_13_31(v61, v963);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_11();
  v64 = OUTLINED_FUNCTION_35(v63);
  v65 = type metadata accessor for _ProtoIntentsUI_Standard(v64);
  v66 = OUTLINED_FUNCTION_13_31(v65, &v1021);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_48();
  v69 = OUTLINED_FUNCTION_35(v68);
  v70 = type metadata accessor for ButtonContainer(v69);
  v71 = OUTLINED_FUNCTION_13_31(v70, v962);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_11();
  v73 = OUTLINED_FUNCTION_35(v72);
  v74 = type metadata accessor for _ProtoButton_Container(v73);
  v75 = OUTLINED_FUNCTION_13_31(v74, v1017);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_11();
  v77 = OUTLINED_FUNCTION_35(v76);
  v78 = type metadata accessor for VisualizationMap(v77);
  v79 = OUTLINED_FUNCTION_13_31(v78, v961);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_11();
  v81 = OUTLINED_FUNCTION_35(v80);
  v82 = type metadata accessor for _ProtoVisualization_Map(v81);
  v83 = OUTLINED_FUNCTION_13_31(v82, v1016);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_48();
  v86 = OUTLINED_FUNCTION_35(v85);
  v87 = type metadata accessor for VisualizationImage(v86);
  v88 = OUTLINED_FUNCTION_13_31(v87, v960);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_11();
  v90 = OUTLINED_FUNCTION_35(v89);
  v91 = type metadata accessor for _ProtoVisualization_Image(v90);
  v92 = OUTLINED_FUNCTION_13_31(v91, v1015);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_48();
  v95 = OUTLINED_FUNCTION_35(v94);
  v96 = type metadata accessor for VisualizationChart(v95);
  v97 = OUTLINED_FUNCTION_13_31(v96, v959);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_11();
  v99 = OUTLINED_FUNCTION_35(v98);
  v100 = type metadata accessor for _ProtoVisualization_Chart(v99);
  v101 = OUTLINED_FUNCTION_13_31(v100, v1014);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_48();
  v104 = OUTLINED_FUNCTION_35(v103);
  v105 = type metadata accessor for LongItemText(v104);
  v106 = OUTLINED_FUNCTION_13_31(v105, v958);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_11();
  v108 = OUTLINED_FUNCTION_35(v107);
  v109 = type metadata accessor for _ProtoLongItem_Text(v108);
  v110 = OUTLINED_FUNCTION_13_31(v109, &v1013);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_48();
  v113 = OUTLINED_FUNCTION_35(v112);
  v114 = type metadata accessor for Table(v113);
  v115 = OUTLINED_FUNCTION_13_31(v114, v957);
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_11();
  v117 = OUTLINED_FUNCTION_35(v116);
  v118 = type metadata accessor for _ProtoTable(v117);
  v119 = OUTLINED_FUNCTION_13_31(v118, &v1012);
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_48();
  v122 = OUTLINED_FUNCTION_35(v121);
  v123 = type metadata accessor for ControlSlider(v122);
  v124 = OUTLINED_FUNCTION_13_31(v123, v956);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_11();
  v126 = OUTLINED_FUNCTION_35(v125);
  v127 = type metadata accessor for _ProtoControl_Slider(v126);
  v128 = OUTLINED_FUNCTION_13_31(v127, &v1011);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_48();
  v131 = OUTLINED_FUNCTION_35(v130);
  v132 = type metadata accessor for TextInput(v131);
  v133 = OUTLINED_FUNCTION_13_31(v132, v954);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_11();
  v135 = OUTLINED_FUNCTION_35(v134);
  v136 = type metadata accessor for _ProtoTextInput(v135);
  v137 = OUTLINED_FUNCTION_41(v136);
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_11();
  v139 = OUTLINED_FUNCTION_35(v138);
  v140 = type metadata accessor for StatusIndicatorCancelled(v139);
  v141 = OUTLINED_FUNCTION_13_31(v140, v955);
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_11();
  v143 = OUTLINED_FUNCTION_35(v142);
  v144 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v143);
  v145 = OUTLINED_FUNCTION_13_31(v144, &v1010);
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_48();
  v148 = OUTLINED_FUNCTION_35(v147);
  v149 = type metadata accessor for StatusIndicatorInProgress(v148);
  v150 = OUTLINED_FUNCTION_13_31(v149, v953);
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_11();
  v152 = OUTLINED_FUNCTION_35(v151);
  v153 = type metadata accessor for _ProtoStatusIndicator_InProgress(v152);
  v154 = OUTLINED_FUNCTION_13_31(v153, v1009);
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_48();
  v157 = OUTLINED_FUNCTION_35(v156);
  v158 = type metadata accessor for StatusIndicatorError(v157);
  v159 = OUTLINED_FUNCTION_13_31(v158, v952);
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_11();
  v161 = OUTLINED_FUNCTION_35(v160);
  v162 = type metadata accessor for _ProtoStatusIndicator_Error(v161);
  v163 = OUTLINED_FUNCTION_13_31(v162, &v1008);
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_48();
  v166 = OUTLINED_FUNCTION_35(v165);
  v167 = type metadata accessor for StatusIndicatorSuccess(v166);
  v168 = OUTLINED_FUNCTION_13_31(v167, v951);
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_11();
  v170 = OUTLINED_FUNCTION_35(v169);
  v171 = type metadata accessor for _ProtoStatusIndicator_Success(v170);
  v172 = OUTLINED_FUNCTION_13_31(v171, &v1007);
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_48();
  v175 = OUTLINED_FUNCTION_35(v174);
  v176 = type metadata accessor for ReferenceFootnote(v175);
  v177 = OUTLINED_FUNCTION_13_31(v176, v950);
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_11();
  v179 = OUTLINED_FUNCTION_35(v178);
  v180 = type metadata accessor for _ProtoReference_Footnote(v179);
  v181 = OUTLINED_FUNCTION_13_31(v180, &v1006);
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v182);
  OUTLINED_FUNCTION_48();
  v184 = OUTLINED_FUNCTION_35(v183);
  v185 = type metadata accessor for ReferenceButton(v184);
  v186 = OUTLINED_FUNCTION_13_31(v185, v949);
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_11();
  v188 = OUTLINED_FUNCTION_35(v187);
  v189 = type metadata accessor for _ProtoReference_Button(v188);
  v190 = OUTLINED_FUNCTION_13_31(v189, &v1005);
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_48();
  v193 = OUTLINED_FUNCTION_35(v192);
  v194 = type metadata accessor for ReferenceRich(v193);
  v195 = OUTLINED_FUNCTION_13_31(v194, v948);
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_11();
  v197 = OUTLINED_FUNCTION_35(v196);
  v198 = type metadata accessor for _ProtoReference_Rich(v197);
  v199 = OUTLINED_FUNCTION_13_31(v198, &v1004);
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_48();
  v202 = OUTLINED_FUNCTION_35(v201);
  v203 = type metadata accessor for ReferenceLogo(v202);
  v204 = OUTLINED_FUNCTION_13_31(v203, v947);
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_11();
  v206 = OUTLINED_FUNCTION_35(v205);
  v207 = type metadata accessor for _ProtoReference_Logo(v206);
  v208 = OUTLINED_FUNCTION_13_31(v207, &v1003);
  MEMORY[0x28223BE20](v208);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v209);
  OUTLINED_FUNCTION_48();
  v211 = OUTLINED_FUNCTION_35(v210);
  v212 = type metadata accessor for ReferenceStandard(v211);
  v213 = OUTLINED_FUNCTION_13_31(v212, v946);
  MEMORY[0x28223BE20](v213);
  OUTLINED_FUNCTION_11();
  v215 = OUTLINED_FUNCTION_35(v214);
  v216 = type metadata accessor for _ProtoReference_Standard(v215);
  v217 = OUTLINED_FUNCTION_13_31(v216, &v1002);
  MEMORY[0x28223BE20](v217);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v218);
  OUTLINED_FUNCTION_48();
  v220 = OUTLINED_FUNCTION_35(v219);
  v221 = type metadata accessor for BinaryButton(v220);
  v222 = OUTLINED_FUNCTION_13_31(v221, v945);
  MEMORY[0x28223BE20](v222);
  OUTLINED_FUNCTION_11();
  v224 = OUTLINED_FUNCTION_35(v223);
  v225 = type metadata accessor for _ProtoBinaryButton(v224);
  v226 = OUTLINED_FUNCTION_13_31(v225, &v1001);
  MEMORY[0x28223BE20](v226);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v227);
  OUTLINED_FUNCTION_48();
  v229 = OUTLINED_FUNCTION_35(v228);
  v230 = type metadata accessor for Button(v229);
  v231 = OUTLINED_FUNCTION_13_31(v230, v944);
  MEMORY[0x28223BE20](v231);
  OUTLINED_FUNCTION_11();
  v233 = OUTLINED_FUNCTION_35(v232);
  v234 = type metadata accessor for _ProtoButton(v233);
  v235 = OUTLINED_FUNCTION_13_31(v234, &v1000);
  MEMORY[0x28223BE20](v235);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v236);
  OUTLINED_FUNCTION_48();
  v238 = OUTLINED_FUNCTION_35(v237);
  v239 = type metadata accessor for SectionHeaderRich(v238);
  v240 = OUTLINED_FUNCTION_13_31(v239, v943);
  MEMORY[0x28223BE20](v240);
  OUTLINED_FUNCTION_11();
  v242 = OUTLINED_FUNCTION_35(v241);
  v243 = type metadata accessor for _ProtoSectionHeader_Rich(v242);
  v244 = OUTLINED_FUNCTION_13_31(v243, &v999);
  MEMORY[0x28223BE20](v244);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v245);
  OUTLINED_FUNCTION_48();
  v247 = OUTLINED_FUNCTION_35(v246);
  v248 = type metadata accessor for SectionHeaderStandard(v247);
  v249 = OUTLINED_FUNCTION_13_31(v248, v942);
  MEMORY[0x28223BE20](v249);
  OUTLINED_FUNCTION_11();
  v251 = OUTLINED_FUNCTION_35(v250);
  v252 = type metadata accessor for _ProtoSectionHeader_Standard(v251);
  v253 = OUTLINED_FUNCTION_13_31(v252, &v998);
  MEMORY[0x28223BE20](v253);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v254);
  OUTLINED_FUNCTION_48();
  v256 = OUTLINED_FUNCTION_35(v255);
  v257 = type metadata accessor for SecondaryHeaderEmphasized(v256);
  v258 = OUTLINED_FUNCTION_13_31(v257, v941);
  MEMORY[0x28223BE20](v258);
  OUTLINED_FUNCTION_11();
  v260 = OUTLINED_FUNCTION_35(v259);
  v261 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v260);
  v262 = OUTLINED_FUNCTION_13_31(v261, &v997);
  MEMORY[0x28223BE20](v262);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v263);
  OUTLINED_FUNCTION_48();
  v265 = OUTLINED_FUNCTION_35(v264);
  v266 = type metadata accessor for SecondaryHeaderStandard(v265);
  v267 = OUTLINED_FUNCTION_13_31(v266, v940);
  MEMORY[0x28223BE20](v267);
  OUTLINED_FUNCTION_11();
  v269 = OUTLINED_FUNCTION_35(v268);
  v270 = type metadata accessor for _ProtoSecondaryHeader_Standard(v269);
  v271 = OUTLINED_FUNCTION_13_31(v270, &v996);
  MEMORY[0x28223BE20](v271);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v272);
  OUTLINED_FUNCTION_48();
  v274 = OUTLINED_FUNCTION_35(v273);
  v275 = type metadata accessor for PrimaryHeaderRich(v274);
  v276 = OUTLINED_FUNCTION_13_31(v275, v939);
  MEMORY[0x28223BE20](v276);
  OUTLINED_FUNCTION_11();
  v278 = OUTLINED_FUNCTION_35(v277);
  v279 = type metadata accessor for _ProtoPrimaryHeader_Rich(v278);
  v280 = OUTLINED_FUNCTION_13_31(v279, &v995);
  MEMORY[0x28223BE20](v280);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v281);
  OUTLINED_FUNCTION_48();
  v283 = OUTLINED_FUNCTION_35(v282);
  v284 = type metadata accessor for PrimaryHeaderMarquee(v283);
  v285 = OUTLINED_FUNCTION_13_31(v284, v938);
  MEMORY[0x28223BE20](v285);
  OUTLINED_FUNCTION_11();
  v287 = OUTLINED_FUNCTION_35(v286);
  v288 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v287);
  v289 = OUTLINED_FUNCTION_13_31(v288, &v994);
  MEMORY[0x28223BE20](v289);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v290);
  OUTLINED_FUNCTION_48();
  v292 = OUTLINED_FUNCTION_35(v291);
  v293 = type metadata accessor for PrimaryHeaderStandard(v292);
  v294 = OUTLINED_FUNCTION_13_31(v293, v937);
  MEMORY[0x28223BE20](v294);
  OUTLINED_FUNCTION_11();
  v296 = OUTLINED_FUNCTION_35(v295);
  v297 = type metadata accessor for _ProtoPrimaryHeader_Standard(v296);
  v298 = OUTLINED_FUNCTION_13_31(v297, &v993);
  MEMORY[0x28223BE20](v298);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v299);
  OUTLINED_FUNCTION_48();
  v301 = OUTLINED_FUNCTION_35(v300);
  v302 = type metadata accessor for SimpleItemRichSearchResult(v301);
  v303 = OUTLINED_FUNCTION_13_31(v302, v936);
  MEMORY[0x28223BE20](v303);
  OUTLINED_FUNCTION_11();
  v305 = OUTLINED_FUNCTION_35(v304);
  v306 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v305);
  v307 = OUTLINED_FUNCTION_13_31(v306, &v992);
  MEMORY[0x28223BE20](v307);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v308);
  OUTLINED_FUNCTION_48();
  v310 = OUTLINED_FUNCTION_35(v309);
  v311 = type metadata accessor for SimpleItemPlayer(v310);
  v312 = OUTLINED_FUNCTION_13_31(v311, v935);
  MEMORY[0x28223BE20](v312);
  OUTLINED_FUNCTION_11();
  v314 = OUTLINED_FUNCTION_35(v313);
  v315 = type metadata accessor for _ProtoSimpleItem_Player(v314);
  v316 = OUTLINED_FUNCTION_13_31(v315, &v991);
  MEMORY[0x28223BE20](v316);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v317);
  OUTLINED_FUNCTION_48();
  v319 = OUTLINED_FUNCTION_35(v318);
  v320 = type metadata accessor for SimpleItemVisual(v319);
  v321 = OUTLINED_FUNCTION_13_31(v320, v934);
  MEMORY[0x28223BE20](v321);
  OUTLINED_FUNCTION_11();
  v323 = OUTLINED_FUNCTION_35(v322);
  v324 = type metadata accessor for _ProtoSimpleItem_Visual(v323);
  v325 = OUTLINED_FUNCTION_13_31(v324, &v990);
  MEMORY[0x28223BE20](v325);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v326);
  OUTLINED_FUNCTION_48();
  v328 = OUTLINED_FUNCTION_35(v327);
  v329 = type metadata accessor for SimpleItemReverseRich(v328);
  v330 = OUTLINED_FUNCTION_13_31(v329, v933);
  MEMORY[0x28223BE20](v330);
  OUTLINED_FUNCTION_11();
  v332 = OUTLINED_FUNCTION_35(v331);
  v333 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v332);
  v334 = OUTLINED_FUNCTION_13_31(v333, &v989);
  MEMORY[0x28223BE20](v334);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v335);
  OUTLINED_FUNCTION_48();
  v337 = OUTLINED_FUNCTION_35(v336);
  v338 = type metadata accessor for SimpleItemRich(v337);
  v339 = OUTLINED_FUNCTION_13_31(v338, v932);
  MEMORY[0x28223BE20](v339);
  OUTLINED_FUNCTION_11();
  v341 = OUTLINED_FUNCTION_35(v340);
  v342 = type metadata accessor for _ProtoSimpleItem_Rich(v341);
  v343 = OUTLINED_FUNCTION_13_31(v342, &v988);
  MEMORY[0x28223BE20](v343);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v344);
  OUTLINED_FUNCTION_48();
  v346 = OUTLINED_FUNCTION_35(v345);
  v347 = type metadata accessor for SimpleItemStandard(v346);
  v348 = OUTLINED_FUNCTION_13_31(v347, v931);
  MEMORY[0x28223BE20](v348);
  OUTLINED_FUNCTION_11();
  v350 = OUTLINED_FUNCTION_35(v349);
  v351 = type metadata accessor for _ProtoSimpleItem_Standard(v350);
  v352 = OUTLINED_FUNCTION_13_31(v351, &v987);
  MEMORY[0x28223BE20](v352);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v353);
  OUTLINED_FUNCTION_48();
  v355 = OUTLINED_FUNCTION_35(v354);
  v356 = type metadata accessor for SystemTextClarificationTitle(v355);
  v357 = OUTLINED_FUNCTION_13_31(v356, v930);
  MEMORY[0x28223BE20](v357);
  OUTLINED_FUNCTION_11();
  v359 = OUTLINED_FUNCTION_35(v358);
  v360 = type metadata accessor for _ProtoSystemText_ClarificationTitle(v359);
  v361 = OUTLINED_FUNCTION_13_31(v360, &v986);
  MEMORY[0x28223BE20](v361);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v362);
  OUTLINED_FUNCTION_48();
  v364 = OUTLINED_FUNCTION_35(v363);
  v365 = type metadata accessor for SummaryItemSwitchV2(v364);
  v366 = OUTLINED_FUNCTION_13_31(v365, v929);
  MEMORY[0x28223BE20](v366);
  OUTLINED_FUNCTION_11();
  v368 = OUTLINED_FUNCTION_35(v367);
  v369 = type metadata accessor for _ProtoSummaryItem_SwitchV2(v368);
  v370 = OUTLINED_FUNCTION_13_31(v369, &v985);
  MEMORY[0x28223BE20](v370);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v371);
  OUTLINED_FUNCTION_48();
  v373 = OUTLINED_FUNCTION_35(v372);
  v374 = type metadata accessor for SummaryItemPlayer(v373);
  v375 = OUTLINED_FUNCTION_13_31(v374, v928);
  MEMORY[0x28223BE20](v375);
  OUTLINED_FUNCTION_11();
  v377 = OUTLINED_FUNCTION_35(v376);
  v378 = type metadata accessor for _ProtoSummaryItem_Player(v377);
  v379 = OUTLINED_FUNCTION_13_31(v378, &v984);
  MEMORY[0x28223BE20](v379);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v380);
  OUTLINED_FUNCTION_48();
  v382 = OUTLINED_FUNCTION_35(v381);
  v383 = type metadata accessor for SummaryItemButton(v382);
  v384 = OUTLINED_FUNCTION_13_31(v383, v927);
  MEMORY[0x28223BE20](v384);
  OUTLINED_FUNCTION_11();
  v386 = OUTLINED_FUNCTION_35(v385);
  v387 = type metadata accessor for _ProtoSummaryItem_Button(v386);
  v388 = OUTLINED_FUNCTION_13_31(v387, &v983);
  MEMORY[0x28223BE20](v388);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v389);
  OUTLINED_FUNCTION_48();
  v391 = OUTLINED_FUNCTION_35(v390);
  v392 = type metadata accessor for SummaryItemPairNumberV2(v391);
  v393 = OUTLINED_FUNCTION_13_31(v392, v926);
  MEMORY[0x28223BE20](v393);
  OUTLINED_FUNCTION_11();
  v395 = OUTLINED_FUNCTION_35(v394);
  v396 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(v395);
  v397 = OUTLINED_FUNCTION_13_31(v396, &v982);
  MEMORY[0x28223BE20](v397);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v398);
  OUTLINED_FUNCTION_48();
  v400 = OUTLINED_FUNCTION_35(v399);
  v401 = type metadata accessor for SummaryItemPairV2(v400);
  v402 = OUTLINED_FUNCTION_13_31(v401, v925);
  MEMORY[0x28223BE20](v402);
  OUTLINED_FUNCTION_11();
  v404 = OUTLINED_FUNCTION_35(v403);
  v405 = type metadata accessor for _ProtoSummaryItem_PairV2(v404);
  v406 = OUTLINED_FUNCTION_13_31(v405, &v981);
  MEMORY[0x28223BE20](v406);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v407);
  OUTLINED_FUNCTION_48();
  v409 = OUTLINED_FUNCTION_35(v408);
  v410 = type metadata accessor for SummaryItemDetailedText(v409);
  v411 = OUTLINED_FUNCTION_13_31(v410, v924);
  MEMORY[0x28223BE20](v411);
  OUTLINED_FUNCTION_11();
  v413 = OUTLINED_FUNCTION_35(v412);
  v414 = type metadata accessor for _ProtoSummaryItem_DetailedText(v413);
  v415 = OUTLINED_FUNCTION_13_31(v414, &v980);
  MEMORY[0x28223BE20](v415);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v416);
  OUTLINED_FUNCTION_48();
  v418 = OUTLINED_FUNCTION_35(v417);
  v419 = type metadata accessor for SummaryItemLargeText(v418);
  v420 = OUTLINED_FUNCTION_13_31(v419, v923);
  MEMORY[0x28223BE20](v420);
  OUTLINED_FUNCTION_11();
  v422 = OUTLINED_FUNCTION_35(v421);
  v423 = type metadata accessor for _ProtoSummaryItem_LargeText(v422);
  v424 = OUTLINED_FUNCTION_13_31(v423, &v979);
  MEMORY[0x28223BE20](v424);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v425);
  OUTLINED_FUNCTION_48();
  v427 = OUTLINED_FUNCTION_35(v426);
  v428 = type metadata accessor for SummaryItemText(v427);
  v429 = OUTLINED_FUNCTION_13_31(v428, v922);
  MEMORY[0x28223BE20](v429);
  OUTLINED_FUNCTION_11();
  v431 = OUTLINED_FUNCTION_35(v430);
  v432 = type metadata accessor for _ProtoSummaryItem_Text(v431);
  v433 = OUTLINED_FUNCTION_13_31(v432, &v978);
  MEMORY[0x28223BE20](v433);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v434);
  OUTLINED_FUNCTION_48();
  v436 = OUTLINED_FUNCTION_35(v435);
  v437 = type metadata accessor for SummaryItemShortNumber(v436);
  v438 = OUTLINED_FUNCTION_13_31(v437, v921);
  MEMORY[0x28223BE20](v438);
  OUTLINED_FUNCTION_11();
  v440 = OUTLINED_FUNCTION_35(v439);
  v441 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v440);
  v442 = OUTLINED_FUNCTION_13_31(v441, &v977);
  MEMORY[0x28223BE20](v442);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v443);
  OUTLINED_FUNCTION_48();
  v445 = OUTLINED_FUNCTION_35(v444);
  v446 = type metadata accessor for SummaryItemStandard(v445);
  v447 = OUTLINED_FUNCTION_13_31(v446, v920);
  MEMORY[0x28223BE20](v447);
  OUTLINED_FUNCTION_11();
  v449 = OUTLINED_FUNCTION_35(v448);
  v450 = type metadata accessor for _ProtoSummaryItem_Standard(v449);
  v451 = OUTLINED_FUNCTION_13_31(v450, &v976);
  MEMORY[0x28223BE20](v451);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v452);
  OUTLINED_FUNCTION_48();
  v454 = OUTLINED_FUNCTION_35(v453);
  v455 = type metadata accessor for FactItemButton(v454);
  v456 = OUTLINED_FUNCTION_13_31(v455, v919);
  MEMORY[0x28223BE20](v456);
  OUTLINED_FUNCTION_11();
  v458 = OUTLINED_FUNCTION_35(v457);
  v459 = type metadata accessor for _ProtoFactItem_Button(v458);
  v460 = OUTLINED_FUNCTION_13_31(v459, &v975);
  MEMORY[0x28223BE20](v460);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v461);
  OUTLINED_FUNCTION_48();
  v463 = OUTLINED_FUNCTION_35(v462);
  v464 = type metadata accessor for FactItemHeroNumber(v463);
  v465 = OUTLINED_FUNCTION_13_31(v464, v918);
  MEMORY[0x28223BE20](v465);
  OUTLINED_FUNCTION_11();
  v467 = OUTLINED_FUNCTION_35(v466);
  v468 = type metadata accessor for _ProtoFactItem_HeroNumber(v467);
  v469 = OUTLINED_FUNCTION_13_31(v468, &v974);
  MEMORY[0x28223BE20](v469);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v470);
  OUTLINED_FUNCTION_48();
  v472 = OUTLINED_FUNCTION_35(v471);
  v473 = type metadata accessor for FactItemShortNumber(v472);
  v474 = OUTLINED_FUNCTION_13_31(v473, v917);
  MEMORY[0x28223BE20](v474);
  OUTLINED_FUNCTION_11();
  v476 = OUTLINED_FUNCTION_35(v475);
  v477 = type metadata accessor for _ProtoFactItem_ShortNumber(v476);
  v478 = OUTLINED_FUNCTION_13_31(v477, &v973);
  MEMORY[0x28223BE20](v478);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v479);
  OUTLINED_FUNCTION_48();
  v481 = OUTLINED_FUNCTION_35(v480);
  v482 = type metadata accessor for FactItemStandard(v481);
  v483 = OUTLINED_FUNCTION_13_31(v482, v916);
  MEMORY[0x28223BE20](v483);
  OUTLINED_FUNCTION_11();
  v485 = OUTLINED_FUNCTION_35(v484);
  v486 = type metadata accessor for _ProtoFactItem_Standard(v485);
  v487 = OUTLINED_FUNCTION_13_31(v486, &v972);
  MEMORY[0x28223BE20](v487);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v488);
  OUTLINED_FUNCTION_48();
  v490 = OUTLINED_FUNCTION_35(v489);
  v491 = type metadata accessor for CustomCanvas(v490);
  v492 = OUTLINED_FUNCTION_13_31(v491, v914);
  MEMORY[0x28223BE20](v492);
  OUTLINED_FUNCTION_11();
  v494 = OUTLINED_FUNCTION_35(v493);
  v495 = type metadata accessor for _ProtoCustomCanvas(v494);
  v496 = OUTLINED_FUNCTION_41(v495);
  MEMORY[0x28223BE20](v496);
  OUTLINED_FUNCTION_11();
  v498 = OUTLINED_FUNCTION_35(v497);
  v499 = type metadata accessor for ControlPlayerButton(v498);
  v500 = OUTLINED_FUNCTION_13_31(v499, v915);
  MEMORY[0x28223BE20](v500);
  OUTLINED_FUNCTION_11();
  v502 = OUTLINED_FUNCTION_35(v501);
  v503 = type metadata accessor for _ProtoControl_PlayerButton(v502);
  v504 = OUTLINED_FUNCTION_13_31(v503, v971);
  MEMORY[0x28223BE20](v504);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v505);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v506);
  v507 = sub_26A4247D4();
  v508 = *(v507 - 8);
  v1017[0] = v507;
  v1017[1] = v508;
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
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v560);
  v562 = &v901 - v561;
  MEMORY[0x28223BE20](v563);
  v565 = &v901 - v564;
  v566 = type metadata accessor for ControlSwitch(0);
  v567 = OUTLINED_FUNCTION_13_31(v566, v913);
  MEMORY[0x28223BE20](v567);
  OUTLINED_FUNCTION_11();
  v569 = OUTLINED_FUNCTION_35(v568);
  type metadata accessor for _ProtoControl_Switch(v569);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v570);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v571);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v572);
  v573 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v573);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v574);
  v575 = OUTLINED_FUNCTION_177();
  v576 = type metadata accessor for _ProtoResponse.Component(v575);
  v577 = OUTLINED_FUNCTION_41(v576);
  MEMORY[0x28223BE20](v577);
  OUTLINED_FUNCTION_1_20();
  v578 = *(v1021 + 8);
  v1018 = v3;
  v578(v1028);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_20_29();
  sub_26A3AF8D0();
  type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  v579 = OUTLINED_FUNCTION_193_1();
  if (__swift_getEnumTagSinglePayload(v579, v580, v581) == 1)
  {
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v582 = sub_26A424AE4();
    __swift_project_value_buffer(v582, qword_2803A8950);
    v583 = sub_26A424AD4();
    v584 = sub_26A424E04();
    v585 = os_log_type_enabled(v583, v584);
    v586 = v1019;
    if (v585)
    {
      v587 = swift_slowAlloc();
      *v587 = 0;
      _os_log_impl(&dword_26A0B8000, v583, v584, "Expected a Component value, but found none!", v587, 2u);
      MEMORY[0x26D65C950](v587, -1, -1);
    }

    v588 = v1028;
    v589 = v1021;
    *(v586 + 24) = v1028;
    *(v586 + 32) = v589;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm();
    return (*(*(v588 - 8) + 16))(boxed_opaque_existential_1Tm, v1018, v588);
  }

  else
  {
    OUTLINED_FUNCTION_94_1();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoFactItem_Standard.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_130_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v792 = OUTLINED_FUNCTION_3_56();
        v793(v792);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_61_13();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemStandard);
        v794 = OUTLINED_FUNCTION_10_50();
        sub_26A0D0F1C(v794, v795);
        return sub_26A3AF8D0();
      case 2u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoFactItem_ShortNumber.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_76_11();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v774 = OUTLINED_FUNCTION_3_56();
        v775(v774);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_65_14();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemShortNumber);
        v776 = OUTLINED_FUNCTION_10_50();
        sub_26A0D318C(v776, v777);
        return sub_26A3AF8D0();
      case 3u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoFactItem_HeroNumber.redactedProto.getter(v618, v619, v620, v621, v622, v623, v624, v625, v901, v902, v903, v904, v905, v906, v907, v908, v909, v910, v911, v912);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_135_6();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v782 = OUTLINED_FUNCTION_3_56();
        v783(v782);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_63_12();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemHeroNumber);
        v784 = OUTLINED_FUNCTION_10_50();
        sub_26A0D0AD0(v784, v785);
        return sub_26A3AF8D0();
      case 4u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSummaryItem_Standard.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_111_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v750 = OUTLINED_FUNCTION_3_56();
        v751(v750);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_72_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemStandard);
        v752 = OUTLINED_FUNCTION_10_50();
        sub_26A0D1E94(v752, v753);
        return sub_26A3AF8D0();
      case 5u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSummaryItem_ShortNumber.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_74_10();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v808 = OUTLINED_FUNCTION_3_56();
        v809(v808);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_162_2();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemShortNumber);
        v810 = OUTLINED_FUNCTION_10_50();
        sub_26A0D3344(v810, v811);
        return sub_26A3AF8D0();
      case 6u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSummaryItem_Text.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_87_10();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v820 = OUTLINED_FUNCTION_3_56();
        v821(v820);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_160_2();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemText);
        v822 = OUTLINED_FUNCTION_10_50();
        sub_26A0D2AAC(v822, v823);
        return sub_26A3AF8D0();
      case 7u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSummaryItem_LargeText.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_123_6();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v786 = OUTLINED_FUNCTION_3_56();
        v787(v786);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_62_12();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemLargeText);
        v788 = OUTLINED_FUNCTION_10_50();
        sub_26A0D1520(v788, v789);
        return sub_26A3AF8D0();
      case 8u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSummaryItem_DetailedText.redactedProto.getter(v637, v638, v639, v640, v641, v642, v643, v644, v901, v902, v903, v904, v905, v906, v907, v908, v909, v910, v911, v912);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_73_13();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v832 = OUTLINED_FUNCTION_3_56();
        v833(v832);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_158_4();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemDetailedText);
        v834 = OUTLINED_FUNCTION_10_50();
        sub_26A0D3420(v834, v835);
        return sub_26A3AF8D0();
      case 9u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSimpleItem_Standard.redactedProto.getter(v607, v608, v609, v610, v611, v612, v613, v614, v901, v902, v903, v904, v905, v906, v907, v908, v909, v910, v911, v912);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_80_10();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v762 = OUTLINED_FUNCTION_3_56();
        v763(v762);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_67_11();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemStandard);
        v764 = OUTLINED_FUNCTION_10_50();
        sub_26A0D2EF8(v764, v765);
        return sub_26A3AF8D0();
      case 0xAu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSimpleItem_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_125_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v828 = OUTLINED_FUNCTION_3_56();
        v829(v828);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_159_3();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemRich);
        v830 = OUTLINED_FUNCTION_10_50();
        sub_26A0D1368(v830, v831);
        return sub_26A3AF8D0();
      case 0xBu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSimpleItem_Visual.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_86_12();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v743 = OUTLINED_FUNCTION_3_56();
        v744(v743);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_78_9();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemVisual);
        v745 = OUTLINED_FUNCTION_10_50();
        sub_26A0D2B88(v745, v746);
        return sub_26A3AF8D0();
      case 0xCu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoPrimaryHeader_Standard.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_132_4();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v758 = OUTLINED_FUNCTION_3_56();
        v759(v758);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_68_11();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for PrimaryHeaderStandard);
        v760 = OUTLINED_FUNCTION_10_50();
        sub_26A0D0D64(v760, v761);
        return sub_26A3AF8D0();
      case 0xDu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoPrimaryHeader_Marquee.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_101_8();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v816 = OUTLINED_FUNCTION_3_56();
        v817(v816);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_161_2();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for PrimaryHeaderMarquee);
        v818 = OUTLINED_FUNCTION_10_50();
        sub_26A0D2584(v818, v819);
        return sub_26A3AF8D0();
      case 0xEu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoPrimaryHeader_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_84_8();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v731 = OUTLINED_FUNCTION_3_56();
        v732(v731);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_91_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for PrimaryHeaderRich);
        v733 = OUTLINED_FUNCTION_10_50();
        sub_26A0D2C64(v733, v734);
        return sub_26A3AF8D0();
      case 0xFu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSecondaryHeader_Standard.redactedProto.getter(v617);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_137_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v778 = OUTLINED_FUNCTION_3_56();
        v779(v778);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_64_12();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SecondaryHeaderStandard);
        v780 = OUTLINED_FUNCTION_10_50();
        sub_26A0D0918(v780, v781);
        return sub_26A3AF8D0();
      case 0x10u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoButton.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_127_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v723 = OUTLINED_FUNCTION_3_56();
        v724(v723);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_94_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for Button);
        v725 = OUTLINED_FUNCTION_10_50();
        sub_26A0D11B0(v725, v726);
        return sub_26A3AF8D0();
      case 0x11u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoBinaryButton.redactedProto.getter(v633);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_119_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v796 = OUTLINED_FUNCTION_3_56();
        v797(v796);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_59_16();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for BinaryButton);
        v798 = OUTLINED_FUNCTION_10_50();
        sub_26A0D1890(v798, v799);
        return sub_26A3AF8D0();
      case 0x12u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        sub_26A27E314(v636);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_121_2();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v824 = OUTLINED_FUNCTION_3_56();
        v825(v824);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_164_4();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorSuccess);
        v826 = OUTLINED_FUNCTION_10_50();
        sub_26A0D16D8(v826, v827);
        return sub_26A3AF8D0();
      case 0x13u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        sub_26A1F33A8(v656);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_126_6();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v850 = OUTLINED_FUNCTION_3_56();
        v851(v850);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_164_4();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorError);
        v852 = OUTLINED_FUNCTION_10_50();
        sub_26A0D128C(v852, v853);
        return sub_26A3AF8D0();
      case 0x14u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        sub_26A156AB0(v634);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_129_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v804 = OUTLINED_FUNCTION_3_56();
        v805(v804);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_164_4();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorInProgress);
        v806 = OUTLINED_FUNCTION_10_50();
        sub_26A0D0FF8(v806, v807);
        return sub_26A3AF8D0();
      case 0x15u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        sub_26A380EA0(v635);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_71_7();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v812 = OUTLINED_FUNCTION_3_56();
        v813(v812);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_164_4();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorCancelled);
        v814 = OUTLINED_FUNCTION_10_50();
        sub_26A0D34FC(v814, v815);
        return sub_26A3AF8D0();
      case 0x16u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_177_2();
        TextInput.jsonString(redacted:)(v653);
        if (v654)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_154_5();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for TextInput);
        v844 = OUTLINED_FUNCTION_10_50();
        sub_26A0D36B4(v844, v845);
        return sub_26A3AF8D0();
      case 0x17u:
        OUTLINED_FUNCTION_188_2();
        sub_26A3AF978();
        OUTLINED_FUNCTION_149_5();
        OUTLINED_FUNCTION_171_3();
        sub_26A3AF924();
        _ProtoControl_Switch.redactedProto.getter();
        sub_26A4247C4();
        OUTLINED_FUNCTION_136_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_177_2();
        sub_26A424954();
        if (v4)
        {
          OUTLINED_FUNCTION_35_24();
          v666(v565);
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_27_24();
          sub_26A3AF8D0();
        }

        else
        {
          OUTLINED_FUNCTION_11_35();
          v866(v565);
          OUTLINED_FUNCTION_148_4();
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_27_24();
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_38_17(&protocol witness table for ControlSwitch);
          v867 = OUTLINED_FUNCTION_10_50();
          sub_26A0D09F4(v867, v868);
        }

        return sub_26A3AF8D0();
      case 0x18u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoControl_Slider.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_138_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v770 = OUTLINED_FUNCTION_3_56();
        v771(v770);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_66_10();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ControlSlider);
        v772 = OUTLINED_FUNCTION_10_50();
        sub_26A0D083C(v772, v773);
        return sub_26A3AF8D0();
      case 0x19u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_188_2();
        sub_26A3AF924();
        OUTLINED_FUNCTION_49_20();
        _ProtoControl_PlayerButton.redactedProto.getter();
        sub_26A4247C4();
        OUTLINED_FUNCTION_77_10();
        sub_26A3AED00();
        v615 = v1020;
        sub_26A424954();
        if (v615)
        {
          OUTLINED_FUNCTION_35_24();
          v616(v562);
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_22_26();
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_35_24();
        v766(v562);
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_22_26();
        sub_26A3AF8D0();
        v767 = v1019;
        *(v1019 + 24) = v903;
        *(v767 + 32) = &protocol witness table for ControlPlayerButton;
        __swift_allocate_boxed_opaque_existential_1Tm();
        v768 = OUTLINED_FUNCTION_245();
        sub_26A0D30B0(v768, v769);
        break;
      case 0x1Au:
        sub_26A3AF8D0();
        v676 = v1019;
        v677 = v1028;
        v678 = v1021;
        *(v1019 + 24) = v1028;
        *(v676 + 32) = v678;
        v679 = __swift_allocate_boxed_opaque_existential_1Tm();
        return (*(*(v677 - 8) + 16))(v679, v1018, v677);
      case 0x1Bu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoReference_Standard.redactedProto.getter(v596);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_83_10();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v715 = OUTLINED_FUNCTION_3_56();
        v716(v715);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_98_10();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceStandard);
        v717 = OUTLINED_FUNCTION_10_50();
        sub_26A0D2D40(v717, v718);
        return sub_26A3AF8D0();
      case 0x1Cu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoReference_Logo.redactedProto.getter(v667);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_95_9();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v869 = OUTLINED_FUNCTION_3_56();
        v870(v869);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_147_6();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceLogo);
        v871 = OUTLINED_FUNCTION_10_50();
        sub_26A0D2818(v871, v872);
        return sub_26A3AF8D0();
      case 0x1Du:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoReference_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_93_9();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v873 = OUTLINED_FUNCTION_3_56();
        v874(v873);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_146_4();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceRich);
        v875 = OUTLINED_FUNCTION_10_50();
        sub_26A0D28F4(v875, v876);
        return sub_26A3AF8D0();
      case 0x1Eu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoReference_Button.redactedProto.getter(v645);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_88_12();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v836 = OUTLINED_FUNCTION_3_56();
        v837(v836);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_24_38();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceButton);
        v838 = OUTLINED_FUNCTION_10_50();
        sub_26A0D29D0(v838, v839);
        return sub_26A3AF8D0();
      case 0x1Fu:
        sub_26A3AF978();
        v1024 = type metadata accessor for SummaryItemPair(0);
        v1025 = &protocol witness table for SummaryItemPair;
        OUTLINED_FUNCTION_60_15();
        v626 = sub_26A3AED00();
        OUTLINED_FUNCTION_169_3(v626);
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_111_1();
        sub_26A3AF924();
        v627 = v1026;
        v628 = OUTLINED_FUNCTION_168_2();
        __swift_project_boxed_opaque_existential_1(v628, v629);
        v630 = OUTLINED_FUNCTION_175();
        sub_26A3451EC(v630, v631, v627, v632);
        goto LABEL_93;
      case 0x20u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSummaryItem_PairV2.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_104_6();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v840 = OUTLINED_FUNCTION_3_56();
        v841(v840);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_157_3();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemPairV2);
        v842 = OUTLINED_FUNCTION_10_50();
        sub_26A0D23CC(v842, v843);
        return sub_26A3AF8D0();
      case 0x21u:
        sub_26A3AF978();
        v1024 = type metadata accessor for SummaryItemPairNumber(0);
        v1025 = &protocol witness table for SummaryItemPairNumber;
        OUTLINED_FUNCTION_90_10();
        v598 = sub_26A3AED00();
        OUTLINED_FUNCTION_169_3(v598);
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_111_1();
        sub_26A3AF924();
        v599 = v1026;
        v600 = OUTLINED_FUNCTION_168_2();
        __swift_project_boxed_opaque_existential_1(v600, v601);
        v602 = OUTLINED_FUNCTION_175();
        sub_26A3451EC(v602, v603, v599, v604);
        goto LABEL_93;
      case 0x22u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSummaryItem_PairNumberV2.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_133_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v719 = OUTLINED_FUNCTION_3_56();
        v720(v719);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_96_6();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemPairNumberV2);
        v721 = OUTLINED_FUNCTION_10_50();
        sub_26A0D0C88(v721, v722);
        return sub_26A3AF8D0();
      case 0x23u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSummaryItem_Button.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_81_9();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v707 = OUTLINED_FUNCTION_3_56();
        v708(v707);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_102_7();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemButton);
        v709 = OUTLINED_FUNCTION_10_50();
        sub_26A0D2E1C(v709, v710);
        return sub_26A3AF8D0();
      case 0x24u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoFactItem_Button.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_122_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v711 = OUTLINED_FUNCTION_3_56();
        v712(v711);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_99_7();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemButton);
        v713 = OUTLINED_FUNCTION_10_50();
        sub_26A0D15FC(v713, v714);
        return sub_26A3AF8D0();
      case 0x25u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoTable.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_70_9();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v692 = OUTLINED_FUNCTION_3_56();
        v693(v692);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_164_4();
        OUTLINED_FUNCTION_38_17(&protocol witness table for Table);
        v694 = OUTLINED_FUNCTION_10_50();
        sub_26A0D35D8(v694, v695);
        return sub_26A3AF8D0();
      case 0x26u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoReference_Footnote.redactedProto.getter(v668, v669, v670, v671, v672, v673, v674, v675, v901, v902, v903, v904, v905, v906, v907, v908, v909, v910, v911, v912);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_131_6();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v877 = OUTLINED_FUNCTION_3_56();
        v878(v877);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_145_5();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceFootnote);
        v879 = OUTLINED_FUNCTION_10_50();
        sub_26A0D0E40(v879, v880);
        return sub_26A3AF8D0();
      case 0x27u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoLongItem_Text.redactedProto.getter(v655);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_114_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v846 = OUTLINED_FUNCTION_3_56();
        v847(v846);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_153_5();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for LongItemText);
        v848 = OUTLINED_FUNCTION_10_50();
        sub_26A0D1C00(v848, v849);
        return sub_26A3AF8D0();
      case 0x28u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoVisualization_Chart.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_106_8();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v754 = OUTLINED_FUNCTION_3_56();
        v755(v754);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_69_7();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for VisualizationChart);
        v756 = OUTLINED_FUNCTION_10_50();
        sub_26A0D22F0(v756, v757);
        return sub_26A3AF8D0();
      case 0x29u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSummaryItem_Player.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_141_4();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v800 = OUTLINED_FUNCTION_3_56();
        v801(v800);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_163_3();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemPlayer);
        v802 = OUTLINED_FUNCTION_10_50();
        sub_26A0D0760(v802, v803);
        return sub_26A3AF8D0();
      case 0x2Au:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSimpleItem_Player.redactedProto.getter(v658, v659, v660, v661, v662, v663, v664, v665, v901, v902, v903, v904, v905, v906, v907, v908, v909, v910, v911, v912);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_107_8();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v858 = OUTLINED_FUNCTION_3_56();
        v859(v858);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_151_4();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemPlayer);
        v860 = OUTLINED_FUNCTION_10_50();
        sub_26A0D2214(v860, v861);
        return sub_26A3AF8D0();
      case 0x2Bu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSimpleItem_ReverseRich.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_115_4();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v688 = OUTLINED_FUNCTION_3_56();
        v689(v688);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_116_3();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemReverseRich);
        v690 = OUTLINED_FUNCTION_10_50();
        sub_26A0D1B24(v690, v691);
        return sub_26A3AF8D0();
      case 0x2Cu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSecondaryHeader_Emphasized.redactedProto.getter(v597);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_128_4();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v727 = OUTLINED_FUNCTION_3_56();
        v728(v727);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_92_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SecondaryHeaderEmphasized);
        v729 = OUTLINED_FUNCTION_10_50();
        sub_26A0D10D4(v729, v730);
        return sub_26A3AF8D0();
      case 0x2Du:
        sub_26A3AF978();
        v1024 = type metadata accessor for SummaryItemSwitch(0);
        v1025 = &protocol witness table for SummaryItemSwitch;
        OUTLINED_FUNCTION_156_3();
        v646 = sub_26A3AED00();
        OUTLINED_FUNCTION_169_3(v646);
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_111_1();
        sub_26A3AF924();
        v647 = v1026;
        v648 = OUTLINED_FUNCTION_168_2();
        __swift_project_boxed_opaque_existential_1(v648, v649);
        v650 = OUTLINED_FUNCTION_175();
        sub_26A3451EC(v650, v651, v647, v652);
LABEL_93:
        sub_26A3AF8D0();
        return sub_26A1EDCF8(v1022);
      case 0x2Eu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSystemText_ClarificationTitle.redactedProto.getter(v681);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_110_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v893 = OUTLINED_FUNCTION_3_56();
        v894(v893);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_140_3();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SystemTextClarificationTitle);
        v895 = OUTLINED_FUNCTION_10_50();
        sub_26A0D205C(v895, v896);
        return sub_26A3AF8D0();
      case 0x2Fu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoVisualization_Image.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_79_10();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v699 = OUTLINED_FUNCTION_3_56();
        v700(v699);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_108_7();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for VisualizationImage);
        v701 = OUTLINED_FUNCTION_10_50();
        sub_26A0D2FD4(v701, v702);
        return sub_26A3AF8D0();
      case 0x30u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoVisualization_Map.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_109_7();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v735 = OUTLINED_FUNCTION_3_56();
        v736(v735);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_85_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for VisualizationMap);
        v737 = OUTLINED_FUNCTION_10_50();
        sub_26A0D2138(v737, v738);
        return sub_26A3AF8D0();
      case 0x31u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        v605 = v969;
        sub_26A4247C4();
        OUTLINED_FUNCTION_120_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_177_2();
        sub_26A424954();
        if (v4)
        {
          OUTLINED_FUNCTION_35_24();
          v606(v605);
          OUTLINED_FUNCTION_23_35();
          sub_26A3AF8D0();
        }

        else
        {
          OUTLINED_FUNCTION_11_35();
          v747(v605);
          OUTLINED_FUNCTION_23_35();
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_38_17(&protocol witness table for ButtonContainer);
          v748 = OUTLINED_FUNCTION_10_50();
          sub_26A0D17B4(v748, v749);
        }

        return sub_26A3AF8D0();
      case 0x32u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        sub_26A2B3BB8();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_112_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v684 = OUTLINED_FUNCTION_3_56();
        v685(v684);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_164_4();
        OUTLINED_FUNCTION_38_17(&protocol witness table for IntentsUIStandard);
        v686 = OUTLINED_FUNCTION_10_50();
        sub_26A0D1DB8(v686, v687);
        return sub_26A3AF8D0();
      case 0x33u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSash_Standard.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_97_7();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v897 = OUTLINED_FUNCTION_3_56();
        v898(v897);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_139_3();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SashStandard);
        v899 = OUTLINED_FUNCTION_10_50();
        sub_26A0D273C(v899, v900);
        return sub_26A3AF8D0();
      case 0x34u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        HeroHeader.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_103_6();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v889 = OUTLINED_FUNCTION_3_56();
        v890(v889);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_142_5();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for HeroHeader);
        v891 = OUTLINED_FUNCTION_10_50();
        sub_26A0D24A8(v891, v892);
        return sub_26A3AF8D0();
      case 0x35u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        v594 = v970;
        sub_26A4247C4();
        OUTLINED_FUNCTION_118_2();
        sub_26A3AED00();
        OUTLINED_FUNCTION_177_2();
        sub_26A424954();
        if (v4)
        {
          OUTLINED_FUNCTION_35_24();
          v595(v594);
          OUTLINED_FUNCTION_25_29();
          sub_26A3AF8D0();
        }

        else
        {
          OUTLINED_FUNCTION_11_35();
          v696(v594);
          OUTLINED_FUNCTION_25_29();
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_38_17(&protocol witness table for HorizontalListStandard);
          v697 = OUTLINED_FUNCTION_10_50();
          sub_26A0D196C(v697, v698);
        }

        return sub_26A3AF8D0();
      case 0x36u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSectionHeader_Standard.redactedProto.getter(v680);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_75_12();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v881 = OUTLINED_FUNCTION_3_56();
        v882(v881);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_144_6();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SectionHeaderStandard);
        v883 = OUTLINED_FUNCTION_10_50();
        sub_26A0D3268(v883, v884);
        return sub_26A3AF8D0();
      case 0x37u:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSectionHeader_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_100_7();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v885 = OUTLINED_FUNCTION_3_56();
        v886(v885);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_143_4();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SectionHeaderRich);
        v887 = OUTLINED_FUNCTION_10_50();
        sub_26A0D2660(v887, v888);
        return sub_26A3AF8D0();
      case 0x38u:
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        sub_26A2B2C30();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_113_4();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v703 = OUTLINED_FUNCTION_3_56();
        v704(v703);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_105_5();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for KeyValueStandard);
        v705 = OUTLINED_FUNCTION_10_50();
        sub_26A0D1CDC(v705, v706);
        return sub_26A3AF8D0();
      case 0x39u:
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        sub_26A3AF924();
        _ProtoTertiaryHeader_Standard.redactedProto.getter(v1015[0]);
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_134_2();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        v657 = v1020;
        sub_26A424954();
        if (v657)
        {
          goto LABEL_124;
        }

        v854 = OUTLINED_FUNCTION_3_56();
        v855(v854);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_152_5();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for TertiaryHeaderStandard);
        v856 = OUTLINED_FUNCTION_10_50();
        sub_26A0D0BAC(v856, v857);
        return sub_26A3AF8D0();
      case 0x3Au:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSimpleItem_RichSearchResult.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_117_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
          goto LABEL_124;
        }

        v739 = OUTLINED_FUNCTION_3_56();
        v740(v739);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_82_11();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemRichSearchResult);
        v741 = OUTLINED_FUNCTION_10_50();
        sub_26A0D1A48(v741, v742);
        return sub_26A3AF8D0();
      case 0x3Bu:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25();
        _ProtoSummaryItem_SwitchV2.redactedProto.getter();
        OUTLINED_FUNCTION_49_20();
        sub_26A4247C4();
        OUTLINED_FUNCTION_124_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22();
        if (v4)
        {
LABEL_124:
          v682 = OUTLINED_FUNCTION_17_29();
          v683(v682);
          sub_26A3AF8D0();
LABEL_125:
          sub_26A3AF8D0();
        }

        else
        {
          v862 = OUTLINED_FUNCTION_3_56();
          v863(v862);
          OUTLINED_FUNCTION_29_8();
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_150_4();
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemSwitchV2);
          v864 = OUTLINED_FUNCTION_10_50();
          sub_26A0D1444(v864, v865);
        }

        break;
      default:
        OUTLINED_FUNCTION_148();
        sub_26A3AF978();
        OUTLINED_FUNCTION_28_21();
        OUTLINED_FUNCTION_128();
        sub_26A3AF924();
        OUTLINED_FUNCTION_177_2();
        CustomCanvas.jsonString(redacted:)(v592);
        if (v593)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_26_32();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for CustomCanvas);
        v790 = OUTLINED_FUNCTION_10_50();
        sub_26A0D1F70(v790, v791);
        return sub_26A3AF8D0();
    }

    return sub_26A3AF8D0();
  }
}

uint64_t sub_26A3AE95C()
{
  OUTLINED_FUNCTION_34_12();
  result = StatusIndicatorCancelled.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t Component.separators.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v31 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C818, &unk_26A42D9A0);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v30 = v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  type metadata accessor for _ProtoResponse.Component(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v26[1] = v15;
  OUTLINED_FUNCTION_40();
  v17 = MEMORY[0x28223BE20](v16);
  v18 = *(a2 + 8);
  v29 = a1;
  v27 = a2;
  v18(a1, a2, v17);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_20_29();
  sub_26A3AF8D0();
  v19 = 1;
  v28 = v5;
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v13, 1, v5);
  v20 = v32;
  sub_26A13440C();
  if (a1 != 1)
  {
    (v18)(v29, v27);
    v21 = v30;
    sub_26A10FD9C();
    v22 = v28;
    if (__swift_getEnumTagSinglePayload(v21, 1, v28) == 1)
    {
      v23 = v31;
      *v31 = 0;
      *(v23 + 8) = 1;
      v23[2] = 0;
      *(v23 + 24) = 1;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_20_29();
      sub_26A3AF8D0();
      if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
      {
        sub_26A13440C();
      }
    }

    else
    {
      sub_26A3AF8D0();
      sub_26A3AF978();
    }

    sub_26A3AF978();
    v19 = 0;
  }

  v24 = type metadata accessor for Separators(0);
  return __swift_storeEnumTagSinglePayload(v20, v19, 1, v24);
}

void sub_26A3AEC9C()
{
  OUTLINED_FUNCTION_34_12();
  Table.rows.getter();
  *v0 = v1;
}

uint64_t sub_26A3AECC4()
{
  OUTLINED_FUNCTION_34_12();
  result = ReferenceButton.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

unint64_t sub_26A3AED00()
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

uint64_t sub_26A3AED44(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26A424FD4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_26A3AED68(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26A3AF8A8(v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = v2[2];
  v11[0] = (v2 + 4);
  v11[1] = v9;
  result = sub_26A3AEDD4(v11);
  *a1 = v2;
  return result;
}

uint64_t sub_26A3AEDD4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26A4251A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_26A424D74();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_26A3AEF90(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26A3AEEC8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26A3AEEC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_26A425354();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26A3AEF90(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_26A425354();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_26A425354()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_26A425354() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A166B88(0, *(v8 + 16) + 1, 1, v8);
        v8 = v83;
      }

      v40 = *(v8 + 16);
      v39 = *(v8 + 24);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_26A166B88(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      *(v8 + 16) = v41;
      v42 = v8 + 32;
      v43 = (v8 + 32 + 16 * v40);
      *v43 = v9;
      v43[1] = v88;
      v90 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = (v42 + 16 * (v41 - 1));
          v46 = (v8 + 16 * v41);
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = *(v8 + 32);
            v48 = *(v8 + 40);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = (v42 + 16 * (v44 - 1));
          v77 = *v76;
          v78 = (v42 + 16 * v44);
          v79 = v78[1];
          sub_26A3AF5C4((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = *(v8 + 16);
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove((v42 + 16 * v44), v78 + 2, 16 * (v81 - 1 - v44));
          *(v80 + 16) = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = v42 + 16 * v41;
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_26A3AF498(&v92, *result, a3);
LABEL_102:
}

uint64_t sub_26A3AF498(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_26A3AF768(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_26A3AF5C4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_26A3AF5C4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_26A168C84(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_26A425354() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_26A168C84(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_26A425354() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_26A3AF77C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_26A3AF7A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036DB40, &qword_26A429F88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_26A3AF8D0()
{
  OUTLINED_FUNCTION_14_4();
  v1(0);
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0);
  return v0;
}