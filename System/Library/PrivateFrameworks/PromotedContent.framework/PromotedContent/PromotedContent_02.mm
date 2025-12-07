char *sub_1C1ACDE74(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07E78, &unk_1C1B9A070);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1ACDF80(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07B60, &qword_1C1B9A030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1ACE08C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07E28, &qword_1C1B9A010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1C1ACE1CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1C1AC1F08(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1C1ACE3BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1C1AC1F08(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C1AC1F08(&qword_1EBF07E60, &unk_1C1B9A050);
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1C1ACE4E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07E40, &qword_1C1B9A028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1ACE5F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07E38, &qword_1C1B9A020);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1C1ACE700()
{
  result = qword_1EBF07D10;
  if (!qword_1EBF07D10)
  {
    sub_1C1AC3404(&unk_1EBF07AA0, &qword_1C1B98CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D10);
  }

  return result;
}

__n128 sub_1C1ACE808(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C1ACE81C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C1ACE864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 sub_1C1ACE8B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1ACE8C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 32))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C1ACE90C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JourneyMetricsHelperDiagnostics.EventType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JourneyMetricsHelperDiagnostics.EventType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricEventsTrackingDTO.WrappedType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricEventsTrackingDTO.WrappedType(_WORD *result, int a2, int a3)
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

unint64_t sub_1C1ACEC68()
{
  result = qword_1EBF07D20;
  if (!qword_1EBF07D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D20);
  }

  return result;
}

unint64_t sub_1C1ACECC0()
{
  result = qword_1EBF07D28;
  if (!qword_1EBF07D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D28);
  }

  return result;
}

unint64_t sub_1C1ACED18()
{
  result = qword_1EBF07D30;
  if (!qword_1EBF07D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D30);
  }

  return result;
}

unint64_t sub_1C1ACED70()
{
  result = qword_1EBF07D38;
  if (!qword_1EBF07D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D38);
  }

  return result;
}

unint64_t sub_1C1ACEDC8()
{
  result = qword_1EBF07D40;
  if (!qword_1EBF07D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D40);
  }

  return result;
}

unint64_t sub_1C1ACEE20()
{
  result = qword_1EBF07D48;
  if (!qword_1EBF07D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D48);
  }

  return result;
}

unint64_t sub_1C1ACEE78()
{
  result = qword_1EBF07D50;
  if (!qword_1EBF07D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D50);
  }

  return result;
}

unint64_t sub_1C1ACEED0()
{
  result = qword_1EBF07D58;
  if (!qword_1EBF07D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D58);
  }

  return result;
}

unint64_t sub_1C1ACEF28()
{
  result = qword_1EBF07D60;
  if (!qword_1EBF07D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D60);
  }

  return result;
}

unint64_t sub_1C1ACEF80()
{
  result = qword_1EBF07D68;
  if (!qword_1EBF07D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D68);
  }

  return result;
}

unint64_t sub_1C1ACEFD8()
{
  result = qword_1EBF07D70;
  if (!qword_1EBF07D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D70);
  }

  return result;
}

unint64_t sub_1C1ACF030()
{
  result = qword_1EBF07D78;
  if (!qword_1EBF07D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D78);
  }

  return result;
}

unint64_t sub_1C1ACF088()
{
  result = qword_1EBF07D80;
  if (!qword_1EBF07D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D80);
  }

  return result;
}

unint64_t sub_1C1ACF0E0()
{
  result = qword_1EBF07D88;
  if (!qword_1EBF07D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D88);
  }

  return result;
}

unint64_t sub_1C1ACF138()
{
  result = qword_1EBF07D90;
  if (!qword_1EBF07D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D90);
  }

  return result;
}

unint64_t sub_1C1ACF190()
{
  result = qword_1EBF07D98;
  if (!qword_1EBF07D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D98);
  }

  return result;
}

unint64_t sub_1C1ACF1E8()
{
  result = qword_1EBF07DA0;
  if (!qword_1EBF07DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DA0);
  }

  return result;
}

unint64_t sub_1C1ACF240()
{
  result = qword_1EBF07DA8;
  if (!qword_1EBF07DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DA8);
  }

  return result;
}

unint64_t sub_1C1ACF298()
{
  result = qword_1EBF07DB0;
  if (!qword_1EBF07DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DB0);
  }

  return result;
}

unint64_t sub_1C1ACF2F0()
{
  result = qword_1EBF07DB8;
  if (!qword_1EBF07DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DB8);
  }

  return result;
}

unint64_t sub_1C1ACF348()
{
  result = qword_1EBF07DC0;
  if (!qword_1EBF07DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DC0);
  }

  return result;
}

unint64_t sub_1C1ACF3A0()
{
  result = qword_1EBF07DC8;
  if (!qword_1EBF07DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DC8);
  }

  return result;
}

unint64_t sub_1C1ACF3F8()
{
  result = qword_1EBF07DD0;
  if (!qword_1EBF07DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DD0);
  }

  return result;
}

unint64_t sub_1C1ACF450()
{
  result = qword_1EBF07DD8;
  if (!qword_1EBF07DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DD8);
  }

  return result;
}

unint64_t sub_1C1ACF4A8()
{
  result = qword_1EBF07DE0;
  if (!qword_1EBF07DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DE0);
  }

  return result;
}

unint64_t sub_1C1ACF500()
{
  result = qword_1EBF07DE8;
  if (!qword_1EBF07DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DE8);
  }

  return result;
}

unint64_t sub_1C1ACF558()
{
  result = qword_1EBF07DF0;
  if (!qword_1EBF07DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DF0);
  }

  return result;
}

unint64_t sub_1C1ACF5B0()
{
  result = qword_1EBF07DF8;
  if (!qword_1EBF07DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DF8);
  }

  return result;
}

unint64_t sub_1C1ACF608()
{
  result = qword_1EBF07E00;
  if (!qword_1EBF07E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07E00);
  }

  return result;
}

unint64_t sub_1C1ACF660()
{
  result = qword_1EBF07E08;
  if (!qword_1EBF07E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07E08);
  }

  return result;
}

unint64_t sub_1C1ACF6B8()
{
  result = qword_1EBF07E10;
  if (!qword_1EBF07E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07E10);
  }

  return result;
}

unint64_t sub_1C1ACF710()
{
  result = qword_1EBF07E18;
  if (!qword_1EBF07E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07E18);
  }

  return result;
}

unint64_t sub_1C1ACF768()
{
  result = qword_1EBF07E20;
  if (!qword_1EBF07E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07E20);
  }

  return result;
}

