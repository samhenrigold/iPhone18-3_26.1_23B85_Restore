uint64_t sub_1B5E62C70(unint64_t a1, unint64_t a2)
{
  v2 = sub_1B5E62CDC(sub_1B5E62CD8, 0, a1, a2);
  v6 = sub_1B5E62D10(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B5E62CDC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x1EEE69100](15, v5 | (v4 << 16));
}

uint64_t sub_1B5E62D10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B5EA5AE0();
    if (!v9 || (v10 = v9, v11 = sub_1B5E6260C(v9, 0), v12 = sub_1B5E62E70(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B5EA5700();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B5EA5700();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B5EA5C00();
LABEL_4:

  return sub_1B5EA5700();
}

unint64_t sub_1B5E62E70(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1B5E63080(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B5EA5780();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B5EA5C00();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1B5E63080(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1B5EA5760();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1B5E63080(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B5EA5790();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B8C8A390](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_1B5E630FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1B5EA5BB0();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t sub_1B5E63210(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B5DF33E0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B5E632B8(uint64_t a1)
{
  result = sub_1B5EA4990();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B5E6334C(uint64_t a1)
{
  result = sub_1B5EA4950();
  if (v2 <= 0x3F)
  {
    result = sub_1B5EA46F0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JsonParser.AsyncIterator.JsonState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0xFFE)
  {
    if (a2 + 61442 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 61442 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 61443;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0xFC | (*a1 >> 14) | (*a1 >> 2) & 0xF00) ^ 0xFFF;
  if (v5 >= 0xFFD)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for JsonParser.AsyncIterator.JsonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61442 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61442 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFFD)
  {
    v6 = ((a2 - 4094) >> 16) + 1;
    *result = a2 - 4094;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          v7 = ((-a2 >> 2) & 0x3FF) - (a2 << 10);
          *result = (16 * v7) & 0xFC00 | (4 * (v7 & 0x3F));
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B5E6357C(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 3 | (4 * ((v1 >> 8) & 3))) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_1B5E635B4(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0x303 | (a2 << 14);
  }

  else
  {
    v2 = ((a2 - 2) << 6) & 0x300 | (a2 - 2) & 3 | 0x8000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1B5E635F4(uint64_t a1)
{
  result = sub_1B5EA4D40();
  if (v2 <= 0x3F)
  {
    result = sub_1B5EA47C0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B5E636BC(uint64_t a1)
{
  v2 = type metadata accessor for JsonParser(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for JsonParser.AsyncIterator.JsonParseState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B5E637F8()
{
  result = qword_1EB90EE48;
  if (!qword_1EB90EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EE48);
  }

  return result;
}

uint64_t sub_1B5E63860(uint64_t a1)
{

  return sub_1B5EA5F00();
}

uint64_t sub_1B5E638F0()
{
}

uint64_t sub_1B5E6391C(uint64_t a1)
{

  return sub_1B5EA5F00();
}

uint64_t sub_1B5E6394C()
{
}

uint64_t sub_1B5E6396C()
{
}

uint64_t sub_1B5E63984()
{
  swift_allocObject();
  sub_1B5E2624C();
  sub_1B5E6626C();
  return v0;
}

uint64_t sub_1B5E639C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v8);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  sub_1B5E6EFE0();
  v12 = sub_1B5EA5920();
  v13 = sub_1B5DF46E0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1B5DF4428(v11, &qword_1EB90E590, &qword_1B5EB6080);
  }

  else
  {
    sub_1B5EA5910();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B5EA58B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B5EA56F0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = sub_1B5E6FC2C();

      sub_1B5DF4428(a3, &qword_1EB90E590, &qword_1B5EB6080);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B5DF4428(a3, &qword_1EB90E590, &qword_1B5EB6080);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return sub_1B5E6FC2C();
}

uint64_t sub_1B5E63C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1B5E6EFE0();
  v11 = sub_1B5EA5920();
  v12 = sub_1B5DF46E0(v10, 1, v11);

  if (v12 == 1)
  {
    sub_1B5DF4428(v10, &qword_1EB90E590, &qword_1B5EB6080);
  }

  else
  {
    sub_1B5EA5910();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1B5EA58B0();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1B5EA56F0() + 32;

      sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1B5DF4428(a3, &qword_1EB90E590, &qword_1B5EB6080);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B5DF4428(a3, &qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B5E63EC8()
{
  sub_1B5E6FBD0();
  v0 = swift_allocObject();
  sub_1B5E34F04();
  sub_1B5E644B0();
  return v0;
}

uint64_t sub_1B5E63F20()
{
  sub_1B5E01DFC();
  v0[3] = v1;
  v0[4] = v2;
  swift_task_alloc();
  sub_1B5E34EEC();
  v0[5] = v3;
  *v3 = v4;
  sub_1B5E6FAC4(v3);

  return sub_1B5E603B4();
}

uint64_t sub_1B5E63FAC()
{
  sub_1B5E2CED8();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      swift_getObjectType();
      v7 = sub_1B5EA58B0();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1B5E64104, v7, v9);
  }

  else
  {
    sub_1B5E2CF4C();

    return v10();
  }
}

uint64_t sub_1B5E64104()
{
  sub_1B5E01DFC();
  *(v0 + 16) = *(v0 + 48);
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  swift_willThrowTypedImpl();
  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E6418C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B5E641B0, 0, 0);
}

uint64_t sub_1B5E641B0()
{
  sub_1B5E2CED8();
  sub_1B5EA5950();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  sub_1B5DF33E0(&qword_1EB90EEA0, qword_1B5EB7458);
  *v1 = v0;
  v1[1] = sub_1B5E642E0;
  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6DB98](v2);
}

uint64_t sub_1B5E642E0()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;

  if (v0)
  {
    *(v3 + 64) = v0;
    if (*(v3 + 32))
    {
      swift_getObjectType();
      v7 = sub_1B5EA58B0();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1B5E64428, v7, v9);
  }

  else
  {
    sub_1B5E2CF4C();

    return v10();
  }
}

uint64_t sub_1B5E64428()
{
  sub_1B5E01DFC();
  *(v0 + 16) = *(v0 + 64);
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  swift_willThrowTypedImpl();
  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E644B0()
{
  sub_1B5E6FBD0();
  v1 = sub_1B5EA4990();
  sub_1B5DF5DA8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFD7E8();
  v7 = v6 - v5;
  *(v0 + qword_1EB90EE70) = 0;
  sub_1B5E34F04();
  sub_1B5EA4960();
  (*(v3 + 32))(v0 + qword_1EB90EE50, v7, v1);
  return v0;
}

uint64_t TokenStreamHandler.content()()
{
  sub_1B5E2CED8();
  v2 = v1;
  v4 = v3;
  v2[8] = v5;
  v2[9] = v3;
  v6 = *v0;
  v2[10] = *v0;
  v7 = sub_1B5EA4F10();
  v2[11] = v7;
  sub_1B5E01C50(v7);
  v2[12] = v8;
  v2[13] = sub_1B5E2D0C8();
  v9 = *(v6 + 80);
  v2[14] = v9;
  v10 = sub_1B5EA5AD0();
  v2[15] = v10;
  sub_1B5E01C50(v10);
  v2[16] = v11;
  v2[17] = sub_1B5E2D0C8();
  v2[18] = *(v9 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v12 = sub_1B5EA56D0();
  v2[21] = v12;
  sub_1B5E01C50(v12);
  v2[22] = v13;
  v2[23] = sub_1B5E2D0C8();
  v14 = sub_1B5EA4740();
  v2[24] = v14;
  sub_1B5E01C50(v14);
  v2[25] = v15;
  v2[26] = sub_1B5E2D0C8();
  v16 = sub_1B5EA4770();
  v2[27] = v16;
  sub_1B5E01C50(v16);
  v2[28] = v17;
  v2[29] = sub_1B5E2D0C8();
  v18 = sub_1B5EA4750();
  v2[30] = v18;
  sub_1B5E01C50(v18);
  v2[31] = v19;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v20 = sub_1B5DF33E0(&qword_1EB90EC38, &qword_1B5EB7028);
  sub_1B5E01CF8(v20);
  v2[34] = sub_1B5E2D0C8();
  v21 = swift_task_alloc();
  v2[35] = v21;
  *v21 = v2;
  v21[1] = sub_1B5E648F8;

  return MEMORY[0x1EEE4A078](v4);
}

uint64_t sub_1B5E648F8()
{
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (v0)
  {

    sub_1B5E2CF4C();
    sub_1B5E6FB04();

    __asm { BRAA            X1, X16 }
  }

  sub_1B5E5F8EC();
  sub_1B5E6FB04();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E64A9C(uint64_t a1)
{
  v2 = v1[34];
  v3 = sub_1B5EA4700();
  sub_1B5E10AFC(v3, v2);

  v4 = sub_1B5EA47B0();
  v5 = sub_1B5DF46E0(v2, 1, v4);
  v6 = MEMORY[0x1E69DA540];
  if (v5 == 1)
  {
    v8 = v1[30];
    v7 = v1[31];
    sub_1B5DF4428(v1[34], &qword_1EB90EC38, &qword_1B5EB7028);
    sub_1B5DF33E0(&qword_1EB90ED18, &qword_1B5EB73E0);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B5EAFC20;
    sub_1B5EA4720();
    v11 = v10 + v9;
    v12 = v10;
    (*(v7 + 104))(v11, *v6, v8);
  }

  else
  {
    v13 = sub_1B5EA4780();
    v14 = sub_1B5E5F324();
    v15(v14);
    v16 = *(v13 + 16);
    if (v16)
    {
      v17 = v1[31];
      v18 = v1[28];
      v98 = MEMORY[0x1E69E7CC0];
      sub_1B5E5C044(0, v16, 0);
      v12 = v98;
      v18 += 16;
      sub_1B5E34D90();
      v20 = v13 + v19;
      v93 = *(v18 + 56);
      v94 = v21;
      v22 = (v18 - 8);
      do
      {
        v23 = v1[29];
        v24 = v1[27];
        v94(v23, v20, v24);
        sub_1B5EA4760();
        (*v22)(v23, v24);
        v26 = *(v98 + 16);
        v25 = *(v98 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1B5E5C044(v25 > 1, v26 + 1, 1);
        }

        *(v98 + 16) = v26 + 1;
        sub_1B5E34D90();
        (*(v17 + 32))(v98 + v27 + *(v17 + 72) * v26);
        v20 += v93;
        --v16;
      }

      while (v16);

      v6 = MEMORY[0x1E69DA540];
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }
  }

  v28 = sub_1B5EA5870();
  v97 = v28;
  v29 = *(v12 + 16);
  if (v29)
  {
    v30 = v1[31];
    v31 = v1[25];
    v32 = v1[18];
    v34 = *(v30 + 16);
    v30 += 16;
    v33 = v34;
    v35 = v12 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v36 = *(v30 + 56);
    v37 = (v30 + 72);
    v96 = *v6;
    v89 = (v30 - 8);
    v88 = (v30 + 80);
    v87 = (v31 + 32);
    v86 = (v31 + 8);
    v81 = (v32 + 8);
    v82 = (v32 + 16);
    v38 = v1[36];
    v95 = MEMORY[0x1E69E7CC0];
    v91 = v36;
    v92 = v34;
    v90 = (v30 + 72);
    do
    {
      v39 = v1[32];
      v40 = v1[30];
      v33(v39, v35, v40);
      v41 = (*v37)(v39, v40);
      v42 = v1[32];
      v43 = v1[30];
      if (v41 == v96)
      {
        v44 = v1[26];
        v45 = v1[24];
        (*v88)(v1[32], v43);
        (*v87)(v44, v42, v45);
        sub_1B5EA4730();
        sub_1B5EA56C0();
        v46 = sub_1B5EA56B0();
        v48 = v47;

        v49 = sub_1B5E5FB14();
        v50(v49);
        if (v48 >> 60 == 15)
        {
          (*v86)(v1[26], v1[24]);
        }

        else
        {
          sub_1B5EA5370();
          if (v38)
          {
            swift_getErrorValue();
            v51 = sub_1B5EA5F70();
            v83 = v52;
            v84 = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = sub_1B5E6DFCC(0, *(v95 + 2) + 1, 1, v95);
            }

            v54 = *(v95 + 2);
            v53 = *(v95 + 3);
            if (v54 >= v53 >> 1)
            {
              v95 = sub_1B5E6DFCC((v53 > 1), v54 + 1, 1, v95);
            }

            v55 = v1[26];
            v56 = v1[24];
            sub_1B5E25DA0(v46, v48);

            (*v86)(v55, v56);
            v38 = 0;
            *(v95 + 2) = v54 + 1;
            v57 = &v95[16 * v54];
            *(v57 + 4) = v84;
            *(v57 + 5) = v83;
          }

          else
          {
            v85 = v1[26];
            v58 = v1[24];
            v59 = v1[20];
            v60 = v1[14];
            (*v82)(v1[19], v59, v60);
            sub_1B5EA58A0();
            sub_1B5EA5890();
            sub_1B5E25DA0(v46, v48);
            (*v81)(v59, v60);
            (*v86)(v85, v58);
            v38 = 0;
          }
        }

        v33 = v92;
        v37 = v90;
        v36 = v91;
      }

      else
      {
        (*v89)(v1[32], v43);
      }

      v35 += v36;
      --v29;
    }

    while (v29);

    v61 = v97;
  }

  else
  {
    v61 = v28;

    v95 = MEMORY[0x1E69E7CC0];
  }

  v62 = v1[17];
  v63 = v1[14];
  v1[5] = v61;
  sub_1B5EA58A0();
  swift_getWitnessTable();
  sub_1B5EA5640();
  if (sub_1B5DF46E0(v62, 1, v63) == 1)
  {
    (*(v1[16] + 8))(v1[17], v1[15]);

    if (*(v95 + 2))
    {
      sub_1B5EA5BC0();
      MEMORY[0x1B8C8A360](0xD00000000000004DLL, 0x80000001B5EAA030);
      v1[6] = v95;
      v64 = sub_1B5E5F324();
      sub_1B5DF33E0(v64, v65);
      sub_1B5E5ECD0(&qword_1EB90EE60, &qword_1EB90EE58, &qword_1B5EB73E8);
      sub_1B5EA5650();

      v66 = sub_1B5E5F318();
      MEMORY[0x1B8C8A360](v66);
    }

    v73 = v1[12];
    v72 = v1[13];
    v74 = v1[11];
    v75 = v1[9];
    sub_1B5EA4F00();
    sub_1B5EA5130();
    sub_1B5E6F7DC();
    v78 = sub_1B5E6EE20(v76, v77);
    sub_1B5E5F23C(v78);
    sub_1B5EA50F0();
    (*(v73 + 8))(v72, v74);
    swift_willThrow();
    sub_1B5EA47C0();
    sub_1B5DF5EB8();
    (*(v79 + 8))(v75);

    sub_1B5E2CF4C();
  }

  else
  {
    v68 = v1[17];
    v67 = v1[18];
    v69 = v1[14];
    v70 = v1[8];

    (*(v67 + 32))(v70, v68, v69);

    sub_1B5E2CF4C();
  }

  return v71();
}

uint64_t TokenStreamHandler.stream(fields:)(uint64_t a1)
{
  v2 = v1;
  v106 = a1;
  v103 = sub_1B5DF33E0(&qword_1EB90ECF0, &qword_1B5EB73F0);
  sub_1B5DF5DA8();
  v115 = v3;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v99 - v5;
  v114 = sub_1B5DF33E0(&qword_1EB90EE68, &qword_1B5EB73F8);
  sub_1B5DF5DA8();
  v101 = v7;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  v113 = &v99 - v9;
  sub_1B5DF33E0(&qword_1EB90ED08, &unk_1B5EB7400);
  sub_1B5DF5DA8();
  v118 = v10;
  v119 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v110 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v109 = &v99 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v102 = &v99 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v99 - v18;
  v112 = sub_1B5EA51A0();
  sub_1B5DF5DA8();
  v116 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5DFD7E8();
  v111 = v22 - v21;
  sub_1B5EA51B0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v23);
  sub_1B5DFD7E8();
  v26 = v25 - v24;
  sub_1B5EA5290();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v27);
  sub_1B5DFD7E8();
  sub_1B5EA5360();
  sub_1B5EA5270();
  v28 = sub_1B5E34F04();
  v29(v28);
  v30 = sub_1B5E6FA20();
  if (v31(v30) != *MEMORY[0x1E69A0B70])
  {
LABEL_29:
    v97 = sub_1B5E6FA20();
    v98(v97);
LABEL_30:
    result = sub_1B5EA5CA0();
    __break(1u);
    return result;
  }

  v32 = sub_1B5E6FA20();
  v33(v32);
  v34 = *(*v26 + 16);

  v35 = v106;

  v37 = sub_1B5DFDD48(v36);
  v38 = v37;
  v39 = *(v34 + 16);
  v104 = v2;
  v105 = v6;
  if (v39)
  {
    v100 = v37;
    v120 = MEMORY[0x1E69E7CC0];
    v40 = sub_1B5E6FAE4();
    sub_1B5E5C0FC(v40, v41, v42);
    v43 = v120;
    v108 = *(v116 + 16);
    sub_1B5E34D90();
    v99 = v34;
    v45 = v34 + v44;
    v107 = *(v46 + 56);
    v116 = v46;
    do
    {
      v108(v111, v45, v112);
      v47 = sub_1B5EA5190();
      v49 = v48;
      v50 = sub_1B5E26234();
      v51(v50);
      v120 = v43;
      v53 = *(v43 + 16);
      v52 = *(v43 + 24);
      if (v53 >= v52 >> 1)
      {
        v55 = sub_1B5E6FAF4(v52);
        sub_1B5E5C0FC(v55, v53 + 1, 1);
        v43 = v120;
      }

      *(v43 + 16) = v53 + 1;
      v54 = v43 + 16 * v53;
      *(v54 + 32) = v47;
      *(v54 + 40) = v49;
      v45 += v107;
      --v39;
    }

    while (v39);

    v2 = v104;
    v6 = v105;
    v35 = v106;
    v38 = v100;
  }

  else
  {

    v43 = MEMORY[0x1E69E7CC0];
  }

  v56 = sub_1B5DFDD48(v43);
  sub_1B5E6E67C(v56, v38);
  sub_1B5E2624C();

  v57 = *(v38 + 16);

  if (v57 != *(v35 + 16))
  {
    goto LABEL_30;
  }

  v58 = MEMORY[0x1E69E7CC0];
  if (v57)
  {
    v120 = MEMORY[0x1E69E7CC0];
    sub_1B5E5C0DC(0, v57, 0);
    v58 = v120;
    type metadata accessor for Field(0);
    LODWORD(v116) = *MEMORY[0x1E69E8790];
    v59 = v102;
    v112 = *(v101 + 104);
    v60 = (v101 + 8);
    do
    {
      v62 = v113;
      v61 = v114;
      v112(v113, v116, v114);
      sub_1B5EA5970();
      (*v60)(v62, v61);
      v120 = v58;
      v64 = *(v58 + 16);
      v63 = *(v58 + 24);
      if (v64 >= v63 >> 1)
      {
        v67 = sub_1B5E6FAF4(v63);
        sub_1B5E5C0DC(v67, v64 + 1, 1);
        v59 = v102;
        v58 = v120;
      }

      *(v58 + 16) = v64 + 1;
      sub_1B5E34D90();
      sub_1B5E6E864(v59, v58 + v65 + *(v66 + 72) * v64);
      --v57;
    }

    while (v57);
    v2 = v104;
    v6 = v105;
    v35 = v106;
  }

  *(v2 + qword_1EB90EE70) = sub_1B5E65DB8(v35, v58);

  v68 = 0;
  v69 = *(v58 + 16);
  v70 = v103;
  while (1)
  {
    v71 = *(v58 + 16);
    if (v69 == v68)
    {
      break;
    }

    if (v68 >= v71)
    {
      __break(1u);

      sub_1B5DF4428(v71, &qword_1EB90ED08, &unk_1B5EB7400);
      __break(1u);
      goto LABEL_29;
    }

    sub_1B5E34D90();
    v72 = v117;
    sub_1B5E6EFE0();
    sub_1B5E65EBC(v72, v2);
    ++v68;
    v73 = sub_1B5DFA488();
    sub_1B5DF4428(v73, v74, &unk_1B5EB7400);
  }

  if (v71)
  {
    v120 = MEMORY[0x1E69E7CC0];
    v75 = sub_1B5E6FAE4();
    sub_1B5E5C0BC(v75, v76, v77);
    v78 = v120;
    sub_1B5E34D90();
    v80 = v58 + v79;
    v81 = (v115 + 32);
    v119 = *(v82 + 72);
    do
    {
      v83 = v109;
      sub_1B5E6EFE0();
      v84 = v110;
      sub_1B5E6E864(v83, v110);
      v85 = *(v118 + 48);
      v86 = *v81;
      v87 = sub_1B5E5FB14();
      v86(v87);
      sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
      sub_1B5DF5EB8();
      (*(v88 + 8))(v84 + v85);
      v120 = v78;
      v89 = v6;
      v90 = v70;
      v92 = *(v78 + 16);
      v91 = *(v78 + 24);
      if (v92 >= v91 >> 1)
      {
        v95 = sub_1B5E6FAF4(v91);
        sub_1B5E5C0BC(v95, v92 + 1, 1);
        v78 = v120;
      }

      *(v78 + 16) = v92 + 1;
      sub_1B5E34D90();
      (v86)(v78 + v93 + *(v94 + 72) * v92, v89, v90);
      v80 += v119;
      --v71;
      v70 = v90;
      v6 = v89;
    }

    while (v71);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v78;
}

uint64_t sub_1B5E65DB8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_1B5EA5920();
  sub_1B5DF3658(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v2;

  return sub_1B5E63C28(0, 0, v7, &unk_1B5EB7618, v9);
}

uint64_t sub_1B5E65EBC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_1B5DF33E0(&qword_1EB90ED08, &unk_1B5EB7400);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  sub_1B5E6EFE0();
  v7 = *(v4 + 56);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = *(v2 + 80);
  v9[3] = *(v2 + 88);
  v9[4] = v8;
  v10 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  sub_1B5EA5980();
  (*(*(v10 - 8) + 8))(&v6[v7], v10);
  v11 = sub_1B5DF33E0(&qword_1EB90ECF0, &qword_1B5EB73F0);
  return (*(*(v11 - 8) + 8))(v6, v11);
}

uint64_t sub_1B5E66094(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B5DF33E0(&qword_1EB90F038, &qword_1B5EB7608);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  (*(v4 + 16))(&v8 - v5, a1, v3);
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x1E69E8760])
  {
    return (*(v4 + 8))(v6, v3);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + qword_1EB90EE70))
    {

      sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
      sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
      sub_1B5EA5940();
    }
  }

  return result;
}

uint64_t sub_1B5E6626C()
{
  sub_1B5E6FA14();
  v2 = sub_1B5EA4990();
  sub_1B5DF5DA8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v8 = v7 - v6;
  *(v0 + qword_1EB90EE70) = 0;
  sub_1B5E5F910();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_1B5E5F910();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B5E01A08;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B5E01A10;
  *(v12 + 24) = v10;
  v13 = v1;
  sub_1B5EA4960();
  (*(v4 + 32))(v0 + qword_1EB90EE50, v8, v2);
  return v0;
}

uint64_t sub_1B5E66404(void *a1)
{
  sub_1B5E5F910();
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  sub_1B5DF33E0(&qword_1EB90EC90, &qword_1B5EB7080);

  return sub_1B5EA59D0();
}

uint64_t sub_1B5E664B4()
{
  sub_1B5E2CED8();
  v1 = *(v0 + 16);
  swift_willThrow();
  v2 = v1;
  sub_1B5E2CF4C();

  return v3();
}

uint64_t TokenStreamHandler.finalize()()
{
  sub_1B5E01DFC();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = *v0;
  v1[7] = *v0;
  v5 = sub_1B5EA4F30();
  v1[8] = v5;
  sub_1B5E01C50(v5);
  v1[9] = v6;
  v1[10] = sub_1B5E2D0C8();
  v7 = sub_1B5EA4F10();
  v1[11] = v7;
  sub_1B5E01C50(v7);
  v1[12] = v8;
  v1[13] = sub_1B5E2D0C8();
  v1[14] = *(v4 + 80);
  v9 = sub_1B5EA5AD0();
  v1[15] = v9;
  sub_1B5E01C50(v9);
  v1[16] = v10;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v11 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  v1[19] = v11;
  sub_1B5E01CF8(v11);
  v1[20] = sub_1B5E2D0C8();
  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B5E66724()
{
  sub_1B5E34EC0();
  v1 = *(v0[6] + qword_1EB90EE70);
  v0[21] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[22] = v2;
    v3 = sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
    *v2 = v0;
    v2[1] = sub_1B5E66924;
    v5 = v0[19];
    v4 = v0[20];
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v4, v1, v5, v3, v6);
  }

  else
  {
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];
    sub_1B5EA4F20();
    (*(v8 + 104))(v7, *MEMORY[0x1E69A0958], v9);
    sub_1B5EA5130();
    sub_1B5E6F7DC();
    sub_1B5E6EE20(v10, v11);
    swift_allocError();
    sub_1B5EA5100();
    v12 = sub_1B5E5F324();
    v13(v12);
    swift_willThrow();

    sub_1B5E2CF4C();

    return v14();
  }
}

uint64_t sub_1B5E66924()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  sub_1B5E34F1C();
  *v3 = v2;
  v4 = *v1;
  sub_1B5E2CE38();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E66A20()
{
  v1 = v0[20];
  v2 = sub_1B5EA47C0();
  result = sub_1B5DF46E0(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v0[18];
  v5 = v0[14];
  v6 = v0[7];
  v29 = *(v2 - 8);
  (*(v29 + 32))(v0[5], v1, v2);
  v0[2] = sub_1B5EA4700();
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = *(v6 + 88);
  v8 = sub_1B5E5FB14();
  sub_1B5DF33E0(v8, v9);
  sub_1B5E5ECD0(&qword_1EB90EE80, &qword_1EB90EE78, &unk_1B5EB7418);
  v10 = sub_1B5EA57E0();

  v0[3] = v10;
  sub_1B5EA58A0();
  swift_getWitnessTable();
  sub_1B5EA5A30();

  v11 = sub_1B5DF46E0(v4, 1, v5);
  v12 = v0[15];
  v13 = v0[16];
  if (v11 != 1)
  {
    v21 = v0[17];
    v22 = v0[14];
    (*(v13 + 16))(v21, v0[18], v0[15]);
    result = sub_1B5DF46E0(v21, 1, v22);
    if (result != 1)
    {
      v24 = v0[17];
      v23 = v0[18];
      v25 = v0[15];
      v26 = v0[16];
      v27 = v0[14];
      v28 = v0[4];

      (*(v26 + 8))(v23, v25);
      (*(*(v27 - 8) + 32))(v28, v24, v27);

      sub_1B5E2CF4C();
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v14 = v0[18];
  v15 = v0[5];
  sub_1B5EA4F00();
  sub_1B5EA5130();
  sub_1B5E6F7DC();
  sub_1B5E6EE20(v16, v17);
  swift_allocError();
  sub_1B5EA50F0();
  v18 = sub_1B5E5F318();
  v19(v18);
  swift_willThrow();

  (*(v29 + 8))(v15, v2);
  (*(v13 + 8))(v14, v12);

  sub_1B5E2CF4C();
LABEL_6:

  return v20();
}

uint64_t sub_1B5E66E38()
{
  sub_1B5E34EC0();

  sub_1B5E2CF4C();

  return v0();
}

uint64_t sub_1B5E66ED8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v63[1] = a2;
  v67 = a3;
  v75 = sub_1B5EA4740();
  v4 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B5EA56D0();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v64 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1B5EA4770();
  v8 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1B5EA4750();
  v10 = *(v84 - 8);
  v11 = MEMORY[0x1EEE9AC00](v84);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v63 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v63 - v17;
  v19 = sub_1B5EA4780();
  v20 = *(v19 + 16);
  v68 = a1;
  if (v20)
  {
    v71 = v4;
    v72 = v18;
    v73 = v13;
    v82 = MEMORY[0x1E69E7CC0];
    v21 = v19;
    sub_1B5E5C044(0, v20, 0);
    v22 = v82;
    v24 = *(v8 + 16);
    v23 = v8 + 16;
    v25 = *(v23 + 64);
    v70 = v21;
    v26 = v21 + ((v25 + 32) & ~v25);
    v77 = *(v23 + 56);
    v78 = v24;
    v79 = v23;
    v27 = (v23 - 8);
    v76 = v10 + 32;
    do
    {
      v28 = v80;
      v29 = v81;
      (v78)(v80, v26, v81);
      sub_1B5EA4760();
      (*v27)(v28, v29);
      v82 = v22;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B5E5C044(v30 > 1, v31 + 1, 1);
        v22 = v82;
      }

      *(v22 + 16) = v31 + 1;
      (*(v10 + 32))(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, v16, v84);
      v26 = v77 + v26;
      --v20;
    }

    while (v20);

    a1 = v68;
    v18 = v72;
    v13 = v73;
    v32 = v22;
    v33 = v71;
  }

  else
  {
    v33 = v4;

    v32 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v32 + 16);
  if (v34)
  {
    v81 = 0;
    v37 = *(v10 + 16);
    v36 = (v10 + 16);
    v35 = v37;
    v38 = (v36[64] + 32) & ~v36[64];
    v63[0] = v32;
    v39 = v32 + v38;
    v40 = *(v36 + 7);
    v78 = (v36 + 72);
    v79 = v40;
    v77 = (v36 - 8);
    LODWORD(v76) = *MEMORY[0x1E69DA540];
    v70 = (v33 + 4);
    v71 = (v36 + 80);
    v69 = v33 + 1;
    v80 = 0xE000000000000000;
    v72 = v37;
    v73 = v36;
    do
    {
      v41 = v84;
      v35(v18, v39, v84);
      v35(v13, v18, v41);
      v42 = (*v78)(v13, v41);
      if (v42 == v76)
      {
        (*v71)(v13, v84);
        v44 = v74;
        v43 = v75;
        (*v70)(v74, v13, v75);
        v45 = sub_1B5EA4730();
        v46 = v18;
        v47 = v13;
        v49 = v48;
        v82 = v81;
        v83 = v80;

        MEMORY[0x1B8C8A360](v45, v49);

        v13 = v47;
        v18 = v46;

        v80 = v83;
        v81 = v82;
        v35 = v72;
        (*v69)(v44, v43);
        (*v77)(v46, v84);
      }

      else
      {
        v50 = *v77;
        v51 = v18;
        v52 = v18;
        v53 = v84;
        (*v77)(v51, v84);
        v54 = v53;
        v18 = v52;
        v50(v13, v54);
      }

      v39 += v79;
      --v34;
    }

    while (v34);

    a1 = v68;
  }

  else
  {
  }

  v55 = v64;
  sub_1B5EA56C0();
  v56 = sub_1B5EA56B0();
  v58 = v57;

  result = (*(v65 + 8))(v55, v66);
  v60 = v67;
  if (v58 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v61 = v63[2];
    sub_1B5EA5370();
    if (v61)
    {

      v62 = 1;
    }

    else
    {
      v62 = 0;
    }

    sub_1B5E25DA0(v56, v58);
    return sub_1B5DF3658(v60, v62, 1, a1);
  }

  return result;
}

uint64_t sub_1B5E67598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a1;
  v6[27] = a4;
  v6[30] = sub_1B5DF33E0(&qword_1EB90F040, &qword_1B5EB7620);
  v6[31] = swift_task_alloc();
  v7 = sub_1B5EA4F10();
  v6[32] = v7;
  v6[33] = *(v7 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = type metadata accessor for Field(0);
  v6[36] = swift_task_alloc();
  v8 = sub_1B5DF33E0(&qword_1EB90F048, &qword_1B5EB7628);
  v6[37] = v8;
  v6[38] = *(v8 - 8);
  v6[39] = swift_task_alloc();
  v9 = sub_1B5DF33E0(&qword_1EB90EE68, &qword_1B5EB73F8);
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();
  v10 = sub_1B5DF33E0(&qword_1EB90ECF0, &qword_1B5EB73F0);
  v6[43] = v10;
  v6[44] = *(v10 - 8);
  v6[45] = swift_task_alloc();
  v11 = sub_1B5EA4D40();
  v6[46] = v11;
  v6[47] = *(v11 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = type metadata accessor for JsonParserToken(0);
  v6[51] = swift_task_alloc();
  v12 = sub_1B5DF33E0(&qword_1EB90ED08, &unk_1B5EB7400);
  v6[52] = v12;
  v6[53] = *(v12 - 8);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v13 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v6[56] = v13;
  v6[57] = *(v13 - 8);
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90F050, &qword_1B5EB7630);
  v6[66] = swift_task_alloc();
  v14 = sub_1B5EA4950();
  v6[67] = v14;
  v6[68] = *(v14 - 8);
  v6[69] = swift_task_alloc();
  v6[70] = type metadata accessor for JsonParser.AsyncIterator(0);
  v6[71] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  v6[77] = swift_task_alloc();
  type metadata accessor for JsonParser(0);
  v6[78] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E67B2C, 0, 0);
}

uint64_t sub_1B5E67B2C()
{
  v1 = *(v0 + 224);

  *(v0 + 632) = sub_1B5DFDD48(v2);
  v3 = *(v1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = *(v0 + 456);
    v6 = *(v0 + 424);
    v51 = *(v0 + 416);
    v7 = *(v0 + 352);
    v8 = *(v0 + 224);
    v54 = MEMORY[0x1E69E7CC0];
    v9 = sub_1B5E6FAE4();
    sub_1B5E5C11C(v9, v10, v11);
    v4 = v54;
    sub_1B5E34D90();
    v13 = v8 + v12;
    v14 = (v5 + 32);
    v49 = (v7 + 8);
    v50 = *(v6 + 72);
    do
    {
      v15 = *(v0 + 520);
      v16 = *(v0 + 448);
      v17 = *(v0 + 432);
      v18 = *(v0 + 344);
      sub_1B5E6EFE0();
      v19 = sub_1B5E5FB14();
      sub_1B5E6E864(v19, v20);
      v21 = *v14;
      (*v14)(v15, v17 + *(v51 + 48), v16);
      (*v49)(v17, v18);
      v23 = *(v54 + 16);
      v22 = *(v54 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B5E5C11C((v22 > 1), v23 + 1, 1);
      }

      *(v54 + 16) = v23 + 1;
      sub_1B5E34D90();
      v21(v54 + v24 + *(v25 + 72) * v23);
      v13 += v50;
      --v3;
    }

    while (v3);
  }

  v26 = *(v0 + 624);
  v27 = *(v0 + 568);
  v28 = *(v0 + 560);
  v29 = *(v0 + 552);
  v30 = *(v0 + 544);
  v31 = *(v0 + 536);
  v52 = *(v0 + 448);
  v32 = *(v0 + 232);

  v53 = sub_1B5E35420(v33, v4);
  *(v0 + 144) = v53;
  v34 = qword_1EB90EE50;
  sub_1B5EA4990();
  sub_1B5DF5EB8();
  (*(v35 + 16))(v26, v32 + v34);
  *(v0 + 120) = 0;
  *(v0 + 112) = 0;
  sub_1B5DF5DF0();
  sub_1B5DF3658(v36, v37, v38, v52);
  sub_1B5EA4970();
  v39 = sub_1B5E5FA54();
  v40(v39);
  sub_1B5EA46E0();
  (*(v30 + 8))(v29, v31);
  v41 = (v27 + v28[6]);
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  *(v27 + v28[7]) = 7;
  *(v27 + v28[8]) = 0;
  swift_beginAccess();
  swift_beginAccess();
  *(v0 + 680) = *MEMORY[0x1E69A0900];
  *(v0 + 684) = *MEMORY[0x1E69A08B0];
  v42 = MEMORY[0x1E69A08C0];
  *(v0 + 688) = *MEMORY[0x1E69A08C8];
  *(v0 + 692) = *v42;
  *(v0 + 696) = *MEMORY[0x1E69A08B8];
  v43 = MEMORY[0x1E69A08D0];
  *(v0 + 700) = *MEMORY[0x1E69A08E8];
  *(v0 + 704) = *v43;
  *(v0 + 708) = *MEMORY[0x1E69A08A8];
  v44 = MEMORY[0x1E69A08A0];
  *(v0 + 712) = *MEMORY[0x1E69A08F8];
  *(v0 + 716) = *v44;
  *(v0 + 720) = *MEMORY[0x1E69A08F0];
  v45 = MEMORY[0x1E69A0908];
  *(v0 + 724) = *MEMORY[0x1E69A08E0];
  *(v0 + 728) = *v45;
  *(v0 + 732) = *MEMORY[0x1E69E8790];
  *(v0 + 648) = 0;
  *(v0 + 640) = v53;
  *(v0 + 672) = 0;
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v0 + 656) = v46;
  *v46 = v47;
  v46[1] = sub_1B5E67F54;

  return sub_1B5E603B4();
}

uint64_t sub_1B5E67F54()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  *(v3 + 664) = v0;

  if (v0)
  {
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E68058()
{
  v2 = v0;
  if (sub_1B5DF46E0(*(v0 + 528), 1, *(v0 + 400)) == 1)
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 568);

    sub_1B5E6F80C();
    sub_1B5E6EF24(v4, v5);
    sub_1B5E6F7F4();
    sub_1B5E6EF24(v3, v6);
    goto LABEL_3;
  }

  v9 = sub_1B5E6FB20();
  sub_1B5E6EF7C(v9, v10);
  sub_1B5DFA488();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v0 + 624);
    v12 = *(v0 + 568);
    v13 = *(v2 + 408);
    v14 = *(v2 + 208);

    sub_1B5E6F80C();
    sub_1B5E6EF24(v12, v15);
    sub_1B5E6F7F4();
    sub_1B5E6EF24(v11, v16);
    v7 = sub_1B5EA47C0();
    sub_1B5DF5EB8();
    (*(v17 + 32))(v14, v13, v7);
    v8 = 0;
    goto LABEL_6;
  }

  v21 = *(v0 + 680);
  v22 = *(v0 + 408);
  v24 = *(v0 + 384);
  v23 = *(v2 + 392);
  v25 = *(v2 + 376);
  (*(v25 + 32))(v23, v22, *(v2 + 368));
  v26 = sub_1B5E6FBE4();
  v27(v26);
  v28 = v25 + 88;
  v29 = sub_1B5E6FB20();
  v31 = v30(v29);
  if (v31 == v21)
  {
    v32 = *(v2 + 632);
    v33 = sub_1B5E6FBA8();
    v34(v33);
    v35 = v23[1];
    if (*(v32 + 16))
    {
      v36 = *v23;
      v37 = *(v2 + 632);
      sub_1B5EA5FD0();
      sub_1B5EA5710();
      v38 = sub_1B5EA6020();
      v39 = ~(-1 << *(v37 + 32));
      while (1)
      {
        v40 = *(v2 + 632);
        v41 = v38 & v39;
        if (((*(v40 + (((v38 & v39) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v38 & v39)) & 1) == 0)
        {
          break;
        }

        v42 = (*(v40 + 48) + 16 * v41);
        if (*v42 != v36 || v42[1] != v35)
        {
          v44 = sub_1B5EA5F00();
          v38 = v41 + 1;
          if ((v44 & 1) == 0)
          {
            continue;
          }
        }

        v45 = sub_1B5E6F998();
        v46(v45);
        *(v2 + 112) = v36;
        *(v2 + 120) = v35;

        goto LABEL_128;
      }
    }

    v57 = sub_1B5E26234();
    v58(v57);
LABEL_127:
    v35 = *(v2 + 672);
    v36 = *(v2 + 648);
LABEL_128:
    v193 = *(v2 + 640);
LABEL_129:
    *(v2 + 648) = v36;
    *(v2 + 640) = v193;
LABEL_130:
    *(v2 + 672) = v35;
    goto LABEL_131;
  }

  v359 = v2;
  if (v31 != *(v2 + 684))
  {
    if (v31 == *(v2 + 688))
    {
      v59 = sub_1B5E6F8C4();
      v60(v59);
      v61 = sub_1B5E6FAA4();
      sub_1B5E6A144(v61, v62, v63, v64);
      if (!v21)
      {
LABEL_126:
        v283 = sub_1B5E6F998();
        v284(v283);
        goto LABEL_127;
      }
    }

    else if (v31 == *(v2 + 692))
    {
      v65 = sub_1B5E6F8C4();
      v66(v65);
      v67 = sub_1B5E6FAA4();
      sub_1B5E6A854(v67, v68, v69, v70);
      if (!v21)
      {
        goto LABEL_126;
      }
    }

    else
    {
      if (v31 != *(v2 + 696))
      {
        if (v31 == *(v2 + 700))
        {
          v100 = *(v2 + 368);

          v101 = sub_1B5E26234();
          v102(v101);
          if (qword_1EB90D178 != -1)
          {
            sub_1B5E34CF4(&qword_1EB90D178, v103);
          }

          v104 = sub_1B5EA53B0();
          sub_1B5DFD794(v104, qword_1EB90D180);
          sub_1B5E2624C();

          v105 = sub_1B5EA5380();
          sub_1B5EA5A40();
          sub_1B5E6FB50();
          if (sub_1B5E6FB38())
          {
            sub_1B5E5FD88();
            v106 = sub_1B5E6F9C0();
            sub_1B5E6FA2C(v106);
            *v28 = 136315138;

            v107 = sub_1B5E5B1CC();

            *(v28 + 4) = v107;
            sub_1B5E6F8A4(&dword_1B5DED000, v108, v109, "Unexpectedly encountered illegal sequence: %s.");
            sub_1B5E6F850();
            sub_1B5E6F9DC();
          }

          sub_1B5E6F834();
          v111 = *(v110 + 256);
          sub_1B5E6F894();
          sub_1B5EA5BC0();
          *(v2 + 128) = v360;
          *(v2 + 136) = v361;
          sub_1B5E6F884();
          MEMORY[0x1B8C8A360](v112 + 12, v113 | 0x8000000000000000);
          sub_1B5EA5620();

          MEMORY[0x1B8C8A360](46, 0xE100000000000000);
        }

        else
        {
          if (v31 != *(v2 + 704))
          {
            if (v31 != *(v2 + 708))
            {
              goto LABEL_59;
            }

            v132 = sub_1B5E6F998();
            v133(v132);
LABEL_131:
            v285 = swift_task_alloc();
            *(v2 + 656) = v285;
            *v285 = v2;
            v285[1] = sub_1B5E67F54;
            sub_1B5E6FBF0();

            return sub_1B5E603B4();
          }

          v114 = *(v2 + 384);
          v100 = *(v2 + 368);

          v115 = sub_1B5E26234();
          v116(v115);
          v119 = *v114;
          v118 = v114[1];
          if (qword_1EB90D178 != -1)
          {
            sub_1B5E34CF4(&qword_1EB90D178, v117);
          }

          v120 = sub_1B5EA53B0();
          sub_1B5DFD794(v120, qword_1EB90D180);
          sub_1B5E2624C();

          v121 = sub_1B5EA5380();
          sub_1B5EA5A40();
          sub_1B5E6FB50();
          if (sub_1B5E6FB38())
          {
            sub_1B5E5FD88();
            v122 = sub_1B5E6F9C0();
            sub_1B5E6FA2C(v122);
            *(v28 + 4) = sub_1B5E6F944(4.8149e-34);
            sub_1B5E6F8A4(&dword_1B5DED000, v123, v124, "Unexpectedly encountered illegal identifier: %s.");
            sub_1B5E6F850();
            sub_1B5E6F9DC();
          }

          sub_1B5E6F834();
          v111 = *(v125 + 256);
          sub_1B5E6F894();
          sub_1B5EA5BC0();

          MEMORY[0x1B8C8A360](v119, v118);

          MEMORY[0x1B8C8A360](46, 0xE100000000000000);
        }

        sub_1B5EA4F00();
        sub_1B5EA5130();
        sub_1B5E6F7DC();
        v128 = sub_1B5E6EE20(v126, v127);
        v129 = sub_1B5E5F23C(v128);
        sub_1B5EA50F0();
        (*(v2 + 8))(v100, v111);
        v354 = v129;
        goto LABEL_55;
      }

      v73 = sub_1B5E6F8C4();
      v74(v73);
      v75 = sub_1B5E6FAA4();
      sub_1B5E6AF64(v75, v76, v77, v78);
      if (!v21)
      {
        goto LABEL_126;
      }
    }

    v79 = sub_1B5E26234();
    v80(v79);
    v354 = v21;
    goto LABEL_33;
  }

  v47 = *(v2 + 664);
  v48 = *(v2 + 616);
  v49 = sub_1B5E6FBA8();
  v50(v49);
  v51 = *v23;
  v52 = v23[1];

  sub_1B5E6BD80((v2 + 112), v48, (v2 + 144), v51, v52);
  if (!v47)
  {
    v71 = sub_1B5E6F998();
    v72(v71);

    goto LABEL_127;
  }

  v53 = *(v2 + 392);
  v54 = v47;
  v56 = *(v2 + 368);
  v55 = *(v2 + 376);

  (*(v55 + 8))(v53, v56);
  v354 = v54;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_33:
          v81 = *(v2 + 640);
          v340 = *(v2 + 240);
          v344 = *(v2 + 248);
          sub_1B5E6F80C();
          sub_1B5E6EF24(v82, v83);
          v28 = v81 + 64;
          sub_1B5E6FA38();
          v86 = v85 & v84;
          v88 = (63 - v87) >> 6;
          v349 = v81;

          v24 = 0;
          if (!v86)
          {
            goto LABEL_35;
          }

          while (2)
          {
            v89 = v24;
LABEL_39:
            v91 = *(v2 + 448);
            v90 = *(v2 + 456);
            v1 = *(v2 + 248);
            v92 = __clz(__rbit64(v86));
            v86 &= v86 - 1;
            v93 = v92 | (v89 << 6);
            v94 = (*(v349 + 48) + 16 * v93);
            v96 = *v94;
            v95 = v94[1];
            (*(v90 + 16))(&v1[*(v340 + 48)], *(v349 + 56) + *(v90 + 72) * v93, v91);
            *v1 = v96;
            v2 = v359;
            *(v344 + 8) = v95;
            *(v359 + 160) = v354;

            v97 = v354;
            sub_1B5EA59A0();
            v31 = sub_1B5DF4428(v1, &qword_1EB90F040, &qword_1B5EB7620);
            if (v86)
            {
              continue;
            }

            break;
          }

LABEL_35:
          while (1)
          {
            v89 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v89 >= v88)
            {
              sub_1B5E6F7F4();
              sub_1B5E6EF24(v98, v99);

LABEL_3:
              v7 = sub_1B5EA47C0();
              v8 = 1;
LABEL_6:
              v18 = *(v2 + 616);
              sub_1B5DF3658(*(v2 + 208), v8, 1, v7);
              sub_1B5DF4428(v18, &qword_1EB90F058, &unk_1B5EB7638);

              sub_1B5E2CF4C();
              sub_1B5E6FBF0();

              __asm { BRAA            X1, X16 }
            }

            v86 = *(v28 + 8 * v89);
            ++v24;
            if (v86)
            {
              v24 = v89;
              goto LABEL_39;
            }
          }

          __break(1u);
LABEL_59:
          if (v31 != *(v2 + 712))
          {
            break;
          }

          if (!*(v2 + 672))
          {
            goto LABEL_89;
          }

          if (*(*(v2 + 640) + 16))
          {
            v134 = sub_1B5E5AE4C(*(v2 + 648), *(v2 + 672));
            if (v135)
            {
              (*(*(v2 + 456) + 16))(*(v2 + 464), *(*(v2 + 640) + 56) + *(*(v2 + 456) + 72) * v134, *(v2 + 448));
              *(v2 + 168) = 0;
              sub_1B5EA59A0();
              v136 = sub_1B5E26234();
              v137(v136);
              v138 = sub_1B5E5F318();
              v139(v138);
              goto LABEL_127;
            }
          }

          if (qword_1EB90D178 != -1)
          {
            sub_1B5E34CF4(&qword_1EB90D178, v174);
          }

          v175 = sub_1B5EA53B0();
          sub_1B5DFD794(v175, qword_1EB90D180);
          sub_1B5E2624C();

          v176 = sub_1B5EA5380();
          sub_1B5EA5A40();
          sub_1B5E6FB50();
          if (sub_1B5E6FB38())
          {
            sub_1B5E5FD88();
            v177 = sub_1B5E6F9C0();
            sub_1B5E6FA2C(v177);
            *(v28 + 4) = sub_1B5E6F944(4.8149e-34);
            sub_1B5E6F8A4(&dword_1B5DED000, v178, v179, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.");
            sub_1B5E6F850();
            sub_1B5E6F9DC();
          }

          sub_1B5E6F834();
          v181 = *(v180 + 256);
          sub_1B5E6F894();
          sub_1B5EA5BC0();
          sub_1B5E6FB2C();
          sub_1B5E6F884();
          v184 = v183 + 11;
LABEL_99:
          MEMORY[0x1B8C8A360](v184, v182 | 0x8000000000000000);
          v216 = sub_1B5E6FA20();
          MEMORY[0x1B8C8A360](v216);
          sub_1B5E6FA78();
          sub_1B5EA4F00();
          v217 = sub_1B5EA5130();
          sub_1B5E6F7DC();
          v220 = sub_1B5E6EE20(v218, v219);
          sub_1B5E5F23C(v220);
          sub_1B5E6FB80();
          (*(v2 + 8))(v24, v181);
          v2 = v359;
LABEL_100:
          v354 = v217;
LABEL_55:
          swift_willThrow();
          v1 += 8;
          v130 = sub_1B5E5FA54();
          v131(v130);
        }

        if (v31 == *(v2 + 716))
        {
          if (!*(v2 + 672))
          {
            goto LABEL_89;
          }

          if (*(*(v2 + 640) + 16))
          {
            v140 = sub_1B5E5AE4C(*(v2 + 648), *(v2 + 672));
            if (v141)
            {
              v142 = *(v2 + 640);
              v321 = *(v2 + 732);
              v324 = *(v2 + 608);
              v143 = *(v2 + 504);
              v332 = *(v2 + 512);
              v334 = *(v2 + 616);
              v144 = *(v359 + 456);
              v145 = *(v359 + 448);
              v355 = *(v359 + 392);
              v345 = *(v359 + 376);
              v350 = *(v359 + 368);
              v323 = *(v359 + 360);
              v328 = *(v359 + 352);
              v330 = *(v359 + 344);
              v146 = *(v359 + 336);
              v147 = *(v359 + 328);
              v148 = *(v359 + 320);
              v336 = *(v359 + 312);
              v338 = *(v359 + 304);
              v341 = *(v359 + 296);
              v326 = *(v359 + 288);
              v149 = v144[2];
              v149(v332, *(v142 + 56) + v144[9] * v140, v145);
              (*(v147 + 104))(v146, v321, v148);
              sub_1B5EA5970();
              (*(v147 + 8))(v146, v148);
              v149(v324, v143, v145);
              sub_1B5E5F704();
              sub_1B5DF3658(v150, v151, v152, v145);
              sub_1B5E6F038(v324, v334);
              (*(v328 + 16))(v326, v323, v330);
              type metadata accessor for Field.FieldType(0);
              sub_1B5E5F3AC();
              swift_storeEnumTagMultiPayload();
              sub_1B5EA5990();
              (*(v338 + 8))(v336, v341);
              v153 = v144[1];
              v153(v143, v145);
              v154 = sub_1B5E6FB20();
              v155(v154);
              v153(v332, v145);
              v2 = v359;
              (*(v345 + 8))(v355, v350);
              goto LABEL_127;
            }
          }

          if (qword_1EB90D178 != -1)
          {
            sub_1B5E34CF4(&qword_1EB90D178, v205);
          }

          v206 = sub_1B5EA53B0();
          sub_1B5DFD794(v206, qword_1EB90D180);
          sub_1B5E2624C();

          v207 = sub_1B5EA5380();
          sub_1B5EA5A40();
          sub_1B5E6FB50();
          if (sub_1B5E6FB38())
          {
            v2 = v359;
            sub_1B5E5FD88();
            v208 = sub_1B5E6F9C0();
            sub_1B5E6FA2C(v208);
            *(v28 + 4) = sub_1B5E6F944(4.8149e-34);
            sub_1B5E6F8A4(&dword_1B5DED000, v209, v210, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.");
            sub_1B5E6F850();
            sub_1B5E6F9DC();
          }

          else
          {

            v2 = v359;
          }

          sub_1B5E6F834();
          v181 = *(v214 + 256);
          sub_1B5E6F894();
          sub_1B5EA5BC0();
          sub_1B5E6FB2C();
          sub_1B5E6F884();
          v184 = v215 + 12;
          goto LABEL_99;
        }

        if (v31 != *(v2 + 720))
        {
          break;
        }

        v156 = *(v2 + 672);
        if (!v156)
        {
          goto LABEL_89;
        }

        v157 = *(v2 + 600);
        v158 = *(v2 + 448);
        sub_1B5E6EFE0();
        v159 = sub_1B5DF46E0(v157, 1, v158);
        v160 = *(v2 + 600);
        if (v159 == 1)
        {

          sub_1B5DF4428(v160, &qword_1EB90F058, &unk_1B5EB7638);
          if (qword_1EB90D178 != -1)
          {
            sub_1B5E34CF4(&qword_1EB90D178, v161);
          }

          v162 = sub_1B5EA53B0();
          sub_1B5DFD794(v162, qword_1EB90D180);
          sub_1B5E2624C();

          v163 = sub_1B5EA5380();
          sub_1B5EA5A40();
          sub_1B5E6FB50();
          if (sub_1B5E6FB38())
          {
            sub_1B5E6FA58();
            v164 = sub_1B5E6F9C0();
            sub_1B5E6FA2C(v164);
            *(v28 + 4) = sub_1B5E6F944(4.8149e-34);
            sub_1B5E6F8A4(&dword_1B5DED000, v165, v166, "Continuation for nested field stream: %s does not exist. This is a bug in GMS or malformed json output.");
            sub_1B5E6F850();
            sub_1B5E6F9DC();
          }

          v167 = v359;
          v1 = *(v359 + 376);
          v169 = *(v359 + 264);
          v168 = *(v359 + 272);
          v170 = *(v359 + 256);
          sub_1B5E6F894();
          sub_1B5EA5BC0();
          sub_1B5E6FB2C();
          sub_1B5E6F884();
          v173 = v172 + 10;
LABEL_116:
          MEMORY[0x1B8C8A360](v173, v171 | 0x8000000000000000);
          v259 = sub_1B5E6FA20();
          MEMORY[0x1B8C8A360](v259);
          sub_1B5E6FA78();
          sub_1B5EA4F00();
          v217 = sub_1B5EA5130();
          sub_1B5E6F7DC();
          v262 = sub_1B5E6EE20(v260, v261);
          sub_1B5E5F23C(v262);
          sub_1B5E6FB80();
          (*(v169 + 8))(v168, v170);
          v2 = v167;
          goto LABEL_100;
        }

        v221 = *(v2 + 640);
        v222 = *(v2 + 496);
        v223 = *(v2 + 448);
        v224 = v2;
        v225 = *(*(v2 + 456) + 32);
        v225(v222, v160, v223);
        if (*(v221 + 16))
        {
          v226 = sub_1B5E5AE4C(v224[81], v156);
          if (v227)
          {
            v228 = v224[80];
            v229 = v224[57];
            v230 = *(v229 + 72);
            (*(v229 + 16))(v224[61], *(v228 + 56) + v230 * v226, v224[56]);
            v224[24] = 0;
            sub_1B5EA59A0();
            v224[25] = 0;
            sub_1B5EA59A0();
            swift_beginAccess();
            v231 = sub_1B5E6FB20();
            v193 = v228;
            v233 = sub_1B5E5AE4C(v231, v232);
            if (v234)
            {
              v235 = v233;
              v357 = *(v359 + 592);
              v236 = *(v359 + 448);
              swift_isUniquelyReferenced_nonNull_native();
              v237 = sub_1B5DF33E0(&qword_1EB90E960, &qword_1B5EB66B0);
              sub_1B5E6FC4C(v237);
              sub_1B5E6FC0C();
              v225(v357, *(v228 + 56) + v235 * v230, v236);
              sub_1B5E6FBE4();
              sub_1B5EA5C90();
              v238 = 0;
              *(v359 + 144) = v228;
            }

            else
            {
              v193 = *(v359 + 640);
              v238 = 1;
            }

            v2 = v359;
            v300 = *(v359 + 608);
            v301 = *(v359 + 592);
            v303 = *(v359 + 488);
            v302 = *(v359 + 496);
            v305 = *(v359 + 448);
            v304 = *(v359 + 456);
            v353 = *(v359 + 392);
            v358 = *(v359 + 616);
            v306 = *(v359 + 376);
            v348 = *(v359 + 368);
            sub_1B5DF3658(v301, v238, 1, v305);
            swift_endAccess();
            sub_1B5DF4428(v301, &qword_1EB90F058, &unk_1B5EB7638);
            v307 = *(v304 + 8);
            v307(v303, v305);
            v307(v302, v305);
            (*(v306 + 8))(v353, v348);
            sub_1B5DF5DF0();
            sub_1B5DF3658(v308, v309, v310, v305);
            sub_1B5E6F038(v300, v358);
            *(v359 + 112) = 0;
            *(v359 + 120) = 0;
LABEL_139:

            v36 = 0;
            v35 = 0;
            goto LABEL_129;
          }
        }

        if (qword_1EB90D178 != -1)
        {
          sub_1B5E34CF4(&qword_1EB90D178, v263);
        }

        v264 = sub_1B5EA53B0();
        sub_1B5DFD794(v264, qword_1EB90D180);
        sub_1B5E2624C();

        v265 = sub_1B5EA5380();
        sub_1B5EA5A40();
        sub_1B5E6FB50();
        if (sub_1B5E6FB38())
        {
          sub_1B5E6FA58();
          v266 = sub_1B5E6F9C0();
          sub_1B5E6FA2C(v266);
          *(v28 + 4) = sub_1B5E6F944(4.8149e-34);
          sub_1B5E6F8A4(&dword_1B5DED000, v267, v268, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.");
          sub_1B5E6F850();
          sub_1B5E6F9DC();
        }

        v2 = v359;
        v1 = *(v359 + 448);
        v269 = *(v359 + 456);
        v351 = *(v359 + 392);
        v270 = *(v359 + 376);
        v342 = *(v359 + 496);
        v346 = *(v359 + 368);
        v272 = *(v359 + 264);
        v271 = *(v359 + 272);
        v273 = *(v359 + 256);
        sub_1B5E6F894();
        sub_1B5EA5BC0();
        sub_1B5E6FB2C();
        sub_1B5E6F884();
        MEMORY[0x1B8C8A360](v274 + 10, v275 | 0x8000000000000000);
        v276 = sub_1B5E6FA20();
        MEMORY[0x1B8C8A360](v276);
        sub_1B5E6FA78();
        sub_1B5EA4F00();
        v277 = sub_1B5EA5130();
        sub_1B5E6F7DC();
        v280 = sub_1B5E6EE20(v278, v279);
        sub_1B5E5F23C(v280);
        sub_1B5E6FB80();
        (*(v272 + 8))(v271, v273);
        v354 = v277;
        swift_willThrow();
        (*(v269 + 8))(v342, v1);
        (*(v270 + 8))(v351, v346);
      }

      if (v31 == *(v2 + 724))
      {
        if (!*(v2 + 672))
        {
LABEL_89:
          v203 = sub_1B5E6F998();
          v204(v203);
          v35 = 0;
          goto LABEL_130;
        }

        if (*(*(v2 + 640) + 16))
        {
          v185 = sub_1B5E5AE4C(*(v2 + 648), *(v2 + 672));
          if (v186)
          {
            v187 = *(v2 + 584);
            v188 = *(v2 + 448);
            v189 = *(v2 + 456);
            v190 = *(v189 + 72);
            v356 = *(v189 + 16);
            (v356)(*(v2 + 480), *(*(v2 + 640) + 56) + v190 * v185, v188);
            sub_1B5E26234();
            sub_1B5E6EFE0();
            if (sub_1B5DF46E0(v187, 1, v188) != 1)
            {
              v2 = v359;
              v319 = *(v359 + 732);
              v329 = *(v359 + 616);
              v320 = *(v359 + 504);
              v322 = *(v359 + 608);
              v287 = *(v359 + 448);
              v288 = *(v359 + 456);
              v339 = *(v359 + 480);
              v343 = *(v359 + 376);
              v347 = *(v359 + 368);
              v352 = *(v359 + 392);
              v289 = *(v359 + 360);
              v290 = *(v359 + 336);
              v325 = *(v359 + 352);
              v327 = *(v359 + 344);
              v292 = *(v359 + 320);
              v291 = *(v359 + 328);
              v331 = *(v359 + 312);
              v333 = *(v359 + 304);
              v335 = *(v359 + 296);
              v337 = *(v359 + 472);
              (*(v288 + 32))();
              *(v359 + 184) = 0;
              sub_1B5EA59A0();
              (*(v291 + 104))(v290, v319, v292);
              sub_1B5EA5970();
              (*(v291 + 8))(v290, v292);
              v293 = sub_1B5E6FBE4();
              v356(v293);
              sub_1B5E5F704();
              sub_1B5DF3658(v294, v295, v296, v287);
              sub_1B5E6F038(v322, v329);
              v297 = sub_1B5E5F324();
              v298(v297);
              type metadata accessor for Field.FieldType(0);
              sub_1B5E5F3AC();
              swift_storeEnumTagMultiPayload();
              sub_1B5EA5990();
              (*(v333 + 8))(v331, v335);
              v299 = *(v288 + 8);
              v299(v320, v287);
              (*(v325 + 8))(v289, v327);
              v299(v337, v287);
              v299(v339, v287);
              (*(v343 + 8))(v352, v347);
              goto LABEL_127;
            }

            v191 = *(v359 + 640);
            sub_1B5DF4428(*(v359 + 584), &qword_1EB90F058, &unk_1B5EB7638);
            *(v359 + 176) = 0;
            sub_1B5EA59A0();
            swift_beginAccess();
            v192 = sub_1B5E6FB20();
            v193 = v191;
            v195 = sub_1B5E5AE4C(v192, v194);
            if (v196)
            {
              v197 = v195;
              v198 = *(v359 + 576);
              v199 = *(v359 + 448);
              v200 = *(v359 + 456);
              swift_isUniquelyReferenced_nonNull_native();
              v201 = sub_1B5DF33E0(&qword_1EB90E960, &qword_1B5EB66B0);
              sub_1B5E6FC4C(v201);
              sub_1B5E6FC0C();
              (*(v200 + 32))(v198, *(v193 + 56) + v197 * v190, v199);
              sub_1B5E6FBE4();
              sub_1B5EA5C90();
              v202 = 0;
              *(v359 + 144) = v193;
            }

            else
            {
              v193 = *(v359 + 640);
              v202 = 1;
            }

            v311 = *(v359 + 576);
            v312 = *(v359 + 480);
            v313 = *(v359 + 448);
            v314 = *(v359 + 456);
            v315 = *(v359 + 392);
            v316 = *(v359 + 368);
            v317 = *(v359 + 376);
            sub_1B5DF3658(v311, v202, 1, v313);
            swift_endAccess();
            sub_1B5DF4428(v311, &qword_1EB90F058, &unk_1B5EB7638);
            (*(v314 + 8))(v312, v313);
            (*(v317 + 8))(v315, v316);
            v2 = v359;
            *(v359 + 112) = 0;
            *(v359 + 120) = 0;
            goto LABEL_139;
          }
        }

        if (qword_1EB90D178 != -1)
        {
          sub_1B5E34CF4(&qword_1EB90D178, v252);
        }

        v253 = sub_1B5EA53B0();
        sub_1B5DFD794(v253, qword_1EB90D180);
        sub_1B5E2624C();

        v254 = sub_1B5EA5380();
        sub_1B5EA5A40();
        sub_1B5E6FB50();
        if (sub_1B5E6FB38())
        {
          sub_1B5E6FA58();
          v255 = sub_1B5E6F9C0();
          sub_1B5E6FA2C(v255);
          *(v28 + 4) = sub_1B5E6F944(4.8149e-34);
          sub_1B5E6F8A4(&dword_1B5DED000, v256, v257, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.");
          sub_1B5E6F850();
          sub_1B5E6F9DC();
        }

        v167 = v359;
        v1 = *(v359 + 376);
        v169 = *(v359 + 264);
        v168 = *(v359 + 272);
        v170 = *(v359 + 256);
        sub_1B5E6F894();
        sub_1B5EA5BC0();
        sub_1B5E6FB2C();
        sub_1B5E6F884();
        v173 = v258 + 6;
        goto LABEL_116;
      }

      if (v31 != *(v2 + 728))
      {
        break;
      }

      v211 = *(v359 + 664);
      sub_1B5E6B67C((v359 + 112), *(v359 + 616), (v359 + 144));
      if (!v211)
      {
        v2 = v359;
        goto LABEL_126;
      }

      v2 = v359;

      v212 = sub_1B5E26234();
      v213(v212);
      v354 = v211;
    }

    if (v31 != *MEMORY[0x1E69A08D8])
    {
      break;
    }

    if (qword_1EB90D178 != -1)
    {
      sub_1B5E34CF4(&qword_1EB90D178, v239);
    }

    v240 = sub_1B5EA53B0();
    sub_1B5DFD794(v240, qword_1EB90D180);
    v241 = sub_1B5EA5380();
    v242 = sub_1B5EA5A40();
    if (os_log_type_enabled(v241, v242))
    {
      v243 = swift_slowAlloc();
      *v243 = 0;
      _os_log_impl(&dword_1B5DED000, v241, v242, "Unexpectedly encountered eof for json stream.", v243, 2u);
      MEMORY[0x1B8C8B330](v243, -1, -1);
    }

    v2 = v359;
    v245 = *(v359 + 264);
    v244 = *(v359 + 272);
    v246 = *(v359 + 256);

    sub_1B5E6F884();
    sub_1B5EA4F00();
    sub_1B5EA5130();
    sub_1B5E6F7DC();
    sub_1B5E6EE20(v247, v248);
    v249 = swift_allocError();
    sub_1B5EA50F0();
    (*(v245 + 8))(v244, v246);
    v354 = v249;
    swift_willThrow();
    v250 = sub_1B5E26234();
    v251(v250);
  }

  sub_1B5E6FBF0();

  return MEMORY[0x1EEE6B1D8](v281);
}

