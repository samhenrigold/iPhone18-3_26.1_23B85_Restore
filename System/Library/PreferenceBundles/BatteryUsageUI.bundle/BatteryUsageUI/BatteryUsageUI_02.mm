uint64_t sub_6A65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BreakdownAppInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BreakdownAppInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_6A804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18AA20[0];
  if (!qword_18AA20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18AA20);
  }

  return result;
}

unint64_t sub_6A85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18AB30;
  if (!qword_18AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18AB30);
  }

  return result;
}

unint64_t sub_6A8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18AB38[0];
  if (!qword_18AB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18AB38);
  }

  return result;
}

unint64_t sub_6A908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1837B8;
  if (!qword_1837B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1837B8);
  }

  return result;
}

unint64_t sub_6A95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1837C0;
  if (!qword_1837C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1837C0);
  }

  return result;
}

unint64_t sub_6A9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1837C8;
  if (!qword_1837C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1837C8);
  }

  return result;
}

unint64_t sub_6AA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1837D0;
  if (!qword_1837D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1837D0);
  }

  return result;
}

unint64_t sub_6AA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1837D8;
  if (!qword_1837D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1837D8);
  }

  return result;
}

unint64_t sub_6AADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18ABC0;
  if (!qword_18ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18ABC0);
  }

  return result;
}

unint64_t sub_6AB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1837F0;
  if (!qword_1837F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1837F0);
  }

  return result;
}

unint64_t sub_6AB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18ABC8;
  if (!qword_18ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18ABC8);
  }

  return result;
}

unint64_t sub_6ABD8()
{
  result = qword_183808;
  if (!qword_183808)
  {
    v1 = sub_47A1C(&qword_183800, &qword_1268F8);
    sub_6AC5C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183808);
  }

  return result;
}

unint64_t sub_6AC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183810;
  if (!qword_183810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183810);
  }

  return result;
}

uint64_t sub_6ACB4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_6AD00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_6AD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18ABD0;
  if (!qword_18ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18ABD0);
  }

  return result;
}

unint64_t sub_6ADE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18ABD8;
  if (!qword_18ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18ABD8);
  }

  return result;
}

unint64_t sub_6AE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183850;
  if (!qword_183850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183850);
  }

  return result;
}

unint64_t sub_6AE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18ABE0;
  if (!qword_18ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18ABE0);
  }

  return result;
}

unint64_t sub_6AEDC()
{
  result = qword_183868;
  if (!qword_183868)
  {
    v1 = sub_47A1C(&qword_183860, &qword_126948);
    sub_6AF68(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183868);
  }

  return result;
}

unint64_t sub_6AF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183870;
  if (!qword_183870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183870);
  }

  return result;
}

unint64_t sub_6AFBC()
{
  result = qword_183880;
  if (!qword_183880)
  {
    sub_47A1C(&qword_183878, &unk_126950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183880);
  }

  return result;
}

unint64_t sub_6B038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183888;
  if (!qword_183888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183888);
  }

  return result;
}

uint64_t sub_6B08C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(&qword_1835B0, &qword_127DA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_6B160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1838B0;
  if (!qword_1838B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1838B0);
  }

  return result;
}

uint64_t sub_6B1B4(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(&qword_183598, &unk_1259B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_6B22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1838C0;
  if (!qword_1838C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1838C0);
  }

  return result;
}

unint64_t sub_6B2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18ABE8[0];
  if (!qword_18ABE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18ABE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BreakdownBucket.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BreakdownBucket.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummaryChartInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChartLegendModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DailyCoalescedBreakdown.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DailyCoalescedBreakdown.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummaryItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SummaryItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_6B81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18AD70;
  if (!qword_18AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18AD70);
  }

  return result;
}

unint64_t sub_6B874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18B000[0];
  if (!qword_18B000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18B000);
  }

  return result;
}

unint64_t sub_6B8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18B290[0];
  if (!qword_18B290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18B290);
  }

  return result;
}

unint64_t sub_6B924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18B520[0];
  if (!qword_18B520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18B520);
  }

  return result;
}

unint64_t sub_6B97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18B7B0[0];
  if (!qword_18B7B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18B7B0);
  }

  return result;
}

unint64_t sub_6B9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BA40[0];
  if (!qword_18BA40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18BA40);
  }

  return result;
}

unint64_t sub_6BA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BB50;
  if (!qword_18BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BB50);
  }

  return result;
}

unint64_t sub_6BA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BB58[0];
  if (!qword_18BB58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18BB58);
  }

  return result;
}

unint64_t sub_6BADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BBE0;
  if (!qword_18BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BBE0);
  }

  return result;
}

unint64_t sub_6BB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BBE8[0];
  if (!qword_18BBE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18BBE8);
  }

  return result;
}

unint64_t sub_6BB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BC70;
  if (!qword_18BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BC70);
  }

  return result;
}

unint64_t sub_6BBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BC78;
  if (!qword_18BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BC78);
  }

  return result;
}

unint64_t sub_6BC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BD00;
  if (!qword_18BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BD00);
  }

  return result;
}

unint64_t sub_6BC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BD08[0];
  if (!qword_18BD08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18BD08);
  }

  return result;
}

unint64_t sub_6BCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BD90;
  if (!qword_18BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BD90);
  }

  return result;
}

unint64_t sub_6BD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BD98[0];
  if (!qword_18BD98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18BD98);
  }

  return result;
}

unint64_t sub_6BD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BE20;
  if (!qword_18BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BE20);
  }

  return result;
}

unint64_t sub_6BDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18BE28[0];
  if (!qword_18BE28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18BE28);
  }

  return result;
}

uint64_t (*sub_6BE8C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6BEE0;
}

uint64_t sub_6BEF8()
{
  swift_getKeyPath();
  (*(*v0 + 584))();

  swift_beginAccess();
  return v0[2];
}

uint64_t sub_6BF78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_6C00C(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2] == a1)
  {
    return sub_6E7DC();
  }

  KeyPath = swift_getKeyPath();
  v5 = __chkstk_darwin(KeyPath);
  v6 = v1;
  v7 = a1;
  (*(*v1 + 592))(v5);
}

uint64_t sub_6C10C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
  return sub_6E7DC();
}

uint64_t (*sub_6C164(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel, &unk_127350);
  sub_115920();

  v4[7] = sub_6BE8C(v4);
  return sub_6C2B4;
}

void sub_6C2C0()
{
  v1 = sub_115760();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v46 - v6;
  __chkstk_darwin(v8);
  v49 = &v46 - v9;
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  __chkstk_darwin(v13);
  v50 = &v46 - v14;
  v51 = v0;
  v15 = type metadata accessor for ShowAllUsageViewModel(0);
  v16 = sub_71CFC(&qword_1839B0, type metadata accessor for ShowAllUsageViewModel, &unk_127334);
  v17 = sub_881D0(v15, v16);
  if (!*(v17 + 16))
  {

    return;
  }

  v47 = v7;
  v48 = v4;
  v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v46 = *(v2 + 16);
  v46(v12, v17 + v18, v1);

  v19 = *(v2 + 32);
  v20 = v12;
  v21 = v1;
  v19(v50, v20, v1);
  v51 = v0;
  v22 = sub_881D0(v15, v16);
  v23 = *(v22 + 16);
  if (!v23)
  {

    (*(v2 + 8))(v50, v1);
    return;
  }

  v24 = v22 + v18 + *(v2 + 72) * (v23 - 1);
  v25 = v47;
  v46(v47, v24, v1);

  v26 = v49;
  v19(v49, v25, v1);
  sub_115710();
  v28 = v27;
  v29 = v50;
  v30 = sub_115710();
  v32 = v28 - v31;
  v33 = *(*v0 + 272);
  v34 = *(v33(v30) + 16);

  v36 = v32 / v34;
  v37 = v48;
  (*(*v0 + 224))(v35);
  sub_115710();
  v39 = v38;
  v40 = *(v2 + 8);
  v48 = (v2 + 8);
  v40(v37, v21);
  v41 = sub_115710();
  v43 = (v39 - v42) / v36;
  if (COERCE__INT64(fabs(v43)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v43 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v44 = *(v33(v41) + 16);

  v45 = v44 - 1;
  if (v44 - 1 >= v43)
  {
    v45 = v43;
  }

  (*(*v0 + 184))(v45 & ~(v45 >> 63));
  v40(v26, v21);
  v40(v29, v21);
}

uint64_t (*sub_6C6FC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6C760;
}

uint64_t sub_6C778(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_6C7BC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 584))();

  v3 = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__selectedDate;
  swift_beginAccess();
  v4 = sub_115760();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_6C8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_115760();
  v5 = __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 232))(v7);
}

uint64_t sub_6C9B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_115760();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__selectedDate;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_71CFC(&qword_183550, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v15 = a1;
  LOBYTE(a1) = sub_117160();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v15, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_6C2C0();
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    v13 = v15;
    *(&v15 - 2) = v2;
    *(&v15 - 1) = v13;
    (*(*v2 + 592))(v12);
  }

  return (v10)(v15, v4);
}

uint64_t sub_6CC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_115760();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__selectedDate;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_6C2C0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t (*sub_6CD8C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel, &unk_127350);
  sub_115920();

  v4[7] = sub_6C6FC(v4);
  return sub_6CEDC;
}

uint64_t sub_6CF5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_6CFB0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 280);

  return v2(v3);
}

uint64_t (*sub_6D048(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel, &unk_127350);
  sub_115920();

  v4[7] = sub_6CEE8(v4);
  return sub_6D198;
}

uint64_t (*sub_6D2E4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel, &unk_127350);
  sub_115920();

  v4[7] = sub_6D1A4(v4);
  return sub_6D434;
}

double sub_6D4B4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 584))();

  v4 = v2 + *a2;
  swift_beginAccess();
  return *v4;
}

uint64_t sub_6D60C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = (v5 + *a1);
  result = swift_beginAccess();
  if (*v8 == a4 && v8[1] == a5)
  {
    *v8 = a4;
    v8[1] = a5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    (*(*v5 + 592))(v12);
  }

  return result;
}

uint64_t (*sub_6D71C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel, &unk_127350);
  sub_115920();

  v4[7] = sub_6D440(v4);
  return sub_6D86C;
}

uint64_t sub_6D878(uint64_t a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_6D8D0(a1, a2 & 1, a3);
  return v6;
}

uint64_t sub_6D8D0(uint64_t a1, int a2, uint64_t a3)
{
  v7 = sub_115760();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__annotationSize);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__viewSize);
  *v12 = 0;
  v12[1] = 0;
  v13 = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__appBreakdownEntries) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__nonAppBreakdownEntries) = _swiftEmptyArrayStorage;
  sub_115930();
  *(v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel_fullBreakdown) = a3;
  if (a3)
  {
    v56 = v10;
    v14 = *(a3 + 16);
    if (v14)
    {
      v51 = v8;
      v52 = v7;
      v53 = a2;
      v54 = a1;
      v55 = v3;

      v15 = v14 - 1;
      for (i = 32; ; i += 120)
      {
        v17 = *(a3 + i + 96);
        v18 = *(a3 + i + 112);
        v19 = *(a3 + i + 64);
        v59 = *(a3 + i + 80);
        v20 = *(a3 + i);
        v21 = *(a3 + i + 32);
        v22 = *(a3 + i + 48);
        v58[1] = *(a3 + i + 16);
        v58[2] = v21;
        v58[0] = v20;
        v61 = v18;
        v60 = v17;
        v58[3] = v22;
        v58[4] = v19;
        v23 = v59;
        v24 = *(a3 + i);
        v25 = *(a3 + i + 16);
        v26 = *(a3 + i + 48);
        v64[2] = *(a3 + i + 32);
        v64[3] = v26;
        v64[0] = v24;
        v64[1] = v25;
        v27 = *(a3 + i + 64);
        v28 = *(a3 + i + 80);
        v29 = *(a3 + i + 96);
        v65 = *(a3 + i + 112);
        v64[5] = v28;
        v64[6] = v29;
        v64[4] = v27;
        sub_6B0F8(v58, v57);
        sub_6B0F8(v58, v57);
        v30 = v23;
        sub_63DC8(v64, v23, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_70FEC(0, *(v13 + 2) + 1, 1, v13);
        }

        v32 = *(v13 + 2);
        v31 = *(v13 + 3);
        if (v32 >= v31 >> 1)
        {
          v13 = sub_70FEC((v31 > 1), v32 + 1, 1, v13);
        }

        sub_6B130(v58);
        *(v13 + 2) = v32 + 1;
        v33 = &v13[160 * v32];
        v34 = v62[1];
        *(v33 + 2) = v62[0];
        *(v33 + 3) = v34;
        v35 = v62[5];
        v37 = v62[2];
        v36 = v62[3];
        *(v33 + 6) = v62[4];
        *(v33 + 7) = v35;
        *(v33 + 4) = v37;
        *(v33 + 5) = v36;
        v38 = v62[7];
        v39 = v63[0];
        v40 = v62[6];
        *(v33 + 169) = *(v63 + 9);
        *(v33 + 9) = v38;
        *(v33 + 10) = v39;
        *(v33 + 8) = v40;
        if (!v15)
        {
          break;
        }

        --v15;
      }

      a1 = v54;
      v3 = v55;
      LOBYTE(a2) = v53;
      v8 = v51;
      v7 = v52;
    }

    v10 = v56;
  }

  v41 = *(v13 + 2);
  if (v41)
  {
    v42 = sub_8D6F0();
    v44 = v41 - *v42;
    if (__OFSUB__(v41, *v42))
    {
      __break(1u);
    }

    else if (v44 <= v41)
    {
      v45 = *(v13 + 2);
      if (v44 <= v45 && v45 >= v41)
      {
        v43 = v44 & ~(v44 >> 63);
        if (v45 == v41 - v43)
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      sub_71834(v13, (v13 + 32), v43, (2 * v41) | 1);
      v49 = v48;

      v13 = v49;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_21:
  *(v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__dailyBreakdown) = v13;

  sub_115750();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__selectedDate, v10, v7);
  if (a2)
  {
    a1 = *(v13 + 2) - 1;
  }

  *(v3 + 16) = a1;
  sub_6E7DC();

  return v3;
}

uint64_t sub_6DCC8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();

  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    (*(*v5 + 592))(v12);
  }
}

void sub_6DDF8(_OWORD *a1@<X8>)
{
  v3 = *(*v1 + 176);
  if (v3() < 0 || (v4 = (*v1 + 272), v5 = *v4, v6 = *((*v4)() + 16), v7 = , !v6))
  {
    sub_719C4(&v40);
    goto LABEL_7;
  }

  v8 = (v3)(v7);
  v9 = v5();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(v9 + 16))
  {
    v10 = (v9 + 160 * v8);
    v11 = v10[3];
    v22 = v10[2];
    v23 = v11;
    v12 = v10[4];
    v13 = v10[5];
    v14 = v10[7];
    v26 = v10[6];
    v27 = v14;
    v24 = v12;
    v25 = v13;
    v15 = v10[8];
    v16 = v10[9];
    v17 = v10[10];
    *&v30[9] = *(v10 + 169);
    v29 = v16;
    *v30 = v17;
    v28 = v15;
    sub_68C74(&v22, &v40);

    v37 = v28;
    v38 = v29;
    v39[0] = *v30;
    *(v39 + 9) = *&v30[9];
    v33 = v24;
    v34 = v25;
    v35 = v26;
    v36 = v27;
    v31 = v22;
    v32 = v23;
    nullsub_4();
    v46 = v37;
    v47 = v38;
    v48[0] = v39[0];
    *(v48 + 9) = *(v39 + 9);
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45 = v36;
    v40 = v31;
    v41 = v32;
LABEL_7:
    v18 = v47;
    a1[6] = v46;
    a1[7] = v18;
    a1[8] = v48[0];
    *(a1 + 137) = *(v48 + 9);
    v19 = v43;
    a1[2] = v42;
    a1[3] = v19;
    v20 = v45;
    a1[4] = v44;
    a1[5] = v20;
    v21 = v41;
    *a1 = v40;
    a1[1] = v21;
    return;
  }

  __break(1u);
}

uint64_t sub_6DFD4@<X0>(char *a1@<X8>)
{
  v3 = sub_115760();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 400);
  v8(v16, v5);
  v31[6] = v16[6];
  v31[7] = v16[7];
  v32[0] = v17[0];
  *(v32 + 9) = *(v17 + 9);
  v31[2] = v16[2];
  v31[3] = v16[3];
  v31[4] = v16[4];
  v31[5] = v16[5];
  v31[0] = v16[0];
  v31[1] = v16[1];
  if (sub_719E4(v31) == 1 || (v33[0] = *(&v32[0] + 1), sub_479B4(v33, v29, &qword_1838E0, &qword_1272D8), v9 = sub_488C8(v16, &qword_1838E8, &unk_1272E0), (v10 = v33[0]) == 0))
  {
    v13 = 1;
  }

  else
  {
    (v8)(v18, v9);
    v26 = v18[6];
    v27 = v18[7];
    v28[0] = v19[0];
    *(v28 + 9) = *(v19 + 9);
    v22 = v18[2];
    v23 = v18[3];
    v24 = v18[4];
    v25 = v18[5];
    v20 = v18[0];
    v21 = v18[1];
    if (sub_719E4(&v20) == 1 || (v29[6] = v26, v29[7] = v27, v30[0] = v28[0], *(v30 + 9) = *(v28 + 9), v29[2] = v22, v29[3] = v23, v29[4] = v24, v29[5] = v25, v29[0] = v20, v29[1] = v21, sub_6373C(), v12 = v11, sub_488C8(v18, &qword_1838E8, &unk_1272E0), (v12 & 1) != 0))
    {
      sub_115750();
      sub_115710();
      (*(v4 + 8))(v7, v3);
    }

    sub_D5810(v10, a1);
    v13 = 0;
  }

  v14 = type metadata accessor for BUIChartViewData(0);
  return (*(*(v14 - 8) + 56))(a1, v13, 1, v14);
}

uint64_t sub_6E2AC()
{
  v1 = sub_115760();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 400))(v13, v3);
  v21 = v13[6];
  v22 = v13[7];
  v23[0] = v14[0];
  *(v23 + 9) = *(v14 + 9);
  v17 = v13[2];
  v18 = v13[3];
  v19 = v13[4];
  v20 = v13[5];
  v15 = v13[0];
  v16 = v13[1];
  if (sub_719E4(&v15) != 1)
  {
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v31 = v23[0];
    v24 = v16;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    sub_479B4(&v24, &v12, &qword_1835C8, &qword_1259C0);
    sub_488C8(v13, &qword_1838E8, &unk_1272E0);
    if (v28)
    {
      if ((BYTE8(v25) & 1) == 0 && (BYTE8(v26) & 1) == 0)
      {
        sub_115700();
        v7 = sub_8D8B4()[7];
        isa = sub_1156B0().super.isa;
        v9 = [v7 stringFromDate:isa];

        v10 = sub_1171B0();
        sub_488C8(&v24, &qword_1835C8, &qword_1259C0);
        (*(v2 + 8))(v5, v1);
        return v10;
      }

      sub_488C8(&v24, &qword_1835C8, &qword_1259C0);
    }
  }

  return 0;
}

unint64_t *sub_6E52C()
{
  (*(*v0 + 400))(v22);
  v30 = v22[6];
  v31 = v22[7];
  v32[0] = v23[0];
  *(v32 + 9) = *(v23 + 9);
  v26 = v22[2];
  v27 = v22[3];
  v28 = v22[4];
  v29 = v22[5];
  v24 = v22[0];
  v25 = v22[1];
  v1 = sub_719E4(&v24);
  if (v1 != 1)
  {
    v32[8] = v30;
    v32[9] = v31;
    v33[0] = v32[0];
    *(v33 + 9) = *(v32 + 9);
    v32[4] = v26;
    v32[5] = v27;
    v32[6] = v28;
    v32[7] = v29;
    v32[2] = v24;
    v32[3] = v25;
    v2 = sub_637F8();
    v1 = sub_488C8(v22, &qword_1838E8, &unk_1272E0);
    if (v2)
    {
      return v2;
    }
  }

  v3 = (*(*v0 + 272))(v1);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return _swiftEmptyArrayStorage;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_7122C(0, v4, 0);
  v5 = 32;
  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    v6 = *(v3 + v5 + 16);
    v34[0] = *(v3 + v5);
    v34[1] = v6;
    v7 = *(v3 + v5 + 32);
    v8 = *(v3 + v5 + 48);
    v9 = *(v3 + v5 + 80);
    v34[4] = *(v3 + v5 + 64);
    v34[5] = v9;
    v34[2] = v7;
    v34[3] = v8;
    v10 = *(v3 + v5 + 96);
    v11 = *(v3 + v5 + 112);
    v12 = *(v3 + v5 + 128);
    *(v35 + 9) = *(v3 + v5 + 137);
    v34[7] = v11;
    v35[0] = v12;
    v34[6] = v10;
    sub_68C74(v34, v20);
    v13 = COERCE_DOUBLE(sub_63764());
    v15 = v14;
    result = sub_68CAC(v34);
    v17 = (v15 & 1) != 0 ? 0.0 : v13;
    if ((v15 & 1) == 0 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      break;
    }

    if (v17 <= -9.22337204e18)
    {
      goto LABEL_19;
    }

    if (v17 >= 9.22337204e18)
    {
      goto LABEL_20;
    }

    v21 = v2;
    v19 = v2[2];
    v18 = v2[3];
    if (v19 >= v18 >> 1)
    {
      sub_7122C((v18 > 1), v19 + 1, 1);
      v2 = v21;
    }

    v2[2] = v19 + 1;
    v2[v19 + 4] = v17;
    v5 += 160;
    if (!--v4)
    {

      return v2;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_6E7DC()
{
  v1 = v0;
  (*(*v0 + 488))(_swiftEmptyArrayStorage);
  v2 = (*(*v0 + 536))(_swiftEmptyArrayStorage);
  (*(*v0 + 400))(v71, v2);
  v79 = v71[6];
  v80 = v71[7];
  v81[0] = v72[0];
  *(v81 + 9) = *(v72 + 9);
  v75 = v71[2];
  v76 = v71[3];
  v77 = v71[4];
  v78 = v71[5];
  v73 = v71[0];
  v74 = v71[1];
  result = sub_719E4(&v73);
  if (result != 1)
  {
    v83 = v78;
    v84 = v79;
    v85 = v80;
    v86 = v81[0];
    v82[0] = v74;
    v82[1] = v75;
    v82[2] = v76;
    v82[3] = v77;
    sub_479B4(v82, &v61, &qword_1835C8, &qword_1259C0);
    result = sub_488C8(v71, &qword_1838E8, &unk_1272E0);
    v4 = v83;
    if (v83)
    {
      v5 = *(*(&v83 + 1) + 16);
      if (v5)
      {
        v6 = (*(&v83 + 1) + 40);
        do
        {
          if (*(v4 + 16))
          {
            v7 = *(v6 - 1);
            v8 = *v6;

            v9 = sub_64F08(v7, v8);
            v11 = v10;

            if (v11)
            {
              v12 = *(v4 + 56) + 152 * v9;
              v13 = *(v12 + 16);
              v61 = *v12;
              v62 = v13;
              v14 = *(v12 + 80);
              v16 = *(v12 + 32);
              v15 = *(v12 + 48);
              v65 = *(v12 + 64);
              v66 = v14;
              v63 = v16;
              v64 = v15;
              v17 = *(v12 + 96);
              v18 = *(v12 + 112);
              v19 = *(v12 + 128);
              v70 = *(v12 + 144);
              v68 = v18;
              v69 = v19;
              v67 = v17;
              if (*(&v17 + 1) > 0.0)
              {
                v20 = v61;
                if (v61 != 6)
                {
                  v60 = v61;
                  v59[150] = 0;
                  v21 = sub_6B280(&v61, v59);
                  sub_68F60(v21, v22, v23);
                  if (sub_117160() & 1) != 0 || (v59[0] = v20, v60 = 1, (sub_117160()) && *(&v63 + 1) && (v63 == __PAIR128__(0xEA00000000007070, 0x41646574656C6544) || (sub_1179E0()))
                  {
                    v24 = (*(*v1 + 496))(v59);
                    v26 = v25;
                    v27 = *v25;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *v26 = v27;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v27 = sub_70EC8(0, *(v27 + 2) + 1, 1, v27);
                      *v26 = v27;
                    }

                    v30 = *(v27 + 2);
                    v29 = *(v27 + 3);
                    v31 = v30 + 1;
                    if (v30 >= v29 >> 1)
                    {
                      v56 = sub_70EC8((v29 > 1), v30 + 1, 1, v27);
                      v31 = v30 + 1;
                      v27 = v56;
                      *v26 = v56;
                    }

                    *(v27 + 2) = v31;
                    v32 = &v27[152 * v30];
                    v33 = v62;
                    *(v32 + 2) = v61;
                    *(v32 + 3) = v33;
                    v34 = v63;
                    v35 = v64;
                    v36 = v66;
                    *(v32 + 6) = v65;
                    *(v32 + 7) = v36;
                    *(v32 + 4) = v34;
                    *(v32 + 5) = v35;
                    v37 = v67;
                    v38 = v68;
                    v39 = v69;
                    *(v32 + 88) = v70;
                    *(v32 + 9) = v38;
                    *(v32 + 10) = v39;
                    *(v32 + 8) = v37;
                    v24(v59, 0);
                  }

                  else
                  {
                    v59[0] = v20;
                    v60 = 1;
                    if (sub_117160() & 1) != 0 || (v59[0] = v20, v60 = 4, (sub_117160()))
                    {
                      v40 = (*(*v1 + 544))(v59);
                      v42 = v41;
                      v43 = *v41;
                      v44 = swift_isUniquelyReferenced_nonNull_native();
                      *v42 = v43;
                      v58 = v40;
                      if ((v44 & 1) == 0)
                      {
                        v43 = sub_70EC8(0, *(v43 + 2) + 1, 1, v43);
                        *v42 = v43;
                      }

                      v46 = *(v43 + 2);
                      v45 = *(v43 + 3);
                      v47 = v46 + 1;
                      if (v46 >= v45 >> 1)
                      {
                        v57 = sub_70EC8((v45 > 1), v46 + 1, 1, v43);
                        v47 = v46 + 1;
                        v43 = v57;
                        *v42 = v57;
                      }

                      *(v43 + 2) = v47;
                      v48 = &v43[152 * v46];
                      v49 = v62;
                      *(v48 + 2) = v61;
                      *(v48 + 3) = v49;
                      v50 = v63;
                      v51 = v64;
                      v52 = v66;
                      *(v48 + 6) = v65;
                      *(v48 + 7) = v52;
                      *(v48 + 4) = v50;
                      *(v48 + 5) = v51;
                      v53 = v67;
                      v54 = v68;
                      v55 = v69;
                      *(v48 + 88) = v70;
                      *(v48 + 9) = v54;
                      *(v48 + 10) = v55;
                      *(v48 + 8) = v53;
                      v58(v59, 0);
                    }

                    else
                    {
                      sub_6AAAC(&v61);
                    }
                  }
                }
              }
            }
          }

          v6 += 2;
          --v5;
        }

        while (v5);
      }

      return sub_488C8(v82, &qword_1835C8, &qword_1259C0);
    }
  }

  return result;
}

uint64_t type metadata accessor for ShowAllUsageViewModel(uint64_t a1)
{
  result = qword_18C0A0;
  if (!qword_18C0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6EE64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result;
  return result;
}

uint64_t sub_6EEB8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 488);

  return v2(v3);
}

uint64_t (*sub_6EF14(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel, &unk_127350);
  sub_115920();

  v4[7] = sub_6EDF0(v4);
  return sub_6F064;
}

uint64_t sub_6F0E4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 584))();

  swift_beginAccess();
}