uint64_t sub_1C1ACF7BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7964616572 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465646E61707865 && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E61707845746F6ELL && a2 == 0xEC000000676E6964 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657370616C6C6F63 && a2 == 0xE900000000000064 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E65657263536E6FLL && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656572635366666FLL && a2 == 0xE90000000000006ELL || (sub_1C1B95888() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74736F6E67616964 && a2 == 0xEA00000000006369 || (sub_1C1B95888() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x646564616F6C6E75 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

id sub_1C1ACFB88(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C1B94588();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_history] = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_createdDate;
  sub_1C1B94578();
  sub_1C1B944F8();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  *&v2[v7] = v9;
  v10 = &v2[OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_lastReadyIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v11 = type metadata accessor for JourneyMetricsHelperDiagnostics();
  v18.receiver = v2;
  v18.super_class = v11;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v16[0] = 0;
  v16[1] = 0;
  v17 = 3;
  v13 = v12;
  sub_1C1ACCE70(v16);

  return v13;
}

uint64_t sub_1C1ACFD40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x654D73656E755469;
  }

  else
  {
    v3 = 0x6E6564496D616461;
  }

  if (v2)
  {
    v4 = 0xEE00726569666974;
  }

  else
  {
    v4 = 0xEE00617461646174;
  }

  if (*a2)
  {
    v5 = 0x654D73656E755469;
  }

  else
  {
    v5 = 0x6E6564496D616461;
  }

  if (*a2)
  {
    v6 = 0xEE00617461646174;
  }

  else
  {
    v6 = 0xEE00726569666974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1ACFE00()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1ACFE9C(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1ACFF24(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1ACFFBC@<X0>(char *a2@<X8>)
{
  v3 = sub_1C1B955F8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1C1AD001C(uint64_t *a1@<X8>)
{
  v2 = 0x6E6564496D616461;
  if (*v1)
  {
    v2 = 0x654D73656E755469;
  }

  v3 = 0xEE00726569666974;
  if (*v1)
  {
    v3 = 0xEE00617461646174;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C1AD0074()
{
  if (*v0)
  {
    return 0x654D73656E755469;
  }

  else
  {
    return 0x6E6564496D616461;
  }
}

uint64_t sub_1C1AD00C8@<X0>(char *a3@<X8>)
{
  v4 = sub_1C1B955F8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1C1AD012C(uint64_t a1)
{
  v2 = sub_1C1AD0B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD0168(uint64_t a1)
{
  v2 = sub_1C1AD0B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id StoreTapAction.__allocating_init(adamIdentifier:iTunesMetadata:confirmedClickInterval:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_adamIdentifier] = a1;
  *&v5[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata] = a2;
  *&v5[OBJC_IVAR___APPCTapAction_actionType] = 2;
  *&v5[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v7, sel_init);
}

id StoreTapAction.init(adamIdentifier:iTunesMetadata:confirmedClickInterval:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_adamIdentifier] = a1;
  *&v2[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata] = a2;
  *&v2[OBJC_IVAR___APPCTapAction_actionType] = 2;
  *&v2[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v4, sel_init);
}

char *StoreTapAction.__allocating_init(_:)(char *a1)
{
  return sub_1C1AD02F0(a1, &OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier, &OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata, "Unable to initialize StoreTapAction from MobileRichAdInterfaceDefinitionTapAction because of missing required fields.");
}

{
  return sub_1C1AD02F0(a1, &OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier, &OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata, "Unable to initialize StoreTapAction from OutstreamVideoTapAction because of missing required fields.");
}

char *sub_1C1AD02F0(char *a1, void *a2, void *a3, const char *a4)
{
  v5 = *&a1[*a2];
  if (v5 && (v6 = *&a1[*a3]) != 0)
  {
    v7 = objc_allocWithZone(type metadata accessor for StoreTapAction());
    *&v7[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_adamIdentifier] = v5;
    *&v7[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata] = v6;
    *&v7[OBJC_IVAR___APPCTapAction_actionType] = 2;
    *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
    v16.receiver = v7;
    v16.super_class = type metadata accessor for TapAction();
    v8 = v5;

    v9 = objc_msgSendSuper2(&v16, sel_init);

    return v9;
  }

  else
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C1B94BE8();
    sub_1C1AB4454(v12, qword_1EDE6D058);
    v13 = sub_1C1B94BC8();
    v14 = sub_1C1B95118();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C1AA2000, v13, v14, a4, v15, 2u);
      MEMORY[0x1C6908230](v15, -1, -1);
    }

    return 0;
  }
}

void *sub_1C1AD04D4(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07EC0, &unk_1C1B9A240);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AD0B04();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for StoreTapAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    sub_1C1B956B8();
    v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *(v1 + OBJC_IVAR____TtC15PromotedContent14StoreTapAction_adamIdentifier) = v11;
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    v13 = 1;
    sub_1C1AD0C9C(&unk_1EDE6BBF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1C1B956F8();
    *(v1 + OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata) = v12[0];
    sub_1C1B95628();
    v3 = TapAction.init(from:)(v12);
    (*(v6 + 8))(v8, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1AD07C0(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07E90, &qword_1C1B9A0C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AD0B04();
  sub_1C1B95A18();
  [*(v3 + OBJC_IVAR____TtC15PromotedContent14StoreTapAction_adamIdentifier) doubleValue];
  LOBYTE(v10[0]) = 0;
  sub_1C1B957C8();
  if (!v2)
  {
    v10[0] = *(v3 + OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata);
    v11 = 1;
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    sub_1C1AD0C9C(&qword_1EDE6BC00, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1C1B95808();
    sub_1C1B95738();
    sub_1C1B3BBE0(v10);
    sub_1C1AA86F8(v10);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C1AD0A20()
{
}

id StoreTapAction.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StoreTapAction();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C1AD0B04()
{
  result = qword_1EBF07E98;
  if (!qword_1EBF07E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07E98);
  }

  return result;
}

unint64_t sub_1C1AD0B98()
{
  result = qword_1EBF07EA8;
  if (!qword_1EBF07EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07EA8);
  }

  return result;
}

unint64_t sub_1C1AD0BF0()
{
  result = qword_1EBF07EB0;
  if (!qword_1EBF07EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07EB0);
  }

  return result;
}

unint64_t sub_1C1AD0C48()
{
  result = qword_1EBF07EB8;
  if (!qword_1EBF07EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07EB8);
  }

  return result;
}

uint64_t sub_1C1AD0C9C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

PromotedContent::FrequencyCapStorageType_optional __swiftcall FrequencyCapStorageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C1B955F8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FrequencyCapStorageType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x614C686372616573;
  v3 = 0x6F6C537961646F74;
  if (v1 != 5)
  {
    v3 = 0x6F6C537961646F74;
  }

  v4 = 0x50746375646F7270;
  if (v1 != 3)
  {
    v4 = 0x6F6C537961646F74;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6552686372616573;
  if (v1 != 1)
  {
    v5 = 0x6F44676E69727564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1C1AD0EC0()
{
  result = qword_1EBF07EC8;
  if (!qword_1EBF07EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07EC8);
  }

  return result;
}

uint64_t sub_1C1AD0F20(uint64_t a1)
{
  sub_1C1B94DE8();
}

void sub_1C1AD107C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E69646ELL;
  v4 = 0x614C686372616573;
  v5 = 0x6F6C537961646F74;
  v6 = 0xEA00000000003374;
  if (v2 == 5)
  {
    v6 = 0xEA00000000003274;
  }

  else
  {
    v5 = 0x6F6C537961646F74;
  }

  v7 = 0xEB00000000656761;
  v8 = 0x50746375646F7270;
  if (v2 != 3)
  {
    v8 = 0x6F6C537961646F74;
    v7 = 0xEA00000000003174;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xED000073746C7573;
  v10 = 0x6552686372616573;
  if (v2 != 1)
  {
    v10 = 0x6F44676E69727564;
    v9 = 0xEE0064616F6C6E77;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for FrequencyCapStorageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FrequencyCapStorageType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ClientLayoutAsset.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCClientLayoutAsset_name);

  return v1;
}

uint64_t ClientLayoutAsset.treatment.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCClientLayoutAsset_treatment);

  return v1;
}

id ClientLayoutAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C1AD1418()
{
  v1 = 1701667182;
  v2 = 0x64496D616461;
  if (*v0 != 2)
  {
    v2 = 0x6E656D7461657274;
  }

  if (*v0)
  {
    v1 = 0x666E497465737361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C1AD1498@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1AD2030(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1AD14CC(uint64_t a1)
{
  v2 = sub_1C1AD1848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD1508(uint64_t a1)
{
  v2 = sub_1C1AD1848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ClientLayoutAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientLayoutAsset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1AD1600(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07EF0, &qword_1C1B9A3B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AD1848();
  sub_1C1B95A18();
  v12 = 0;
  sub_1C1B95748();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR___APPCClientLayoutAsset_assetInfoArray);
    v10[15] = 1;
    sub_1C1AC1F08(&qword_1EBF07F00, &qword_1C1B9A3B8);
    sub_1C1AD1C0C(&qword_1EBF07F08, &qword_1EBF07F10, &protocol conformance descriptor for ClientLayoutAssetInfo, MEMORY[0x1E69E6300]);
    sub_1C1B95788();
    v10[14] = 2;
    sub_1C1B95798();
    v10[13] = 3;
    sub_1C1B95748();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1AD1848()
{
  result = qword_1EBF07EF8;
  if (!qword_1EBF07EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07EF8);
  }

  return result;
}

char *ClientLayoutAsset.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07F18, &qword_1C1B9A3C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AD1848();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for ClientLayoutAsset();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v23) = 0;
    v9 = sub_1C1B95638();
    v11 = (v1 + OBJC_IVAR___APPCClientLayoutAsset_name);
    *v11 = v9;
    v11[1] = v12;
    sub_1C1AC1F08(&qword_1EBF07F00, &qword_1C1B9A3B8);
    v22 = 1;
    sub_1C1AD1C0C(&qword_1EBF07F20, &qword_1EBF07F28, &protocol conformance descriptor for ClientLayoutAssetInfo, MEMORY[0x1E69E6330]);
    sub_1C1B95678();
    *(v1 + OBJC_IVAR___APPCClientLayoutAsset_assetInfoArray) = v23;
    LOBYTE(v23) = 2;
    v13 = sub_1C1B95688();
    v14 = v1 + OBJC_IVAR___APPCClientLayoutAsset_adamId;
    *v14 = v13;
    v14[8] = v15 & 1;
    LOBYTE(v23) = 3;
    v16 = sub_1C1B95638();
    v17 = (v1 + OBJC_IVAR___APPCClientLayoutAsset_treatment);
    *v17 = v16;
    v17[1] = v18;
    v19 = type metadata accessor for ClientLayoutAsset();
    v21.receiver = v1;
    v21.super_class = v19;
    v3 = objc_msgSendSuper2(&v21, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1AD1C0C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF07F00, &qword_1C1B9A3B8);
    sub_1C1AD1C94(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1AD1C94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClientLayoutAssetInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1C1AD1CD8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ClientLayoutAsset());
  result = ClientLayoutAsset.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientLayoutAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientLayoutAsset.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1AD1F2C()
{
  result = qword_1EBF07F30;
  if (!qword_1EBF07F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07F30);
  }

  return result;
}

unint64_t sub_1C1AD1F84()
{
  result = qword_1EBF07F38;
  if (!qword_1EBF07F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07F38);
  }

  return result;
}

unint64_t sub_1C1AD1FDC()
{
  result = qword_1EBF07F40;
  if (!qword_1EBF07F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07F40);
  }

  return result;
}

uint64_t sub_1C1AD2030(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666E497465737361 && a2 == 0xEE0079617272416FLL || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496D616461 && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D7461657274 && a2 == 0xE900000000000074)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

char *sub_1C1AD26A0()
{
  v1 = v0;
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  v7 = sub_1C1B94588();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_storeFront;
  v12 = *(v0 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_storeFront);
  v13 = *(v11 + 8);
  v14 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_storeFrontLocale);
  v15 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_storeFrontLocale + 8);
  objc_allocWithZone(type metadata accessor for AppStoreSupplementalContext(0));

  v16 = AppStoreSupplementalContext.init(storeFront:storeFrontLocale:)(v12, v13, v14, v15);
  v17 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_impressionCap);
  if (v17)
  {
    v18 = OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap;
    swift_beginAccess();
    *&v16[v18] = v17;
  }

  v19 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_clickCap);
  if (v19)
  {
    v20 = OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap;
    swift_beginAccess();
    *&v16[v20] = v19;
  }

  v21 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_additionalImpressionCaps;
  swift_beginAccess();
  v22 = *(v1 + v21);
  v23 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalImpressionCaps;
  swift_beginAccess();
  *&v16[v23] = v22;

  v24 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_additionalClickCaps;
  swift_beginAccess();
  v25 = *(v1 + v24);
  v26 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalClickCaps;
  swift_beginAccess();
  *&v16[v26] = v25;

  v27 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_adamId + 8);
  if (v27)
  {
    v28 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_adamId);
    v29 = &v16[OBJC_IVAR___APPCAppStoreSupplementalContext_adamId];
    swift_beginAccess();
    *v29 = v28;
    *(v29 + 1) = v27;
  }

  v30 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_appMetadataFields);
  if (v30)
  {
    v31 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
    swift_beginAccess();
    *&v16[v31] = v30;
  }

  v32 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_requestTime;
  swift_beginAccess();
  sub_1C1AA7E30(v1 + v32, v6, &qword_1EBF07F50, &qword_1C1B9A590);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C1ABBAF4(v6);
  }

  else
  {
    v33 = *(v8 + 32);
    v33(v10, v6, v7);
    v34 = v37;
    v33(v37, v10, v7);
    (*(v8 + 56))(v34, 0, 1, v7);
    v35 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
    swift_beginAccess();
    sub_1C1AABE90(v34, &v16[v35]);
    swift_endAccess();
  }

  return v16;
}

id AppStoreSupplementalContextBuilder.init(storeFront:storeFrontLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_impressionCap] = 0;
  *&v4[OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_clickCap] = 0;
  v9 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_additionalImpressionCaps;
  v10 = MEMORY[0x1E69E7CC0];
  *&v4[v9] = sub_1C1AD40A0(MEMORY[0x1E69E7CC0]);
  v11 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_additionalClickCaps;
  *&v4[v11] = sub_1C1AD40A0(v10);
  v12 = &v4[OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_adamId];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_appMetadataFields] = 0;
  v13 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_requestTime;
  v14 = sub_1C1B94588();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = &v4[OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_storeFront];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v4[OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_storeFrontLocale];
  *v16 = a3;
  *(v16 + 1) = a4;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for AppStoreSupplementalContextBuilder(0);
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1C1AD2CBC(uint64_t a1, void *a2)
{
  *(v2 + *a2) = a1;
}

