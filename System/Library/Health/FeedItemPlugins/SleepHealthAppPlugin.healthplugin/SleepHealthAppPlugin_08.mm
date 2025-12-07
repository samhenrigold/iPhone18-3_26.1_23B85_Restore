void *sub_29E6DBB54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC254(a1, a2, a3, *v3, &qword_2A185A510, &qword_2A1856FF0, MEMORY[0x29EDC18F8]);
  *v3 = result;
  return result;
}

char *sub_29E6DBB8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DBF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29E6DBBAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A18597E0, type metadata accessor for SleepOnboardingScheduleItem, type metadata accessor for SleepOnboardingScheduleItem);
  *v3 = result;
  return result;
}

char *sub_29E6DBBFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC044(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29E6DBC1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A18597C8, MEMORY[0x29EDC4358], MEMORY[0x29EDC4358]);
  *v3 = result;
  return result;
}

void *sub_29E6DBC6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC254(a1, a2, a3, *v3, &qword_2A18587B0, &qword_2A1858798, &protocol descriptor for Row);
  *v3 = result;
  return result;
}

char *sub_29E6DBCA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC14C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29E6DBCC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC254(a1, a2, a3, *v3, &qword_2A1858F38, &qword_2A1858F40, MEMORY[0x29EDC1DD8]);
  *v3 = result;
  return result;
}

void *sub_29E6DBCFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A18597A0, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23F8]);
  *v3 = result;
  return result;
}

void *sub_29E6DBD4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC254(a1, a2, a3, *v3, &qword_2A18568D0, &qword_2A1858310, MEMORY[0x29EDC1910]);
  *v3 = result;
  return result;
}

void *sub_29E6DBD84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A1859800, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
  *v3 = result;
  return result;
}

void *sub_29E6DBDD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A18597F8, type metadata accessor for SleepApneaEventPDFAlertsChartPoint, type metadata accessor for SleepApneaEventPDFAlertsChartPoint);
  *v3 = result;
  return result;
}

void *sub_29E6DBE24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC2240]);
  *v3 = result;
  return result;
}

void *sub_29E6DBE74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A18597D0, sub_29E6DD148, sub_29E6DD148);
  *v3 = result;
  return result;
}

void *sub_29E6DBEC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A1A7BD00, type metadata accessor for BreathingDisturbancesData, type metadata accessor for BreathingDisturbancesData);
  *v3 = result;
  return result;
}

char *sub_29E6DBF14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E6DC588(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29E6DBF34(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1859798, &type metadata for SleepScoreInfographicContentItem);
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29E6DC044(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1859820, MEMORY[0x29EDC9BA8]);
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29E6DC14C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1859828, MEMORY[0x29EDC9AD8]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29E6DC254(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_29E6DD09C(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x29EDCA190];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E609CF8(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_29E6DC3A8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29E6DD0F4(0, a5, a6);
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

char *sub_29E6DC588(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E6DD0F4(0, &qword_2A1A7BCE8, type metadata accessor for HKAppleSleepingBreathingDisturbancesClassification);
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
    v10 = MEMORY[0x29EDCA190];
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

unint64_t sub_29E6DC69C(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_29E754C98();
    }

    result = sub_29E754D98();
    *v2 = result;
  }

  return result;
}

uint64_t sub_29E6DC758(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_29E754C98();
LABEL_9:
  result = sub_29E754D98();
  *v2 = result;
  return result;
}

uint64_t sub_29E6DC7F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29E754C98();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29E754C98();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29E6DD1B0(0, &qword_2A18597E8, &qword_2A1856EA0, 0x29EDC47C8);
          sub_29E6DD208(&qword_2A18597F0, &qword_2A18597E8, &qword_2A1856EA0, 0x29EDC47C8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29E6D4CA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29E609B5C(0, &qword_2A1856EA0, 0x29EDC47C8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6DC9AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29E754C98();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29E754C98();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29E6DD1B0(0, &qword_2A18597A8, &qword_2A1A7D490, 0x29EDBACB8);
          sub_29E6DD208(&qword_2A18597B0, &qword_2A18597A8, &qword_2A1A7D490, 0x29EDBACB8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29E6D4CA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_29E6DCB60(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_29E6DCCB8()
{
  v46 = sub_29E74EF88();
  v0 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v45 = v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29E754188();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E67905C(0, &qword_2A1859798, &type metadata for SleepScoreInfographicContentItem);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E762F40;
  sub_29E754118();
  v7 = sub_29E65B0B4(v5);
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v5, v2);
  sub_29E754118();
  v11 = sub_29E65B0B4(v5);
  v13 = v12;
  v10(v5, v2);
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 48) = v11;
  *(v6 + 56) = v13;
  sub_29E754118();
  v14 = sub_29E65B0B4(v5);
  v16 = v15;
  v10(v5, v2);
  sub_29E754118();
  v17 = sub_29E65B0B4(v5);
  v19 = v18;
  v10(v5, v2);
  *(v6 + 64) = v14;
  *(v6 + 72) = v16;
  *(v6 + 80) = v17;
  *(v6 + 88) = v19;
  v40 = v6;
  v20 = sub_29E74EF78();
  v21 = *(v20 + 16);
  if (v21)
  {
    v47 = MEMORY[0x29EDCA190];
    sub_29E6DBB8C(0, v21, 0);
    v22 = v47;
    v24 = *(v0 + 16);
    v23 = v0 + 16;
    v25 = *(v23 + 64);
    v39[1] = v20;
    v26 = v20 + ((v25 + 32) & ~v25);
    v42 = *(v23 + 56);
    v43 = v24;
    v41 = (v23 - 8);
    v44 = v23;
    do
    {
      v28 = v45;
      v27 = v46;
      v43(v45, v26, v46);
      v29 = sub_29E74EF58();
      v31 = v30;
      v32 = sub_29E74EF68();
      v34 = v33;
      (*v41)(v28, v27);
      v47 = v22;
      v36 = *(v22 + 16);
      v35 = *(v22 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_29E6DBB8C((v35 > 1), v36 + 1, 1);
        v22 = v47;
      }

      *(v22 + 16) = v36 + 1;
      v37 = (v22 + 32 * v36);
      v37[4] = v29;
      v37[5] = v31;
      v37[6] = v32;
      v37[7] = v34;
      v26 += v42;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x29EDCA190];
  }

  v47 = v40;
  sub_29E6DA778(v22);
  return v47;
}

void sub_29E6DD09C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29E609CF8(255, a3, a4);
    v5 = sub_29E754FE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E6DD0F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754FE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E6DD148(uint64_t a1)
{
  if (!qword_2A18597D8)
  {
    _s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18597D8);
    }
  }
}

void sub_29E6DD1B0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_29E609B5C(255, a3, a4);
    v5 = sub_29E754448();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E6DD208(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E6DD1B0(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E6DD268()
{
  if (!qword_2A1859818)
  {
    v0 = sub_29E7545A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859818);
    }
  }
}

uint64_t sub_29E6DD2C0(uint64_t a1)
{
  v2 = v1;
  sub_29E754B98();
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29E7550E8();
    v4 = v3;
    sub_29E754B98();

    v5 = *(v2 + 16);
    if (v5)
    {
LABEL_3:
      sub_29E7550E8();
      v6 = v5;
      sub_29E754B98();

      goto LABEL_6;
    }
  }

  else
  {
    sub_29E7550E8();
    v5 = *(v1 + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_29E7550E8();
LABEL_6:

  return sub_29E7542D8();
}

uint64_t sub_29E6DD380()
{
  sub_29E7550C8();
  sub_29E6DD2C0(v1);
  return sub_29E755108();
}

uint64_t sub_29E6DD3C4(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E6DD2C0(v2);
  return sub_29E755108();
}

uint64_t sub_29E6DD400(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_29E6DDA84(v5, v7) & 1;
}

uint64_t sub_29E6DD44C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_29E6DD47C(uint64_t a1)
{
  v2 = sub_29E621E84();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E6DD4C8(void *a1, void *a2)
{
  v4 = sub_29E74EE78();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v11 = a2;
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();

  v14 = os_log_type_enabled(v12, v13);
  v43 = a2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v40 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v39 = v7;
    v18 = v17;
    *&v45[0] = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_29E6B9C90(0x6574497472616843, 0xE90000000000006DLL, v45);
    *(v16 + 12) = 2082;
    v44 = a2;
    sub_29E750648();
    v19 = v5;
    v20 = v4;
    v21 = v11;
    v22 = sub_29E754248();
    v24 = sub_29E6B9C90(v22, v23, v45);

    *(v16 + 14) = v24;
    v4 = v20;
    v5 = v19;
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Creating sleep chart with context: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v18, -1, -1);
    v25 = v16;
    a1 = v40;
    MEMORY[0x29ED98410](v25, -1, -1);

    (*(v8 + 8))(v10, v39);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v26 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  v27 = v42;
  sub_29E74EE28();

  v28 = objc_allocWithZone(MEMORY[0x29EDC6C18]);
  v29 = sub_29E74EE08();
  v30 = sub_29E754198();
  v31 = [v28 initWithCalendar:v29 queryIdentifier:v30];

  [a1 setSleepDataSourceProvider_];
  v32 = [a1 healthStore];
  v33 = [objc_allocWithZone(MEMORY[0x29EDC6C20]) initWithHealthStore_];

  [a1 setSleepChartFormatter_];
  v34 = v41;
  if (*(v41 + 16))
  {
    v35 = sub_29E754A28();
  }

  else
  {
    v35 = 0;
  }

  v36 = *(v34 + 16);
  v45[0] = *v34;
  v45[1] = v36;
  v46 = *(v34 + 32);
  sub_29E6DD938();
  v37 = sub_29E7510F8();

  (*(v5 + 8))(v27, v4);
  return v37;
}

void *sub_29E6DD908()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

unint64_t sub_29E6DD938()
{
  result = qword_2A1859830;
  if (!qword_2A1859830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859830);
  }

  return result;
}

uint64_t sub_29E6DD98C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29E6DD9D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_29E6DDA30()
{
  result = qword_2A1859838;
  if (!qword_2A1859838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859838);
  }

  return result;
}

uint64_t sub_29E6DDA84(void *a1, void *a2)
{
  sub_29E609B5C(0, &qword_2A1A7D0B0, 0x29EDC9738);
  if ((sub_29E754B88() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
    v6 = v5;
    v7 = v4;
    v8 = sub_29E754B88();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = a1[2];
  v10 = a2[2];
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  sub_29E609B5C(0, &qword_2A1857610, 0x29EDC4440);
  v11 = v10;
  v12 = v9;
  v13 = sub_29E754B88();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  return sub_29E755028();
}

uint64_t type metadata accessor for OnboardingDataSource(uint64_t a1)
{
  result = qword_2A1859858;
  if (!qword_2A1859858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6DDC80(void *a1, void *a2, uint64_t a3)
{
  v32 = a1;
  sub_29E6212E4(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62133C(0);
  v31 = v9;
  v34 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6DE6C8(0);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v29 - v18;
  sub_29E602E20(a1, v36);
  v30 = a2;
  sub_29E601938(a2, a2[3]);
  v20 = sub_29E74F4E8();
  type metadata accessor for OnboardingSection(0);
  swift_allocObject();
  sub_29E619EF0(v36, v20);
  sub_29E7527B8();
  if (BYTE2(v36[0]) & 1 | ((v36[0] & 1) == 0))
  {
    v21 = MEMORY[0x29EDC1FF8];
  }

  else
  {
    v21 = MEMORY[0x29EDC2000];
  }

  (*(v14 + 104))(v19, *v21, v13);
  type metadata accessor for OnboardingDataSource(0);
  *(swift_allocObject() + qword_2A1859840) = MEMORY[0x29EDCA1A0];
  (*(v14 + 16))(v17, v19, v13);

  v22 = sub_29E750918();
  (*(v14 + 8))(v19, v13);
  v36[0] = a3;
  sub_29E602DD4();
  swift_retain_n();
  v23 = sub_29E754908();
  v35 = v23;
  v24 = sub_29E7548D8();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_29E621428();
  sub_29E6DE734(&qword_2A18572A8, sub_29E621428, MEMORY[0x29EDB8A70]);
  sub_29E6DE734(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
  sub_29E752968();
  sub_29E6214E8(v8);

  v25 = swift_allocObject();
  swift_weakInit();

  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = a3;
  v26[4] = v33;
  sub_29E6DE734(&qword_2A18572B8, sub_29E62133C, MEMORY[0x29EDB89E8]);

  v27 = v31;
  sub_29E7529A8();

  (*(v34 + 8))(v11, v27);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E5FECBC(v32);
  sub_29E5FECBC(v30);
  return v22;
}

uint64_t sub_29E6DE1A8()
{
  type metadata accessor for OnboardingDataSource(0);
  sub_29E602E20(v0 + 16, v5);
  sub_29E602E20(v0 + 56, v4);
  v1 = *(v0 + 96);

  sub_29E6DDC80(v5, v4, v1);
  sub_29E6DE734(&qword_2A1859868, type metadata accessor for OnboardingDataSource, MEMORY[0x29EDC2030]);
  sub_29E750828();

  v2 = sub_29E750818();

  return v2;
}

uint64_t sub_29E6DE298(uint64_t a1, uint64_t a2)
{
  sub_29E6DE6C8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E7527B8();
    if (v9[7] & 1 | ((v9[5] & 1) == 0))
    {
      v7 = MEMORY[0x29EDC1FF8];
    }

    else
    {
      v7 = MEMORY[0x29EDC2000];
    }

    (*(v4 + 104))(v6, *v7, v3);
    sub_29E750908();
  }
}

uint64_t sub_29E6DE444(uint64_t a1, uint64_t a2)
{
  sub_29E6DE6C8(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + qword_2A1859840) = MEMORY[0x29EDCA1A0];
  (*(v5 + 16))(v7, a2, v4);
  v8 = sub_29E750918();
  (*(v5 + 8))(a2, v4);
  return v8;
}

uint64_t sub_29E6DE578()
{
  sub_29E750938();

  return swift_deallocClassInstance();
}

__n128 sub_29E6DE5D0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_29E6DE5FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_29E6DE644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29E6DE6C8(uint64_t a1)
{
  if (!qword_2A1859870)
  {
    type metadata accessor for OnboardingSection(255);
    v1 = sub_29E7508F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859870);
    }
  }
}

uint64_t sub_29E6DE734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SleepApneaEventSummaryViewModel(uint64_t a1)
{
  result = qword_2A1859878;
  if (!qword_2A1859878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6DE7F0(uint64_t a1)
{
  result = sub_29E74ED28();
  if (v2 <= 0x3F)
  {
    result = sub_29E609B5C(319, &qword_2A1859888, 0x29EDBABE8);
    if (v3 <= 0x3F)
    {
      result = sub_29E609B5C(319, &qword_2A1859890, 0x29EDBAA00);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29E6DE8B4(char a1, void *a2)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v25 - v9;
  if (a1)
  {
    sub_29E752068();
    v11 = sub_29E752088();
    v12 = sub_29E754688();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_29E6B9C90(0xD00000000000001FLL, 0x800000029E76AB50, &v26);
      _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Successfully submitted analytics", v13, 0xCu);
      sub_29E5FECBC(v14);
      MEMORY[0x29ED98410](v14, -1, -1);
      MEMORY[0x29ED98410](v13, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    sub_29E752068();
    v16 = a2;
    v17 = sub_29E752088();
    v18 = sub_29E7546A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v19 = 136446466;
      *(v19 + 4) = sub_29E6B9C90(0xD00000000000001FLL, 0x800000029E76AB50, &v26);
      *(v19 + 12) = 2112;
      if (a2)
      {
        v22 = a2;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        v24 = v23;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      *(v19 + 14) = v23;
      *v20 = v24;
      _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] Failed to submit analytics with error: %@", v19, 0x16u);
      sub_29E6764FC(v20);
      MEMORY[0x29ED98410](v20, -1, -1);
      sub_29E5FECBC(v21);
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v19, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_29E6DEC10(uint64_t a1)
{
  sub_29E65AA20(319);
  if (v1 <= 0x3F)
  {
    sub_29E74F5F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E6DECB8(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x2A1C7C4A8](TupleTypeMetadata);
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

  MEMORY[0x2A1C7C4A8](TupleTypeMetadata);
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

  return sub_29E753C88();
}

uint64_t sub_29E6DEEAC(uint64_t a1)
{
  v2 = sub_29E74F718();
  MEMORY[0x2A1C7C4A8](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752D18();
}

void sub_29E6DEF74(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_29E6E08D0(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E10FC(0);
  v8 = v7 - 8;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_29E752FF8();
  *(v6 + 1) = 0;
  v6[16] = 0;
  sub_29E6E3AAC(0, &qword_2A1859958, sub_29E6E0964);
  sub_29E6DF180(v2, &v6[*(v11 + 44)]);
  sub_29E753C48();
  sub_29E752CA8();
  sub_29E6E1124(v6, v10, sub_29E6E08D0);
  v12 = &v10[*(v8 + 44)];
  v13 = v26[5];
  *(v12 + 4) = v26[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v26[6];
  v14 = v26[1];
  *v12 = v26[0];
  *(v12 + 1) = v14;
  v15 = v26[3];
  *(v12 + 2) = v26[2];
  *(v12 + 3) = v15;
  LOBYTE(v6) = sub_29E7533A8();
  sub_29E7529C8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_29E6E1124(v10, a1, sub_29E6E10FC);
  sub_29E6E118C(0);
  v25 = a1 + *(v24 + 36);
  *v25 = v6;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
}

uint64_t sub_29E6DF180@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v98 = a2;
  sub_29E6E0EB4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_29E752C88();
  v89 = *(v85 - 8);
  MEMORY[0x2A1C7C4A8](v85);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E1024();
  v90 = v10;
  v88 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E0F7C(0);
  v87 = v13;
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v93 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v86 = v81 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v92 = v81 - v18;
  sub_29E6E0EF0(0);
  v20 = v19;
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v91 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v99 = v81 - v23;
  sub_29E6E0E80(0);
  v25 = MEMORY[0x2A1C7C4A8](v24 - 8);
  v97 = v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v94 = v81 - v27;
  sub_29E6E0A8C(0);
  v29 = MEMORY[0x2A1C7C4A8](v28 - 8);
  v96 = v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29);
  v32 = v81 - v31;
  sub_29E7544C8();
  v95 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v32 = sub_29E753368();
  sub_29E6E11B4(0);
  sub_29E6DFA6C(a1, &v32[*(v33 + 44)]);
  v34 = sub_29E6E0428();
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    v82 = v7;
    v83 = v5;
    v84 = v4;
    v38 = v99;
    sub_29E753AF8();
    v39 = sub_29E7533B8();
    sub_29E7529C8();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    sub_29E6C3B78(0);
    v49 = v38 + *(v48 + 36);
    *v49 = v39;
    *(v49 + 8) = v41;
    *(v49 + 16) = v43;
    *(v49 + 24) = v45;
    *(v49 + 32) = v47;
    *(v49 + 40) = 0;
    v50 = sub_29E7533C8();
    sub_29E7529C8();
    v51 = v38 + *(v20 + 36);
    *v51 = v50;
    *(v51 + 8) = v52;
    *(v51 + 16) = v53;
    *(v51 + 24) = v54;
    *(v51 + 32) = v55;
    *(v51 + 40) = 0;
    v101 = v36;
    v102 = v37;
    sub_29E60DE10();
    v56 = sub_29E753608();
    v58 = v57;
    v60 = v59;
    v101 = v56;
    v102 = v57;
    v103 = v59 & 1;
    v104 = v61;
    v62 = *(a1 + *(type metadata accessor for SleepScoreRoomTileContent(0) + 24));
    if (v62 == 1)
    {
      sub_29E752C78();
      v63 = v85;
    }

    else
    {
      v100 = MEMORY[0x29EDCA190];
      v81[1] = sub_29E6E0D0C(&qword_2A1857CE8, MEMORY[0x29EDBC588], MEMORY[0x29EDBC590]);
      sub_29E6505BC(0);
      sub_29E6E0D0C(&qword_2A1857CF8, sub_29E6505BC, MEMORY[0x29EDC9A70]);
      v63 = v85;
      sub_29E754C58();
    }

    sub_29E7538A8();
    (*(v89 + 8))(v9, v63);
    sub_29E60DB44(v56, v58, v60 & 1);

    v66 = sub_29E753C68();
    v67 = v86;
    (*(v88 + 32))(v86, v12, v90);
    v68 = v67 + *(v87 + 36);
    *v68 = v66;
    *(v68 + 8) = v62;
    v69 = v92;
    sub_29E6E1124(v67, v92, sub_29E6E0F7C);
    v70 = v99;
    v71 = v91;
    sub_29E6E1274(v99, v91, sub_29E6E0EF0);
    v72 = v93;
    sub_29E6E12DC(v69, v93, sub_29E6E0F7C);
    v73 = v82;
    sub_29E6E1274(v71, v82, sub_29E6E0EF0);
    sub_29E6E39DC(0, &qword_2A1859928, sub_29E6E0EF0, sub_29E6E0F7C);
    sub_29E6E12DC(v72, v73 + *(v74 + 48), sub_29E6E0F7C);
    sub_29E6E1344(v69, sub_29E6E0F7C);
    sub_29E6E13A4(v70, sub_29E6E0EF0);
    sub_29E6E1344(v72, sub_29E6E0F7C);
    sub_29E6E13A4(v71, sub_29E6E0EF0);
    v65 = v94;
    sub_29E6E1124(v73, v94, sub_29E6E0EB4);
    v64 = 0;
    v4 = v84;
    v5 = v83;
  }

  else
  {
    v64 = 1;
    v65 = v94;
  }

  (*(v5 + 56))(v65, v64, 1, v4);
  v75 = v96;
  sub_29E6E1274(v32, v96, sub_29E6E0A8C);
  v76 = v97;
  sub_29E6E12DC(v65, v97, sub_29E6E0E80);
  v77 = v98;
  *v98 = 0x4020000000000000;
  *(v77 + 8) = 0;
  sub_29E6E09FC(0);
  v79 = v78;
  sub_29E6E1274(v75, v77 + *(v78 + 64), sub_29E6E0A8C);
  sub_29E6E12DC(v76, v77 + *(v79 + 80), sub_29E6E0E80);
  sub_29E6E1344(v65, sub_29E6E0E80);
  sub_29E6E13A4(v32, sub_29E6E0A8C);
  sub_29E6E1344(v76, sub_29E6E0E80);
  sub_29E6E13A4(v75, sub_29E6E0A8C);
}

uint64_t sub_29E6DFA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  sub_29E6E0E48(0);
  v42 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v40 = &v38 - v6;
  sub_29E6E0D6C(0);
  v8 = v7;
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v38 - v11;
  sub_29E6E0BDC(0);
  v14 = v13;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v38 - v18;
  sub_29E65AA20(0);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v23 - 8);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v41 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6E1274(a1, v22, sub_29E65AA20);
  v26 = type metadata accessor for SleepScoreRoomModel(0);
  if ((*(*(v26 - 8) + 48))(v22, 1, v26) == 1)
  {
    sub_29E6E13A4(v22, sub_29E65AA20);
    v27 = sub_29E74F2D8();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  }

  else
  {
    sub_29E6E1274(&v22[*(v26 + 20)], v25, sub_29E631834);
    sub_29E6E13A4(v22, type metadata accessor for SleepScoreRoomModel);
  }

  sub_29E6E1274(v25, v19, sub_29E631834);
  v28 = *(a1 + *(type metadata accessor for SleepScoreRoomTileContent(0) + 24));
  sub_29E6E0008(&v19[*(v14 + 40)]);
  v19[*(v14 + 36)] = v28;
  v39 = v25;
  sub_29E6E1274(v25, v12, sub_29E631834);
  sub_29E6E0008(&v12[*(v8 + 40)]);
  v12[*(v8 + 36)] = v28;
  v29 = v25;
  v30 = v40;
  sub_29E6E1274(v29, v40, sub_29E631834);
  v31 = v42;
  sub_29E6E0008(v30 + *(v42 + 40));
  *(v30 + *(v31 + 36)) = v28;
  sub_29E6E1274(v19, v17, sub_29E6E0BDC);
  v32 = v44;
  sub_29E6E1274(v12, v44, sub_29E6E0D6C);
  v33 = v45;
  sub_29E6E1274(v30, v45, sub_29E6E0E48);
  v34 = v43;
  sub_29E6E1274(v17, v43, sub_29E6E0BDC);
  sub_29E6E0B54(0);
  v36 = v35;
  sub_29E6E1274(v32, v34 + *(v35 + 48), sub_29E6E0D6C);
  sub_29E6E1274(v33, v34 + *(v36 + 64), sub_29E6E0E48);
  sub_29E6E13A4(v30, sub_29E6E0E48);
  sub_29E6E13A4(v12, sub_29E6E0D6C);
  sub_29E6E13A4(v19, sub_29E6E0BDC);
  sub_29E6E13A4(v39, sub_29E631834);
  sub_29E6E13A4(v33, sub_29E6E0E48);
  sub_29E6E13A4(v32, sub_29E6E0D6C);
  sub_29E6E13A4(v17, sub_29E6E0BDC);
}

double sub_29E6E0008@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v32 = sub_29E74F5F8();
  v3 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65AA20(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29E74F618();
  v12 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E0FB0(0, &qword_2A1859298, MEMORY[0x29EDC6AA0], sub_29E6C59DC);
  v16 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v30 - v17;
  v19 = v2;
  sub_29E6E1274(v2, v8, sub_29E65AA20);
  v20 = type metadata accessor for SleepScoreRoomModel(0);
  if ((*(*(v20 - 8) + 48))(v8, 1, v20) == 1)
  {
    sub_29E6E13A4(v8, sub_29E65AA20);
    v21 = sub_29E74F2D8();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  }

  else
  {
    sub_29E6E1274(&v8[*(v20 + 20)], v11, sub_29E631834);
    sub_29E6E13A4(v8, type metadata accessor for SleepScoreRoomModel);
  }

  v22 = type metadata accessor for SleepScoreRoomTileContent(0);
  (*(v3 + 16))(v5, v19 + *(v22 + 20), v32);
  sub_29E74F608();
  KeyPath = swift_getKeyPath();
  v24 = &v18[*(v16 + 36)];
  sub_29E6C59DC(0);
  sub_29E74F6F8();
  *v24 = KeyPath;
  (*(v12 + 32))(v18, v14, v31);
  sub_29E753C48();
  sub_29E752AB8();
  v25 = v33;
  sub_29E6E1438(v18, v33);
  sub_29E6C594C(0);
  v27 = (v25 + *(v26 + 36));
  v28 = v35;
  *v27 = v34;
  v27[1] = v28;
  result = *&v36;
  v27[2] = v36;
  return result;
}

uint64_t sub_29E6E0428()
{
  v31 = sub_29E754188();
  v1 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F048();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E1404(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74F0C8();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65AA20(0);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SleepScoreRoomModel(0);
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for SleepScoreRoomTileContent(0) + 24)))
  {
    sub_29E754118();
    v20 = sub_29E65B0B4(v3);
    (*(v1 + 8))(v3, v31);
  }

  else
  {
    sub_29E6E1274(v0, v15, sub_29E65AA20);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v21 = sub_29E65AA20;
      v22 = v15;
    }

    else
    {
      sub_29E6E3B10(v15, v19, type metadata accessor for SleepScoreRoomModel);
      (*(v27 + 16))(v6, v19, v28);

      sub_29E74F0A8();
      v24 = v29;
      v23 = v30;
      if ((*(v29 + 48))(v9, 1, v30) != 1)
      {
        (*(v24 + 32))(v12, v9, v23);
        v20 = sub_29E74F0B8();
        (*(v24 + 8))(v12, v23);
        sub_29E6E13A4(v19, type metadata accessor for SleepScoreRoomModel);
        return v20;
      }

      sub_29E6E13A4(v19, type metadata accessor for SleepScoreRoomModel);
      v21 = sub_29E6E1404;
      v22 = v9;
    }

    sub_29E6E13A4(v22, v21);
    return 0;
  }

  return v20;
}

void sub_29E6E08D0(uint64_t a1)
{
  if (!qword_2A18598A8)
  {
    sub_29E6E0964(255);
    sub_29E6E0D0C(&qword_2A1859948, sub_29E6E0964, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18598A8);
    }
  }
}

void sub_29E6E0998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E6E09FC(uint64_t a1)
{
  if (!qword_2A18598B8)
  {
    sub_29E6E0A8C(255);
    sub_29E6E0E80(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A18598B8);
    }
  }
}

void sub_29E6E0A8C(uint64_t a1)
{
  if (!qword_2A18598C0)
  {
    sub_29E6E0B20(255);
    sub_29E6E0D0C(&qword_2A1859910, sub_29E6E0B20, MEMORY[0x29EDBCC30]);
    v1 = sub_29E752A98();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18598C0);
    }
  }
}

void sub_29E6E0B54(uint64_t a1)
{
  if (!qword_2A18598D0)
  {
    sub_29E6E0BDC(255);
    sub_29E6E0D6C(255);
    sub_29E6E0E48(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A18598D0);
    }
  }
}

unint64_t sub_29E6E0BFC()
{
  result = qword_2A18598E8;
  if (!qword_2A18598E8)
  {
    sub_29E6E0FB0(255, &qword_2A1859298, MEMORY[0x29EDC6AA0], sub_29E6C59DC);
    sub_29E6E0D0C(&qword_2A18598F0, MEMORY[0x29EDC6AA0], MEMORY[0x29EDC6A88]);
    sub_29E6E0D0C(&qword_2A18598F8, sub_29E6C59DC, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18598E8);
  }

  return result;
}

uint64_t sub_29E6E0D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6E0D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E6C594C(255);
    v7 = v6;
    v8 = sub_29E6E1AF4(&qword_2A18598E0, sub_29E6C594C, sub_29E6E0BFC);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E6E0F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29E752C28();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E6E0FB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E752C28();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6E1024()
{
  if (!qword_2A1859940)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1859940);
    }
  }
}