uint64_t sub_6F170@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result;
  return result;
}

uint64_t sub_6F1C4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 536);

  return v2(v3);
}

uint64_t (*sub_6F220(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel, &unk_127350);
  sub_115920();

  v4[7] = sub_6F070(v4);
  return sub_6F370;
}

void sub_6F37C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_115910();

  free(v3);
}

uint64_t sub_6F410(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_66DE0(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  v46 = result;
  v47 = v6;
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel_fullBreakdown);
  if (!v7)
  {

LABEL_19:
    type metadata accessor for AppDetailViewModel(0);
    sub_719FC(a1, v66);
    v39 = _swiftEmptyArrayStorage;
    v40 = v66;
    v41 = 0;
    v42 = 1;
    return sub_F77AC(v39, v41, v42, v40);
  }

  v44 = v1;
  v45 = a1;
  v49 = *(v7 + 16);
  if (!v49)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_21:

    type metadata accessor for AppDetailViewModel(0);
    v43 = (*(*v44 + 176))();
    sub_719FC(v45, &v56);
    v40 = &v56;
    v39 = v10;
    v41 = v43;
    v42 = 0;
    return sub_F77AC(v39, v41, v42, v40);
  }

  v8 = 0;
  v9 = v7 + 64;
  v10 = _swiftEmptyArrayStorage;
  v48 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel_fullBreakdown);
  while (v8 < *(v7 + 16))
  {
    v51 = *(v9 - 16);
    v11 = *(v9 - 8);
    v12 = *v9;
    v50 = *(v9 + 8);
    v13 = *(v9 + 32);
    v14 = *(v9 + 48);
    if (*(v13 + 16))
    {

      v15 = v14;
      v16 = sub_64F08(v46, v47);
      if (v17)
      {
        v18 = (*(v13 + 56) + 152 * v16);
        v19 = v18[1];
        v52[0] = *v18;
        v52[1] = v19;
        v20 = v18[5];
        v22 = v18[2];
        v21 = v18[3];
        v52[4] = v18[4];
        v52[5] = v20;
        v52[2] = v22;
        v52[3] = v21;
        v23 = v18[6];
        v24 = v18[7];
        v25 = v18[8];
        v53 = *(v18 + 72);
        v52[7] = v24;
        v52[8] = v25;
        v52[6] = v23;
        memmove(__dst, v18, 0x92uLL);
        nullsub_4();
        sub_6B280(v52, &v56);
      }

      else
      {
        sub_68BEC(__dst);
      }

      v62 = __dst[6];
      v63 = __dst[7];
      v64 = __dst[8];
      v65 = v55;
      v58 = __dst[2];
      v59 = __dst[3];
      v60 = __dst[4];
      v61 = __dst[5];
      v56 = __dst[0];
      v57 = __dst[1];
    }

    else
    {
      sub_68BEC(&v56);

      v15 = v14;
    }

    v68[6] = v62;
    v68[7] = v63;
    v68[8] = v64;
    v69 = v65;
    v68[2] = v58;
    v68[3] = v59;
    v68[4] = v60;
    v68[5] = v61;
    v68[0] = v56;
    v68[1] = v57;
    sub_63060(v51, v11, v12, v50, v68, v66);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_71108(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v7 = v48;
    v27 = v10[2];
    v26 = v10[3];
    if (v27 >= v26 >> 1)
    {
      result = sub_71108((v26 > 1), v27 + 1, 1, v10);
      v10 = result;
    }

    ++v8;
    v10[2] = v27 + 1;
    v28 = &v10[27 * v27];
    v29 = v66[1];
    *(v28 + 2) = v66[0];
    *(v28 + 3) = v29;
    v30 = v66[2];
    v31 = v66[3];
    v32 = v66[5];
    *(v28 + 6) = v66[4];
    *(v28 + 7) = v32;
    *(v28 + 4) = v30;
    *(v28 + 5) = v31;
    v33 = v66[6];
    v34 = v66[7];
    v35 = v66[9];
    *(v28 + 10) = v66[8];
    *(v28 + 11) = v35;
    *(v28 + 8) = v33;
    *(v28 + 9) = v34;
    v36 = v66[10];
    v37 = v66[11];
    v38 = v66[12];
    *(v28 + 120) = v67;
    *(v28 + 13) = v37;
    *(v28 + 14) = v38;
    *(v28 + 12) = v36;
    v9 += 120;
    if (v49 == v8)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

void *sub_6F7C4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  (*(*v1 + 400))(v49);
  v57 = v49[6];
  v58 = v49[7];
  v59[0] = v50[0];
  *(v59 + 9) = *(v50 + 9);
  v53 = v49[2];
  v54 = v49[3];
  v55 = v49[4];
  v56 = v49[5];
  v51 = v49[0];
  v52 = v49[1];
  if (sub_719E4(&v51) == 1)
  {
    goto LABEL_7;
  }

  v62 = v56;
  v63 = v57;
  v64 = v58;
  v65 = v59[0];
  v60[0] = v52;
  v60[1] = v53;
  v60[2] = v54;
  v61 = v55;
  sub_479B4(v60, __src, &qword_1835C8, &qword_1259C0);
  sub_488C8(v49, &qword_1838E8, &unk_1272E0);
  if (!v62)
  {
    goto LABEL_7;
  }

  v4 = [objc_opt_self() localizedStringWithPercentage:*(&v61 + 1)];
  if (!v4)
  {
    sub_488C8(v60, &qword_1835C8, &qword_1259C0);
LABEL_7:
    sub_71A60(__src);
    return memcpy(a1, __src, 0x128uLL);
  }

  v5 = v4;
  v6 = sub_1171B0();
  v8 = v7;

  v9 = (*(*v2 + 176))();
  v10 = *((*(*v2 + 272))() + 16);

  if (v9 >= (v10 >> 1))
  {
    v11 = sub_116400();
  }

  else
  {
    v11 = sub_1163F0();
  }

  v13 = v11;
  v46 = 0;
  sub_6FD98(v6, v8, v2, __src);
  v36 = *&__src[96];
  v37 = *&__src[112];
  v38 = *&__src[128];
  v39 = *&__src[144];
  v32 = *&__src[32];
  v33 = *&__src[48];
  v34 = *&__src[64];
  v35 = *&__src[80];
  v30 = *__src;
  v31 = *&__src[16];
  v40[6] = *&__src[96];
  v40[7] = *&__src[112];
  v40[8] = *&__src[128];
  v40[9] = *&__src[144];
  v40[2] = *&__src[32];
  v40[3] = *&__src[48];
  v40[4] = *&__src[64];
  v40[5] = *&__src[80];
  v40[0] = *__src;
  v40[1] = *&__src[16];
  sub_479B4(&v30, v44, &qword_1838F0, &qword_1272F0);
  sub_488C8(v40, &qword_1838F0, &qword_1272F0);

  *&v45[103] = v36;
  *&v45[119] = v37;
  *&v45[135] = v38;
  *&v45[151] = v39;
  *&v45[39] = v32;
  *&v45[55] = v33;
  *&v45[71] = v34;
  *&v45[87] = v35;
  *&v45[7] = v30;
  *&v45[23] = v31;
  v14 = v46;
  v15 = sub_116600();
  sub_115FD0();
  *&__src[129] = *&v45[112];
  *&__src[145] = *&v45[128];
  *&__src[161] = *&v45[144];
  *&__src[65] = *&v45[48];
  *&__src[81] = *&v45[64];
  *&__src[97] = *&v45[80];
  *&__src[113] = *&v45[96];
  *&__src[17] = *v45;
  *&__src[33] = *&v45[16];
  v47 = 0;
  *__src = v13;
  *&__src[8] = 0;
  __src[16] = v14;
  *&__src[176] = *&v45[159];
  *&__src[49] = *&v45[32];
  __src[184] = v15;
  *&__src[192] = v16;
  *&__src[200] = v17;
  *&__src[208] = v18;
  *&__src[216] = v19;
  __src[224] = 0;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v2;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v2;
  type metadata accessor for CGSize(0);
  swift_retain_n();
  sub_116DA0();
  v22 = v44[0];
  v23 = v44[1];
  v24 = *&v44[2];
  v25 = *&v44[3];
  sub_46F9C(&qword_1838F8, &qword_1272F8);
  v26 = sub_71B78();
  sub_8EB40(v22, v23, v26, v48, v24, v25);

  v41[12] = *&__src[192];
  v41[13] = *&__src[208];
  v42 = __src[224];
  v41[8] = *&__src[128];
  v41[9] = *&__src[144];
  v41[10] = *&__src[160];
  v41[11] = *&__src[176];
  v41[4] = *&__src[64];
  v41[5] = *&__src[80];
  v41[6] = *&__src[96];
  v41[7] = *&__src[112];
  v41[0] = *__src;
  v41[1] = *&__src[16];
  v41[2] = *&__src[32];
  v41[3] = *&__src[48];
  sub_488C8(v41, &qword_1838F8, &qword_1272F8);
  v27 = memcpy(__dst, v48, sizeof(__dst));
  (*(*v2 + 320))(v27);
  v29 = v28;
  sub_488C8(v60, &qword_1835C8, &qword_1259C0);
  memcpy(v44, __dst, 0x118uLL);
  v44[35] = 0;
  *&v44[36] = v29 + -2.0 + -8.0;
  nullsub_4();
  memcpy(__src, v44, sizeof(__src));
  return memcpy(a1, __src, 0x128uLL);
}

uint64_t sub_6FD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v104 = a4;
  v6 = sub_46F9C(&qword_182FF8, &qword_124E30);
  __chkstk_darwin(v6 - 8);
  v8 = &v98 - v7;
  v9 = sub_116740();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v160 = a1;
  *(&v160 + 1) = a2;
  v16 = sub_4869C(v13, v14, v15);

  v103 = v16;
  v17 = sub_116900();
  v105 = v19;
  v106 = v18;
  v21 = v20;
  (*(v10 + 104))(v12, enum case for Font.TextStyle.title(_:), v9);
  v22 = enum case for Font.Design.rounded(_:);
  v23 = sub_116690();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v8, v22, v23);
  (*(v24 + 56))(v8, 0, 1, v23);
  sub_1166E0();
  sub_488C8(v8, &qword_182FF8, &qword_124E30);
  (*(v10 + 8))(v12, v9);
  v25 = v99;
  v26 = v106;
  v27 = sub_1168C0();
  v107 = v28;
  v30 = v29;

  sub_48928(v17, v26, v21 & 1);

  (*(*v25 + 400))(v149, v31);
  v157 = v149[6];
  v158 = v149[7];
  v159[0] = v150[0];
  *(v159 + 9) = *(v150 + 9);
  v153 = v149[2];
  v154 = v149[3];
  v155 = v149[4];
  v156 = v149[5];
  v151 = v149[0];
  v152 = v149[1];
  v32 = sub_719E4(&v151);
  if (v32 == 1 || (v166 = v157, v167 = v158, v168[0] = v159[0], *(v168 + 9) = *(v159 + 9), v162 = v153, v163 = v154, v164 = v155, v165 = v156, v160 = v151, v161 = v152, v35 = sub_63788(v32, v33, v34), sub_488C8(v149, &qword_1838E8, &unk_1272E0), (v35 & 1) == 0))
  {
    v36 = sub_116B30();
  }

  else
  {
    v36 = sub_116B80();
  }

  *&v116 = v36;
  v37 = v107;
  v38 = sub_116890();
  v39 = v27;
  v41 = v40;
  v43 = v42;
  sub_48928(v39, v37, v30 & 1);

  sub_1166B0();
  v44 = sub_116810();
  v100 = v45;
  v101 = v44;
  v47 = v46;
  v102 = v48;
  sub_48928(v38, v41, v43 & 1);

  LODWORD(v107) = sub_116620();
  sub_115FD0();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  LODWORD(v105) = v47 & 1;
  v145 = v47 & 1;
  v142 = 0;
  LODWORD(v106) = sub_116610();
  v57 = sub_115FD0();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v146 = 0;
  *&v116 = (*(*v25 + 416))(v57);
  *(&v116 + 1) = v66;
  v67 = sub_116900();
  v69 = v68;
  v71 = v70;
  sub_116700();
  v72 = sub_1168C0();
  v74 = v73;
  v76 = v75;

  sub_48928(v67, v69, v71 & 1);

  sub_1166B0();
  v77 = sub_116810();
  v79 = v78;
  LOBYTE(v67) = v80;
  sub_48928(v72, v74, v76 & 1);

  LODWORD(v116) = sub_1164D0();
  v81 = sub_116890();
  v83 = v82;
  LOBYTE(v72) = v84;
  v86 = v85;
  sub_48928(v77, v79, v67 & 1);

  v88 = v100;
  v87 = v101;
  *&v109 = v101;
  *(&v109 + 1) = v100;
  LOBYTE(v110) = v105;
  *(&v110 + 1) = *v144;
  DWORD1(v110) = *&v144[3];
  v89 = v102;
  *(&v110 + 1) = v102;
  LOBYTE(v111) = v107;
  *(&v111 + 1) = *v143;
  DWORD1(v111) = *&v143[3];
  *(&v111 + 1) = v50;
  *&v112 = v52;
  *(&v112 + 1) = v54;
  *&v113 = v56;
  BYTE8(v113) = 0;
  *(&v113 + 9) = *v148;
  HIDWORD(v113) = *&v148[3];
  LOBYTE(v114) = v106;
  DWORD1(v114) = *&v147[3];
  *(&v114 + 1) = *v147;
  *(&v114 + 1) = v59;
  *&v115[0] = v61;
  *(&v115[0] + 1) = v63;
  *&v115[1] = v65;
  BYTE8(v115[1]) = 0;
  v118 = v111;
  v119 = v112;
  v116 = v109;
  v117 = v110;
  *(v122 + 9) = *(v115 + 9);
  v121 = v114;
  v122[0] = v115[0];
  v120 = v113;
  v108 = v72 & 1;
  v90 = v109;
  v91 = v110;
  v92 = v112;
  v93 = v104;
  *(v104 + 32) = v111;
  *(v93 + 48) = v92;
  *v93 = v90;
  *(v93 + 16) = v91;
  v94 = v120;
  v95 = v121;
  v96 = v122[1];
  *(v93 + 96) = v122[0];
  *(v93 + 112) = v96;
  *(v93 + 64) = v94;
  *(v93 + 80) = v95;
  *(v93 + 128) = v81;
  *(v93 + 136) = v83;
  *(v93 + 144) = v72 & 1;
  *(v93 + 152) = v86;
  sub_479B4(&v109, v123, &qword_183CF8, &qword_1273E8);
  sub_488B8(v81, v83, v72 & 1);

  sub_48928(v81, v83, v72 & 1);

  v123[0] = v87;
  v123[1] = v88;
  v124 = v105;
  *v125 = *v144;
  *&v125[3] = *&v144[3];
  v126 = v89;
  v127 = v107;
  *v128 = *v143;
  *&v128[3] = *&v143[3];
  v129 = v50;
  v130 = v52;
  v131 = v54;
  v132 = v56;
  v133 = 0;
  *&v134[3] = *&v148[3];
  *v134 = *v148;
  v135 = v106;
  *&v136[3] = *&v147[3];
  *v136 = *v147;
  v137 = v59;
  v138 = v61;
  v139 = v63;
  v140 = v65;
  v141 = 0;
  return sub_488C8(v123, &qword_183CF8, &qword_1273E8);
}

void sub_70550()
{
  (*(*v0 + 400))(v5);
  v13 = v5[6];
  v14 = v5[7];
  v15[0] = v6[0];
  *(v15 + 9) = *(v6 + 9);
  v9 = v5[2];
  v10 = v5[3];
  v11 = v5[4];
  v12 = v5[5];
  v7 = v5[0];
  v8 = v5[1];
  if (sub_719E4(&v7) != 1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v15[0];
    v16[0] = v8;
    v16[1] = v9;
    v16[2] = v10;
    v17 = v11;
    sub_479B4(v16, v4, &qword_1835C8, &qword_1259C0);
    v1 = sub_488C8(v5, &qword_1838E8, &unk_1272E0);
    if (v18)
    {
      v2 = *(&v17 + 1);
      v4[0] = (*(*v0 + 416))(v1);
      v4[1] = v3;
      v22._countAndFlagsBits = 8238;
      v22._object = 0xE200000000000000;
      sub_117220(v22);
      if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v2 > -9.22337204e18)
      {
        if (v2 < 9.22337204e18)
        {
          v23._countAndFlagsBits = sub_1179B0();
          sub_117220(v23);

          v24._countAndFlagsBits = 37;
          v24._object = 0xE100000000000000;
          sub_117220(v24);
          sub_488C8(v16, &qword_1835C8, &qword_1259C0);
          return;
        }

        goto LABEL_10;
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }
  }
}

uint64_t sub_70894()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__selectedDate;
  v2 = sub_115760();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  v4 = sub_115940();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t (*sub_70B0C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 336))();
  return sub_55900;
}

double sub_70D20@<D0>(_OWORD *a1@<X8>)
{
  (*(**v1 + 400))(v8);
  v3 = v8[7];
  a1[6] = v8[6];
  a1[7] = v3;
  a1[8] = v9[0];
  *(a1 + 137) = *(v9 + 9);
  v4 = v8[3];
  a1[2] = v8[2];
  a1[3] = v4;
  v5 = v8[5];
  a1[4] = v8[4];
  a1[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  a1[1] = v7;
  return result;
}

uint64_t (*sub_70E34(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 240))();
  return sub_57B6C;
}

char *sub_70EC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_183D18, &unk_1290F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_70FEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_183D10, &unk_127400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_71108(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_183D00, &unk_1273F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_7122C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_7124C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_7124C(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_183D08, &unk_127E20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_71350(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v72 = v2;
  v73 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 112);
    v9 = *(v5 + 80);
    v55 = *(v5 + 96);
    v56 = v8;
    v10 = *(v5 + 112);
    v57 = *(v5 + 128);
    v11 = *(v5 + 48);
    v12 = *(v5 + 16);
    v51 = *(v5 + 32);
    v52 = v11;
    v13 = *(v5 + 48);
    v14 = *(v5 + 80);
    v53 = *(v5 + 64);
    v54 = v14;
    v15 = *(v5 + 16);
    v50[0] = *v5;
    v50[1] = v15;
    v46 = v55;
    v47 = v10;
    v48 = *(v5 + 128);
    v42 = v51;
    v43 = v13;
    v44 = v53;
    v45 = v9;
    v40 = v50[0];
    v41 = v12;
    v16 = *(v6 + 112);
    v17 = *(v6 + 80);
    v64 = *(v6 + 96);
    v65 = v16;
    v18 = *(v6 + 112);
    v66 = *(v6 + 128);
    v19 = *(v6 + 48);
    v20 = *(v6 + 16);
    v60 = *(v6 + 32);
    v61 = v19;
    v21 = *(v6 + 48);
    v22 = *(v6 + 80);
    v62 = *(v6 + 64);
    v63 = v22;
    v23 = *(v6 + 16);
    v59[0] = *v6;
    v59[1] = v23;
    v36 = v64;
    v37 = v18;
    v38 = *(v6 + 128);
    v32 = v60;
    v33 = v21;
    v34 = v62;
    v35 = v17;
    v58 = *(v5 + 144);
    v49 = *(v5 + 144);
    v67 = *(v6 + 144);
    v39 = *(v6 + 144);
    v30 = v59[0];
    v31 = v20;
    sub_6B280(v50, v29);
    v24 = sub_6B280(v59, v29);
    sub_690C0(v24, v25, v26);
    v27 = sub_117160();
    v68[6] = v36;
    v68[7] = v37;
    v68[8] = v38;
    v69 = v39;
    v68[2] = v32;
    v68[3] = v33;
    v68[4] = v34;
    v68[5] = v35;
    v68[0] = v30;
    v68[1] = v31;
    sub_6AAAC(v68);
    v70[6] = v46;
    v70[7] = v47;
    v70[8] = v48;
    v71 = v49;
    v70[2] = v42;
    v70[3] = v43;
    v70[4] = v44;
    v70[5] = v45;
    v70[0] = v40;
    v70[1] = v41;
    sub_6AAAC(v70);
    if ((v27 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 152;
    v5 += 152;
  }

  return 1;
}

uint64_t sub_7155C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v68 = v2;
  v69 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[5];
    v53 = v5[6];
    v54 = v8;
    v10 = v5[7];
    v55[0] = v5[8];
    *(v55 + 9) = *(v5 + 137);
    v11 = v5[3];
    v12 = v5[1];
    v49 = v5[2];
    v50 = v11;
    v13 = v5[3];
    v14 = v5[5];
    v51 = v5[4];
    v52 = v14;
    v15 = v5[1];
    v48[0] = *v5;
    v48[1] = v15;
    v45 = v53;
    v46 = v10;
    v47[0] = v5[8];
    *(v47 + 9) = *(v5 + 137);
    v41 = v49;
    v42 = v13;
    v43 = v51;
    v44 = v9;
    v39 = v48[0];
    v40 = v12;
    v16 = v6[7];
    v17 = v6[5];
    v61 = v6[6];
    v62 = v16;
    v18 = v6[7];
    v63[0] = v6[8];
    *(v63 + 9) = *(v6 + 137);
    v19 = v6[3];
    v20 = v6[1];
    v57 = v6[2];
    v58 = v19;
    v21 = v6[3];
    v22 = v6[5];
    v59 = v6[4];
    v60 = v22;
    v23 = v6[1];
    v56[0] = *v6;
    v56[1] = v23;
    v36 = v61;
    v37 = v18;
    v38[0] = v6[8];
    *(v38 + 9) = *(v6 + 137);
    v32 = v57;
    v33 = v21;
    v34 = v59;
    v35 = v17;
    v30 = v56[0];
    v31 = v20;
    sub_68C74(v48, v29);
    v24 = sub_68C74(v56, v29);
    sub_694C8(v24, v25, v26);
    v27 = sub_117160();
    v64[6] = v36;
    v64[7] = v37;
    v65[0] = v38[0];
    *(v65 + 9) = *(v38 + 9);
    v64[2] = v32;
    v64[3] = v33;
    v64[4] = v34;
    v64[5] = v35;
    v64[0] = v30;
    v64[1] = v31;
    sub_68CAC(v64);
    v66[6] = v45;
    v66[7] = v46;
    v67[0] = v47[0];
    *(v67 + 9) = *(v47 + 9);
    v66[2] = v41;
    v66[3] = v42;
    v66[4] = v43;
    v66[5] = v44;
    v66[0] = v39;
    v66[1] = v40;
    sub_68CAC(v66);
    if ((v27 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 10;
    v5 += 10;
  }

  return 1;
}

uint64_t sub_717D8(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = (v1[2] + *a1);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

void sub_71834(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_46F9C(&qword_183D10, &unk_127400);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 160);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_7195C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_719C4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_719E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_719FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_71A60(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_71AE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_71B78()
{
  result = qword_183900;
  if (!qword_183900)
  {
    sub_47A1C(&qword_1838F8, &qword_1272F8);
    sub_48800(&qword_183908, &qword_183910, &qword_127300, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183900);
  }

  return result;
}

unint64_t sub_71C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183918;
  if (!qword_183918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183918);
  }

  return result;
}

uint64_t sub_71CA4(uint64_t a1)
{
  result = sub_71CFC(&qword_1839B0, type metadata accessor for ShowAllUsageViewModel, &unk_127334);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_71CFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_71D50(uint64_t a1)
{
  result = sub_115760();
  if (v2 <= 0x3F)
  {
    result = sub_115940();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_71E54()
{
  result = qword_183CB8;
  if (!qword_183CB8)
  {
    sub_47A1C(&qword_183CC0, &qword_1273C8);
    sub_71ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183CB8);
  }

  return result;
}

unint64_t sub_71ED8()
{
  result = qword_183CC8;
  if (!qword_183CC8)
  {
    sub_47A1C(&qword_183CD0, &qword_1273D0);
    sub_71F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183CC8);
  }

  return result;
}

unint64_t sub_71F64()
{
  result = qword_183CD8;
  if (!qword_183CD8)
  {
    sub_47A1C(&qword_183CE0, &qword_1273D8);
    sub_71B78();
    sub_48800(&qword_183CE8, &qword_183CF0, &qword_1273E0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183CD8);
  }

  return result;
}

uint64_t sub_72034()
{
  v0 = [objc_opt_self() systemGrayColor];
  result = sub_116BE0();
  qword_18C0B8 = result;
  return result;
}

uint64_t sub_72074(uint64_t a1)
{
  sub_116B40();
  v1 = sub_116BA0();

  qword_18C0C8 = v1;
  return result;
}

id sub_720BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_46F9C(&qword_183D20, &qword_127438);
  sub_116CE0();
  sub_116E80();
  sub_116190();
  v5 = sub_116620();
  sub_115FD0();
  *&v25[72] = v31;
  *&v25[88] = v32;
  *&v25[104] = v33;
  *&v25[120] = v34;
  *&v25[8] = *&v38[8];
  *&v25[24] = v28;
  *&v25[40] = v29;
  *&v25[56] = v30;
  v37 = 0;
  *v25 = *v38;
  v25[136] = v5;
  *&v26 = v6;
  *(&v26 + 1) = v7;
  *&v27 = v8;
  *(&v27 + 1) = v9;
  sub_116CE0();
  swift_getKeyPath();
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D80();

  sub_46F9C(&qword_183D30, &qword_127470);
  v10 = sub_723A8();
  sub_8EB40(v21, v22, v10, v38, v23, v24);

  v35[8] = *&v25[128];
  v35[9] = v26;
  v35[10] = v27;
  v35[4] = *&v25[64];
  v35[5] = *&v25[80];
  v36 = 0;
  v35[6] = *&v25[96];
  v35[7] = *&v25[112];
  v35[0] = *v25;
  v35[1] = *&v25[16];
  v35[2] = *&v25[32];
  v35[3] = *&v25[48];
  sub_488C8(v35, &qword_183D30, &qword_127470);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = v50;
  *(a3 + 192) = v49;
  *(a3 + 208) = v12;
  *(a3 + 224) = v51;
  v13 = v46;
  *(a3 + 128) = v45;
  *(a3 + 144) = v13;
  v14 = v48;
  *(a3 + 160) = v47;
  *(a3 + 176) = v14;
  v15 = v42;
  *(a3 + 64) = v41;
  *(a3 + 80) = v15;
  v16 = v44;
  *(a3 + 96) = v43;
  *(a3 + 112) = v16;
  v17 = *&v38[16];
  *a3 = *v38;
  *(a3 + 16) = v17;
  v18 = v40;
  *(a3 + 32) = v39;
  *(a3 + 48) = v18;
  *(a3 + 232) = sub_72554;
  *(a3 + 240) = v11;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0;

  return a1;
}

unint64_t sub_723A8()
{
  result = qword_183D38;
  if (!qword_183D38)
  {
    sub_47A1C(&qword_183D30, &qword_127470);
    sub_72434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183D38);
  }

  return result;
}

unint64_t sub_72434()
{
  result = qword_183D40;
  if (!qword_183D40)
  {
    v1 = sub_47A1C(&qword_183D48, &qword_127478);
    sub_724C0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183D40);
  }

  return result;
}