uint64_t sub_1C1AD2D08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1C1AE4068(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1C1AD8AE8(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1C1ADA820();
        v11 = v13;
      }

      result = sub_1C1AD371C(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1C1AD2DC8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2 == -1)
  {
    v11 = sub_1C1AD8BA0(a3);
    if (v12)
    {
      v13 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1C1ADA990();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_1C1B944A8();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);
      sub_1C1AD4AEC(*(*(v15 + 56) + 16 * v13), *(*(v15 + 56) + 16 * v13 + 8));
      sub_1C1AD3A40(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_1C1B944A8();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    sub_1C1AE41E0(a1, a2 & 1, a3, v8);
    v9 = sub_1C1B944A8();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v4 = v22;
  }

  return result;
}

uint64_t sub_1C1AD2FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1C1AE458C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1C1AA7C14(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1C1ADAD98();
        v16 = v18;
      }

      result = sub_1C1AD356C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1C1AD30AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1C1AE43C8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1C1AA7C14(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1C1ADAC24();
        v14 = v16;
      }

      result = sub_1C1AD3D04(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1C1AD31B0(uint64_t result, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = result;
    swift_beginAccess();

    sub_1C1AD2D08(v4, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C1AD3220(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_adamId);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C1AD326C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_appMetadataFields) = a1;
}

uint64_t sub_1C1AD32B0(uint64_t a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1C1B94588();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_requestTime;
  swift_beginAccess();
  sub_1C1AABE90(v5, v1 + v8);
  return swift_endAccess();
}

id AppStoreSupplementalContextBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppStoreSupplementalContextBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreSupplementalContextBuilder(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1AD356C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1B95338() + 1) & ~v5;
    do
    {
      sub_1C1B95958();

      sub_1C1B94DE8();
      v9 = sub_1C1B959A8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C1AD371C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1B95338() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1C1B95948();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C1AD388C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1B95338() + 1) & ~v5;
    do
    {
      sub_1C1B95958();

      sub_1C1B94DE8();
      v10 = sub_1C1B959A8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C1AD3A40(int64_t a1, uint64_t a2)
{
  v4 = sub_1C1B944A8();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1C1B95338();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_1C1AD4AF8();
      v21 = sub_1C1B94D28();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 16 * a1);
          v31 = (v29 + 16 * v11);
          if (16 * a1 != 16 * v11 || (a1 = v11, v30 >= v31 + 1))
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C1AD3D04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1B95338() + 1) & ~v5;
    do
    {
      sub_1C1B95958();

      sub_1C1B94DE8();
      v9 = sub_1C1B959A8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C1AD3EB8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1B95338() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1C1B95958();
      MEMORY[0x1C6907960](50 * v9);
      result = sub_1C1B959A8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1C1B94588() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1C1AD40A0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1C1AC1F08(&qword_1EBF080F8, &qword_1C1B9A6D0);
  v3 = sub_1C1B955C8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1C1AD8AE8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1C1AD8AE8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AppStoreSupplementalContextBuilder(uint64_t a1)
{
  result = qword_1EDE6BC78;
  if (!qword_1EDE6BC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1AD41FC(uint64_t a1)
{
  sub_1C1AA3EA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C1AD44D8(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&unk_1EBF07FB0, &unk_1C1B9A630);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1C1AC1F08(&unk_1EBF09720, &unk_1C1BA36A0);
    v7 = sub_1C1B955C8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1C1AA7E30(v9, v5, &unk_1EBF07FB0, &unk_1C1B9A630);
      result = sub_1C1AD8B2C(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_1C1B94588();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1AD46B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C1AC1F08(&qword_1EBF08038, &unk_1C1B9A660);
    v3 = sub_1C1B955C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1C1AA7C14(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1AD47CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1C1AC1F08(a2, a3);
    v5 = sub_1C1B955C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C1AA7C14(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1AD48DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C1AC1F08(&qword_1EBF07FC0, &qword_1C1B9A640);
    v3 = sub_1C1B955C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C1AA7C14(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1AD49F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C1AC1F08(&unk_1EBF07FA0, &unk_1C1B9A620);
    v3 = sub_1C1B955C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C1AA7C14(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C1AD4AEC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1C1AD4AF8()
{
  result = qword_1EDE6B868;
  if (!qword_1EDE6B868)
  {
    sub_1C1B944A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B868);
  }

  return result;
}

PromotedContent::OptionalBoolean_optional __swiftcall OptionalBoolean.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if ((rawValue + 1) < 3)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C1AD4B78()
{
  result = qword_1EBF08100;
  if (!qword_1EBF08100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08100);
  }

  return result;
}

uint64_t sub_1C1AD4BCC()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1 - 1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1AD4C44(uint64_t a1)
{
  v2 = *v1;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v2 - 1);
  return sub_1C1B959A8();
}

uint64_t getEnumTagSinglePayload for OptionalBoolean(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OptionalBoolean(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1AD4EA0()
{
  result = qword_1EBF08108;
  if (!qword_1EBF08108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08108);
  }

  return result;
}

uint64_t sub_1C1AD4F08(uint64_t a1)
{
  v2 = sub_1C1AD55E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD4F44(uint64_t a1)
{
  v2 = sub_1C1AD55E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AD4F80()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x646165687473616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656E6E6162;
  }
}

uint64_t sub_1C1AD4FD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1AD6074(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1AD5008(uint64_t a1)
{
  v2 = sub_1C1AD54E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD5044(uint64_t a1)
{
  v2 = sub_1C1AD54E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AD5080(uint64_t a1)
{
  v2 = sub_1C1AD5590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD50BC(uint64_t a1)
{
  v2 = sub_1C1AD5590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AD50F8(uint64_t a1)
{
  v2 = sub_1C1AD553C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD5134(uint64_t a1)
{
  v2 = sub_1C1AD553C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SponsorshipPlacement.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08110, &qword_1C1B9A7F0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = sub_1C1AC1F08(&qword_1EBF08118, &qword_1C1B9A7F8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = sub_1C1AC1F08(&qword_1EBF08120, &qword_1C1B9A800);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = sub_1C1AC1F08(&qword_1EBF08128, &qword_1C1B9A808);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AD54E8();
  sub_1C1B95A18();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1C1AD5590();
      v9 = v21;
      sub_1C1B95728();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1C1AD553C();
      v9 = v24;
      sub_1C1B95728();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1C1AD55E4();
    sub_1C1B95728();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1C1AD54E8()
{
  result = qword_1EBF08130;
  if (!qword_1EBF08130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08130);
  }

  return result;
}

unint64_t sub_1C1AD553C()
{
  result = qword_1EBF08138;
  if (!qword_1EBF08138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08138);
  }

  return result;
}

unint64_t sub_1C1AD5590()
{
  result = qword_1EBF08140;
  if (!qword_1EBF08140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08140);
  }

  return result;
}

unint64_t sub_1C1AD55E4()
{
  result = qword_1EBF08148;
  if (!qword_1EBF08148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08148);
  }

  return result;
}

uint64_t SponsorshipPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t SponsorshipPlacement.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = sub_1C1AC1F08(&qword_1EBF08150, &qword_1C1B9A810);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = sub_1C1AC1F08(&qword_1EBF08158, &qword_1C1B9A818);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = sub_1C1AC1F08(&qword_1EBF08160, &qword_1C1B9A820);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = sub_1C1AC1F08(&qword_1EBF08168, &unk_1C1B9A828);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  sub_1C1AAABE0(a1, v14);
  sub_1C1AD54E8();
  v15 = v36;
  sub_1C1B95A08();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1C1B95718();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1C1ACC6DC();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1C1B954C8();
      swift_allocError();
      v24 = v23;
      sub_1C1AC1F08(&qword_1EBF07CC0, &qword_1C1B99190);
      *v24 = &type metadata for SponsorshipPlacement;
      sub_1C1B95618();
      sub_1C1B954B8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1C1AD5590();
          sub_1C1B95608();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1C1AD553C();
          v26 = v17;
          sub_1C1B95608();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1C1AD55E4();
        sub_1C1B95608();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return sub_1C1AA86F8(v37);
}

unint64_t sub_1C1AD5C20()
{
  result = qword_1EBF08170;
  if (!qword_1EBF08170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08170);
  }

  return result;
}

unint64_t sub_1C1AD5C78()
{
  result = qword_1EBF08178;
  if (!qword_1EBF08178)
  {
    sub_1C1AC3404(&qword_1EBF08180, &qword_1C1B9A8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08178);
  }

  return result;
}

unint64_t sub_1C1AD5D60()
{
  result = qword_1EBF08188;
  if (!qword_1EBF08188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08188);
  }

  return result;
}

unint64_t sub_1C1AD5DB8()
{
  result = qword_1EBF08190;
  if (!qword_1EBF08190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08190);
  }

  return result;
}

unint64_t sub_1C1AD5E10()
{
  result = qword_1EBF08198;
  if (!qword_1EBF08198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08198);
  }

  return result;
}

unint64_t sub_1C1AD5E68()
{
  result = qword_1EBF081A0;
  if (!qword_1EBF081A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF081A0);
  }

  return result;
}

unint64_t sub_1C1AD5EC0()
{
  result = qword_1EBF081A8;
  if (!qword_1EBF081A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF081A8);
  }

  return result;
}

unint64_t sub_1C1AD5F18()
{
  result = qword_1EBF081B0;
  if (!qword_1EBF081B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF081B0);
  }

  return result;
}

unint64_t sub_1C1AD5F70()
{
  result = qword_1EBF081B8;
  if (!qword_1EBF081B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF081B8);
  }

  return result;
}

unint64_t sub_1C1AD5FC8()
{
  result = qword_1EBF081C0;
  if (!qword_1EBF081C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF081C0);
  }

  return result;
}

unint64_t sub_1C1AD6020()
{
  result = qword_1EBF081C8;
  if (!qword_1EBF081C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF081C8);
  }

  return result;
}

uint64_t sub_1C1AD6074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E6E6162 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646165687473616DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t AppStoreSupplementalContext.storeFront.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront);

  return v1;
}

id sub_1C1AD6244(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1C1B94D78();

  return v3;
}

uint64_t AppStoreSupplementalContext.storeFrontLocale.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale);

  return v1;
}

id sub_1C1AD630C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  if (*(a1 + v4))
  {

    sub_1C1AC1F08(&qword_1EBF08230, &qword_1C1B9ACC0);
    v5 = sub_1C1B94CA8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1C1AD63CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  if (a3)
  {
    sub_1C1AC1F08(&qword_1EBF08230, &qword_1C1B9ACC0);
    v5 = sub_1C1B94CB8();
  }

  v7 = *a4;
  swift_beginAccess();
  *(a1 + v7) = v5;
}

id sub_1C1AD6490(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();

  sub_1C1AC1F08(&qword_1EBF08228, &qword_1C1B9ACB8);
  v3 = sub_1C1B94CA8();

  return v3;
}

uint64_t sub_1C1AD6544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1C1AC1F08(&qword_1EBF08228, &qword_1C1B9ACB8);
  v6 = sub_1C1B94CB8();
  v7 = *a4;
  swift_beginAccess();
  *(a1 + v7) = v6;
}