uint64_t sub_1B5E69D40()
{
  sub_1B5E01DFC();
  *(v0 + 152) = *(v0 + 664);
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  swift_willThrowTypedImpl();
  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B5E69DCC()
{
  v31 = v0[83];
  v1 = v0[80];
  v28 = v0[30];
  v29 = v0[31];
  sub_1B5E6F80C();
  sub_1B5E6EF24(v2, v3);
  v4 = v1 + 64;
  sub_1B5E6FA38();
  v7 = v6 & v5;
  v9 = (63 - v8) >> 6;
  v30 = v1;

  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_7:
      v13 = v0[31];
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v12 << 6);
      v16 = (*(v30 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      (*(v0[57] + 16))(&v13[*(v28 + 48)], *(v30 + 56) + *(v0[57] + 72) * v15, v0[56]);
      *v13 = v17;
      *(v29 + 8) = v18;
      v0[20] = v31;

      v19 = v31;
      sub_1B5EA59A0();
      result = sub_1B5DF4428(v13, &qword_1EB90F040, &qword_1B5EB7620);
      if (!v7)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_7;
    }
  }

  sub_1B5E6F7F4();
  sub_1B5E6EF24(v20, v21);

  sub_1B5EA47C0();
  v22 = v0[77];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v23, v24, v25, v26);
  sub_1B5DF4428(v22, &qword_1EB90F058, &unk_1B5EB7638);

  sub_1B5E2CF4C();

  return v27();
}