unint64_t sub_724C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183D50;
  if (!qword_183D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183D50);
  }

  return result;
}

uint64_t sub_72514()
{

  return swift_deallocObject();
}

void sub_72554()
{
  sub_46F9C(&qword_183D20, &qword_127438);
  sub_116CC0();
  sub_4DC6C();
}

uint64_t sub_725AC(uint64_t a1)
{
  type metadata accessor for ChargingStatusViewModel(0);
  sub_116CB0();
  return v2;
}

uint64_t sub_725F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v7 = sub_46F9C(&qword_183D58, &qword_127480);
  __chkstk_darwin(v7 - 8);
  v9 = (&v42 - v8);
  v46 = sub_46F9C(&qword_183D60, &qword_127488);
  __chkstk_darwin(v46);
  v11 = &v42 - v10;
  v44 = sub_46F9C(&qword_183D68, &qword_127490);
  __chkstk_darwin(v44);
  v45 = &v42 - v12;
  v42 = sub_46F9C(&qword_183D70, &qword_127498);
  __chkstk_darwin(v42);
  v14 = &v42 - v13;
  v43 = sub_46F9C(&qword_183D78, &qword_1274A0);
  __chkstk_darwin(v43);
  v16 = &v42 - v15;
  *&v49 = a1;
  *(&v49 + 1) = a2;
  *&v50 = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v17 = v48;
  v18 = sub_49CCC();

  v19 = sub_1163F0();
  if (v18)
  {
    *v14 = v19;
    *(v14 + 1) = 0;
    v14[16] = 0;
    v20 = sub_46F9C(&qword_183DE0, &qword_1274D8);
    sub_72B40(a1, a2, a3, &v14[*(v20 + 44)]);
    *&v49 = a1;
    *(&v49 + 1) = a2;
    *&v50 = a3;
    sub_116D60();
    v21 = v48;
    v22 = sub_49CCC();

    v23 = sub_46F9C(&qword_183DB0, &qword_1274C8);
    v24 = sub_48800(&qword_183DB8, &qword_183D70, &qword_127498, &protocol conformance descriptor for VStack<A>);
    v25 = sub_73F8C();
    sub_8E234(v22 & 1, sub_733D4, 0, v42, v23, v24, v25, v16);
    sub_488C8(v14, &qword_183D70, &qword_127498);
    v26 = &qword_183D78;
    v27 = &qword_1274A0;
    sub_479B4(v16, v45, &qword_183D78, &qword_1274A0);
    swift_storeEnumTagMultiPayload();
    sub_73ED4();
    sub_74070();
    sub_116470();
    v28 = v16;
  }

  else
  {
    *v11 = v19;
    *(v11 + 1) = 0;
    v11[16] = 0;
    v29 = sub_46F9C(&qword_183D80, &qword_1274A8);
    sub_735C0(a1, a2, a3, &v11[*(v29 + 44)]);
    v30 = sub_116EB0();
    v32 = v31;
    *v9 = sub_116EB0();
    v9[1] = v33;
    v34 = sub_46F9C(&qword_183D88, &qword_1274B0);
    sub_73BF4(v9 + *(v34 + 44));
    sub_116E90();
    v35 = &v11[*(v46 + 36)];
    sub_116190();
    sub_548D0(v9, v35, &qword_183D58, &qword_127480);
    v36 = (v35 + *(sub_46F9C(&qword_183D90, &qword_1274B8) + 36));
    v37 = v54;
    v36[4] = v53;
    v36[5] = v37;
    v36[6] = v55;
    v38 = v50;
    *v36 = v49;
    v36[1] = v38;
    v39 = v52;
    v36[2] = v51;
    v36[3] = v39;
    v40 = (v35 + *(sub_46F9C(&qword_183D98, &qword_1274C0) + 36));
    *v40 = v30;
    v40[1] = v32;
    v26 = &qword_183D60;
    v27 = &qword_127488;
    sub_479B4(v11, v45, &qword_183D60, &qword_127488);
    swift_storeEnumTagMultiPayload();
    sub_73ED4();
    sub_74070();
    sub_116470();
    v28 = v11;
  }

  return sub_488C8(v28, v26, v27);
}

uint64_t sub_72B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_46F9C(&qword_183EB0, &unk_127920);
  __chkstk_darwin(v8 - 8);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = sub_46F9C(&qword_1840F8, &qword_127D18);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  *&v67 = a1;
  *(&v67 + 1) = a2;
  *&v68 = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D90();
  v51 = v60;
  v52 = v61;
  *v18 = sub_116320();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = sub_46F9C(&qword_183DE8, &qword_1274E0);
  sub_74154(a1, a2, a3, &v18[*(v19 + 44)]);
  v20 = sub_116620();
  sub_115FD0();
  v21 = &v18[*(v13 + 44)];
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  *&v67 = a1;
  *(&v67 + 1) = a2;
  *&v68 = a3;
  sub_116D90();
  v47 = *(&v60 + 1);
  v48 = v60;
  v45 = v61;
  *&v67 = a1;
  *(&v67 + 1) = a2;
  *&v68 = a3;
  sub_116D60();
  v26 = v60;
  v27 = sub_48E94();

  v28 = v49;
  sub_72FCC(a1, a2, a3, v49);
  sub_731B0(&v53);
  v46 = v15;
  sub_479B4(v18, v15, &qword_1840F8, &qword_127D18);
  v29 = v50;
  sub_479B4(v28, v50, &qword_183EB0, &unk_127920);
  v30 = *(&v51 + 1);
  *a4 = v51;
  a4[1] = v30;
  a4[2] = v52;
  v31 = sub_46F9C(&qword_184100, &qword_127D20);
  sub_479B4(v15, a4 + v31[12], &qword_1840F8, &qword_127D18);
  v32 = (a4 + v31[16]);
  v33 = v47;
  *v32 = v48;
  *(v32 + 1) = v33;
  v34 = v45;
  *(v32 + 2) = v45;
  v32[3] = v27;
  sub_479B4(v29, a4 + v31[20], &qword_183EB0, &unk_127920);
  v35 = a4 + v31[24];
  v36 = v59;
  v66 = v59;
  v37 = v57;
  v38 = v58;
  v64 = v57;
  v65 = v58;
  v39 = v54;
  v60 = v53;
  v61 = v54;
  v40 = v56;
  v41 = v55;
  v62 = v55;
  v63 = v56;
  *v35 = v53;
  *(v35 + 1) = v39;
  *(v35 + 4) = v37;
  *(v35 + 5) = v38;
  *(v35 + 2) = v41;
  *(v35 + 3) = v40;
  v35[96] = v36;

  v42 = v34;

  v43 = v52;
  sub_479B4(&v60, &v67, &qword_183EB8, &unk_127930);
  sub_488C8(v49, &qword_183EB0, &unk_127920);
  sub_488C8(v18, &qword_1840F8, &qword_127D18);
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v67 = v53;
  v68 = v54;
  v69 = v55;
  v70 = v56;
  sub_488C8(&v67, &qword_183EB8, &unk_127930);
  sub_488C8(v50, &qword_183EB0, &unk_127920);

  sub_488C8(v46, &qword_1840F8, &qword_127D18);
}

uint64_t sub_72FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_46F9C(&qword_183DF0, &qword_1274E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v12 = v25;
  v13 = sub_510B4();

  if (v13 & 1) != 0 || (v26 = a1, v27 = a2, v28 = a3, sub_116D60(), v14 = v25, v15 = sub_50EDC(), v14, (v15))
  {
    *v11 = sub_116320();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v16 = sub_46F9C(&qword_183DF8, &qword_1274F0);
    sub_75410(a1, a2, a3, &v11[*(v16 + 44)]);
    v17 = sub_116610();
    sub_115FD0();
    v18 = &v11[*(v8 + 36)];
    *v18 = v17;
    *(v18 + 1) = v19;
    *(v18 + 2) = v20;
    *(v18 + 3) = v21;
    *(v18 + 4) = v22;
    v18[40] = 0;
    sub_548D0(v11, a4, &qword_183DF0, &qword_1274E8);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return (*(v9 + 56))(a4, v23, 1, v8);
}

void sub_731B0(uint64_t a4@<X8>)
{
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  sub_51FC0();
  v6 = v5;

  if (v6)
  {
    sub_4869C(v7, v8, v9);
    v10 = sub_116900();
    v12 = v11;
    v14 = v13;
    sub_116720();
    v15 = sub_1168C0();
    v34 = v16;
    v35 = v15;
    v33 = v17;

    sub_48928(v10, v12, v14 & 1);

    sub_116D60();
    sub_529CC();

    v18 = sub_116890();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    sub_48928(v35, v34, v33 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v12) = sub_116610();
    sub_115FD0();
    *(&v27 + 1) = v26;
    *(&v29 + 1) = v28;
    v30 = v22 & 1;
    v31 = v12;
    v32 = 1;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v24 = 0;
    KeyPath = 0;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v27 = 0uLL;
    v29 = 0uLL;
  }

  *a4 = v18;
  *(a4 + 8) = v20;
  *(a4 + 16) = v30;
  *(a4 + 24) = v24;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 0;
  *(a4 + 48) = v32;
  *(a4 + 56) = v31;
  *(a4 + 64) = v27;
  *(a4 + 80) = v29;
  *(a4 + 96) = 0;
}

uint64_t sub_733D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_116EB0();
  v6 = v5;
  v7 = a2 + *(sub_46F9C(&qword_183DB0, &qword_1274C8) + 36);
  sub_73474(v7);
  v8 = (v7 + *(sub_46F9C(&qword_183D98, &qword_1274C0) + 36));
  *v8 = v4;
  v8[1] = v6;
  return sub_479B4(a1, a2, &qword_183D70, &qword_127498);
}

__n128 sub_73474@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_46F9C(&qword_183D58, &qword_127480);
  __chkstk_darwin(v2 - 8);
  v4 = (v11 - v3);
  *v4 = sub_116EB0();
  v4[1] = v5;
  v6 = sub_46F9C(&qword_183D88, &qword_1274B0);
  sub_73BF4(v4 + *(v6 + 44));
  sub_116E90();
  sub_116190();
  sub_548D0(v4, a1, &qword_183D58, &qword_127480);
  v7 = a1 + *(sub_46F9C(&qword_183D90, &qword_1274B8) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_735C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_46F9C(&qword_184108, &qword_127D28);
  __chkstk_darwin(v8 - 8);
  v67 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v66 = &v57[-v11];
  v12 = sub_46F9C(&qword_182EA0, &qword_1248D8);
  __chkstk_darwin(v12 - 8);
  v14 = &v57[-v13];
  v15 = sub_115520();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v69 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v57[-v19];
  *&v74 = a1;
  *(&v74 + 1) = a2;
  v75 = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D90();
  v64 = *(&v70 + 1);
  v65 = v70;
  v63 = v71;
  *&v61 = a1;
  *&v74 = a1;
  *(&v74 + 1) = a2;
  *(&v61 + 1) = a2;
  v62 = a3;
  v75 = a3;
  sub_116D60();
  v21 = v70;
  sub_493F4(v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_488C8(v14, &qword_182EA0, &qword_1248D8);
    v69 = 0;
    v60 = 0;
    v68 = 0;
    v59 = 0.0;
  }

  else
  {
    (*(v16 + 32))(v20, v14, v15);
    (*(v16 + 16))(v69, v20, v15);
    v69 = sub_1168F0();
    v60 = v22;
    v24 = v23;
    v59 = v25;
    (*(v16 + 8))(v20, v15);
    v68 = (v24 & 1);
  }

  v26 = sub_116620();
  v27 = v26;
  v58 = v26;
  sub_115FD0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v84 = 0;
  v36 = *(&v61 + 1);
  v37 = v61;
  v74 = v61;
  v38 = v62;
  v75 = v62;
  sub_116D90();
  v39 = v70;
  v40 = v71;
  v74 = __PAIR128__(v36, v37);
  v75 = v38;
  sub_116D60();
  v41 = v70;
  v42 = sub_48E94();

  v74 = v39;
  v75 = v40;
  v76 = v42;
  sub_79C6C(v43, v44, v45);
  v46 = v66;
  sub_116A70();

  v47 = v67;
  sub_479B4(v46, v67, &qword_184108, &qword_127D28);
  *&v70 = v69;
  v48 = v60;
  *(&v70 + 1) = v60;
  *&v71 = v68;
  v49 = v59;
  *(&v71 + 1) = v59;
  LOBYTE(v72) = v27;
  *(&v72 + 1) = *v85;
  DWORD1(v72) = *&v85[3];
  *(&v72 + 1) = v29;
  *v73 = v31;
  *&v73[8] = v33;
  *&v73[16] = v35;
  v73[24] = 0;
  v50 = v70;
  *(a4 + 40) = v71;
  v51 = v72;
  *(a4 + 72) = *v73;
  *(a4 + 81) = *&v73[9];
  *(a4 + 24) = v50;
  v52 = v64;
  *a4 = v65;
  *(a4 + 8) = v52;
  v53 = v63;
  *(a4 + 16) = v63;
  *(a4 + 56) = v51;
  v54 = sub_46F9C(&qword_184118, &qword_127D30);
  sub_479B4(v47, a4 + *(v54 + 64), &qword_184108, &qword_127D28);

  v55 = v53;
  sub_479B4(&v70, &v74, &qword_184120, &qword_127D38);
  sub_488C8(v46, &qword_184108, &qword_127D28);
  sub_488C8(v47, &qword_184108, &qword_127D28);
  *&v74 = v69;
  *(&v74 + 1) = v48;
  v75 = v68;
  v76 = v49;
  v77 = v58;
  *v78 = *v85;
  *&v78[3] = *&v85[3];
  v79 = v29;
  v80 = v31;
  v81 = v33;
  v82 = v35;
  v83 = 0;
  sub_488C8(&v74, &qword_184120, &qword_127D38);
}

uint64_t sub_73BF4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1163D0();
  v21 = *(v1 - 8);
  v22 = v1;
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_46F9C(&qword_1840E0, &qword_127D08);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v20 = sub_46F9C(&qword_1840E8, &qword_127D10);
  __chkstk_darwin(v20);
  v8 = &v19 - v7;
  v9 = sub_116C00();
  v10 = sub_116720();
  KeyPath = swift_getKeyPath();
  v24 = v9;
  v25 = KeyPath;
  v26 = v10;
  sub_1166A0();
  sub_46F9C(&qword_182E30, &unk_127C70);
  sub_48748();
  sub_1169E0();

  v12 = [objc_opt_self() systemGrayColor];
  v13 = sub_116BE0();
  v14 = swift_getKeyPath();
  v15 = &v6[*(v4 + 36)];
  *v15 = v14;
  v15[1] = v13;
  sub_1163B0();
  sub_79B78();
  sub_116A90();
  v16 = v22;
  v17 = *(v21 + 8);
  v17(v3, v22);
  sub_488C8(v6, &qword_1840E0, &qword_127D08);
  sub_1163A0();
  sub_116160();
  v17(v3, v16);
  return sub_488C8(v8, &qword_1840E8, &qword_127D10);
}

unint64_t sub_73ED4()
{
  result = qword_183DA0;
  if (!qword_183DA0)
  {
    sub_47A1C(&qword_183D78, &qword_1274A0);
    sub_73F8C();
    sub_48800(&qword_183DB8, &qword_183D70, &qword_127498, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183DA0);
  }

  return result;
}

unint64_t sub_73F8C()
{
  result = qword_183DA8;
  if (!qword_183DA8)
  {
    sub_47A1C(&qword_183DB0, &qword_1274C8);
    sub_48800(&qword_183DB8, &qword_183D70, &qword_127498, &protocol conformance descriptor for VStack<A>);
    sub_48800(&qword_183DC0, &qword_183D98, &qword_1274C0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183DA8);
  }

  return result;
}

unint64_t sub_74070()
{
  result = qword_183DC8;
  if (!qword_183DC8)
  {
    sub_47A1C(&qword_183D60, &qword_127488);
    sub_48800(&qword_183DD0, &qword_183DD8, &qword_1274D0, &protocol conformance descriptor for VStack<A>);
    sub_48800(&qword_183DC0, &qword_183D98, &qword_1274C0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183DC8);
  }

  return result;
}