uint64_t sub_1C1AD65D4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_1C1AD66C4()
{
  v1 = (v0 + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C1AD6798(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1C1AD6A7C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  return sub_1C1AA7E30(v1 + v3, a1, &qword_1EBF07F50, &qword_1C1B9A590);
}

uint64_t sub_1C1AD6C24(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1C1AA7E30(a1, &v10 - v5, &qword_1EBF07F50, &qword_1C1B9A590);
  v7 = *a2;
  v8 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  sub_1C1AABE90(v6, v7 + v8);
  return swift_endAccess();
}

void *sub_1C1AD6D7C()
{
  v31 = sub_1C1B959E8();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1AB77A4(MEMORY[0x1E69E7CC0]);
  *(&v38 + 1) = type metadata accessor for AppStoreSupplementalContext(0);
  *&v37 = v0;
  v4 = v0;
  sub_1C1B959C8();
  v29 = v2;
  sub_1C1B959D8();
  sub_1C1B95548();

  sub_1C1B955E8();
  if (!v39)
  {
LABEL_40:
    (*(v30 + 8))(v29, v31);

    return v3;
  }

  v28 = 0x80000001C1BA55D0;
  v27 = 0x80000001C1BA55B0;
  v26 = 0x80000001C1BA5590;
  v25 = 0x80000001C1BA5570;
  while (1)
  {
    while (1)
    {
      v35 = v37;
      sub_1C1AA7E98(&v38, &v36);
      sub_1C1AA7E30(&v35, v33, &unk_1EBF08550, &qword_1C1B9ACA8);
      if (v33[1])
      {
        break;
      }

      sub_1C1AA7C8C(&v35, &unk_1EBF08550, &qword_1C1B9ACA8);
      sub_1C1AA86F8(v34);
LABEL_4:
      sub_1C1B955E8();
      if (!v39)
      {
        goto LABEL_40;
      }
    }

    sub_1C1AA86F8(v34);
    sub_1C1AA7E30(&v35, v33, &unk_1EBF08550, &qword_1C1B9ACA8);

    sub_1C1AC1F08(&qword_1EBF08210, &qword_1C1BA4330);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C1AA7C8C(&v35, &unk_1EBF08550, &qword_1C1B9ACA8);

      goto LABEL_4;
    }

    v5 = v32;
    v6 = sub_1C1B955F8();

    if (v6 <= 3)
    {
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v7 = 0xD000000000000018;
          v8 = v25;
        }

        else
        {
          v7 = 0xD000000000000013;
          v8 = v26;
        }
      }

      else if (v6)
      {
        if (v6 != 1)
        {
          goto LABEL_22;
        }

        v8 = 0xE800000000000000;
        v7 = 0x7061436B63696C63;
      }

      else
      {
        v7 = 0x6973736572706D69;
        v8 = 0xED00007061436E6FLL;
      }
    }

    else if (v6 <= 5)
    {
      if (v6 == 4)
      {
        v8 = 0xEA0000000000746ELL;
        v7 = 0x6F724665726F7473;
      }

      else
      {
        v7 = 0xD000000000000010;
        v8 = v27;
      }
    }

    else
    {
      switch(v6)
      {
        case 6:
          v8 = 0xE600000000000000;
          v7 = 0x64496D616461;
          break;
        case 7:
          v7 = 0xD000000000000011;
          v8 = v28;
          break;
        case 8:
          v7 = 0x5474736575716572;
          v8 = 0xEB00000000656D69;
          break;
        default:
LABEL_22:
          sub_1C1AA7C8C(&v35, &unk_1EBF08550, &qword_1C1B9ACA8);
          swift_unknownObjectRelease();
          goto LABEL_4;
      }
    }

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = v3;
    v10 = v8;
    v12 = sub_1C1AA7C14(v7, v8);
    v13 = v3;
    v14 = v3[2];
    v15 = (v11 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v11;
    if (v13[3] >= v16)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v11)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_1C1ADA6C0(&qword_1EBF080F0, &unk_1C1B9AF20);
        if (v17)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      sub_1C1AB3348(v16, isUniquelyReferenced_nonNull_native, &qword_1EBF080F0, &unk_1C1B9AF20);
      v18 = sub_1C1AA7C14(v7, v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_43;
      }

      v12 = v18;
      if (v17)
      {
LABEL_35:

        v3 = v33[0];
        *(*(v33[0] + 56) + 8 * v12) = v5;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1C1AA7C8C(&v35, &unk_1EBF08550, &qword_1C1B9ACA8);
        goto LABEL_39;
      }
    }

    v3 = v33[0];
    *(v33[0] + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v3[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v10;
    *(v3[7] + 8 * v12) = v5;
    swift_unknownObjectRelease();
    sub_1C1AA7C8C(&v35, &unk_1EBF08550, &qword_1C1B9ACA8);
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_42;
    }

    v3[2] = v23;
LABEL_39:
    sub_1C1B955E8();
    if (!v39)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1C1B958E8();
  __break(1u);
  return result;
}