void sub_1B5E6A144(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v52 = a4;
  v53 = a2;
  v47 = a3;
  v5 = sub_1B5EA4F10();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B5DF33E0(&qword_1EB90F048, &qword_1B5EB7628);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v42 - v8;
  v9 = sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  v15 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  v22 = type metadata accessor for Field(0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v42 - v24);
  swift_beginAccess();
  v51 = a1[1];
  if (!v51)
  {
    return;
  }

  v46 = v16;
  v26 = *a1;
  *v25 = v52;
  type metadata accessor for Field.FieldType(0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1B5E6EFE0();
  if (sub_1B5DF46E0(v14, 1, v15) != 1)
  {
    v32 = v46;
    (*(v46 + 32))(v21, v14, v15);
LABEL_10:
    sub_1B5E6F0A8();
    v40 = v48;
    sub_1B5EA5990();
    (*(v49 + 8))(v40, v50);
    (*(v32 + 8))(v21, v15);
    sub_1B5E6EF24(v25, type metadata accessor for Field);
    return;
  }

  v27 = v26;
  v28 = v51;

  sub_1B5DF4428(v14, &qword_1EB90F058, &unk_1B5EB7638);
  v29 = v47;
  swift_beginAccess();
  v30 = *v29;
  v53 = v27;
  sub_1B5E4D8A8(v27, v28, v30, v12);
  v31 = sub_1B5DF46E0(v12, 1, v15);
  v32 = v46;
  if (v31 != 1)
  {
    (*(v46 + 32))(v19, v12, v15);
    swift_endAccess();

    v21 = v19;
    goto LABEL_10;
  }

  sub_1B5DF4428(v12, &qword_1EB90F058, &unk_1B5EB7638);
  swift_endAccess();
  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v33 = sub_1B5EA53B0();
  sub_1B5DFD794(v33, qword_1EB90D180);

  v34 = sub_1B5EA5380();
  v35 = sub_1B5EA5A40();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v54 = v37;
    *v36 = 136315138;
    v38 = v53;
    *(v36 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v34, v35, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.", v36, 0xCu);
    sub_1B5DF3FB8(v37);
    MEMORY[0x1B8C8B330](v37, -1, -1);
    v39 = v36;
    v28 = v51;
    MEMORY[0x1B8C8B330](v39, -1, -1);
  }

  else
  {

    v38 = v53;
  }

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD000000000000019, 0x80000001B5EAA320);
  MEMORY[0x1B8C8A360](v38, v28);

  MEMORY[0x1B8C8A360](0xD00000000000001FLL, 0x80000001B5EAA270);
  v41 = v43;
  sub_1B5EA4F00();
  sub_1B5EA5130();
  sub_1B5E6EE20(&qword_1EB90EBE0, MEMORY[0x1E69A0A68]);
  swift_allocError();
  sub_1B5EA50F0();
  (*(v44 + 8))(v41, v45);
  swift_willThrow();
  sub_1B5E6EF24(v25, type metadata accessor for Field);
}

void sub_1B5E6A854(uint64_t *a1, uint64_t a2, uint64_t *a3, double a4)
{
  v52 = a2;
  v47 = a3;
  v6 = sub_1B5EA4F10();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B5DF33E0(&qword_1EB90F048, &qword_1B5EB7628);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v43 - v9;
  v10 = sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  v16 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - v21;
  v23 = type metadata accessor for Field(0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v43 - v25);
  swift_beginAccess();
  v51 = a1[1];
  if (!v51)
  {
    return;
  }

  v46 = v17;
  v27 = *a1;
  *v26 = a4;
  type metadata accessor for Field.FieldType(0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1B5E6EFE0();
  if (sub_1B5DF46E0(v15, 1, v16) != 1)
  {
    v33 = v46;
    (*(v46 + 32))(v22, v15, v16);
LABEL_10:
    sub_1B5E6F0A8();
    v41 = v48;
    sub_1B5EA5990();
    (*(v49 + 8))(v41, v50);
    (*(v33 + 8))(v22, v16);
    sub_1B5E6EF24(v26, type metadata accessor for Field);
    return;
  }

  v28 = v27;
  v29 = v51;

  sub_1B5DF4428(v15, &qword_1EB90F058, &unk_1B5EB7638);
  v30 = v47;
  swift_beginAccess();
  v31 = *v30;
  v52 = v28;
  sub_1B5E4D8A8(v28, v29, v31, v13);
  v32 = sub_1B5DF46E0(v13, 1, v16);
  v33 = v46;
  if (v32 != 1)
  {
    (*(v46 + 32))(v20, v13, v16);
    swift_endAccess();

    v22 = v20;
    goto LABEL_10;
  }

  sub_1B5DF4428(v13, &qword_1EB90F058, &unk_1B5EB7638);
  swift_endAccess();
  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v34 = sub_1B5EA53B0();
  sub_1B5DFD794(v34, qword_1EB90D180);

  v35 = sub_1B5EA5380();
  v36 = sub_1B5EA5A40();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v53 = v38;
    *v37 = 136315138;
    v39 = v52;
    *(v37 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v35, v36, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.", v37, 0xCu);
    sub_1B5DF3FB8(v38);
    MEMORY[0x1B8C8B330](v38, -1, -1);
    v40 = v37;
    v29 = v51;
    MEMORY[0x1B8C8B330](v40, -1, -1);
  }

  else
  {

    v39 = v52;
  }

  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD000000000000019, 0x80000001B5EAA320);
  MEMORY[0x1B8C8A360](v39, v29);

  MEMORY[0x1B8C8A360](0xD00000000000001FLL, 0x80000001B5EAA270);
  v42 = v43;
  sub_1B5EA4F00();
  sub_1B5EA5130();
  sub_1B5E6EE20(&qword_1EB90EBE0, MEMORY[0x1E69A0A68]);
  swift_allocError();
  sub_1B5EA50F0();
  (*(v44 + 8))(v42, v45);
  swift_willThrow();
  sub_1B5E6EF24(v26, type metadata accessor for Field);
}