uint64_t sub_74154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v144 = a4;
  v7 = sub_46F9C(&qword_184030, &qword_127BE0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v136 = &v122 - v9;
  v10 = sub_46F9C(&qword_184038, &qword_127BE8);
  __chkstk_darwin(v10 - 8);
  v143 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v122 - v13;
  v139 = sub_46F9C(&qword_184040, &qword_127BF0);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v133 = &v122 - v15;
  v137 = sub_46F9C(&qword_183E20, &qword_127540);
  __chkstk_darwin(v137);
  v135 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v132 = &v122 - v18;
  __chkstk_darwin(v19);
  v131 = &v122 - v20;
  v21 = sub_46F9C(&qword_184048, &qword_127BF8);
  __chkstk_darwin(v21 - 8);
  v142 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v122 - v24;
  v26 = sub_46F9C(&qword_184070, &qword_127C18);
  __chkstk_darwin(v26 - 8);
  v141 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v122 - v29;
  *v30 = sub_116310();
  *(v30 + 1) = 0x4010000000000000;
  v30[16] = 0;
  v31 = *(sub_46F9C(&qword_184078, &qword_127C20) + 44);
  v140 = v30;
  sub_74EAC(a1, a2, a3, &v30[v31]);
  v147 = a1;
  v148 = a2;
  v149 = a3;
  v32 = sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v33 = v155;
  v34 = sub_512E0();

  v145 = v25;
  if (v34 & 1) == 0 && (v147 = a1, v148 = a2, v149 = a3, sub_116D60(), v35 = v155, v36 = sub_510B4(), v35, (v36) && (v37 = objc_opt_self(), v147 = a1, v148 = a2, v149 = a3, sub_116D60(), v38 = v155, v39 = sub_492C4(), v134 = a2, v40 = v39, v38, v41 = v40, a2 = v134, (v42 = [v37 localizedStringWithPercentage:v41]) != 0))
  {
    v130 = a3;
    v128 = v8;
    v129 = v7;
    v127 = v14;
    v43 = v42;
    v44 = sub_1171B0();
    v46 = v45;

    if (qword_18C0B0 != -1)
    {
      v47 = swift_once();
    }

    v126 = qword_18C0B8;
    v147 = v44;
    v148 = v46;
    sub_4869C(v47, v48, v49);
    v50 = sub_116900();
    v52 = v51;
    v54 = v53;
    sub_116720();
    v55 = sub_1168C0();
    v57 = v56;
    LODWORD(v124) = v58;
    v60 = v59;
    v125 = v59;

    sub_48928(v50, v52, v54 & 1);

    KeyPath = swift_getKeyPath();
    v147 = v55;
    v148 = v57;
    v62 = v124 & 1;
    LOBYTE(v149) = v124 & 1;
    v150 = v60;
    v151 = KeyPath;
    v152 = 0;
    v153 = 1;
    sub_1166C0();
    sub_46F9C(&qword_183E00, &unk_127530);
    sub_789F4();
    v63 = v131;
    sub_1169E0();
    sub_48928(v55, v57, v62);

    *(v63 + *(v137 + 36)) = v126;

    sub_116EB0();
    sub_116070();
    v126 = v155;
    v125 = v157;
    v124 = v159;
    v123 = v160;
    LOBYTE(v147) = 1;
    LOBYTE(v154) = v156;
    v146 = v158;
    v64 = v132;
    sub_479B4(v63, v132, &qword_183E20, &qword_127540);
    LOBYTE(v60) = v147;
    LOBYTE(v57) = v154;
    v65 = v146;
    v66 = v133;
    sub_479B4(v64, v133, &qword_183E20, &qword_127540);
    v67 = v66 + *(sub_46F9C(&qword_184068, &qword_127C10) + 48);
    *v67 = 0;
    *(v67 + 8) = v60;
    *(v67 + 16) = v126;
    *(v67 + 24) = v57;
    *(v67 + 32) = v125;
    *(v67 + 40) = v65;
    v68 = v123;
    *(v67 + 48) = v124;
    *(v67 + 56) = v68;
    sub_488C8(v63, &qword_183E20, &qword_127540);
    sub_488C8(v64, &qword_183E20, &qword_127540);
    v69 = v145;
    sub_548D0(v66, v145, &qword_184040, &qword_127BF0);
    (*(v138 + 56))(v69, 0, 1, v139);
    v14 = v127;
    v7 = v129;
    v8 = v128;
    a3 = v130;
    a2 = v134;
  }

  else
  {
    (*(v138 + 56))(v25, 1, 1, v139);
  }

  v147 = a1;
  v148 = a2;
  v149 = a3;
  sub_116D60();
  v70 = v154;
  v71 = sub_50EDC();

  v72 = 1;
  if (v71)
  {
    v73 = objc_opt_self();
    v147 = a1;
    v148 = a2;
    v130 = a3;
    v149 = a3;
    sub_116D60();
    v74 = v154;
    v75 = sub_4EB54();

    v76 = [v73 localizedStringWithPercentage:v75];
    if (v76)
    {
      v138 = v32;
      v139 = a1;
      v134 = a2;
      v128 = v8;
      v129 = v7;
      v127 = v14;
      v77 = v76;
      v78 = sub_1171B0();
      v80 = v79;

      if (qword_18C0B0 != -1)
      {
        v81 = swift_once();
      }

      v84 = qword_18C0B8;
      v147 = v78;
      v148 = v80;
      sub_4869C(v81, v82, v83);
      v85 = sub_116900();
      v87 = v86;
      v89 = v88;
      sub_116720();
      v90 = sub_1168C0();
      v92 = v91;
      v94 = v93;
      v96 = v95;

      sub_48928(v85, v87, v89 & 1);

      v97 = swift_getKeyPath();
      v147 = v90;
      v148 = v92;
      v94 &= 1u;
      LOBYTE(v149) = v94;
      v150 = v96;
      v151 = v97;
      v152 = 0;
      v153 = 1;
      sub_1166C0();
      sub_46F9C(&qword_183E00, &unk_127530);
      sub_789F4();
      v98 = v135;
      sub_1169E0();
      sub_48928(v90, v92, v94);

      v99 = v137;
      *(v98 + *(v137 + 36)) = v84;
      v100 = v139;
      v101 = v134;
      v147 = v139;
      v148 = v134;
      v102 = v130;
      v149 = v130;

      sub_116D60();
      v103 = v154;
      v104 = sub_512E0();

      v106 = 0;
      if ((v104 & 1) == 0)
      {
        v147 = v100;
        v148 = v101;
        v149 = v102;
        sub_116D60();
        v107 = v154;
        v106 = sub_510B4();
      }

      __chkstk_darwin(v105);
      *(&v122 - 4) = v100;
      *(&v122 - 3) = v101;
      *(&v122 - 2) = v102;
      v108 = sub_46F9C(&qword_184058, &qword_127C08);
      v109 = sub_79214();
      v110 = sub_79850();
      v111 = v106 & 1;
      v112 = v136;
      sub_8E234(v111, sub_798DC, (&v122 - 6), v99, v108, v109, v110, v136);
      sub_488C8(v98, &qword_183E20, &qword_127540);
      v14 = v127;
      sub_548D0(v112, v127, &qword_184030, &qword_127BE0);
      v72 = 0;
      v7 = v129;
      v8 = v128;
    }

    else
    {
      v72 = 1;
    }
  }

  (*(v8 + 56))(v14, v72, 1, v7);
  v113 = v140;
  v114 = v141;
  sub_479B4(v140, v141, &qword_184070, &qword_127C18);
  v115 = v145;
  v116 = v142;
  sub_479B4(v145, v142, &qword_184048, &qword_127BF8);
  v117 = v143;
  sub_479B4(v14, v143, &qword_184038, &qword_127BE8);
  v118 = v144;
  sub_479B4(v114, v144, &qword_184070, &qword_127C18);
  v119 = sub_46F9C(&qword_184080, &qword_127C28);
  v120 = v118 + v119[12];
  *v120 = 0;
  *(v120 + 8) = 1;
  sub_479B4(v116, v118 + v119[16], &qword_184048, &qword_127BF8);
  sub_479B4(v117, v118 + v119[20], &qword_184038, &qword_127BE8);
  sub_488C8(v14, &qword_184038, &qword_127BE8);
  sub_488C8(v115, &qword_184048, &qword_127BF8);
  sub_488C8(v113, &qword_184070, &qword_127C18);
  sub_488C8(v117, &qword_184038, &qword_127BE8);
  sub_488C8(v116, &qword_184048, &qword_127BF8);
  return sub_488C8(v114, &qword_184070, &qword_127C18);
}

uint64_t sub_74EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a2;
  v68 = a3;
  v65 = a4;
  v7 = sub_46F9C(&qword_184088, &qword_127C30);
  __chkstk_darwin(v7);
  v9 = &v62 - v8;
  v10 = sub_46F9C(&qword_184090, &qword_127C38);
  __chkstk_darwin(v10 - 8);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v62 - v13;
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v66 = sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v14 = v69;
  sub_51444();

  v15 = sub_116C20();
  v16 = sub_116720();
  KeyPath = swift_getKeyPath();
  v70 = v15;
  v71 = KeyPath;
  v72 = v16;
  sub_1166A0();
  sub_46F9C(&qword_182E30, &unk_127C70);
  sub_48748();
  sub_1169E0();

  v18 = &v9[*(sub_46F9C(&qword_184098, &qword_127C80) + 36)];
  v19 = *(sub_46F9C(&qword_1840A0, &qword_127C88) + 28);
  sub_116410();
  v20 = sub_116420();
  (*(*(v20 - 8) + 56))(v18 + v19, 0, 1, v20);
  *v18 = swift_getKeyPath();
  v62 = a1;
  v21 = v67;
  v22 = v68;
  v70 = a1;
  v71 = v67;
  v72 = v68;
  sub_116D60();
  v23 = v69;
  v24 = sub_52F08();

  v25 = swift_getKeyPath();
  v26 = &v9[*(v7 + 36)];
  *v26 = v25;
  v26[1] = v24;
  sub_799CC();
  sub_116A70();
  sub_488C8(v9, &qword_184088, &qword_127C30);
  v70 = a1;
  v71 = v21;
  v72 = v22;
  sub_116D60();
  v27 = v69;
  sub_517BC();
  v29 = v28;
  v31 = v30;

  v70 = v29;
  v71 = v31;
  sub_4869C(v32, v33, v34);
  v35 = sub_116900();
  v37 = v36;
  LOBYTE(v31) = v38;
  sub_116720();
  v39 = sub_1168C0();
  v41 = v40;
  LOBYTE(a1) = v42;

  sub_48928(v35, v37, v31 & 1);

  sub_1166C0();
  v43 = sub_116810();
  v45 = v44;
  v47 = v46;
  sub_48928(v39, v41, a1 & 1);

  v70 = v62;
  v71 = v67;
  v72 = v68;
  sub_116D60();
  v48 = v69;
  v49 = sub_52F08();

  v70 = v49;
  v50 = sub_116890();
  v52 = v51;
  LOBYTE(v39) = v53;
  v55 = v54;
  sub_48928(v43, v45, v47 & 1);

  v56 = swift_getKeyPath();
  v58 = v63;
  v57 = v64;
  sub_479B4(v63, v64, &qword_184090, &qword_127C38);
  v59 = v65;
  sub_479B4(v57, v65, &qword_184090, &qword_127C38);
  v60 = v59 + *(sub_46F9C(&qword_1840D0, &qword_127CF8) + 48);
  *v60 = v50;
  *(v60 + 8) = v52;
  *(v60 + 16) = v39 & 1;
  *(v60 + 24) = v55;
  *(v60 + 32) = v56;
  *(v60 + 40) = 0;
  *(v60 + 48) = 1;
  sub_488B8(v50, v52, v39 & 1);

  sub_488C8(v58, &qword_184090, &qword_127C38);
  sub_48928(v50, v52, v39 & 1);

  return sub_488C8(v57, &qword_184090, &qword_127C38);
}

uint64_t sub_75410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = sub_46F9C(&qword_184030, &qword_127BE0);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v110 = &v101 - v8;
  v9 = sub_46F9C(&qword_184038, &qword_127BE8);
  __chkstk_darwin(v9 - 8);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v120 = &v101 - v13;
  v112 = sub_46F9C(&qword_184040, &qword_127BF0);
  v14 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = &v101 - v15;
  v111 = sub_46F9C(&qword_183E20, &qword_127540);
  __chkstk_darwin(v111);
  v109 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v107 = &v101 - v18;
  __chkstk_darwin(v19);
  v21 = &v101 - v20;
  v22 = sub_46F9C(&qword_184048, &qword_127BF8);
  __chkstk_darwin(v22 - 8);
  v113 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v116 = &v101 - v25;
  v122 = a1;
  v123 = a2;
  v124 = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v26 = v130;
  v27 = sub_512E0();

  v118 = a2;
  v119 = a3;
  v117 = a1;
  if (v27 & 1) == 0 && (v122 = a1, v123 = a2, v124 = a3, sub_116D60(), v28 = v130, v29 = sub_510B4(), v28, (v29) && (v122 = a1, v123 = a2, v124 = a3, sub_116D60(), v30 = v130, v31 = sub_4E8E4(), v33 = v32, v30, v33))
  {
    v104 = sub_116BB0();
    v122 = v31;
    v123 = v33;
    sub_4869C(v104, v34, v35);
    v36 = sub_116900();
    v38 = v37;
    v40 = v39;
    v106 = a4;
    sub_116720();
    v105 = v11;
    v41 = sub_1168C0();
    v103 = v41;
    v43 = v42;
    LODWORD(v101) = v44;
    v102 = v45;

    sub_48928(v36, v38, v40 & 1);

    KeyPath = swift_getKeyPath();
    v122 = v41;
    v123 = v43;
    v47 = v101 & 1;
    LOBYTE(v124) = v101 & 1;
    v125 = v102;
    v126 = KeyPath;
    v127 = 0;
    v128 = 1;
    sub_1166C0();
    sub_46F9C(&qword_183E00, &unk_127530);
    sub_789F4();
    sub_1169E0();
    sub_48928(v103, v43, v47);

    *&v21[*(v111 + 36)] = v104;
    sub_116EB0();
    sub_116070();
    v104 = v130;
    v103 = v132;
    v102 = v134;
    v101 = v135;
    LOBYTE(v122) = 1;
    LOBYTE(v129) = v131;
    v121 = v133;
    v48 = v107;
    sub_479B4(v21, v107, &qword_183E20, &qword_127540);
    v49 = v122;
    v50 = v129;
    v51 = v121;
    v52 = v108;
    sub_479B4(v48, v108, &qword_183E20, &qword_127540);
    v53 = v52 + *(sub_46F9C(&qword_184068, &qword_127C10) + 48);
    *v53 = 0;
    *(v53 + 8) = v49;
    a4 = v106;
    *(v53 + 16) = v104;
    *(v53 + 24) = v50;
    *(v53 + 32) = v103;
    *(v53 + 40) = v51;
    v11 = v105;
    v54 = v101;
    *(v53 + 48) = v102;
    *(v53 + 56) = v54;
    sub_488C8(v21, &qword_183E20, &qword_127540);
    sub_488C8(v48, &qword_183E20, &qword_127540);
    v55 = v116;
    sub_548D0(v52, v116, &qword_184040, &qword_127BF0);
    (*(v14 + 56))(v55, 0, 1, v112);
  }

  else
  {
    v55 = v116;
    (*(v14 + 56))(v116, 1, 1, v112);
  }

  v57 = v117;
  v56 = v118;
  v122 = v117;
  v123 = v118;
  v58 = v119;
  v124 = v119;
  sub_116D60();
  v59 = v129;
  v60 = sub_50EDC();

  v61 = 1;
  if (v60)
  {
    v122 = v57;
    v123 = v56;
    v124 = v58;
    sub_116D60();
    v62 = v129;
    v63 = sub_4E934();
    v65 = v64;

    v61 = 1;
    if (v65)
    {
      v105 = v11;
      v106 = a4;
      v112 = sub_116BB0();
      v122 = v63;
      v123 = v65;
      sub_4869C(v112, v66, v67);
      v68 = sub_116900();
      v70 = v69;
      v72 = v71;
      sub_116720();
      v73 = sub_1168C0();
      v75 = v74;
      v77 = v76;
      v79 = v78;

      sub_48928(v68, v70, v72 & 1);

      v80 = swift_getKeyPath();
      v122 = v73;
      v123 = v75;
      v77 &= 1u;
      LOBYTE(v124) = v77;
      v125 = v79;
      v126 = v80;
      v127 = 0;
      v128 = 1;
      sub_1166C0();
      sub_46F9C(&qword_183E00, &unk_127530);
      sub_789F4();
      v81 = v109;
      sub_1169E0();
      v82 = v73;
      v83 = v77;
      v85 = v118;
      v84 = v119;
      sub_48928(v82, v75, v83);
      v86 = v117;

      v87 = v111;
      *(v81 + *(v111 + 36)) = v112;
      v122 = v86;
      v123 = v85;
      v124 = v84;
      sub_116D60();
      v88 = v129;
      LOBYTE(v79) = sub_512E0();

      v90 = 0;
      if ((v79 & 1) == 0)
      {
        v122 = v86;
        v123 = v85;
        v124 = v84;
        sub_116D60();
        v91 = v129;
        v90 = sub_510B4();
      }

      __chkstk_darwin(v89);
      *(&v101 - 4) = v86;
      *(&v101 - 3) = v85;
      *(&v101 - 2) = v84;
      v92 = sub_46F9C(&qword_184058, &qword_127C08);
      v93 = sub_79214();
      v94 = sub_79850();
      v95 = v90 & 1;
      v96 = v110;
      sub_8E234(v95, sub_79CD0, (&v101 - 6), v87, v92, v93, v94, v110);
      sub_488C8(v81, &qword_183E20, &qword_127540);
      sub_548D0(v96, v120, &qword_184030, &qword_127BE0);
      v61 = 0;
      a4 = v106;
      v11 = v105;
      v55 = v116;
    }
  }

  v97 = v120;
  (*(v114 + 56))(v120, v61, 1, v115);
  v98 = v113;
  sub_479B4(v55, v113, &qword_184048, &qword_127BF8);
  sub_479B4(v97, v11, &qword_184038, &qword_127BE8);
  *a4 = 0;
  *(a4 + 8) = 1;
  v99 = sub_46F9C(&qword_184050, &qword_127C00);
  sub_479B4(v98, a4 + *(v99 + 48), &qword_184048, &qword_127BF8);
  sub_479B4(v11, a4 + *(v99 + 64), &qword_184038, &qword_127BE8);
  sub_488C8(v97, &qword_184038, &qword_127BE8);
  sub_488C8(v55, &qword_184048, &qword_127BF8);
  sub_488C8(v11, &qword_184038, &qword_127BE8);
  return sub_488C8(v98, &qword_184048, &qword_127BF8);
}

uint64_t sub_75ED0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_116530();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_115520();
  __chkstk_darwin(v10 - 8);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_116300();
  sub_76128(*&a1, a2, a3, v12);
  v14 = sub_1168F0();
  v16 = v15;
  LOBYTE(a1) = v17;
  v19 = v18;
  v20 = sub_116620();
  sub_115FD0();
  v35 = 0;
  v34 = a1 & 1;
  v33 = 0;
  *&v26 = v13;
  *(&v26 + 1) = 0x3FF0000000000000;
  LOBYTE(v27) = 0;
  *(&v27 + 1) = v14;
  *&v28 = v16;
  BYTE8(v28) = a1 & 1;
  *&v29 = v19;
  BYTE8(v29) = v20;
  *&v30 = v21;
  *(&v30 + 1) = v22;
  *&v31 = v23;
  *(&v31 + 1) = v24;
  v32 = 0;
  sub_116520();
  sub_46F9C(&qword_183E28, &qword_127548);
  sub_78AAC();
  sub_116A80();
  (*(v7 + 8))(v9, v6);
  v36[4] = v30;
  v36[5] = v31;
  v37 = v32;
  v36[0] = v26;
  v36[1] = v27;
  v36[2] = v28;
  v36[3] = v29;
  return sub_488C8(v36, &qword_183E28, &qword_127548);
}

uint64_t sub_76128@<X0>(double a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v87 = a2;
  v88 = a3;
  v90 = a1;
  v80 = a4;
  v6 = sub_46F9C(&qword_182FE0, &unk_127BB0);
  __chkstk_darwin(v6 - 8);
  v82 = &v71 - v7;
  v8 = sub_46F9C(&qword_182FE8, &unk_124E20);
  __chkstk_darwin(v8 - 8);
  v83 = &v71 - v9;
  v84 = sub_46F9C(&qword_182FF0, &unk_127BC0);
  v81 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v71 - v10;
  v11 = sub_46F9C(&qword_182FF8, &qword_124E30);
  __chkstk_darwin(v11 - 8);
  v13 = &v71 - v12;
  v86 = sub_116740();
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_46F9C(&qword_184020, &unk_127BD0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v71 - v18;
  v20 = sub_46F9C(&qword_183560, &qword_129070);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v71 - v22;
  v91 = v90;
  v92 = a2;
  v93 = a3;
  v85 = sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v24 = v94;
  v25 = sub_49D40();

  v91 = v25;
  sub_ECF08();
  sub_1155C0();
  v26 = (*(v21 + 8))(v23, v20);
  sub_66C80(v26, v27, v28);
  sub_48800(&qword_184028, &qword_184020, &unk_127BD0, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Attributed);
  sub_117040();
  (*(v17 + 8))(v19, v16);
  v29 = v89;
  v30 = v86;
  v75 = *(v89 + 104);
  v75(v15, enum case for Font.TextStyle.largeTitle(_:), v86);
  v31 = enum case for Font.Design.rounded(_:);
  v32 = sub_116690();
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  v74 = v31;
  v73 = v34;
  v34(v13, v31, v32);
  v72 = *(v33 + 56);
  v72(v13, 0, 1, v32);
  sub_1166C0();
  *&v35 = COERCE_DOUBLE(sub_1166E0());
  v78 = v13;
  sub_488C8(v13, &qword_182FF8, &qword_124E30);
  v36 = *(v29 + 8);
  v77 = v15;
  v89 = v29 + 8;
  v71 = v36;
  v37 = (v36)(v15, v30);
  v91 = *&v35;
  v76 = sub_5481C(v37, v38, v39);
  sub_115540();
  v91 = v90;
  v92 = v87;
  v93 = v88;
  sub_116D60();
  v40 = v94;
  *&v41 = COERCE_DOUBLE(sub_5287C());

  v91 = *&v41;
  v45 = sub_547C8(v42, v43, v44);
  sub_115540();
  v46 = [objc_allocWithZone(NSNumberFormatter) init];
  v47 = [v46 percentSymbol];

  if (v47)
  {
    *&v48 = COERCE_DOUBLE(sub_1171B0());
    v50 = v49;
  }

  else
  {
    v50 = 0xE100000000000000;
    v48 = 37;
  }

  v91 = *&v48;
  v92 = v50;
  v51 = sub_115820();
  v52 = v82;
  (*(*(v51 - 8) + 56))(v82, 1, 1, v51);
  sub_115520();
  v53 = sub_7954C(&unk_183010, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_4869C(v53, v54, v55);
  v56 = v83;
  sub_1155B0();
  sub_488C8(v52, &qword_182FE0, &unk_127BB0);

  if ((*(v81 + 48))(v56, 1, v84) == 1)
  {
    v57 = &qword_182FE8;
    v58 = &unk_124E20;
    v59 = v56;
  }

  else
  {
    v60 = v56;
    v61 = v79;
    sub_548D0(v60, v79, &qword_182FF0, &unk_127BC0);
    v83 = v45;
    v62 = v77;
    v63 = v86;
    v75(v77, enum case for Font.TextStyle.callout(_:), v86);
    v64 = v78;
    v73(v78, v74, v32);
    v72(v64, 0, 1, v32);
    sub_1166C0();
    v65 = sub_1166E0();
    sub_488C8(v64, &qword_182FF8, &qword_124E30);
    v71(v62, v63);
    sub_48800(&qword_183020, &qword_182FF0, &unk_127BC0, &protocol conformance descriptor for Range<A>);
    v66 = sub_115550();
    v94 = v65;
    sub_115580();
    v66(&v91, 0);
    v91 = v90;
    v92 = v87;
    v93 = v88;
    sub_116D60();
    v67 = v94;
    v68 = sub_529C8();

    v69 = sub_115550();
    v94 = v68;
    sub_115580();
    v69(&v91, 0);
    v59 = v61;
    v57 = &qword_182FF0;
    v58 = &unk_127BC0;
  }

  return sub_488C8(v59, v57, v58);
}

uint64_t sub_76AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v20[1] = a4;
  v9 = sub_116530();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_46F9C(&qword_183E48, &qword_127558);
  __chkstk_darwin(v13);
  v15 = v20 - v14;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v16 = v20[2];
  v17 = sub_49D40();

  *v15 = sub_1163E0();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v18 = sub_46F9C(&qword_183E50, &qword_127560);
  sub_76CDC(a1, a2, a3, v17, &v15[*(v18 + 44)], a5);
  sub_116520();
  sub_48800(&qword_183E58, &qword_183E48, &qword_127558, &protocol conformance descriptor for VStack<A>);
  sub_116A80();
  (*(v10 + 8))(v12, v9);
  return sub_488C8(v15, &qword_183E48, &qword_127558);
}

uint64_t sub_76CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v74 = a5;
  v72 = sub_46F9C(&qword_183F60, &qword_127B30);
  __chkstk_darwin(v72);
  v16 = &v60[-v15];
  v73 = sub_46F9C(&qword_183F68, &qword_127B38);
  __chkstk_darwin(v73);
  v18 = &v60[-v17];
  v97 = *&a1;
  v98 = *&a2;
  v99 = *&a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v19 = v83;
  *&v20 = COERCE_DOUBLE(sub_512E0());

  if ((v20 & 1) == 0)
  {
    v71 = a4;
    v97 = *&a1;
    v98 = *&a2;
    v99 = *&a3;
    sub_116D60();
    v29 = v83;
    v30 = sub_492C4();

    v97 = *&a1;
    v98 = *&a2;
    v99 = *&a3;
    sub_116D60();
    v31 = v83;
    v32 = sub_492C4();

    if (__OFSUB__(100, v32))
    {
      __break(1u);
      goto LABEL_14;
    }

    v33 = a6 + -2.0;
    a6 = (a6 + -2.0) * v30 / 100.0;
    v34 = v33 * (100 - v32);
    v70 = sub_116320();
    v82 = 0;
    v97 = *&a1;
    v98 = *&a2;
    v99 = *&a3;
    sub_46F9C(&qword_183D28, &qword_127468);
    sub_116D60();
    v35 = v83;
    v36 = sub_492C4();

    v97 = *&a1;
    v98 = *&a2;
    v99 = *&a3;
    sub_116D60();
    v37 = v83;
    v69 = sub_529CC();

    v6 = v36;
    v7 = v71;
    v38 = (a6 + -5.0) / a6 * v36;
    v39 = (v71 - v38) / (v36 - v38);
    v68 = a3;
    if (v39 >= 1.0)
    {
      v9 = 3.0;
      if (v38 < v7)
      {
        goto LABEL_11;
      }
    }

    else if (v38 < v7)
    {
      v9 = v39 * 3.0;
      goto LABEL_11;
    }

    v9 = 0.0;
LABEL_11:
    v64 = v16;
    v32 = &v83;
    *&a3 = COERCE_DOUBLE(v81);
    v8 = v34 / 100.0;
    sub_116EB0();
    sub_116070();
    v20 = v75;
    v71 = v79;
    v66 = v77;
    v67 = v80;
    LOBYTE(v81[0]) = 1;
    v113 = v76;
    v112 = v78;
    v65 = sub_116F10();
    v97 = *&a1;
    v98 = *&a2;
    v99 = *&v68;
    sub_116D60();
    v31 = v83;
    LOBYTE(a4) = sub_512E0();

    LODWORD(v16) = LOBYTE(v81[0]);
    LODWORD(v30) = v113;
    LODWORD(v31) = v112;
    if (qword_18C0C0 == -1)
    {
LABEL_12:
      v83 = 0.0;
      LOBYTE(v84) = v16;
      v85 = *&v20;
      LOBYTE(v86) = v30;
      v41 = v66;
      v40 = v67;
      v87 = v66;
      v88 = LOBYTE(v31);
      v62 = LODWORD(v31);
      v63 = v30;
      v42 = v71;
      v89 = v71;
      v90 = v67;
      v43 = *v32;
      *(a3 + 6) = *(v32 + 1);
      v44 = *(v32 + 3);
      *(a3 + 10) = *(v32 + 2);
      *(a3 + 14) = v44;
      v45 = a4 & 1;
      v68 = qword_18C0C8;
      v61 = v16;
      v46 = v65;
      v91 = v65;
      v92 = a4 & 1;
      *(a3 + 2) = v43;
      *(a3 + 65) = *(v32 + 57);

      v47 = v69;

      sub_479B4(&v83, &v97, &qword_184018, &qword_127BA8);
      v97 = 0.0;
      LOBYTE(v98) = v61;
      v99 = *&v20;
      LOBYTE(v100) = v63;
      v101 = v41;
      v102 = v62;
      v103 = v42;
      *&v104 = v40;
      *(&v104 + 1) = v46;
      LOBYTE(v105) = v45;
      sub_488C8(&v97, &qword_184018, &qword_127BA8);

      v83 = v6;
      v84 = v7;
      v85 = a6;
      v86 = v47;
      v87 = v9;
      *(v32 + 7) = *(a3 + 6);
      *(v32 + 9) = *(a3 + 10);
      *(v32 + 11) = *(a3 + 14);
      *(v32 + 97) = *(a3 + 65);
      *(v32 + 5) = *(a3 + 2);
      v93 = *(a3 + 3);
      v48 = v81[0];
      *(v32 + 113) = v81[0];
      v94 = 0x4000000000000000;
      *(v32 + 8) = xmmword_127410;
      v95 = v8;
      v49 = v68;
      v96 = v68;
      v97 = v6;
      v98 = v7;
      v99 = a6;
      v100 = v47;
      v101 = v9;
      *(v32 + 25) = *(a3 + 2);
      v50 = *(a3 + 6);
      v51 = *(a3 + 10);
      v52 = *(a3 + 14);
      *&v106[9] = *(a3 + 65);
      *v106 = v52;
      v105 = v51;
      v104 = v50;
      *&v107[3] = *(a3 + 3);
      *v107 = v48;
      v108 = 0x4000000000000000;
      v109 = xmmword_127410;
      v110 = v8;
      v111 = v49;
      sub_479B4(&v83, &v75, &qword_183F70, &qword_127B40);
      sub_488C8(&v97, &qword_183F70, &qword_127B40);
      v53 = *(v32 + 2);
      *(a3 + 143) = *(v32 + 3);
      *(a3 + 127) = v53;
      v54 = *(v32 + 7);
      *(a3 + 191) = *(v32 + 6);
      *(a3 + 207) = v54;
      v55 = *(v32 + 9);
      *(a3 + 223) = *(v32 + 8);
      *(a3 + 239) = v55;
      v56 = *(v32 + 5);
      *(a3 + 159) = *(v32 + 4);
      *(a3 + 175) = v56;
      v57 = *(v32 + 1);
      *(a3 + 95) = *v32;
      *(a3 + 111) = v57;
      v58 = v82;
      v59 = v64;
      *v64 = v70;
      v59[1] = 0;
      *(v59 + 16) = v58;
      *(v59 + 129) = *(a3 + 50);
      *(v59 + 145) = *(a3 + 54);
      *(v59 + 161) = *(a3 + 58);
      v59[22] = *(a3 + 247);
      *(v59 + 65) = *(a3 + 34);
      *(v59 + 81) = *(a3 + 38);
      *(v59 + 97) = *(a3 + 42);
      *(v59 + 113) = *(a3 + 46);
      *(v59 + 17) = *(a3 + 22);
      *(v59 + 33) = *(a3 + 26);
      *(v59 + 49) = *(a3 + 30);
      swift_storeEnumTagMultiPayload();
      sub_46F9C(&qword_183F78, &qword_127B48);
      sub_48800(&qword_183F80, &qword_183F68, &qword_127B38, &protocol conformance descriptor for ZStack<A>);
      sub_48800(&qword_183F88, &qword_183F78, &qword_127B48, &protocol conformance descriptor for HStack<A>);
      return sub_116470();
    }

LABEL_14:
    swift_once();
    goto LABEL_12;
  }

  v21 = a4;
  v97 = *&a1;
  v98 = *&a2;
  v99 = *&a3;
  sub_116D60();
  v22 = v83;
  v23 = sub_4EB54();

  if (v23 < a4)
  {
    v21 = v23;
  }

  v97 = *&a1;
  v98 = *&a2;
  v99 = *&a3;
  sub_116D60();
  v24 = v83;
  v25 = sub_4EB54();

  *v18 = sub_116E80();
  v18[1] = v26;
  v27 = sub_46F9C(&qword_183F90, &qword_127B50);
  sub_77534(a1, a2, a3, a4, v18 + *(v27 + 44), v21 / v25, a6);
  sub_479B4(v18, v16, &qword_183F68, &qword_127B38);
  swift_storeEnumTagMultiPayload();
  sub_46F9C(&qword_183F78, &qword_127B48);
  sub_48800(&qword_183F80, &qword_183F68, &qword_127B38, &protocol conformance descriptor for ZStack<A>);
  sub_48800(&qword_183F88, &qword_183F78, &qword_127B48, &protocol conformance descriptor for HStack<A>);
  sub_116470();
  return sub_488C8(v18, &qword_183F68, &qword_127B38);
}