void sub_29E6E10A4()
{
  if (!qword_2A1857CB0)
  {
    v0 = sub_29E752F88();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857CB0);
    }
  }
}

uint64_t sub_29E6E1124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E6E11B4(uint64_t a1)
{
  if (!qword_2A1859968)
  {
    sub_29E6E0B20(255);
    sub_29E6E1220();
    v1 = sub_29E752B08();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859968);
    }
  }
}

unint64_t sub_29E6E1220()
{
  result = qword_2A1859970;
  if (!qword_2A1859970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859970);
  }

  return result;
}

uint64_t sub_29E6E1274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6E12DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6E1344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6E13A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6E1438(uint64_t a1, uint64_t a2)
{
  sub_29E6E0FB0(0, &qword_2A1859298, MEMORY[0x29EDC6AA0], sub_29E6C59DC);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E6E14CC(uint64_t a1)
{
  sub_29E631834(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E6E155C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_29E74F2D8() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(*(a3 + 16) - 8);
  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 84);
  if (v10 <= v11)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v10;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (v12 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v12;
  }

  if (v8)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v16)
  {
    v18 = ((v14 + v17 + 1) & ~v14) + v15;
    v19 = 8 * v18;
    if (v18 > 3)
    {
      goto LABEL_16;
    }

    v21 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v21 >= 2)
    {
LABEL_16:
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_36;
      }

LABEL_23:
      v22 = (v20 - 1) << v19;
      if (v18 > 3)
      {
        v22 = 0;
      }

      if (v18)
      {
        if (v18 <= 3)
        {
          v23 = v18;
        }

        else
        {
          v23 = 4;
        }

        if (v23 > 2)
        {
          if (v23 == 3)
          {
            v24 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v24 = *a1;
          }
        }

        else if (v23 == 1)
        {
          v24 = *a1;
        }

        else
        {
          v24 = *a1;
        }
      }

      else
      {
        v24 = 0;
      }

      v30 = v16 + (v24 | v22);
      return (v30 + 1);
    }
  }

LABEL_36:
  if (v10 == v16)
  {
    if (v8 >= 2)
    {
      v25 = (*(v7 + 48))(a1);
      if (v25 >= 2)
      {
        return v25 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v27 = a1 + v17;
  if (v12 <= 0xFE)
  {
    v28 = *v27;
    if (v28 < 2)
    {
      return 0;
    }

    v30 = (v28 + 2147483646) & 0x7FFFFFFF;
    return (v30 + 1);
  }

  v29 = *(*(*(a3 + 16) - 8) + 48);

  return v29(&v27[v14 + 1] & ~v14, v11);
}

void sub_29E6E17E0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_29E74F2D8() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 64);
  v16 = *(v13 + 80);
  if (v12 <= v14)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v12;
  }

  if (v17 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v17;
  }

  if (!v11)
  {
    ++v15;
  }

  v19 = ((v16 + v15 + 1) & ~v16) + *(v13 + 64);
  if (a3 <= v18)
  {
    goto LABEL_23;
  }

  if (v19 <= 3)
  {
    v20 = ((a3 - v18 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v20))
    {
      v8 = 4;
      if (v18 >= a2)
      {
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v8 = v21;
    }

    else
    {
      v8 = 0;
    }

LABEL_23:
    if (v18 >= a2)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  v8 = 1;
  if (v18 >= a2)
  {
LABEL_33:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v19] = 0;
    }

    else if (v8)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    if (!a2)
    {
      return;
    }

LABEL_40:
    if (v12 == v18)
    {
      v25 = *(v10 + 56);

      v25(a1, (a2 + 1));
    }

    else
    {
      v26 = &a1[v15];
      if (v17 > 0xFE)
      {
        v27 = *(v13 + 56);

        v27(&v26[v16 + 1] & ~v16, a2, v14);
      }

      else
      {
        *v26 = a2 + 1;
      }
    }

    return;
  }

LABEL_24:
  v22 = ~v18 + a2;
  if (v19 >= 4)
  {
    bzero(a1, v19);
    *a1 = v22;
    v23 = 1;
    if (v8 > 1)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v23 = (v22 >> (8 * v19)) + 1;
  if (!v19)
  {
LABEL_52:
    if (v8 > 1)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v24 = v22 & ~(-1 << (8 * v19));
  bzero(a1, v19);
  if (v19 == 3)
  {
    *a1 = v24;
    a1[2] = BYTE2(v24);
    goto LABEL_52;
  }

  if (v19 == 2)
  {
    *a1 = v24;
    if (v8 > 1)
    {
LABEL_56:
      if (v8 == 2)
      {
        *&a1[v19] = v23;
      }

      else
      {
        *&a1[v19] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v8 > 1)
    {
      goto LABEL_56;
    }
  }

LABEL_53:
  if (v8)
  {
    a1[v19] = v23;
  }
}

uint64_t sub_29E6E1AF4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E6E1BF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_29E6E4548(255);
  v5 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  v6 = sub_29E753A78();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v17[-v11];
  sub_29E752EE8();
  v13 = *(a1 + 24);
  v18 = v5;
  v19 = v13;
  v20 = v2;
  sub_29E753A68();
  swift_getWitnessTable();
  v14 = *(v7 + 16);
  v14(v12, v10, v6);
  v15 = *(v7 + 8);
  v15(v10, v6);
  v14(a2, v12, v6);
  return (v15)(v12, v6);
}

uint64_t sub_29E6E1DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a3;
  v54 = a1;
  v57 = a4;
  v53 = *(a2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](a1);
  v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v55 = &v50 - v7;
  sub_29E6E38B0(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E3888(0);
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E4548(0);
  v51 = v15;
  v16 = MEMORY[0x2A1C7C4A8](v15);
  v50 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = &v50 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v50 - v21;
  sub_29E7544C8();
  v52 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_29E752FF8();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_29E6E3AAC(0, &qword_2A1859B48, sub_29E6E3944);
  v24 = v54;
  v25 = v56;
  sub_29E6E3540(v54, a2, v56, 86, type metadata accessor for PreferredScoreLayout, 1, 0, &v10[*(v23 + 44)]);
  sub_29E753C58();
  sub_29E752CA8();
  sub_29E6E3B10(v10, v14, sub_29E6E38B0);
  v26 = &v14[*(v12 + 36)];
  v27 = v68;
  *(v26 + 4) = v67;
  *(v26 + 5) = v27;
  *(v26 + 6) = v69;
  v28 = v64;
  *v26 = v63;
  *(v26 + 1) = v28;
  v29 = v66;
  *(v26 + 2) = v65;
  *(v26 + 3) = v29;
  v30 = sub_29E7533E8();
  sub_29E7529C8();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_29E6E3B10(v14, v20, sub_29E6E3888);
  v39 = v51;
  v40 = &v20[*(v51 + 36)];
  *v40 = v30;
  *(v40 + 1) = v32;
  *(v40 + 2) = v34;
  *(v40 + 3) = v36;
  *(v40 + 4) = v38;
  v40[40] = 0;
  sub_29E6E3B10(v20, v22, sub_29E6E4548);
  v42 = type metadata accessor for PreferredScoreLayout(0, a2, v25, v41);
  v43 = v53;
  v44 = *(v53 + 16);
  v45 = v55;
  v44(v55, v24 + *(v42 + 40), a2);
  v46 = v50;
  sub_29E6E1274(v22, v50, sub_29E6E4548);
  v62[0] = v46;
  v47 = v58;
  v44(v58, v45, a2);
  v62[1] = v47;
  v61[0] = v39;
  v61[1] = a2;
  v59 = sub_29E6E1AF4(&qword_2A1859B78, sub_29E6E4548, sub_29E6E3B78);
  v60 = v25;
  sub_29E6DECB8(v62, 2uLL, v61);
  v48 = *(v43 + 8);
  v48(v45, a2);
  sub_29E6E13A4(v22, sub_29E6E4548);
  v48(v47, a2);
  sub_29E6E13A4(v46, sub_29E6E4548);
}

uint64_t sub_29E6E23D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  type metadata accessor for ScoreLevelTitle(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  sub_29E753A78();
  sub_29E752C28();
  type metadata accessor for SleepScoreRoomScoreBreakdown(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  v6 = sub_29E753AA8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v17[-v11];
  sub_29E752FF8();
  v13 = *(a1 + 24);
  v18 = v5;
  v19 = v13;
  v20 = v2;
  sub_29E753A98();
  swift_getWitnessTable();
  v14 = *(v7 + 16);
  v14(v12, v10, v6);
  v15 = *(v7 + 8);
  v15(v10, v6);
  v14(a2, v12, v6);
  return (v15)(v12, v6);
}

uint64_t sub_29E6E2640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a1;
  v40 = a4;
  v38 = type metadata accessor for SleepScoreRoomScoreBreakdown(0);
  v6 = MEMORY[0x2A1C7C4A8](v38);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v39 = &v33 - v8;
  type metadata accessor for ScoreLevelTitle(255);
  v42 = a2;
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  v9 = sub_29E753A78();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v33 - v11;
  v34 = sub_29E752C28();
  v36 = *(v34 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v34);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v33 - v16;
  sub_29E7544C8();
  v35 = sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  *(&v33 - 4) = v42;
  *(&v33 - 3) = a3;
  v33 = a3;
  v19 = v37;
  *(&v33 - 2) = v37;
  sub_29E752EF8();
  sub_29E753A68();
  sub_29E7533C8();
  WitnessTable = swift_getWitnessTable();
  sub_29E753888();
  (*(v10 + 8))(v12, v9);
  v46[2] = WitnessTable;
  v46[3] = MEMORY[0x29EDBC490];
  v21 = v34;
  v22 = swift_getWitnessTable();
  v23 = v36;
  v24 = *(v36 + 16);
  v24(v17, v15, v21);
  v36 = *(v23 + 8);
  (v36)(v15, v21);
  LOBYTE(WitnessTable) = *(v19 + *(type metadata accessor for SecondaryScoreLayout(0, v42, v33, v25) + 36));
  v26 = v19;
  v27 = v39;
  sub_29E6E1274(v26, v39, sub_29E631834);
  v28 = v38;
  *(v27 + *(v38 + 20)) = WitnessTable;
  v29 = v27 + *(v28 + 24);
  *v29 = 0;
  *(v29 + 8) = 1;
  v24(v15, v17, v21);
  v46[0] = v15;
  v30 = v41;
  sub_29E6E1274(v27, v41, type metadata accessor for SleepScoreRoomScoreBreakdown);
  v46[1] = v30;
  v45[0] = v21;
  v45[1] = v28;
  v43 = v22;
  v44 = sub_29E6E0D0C(&qword_2A1859B60, type metadata accessor for SleepScoreRoomScoreBreakdown, &unk_29E7666E0);
  sub_29E6DECB8(v46, 2uLL, v45);
  sub_29E6E13A4(v27, type metadata accessor for SleepScoreRoomScoreBreakdown);
  v31 = v36;
  (v36)(v17, v21);
  sub_29E6E13A4(v30, type metadata accessor for SleepScoreRoomScoreBreakdown);
  v31(v15, v21);
}

uint64_t sub_29E6E2B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a4;
  v26 = type metadata accessor for ScoreLevelTitle(0);
  v6 = MEMORY[0x2A1C7C4A8](v26);
  v27 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = v25 - v9;
  v11 = *(a2 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v8);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = v25 - v15;
  sub_29E7544C8();
  v25[1] = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = v28;
  v19 = type metadata accessor for SecondaryScoreLayout(0, a2, v28, v17);
  v20 = *(v11 + 16);
  v20(v16, a1 + *(v19 + 40), a2);
  LOBYTE(v19) = *(a1 + *(v19 + 36));
  sub_29E6E1274(a1, v10, sub_29E631834);
  v21 = v26;
  v10[*(v26 + 20)] = v19;
  v20(v14, v16, a2);
  v33[0] = v14;
  v22 = v27;
  sub_29E6E1274(v10, v27, type metadata accessor for ScoreLevelTitle);
  v33[1] = v22;
  v32[0] = a2;
  v32[1] = v21;
  v30 = v18;
  v31 = sub_29E6E0D0C(&qword_2A1859B68, type metadata accessor for ScoreLevelTitle, &unk_29E76ADB8);
  sub_29E6DECB8(v33, 2uLL, v32);
  sub_29E6E13A4(v10, type metadata accessor for ScoreLevelTitle);
  v23 = *(v11 + 8);
  v23(v16, a2);
  sub_29E6E13A4(v22, type metadata accessor for ScoreLevelTitle);
  v23(v14, a2);
}

uint64_t sub_29E6E2ED8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  sub_29E6E3888(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  v6 = sub_29E753AA8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v17[-v11];
  sub_29E752FF8();
  v13 = *(a1 + 24);
  v18 = v5;
  v19 = v13;
  v20 = v2;
  sub_29E753A98();
  swift_getWitnessTable();
  v14 = *(v7 + 16);
  v14(v12, v10, v6);
  v15 = *(v7 + 8);
  v15(v10, v6);
  v14(a2, v12, v6);
  return (v15)(v12, v6);
}