void sub_1B5E6AF64(uint64_t *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v52 = a4;
  v47 = a3;
  v53 = a2;
  v5 = sub_1B5EA4F10();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B5DF33E0(&qword_1EB90F048, &qword_1B5EB7628);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v42 - v8;
  v9 = sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  v15 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  v22 = type metadata accessor for Field(0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v42 - v24;
  swift_beginAccess();
  v51 = a1[1];
  if (!v51)
  {
    return;
  }

  v46 = v16;
  v26 = *a1;
  *v25 = v52 & 1;
  type metadata accessor for Field.FieldType(0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1B5E6EFE0();
  if (sub_1B5DF46E0(v14, 1, v15) != 1)
  {
    v32 = v46;
    (*(v46 + 32))(v21, v14, v15);
LABEL_10:
    sub_1B5E6F0A8();
    v40 = v48;
    sub_1B5EA5990();
    (*(v49 + 8))(v40, v50);
    (*(v32 + 8))(v21, v15);
    sub_1B5E6EF24(v25, type metadata accessor for Field);
    return;
  }

  v27 = v26;
  v28 = v51;

  sub_1B5DF4428(v14, &qword_1EB90F058, &unk_1B5EB7638);
  v29 = v47;
  swift_beginAccess();
  v30 = *v29;
  v53 = v27;
  sub_1B5E4D8A8(v27, v28, v30, v12);
  v31 = sub_1B5DF46E0(v12, 1, v15);
  v32 = v46;
  if (v31 != 1)
  {
    (*(v46 + 32))(v19, v12, v15);
    swift_endAccess();

    v21 = v19;
    goto LABEL_10;
  }

  sub_1B5DF4428(v12, &qword_1EB90F058, &unk_1B5EB7638);
  swift_endAccess();
  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v33 = sub_1B5EA53B0();
  sub_1B5DFD794(v33, qword_1EB90D180);

  v34 = sub_1B5EA5380();
  v35 = sub_1B5EA5A40();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v54 = v37;
    *v36 = 136315138;
    v38 = v53;
    *(v36 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v34, v35, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.", v36, 0xCu);
    sub_1B5DF3FB8(v37);
    MEMORY[0x1B8C8B330](v37, -1, -1);
    v39 = v36;
    v28 = v51;
    MEMORY[0x1B8C8B330](v39, -1, -1);
  }

  else
  {

    v38 = v53;
  }

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD000000000000019, 0x80000001B5EAA320);
  MEMORY[0x1B8C8A360](v38, v28);

  MEMORY[0x1B8C8A360](0xD00000000000001FLL, 0x80000001B5EAA270);
  v41 = v43;
  sub_1B5EA4F00();
  sub_1B5EA5130();
  sub_1B5E6EE20(&qword_1EB90EBE0, MEMORY[0x1E69A0A68]);
  swift_allocError();
  sub_1B5EA50F0();
  (*(v44 + 8))(v41, v45);
  swift_willThrow();
  sub_1B5E6EF24(v25, type metadata accessor for Field);
}

void sub_1B5E6B67C(uint64_t *a1, char *a2, uint64_t *a3)
{
  v41 = a3;
  v46 = a2;
  v4 = sub_1B5EA4F10();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B5DF33E0(&qword_1EB90F048, &qword_1B5EB7628);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v36 - v7;
  v8 = sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v14 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  v21 = type metadata accessor for Field(0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  swift_beginAccess();
  v45 = a1[1];
  if (!v45)
  {
    return;
  }

  v37 = *a1;
  type metadata accessor for Field.FieldType(0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1B5E6EFE0();
  if (sub_1B5DF46E0(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v20, v13, v14);
LABEL_10:
    sub_1B5E6F0A8();
    v34 = v42;
    sub_1B5EA5990();
    (*(v43 + 8))(v34, v44);
    (*(v15 + 8))(v20, v14);
    sub_1B5E6EF24(v24, type metadata accessor for Field);
    return;
  }

  v46 = v24;
  v25 = v45;

  sub_1B5DF4428(v13, &qword_1EB90F058, &unk_1B5EB7638);
  v26 = v41;
  swift_beginAccess();
  v27 = v37;
  sub_1B5E4D8A8(v37, v25, *v26, v11);
  if (sub_1B5DF46E0(v11, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v11, v14);
    swift_endAccess();

    v20 = v18;
    v24 = v46;
    goto LABEL_10;
  }

  sub_1B5DF4428(v11, &qword_1EB90F058, &unk_1B5EB7638);
  swift_endAccess();
  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v28 = sub_1B5EA53B0();
  sub_1B5DFD794(v28, qword_1EB90D180);

  v29 = sub_1B5EA5380();
  v30 = sub_1B5EA5A40();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v29, v30, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.", v31, 0xCu);
    sub_1B5DF3FB8(v32);
    v33 = v46;
    MEMORY[0x1B8C8B330](v32, -1, -1);
    v25 = v45;
    MEMORY[0x1B8C8B330](v31, -1, -1);
  }

  else
  {

    v33 = v46;
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD000000000000019, 0x80000001B5EAA320);
  MEMORY[0x1B8C8A360](v27, v25);

  MEMORY[0x1B8C8A360](0xD00000000000001FLL, 0x80000001B5EAA270);
  v35 = v38;
  sub_1B5EA4F00();
  sub_1B5EA5130();
  sub_1B5E6EE20(&qword_1EB90EBE0, MEMORY[0x1E69A0A68]);
  swift_allocError();
  sub_1B5EA50F0();
  (*(v39 + 8))(v35, v40);
  swift_willThrow();
  sub_1B5E6EF24(v33, type metadata accessor for Field);
}

uint64_t sub_1B5E6BD80(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v50 = a4;
  v51 = a2;
  v45 = a3;
  v7 = sub_1B5EA4F10();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B5DF33E0(&qword_1EB90F048, &qword_1B5EB7628);
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v40 - v10;
  v11 = sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v46 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v41 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - v20;
  v22 = type metadata accessor for Field(0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v40 - v24);
  swift_beginAccess();
  if (!a1[1])
  {
  }

  v26 = a1[1];
  v40 = *a1;
  *v25 = v50;
  v25[1] = a5;
  type metadata accessor for Field.FieldType(0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1B5E6EFE0();
  if (sub_1B5DF46E0(v16, 1, v17) != 1)
  {
    v38 = v46;
    (*(v46 + 32))(v21, v16, v17);
    sub_1B5E6F0A8();

LABEL_11:
    v39 = v47;
    sub_1B5EA5990();
    (*(v48 + 8))(v39, v49);
    (*(v38 + 8))(v21, v17);
    sub_1B5E6EF24(v25, type metadata accessor for Field);
  }

  v27 = v16;
  v28 = v26;
  sub_1B5DF4428(v27, &qword_1EB90F058, &unk_1B5EB7638);
  v29 = v45;
  swift_beginAccess();
  v30 = v40;
  sub_1B5E4D8A8(v40, v28, *v29, v14);
  if (sub_1B5DF46E0(v14, 1, v17) != 1)
  {
    v38 = v46;
    v21 = v41;
    (*(v46 + 32))(v41, v14, v17);
    swift_endAccess();

    sub_1B5E6F0A8();
    goto LABEL_11;
  }

  sub_1B5DF4428(v14, &qword_1EB90F058, &unk_1B5EB7638);
  swift_endAccess();
  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v31 = sub_1B5EA53B0();
  sub_1B5DFD794(v31, qword_1EB90D180);

  v32 = sub_1B5EA5380();
  v33 = sub_1B5EA5A40();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v52 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v32, v33, "Continuation for field %s does not exist. This is a bug in GMS or malformed json output.", v34, 0xCu);
    sub_1B5DF3FB8(v35);
    MEMORY[0x1B8C8B330](v35, -1, -1);
    MEMORY[0x1B8C8B330](v34, -1, -1);
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD000000000000019, 0x80000001B5EAA320);
  MEMORY[0x1B8C8A360](v30, v28);

  MEMORY[0x1B8C8A360](0xD00000000000001FLL, 0x80000001B5EAA270);
  v36 = v42;
  sub_1B5EA4F00();
  sub_1B5EA5130();
  sub_1B5E6EE20(&qword_1EB90EBE0, MEMORY[0x1E69A0A68]);
  swift_allocError();
  sub_1B5EA50F0();
  (*(v43 + 8))(v36, v44);
  swift_willThrow();
  sub_1B5E6EF24(v25, type metadata accessor for Field);
}

uint64_t TokenStreamHandler.deinit()
{
  v1 = qword_1EB90EE50;
  sub_1B5EA4990();
  sub_1B5DF5EB8();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t TokenStreamHandler.__deallocating_deinit()
{
  TokenStreamHandler.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t TokenStreamHandler<>.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v1);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v34 - v3;
  v4 = sub_1B5DF33E0(&qword_1EB90EE88, &qword_1B5EB7428);
  sub_1B5DF5DA8();
  v6 = v5;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1B5DF33E0(&qword_1EB90EE90, &qword_1B5EB7430);
  sub_1B5DF5DA8();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  sub_1B5DF33E0(&qword_1EB90EE98, &qword_1B5EB7438);
  sub_1B5DF5DA8();
  v36 = v20;
  v37 = v21;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v22);
  sub_1B5EA45D0();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v4);
  sub_1B5EA5970();
  (*(v6 + 8))(v9, v4);
  sub_1B5EA5920();
  v23 = v35;
  sub_1B5DF5DF0();
  sub_1B5DF3658(v24, v25, v26, v27);
  (*(v12 + 16))(v17, v19, v10);
  v28 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  v30 = v38;
  *(v29 + 4) = v38;
  (*(v12 + 32))(&v29[v28], v17, v10);

  *(v30 + qword_1EB90EE70) = sub_1B5E63C28(0, 0, v23, &unk_1B5EB7448, v29);

  sub_1B5E5F910();
  swift_allocObject();
  swift_weakInit();
  sub_1B5EA5980();
  sub_1B5EA59B0();
  (*(v12 + 8))(v19, v10);
  v31 = sub_1B5E6FA20();
  return v32(v31);
}

uint64_t sub_1B5E6C97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_1B5EA45D0();
  v5[21] = swift_task_alloc();
  v6 = sub_1B5DF33E0(&qword_1EB90F028, &qword_1B5EB7600);
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90EE08, &unk_1B5EB7270);
  v5[25] = swift_task_alloc();
  v7 = sub_1B5EA4AA0();
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v8 = sub_1B5EA4950();
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();
  v9 = sub_1B5EA46F0();
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E6CBC4, 0, 0);
}

uint64_t sub_1B5E6CBC4()
{
  sub_1B5E01DFC();
  sub_1B5EA46E0();
  sub_1B5EA4970();
  sub_1B5E6F9A8();
  sub_1B5E6EE20(v1, v2);
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = sub_1B5E6F964(v3);

  return MEMORY[0x1EEE6D8C8](v5);
}

uint64_t sub_1B5E6CC80()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  sub_1B5E34F1C();
  *v3 = v2;
  v4 = *v1;
  sub_1B5E2CE38();
  *v5 = v4;
  *(v6 + 288) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E6CD7C()
{
  if (!*(v0 + 40))
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    sub_1B5EA46C0();
    v11 = sub_1B5E5F324();
    v12(v11);
    sub_1B5EA47C0();
    sub_1B5E5F704();
    sub_1B5DF3658(v13, v14, v15, v16);

    sub_1B5E2CF4C();
    sub_1B5E6FB04();

    __asm { BRAA            X1, X16 }
  }

  sub_1B5E5EF30((v0 + 16), v0 + 56);
  sub_1B5EA46D0();
  sub_1B5DFC6BC(v0 + 56, v0 + 96);
  sub_1B5DF33E0(&qword_1EB90EC90, &qword_1B5EB7080);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 208);
    sub_1B5E5F704();
    sub_1B5DF3658(v2, v3, v4, v1);
    v5 = sub_1B5DFA488();
    v6(v5);
    sub_1B5EA4A90();
    sub_1B5EA45C0();
    sub_1B5DF33E0(&qword_1EB90EE90, &qword_1B5EB7430);
    sub_1B5EA5990();
    v7 = sub_1B5E5FA54();
    v8(v7);
    v9 = sub_1B5E5F318();
    v10(v9);
    sub_1B5DF3FB8((v0 + 56));
  }

  else
  {
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    sub_1B5DF3FB8((v0 + 56));
    sub_1B5DF5DF0();
    sub_1B5DF3658(v21, v22, v23, v20);
    sub_1B5DF4428(v19, &qword_1EB90EE08, &unk_1B5EB7270);
  }

  sub_1B5E6F9A8();
  sub_1B5E6EE20(v24, v25);
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v0 + 280) = v26;
  *v26 = v27;
  sub_1B5E6F964(v26);
  sub_1B5E6FB04();

  return MEMORY[0x1EEE6D8C8](v28);
}

uint64_t sub_1B5E6D030()
{
  sub_1B5E01DFC();
  *(v0 + 136) = *(v0 + 288);
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  swift_willThrowTypedImpl();
  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B5E6D0BC()
{
  (*(v0[30] + 8))(v0[31], v0[29]);
  v1 = sub_1B5E5F324();
  v2(v1);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E6D19C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B5DF33E0(&qword_1EB90F020, &qword_1B5EB75F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  (*(v4 + 16))(&v8 - v5, a1, v3);
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x1E69E8760])
  {
    return (*(v4 + 8))(v6, v3);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + qword_1EB90EE70))
    {

      sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
      sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
      sub_1B5EA5940();
    }
  }

  return result;
}

uint64_t TokenStreamHandler<>.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  sub_1B5E5F8EC();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B5E6D3A0()
{
  sub_1B5E2CED8();
  sub_1B5EA5950();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  sub_1B5DF33E0(&qword_1EB90EEA0, qword_1B5EB7458);
  *v1 = v0;
  v1[1] = sub_1B5E4B3A4;
  v2 = *(v0 + 16);

  return MEMORY[0x1EEE6DB98](v2);
}

uint64_t sub_1B5E6D494(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B5E2C184;

  return TokenStreamHandler<>.AsyncIterator.next()(a1);
}

uint64_t sub_1B5E6D52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1B5E6D5F8;

  return sub_1B5E6418C(a1, a2, a3);
}