uint64_t sub_77534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v55 = a4;
  v51 = a3;
  *(&v50 + 1) = a2;
  *&v50 = a1;
  v58 = a5;
  v53 = sub_46F9C(&qword_183F98, &qword_127B58);
  __chkstk_darwin(v53);
  v52 = &v49 - v7;
  v8 = sub_46F9C(&qword_183FA0, &qword_127B60);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = sub_46F9C(&qword_183FA8, &qword_127B68);
  __chkstk_darwin(v11 - 8);
  v57 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v56 = &v49 - v14;
  v15 = sub_46F9C(&qword_183FB0, &qword_127B70);
  __chkstk_darwin(v15);
  v54 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = sub_116180();
  v21 = *(v20 + 20);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = sub_116390();
  v24 = *(*(v23 - 8) + 104);
  v24(&v19[v21], v22, v23);
  __asm { FMOV            V0.2D, #5.0 }

  v49 = _Q0;
  *v19 = _Q0;
  if (qword_18C0C0 != -1)
  {
    swift_once();
  }

  v30 = qword_18C0C8;
  *&v19[*(sub_46F9C(&qword_183FB8, &qword_127B78) + 36)] = v30;

  sub_116EB0();
  sub_116070();
  v31 = &v19[*(v15 + 36)];
  v32 = v60;
  *v31 = v59;
  *(v31 + 1) = v32;
  *(v31 + 2) = v61;
  v24(&v10[*(v20 + 20)], v22, v23);
  *v10 = v49;
  v65 = v50;
  *&v66 = v51;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v33 = v62;
  v34 = sub_529CC();

  sub_5AB0C(0, v34, &v62);
  v35 = v62;

  v36 = &v10[*(sub_46F9C(&qword_183FC0, &qword_127B80) + 36)];
  *v36 = v35;
  v37 = v63;
  *(v36 + 24) = v64;
  *(v36 + 8) = v37;
  sub_116EB0();
  sub_116070();
  v38 = &v10[*(sub_46F9C(&qword_183FC8, &qword_127B88) + 36)];
  v39 = v66;
  *v38 = v65;
  *(v38 + 1) = v39;
  *(v38 + 2) = v67;
  v40 = sub_116EE0();
  v41 = &v10[*(v8 + 36)];
  v42 = v55;
  *v41 = v40;
  v41[1] = v42;
  sub_479B4(v10, v52, &qword_183FA0, &qword_127B60);
  swift_storeEnumTagMultiPayload();
  sub_79624();
  v43 = v56;
  sub_116470();
  sub_488C8(v10, &qword_183FA0, &qword_127B60);
  v44 = v54;
  sub_479B4(v19, v54, &qword_183FB0, &qword_127B70);
  v45 = v57;
  sub_479B4(v43, v57, &qword_183FA8, &qword_127B68);
  v46 = v58;
  sub_479B4(v44, v58, &qword_183FB0, &qword_127B70);
  v47 = sub_46F9C(&qword_184010, &qword_127BA0);
  sub_479B4(v45, v46 + *(v47 + 48), &qword_183FA8, &qword_127B68);
  sub_488C8(v43, &qword_183FA8, &qword_127B68);
  sub_488C8(v19, &qword_183FB0, &qword_127B70);
  sub_488C8(v45, &qword_183FA8, &qword_127B68);
  return sub_488C8(v44, &qword_183FB0, &qword_127B70);
}

uint64_t sub_77BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (qword_18C0C0 != -1)
  {
    v15 = a1;
    swift_once();
    a1 = v15;
  }

  v4 = qword_18C0C8;
  v5 = *(a1 + 8);
  if (*a1 < v5)
  {
    v5 = *a1;
  }

  v6 = 5.0 - *(a1 + 32);
  v7 = v3 * (v5 / *a1);
  v8 = *(a1 + 24);

  sub_5AB0C(0, v8, &v26);
  v9 = v26;
  v11 = v27;
  v10 = v28;
  *&v17 = 0x4014000000000000;
  *(&v17 + 1) = v6;
  *&v18 = 0x4024000000000000;
  *(&v18 + 1) = v7;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  *a2 = xmmword_127420;
  *(a2 + 16) = 0x4024000000000000;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v12 = v17;
  *(a2 + 56) = v18;
  *(a2 + 40) = v12;
  *(a2 + 104) = v21;
  v13 = v19;
  *(a2 + 88) = v20;
  *(a2 + 72) = v13;
  v22[0] = 0x4014000000000000;
  *&v22[1] = v6;
  v22[2] = 0x4024000000000000;
  *&v22[3] = v7;
  v23 = v9;
  v24 = v11;
  v25 = v10;

  sub_479B4(&v17, &v16, &qword_183F58, &qword_127B28);
  sub_488C8(v22, &qword_183F58, &qword_127B28);
}

__n128 sub_77D64@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_116EC0();
  v5 = v4;
  sub_77BD0(v1, &v10);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[5] = v15;
  v24[6] = v16;
  sub_479B4(&v17, &v9, &qword_183E60, &qword_127568);
  sub_488C8(v24, &qword_183E60, &qword_127568);
  *a1 = v3;
  *(a1 + 8) = v5;
  v6 = v22;
  *(a1 + 80) = v21;
  *(a1 + 96) = v6;
  *(a1 + 112) = v23;
  v7 = v18;
  *(a1 + 16) = v17;
  *(a1 + 32) = v7;
  result = v20;
  *(a1 + 48) = v19;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_77E3C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v81 = a1;
  v79 = sub_46F9C(&qword_183F38, &qword_127B08) - 8;
  __chkstk_darwin(v79);
  v80 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v66 - v9;
  __chkstk_darwin(v10);
  v78 = &v66 - v11;
  v82 = sub_46F9C(&qword_183F40, &qword_127B10) - 8;
  __chkstk_darwin(v82);
  v77 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v66 - v14);
  __chkstk_darwin(v16);
  v18 = (&v66 - v17);
  v74 = sub_116180();
  v19 = *(v74 + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v72 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = sub_116390();
  v22 = *(v21 - 8);
  v71 = *(v22 + 104);
  v73 = v22 + 104;
  v71(v18 + v19, v20, v21);
  *v18 = a2;
  v18[1] = a2;
  v70 = a4;
  sub_116EB0();
  sub_116070();
  v69 = sub_46F9C(&qword_183F48, &qword_127B18);
  v23 = (v18 + *(v69 + 36));
  v75 = v18;
  v24 = v102;
  *v23 = v101;
  v23[1] = v24;
  v23[2] = v103;
  v25 = sub_116EB0();
  v66 = v26;
  v67 = v25;
  v68 = a4 * 0.5;
  sub_116EB0();
  sub_116070();
  v27 = v104;
  v28 = v105;
  v29 = v106;
  v30 = v107;
  v32 = v108;
  v31 = v109;
  sub_116EC0();
  sub_116190();
  v100 = v28;
  v99 = v30;
  v33 = v18 + *(v82 + 44);
  v34 = v66;
  *v33 = v67;
  *(v33 + 1) = v34;
  *(v33 + 2) = v27;
  v33[24] = v28;
  *(v33 + 4) = v29;
  v33[40] = v30;
  *(v33 + 6) = v32;
  *(v33 + 7) = v31;
  v35 = v93;
  *(v33 + 4) = v92;
  *(v33 + 5) = v35;
  v36 = v98;
  v37 = v96;
  *(v33 + 9) = v97;
  *(v33 + 10) = v36;
  v38 = v95;
  *(v33 + 6) = v94;
  *(v33 + 7) = v38;
  *(v33 + 8) = v37;
  v71(v15 + *(v74 + 20), v72, v21);
  *v15 = a3;
  v15[1] = a3;
  sub_116EB0();
  sub_116070();
  v39 = (v15 + *(v69 + 36));
  v40 = v111;
  *v39 = v110;
  v39[1] = v40;
  v39[2] = v112;
  v41 = sub_116EB0();
  v43 = v42;
  sub_116EB0();
  sub_116070();
  v44 = v113;
  v45 = v114;
  v46 = v115;
  LOBYTE(v21) = v116;
  v47 = v117;
  v48 = v118;
  sub_116ED0();
  sub_116190();
  v91 = v45;
  v90 = v21;
  v49 = v15 + *(v82 + 44);
  *v49 = v41;
  *(v49 + 1) = v43;
  *(v49 + 2) = v44;
  v49[24] = v45;
  *(v49 + 4) = v46;
  v49[40] = v21;
  *(v49 + 6) = v47;
  *(v49 + 7) = v48;
  v50 = v84;
  *(v49 + 4) = v83;
  *(v49 + 5) = v50;
  v51 = v89;
  v52 = v87;
  *(v49 + 9) = v88;
  *(v49 + 10) = v51;
  v53 = v86;
  *(v49 + 6) = v85;
  *(v49 + 7) = v53;
  *(v49 + 8) = v52;
  sub_116ED0();
  sub_116190();
  v54 = v76;
  sub_548D0(v15, v76, &qword_183F40, &qword_127B10);
  v55 = v78;
  v56 = (v54 + *(v79 + 44));
  v57 = v124;
  v56[4] = v123;
  v56[5] = v57;
  v56[6] = v125;
  v58 = v120;
  *v56 = v119;
  v56[1] = v58;
  v59 = v122;
  v56[2] = v121;
  v56[3] = v59;
  sub_548D0(v54, v55, &qword_183F38, &qword_127B08);
  v60 = v75;
  v61 = v77;
  sub_479B4(v75, v77, &qword_183F40, &qword_127B10);
  v62 = v80;
  sub_479B4(v55, v80, &qword_183F38, &qword_127B08);
  v63 = v81;
  sub_479B4(v61, v81, &qword_183F40, &qword_127B10);
  v64 = sub_46F9C(&qword_183F50, &qword_127B20);
  sub_479B4(v62, v63 + *(v64 + 48), &qword_183F38, &qword_127B08);
  sub_488C8(v55, &qword_183F38, &qword_127B08);
  sub_488C8(v60, &qword_183F40, &qword_127B10);
  sub_488C8(v62, &qword_183F38, &qword_127B08);
  return sub_488C8(v61, &qword_183F40, &qword_127B10);
}

double sub_784BC@<D0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  *a2 = sub_116EC0();
  a2[1] = v7;
  v8 = sub_46F9C(&qword_183E68, &qword_127570);
  sub_77E3C(a2 + *(v8 + 44), v4, v5, v6);
  sub_116EB0();
  sub_116070();
  v9 = (a2 + *(sub_46F9C(&qword_183E70, &qword_127578) + 36));
  *v9 = v11;
  v9[1] = v12;
  result = *&v13;
  v9[2] = v13;
  return result;
}

uint64_t sub_78598(uint64_t a1, id *a2)
{
  result = sub_117190();
  *a2 = 0;
  return result;
}

uint64_t sub_78610(uint64_t a1, id *a2)
{
  v3 = sub_1171A0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_78690@<X0>(uint64_t *a2@<X8>)
{
  sub_1171B0();
  v3 = sub_117170();

  *a2 = v3;
  return result;
}

uint64_t sub_786D4()
{
  sub_1171B0();
  v0 = sub_117280();

  return v0;
}

uint64_t sub_78710(uint64_t a1)
{
  sub_1171B0();
  sub_117200();
}

Swift::Int sub_78764(uint64_t a1)
{
  sub_1171B0();
  sub_117A90();
  sub_117200();
  v1 = sub_117AD0();

  return v1;
}

uint64_t sub_787D8(void *a1, uint64_t *a2)
{
  v2 = sub_1171B0();
  v4 = v3;
  if (v2 == sub_1171B0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1179E0();
  }

  return v7 & 1;
}

uint64_t sub_78860@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_117170();

  *a2 = v3;
  return result;
}

uint64_t sub_788A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1171B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_788D4(uint64_t a1)
{
  v2 = sub_7954C(&qword_183E78, type metadata accessor for Key, &unk_127AC0);
  v3 = sub_7954C(&qword_183F30, type metadata accessor for Key, &unk_127A14);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_78990@<X0>(uint64_t a1@<X8>)
{
  result = sub_1162C0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_789F4()
{
  result = qword_183E08;
  if (!qword_183E08)
  {
    sub_47A1C(&qword_183E00, &unk_127530);
    sub_48800(&qword_183E10, &qword_183E18, &qword_129710, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183E08);
  }

  return result;
}

unint64_t sub_78AAC()
{
  result = qword_183E30;
  if (!qword_183E30)
  {
    sub_47A1C(&qword_183E28, &qword_127548);
    sub_48800(&qword_183E38, &qword_183E40, &qword_127550, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183E30);
  }

  return result;
}

uint64_t sub_78B64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1161E0();
  *a1 = result;
  return result;
}

uint64_t sub_78BE0(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1840D8, &qword_127D00);
  __chkstk_darwin(v2 - 8);
  sub_479B4(a1, &v5 - v3, &qword_1840D8, &qword_127D00);
  return sub_116210();
}

uint64_t sub_78D44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_78D8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_78DD8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_78E00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_78E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_78E9C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_78EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_78EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_78F40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_78F88(uint64_t result, int a2, int a3)
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

uint64_t sub_78FE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_79000(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

unint64_t sub_79040()
{
  result = qword_183E80;
  if (!qword_183E80)
  {
    sub_47A1C(&qword_183E88, &qword_1278F8);
    sub_790CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183E80);
  }

  return result;
}

unint64_t sub_790CC()
{
  result = qword_183E90;
  if (!qword_183E90)
  {
    sub_47A1C(&qword_183E98, &unk_127900);
    sub_723A8();
    sub_48800(&qword_183CE8, &qword_183CF0, &qword_1273E0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183E90);
  }

  return result;
}

unint64_t sub_79188()
{
  result = qword_183EA0;
  if (!qword_183EA0)
  {
    sub_47A1C(&qword_183EA8, &unk_127910);
    sub_73ED4();
    sub_74070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183EA0);
  }

  return result;
}

unint64_t sub_79214()
{
  result = qword_183ED0;
  if (!qword_183ED0)
  {
    sub_47A1C(&qword_183E20, &qword_127540);
    sub_47A1C(&qword_183E00, &unk_127530);
    sub_789F4();
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_183ED8, &qword_183EE0, &qword_129730, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183ED0);
  }

  return result;
}

uint64_t sub_79308()
{
  sub_47A1C(&qword_183E28, &qword_127548);
  sub_78AAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7936C()
{
  sub_47A1C(&qword_183E48, &qword_127558);
  sub_48800(&qword_183E58, &qword_183E48, &qword_127558, &protocol conformance descriptor for VStack<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_7944C()
{
  result = qword_183EF8;
  if (!qword_183EF8)
  {
    sub_47A1C(&qword_183E70, &qword_127578);
    sub_48800(&qword_183F00, &qword_183F08, &qword_127948, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183EF8);
  }

  return result;
}

uint64_t sub_7954C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_79624()
{
  result = qword_183FD0;
  if (!qword_183FD0)
  {
    sub_47A1C(&qword_183FA0, &qword_127B60);
    sub_796DC();
    sub_48800(&qword_184000, &qword_184008, &qword_127B98, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183FD0);
  }

  return result;
}

unint64_t sub_796DC()
{
  result = qword_183FD8;
  if (!qword_183FD8)
  {
    sub_47A1C(&qword_183FC8, &qword_127B88);
    sub_79768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183FD8);
  }

  return result;
}

unint64_t sub_79768()
{
  result = qword_183FE0;
  if (!qword_183FE0)
  {
    sub_47A1C(&qword_183FC0, &qword_127B80);
    sub_7954C(&qword_183FE8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    sub_48800(&qword_183FF0, &qword_183FF8, &qword_127B90, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183FE0);
  }

  return result;
}

unint64_t sub_79850()
{
  result = qword_184060;
  if (!qword_184060)
  {
    sub_47A1C(&qword_184058, &qword_127C08);
    sub_79214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184060);
  }

  return result;
}

double sub_798E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *v8 = *(v2 + 16);
  *&v8[8] = *(v2 + 24);
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  sub_491E0();

  sub_116ED0();
  sub_116070();
  sub_479B4(a1, a2, &qword_183E20, &qword_127540);
  v5 = (a2 + *(sub_46F9C(&qword_184058, &qword_127C08) + 36));
  *v5 = *v8;
  v5[1] = *&v8[16];
  result = *&v9;
  v5[2] = v9;
  return result;
}

unint64_t sub_799CC()
{
  result = qword_1840A8;
  if (!qword_1840A8)
  {
    sub_47A1C(&qword_184088, &qword_127C30);
    sub_79A84();
    sub_48800(&qword_1840C0, &qword_1840C8, &qword_127CF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1840A8);
  }

  return result;
}

unint64_t sub_79A84()
{
  result = qword_1840B0;
  if (!qword_1840B0)
  {
    sub_47A1C(&qword_184098, &qword_127C80);
    sub_47A1C(&qword_182E30, &unk_127C70);
    sub_48748();
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_1840B8, &qword_1840A0, &qword_127C88, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1840B0);
  }

  return result;
}

unint64_t sub_79B78()
{
  result = qword_1840F0;
  if (!qword_1840F0)
  {
    sub_47A1C(&qword_1840E0, &qword_127D08);
    sub_47A1C(&qword_182E30, &unk_127C70);
    sub_48748();
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_1840C0, &qword_1840C8, &qword_127CF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1840F0);
  }

  return result;
}

unint64_t sub_79C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_184110;
  if (!qword_184110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184110);
  }

  return result;
}

uint64_t sub_79CD4(uint64_t a1)
{
  v3 = sub_46F9C(&qword_184128, &qword_127D40);
  __chkstk_darwin(v3);
  sub_479B4(a1, &v6 - v4, &qword_184128, &qword_127D40);
  sub_116CB0();
  return sub_488C8(a1, &qword_184128, &qword_127D40);
}

uint64_t sub_79D9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for FullDayUsageView(255, v5, v6, a3);
  type metadata accessor for DynamicUsageView(255, v5, v6, v7);
  swift_getTupleTypeMetadata2();
  sub_116F20();
  swift_getWitnessTable();
  v8 = sub_116D50();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v18[-v13];
  sub_116E90();
  v19 = v5;
  v20 = v6;
  v21 = v3;
  sub_116D40();
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v15(v14, v11, v8);
  v16 = *(v9 + 8);
  v16(v11, v8);
  v15(a2, v14, v8);
  return (v16)(v14, v8);
}

uint64_t sub_79FD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v42 = a4;
  v41 = type metadata accessor for DynamicUsageView(0, a1, a2, a3);
  v45 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v33 - v8;
  v9 = sub_46F9C(&qword_184130, &qword_127D48);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_116DC0();
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v36 = type metadata accessor for FullDayUsageView(0, a1, a2, v15);
  v44 = *(v36 - 8);
  __chkstk_darwin(v36);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v43 = &v33 - v19;
  v33 = a1;
  v21 = type metadata accessor for DailyBatteryUsageView(0, a1, a2, v20);
  sub_116DC0();
  sub_116D90();
  v34 = *(v21 + 36);
  sub_46F9C(&qword_184428, &qword_1281B0);
  sub_116CE0();
  sub_7A45C(v14, v11, a1, a2, v17);
  v22 = v36;
  WitnessTable = swift_getWitnessTable();
  v23 = v44;
  v35 = *(v44 + 16);
  v35(v43, v17, v22);
  v38 = *(v23 + 8);
  v44 = v23 + 8;
  v38(v17, v22);
  sub_116D90();
  sub_116CE0();
  v24 = v39;
  sub_7A50C(v14, v11, v33, a2, v39);
  v25 = v41;
  v34 = swift_getWitnessTable();
  v26 = v45;
  v27 = *(v45 + 16);
  v28 = v40;
  v27(v40, v24, v25);
  v29 = *(v26 + 8);
  v45 = v26 + 8;
  v29(v24, v25);
  v30 = v43;
  v35(v17, v43, v22);
  v49[0] = v17;
  v27(v24, v28, v25);
  v49[1] = v24;
  v48[0] = v22;
  v48[1] = v25;
  v46 = WitnessTable;
  v47 = v34;
  sub_7A8C4(v49, 2uLL, v48);
  v29(v28, v25);
  v31 = v38;
  v38(v30, v22);
  v29(v24, v25);
  return v31(v17, v22);
}

uint64_t sub_7A45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_116DC0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = type metadata accessor for FullDayUsageView(0, a3, a4, v11);
  return sub_548D0(a2, a5 + *(v12 + 36), &qword_184130, &qword_127D48);
}