uint64_t sub_29E6E30D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  sub_29E6E38B0(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E3888(0);
  v42 = v10;
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v40 - v14;
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v41 = &v40 - v17;
  v18 = *(a2 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v40 - v22;
  sub_29E7544C8();
  v40 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = type metadata accessor for TertiaryScoreLayout(0, a2, a3, v24);
  v26 = *(v18 + 16);
  v26(v23, a1 + *(v25 + 40), a2);
  *v9 = sub_29E752FF8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_29E6E3AAC(0, &qword_2A1859B48, sub_29E6E3944);
  v28 = *(v27 + 44);
  v29 = a1;
  v30 = a3;
  sub_29E6E3540(v29, a2, a3, 130, type metadata accessor for TertiaryScoreLayout, 0, 1, &v9[v28]);
  sub_29E753C58();
  sub_29E752CA8();
  sub_29E6E3B10(v9, v15, sub_29E6E38B0);
  v31 = v42;
  v32 = &v15[*(v42 + 36)];
  v33 = v54;
  *(v32 + 4) = v53;
  *(v32 + 5) = v33;
  *(v32 + 6) = v55;
  v34 = v50;
  *v32 = v49;
  *(v32 + 1) = v34;
  v35 = v52;
  *(v32 + 2) = v51;
  *(v32 + 3) = v35;
  v36 = v41;
  sub_29E6E3B10(v15, v41, sub_29E6E3888);
  v26(v21, v23, a2);
  v48[0] = v21;
  v37 = v43;
  sub_29E6E1274(v36, v43, sub_29E6E3888);
  v48[1] = v37;
  v47[0] = a2;
  v47[1] = v31;
  v45 = v30;
  v46 = sub_29E6E3B78();
  sub_29E6DECB8(v48, 2uLL, v47);
  sub_29E6E13A4(v36, sub_29E6E3888);
  v38 = *(v18 + 8);
  v38(v23, a2);
  sub_29E6E13A4(v37, sub_29E6E3888);
  v38(v21, a2);
}

uint64_t sub_29E6E3540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t, __n128)@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v38 = a7;
  v36 = a5;
  v37 = a6;
  v33 = a4;
  v34 = a2;
  v35 = a3;
  v40 = a8;
  v9 = type metadata accessor for SleepScoreRoomScoreBreakdown(0);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v33 - v13;
  sub_29E6E3A58(0);
  v16 = v15;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v33 - v20;
  sub_29E7544C8();
  v39 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *(a1 + *((v36)(0, v34, v35) + 36));
  sub_29E6E1274(a1, v21, sub_29E631834);
  v21[*(type metadata accessor for ScoreLevelTitle(0) + 20)] = v22;
  v23 = sub_29E7533C8();
  sub_29E7529C8();
  v24 = &v21[*(v16 + 36)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_29E6E1274(a1, v14, sub_29E631834);
  v14[*(v9 + 20)] = v22;
  v29 = &v14[*(v9 + 24)];
  *v29 = v37;
  v29[8] = v38 & 1;
  sub_29E6E1274(v21, v19, sub_29E6E3A58);
  sub_29E6E1274(v14, v12, type metadata accessor for SleepScoreRoomScoreBreakdown);
  v30 = v40;
  sub_29E6E1274(v19, v40, sub_29E6E3A58);
  sub_29E6E39DC(0, &qword_2A1859B30, sub_29E6E3A58, type metadata accessor for SleepScoreRoomScoreBreakdown);
  sub_29E6E1274(v12, v30 + *(v31 + 48), type metadata accessor for SleepScoreRoomScoreBreakdown);
  sub_29E6E13A4(v14, type metadata accessor for SleepScoreRoomScoreBreakdown);
  sub_29E6E13A4(v21, sub_29E6E3A58);
  sub_29E6E13A4(v12, type metadata accessor for SleepScoreRoomScoreBreakdown);
  sub_29E6E13A4(v19, sub_29E6E3A58);
}

void sub_29E6E38B0(uint64_t a1)
{
  if (!qword_2A1859B20)
  {
    sub_29E6E3944(255);
    sub_29E6E0D0C(&qword_2A1859B40, sub_29E6E3944, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859B20);
    }
  }
}

void sub_29E6E3980(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29E6E39DC(255, a3, a4, a5);
    v6 = sub_29E753C78();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6E39DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E6E3AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752B08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6E3B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6E3BB4(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_29E6E0D0C(a3, a4, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E6E3C54@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v54 = sub_29E752FB8();
  v52 = *(v54 - 8);
  MEMORY[0x2A1C7C4A8](v54);
  v51 = v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29E752C88();
  v50 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48);
  v49 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E753508();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E1024();
  v47 = v10;
  v45 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v43 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E0F7C(0);
  v44 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v46 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_29E6E4274();
  v57 = v14;
  sub_29E60DE10();
  v15 = sub_29E753608();
  v17 = v16;
  v19 = v18;
  v42[1] = v20;
  v21 = v6;
  (*(v7 + 104))(v9, *MEMORY[0x29EDBC9B8], v6);
  v22 = *MEMORY[0x29EDBC988];
  v23 = sub_29E753448();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v5, v22, v23);
  (*(v24 + 56))(v5, 0, 1, v23);
  sub_29E753458();
  sub_29E753498();
  sub_29E6E13A4(v5, sub_29E637500);
  (*(v7 + 8))(v9, v21);
  v25 = sub_29E7535D8();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_29E60DB44(v15, v17, v19 & 1);

  v56 = v25;
  v57 = v27;
  v58 = v29 & 1;
  v59 = v31;
  v32 = *(v42[2] + *(type metadata accessor for ScoreLevelTitle(0) + 20));
  if (v32 == 1)
  {
    v33 = v49;
    sub_29E752C78();
    v34 = v48;
  }

  else
  {
    v55 = MEMORY[0x29EDCA190];
    sub_29E6E0D0C(&qword_2A1857CE8, MEMORY[0x29EDBC588], MEMORY[0x29EDBC590]);
    sub_29E6505BC(0);
    sub_29E6E0D0C(&qword_2A1857CF8, sub_29E6505BC, MEMORY[0x29EDC9A70]);
    v33 = v49;
    v35 = v48;
    sub_29E754C58();
    v34 = v35;
  }

  v36 = v43;
  sub_29E7538A8();
  (*(v50 + 8))(v33, v34);
  sub_29E60DB44(v25, v27, v29 & 1);

  v37 = sub_29E753C68();
  v38 = v46;
  (*(v45 + 32))(v46, v36, v47);
  v39 = v38 + *(v44 + 36);
  *v39 = v37;
  *(v39 + 8) = v32;
  v40 = v51;
  sub_29E752FA8();
  sub_29E6E4634();
  sub_29E753828();
  (*(v52 + 8))(v40, v54);
  return sub_29E6E1344(v38, sub_29E6E0F7C);
}

uint64_t sub_29E6E4274()
{
  v1 = v0;
  v2 = sub_29E754188();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74EF88();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E1274(v1, v12, sub_29E631834);
  v13 = sub_29E74F2D8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29E6E13A4(v12, sub_29E631834);
    sub_29E754118();
    v15 = sub_29E65B0B4(v5);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_29E74F2C8();
    (*(v14 + 8))(v12, v13);
    v15 = sub_29E74EF58();
    (*(v7 + 8))(v9, v6);
  }

  return v15;
}