uint64_t sub_1B5E6D5F8()
{
  sub_1B5E2CED8();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1B5E6D704@<X0>(uint64_t a1@<X8>)
{
  TokenStreamHandler<>.makeAsyncIterator()(a1);
}

void sub_1B5E6D73C()
{
  sub_1B5E6F8F0();
  if (v4)
  {
    sub_1B5E6F900();
    if (v6 != v7)
    {
      sub_1B5E6FA98();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1B5E6F8E0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1B5E6FB68(v2, v5, &qword_1EB90F078, &qword_1B5EB7680);
  sub_1B5E6FA14();
  sub_1B5EA5350();
  sub_1B5DFD8F0();
  sub_1B5E34D90();
  if (v1)
  {
    sub_1B5E6F9F8(MEMORY[0x1E69A0E80], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1B5E6F924();
  }
}

void sub_1B5E6D814()
{
  sub_1B5E6F8F0();
  if (v4)
  {
    sub_1B5E6F900();
    if (v6 != v7)
    {
      sub_1B5E6FA98();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1B5E6F8E0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1B5E6FB68(v2, v5, &qword_1EB90DB90, &qword_1B5EB7070);
  sub_1B5E6FA14();
  sub_1B5EA5450();
  sub_1B5DFD8F0();
  sub_1B5E34D90();
  if (v1)
  {
    sub_1B5E6F9F8(MEMORY[0x1E69C61C0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1B5E6F924();
  }
}

void sub_1B5E6D8EC()
{
  sub_1B5E6F8F0();
  if (v4)
  {
    sub_1B5E6F900();
    if (v6 != v7)
    {
      sub_1B5E6FA98();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1B5E6F8E0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1B5E6FB68(v2, v5, &qword_1EB90E638, &qword_1B5EB60B0);
  v8 = sub_1B5E6FA14();
  type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(v8);
  sub_1B5DFD8F0();
  sub_1B5E34D90();
  if (v1)
  {
    sub_1B5E6F9F8(type metadata accessor for GenerativeExperiencesSessionClientData.Conversation, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1B5E6F924();
  }
}

void sub_1B5E6D9C4()
{
  sub_1B5E6F8F0();
  if (v4)
  {
    sub_1B5E6F900();
    if (v6 != v7)
    {
      sub_1B5E6FA98();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1B5E6F8E0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1B5E6FB68(v2, v5, &qword_1EB90F018, &qword_1B5EB75E0);
  sub_1B5E6FA14();
  sub_1B5EA5540();
  sub_1B5DFD8F0();
  sub_1B5E34D90();
  if (v1)
  {
    sub_1B5E6F9F8(MEMORY[0x1E69C6360], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1B5E6F924();
  }
}

void sub_1B5E6DA9C()
{
  sub_1B5E6F8F0();
  if (v4)
  {
    sub_1B5E6F900();
    if (v6 != v7)
    {
      sub_1B5E6FA98();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1B5E6F8E0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1B5E6FB68(v2, v5, &qword_1EB90F008, &qword_1B5EB75D0);
  sub_1B5E6FA14();
  sub_1B5EA47B0();
  sub_1B5DFD8F0();
  sub_1B5E34D90();
  if (v1)
  {
    sub_1B5E6F9F8(MEMORY[0x1E69DA560], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1B5E6F924();
  }
}

void sub_1B5E6DB74()
{
  sub_1B5E6F8F0();
  if (v4)
  {
    sub_1B5E6F900();
    if (v6 != v7)
    {
      sub_1B5E6FA98();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1B5E6F8E0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1B5E6FB68(v2, v5, &qword_1EB90F010, &qword_1B5EB75D8);
  sub_1B5E6FA14();
  sub_1B5EA4770();
  sub_1B5DFD8F0();
  sub_1B5E34D90();
  if (v1)
  {
    sub_1B5E6F9F8(MEMORY[0x1E69DA558], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1B5E6F924();
  }
}

void sub_1B5E6DC94(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_1B5E6FAD4();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1B5E6FAB4();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_1B5E6E1EC(v15, v12, a5, a6, a7, a8);
  sub_1B5DF33E0(a7, a8);
  sub_1B5DFD8F0();
  sub_1B5E34D90();
  if (a1)
  {
    sub_1B5E6E5B4(a4 + v17, v15, v16 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1B5E6DD94(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_1B5E6FAD4();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1B5E6FAB4();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_1B5DF33E0(&qword_1EB90EFF0, &qword_1B5EB75A8);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 48);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[6 * v9 + 4] <= v11 + 4)
    {
      v14 = sub_1B5E5FA54();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B5DF33E0(&qword_1EB90EC50, &qword_1B5EB75B0);
    sub_1B5E5FA54();
    swift_arrayInitWithCopy();
  }
}

void sub_1B5E6DEB4(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_1B5E6FAD4();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1B5E6FAB4();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_1B5DF33E0(&qword_1EB90EFF8, &qword_1B5EB75B8);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 32);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[4 * v9 + 4] <= v11 + 4)
    {
      v14 = sub_1B5E5FA54();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B5DF33E0(&qword_1EB90F000, &unk_1B5EB75C0);
    sub_1B5E5FA54();
    swift_arrayInitWithCopy();
  }
}

char *sub_1B5E6DFCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B5DF33E0(&qword_1EB90ED10, &unk_1B5EB70F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B5E6E0FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B5DF33E0(a3, a4);
  v8 = sub_1B5E6FA14();
  v9 = a5(v8);
  sub_1B5E01C50(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B5E6E1EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B5DF33E0(a3, a4);
  v10 = sub_1B5DF33E0(a5, a6);
  sub_1B5E01C50(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = j__malloc_size(v15);
  if (v12)
  {
    if ((result - v14) != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B5E6E2E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B5DF33E0(&qword_1EB90ED10, &unk_1B5EB70F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

char *sub_1B5E6E3CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1B5E6F824(a3, result);
  }

  return result;
}

char *sub_1B5E6E40C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1B5E6F824(a3, result);
  }

  return result;
}

void sub_1B5E6E474(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  sub_1B5E6FB9C();
  if (v9 < v8 || (a4(0), sub_1B5DF5EB8(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    sub_1B5E6F910();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_1B5E6F910();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_1B5E6E530(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1B5E6F824(a3, result);
  }

  return result;
}

char *sub_1B5E6E558(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1B5E6F824(a3, result);
  }

  return result;
}

void sub_1B5E6E5B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1B5E6FB9C();
  if (v7 < v6 || (v8 = sub_1B5E34F04(), sub_1B5DF33E0(v8, v9), sub_1B5DF5EB8(), v4 + *(v10 + 72) * v3 <= a3))
  {
    v11 = sub_1B5E34F04();
    sub_1B5DF33E0(v11, v12);
    sub_1B5E6F910();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    sub_1B5E6F910();

    swift_arrayInitWithTakeBackToFront();
  }
}

unint64_t *sub_1B5E6E67C(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1B5E41824(0, v6, v8);
    v9 = sub_1B5E6F190(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1B5E6F100(v11, v6, a2, a1);

    MEMORY[0x1B8C8B330](v11, -1, -1);
  }

  return v9;
}

uint64_t sub_1B5E6E864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90ED08, &unk_1B5EB7400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E6E910()
{
  sub_1B5E34EC0();
  v2 = v1;
  v3 = sub_1B5DF33E0(&qword_1EB90EE90, &qword_1B5EB7430);
  sub_1B5E01CF8(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = swift_task_alloc();
  v10 = sub_1B5E2CEE4(v9);
  *v10 = v11;
  v10[1] = sub_1B5E2CDCC;

  return sub_1B5E6C97C(v2, v6, v7, v8, v0 + v5);
}

void sub_1B5E6EA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB90EEB0[0])
  {
    v4 = type metadata accessor for TokenStreamHandler<>.AsyncIterator(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, qword_1EB90EEB0);
    }
  }
}

uint64_t sub_1B5E6EAB8(uint64_t a1)
{
  result = sub_1B5EA4990();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B5E6EBA8(uint64_t a1)
{
  result = type metadata accessor for Field.FieldType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B5E6EC14(uint64_t a1)
{
  sub_1B5E6ED98(319, qword_1EB90EF58, type metadata accessor for Field, MEMORY[0x1E69E87C8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1B5E6ECD4(uint64_t a1)
{
  sub_1B5E6ED98(319, &qword_1EB90EFE0, MEMORY[0x1E69DA6C0], MEMORY[0x1E69E87B8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B5E6ED98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_1B5DFD694(&qword_1EB90E920, &qword_1B5EB6680);
    v9 = a4(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B5E6EE20(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1B5E5F3AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B5E6EE70()
{
  sub_1B5E34EC0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_1B5E2CEE4(v6);
  *v7 = v8;
  v9 = sub_1B5E6FAC4(v7);

  return sub_1B5E67598(v9, v1, v2, v3, v4, v5);
}

uint64_t sub_1B5E6EF24(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1B5DF5EB8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B5E6EF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JsonParserToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E6EFE0()
{
  sub_1B5E6FB9C();
  sub_1B5DF33E0(v1, v2);
  sub_1B5DF5EB8();
  v3 = sub_1B5DFA488();
  v4(v3);
  return v0;
}

uint64_t sub_1B5E6F038(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90F058, &unk_1B5EB7638);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E6F0A8()
{
  sub_1B5E6FB9C();
  v1(0);
  sub_1B5DF5EB8();
  v2 = sub_1B5DFA488();
  v3(v2);
  return v0;
}

unint64_t *sub_1B5E6F100(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1B5E6F190(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1B5E6F190(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_1B5EA5FD0();

      sub_1B5EA5710();
      v40 = sub_1B5EA6020();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_1B5EA5F00();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_1B5E6F534(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_1B5EA5FD0();

      sub_1B5EA5710();
      v18 = sub_1B5EA6020();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_1B5EA5F00();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1B5E6F534(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1B5DF33E0(&qword_1EB90E628, &qword_1B5EB7650);
  result = sub_1B5EA5B90();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1B5EA5FD0();

    sub_1B5EA5710();
    result = sub_1B5EA6020();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B5E6F750()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_1B5E2CEE4(v2);
  *v3 = v4;
  v5 = sub_1B5E6FAC4(v3);

  return sub_1B5E66494(v5, v1);
}

void sub_1B5E6F850()
{
  sub_1B5DF3FB8(v0);

  JUMPOUT(0x1B8C8B330);
}

void sub_1B5E6F8A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1B5E6F924()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1B5E6F944(float a1)
{
  *v1 = a1;

  return sub_1B5E5B1CC();
}

uint64_t sub_1B5E6F9C0()
{

  return swift_slowAlloc();
}

void sub_1B5E6F9DC()
{

  JUMPOUT(0x1B8C8B330);
}

void sub_1B5E6F9F8(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_1B5E6E474(v2 + a2, v4, v3 + a2, a1);
}

uint64_t sub_1B5E6FA58()
{

  return swift_slowAlloc();
}

void sub_1B5E6FA78()
{

  JUMPOUT(0x1B8C8A360);
}

void sub_1B5E6FB2C()
{
  v1 = *(v0 - 152);
  *(v0 - 160) = *(v0 - 160);
  *(v0 - 152) = v1;
}

BOOL sub_1B5E6FB38()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1B5E6FB50()
{
}

void *sub_1B5E6FB68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1B5E6E0FC(v5, a2, a3, a4, v4);
}

uint64_t sub_1B5E6FB80()
{

  return sub_1B5EA50F0();
}

uint64_t sub_1B5E6FC0C()
{
}

uint64_t sub_1B5E6FC2C()
{

  return swift_task_create();
}

uint64_t sub_1B5E6FC4C(uint64_t a1)
{

  return sub_1B5EA5C70();
}

uint64_t dispatch thunk of XPCServiceClientConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of XPCServiceClientConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B5E6FE1C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B5E6FE1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B5E6FF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B5E6FF80, 0, 0);
}

uint64_t sub_1B5E6FF80()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1B5E70024;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x1EEE2EE30](v4, v5, v2, v3);
}

uint64_t sub_1B5E70024()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B5E70118()
{

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B5E70174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  ObjectType = swift_getObjectType();
  result = sub_1B5E702CC(a1, v3, ObjectType, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E70208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B5E6FE1C;

  return sub_1B5E6FF58(a1, a2, a3, a4);
}

uint64_t sub_1B5E702CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_allocObject();
  sub_1B5DF33E0(&qword_1EB90EBF0, &qword_1B5EB6DB0);
  swift_allocObject();
  *(v4 + 16) = sub_1B5EA4DA0();
  return v4;
}

uint64_t related decl e for SummarizationClientError.alternateErrorCodeForAnalytics.getter()
{
  type metadata accessor for SummarizationClientError(0);
  sub_1B5E72428();
  sub_1B5E723E0(v0, v1, &unk_1B5EAEE1C);
  sub_1B5E72440();
  sub_1B5EA41E0();
  return 0;
}

BOOL related decl e for SummarizationClientError.isDataValidationMissingRequiredDataError.getter()
{
  sub_1B5E7247C();
  sub_1B5E72428();
  sub_1B5E723E0(v0, v1, &unk_1B5EAEE1C);
  sub_1B5E72440();
  sub_1B5EA41E0();
  if (v3 < 500)
  {
    return 0;
  }

  sub_1B5E72440();
  sub_1B5EA41E0();
  return v3 < 700;
}

BOOL related decl e for SummarizationClientError.isAccountError.getter()
{
  sub_1B5E7247C();
  sub_1B5E72428();
  sub_1B5E723E0(v0, v1, &unk_1B5EAEE1C);
  sub_1B5E72440();
  sub_1B5EA41E0();
  if (v3 < 2300)
  {
    return 0;
  }

  sub_1B5E72440();
  sub_1B5EA41E0();
  return v3 < 2400;
}

BOOL related decl e for SummarizationClientError.hasUnderlyingGenerativeError.getter(uint64_t a1)
{
  v8 = a1;
  type metadata accessor for SummarizationClientError(0);
  sub_1B5E72428();
  sub_1B5E723E0(v1, v2, &unk_1B5EAEE1C);
  v3 = sub_1B5EA4200();
  sub_1B5E4D8BC(0xD000000000000019, 0x80000001B5EAA370, v3, &v6);

  v4 = v7 != 0;
  sub_1B5E63210(&v6, &qword_1EB90E668, &qword_1B5EB60D0);
  return v4;
}

uint64_t sub_1B5E705F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B5EA4100();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1B5EA4110();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = a3;
  type metadata accessor for SummarizationClientError(0);
  sub_1B5E723E0(&qword_1EB90DA18, type metadata accessor for SummarizationClientError, &unk_1B5EAEE1C);
  v13 = sub_1B5EA4200();
  sub_1B5E4D8BC(a1, a2, v13, &v31);

  if (!v32)
  {
    sub_1B5E63210(&v31, &qword_1EB90E668, &qword_1B5EB60D0);
    v19 = sub_1B5EA5130();
    return sub_1B5DF3658(a4, 1, 1, v19);
  }

  sub_1B5DF7148(&v31, v33);
  sub_1B5E5E268(v33, &v31);
  if (swift_dynamicCast())
  {
    v14 = v30[0];
    v15 = v30[1];
    sub_1B5EA4150();
    swift_allocObject();
    sub_1B5EA4140();
    v16 = sub_1B5EA5130();
    sub_1B5E723E0(&qword_1EB90E660, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A78]);
    v17 = v34;
    sub_1B5EA4130();
    v18 = v17;
    if (!v17)
    {
      sub_1B5DF3FB8(v33);

      sub_1B5E24A58(v14, v15);
      return sub_1B5DF3658(a4, 0, 1, v16);
    }

    sub_1B5E24A58(v14, v15);
  }

  else
  {
    sub_1B5EA40D0();
    sub_1B5DF6A60(MEMORY[0x1E69E7CC0]);
    sub_1B5E723E0(&qword_1EB90DA80, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1B5EA4220();
    v18 = sub_1B5EA40C0();
    (*(v10 + 8))(v12, v9);
    swift_willThrow();
  }

  if (qword_1ED7D2988 != -1)
  {
    swift_once();
  }

  v21 = sub_1B5EA53B0();
  sub_1B5DFD794(v21, qword_1ED7D2990);

  v22 = v18;
  v23 = sub_1B5EA5380();
  v24 = sub_1B5EA5A40();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v31 = v27;
    *v25 = 136315394;
    *(v25 + 4) = sub_1B5E5B1CC();
    *(v25 + 12) = 2112;
    v28 = v18;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v29;
    *v26 = v29;
    _os_log_impl(&dword_1B5DED000, v23, v24, "Error extracting %s: %@", v25, 0x16u);
    sub_1B5E63210(v26, &unk_1EB90F890, &qword_1B5EB6DC0);
    MEMORY[0x1B8C8B330](v26, -1, -1);
    sub_1B5DF3FB8(v27);
    MEMORY[0x1B8C8B330](v27, -1, -1);
    MEMORY[0x1B8C8B330](v25, -1, -1);
  }

  swift_willThrow();
  return sub_1B5DF3FB8(v33);
}

uint64_t related decl e for SummarizationClientError.userFacingLocalizedMessage.getter(void *a1)
{
  sub_1B5DF33E0(&qword_1EB90F080, &qword_1B5EB7728);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B5E724EC();
  sub_1B5DF5DA8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7E8();
  v10 = v9 - v8;
  sub_1B5E72450("underlyingGenerativeError");
  if (a1)
  {

    sub_1B5DF5DF0();
    sub_1B5DF3658(v11, v12, v13, v4);
  }

  else if (sub_1B5DF46E0(v1, 1, v4) != 1)
  {
    (*(v6 + 32))(v10, v1, v4);
    v21 = sub_1B5EA5110();
    (*(v6 + 8))(v10, v4);
    return v21;
  }

  sub_1B5E63210(v1, &qword_1EB90F080, &qword_1B5EB7728);
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v14 = sub_1B5EA53B0();
  sub_1B5DFD794(v14, qword_1ED7D2990);
  v15 = sub_1B5EA5380();
  sub_1B5EA5A40();
  v16 = sub_1B5E72498();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    MEMORY[0x1B8C8B330](v18, -1, -1);
  }

  return 0;
}

BOOL related decl e for SummarizationClientError.isGuardrailOutOfDateError.getter(void *a1)
{
  v44 = sub_1B5EA5070();
  sub_1B5DF5DA8();
  v46 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFD7E8();
  v7 = v6 - v5;
  sub_1B5EA50E0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7E8();
  v11 = v10 - v9;
  v12 = sub_1B5EA5090();
  sub_1B5DF5DA8();
  v45 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5DFD7E8();
  v17 = v16 - v15;
  sub_1B5DF33E0(&qword_1EB90F080, &qword_1B5EB7728);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1B5E724EC();
  sub_1B5DF5DA8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1B5DFD7E8();
  v25 = v24 - v23;
  sub_1B5E72450("underlyingGenerativeError");
  if (a1)
  {

    sub_1B5DF5DF0();
    sub_1B5DF3658(v26, v27, v28, v19);
LABEL_4:
    sub_1B5E63210(v1, &qword_1EB90F080, &qword_1B5EB7728);
    if (qword_1ED7D2988 != -1)
    {
      sub_1B5E25E6C();
      swift_once();
    }

    v29 = sub_1B5EA53B0();
    sub_1B5DFD794(v29, qword_1ED7D2990);
    v30 = sub_1B5EA5380();
    sub_1B5EA5A40();
    v31 = sub_1B5E72498();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      MEMORY[0x1B8C8B330](v33, -1, -1);
    }

    return 0;
  }

  if (sub_1B5DF46E0(v1, 1, v19) == 1)
  {
    goto LABEL_4;
  }

  (*(v21 + 32))(v25, v1, v19);
  sub_1B5EA5120();
  v38 = sub_1B5E34F04();
  if (v39(v38) == *MEMORY[0x1E69A0A60])
  {
    v40 = sub_1B5E34F04();
    v41(v40);
    (*(v45 + 32))(v17, v11, v12);
    sub_1B5EA5080();
    (*(v45 + 8))(v17, v12);
    (*(v21 + 8))(v25, v19);
    v36 = (*(v46 + 88))(v7, v44) == *MEMORY[0x1E69A0A30];
    (*(v46 + 8))(v7, v44);
    return v36;
  }

  (*(v21 + 8))(v25, v19);
  v42 = sub_1B5E34F04();
  v43(v42);
  return 0;
}

BOOL related decl e for SummarizationClientError.isSafetyError.getter()
{
  sub_1B5E7247C();
  sub_1B5E72428();
  sub_1B5E723E0(v0, v1, &unk_1B5EAEE1C);
  sub_1B5E72440();
  sub_1B5EA41E0();
  if (v3 < 2012)
  {
    return 0;
  }

  sub_1B5E72440();
  sub_1B5EA41E0();
  return v3 < 2200;
}

uint64_t sub_1B5E71250(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B5EA5010();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B5DF33E0(&qword_1EB90F098, &qword_1B5EB7748);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-v8];
  v10 = sub_1B5EA5030();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  related decl 'e' for SummarizationClientError.denyListRejectedErrorInfo.getter(a2, v9);
  if (sub_1B5DF46E0(v9, 1, v10) == 1)
  {
    sub_1B5E63210(v9, &qword_1EB90F098, &qword_1B5EB7748);
    v14 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1B5EA5020();
    v14 = sub_1B5EA4F80();
    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
  }

  return v14 & 1;
}

uint64_t sub_1B5E7151C(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v33 = sub_1B5EA4FC0();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B5EA4FE0();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B5EA4F90();
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B5DF33E0(&qword_1EB90F090, &qword_1B5EB7740);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_1B5EA4FF0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  related decl 'e' for SummarizationClientError.safetyRejectedErrorInfo.getter(a2, v14);
  v30 = v9;
  v31 = v18;
  v32 = v16;
  if (sub_1B5DF46E0(v14, 1, v15) == 1)
  {
    sub_1B5E63210(v14, &qword_1EB90F090, &qword_1B5EB7740);
    return 0;
  }

  v21 = v32;
  v22 = v31;
  (*(v32 + 32))();
  sub_1B5EA4FA0();
  v23 = sub_1B5EA4F80();
  (*(v36 + 8))(v11, v30);
  if ((v23 & 1) == 0)
  {
    (*(v21 + 8))(v22, v15);
    return 0;
  }

  v37 = v15;
  sub_1B5EA4F70();
  v24 = sub_1B5EA4FD0();
  result = (*(v34 + 8))(v8, v35);
  v25 = 0;
  v26 = *(v24 + 16);
  v27 = v33;
  while (1)
  {
    v19 = v26 != v25;
    if (v26 == v25)
    {
LABEL_10:
      (*(v32 + 8))(v31, v37);

      return v19;
    }

    if (v25 >= *(v24 + 16))
    {
      break;
    }

    (*(v3 + 16))(v5, v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25++, v27);
    v28 = sub_1B5EA4FB0();
    result = (*(v3 + 8))(v5, v27);
    if (v28)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5E71994(uint64_t a1, uint64_t (*a2)(void), unsigned int *a3, uint64_t (*a4)(char *, uint64_t))
{
  v7 = a2(0);
  sub_1B5DF5DA8();
  v9 = v8;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  (*(v9 + 104))(&v16 - v11, *a3, v7);
  LOBYTE(a4) = a4(v12, a1);
  v13 = sub_1B5E34F04();
  v14(v13);
  return a4 & 1;
}

BOOL related decl e for SummarizationClientError.isSensitiveContentError.getter()
{
  sub_1B5E7247C();
  sub_1B5E72428();
  sub_1B5E723E0(v0, v1, &unk_1B5EAEE1C);
  sub_1B5E72440();
  sub_1B5EA41E0();
  if (v3 < 2200)
  {
    return 0;
  }

  sub_1B5E72440();
  sub_1B5EA41E0();
  return v3 < 2300;
}

uint64_t sub_1B5E71B84@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v67 = a3;
  v62 = a2;
  v68 = a4;
  v60 = sub_1B5EA5040();
  sub_1B5DF5DA8();
  v63 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7E8();
  v59 = v8 - v7;
  sub_1B5EA50E0();
  sub_1B5DF5DA8();
  v64 = v10;
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  v13 = v12 - v11;
  v14 = sub_1B5EA5060();
  sub_1B5DF5DA8();
  v61 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1B5DFD7E8();
  v19 = v18 - v17;
  sub_1B5DF33E0(&qword_1EB90F080, &qword_1B5EB7728);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  v23 = sub_1B5EA5130();
  sub_1B5DF5DA8();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1B5DFD7E8();
  v29 = v28 - v27;
  v30 = v66;
  sub_1B5E705F8(0xD000000000000019, 0x80000001B5EAA370, a1, v22);
  if (v30)
  {

    sub_1B5DF5DF0();
    sub_1B5DF3658(v31, v32, v33, v23);
    v66 = 0;
    goto LABEL_4;
  }

  v57 = v19;
  v58 = v14;
  v66 = 0;
  v34 = v65;
  if (sub_1B5DF46E0(v22, 1, v23) == 1)
  {
LABEL_4:
    sub_1B5E63210(v22, &qword_1EB90F080, &qword_1B5EB7728);
    if (!related decl 'e' for SummarizationClientError.isSafetyError.getter())
    {
      if (qword_1ED7D2988 != -1)
      {
        sub_1B5E25E6C();
        swift_once();
      }

      v35 = sub_1B5EA53B0();
      v36 = sub_1B5DFD794(v35, qword_1ED7D2990);
      v37 = sub_1B5EA5380();
      sub_1B5EA5A40();
      v38 = sub_1B5E72498();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        MEMORY[0x1B8C8B330](v40, -1, -1);
      }
    }

    goto LABEL_10;
  }

  (*(v25 + 32))(v29, v22, v23);
  sub_1B5EA5120();
  v46 = v64;
  if ((*(v64 + 88))(v13, v34) == *MEMORY[0x1E69A0A58])
  {
    (*(v46 + 96))(v13, v34);
    v47 = v61;
    v48 = v57;
    v49 = v58;
    (*(v61 + 32))(v57, v13, v58);
    v50 = v59;
    sub_1B5EA5050();
    (*(v47 + 8))(v48, v49);
    (*(v25 + 8))(v29, v23);
    v51 = v63;
    v52 = v60;
    v53 = (*(v63 + 88))(v50, v60);
    if (v53 == *v62)
    {
      (*(v51 + 96))(v50, v52);
      v54 = v67(0);
      v55 = v68;
      (*(*(v54 - 8) + 32))(v68, v50, v54);
      v41 = v55;
      v42 = 0;
      v43 = 1;
      v44 = v54;
      return sub_1B5DF3658(v41, v42, v43, v44);
    }

    (*(v51 + 8))(v50, v52);
  }

  else
  {
    (*(v25 + 8))(v29, v23);
    (*(v46 + 8))(v13, v34);
  }

LABEL_10:
  v67(0);
  sub_1B5DF5DF0();
  return sub_1B5DF3658(v41, v42, v43, v44);
}

uint64_t Error.toSummarizationClientError()(uint64_t a1)
{
  sub_1B5DF5DA8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFD7E8();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5);
  type metadata accessor for SummarizationClientError(0);
  sub_1B5E724D8();
  if (swift_dynamicCast())
  {
    v8 = v27;
    goto LABEL_16;
  }

  sub_1B5DF33E0(&qword_1EB90F088, &qword_1B5EB7730);
  sub_1B5E724D8();
  if (!swift_dynamicCast())
  {
LABEL_10:
    v8 = 0;
    goto LABEL_16;
  }

  sub_1B5DF17A8(&v27, v25);
  sub_1B5DF3BFC(v25, v26);
  swift_getDynamicType();
  v9 = sub_1B5EA4170();
  v11 = v10;
  if (v9 == sub_1B5EA56A0() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1B5EA5F00();

    if ((v14 & 1) == 0)
    {
      sub_1B5DF3FB8(v25);
      goto LABEL_10;
    }
  }

  v15 = v26;
  v16 = sub_1B5DF3BFC(v25, v26);
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  sub_1B5DFD7E8();
  v20 = v19 - v18;
  (*(v17 + 16))(v19 - v18);
  v21 = sub_1B5EA5EE0();
  if (v21)
  {
    v22 = v21;
    (*(v17 + 8))(v20, v15);
  }

  else
  {
    v22 = swift_allocError();
    (*(v17 + 32))(v23, v20, v15);
  }

  v8 = sub_1B5EA4230();

  sub_1B5DF3FB8(v25);
LABEL_16:
  (*(v3 + 8))(v7, a1);
  return v8;
}

uint64_t sub_1B5E723E0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B5E72450@<X0>(uint64_t a1@<X8>)
{

  return sub_1B5E705F8(0xD000000000000019, (a1 - 32) | 0x8000000000000000, v2, v1);
}

void sub_1B5E7247C()
{

  type metadata accessor for SummarizationClientError(0);
}

uint64_t sub_1B5E724EC()
{

  return sub_1B5EA5130();
}

uint64_t SummarizationXPCRequest.Error.hashValue.getter()
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](0);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E72588(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001B5EAA440 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D726177657270 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001B5EA7580 == a2;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x80000001B5EA7600 == a2;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x80000001B5EA75C0 == a2;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ALL && 0x80000001B5EA7650 == a2;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000019 && 0x80000001B5EA75E0 == a2;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001FLL && 0x80000001B5EA7670 == a2;
                if (v12 || (sub_1B5EA5F00() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000002FLL && 0x80000001B5EAA460 == a2;
                  if (v13 || (sub_1B5EA5F00() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000002BLL && 0x80000001B5EAA490 == a2;
                    if (v14 || (sub_1B5EA5F00() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001DLL && 0x80000001B5EAA4C0 == a2;
                      if (v15 || (sub_1B5EA5F00() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000002DLL && 0x80000001B5EAA4E0 == a2;
                        if (v16 || (sub_1B5EA5F00() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001BLL && 0x80000001B5EAA510 == a2;
                          if (v17 || (sub_1B5EA5F00() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000022 && 0x80000001B5EAA530 == a2;
                            if (v18 || (sub_1B5EA5F00() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000028 && 0x80000001B5EAA560 == a2;
                              if (v19 || (sub_1B5EA5F00() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000022 && 0x80000001B5EAA590 == a2;
                                if (v20 || (sub_1B5EA5F00() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000028 && 0x80000001B5EAA5C0 == a2;
                                  if (v21 || (sub_1B5EA5F00() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000022 && 0x80000001B5EAA5F0 == a2;
                                    if (v22 || (sub_1B5EA5F00() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000014 && 0x80000001B5EA8D30 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1B5EA5F00();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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

unint64_t sub_1B5E72B14(char a1)
{
  result = 0x6D726177657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      v3 = 11;
      goto LABEL_16;
    case 8:
      result = 0xD00000000000002FLL;
      break;
    case 9:
      result = 0xD00000000000002BLL;
      break;
    case 10:
      v3 = 9;
LABEL_16:
      result = v3 | 0xD000000000000014;
      break;
    case 11:
      result = 0xD00000000000002DLL;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 13:
    case 15:
    case 17:
      result = 0xD000000000000022;
      break;
    case 14:
    case 16:
      result = 0xD000000000000028;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1B5E72D44(uint64_t a1)
{
  v2 = sub_1B5E75FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E72D80(uint64_t a1)
{
  v2 = sub_1B5E75FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E72DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E72588(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E72DEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5E72B0C();
  *a1 = result;
  return result;
}

uint64_t sub_1B5E72E14(uint64_t a1)
{
  v2 = sub_1B5E757A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E72E50(uint64_t a1)
{
  v2 = sub_1B5E757A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E72EA4(uint64_t a1)
{
  v2 = sub_1B5E75A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E72EE0(uint64_t a1)
{
  v2 = sub_1B5E75A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E72F1C(uint64_t a1)
{
  v2 = sub_1B5E759AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E72F58(uint64_t a1)
{
  v2 = sub_1B5E759AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E72F94(uint64_t a1)
{
  v2 = sub_1B5E758B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E72FD0(uint64_t a1)
{
  v2 = sub_1B5E758B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E7300C(uint64_t a1)
{
  v2 = sub_1B5E75B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E73048(uint64_t a1)
{
  v2 = sub_1B5E75B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E73084(uint64_t a1)
{
  v2 = sub_1B5E75958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E730C0(uint64_t a1)
{
  v2 = sub_1B5E75958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E730FC(uint64_t a1)
{
  v2 = sub_1B5E75904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E73138(uint64_t a1)
{
  v2 = sub_1B5E75904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E73174(uint64_t a1)
{
  v2 = sub_1B5E75D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E731B0(uint64_t a1)
{
  v2 = sub_1B5E75D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E731EC(uint64_t a1)
{
  v2 = sub_1B5E75CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E73228(uint64_t a1)
{
  v2 = sub_1B5E75CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E73264(uint64_t a1)
{
  v2 = sub_1B5E75BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E732A0(uint64_t a1)
{
  v2 = sub_1B5E75BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E732DC(uint64_t a1)
{
  v2 = sub_1B5E75F94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E73318(uint64_t a1)
{
  v2 = sub_1B5E75F94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E73354(uint64_t a1)
{
  v2 = sub_1B5E75F40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E73390(uint64_t a1)
{
  v2 = sub_1B5E75F40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E733CC(uint64_t a1)
{
  v2 = sub_1B5E75EEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E73408(uint64_t a1)
{
  v2 = sub_1B5E75EEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E73444(uint64_t a1)
{
  v2 = sub_1B5E75CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E73480(uint64_t a1)
{
  v2 = sub_1B5E75CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E734BC(uint64_t a1)
{
  v2 = sub_1B5E75E98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E734F8(uint64_t a1)
{
  v2 = sub_1B5E75E98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E73534(uint64_t a1)
{
  v2 = sub_1B5E75E44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E73570(uint64_t a1)
{
  v2 = sub_1B5E75E44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E735AC(uint64_t a1)
{
  v2 = sub_1B5E75DF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E735E8(uint64_t a1)
{
  v2 = sub_1B5E75DF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E73624(uint64_t a1)
{
  v2 = sub_1B5E75D9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E73660(uint64_t a1)
{
  v2 = sub_1B5E75D9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E7369C(uint64_t a1)
{
  v2 = sub_1B5E7585C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E736D8(uint64_t a1)
{
  v2 = sub_1B5E7585C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummarizationXPCRequest.Request.encode(to:)(void *a1)
{
  v3 = sub_1B5DF33E0(&qword_1EB90F0A0, &qword_1B5EB7750);
  sub_1B5E7C730(v3, &v355);
  v335[1] = v4;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFA50C();
  sub_1B5E26144(v6);
  v7 = sub_1B5DF33E0(&qword_1EB90F0A8, &qword_1B5EB7758);
  sub_1B5E7C730(v7, &v357 + 8);
  v337[0] = v8;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFA50C();
  sub_1B5E26144(v10);
  v11 = sub_1B5DF33E0(&qword_1EB90F0B0, &qword_1B5EB7760);
  sub_1B5E7C730(v11, &v356);
  v336[0] = v12;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5DFA50C();
  sub_1B5E26144(v14);
  v15 = sub_1B5DF33E0(&qword_1EB90F0B8, &qword_1B5EB7768);
  sub_1B5E7C730(v15, &v354);
  v334[1] = v16;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v17);
  sub_1B5DFA50C();
  sub_1B5E26144(v18);
  v19 = sub_1B5DF33E0(&qword_1EB90F0C0, &qword_1B5EB7770);
  sub_1B5E7C730(v19, &v352);
  v333[1] = v20;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5DFA50C();
  sub_1B5E26144(v22);
  v23 = sub_1B5DF33E0(&qword_1EB90F0C8, &qword_1B5EB7778);
  sub_1B5E7C730(v23, &v351);
  v332 = v24;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v25);
  sub_1B5DFA50C();
  sub_1B5E26144(v26);
  v27 = sub_1B5DF33E0(&qword_1EB90F0D0, &qword_1B5EB7780);
  sub_1B5E7C730(v27, &v349);
  v329 = v28;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v29);
  sub_1B5DFA50C();
  sub_1B5E26144(v30);
  v31 = sub_1B5DF33E0(&qword_1EB90F0D8, &qword_1B5EB7788);
  sub_1B5E7C730(v31, &v347);
  v326 = v32;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v33);
  sub_1B5DFA50C();
  sub_1B5E26144(v34);
  v35 = sub_1B5DF33E0(&qword_1EB90F0E0, &qword_1B5EB7790);
  sub_1B5E7C730(v35, &v343);
  v323 = v36;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v37);
  sub_1B5DFA50C();
  sub_1B5E26144(v38);
  v39 = sub_1B5DF33E0(&qword_1EB90F0E8, &qword_1B5EB7798);
  sub_1B5E7C730(v39, &v340);
  v320 = v40;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v41);
  sub_1B5DFA50C();
  sub_1B5E26144(v42);
  v43 = sub_1B5DF33E0(&qword_1EB90F0F0, &qword_1B5EB77A0);
  sub_1B5E7C730(v43, &v338);
  v318 = v44;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v45);
  sub_1B5DFA50C();
  sub_1B5E26144(v46);
  v47 = sub_1B5EA4350();
  v48 = sub_1B5E7C730(v47, &v360);
  v341 = v49;
  MEMORY[0x1EEE9AC00](v48);
  sub_1B5DFD7E8();
  sub_1B5E26144(v51 - v50);
  v52 = sub_1B5DF33E0(&qword_1EB90F0F8, &qword_1B5EB77A8);
  sub_1B5E7C730(v52, v337);
  v315 = v53;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v54);
  sub_1B5DFA50C();
  sub_1B5E26144(v55);
  v56 = sub_1B5DF33E0(&qword_1EB90F100, &qword_1B5EB77B0);
  sub_1B5E7C730(v56, v336);
  v313 = v57;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v58);
  sub_1B5DFA50C();
  sub_1B5E26144(v59);
  v307 = type metadata accessor for UserNotification(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v60);
  sub_1B5DFD7E8();
  sub_1B5E26144(v62 - v61);
  v63 = sub_1B5DF33E0(&qword_1EB90F108, &qword_1B5EB77B8);
  sub_1B5E7C730(v63, v335);
  v310 = v64;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v65);
  sub_1B5DFA50C();
  sub_1B5E26144(v66);
  v67 = sub_1B5DF33E0(&qword_1EB90F110, &qword_1B5EB77C0);
  sub_1B5E7C730(v67, v334);
  v308 = v68;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v69);
  sub_1B5DFA50C();
  sub_1B5E26144(v70);
  v344 = type metadata accessor for TextMessage(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v71);
  sub_1B5E7CB8C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v72);
  sub_1B5E26144(v301 - v73);
  v74 = sub_1B5DF33E0(&qword_1EB90F118, &qword_1B5EB77C8);
  sub_1B5E7C730(v74, v333);
  v305 = v75;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v76);
  sub_1B5DFA50C();
  sub_1B5E26144(v77);
  v78 = sub_1B5DF33E0(&qword_1EB90F120, &qword_1B5EB77D0);
  sub_1B5E7C730(v78, v331);
  v303 = v79;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v80);
  sub_1B5DFA50C();
  sub_1B5E26144(v81);
  v343 = type metadata accessor for MailMessage(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v82);
  sub_1B5E7CB8C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v83);
  sub_1B5E26144(v301 - v84);
  v85 = sub_1B5DF33E0(&qword_1EB90F128, &qword_1B5EB77D8);
  sub_1B5DF5DA8();
  v301[0] = v86;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v87);
  v89 = v301 - v88;
  v90 = sub_1B5DF33E0(&qword_1EB90F130, &qword_1B5EB77E0);
  sub_1B5E7C730(v90, v327);
  v301[1] = v91;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v92);
  v94 = v301 - v93;
  v95 = type metadata accessor for SummarizationXPCRequest.Request(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v96);
  sub_1B5DFD7E8();
  v99 = v98 - v97;
  v349 = sub_1B5DF33E0(&qword_1EB90F138, &qword_1B5EB77E8);
  sub_1B5DF5DA8();
  v346 = v100;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v101);
  v103 = v301 - v102;
  v104 = a1[3];
  sub_1B5DF3BFC(a1, v104);
  sub_1B5E757A4();
  v348 = v103;
  sub_1B5EA6040();
  v105 = sub_1B5E7CC3C();
  sub_1B5E757F8(v105, v99);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B5DF33E0(&qword_1EB90F208, &qword_1B5EB7840);
      sub_1B5E7CC78();
      v206 = v205[1];
      v354 = *v205;
      v355 = v206;
      v207 = v205[3];
      v356 = v205[2];
      v357 = v207;
      v208 = sub_1B5E7CA78();
      v209 = v302;
      sub_1B5E75A00(v208, v302, v210);
      LOBYTE(v350) = 2;
      sub_1B5E75F40();
      sub_1B5E7CA94();
      sub_1B5E7CB4C(v211, v212);
      LOBYTE(v350) = 0;
      sub_1B5E7C7A0();
      sub_1B5E75AB0(v213, v214, &protocol conformance descriptor for MailMessage);
      v215 = v304;
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      if (v1)
      {
        sub_1B5E063F8(&v354);
        v216 = sub_1B5E7C8F8();
        v217(v216, v215);
        sub_1B5E7C7B8();
        sub_1B5E75AF8(v209, v218);
        goto LABEL_27;
      }

      sub_1B5E7CC90();
      sub_1B5E06B50();
      sub_1B5EA5EA0();
      v282 = sub_1B5E7C8F8();
      v283(v282, v215);
      sub_1B5E7C7B8();
      sub_1B5E75AF8(v209, v284);
      sub_1B5E7C810();
      v285 = sub_1B5E6FB20();
      v286(v285);
      return sub_1B5E063F8(&v354);
    case 2u:
      v160 = *v99;
      v161 = *(v99 + 24);
      v354 = *(v99 + 8);
      v355 = v161;
      v162 = *(v99 + 56);
      v356 = *(v99 + 40);
      v357 = v162;
      LOBYTE(v350) = 3;
      sub_1B5E75EEC();
      sub_1B5E7CA34(&type metadata for SummarizationXPCRequest.Request.SummarizeMailMessageThreadCodingKeys, &v350);
      v350 = v160;
      v353 = 0;
      v163 = sub_1B5E26234();
      sub_1B5DF33E0(v163, v164);
      sub_1B5E7C848();
      sub_1B5E248A8(v165, v166, &qword_1B5EB7838, v167);
      sub_1B5E7CCDC();
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      if (v1)
      {
        sub_1B5E064B4(&v354);
        v168 = sub_1B5E7C978();
        v169(v168, &qword_1B5EB7838);
        sub_1B5E7C810();
        v109 = sub_1B5E26048();
        goto LABEL_56;
      }

      sub_1B5E7CC90();
      sub_1B5E06CB0();
      sub_1B5EA5EA0();
      v270 = sub_1B5E7C978();
      v271(v270, &qword_1B5EB7838);
      sub_1B5E7C810();
      v272 = sub_1B5E26048();
      v273(v272);
      return sub_1B5E064B4(&v354);
    case 3u:
      sub_1B5DF33E0(&qword_1EB90F1E8, &qword_1B5EB7830);
      sub_1B5E7CC78();
      sub_1B5E7CCFC();
      v178 = *(v177 + 16);
      v179 = *(v177 + 24);
      v180 = sub_1B5E7CABC();
      v181 = v338;
      sub_1B5E75A00(v180, v338, v182);
      LOBYTE(v354) = 4;
      sub_1B5E75E98();
      v183 = v306;
      sub_1B5E7CDA8(&type metadata for SummarizationXPCRequest.Request.SummarizeTextMessageCodingKeys, &v354);
      LOBYTE(v354) = 0;
      sub_1B5E7C7D0();
      sub_1B5E75AB0(v184, v185, &protocol conformance descriptor for TextMessage);
      v186 = v309;
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      if (v1)
      {

        sub_1B5E7CC3C();

        sub_1B5E25FA0();
        v187(v183, v186);
        sub_1B5E7C7E8();
        v189 = v181;
        goto LABEL_30;
      }

      *&v354 = v343;
      *(&v354 + 1) = v345;
      *&v355 = v178;
      *(&v355 + 1) = v179;
      sub_1B5E7CA54();
      sub_1B5E11E70();
      sub_1B5E7CA00();
      sub_1B5EA5EA0();
      sub_1B5E25FA0();
      v275(v183, v186);
      sub_1B5E7C7E8();
      sub_1B5E75AF8(v338, v276);
      sub_1B5E7C810();
      v277 = sub_1B5E5F508();
      v278(v277);

    case 4u:
      sub_1B5E7CBB0();
      LOBYTE(v354) = 5;
      sub_1B5E75E44();
      sub_1B5E7CC60();
      sub_1B5E7CB4C(v136, v137);
      *&v354 = v85;
      LOBYTE(v350) = 0;
      v138 = sub_1B5E7CD24();
      sub_1B5DF33E0(v138, v139);
      sub_1B5E7C848();
      sub_1B5E248A8(v140, v141, &qword_1B5EB7828, v142);
      sub_1B5E7CA00();
      v143 = v311;
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      if (v1)
      {
        goto LABEL_34;
      }

      sub_1B5E7CB78(&v361);
      *&v355 = v344;
      *(&v355 + 1) = v94;
      sub_1B5E7CA54();
      sub_1B5E11FD0();
      v266 = sub_1B5E7CA00();
      sub_1B5E7CD30(v266);
      goto LABEL_62;
    case 5u:
      sub_1B5DF33E0(&qword_1EB90F1D0, &qword_1B5EB7820);
      sub_1B5E7CC78();
      sub_1B5E7CCFC();
      v225 = *(v224 + 16);
      v226 = *(v224 + 24);
      sub_1B5E7CD64();
      sub_1B5E75A00(v227, v228, v229);
      LOBYTE(v354) = 6;
      sub_1B5E75DF0();
      v230 = v312;
      sub_1B5E7CDA8(&type metadata for SummarizationXPCRequest.Request.SummarizeUserNotificationCodingKeys, &v354);
      LOBYTE(v354) = 0;
      sub_1B5E7CAD8();
      sub_1B5E75AB0(v231, v232, &protocol conformance descriptor for UserNotification);
      sub_1B5E7CCCC();
      v233 = v314;
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      if (!v1)
      {
        sub_1B5E7CB78(&v362);
        *&v355 = v225;
        *(&v355 + 1) = v226;
        sub_1B5E7CA54();
        sub_1B5E181BC();
        sub_1B5E7CA00();
        sub_1B5EA5EA0();
        sub_1B5E25FA0();
        v287(v230, v233);
        sub_1B5E7CAF0();
        sub_1B5E75AF8(v339, v288);
        sub_1B5E7C810();
        v289 = sub_1B5E5F508();
        v290(v289);

        goto LABEL_63;
      }

      sub_1B5E7CC3C();

      sub_1B5E25FA0();
      v234(v230, v233);
      sub_1B5E7CAF0();
      v189 = v103;
LABEL_30:
      sub_1B5E75AF8(v189, v188);
      sub_1B5E7C810();
      v203 = sub_1B5E5F508();
      return v202(v203, v204);
    case 6u:
      sub_1B5E7CBB0();
      LOBYTE(v354) = 7;
      sub_1B5E75D9C();
      sub_1B5E7CC60();
      sub_1B5E7CB4C(v241, v242);
      *&v354 = v85;
      LOBYTE(v350) = 0;
      v243 = sub_1B5E7CD24();
      sub_1B5DF33E0(v243, v244);
      sub_1B5E7C848();
      sub_1B5E248A8(v245, v246, &qword_1B5EB7818, v247);
      sub_1B5E7CA00();
      v143 = v316;
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      if (v1)
      {
LABEL_34:

        sub_1B5E7CC3C();

        v248 = sub_1B5E7C864();
        v249(v248, v143);
        sub_1B5E7C810();
        v250 = sub_1B5E6FB20();
        v251(v250);
      }

      sub_1B5E7CB78(&v361);
      *&v355 = v344;
      *(&v355 + 1) = v94;
      sub_1B5E7CA54();
      sub_1B5E1831C();
      v294 = sub_1B5E7CA00();
      sub_1B5E7CD30(v294);
LABEL_62:
      v295 = sub_1B5E7C864();
      v296(v295, v143);
      sub_1B5E7C810();
      v297(v348, v349);

      goto LABEL_63;
    case 7u:
      sub_1B5DF33E0(&qword_1EB90F1B8, &qword_1B5EB7810);
      sub_1B5E7CC78();
      LODWORD(v344) = *v190;
      LODWORD(v343) = v190[1];
      sub_1B5E7CCFC();
      LODWORD(v338) = *(v191 + 24);
      v192 = v341;
      v193 = v340;
      v194 = v342;
      (*(v341 + 32))(v340, v99, v342);
      LOBYTE(v354) = 8;
      sub_1B5E75D48();
      sub_1B5E7CA94();
      v195 = v348;
      v196 = v349;
      sub_1B5EA5E00();
      LOBYTE(v354) = 0;
      sub_1B5E7CB08();
      sub_1B5E75AB0(v197, v198, MEMORY[0x1E6969728]);
      v199 = v319;
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      if (v1)
      {
        sub_1B5E7CC3C();

        v200 = sub_1B5E7C8F8();
        v201(v200, v199);
        (*(v192 + 8))(v193, v194);
        sub_1B5E7C810();
        v203 = v195;
        v204 = v196;
        return v202(v203, v204);
      }

      LOBYTE(v354) = v344;
      BYTE1(v354) = v343;
      *(&v354 + 1) = v339;
      *&v355 = v345;
      DWORD2(v355) = v338;
      sub_1B5E7CA54();
      sub_1B5E75C4C();
      sub_1B5E7CA00();
      sub_1B5EA5EA0();
      v279 = sub_1B5E7C8F8();
      v280(v279, v199);
      sub_1B5E25FA0();
      v281(v340, v342);
      sub_1B5E7C810();
      v109 = v195;
      v110 = v196;
      goto LABEL_56;
    case 8u:
      sub_1B5E7C874();
      LOBYTE(v354) = 9;
      sub_1B5E75CF4();
      v157 = v317;
      v158 = v348;
      v103 = v349;
      sub_1B5E7CA60();
      sub_1B5EA5E00();
      sub_1B5E7CD70();
      sub_1B5E34F04();
      v159 = v321;
      sub_1B5E7CA0C();
      sub_1B5EA5E50();
      if (v1)
      {
        goto LABEL_39;
      }

      goto LABEL_64;
    case 9u:
      sub_1B5E7C874();
      LOBYTE(v354) = 10;
      sub_1B5E75CA0();
      v157 = v322;
      v158 = v348;
      v103 = v349;
      sub_1B5E7CA60();
      sub_1B5EA5E00();
      sub_1B5E7CD70();
      sub_1B5E34F04();
      v159 = v324;
      sub_1B5E7CA0C();
      sub_1B5EA5E50();
      if (v1)
      {
        goto LABEL_39;
      }

      goto LABEL_64;
    case 0xAu:
      sub_1B5E7C874();
      LOBYTE(v354) = 11;
      sub_1B5E75BF8();
      v157 = v325;
      v158 = v348;
      v103 = v349;
      sub_1B5E7CA60();
      sub_1B5EA5E00();
      sub_1B5E7CD70();
      sub_1B5E34F04();
      v159 = v328;
      sub_1B5E7CA0C();
      sub_1B5EA5E50();
      if (!v1)
      {
LABEL_64:

        sub_1B5E7C8BC();
        *(&v354 + 1) = v343;
        *&v355 = v104;
        DWORD2(v355) = v89;
        sub_1B5E7CA54();
        sub_1B5E75C4C();
        v298 = sub_1B5E7CA00();
        sub_1B5E7CD48(v298);
        sub_1B5E25FA0();
        v299(v157, v159);
        sub_1B5E7C810();
        v300(v348, v349);
      }

LABEL_39:

      sub_1B5E25FA0();
      v258(v157, v159);
      sub_1B5E7C810();
      v203 = v158;
LABEL_40:
      v204 = v103;
      return v202(v203, v204);
    case 0xBu:
      v134 = *(v99 + 16);
      LOBYTE(v354) = 12;
      sub_1B5E75B50();
      sub_1B5E7CA34(&type metadata for SummarizationXPCRequest.Request.GenerateVisualPromptForTextCodingKeys, &v354);
      sub_1B5E7CD70();
      sub_1B5E6FB20();
      v135 = v330;
      sub_1B5E7CA0C();
      sub_1B5EA5E50();

      if (!v1)
      {
        LOBYTE(v354) = v134;
        sub_1B5E7CA54();
        sub_1B5E75BA4();
        sub_1B5E7CA00();
        sub_1B5EA5EA0();
      }

      v264 = sub_1B5E7C978();
      v265(v264, v135);
      goto LABEL_49;
    case 0xCu:
      v144 = sub_1B5DF33E0(&qword_1EB90F190, &qword_1B5EB7808);
      sub_1B5E7CC10(v144);
      sub_1B5E7CA78();
      sub_1B5E7CD64();
      sub_1B5E75A00(v145, v146, v147);
      LOBYTE(v354) = 13;
      sub_1B5E75A5C();
      sub_1B5E7CC60();
      sub_1B5E7CA34(v148, v149);
      LOBYTE(v354) = 0;
      sub_1B5E7C7A0();
      sub_1B5E75AB0(v150, v151, &protocol conformance descriptor for MailMessage);
      sub_1B5E7CCCC();
      v152 = v333[0];
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      if (v1)
      {
        v153 = sub_1B5E7C864();
        v154(v153, v152);
        v133 = type metadata accessor for MailMessage;
        goto LABEL_13;
      }

      LOBYTE(v354) = v345;
      BYTE1(v354) = v95;
      BYTE2(v354) = v94;
      sub_1B5E7CA54();
      sub_1B5E06E10();
      v267 = sub_1B5E7CA00();
      sub_1B5E7CD30(v267);
      v268 = sub_1B5E7C864();
      v269(v268, v152);
      sub_1B5E7C7B8();
      v263 = &v358;
      goto LABEL_47;
    case 0xDu:
      v235 = *v99;
      v236 = *(v99 + 8);
      LOBYTE(v354) = 14;
      sub_1B5E759AC();
      sub_1B5E7CC60();
      v173 = v348;
      v172 = v349;
      sub_1B5E7CD18();
      sub_1B5EA5E00();
      *&v354 = v235;
      LOBYTE(v350) = 0;
      v174 = &qword_1B5EB7800;
      v237 = sub_1B5E26234();
      sub_1B5DF33E0(v237, v238);
      sub_1B5E7CB20(&qword_1EB90F188);
      sub_1B5E7CA00();
      sub_1B5E7CCDC();
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      if (v1)
      {
        goto LABEL_32;
      }

      LOBYTE(v354) = v236;
      sub_1B5E7CA54();
      sub_1B5E06D60();
      v291 = sub_1B5E7CA00();
      sub_1B5E7CD30(v291);
      goto LABEL_60;
    case 0xEu:
      v122 = sub_1B5DF33E0(&qword_1EB90F168, &qword_1B5EB77F8);
      sub_1B5E7CC10(v122);
      sub_1B5E7CABC();
      sub_1B5E7CD64();
      sub_1B5E75A00(v123, v124, v125);
      LOBYTE(v354) = 15;
      sub_1B5E75958();
      sub_1B5E7CC60();
      sub_1B5E7CA34(v126, v127);
      LOBYTE(v354) = 0;
      sub_1B5E7C7D0();
      sub_1B5E75AB0(v128, v129, &protocol conformance descriptor for TextMessage);
      sub_1B5E7CCCC();
      v130 = v335[0];
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      if (v1)
      {
        v131 = sub_1B5E7C864();
        v132(v131, v130);
        v133 = type metadata accessor for TextMessage;
LABEL_13:
        v155 = v133;
        v156 = v103;
      }

      else
      {
        LOBYTE(v354) = v345;
        BYTE1(v354) = v95;
        BYTE2(v354) = v94;
        sub_1B5E7CA54();
        sub_1B5E12130();
        v260 = sub_1B5E7CA00();
        sub_1B5E7CD30(v260);
        v261 = sub_1B5E7C864();
        v262(v261, v130);
        sub_1B5E7C7E8();
        v263 = &v359;
LABEL_47:
        v156 = *(v263 - 32);
      }

      sub_1B5E75AF8(v156, v155);
LABEL_49:
      sub_1B5E7C810();
      v203 = sub_1B5E26048();
      return v202(v203, v204);
    case 0xFu:
      v170 = *v99;
      v171 = *(v99 + 8);
      LOBYTE(v354) = 16;
      sub_1B5E75904();
      sub_1B5E7CC60();
      v173 = v348;
      v172 = v349;
      sub_1B5E7CD18();
      sub_1B5EA5E00();
      *&v354 = v170;
      LOBYTE(v350) = 0;
      v174 = &qword_1B5EB77F0;
      v175 = sub_1B5E26234();
      sub_1B5DF33E0(v175, v176);
      sub_1B5E7CB20(&qword_1EB90F160);
      sub_1B5E7CA00();
      sub_1B5E7CCDC();
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      if (!v1)
      {

        LOBYTE(v354) = v171;
        sub_1B5E7CA54();
        sub_1B5E12080();
        v274 = sub_1B5E7CA00();
        sub_1B5E7CD30(v274);
LABEL_60:
        v292 = sub_1B5E7C864();
        v293(v292, v174);
        sub_1B5E7C810();
        v203 = v173;
        v204 = v172;
        return v202(v203, v204);
      }

LABEL_32:
      v239 = sub_1B5E7C864();
      v240(v239, v174);
      sub_1B5E7C810();
      v109 = v173;
      v110 = v172;
LABEL_56:
      v111(v109, v110);

    case 0x10u:
      v113 = *v99;
      v112 = *(v99 + 8);
      v115 = *(v99 + 16);
      v114 = *(v99 + 24);
      LODWORD(v345) = *(v99 + 32);
      LODWORD(v344) = *(v99 + 33);
      v116 = *(v99 + 34);
      LOBYTE(v354) = 17;
      sub_1B5E758B0();
      v117 = v336[2];
      sub_1B5E7C968();
      sub_1B5EA5E00();
      *&v354 = v113;
      *(&v354 + 1) = v112;
      *&v355 = v115;
      *(&v355 + 1) = v114;
      LOBYTE(v350) = 0;
      sub_1B5E09CD8();
      sub_1B5E7CA00();
      v118 = v337[1];
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      if (v1)
      {
        sub_1B5E25FA0();
        v119(v117, v118);
        sub_1B5E7C810();
        v120 = sub_1B5E433C0();
        v121(v120);
LABEL_63:
      }

      else
      {

        sub_1B5E7C8BC();
        BYTE2(v354) = v116;
        sub_1B5E7CA54();
        sub_1B5E09C00();
        sub_1B5E7CA00();
        sub_1B5EA5EA0();
        sub_1B5E25FA0();
        v259(v117, v118);
        sub_1B5E7C810();
        v203 = v348;
        v204 = v349;
        return v202(v203, v204);
      }

    case 0x11u:
      LOBYTE(v354) = 18;
      sub_1B5E7585C();
      sub_1B5E7CA94();
      sub_1B5E7CB4C(v219, v220);
      v221 = v335[2];
      sub_1B5E7CA0C();
      sub_1B5EA5E70();
      v222 = sub_1B5E7C8F8();
      v223(v222, v221);
LABEL_27:
      sub_1B5E7C810();
      v203 = v95;
      goto LABEL_40;
    case 0x12u:
      LOBYTE(v354) = 1;
      sub_1B5E75F94();
      v253 = v348;
      v252 = v349;
      sub_1B5EA5E00();
      v254 = sub_1B5E7C864();
      v255(v254, v85);
      sub_1B5E7C810();
      return v256(v253, v252);
    default:
      v106 = *v99;
      LOBYTE(v354) = 0;
      sub_1B5E75FE8();
      sub_1B5E7CA34(&type metadata for SummarizationXPCRequest.Request.CheckIsClientEnabledCodingKeys, &v354);
      *&v354 = v106;
      sub_1B5DF33E0(&qword_1EB90F220, &qword_1B5EB7848);
      sub_1B5E7A3E0(&qword_1EB90F228, sub_1B5E7603C);
      v107 = v301[2];
      sub_1B5E7CA0C();
      sub_1B5EA5EA0();
      sub_1B5E25FA0();
      v108(v94, v107);
      sub_1B5E7C810();
      v109 = sub_1B5E26048();
      goto LABEL_56;
  }
}

unint64_t sub_1B5E757A4()
{
  result = qword_1ED7D23B8;
  if (!qword_1ED7D23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D23B8);
  }

  return result;
}

uint64_t sub_1B5E757F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizationXPCRequest.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5E7585C()
{
  result = qword_1EB90F140;
  if (!qword_1EB90F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F140);
  }

  return result;
}

unint64_t sub_1B5E758B0()
{
  result = qword_1EB90F148;
  if (!qword_1EB90F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F148);
  }

  return result;
}

unint64_t sub_1B5E75904()
{
  result = qword_1EB90F150;
  if (!qword_1EB90F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F150);
  }

  return result;
}

unint64_t sub_1B5E75958()
{
  result = qword_1EB90F170;
  if (!qword_1EB90F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F170);
  }

  return result;
}

unint64_t sub_1B5E759AC()
{
  result = qword_1EB90F178;
  if (!qword_1EB90F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F178);
  }

  return result;
}

uint64_t sub_1B5E75A00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1B5DF5EB8();
  v4 = sub_1B5DFA488();
  v5(v4);
  return a2;
}

unint64_t sub_1B5E75A5C()
{
  result = qword_1EB90F198;
  if (!qword_1EB90F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F198);
  }

  return result;
}

uint64_t sub_1B5E75AB0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B5E75AF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1B5DF5EB8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1B5E75B50()
{
  result = qword_1EB90F1A0;
  if (!qword_1EB90F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F1A0);
  }

  return result;
}

unint64_t sub_1B5E75BA4()
{
  result = qword_1EB90F1A8;
  if (!qword_1EB90F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F1A8);
  }

  return result;
}

unint64_t sub_1B5E75BF8()
{
  result = qword_1EB90CF40;
  if (!qword_1EB90CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CF40);
  }

  return result;
}

unint64_t sub_1B5E75C4C()
{
  result = qword_1EB90D5A0;
  if (!qword_1EB90D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D5A0);
  }

  return result;
}

unint64_t sub_1B5E75CA0()
{
  result = qword_1EB90CF48;
  if (!qword_1EB90CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CF48);
  }

  return result;
}

unint64_t sub_1B5E75CF4()
{
  result = qword_1EB90F1B0;
  if (!qword_1EB90F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F1B0);
  }

  return result;
}

unint64_t sub_1B5E75D48()
{
  result = qword_1EB90F1C0;
  if (!qword_1EB90F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F1C0);
  }

  return result;
}

unint64_t sub_1B5E75D9C()
{
  result = qword_1EB90D418;
  if (!qword_1EB90D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D418);
  }

  return result;
}

unint64_t sub_1B5E75DF0()
{
  result = qword_1EB90F1D8;
  if (!qword_1EB90F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F1D8);
  }

  return result;
}

unint64_t sub_1B5E75E44()
{
  result = qword_1EB90D420;
  if (!qword_1EB90D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D420);
  }

  return result;
}

unint64_t sub_1B5E75E98()
{
  result = qword_1EB90D428;
  if (!qword_1EB90D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D428);
  }

  return result;
}

unint64_t sub_1B5E75EEC()
{
  result = qword_1EB90F1F0;
  if (!qword_1EB90F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F1F0);
  }

  return result;
}

unint64_t sub_1B5E75F40()
{
  result = qword_1EB90D430;
  if (!qword_1EB90D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D430);
  }

  return result;
}

unint64_t sub_1B5E75F94()
{
  result = qword_1EB90F210;
  if (!qword_1EB90F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F210);
  }

  return result;
}

unint64_t sub_1B5E75FE8()
{
  result = qword_1EB90F218;
  if (!qword_1EB90F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F218);
  }

  return result;
}

unint64_t sub_1B5E7603C()
{
  result = qword_1EB90F230;
  if (!qword_1EB90F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F230);
  }

  return result;
}

uint64_t SummarizationXPCRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v339 = a2;
  v3 = sub_1B5DF33E0(&qword_1EB90F238, &qword_1B5EB7850);
  sub_1B5E7C730(v3, &v348);
  v346 = v4;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFA50C();
  sub_1B5E26144(v6);
  v7 = sub_1B5DF33E0(&qword_1EB90F240, &qword_1B5EB7858);
  sub_1B5E7C730(v7, &v350[8]);
  v341 = v8;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFA50C();
  sub_1B5E26144(v10);
  v11 = sub_1B5DF33E0(&qword_1EB90F248, &qword_1B5EB7860);
  sub_1B5E7C730(v11, v350);
  v325 = v12;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5DFA50C();
  sub_1B5E26144(v14);
  v15 = sub_1B5DF33E0(&qword_1EB90F250, &qword_1B5EB7868);
  sub_1B5E7C730(v15, &v354);
  v324 = v16;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v17);
  sub_1B5DFA50C();
  sub_1B5E26144(v18);
  v19 = sub_1B5DF33E0(&qword_1EB90F258, &qword_1B5EB7870);
  sub_1B5E7C730(v19, &v346);
  v323 = v20;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5DFA50C();
  sub_1B5E26144(v22);
  v23 = sub_1B5DF33E0(&qword_1EB90F260, &qword_1B5EB7878);
  sub_1B5E7C730(v23, &v344);
  v322 = v24;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v25);
  sub_1B5DFA50C();
  sub_1B5E26144(v26);
  v27 = sub_1B5DF33E0(&qword_1EB90F268, &qword_1B5EB7880);
  sub_1B5E7C730(v27, &v342);
  v321 = v28;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v29);
  sub_1B5DFA50C();
  sub_1B5E26144(v30);
  v31 = sub_1B5DF33E0(&qword_1EB90F270, &qword_1B5EB7888);
  sub_1B5E7C730(v31, &v340);
  v320 = v32;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v33);
  sub_1B5DFA50C();
  sub_1B5E26144(v34);
  v35 = sub_1B5DF33E0(&qword_1EB90F278, &qword_1B5EB7890);
  sub_1B5E7C730(v35, &v338);
  v319 = v36;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v37);
  sub_1B5DFA50C();
  sub_1B5E26144(v38);
  v39 = sub_1B5DF33E0(&qword_1EB90F280, &qword_1B5EB7898);
  sub_1B5E7C730(v39, &v335);
  v317 = v40;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v41);
  sub_1B5DFA50C();
  sub_1B5E26144(v42);
  v43 = sub_1B5DF33E0(&qword_1EB90F288, &qword_1B5EB78A0);
  sub_1B5E7C730(v43, v336);
  v318 = v44;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v45);
  sub_1B5DFA50C();
  sub_1B5E26144(v46);
  v47 = sub_1B5DF33E0(&qword_1EB90F290, &qword_1B5EB78A8);
  sub_1B5E7C730(v47, v333);
  v316 = v48;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v49);
  sub_1B5DFA50C();
  sub_1B5E26144(v50);
  v51 = sub_1B5DF33E0(&qword_1EB90F298, &qword_1B5EB78B0);
  sub_1B5E7C730(v51, &v332);
  v315 = v52;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v53);
  sub_1B5DFA50C();
  sub_1B5E26144(v54);
  v55 = sub_1B5DF33E0(&qword_1EB90F2A0, &qword_1B5EB78B8);
  sub_1B5E7C730(v55, &v331);
  v313 = v56;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v57);
  sub_1B5DFA50C();
  sub_1B5E26144(v58);
  v59 = sub_1B5DF33E0(&qword_1EB90F2A8, &qword_1B5EB78C0);
  sub_1B5E7C730(v59, &v330);
  v312 = v60;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v61);
  sub_1B5DFA50C();
  sub_1B5E26144(v62);
  v63 = sub_1B5DF33E0(&qword_1EB90F2B0, &qword_1B5EB78C8);
  sub_1B5E7C730(v63, &v329);
  v340 = v64;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v65);
  sub_1B5DFA50C();
  sub_1B5E26144(v66);
  v67 = sub_1B5DF33E0(&qword_1EB90F2B8, &qword_1B5EB78D0);
  sub_1B5E7C730(v67, &v328);
  v311 = v68;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v69);
  sub_1B5DFA50C();
  sub_1B5E26144(v70);
  v71 = sub_1B5DF33E0(&qword_1EB90F2C0, &qword_1B5EB78D8);
  sub_1B5E7C730(v71, v326);
  v306 = v72;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v73);
  sub_1B5DFA50C();
  sub_1B5E26144(v74);
  v75 = sub_1B5DF33E0(&qword_1EB90F2C8, &qword_1B5EB78E0);
  sub_1B5E7C730(v75, &v327);
  v309 = v76;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v77);
  sub_1B5DFA50C();
  v344 = v78;
  v345 = sub_1B5DF33E0(&qword_1EB90F2D0, &unk_1B5EB78E8);
  sub_1B5DF5DA8();
  v343 = v79;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v80);
  sub_1B5DFA50C();
  v349 = v81;
  v342 = type metadata accessor for SummarizationXPCRequest.Request(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v82);
  sub_1B5E7CB8C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v83);
  sub_1B5E7CA6C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v84);
  sub_1B5E7CA6C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v85);
  sub_1B5E7CA6C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v86);
  sub_1B5E7CA6C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v87);
  sub_1B5E7CA6C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v88);
  sub_1B5E7CA6C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v89);
  sub_1B5E7CA6C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v90);
  sub_1B5E7CA6C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v91);
  sub_1B5E7CA6C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v92);
  sub_1B5E7CA6C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v93);
  sub_1B5E7CA6C();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v94);
  sub_1B5E7CA6C();
  sub_1B5E2616C();
  v96 = MEMORY[0x1EEE9AC00](v95);
  v98 = &v292 - v97;
  v99 = MEMORY[0x1EEE9AC00](v96);
  v101 = &v292 - v100;
  v102 = MEMORY[0x1EEE9AC00](v99);
  v104 = &v292 - v103;
  v105 = MEMORY[0x1EEE9AC00](v102);
  v107 = &v292 - v106;
  v108 = MEMORY[0x1EEE9AC00](v105);
  v110 = &v292 - v109;
  MEMORY[0x1EEE9AC00](v108);
  v112 = &v292 - v111;
  v113 = a1[3];
  v347 = a1;
  sub_1B5DF3BFC(a1, v113);
  sub_1B5E757A4();
  v114 = v348;
  sub_1B5EA6030();
  if (v114)
  {
    goto LABEL_10;
  }

  v297 = v110;
  v295 = v104;
  v296 = v98;
  v298 = v107;
  v299 = v101;
  v115 = v345;
  v116 = v346;
  v348 = v112;
  v117 = v349;
  sub_1B5EA5DE0();
  result = sub_1B5DFA434();
  if (v120 == v121 >> 1)
  {
    v122 = v115;
    v124 = v342;
    v123 = v343;
LABEL_9:
    v138 = sub_1B5EA5BF0();
    swift_allocError();
    v140 = v139;
    sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520);
    *v140 = v124;
    sub_1B5EA5D20();
    sub_1B5EA5BE0();
    (*(*(v138 - 8) + 104))(v140, *MEMORY[0x1E69E6AF8], v138);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v123 + 8))(v117, v122);
LABEL_10:
    v141 = v347;
    return sub_1B5DF3FB8(v141);
  }

  v293 = 0;
  if (v120 < (v121 >> 1))
  {
    v292 = *(v119 + v120);
    v125 = sub_1B5DFA42C();
    v127 = v126;
    v129 = v128;
    swift_unknownObjectRelease();
    v294 = v125;
    v131 = v340;
    v130 = v341;
    if (v127 == v129 >> 1)
    {
      v132 = v116;
      v133 = v293;
      v134 = v339;
      v135 = v338;
      switch(v292)
      {
        case 1:
          v350[0] = 1;
          sub_1B5E75F94();
          v171 = v326[2];
          sub_1B5E7C8D8(&type metadata for SummarizationXPCRequest.Request.PrewarmCodingKeys);
          sub_1B5E7CBF8();
          sub_1B5E25FA0();
          v172(v171, v307);
          sub_1B5E7C9E0();
          v173 = sub_1B5E26240();
          v174(v173);
          v175 = v348;
          sub_1B5E7CB6C();
          swift_storeEnumTagMultiPayload();
          goto LABEL_36;
        case 2:
          v350[0] = 2;
          sub_1B5E75F40();
          sub_1B5E7CC84();
          sub_1B5E7C930(v155);
          type metadata accessor for MailMessage(0);
          sub_1B5E7CC6C();
          sub_1B5E7C7A0();
          sub_1B5E75AB0(v156, v157, &protocol conformance descriptor for MailMessage);
          sub_1B5E7CC48();
          v158 = sub_1B5E7CBA0();
          sub_1B5E7C998(v158);
          sub_1B5DF33E0(&qword_1EB90F208, &qword_1B5EB7840);
          sub_1B5E7CA24();
          sub_1B5E06AF8();
          sub_1B5E7C9BC(&type metadata for MailMessage.SummarizationOptions);
          sub_1B5E7CD0C();
          swift_unknownObjectRelease();
          v250 = sub_1B5E7C958();
          v251(v250);
          v252 = sub_1B5E7C78C();
          v253(v252);
          sub_1B5E7CD7C();
          goto LABEL_34;
        case 3:
          v350[0] = 3;
          sub_1B5E75EEC();
          sub_1B5E7C820(&type metadata for SummarizationXPCRequest.Request.SummarizeMailMessageThreadCodingKeys);
          v163 = sub_1B5DFA488();
          sub_1B5DF33E0(v163, v164);
          v350[0] = 0;
          sub_1B5E7C8A4();
          sub_1B5E248A8(v165, &qword_1EB90F1F8, &qword_1B5EB7838, v166);
          sub_1B5E7CCBC();
          sub_1B5E7CBE8();
          sub_1B5E7CA18();
          sub_1B5EA5DC0();
          v219 = v353;
          sub_1B5E7CC54();
          sub_1B5E06C58();
          sub_1B5E7C968();
          sub_1B5EA5DC0();
          v220 = (v343 + 8);
          swift_unknownObjectRelease();
          v258 = sub_1B5E433C0();
          v259(v258);
          (*v220)(v349, v115);
          v245 = v295;
          *v295 = v219;
          v260 = *&v350[16];
          *(v245 + 1) = *v350;
          *(v245 + 3) = v260;
          v261 = v352;
          *(v245 + 5) = v351;
          *(v245 + 7) = v261;
          sub_1B5E7CB6C();
          goto LABEL_33;
        case 4:
          v350[0] = 4;
          sub_1B5E75E98();
          sub_1B5E7CC84();
          sub_1B5E7C930(v151);
          type metadata accessor for TextMessage(0);
          sub_1B5E7CC6C();
          sub_1B5E7C7D0();
          sub_1B5E75AB0(v152, v153, &protocol conformance descriptor for TextMessage);
          sub_1B5E7CC48();
          v154 = sub_1B5E7CBA0();
          sub_1B5E7C998(v154);
          sub_1B5DF33E0(&qword_1EB90F1E8, &qword_1B5EB7830);
          sub_1B5E7CA24();
          sub_1B5E11E18();
          sub_1B5E7C9BC(&type metadata for TextMessage.SummarizationOptions);
          sub_1B5E7CD0C();
          swift_unknownObjectRelease();
          v246 = sub_1B5E7C958();
          v247(v246);
          v248 = sub_1B5E7C78C();
          v249(v248);
          sub_1B5E7CD7C();
          goto LABEL_34;
        case 5:
          v350[0] = 5;
          sub_1B5E75E44();
          sub_1B5E7C820(&type metadata for SummarizationXPCRequest.Request.SummarizeTextMessageThreadCodingKeys);
          v176 = sub_1B5E26234();
          sub_1B5DF33E0(v176, v177);
          v350[0] = 0;
          sub_1B5E7C8A4();
          sub_1B5E248A8(v178, &qword_1EB90F1E0, &qword_1B5EB7828, v179);
          sub_1B5E7CCBC();
          v180 = v314;
          sub_1B5E7CA18();
          sub_1B5EA5DC0();
          v236 = v353;
          sub_1B5E7CC54();
          sub_1B5E11F78();
          sub_1B5E7CA18();
          sub_1B5EA5DC0();
          v237 = v313;
          swift_unknownObjectRelease();
          (*(v237 + 8))(v135, v180);
          v269 = sub_1B5E7C778();
          v270(v269);
          v271 = *v350;
          v272 = *&v350[24];
          v232 = v296;
          *v296 = v236;
          v232[1] = v271;
          *(v232 + 1) = *&v350[8];
          v232[4] = v272;
          goto LABEL_32;
        case 6:
          v350[0] = 6;
          sub_1B5E75DF0();
          sub_1B5E7CC84();
          sub_1B5E7C930(v182);
          type metadata accessor for UserNotification(0);
          sub_1B5E7CC6C();
          sub_1B5E7CAD8();
          sub_1B5E75AB0(v183, v184, &protocol conformance descriptor for UserNotification);
          sub_1B5E7CC48();
          v185 = sub_1B5E7CBA0();
          sub_1B5E7C998(v185);
          sub_1B5DF33E0(&qword_1EB90F1D0, &qword_1B5EB7820);
          sub_1B5E7CA24();
          sub_1B5E18164();
          sub_1B5E7C9BC(&type metadata for UserNotification.SummarizationOptions);
          sub_1B5E7CD0C();
          swift_unknownObjectRelease();
          v277 = sub_1B5E7C958();
          v278(v277);
          v279 = sub_1B5E7C78C();
          v280(v279);
          sub_1B5E7CD7C();
          goto LABEL_34;
        case 7:
          v350[0] = 7;
          sub_1B5E75D9C();
          sub_1B5E7C820(&type metadata for SummarizationXPCRequest.Request.SummarizeUserNotificationThreadCodingKeys);
          v167 = sub_1B5DFA488();
          sub_1B5DF33E0(v167, v168);
          v350[0] = 0;
          sub_1B5E7C8A4();
          sub_1B5E248A8(v169, &qword_1EB90F1C8, &qword_1B5EB7818, v170);
          sub_1B5E7CCBC();
          sub_1B5E7CBE8();
          sub_1B5E7CA18();
          sub_1B5EA5DC0();
          v221 = v353;
          sub_1B5E7CC54();
          sub_1B5E182C4();
          sub_1B5E7C968();
          sub_1B5EA5DC0();
          sub_1B5E7CBF8();
          v222 = sub_1B5E7C988();
          v223(v222);
          v224 = sub_1B5E7C778();
          v225(v224);
          v226 = *v350;
          v227 = *&v350[24];
          v245 = v300;
          *v300 = v221;
          v245[1] = v226;
          *(v245 + 1) = *&v350[8];
          v245[4] = v227;
          sub_1B5E7CB6C();
          goto LABEL_33;
        case 8:
          v350[0] = 8;
          sub_1B5E75D48();
          sub_1B5E7CC84();
          sub_1B5E7C930(v187);
          sub_1B5EA4350();
          sub_1B5E7CC6C();
          sub_1B5E7CB08();
          sub_1B5E75AB0(v192, v193, MEMORY[0x1E6969740]);
          sub_1B5E7CC48();
          v194 = sub_1B5E7CBA0();
          sub_1B5E7C998(v194);
          sub_1B5DF33E0(&qword_1EB90F1B8, &qword_1B5EB7810);
          v350[0] = 1;
          sub_1B5E7A38C();
          sub_1B5E7C9BC(&type metadata for SummarizationClient.TextAssistantSummarizationOptions);
          swift_unknownObjectRelease();
          v286 = sub_1B5E34F04();
          v287(v286);
          v288 = sub_1B5E7C78C();
          v289(v288);
          sub_1B5E7CD7C();
LABEL_34:
          swift_storeEnumTagMultiPayload();
          sub_1B5E7C748();
          v257 = v131;
          goto LABEL_35;
        case 9:
          v350[0] = 9;
          sub_1B5E75CF4();
          sub_1B5E7C820(&type metadata for SummarizationXPCRequest.Request.IsTextEligibleForTextAssistantSummarizationCodingKeys);
          sub_1B5E7CBD8();
          sub_1B5E7CA18();
          sub_1B5EA5D70();
          sub_1B5E7C9EC();
          sub_1B5E7A38C();
          sub_1B5E7CC30();
          sub_1B5E7C968();
          sub_1B5EA5DC0();
          v245 = v317;
          sub_1B5E7CBF8();
          v214 = sub_1B5E7C988();
          v215(v214);
          v216 = sub_1B5E7C778();
          v217(v216);
          sub_1B5E7CCAC();
          sub_1B5E7C908(v218);
          goto LABEL_33;
        case 10:
          v350[0] = 10;
          sub_1B5E75CA0();
          sub_1B5E7C820(&type metadata for SummarizationXPCRequest.Request.SummarizeTextForTextAssistantCodingKeys);
          sub_1B5E7CBD8();
          sub_1B5E7CA18();
          sub_1B5EA5D70();
          sub_1B5E7C9EC();
          sub_1B5E7A38C();
          sub_1B5E7CC30();
          sub_1B5E7C968();
          sub_1B5EA5DC0();
          v245 = v319;
          sub_1B5E7CBF8();
          v281 = sub_1B5E7C988();
          v282(v281);
          v283 = sub_1B5E7C778();
          v284(v283);
          sub_1B5E7CCAC();
          sub_1B5E7C908(v285);
          goto LABEL_33;
        case 11:
          v350[0] = 11;
          sub_1B5E75BF8();
          sub_1B5E7C820(&type metadata for SummarizationXPCRequest.Request.PerformStreamingSummarizeTextForTextAssistantCodingKeys);
          sub_1B5E7CBD8();
          sub_1B5E7CA18();
          sub_1B5EA5D70();
          sub_1B5E7C9EC();
          sub_1B5E7A38C();
          sub_1B5E7CC30();
          sub_1B5E7C968();
          sub_1B5EA5DC0();
          v245 = v320;
          sub_1B5E7CBF8();
          v204 = sub_1B5E7C988();
          v205(v204);
          v206 = sub_1B5E7C778();
          v207(v206);
          sub_1B5E7CCAC();
          sub_1B5E7C908(v208);
          goto LABEL_33;
        case 12:
          v350[0] = 12;
          sub_1B5E75B50();
          sub_1B5E7C820(&type metadata for SummarizationXPCRequest.Request.GenerateVisualPromptForTextCodingKeys);
          sub_1B5E7CBD8();
          sub_1B5E7CA18();
          sub_1B5EA5D70();
          sub_1B5E7C9EC();
          sub_1B5E7A338();
          sub_1B5E7CC30();
          sub_1B5E7C968();
          sub_1B5EA5DC0();
          sub_1B5E7CBF8();
          v209 = sub_1B5E7C988();
          v210(v209);
          v211 = sub_1B5E7C778();
          v212(v211);
          v213 = v350[0];
          v245 = v301;
          *v301 = v132;
          v245[1] = v130;
          *(v245 + 16) = v213;
          sub_1B5E7CB6C();
          goto LABEL_33;
        case 13:
          v350[0] = 13;
          sub_1B5E75A5C();
          sub_1B5E7CD18();
          sub_1B5EA5D10();
          if (v133)
          {
            sub_1B5E7C9E0();
            v181 = sub_1B5E7CD24();
            v189(v181, v188);
            sub_1B5E7CBF8();
            goto LABEL_10;
          }

          type metadata accessor for MailMessage(0);
          sub_1B5E7CC6C();
          sub_1B5E7C7A0();
          sub_1B5E75AB0(v190, v191, &protocol conformance descriptor for MailMessage);
          sub_1B5E7CC48();
          sub_1B5E7CA94();
          sub_1B5E7C998(v130);
          sub_1B5DF33E0(&qword_1EB90F190, &qword_1B5EB7808);
          sub_1B5E7CA24();
          sub_1B5E06DB8();
          sub_1B5E7C9BC(&type metadata for MailMessage.VisualPromptOptions);
          sub_1B5E7CD0C();
          swift_unknownObjectRelease();
          v273 = sub_1B5E7C958();
          v274(v273);
          v275 = sub_1B5E7C778();
          v276(v275);
          swift_storeEnumTagMultiPayload();
          sub_1B5E7C748();
          v257 = v135;
LABEL_35:
          v175 = v348;
          sub_1B5E75A00(v257, v348, v256);
LABEL_36:
          v290 = v347;
          sub_1B5E7C748();
          sub_1B5E75A00(v175, v134, v291);
          v141 = v290;
          break;
        case 14:
          v350[0] = 14;
          sub_1B5E759AC();
          sub_1B5E7C820(&type metadata for SummarizationXPCRequest.Request.GenerateVisualPromptForMailMessageThreadCodingKeys);
          v146 = sub_1B5DFA488();
          sub_1B5DF33E0(v146, v147);
          LOBYTE(v353) = 0;
          sub_1B5E7CAA0();
          sub_1B5E248A8(v148, v149, &qword_1B5EB7800, v150);
          sub_1B5E7CC30();
          sub_1B5E7CBE8();
          sub_1B5E7CA18();
          sub_1B5EA5DC0();
          v198 = *v350;
          sub_1B5E7CC54();
          sub_1B5E06D08();
          sub_1B5E7C968();
          sub_1B5EA5DC0();
          sub_1B5E7CBF8();
          v199 = sub_1B5E7C988();
          v200(v199);
          v201 = sub_1B5E7C778();
          v202(v201);
          v203 = v353;
          v245 = v302;
          *v302 = v198;
          *(v245 + 8) = v203;
          sub_1B5E7CB6C();
          goto LABEL_33;
        case 15:
          v350[0] = 15;
          sub_1B5E75958();
          v159 = v334;
          sub_1B5E7C8D8(&type metadata for SummarizationXPCRequest.Request.GenerateVisualPromptForTextMessageCodingKeys);
          type metadata accessor for TextMessage(0);
          sub_1B5E7CC6C();
          sub_1B5E7C7D0();
          sub_1B5E75AB0(v160, v161, &protocol conformance descriptor for TextMessage);
          sub_1B5E7CC48();
          v162 = v308;
          sub_1B5EA5DC0();
          sub_1B5DF33E0(&qword_1EB90F168, &qword_1B5EB77F8);
          sub_1B5E7CA24();
          sub_1B5E120D8();
          sub_1B5EA5DC0();
          sub_1B5E7CD0C();
          swift_unknownObjectRelease();
          (*(v130 + 8))(v159, v135);
          v254 = sub_1B5E7C778();
          v255(v254);
          swift_storeEnumTagMultiPayload();
          sub_1B5E7C748();
          v257 = v162;
          goto LABEL_35;
        case 16:
          v350[0] = 16;
          sub_1B5E75904();
          sub_1B5E7C8D8(&type metadata for SummarizationXPCRequest.Request.GenerateVisualPromptForTextMessageThreadCodingKeys);
          sub_1B5DF33E0(&qword_1EB90F158, &qword_1B5EB77F0);
          LOBYTE(v353) = 0;
          sub_1B5E7CAA0();
          v142 = v337;
          sub_1B5E248A8(v143, v144, &qword_1B5EB77F0, v145);
          sub_1B5E7CC30();
          sub_1B5E7CBE8();
          sub_1B5EA5DC0();
          v195 = v142;
          v196 = *v350;
          sub_1B5E7CC54();
          sub_1B5E12028();
          sub_1B5EA5DC0();
          v197 = v325;
          swift_unknownObjectRelease();
          (*(v197 + 8))(v195, &qword_1B5EB77F0);
          v242 = sub_1B5E7C78C();
          v243(v242);
          v244 = v353;
          v245 = v303;
          *v303 = v196;
          *(v245 + 8) = v244;
          sub_1B5E7CB6C();
          goto LABEL_33;
        case 17:
          v350[0] = 17;
          sub_1B5E758B0();
          sub_1B5E7C8D8(&type metadata for SummarizationXPCRequest.Request.GenerateVisualPromptForNoteMessageCodingKeys);
          LOBYTE(v353) = 0;
          sub_1B5E09C84();
          sub_1B5E7CC30();
          sub_1B5E7CD18();
          sub_1B5EA5DC0();
          v233 = *v350;
          v235 = *&v350[16];
          v234 = *&v350[24];
          sub_1B5E7CC54();
          sub_1B5E09BA8();
          sub_1B5E7CD18();
          sub_1B5EA5DC0();
          swift_unknownObjectRelease();
          v262 = sub_1B5E7CD24();
          v263(v262);
          v264 = sub_1B5E7C800();
          v265(v264, v115);
          v266 = v353;
          v267 = BYTE1(v353);
          v268 = BYTE2(v353);
          v245 = v304;
          *v304 = v233;
          v245[2] = v235;
          v245[3] = v234;
          *(v245 + 32) = v266;
          *(v245 + 33) = v267;
          *(v245 + 34) = v268;
          sub_1B5E7CB6C();
LABEL_33:
          swift_storeEnumTagMultiPayload();
          sub_1B5E7C748();
          v257 = v245;
          goto LABEL_35;
        case 18:
          v350[0] = 18;
          sub_1B5E7585C();
          sub_1B5E7CC84();
          sub_1B5E7C930(v186);
          sub_1B5E7CD64();
          sub_1B5EA5D90();
          v239 = v238;
          sub_1B5E7CBF8();
          (*(v132 + 8))(v115, v130);
          v240 = sub_1B5E7C78C();
          v241(v240);
          v232 = v305;
          *v305 = v239;
          goto LABEL_32;
        default:
          v350[0] = 0;
          sub_1B5E75FE8();
          sub_1B5E7CC84();
          sub_1B5E7C8D8(v136);
          sub_1B5DF33E0(&qword_1EB90F220, &qword_1B5EB7848);
          sub_1B5E7A3E0(&qword_1EB90F300, sub_1B5E7A454);
          v137 = v310;
          sub_1B5EA5DC0();
          swift_unknownObjectRelease();
          v228 = sub_1B5E7C864();
          v229(v228, v137);
          v230 = sub_1B5E7C78C();
          v231(v230);
          v232 = v297;
          *v297 = *v350;
LABEL_32:
          swift_storeEnumTagMultiPayload();
          sub_1B5E7C748();
          v257 = v232;
          goto LABEL_35;
      }

      return sub_1B5DF3FB8(v141);
    }

    v122 = v115;
    v124 = v342;
    v123 = v343;
    v117 = v349;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t SummarizationXPCRequest.RequestInfo.requestIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SummarizationXPCRequest.RequestInfo.useCaseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

Sage::SummarizationXPCRequest::RequestInfo __swiftcall SummarizationXPCRequest.RequestInfo.init(requestIdentifier:useCaseIdentifier:)(Swift::String requestIdentifier, Swift::String useCaseIdentifier)
{
  *v2 = requestIdentifier;
  v2[1] = useCaseIdentifier;
  result.useCaseIdentifier = useCaseIdentifier;
  result.requestIdentifier = requestIdentifier;
  return result;
}

uint64_t sub_1B5E785F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E78644(uint64_t a1)
{
  v2 = sub_1B5E7A4A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E78680(uint64_t a1)
{
  v2 = sub_1B5E7A4A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummarizationXPCRequest.RequestInfo.encode(to:)(void *a1)
{
  sub_1B5DF33E0(&qword_1EB90F310, &qword_1B5EB78F8);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E7A4A8();
  sub_1B5EA6040();
  sub_1B5EA5E50();
  if (!v1)
  {
    sub_1B5EA5E50();
  }

  v4 = sub_1B5E6FB20();
  return v5(v4);
}

uint64_t SummarizationXPCRequest.RequestInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B5DF33E0(&qword_1EB90F318, &unk_1B5EB7900);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E7A4A8();
  sub_1B5EA6030();
  if (v2)
  {
    return sub_1B5DF3FB8(a1);
  }

  v6 = sub_1B5EA5D70();
  v8 = v7;
  v9 = sub_1B5EA5D70();
  v11 = v10;
  v15 = v9;
  v12 = sub_1B5E26048();
  v13(v12);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v15;
  a2[3] = v11;

  sub_1B5DF3FB8(a1);
}

uint64_t sub_1B5E78A38(uint64_t a1)
{
  v2 = type metadata accessor for SummarizationXPCRequest.Request(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5E757F8(a1, v4);
  return sub_1B5E78B18(v4);
}

uint64_t sub_1B5E78AC4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_request;
  sub_1B5E26214();
  swift_beginAccess();
  return sub_1B5E757F8(v1 + v3, a1);
}

uint64_t sub_1B5E78B18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_request;
  swift_beginAccess();
  sub_1B5E7C664(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1B5E78B78@<D0>(uint64_t a1@<X8>)
{
  sub_1B5E78C0C(&v5);
  result = *&v5;
  v3 = v6;
  v4 = v7;
  *a1 = v5;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

uint64_t sub_1B5E78BBC(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  *&v5 = *a1;
  *(&v5 + 1) = v1;
  v6 = v2;
  v7 = v3;

  return sub_1B5E78C6C(&v5);
}

uint64_t sub_1B5E78C0C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_requestInfo);
  sub_1B5E26214();
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v7;
}

uint64_t sub_1B5E78C6C(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = v1 + OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_requestInfo;
  sub_1B5E2D240(v1 + OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_requestInfo);
  *v4 = v6;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
}

double sub_1B5E78CF4@<D0>(void (*a1)(__int128 *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B5E78D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = v7;

  return a5(v9);
}

uint64_t sub_1B5E78D98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *a1;
  sub_1B5E26214();
  swift_beginAccess();
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
}

uint64_t sub_1B5E78DF8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 4);
  v6 = v2 + *a2;
  sub_1B5E2D240(v6);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
}

id SummarizationXPCRequest.__allocating_init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = sub_1B5E34F04();
  return SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v8, v9, a3, a4);
}

id SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t *a4)
{
  v18 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v9 = *a3;
  v8 = a3[1];
  v10 = *(a3 + 4);
  v19 = a4[1];
  v20 = *a4;
  v11 = *(a4 + 4);
  v12 = &v4[OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_onBehalfOfProcess];
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = &v4[OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_originatingProcess];
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  sub_1B5E757F8(a1, &v4[OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_request]);
  v14 = &v4[OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_requestInfo];
  *v14 = v18;
  *(v14 + 2) = v6;
  *(v14 + 3) = v7;
  sub_1B5E2D240(v12);
  *v12 = v9;
  *(v12 + 8) = v8;
  *(v12 + 16) = v10;

  sub_1B5E2D240(v13);
  *v13 = v20;
  *(v13 + 8) = v19;
  *(v13 + 16) = v11;

  v21.receiver = v4;
  v21.super_class = type metadata accessor for SummarizationXPCRequest(0);
  v15 = objc_msgSendSuper2(&v21, sel_init);
  sub_1B5E7C760();
  sub_1B5E75AF8(a1, v16);
  return v15;
}

id SummarizationXPCRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SummarizationXPCRequest.Request(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B5DFD7E8();
  v7 = v6 - v5;
  v8 = &v2[OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_onBehalfOfProcess];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v9 = &v2[OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_originatingProcess];
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 8) = 0;
  sub_1B5E24314(v6 - v5);
  sub_1B5E7C748();
  sub_1B5E75A00(v7, &v2[v10], v11);
  sub_1B5E7997C();
  v12 = v28;
  v13 = v29;
  v14 = &v2[OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_requestInfo];
  *v14 = v27;
  *(v14 + 2) = v12;
  *(v14 + 3) = v13;
  sub_1B5E79B8C(v23);
  v15 = v23[0];
  v16 = v23[1];
  v17 = a1;
  LODWORD(a1) = v24;
  sub_1B5E2D240(v8);
  *v8 = v15;
  *(v8 + 8) = v16;
  *(v8 + 16) = a1;

  sub_1B5E79B8C(v25);
  v19 = v25[0];
  v20 = v25[1];
  LODWORD(v8) = v26;
  sub_1B5E2D240(v9);
  *v9 = v19;
  *(v9 + 8) = v20;
  *(v9 + 16) = v8;

  v22.receiver = v2;
  v22.super_class = type metadata accessor for XPCValue();
  v21 = objc_msgSendSuper2(&v22, sel_init);

  return v21;
}

void sub_1B5E7941C(void *a1)
{
  v2 = v1;
  sub_1B5EA3934(a1);
  sub_1B5E26214();
  swift_beginAccess();
  v4 = qword_1ED7D2050;

  if (v4 != -1)
  {
    sub_1B5E25FEC();
    swift_once();
  }

  sub_1B5E7A51C();
  sub_1B5EA4160();

  sub_1B5E5F508();
  v5 = sub_1B5EA42C0();
  v6 = sub_1B5E5F508();
  sub_1B5E24A58(v6, v7);
  v8 = sub_1B5EA5670();
  sub_1B5E7CD88();

  v9 = v2 + OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_onBehalfOfProcess;
  sub_1B5E26214();
  swift_beginAccess();
  if (*(v9 + 8))
  {
    sub_1B5E0617C();

    v10 = sub_1B5EA4160();
    v12 = v11;

    v13 = sub_1B5EA42C0();
    sub_1B5E24A58(v10, v12);
    v14 = sub_1B5EA5670();
    sub_1B5E7CD88();
  }

  v15 = (v2 + OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_originatingProcess);
  sub_1B5E26214();
  swift_beginAccess();
  v16 = v15[1];
  if (v16)
  {
    v21 = *v15;
    LODWORD(v22) = *(v15 + 4);
    sub_1B5E0617C();

    sub_1B5EA4160();

    sub_1B5E26240();
    v17 = sub_1B5EA42C0();
    v18 = sub_1B5E26240();
    sub_1B5E24A58(v18, v19);
    v20 = sub_1B5EA5670();
    [a1 encodeObject:v17 forKey:{v20, v21, v16, v22}];
  }
}

uint64_t sub_1B5E79850()
{
  type metadata accessor for SummarizationXPCRequest.Request(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DFD7E8();
  v4 = v3 - v2;
  v5 = OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_request;
  sub_1B5E26214();
  swift_beginAccess();
  sub_1B5E757F8(v0 + v5, v4);
  if (qword_1ED7D2050 != -1)
  {
    sub_1B5E25FEC();
    swift_once();
  }

  sub_1B5E75AB0(&qword_1ED7D1F60, type metadata accessor for SummarizationXPCRequest.Request, &protocol conformance descriptor for SummarizationXPCRequest.Request);
  sub_1B5EA4160();
  sub_1B5E7C760();
  sub_1B5E75AF8(v4, v6);
  return sub_1B5DFA488();
}

uint64_t sub_1B5E7997C()
{
  sub_1B5E25D5C();
  v1 = sub_1B5EA5AB0();
  if (v1)
  {
    v2 = v1;
    sub_1B5EA42D0();

    v0 = 0xF000000000000000;
  }

  type metadata accessor for XPCValue();
  v3 = sub_1B5E26048();
  v5 = sub_1B5EA3B74(v3, v4);
  swift_willThrow();
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v6 = sub_1B5EA53B0();
  sub_1B5DFD794(v6, qword_1ED7D2990);
  v7 = v5;
  v8 = sub_1B5EA5380();
  v9 = sub_1B5EA5A40();

  if (os_log_type_enabled(v8, v9))
  {
    sub_1B5E26208();
    swift_slowAlloc();
    sub_1B5E2618C();
    v10 = swift_slowAlloc();
    *v0 = 138543362;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v0 + 4) = v12;
    *v10 = v12;
    sub_1B5E260D8();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
    sub_1B5E2499C(v10);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330](v19);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330](v20);
  }

  return swift_willThrow();
}

void sub_1B5E79B8C(uint64_t a3@<X8>)
{
  sub_1B5E25D5C();
  sub_1B5E7CA60();
  v4 = sub_1B5EA5AB0();
  if (v4)
  {
    v5 = v4;
    sub_1B5EA42D0();
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

id SummarizationXPCRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B5E79DF8()
{
  sub_1B5E7C760();
  sub_1B5E75AF8(v0 + v1, v2);
}

id SummarizationXPCRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarizationXPCRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B5E79F40()
{
  result = 0x6962616C69617661;
  switch(*v0)
  {
    case 1:
      result = 0x6C69626967696C65;
      break;
    case 2:
      result = 0x6D726177657270;
      break;
    case 3:
      result = 0x7A6972616D6D7573;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 1953719668;
      break;
    default:
      return result;
  }

  return result;
}

Sage::SummarizationXPCRequest::Request::Category_optional __swiftcall SummarizationXPCRequest.Request.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B5EA5D00();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B5E7A094@<X0>(uint64_t *a1@<X8>)
{
  result = SummarizationXPCRequest.Request.Category.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SummarizationXPCRequest.Request.category.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for SummarizationXPCRequest.Request(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFD7E8();
  v7 = v6 - v5;
  sub_1B5E757F8(v2, v6 - v5);
  sub_1B5E26234();
  result = swift_getEnumCaseMultiPayload();
  v9 = 2;
  switch(result)
  {
    case 1:
      sub_1B5DF33E0(&qword_1EB90F208, &qword_1B5EB7840);
      sub_1B5E7CCEC();

      goto LABEL_8;
    case 2:
    case 4:
    case 6:
    case 9:
    case 11:
    case 13:
    case 15:
    case 16:
      v10 = type metadata accessor for SummarizationXPCRequest.Request;
      goto LABEL_3;
    case 3:
      sub_1B5DF33E0(&qword_1EB90F1E8, &qword_1B5EB7830);
      sub_1B5E7CCEC();

      goto LABEL_14;
    case 5:
      sub_1B5DF33E0(&qword_1EB90F1D0, &qword_1B5EB7820);
      sub_1B5E7CCEC();

      v10 = type metadata accessor for UserNotification;
      goto LABEL_3;
    case 7:
      sub_1B5DF33E0(&qword_1EB90F1B8, &qword_1B5EB7810);

      sub_1B5EA4350();
      sub_1B5DF5EB8();
      result = (*(v11 + 8))(v7);
      goto LABEL_10;
    case 8:
      result = sub_1B5E75AF8(v7, type metadata accessor for SummarizationXPCRequest.Request);
LABEL_10:
      v9 = 1;
      break;
    case 10:
      result = sub_1B5E75AF8(v7, type metadata accessor for SummarizationXPCRequest.Request);
      v9 = 4;
      break;
    case 12:
LABEL_8:
      v10 = type metadata accessor for MailMessage;
      goto LABEL_3;
    case 14:
LABEL_14:
      v10 = type metadata accessor for TextMessage;
LABEL_3:
      result = sub_1B5E75AF8(v7, v10);
      v9 = 3;
      break;
    case 17:
      v9 = 5;
      break;
    case 18:
      break;
    default:
      result = sub_1B5E75AF8(v7, type metadata accessor for SummarizationXPCRequest.Request);
      v9 = 0;
      break;
  }

  *a1 = v9;
  return result;
}

unint64_t sub_1B5E7A338()
{
  result = qword_1EB90F2E8;
  if (!qword_1EB90F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F2E8);
  }

  return result;
}

unint64_t sub_1B5E7A38C()
{
  result = qword_1EB90F2F0;
  if (!qword_1EB90F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F2F0);
  }

  return result;
}

uint64_t sub_1B5E7A3E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(&qword_1EB90F220, &qword_1B5EB7848);
    a2();
    sub_1B5E26234();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B5E7A454()
{
  result = qword_1EB90F308;
  if (!qword_1EB90F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F308);
  }

  return result;
}

unint64_t sub_1B5E7A4A8()
{
  result = qword_1ED7D2410;
  if (!qword_1ED7D2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2410);
  }

  return result;
}

unint64_t sub_1B5E7A51C()
{
  result = qword_1ED7D1F68;
  if (!qword_1ED7D1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F68);
  }

  return result;
}

unint64_t sub_1B5E7A574()
{
  result = qword_1EB90F320;
  if (!qword_1EB90F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F320);
  }

  return result;
}

unint64_t sub_1B5E7A5CC()
{
  result = qword_1EB90F328;
  if (!qword_1EB90F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F328);
  }

  return result;
}

uint64_t sub_1B5E7A628(uint64_t a1)
{
  result = type metadata accessor for SummarizationXPCRequest.Request(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B5E7A7D8(uint64_t a1)
{
  sub_1B5E7AB1C();
  if (v1 <= 0x3F)
  {
    sub_1B5E7AB6C(319, &qword_1ED7D2828, type metadata accessor for MailMessage);
    if (v2 <= 0x3F)
    {
      sub_1B5E24E9C(319, qword_1ED7D25F0, &qword_1EB90F1F8, &qword_1B5EB7838);
      if (v3 <= 0x3F)
      {
        sub_1B5E7AB6C(319, &qword_1ED7D2750, type metadata accessor for TextMessage);
        if (v4 <= 0x3F)
        {
          sub_1B5E24E9C(319, &qword_1ED7D25E8, &qword_1EB90F1E0, &qword_1B5EB7828);
          if (v5 <= 0x3F)
          {
            sub_1B5E7AB6C(319, qword_1ED7D2678, type metadata accessor for UserNotification);
            if (v6 <= 0x3F)
            {
              sub_1B5E24E9C(319, &qword_1ED7D25E0, &qword_1EB90F1C8, &qword_1B5EB7818);
              if (v7 <= 0x3F)
              {
                sub_1B5E7AB6C(319, &qword_1ED7D29A8, MEMORY[0x1E6969720]);
                if (v8 <= 0x3F)
                {
                  sub_1B5E7ABC4(319, &qword_1ED7D2048, MEMORY[0x1E69E6158], &type metadata for SummarizationClient.TextAssistantSummarizationOptions);
                  if (v9 <= 0x3F)
                  {
                    sub_1B5E7ABC4(319, &qword_1ED7D2040, MEMORY[0x1E69E6158], &type metadata for SummarizationClient.VisualPromptOptions);
                    if (v10 <= 0x3F)
                    {
                      sub_1B5E7AB6C(319, qword_1ED7D2830, type metadata accessor for MailMessage);
                      if (v11 <= 0x3F)
                      {
                        sub_1B5E24E9C(319, qword_1ED7D2138, &qword_1EB90F180, &qword_1B5EB7800);
                        if (v12 <= 0x3F)
                        {
                          sub_1B5E7AB6C(319, qword_1ED7D2758, type metadata accessor for TextMessage);
                          if (v13 <= 0x3F)
                          {
                            sub_1B5E24E9C(319, &qword_1ED7D2130, &qword_1EB90F158, &qword_1B5EB77F0);
                            if (v14 <= 0x3F)
                            {
                              sub_1B5E7ABC4(319, &qword_1ED7D2820, &type metadata for NoteMessage, &type metadata for NoteMessage.VisualPromptOptions);
                              if (v15 <= 0x3F)
                              {
                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
          }
        }
      }
    }
  }
}

void sub_1B5E7AB1C()
{
  if (!qword_1ED7D2018)
  {
    v0 = sub_1B5EA58A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7D2018);
    }
  }
}

void sub_1B5E7AB6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v4 = a3(255);
    v5 = sub_1B5E261D8(v4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B5E7ABC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SummarizationXPCRequest.Request.Category(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}