uint64_t sub_7A50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v36 = a1;
  v38 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = sub_117620();
  __chkstk_darwin(v37);
  v13 = &v31 - v12;
  v32 = &v31 - v12;
  v15 = type metadata accessor for DynamicUsageView(0, a3, a4, v14);
  v33 = v15[11];
  (*(*(AssociatedTypeWitness - 8) + 56))(v13, 1, 1, AssociatedTypeWitness);
  sub_7DAB8(v13);
  v16 = sub_116DC0();
  v35 = *(v16 - 8);
  v17 = v36;
  (*(v35 + 16))(a5, v36, v16);
  v18 = v15[9];
  v31 = v15;
  sub_479B4(a2, a5 + v18, &qword_184130, &qword_127D48);
  sub_116D60();
  v19 = (*(a4 + 48))(a3, a4);
  v20 = *(v38 + 8);
  v20(v10, a3);
  *(a5 + v15[10]) = v19;
  v21 = v17;
  sub_116D60();
  v22 = v32;
  (*(a4 + 56))(a3, a4);
  v20(v10, a3);
  v23 = sub_116CF0();
  (*(*(v23 - 8) + 8))(a5 + v33, v23);
  sub_7DAB8(v22);
  v24 = v21;
  sub_116D60();
  v25 = (*(a4 + 136))(a3, a4);
  v20(v10, a3);
  v26 = (a5 + v31[12]);
  v27 = sub_7DC40(v25);
  v29 = v28;
  sub_488C8(v34, &qword_184130, &qword_127D48);
  result = (*(v35 + 8))(v24, v16);
  *v26 = v27;
  v26[1] = v29;
  return result;
}

uint64_t sub_7A8C4(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_116F30();
}

uint64_t sub_7AA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_46F9C(&qword_184128, &qword_127D40);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_116DC0();
  (*(*(v11 - 8) + 32))(a4, a1, v11);
  type metadata accessor for DailyBatteryUsageView(0, a2, a3, v12);
  v13 = sub_115A20();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  return sub_79CD4(v10);
}

uint64_t sub_7ABC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v105 = a2;
  v3 = sub_46F9C(&qword_184138, &qword_127D50);
  __chkstk_darwin(v3 - 8);
  v104 = &v69 - v4;
  v96 = *(a1 + 16);
  v106 = *(v96 - 8);
  __chkstk_darwin(v5);
  v97 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v7 = sub_1173A0();
  v8 = sub_47A1C(&qword_184140, &qword_127D58);
  WitnessTable = swift_getWitnessTable();
  v120 = v7;
  v121 = &type metadata for Int;
  v122 = v8;
  v123 = WitnessTable;
  v124 = &protocol witness table for Int;
  v100 = sub_116E30();
  v119 = sub_7DCA0();
  v99 = swift_getWitnessTable();
  v10 = sub_115DD0();
  v101 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v69 - v11;
  v13 = sub_47A1C(&qword_184160, &unk_127D70);
  v14 = swift_getWitnessTable();
  v15 = sub_7DDE8();
  v120 = v10;
  v121 = v13;
  v122 = v14;
  v123 = v15;
  v89 = v14;
  v16 = v15;
  v88 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v92 = &v69 - v18;
  v19 = sub_47A1C(&qword_184178, &qword_1285D0);
  v120 = v10;
  v121 = v13;
  v122 = v14;
  v123 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_7DEA4();
  v87 = OpaqueTypeMetadata2;
  v120 = OpaqueTypeMetadata2;
  v121 = v19;
  v122 = OpaqueTypeConformance2;
  v123 = v21;
  v93 = swift_getOpaqueTypeMetadata2();
  v22 = sub_116480();
  v95 = *(v22 - 8);
  __chkstk_darwin(v22);
  v91 = &v69 - v23;
  v24 = sub_47A1C(&qword_184188, &qword_127D80);
  v120 = OpaqueTypeMetadata2;
  v121 = v19;
  v85 = OpaqueTypeConformance2;
  v122 = OpaqueTypeConformance2;
  v123 = v21;
  v86 = swift_getOpaqueTypeConformance2();
  v117 = v86;
  v118 = OpaqueTypeConformance2;
  v25 = swift_getWitnessTable();
  v26 = sub_7DF20();
  v120 = v22;
  v121 = v24;
  v71 = v22;
  v74 = v24;
  v122 = v25;
  v123 = v26;
  v27 = v25;
  v73 = v25;
  v28 = v26;
  v72 = v26;
  v29 = swift_getOpaqueTypeMetadata2();
  v94 = *(v29 - 8);
  __chkstk_darwin(v29);
  v76 = &v69 - v30;
  v31 = sub_47A1C(&qword_1841B8, &qword_1285E0);
  v120 = v22;
  v121 = v24;
  v122 = v27;
  v123 = v28;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_7E000();
  v120 = v29;
  v121 = v31;
  v34 = v29;
  v77 = v29;
  v80 = v31;
  v122 = v32;
  v123 = v33;
  v79 = v32;
  v35 = v33;
  v78 = v33;
  v36 = swift_getOpaqueTypeMetadata2();
  v82 = v36;
  v90 = *(v36 - 8);
  __chkstk_darwin(v36);
  v75 = &v69 - v37;
  v120 = v34;
  v121 = v31;
  v122 = v32;
  v123 = v35;
  v83 = swift_getOpaqueTypeConformance2();
  v120 = v36;
  v121 = v83;
  v84 = swift_getOpaqueTypeMetadata2();
  v81 = *(v84 - 8);
  __chkstk_darwin(v84);
  v69 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v70 = &v69 - v40;
  v41 = v96;
  v42 = v98;
  v114 = v96;
  v115 = v98;
  v43 = v103;
  v116 = v103;
  sub_115DC0();
  v44 = v92;
  sub_116990();
  (*(v101 + 8))(v12, v10);
  sub_116DC0();
  v45 = v97;
  sub_116D60();
  v46 = v41;
  v47 = (*(v42 + 72))(v41, v42);
  v48 = *(v106 + 8);
  v106 += 8;
  v48(v45, v46);
  v49 = *(v47 + 16);

  v50 = v49 != 0;
  v111 = v46;
  v112 = v42;
  v51 = v43;
  v113 = v43;
  v52 = v91;
  v53 = v87;
  sub_8E234(v50, sub_7E088, v110, v87, v93, v85, v86, v91);
  (*(v102 + 8))(v44, v53);
  v107 = v46;
  v108 = v42;
  v109 = v51;
  v54 = v76;
  v55 = v71;
  sub_116930();
  (*(v95 + 8))(v52, v55);
  sub_116D60();
  v56 = (*(*(v42 + 8) + 24))(v46);
  v48(v45, v46);
  v120 = v56;
  v57 = sub_115F00();
  v58 = v104;
  (*(*(v57 - 8) + 56))(v104, 1, 1, v57);
  v59 = v75;
  v60 = v77;
  sub_116960();
  sub_488C8(v58, &qword_184138, &qword_127D50);

  (*(v94 + 8))(v54, v60);
  v61 = v69;
  v62 = v82;
  sub_116920();
  (*(v90 + 8))(v59, v62);
  v63 = v81;
  v64 = *(v81 + 16);
  v65 = v70;
  v66 = v84;
  v64(v70, v61, v84);
  v67 = *(v63 + 8);
  v67(v61, v66);
  v64(v105, v65, v66);
  return (v67)(v65, v66);
}

uint64_t sub_7B7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v33 = a1;
  v44 = a5;
  v34 = type metadata accessor for FullDayUsageView(0, a2, a3, a4);
  v42 = *(v34 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v34);
  v41 = &v33 - v7;
  v8 = *(a2 - 8);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_1173A0();
  v40 = v12;
  v13 = sub_47A1C(&qword_184140, &qword_127D58);
  v39 = v13;
  WitnessTable = swift_getWitnessTable();
  v49 = v12;
  v50 = &type metadata for Int;
  v51 = v13;
  v52 = WitnessTable;
  v53 = &protocol witness table for Int;
  v14 = sub_116E30();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v36 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v37 = &v33 - v18;
  sub_116DC0();
  sub_116D60();
  v19 = (*(a3 + 48))(a2, a3);
  (*(v8 + 8))(v11, a2);
  v48 = v19;
  sub_1173A0();
  swift_getWitnessTable();
  sub_1172B0();

  v48 = v49;
  sub_117830();
  swift_getWitnessTable();
  v49 = sub_1173B0();
  v45 = a2;
  v46 = a3;
  swift_getKeyPath();
  v20 = v41;
  v21 = v42;
  v22 = v34;
  (*(v42 + 16))(v41, v33, v34);
  v23 = v21;
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  (*(v23 + 32))(v25 + v24, v20, v22);
  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = a3;
  v26[4] = sub_8D544;
  v26[5] = v25;
  v32 = sub_7DCA0();
  v27 = v36;
  sub_116E00();
  v47 = v32;
  swift_getWitnessTable();
  v28 = *(v15 + 16);
  v29 = v37;
  v28(v37, v27, v14);
  v30 = *(v15 + 8);
  v30(v27, v14);
  v28(v44, v29, v14);
  return (v30)(v29, v14);
}

uint64_t sub_7BCDC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v93 = a2;
  v91 = a1;
  v96 = a5;
  v7 = sub_116390();
  v89 = *(v7 - 8);
  v90 = v7;
  __chkstk_darwin(v7);
  v88 = &AssociatedConformanceWitness - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_46F9C(&qword_184418, &unk_1281A0);
  __chkstk_darwin(v9 - 8);
  v84 = &AssociatedConformanceWitness - v10;
  v11 = sub_46F9C(&qword_1842B8, &qword_129030);
  __chkstk_darwin(v11 - 8);
  v74 = &AssociatedConformanceWitness - v12;
  v75 = sub_1158B0();
  v72 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &AssociatedConformanceWitness - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_115760();
  v70 = *(v79 - 8);
  __chkstk_darwin(v79);
  v69 = &AssociatedConformanceWitness - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v15 - 8);
  v73 = &AssociatedConformanceWitness - v16;
  v80 = sub_115E00();
  v77 = *(v80 - 8);
  __chkstk_darwin(v80);
  v76 = &AssociatedConformanceWitness - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_46F9C(&qword_184158, &unk_1285C0);
  v81 = *(v85 - 8);
  __chkstk_darwin(v85);
  v78 = &AssociatedConformanceWitness - v18;
  v87 = sub_46F9C(&qword_184150, &unk_127D60);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &AssociatedConformanceWitness - v19;
  v20 = sub_46F9C(&qword_184420, &qword_12CD70);
  v94 = *(v20 - 8);
  v95 = v20;
  __chkstk_darwin(v20);
  v82 = &AssociatedConformanceWitness - v21;
  v92 = *(a3 - 8);
  __chkstk_darwin(v22);
  v24 = &AssociatedConformanceWitness - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v25 = a4;
  v26 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = *(AssociatedConformanceWitness + 8);
  v28 = *(v27 + 32);
  v29 = swift_checkMetadataState();
  v30 = v28(v29, v27);
  if (v31 & 1) != 0 || (v32 = *&v30, v33 = (*(v27 + 40))(v29, v27), (v35) || (v36 = *&v33, type metadata accessor for FullDayUsageView(0, v26, v25, v34), sub_116DC0(), sub_116D60(), v37 = (*(*(v25 + 8) + 24))(v26), (*(v92 + 8))(v24, v26), v38 = sub_887E0(v37, v32, v36), , !v38))
  {
    v66 = 1;
    v64 = v95;
    v65 = v96;
    v62 = v94;
  }

  else
  {
    v39 = COERCE_DOUBLE((*(AssociatedConformanceWitness + 16))(v29));
    if (v40)
    {
      v41 = 0.0;
    }

    else
    {
      v41 = v39;
    }

    sub_116370();
    v42 = v69;
    sub_115700();
    v43 = v72;
    v44 = v71;
    v45 = v75;
    (*(v72 + 104))(v71, enum case for Calendar.Component.day(_:), v75);
    v46 = sub_1158D0();
    v47 = v74;
    (*(*(v46 - 8) + 56))(v74, 1, 1, v46);
    sub_115C40();

    sub_488C8(v47, &qword_1842B8, &qword_129030);
    (*(v43 + 8))(v44, v45);
    (*(v70 + 8))(v42, v79);
    sub_116370();
    if (v41 < 0.0)
    {
      v48 = 0.0;
    }

    else
    {
      v48 = v41;
    }

    v97 = *&v48;
    sub_115C60();

    v49 = v76;
    sub_115DF0();
    v51 = v88;
    v50 = v89;
    v52 = v90;
    (*(v89 + 104))(v88, enum case for RoundedCornerStyle.continuous(_:), v90);
    v53 = v78;
    v54 = v80;
    sub_115AE0();
    (*(v50 + 8))(v51, v52);
    (*(v77 + 8))(v49, v54);
    v55 = sub_5A754();
    swift_beginAccess();
    v101 = *(*v55 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor);
    v97 = v54;
    v98 = &protocol witness table for BarMark;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = v83;
    v58 = v85;
    sub_115AF0();
    (*(v81 + 8))(v53, v58);
    v97 = v91;
    v102._countAndFlagsBits = sub_1179B0();
    v97 = 0xD000000000000018;
    v98 = 0x8000000000135050;
    sub_117220(v102);

    v97 = v58;
    v98 = &type metadata for Color;
    v99 = OpaqueTypeConformance2;
    v100 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v59 = v82;
    v60 = v87;
    sub_115B30();

    (*(v86 + 8))(v57, v60);
    v62 = v94;
    v61 = v95;
    v63 = v96;
    (*(v94 + 32))(v96, v59, v95);
    v64 = v61;
    v65 = v63;
    v66 = 0;
  }

  return (*(v62 + 56))(v65, v66, 1, v64);
}

uint64_t sub_7C864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_46F9C(&qword_184138, &qword_127D50);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = *(a3 - 8);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FullDayUsageView(0, a3, a4, v13);
  sub_116DC0();
  sub_116D60();
  v14 = (*(a4 + 72))(a3, a4);
  (*(v9 + 8))(v12, a3);
  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = *(v14 + 8 * v15 + 24);

  if (v16 < 0)
  {
    __break(1u);
LABEL_4:

    v16 = 0;
  }

  v32 = 0;
  v33 = v16;
  v17 = sub_115F00();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v18 = sub_1173A0();
  v19 = sub_47A1C(&qword_184140, &qword_127D58);
  WitnessTable = swift_getWitnessTable();
  v27 = v18;
  v28 = &type metadata for Int;
  v29 = v19;
  v30 = WitnessTable;
  v31 = &protocol witness table for Int;
  sub_116E30();
  v26 = sub_7DCA0();
  swift_getWitnessTable();
  v21 = sub_115DD0();
  v22 = sub_47A1C(&qword_184160, &unk_127D70);
  v23 = swift_getWitnessTable();
  v24 = sub_7DDE8();
  v27 = v21;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  swift_getOpaqueTypeMetadata2();
  sub_46F9C(&qword_184178, &qword_1285D0);
  v27 = v21;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  swift_getOpaqueTypeConformance2();
  sub_7DEA4();
  sub_116970();
  return sub_488C8(v8, &qword_184138, &qword_127D50);
}

uint64_t sub_7CC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v7 = sub_115C10();
  __chkstk_darwin(v7 - 8);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_117600();
  v39 = *(v44 - 8);
  __chkstk_darwin(v44);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v42 = &v37 - v11;
  v43 = sub_46F9C(&qword_1841B0, &unk_127D90);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v37 - v12;
  v13 = sub_115C80();
  __chkstk_darwin(v13 - 8);
  v51 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_115BE0();
  __chkstk_darwin(v15 - 8);
  v50 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_46F9C(&qword_1841A0, &qword_127D88);
  v47 = *(v17 - 8);
  v48 = v17;
  __chkstk_darwin(v17);
  v46 = &v37 - v18;
  v19 = *(a2 - 8);
  __chkstk_darwin(v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FullDayUsageView(0, a2, a3, v23);
  sub_116DC0();
  v49 = a1;
  sub_116D60();
  v24 = *(a3 + 72);
  v25 = a3;
  v26 = v24(a2, a3);
  v27 = *(v19 + 8);
  v28 = a2;
  v27(v22, a2);
  v29 = *(v26 + 16);

  if (v29)
  {
    sub_116D60();
    v24(v28, v25);
    v27(v22, v28);
    sub_115BD0();
    sub_115C70();
    sub_46F9C(&qword_1843E8, &qword_128180);
    sub_8D014(&qword_1843F0, &qword_1843E8, &qword_128180, sub_8D0E4);
    v30 = v46;
    sub_115EA0();
    (*(v47 + 32))(v52, v30, v48);
  }

  else
  {
    v31 = v38;
    sub_115590();
    sub_1175F0();
    v32 = (*(v39 + 8))(v31, v44);
    *&v53 = 0x3FF0000000000000;
    sub_66C80(v32, v33, v34);
    sub_115C00();
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    sub_115BD0();
    sub_115C70();
    sub_8C988(&qword_184358, &type metadata accessor for NSDecimal.FormatStyle.Percent, &protocol conformance descriptor for NSDecimal.FormatStyle.Percent);
    v35 = v40;
    sub_115E80();
    (*(v41 + 32))(v52, v35, v43);
  }

  sub_46F9C(&qword_1843E0, &qword_128178);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_7D22C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = sub_46F9C(&qword_184408, &qword_128190);
  __chkstk_darwin(v1);
  v56 = &v43 - v2;
  v3 = sub_115A40();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v52 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_46F9C(&qword_1843A0, &unk_128120);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v55 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v43 - v7;
  v8 = sub_115D00();
  __chkstk_darwin(v8 - 8);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_115DA0();
  __chkstk_darwin(v10 - 8);
  v46 = sub_46F9C(&qword_184390, &qword_128110);
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v12 = &v43 - v11;
  v13 = sub_46F9C(&qword_184410, &qword_128198);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  v17 = sub_46F9C(&qword_184400, &qword_128188);
  __chkstk_darwin(v17 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  sub_115EB0();
  if (BYTE8(v62) == 1)
  {
    v23 = 1;
  }

  else
  {
    v24 = [objc_opt_self() localizedStringWithPercentage:v62];
    v23 = 1;
    if (v24)
    {
      v25 = v24;
      sub_1171B0();
      v44 = v1;

      v43 = &v43;
      __chkstk_darwin(v26);
      sub_115D90();
      sub_115CF0();
      v42[3] = &protocol witness table for Text;
      v42[1] = v42;
      v42[2] = &type metadata for Text;
      v42[0] = sub_8D6A0;
      sub_115C30();

      *&v62 = sub_116B50();
      sub_48800(&qword_184388, &qword_184390, &qword_128110, &protocol conformance descriptor for AxisValueLabel<A>);
      v27 = v46;
      sub_115E10();
      v1 = v44;

      (*(v47 + 8))(v12, v27);
      (*(v14 + 32))(v22, v16, v13);
      v23 = 0;
    }
  }

  v28 = *(v14 + 56);
  v48 = v22;
  v28(v22, v23, 1, v13);
  sub_116010();
  v62 = v59;
  v63 = v60;
  v64 = v61;
  v29 = v52;
  sub_115A30();
  v58 = sub_116B50();
  v30 = v49;
  v31 = v54;
  sub_115E10();

  (*(v53 + 8))(v29, v31);
  sub_8D1EC(v22, v19);
  v32 = v50;
  v33 = *(v50 + 16);
  v34 = v55;
  v35 = v51;
  v33(v55, v30, v51);
  sub_8D0E4();
  v36 = v56;
  sub_8D1EC(v19, v56);
  v37 = v1;
  v38 = *(v1 + 48);
  v33((v36 + v38), v34, v35);
  v39 = v57;
  sub_8D25C(v36, v57);
  (*(v32 + 32))(v39 + *(v37 + 48), v36 + v38, v35);
  v40 = *(v32 + 8);
  v40(v30, v35);
  sub_8D2CC(v48);
  v40(v34, v35);
  return sub_8D2CC(v19);
}

uint64_t sub_7D9E0(uint64_t a1)
{
  v2 = sub_46F9C(&qword_184128, &qword_127D40);
  __chkstk_darwin(v2 - 8);
  sub_479B4(a1, &v5 - v3, &qword_184128, &qword_127D40);
  sub_46F9C(&qword_184130, &qword_127D48);
  sub_116D70();
  return sub_488C8(a1, &qword_184128, &qword_127D40);
}

uint64_t sub_7DAB8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_117620();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  (*(v5 + 16))(&v9 - v7, a1, v4, v6);
  sub_116CB0();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_7DBD0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  sub_117620();
  v3 = sub_116CF0();
  return a2(v3);
}

uint64_t sub_7DC40(uint64_t a1)
{
  sub_46F9C(&qword_1835B0, &qword_127DA0);
  sub_116CB0();
  return v2;
}

unint64_t sub_7DCA0()
{
  result = qword_184148;
  if (!qword_184148)
  {
    sub_47A1C(&qword_184140, &qword_127D58);
    sub_47A1C(&qword_184150, &unk_127D60);
    sub_47A1C(&qword_184158, &unk_1285C0);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184148);
  }

  return result;
}

unint64_t sub_7DDE8()
{
  result = qword_184168;
  if (!qword_184168)
  {
    sub_47A1C(&qword_184160, &unk_127D70);
    sub_8C988(&qword_184170, &type metadata accessor for ChartPlotContent, &protocol conformance descriptor for ChartPlotContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184168);
  }

  return result;
}

unint64_t sub_7DEA4()
{
  result = qword_184180;
  if (!qword_184180)
  {
    sub_47A1C(&qword_184178, &qword_1285D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184180);
  }

  return result;
}

unint64_t sub_7DF20()
{
  result = qword_184190;
  if (!qword_184190)
  {
    sub_47A1C(&qword_184188, &qword_127D80);
    sub_48800(&qword_184198, &qword_1841A0, &qword_127D88, &protocol conformance descriptor for AxisMarks<A>);
    sub_48800(&qword_1841A8, &qword_1841B0, &unk_127D90, &protocol conformance descriptor for AxisMarks<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184190);
  }

  return result;
}

unint64_t sub_7E000()
{
  result = qword_1841C0;
  if (!qword_1841C0)
  {
    sub_47A1C(&qword_1841B8, &qword_1285E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1841C0);
  }

  return result;
}

uint64_t sub_7E0A0(uint64_t a1)
{
  sub_46F9C(&qword_1841C8, &qword_127DA8);
  sub_116CC0();
  return v2;
}