void sub_29E6E45A4(uint64_t a1)
{
  sub_29E631834(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29E6E4634()
{
  result = qword_2A1859B90;
  if (!qword_2A1859B90)
  {
    sub_29E6E0F7C(255);
    swift_getOpaqueTypeConformance2();
    sub_29E6E0D0C(&qword_2A1859B98, sub_29E6E10A4, MEMORY[0x29EDBC708]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859B90);
  }

  return result;
}

unint64_t sub_29E6E4714()
{
  result = qword_2A1859BA0;
  if (!qword_2A1859BA0)
  {
    sub_29E6E0FB0(255, &qword_2A1859BA8, sub_29E6E0F7C, MEMORY[0x29EDBC0A8]);
    sub_29E6E4634();
    sub_29E6E0D0C(&qword_2A1857F58, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859BA0);
  }

  return result;
}

uint64_t sub_29E6E4804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29E6E93EC(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v25 - v10;
  sub_29E6B1E70(a3, v25 - v10);
  v12 = sub_29E7544F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29E6E7B98(v11, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29E7544E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_29E754468();
    v18 = v17;
    sub_29E751758();
    if (a2)
    {
LABEL_6:
      v19 = sub_29E754228() + 32;
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

      sub_29E6E7B98(a3, &qword_2A1859CD0, MEMORY[0x29EDCA398]);

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

  sub_29E6E7B98(a3, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
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

uint64_t sub_29E6E4B28(void *a1, uint64_t a2)
{
  v52 = a2;
  v46 = a1;
  swift_getObjectType();
  v3 = sub_29E7513C8();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v54 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E7513D8();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v47 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v45[1] = v2;
    v15 = v14;
    v53[0] = v14;
    *v13 = 136446210;
    v16 = sub_29E755178();
    v18 = sub_29E6B9C90(v16, v17, v53);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Creating sleep analysis detail view from context", v13, 0xCu);
    sub_29E5FECBC(v15);
    MEMORY[0x29ED98410](v15, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v19 = v52;
  sub_29E7513B8();
  v20 = sub_29E7508E8();
  v22 = v21;
  if (v20 == sub_29E7508E8() && v22 == v23)
  {
    goto LABEL_5;
  }

  v24 = sub_29E755028();

  if (v24)
  {
    goto LABEL_7;
  }

  sub_29E7513B8();
  v34 = sub_29E7508E8();
  v36 = v35;
  if (v34 == sub_29E7508E8() && v36 == v37)
  {
LABEL_5:
  }

  else
  {
    v38 = sub_29E755028();

    if ((v38 & 1) == 0)
    {
      v39 = objc_opt_self();
      v40 = sub_29E751388();
      v41 = [v39 sharedInstanceForHealthStore_];

      v42 = v54;
      (*(v50 + 16))(v54, v19, v51);
      v43 = [objc_opt_self() unknownProvenance];
      v44 = objc_allocWithZone(type metadata accessor for SleepRoomViewController(0));
      v32 = sub_29E69F6AC(v41, v42, v43);

      return v32;
    }
  }

LABEL_7:
  v25 = v46;
  v26 = v47;
  sub_29E751228();
  v27 = v25;
  sub_29E751298();
  v53[3] = &_s26SleepSharingChartComponentVN;
  v28 = sub_29E6E7554();
  v53[0] = v27;
  v53[1] = 0xD000000000000011;
  v53[4] = v28;
  v53[2] = 0x800000029E75F290;
  v29 = v27;
  v30 = v49;
  sub_29E7518F8();

  sub_29E6E7B98(v53, &qword_2A18582F0, sub_29E6CEF90);
  sub_29E751148();
  (*(v50 + 16))(v54, v19, v51);
  objc_allocWithZone(sub_29E751498());
  v31 = v29;
  v32 = sub_29E751478();
  (*(v48 + 8))(v26, v30);
  return v32;
}

id sub_29E6E5098(void *a1, uint64_t a2)
{
  v3 = v2;
  v84 = a2;
  v80 = a1;
  swift_getObjectType();
  v4 = sub_29E751468();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E7513C8();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E7513D8();
  v9 = *(v8 - 1);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v74 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v76 = &v68 - v12;
  v13 = sub_29E752098();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v17 = sub_29E752088();
  v18 = sub_29E7546C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v70 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v75 = v9;
    v22 = v21;
    *&v81 = v21;
    *v20 = 136446210;
    v23 = sub_29E755178();
    v25 = sub_29E6B9C90(v23, v24, &v81);
    v69 = v13;
    v26 = v25;

    *(v20 + 4) = v26;
    v3 = v2;
    _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] Creating sleep apnea event detail view from context", v20, 0xCu);
    sub_29E5FECBC(v22);
    v27 = v22;
    v9 = v75;
    MEMORY[0x29ED98410](v27, -1, -1);
    v28 = v20;
    v8 = v70;
    MEMORY[0x29ED98410](v28, -1, -1);

    (*(v14 + 8))(v16, v69);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v29 = v84;
  sub_29E7513B8();
  v30 = sub_29E7508E8();
  v32 = v31;
  if (v30 == sub_29E7508E8() && v32 == v33)
  {
    goto LABEL_6;
  }

  v34 = sub_29E755028();

  if (v34)
  {
    goto LABEL_8;
  }

  sub_29E7513B8();
  v41 = sub_29E7508E8();
  v43 = v42;
  if (v41 == sub_29E7508E8() && v43 == v44)
  {
LABEL_6:

LABEL_8:
    v35 = v76;
    v36 = v80;
    sub_29E73C7C0(v80, v76);
    sub_29E751148();
    (v77)[2](v79, v29, v78);
    v37 = objc_allocWithZone(sub_29E751498());
    v38 = v36;
    v39 = sub_29E751478();
    (*(v9 + 8))(v35, v8);
    return v39;
  }

  v45 = sub_29E755028();

  if (v45)
  {
    goto LABEL_8;
  }

  v75 = v9;
  v46 = sub_29E751388();
  v47 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v48 = sub_29E754198();
  v49 = [v47 initWithIdentifier:v48 healthStore:v46];

  v50 = v49;
  v51 = sub_29E751388();
  v52 = [objc_allocWithZone(MEMORY[0x29EDC68B0]) initWithSleepStore:v50 healthDataSource:v51];

  result = [v52 featureAvailabilityProvidingForFeatureIdentifier_];
  if (result)
  {
    v53 = result;
    v54 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
    v76 = v52;
    v55 = [v54 initWithFeatureAvailabilityProviding:v53 healthDataSource:v52 currentCountryCode:0];
    sub_29E751758();
    v56 = sub_29E751388();
    v82 = sub_29E609B5C(0, &qword_2A1A7BD80, 0x29EDBABB0);
    v83 = MEMORY[0x29EDC2EA8];
    *&v81 = v55;
    type metadata accessor for SleepApneaEventDataTypeDetailDataSource();
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    sub_29E5FAEE4(&v81, v57 + 24);
    v58 = v55;
    v59 = v80;
    v39 = v57;
    sub_29E6A3360(v80, v74);
    if (v3)
    {
    }

    else
    {
      v69 = sub_29E751148();
      v70 = v50;
      v68 = v77[2];
      v60 = v79;
      v77 = v58;
      v61 = v78;
      v68(v79, v29, v78);
      v62 = v59;
      v63 = v71;
      sub_29E751458();
      type metadata accessor for SleepApneaChartOverlayVersionProviding();
      swift_allocObject();
      sub_29E751448();
      v68(v60, v29, v61);
      v64 = v73;
      v82 = v73;
      v83 = MEMORY[0x29EDC2780];
      v65 = sub_29E5FEBF4(&v81);
      v66 = v72;
      (*(v72 + 16))(v65, v63, v64);
      v67 = objc_allocWithZone(sub_29E751498());
      v39 = sub_29E751488();

      (*(v66 + 8))(v63, v64);
      (*(v75 + 8))(v74, v8);
    }

    return v39;
  }

  __break(1u);
  return result;
}

id sub_29E6E5878(void *a1, uint64_t a2)
{
  v103 = a1;
  swift_getObjectType();
  sub_29E6E93EC(0, &qword_2A1859CB0, MEMORY[0x29EDC2B18]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v95 = &v89 - v5;
  v6 = sub_29E751468();
  v96 = *(v6 - 8);
  v97 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v99 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_29E7513C8();
  v110 = *(v105 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v105);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v9;
  MEMORY[0x2A1C7C4A8](v8);
  v104 = &v89 - v11;
  v12 = sub_29E7513D8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v98 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v100 = &v89 - v16;
  v17 = sub_29E752098();
  v101 = *(v17 - 8);
  v102 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v20 = sub_29E752088();
  v21 = sub_29E7546C8();
  v22 = os_log_type_enabled(v20, v21);
  v106 = v2;
  v93 = v10;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v107[0] = v92;
    *v23 = 136446210;
    v24 = sub_29E755178();
    v26 = a2;
    v27 = v13;
    v28 = v12;
    v29 = sub_29E6B9C90(v24, v25, v107);

    *(v23 + 4) = v29;
    v12 = v28;
    v13 = v27;
    a2 = v26;
    _os_log_impl(&dword_29E5ED000, v20, v21, "[%{public}s] Creating breathing disturbances detail view from context", v23, 0xCu);
    v30 = v92;
    sub_29E5FECBC(v92);
    MEMORY[0x29ED98410](v30, -1, -1);
    MEMORY[0x29ED98410](v23, -1, -1);
  }

  (*(v101 + 8))(v19, v102);
  sub_29E7513B8();
  v31 = sub_29E7508E8();
  v33 = v32;
  v34 = sub_29E7508E8();
  v36 = v110;
  if (v31 == v34 && v33 == v35)
  {
    goto LABEL_5;
  }

  v37 = sub_29E755028();

  if (v37)
  {
    goto LABEL_7;
  }

  sub_29E7513B8();
  v45 = sub_29E7508E8();
  v47 = v46;
  if (v45 == sub_29E7508E8() && v47 == v48)
  {
LABEL_5:

LABEL_7:
    v38 = v100;
    v39 = v103;
    sub_29E751228();
    sub_29E751298();
    v108 = &_s42BreathingDisturbancesSharingChartComponentVN;
    v109 = sub_29E6E78A4();
    sub_29E7518F8();

    sub_29E6E7B98(v107, &qword_2A18582F0, sub_29E6CEF90);
    sub_29E751148();
    (*(v36 + 16))(v104, a2, v105);
    objc_allocWithZone(sub_29E751498());
    v40 = v39;
    v41 = sub_29E751478();
    v42 = v38;
    v43 = v12;
LABEL_8:
    v13[1](v42, v43);
    return v41;
  }

  v49 = sub_29E755028();

  if (v49)
  {
    goto LABEL_7;
  }

  v100 = v13;
  v101 = v12;
  v50 = a2;
  v51 = sub_29E751388();
  v52 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v53 = sub_29E754198();
  v54 = [v52 initWithIdentifier:v53 healthStore:v51];

  v55 = v54;
  v56 = sub_29E751388();
  v57 = [objc_allocWithZone(MEMORY[0x29EDC68B0]) initWithSleepStore:v55 healthDataSource:v56];
  v92 = v55;

  v59 = *(v36 + 16);
  v58 = v36 + 16;
  v60 = v93;
  v91 = v50;
  v61 = v105;
  v59(v93, v50, v105);
  type metadata accessor for BreathingDisturbancesDataTypeDetailConfigurationProvider(0);
  v62 = swift_allocObject();
  v102 = v59;
  v59(v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_context, v60, v61);
  *(v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureAvailabilityDataSource) = v57;
  v63 = *MEMORY[0x29EDBA748];
  v64 = v57;
  v90 = v63;
  result = [v64 featureAvailabilityProvidingForFeatureIdentifier_];
  if (result)
  {
    v65 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureAvailabilityProviding:result healthDataSource:v64 currentCountryCode:0];
    sub_29E751758();
    v66 = (v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureStatusProvider);
    v67 = sub_29E609B5C(0, &qword_2A1A7BD80, 0x29EDBABB0);
    v68 = MEMORY[0x29EDC2EA8];
    v66[3] = v67;
    v66[4] = v68;

    *v66 = v65;
    v69 = *(v110 + 8);
    v69(v60, v61);
    v70 = v103;
    sub_29E66C82C(v103);
    swift_setDeallocating();
    v69(v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_context, v61);

    sub_29E5FECBC((v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureStatusProvider));
    swift_deallocClassInstance();
    v71 = v91;
    v93 = sub_29E751148();
    v72 = v104;
    v73 = v71;
    v102(v104, v71, v61);
    v74 = v70;
    v75 = v99;
    sub_29E751458();
    v103 = v64;
    if (![v64 featureAvailabilityProvidingForFeatureIdentifier_] || (swift_getObjectType(), v76 = sub_29E754A78(), sub_29E751758(), (v76 & 1) == 0))
    {
      type metadata accessor for SleepApneaChartOverlayVersionProviding();
      swift_allocObject();
      sub_29E751448();
    }

    v77 = v73;
    v78 = v73;
    v79 = v102;
    v102(v72, v78, v61);
    v90 = v58;
    v80 = v97;
    v108 = v97;
    v109 = MEMORY[0x29EDC2780];
    v81 = sub_29E5FEBF4(v107);
    v82 = v96;
    (*(v96 + 16))(v81, v75, v80);
    v83 = objc_allocWithZone(sub_29E751AB8());

    v41 = sub_29E751AA8();
    v79(v72, v77, v61);
    v84 = v110;
    v85 = (*(v110 + 80) + 16) & ~*(v110 + 80);
    v86 = swift_allocObject();
    (*(v84 + 32))(v86 + v85, v72, v61);
    v87 = v95;
    sub_29E751A68();
    v88 = sub_29E751A78();
    (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    sub_29E751A88();

    (*(v82 + 8))(v99, v80);
    v13 = v100;
    v43 = v101;
    v42 = v98;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6E62F8()
{
  v0 = MEMORY[0x29EDC1D90];
  sub_29E6E93EC(0, &qword_2A1858AE0, MEMORY[0x29EDC1D90]);
  v2 = MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v10[-v3 - 8];
  v5 = sub_29E6E99BC(v2);
  sub_29E754858();
  sub_29E754838();
  v6 = [v5 profileIdentifier];
  v7 = sub_29E750698();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  MEMORY[0x29ED931F0](v6, v4);

  sub_29E6E7B98(v4, &qword_2A1858AE0, v0);
  sub_29E602E20(v11, v10);
  sub_29E751378();
  return sub_29E5FECBC(v11);
}

uint64_t sub_29E6E646C(void *a1)
{
  v2 = MEMORY[0x29EDC1D90];
  sub_29E6E93EC(0, &qword_2A1858AE0, MEMORY[0x29EDC1D90]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_29E7513C8();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E754838();
  v8 = sub_29E6E99BC(v7);
  sub_29E754858();
  sub_29E602E20(v18, v16);
  sub_29E602E20(v17, v15);
  sub_29E602E20(v18, v14);
  v9 = [v8 profileIdentifier];
  v10 = sub_29E750698();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  MEMORY[0x29ED931F0](v9, v5);

  sub_29E6E7B98(v5, &qword_2A1858AE0, v2);
  sub_29E602E20(v17, v13);
  sub_29E751378();
  v11 = a1;
  sub_29E750FB8();
  sub_29E5FECBC(v17);
  return sub_29E5FECBC(v18);
}

void sub_29E6E6734(uint64_t a1)
{
  if (!qword_2A1859BC0)
  {
    sub_29E65ECF0(255, &qword_2A1859BC8, &qword_2A1859BD0, 0x29EDC68C8);
    v1 = sub_29E7500E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859BC0);
    }
  }
}

id sub_29E6E67A4()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_29E6E67D8(uint64_t a1)
{
  if (a1 != 6)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_29E6E6810(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2A1C63378](ObjectType, a2);
}

void sub_29E6E684C(uint64_t a1)
{
  v29[1] = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = HKSPLogForCategory();
  v7 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v8 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v6 healthDataSource:v7];

  v9 = [objc_allocWithZone(MEMORY[0x29EDC69B0]) initWithNotificationResponse_];
  v29[0] = 0;
  if ([v8 submitEvent:v9 error:v29])
  {
    v10 = v29[0];
  }

  else
  {
    v11 = v29[0];
    v12 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752048();
    v13 = v12;
    v14 = sub_29E752088();
    v15 = sub_29E7546A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v3;
      v19 = v18;
      v29[0] = v18;
      *v16 = 136446466;
      v20 = sub_29E755178();
      v22 = sub_29E6B9C90(v20, v21, v29);
      v27 = v2;
      v23 = v22;

      *(v16 + 4) = v23;
      *(v16 + 12) = 2112;
      v24 = v12;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v25;
      *v17 = v25;
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s] Error trying to send notification interacted analytics event: %@", v16, 0x16u);
      sub_29E6E9960(v17, &qword_2A1A7D0A8, &qword_2A1A7D0B0, 0x29EDC9738);
      MEMORY[0x29ED98410](v17, -1, -1);
      sub_29E5FECBC(v19);
      MEMORY[0x29ED98410](v19, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);

      (*(v28 + 8))(v5, v27);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }
}

unint64_t sub_29E6E6BB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_29E6A8458();
    v2 = sub_29E754EB8();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_29E68CE40(*(a1 + 48) + 40 * v12, v27);
        sub_29E606008(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_29E68CE40(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_29E606008(v25 + 8, v20);
        sub_29E6E96E4(v24);
        v21 = v18;
        sub_29E61FF28(v20, v22);
        v13 = v21;
        sub_29E61FF28(v22, v23);
        sub_29E61FF28(v23, &v21);
        result = sub_29E68A9D0(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_29E5FECBC(v10);
          result = sub_29E61FF28(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_29E61FF28(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_29E6E96E4(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_29E6E6EC8(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v16, a7, v14);
}

uint64_t sub_29E6E6F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_29E7544C8();
  *(v4 + 24) = sub_29E7544B8();
  v6 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E6E7020, v6, v5);
}

uint64_t sub_29E6E7020()
{

  v1 = objc_opt_self();
  v2 = [v1 sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    if ([v3 respondsToSelector_])
    {
      v4 = [v1 sharedApplication];
      sub_29E68B6A8(MEMORY[0x29EDCA190]);
      v5 = sub_29E74EAC8();
      type metadata accessor for OpenURLOptionsKey(0);
      sub_29E6E9918(&qword_2A1856620, 255, type metadata accessor for OpenURLOptionsKey, &unk_29E762E14);
      v6 = sub_29E754068();
      [v3 application:v4 openURL:v5 options:v6];
    }

    sub_29E751758();
  }

  v7 = *(v0 + 8);

  return v7();
}

id sub_29E6E71C0(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E609B5C(0, &qword_2A1A7D0B0, 0x29EDC9738);
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  v8 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  v9 = sub_29E754B88();

  if (v9)
  {
    sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
    v10 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
    v11 = sub_29E6E5878(v10, a2);

    return v11;
  }

  else
  {
    sub_29E752048();
    v13 = a1;
    v14 = sub_29E752088();
    v15 = sub_29E7546A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136446466;
      v18 = sub_29E755178();
      v20 = sub_29E6B9C90(v18, v19, &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = [v13 identifier];
      v22 = sub_29E7541D8();
      v24 = v23;

      v25 = sub_29E6B9C90(v22, v24, &v27);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s] Received non-apnea event type: %s, returning nil view controller", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v17, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

unint64_t sub_29E6E7554()
{
  result = qword_2A1859CA0;
  if (!qword_2A1859CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859CA0);
  }

  return result;
}

id sub_29E6E75A8(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_29E7513C8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752098();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v1;
    v13 = v12;
    v25 = swift_slowAlloc();
    v26 = a1;
    v30 = v25;
    *v13 = 136446210;
    v14 = sub_29E755178();
    v16 = v4;
    v17 = v6;
    v18 = v3;
    v19 = sub_29E6B9C90(v14, v15, &v30);

    *(v13 + 4) = v19;
    v3 = v18;
    v6 = v17;
    v4 = v16;
    _os_log_impl(&dword_29E5ED000, v10, v11, "[%{public}s] Creating sleep score event detail view from context", v13, 0xCu);
    v20 = v25;
    sub_29E5FECBC(v25);
    v21 = v20;
    a1 = v26;
    MEMORY[0x29ED98410](v21, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);
  }

  (*(v28 + 8))(v9, v29);
  (*(v4 + 16))(v6, a1, v3);
  v22 = objc_allocWithZone(type metadata accessor for SleepScoreRoomViewController(0));
  return SleepScoreRoomViewController.init(context:)(v6);
}

uint64_t sub_29E6E7834(void *a1)
{
  v3 = *(sub_29E7513C8() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_29E73BAE4(a1, v4);
}

unint64_t sub_29E6E78A4()
{
  result = qword_2A1859CB8;
  if (!qword_2A1859CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859CB8);
  }

  return result;
}

void sub_29E6E78F8(uint64_t a1)
{
  v2 = sub_29E7513C8();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750528();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() sharedBehavior];
  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [v9 features];

  if (!v11)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v12 = [v11 sleepDetails];

  if (v12)
  {
    (*(v6 + 16))(v8, a1, v5);
    sub_29E750A78();
    sub_29E750A58();
    sub_29E750A88();
    v13 = objc_allocWithZone(sub_29E750CC8());
    sub_29E750CB8();
  }

  else
  {
    v14 = objc_opt_self();
    v15 = sub_29E750A78();
    v16 = [v14 sharedInstanceForHealthStore_];

    sub_29E750A58();
    sub_29E750A78();
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_29E751378();
    v17 = [objc_opt_self() unknownProvenance];
    v18 = objc_allocWithZone(type metadata accessor for SleepRoomViewController(0));
    sub_29E69F6AC(v16, v4, v17);
  }
}

uint64_t sub_29E6E7B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6E93EC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E6E7C08(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v203 = a2;
  ObjectType = swift_getObjectType();
  sub_29E6E93EC(0, &qword_2A1859CC8, MEMORY[0x29EDC6B38]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v193 = &v193 - v6;
  sub_29E6E93EC(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v201 = &v193 - v8;
  sub_29E6E93EC(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v196 = &v193 - v10;
  v11 = sub_29E74EAF8();
  v204 = *(v11 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v194 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v198 = &v193 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v199 = v18;
  v200 = &v193 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v195 = &v193 - v19;
  v208 = sub_29E752098();
  v20 = *(v208 - 1);
  v21 = MEMORY[0x2A1C7C4A8](v208);
  v206 = &v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v193 - v23;
  sub_29E752048();
  v25 = a1;
  v26 = sub_29E752088();
  v27 = sub_29E7546C8();

  v28 = os_log_type_enabled(v26, v27);
  v29 = &selRef_restoreUserActivityState_;
  v30 = &off_29F370000;
  v202 = a3;
  v205 = v20;
  if (v28)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v209[0] = v32;
    *v31 = 136446723;
    v33 = sub_29E755178();
    v35 = sub_29E6B9C90(v33, v34, v209);

    *(v31 + 4) = v35;
    v197 = v11;
    *(v31 + 12) = 2081;
    v36 = [v25 notification];
    v37 = [v36 request];

    v38 = [v37 identifier];
    v39 = sub_29E7541D8();
    v40 = v20;
    v41 = v25;
    v43 = v42;

    v44 = sub_29E6B9C90(v39, v43, v209);

    *(v31 + 14) = v44;
    *(v31 + 22) = 2081;
    v45 = [v41 actionIdentifier];
    v46 = sub_29E7541D8();
    v48 = v47;

    v49 = v46;
    v25 = v41;
    v50 = sub_29E6B9C90(v49, v48, v209);
    v29 = &selRef_restoreUserActivityState_;

    *(v31 + 24) = v50;
    _os_log_impl(&dword_29E5ED000, v26, v27, "[%{public}s] Received notification: %{private}s, response action: %{private}s", v31, 0x20u);
    swift_arrayDestroy();
    v51 = v32;
    v30 = &off_29F370000;
    MEMORY[0x29ED98410](v51, -1, -1);
    MEMORY[0x29ED98410](v31, -1, -1);

    v52 = *(v40 + 8);
    v52(v24, v208);
    v11 = v197;
  }

  else
  {

    v52 = *(v20 + 8);
    v52(v24, v208);
  }

  v53 = [v25 v29[71]];
  v54 = [v53 request];

  v55 = [v54 *(v30 + 263)];
  v56 = sub_29E7541D8();
  v58 = v57;

  if (v56 == sub_29E7541D8() && v58 == v59)
  {

    goto LABEL_8;
  }

  v60 = sub_29E755028();

  if (v60)
  {
LABEL_8:
    sub_29E6E684C(v25);
    v61 = [v25 notification];
    v62 = [v61 &selRef_delegate];

    v63 = [v62 content];
    v64 = [v63 userInfo];

    v65 = sub_29E754078();
    v66 = sub_29E6E6BB0(v65);

    if (v66)
    {
      v67 = sub_29E7541D8();
      if (*(v66 + 16))
      {
        v69 = sub_29E68A9D0(v67, v68);
        v71 = v70;

        if (v71)
        {
          sub_29E606008(*(v66 + 56) + 32 * v69, v209);

          if (swift_dynamicCast())
          {
            v72 = v196;
            sub_29E74EAE8();

            if ((*(v204 + 48))(v72, 1, v11) != 1)
            {
              v106 = v204;
              v107 = v11;
              v108 = *(v204 + 32);
              v109 = v195;
              v108(v195, v72, v11);
              v110 = sub_29E7544F8();
              v111 = v201;
              (*(*(v110 - 8) + 56))(v201, 1, 1, v110);
              v112 = v200;
              (*(v106 + 16))(v200, v109, v107);
              sub_29E7544C8();
              v113 = sub_29E7544B8();
              v114 = (*(v106 + 80) + 32) & ~*(v106 + 80);
              v115 = swift_allocObject();
              v116 = MEMORY[0x29EDCA390];
              *(v115 + 16) = v113;
              *(v115 + 24) = v116;
              v108((v115 + v114), v112, v107);
              sub_29E6E4804(0, 0, v111, &unk_29E76AF18, v115);

              v203(v117);
              (*(v106 + 8))(v109, v107);
              return;
            }

            sub_29E6E7B98(v72, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
          }

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

LABEL_19:
    v80 = v206;
    sub_29E752048();
    v81 = sub_29E752088();
    v82 = sub_29E7546A8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v209[0] = v84;
      *v83 = 136446210;
      v85 = sub_29E755178();
      v87 = sub_29E6B9C90(v85, v86, v209);

      *(v83 + 4) = v87;
      _os_log_impl(&dword_29E5ED000, v81, v82, "[%{public}s] Could not get URL from notification user info, will not redirect to room.", v83, 0xCu);
      sub_29E5FECBC(v84);
      MEMORY[0x29ED98410](v84, -1, -1);
      MEMORY[0x29ED98410](v83, -1, -1);
    }

    v52(v80, v208);
    return;
  }

  v73 = [v25 notification];
  v74 = [v73 &selRef_delegate];

  v75 = [v74 v30 + 1656];
  v76 = sub_29E7541D8();
  v78 = v77;

  if (v76 == sub_29E7541D8() && v78 == v79)
  {

LABEL_23:
    sub_29E6E684C(v25);
    v89 = v200;
    sub_29E74EA78();
    v90 = sub_29E7544F8();
    v91 = v201;
    (*(*(v90 - 8) + 56))(v201, 1, 1, v90);
    v92 = v11;
    v93 = v204;
    v94 = v198;
    (*(v204 + 16))(v198, v89, v92);
    sub_29E7544C8();
    v95 = sub_29E7544B8();
    v96 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v97 = swift_allocObject();
    v98 = MEMORY[0x29EDCA390];
    *(v97 + 16) = v95;
    *(v97 + 24) = v98;
    (*(v93 + 32))(v97 + v96, v94, v92);
    sub_29E6E4804(0, 0, v91, &unk_29E76AF10, v97);

    v99 = (*(v93 + 8))(v89, v92);
    v203(v99);
    return;
  }

  v88 = sub_29E755028();

  if (v88)
  {
    goto LABEL_23;
  }

  v197 = v11;
  v100 = [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:*MEMORY[0x29EDC67D0] presentation:*MEMORY[0x29EDC6770]];
  v101 = [v25 actionIdentifier];
  v102 = sub_29E7541D8();
  v104 = v103;

  if (v102 != sub_29E7541D8() || v104 != v105)
  {
    v118 = sub_29E755028();

    if (v118)
    {
      goto LABEL_30;
    }

    v134 = [v25 notification];
    v135 = [v134 &selRef_delegate];

    v136 = [v135 content];
    v137 = [v136 categoryIdentifier];

    v138 = sub_29E7541D8();
    v140 = v139;

    if (v138 == sub_29E7541D8() && v140 == v141)
    {
      goto LABEL_35;
    }

    v142 = sub_29E755028();

    if (v142)
    {
      goto LABEL_37;
    }

    v157 = [v25 notification];
    v158 = [v157 &selRef_delegate];

    v159 = [v158 content];
    v160 = [v159 categoryIdentifier];

    v161 = sub_29E7541D8();
    v163 = v162;

    if (v161 == sub_29E7541D8() && v163 == v164)
    {
LABEL_35:

LABEL_37:
      v143 = sub_29E74F7F8();
      v144 = v193;
      (*(*(v143 - 8) + 56))(v193, 1, 1, v143);
      v145 = v200;
      sub_29E74EA88();
      sub_29E6E7B98(v144, &qword_2A1859CC8, MEMORY[0x29EDC6B38]);
      v146 = sub_29E7544F8();
      v147 = v201;
      (*(*(v146 - 8) + 56))(v201, 1, 1, v146);
      v148 = v204;
      v149 = v100;
      v150 = v197;
      v151 = v198;
      (*(v204 + 16))(v198, v145, v197);
      sub_29E7544C8();
      v152 = sub_29E7544B8();
      v153 = (*(v148 + 80) + 32) & ~*(v148 + 80);
      v154 = swift_allocObject();
      v155 = MEMORY[0x29EDCA390];
      *(v154 + 16) = v152;
      *(v154 + 24) = v155;
      (*(v148 + 32))(v154 + v153, v151, v150);
      sub_29E6E4804(0, 0, v147, &unk_29E76AF00, v154);

      v156 = (*(v148 + 8))(v145, v150);
      v203(v156);

      return;
    }

    v165 = sub_29E755028();

    if (v165)
    {
      goto LABEL_37;
    }

    v166 = [v25 actionIdentifier];
    v167 = sub_29E7541D8();
    v169 = v168;

    if (v167 == sub_29E7541D8() && v169 == v170)
    {
    }

    else
    {
      v171 = sub_29E755028();

      if ((v171 & 1) == 0)
      {
        v187 = [v25 actionIdentifier];
        v188 = sub_29E7541D8();
        v190 = v189;

        if (v188 == sub_29E7541D8() && v190 == v191)
        {

          v173 = v197;
        }

        else
        {
          v192 = sub_29E755028();

          v173 = v197;
          if ((v192 & 1) == 0)
          {
            v172 = v100;
            v208 = &unk_29E76AEE8;
            goto LABEL_46;
          }
        }

        v172 = v100;
        v208 = &unk_29E76AEF0;
LABEL_46:
        v174 = sub_29E74F7F8();
        v175 = v193;
        (*(*(v174 - 8) + 56))(v193, 1, 1, v174);
        v176 = v200;
        sub_29E74EA88();
        sub_29E6E7B98(v175, &qword_2A1859CC8, MEMORY[0x29EDC6B38]);
        v177 = sub_29E7544F8();
        v178 = v201;
        (*(*(v177 - 8) + 56))(v201, 1, 1, v177);
        v179 = v204;
        v180 = v198;
        (*(v204 + 16))(v198, v176, v173);
        sub_29E7544C8();
        v181 = sub_29E7544B8();
        v182 = v173;
        v183 = (*(v179 + 80) + 32) & ~*(v179 + 80);
        v184 = swift_allocObject();
        v185 = MEMORY[0x29EDCA390];
        *(v184 + 16) = v181;
        *(v184 + 24) = v185;
        (*(v179 + 32))(v184 + v183, v180, v182);
        sub_29E6E4804(0, 0, v178, v208, v184);

        v186 = (*(v179 + 8))(v176, v182);
        v203(v186);

        return;
      }
    }

    v172 = v100;
    v208 = &unk_29E76AEF8;
    v173 = v197;
    goto LABEL_46;
  }

LABEL_30:
  v119 = [objc_allocWithZone(MEMORY[0x29EDC1568]) init];
  v120 = [v119 URLForNotificationSettings];
  if (v120)
  {
    v121 = v194;
    v122 = v120;
    sub_29E74EAD8();

    v123 = sub_29E7544F8();
    v124 = v201;
    (*(*(v123 - 8) + 56))(v201, 1, 1, v123);
    v125 = v204;
    v126 = v100;
    v127 = v200;
    v128 = v197;
    (*(v204 + 16))(v200, v121, v197);
    sub_29E7544C8();
    v129 = sub_29E7544B8();
    v130 = (*(v125 + 80) + 32) & ~*(v125 + 80);
    v131 = swift_allocObject();
    v132 = MEMORY[0x29EDCA390];
    *(v131 + 16) = v129;
    *(v131 + 24) = v132;
    v133 = v127;
    v100 = v126;
    (*(v125 + 32))(v131 + v130, v133, v128);
    sub_29E6E4804(0, 0, v124, &unk_29E76AF08, v131);

    v120 = (*(v125 + 8))(v121, v128);
  }

  v203(v120);
}

uint64_t sub_29E6E9180(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  swift_getObjectType();
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v10 = a1;
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27[1] = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136446467;
    v16 = sub_29E755178();
    v18 = sub_29E6B9C90(v16, v17, &v29);
    v28 = a2;
    v19 = v18;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2081;
    v20 = [v10 request];
    v21 = [v20 identifier];

    v22 = sub_29E7541D8();
    v24 = v23;

    v25 = sub_29E6B9C90(v22, v24, &v29);

    *(v14 + 14) = v25;
    a2 = v28;
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Received foreground notification presentation: %{private}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v15, -1, -1);
    MEMORY[0x29ED98410](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return a2(27);
}

void sub_29E6E93EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6E9440(uint64_t a1)
{
  v4 = *(sub_29E74EAF8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29E66A9A0;

  return sub_29E6E6F88(a1, v6, v7, v1 + v5);
}

uint64_t sub_29E6E9530(uint64_t a1)
{
  v4 = *(sub_29E74EAF8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29E605728;

  return sub_29E6E6F88(a1, v6, v7, v1 + v5);
}

uint64_t sub_29E6E9620()
{
  v1 = sub_29E74EAF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  sub_29E751758();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E6E96E4(uint64_t a1)
{
  sub_29E6E9740();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E6E9740()
{
  if (!qword_2A1859CE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1859CE8);
    }
  }
}

uint64_t sub_29E6E97A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29E66A9A0;

  return sub_29E6683F4(a1, v4);
}

uint64_t sub_29E6E9860(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29E605728;

  return sub_29E6683F4(a1, v4);
}

uint64_t sub_29E6E9918(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E6E9960(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  sub_29E65ECF0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29E6E99BC(uint64_t a1)
{
  v2 = v1;
  result = sub_29E754828();
  if (!result)
  {
    sub_29E754D78();
    v4 = [v1 description];
    v5 = sub_29E7541D8();
    v7 = v6;

    MEMORY[0x29ED96C20](v5, v7);

    MEMORY[0x29ED96C20](0xD00000000000002ELL, 0x800000029E75F310);
    v8 = [v2 parentViewController];
    sub_29E6E9B58(0);
    v9 = sub_29E7541F8();
    MEMORY[0x29ED96C20](v9);

    MEMORY[0x29ED96C20](0x746E657365727020, 0xED0000203A676E69);
    [v2 presentingViewController];
    v10 = sub_29E7541F8();
    MEMORY[0x29ED96C20](v10);

    result = sub_29E754E48();
    __break(1u);
  }

  return result;
}

void sub_29E6E9B58(uint64_t a1)
{
  if (!qword_2A1859CF0)
  {
    sub_29E6E9BB0();
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859CF0);
    }
  }
}

unint64_t sub_29E6E9BB0()
{
  result = qword_2A185A670;
  if (!qword_2A185A670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A185A670);
  }

  return result;
}

uint64_t type metadata accessor for WindDownSection(uint64_t a1)
{
  result = qword_2A1859D50;
  if (!qword_2A1859D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6E9CCC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v37 = a4;
  v6 = sub_29E74F848();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v32 = &v31 - v9;
  v10 = sub_29E750EE8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v31 - v15;
  v31 = a1;
  sub_29E7527B8();
  sub_29E6EB7A0(v38, SBYTE8(v38), a2, v16);
  v17 = *(v11 + 16);
  v17(v14, v16, v10);
  v18 = sub_29E6DAD84(0, 1, 1, MEMORY[0x29EDCA190]);
  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_29E6DAD84((v19 > 1), v20 + 1, 1, v18);
  }

  v39 = v10;
  v40 = sub_29E6EBE2C(&qword_2A1858328, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23F0]);
  v21 = sub_29E5FEBF4(&v38);
  v17(v21, v14, v10);
  v18[2] = v20 + 1;
  sub_29E5FAEE4(&v38, &v18[5 * v20 + 4]);
  v22 = *(v11 + 8);
  v22(v14, v10);
  sub_29E7527B8();
  if (v38 == 1)
  {
    if (*(sub_29E754548() + 16))
    {

      v23 = v32;
      sub_29E74F838();
      v33 = *(v35 + 16);
      v33(v34, v23, v36);
      v25 = v18[2];
      v24 = v18[3];
      v31 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v18 = sub_29E6DAD84((v24 > 1), v25 + 1, 1, v18);
      }

      v35 = *(v35 + 8);
      v26 = v23;
      v27 = v36;
      (v35)(v26, v36);
      v39 = v27;
      v40 = sub_29E6EBE2C(&qword_2A1859D68, MEMORY[0x29EDC6B48], MEMORY[0x29EDC6B40]);
      v28 = sub_29E5FEBF4(&v38);
      v29 = v34;
      v33(v28, v34, v27);
      v18[2] = v31;
      sub_29E5FAEE4(&v38, &v18[5 * v25 + 4]);
      (v35)(v29, v27);
    }

    else
    {
    }
  }

  sub_29E6CC108(v18);

  sub_29E750C98();
  return (v22)(v16, v10);
}

uint64_t sub_29E6EA130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v27 = v5;
    sub_29E752048();
    v12 = sub_29E752088();
    v13 = sub_29E7546C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *&v15 = COERCE_DOUBLE(swift_slowAlloc());
      v26 = v8;
      v16 = v15;
      v28 = *&v15;
      *v14 = 136446210;
      v17 = sub_29E755178();
      v19 = sub_29E6B9C90(v17, v18, &v28);
      v25 = v4;
      v20 = v9;
      v21 = v19;

      *(v14 + 4) = v21;
      v9 = v20;
      _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Responding to wind down duration change", v14, 0xCu);
      sub_29E5FECBC(v16);
      v22 = v16;
      v8 = v26;
      MEMORY[0x29ED98410](v22, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);

      (*(v27 + 8))(v7, v25);
    }

    else
    {

      (*(v27 + 8))(v7, v4);
    }

    sub_29E7527B8();
    if (v29)
    {
      if ((v9 & 1) == 0)
      {
LABEL_15:
        *(v11 + qword_2A1859D38) = 1;
        v28 = v8;
        v29 = v9;
        sub_29E7527C8();
LABEL_16:
      }
    }

    else if ((v9 & 1) != 0 || v28 != v8)
    {
      goto LABEL_15;
    }

    v23 = qword_2A1859D48;
    if (*(v11 + qword_2A1859D48) != 1)
    {
      *(v11 + qword_2A1859D48) = 1;
      sub_29E6EADC0();
      *(v11 + v23) = 0;
    }

    goto LABEL_16;
  }
}

uint64_t sub_29E6EA448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = sub_29E752098();
  v3 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E753D78();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v11 = Strong;
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v9 = sub_29E754908();
  (*(v7 + 104))(v9, *MEMORY[0x29EDCA278], v6);
  v12 = sub_29E753DA8();
  result = (*(v7 + 8))(v9, v6);
  if (v12)
  {
    sub_29E752048();
    v14 = sub_29E752088();
    v15 = sub_29E7546C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446210;
      v18 = sub_29E755178();
      v20 = sub_29E6B9C90(v18, v19, &v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s] Responding to tap on wind down goal", v16, 0xCu);
      sub_29E5FECBC(v17);
      MEMORY[0x29ED98410](v17, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v23);
    v21 = qword_2A1859D48;
    if (*(v11 + qword_2A1859D48) != 1)
    {
      *(v11 + qword_2A1859D48) = 1;
      sub_29E6EADC0();
      *(v11 + v21) = 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6EA7A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  v9[2] = a2;
  v9[3] = v5;
  v10 = v6;
  v11 = a3;
  sub_29E607C50(sub_29E6EC0B0, v9, "SleepHealthAppPlugin/WindDownSection.swift", 42, 2u, 79);
}

uint64_t sub_29E6EA8B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v36 = a3;
  v34 = *&a2;
  v35 = sub_29E752098();
  v6 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v9 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_29E752048();
    v12 = sub_29E752088();
    v13 = sub_29E7546C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32[1] = v9;
      v16 = v15;
      v39 = v15;
      *v14 = 136446466;
      v17 = sub_29E755178();
      v19 = sub_29E6B9C90(v17, v18, &v39);
      v33 = v4;
      v20 = v19;

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v37 = v34;
      v38 = v36 & 1;
      sub_29E602B04();
      v21 = sub_29E7541F8();
      v23 = sub_29E6B9C90(v21, v22, &v39);
      v5 = v33;

      *(v14 + 14) = v23;
      _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Responding to new wind down goal: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v16, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v35);
    v24 = qword_2A1859D38;
    if (*(v11 + qword_2A1859D38))
    {
      goto LABEL_15;
    }

    if (*(v11 + qword_2A1859D40 + 8))
    {
      if (v36)
      {
LABEL_15:
        *(v11 + v24) = 0;
        v30 = qword_2A1859D48;
        if (*(v11 + qword_2A1859D48) != 1)
        {
          *(v11 + qword_2A1859D48) = 1;
          sub_29E6EADC0();
          *(v11 + v30) = 0;
        }
      }
    }

    else if ((v36 & 1) == 0 && *(v11 + qword_2A1859D40) == v34)
    {
      goto LABEL_15;
    }

    v25 = v11 + qword_2A1859CF8;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = *(v25 + 8);
      v26 = v34;
      v27 = v36 & 1;
      swift_getObjectType();
      v33 = v5;
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v26;
      *(v29 + 32) = v27;

      sub_29E74F768();

      sub_29E751758();
    }

    goto LABEL_15;
  }
}

uint64_t sub_29E6EACDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    *(result + qword_2A1859D38) = 1;
    sub_29E7527C8();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v7 = result + qword_2A1859D40;
    *v7 = a3;
    *(v7 + 8) = a4 & 1;
  }
}

uint64_t sub_29E6EADC0()
{
  v1 = sub_29E752098();
  v31 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62BD1C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E750CA8();
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7527B8();
  v13 = v34[0];
  if (v34[0])
  {
    sub_29E6E9CCC(*(v0 + qword_2A1859D28), *(v0 + qword_2A1859D20), v34[0], v12);
    sub_29E750D48();
    v34[0] = sub_29E750C68();
    v34[1] = v14;
    sub_29E752268();
    v16 = v15;

    (*(v6 + 8))(v8, v5);
    if (v16)
    {
      sub_29E6EBE74(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
      v17 = v33;
      v18 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_29E762F30;
      v20 = v32;
      (*(v17 + 16))(v19 + v18, v12, v32);
      sub_29E750D18();
    }

    else
    {
      sub_29E750C88();
      sub_29E750D28();

      v20 = v32;
      v17 = v33;
    }

    return (*(v17 + 8))(v12, v20);
  }

  else
  {
    v32 = v1;
    v21 = v31;
    sub_29E752068();
    v22 = sub_29E752088();
    v23 = sub_29E7546A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v24 = 136446210;
      v26 = sub_29E755178();
      v28 = sub_29E6B9C90(v26, v27, v34);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29E5ED000, v22, v23, "[%{public}s] cannot update wind down section for nil schedule", v24, 0xCu);
      sub_29E5FECBC(v25);
      MEMORY[0x29ED98410](v25, -1, -1);
      MEMORY[0x29ED98410](v24, -1, -1);
    }

    (*(v21 + 8))(v3, v32);
    sub_29E6EBE74(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    *(swift_allocObject() + 16) = xmmword_29E762F30;
    sub_29E750C78();
    sub_29E750D18();
  }
}

uint64_t sub_29E6EB2E0()
{
  sub_29E5F0140(v0 + qword_2A1859CF8);
}

uint64_t sub_29E6EB380()
{
  v0 = sub_29E750D58();
  sub_29E5F0140(v0 + qword_2A1859CF8);

  return v0;
}

uint64_t sub_29E6EB428()
{
  sub_29E6EB380();

  return swift_deallocClassInstance();
}

uint64_t sub_29E6EB460(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E28();
  v6 = sub_29E750E68();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_29E6EB590@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E752258();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E7521F8();
  v3 = sub_29E750458();
  swift_allocObject();
  v4 = sub_29E750438();
  a1[3] = v3;
  result = sub_29E6EBE2C(&qword_2A1856FE0, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_29E6EB71C()
{
  sub_29E751A58();
  sub_29E7547D8();
  return sub_29E7547C8();
}

id sub_29E6EB7A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v30 = a1;
  v41 = a4;
  v5 = sub_29E751908();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v38 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74F698();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6EBE74(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v32 = &v30 - v10;
  v11 = sub_29E750DC8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E752258();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752248();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E752228();
  if (a2)
  {
    sub_29E74E9D8();
  }

  else
  {
    sub_29E609B5C(0, &qword_2A1859D70, 0x29EDB9F70);
    sub_29E754A48();
  }

  sub_29E752198();
  result = HKHealthTintColor();
  if (result)
  {
    v20 = sub_29E7521D8();
    sub_29E7521B8();
    v20(v42, 0);
    v21 = v15;
    v42[3] = v15;
    v42[4] = MEMORY[0x29EDC7800];
    v31 = v15;
    v22 = sub_29E5FEBF4(v42);
    v23 = v16;
    (*(v16 + 16))(v22, v18, v21);
    v24 = swift_allocObject();
    v25 = v34;
    *(v24 + 16) = v37;
    *(v24 + 24) = v25;
    *v14 = 1;
    (*(v12 + 104))(v14, *MEMORY[0x29EDC22C0], v11);
    v26 = sub_29E752178();
    (*(*(v26 - 8) + 56))(v32, 1, 1, v26);
    v28 = v35;
    v27 = v36;
    v29 = v33;
    (*(v35 + 104))(v33, *MEMORY[0x29EDC6AC8], v36);

    sub_29E754298();
    (*(v28 + 8))(v29, v27);
    (*(v39 + 104))(v38, *MEMORY[0x29EDC2A38], v40);
    sub_29E750ED8();
    return (*(v23 + 8))(v18, v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E6EBD7C(uint64_t a1, uint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6EBEE0();
}

uint64_t sub_29E6EBE2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6EBE74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E6EBEE0()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v4 = sub_29E752088();
  v5 = sub_29E7546C8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_29E755178();
    v10 = sub_29E6B9C90(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29E5ED000, v4, v5, "[%{public}s] Edit wind down tapped", v6, 0xCu);
    sub_29E5FECBC(v7);
    MEMORY[0x29ED98410](v7, -1, -1);
    MEMORY[0x29ED98410](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_29E7527B8();
  v13 = (v14 & 1) == 0;
  return sub_29E752798();
}

uint64_t sub_29E6EC0F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_29E7504A8();
  sub_29E601938(v3, v3[3]);
  sub_29E750718();
  CGRectGetHeight(v6);
  sub_29E601938(v3, v3[3]);
  sub_29E750728();
  sub_29E750468();
  sub_29E750468();
  CGRectGetWidth(v7);
  sub_29E750468();
  CGRectGetHeight(v8);
  sub_29E750478();
  sub_29E750498();
  sub_29E601938(v3 + 5, v3[8]);
  sub_29E750728();
}

double sub_29E6EC22C()
{
  sub_29E7504B8();
  v2 = v1;
  sub_29E7504B8();
  CGRectGetWidth(v5);
  sub_29E601938((v0 + 40), *(v0 + 64));
  sub_29E751BE8();
  if (v3)
  {
    sub_29E7504B8();
    CGRectGetHeight(v6);
  }

  return v2;
}

uint64_t sub_29E6EC2DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29E6EC3E0();
  *v3 = v1;
  v3[1] = sub_29E60350C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

unint64_t sub_29E6EC38C()
{
  result = qword_2A1859D78;
  if (!qword_2A1859D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859D78);
  }

  return result;
}

unint64_t sub_29E6EC3E0()
{
  result = qword_2A1859D80;
  if (!qword_2A1859D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859D80);
  }

  return result;
}

void sub_29E6EC448()
{
  v0 = sub_29E74FA88();
  v1 = *(v0 - 8);
  v106 = v0;
  v107 = v1;
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6EE5FC(0, &qword_2A18572F8, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v4 = sub_29E750108();
  v5 = *(*(v4 - 8) + 72);
  v6 = *(v4 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E76B150;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A7FA18;
  v10 = sub_29E754198();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

  if (v11)
  {
    v87 = v8;
    v12 = v8 + v7;
    *v12 = v11;
    *(v12 + 8) = 0;
    v13 = *(v6 + 104);
    (v13)(v12, *MEMORY[0x29EDC1608], v4);
    v14 = (v12 + v5);
    v15 = v12;
    *v14 = sub_29E74E9D8();
    v14[1] = v16;
    (v13)(v12 + v5, *MEMORY[0x29EDC1610], v4);
    v17 = v12 + 2 * v5;
    v101 = "sleep-stages-art";
    *v17 = sub_29E74E9D8();
    *(v17 + 8) = v18;
    *(v17 + 16) = 0;
    v105 = *MEMORY[0x29EDC1630];
    v103 = v13;
    v91 = v6 + 104;
    v13(v17);
    v19 = v12 + 3 * v5;
    *v19 = sub_29E6EDF64;
    *(v19 + 8) = 0;
    *(v19 + 16) = 1;
    (v13)();
    v20 = 4 * v5;
    v102 = v9;
    v21 = (v12 + 4 * v5);
    v22 = sub_29E74E9D8();
    v104 = v5;
    v97 = v22;
    v86 = v23;
    v89 = *MEMORY[0x29EDC6BC8];
    v24 = v89;
    v95 = sub_29E74FA68();
    v25 = *(v95 - 8);
    v100 = *(v25 + 104);
    v92 = v25 + 104;
    v100(v3, v24, v95);
    v96 = *MEMORY[0x29EDC6BC0];
    v27 = v106;
    v26 = v107;
    v28 = *(v107 + 104);
    v98 = v107 + 104;
    v99 = v28;
    v28(v3);
    v29 = sub_29E74FA78();
    v94 = *(v26 + 8);
    v107 = v26 + 8;
    v94(v3, v27);
    v93 = objc_opt_self();
    v30 = v4;
    v31 = [v93 hk_sleepAwakeColor];
    v32 = [v29 imageWithTintColor_];

    v33 = v86;
    *v21 = v97;
    v21[1] = v33;
    v21[2] = v32;
    LODWORD(v97) = *MEMORY[0x29EDC15D0];
    v90 = v30;
    v34 = v103;
    v103(v21);
    v35 = v104;
    v88 = v15;
    v36 = v15 + v20 + v104;
    *v36 = sub_29E74E9D8();
    *(v36 + 8) = v37;
    *(v36 + 16) = 0;
    v34(v36, v105, v30);
    v38 = (v15 + 6 * v35);
    v39 = sub_29E74E9D8();
    v41 = v40;
    v42 = v89;
    v100(v3, v89, v95);
    v43 = v106;
    v99(v3, v96, v106);
    v44 = sub_29E74FA78();
    v94(v3, v43);
    v45 = [v93 hk_sleepAsleepREMColor];
    v46 = [v44 imageWithTintColor_];

    *v38 = v39;
    v38[1] = v41;
    v38[2] = v46;
    v47 = v90;
    v48 = v103;
    (v103)(v38, v97, v90);
    v49 = 8 * v104;
    v50 = v88;
    v51 = v88 + 7 * v104;
    *v51 = sub_29E74E9D8();
    *(v51 + 8) = v52;
    *(v51 + 16) = 0;
    v53 = v105;
    v48(v51, v105, v47);
    v54 = (v50 + v49);
    v86 = sub_29E74E9D8();
    v56 = v55;
    v100(v3, v42, v95);
    v57 = v106;
    v99(v3, v96, v106);
    v58 = sub_29E74FA78();
    v94(v3, v57);
    v59 = [v93 hk_sleepAsleepCoreColor];
    v60 = [v58 imageWithTintColor_];

    *v54 = v86;
    v54[1] = v56;
    v54[2] = v60;
    v61 = v90;
    v62 = v103;
    (v103)(v54, v97, v90);
    v63 = v104;
    v64 = v88;
    v65 = v88 + v49 + v104;
    *v65 = sub_29E74E9D8();
    *(v65 + 8) = v66;
    *(v65 + 16) = 0;
    v62(v65, v53, v61);
    v67 = (v64 + 10 * v63);
    v68 = sub_29E74E9D8();
    v70 = v69;
    v100(v3, v89, v95);
    v71 = v106;
    v99(v3, v96, v106);
    v72 = sub_29E74FA78();
    v94(v3, v71);
    v73 = [v93 hk_sleepAsleepDeepColor];
    v74 = [v72 imageWithTintColor_];

    *v67 = v68;
    v67[1] = v70;
    v67[2] = v74;
    v75 = v97;
    v76 = v90;
    v77 = v103;
    (v103)(v67, v97, v90);
    v78 = v104;
    v79 = v64 + 11 * v104;
    *v79 = sub_29E74E9D8();
    *(v79 + 8) = v80;
    *(v79 + 16) = 0;
    v77(v79, v105, v76);
    v81 = (v64 + 12 * v78);
    *v81 = sub_29E74E9D8();
    v81[1] = v82;
    v81[2] = 0;
    v77(v81, v75, v76);
    v83 = v64 + 13 * v78;
    *v83 = sub_29E74E9D8();
    *(v83 + 8) = v84;
    *(v83 + 16) = 0;
    v77(v83, v105, v76);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E6ED00C()
{
  sub_29E6EE11C(0, &qword_2A1859D88, sub_29E6EDF68);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  sub_29E6ED0A8(&v5 - v1);
  sub_29E6EE49C(0);
  v3 = objc_allocWithZone(v2);
  return sub_29E752BB8();
}

double sub_29E6ED0A8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F458();
  MEMORY[0x2A1C7C4A8](v2);
  v3 = sub_29E74F2F8();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6EE000(0);
  v7 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6ED544(v5);
  v10 = MEMORY[0x29EDC6A40];
  sub_29E6EE5FC(0, &qword_2A1859E00, MEMORY[0x29EDC6A40], MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E762F40;
  sub_29E74F448();
  sub_29E74F438();
  v30 = v11;
  sub_29E6EE454(&qword_2A1859E08, MEMORY[0x29EDC6A40], MEMORY[0x29EDC6A48]);
  sub_29E6EE5FC(0, &qword_2A1859E10, v10, MEMORY[0x29EDC9A40]);
  sub_29E6EE660();
  sub_29E754C58();
  v12 = objc_allocWithZone(sub_29E74F788());
  sub_29E74F778();
  sub_29E74F428();
  v13 = sub_29E7533A8();
  sub_29E6EE11C(0, &qword_2A1859DA8, MEMORY[0x29EDC6A50]);
  v15 = &v9[*(v14 + 36)];
  *v15 = v13;
  *(v15 + 8) = xmmword_29E76B160;
  *(v15 + 24) = xmmword_29E76B160;
  v15[40] = 0;
  sub_29E6EE068(0);
  v17 = &v9[*(v16 + 36)];
  sub_29E6EE5FC(0, &qword_2A1859DB0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC938]);
  v19 = *(v18 + 28);
  v20 = *MEMORY[0x29EDBC360];
  v21 = sub_29E752A38();
  (*(*(v21 - 8) + 104))(v17 + v19, v20, v21);
  *v17 = swift_getKeyPath();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v22 = qword_2A1A7FA18;
  v23 = sub_29E753988();
  v24 = sub_29E7533A8();
  v25 = &v9[*(v7 + 36)];
  *v25 = v23;
  v25[8] = v24;
  v30 = sub_29E753938();
  sub_29E6EE1D0();
  sub_29E753658();

  sub_29E6EE7B0(v9);
  LOBYTE(v23) = sub_29E7533A8();
  sub_29E6EE11C(0, &qword_2A1859D88, sub_29E6EDF68);
  v27 = a1 + *(v26 + 36);
  *v27 = v23;
  result = 0.0;
  *(v27 + 8) = xmmword_29E76B170;
  *(v27 + 24) = xmmword_29E76B170;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_29E6ED544@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_29E74F318();
  v71 = *(v1 - 8);
  v72 = v1;
  v2 = MEMORY[0x2A1C7C4A8](v1);
  v73 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v70 = &v53 - v4;
  v5 = sub_29E74E838();
  v68 = *(v5 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v5);
  v67 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v63 = &v53 - v8;
  v69 = sub_29E74ED28();
  v9 = *(v69 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v69);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v53 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v53 - v16;
  sub_29E74EC58();
  v74 = 2;
  sub_29E754558();
  v75 = v18;
  v76 = 3;
  sub_29E754558();
  v77 = v19;
  v78 = 0;
  sub_29E754558();
  v79 = v20;
  v80 = 2;
  sub_29E754558();
  v81 = v21;
  v82 = 3;
  sub_29E754558();
  v83 = v22;
  v84 = 2;
  sub_29E754558();
  v85 = v23;
  v86 = 1;
  sub_29E754558();
  v87 = v24;
  v88 = 2;
  sub_29E754558();
  v89 = v25;
  v90 = 3;
  sub_29E754558();
  v91 = v26;
  v92 = 2;
  sub_29E754558();
  v93 = v27;
  v94 = 1;
  sub_29E754558();
  v95 = v28;
  v96 = 2;
  sub_29E754558();
  v97 = v29;
  v98 = 1;
  sub_29E754558();
  v99 = v30;
  v100 = 2;
  sub_29E754558();
  v101 = v31;
  v102 = 1;
  v32 = v69;
  sub_29E754558();
  v103 = v33;
  v34 = *(v9 + 16);
  v9 += 16;
  v54 = v17;
  v62 = v34;
  v34(v15, v17, v32);
  v35 = 0;
  v36 = v72;
  v60 = (v71 + 16);
  v61 = (v68 + 2);
  v58 = v71 + 8;
  v59 = v71 + 32;
  v37 = v68 + 1;
  v68 = (v9 - 8);
  v66 = v9;
  v56 = (v9 + 16);
  v57 = v37;
  v38 = v15;
  v39 = MEMORY[0x29EDCA190];
  v40 = v70;
  v64 = v5;
  v65 = v38;
  do
  {
    v62(v12, v38, v32);
    v41 = v63;
    sub_29E74E818();
    (*v61)(v67, v41, v5);
    sub_29E74F308();
    (*v60)(v73, v40, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_29E6DB6D8(0, v39[2] + 1, 1, v39);
    }

    v45 = v43[2];
    v44 = v43[3];
    v46 = v41;
    if (v45 >= v44 >> 1)
    {
      v43 = sub_29E6DB6D8((v44 > 1), v45 + 1, 1, v43);
    }

    v38 = v65;
    v43[2] = v45 + 1;
    v48 = v71;
    v47 = v72;
    v49 = v43 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v45;
    v39 = v43;
    (*(v71 + 32))(v49, v73, v72);
    v50 = v46;
    sub_29E74E7F8();
    v40 = v70;
    v36 = v47;
    (*(v48 + 8))();
    v5 = v64;
    (*v57)(v50, v64);
    v32 = v69;
    v51 = *v68;
    (*v68)(v38, v69);
    (*v56)(v38, v12, v32);
    v35 += 16;
  }

  while (v35 != 240);
  sub_29E74F2E8();
  v51(v38, v32);
  return (v51)(v54, v32);
}

uint64_t sub_29E6EDB3C()
{
  v0 = sub_29E74F7F8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC6B18], v0);
  v4 = sub_29E74F7E8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29E6EDC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E6EDD20()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

void sub_29E6EDDC0()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

unint64_t *sub_29E6EDE84()
{
  v0 = sub_29E750528();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E693FB8(v3);
  v4 = sub_29E750518();
  (*(v1 + 8))(v3, v0);
  v5 = sub_29E6D5A34(v4);

  return v5;
}

void sub_29E6EDF68(uint64_t a1)
{
  if (!qword_2A1859D90)
  {
    sub_29E6EE000(255);
    sub_29E6EE1D0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1859D90);
    }
  }
}

void sub_29E6EE000(uint64_t a1)
{
  if (!qword_2A1859D98)
  {
    sub_29E6EE068(255);
    sub_29E6EE178();
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859D98);
    }
  }
}

void sub_29E6EE068(uint64_t a1)
{
  if (!qword_2A1859DA0)
  {
    sub_29E6EE11C(255, &qword_2A1859DA8, MEMORY[0x29EDC6A50]);
    sub_29E6EE5FC(255, &qword_2A1859DB0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC938]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859DA0);
    }
  }
}

void sub_29E6EE11C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E6EE178()
{
  if (!qword_2A1859DB8)
  {
    v0 = sub_29E753278();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859DB8);
    }
  }
}