id AppStoreSupplementalContext.init(storeFront:storeFrontLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap] = 0;
  *&v4[OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap] = 0;
  v9 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalImpressionCaps;
  v10 = MEMORY[0x1E69E7CC0];
  *&v4[v9] = sub_1C1AD40A0(MEMORY[0x1E69E7CC0]);
  v11 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalClickCaps;
  *&v4[v11] = sub_1C1AD40A0(v10);
  v12 = &v4[OBJC_IVAR___APPCAppStoreSupplementalContext_adamId];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields] = 0;
  v13 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  v14 = sub_1C1B94588();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = &v4[OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v4[OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale];
  *v16 = a3;
  *(v16 + 1) = a4;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for AppStoreSupplementalContext(0);
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1C1AD7498@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = *(v1 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront);
  v8 = *(v1 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront + 8);
  v10 = *(v1 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale);
  v9 = *(v1 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale + 8);
  v11 = type metadata accessor for AppStoreSupplementalContext(0);
  v12 = objc_allocWithZone(v11);

  v13 = AppStoreSupplementalContext.init(storeFront:storeFrontLocale:)(v7, v8, v10, v9);
  v14 = OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap;
  swift_beginAccess();
  v15 = *(v2 + v14);
  v16 = OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap;
  swift_beginAccess();
  *&v13[v16] = v15;

  v17 = OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap;
  swift_beginAccess();
  v18 = *(v2 + v17);
  v19 = OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap;
  swift_beginAccess();
  *&v13[v19] = v18;

  v20 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalImpressionCaps;
  swift_beginAccess();
  v21 = *(v2 + v20);
  v22 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalImpressionCaps;
  swift_beginAccess();
  *&v13[v22] = v21;

  v23 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalClickCaps;
  swift_beginAccess();
  v24 = *(v2 + v23);
  v25 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalClickCaps;
  swift_beginAccess();
  *&v13[v25] = v24;

  v26 = (v2 + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  v29 = &v13[OBJC_IVAR___APPCAppStoreSupplementalContext_adamId];
  swift_beginAccess();
  *v29 = v28;
  *(v29 + 1) = v27;

  v30 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
  swift_beginAccess();
  v31 = *(v2 + v30);
  v32 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
  swift_beginAccess();
  *&v13[v32] = v31;

  v33 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  sub_1C1AA7E30(v2 + v33, v6, &qword_1EBF07F50, &qword_1C1B9A590);
  v34 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  sub_1C1AABE90(v6, &v13[v34]);
  result = swift_endAccess();
  a1[3] = v11;
  *a1 = v13;
  return result;
}

id AppStoreSupplementalContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C1AD78D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F724665726F7473;
    v6 = 0x6973736572706D69;
    if (a1 != 2)
    {
      v6 = 0x7061436B63696C63;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x64496D616461;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0x5474736575716572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1C1AD7A1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1ADBA9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1AD7A50(uint64_t a1)
{
  v2 = sub_1C1ADB1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD7A8C(uint64_t a1)
{
  v2 = sub_1C1ADB1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id AppStoreSupplementalContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreSupplementalContext(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1AD7BCC(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v19 - v6;
  v8 = sub_1C1AC1F08(&unk_1EBF08218, &qword_1C1B9ACB0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - v10;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1ADB1E4();
  sub_1C1B95A18();
  v25 = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    v25 = 1;
    sub_1C1B957A8();
    v12 = OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap;
    swift_beginAccess();
    v24 = *(v3 + v12);
    LOBYTE(v23) = 2;
    sub_1C1AC1F08(&qword_1EBF08228, &qword_1C1B9ACB8);
    sub_1C1ADB238();
    sub_1C1B95788();
    v13 = OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap;
    swift_beginAccess();
    v23 = *(v3 + v13);
    LOBYTE(v22) = 3;
    sub_1C1B95788();
    v14 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalImpressionCaps;
    swift_beginAccess();
    v22 = *(v3 + v14);
    LOBYTE(v21) = 4;
    sub_1C1AC1F08(&qword_1EBF08238, &qword_1C1B9ACC8);
    sub_1C1ADB2E8(&qword_1EDE6A740, sub_1C1ADB238, MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
    sub_1C1B95808();
    v15 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalClickCaps;
    swift_beginAccess();
    v21 = *(v3 + v15);
    v20 = 5;
    sub_1C1B95808();
    swift_beginAccess();
    v20 = 6;

    sub_1C1B95748();

    v17 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
    swift_beginAccess();
    v19[0] = *(v3 + v17);
    v26 = 7;
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    sub_1C1AD0C9C(&qword_1EDE6BC00, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1C1B95788();
    v18 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
    swift_beginAccess();
    sub_1C1AA7E30(v3 + v18, v7, &qword_1EBF07F50, &qword_1C1B9A590);
    v26 = 8;
    sub_1C1B94588();
    sub_1C1ADBD9C(&unk_1EDE6C380, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1C1B95788();
    sub_1C1AA7C8C(v7, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  return (*(v9 + 8))(v11, v8);
}

char *AppStoreSupplementalContext.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v53 - v6;
  v58 = sub_1C1AC1F08(&unk_1EBF08240, &qword_1C1B9ACD8);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v53 - v8;
  v61 = OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap;
  *&v1[OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap] = 0;
  v60 = OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap;
  *&v1[OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap] = 0;
  v10 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalImpressionCaps;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1C1AD40A0(MEMORY[0x1E69E7CC0]);
  v59 = v10;
  *&v3[v10] = v12;
  v13 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalClickCaps;
  v14 = sub_1C1AD40A0(v11);
  v63 = v13;
  *&v3[v13] = v14;
  v15 = &v3[OBJC_IVAR___APPCAppStoreSupplementalContext_adamId];
  *v15 = 0;
  *(v15 + 1) = 0;
  v66 = v15;
  v65 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
  *&v3[OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields] = 0;
  v16 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  v17 = sub_1C1B94588();
  v18 = *(*(v17 - 8) + 56);
  v64 = v16;
  v18(&v3[v16], 1, 1, v17);
  v19 = a1[3];
  v62 = a1;
  v20 = a1;
  v21 = v9;
  sub_1C1AAABE0(v20, v19);
  sub_1C1ADB1E4();
  sub_1C1B95A08();
  if (v2)
  {
    v75 = v2;
    sub_1C1AA86F8(v62);
  }

  else
  {
    v55 = v17;
    v56 = v7;
    v22 = v57;
    v74[0] = 0;
    v23 = v58;
    v24 = sub_1C1B95698();
    v26 = &v3[OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront];
    *v26 = v24;
    v26[1] = v27;
    v74[0] = 1;
    v28 = sub_1C1B95698();
    v29 = v59;
    v30 = &v3[OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale];
    *v30 = v28;
    v30[1] = v31;
    sub_1C1AC1F08(&qword_1EBF08228, &qword_1C1B9ACB8);
    v74[0] = 2;
    v54 = sub_1C1ADB36C();
    sub_1C1B95678();
    v75 = 0;
    v32 = v60;
    v33 = v73;
    v34 = v61;
    swift_beginAccess();
    *&v3[v34] = v33;

    LOBYTE(v73) = 3;
    v35 = v75;
    sub_1C1B95678();
    v75 = v35;
    if (v35)
    {
      (*(v22 + 8))(v21, v23);
    }

    else
    {
      v36 = v72;
      swift_beginAccess();
      *&v3[v32] = v36;

      sub_1C1AC1F08(&qword_1EBF08238, &qword_1C1B9ACC8);
      LOBYTE(v72) = 4;
      v53 = sub_1C1ADB2E8(&qword_1EDE6A738, sub_1C1ADB36C, MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
      v54 = v21;
      v37 = v75;
      sub_1C1B956F8();
      v75 = v37;
      v38 = v63;
      if (!v37)
      {
        v39 = v71;
        swift_beginAccess();
        *&v3[v29] = v39;

        LOBYTE(v71) = 5;
        v40 = v75;
        sub_1C1B956F8();
        v75 = v40;
        if (!v40)
        {
          v41 = v70;
          swift_beginAccess();
          *&v3[v38] = v41;

          LOBYTE(v70) = 6;
          v42 = v75;
          v53 = sub_1C1B95638();
          v75 = v42;
          if (!v42)
          {
            v44 = v43;
            v45 = v66;
            swift_beginAccess();
            *v45 = v53;
            v45[1] = v44;

            sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
            v69 = 7;
            sub_1C1AD0C9C(&unk_1EDE6BBF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
            v46 = v75;
            sub_1C1B95678();
            v75 = v46;
            if (!v46)
            {
              v47 = v68;
              v48 = v65;
              swift_beginAccess();
              *&v3[v48] = v47;

              LOBYTE(v68) = 8;
              sub_1C1ADBD9C(&unk_1EDE6C370, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
              v49 = v56;
              v50 = v75;
              sub_1C1B95678();
              v75 = v50;
              if (!v50)
              {
                v51 = v64;
                swift_beginAccess();
                sub_1C1AABE90(v49, &v3[v51]);
                swift_endAccess();
                v52 = type metadata accessor for AppStoreSupplementalContext(0);
                v67.receiver = v3;
                v67.super_class = v52;
                v3 = objc_msgSendSuper2(&v67, sel_init);
                (*(v22 + 8))(v54, v23);
                sub_1C1AA86F8(v62);
                return v3;
              }
            }
          }
        }
      }

      (*(v22 + 8))(v54, v23);
    }

    sub_1C1AA86F8(v62);
  }

  sub_1C1AA7C8C(&v3[v64], &qword_1EBF07F50, &qword_1C1B9A590);
  type metadata accessor for AppStoreSupplementalContext(0);
  swift_deallocPartialClassInstance();
  return v3;
}

char *sub_1C1AD8A6C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for AppStoreSupplementalContext(0));
  result = AppStoreSupplementalContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C1AD8AE8(uint64_t a1)
{
  v2 = sub_1C1B95948();

  return sub_1C1AD8C38(a1, v2);
}

unint64_t sub_1C1AD8B2C(uint64_t a1)
{
  v1 = a1;
  sub_1C1B95958();
  MEMORY[0x1C6907960](50 * v1);
  v2 = sub_1C1B959A8();

  return sub_1C1AD8CA4(v1, v2);
}

unint64_t sub_1C1AD8BA0(uint64_t a1)
{
  sub_1C1B944A8();
  sub_1C1ADBD9C(&qword_1EDE6B868, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v2 = sub_1C1B94D28();

  return sub_1C1AD8D14(a1, v2);
}

unint64_t sub_1C1AD8C38(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C1AD8CA4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C1AD8D14(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1C1B944A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1C1ADBD9C(&qword_1EDE6B860, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v15 = sub_1C1B94D68();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_1C1AD8ED4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C1AC1F08(&qword_1EBF080E8, qword_1C1B9A6B8);
  v34 = v4;
  result = sub_1C1B955B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C1AD917C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C1AC1F08(&qword_1EBF07FC0, &qword_1C1B9A640);
  v37 = v4;
  result = sub_1C1B955B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C1AD943C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C1AC1F08(&qword_1EBF080F8, &qword_1C1B9A6D0);
  result = sub_1C1B955B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_1C1B95948();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C1AD96AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C1AC1F08(&unk_1EBF080D0, &unk_1C1B9A6A0);
  v33 = v4;
  result = sub_1C1B955B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1C1AA7E98(v24, v34);
      }

      else
      {
        sub_1C1AAA7B8(v24, v34);
      }

      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1C1AA7E98(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1C1AD9978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1C1B944A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1C1AC1F08(&unk_1EBF082E0, &unk_1C1B9AF10);
  v44 = v4;
  result = sub_1C1B955B8();
  v10 = result;
  if (*(v8 + 16))
  {
    v49 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v40 = v2;
    v41 = (v6 + 16);
    v42 = v8;
    v43 = v6;
    v46 = (v6 + 32);
    v17 = result + 64;
    v18 = v45;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v43 + 72) * v25;
      v27 = 16 * v25;
      v47 = *(v43 + 72);
      v48 = v22;
      if (v44)
      {
        (*v46)(v18, v26, v49);
        v28 = *(v8 + 56) + v27;
        v29 = *v28;
        v30 = *(v28 + 8);
      }

      else
      {
        (*v41)(v18, v26, v49);
        v31 = *(v8 + 56) + v27;
        v29 = *v31;
        v30 = *(v31 + 8);
        sub_1C1ADBD90(*v31, v30);
      }

      sub_1C1ADBD9C(&qword_1EDE6B868, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      result = sub_1C1B94D28();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v18 = v45;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v18 = v45;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v46)(*(v10 + 48) + v47 * v19, v18, v49);
      v20 = *(v10 + 56) + 16 * v19;
      *v20 = v29;
      *(v20 + 8) = v30;
      ++*(v10 + 16);
      v8 = v42;
      v15 = v48;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1C1AD9D84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1C1AC1F08(a3, a4);
  v36 = v6;
  result = sub_1C1B955B8();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1C1ADA038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_1C1B94588();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1C1AC1F08(&unk_1EBF09720, &unk_1C1BA36A0);
  v39 = v4;
  result = sub_1C1B955B8();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    v38 = v7;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + v22);
      v25 = *(v5 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_1C1B95958();
      MEMORY[0x1C6907960](50 * v24);
      result = sub_1C1B959A8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v5 = v37;
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void *sub_1C1ADA39C()
{
  v1 = v0;
  sub_1C1AC1F08(&qword_1EBF080E8, qword_1C1B9A6B8);
  v2 = *v0;
  v3 = sub_1C1B955A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C1ADA50C()
{
  v1 = v0;
  sub_1C1AC1F08(&qword_1EBF07FC0, &qword_1C1B9A640);
  v2 = *v0;
  v3 = sub_1C1B955A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C1ADA6C0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1C1AC1F08(a1, a2);
  v4 = *v2;
  v5 = sub_1C1B955A8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = swift_unknownObjectRetain();
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1C1ADA820()
{
  v1 = v0;
  sub_1C1AC1F08(&qword_1EBF080F8, &qword_1C1B9A6D0);
  v2 = *v0;
  v3 = sub_1C1B955A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1C1ADA990()
{
  v1 = v0;
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AC1F08(&unk_1EBF082E0, &unk_1C1B9AF10);
  v5 = *v0;
  v6 = sub_1C1B955A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = v25 + 16 * v20;
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = *(v30 + 56) + v26;
        v5 = v36;
        *v31 = v28;
        *(v31 + 8) = v29;
        result = sub_1C1ADBD90(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1C1ADAC38(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1C1AC1F08(a1, a2);
  v4 = *v2;
  v5 = sub_1C1B955A8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1C1ADADC0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1C1AC1F08(a1, a2);
  v4 = *v2;
  v5 = sub_1C1B955A8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + v19);
        v24 = (*(v6 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1C1ADAF30()
{
  v1 = v0;
  v29 = sub_1C1B94588();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AC1F08(&unk_1EBF09720, &unk_1C1BA36A0);
  v3 = *v0;
  v4 = sub_1C1B955A8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t type metadata accessor for AppStoreSupplementalContext(uint64_t a1)
{
  result = qword_1EDE6BE58;
  if (!qword_1EDE6BE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1ADB1E4()
{
  result = qword_1EDE6A860[0];
  if (!qword_1EDE6A860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6A860);
  }

  return result;
}

unint64_t sub_1C1ADB238()
{
  result = qword_1EDE6A750;
  if (!qword_1EDE6A750)
  {
    sub_1C1AC3404(&qword_1EBF08228, &qword_1C1B9ACB8);
    sub_1C1ADB41C(&qword_1EDE6A678, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A750);
  }

  return result;
}

uint64_t sub_1C1ADB2E8(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF08238, &qword_1C1B9ACC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1ADB36C()
{
  result = qword_1EDE6A748;
  if (!qword_1EDE6A748)
  {
    sub_1C1AC3404(&qword_1EBF08228, &qword_1C1B9ACB8);
    sub_1C1ADB41C(&qword_1EDE6A670, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A748);
  }

  return result;
}

uint64_t sub_1C1ADB41C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF08230, &qword_1C1B9ACC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1ADB488@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_1C1ADB4E8(uint64_t a1)
{
  sub_1C1AA3EA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for AppStoreSupplementalContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreSupplementalContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1ADB998()
{
  result = qword_1EBF08250;
  if (!qword_1EBF08250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08250);
  }

  return result;
}

unint64_t sub_1C1ADB9F0()
{
  result = qword_1EDE6A848;
  if (!qword_1EDE6A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A848);
  }

  return result;
}

unint64_t sub_1C1ADBA48()
{
  result = qword_1EDE6A850;
  if (!qword_1EDE6A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A850);
  }

  return result;
}

uint64_t sub_1C1ADBA9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F724665726F7473 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C1BA55B0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xED00007061436E6FLL || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7061436B63696C63 && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C1BA5570 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C1BA5590 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64496D616461 && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C1BA55D0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000656D69)
  {

    return 8;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id sub_1C1ADBD90(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1C1ADBD9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

PromotedContent::NewsSupplementalContext::AppleNewsFormatComponentMetadataKeys_optional __swiftcall NewsSupplementalContext.AppleNewsFormatComponentMetadataKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C1B955F8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t NewsSupplementalContext.AppleNewsFormatComponentMetadataKeys.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656372756F73;
  v3 = 0x6565667265707573;
  if (v1 != 4)
  {
    v3 = 0x6F72677265707573;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 1)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1ADBF24(uint64_t a1)
{
  sub_1C1B94DE8();
}

void sub_1C1ADC03C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656372756F73;
  v5 = 0x80000001C1BA5640;
  v6 = 0xEE003179656B5F64;
  v7 = 0x6565667265707573;
  if (v2 != 4)
  {
    v7 = 0x6F72677265707573;
    v6 = 0xEF3179656B5F7075;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v5 = v6;
  }

  if (v2 == 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x80000001C1BA5610;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001C1BA55F0;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t (*sub_1C1ADC188(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1C1AA7514();
  return sub_1C1ADC1D0;
}

uint64_t sub_1C1ADC1D0(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1C1AA7EA8(*a1);
  }

  sub_1C1AA7EA8(v2);
}

uint64_t sub_1C1ADC228(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (NewsRequestedAdType.rawValue.getter(*a1) == 1162760014 && v4 == 0xE400000000000000)
  {
  }

  else
  {
    v6 = sub_1C1B95888();

    if ((v6 & 1) == 0)
    {
      v7 = NewsRequestedAdType.rawValue.getter(v2);
      goto LABEL_9;
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_9:
  v9 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal);
  *v9 = v7;
  v9[1] = v8;
}

uint64_t sub_1C1ADC2E0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal + 8);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal);

    return _s15PromotedContent19NewsRequestedAdTypeO8rawValueACSS_tcfC_0(v3, v2);
  }

  else
  {
    v5 = sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v6 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C1B98E60;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1C1AA5E7C();
    *(v7 + 32) = 0xD000000000000029;
    *(v7 + 40) = 0x80000001C1BA7F90;
    sub_1C1B94BA8(v5, &dword_1C1AA2000, v6, "%{public}@", 10, 2, v7);

    return 0;
  }
}

uint64_t (*sub_1C1ADC458(uint64_t *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal;
  a1[1] = v1;
  a1[2] = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;

    v7 = _s15PromotedContent19NewsRequestedAdTypeO8rawValueACSS_tcfC_0(v6, v5);
  }

  else
  {
    v8 = sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v9 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C1B98E60;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1C1AA5E7C();
    *(v10 + 32) = 0xD000000000000029;
    *(v10 + 40) = 0x80000001C1BA7F90;
    sub_1C1B94BA8(v8, &dword_1C1AA2000, v9, "%{public}@", 10, 2, v10);

    v7 = 0;
  }

  *a1 = v7;
  return sub_1C1ADC5DC;
}

uint64_t sub_1C1ADC5DC(uint64_t *a1)
{
  v2 = *a1;
  if (NewsRequestedAdType.rawValue.getter(*a1) == 1162760014 && v3 == 0xE400000000000000)
  {

LABEL_10:
    v7 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v6 = sub_1C1B95888();

  if (v6)
  {
    goto LABEL_10;
  }

  v7 = NewsRequestedAdType.rawValue.getter(v2);
LABEL_12:
  v9 = (a1[1] + a1[2]);
  *v9 = v7;
  v9[1] = v8;
}

void *sub_1C1ADC804()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADC850(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADC908()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADC954(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADCDCC()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADCE18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADCED0()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADCF1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADD214()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1C1ADDBFC()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADDC48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADDD00()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADDD4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADDE04()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADDE50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADE0DC()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADE128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADE374()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADE3C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADE478()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADE4C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1C1ADE57C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *sub_1C1ADE5D8()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADE624(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C1ADE754(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_1C1ADE7C8(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t (*sub_1C1ADE8A0(uint64_t a1))()
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    if ([v4 BOOLValue])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 16) = v5;
  return sub_1C1ADE914;
}

id sub_1C1ADE924@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = *(v2 + *a1);
  if (result)
  {
    result = [result BOOLValue];
    if (result)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unsigned __int8 *sub_1C1ADE980(unsigned __int8 *result, void *a2)
{
  v4 = *result;
  if (v4 == 2 || v4 == 1)
  {
    sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
    *(v2 + *a2) = sub_1C1B95248();

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

uint64_t (*sub_1C1ADEA20(uint64_t a1))()
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    if ([v4 BOOLValue])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 16) = v5;
  return sub_1C1AE7D34;
}

uint64_t *sub_1C1ADEA94(uint64_t *result)
{
  v1 = *(result + 16);
  if (v1 == 1 || v1 == 2)
  {
    v3 = *result;
    v2 = result[1];
    sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
    *(v3 + v2) = sub_1C1B95248();

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

unint64_t sub_1C1ADEC0C(char a1)
{
  result = 0x6576697461657263;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 62:
      result = 0xD000000000000017;
      break;
    case 3:
    case 8:
    case 22:
    case 32:
    case 63:
      result = 0xD000000000000014;
      break;
    case 4:
    case 17:
    case 33:
    case 34:
      result = 0xD000000000000019;
      break;
    case 5:
    case 18:
    case 26:
    case 39:
    case 41:
      result = 0xD000000000000016;
      break;
    case 6:
    case 12:
      result = 0xD000000000000021;
      break;
    case 7:
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 10:
    case 27:
    case 28:
    case 60:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000025;
      break;
    case 15:
    case 43:
    case 44:
      result = 0xD000000000000022;
      break;
    case 16:
    case 59:
      result = 0xD00000000000001CLL;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 21:
    case 42:
    case 61:
      result = 0xD00000000000001DLL;
      break;
    case 23:
      result = 0xD000000000000015;
      break;
    case 24:
    case 48:
    case 51:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD000000000000015;
      break;
    case 29:
      result = 0x6E6F4370756F7267;
      break;
    case 30:
    case 31:
      result = 0xD000000000000013;
      break;
    case 35:
      result = 0xD000000000000015;
      break;
    case 36:
    case 37:
    case 38:
    case 40:
    case 53:
      result = 0xD00000000000001ALL;
      break;
    case 45:
    case 52:
    case 56:
      result = 0xD000000000000010;
      break;
    case 46:
      result = 0xD000000000000015;
      break;
    case 47:
      result = 0xD000000000000015;
      break;
    case 49:
      result = 0x74666172447369;
      break;
    case 50:
      result = 0x6E656D6563616C70;
      break;
    case 54:
      result = 0xD000000000000026;
      break;
    case 57:
      result = 0x49746E6572727563;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1C1ADF130(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1C1ADEC0C(*a1);
  v5 = v4;
  if (v3 == sub_1C1ADEC0C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1ADF1B8()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1ADEC0C(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1ADF21C(uint64_t a1)
{
  sub_1C1ADEC0C(*v1);
  sub_1C1B94DE8();
}

uint64_t sub_1C1ADF270(uint64_t a1)
{
  v2 = *v1;
  sub_1C1B95958();
  sub_1C1ADEC0C(v2);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1ADF2D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1AE7C28(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C1ADF300@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C1ADEC0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C1ADF334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1AE7C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1ADF368(uint64_t a1)
{
  v2 = sub_1C1AE4798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ADF3A4(uint64_t a1)
{
  v2 = sub_1C1AE4798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id NewsSupplementalContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsSupplementalContext.init(from:)(void *a1)
{
  v2 = v1;
  v374 = *MEMORY[0x1E69E9840];
  v4 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v283 - v5;
  v7 = sub_1C1AC1F08(&qword_1EBF08568, &qword_1C1B9AFA8);
  v287 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v283 - v8;
  v10 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_advertisementType];
  *v10 = 0;
  v10[1] = 0;
  v344 = v10;
  v11 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType];
  *v11 = 0;
  v11[1] = 0;
  v347 = v11;
  v12 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleArticleId];
  *v12 = 0;
  v12[1] = 0;
  v352 = v12;
  v13 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleArticleId];
  *v13 = 0;
  v13[1] = 0;
  v346 = v13;
  v348 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored] = 0;
  v351 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored] = 0;
  v350 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata] = 0;
  v349 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata] = 0;
  v14 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleRating];
  *v14 = 0;
  v14[1] = 0;
  v345 = v14;
  v15 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleRating];
  *v15 = 0;
  v15[1] = 0;
  v343 = v15;
  v16 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannel];
  *v16 = 0;
  v16[1] = 0;
  v342 = v16;
  v17 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannel];
  *v17 = 0;
  v17[1] = 0;
  v341 = v17;
  v18 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannelRating];
  *v18 = 0;
  v18[1] = 0;
  v340 = v18;
  v19 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannelRating];
  *v19 = 0;
  v19[1] = 0;
  v339 = v19;
  v338 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId] = 0;
  v337 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId] = 0;
  v336 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections] = 0;
  v335 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections] = 0;
  v334 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories] = 0;
  v20 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId];
  *v20 = 0;
  v20[1] = 0;
  v333 = v20;
  v21 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataTagId];
  *v21 = 0;
  v21[1] = 0;
  v332 = v21;
  v331 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID] = 0;
  v330 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords] = 0;
  v329 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages] = 0;
  v22 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataRating];
  *v22 = 0;
  v22[1] = 0;
  v328 = v22;
  v23 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataSectionId];
  *v23 = 0;
  v23[1] = 0;
  v327 = v23;
  v326 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories] = 0;
  v325 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories] = 0;
  v324 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories] = 0;
  v24 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextId];
  *v24 = 0;
  v24[1] = 0;
  v323 = v24;
  v25 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveId];
  *v25 = 0;
  v25[1] = 0;
  v322 = v25;
  v26 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowId];
  *v26 = 0;
  v26[1] = 0;
  v321 = v26;
  v320 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords] = 0;
  v319 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords] = 0;
  v318 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords] = 0;
  v317 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages] = 0;
  v316 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages] = 0;
  v315 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages] = 0;
  v27 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveChannelId];
  *v27 = 0;
  v27[1] = 0;
  v314 = v27;
  v28 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveTagId];
  *v28 = 0;
  v28[1] = 0;
  v313 = v28;
  v29 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowChannelId];
  *v29 = 0;
  v29[1] = 0;
  v312 = v29;
  v30 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowTagId];
  *v30 = 0;
  v30[1] = 0;
  v311 = v30;
  v310 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId] = 0;
  v309 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId] = 0;
  v308 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId] = 0;
  v31 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextType];
  *v31 = 0;
  v31[1] = 0;
  v307 = v31;
  v32 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveType];
  *v32 = 0;
  v32[1] = 0;
  v306 = v32;
  v33 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowType];
  *v33 = 0;
  v33[1] = 0;
  v305 = v33;
  v34 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_contentEnvironment];
  *v34 = 0;
  v34[1] = 0;
  v304 = v34;
  v303 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft] = 0;
  v35 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement];
  *v35 = 0;
  v35[1] = 0;
  v302 = v35;
  v36 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralCampaignId];
  *v36 = 0;
  v36[1] = 0;
  v301 = v36;
  v37 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralLocation];
  *v37 = 0;
  v37[1] = 0;
  v300 = v37;
  v299 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory] = 0;
  v298 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial] = 0;
  v297 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio] = 0;
  v38 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_subscriptionType];
  *v38 = 0;
  v38[1] = 0;
  v296 = v38;
  v39 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueId];
  *v39 = 0;
  v39[1] = 0;
  v295 = v39;
  v294 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata] = 0;
  v40 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement] = 3;
  v289 = a1;
  v290 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal;
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal] = 0;
  v291 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal;
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal] = 0;
  v293 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal;
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal] = 0;
  v41 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal];
  *v41 = 0;
  v41[1] = 0;
  v292 = v41;
  v42 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AE4798();
  v43 = v288;
  sub_1C1B95A08();
  if (v43)
  {
    v44 = v348;
LABEL_4:
    sub_1C1AA86F8(v289);

    type metadata accessor for NewsSupplementalContext();
    swift_deallocPartialClassInstance();
    return v42;
  }

  v286 = v40;
  v288 = v6;
  LOBYTE(v355) = 0;
  v46 = sub_1C1B95638();
  v48 = v47;
  v284 = v7;
  v285 = v9;
  v49 = v344;
  swift_beginAccess();
  *v49 = v46;
  v49[1] = v48;

  LOBYTE(v355) = 1;
  v50 = sub_1C1B95638();
  v52 = v51;
  v53 = v347;
  swift_beginAccess();
  *v53 = v50;
  v53[1] = v52;

  LOBYTE(v355) = 2;
  v54 = sub_1C1B95638();
  v56 = v55;
  v57 = v352;
  swift_beginAccess();
  *v57 = v54;
  v57[1] = v56;

  LOBYTE(v355) = 3;
  v58 = sub_1C1B95638();
  v60 = v59;
  v61 = v346;
  swift_beginAccess();
  *v61 = v58;
  v61[1] = v60;

  LOBYTE(v355) = 4;
  v62 = sub_1C1B95648();
  v63 = v348;
  if (v62 != 2)
  {
    v64 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    swift_beginAccess();
    v65 = *v63;
    *v63 = v64;
  }

  LOBYTE(v355) = 5;
  v66 = sub_1C1B95648();
  if (v66 != 2)
  {
    v67 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v68 = v351;
    swift_beginAccess();
    v69 = *v68;
    *v68 = v67;
  }

  v70 = sub_1C1AC1F08(&unk_1EBF08578, &qword_1C1B9AFB0);
  v373 = 6;
  v283[1] = sub_1C1AE47EC();
  v283[2] = v70;
  sub_1C1B95678();
  v283[0] = v355;
  v71 = v350;
  swift_beginAccess();
  *v71 = v283[0];

  v372 = 7;
  sub_1C1B95678();
  v72 = v355;
  v73 = v349;
  swift_beginAccess();
  *v73 = v72;

  LOBYTE(v355) = 8;
  v74 = sub_1C1B95638();
  v76 = v75;
  v77 = v345;
  swift_beginAccess();
  *v77 = v74;
  v77[1] = v76;

  LOBYTE(v355) = 9;
  v78 = sub_1C1B95638();
  v80 = v79;
  v81 = v343;
  swift_beginAccess();
  *v81 = v78;
  v81[1] = v80;

  LOBYTE(v355) = 10;
  v82 = sub_1C1B95638();
  v84 = v83;
  v85 = v342;
  swift_beginAccess();
  *v85 = v82;
  v85[1] = v84;

  LOBYTE(v355) = 11;
  v86 = sub_1C1B95638();
  v88 = v87;
  v89 = v341;
  swift_beginAccess();
  *v89 = v86;
  v89[1] = v88;

  LOBYTE(v355) = 12;
  v90 = sub_1C1B95638();
  v92 = v91;
  v93 = v340;
  swift_beginAccess();
  *v93 = v90;
  v93[1] = v92;

  LOBYTE(v355) = 13;
  v94 = sub_1C1B95638();
  v96 = v95;
  v97 = v339;
  swift_beginAccess();
  *v97 = v94;
  v97[1] = v96;

  LOBYTE(v355) = 14;
  v98 = sub_1C1B95668();
  if ((v99 & 1) == 0)
  {
    v100 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v101 = v338;
    swift_beginAccess();
    v102 = *v101;
    *v101 = v100;
  }

  LOBYTE(v355) = 15;
  v103 = sub_1C1B95668();
  if ((v104 & 1) == 0)
  {
    v105 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v106 = v337;
    swift_beginAccess();
    v107 = *v106;
    *v106 = v105;
  }

  sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
  v371 = 16;
  sub_1C1AC34C8(&qword_1EDE6BB98, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C1B95678();
  v108 = v355;
  v109 = v336;
  swift_beginAccess();
  *v109 = v108;

  v370 = 17;
  sub_1C1B95678();
  v110 = v355;
  v111 = v335;
  swift_beginAccess();
  *v111 = v110;

  v369 = 18;
  sub_1C1B95678();
  v112 = v355;
  v113 = v334;
  swift_beginAccess();
  *v113 = v112;

  LOBYTE(v355) = 19;
  v114 = sub_1C1B95638();
  v116 = v115;
  v117 = v333;
  swift_beginAccess();
  *v117 = v114;
  v117[1] = v116;

  LOBYTE(v355) = 20;
  v118 = sub_1C1B95638();
  v120 = v119;
  v121 = v332;
  swift_beginAccess();
  *v121 = v118;
  v121[1] = v120;

  LOBYTE(v355) = 21;
  v122 = sub_1C1B95668();
  if ((v123 & 1) == 0)
  {
    v124 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v125 = v331;
    swift_beginAccess();
    v126 = *v125;
    *v125 = v124;
  }

  v368 = 22;
  sub_1C1B95678();
  v127 = v355;
  v128 = v330;
  swift_beginAccess();
  *v128 = v127;

  v367 = 23;
  sub_1C1B95678();
  v129 = v355;
  v130 = v329;
  swift_beginAccess();
  *v130 = v129;

  LOBYTE(v355) = 24;
  v131 = sub_1C1B95638();
  v133 = v132;
  v134 = v328;
  swift_beginAccess();
  *v134 = v131;
  v134[1] = v133;

  LOBYTE(v355) = 25;
  v135 = sub_1C1B95638();
  v137 = v136;
  v138 = v327;
  swift_beginAccess();
  *v138 = v135;
  v138[1] = v137;

  v366 = 26;
  sub_1C1B95678();
  v139 = v355;
  v140 = v326;
  swift_beginAccess();
  *v140 = v139;

  v365 = 27;
  sub_1C1B95678();
  v141 = v355;
  v142 = v325;
  swift_beginAccess();
  *v142 = v141;

  v364 = 28;
  sub_1C1B95678();
  v143 = v355;
  v144 = v324;
  swift_beginAccess();
  *v144 = v143;

  LOBYTE(v355) = 29;
  v145 = sub_1C1B95638();
  v147 = v146;
  v148 = v323;
  swift_beginAccess();
  *v148 = v145;
  v148[1] = v147;

  LOBYTE(v355) = 30;
  v149 = sub_1C1B95638();
  v151 = v150;
  v152 = v322;
  swift_beginAccess();
  *v152 = v149;
  v152[1] = v151;

  LOBYTE(v355) = 31;
  v153 = sub_1C1B95638();
  v155 = v154;
  v156 = v321;
  swift_beginAccess();
  *v156 = v153;
  v156[1] = v155;

  v363 = 32;
  sub_1C1B95678();
  v157 = v355;
  v158 = v320;
  swift_beginAccess();
  *v158 = v157;

  v362 = 33;
  sub_1C1B95678();
  v159 = v355;
  v160 = v319;
  swift_beginAccess();
  *v160 = v159;

  v361 = 34;
  sub_1C1B95678();
  v161 = v355;
  v162 = v318;
  swift_beginAccess();
  *v162 = v161;

  v360 = 35;
  sub_1C1B95678();
  v163 = v355;
  v164 = v317;
  swift_beginAccess();
  *v164 = v163;

  v359 = 36;
  sub_1C1B95678();
  v165 = v355;
  v166 = v316;
  swift_beginAccess();
  *v166 = v165;

  v358 = 37;
  sub_1C1B95678();
  v167 = v355;
  v168 = v315;
  swift_beginAccess();
  *v168 = v167;

  LOBYTE(v355) = 38;
  v169 = sub_1C1B95638();
  v171 = v170;
  v172 = v314;
  swift_beginAccess();
  *v172 = v169;
  v172[1] = v171;

  LOBYTE(v355) = 39;
  v173 = sub_1C1B95638();
  v175 = v174;
  v176 = v313;
  swift_beginAccess();
  *v176 = v173;
  v176[1] = v175;

  LOBYTE(v355) = 40;
  v177 = sub_1C1B95638();
  v179 = v178;
  v180 = v312;
  swift_beginAccess();
  *v180 = v177;
  v180[1] = v179;

  LOBYTE(v355) = 41;
  v181 = sub_1C1B95638();
  v183 = v182;
  v184 = v311;
  swift_beginAccess();
  *v184 = v181;
  v184[1] = v183;

  LOBYTE(v355) = 42;
  v185 = sub_1C1B95668();
  if ((v186 & 1) == 0)
  {
    v187 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v188 = v310;
    swift_beginAccess();
    v189 = *v188;
    *v188 = v187;
  }

  LOBYTE(v355) = 43;
  v190 = sub_1C1B95668();
  if ((v191 & 1) == 0)
  {
    v192 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v193 = v309;
    swift_beginAccess();
    v194 = *v193;
    *v193 = v192;
  }

  LOBYTE(v355) = 44;
  v195 = sub_1C1B95668();
  if ((v196 & 1) == 0)
  {
    v197 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v198 = v308;
    swift_beginAccess();
    v199 = *v198;
    *v198 = v197;
  }

  LOBYTE(v355) = 45;
  v200 = sub_1C1B95638();
  v202 = v201;
  v203 = v307;
  swift_beginAccess();
  *v203 = v200;
  v203[1] = v202;

  LOBYTE(v355) = 46;
  v204 = sub_1C1B95638();
  v206 = v205;
  v207 = v306;
  swift_beginAccess();
  *v207 = v204;
  v207[1] = v206;

  LOBYTE(v355) = 47;
  v208 = sub_1C1B95638();
  v210 = v209;
  v211 = v305;
  swift_beginAccess();
  *v211 = v208;
  v211[1] = v210;

  LOBYTE(v355) = 48;
  v212 = sub_1C1B95638();
  v214 = v213;
  v215 = v304;
  swift_beginAccess();
  *v215 = v212;
  v215[1] = v214;

  LOBYTE(v355) = 49;
  v216 = sub_1C1B95668();
  if ((v217 & 1) == 0)
  {
    v218 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v219 = v303;
    swift_beginAccess();
    v220 = *v219;
    *v219 = v218;
  }

  LOBYTE(v355) = 50;
  v221 = sub_1C1B95638();
  v223 = v222;
  v224 = v302;
  swift_beginAccess();
  *v224 = v221;
  v224[1] = v223;

  LOBYTE(v355) = 51;
  v225 = sub_1C1B95638();
  v227 = v226;
  v228 = v301;
  swift_beginAccess();
  *v228 = v225;
  v228[1] = v227;

  LOBYTE(v355) = 52;
  v229 = sub_1C1B95638();
  v231 = v230;
  v232 = v300;
  swift_beginAccess();
  *v232 = v229;
  v232[1] = v231;

  LOBYTE(v355) = 53;
  v233 = sub_1C1B95658();
  if ((v234 & 1) == 0)
  {
    v235 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v236 = v299;
    swift_beginAccess();
    v237 = *v236;
    *v236 = v235;
  }

  LOBYTE(v355) = 54;
  v238 = sub_1C1B95668();
  if ((v239 & 1) == 0)
  {
    v240 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v241 = v298;
    swift_beginAccess();
    v242 = *v241;
    *v241 = v240;
  }

  LOBYTE(v355) = 55;
  v243 = sub_1C1B95658();
  if ((v244 & 1) == 0)
  {
    v245 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v246 = v297;
    swift_beginAccess();
    v247 = *v246;
    *v246 = v245;
  }

  LOBYTE(v355) = 56;
  v248 = sub_1C1B95638();
  v250 = v249;
  v251 = v296;
  swift_beginAccess();
  *v251 = v248;
  v251[1] = v250;

  LOBYTE(v355) = 57;
  v252 = sub_1C1B95638();
  v254 = v253;
  v255 = v295;
  swift_beginAccess();
  *v255 = v252;
  v255[1] = v254;

  v357 = 58;
  sub_1C1B95678();
  v256 = v355;
  v257 = v294;
  swift_beginAccess();
  *v257 = v256;

  LOBYTE(v354) = 59;
  sub_1C1AE4898();
  sub_1C1B95678();
  v258 = v356;
  if (v356 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v259 = v355;
  v260 = objc_opt_self();
  v261 = sub_1C1B944C8();
  v355 = 0;
  v262 = [v260 JSONObjectWithData:v261 options:0 error:&v355];

  if (!v262)
  {
    v42 = v355;
    sub_1C1B94458();

    swift_willThrow();
    sub_1C1AE49EC(v259, v258);
    (*(v287 + 8))(v285, v284);
    v44 = v348;
    goto LABEL_4;
  }

  v263 = v355;
  sub_1C1B952F8();
  sub_1C1AE49EC(v259, v258);
  swift_unknownObjectRelease();
  sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
  v264 = swift_dynamicCast();
  v265 = v354;
  if (!v264)
  {
    v265 = 0;
  }

  *&v2[v290] = v265;

LABEL_35:
  LOBYTE(v355) = 60;
  v266 = sub_1C1B95648();
  if (v266 != 2)
  {
    v267 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v268 = *&v2[v291];
    *&v2[v291] = v267;
  }

  LOBYTE(v355) = 61;
  v269 = sub_1C1B95648();
  if (v269 != 2)
  {
    v270 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v271 = *&v2[v293];
    *&v2[v293] = v270;
  }

  LOBYTE(v355) = 62;
  v272 = sub_1C1B95638();
  v273 = v292;
  *v292 = v272;
  v273[1] = v274;

  LOBYTE(v355) = 63;
  sub_1C1AE48EC();
  sub_1C1B95678();
  v275 = v354;
  v276 = v286;
  swift_beginAccess();
  v2[v276] = v275;
  if (([objc_opt_self() isActiveClientInfoSet] & 1) == 0)
  {
    v277 = sub_1C1B95028();
    v278 = v288;
    (*(*(v277 - 8) + 56))(v288, 1, 1, v277);
    sub_1C1B95008();
    v279 = sub_1C1B94FF8();
    v280 = swift_allocObject();
    v281 = MEMORY[0x1E69E85E0];
    *(v280 + 16) = v279;
    *(v280 + 24) = v281;
    sub_1C1AE33F8(0, 0, v278, &unk_1C1B9AFB8, v280);
  }

  v282 = type metadata accessor for NewsSupplementalContext();
  v353.receiver = v2;
  v353.super_class = v282;
  v42 = objc_msgSendSuper2(&v353, sel_init);
  (*(v287 + 8))(v285, v284);
  sub_1C1AA86F8(v289);
  return v42;
}

uint64_t sub_1C1AE1750(void *a1)
{
  v3 = v1;
  v152 = *MEMORY[0x1E69E9840];
  v5 = sub_1C1AC1F08(&qword_1EBF08590, &qword_1C1B9AFC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v89 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AE4798();
  sub_1C1B95A18();
  swift_beginAccess();
  v151 = 0;

  sub_1C1B95748();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  v150 = 1;

  sub_1C1B95748();

  swift_beginAccess();
  v149 = 2;

  sub_1C1B95748();

  swift_beginAccess();
  v148 = 3;

  sub_1C1B95748();

  v10 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored;
  swift_beginAccess();
  v11 = *(v3 + v10);
  if (v11)
  {
    [v11 BOOLValue];
  }

  v147 = 4;
  sub_1C1B95758();
  v12 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (v13)
  {
    [v13 BOOLValue];
  }

  v146 = 5;
  sub_1C1B95758();
  v14 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata;
  swift_beginAccess();
  v145 = *(v3 + v14);
  LOBYTE(v144) = 6;
  sub_1C1AC1F08(&unk_1EBF08578, &qword_1C1B9AFB0);
  sub_1C1AE4A54();
  sub_1C1B95788();
  v15 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata;
  swift_beginAccess();
  v144 = *(v3 + v15);
  v143 = 7;
  sub_1C1B95788();
  swift_beginAccess();
  v143 = 8;

  sub_1C1B95748();

  swift_beginAccess();
  v142 = 9;

  sub_1C1B95748();

  v90 = v3;
  swift_beginAccess();
  v141 = 10;

  sub_1C1B95748();

  swift_beginAccess();
  v140 = 11;

  sub_1C1B95748();

  swift_beginAccess();
  v139 = 12;

  sub_1C1B95748();

  swift_beginAccess();
  v138 = 13;

  sub_1C1B95748();

  v16 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId;
  v17 = v90;
  swift_beginAccess();
  v18 = *(v17 + v16);
  if (v18)
  {
    [v18 integerValue];
  }

  v137 = 14;
  sub_1C1B95778();
  v19 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId;
  v20 = v90;
  swift_beginAccess();
  v21 = *(v20 + v19);
  if (v21)
  {
    [v21 integerValue];
  }

  v136 = 15;
  sub_1C1B95778();
  v22 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections;
  v23 = v90;
  swift_beginAccess();
  v135 = *(v23 + v22);
  LOBYTE(v134) = 16;
  v24 = sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
  v89[0] = sub_1C1AC34C8(&unk_1EDE6BBA0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v89[1] = v24;
  sub_1C1B95788();
  v25 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections;
  v26 = v90;
  swift_beginAccess();
  v134 = *(v26 + v25);
  LOBYTE(v133) = 17;
  sub_1C1B95788();
  v27 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories;
  v28 = v90;
  swift_beginAccess();
  v133 = *(v28 + v27);
  v132 = 18;
  sub_1C1B95788();
  swift_beginAccess();
  v132 = 19;

  sub_1C1B95748();

  swift_beginAccess();
  v131 = 20;

  sub_1C1B95748();

  v29 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
  v30 = v90;
  swift_beginAccess();
  v31 = *(v30 + v29);
  if (v31)
  {
    [v31 integerValue];
  }

  v130 = 21;
  sub_1C1B95778();
  v32 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords;
  v33 = v90;
  swift_beginAccess();
  v129 = *(v33 + v32);
  LOBYTE(v128) = 22;
  sub_1C1B95788();
  v34 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages;
  v35 = v90;
  swift_beginAccess();
  v128 = *(v35 + v34);
  v127 = 23;
  sub_1C1B95788();
  swift_beginAccess();
  v127 = 24;

  sub_1C1B95748();

  swift_beginAccess();
  v126 = 25;

  sub_1C1B95748();

  v36 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories;
  v37 = v90;
  swift_beginAccess();
  v125 = *(v37 + v36);
  LOBYTE(v124) = 26;
  sub_1C1B95788();
  v38 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories;
  v39 = v90;
  swift_beginAccess();
  v124 = *(v39 + v38);
  LOBYTE(v123) = 27;
  sub_1C1B95788();
  v40 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories;
  v41 = v90;
  swift_beginAccess();
  v123 = *(v41 + v40);
  v122 = 28;
  sub_1C1B95788();
  swift_beginAccess();
  v122 = 29;

  sub_1C1B95748();

  swift_beginAccess();
  v121 = 30;

  sub_1C1B95748();

  swift_beginAccess();
  v120 = 31;

  sub_1C1B95748();

  v42 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords;
  v43 = v90;
  swift_beginAccess();
  v119 = *(v43 + v42);
  LOBYTE(v118) = 32;
  sub_1C1B95788();
  v44 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords;
  v45 = v90;
  swift_beginAccess();
  v118 = *(v45 + v44);
  LOBYTE(v117) = 33;
  sub_1C1B95788();
  v46 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords;
  v47 = v90;
  swift_beginAccess();
  v117 = *(v47 + v46);
  LOBYTE(v116) = 34;
  sub_1C1B95788();
  v48 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages;
  v49 = v90;
  swift_beginAccess();
  v116 = *(v49 + v48);
  LOBYTE(v115) = 35;
  sub_1C1B95788();
  v50 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages;
  v51 = v90;
  swift_beginAccess();
  v115 = *(v51 + v50);
  LOBYTE(v114) = 36;
  sub_1C1B95788();
  v52 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages;
  v53 = v90;
  swift_beginAccess();
  v114 = *(v53 + v52);
  v113 = 37;
  sub_1C1B95788();
  swift_beginAccess();
  v113 = 38;

  sub_1C1B95748();

  swift_beginAccess();
  v112 = 39;

  sub_1C1B95748();

  swift_beginAccess();
  v111 = 40;

  sub_1C1B95748();

  swift_beginAccess();
  v110 = 41;

  sub_1C1B95748();

  v54 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId;
  v55 = v90;
  swift_beginAccess();
  v56 = *(v55 + v54);
  if (v56)
  {
    [v56 integerValue];
  }

  v109 = 42;
  sub_1C1B95778();
  v57 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId;
  v58 = v90;
  swift_beginAccess();
  v59 = *(v58 + v57);
  if (v59)
  {
    [v59 integerValue];
  }

  v108 = 43;
  sub_1C1B95778();
  v60 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId;
  v61 = v90;
  swift_beginAccess();
  v62 = *(v61 + v60);
  if (v62)
  {
    [v62 integerValue];
  }

  v107 = 44;
  sub_1C1B95778();
  swift_beginAccess();
  v106 = 45;

  sub_1C1B95748();

  swift_beginAccess();
  v105 = 46;

  sub_1C1B95748();

  swift_beginAccess();
  v104 = 47;

  sub_1C1B95748();

  swift_beginAccess();
  v103 = 48;

  sub_1C1B95748();

  v63 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft;
  v64 = v90;
  swift_beginAccess();
  v65 = *(v64 + v63);
  if (v65)
  {
    [v65 integerValue];
  }

  v102 = 49;
  sub_1C1B95778();
  swift_beginAccess();
  v101 = 50;

  sub_1C1B95748();

  swift_beginAccess();
  v100 = 51;

  sub_1C1B95748();

  swift_beginAccess();
  v99 = 52;

  sub_1C1B95748();

  v66 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory;
  v67 = v90;
  swift_beginAccess();
  v68 = *(v67 + v66);
  if (v68)
  {
    [v68 doubleValue];
  }

  v98 = 53;
  sub_1C1B95768();
  v69 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial;
  v70 = v90;
  swift_beginAccess();
  v71 = *(v70 + v69);
  if (v71)
  {
    [v71 integerValue];
  }

  v97 = 54;
  sub_1C1B95778();
  v72 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio;
  v73 = v90;
  swift_beginAccess();
  v74 = *(v73 + v72);
  if (v74)
  {
    [v74 doubleValue];
  }

  v96 = 55;
  sub_1C1B95768();
  swift_beginAccess();
  v95 = 56;

  sub_1C1B95748();

  swift_beginAccess();
  v94 = 57;

  sub_1C1B95748();

  v75 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata;
  v76 = v90;
  swift_beginAccess();
  v93[0] = *(v76 + v75);
  v92 = 58;
  sub_1C1B95788();
  if (!*(v90 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal))
  {
    LOBYTE(v93[0]) = 59;
    sub_1C1B95828();
    goto LABEL_35;
  }

  v77 = objc_opt_self();

  v78 = sub_1C1B94CA8();

  v93[0] = 0;
  v79 = [v77 dataWithJSONObject:v78 options:0 error:v93];

  v80 = v93[0];
  if (v79)
  {
    v81 = sub_1C1B944D8();
    v83 = v82;

    v93[0] = v81;
    v93[1] = v83;
    v92 = 59;
    sub_1C1AE4B54();
    sub_1C1B95808();
    sub_1C1AE4A00(v81, v83);
LABEL_35:
    v85 = *(v90 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal);
    if (v85)
    {
      [v85 BOOLValue];
    }

    LOBYTE(v93[0]) = 60;
    sub_1C1B95758();
    v86 = *(v90 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal);
    if (v86)
    {
      [v86 BOOLValue];
    }

    LOBYTE(v93[0]) = 61;
    sub_1C1B95758();
    LOBYTE(v93[0]) = 62;

    sub_1C1B95748();

    v87 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
    v88 = v90;
    swift_beginAccess();
    v92 = *(v88 + v87);
    v91 = 63;
    sub_1C1AE4B00();
    sub_1C1B95788();
    return (*(v6 + 8))(v8, v5);
  }

  v84 = v80;
  sub_1C1B94458();

  swift_willThrow();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C1AE3224()
{
  sub_1C1B95008();
  *(v0 + 16) = sub_1C1B94FF8();
  v2 = sub_1C1B94FC8();

  return MEMORY[0x1EEE6DFA0](sub_1C1AE32B8, v2, v1);
}

uint64_t sub_1C1AE32B8()
{

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C1B94BE8();
  sub_1C1AB4454(v1, qword_1EDE6D058);
  v2 = sub_1C1B94BC8();
  v3 = sub_1C1B95118();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C1AA2000, v2, v3, "Starting APClientInfoUI", v4, 2u);
    MEMORY[0x1C6908230](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C1AE33F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C1AA7E30(a3, v25 - v10, &qword_1EBF08560, &qword_1C1B9AF90);
  v12 = sub_1C1B95028();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C1AA7C8C(v11, &qword_1EBF08560, &qword_1C1B9AF90);
  }

  else
  {
    sub_1C1B95018();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C1B94FC8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C1B94DD8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C1AE36F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C1AA7E30(a3, v25 - v10, &qword_1EBF08560, &qword_1C1B9AF90);
  v12 = sub_1C1B95028();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C1AA7C8C(v11, &qword_1EBF08560, &qword_1C1B9AF90);
  }

  else
  {
    sub_1C1B95018();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C1B94FC8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C1B94DD8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1C1AC1F08(&qword_1EBF085D0, &qword_1C1B9B2A0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1C1AC1F08(&qword_1EBF085D0, &qword_1C1B9B2A0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}