void sub_7E154(uint64_t a1@<X0>, char *a2@<X8>)
{
  v217 = a1;
  v163 = a2;
  v3 = sub_115CD0();
  v161 = *(v3 - 8);
  v162 = v3;
  __chkstk_darwin(v3);
  v160 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_46F9C(&qword_184138, &qword_127D50);
  __chkstk_darwin(v5 - 8);
  v214 = &v148 - v6;
  v220 = *(a1 - 8);
  v219 = *(v220 + 64);
  __chkstk_darwin(v7);
  v218 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v221 = *(v9 - 8);
  __chkstk_darwin(v10);
  v216 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v13 = sub_1173A0();
  v14 = sub_47A1C(&qword_1841D0, &qword_127DB0);
  WitnessTable = swift_getWitnessTable();
  v231 = v13;
  v232 = &type metadata for Int;
  v233 = v14;
  v234 = WitnessTable;
  v235 = &protocol witness table for Int;
  v242[2] = sub_116E30();
  v16 = sub_47A1C(&qword_1841D8, &qword_127DB8);
  v191 = v12;
  v209 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_47A1C(&qword_1841E0, &qword_127DC0);
  v19 = sub_47A1C(&qword_1841E8, &qword_127DC8);
  v20 = sub_47A1C(&qword_1841F0, &qword_127DD0);
  v231 = sub_115E70();
  v232 = &protocol witness table for RuleMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v231 = v20;
  v232 = &type metadata for Color;
  v233 = OpaqueTypeConformance2;
  v234 = &protocol witness table for Color;
  v22 = swift_getOpaqueTypeConformance2();
  v231 = v19;
  v232 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v231 = v18;
  v232 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v231 = v16;
  v232 = AssociatedTypeWitness;
  v233 = v24;
  v234 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v231 = v16;
  v232 = AssociatedTypeWitness;
  v233 = v24;
  v234 = AssociatedConformanceWitness;
  v27 = swift_getOpaqueTypeConformance2();
  v30 = sub_4869C(v27, v28, v29);
  v231 = OpaqueTypeMetadata2;
  v232 = &type metadata for String;
  v233 = v27;
  v234 = v30;
  swift_getOpaqueTypeMetadata2();
  v242[3] = sub_117620();
  v31 = sub_115A60();
  v241 = sub_88B20();
  v242[0] = swift_getWitnessTable();
  v231 = OpaqueTypeMetadata2;
  v232 = &type metadata for String;
  v233 = v27;
  v234 = v30;
  v240 = swift_getOpaqueTypeConformance2();
  v242[1] = swift_getWitnessTable();
  v239 = v242;
  v215 = v31;
  v205 = swift_getWitnessTable();
  v32 = sub_115DD0();
  v212 = *(v32 - 8);
  __chkstk_darwin(v32);
  v201 = &v148 - v33;
  v34 = swift_getWitnessTable();
  v231 = v32;
  v203 = v32;
  v232 = &type metadata for Int;
  v233 = v34;
  v234 = &protocol witness table for Int;
  v35 = v34;
  v204 = v34;
  v36 = swift_getOpaqueTypeMetadata2();
  v211 = *(v36 - 8);
  __chkstk_darwin(v36);
  v206 = &v148 - v37;
  v38 = sub_47A1C(&qword_184160, &unk_127D70);
  v231 = v32;
  v232 = &type metadata for Int;
  v233 = v35;
  v234 = &protocol witness table for Int;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_7DDE8();
  v231 = v36;
  v232 = v38;
  v41 = v36;
  v195 = v36;
  v196 = v40;
  v197 = v39;
  v198 = v38;
  v233 = v39;
  v234 = v40;
  v42 = v39;
  v43 = v40;
  v44 = swift_getOpaqueTypeMetadata2();
  v210 = *(v44 - 8);
  __chkstk_darwin(v44);
  v199 = &v148 - v45;
  v46 = sub_47A1C(&qword_184178, &qword_1285D0);
  v231 = v41;
  v232 = v38;
  v233 = v42;
  v234 = v43;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_7DEA4();
  v231 = v44;
  v232 = v46;
  v233 = v47;
  v234 = v48;
  v202 = swift_getOpaqueTypeMetadata2();
  v49 = v44;
  v192 = v44;
  v50 = sub_116480();
  v208 = *(v50 - 8);
  __chkstk_darwin(v50);
  v194 = &v148 - v51;
  v52 = sub_47A1C(&qword_184218, &qword_127DF0);
  v231 = v49;
  v232 = v46;
  v189 = v47;
  v233 = v47;
  v234 = v48;
  v190 = swift_getOpaqueTypeConformance2();
  v237 = v190;
  v238 = v47;
  v53 = swift_getWitnessTable();
  v54 = sub_88CFC();
  v231 = v50;
  v232 = v52;
  v179 = v50;
  v186 = v52;
  v233 = v53;
  v234 = v54;
  v55 = v53;
  v184 = v53;
  v56 = v54;
  v182 = v54;
  v57 = swift_getOpaqueTypeMetadata2();
  v207 = *(v57 - 8);
  __chkstk_darwin(v57);
  v188 = &v148 - v58;
  v59 = sub_47A1C(&qword_1841B8, &qword_1285E0);
  v231 = v50;
  v232 = v52;
  v233 = v55;
  v234 = v56;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = sub_7E000();
  v231 = v57;
  v232 = v59;
  v62 = v57;
  v180 = v57;
  v181 = v61;
  v185 = v59;
  v233 = v60;
  v234 = v61;
  v183 = v60;
  v63 = v61;
  v64 = swift_getOpaqueTypeMetadata2();
  v200 = *(v64 - 8);
  __chkstk_darwin(v64);
  v187 = &v148 - v65;
  v66 = sub_47A1C(&qword_184238, &qword_127E00);
  v231 = v62;
  v232 = v59;
  v233 = v60;
  v234 = v63;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = sub_48800(&qword_184240, &qword_184238, &qword_127E00, &protocol conformance descriptor for AxisMarks<A>);
  v231 = v64;
  v232 = v66;
  v69 = v64;
  v174 = v64;
  v175 = v68;
  v176 = v67;
  v177 = v66;
  v233 = v67;
  v234 = v68;
  v70 = v68;
  v71 = swift_getOpaqueTypeMetadata2();
  v193 = *(v71 - 8);
  __chkstk_darwin(v71);
  v178 = &v148 - v72;
  v73 = sub_47A1C(&qword_184248, &qword_127E08);
  v231 = v69;
  v232 = v66;
  v233 = v67;
  v234 = v70;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = sub_48800(&qword_184250, &qword_184248, &qword_127E08, &protocol conformance descriptor for GeometryReader<A>);
  v170 = v71;
  v171 = v75;
  v231 = v71;
  v232 = v73;
  v172 = v74;
  v173 = v73;
  v233 = v74;
  v234 = v75;
  v76 = v75;
  v77 = swift_getOpaqueTypeMetadata2();
  v158 = *(v77 - 8);
  __chkstk_darwin(v77);
  v169 = &v148 - v78;
  v231 = v71;
  v232 = v73;
  v233 = v74;
  v234 = v76;
  v79 = swift_getOpaqueTypeConformance2();
  v231 = v77;
  v232 = &type metadata for String;
  v233 = &type metadata for Color;
  v234 = v79;
  v235 = &protocol witness table for String;
  v236 = &protocol witness table for Color;
  v80 = swift_getOpaqueTypeMetadata2();
  v156 = *(v80 - 8);
  __chkstk_darwin(v80);
  v155 = &v148 - v81;
  v159 = v77;
  v231 = v77;
  v232 = &type metadata for String;
  v233 = &type metadata for Color;
  v234 = v79;
  v152 = v79;
  v235 = &protocol witness table for String;
  v236 = &protocol witness table for Color;
  v82 = swift_getOpaqueTypeConformance2();
  v157 = v80;
  v231 = v80;
  v232 = v82;
  v150 = v82;
  v83 = swift_getOpaqueTypeMetadata2();
  v153 = *(v83 - 8);
  v154 = v83;
  __chkstk_darwin(v83);
  v149 = &v148 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v85);
  v151 = &v148 - v86;
  v87 = v209;
  v228[8] = v209;
  v88 = v191;
  v228[9] = v191;
  v89 = v213;
  v228[10] = v213;
  v90 = v201;
  sub_115DC0();
  v164 = sub_116DC0();
  v91 = v216;
  sub_116D60();
  v92 = (*(v88 + 128))(v87, v88);
  v215 = *(v221 + 8);
  v221 += 8;
  v215(v91, v87);
  v230 = v92;
  v93 = v220;
  v94 = *(v220 + 16);
  v168 = v220 + 16;
  v205 = v94;
  v95 = v218;
  v96 = v217;
  v94(v218, v89, v217);
  v167 = *(v93 + 80);
  v97 = (v167 + 32) & ~v167;
  v165 = v97;
  v98 = swift_allocObject();
  *(v98 + 16) = v87;
  *(v98 + 24) = v88;
  v99 = *(v93 + 32);
  v220 = v93 + 32;
  v166 = v99;
  v99(v98 + v97, v95, v96);
  v100 = v206;
  v101 = v203;
  sub_116AE0();

  (*(v212 + 8))(v90, v101);
  v102 = v199;
  v103 = v195;
  sub_116990();
  (*(v211 + 8))(v100, v103);
  v104 = v216;
  sub_116D60();
  v105 = v87;
  v106 = v87;
  v107 = v88;
  v108 = (*(v88 + 72))(v106, v88);
  v215(v104, v105);
  v109 = *(v108 + 16);

  v110 = v109 != 0;
  v228[2] = v105;
  v228[3] = v88;
  v228[4] = v89;
  v111 = v194;
  v112 = v192;
  sub_8E234(v110, sub_88E7C, v228, v192, v202, v189, v190, v194);
  (*(v210 + 8))(v102, v112);
  v225 = v105;
  v226 = v107;
  v227 = v89;
  v113 = v188;
  v114 = v179;
  sub_116930();
  (*(v208 + 8))(v111, v114);
  sub_116D60();
  v115 = (*(*(v107 + 8) + 24))(v105);
  v215(v104, v105);
  v229 = v115;
  v116 = sub_115F00();
  v117 = v214;
  (*(*(v116 - 8) + 56))(v214, 1, 1, v116);
  v118 = v187;
  v119 = v180;
  sub_116960();
  v120 = v117;
  v121 = v169;
  sub_488C8(v120, &qword_184138, &qword_127D50);

  (*(v207 + 8))(v113, v119);
  v222 = v105;
  v223 = v107;
  v224 = v89;
  v122 = v178;
  v123 = v174;
  sub_116910();
  (*(v200 + 8))(v118, v123);
  v124 = v218;
  v125 = v217;
  v205(v218, v89, v217);
  v126 = v165;
  v127 = swift_allocObject();
  *(v127 + 16) = v105;
  *(v127 + 24) = v107;
  v166(v127 + v126, v124, v125);
  sub_116EB0();
  v128 = v170;
  sub_116980();

  (*(v193 + 8))(v122, v128);
  sub_46F9C(&qword_184258, &unk_127E10);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_1248A0;
  v130 = sub_117170();
  v131 = BatteryUILocalization(v130);

  if (v131)
  {
    v132 = sub_1171B0();
    v134 = v133;

    *(v129 + 32) = v132;
    *(v129 + 40) = v134;
    v135 = sub_5A754();
    swift_beginAccess();
    *(v129 + 48) = *(*v135 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor);

    sub_87554(v125);
    *(v129 + 56) = v136;
    *(v129 + 64) = v137;
    swift_beginAccess();
    *(v129 + 72) = *(*v135 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor);

    v138 = v155;
    v139 = v159;
    sub_1169A0();

    (*(v158 + 8))(v121, v139);
    v140 = v160;
    sub_115CC0();
    sub_116EC0();
    v141 = v149;
    v142 = v157;
    sub_116940();
    (*(v161 + 8))(v140, v162);
    (*(v156 + 8))(v138, v142);
    v144 = v153;
    v143 = v154;
    v145 = *(v153 + 16);
    v146 = v151;
    v145(v151, v141, v154);
    v147 = *(v144 + 8);
    v147(v141, v143);
    v145(v163, v146, v143);
    v147(v146, v143);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_7F79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v248 = a1;
  v236 = a4;
  v210 = sub_115D30();
  v209 = *(v210 - 8);
  __chkstk_darwin(v210);
  v207 = v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_115D60();
  __chkstk_darwin(v7 - 8);
  v206 = v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v205 = v165 - v10;
  v215 = sub_115D70();
  v214 = *(v215 - 8);
  __chkstk_darwin(v215);
  v212 = v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_115CD0();
  v211 = *(v213 - 8);
  __chkstk_darwin(v213);
  v208 = v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_46F9C(&qword_1842B8, &qword_129030);
  __chkstk_darwin(v13 - 8);
  v188 = v165 - v14;
  v189 = sub_1158B0();
  v187 = *(v189 - 8);
  __chkstk_darwin(v189);
  v181 = v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_115760();
  v179 = *(v186 - 8);
  __chkstk_darwin(v186);
  v176 = v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v17 - 8);
  v175 = v165 - v18;
  v19 = sub_115E70();
  v180 = *(v19 - 8);
  __chkstk_darwin(v19);
  v177 = v165 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_46F9C(&qword_1841F0, &qword_127DD0);
  v183 = *(v21 - 8);
  __chkstk_darwin(v21);
  v178 = v165 - v22;
  v23 = sub_46F9C(&qword_1841E8, &qword_127DC8);
  v190 = *(v23 - 8);
  __chkstk_darwin(v23);
  v184 = v165 - v24;
  v25 = sub_46F9C(&qword_1841E0, &qword_127DC0);
  v195 = *(v25 - 8);
  __chkstk_darwin(v25);
  v193 = v165 - v26;
  v27 = sub_46F9C(&qword_1841D8, &qword_127DB8);
  v203 = *(v27 - 8);
  __chkstk_darwin(v27);
  v216 = v165 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v182 = v19;
  v262 = v19;
  v263 = &protocol witness table for RuleMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v185 = v21;
  v262 = v21;
  v263 = &type metadata for Color;
  v172 = OpaqueTypeConformance2;
  v264 = OpaqueTypeConformance2;
  v265 = &protocol witness table for Color;
  v31 = swift_getOpaqueTypeConformance2();
  v191 = v23;
  v262 = v23;
  v263 = v31;
  v173 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  v197 = v25;
  v262 = v25;
  v263 = v32;
  v174 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v262 = v27;
  v263 = AssociatedTypeWitness;
  v264 = v33;
  v265 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v240 = OpaqueTypeMetadata2;
  v201 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v200 = v165 - v36;
  v204 = v27;
  v262 = v27;
  v263 = AssociatedTypeWitness;
  v202 = AssociatedTypeWitness;
  v194 = v33;
  v264 = v33;
  v265 = AssociatedConformanceWitness;
  v192 = AssociatedConformanceWitness;
  v37 = swift_getOpaqueTypeConformance2();
  v239 = v37;
  v40 = sub_4869C(v37, v38, v39);
  v262 = OpaqueTypeMetadata2;
  v263 = &type metadata for String;
  v264 = v37;
  v265 = v40;
  v238 = v40;
  v245 = swift_getOpaqueTypeMetadata2();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v199 = v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v196 = v165 - v43;
  __chkstk_darwin(v44);
  v198 = v165 - v45;
  v46 = sub_46F9C(&qword_184128, &qword_127D40);
  __chkstk_darwin(v46 - 8);
  v220 = v165 - v47;
  v222 = sub_115A20();
  v223 = *(v222 - 8);
  __chkstk_darwin(v222);
  v217 = v165 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = a3;
  v49 = swift_getAssociatedTypeWitness();
  v219 = sub_117620();
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v224 = v165 - v50;
  v226 = *(v49 - 8);
  __chkstk_darwin(v51);
  v221 = v165 - v52;
  v250 = a2;
  v249 = *(a2 - 8);
  __chkstk_darwin(v53);
  v242 = v165 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_117620();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v237 = v165 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v233 = v165 - v57;
  v59 = type metadata accessor for DynamicUsageView(0, a2, a3, v58);
  v241 = v59;
  v60 = *(v59 - 8);
  v229 = *(v60 + 64);
  __chkstk_darwin(v59);
  v62 = v165 - v61;
  swift_getTupleTypeMetadata2();
  v63 = sub_1173A0();
  v232 = v63;
  v64 = sub_47A1C(&qword_1841D0, &qword_127DB0);
  v231 = v64;
  WitnessTable = swift_getWitnessTable();
  v262 = v63;
  v263 = &type metadata for Int;
  v264 = v64;
  v265 = WitnessTable;
  v266 = &protocol witness table for Int;
  v247 = sub_116E30();
  v65 = *(v247 - 8);
  __chkstk_darwin(v247);
  v67 = v165 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v246 = v165 - v69;
  v70 = v248;
  v169 = *(v248 + *(v59 + 40));
  v254 = v169;
  v225 = v49;
  sub_1173A0();
  swift_getWitnessTable();
  sub_1172B0();
  v254 = v262;
  sub_117830();
  swift_getWitnessTable();
  v262 = sub_1173B0();
  v71 = v250;
  v251 = v250;
  v72 = v243;
  v252 = v243;
  KeyPath = swift_getKeyPath();
  v73 = *(v60 + 16);
  v74 = v241;
  v167 = v60 + 16;
  v166 = v73;
  v73(v62, v70, v241);
  v75 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v165[2] = *(v60 + 80);
  v165[1] = v75 + v229;
  v76 = swift_allocObject();
  *(v76 + 16) = v71;
  *(v76 + 24) = v72;
  v77 = *(v60 + 32);
  v168 = v75;
  v170 = v62;
  v171 = v60 + 32;
  v165[0] = v77;
  v77(v76 + v75, v62, v74);
  v78 = swift_allocObject();
  v78[2] = v71;
  v78[3] = v72;
  v78[4] = sub_8CC1C;
  v78[5] = v76;
  v164 = sub_88B20();
  sub_116E00();
  v261[2] = v164;
  v79 = v247;
  v229 = swift_getWitnessTable();
  v80 = *(v65 + 16);
  KeyPath = v65 + 16;
  v227 = v80;
  v80(v246, v67, v79);
  v81 = *(v65 + 8);
  v231 = v67;
  v82 = v245;
  v232 = v65 + 8;
  WitnessTable = v81;
  v81(v67, v79);
  v83 = v74;
  v84 = sub_116DC0();
  v85 = v242;
  sub_116D60();
  v86 = v250;
  v87 = (*(v72 + 80))(v250, v72);
  v88 = v244;
  LOBYTE(v74) = v87;
  v89 = *(v249 + 8);
  v249 += 8;
  (v89)(v85, v86);
  v90 = 1;
  if (v74)
  {
    v91 = v224;
    sub_7DBD0(v83, &State.wrappedValue.getter);
    v92 = v226;
    v93 = v225;
    if ((*(v226 + 48))(v91, 1, v225) == 1)
    {
      v218[1](v91, v219);
LABEL_11:
      v90 = 1;
      v82 = v245;
      v88 = v244;
      goto LABEL_12;
    }

    v218 = v89;
    v219 = v84;
    v94 = v221;
    (*(v92 + 32))(v221, v91, v93);
    sub_46F9C(&qword_184130, &qword_127D48);
    v95 = v220;
    sub_116D60();
    v96 = v223;
    v97 = v222;
    if ((*(v223 + 48))(v95, 1, v222) == 1)
    {
      (*(v92 + 8))(v94, v93);
      sub_488C8(v95, &qword_184128, &qword_127D40);
      goto LABEL_11;
    }

    v98 = v217;
    (*(v96 + 32))(v217, v95, v97);
    v99 = v96;
    v100 = swift_getAssociatedConformanceWitness();
    v101 = v93;
    v102 = *(v100 + 8);
    (*(v102 + 32))(v101, v102);
    if (v103)
    {
      (*(v99 + 8))(v98, v97);
      v104 = *(v226 + 8);
      v105 = v94;
LABEL_10:
      v104(v105, v101);
      goto LABEL_11;
    }

    (*(v102 + 40))(v101, v102);
    if (v106)
    {
      (*(v223 + 8))(v98, v97);
      v104 = *(v226 + 8);
      v105 = v94;
      goto LABEL_10;
    }

    v118 = COERCE_DOUBLE((*(v100 + 16))(v101, v100));
    if (v119)
    {
      v120 = 0.0;
    }

    else
    {
      v120 = v118;
    }

    v224 = sub_116370();
    LODWORD(v220) = v121;
    v122 = v176;
    sub_115700();
    v123 = v187;
    v124 = v181;
    v125 = v189;
    (*(v187 + 104))(v181, enum case for Calendar.Component.day(_:), v189);
    v126 = sub_1158D0();
    v127 = v188;
    (*(*(v126 - 8) + 56))(v188, 1, 1, v126);
    sub_115C40();

    sub_488C8(v127, &qword_1842B8, &qword_129030);
    (*(v123 + 8))(v124, v125);
    (*(v179 + 8))(v122, v186);
    v128 = v177;
    sub_115E50();
    sub_116010();
    v129 = v178;
    v130 = v182;
    sub_115BA0();
    sub_57B04(&v262);
    (*(v180 + 8))(v128, v130);
    v254 = sub_82754(v94, v241);
    v131 = v184;
    v132 = v185;
    sub_115AF0();

    (*(v183 + 8))(v129, v132);
    v133 = v242;
    sub_116D60();
    v134 = v243;
    v135 = v250;
    (*(v243 + 96))(v250, v243);
    v136 = v218;
    (v218)(v133, v135);
    v137 = v193;
    v138 = v191;
    sub_115B50();
    (*(v190 + 8))(v131, v138);
    sub_5A754();
    swift_beginAccess();
    if (v120 < 0.0)
    {
      v139 = 0.0;
    }

    else
    {
      v139 = v120;
    }

    v254 = *&v139;
    sub_115A10();
    v140 = v197;
    sub_115B50();
    (*(v195 + 8))(v137, v140);
    sub_116D60();
    v141 = (*(v134 + 128))(v135, v134);
    (v136)(v133, v135);
    if (v141 >= sub_117370() / 2)
    {
      v142 = v208;
      sub_115CA0();
    }

    else
    {
      v142 = v208;
      sub_115CB0();
    }

    v143 = v207;
    sub_115D20();
    sub_115D40();
    (*(v209 + 8))(v143, v210);
    sub_115D50();
    v144 = v212;
    sub_115D10();
    v145 = v170;
    v146 = v241;
    v166(v170, v248, v241);
    v147 = swift_allocObject();
    v148 = v250;
    v149 = v243;
    *(v147 + 16) = v250;
    *(v147 + 24) = v149;
    (v165[0])(v147 + v168, v145, v146);
    sub_116EB0();
    swift_checkMetadataState();
    v150 = v204;
    v151 = v200;
    v152 = v216;
    sub_115AC0();

    (*(v214 + 8))(v144, v215);
    (*(v211 + 8))(v142, v213);
    (*(v203 + 8))(v152, v150);
    v153 = v242;
    sub_116D60();
    v154 = (*(v149 + 120))(v148, v149);
    v156 = v155;
    (v218)(v153, v148);
    v254 = v154;
    v255 = v156;
    v157 = v196;
    v158 = v240;
    sub_115B00();

    (*(v201 + 8))(v151, v158);
    (*(v223 + 8))(v217, v222);
    (*(v226 + 8))(v221, v225);
    v159 = v244;
    v160 = *(v244 + 16);
    v161 = v198;
    v82 = v245;
    v160(v198, v157, v245);
    v162 = *(v159 + 8);
    v162(v157, v82);
    v163 = v199;
    v160(v199, v161, v82);
    v88 = v159;
    v162(v161, v82);
    (*(v159 + 32))(v237, v163, v82);
    v90 = 0;
  }

LABEL_12:
  v107 = v237;
  (*(v88 + 56))(v237, v90, 1, v82);
  v108 = v234;
  v109 = *(v234 + 16);
  v110 = v233;
  v111 = v235;
  v109(v233, v107, v235);
  v112 = *(v108 + 8);
  v112(v107, v111);
  v113 = v231;
  v114 = v246;
  v115 = v247;
  v227(v231, v246, v247);
  v261[0] = v113;
  v109(v107, v110, v111);
  v261[1] = v107;
  v260[0] = v115;
  v260[1] = v111;
  v258 = v229;
  v254 = v240;
  v255 = &type metadata for String;
  v256 = v239;
  v257 = v238;
  v253 = swift_getOpaqueTypeConformance2();
  v259 = swift_getWitnessTable();
  sub_82BE8(v261, 2uLL, v260, v236);
  v112(v110, v111);
  v116 = WitnessTable;
  WitnessTable(v114, v115);
  v112(v107, v111);
  return v116(v113, v115);
}