unint64_t sub_29E6EE1D0()
{
  result = qword_2A1859DC0;
  if (!qword_2A1859DC0)
  {
    sub_29E6EE000(255);
    sub_29E6EE280();
    sub_29E6EE454(&qword_2A1859DE8, sub_29E6EE178, MEMORY[0x29EDBC8E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859DC0);
  }

  return result;
}

unint64_t sub_29E6EE280()
{
  result = qword_2A1859DC8;
  if (!qword_2A1859DC8)
  {
    sub_29E6EE068(255);
    sub_29E6EE300();
    sub_29E6EE3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859DC8);
  }

  return result;
}

unint64_t sub_29E6EE300()
{
  result = qword_2A1859DD0;
  if (!qword_2A1859DD0)
  {
    sub_29E6EE11C(255, &qword_2A1859DA8, MEMORY[0x29EDC6A50]);
    sub_29E6EE454(&qword_2A1859DD8, MEMORY[0x29EDC6A50], MEMORY[0x29EDC6A38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859DD0);
  }

  return result;
}

unint64_t sub_29E6EE3CC()
{
  result = qword_2A1859DE0;
  if (!qword_2A1859DE0)
  {
    sub_29E6EE5FC(255, &qword_2A1859DB0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859DE0);
  }

  return result;
}

uint64_t sub_29E6EE454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6EE49C(uint64_t a1)
{
  if (!qword_2A1859DF0)
  {
    sub_29E6EE11C(255, &qword_2A1859D88, sub_29E6EDF68);
    sub_29E6EE51C();
    v1 = sub_29E752BC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859DF0);
    }
  }
}

unint64_t sub_29E6EE51C()
{
  result = qword_2A1859DF8;
  if (!qword_2A1859DF8)
  {
    sub_29E6EE11C(255, &qword_2A1859D88, sub_29E6EDF68);
    sub_29E6EE000(255);
    sub_29E6EE1D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859DF8);
  }

  return result;
}

void sub_29E6EE5FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E6EE660()
{
  result = qword_2A1859E18;
  if (!qword_2A1859E18)
  {
    sub_29E6EE5FC(255, &qword_2A1859E10, MEMORY[0x29EDC6A40], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859E18);
  }

  return result;
}

uint64_t sub_29E6EE6E8(uint64_t a1)
{
  v2 = sub_29E752A38();
  MEMORY[0x2A1C7C4A8](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752D98();
}

uint64_t sub_29E6EE7B0(uint64_t a1)
{
  sub_29E6EE000(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E6EE80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v52 = a3;
  v53 = sub_29E74F6D8();
  v47 = *(v53 - 8);
  MEMORY[0x2A1C7C4A8](v53);
  v54 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74F4A8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v43 - v10;
  v12 = sub_29E752098();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v15 = *(v6 + 16);
  v15(v11, a1, v5);
  v16 = sub_29E752088();
  v46 = sub_29E7546C8();
  v17 = v16;
  v18 = os_log_type_enabled(v16, v46);
  v50 = v15;
  v51 = v6 + 16;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v60[0] = v44;
    *v19 = 136446466;
    *(v19 + 4) = sub_29E6B9C90(0xD000000000000017, 0x800000029E75F6E0, v60);
    *(v19 + 12) = 2082;
    v15(v9, v11, v5);
    v20 = sub_29E7541F8();
    v45 = a1;
    v21 = v20;
    v23 = v22;
    (*(v6 + 8))(v11, v5);
    v24 = v21;
    a1 = v45;
    v25 = sub_29E6B9C90(v24, v23, v60);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_29E5ED000, v17, v46, "[%{public}s] Presenting sleep onboarding with context %{public}s", v19, 0x16u);
    v26 = v44;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v26, -1, -1);
    MEMORY[0x29ED98410](v19, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v11, v5);
  }

  (*(v48 + 8))(v14, v49);
  sub_29E698700(&v58);
  if (v59)
  {
    sub_29E5FAEE4(&v58, v60);
  }

  else
  {
    v27 = *(v56 + qword_2A1869340);
    v28 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
    v29 = v27;
    v30 = sub_29E754198();
    v31 = [v28 initWithIdentifier:v30 healthStore:v29 options:0];

    v32 = sub_29E74F4C8();
    v33 = v31;
    v34 = sub_29E74F4B8();
    v60[3] = v32;
    v60[4] = MEMORY[0x29EDC6A70];

    v60[0] = v34;
    if (v59)
    {
      sub_29E6F5FF8(&v58, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    }
  }

  v35 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  sub_29E602E20(v60, &v58);
  v50(v9, a1, v5);
  v36 = MEMORY[0x29EDC6AD8];
  sub_29E6F5D58(0, &qword_2A1859E30, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC9E90]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_29E762F30;
  v38 = v35;
  sub_29E74F6C8();
  v57 = v37;
  sub_29E6F5F98(&qword_2A1859E38, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC6AE0]);
  sub_29E6F5D58(0, &qword_2A1859E40, v36, MEMORY[0x29EDC9A40]);
  sub_29E6F5EBC(&qword_2A1859E48, &qword_2A1859E40, v36);
  sub_29E754C58();
  sub_29E74F6E8();
  swift_allocObject();
  sub_29E74F6B8();
  v39 = swift_allocObject();
  v40 = v55;
  v41 = v52;
  *(v39 + 16) = v55;
  *(v39 + 24) = v41;
  sub_29E5F51BC(v40, v41);
  sub_29E74F6A8();

  return sub_29E5FECBC(v60);
}

uint64_t sub_29E6EEEBC(unint64_t a1)
{
  v6 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
LABEL_15:
    sub_29E754C98();
    sub_29E754E08();
    v2 = sub_29E754C98();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_29E754E08();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x29ED976A0](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            sub_29E751758();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_29E754DE8();
        sub_29E754E18();
        sub_29E754E28();
        sub_29E754DF8();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t sub_29E6EF030(unint64_t a1)
{
  v6 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
LABEL_15:
    sub_29E754C98();
    sub_29E754E08();
    v2 = sub_29E754C98();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_29E754E08();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x29ED976A0](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            sub_29E751758();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        sub_29E753EE8();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_29E754DE8();
        sub_29E754E18();
        sub_29E754E28();
        sub_29E754DF8();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t sub_29E6EF1A0(uint64_t a1)
{
  v7 = MEMORY[0x29EDCA190];
  v2 = *(a1 + 16);
  sub_29E754E08();
  if (!v2)
  {
    return v7;
  }

  v3 = a1 + 32;
  v4 = MEMORY[0x29EDC18F8];
  while (1)
  {
    sub_29E602E20(v3, v6);
    sub_29E609CF8(0, &qword_2A1856FF0, v4);
    sub_29E750088();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_29E754DE8();
    sub_29E754E18();
    sub_29E754E28();
    sub_29E754DF8();
    v3 += 40;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_29E6EF2B0(unint64_t a1)
{
  v8 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_29E754E08();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x29ED976A0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_29E754DE8();
      sub_29E754E18();
      sub_29E754E28();
      sub_29E754DF8();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_29E754C98();
    sub_29E754E08();
  }

  return v8;
}

uint64_t sub_29E6EF418(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_29E752098();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v12 = a1;
  v13 = sub_29E752088();
  v14 = sub_29E7546C8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44 = a2;
    v16 = v15;
    v42 = swift_slowAlloc();
    v45 = v42;
    *v16 = 136446466;
    v17 = sub_29E755178();
    v19 = sub_29E6B9C90(v17, v18, &v45);
    v43 = v8;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = v12;
    v22 = [v21 description];
    v23 = sub_29E7541D8();
    v41 = v13;
    v24 = v12;
    v25 = v4;
    v26 = v23;
    HIDWORD(v40) = v14;
    v27 = v9;
    v28 = a3;
    v30 = v29;

    v31 = v26;
    v4 = v25;
    v12 = v24;
    v32 = sub_29E6B9C90(v31, v30, &v45);
    a3 = v28;

    *(v16 + 14) = v32;
    v33 = v41;
    _os_log_impl(&dword_29E5ED000, v41, BYTE4(v40), "[%{public}s] Received request to open NSUserActivity: %{public}s", v16, 0x16u);
    v34 = v42;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v34, -1, -1);
    v35 = v16;
    a2 = v44;
    MEMORY[0x29ED98410](v35, -1, -1);

    (*(v27 + 8))(v11, v43);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v36 = a3[3];
  v37 = a3[4];
  v38 = sub_29E601938(a3, v36);
  return sub_29E6F4664(v12, a2, v38, v4, v36, v37);
}

void sub_29E6EF6DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v76 = v3;
  ObjectType = swift_getObjectType();
  v7 = sub_29E7513C8();
  v74 = *(v7 - 1);
  v75 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74ED88();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E752098();
  v72 = *(v13 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v71 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v67 - v16;
  sub_29E752048();
  v18 = *(v10 + 16);
  v70 = a1;
  v18(v12, a1, v9);
  v19 = sub_29E752088();
  v20 = sub_29E7546C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v69 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v67 = v13;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136446466;
    v25 = sub_29E755178();
    v27 = sub_29E6B9C90(v25, v26, aBlock);
    v68 = ObjectType;
    v28 = v27;

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = sub_29E74ED48();
    v31 = v30;
    (*(v10 + 8))(v12, v9);
    v32 = sub_29E6B9C90(v29, v31, aBlock);
    ObjectType = v68;

    *(v22 + 14) = v32;
    _os_log_impl(&dword_29E5ED000, v19, v20, "[%{public}s] Attempting to open breathing disturbances room with sample with UUID of %s", v22, 0x16u);
    swift_arrayDestroy();
    v33 = v24;
    v13 = v67;
    MEMORY[0x29ED98410](v33, -1, -1);
    MEMORY[0x29ED98410](v22, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v34 = *(v72 + 8);
  v34(v17, v13);
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v35 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v36 = v73;
  sub_29E750FA8();
  v37 = sub_29E6A1530(v35, v36);

  (*(v74 + 8))(v36, v75);
  if (v37)
  {
    sub_29E751AB8();
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      v39 = v38;
      v40 = objc_opt_self();
      v41 = sub_29E74ED58();
      v42 = [v40 predicateForObjectWithUUID_];
      v76 = v42;

      sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
      v43 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
      v44 = [objc_allocWithZone(MEMORY[0x29EDBAD40]) initWithSampleType:v43 predicate:v42];
      v45 = ObjectType;
      v46 = v44;

      v47 = sub_29E750FC8();
      v48 = sub_29E750FD8();
      sub_29E6163F8();
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_29E764160;
      *(v49 + 32) = v46;
      v50 = swift_allocObject();
      v50[2] = v39;
      v50[3] = v47;
      v50[4] = v48;
      v50[5] = v45;
      v51 = objc_allocWithZone(MEMORY[0x29EDBAD70]);
      sub_29E609B5C(0, &qword_2A1858468, 0x29EDBAD40);
      v75 = v46;
      v52 = v37;
      v53 = v47;
      v54 = v48;
      v55 = sub_29E7543D8();

      aBlock[4] = sub_29E6F5FE0;
      aBlock[5] = v50;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29E6F3DE8;
      aBlock[3] = &unk_2A2502730;
      v56 = _Block_copy(aBlock);
      v57 = [v51 initWithQueryDescriptors:v55 limit:1 resultsHandler:v56];

      _Block_release(v56);

      v58 = sub_29E750FC8();
      [v58 executeQuery_];

      return;
    }
  }

  v59 = v71;
  sub_29E752048();
  v60 = sub_29E752088();
  v61 = sub_29E7546A8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136446210;
    v64 = sub_29E755178();
    v66 = sub_29E6B9C90(v64, v65, aBlock);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_29E5ED000, v60, v61, "[%{public}s] Could not get view controller, not opening breathing disturbances room.", v62, 0xCu);
    sub_29E5FECBC(v63);
    MEMORY[0x29ED98410](v63, -1, -1);
    MEMORY[0x29ED98410](v62, -1, -1);
  }

  v34(v59, v13);
}

void *sub_29E6EFE48(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  v8 = sub_29E601938(a3, v6);

  return sub_29E6F3EA0(a1, a2, v8, v3, v6, v7);
}

void sub_29E6EFEB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29E7513C8();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E752098();
  v42 = *(v4 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v36 - v8;
  sub_29E752048();
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v36 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v37 = v7;
    v15 = v14;
    v43 = v14;
    *v13 = 136446210;
    v16 = sub_29E755178();
    v18 = v4;
    v19 = sub_29E6B9C90(v16, v17, &v43);

    *(v13 + 4) = v19;
    v4 = v18;
    v20 = v42;
    _os_log_impl(&dword_29E5ED000, v10, v11, "[%{public}s] Attempting to open breathing disturbances room", v13, 0xCu);
    sub_29E5FECBC(v15);
    v21 = v15;
    v7 = v37;
    MEMORY[0x29ED98410](v21, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);

    v22 = *(v20 + 8);
    v22(v9, v18);
  }

  else
  {

    v22 = *(v42 + 8);
    v22(v9, v4);
  }

  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v23 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v24 = v39;
  sub_29E750FA8();
  v25 = sub_29E6A1530(v23, v24);

  (*(v40 + 8))(v24, v41);
  if (v25)
  {
    sub_29E751AB8();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = v26;
      v28 = sub_29E750FD8();
      [v28 showViewController:v27 sender:0];

      return;
    }
  }

  sub_29E752048();
  v29 = sub_29E752088();
  v30 = sub_29E7546A8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136446210;
    v33 = sub_29E755178();
    v35 = sub_29E6B9C90(v33, v34, &v43);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_29E5ED000, v29, v30, "[%{public}s] Could not get view controller, not opening breathing disturbances room.", v31, 0xCu);
    sub_29E5FECBC(v32);
    MEMORY[0x29ED98410](v32, -1, -1);
    MEMORY[0x29ED98410](v31, -1, -1);
  }

  v22(v7, v4);
}

void sub_29E6F030C(uint64_t a1)
{
  v40 = a1;
  ObjectType = swift_getObjectType();
  v39 = sub_29E7513C8();
  v1 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v35 - v9;
  sub_29E752048();
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = v8;
    v14 = v13;
    v15 = swift_slowAlloc();
    v37 = v5;
    v35 = v4;
    v16 = v15;
    v41 = v15;
    *v14 = 136446210;
    v17 = sub_29E755178();
    v19 = sub_29E6B9C90(v17, v18, &v41);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Attempting to open sleep apnea notifications room", v14, 0xCu);
    sub_29E5FECBC(v16);
    v20 = v16;
    v4 = v35;
    v5 = v37;
    MEMORY[0x29ED98410](v20, -1, -1);
    v21 = v14;
    v8 = v36;
    MEMORY[0x29ED98410](v21, -1, -1);
  }

  v22 = *(v5 + 8);
  v22(v10, v4);
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  v23 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  sub_29E750FA8();
  v24 = sub_29E6A1530(v23, v3);

  (*(v1 + 8))(v3, v39);
  if (v24)
  {
    v25 = sub_29E750FD8();
    [v25 showViewController:v24 sender:0];
  }

  else
  {
    sub_29E752048();
    v26 = sub_29E752088();
    v27 = sub_29E7546A8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v8;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136446210;
      v31 = sub_29E755178();
      v33 = sub_29E6B9C90(v31, v32, &v41);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_29E5ED000, v26, v27, "[%{public}s] Could not get view controller, not opening sleep apnea notifications room.", v29, 0xCu);
      sub_29E5FECBC(v30);
      MEMORY[0x29ED98410](v30, -1, -1);
      MEMORY[0x29ED98410](v29, -1, -1);

      v34 = v28;
    }

    else
    {

      v34 = v8;
    }

    v22(v34, v4);
  }
}