void sub_81760(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v124 = a3;
  v128 = a2;
  v122 = a1;
  v127 = a6;
  v8 = sub_116360();
  __chkstk_darwin(v8 - 8);
  v120 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_116390();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_46F9C(&qword_1843D0, &qword_128FE0);
  __chkstk_darwin(v11 - 8);
  v103 = &v91 - v12;
  v13 = sub_46F9C(&qword_1842B8, &qword_129030);
  __chkstk_darwin(v13 - 8);
  v96 = &v91 - v14;
  v97 = sub_1158B0();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v93 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_115760();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v121 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v17 - 8);
  v94 = &v91 - v18;
  v101 = sub_115E00();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_46F9C(&qword_184158, &unk_1285C0);
  v102 = *(v105 - 8);
  __chkstk_darwin(v105);
  v100 = &v91 - v20;
  v111 = sub_46F9C(&qword_184210, &qword_128640);
  v106 = *(v111 - 8);
  __chkstk_darwin(v111);
  v104 = &v91 - v21;
  v117 = sub_46F9C(&qword_184208, &unk_127DE0);
  v112 = *(v117 - 8);
  __chkstk_darwin(v117);
  v110 = &v91 - v22;
  v119 = sub_46F9C(&qword_184200, &qword_127DD8);
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v91 - v23;
  v24 = sub_46F9C(&qword_1843D8, &qword_128170);
  v125 = *(v24 - 8);
  v126 = v24;
  __chkstk_darwin(v24);
  v114 = &v91 - v25;
  v123 = *(a4 - 8);
  __chkstk_darwin(v26);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v29 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = *(AssociatedConformanceWitness + 8);
  v32 = *(v31 + 32);
  v33 = swift_checkMetadataState();
  v34 = v32(v33, v31);
  if (v35 & 1) != 0 || (v36 = *&v34, v37 = (*(v31 + 40))(v33, v31), (v39) || (v40 = *&v37, v41 = type metadata accessor for DynamicUsageView(0, v29, a5, v38), sub_116DC0(), sub_116D60(), v42 = (*(*(a5 + 8) + 24))(v29), (*(v123 + 8))(v28, v29), v43 = sub_887E0(v42, v36, v40), , !v43))
  {
    v90 = 1;
    v88 = v126;
    v89 = v127;
    v86 = v125;
    goto LABEL_16;
  }

  v44 = sub_7E0A0(v41);
  if ((v122 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (*(v44 + 16) <= v122)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v45 = *(v44 + 8 * v122 + 32);

  *&v46 = COERCE_DOUBLE((*(AssociatedConformanceWitness + 16))(v33, AssociatedConformanceWitness));
  v47 = *&v46;
  if (v48)
  {
    v47 = 0.0;
    goto LABEL_9;
  }

  if ((v46 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  if (v47 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v92 = v41;
  if (v47 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v49 = v47;
  if (v45 < v47)
  {
    v49 = v45;
  }

  v123 = v49;
  sub_116370();
  v50 = v121;
  sub_115700();
  v51 = v95;
  v52 = v93;
  v53 = v97;
  (*(v95 + 104))(v93, enum case for Calendar.Component.day(_:), v97);
  v54 = sub_1158D0();
  v55 = v96;
  (*(*(v54 - 8) + 56))(v96, 1, 1, v54);
  sub_115C40();

  sub_488C8(v55, &qword_1842B8, &qword_129030);
  (*(v51 + 8))(v52, v53);
  v113 = *(v113 + 8);
  v56 = v115;
  (v113)(v50, v115);
  sub_116370();
  *&v134[0] = v123 & ~(v123 >> 63);
  sub_115C60();

  v57 = v98;
  sub_115DF0();
  v58 = v108;
  v59 = v107;
  v60 = v109;
  (*(v108 + 104))(v107, enum case for RoundedCornerStyle.continuous(_:), v109);
  v61 = v100;
  v62 = v101;
  sub_115AE0();
  (*(v58 + 8))(v59, v60);
  (*(v99 + 8))(v57, v62);
  v63 = sub_82754(v128, v92);
  sub_5B018(0, v63, v134);

  v131 = v134[0];
  v132 = v134[1];
  v133 = v135;
  v129 = v62;
  v130 = &protocol witness table for BarMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v104;
  v66 = v105;
  sub_115AF0();
  sub_8CFC0(v134);
  (*(v102 + 8))(v61, v66);
  *&v131 = v122;
  v136._countAndFlagsBits = sub_1179B0();
  *&v131 = 0xD000000000000018;
  *(&v131 + 1) = 0x8000000000135050;
  sub_117220(v136);

  *&v131 = v66;
  *(&v131 + 1) = &type metadata for LinearGradient;
  *&v132 = OpaqueTypeConformance2;
  *(&v132 + 1) = &protocol witness table for LinearGradient;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = v110;
  v69 = v111;
  sub_115B30();

  (*(v106 + 8))(v65, v69);
  v70 = v121;
  sub_115700();
  isa = sub_1156B0().super.isa;
  (v113)(v70, v56);
  v72 = sub_117170();
  v73 = AXDateStringForFormat();

  if (v73)
  {
    v74 = sub_1171B0();
    v76 = v75;

    *&v131 = v74;
    *(&v131 + 1) = v76;
    v129 = v69;
    v130 = v67;
    v77 = swift_getOpaqueTypeConformance2();
    v80 = sub_4869C(v77, v78, v79);
    v81 = v116;
    v82 = v117;
    sub_115B00();

    (*(v112 + 8))(v68, v82);
    sub_116350();
    v137._countAndFlagsBits = 0;
    v137._object = 0xE000000000000000;
    sub_116340(v137);
    *&v131 = v123;
    sub_116330();
    v138._countAndFlagsBits = 37;
    v138._object = 0xE100000000000000;
    sub_116340(v138);
    sub_116380();
    *&v131 = v82;
    *(&v131 + 1) = &type metadata for String;
    *&v132 = v77;
    *(&v132 + 1) = v80;
    swift_getOpaqueTypeConformance2();
    v83 = v114;
    v84 = v119;
    sub_115B10();

    (*(v118 + 8))(v81, v84);
    v86 = v125;
    v85 = v126;
    v87 = v127;
    (*(v125 + 32))(v127, v83, v126);
    v88 = v85;
    v89 = v87;
    v90 = 0;
LABEL_16:
    (*(v86 + 56))(v89, v90, 1, v88);
    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_82754(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_117620();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_7DBD0(a2, &State.wrappedValue.getter);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_62DA4(a1, v8, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    if ((*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness))
    {
      return sub_116B80();
    }

    else
    {
      return sub_116B30();
    }
  }

  else
  {
    sub_5A754();
    swift_beginAccess();
  }
}

uint64_t sub_82918(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_829B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  type metadata accessor for DynamicUsageView(0, a2, a3, v17);
  sub_116DC0();
  sub_116D60();
  (*(a3 + 88))(a2, a3);
  (*(v7 + 8))(v9, a2);
  v18 = *(v11 + 16);
  v18(v16, v13, AssociatedTypeWitness);
  v19 = *(v11 + 8);
  v19(v13, AssociatedTypeWitness);
  v18(a4, v16, AssociatedTypeWitness);
  return (v19)(v16, AssociatedTypeWitness);
}

uint64_t sub_82BE8@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v6 = 8 * a2;
  v36[1] = a4;
  if (a2 == 1)
  {
    v7 = a3;
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(a1);
    v10 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v11 = 0;
      v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != a2)
      {
LABEL_9:
        v17 = a2 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    v7 = v9;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  __chkstk_darwin(TupleTypeMetadata);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = v36;
  __chkstk_darwin(v24);
  if (a2)
  {
    v26 = (v7 & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v25 + 32);
    v28 = (v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = a2;
    do
    {
      if (a2 == 1)
      {
        v30 = 0;
      }

      else
      {
        v30 = *v27;
      }

      v32 = *v26++;
      v31 = v32;
      v33 = &v23[v30];
      v34 = *v5++;
      (*(*(v31 - 8) + 16))(&v23[v30], v34);
      *v28++ = v33;
      v27 += 4;
      --v29;
    }

    while (v29);
  }

  return sub_115A50();
}

void sub_82E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v23 = sub_117620();
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = v22 - v7;
  v9 = *(a2 - 8);
  __chkstk_darwin(v10);
  v22[1] = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v22[2] = v22 - v13;
  __chkstk_darwin(v14);
  v16 = v22 - v15;
  v18 = type metadata accessor for DynamicUsageView(0, a2, a3, v17);
  sub_116DC0();
  sub_116D60();
  (*(a3 + 56))(a2, a3);
  (*(v9 + 8))(v16, a2);
  sub_88A14(v8, v18);
  (*(v6 + 8))(v8, v23);
  sub_116EF0();
  v24 = a2;
  v25 = a3;
  v26 = a1;
  sub_1160D0();

  sub_116D60();
  type metadata accessor for ShowAllUsageViewModel(0);
  if (swift_dynamicCast())
  {

    sub_A77E8(sub_83370, 0);
    v31 = sub_8338C;
    v32 = 0;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v19 = &unk_167568;
LABEL_5:
    v29 = sub_83460;
    v30 = v19;
    v20 = _Block_copy(&aBlock);
    v21 = @"com.apple.batteryui";
    AnalyticsSendEventLazy();
    _Block_release(v20);

    return;
  }

  sub_116D60();
  type metadata accessor for AppDetailViewModel(0);
  if (swift_dynamicCast())
  {

    sub_A77E8(sub_834EC, 0);
    v31 = sub_83508;
    v32 = 0;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v19 = &unk_167540;
    goto LABEL_5;
  }

  sub_A77E8(sub_835D4, 0);
}

uint64_t sub_83250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DynamicUsageView(0, v8, v9, v10);
  sub_116DC0();
  sub_116D60();
  v12 = (*(a3 + 136))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return sub_7E0F8(v12, v11);
}

unint64_t sub_8338C()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0x7061546870617267;
  *(inited + 40) = 0xEF6C6172656E6547;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_8CACC(inited);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

Class sub_83460(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_8CBD0();
    v4.super.isa = sub_117050().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

unint64_t sub_83508()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000000134FB0;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_8CACC(inited);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

double sub_835F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5A754();
  swift_beginAccess();
  sub_116EB0();
  sub_116070();
  v4 = sub_115C90();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_46F9C(&qword_184160, &unk_127D70) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_836E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_46F9C(&qword_184138, &qword_127D50);
  __chkstk_darwin(v8 - 8);
  v10 = v46 - v9;
  v11 = *(a2 - 8);
  __chkstk_darwin(v12);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DynamicUsageView(0, a2, a3, v15);
  sub_116DC0();
  sub_116D60();
  v16 = (*(a3 + 72))(a2, a3);
  (*(v11 + 8))(v14, a2);
  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = *(v16 + 8 * v17 + 24);

  if (v18 < 0)
  {
    __break(1u);
LABEL_4:

    v18 = 0;
  }

  v55 = 0;
  v56 = v18;
  v19 = sub_115F00();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v46[1] = a4;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v20 = sub_1173A0();
  v21 = sub_47A1C(&qword_1841D0, &qword_127DB0);
  v46[0] = a1;
  v22 = v21;
  WitnessTable = swift_getWitnessTable();
  v48 = v20;
  v49 = &type metadata for Int;
  v50 = v22;
  v51 = WitnessTable;
  v52 = &protocol witness table for Int;
  v53 = sub_116E30();
  v24 = sub_47A1C(&qword_1841D8, &qword_127DB8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = sub_47A1C(&qword_1841E0, &qword_127DC0);
  v27 = sub_47A1C(&qword_1841E8, &qword_127DC8);
  v28 = sub_47A1C(&qword_1841F0, &qword_127DD0);
  v48 = sub_115E70();
  v49 = &protocol witness table for RuleMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v28;
  v49 = &type metadata for Color;
  v50 = OpaqueTypeConformance2;
  v51 = &protocol witness table for Color;
  v30 = swift_getOpaqueTypeConformance2();
  v48 = v27;
  v49 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v48 = v26;
  v49 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = v24;
  v49 = AssociatedTypeWitness;
  v50 = v32;
  v51 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = v24;
  v49 = AssociatedTypeWitness;
  v50 = v32;
  v51 = AssociatedConformanceWitness;
  v35 = swift_getOpaqueTypeConformance2();
  v38 = sub_4869C(v35, v36, v37);
  v48 = OpaqueTypeMetadata2;
  v49 = &type metadata for String;
  v50 = v35;
  v51 = v38;
  swift_getOpaqueTypeMetadata2();
  v54 = sub_117620();
  sub_115A60();
  v46[4] = sub_88B20();
  v47[0] = swift_getWitnessTable();
  v48 = OpaqueTypeMetadata2;
  v49 = &type metadata for String;
  v50 = v35;
  v51 = v38;
  v46[3] = swift_getOpaqueTypeConformance2();
  v47[1] = swift_getWitnessTable();
  v46[2] = v47;
  swift_getWitnessTable();
  v39 = sub_115DD0();
  v40 = swift_getWitnessTable();
  v48 = v39;
  v49 = &type metadata for Int;
  v50 = v40;
  v51 = &protocol witness table for Int;
  v41 = swift_getOpaqueTypeMetadata2();
  v42 = sub_47A1C(&qword_184160, &unk_127D70);
  v48 = v39;
  v49 = &type metadata for Int;
  v50 = v40;
  v51 = &protocol witness table for Int;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_7DDE8();
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = v44;
  swift_getOpaqueTypeMetadata2();
  sub_46F9C(&qword_184178, &qword_1285D0);
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = v44;
  swift_getOpaqueTypeConformance2();
  sub_7DEA4();
  sub_116970();
  return sub_488C8(v10, &qword_184138, &qword_127D50);
}

uint64_t sub_83D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v7 = sub_115C10();
  __chkstk_darwin(v7 - 8);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_117600();
  v39 = *(v44 - 8);
  __chkstk_darwin(v44);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v42 = &v37 - v11;
  v43 = sub_46F9C(&qword_1841B0, &unk_127D90);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v37 - v12;
  v13 = sub_115C80();
  __chkstk_darwin(v13 - 8);
  v51 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_115BE0();
  __chkstk_darwin(v15 - 8);
  v50 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_46F9C(&qword_184230, &qword_127DF8);
  v47 = *(v17 - 8);
  v48 = v17;
  __chkstk_darwin(v17);
  v46 = &v37 - v18;
  v19 = *(a2 - 8);
  __chkstk_darwin(v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DynamicUsageView(0, a2, a3, v23);
  sub_116DC0();
  v49 = a1;
  sub_116D60();
  v24 = *(a3 + 72);
  v25 = a3;
  v26 = v24(a2, a3);
  v27 = *(v19 + 8);
  v28 = a2;
  v27(v22, a2);
  v29 = *(v26 + 16);

  if (v29)
  {
    sub_116D60();
    v24(v28, v25);
    v27(v22, v28);
    sub_115BD0();
    sub_115C70();
    sub_46F9C(&qword_184368, &qword_128100);
    sub_8D014(&qword_184370, &qword_184368, &qword_128100, sub_8C9D0);
    v30 = v46;
    sub_115EA0();
    (*(v47 + 32))(v52, v30, v48);
  }

  else
  {
    v31 = v38;
    sub_115590();
    sub_1175F0();
    v32 = (*(v39 + 8))(v31, v44);
    *&v53 = 0x3FF0000000000000;
    sub_66C80(v32, v33, v34);
    sub_115C00();
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    sub_115BD0();
    sub_115C70();
    sub_8C988(&qword_184358, &type metadata accessor for NSDecimal.FormatStyle.Percent, &protocol conformance descriptor for NSDecimal.FormatStyle.Percent);
    v35 = v40;
    sub_115E80();
    (*(v41 + 32))(v52, v35, v43);
  }

  sub_46F9C(&qword_184360, &qword_1280F8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_8438C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v47 = sub_46F9C(&qword_184398, &qword_128118);
  __chkstk_darwin(v47);
  v46 = v40 - v1;
  v42 = sub_115A40();
  v2 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_46F9C(&qword_1843A0, &unk_128120);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v40 - v7;
  v9 = sub_115D00();
  __chkstk_darwin(v9 - 8);
  v40[3] = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_115DA0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_46F9C(&qword_184390, &qword_128110);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v40 - v14;
  v16 = sub_46F9C(&qword_184380, &qword_128108);
  __chkstk_darwin(v16 - 8);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v50 = v40 - v20;
  sub_115EB0();
  v49 = v18;
  if (BYTE8(v55) == 1)
  {
    v21 = 1;
  }

  else
  {
    v22 = [objc_opt_self() localizedStringWithPercentage:v55];
    v21 = 1;
    if (v22)
    {
      v23 = v22;
      sub_1171B0();
      v40[1] = v24;

      v40[2] = v40;
      __chkstk_darwin(v25);
      v18 = v49;
      sub_115D90();
      sub_115CF0();
      v39[3] = &protocol witness table for Text;
      v39[1] = v39;
      v39[2] = &type metadata for Text;
      v39[0] = sub_8CA80;
      sub_115C30();

      (*(v13 + 32))(v50, v15, v12);
      v21 = 0;
    }
  }

  v41 = v8;
  v26 = v50;
  (*(v13 + 56))(v50, v21, 1, v12);
  sub_116010();
  v55 = v52;
  v56 = v53;
  v57 = v54;
  sub_115A30();
  v27 = sub_5A754();
  swift_beginAccess();
  v51 = *(*v27 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
  v28 = v42;
  sub_115E10();
  (*(v2 + 8))(v4, v28);
  sub_479B4(v26, v18, &qword_184380, &qword_128108);
  v29 = v43;
  v30 = *(v43 + 16);
  v31 = v44;
  v32 = v45;
  v30(v44, v8, v45);
  sub_8C9D0();
  v33 = v46;
  sub_479B4(v18, v46, &qword_184380, &qword_128108);
  v34 = v47;
  v35 = *(v47 + 48);
  v30((v33 + v35), v31, v32);
  v36 = v48;
  sub_548D0(v33, v48, &qword_184380, &qword_128108);
  (*(v29 + 32))(v36 + *(v34 + 48), v33 + v35, v32);
  v37 = *(v29 + 8);
  v37(v41, v32);
  sub_488C8(v50, &qword_184380, &qword_128108);
  v37(v31, v32);
  return sub_488C8(v49, &qword_184380, &qword_128108);
}

uint64_t sub_84AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = a1;
  v33 = a4;
  v6 = sub_115C80();
  __chkstk_darwin(v6 - 8);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_115BE0();
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for DynamicUsageView(0, a2, a3, v9);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = sub_46F9C(&qword_1842B8, &qword_129030);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  v17 = sub_1158B0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_115C10();
  v22 = __chkstk_darwin(v21 - 8);
  (*(v18 + 104))(v20, enum case for Calendar.Component.day(_:), v17, v22);
  v23 = sub_1158D0();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  sub_115BF0();
  sub_488C8(v16, &qword_1842B8, &qword_129030);
  (*(v18 + 8))(v20, v17);
  (*(v11 + 16))(v13, v31, v10);
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = v30;
  *(v25 + 16) = v29;
  *(v25 + 24) = v26;
  (*(v11 + 32))(v25 + v24, v13, v10);
  sub_115BD0();
  sub_115C70();
  sub_46F9C(&qword_1842C0, &qword_1280A0);
  sub_8C4BC();
  return sub_115E90();
}

uint64_t sub_84E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a3;
  v65 = a4;
  v66 = a2;
  v70 = a5;
  v6 = sub_46F9C(&qword_184308, &qword_1280C0);
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = &v50 - v7;
  v8 = sub_46F9C(&qword_1842F8, &qword_1280B8);
  __chkstk_darwin(v8 - 8);
  v56 = &v50 - v9;
  v10 = sub_115D00();
  __chkstk_darwin(v10 - 8);
  v67 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_115DA0();
  __chkstk_darwin(v12 - 8);
  v68 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_46F9C(&qword_1842E8, &qword_1280B0);
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v57 = &v50 - v15;
  v16 = sub_46F9C(&qword_1842D8, &qword_1280A8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v69 = &v50 - v18;
  v62 = sub_1158B0();
  v19 = *(v62 - 8);
  __chkstk_darwin(v62);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1158D0();
  v60 = *(v22 - 8);
  v61 = v22;
  __chkstk_darwin(v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v25 - 8);
  v27 = &v50 - v26;
  v28 = sub_115760();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_115EB0();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_488C8(v27, &qword_182EF0, &unk_124BB0);
    return (*(v17 + 56))(v70, 1, 1, v16);
  }

  else
  {
    v51 = v28;
    v52 = v17;
    v50 = v29;
    (*(v29 + 32))(v31, v27, v28);
    sub_1158A0();
    v33 = v62;
    (*(v19 + 104))(v21, enum case for Calendar.Component.day(_:), v62);
    v34 = sub_1158C0();
    (*(v19 + 8))(v21, v33);
    (*(v60 + 8))(v24, v61);
    v35 = sub_115ED0();
    v36 = v31;
    if (v35)
    {
      __chkstk_darwin(v35);
      v46 = v64;
      v47 = v65;
      v48 = v66;
      v49 = v31;
      sub_115D90();
      sub_115CF0();
      if (v34 == 1)
      {
        v48 = sub_46F9C(&qword_184340, &qword_1280E8);
        v49 = sub_48800(&qword_184348, &qword_184340, &qword_1280E8, &protocol conformance descriptor for VStack<A>);
        v46 = sub_8C7EC;
        v47 = &v44;
        LOBYTE(v45) = 1;
        v44 = 0;
        v37 = v57;
        sub_115C30();
        v38 = v56;
        (*(v58 + 32))(v56, v37, v59);
      }

      else
      {
        v48 = sub_46F9C(&qword_184310, &qword_1280C8);
        v49 = sub_8C6E4();
        v46 = sub_8C6D8;
        v47 = &v44;
        LOBYTE(v45) = 1;
        v44 = 0;
        v42 = v53;
        sub_115C30();
        v38 = v56;
        (*(v54 + 32))(v56, v42, v55);
      }

      v41 = v70;
      sub_46F9C(&qword_184330, &qword_1280D8);
      swift_storeEnumTagMultiPayload();
      v40 = v69;
      sub_548D0(v38, v69, &qword_1842F8, &qword_1280B8);
    }

    else
    {
      __chkstk_darwin(0);
      sub_115D90();
      sub_115CF0();
      v48 = sub_46F9C(&qword_184340, &qword_1280E8);
      v49 = sub_48800(&qword_184348, &qword_184340, &qword_1280E8, &protocol conformance descriptor for VStack<A>);
      v46 = sub_8D69C;
      v47 = &v44;
      LOBYTE(v45) = 1;
      v44 = 0;
      v39 = v57;
      sub_115C30();
      v40 = v69;
      (*(v58 + 32))(v69, v39, v59);
      v41 = v70;
    }

    v43 = v52;
    sub_46F9C(&qword_184338, &qword_1280E0);
    swift_storeEnumTagMultiPayload();
    sub_548D0(v40, v41, &qword_1842D8, &qword_1280A8);
    (*(v43 + 56))(v41, 0, 1, v16);
    return (*(v50 + 8))(v36, v51);
  }
}

uint64_t sub_857E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v109 = a5;
  *&v110 = a2;
  v107 = sub_1158D0();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v103 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_115760();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v100 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v102 = &v96 - v11;
  __chkstk_darwin(v12);
  v101 = &v96 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v108 = sub_117620();
  v15 = *(v108 - 8);
  __chkstk_darwin(v108);
  v17 = &v96 - v16;
  v18 = *(a3 - 8);
  __chkstk_darwin(v19);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v23);
  v25 = &v96 - v24;
  v98 = type metadata accessor for DynamicUsageView(0, a3, a4, v26);
  sub_116DC0();
  v99 = a1;
  sub_116D60();
  (*(a4 + 56))(a3, a4);
  (*(v18 + 8))(v21, a3);
  v27 = &selRef_setUisocLevel_;
  if ((*(v22 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v17, v108);
LABEL_8:
    v61 = sub_8D8B4()[3];
    isa = sub_1156B0().super.isa;
    v63 = [v61 v27[101]];

    v64 = sub_1171B0();
    v66 = v65;

    *&v118 = v64;
    *(&v118 + 1) = v66;
    sub_4869C(v67, v68, v69);
    v112 = sub_116900();
    v113 = v70;
    v114 = v71 & 1;
    v115 = v72;
    v116 = 257;
    v117 = 1;
    sub_46F9C(&qword_184328, &qword_1280D0);
    sub_8C768();
    sub_116470();
    goto LABEL_9;
  }

  (*(v22 + 32))(v25, v17, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 32))(AssociatedTypeWitness);
  if (v29)
  {
    (*(v22 + 8))(v25, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v97 = v25;
  *&v108 = v22;
  v30 = v103;
  sub_1158A0();
  v31 = v101;
  sub_115830();
  v32 = *(v106 + 8);
  v33 = v107;
  v32(v30, v107);
  sub_1158A0();
  v34 = v100;
  sub_115700();
  v35 = v102;
  sub_115830();
  v36 = *(v104 + 8);
  v37 = v34;
  v38 = v105;
  v36(v37, v105);
  v32(v30, v33);
  LOBYTE(v30) = sub_115720();
  v36(v35, v38);
  v36(v31, v38);
  if ((v30 & 1) == 0)
  {
    (*(v108 + 8))(v97, AssociatedTypeWitness);
    v27 = &selRef_setUisocLevel_;
    goto LABEL_8;
  }

  v39 = sub_8D8B4()[3];
  v40 = sub_1156B0().super.isa;
  v27 = &selRef_setUisocLevel_;
  v41 = [v39 stringFromDate:v40];

  v42 = sub_1171B0();
  v44 = v43;

  *&v118 = v42;
  *(&v118 + 1) = v44;
  sub_4869C(v45, v46, v47);
  v48 = sub_116900();
  v50 = v49;
  v52 = v51;
  v53 = v97;
  *&v118 = sub_82754(v97, v98);
  v54 = sub_116890();
  v107 = AssociatedTypeWitness;
  v55 = v53;
  v57 = v56;
  v59 = v58;
  v106 = v60;
  sub_48928(v48, v50, v52 & 1);

  v112 = v54;
  v113 = v57;
  v114 = v59 & 1;
  v115 = v106;
  v116 = 257;
  v117 = 0;
  sub_46F9C(&qword_184328, &qword_1280D0);
  sub_8C768();
  sub_116470();
  (*(v108 + 8))(v55, v107);
LABEL_9:
  v73 = v120;
  v74 = v121;
  v108 = v119;
  v110 = v118;
  v75 = v118;
  v76 = v119;
  sub_8C910(v118, *(&v118 + 1), v119, *(&v119 + 1));
  v77 = sub_8D8B4()[5];
  v78 = sub_1156B0().super.isa;
  v79 = [v77 v27[101]];

  v80 = sub_1171B0();
  v82 = v81;

  *&v118 = v80;
  *(&v118 + 1) = v82;
  sub_4869C(v83, v84, v85);
  v86 = sub_116900();
  v88 = v87;
  LOBYTE(v79) = v89;
  v91 = v90;
  LOBYTE(v118) = v74;
  LOBYTE(v112) = v74;
  sub_8C910(v75, *(&v75 + 1), v76, *(&v76 + 1));
  LOBYTE(v79) = v79 & 1;
  sub_488B8(v86, v88, v79);

  sub_8C94C(v75, *(&v75 + 1), v76, *(&v76 + 1));
  v111 = v79;
  v92 = v112;
  v93 = v109;
  v94 = v108;
  *v109 = v110;
  v93[1] = v94;
  *(v93 + 16) = v73;
  *(v93 + 34) = v92;
  *(v93 + 5) = v86;
  *(v93 + 6) = v88;
  *(v93 + 56) = v79;
  *(v93 + 8) = v91;
  *(v93 + 36) = 257;
  sub_48928(v86, v88, v79);

  return sub_8C94C(v75, *(&v75 + 1), v76, *(&v76 + 1));
}