void sub_29E6F0720(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_29E752098();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v64 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v64 - v11;
  sub_29E6F5D58(0, &qword_2A1859CC8, MEMORY[0x29EDC6B38], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v64 - v14;
  v16 = sub_29E74F7F8();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E754718();
  v20 = v16;
  v21 = v17;
  if ((*(v17 + 48))(v15, 1, v20) == 1)
  {
    sub_29E6F5F28(v15, &qword_2A1859CC8, MEMORY[0x29EDC6B38]);
    sub_29E752048();
    v22 = sub_29E752088();
    v23 = sub_29E7546A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v72[0] = v25;
      *v24 = 136446210;
      v26 = sub_29E755178();
      v27 = v69;
      v29 = sub_29E6B9C90(v26, v28, v72);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_29E5ED000, v22, v23, "[%{public}s] Unable to open article. Couldn't parse article URL and identifier", v24, 0xCu);
      sub_29E5FECBC(v25);
      MEMORY[0x29ED98410](v25, -1, -1);
      MEMORY[0x29ED98410](v24, -1, -1);

      (*(v27 + 8))(v7, v70);
    }

    else
    {

      (*(v69 + 8))(v7, v70);
    }
  }

  else
  {
    v66 = ObjectType;
    v67 = v10;
    v30 = *(v17 + 32);
    v68 = v20;
    v30(v19, v15, v20);
    sub_29E746094(v72);
    sub_29E601938(v72, v73);
    sub_29E750148();
    sub_29E5FECBC(v72);
    sub_29E746094(v72);
    sub_29E601938(v72, v73);
    sub_29E750138();
    sub_29E5FECBC(v72);
    v31 = objc_allocWithZone(sub_29E750128());
    v32 = sub_29E750118();
    v33 = [a2 navigationController];
    sub_29E752048();
    v34 = v33;
    v35 = sub_29E752088();
    v36 = sub_29E7546C8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v72[0] = v38;
      *v37 = 136446466;
      v39 = sub_29E755178();
      v65 = v32;
      v41 = sub_29E6B9C90(v39, v40, v72);
      v64 = v21;
      v42 = v41;

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      v71 = v34;
      sub_29E6F5DBC(0, &qword_2A1859CF0, &qword_2A185A670, 0x29EDC7DA8, sub_29E609B5C);
      v43 = v34;
      v44 = sub_29E7541F8();
      v46 = sub_29E6B9C90(v44, v45, v72);
      v32 = v65;

      *(v37 + 14) = v46;
      v21 = v64;
      _os_log_impl(&dword_29E5ED000, v35, v36, "[%{public}s] Determining whether we can open article on presented vc %s)", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v38, -1, -1);
      MEMORY[0x29ED98410](v37, -1, -1);
    }

    v47 = *(v69 + 8);
    v47(v12, v70);
    v48 = v67;
    if (v33)
    {
      v64 = v47;
      v49 = v34;
      v50 = [v49 presentedViewController];
      v51 = v49;
      if (v50)
      {
        v52 = v49;
        do
        {
          v51 = v50;

          v50 = [v51 presentedViewController];
          v52 = v51;
        }

        while (v50);
      }

      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      if (v53)
      {
        [v53 pushViewController:v32 animated:1];
      }

      else
      {
        v54 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
        [v51 presentViewController:v54 animated:1 completion:0];
      }

      sub_29E752048();
      v55 = sub_29E752088();
      v56 = v48;
      v57 = sub_29E7546C8();
      if (os_log_type_enabled(v55, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v65 = v32;
        v60 = v59;
        v72[0] = v59;
        *v58 = 136446210;
        v61 = sub_29E755178();
        v63 = sub_29E6B9C90(v61, v62, v72);

        *(v58 + 4) = v63;
        _os_log_impl(&dword_29E5ED000, v55, v57, "[%{public}s] Displaying article in current modal", v58, 0xCu);
        sub_29E5FECBC(v60);
        MEMORY[0x29ED98410](v60, -1, -1);
        MEMORY[0x29ED98410](v58, -1, -1);

        v64(v67, v70);
      }

      else
      {

        v64(v56, v70);
      }

      (*(v21 + 1))(v19, v68);
    }

    else
    {
      (*(v21 + 1))(v19, v68);
    }
  }
}

id sub_29E6F0F4C(void *a1, uint64_t a2)
{
  v4 = sub_29E7513C8();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 resolvedHealthToolbox];
  sub_29E6E62F8();
  v12[1] = a2;
  sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
  v8 = sub_29E74F918();
  v9 = objc_allocWithZone(type metadata accessor for SleepRoomViewController(0));
  v10 = sub_29E69F6AC(v7, v6, v8);

  return v10;
}

void sub_29E6F10A0(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v193 = sub_29E74F488();
  v192 = *(v193 - 8);
  MEMORY[0x2A1C7C4A8](v193);
  v191 = &v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_29E74F4A8();
  v195 = *(v196 - 8);
  MEMORY[0x2A1C7C4A8](v196);
  v194 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E753CF8();
  v204 = *(v8 - 8);
  v205 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v202 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_29E753D18();
  v201 = *(v203 - 8);
  MEMORY[0x2A1C7C4A8](v203);
  v200 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_29E753D38();
  v199 = *(v207 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v207);
  v13 = &v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v198 = &v187 - v14;
  v15 = sub_29E752098();
  v16 = *(v15 - 8);
  v211 = v15;
  v212 = v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v190 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v188 = &v187 - v20;
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v197 = &v187 - v22;
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v189 = &v187 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v27 = &v187 - v26;
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v187 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v33 = &v187 - v32;
  MEMORY[0x2A1C7C4A8](v31);
  v35 = &v187 - v34;
  v36 = [a2 presentedViewController];
  if (!v36)
  {
    v214 = 0;
    v39 = 0;
    goto LABEL_14;
  }

  v37 = v36;
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  v39 = v38;
  if (!v38)
  {

LABEL_13:
    v214 = 0;
    goto LABEL_14;
  }

  v40 = [v38 viewControllers];
  sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
  v41 = sub_29E7543F8();

  if (v41 >> 62)
  {
    if (sub_29E754C98())
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_5:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x29ED976A0](0, v41);
  }

  else
  {
    if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v42 = *(v41 + 32);
  }

  v214 = v42;

LABEL_14:
  v213 = a3;
  v43 = [a3 navigationController];
  v44 = [v43 topViewController];

  v45 = sub_29E754748();
  if (v45)
  {
    v46 = v45;
    v208 = v44;
    v209 = v39;
    v210 = a1;
    v47 = sub_29E7541D8();
    v49 = v48;
    if (v47 == sub_29E7541D8() && v49 == v50)
    {

LABEL_24:
      v54 = v209;
      v55 = v210;
      v56 = v208;
      if (v208 && (type metadata accessor for ManageScheduleViewController(0), (v57 = swift_dynamicCastClass()) != 0))
      {
        v58 = v57;
        v59 = v56;
      }

      else
      {
        sub_29E752048();
        v60 = sub_29E752088();
        v61 = sub_29E7546C8();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&aBlock = v63;
          *v62 = 136446210;
          v64 = sub_29E755178();
          v66 = sub_29E6B9C90(v64, v65, &aBlock);

          *(v62 + 4) = v66;
          _os_log_impl(&dword_29E5ED000, v60, v61, "[%{public}s] Presenting the manage schedule view controller", v62, 0xCu);
          sub_29E5FECBC(v63);
          MEMORY[0x29ED98410](v63, -1, -1);
          MEMORY[0x29ED98410](v62, -1, -1);
        }

        (*(v212 + 8))(v35, v211);
        v67 = v213;
        if ((sub_29E754618() & 1) == 0)
        {
          goto LABEL_32;
        }

        v58 = sub_29E69DE90();
        [v67 showViewController:v58 sender:v67];
      }

      [v58 restoreUserActivityState_];

LABEL_32:
LABEL_33:

      return;
    }

    v52 = sub_29E755028();

    v53 = v213;
    if (v52)
    {

      goto LABEL_24;
    }

    v68 = sub_29E7541D8();
    v70 = v69;
    if (v68 == sub_29E7541D8() && v70 == v71)
    {

LABEL_39:
      sub_29E752048();
      v73 = sub_29E752088();
      v74 = sub_29E7546C8();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&aBlock = v76;
        *v75 = 136446210;
        v77 = sub_29E755178();
        v79 = sub_29E6B9C90(v77, v78, &aBlock);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_29E5ED000, v73, v74, "[%{public}s] Scrolling to the schedule view", v75, 0xCu);
        sub_29E5FECBC(v76);
        MEMORY[0x29ED98410](v76, -1, -1);
        MEMORY[0x29ED98410](v75, -1, -1);
      }

      (*(v212 + 8))(v33, v211);
      v80 = sub_29E754738();
      sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
      v81 = sub_29E754908();
      sub_29E753D28();
      v82 = v198;
      sub_29E753D98();
      v212 = *(v199 + 8);
      (v212)(v13, v207);
      v83 = swift_allocObject();
      *(v83 + 16) = v53;
      *(v83 + 24) = v80 & 1;
      v217 = sub_29E6F5EB0;
      v218 = v83;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      *&v216 = sub_29E6A1514;
      *(&v216 + 1) = &unk_2A25026B8;
      v84 = _Block_copy(&aBlock);
      v85 = v53;
      v86 = v200;
      sub_29E753D08();
      v219 = MEMORY[0x29EDCA190];
      sub_29E6F5F98(&qword_2A18569F8, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
      v87 = MEMORY[0x29EDCA248];
      sub_29E6F5D58(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
      sub_29E6F5EBC(&qword_2A1856A00, &unk_2A1858A50, v87);
      v88 = v202;
      v89 = v205;
      sub_29E754C58();
      MEMORY[0x29ED971D0](v82, v86, v88, v84);
      _Block_release(v84);

      (*(v204 + 8))(v88, v89);
      (*(v201 + 8))(v86, v203);
      (v212)(v82, v207);

      return;
    }

    v72 = sub_29E755028();

    if (v72)
    {

      goto LABEL_39;
    }

    v90 = sub_29E7541D8();
    v92 = v91;
    v93 = sub_29E7541D8();
    v95 = v209;
    if (v90 == v93 && v92 == v94)
    {
LABEL_44:

      v96 = v214;
      if (!v214)
      {
        goto LABEL_53;
      }

LABEL_48:
      v214 = v96;
      sub_29E74FA38();
      v98 = swift_dynamicCastClass();
      if (v98)
      {
        v99 = v98;
        sub_29E752048();
        v100 = sub_29E752088();
        v101 = sub_29E7546C8();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          *&aBlock = v103;
          *v102 = 136446210;
          v104 = sub_29E755178();
          v106 = sub_29E6B9C90(v104, v105, &aBlock);

          *(v102 + 4) = v106;
          _os_log_impl(&dword_29E5ED000, v100, v101, "[%{public}s] Updating override schedule", v102, 0xCu);
          sub_29E5FECBC(v103);
          MEMORY[0x29ED98410](v103, -1, -1);
          MEMORY[0x29ED98410](v102, -1, -1);
        }

        (*(v212 + 8))(v30, v211);
        [v99 restoreUserActivityState_];

LABEL_52:
        return;
      }

LABEL_53:
      sub_29E752048();
      v107 = sub_29E752088();
      v108 = sub_29E7546C8();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        *&aBlock = v110;
        *v109 = 136446210;
        v111 = sub_29E755178();
        v113 = sub_29E6B9C90(v111, v112, &aBlock);

        *(v109 + 4) = v113;
        _os_log_impl(&dword_29E5ED000, v107, v108, "[%{public}s] Presenting the override schedule view controller", v109, 0xCu);
        sub_29E5FECBC(v110);
        MEMORY[0x29ED98410](v110, -1, -1);
        MEMORY[0x29ED98410](v109, -1, -1);
      }

      (*(v212 + 8))(v27, v211);
      v114 = swift_allocObject();
      v115 = v210;
      *(v114 + 16) = v210;
      v116 = v115;
      sub_29E69D984(sub_29E6F5EA0, v114);

      goto LABEL_33;
    }

    v97 = sub_29E755028();

    if (v97)
    {
      goto LABEL_47;
    }

    v117 = sub_29E7541D8();
    v119 = v118;
    if (v117 == sub_29E7541D8() && v119 == v120)
    {
      goto LABEL_44;
    }

    v121 = sub_29E755028();

    if (v121)
    {
LABEL_47:

      v96 = v214;
      if (!v214)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    }

    v122 = sub_29E7541D8();
    v124 = v123;
    if (v122 == sub_29E7541D8() && v124 == v125)
    {

      v126 = v197;
      goto LABEL_64;
    }

    v127 = sub_29E755028();

    v126 = v197;
    if (v127)
    {

LABEL_64:
      v128 = sub_29E754708();
      if (!v128)
      {
        goto LABEL_73;
      }

      v129 = v128;
      v130 = sub_29E7541D8();
      v132 = v131;
      if (v130 == sub_29E7541D8() && v132 == v133)
      {
      }

      else
      {
        v139 = sub_29E755028();

        if ((v139 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      v140 = [objc_opt_self() hksp_internalUserDefaults];
      [v140 setBool:1 forKey:*MEMORY[0x29EDC6810]];

LABEL_73:
      if (v214 && (v219 = v214, sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8), sub_29E609CF8(0, &qword_2A1859E28, MEMORY[0x29EDC6B00]), v141 = v214, (swift_dynamicCast() & 1) != 0))
      {
        v142 = *(&v216 + 1);
        sub_29E6F5FF8(&aBlock, &qword_2A1859E20, &qword_2A1859E28, MEMORY[0x29EDC6B00], sub_29E609CF8);
        if (v142)
        {
          v143 = v189;
          sub_29E752048();
          v144 = sub_29E752088();
          v145 = sub_29E7546C8();
          if (os_log_type_enabled(v144, v145))
          {
            v146 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            *&aBlock = v147;
            *v146 = 136446210;
            v148 = sub_29E755178();
            v150 = sub_29E6B9C90(v148, v149, &aBlock);

            *(v146 + 4) = v150;
            _os_log_impl(&dword_29E5ED000, v144, v145, "[%{public}s] Resuming sleep coaching onboarding", v146, 0xCu);
            sub_29E5FECBC(v147);
            MEMORY[0x29ED98410](v147, -1, -1);
            MEMORY[0x29ED98410](v146, -1, -1);
          }

          (*(v212 + 8))(v143, v211);
          v151 = v141;
          [v151 restoreUserActivityState_];

          goto LABEL_52;
        }
      }

      else
      {
        v217 = 0;
        aBlock = 0u;
        v216 = 0u;
        sub_29E6F5FF8(&aBlock, &qword_2A1859E20, &qword_2A1859E28, MEMORY[0x29EDC6B00], sub_29E609CF8);
      }

      sub_29E752048();
      v152 = sub_29E752088();
      v153 = sub_29E7546C8();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *&aBlock = v155;
        *v154 = 136446210;
        v156 = sub_29E755178();
        v158 = sub_29E6B9C90(v156, v157, &aBlock);

        *(v154 + 4) = v158;
        _os_log_impl(&dword_29E5ED000, v152, v153, "[%{public}s] Presenting sleep coaching onboarding.", v154, 0xCu);
        sub_29E5FECBC(v155);
        MEMORY[0x29ED98410](v155, -1, -1);
        MEMORY[0x29ED98410](v154, -1, -1);
      }

      (*(v212 + 8))(v126, v211);
      v159 = v196;
      v160 = v195;
      v161 = v194;
      v162 = v210;
      *&aBlock = v210;
      sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
      sub_29E74F918();
      (*(v192 + 104))(v191, *MEMORY[0x29EDC6A60], v193);
      sub_29E74F498();
      v163 = swift_allocObject();
      *(v163 + 16) = v162;
      v164 = v162;
      v165 = sub_29E6F5E88;
LABEL_83:
      sub_29E6EE80C(v161, v165, v163);

      (*(v160 + 8))(v161, v159);
      return;
    }

    v134 = sub_29E7541D8();
    v136 = v135;
    if (v134 == sub_29E7541D8() && v136 == v137)
    {

      v138 = v190;
LABEL_85:
      if (v214 && (v219 = v214, sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8), sub_29E609CF8(0, &qword_2A1859E28, MEMORY[0x29EDC6B00]), v167 = v214, (swift_dynamicCast() & 1) != 0))
      {
        v168 = *(&v216 + 1);
        sub_29E6F5FF8(&aBlock, &qword_2A1859E20, &qword_2A1859E28, MEMORY[0x29EDC6B00], sub_29E609CF8);
        if (v168)
        {
          v169 = v188;
          sub_29E752048();
          v170 = sub_29E752088();
          v171 = sub_29E7546C8();
          if (os_log_type_enabled(v170, v171))
          {
            v172 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            *&aBlock = v173;
            *v172 = 136446210;
            v174 = sub_29E755178();
            v176 = sub_29E6B9C90(v174, v175, &aBlock);

            *(v172 + 4) = v176;
            _os_log_impl(&dword_29E5ED000, v170, v171, "[%{public}s] Resuming sleep tracking onboarding", v172, 0xCu);
            sub_29E5FECBC(v173);
            MEMORY[0x29ED98410](v173, -1, -1);
            MEMORY[0x29ED98410](v172, -1, -1);
          }

          (*(v212 + 8))(v169, v211);
          v177 = v167;
          [v177 restoreUserActivityState_];

          return;
        }
      }

      else
      {
        v217 = 0;
        aBlock = 0u;
        v216 = 0u;
        sub_29E6F5FF8(&aBlock, &qword_2A1859E20, &qword_2A1859E28, MEMORY[0x29EDC6B00], sub_29E609CF8);
      }

      sub_29E752048();
      v178 = sub_29E752088();
      v179 = sub_29E7546C8();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        *&aBlock = v181;
        *v180 = 136446210;
        v182 = sub_29E755178();
        v184 = sub_29E6B9C90(v182, v183, &aBlock);

        *(v180 + 4) = v184;
        _os_log_impl(&dword_29E5ED000, v178, v179, "[%{public}s] Presenting sleep tracking onboarding", v180, 0xCu);
        sub_29E5FECBC(v181);
        MEMORY[0x29ED98410](v181, -1, -1);
        MEMORY[0x29ED98410](v180, -1, -1);
      }

      (*(v212 + 8))(v138, v211);
      v159 = v196;
      v160 = v195;
      v161 = v194;
      v185 = v210;
      *&aBlock = v210;
      sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
      sub_29E74F918();
      (*(v192 + 104))(v191, *MEMORY[0x29EDC6A68], v193);
      sub_29E74F498();
      v163 = swift_allocObject();
      *(v163 + 16) = v185;
      v186 = v185;
      v165 = sub_29E6F6068;
      goto LABEL_83;
    }

    v166 = sub_29E755028();

    v138 = v190;
    if (v166)
    {
      goto LABEL_85;
    }
  }

  else
  {
  }

  v51 = v214;
}

void sub_29E6F29F0(uint64_t a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v91 = a4;
  v92 = a5;
  v93 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_29E752098();
  v89 = *(v6 - 8);
  v90 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v86 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v85 - v9;
  v11 = sub_29E754728();
  if (v11 == 2)
  {
    v12 = [objc_opt_self() sharedApplication];
    v13 = [v12 applicationState];

    LODWORD(v14) = v13 == 0;
  }

  else
  {
    LODWORD(v14) = v11;
  }

  v15 = &selRef_restoreUserActivityState_;
  v16 = [v93 topViewController];
  v88 = a3;
  if (v16)
  {
    v17 = v16;
    sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
    v18 = a3;
    v19 = sub_29E754B88();
  }

  else
  {
    v19 = 0;
  }

  v20 = [v93 presentedViewController];
  if (!v20)
  {
    v29 = 0;
    goto LABEL_40;
  }

  v21 = v20;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  v85 = __PAIR64__(v14, v19);
  if (!v22)
  {
    v26 = v10;
LABEL_19:
    v28 = 0;
    goto LABEL_20;
  }

  v23 = v21;
  v24 = [v22 viewControllers];
  sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
  v25 = sub_29E7543F8();

  if (v25 >> 62)
  {
    if (sub_29E754C98())
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    v26 = v10;

    goto LABEL_19;
  }

LABEL_11:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = v10;
    v27 = MEMORY[0x29ED976A0](0, v25);
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v26 = v10;
    v27 = *(v25 + 32);
  }

  v28 = v27;

LABEL_20:
  v30 = sub_29E754748();
  if (!v30)
  {

    LOBYTE(v14) = BYTE4(v85);
    if (!v28)
    {
      goto LABEL_38;
    }

LABEL_36:
    v94 = v28;
    sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
    sub_29E609CF8(0, &qword_2A1859E28, MEMORY[0x29EDC6B00]);
    if (swift_dynamicCast())
    {
      v29 = *(&v96 + 1) == 0;
LABEL_39:
      v10 = v26;
      v19 = v85;
      sub_29E6F5FF8(&aBlock, &qword_2A1859E20, &qword_2A1859E28, MEMORY[0x29EDC6B00], sub_29E609CF8);
      goto LABEL_40;
    }

LABEL_38:
    v97 = 0;
    aBlock = 0u;
    v96 = 0u;
    v29 = 1;
    goto LABEL_39;
  }

  v31 = v30;
  v32 = sub_29E7541D8();
  v34 = v33;
  if (v32 == sub_29E7541D8() && v34 == v35)
  {

LABEL_28:

LABEL_29:
    v29 = 1;
    v10 = v26;
    v19 = v85;
    LOBYTE(v14) = BYTE4(v85);
    v15 = &selRef_restoreUserActivityState_;
    goto LABEL_40;
  }

  v36 = sub_29E755028();

  if (v36)
  {

    goto LABEL_28;
  }

  v37 = sub_29E7541D8();
  v39 = v38;
  if (v37 == sub_29E7541D8() && v39 == v40)
  {
    goto LABEL_32;
  }

  v41 = sub_29E755028();

  if (v41)
  {
LABEL_34:

LABEL_35:
    v15 = &selRef_restoreUserActivityState_;
    LOBYTE(v14) = BYTE4(v85);
    if (!v28)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v70 = sub_29E7541D8();
  v72 = v71;
  if (v70 == sub_29E7541D8() && v72 == v73)
  {
    goto LABEL_32;
  }

  v74 = sub_29E755028();

  if (v74)
  {
    goto LABEL_34;
  }

  v75 = sub_29E7541D8();
  v77 = v76;
  if (v75 == sub_29E7541D8() && v77 == v78)
  {
LABEL_32:

    goto LABEL_35;
  }

  v79 = sub_29E755028();

  if (v79)
  {
    goto LABEL_34;
  }

  v80 = sub_29E7541D8();
  v82 = v81;
  if (v80 == sub_29E7541D8() && v82 == v83)
  {
  }

  else
  {
    v84 = sub_29E755028();

    if ((v84 & 1) == 0)
    {

      goto LABEL_29;
    }
  }

  v15 = &selRef_restoreUserActivityState_;

  v29 = 1;
  v10 = v26;
  v19 = v85;
  LOBYTE(v14) = BYTE4(v85);
LABEL_40:
  v42 = [v93 v15[89]];
  if (v42)
  {
    v43 = v42;
    v44 = sub_29E754748();
    if (v44)
    {
      v45 = v44;
      v46 = sub_29E7541D8();
      v48 = v47;
      if (v46 == sub_29E7541D8() && v48 == v49)
      {

        goto LABEL_46;
      }

      v50 = sub_29E755028();

      if (v50)
      {
LABEL_46:
        type metadata accessor for ManageScheduleViewController(0);
        v51 = swift_dynamicCastClass() != 0;

        if (((v51 | v19) & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_53;
      }
    }
  }

  if ((v19 & 1) == 0)
  {
LABEL_47:
    v52 = v14 & !v29;
    sub_29E752048();
    v53 = sub_29E752088();
    v54 = sub_29E7546C8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&aBlock = v56;
      *v55 = 136446466;
      v57 = sub_29E755178();
      v59 = v14;
      v14 = sub_29E6B9C90(v57, v58, &aBlock);

      *(v55 + 4) = v14;
      LOBYTE(v14) = v59;
      *(v55 + 12) = 1026;
      *(v55 + 14) = v52 & 1;
      _os_log_impl(&dword_29E5ED000, v53, v54, "[%{public}s] Popping navigation stack back to room view controller with animation: %{BOOL,public}d", v55, 0x12u);
      sub_29E5FECBC(v56);
      MEMORY[0x29ED98410](v56, -1, -1);
      MEMORY[0x29ED98410](v55, -1, -1);
    }

    (*(v89 + 8))(v10, v90);
    if (!v29)
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

LABEL_53:
  if (!v29)
  {
LABEL_58:
    v91();
    return;
  }

LABEL_54:
  v60 = [v93 presentedViewController];
  if (!v60)
  {
    goto LABEL_58;
  }

  v61 = v86;
  sub_29E752048();
  v62 = sub_29E752088();
  v63 = sub_29E7546C8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&aBlock = v65;
    *v64 = 136446466;
    v66 = sub_29E755178();
    v68 = v14;
    v14 = sub_29E6B9C90(v66, v67, &aBlock);

    *(v64 + 4) = v14;
    LOBYTE(v14) = v68;
    *(v64 + 12) = 1026;
    *(v64 + 14) = v68 & 1;
    _os_log_impl(&dword_29E5ED000, v62, v63, "[%{public}s] Dimissing presented view controller with animation: %{BOOL,public}d", v64, 0x12u);
    sub_29E5FECBC(v65);
    MEMORY[0x29ED98410](v65, -1, -1);
    MEMORY[0x29ED98410](v64, -1, -1);
  }

  (*(v89 + 8))(v61, v90);
  v97 = v91;
  v98 = v92;
  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 1107296256;
  *&v96 = sub_29E6A1514;
  *(&v96 + 1) = &unk_2A25025F0;
  v69 = _Block_copy(&aBlock);

  [v93 dismissViewControllerAnimated:v14 & 1 completion:v69];
  _Block_release(v69);
}

uint64_t sub_29E6F343C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v53 = a7;
  v54 = a6;
  v11 = sub_29E753CF8();
  v58 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E753D18();
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E752098();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v52 = a2;
    v20 = a3;
    sub_29E752048();
    v21 = a3;
    v22 = sub_29E752088();
    v23 = sub_29E7546A8();

    v51 = v22;
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v50 = a4;
      v25 = v24;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v25 = 136446466;
      v26 = sub_29E755178();
      v53 = v16;
      v28 = sub_29E6B9C90(v26, v27, aBlock);
      v49 = v17;
      v29 = v11;
      v30 = v28;

      *(v25 + 4) = v30;
      v11 = v29;
      *(v25 + 12) = 2112;
      v31 = a3;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v32;
      v33 = v47;
      *v47 = v32;
      v34 = v51;
      _os_log_impl(&dword_29E5ED000, v51, v23, "[%{public}s] Error querying for event sample: %@", v25, 0x16u);
      sub_29E6F5FF8(v33, &qword_2A1A7D0A8, &qword_2A1A7D0B0, 0x29EDC9738, sub_29E609B5C);
      MEMORY[0x29ED98410](v33, -1, -1);
      v35 = v48;
      sub_29E5FECBC(v48);
      MEMORY[0x29ED98410](v35, -1, -1);
      v36 = v25;
      a4 = v50;
      MEMORY[0x29ED98410](v36, -1, -1);

      (*(v49 + 8))(v19, v53);
    }

    else
    {

      (*(v17 + 8))(v19, v16);
    }

    a2 = v52;
  }

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v37 = sub_29E754908();
  v38 = swift_allocObject();
  v38[2] = a2;
  v38[3] = a4;
  v39 = v54;
  v38[4] = a5;
  v38[5] = v39;
  aBlock[4] = sub_29E6F5FEC;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  aBlock[3] = &unk_2A2502780;
  v40 = _Block_copy(aBlock);

  v41 = a4;
  v42 = a5;
  v43 = v39;
  sub_29E753D08();
  v59 = MEMORY[0x29EDCA190];
  sub_29E6F5F98(&qword_2A18569F8, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  v44 = MEMORY[0x29EDCA248];
  sub_29E6F5D58(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29E6F5EBC(&qword_2A1856A00, &unk_2A1858A50, v44);
  v45 = v57;
  sub_29E754C58();
  MEMORY[0x29ED97230](0, v15, v45, v40);
  _Block_release(v40);

  (*(v58 + 8))(v45, v11);
  (*(v55 + 8))(v15, v56);
}

unint64_t sub_29E6F39C0(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_29E6F5D58(0, &qword_2A1859CB0, MEMORY[0x29EDC2B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v21 - v9;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  result = sub_29E6EF2B0(a1);
  if (!result)
  {
    goto LABEL_13;
  }

  v12 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_12:

    goto LABEL_13;
  }

  v19 = result;
  v20 = sub_29E754C98();
  result = v19;
  if (!v20)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x29ED976A0](0);
    goto LABEL_10;
  }

  if (*(v12 + 16))
  {
    v13 = *(result + 32);
LABEL_10:
    v14 = v13;

    sub_29E751A98();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a3;
    v16 = v14;
    v17 = a3;
    sub_29E751A68();
    v18 = sub_29E751A78();
    (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
    sub_29E751A88();

LABEL_13:
    [a4 showViewController:a2 sender:0];
  }

  __break(1u);
  return result;
}

id sub_29E6F3C24()
{
  v0 = sub_29E7513C8();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750FA8();
  v3 = objc_allocWithZone(type metadata accessor for SleepScoreRoomViewController(0));
  return SleepScoreRoomViewController.init(context:)(v2);
}

uint64_t sub_29E6F3CAC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1E10];
  v3 = sub_29E750738();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29E6F3D20(uint64_t a1, char a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E67037C(0xD00000000000001BLL, 0x800000029E75A340, a2 & 1);
}

uint64_t sub_29E6F3DE8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_29E609B5C(0, &qword_2A1858478, 0x29EDBAD60);
    v5 = sub_29E7543F8();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

void *sub_29E6F3EA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v73 = a6;
  v76 = a2;
  ObjectType = swift_getObjectType();
  sub_29E6F5D58(0, &qword_2A1859098, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v70 = &v65 - v11;
  v12 = sub_29E74ED88();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v69 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E74EAF8();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29E752098();
  v79 = *(v77 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v77);
  v68 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v65 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v74 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v24;
  (*(v24 + 16))();
  sub_29E752048();
  v25 = *(v15 + 16);
  v78 = a1;
  v25(v17, a1, v14);
  v26 = sub_29E752088();
  v27 = sub_29E7546C8();
  v28 = os_log_type_enabled(v26, v27);
  v67 = ObjectType;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v65 = a4;
    v30 = v29;
    v31 = swift_slowAlloc();
    v80 = v31;
    *v30 = 136446466;
    v32 = sub_29E755178();
    v34 = sub_29E6B9C90(v32, v33, &v80);
    v66 = a5;
    v35 = v34;

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    sub_29E6F5F98(&qword_2A18590A0, MEMORY[0x29EDB9B18], MEMORY[0x29EDB9B40]);
    v36 = sub_29E754FD8();
    v38 = v37;
    (*(v15 + 8))(v17, v14);
    v39 = sub_29E6B9C90(v36, v38, &v80);
    a5 = v66;

    *(v30 + 14) = v39;
    _os_log_impl(&dword_29E5ED000, v26, v27, "[%{public}s] Received request to open URL: %{public}s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v31, -1, -1);
    v40 = v30;
    a4 = v65;
    MEMORY[0x29ED98410](v40, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  v41 = *(v79 + 8);
  v42 = v77;
  v41(v22, v77);
  v43 = *(sub_29E74EAA8() + 16);

  if (v43 != 3)
  {
    goto LABEL_13;
  }

  result = sub_29E74EAA8();
  if (result[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v46 = result[6];
    v45 = result[7];

    if (v46 == sub_29E7541D8() && v45 == v47)
    {
    }

    else
    {
      v48 = sub_29E755028();

      if ((v48 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    result = sub_29E74EAA8();
    if (result[2] >= 3uLL)
    {

      v49 = v70;
      sub_29E74ED38();
      v50 = v49;

      v52 = v71;
      v51 = v72;
      if ((*(v71 + 48))(v50, 1, v72) != 1)
      {
        (*(v52 + 32))(v69, v50, v51);
        v55 = v68;
        sub_29E752048();
        v56 = sub_29E752088();
        v57 = sub_29E7546C8();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v80 = v59;
          *v58 = 136446210;
          v60 = sub_29E755178();
          v62 = sub_29E6B9C90(v60, v61, &v80);

          *(v58 + 4) = v62;
          _os_log_impl(&dword_29E5ED000, v56, v57, "[%{public}s] URL contains sufficient components to open breathing disturbances room", v58, 0xCu);
          sub_29E5FECBC(v59);
          MEMORY[0x29ED98410](v59, -1, -1);
          MEMORY[0x29ED98410](v58, -1, -1);

          v63 = v68;
        }

        else
        {

          v63 = v55;
        }

        v41(v63, v42);
        v64 = v69;
        sub_29E6EF6DC(v69, v76);
        (*(v71 + 8))(v64, v72);
        v54 = v74;
        return (*(v75 + 8))(v54, a5);
      }

      sub_29E6F5F28(v50, &qword_2A1859098, MEMORY[0x29EDB9C08]);
LABEL_13:
      v53 = sub_29E74EA68();
      v54 = v74;
      sub_29E6F4664(v53, v76, v74, a4, a5, v73);

      return (*(v75 + 8))(v54, a5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6F4664(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = *(a5 - 1);
  MEMORY[0x2A1C7C4A8](a1);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v14, v15);
  v16 = sub_29E754748();
  if (!v16)
  {
    goto LABEL_32;
  }

  v17 = v16;
  v18 = sub_29E7541D8();
  v20 = v19;
  if (v18 == sub_29E7541D8() && v20 == v21)
  {

    goto LABEL_16;
  }

  v48 = a6;
  v23 = sub_29E755028();

  if (v23)
  {
LABEL_16:
    sub_29E6F5190(a2);
    goto LABEL_33;
  }

  v24 = sub_29E7541D8();
  v26 = v25;
  if (v24 == sub_29E7541D8() && v26 == v27)
  {
  }

  else
  {
    v29 = sub_29E755028();

    if ((v29 & 1) == 0)
    {
      v30 = sub_29E7541D8();
      v32 = v31;
      if (v30 == sub_29E7541D8() && v32 == v33)
      {

LABEL_20:
        sub_29E6F030C(a2);
        goto LABEL_33;
      }

      v34 = sub_29E755028();

      if (v34)
      {
        goto LABEL_20;
      }

      v35 = sub_29E7541D8();
      v37 = v36;
      if (v35 == sub_29E7541D8() && v37 == v38)
      {

LABEL_25:
        v40 = sub_29E750FD8();
        sub_29E6F0720(a1, v40);

        v17 = v40;
        goto LABEL_33;
      }

      v39 = sub_29E755028();

      if (v39)
      {
        goto LABEL_25;
      }

      v41 = sub_29E7541D8();
      v43 = v42;
      if (v41 == sub_29E7541D8() && v43 == v44)
      {

LABEL_30:
        sub_29E6F5A2C(a2, v13, a5, v48);
        goto LABEL_33;
      }

      v45 = sub_29E755028();

      if (v45)
      {
        goto LABEL_30;
      }

      a6 = v48;
LABEL_32:
      v17 = sub_29E750FD8();
      sub_29E6F4A60(a1, v17, v13, a4, a5, a6);
      goto LABEL_33;
    }
  }

  sub_29E6EFEB4();
LABEL_33:

  return (*(v11 + 8))(v13, a5);
}

uint64_t sub_29E6F4A60(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v78 = a1;
  v79 = a2;
  v76 = a4;
  ObjectType = swift_getObjectType();
  v9 = sub_29E752098();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v73 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E7513C8();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v69 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E750738();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v70 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E750748();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = (&ObjectType - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &ObjectType - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v22;
  (*(v22 + 16))(v21, a3, a5);
  *v19 = 5;
  v23 = *MEMORY[0x29EDC1E18];
  v24 = *(v16 + 104);
  v24(v19, v23, v15);
  v77 = a6;
  v25 = sub_29E750838();
  v26 = *(v16 + 8);
  v26(v19, v15);
  if (v25)
  {

    *v19 = 5;
    v24(v19, v23, v15);
    v27 = type metadata accessor for SleepRoomViewController(0);
    v28 = sub_29E750848();
    v26(v19, v15);
    v29 = a5;
    v30 = v21;
    if (v28)
    {
      v31 = 1;
      v33 = v78;
      v32 = v79;
    }

    else
    {
      v32 = v79;
      v40 = [v79 resolvedHealthToolbox];
      v41 = v69;
      sub_29E6E62F8();
      v33 = v78;
      v81 = v78;
      sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
      v42 = sub_29E74F918();
      v43 = objc_allocWithZone(v27);
      v28 = sub_29E69F6AC(v40, v41, v42);

      v31 = 0;
    }
  }

  else
  {
    v35 = v70;
    v34 = v71;
    v36 = v72;
    v37 = (*(v71 + 104))(v70, *MEMORY[0x29EDC1E10], v72);
    MEMORY[0x2A1C7C4A8](v37);
    v33 = v78;
    v32 = v79;
    *(&ObjectType - 2) = v79;
    *(&ObjectType - 1) = v33;
    type metadata accessor for SleepRoomViewController(0);
    v38 = sub_29E750858();
    v28 = v39;
    (*(v34 + 8))(v35, v36);
    v31 = v38 ^ 1;
    v29 = a5;
    v30 = v21;
  }

  v44 = [v28 navigationController];
  if (v44)
  {
    v45 = v44;
    v46 = swift_allocObject();
    *(v46 + 16) = v28;
    *(v46 + 24) = v33;
    *(v46 + 32) = v31 & 1;
    v47 = v76;
    *(v46 + 40) = v76;
    *(v46 + 48) = v32;
    v48 = v28;
    v49 = v33;
    v47;
    v50 = v32;
    sub_29E6F29F0(v49, v45, v48, sub_29E6F5E18, v46);
  }

  else
  {
    v51 = v73;
    sub_29E752058();
    v52 = v28;
    v53 = sub_29E752088();
    v54 = sub_29E7546A8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v81 = v56;
      *v55 = 136315394;
      v57 = sub_29E755178();
      v79 = v29;
      v58 = v30;
      v60 = sub_29E6B9C90(v57, v59, &v81);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      v61 = v52;
      v62 = [v61 description];
      v63 = sub_29E7541D8();
      v65 = v64;

      v66 = sub_29E6B9C90(v63, v65, &v81);

      *(v55 + 14) = v66;
      v30 = v58;
      v29 = v79;
      _os_log_impl(&dword_29E5ED000, v53, v54, "[%s]: No navigation controller provided to open sleep room: %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v56, -1, -1);
      MEMORY[0x29ED98410](v55, -1, -1);
    }

    else
    {
    }

    (*(v74 + 8))(v51, v75);
  }

  return (*(v80 + 8))(v30, v29);
}

void sub_29E6F5190(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_29E6F5D58(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v65 = &v62 - v3;
  v4 = sub_29E752098();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v62 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v62 - v11;
  v13 = sub_29E7513C8();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v17 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v70 = a1;
  sub_29E750FA8();
  v18 = sub_29E6A1530(v17, v16);
  (*(v14 + 8))(v16, v13);
  v67 = v18;
  if (v18)
  {
    v64 = v17;
    sub_29E752048();
    v19 = sub_29E752088();
    v20 = sub_29E7546C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v72 = v22;
      *v21 = 136446466;
      v23 = sub_29E755178();
      v25 = sub_29E6B9C90(v23, v24, &v72);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_29E6B9C90(0xD000000000000031, 0x800000029E75F640, &v72);
      _os_log_impl(&dword_29E5ED000, v19, v20, "[%{public}s.%{public}s]: Pushing breathing disturbance view", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v22, -1, -1);
      MEMORY[0x29ED98410](v21, -1, -1);
    }

    v26 = *(v68 + 8);
    v26(v12, v69);
    v27 = sub_29E750FD8();
    v28 = [v27 navigationController];

    if (v28)
    {
      [v28 pushViewController:v67 animated:0];
    }

    v29 = sub_29E750FC8();
    v30 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
    v31 = sub_29E754198();
    v32 = [v30 initWithIdentifier:v31 healthStore:v29];

    v33 = v32;
    v34 = sub_29E750FC8();
    v35 = [objc_allocWithZone(MEMORY[0x29EDC68B0]) initWithSleepStore:v33 healthDataSource:v34];

    sub_29E752048();
    v36 = sub_29E752088();
    v37 = sub_29E7546C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v62 = v26;
      v39 = v38;
      v40 = swift_slowAlloc();
      v63 = v35;
      v41 = v40;
      v72 = v40;
      *v39 = 136446466;
      v42 = sub_29E755178();
      v44 = sub_29E6B9C90(v42, v43, &v72);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_29E6B9C90(0xD000000000000031, 0x800000029E75F640, &v72);
      _os_log_impl(&dword_29E5ED000, v36, v37, "[%{public}s.%{public}s] Presenting sleep apnea notifications onboarding", v39, 0x16u);
      swift_arrayDestroy();
      v45 = v41;
      v35 = v63;
      MEMORY[0x29ED98410](v45, -1, -1);
      MEMORY[0x29ED98410](v39, -1, -1);

      v62(v10, v69);
    }

    else
    {

      v26(v10, v69);
    }

    v53 = v64;
    v54 = sub_29E74FFA8();
    v55 = v65;
    (*(*(v54 - 8) + 56))(v65, 1, 1, v54);
    v56 = v35;
    v57 = sub_29E750FC8();
    v58 = type metadata accessor for SleepApneaOnboardingNavigationController(0);
    v59 = objc_allocWithZone(v58);
    *&v59[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator] = 0;
    sub_29E6F5CC4(v55, &v59[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_countryRecord]);
    *&v59[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthDataSource] = v56;
    *&v59[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthStore] = v57;
    v59[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_analyticsContextType] = 5;
    v71.receiver = v59;
    v71.super_class = v58;
    v60 = objc_msgSendSuper2(&v71, sel_initWithNibName_bundle_, 0, 0);
    sub_29E6F5F28(v55, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    sub_29E718D68();
    sub_29E7195BC();

    [v60 setModalPresentationStyle_];
    v61 = v67;
    [v67 presentViewController:v60 animated:1 completion:0];
  }

  else
  {
    sub_29E752048();
    v46 = sub_29E752088();
    v47 = sub_29E7546A8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v72 = v49;
      *v48 = 136446466;
      v50 = sub_29E755178();
      v52 = sub_29E6B9C90(v50, v51, &v72);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_29E6B9C90(0xD000000000000031, 0x800000029E75F640, &v72);
      _os_log_impl(&dword_29E5ED000, v46, v47, "[%{public}s.%{public}s]: No data type detail view controller found", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v49, -1, -1);
      MEMORY[0x29ED98410](v48, -1, -1);
    }

    else
    {
    }

    (*(v68 + 8))(v7, v69);
  }
}

void sub_29E6F5A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29E750738();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3;
  v25 = a4;
  v12 = sub_29E5FEBF4(v23);
  (*(*(a3 - 8) + 16))(v12, a2, a3);
  v13 = [objc_opt_self() sharedBehavior];
  if (!v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v13 features];

  if (!v15)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v16 = [v15 sleepDetails];

  if (v16)
  {
    v17 = sub_29E601938(v23, v24);
    MEMORY[0x2A1C7C4A8](v17);
    *(&v22 - 2) = a1;
    type metadata accessor for SleepScoreRoomViewController(0);
    (*(v9 + 104))(v11, *MEMORY[0x29EDC1E10], v8);
    sub_29E750858();
    v19 = v18;
    (*(v9 + 8))(v11, v8);
    v20 = sub_29E750FD8();
    v21 = [v20 navigationController];

    if (v21)
    {
    }

    sub_29E6B93B4();
  }

  sub_29E5FECBC(v23);
}

uint64_t sub_29E6F5CC4(uint64_t a1, uint64_t a2)
{
  sub_29E6F5D58(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E6F5D58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E6F5DBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29E754BD8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6F5E18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  sub_29E69B970(v2, *(v0 + 32));
  sub_29E6F10A0(v2, v3, v1);
}

uint64_t sub_29E6F5E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}