char *sub_258AE9408(char *result, int64_t a2, char a3, char *a4)
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
    sub_258AEACD0(0, &qword_27F970058, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_258AE9544(char *result, int64_t a2, char a3, char *a4)
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
    sub_258AEACD0(0, &qword_27F970D80, MEMORY[0x277CE1308], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_258AE969C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_258AEAE4C(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_258AE98B0(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_258AEAE4C(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_258AE9A2C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_258AE9BC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Label(0);
  v4 = v3;
  v5 = sub_258AEAF44(&qword_27F9704C8, type metadata accessor for Label, &unk_258B2B578);
  result = MEMORY[0x259C93370](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_258AE5AB0(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

void sub_258AE9C74(uint64_t a1)
{
  if (!qword_27F971698)
  {
    type metadata accessor for AssessmentsSettingsModel();
    sub_258AEAF44(&qword_27F96EDD0, type metadata accessor for AssessmentsSettingsModel, &protocol conformance descriptor for AssessmentsSettingsModel);
    v1 = sub_258B00A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971698);
    }
  }
}

uint64_t sub_258AE9D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258AE9DAC(uint64_t a1)
{
  if (!qword_27F9716A8)
  {
    sub_258AE9E4C(255);
    sub_258AEAE4C(255, &qword_27F9716B8, sub_258AE9EFC, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9716A8);
    }
  }
}

void sub_258AE9E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258AEACD0(255, &qword_27F96CDD0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AE9F30(uint64_t a1)
{
  if (!qword_27F9716C8)
  {
    sub_258AE9FA0(255);
    sub_258AEA298(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9716C8);
    }
  }
}

void sub_258AE9FC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258B017D4();
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AEA04C(uint64_t a1)
{
  if (!qword_27F9716E0)
  {
    sub_258AEA0E0(255);
    sub_258AEA220();
    v1 = sub_258B02254();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9716E0);
    }
  }
}

void sub_258AEA0E0(uint64_t a1)
{
  if (!qword_27F9716E8)
  {
    v1 = MEMORY[0x277D83B88];
    sub_258AEACD0(255, &qword_27F9716F0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    sub_258A155A0(255);
    sub_258AEA1C8(&qword_27F9716F8, &qword_27F9716F0, v1, MEMORY[0x277D83980]);
    v2 = sub_258B023D4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F9716E8);
    }
  }
}

uint64_t sub_258AEA1C8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_258AEACD0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258AEA220()
{
  result = qword_27F971700;
  if (!qword_27F971700)
  {
    sub_258AEA0E0(255);
    sub_258A5B2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971700);
  }

  return result;
}

void sub_258AEA298(uint64_t a1)
{
  if (!qword_27F971708)
  {
    sub_258AE9E4C(255);
    sub_258AEA31C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971708);
    }
  }
}

unint64_t sub_258AEA31C()
{
  result = qword_27F971710;
  if (!qword_27F971710)
  {
    sub_258AE9E4C(255);
    sub_258A5B384();
    sub_258AEAF44(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971710);
  }

  return result;
}

unint64_t sub_258AEA3DC()
{
  result = qword_27F971720;
  if (!qword_27F971720)
  {
    sub_258AEA02C(255);
    sub_258AEAF44(&qword_27F971728, sub_258AEA04C, MEMORY[0x277CDF038]);
    sub_2589D2560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971720);
  }

  return result;
}

uint64_t sub_258AEA49C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AEA4FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2589EEE18;

  return sub_258AE3C64(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroy_41Tm()
{

  return swift_deallocObject();
}

uint64_t sub_258AEA60C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C93370](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_258AE5BA8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_258AEA680(uint64_t a1)
{
  if (a1 > 89)
  {
    if (a1 != 90 && a1 != 180)
    {
      goto LABEL_8;
    }

    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

LABEL_15:
    swift_once();
    return sub_258AFFD94();
  }

  if (!a1)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_15;
  }

  if (a1 == 30)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_15;
  }

LABEL_8:
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  sub_258AEAE4C(0, &qword_27F9702D8, sub_258ABB050, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_258B2C470;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_258B02AE4();

  return v5;
}

void sub_258AEA918(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x277D83B88], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258AEA96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971740;
  if (!qword_27F971740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971740);
  }

  return result;
}

void sub_258AEA9C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_258B03194();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258AEAA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971770;
  if (!qword_27F971770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971770);
  }

  return result;
}

unint64_t sub_258AEAA84()
{
  result = qword_27F971778;
  if (!qword_27F971778)
  {
    sub_258AEAE4C(255, &qword_27F971780, sub_258AE5420, MEMORY[0x277D83D88]);
    sub_258AE534C(255);
    sub_258AE5208(255);
    sub_258B013D4();
    sub_258AEAF44(&qword_27F971688, sub_258AE5208, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971778);
  }

  return result;
}

unint64_t sub_258AEABDC()
{
  result = qword_27F971788;
  if (!qword_27F971788)
  {
    sub_258AEADD8(255, &qword_27F971790, sub_258AE9D78);
    sub_258AEAF44(&qword_27F971718, sub_258AE9D78, MEMORY[0x277CE14C0]);
    sub_258A5B2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971788);
  }

  return result;
}

void sub_258AEACD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258AEAD30()
{
  result = qword_27F9717B0;
  if (!qword_27F9717B0)
  {
    sub_258AEADD8(255, &qword_27F9717B8, sub_258AE9E4C);
    sub_258AEA31C();
    sub_258A5B2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9717B0);
  }

  return result;
}

void sub_258AEADD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A155A0(255);
    v4 = sub_258B02444();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AEAE4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258AEAEB0(uint64_t a1)
{
  if (!qword_27F9717C0)
  {
    type metadata accessor for Label(255);
    sub_258AEAF44(&qword_27F9704C8, type metadata accessor for Label, &unk_258B2B578);
    v1 = sub_258B03194();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9717C0);
    }
  }
}

uint64_t sub_258AEAF44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id StateOfMindSampleCountContext.__allocating_init(accessibilityIdentifier:applicationItems:overlayChartController:overlayPredicate:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
  *&v11[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
  v13 = &v11[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v11[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = a4;
  sub_258AEB598();
  v14 = a4;
  sub_258ADEBAC(a3, a5, 0);
  *&v11[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v15;
  *&v11[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = a5;
  v16 = *&v11[v12];
  *&v11[v12] = 0;
  v17 = a5;

  v20.receiver = v11;
  v20.super_class = type metadata accessor for StateOfMindOverlayContext();
  v18 = objc_msgSendSuper2(&v20, sel_init);

  return v18;
}

void sub_258AEB0A8(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_258B032B4())
  {
    v4 = MEMORY[0x277D84F90];
    if (i)
    {
      v5 = v1;
      v19 = MEMORY[0x277D84F90];
      sub_258AA92AC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v4 = v19;
      if ((v2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          MEMORY[0x259C937C0](j, v2);
          v7 = sub_258B027B4();
          swift_unknownObjectRelease();
          v9 = *(v19 + 16);
          v8 = *(v19 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_258AA92AC((v8 > 1), v9 + 1, 1);
          }

          *(v19 + 16) = v9 + 1;
          *(v19 + 8 * v9 + 32) = v7;
        }
      }

      else
      {
        v10 = (v2 + 32);
        do
        {
          v11 = *v10;
          v2 = sub_258B027B4();

          v13 = *(v19 + 16);
          v12 = *(v19 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_258AA92AC((v12 > 1), v13 + 1, 1);
          }

          *(v19 + 16) = v13 + 1;
          *(v19 + 8 * v13 + 32) = v2;
          ++v10;
          --i;
        }

        while (i);
      }

      v1 = v5;
    }

    v14 = *(v4 + 16);
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v16 = (v4 + 32);
    while (1)
    {
      v17 = *v16++;
      v18 = __OFADD__(v15, v17);
      v15 += v17;
      if (v18)
      {
        break;
      }

      if (!--v14)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  v15 = 0;
LABEL_22:

  sub_258AEB288(v15, 0);
}

void sub_258AEB288(uint64_t a1, char a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate) localizedNameKey];
  v6 = sub_258B02B14();
  v8 = v7;

  v9 = 0;
  if (a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a1 < 1)
  {
LABEL_6:
    sub_258A30494(v6, v8, v9, v10, v11, v12);

    return;
  }

  sub_258A828E0(0);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D83B88];
  *(v13 + 16) = xmmword_258B2C470;
  v15 = MEMORY[0x277D83C10];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = a1;
  v9 = sub_258B02AE4();
  v10 = v16;

  v17 = sub_258B02AD4();
  v18 = HKUILocalizedString();

  if (v18)
  {
    sub_258B02B14();

    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_258B2C470;
    *(v19 + 56) = MEMORY[0x277D83B88];
    *(v19 + 64) = MEMORY[0x277D83C10];
    *(v19 + 32) = a1;
    v11 = sub_258B02AE4();
    v12 = v20;

    goto LABEL_6;
  }

  __break(1u);
}

id StateOfMindSampleCountContext.init(accessibilityIdentifier:applicationItems:overlayChartController:overlayPredicate:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
  v11 = &v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
  *v11 = a1;
  *(v11 + 1) = a2;
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = a4;
  sub_258AEB598();
  v12 = a4;
  sub_258ADEBAC(a3, a5, 0);
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v13;
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = a5;
  v14 = *&v6[v10];
  *&v6[v10] = 0;
  v15 = a5;

  v18.receiver = v6;
  v18.super_class = type metadata accessor for StateOfMindOverlayContext();
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

unint64_t sub_258AEB598()
{
  result = qword_27F96D870;
  if (!qword_27F96D870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96D870);
  }

  return result;
}

id StateOfMindSampleCountContext.__deallocating_deinit(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for StateOfMindSampleCountContext();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_258AEB68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_258AED668(0, &qword_27F9717C8, sub_258AECCCC, MEMORY[0x277CE1428], MEMORY[0x277CE0330]);
  v106 = v4;
  MEMORY[0x28223BE20](v4);
  v107 = &v81 - v5;
  v6 = sub_258B01724();
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x28223BE20](v6);
  v97 = v7;
  v98 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A8773C();
  v96 = v8;
  v95 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v93 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AECDD8(0);
  v92 = v10;
  MEMORY[0x28223BE20](v10);
  v94 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AED668(0, &qword_27F9717D8, sub_258AECDD8, MEMORY[0x277CE0780], MEMORY[0x277CDFAB8]);
  v108 = v12;
  MEMORY[0x28223BE20](v12);
  v103 = &v81 - v13;
  sub_258AECCCC(0);
  v105 = v14;
  v102 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v99 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AED020(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v81 - v20;
  v22 = sub_258B00084();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v91 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v90 = &v81 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v104 = &v81 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v81 - v30;
  v32 = a1;
  sub_258B016F4();
  v33 = v23;
  v34 = *(v23 + 48);
  if (v34(v21, 1, v22) == 1)
  {
    v19 = v21;
LABEL_5:
    sub_258AED428(v19, &qword_27F96EBF0, MEMORY[0x277D83D88]);
    swift_storeEnumTagMultiPayload();
    v35 = type metadata accessor for MomentaryDatePickerFullView(255);
    v36 = sub_258AECE40();
    v37 = sub_258AECFD8(&qword_27F9717F8, type metadata accessor for MomentaryDatePickerFullView, &unk_258B2FDCC);
    v110 = v108;
    v111 = v35;
    v112 = v36;
    v113 = v37;
    swift_getOpaqueTypeConformance2();
    return sub_258B012A4();
  }

  v88 = a2;
  v87 = *(v33 + 32);
  v87(v31, v21, v22);
  sub_258B016E4();
  if (v34(v19, 1, v22) == 1)
  {
    (*(v33 + 8))(v31, v22);
    goto LABEL_5;
  }

  v85 = v33;
  v86 = v31;
  v84 = v22;
  v87(v104, v19, v22);
  v83 = v33 + 32;
  v39 = v89;
  v40 = *(v89 + 8);
  v42 = *(v89 + 16);
  v115 = *v89;
  v41 = v115;
  v114 = *(v89 + 24);
  v43 = swift_allocObject();
  v44 = *(v39 + 16);
  *(v43 + 16) = *v39;
  *(v43 + 32) = v44;
  *(v43 + 48) = *(v39 + 32);
  MEMORY[0x28223BE20](v43);
  v82 = v32;
  sub_2589DE784(&v115, &v110);

  sub_258AED3B4(&v114, &v110, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8], sub_258A00D6C);
  v45 = v93;
  sub_258B02174();
  v110 = v41;
  v111 = v40;
  v89 = v42;
  v112 = v42;
  sub_258AED020(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  v47 = v46;
  MEMORY[0x259C92900](&v109);
  if (v109 == 1)
  {
    v48 = sub_258B01FC4();
  }

  else
  {
    v48 = sub_258B02044();
  }

  v49 = v48;
  KeyPath = swift_getKeyPath();
  v110 = v49;
  v51 = sub_258B00864();
  v52 = v94;
  (*(v95 + 32))(v94, v45, v96);
  v53 = (v52 + *(v92 + 36));
  *v53 = KeyPath;
  v53[1] = v51;
  v110 = v41;
  v111 = v40;
  v112 = v89;
  MEMORY[0x259C92900](&v109, v47);
  LOBYTE(v51) = v109 == 1;
  v54 = v103;
  sub_258AED2E4(v52, v103, sub_258AECDD8);
  *(v54 + *(v108 + 36)) = v51;
  v109 = v114;
  sub_258A00D6C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v95 = v110;
  v94 = v111;
  LODWORD(v96) = v112;
  v55 = v85;
  v56 = *(v85 + 16);
  v57 = v90;
  v58 = v84;
  v56(v90, v86, v84);
  v59 = v91;
  v56(v91, v104, v58);
  v61 = v100;
  v60 = v101;
  v62 = v98;
  (*(v100 + 16))(v98, v82, v101);
  v63 = *(v55 + 80);
  v64 = (v63 + 16) & ~v63;
  v65 = (v24 + v63 + v64) & ~v63;
  v66 = (v24 + *(v61 + 80) + v65) & ~*(v61 + 80);
  v67 = swift_allocObject();
  v68 = v67 + v64;
  v69 = v57;
  v70 = v58;
  v71 = v87;
  v87(v68, v69, v58);
  v71(v67 + v65, v59, v58);
  (*(v61 + 32))(v67 + v66, v62, v60);
  v72 = type metadata accessor for MomentaryDatePickerFullView(0);
  v79 = sub_258AECE40();
  v80 = sub_258AECFD8(&qword_27F9717F8, type metadata accessor for MomentaryDatePickerFullView, &unk_258B2FDCC);
  v73 = v99;
  v74 = v108;
  v75 = v103;
  sub_258B01E94();

  sub_258AED1E8(v75);
  v76 = v102;
  v77 = v105;
  (*(v102 + 16))(v107, v73, v105);
  swift_storeEnumTagMultiPayload();
  v110 = v74;
  v111 = v72;
  v112 = v79;
  v113 = v80;
  swift_getOpaqueTypeConformance2();
  sub_258B012A4();
  (*(v76 + 8))(v73, v77);
  v78 = *(v85 + 8);
  v78(v104, v70);
  return (v78)(v86, v70);
}

void sub_258AEC2B4(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_258AFFF74();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1);
  v48 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_258AFFF24();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_258AFFF34();
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258AFFFD4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v45 = sub_258B00084();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_258B01714();
  MEMORY[0x259C90120](v21);
  sub_258AFFF14();
  sub_258AFFF04();
  (*(v46 + 8))(v5, v47);
  sub_258AFFEC4();
  (*(v6 + 8))(v8, v44);
  v22 = *(v10 + 8);
  v22(v13, v9);
  v23 = v48;
  sub_258AFFF64();
  sub_258AFFFB4();
  (*(v49 + 8))(v23, v50);
  v22(v16, v9);
  sub_258AECFD8(&qword_27F9702C8, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_258B00064();
  v22(v18, v9);
  v24 = (*(v43 + 8))(v20, v45);
  v52 = v54;
  v53 = v55;
  sub_2589BFF58(v24, v25, v26);
  v27 = sub_258B01B44();
  v29 = v28;
  LOBYTE(v8) = v30;
  sub_258B018F4();
  v31 = sub_258B01AE4();
  v33 = v32;
  LOBYTE(v18) = v34;

  sub_2589BFFAC(v27, v29, v8 & 1);

  sub_258B01994();
  v35 = sub_258B01A94();
  v37 = v36;
  LOBYTE(v8) = v38;
  v40 = v39;
  sub_2589BFFAC(v31, v33, v18 & 1);

  v41 = v51;
  *v51 = v35;
  v41[1] = v37;
  *(v41 + 16) = v8 & 1;
  v41[3] = v40;
}

void sub_258AEC7AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_258AED020(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  sub_258AED27C(0);
  v12 = v11;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  sub_258A3F24C(0);
  v45 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_258B00084();
  sub_258AECFD8(&qword_27F96F0D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_258B02A74())
  {
    v22 = *(v21 - 8);
    v43 = v10;
    v44 = a3;
    v23 = v22;
    v24 = *(v22 + 16);
    v24(v17, a1, v21);
    v24(&v17[*(v12 + 48)], a2, v21);
    sub_258AED34C(v17, v15, sub_258AED27C);
    v25 = *(v12 + 48);
    v26 = v20;
    v27 = *(v23 + 32);
    v42 = v12;
    v28 = v26;
    v27();
    v29 = *(v23 + 8);
    v29(&v15[v25], v21);
    sub_258AED2E4(v17, v15, sub_258AED27C);
    (v27)(v28 + *(v45 + 36), &v15[*(v42 + 48)], v21);
    v29(v15, v21);
    v30 = v43;
    sub_258B01704();
    v31 = type metadata accessor for MomentaryDatePickerFullView(0);
    v32 = v31[7];
    *(a4 + v32) = swift_getKeyPath();
    v33 = MEMORY[0x277CDF458];
    sub_258AED020(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v34 = v31[8];
    *(a4 + v34) = swift_getKeyPath();
    sub_258AED020(0, &qword_27F96C968, MEMORY[0x277CDD848], v33);
    swift_storeEnumTagMultiPayload();
    v35 = v31[9];
    *(a4 + v35) = swift_getKeyPath();
    sub_258AED020(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, v33);
    swift_storeEnumTagMultiPayload();
    v36 = v28;
    sub_258AED34C(v28, a4, sub_258A3F24C);
    v37 = MEMORY[0x277CC9578];
    v38 = MEMORY[0x277CE11F8];
    sub_258AED3B4(v30, a4 + v31[5], &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8], sub_258AED020);
    v39 = a4 + v31[6];
    MEMORY[0x259C92900](v46);
    sub_258AED428(v30, &qword_27F96EA60, v38);
    sub_258AED49C(v36);
    sub_258AED020(0, &qword_27F96E968, v37, MEMORY[0x277CE10B8]);
    *(v39 + *(v40 + 28)) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_258AECCCC(uint64_t a1)
{
  if (!qword_27F9717D0)
  {
    sub_258AED668(255, &qword_27F9717D8, sub_258AECDD8, MEMORY[0x277CE0780], MEMORY[0x277CDFAB8]);
    type metadata accessor for MomentaryDatePickerFullView(255);
    sub_258AECE40();
    sub_258AECFD8(&qword_27F9717F8, type metadata accessor for MomentaryDatePickerFullView, &unk_258B2FDCC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9717D0);
    }
  }
}

void sub_258AECDD8(uint64_t a1)
{
  if (!qword_27F9717E0)
  {
    sub_258A8773C();
    sub_2589EDB9C(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9717E0);
    }
  }
}

unint64_t sub_258AECE40()
{
  result = qword_27F9717E8;
  if (!qword_27F9717E8)
  {
    sub_258AED668(255, &qword_27F9717D8, sub_258AECDD8, MEMORY[0x277CE0780], MEMORY[0x277CDFAB8]);
    sub_258AECEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9717E8);
  }

  return result;
}

unint64_t sub_258AECEF8()
{
  result = qword_27F9717F0;
  if (!qword_27F9717F0)
  {
    sub_258AECDD8(255);
    sub_258AECFD8(&qword_27F96E060, sub_258A8773C, MEMORY[0x277CDF028]);
    sub_258AECFD8(&qword_27F96D730, sub_2589EDB9C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9717F0);
  }

  return result;
}

uint64_t sub_258AECFD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258AED020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258AED0FC(uint64_t a1@<X8>)
{
  v3 = *(sub_258B00084() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(sub_258B01724() - 8);
  v9 = v1 + ((v7 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  sub_258AEC7AC(v1 + v5, v1 + v7, v9, a1);
}

uint64_t sub_258AED1E8(uint64_t a1)
{
  sub_258AED668(0, &qword_27F9717D8, sub_258AECDD8, MEMORY[0x277CE0780], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258AED27C(uint64_t a1)
{
  if (!qword_27F971800)
  {
    sub_258B00084();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971800);
    }
  }
}

uint64_t sub_258AED2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AED34C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AED3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_258AED428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_258AED020(0, a2, MEMORY[0x277CC9578], a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258AED49C(uint64_t a1)
{
  sub_258A3F24C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258AED4F8()
{
  result = qword_27F971808;
  if (!qword_27F971808)
  {
    sub_258AED668(255, &qword_27F971810, sub_258AECCCC, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
    sub_258AED668(255, &qword_27F9717D8, sub_258AECDD8, MEMORY[0x277CE0780], MEMORY[0x277CDFAB8]);
    type metadata accessor for MomentaryDatePickerFullView(255);
    sub_258AECE40();
    sub_258AECFD8(&qword_27F9717F8, type metadata accessor for MomentaryDatePickerFullView, &unk_258B2FDCC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971808);
  }

  return result;
}

void sub_258AED668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t Symbol.image.getter()
{
  v1 = *v0;
  if (v1 < 6 || v1 == 8 || v1 == 7)
  {

    return sub_258B020A4();
  }

  else
  {
    type metadata accessor for MentalHealthUIRepresentative();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];

    return sub_258B020D4();
  }
}

uint64_t Symbol.name.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 0x7261646E656C6163;
    v6 = 0x72616D6B63656863;
    if (v1 != 2)
    {
      v6 = 0x6B636F6C63;
    }

    if (*v0)
    {
      v5 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
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
    v2 = 0xD00000000000001FLL;
    if (v1 != 7)
    {
      v2 = 0xD000000000000014;
    }

    if (v1 == 6)
    {
      v2 = 0xD000000000000019;
    }

    v3 = 0xD000000000000011;
    if (v1 != 4)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

id Symbol.bundle.getter()
{
  if (*v0 != 6)
  {
    return 0;
  }

  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  return [objc_opt_self() bundleForClass_];
}

uint64_t Symbol.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

unint64_t sub_258AEDAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971818;
  if (!qword_27F971818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971818);
  }

  return result;
}

uint64_t sub_258AEDB18(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 8 * v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_258AA936C(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_258AA936C((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 8 * v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_258AEDC70@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for LabelsPicker(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = v5;
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF17C0(0);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF20AC(0);
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  MEMORY[0x28223BE20](v10);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_258B011A4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_258AF2774(0, &qword_27F971908, sub_258AF1854, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_258AEE19C(v1, &v9[*(v13 + 44)]);
  v14 = v1 + *(v3 + 48);
  v33 = v1;
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v46[0]) = v15;
  v46[1] = v16;
  sub_258AF2918(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v32 = BYTE8(v44);
  v38 = type metadata accessor for LabelsPicker;
  v35 = v6;
  sub_258AF27E0(v1, v6, type metadata accessor for LabelsPicker);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v36 = type metadata accessor for LabelsPicker;
  sub_258AF28B0(v6, v18 + v17, type metadata accessor for LabelsPicker);
  sub_258AF21E8(0);
  v20 = v19;
  v31 = sub_258AF1EA4(&qword_27F971900, sub_258AF17C0, MEMORY[0x277CE1198]);
  v21 = type metadata accessor for ShowAllLabelsPicker(255);
  v22 = sub_258AF1EA4(&qword_27F9718F8, type metadata accessor for ShowAllLabelsPicker, &unk_258B326D4);
  v43 = v21;
  *&v44 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v39;
  sub_258B01E94();

  sub_258AF2714(v9, sub_258AF17C0);
  v24 = v33;
  v43 = *(v33 + 16);
  v44 = *(v33 + 24);
  sub_258AF1508(0, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](v46);
  v25 = v35;
  sub_258AF27E0(v24, v35, v38);
  v26 = swift_allocObject();
  sub_258AF28B0(v25, v26 + v17, v36);
  sub_258A1E3AC(0);
  v43 = v23;
  *&v44 = v20;
  *(&v44 + 1) = v31;
  v45 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_258AF264C();
  v27 = v40;
  v28 = v34;
  sub_258B01EF4();

  return (*(v41 + 8))(v28, v27);
}

uint64_t sub_258AEE19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  sub_258AF18EC(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = type metadata accessor for ExpandableInfoSectionHeader(0);
  v8 = MEMORY[0x28223BE20](v7);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v26 - v10);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v12 = sub_258AFFD94();
  v14 = v13;
  v15 = sub_258AFFD94();
  *v11 = v12;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v16;
  v17 = *(v7 + 24);
  *(v11 + v17) = swift_getKeyPath();
  sub_258AF1508(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v18 = v11 + *(v7 + 28);
  v31 = 0;
  sub_258B02114();
  v19 = v33;
  *v18 = v32;
  *(v18 + 1) = v19;
  *v6 = sub_258B011A4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  sub_258AF2774(0, &qword_27F971918, sub_258AF1980, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_258AEE574(v27, &v6[*(v20 + 44)]);
  v21 = v28;
  sub_258AF27E0(v11, v28, type metadata accessor for ExpandableInfoSectionHeader);
  v22 = v30;
  sub_258AF27E0(v6, v30, sub_258AF18EC);
  v23 = v29;
  sub_258AF27E0(v21, v29, type metadata accessor for ExpandableInfoSectionHeader);
  sub_258AF19BC(0, &qword_27F971840, type metadata accessor for ExpandableInfoSectionHeader, sub_258AF18EC);
  sub_258AF27E0(v22, v23 + *(v24 + 48), sub_258AF18EC);
  sub_258AF2714(v6, sub_258AF18EC);
  sub_258AF2714(v11, type metadata accessor for ExpandableInfoSectionHeader);
  sub_258AF2714(v22, sub_258AF18EC);
  return sub_258AF2714(v21, type metadata accessor for ExpandableInfoSectionHeader);
}

uint64_t sub_258AEE574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for AssociationSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LabelsPicker(0);
  v6 = v5 - 8;
  v63 = *(v5 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v5);
  sub_258AF1C38(0);
  v66 = v8;
  v67 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v64 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF1B1C(0);
  v68 = v10 - 8;
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF1AF4(0);
  v72 = v12 - 8;
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v74 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v62 - v16;
  MEMORY[0x28223BE20](v15);
  v73 = &v62 - v17;
  sub_258AF1A38(0);
  v19 = v18 - 8;
  v20 = MEMORY[0x28223BE20](v18);
  v71 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  v24 = *(a1 + 8);
  v25 = (a1 + *(v6 + 44));
  v27 = *v25;
  v26 = v25[1];
  *v79 = v27;
  *&v79[8] = v26;
  sub_258AF1508(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  sub_258B003E4();
  sub_258B02124();
  *v79 = v24;
  sub_2589FCC90(v77);
  v28 = *v79;
  *v79 = *(a1 + 16);
  *&v79[8] = *(a1 + 24);
  sub_258AF1508(0, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
  sub_258B02334();
  v29 = v77;
  v62 = v78;
  *&v23[*(v19 + 68)] = swift_getKeyPath();
  sub_258AF1508(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v23 = v28;
  *(v23 + 1) = v29;
  *(v23 + 1) = v62;
  v23[32] = 1;
  *(v23 + 40) = xmmword_258B35270;
  *(v23 + 7) = sub_258AEEEB0;
  *(v23 + 8) = 0;
  *(v23 + 9) = sub_258AEEF00;
  *(v23 + 10) = 0;
  sub_258AF27E0(a1, &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LabelsPicker);
  v30 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v31 = swift_allocObject();
  sub_258AF28B0(&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for LabelsPicker);
  v76 = a1;
  sub_258AF1CCC(0, &qword_27F971890, sub_258AF1D40, sub_258A563B0);
  sub_258AF1EEC();
  v32 = v64;
  sub_258B02174();
  *v79 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5E00);
  sub_258AF2918(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5E20);
  sub_258AF1EA4(&qword_27F971920, sub_258AF1C38, MEMORY[0x277CDF028]);
  v33 = v65;
  v34 = v66;
  sub_258B01DD4();

  (*(v67 + 8))(v32, v34);
  LOBYTE(v34) = sub_258B01884();
  v35 = v69;
  sub_258AC1B28(v69);
  sub_258AF2714(v35, type metadata accessor for AssociationSelectionPhaseSpecs);
  sub_258B00654();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_258AF1BA8(0);
  v45 = v33 + *(v44 + 36);
  *v45 = v34;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  LOBYTE(v34) = sub_258B018A4();
  sub_258AC1B28(v35);
  sub_258AF2714(v35, type metadata accessor for AssociationSelectionPhaseSpecs);
  sub_258B00654();
  v46 = v33 + *(v68 + 44);
  *v46 = v34;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48;
  *(v46 + 24) = v49;
  *(v46 + 32) = v50;
  *(v46 + 40) = 0;
  sub_258B02504();
  sub_258B00C94();
  v51 = v70;
  sub_258AF28B0(v33, v70, sub_258AF1B1C);
  v52 = (v51 + *(v72 + 44));
  v53 = v83;
  v52[4] = v82;
  v52[5] = v53;
  v52[6] = v84;
  v54 = *&v79[16];
  *v52 = *v79;
  v52[1] = v54;
  v55 = v81;
  v52[2] = v80;
  v52[3] = v55;
  v56 = v73;
  sub_258AF28B0(v51, v73, sub_258AF1AF4);
  v57 = v71;
  sub_258AF27E0(v23, v71, sub_258AF1A38);
  v58 = v74;
  sub_258AF27E0(v56, v74, sub_258AF1AF4);
  v59 = v75;
  sub_258AF27E0(v57, v75, sub_258AF1A38);
  sub_258AF19BC(0, &qword_27F971858, sub_258AF1A38, sub_258AF1AF4);
  sub_258AF27E0(v58, v59 + *(v60 + 48), sub_258AF1AF4);
  sub_258AF2714(v56, sub_258AF1AF4);
  sub_258AF2714(v23, sub_258AF1A38);
  sub_258AF2714(v58, sub_258AF1AF4);
  return sub_258AF2714(v57, sub_258AF1A38);
}

uint64_t sub_258AEEEB0(void *a1)
{
  v1 = HKUILocalizedStringForStateOfMindLabel();
  v2 = sub_258B02B14();

  return v2;
}

uint64_t sub_258AEEF00(uint64_t *a1)
{
  sub_258AF2918(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_258B2BE60;
  *(v1 + 32) = 0x6C6562614CLL;
  *(v1 + 40) = 0xE500000000000000;
  v2 = NSStringFromHKStateOfMindLabel();
  v3 = sub_258B02B14();
  v5 = v4;

  *(v1 + 48) = v3;
  *(v1 + 56) = v5;
  return v1;
}

uint64_t sub_258AEEFB0(uint64_t a1)
{
  type metadata accessor for LabelsPicker(0);
  sub_258AF2918(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

void sub_258AEF03C(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B006A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258B019F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_258B01004();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  sub_258AF2774(0, &qword_27F971928, sub_258AF1E08, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_258AEF2D4(a2 + *(v12 + 44));
  sub_258B018F4();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0A10], v8);
  v13 = sub_258B01A14();

  (*(v9 + 8))(v11, v8);
  KeyPath = swift_getKeyPath();
  sub_258AF1D40(0);
  v16 = (a2 + *(v15 + 36));
  *v16 = KeyPath;
  v16[1] = v13;
  v17 = *a1;
  type metadata accessor for LabelsPicker(0);
  sub_258AC14E8(v7);
  v18 = sub_258A82B60(v7, v17);
  (*(v5 + 8))(v7, v4);
  sub_258AF1CCC(0, &qword_27F971890, sub_258AF1D40, sub_258A563B0);
  *(a2 + *(v19 + 36)) = v18;
}

double sub_258AEF2D4@<D0>(uint64_t a1@<X8>)
{
  sub_2589E0B98(0);
  v3 = v2;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v25[-v7];
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v27 = sub_258AFFD94();
  v28 = v9;
  sub_2589BFF58(v27, v9, v10);
  v11 = sub_258B01B44();
  v13 = v12;
  v26 = v14;
  v16 = v15;
  v17 = sub_258B02084();
  v18 = (v8 + *(v3 + 36));
  sub_258AF1508(0, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v20 = *(v19 + 28);
  v21 = *MEMORY[0x277CE1050];
  v22 = sub_258B020B4();
  (*(*(v22 - 8) + 104))(v18 + v20, v21, v22);
  *v18 = swift_getKeyPath();
  *v8 = v17;
  sub_258AF27E0(v8, v6, sub_2589E0B98);
  *a1 = v11;
  *(a1 + 8) = v13;
  LOBYTE(v20) = v26 & 1;
  *(a1 + 16) = v26 & 1;
  *(a1 + 24) = v16;
  sub_258AF1E3C(0);
  sub_258AF27E0(v6, a1 + *(v23 + 48), sub_2589E0B98);
  sub_2589E36D4(v11, v13, v20);
  sub_258B003E4();
  sub_258AF2714(v8, sub_2589E0B98);
  sub_258AF2714(v6, sub_2589E0B98);
  sub_2589BFFAC(v11, v13, v20);

  return result;
}

uint64_t sub_258AEF5A0(uint64_t a1)
{
  v2 = type metadata accessor for ShowAllLabelsPicker(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B03084();
  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = v5;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  sub_258AF1508(0, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
  sub_258B02334();
  v8 = v16;
  v9 = v17;
  *v4 = v7;
  *(v4 + 1) = v8;
  *(v4 + 1) = v9;
  v10 = v2[6];
  *&v4[v10] = swift_getKeyPath();
  v11 = MEMORY[0x277CDF458];
  sub_258AF1508(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v12 = v2[7];
  *&v4[v12] = swift_getKeyPath();
  sub_258AF1508(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, v11);
  swift_storeEnumTagMultiPayload();
  v13 = &v4[v2[8]];
  v16 = MEMORY[0x277D84F90];
  sub_258A1E3AC(0);
  sub_258B02114();
  v14 = v19;
  *v13 = v18;
  *(v13 + 1) = v14;
  sub_258AF1EA4(&qword_27F9718F8, type metadata accessor for ShowAllLabelsPicker, &unk_258B326D4);
  sub_258B01E04();
  return sub_258AF2714(v4, type metadata accessor for ShowAllLabelsPicker);
}

double sub_258AEF7E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v10[2] = a3;
  sub_258B003E4();
  v5 = sub_258AEDB18(sub_258AF26F4, v10, v4);
  v6 = (a3 + *(type metadata accessor for LabelsPicker(0) + 36));
  v8 = v6[1];
  v11 = *v6;
  v7 = v11;
  v12 = v8;
  sub_258AF1508(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  sub_258B003E4();

  sub_258B02124();
  sub_2589FCC90(v5);
  v10[4] = v7;
  v10[5] = v8;
  v10[3] = v13;
  sub_258B02134();

  return result;
}

BOOL sub_258AEF904(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  while (v4)
  {
    v6 = *v5++;
    --v4;
    if (v6 == v2)
    {
      return 0;
    }
  }

  type metadata accessor for LabelsPicker(0);
  sub_258AF1508(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  sub_258B02124();
  v8 = *(v12 + 16);
  v9 = 32;
  do
  {
    v7 = v8 == 0;
    if (!v8)
    {
      break;
    }

    v10 = *(v12 + v9);
    v9 += 8;
    --v8;
  }

  while (v10 != v2);

  return v7;
}

void sub_258AEF9FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_258AE9B2C(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_258AEFA68(v4);
  *a1 = v2;
}

void sub_258AEFA68(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_258B03404();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Label(0);
        v5 = sub_258B02CA4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_258AEFCA8(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_258AEFB64(0, v2, 1, a1);
  }
}

void sub_258AEFB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = a1 - a3;
LABEL_5:
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v8 = HKUILocalizedStringForStateOfMindLabel();
      sub_258B02B14();

      v9 = HKUILocalizedStringForStateOfMindLabel();
      sub_258B02B14();

      sub_2589BFF58(v10, v11, v12);
      v13 = sub_258B030F4();

      if (v13 != -1)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 1;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      *v6 = v6[1];
      v6[1] = v14;
      --v6;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_258AEFCA8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v9 + 1 < v8)
      {
        v107 = v8;
        v13 = *v6 + 8 * v9 + 16;
        v14 = HKUILocalizedStringForStateOfMindLabel();
        sub_258B02B14();

        v15 = HKUILocalizedStringForStateOfMindLabel();
        sub_258B02B14();
        v9 = v16;

        sub_2589BFF58(v17, v18, v19);
        v20 = sub_258B030F4();

        v102 = v11;
        v21 = v11 + 2;
        while (1)
        {
          v12 = v107;
          if (v107 == v21)
          {
            break;
          }

          v22 = HKUILocalizedStringForStateOfMindLabel();
          sub_258B02B14();

          v23 = HKUILocalizedStringForStateOfMindLabel();
          v9 = sub_258B02B14();

          v24 = sub_258B030F4();

          ++v21;
          v13 += 8;
          if ((v20 == -1) == (v24 != -1))
          {
            v12 = v21 - 1;
            break;
          }
        }

        v25 = v20 == -1;
        v6 = a3;
        v11 = v102;
        v7 = a1;
        if (v25)
        {
          if (v12 < v102)
          {
            __break(1u);
LABEL_122:
            __break(1u);
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
            return;
          }

          if (v102 < v12)
          {
            v26 = v12 - 1;
            v27 = v102;
            do
            {
              if (v27 != v26)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v28 = *(v30 + 8 * v27);
                *(v30 + 8 * v27) = *(v30 + 8 * v26);
                *(v30 + 8 * v26) = v28;
              }
            }

            while (++v27 < v26--);
          }
        }
      }

      v31 = v6[1];
      if (v12 < v31)
      {
        if (__OFSUB__(v12, v11))
        {
          goto LABEL_117;
        }

        if (v12 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_118;
          }

          if (v11 + a4 >= v31)
          {
            v32 = v6[1];
          }

          else
          {
            v32 = v11 + a4;
          }

          if (v32 < v11)
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v12 != v32)
          {
            v104 = v5;
            v33 = *v6;
            v34 = v11;
            v35 = *v6 + 8 * v12 - 8;
            v103 = v34;
            v36 = v34 - v12;
            v106 = v32;
            do
            {
              v108 = v12;
              v37 = v36;
              v38 = v35;
              do
              {
                v39 = HKUILocalizedStringForStateOfMindLabel();
                sub_258B02B14();

                v40 = HKUILocalizedStringForStateOfMindLabel();
                sub_258B02B14();
                v9 = v41;

                sub_2589BFF58(v42, v43, v44);
                v45 = sub_258B030F4();

                if (v45 != -1)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_122;
                }

                v46 = *v38;
                *v38 = v38[1];
                v38[1] = v46;
                --v38;
              }

              while (!__CFADD__(v37++, 1));
              v12 = v108 + 1;
              v35 += 8;
              --v36;
            }

            while (v108 + 1 != v106);
            v12 = v106;
            v5 = v104;
            v6 = a3;
            v11 = v103;
            v7 = a1;
          }
        }
      }

      if (v12 < v11)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_258A74C78(0, *(v10 + 2) + 1, 1, v10);
      }

      v49 = *(v10 + 2);
      v48 = *(v10 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v10 = sub_258A74C78((v48 > 1), v49 + 1, 1, v10);
      }

      *(v10 + 2) = v50;
      v51 = &v10[16 * v49];
      *(v51 + 4) = v11;
      *(v51 + 5) = v12;
      v9 = v12;
      v52 = *v7;
      if (!*v7)
      {
        goto LABEL_126;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v54 = *(v10 + 4);
            v55 = *(v10 + 5);
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_58:
            if (v57)
            {
              goto LABEL_105;
            }

            v70 = &v10[16 * v50];
            v72 = *v70;
            v71 = *(v70 + 1);
            v73 = __OFSUB__(v71, v72);
            v74 = v71 - v72;
            v75 = v73;
            if (v73)
            {
              goto LABEL_108;
            }

            v76 = &v10[16 * v53 + 32];
            v78 = *v76;
            v77 = *(v76 + 1);
            v64 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v64)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v74, v79))
            {
              goto LABEL_112;
            }

            if (v74 + v79 >= v56)
            {
              if (v56 < v79)
              {
                v53 = v50 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          v80 = &v10[16 * v50];
          v82 = *v80;
          v81 = *(v80 + 1);
          v64 = __OFSUB__(v81, v82);
          v74 = v81 - v82;
          v75 = v64;
LABEL_72:
          if (v75)
          {
            goto LABEL_107;
          }

          v83 = &v10[16 * v53];
          v85 = *(v83 + 4);
          v84 = *(v83 + 5);
          v64 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v64)
          {
            goto LABEL_110;
          }

          if (v86 < v74)
          {
            goto LABEL_3;
          }

LABEL_79:
          v91 = v53 - 1;
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_119;
          }

          if (!*v6)
          {
            goto LABEL_123;
          }

          v92 = *&v10[16 * v91 + 32];
          v93 = *&v10[16 * v53 + 40];
          sub_258AF03C4((*v6 + 8 * v92), (*v6 + 8 * *&v10[16 * v53 + 32]), (*v6 + 8 * v93), v52);
          if (v5)
          {
            goto LABEL_99;
          }

          if (v93 < v92)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_258AE8CC8(v10);
          }

          if (v91 >= *(v10 + 2))
          {
            goto LABEL_102;
          }

          v94 = &v10[16 * v91];
          *(v94 + 4) = v92;
          *(v94 + 5) = v93;
          sub_258AE8C3C(v53);
          v50 = *(v10 + 2);
          if (v50 <= 1)
          {
            goto LABEL_3;
          }
        }

        v58 = &v10[16 * v50 + 32];
        v59 = *(v58 - 64);
        v60 = *(v58 - 56);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_103;
        }

        v63 = *(v58 - 48);
        v62 = *(v58 - 40);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_104;
        }

        v65 = &v10[16 * v50];
        v67 = *v65;
        v66 = *(v65 + 1);
        v64 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v64)
        {
          goto LABEL_106;
        }

        v64 = __OFADD__(v56, v68);
        v69 = v56 + v68;
        if (v64)
        {
          goto LABEL_109;
        }

        if (v69 >= v61)
        {
          v87 = &v10[16 * v53 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v64 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v64)
          {
            goto LABEL_113;
          }

          if (v56 < v90)
          {
            v53 = v50 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_58;
      }

LABEL_3:
      v8 = v6[1];
      v7 = a1;
      if (v9 >= v8)
      {
        goto LABEL_89;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_89:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_127;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_120:
    v10 = sub_258AE8CC8(v10);
  }

  v95 = *(v10 + 2);
  if (v95 >= 2)
  {
    while (*v6)
    {
      v96 = v10;
      v10 = (v95 - 1);
      v97 = *&v96[16 * v95];
      v98 = *&v96[16 * v95 + 24];
      sub_258AF03C4((*v6 + 8 * v97), (*v6 + 8 * *&v96[16 * v95 + 16]), (*v6 + 8 * v98), v9);
      if (v5)
      {
        goto LABEL_99;
      }

      if (v98 < v97)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_258AE8CC8(v96);
      }

      if (v95 - 2 >= *(v96 + 2))
      {
        goto LABEL_115;
      }

      v99 = &v96[16 * v95];
      *v99 = v97;
      *(v99 + 1) = v98;
      sub_258AE8C3C(v95 - 1);
      v10 = v96;
      v95 = *(v96 + 2);
      if (v95 <= 1)
      {
        goto LABEL_99;
      }
    }

    goto LABEL_124;
  }

LABEL_99:
}

uint64_t sub_258AF03C4(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[8 * v11] <= a4)
    {
      v23 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v23;
    }

    v24 = a2;
    v39 = &v14[8 * v11];
    if (v9 >= 8 && a2 > v5)
    {
      v37 = v5;
      do
      {
        v38 = v24;
        v25 = v24 - 8;
        v4 -= 8;
        v26 = v39;
        while (1)
        {
          v27 = v14;
          v28 = v4 + 8;
          v26 -= 8;
          v29 = v25;
          v30 = HKUILocalizedStringForStateOfMindLabel();
          sub_258B02B14();

          v31 = HKUILocalizedStringForStateOfMindLabel();
          sub_258B02B14();

          sub_2589BFF58(v32, v33, v34);
          v35 = sub_258B030F4();

          if (v35 == -1)
          {
            break;
          }

          if (v28 != v39)
          {
            *v4 = *v26;
          }

          v4 -= 8;
          v39 = v26;
          v14 = v27;
          v25 = v29;
          if (v26 <= v27)
          {
            v39 = v26;
            v24 = v38;
            goto LABEL_39;
          }
        }

        if (v28 != v38)
        {
          *v4 = *v29;
        }

        v14 = v27;
        if (v39 <= v27)
        {
          break;
        }

        v24 = v29;
      }

      while (v29 > v37);
      v24 = v29;
    }
  }

  else
  {
    v12 = a2;
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v39 = &a4[8 * v8];
    v14 = a4;
    if (v6 >= 8 && v12 < v4)
    {
      while (1)
      {
        v15 = HKUILocalizedStringForStateOfMindLabel();
        sub_258B02B14();

        v16 = HKUILocalizedStringForStateOfMindLabel();
        sub_258B02B14();

        sub_2589BFF58(v17, v18, v19);
        v20 = sub_258B030F4();

        if (v20 != -1)
        {
          break;
        }

        v21 = v12;
        v22 = v5 == v12;
        v12 += 8;
        if (!v22)
        {
          goto LABEL_13;
        }

LABEL_14:
        v5 += 8;
        if (v14 >= v39 || v12 >= v4)
        {
          v24 = v5;
          goto LABEL_39;
        }
      }

      v21 = v14;
      v22 = v5 == v14;
      v14 += 8;
      if (v22)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v5 = *v21;
      goto LABEL_14;
    }

    v24 = v5;
  }

LABEL_39:
  if (v24 != v14 || v24 >= &v14[(v39 - v14 + (v39 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v24, v14, 8 * ((v39 - v14) / 8));
  }

  return 1;
}

uint64_t sub_258AF0754(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_258B003E4();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_258AF0CD4(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_258AF084C(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v54 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {
              v38 = sub_258B003E4();
              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v48 << 9) | (8 * v18)));
        sub_258B03514();
        MEMORY[0x259C93B20](v5);
        v19 = sub_258B03554();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v51 = v46;
    v52 = v48;
    v53 = v11;
    v50[0] = v47;
    v50[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;
    v22 = sub_258B003E4();
    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v6 + 56), v5);
      v41 = sub_258AF0DE0(v40, v14, v6, v2, v50);

      MEMORY[0x259C945C0](v40, -1, -1);
      v4 = v50[0];
      v46 = v51;
      v48 = v52;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v14;
    v44 = &v42;
    MEMORY[0x28223BE20](v22);
    v14 = &v42 - v23;
    memcpy(&v42 - v23, (v6 + 56), v5);
    v24 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v48 << 9) | (8 * v29)));
      sub_258B03514();
      v2 = v49;
      MEMORY[0x259C93B20](v5);
      v30 = sub_258B03554();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_258AF0FB8(v14, v43, v45, v6);
LABEL_41:
    v38 = v4;
LABEL_43:
    sub_258A8CFE8(v38);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t sub_258AF0CD4(uint64_t a1)
{
  v3 = *v1;
  sub_258B03514();
  MEMORY[0x259C93B20](a1);
  v4 = sub_258B03554();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_258AE7544();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_258AF11D0(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_258AF0DE0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_258B03514();
    MEMORY[0x259C93B20](v17);
    result = sub_258B03554();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 8 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 8 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_258AF0FB8(v7, a2, v9, a3);
}

uint64_t sub_258AF0FB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_258AF1A58(0, &qword_27F9717C0, MEMORY[0x277D84098]);
  result = sub_258B03184();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_258B03514();
    MEMORY[0x259C93B20](v16);
    result = sub_258B03554();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_258AF11D0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_258B03124();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_258B03514();
        MEMORY[0x259C93B20](v10);
        v11 = sub_258B03554() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_258AF1378(uint64_t a1, uint64_t a2)
{
  sub_258B003E4();
  v3 = sub_258AE9BC8(a2);

  v4 = sub_258B003E4();
  v5 = sub_258AE9BC8(v4);

  if (*(v5 + 16) > *(v3 + 16) >> 3)
  {
    v3 = sub_258AF084C(v5, v3);

    v7 = *(v3 + 16);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:

    v8 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v12 = v3;
  sub_258AF0754(v5);

  v7 = *(v3 + 16);
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = sub_258AE55F4(v7, 0, v6);
  v9 = sub_258AE9A2C(&v12, v8 + 4, v7, v3);
  v10 = v12;
  sub_258B003E4();
  sub_258A8CFE8(v10);
  if (v9 == v7)
  {

LABEL_7:
    v12 = v8;
    sub_258AEF9FC(&v12);
    return v12;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_258AF1508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for LabelsPicker(uint64_t a1)
{
  result = qword_27F971820;
  if (!qword_27F971820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AF15CC(uint64_t a1)
{
  sub_258A1E3AC(319);
  if (v1 <= 0x3F)
  {
    sub_258AF1508(319, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_258AF1508(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_258AF1508(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_258AF1508(319, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_258AF2918(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_258AF17C0(uint64_t a1)
{
  if (!qword_27F971830)
  {
    sub_258AF1854(255);
    sub_258AF1EA4(&qword_27F9718E0, sub_258AF1854, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971830);
    }
  }
}

void sub_258AF1890(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_258AF19BC(255, a3, a4, a5);
    v6 = sub_258B02574();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AF18EC(uint64_t a1)
{
  if (!qword_27F971848)
  {
    sub_258AF1980(255);
    sub_258AF1EA4(&qword_27F9718D8, sub_258AF1980, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971848);
    }
  }
}

void sub_258AF19BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_258AF1A58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Label(255);
    v7 = v6;
    v8 = sub_258AF1EA4(&qword_27F9704C8, type metadata accessor for Label, &unk_258B2B578);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258AF1B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258AF1BA8(uint64_t a1)
{
  if (!qword_27F971878)
  {
    sub_258AF1CCC(255, &qword_27F971880, sub_258AF1C38, MEMORY[0x277CDE470]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971878);
    }
  }
}

void sub_258AF1C38(uint64_t a1)
{
  if (!qword_27F971888)
  {
    sub_258AF1CCC(255, &qword_27F971890, sub_258AF1D40, sub_258A563B0);
    sub_258AF1EEC();
    v1 = sub_258B021B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971888);
    }
  }
}

void sub_258AF1CCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AF1D74(uint64_t a1)
{
  if (!qword_27F9718A0)
  {
    sub_258AF1E08(255);
    sub_258AF1EA4(&qword_27F9718B8, sub_258AF1E08, MEMORY[0x277CE14C0]);
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9718A0);
    }
  }
}

void sub_258AF1E3C(uint64_t a1)
{
  if (!qword_27F9718B0)
  {
    sub_2589E0B98(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9718B0);
    }
  }
}

uint64_t sub_258AF1EA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258AF1EEC()
{
  result = qword_27F9718C0;
  if (!qword_27F9718C0)
  {
    sub_258AF1CCC(255, &qword_27F971890, sub_258AF1D40, sub_258A563B0);
    sub_258AF1FCC();
    sub_258AF1EA4(&qword_27F96C930, sub_258A563B0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9718C0);
  }

  return result;
}

unint64_t sub_258AF1FCC()
{
  result = qword_27F9718C8;
  if (!qword_27F9718C8)
  {
    sub_258AF1D40(255);
    sub_258AF1EA4(&qword_27F9718D0, sub_258AF1D74, MEMORY[0x277CE1138]);
    sub_258AF1EA4(&qword_27F96C938, sub_2589BF83C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9718C8);
  }

  return result;
}

void sub_258AF20AC(uint64_t a1)
{
  if (!qword_27F9718E8)
  {
    sub_258AF17C0(255);
    sub_258AF21E8(255);
    sub_258AF1EA4(&qword_27F971900, sub_258AF17C0, MEMORY[0x277CE1198]);
    type metadata accessor for ShowAllLabelsPicker(255);
    sub_258AF1EA4(&qword_27F9718F8, type metadata accessor for ShowAllLabelsPicker, &unk_258B326D4);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9718E8);
    }
  }
}

void sub_258AF21E8(uint64_t a1)
{
  if (!qword_27F9718F0)
  {
    type metadata accessor for ShowAllLabelsPicker(255);
    sub_258AF1EA4(&qword_27F9718F8, type metadata accessor for ShowAllLabelsPicker, &unk_258B326D4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9718F0);
    }
  }
}

uint64_t sub_258AF229C()
{
  v1 = *(type metadata accessor for LabelsPicker(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258AEF5A0(v2);
}

uint64_t objectdestroyTm_24()
{
  v1 = type metadata accessor for LabelsPicker(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 28);
  sub_258AF1508(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v6 = *(type metadata accessor for AssociationSelectionPhaseSpecs(0) + 20);
    v7 = sub_258B00AA4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 32);
  sub_258AF1508(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B006A4();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_258AF25CC(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for LabelsPicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_258AEF7E8(a1, a2, v6);
}

unint64_t sub_258AF264C()
{
  result = qword_27F971910;
  if (!qword_27F971910)
  {
    sub_258A1E3AC(255);
    sub_258AF1EA4(&qword_27F96C4E0, type metadata accessor for Label, &unk_258B2B5BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971910);
  }

  return result;
}

uint64_t sub_258AF2714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258AF2774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_258B00974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_258AF27E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AF2848()
{
  v1 = *(type metadata accessor for LabelsPicker(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258AEEFB0(v2);
}

uint64_t sub_258AF28B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258AF2918(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258AF297C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258AF2A14(uint64_t a1)
{
  type metadata accessor for __HKStateOfMindReflectiveInterval(319);
  if (v1 <= 0x3F)
  {
    sub_258AF297C(319, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_258AF297C(319, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_258AF297C(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_258AF297C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_258AF2BBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C0024(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReflectiveIntervalPickerButtonView(0);
  sub_258AF8D28(v1 + *(v10 + 32), v9, sub_2589C0024);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_258B02E94();
    v13 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_258AF2DB8@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v78 = sub_258B00C34() - 8;
  MEMORY[0x28223BE20](v78);
  v80 = (&v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AF3634(0);
  v82 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0) - 8;
  v5 = MEMORY[0x28223BE20](v76);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = &v70 - v7;
  sub_258AF36E4(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF372C(0);
  v73 = v12 - 8;
  MEMORY[0x28223BE20](v12 - 8);
  v72 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF3754(0);
  v77 = v14 - 8;
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v17 = v1[3];
  v85 = *(v1 + 1);
  v86 = v17;
  v18 = MEMORY[0x277CE11F8];
  sub_258AF297C(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  sub_258B02334();
  v70 = v83;
  v19 = v84;
  type metadata accessor for ReflectiveIntervalPickerButtonView(0);
  v20 = type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], v18);
  sub_258B02334();
  *v11 = v16;
  *(v11 + 8) = v70;
  *(v11 + 3) = v19;
  v21 = v20[7];
  *&v11[v21] = swift_getKeyPath();
  v22 = MEMORY[0x277CDF458];
  sub_258AF297C(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v23 = v20[8];
  *&v11[v23] = swift_getKeyPath();
  sub_2589C0024(0);
  swift_storeEnumTagMultiPayload();
  v24 = v20[9];
  *&v11[v24] = swift_getKeyPath();
  sub_258AF297C(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, v22);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v24) = sub_258B018A4();
  v25 = v71;
  sub_258AC1BC4(v71);
  sub_258AF8D90(v25, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  sub_258B00654();
  v26 = &v11[*(v9 + 44)];
  *v26 = v24;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  LOBYTE(v24) = sub_258B018C4();
  v31 = v74;
  sub_258AC1BC4(v74);
  sub_258B00A84();
  sub_258AF8D90(v31, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  sub_258B00654();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v11;
  v41 = v72;
  sub_258AF7448(v40, v72, sub_258AF36E4);
  v42 = v41 + *(v73 + 44);
  *v42 = v24;
  *(v42 + 8) = v33;
  *(v42 + 16) = v35;
  *(v42 + 24) = v37;
  *(v42 + 32) = v39;
  *(v42 + 40) = 0;
  LOBYTE(v24) = sub_258B018D4();
  sub_258AC1BC4(v25);
  sub_258AF8D90(v25, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  sub_258B00654();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v75;
  sub_258AF7448(v41, v75, sub_258AF372C);
  v52 = v51 + *(v77 + 44);
  *v52 = v24;
  *(v52 + 8) = v44;
  *(v52 + 16) = v46;
  *(v52 + 24) = v48;
  *(v52 + 32) = v50;
  *(v52 + 40) = 0;
  v53 = sub_258B024F4();
  v55 = v54;
  if (_UISolariumEnabled())
  {
    v56 = 26.0;
  }

  else
  {
    v56 = 12.0;
  }

  sub_258AF8A50(0, &qword_27F971960, sub_258AF3754, sub_258AF74B0);
  v58 = v81;
  v59 = v81 + *(v57 + 36);
  v60 = *(v78 + 28);
  v61 = *MEMORY[0x277CE0118];
  v62 = sub_258B010C4();
  v63 = v80;
  (*(*(v62 - 8) + 104))(v80 + v60, v61, v62);
  *v63 = v56;
  v63[1] = v56;
  v64 = sub_258AF3478();
  v65 = v79;
  sub_258AF7448(v63, v79, MEMORY[0x277CDFC08]);
  v66 = v82;
  *(v65 + *(v82 + 60)) = v64;
  *(v65 + *(v66 + 64)) = 256;
  sub_258AF7448(v65, v59, sub_258AF3634);
  sub_258AF74B0(0);
  v68 = (v59 + *(v67 + 36));
  *v68 = v53;
  v68[1] = v55;
  return sub_258AF7448(v51, v58, sub_258AF3754);
}

uint64_t sub_258AF3478()
{
  v0 = sub_258B006A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF2BBC(v3);
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277CDF3D0])
  {
    v5 = [objc_opt_self() systemBackgroundColor];
    sub_258B01F94();
    v6 = sub_258B02024();
  }

  else
  {
    v7 = v4;
    v8 = *MEMORY[0x277CDF3C0];
    v9 = objc_opt_self();
    if (v7 == v8)
    {
      v10 = [v9 quaternarySystemFillColor];
      return sub_258B01F94();
    }

    else
    {
      v11 = [v9 systemBackgroundColor];
      sub_258B01F94();
      v6 = sub_258B02024();

      (*(v1 + 8))(v3, v0);
    }
  }

  return v6;
}

void sub_258AF3634(uint64_t a1)
{
  if (!qword_27F971940)
  {
    sub_258B00C34();
    sub_258AF8F00(&qword_27F96CAA0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    v1 = sub_258B00684();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971940);
    }
  }
}

uint64_t sub_258AF377C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v75 = sub_258B01134();
  v73 = *(v75 - 8);
  v3 = MEMORY[0x28223BE20](v75);
  v72 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v71 = v62 - v5;
  v6 = sub_258B01B04();
  MEMORY[0x28223BE20](v6 - 8);
  v62[3] = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258B00084();
  MEMORY[0x28223BE20](v8 - 8);
  v62[2] = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B01074();
  MEMORY[0x28223BE20](v10 - 8);
  v66 = sub_258B01634();
  v11 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v14);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF79E0(0);
  v18 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF8968(0);
  v67 = v21;
  v65 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF8A1C(0);
  v70 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v63 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v68 = v62 - v28;
  MEMORY[0x28223BE20](v27);
  v69 = v62 - v29;
  v62[1] = type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
  sub_258AC1BC4(v16);
  v30 = sub_258B00A84();
  sub_258AF8D90(v16, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  if (v30)
  {
    v31 = 0x4024000000000000;
  }

  else
  {
    v31 = 0x4030000000000000;
  }

  *v20 = sub_258B01004();
  *(v20 + 1) = v31;
  v20[16] = 0;
  sub_258AF8B8C(0, &qword_27F971AE8, sub_258AF7A74, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_258AF419C(v2, &v20[*(v32 + 44)]);
  sub_258B01624();
  v33 = sub_258AF8F00(&qword_27F971AD8, sub_258AF79E0, MEMORY[0x277CE1138]);
  v64 = v18;
  sub_258B01D84();
  (*(v11 + 8))(v13, v66);
  sub_258AF8CC8(v20, sub_258AF79E0);
  sub_258B01064();
  sub_258B01054();
  *&v77 = 0;
  *(&v77 + 1) = 0xE000000000000000;
  sub_258B031B4();

  *&v77 = 0xD000000000000014;
  *(&v77 + 1) = 0x8000000258B39DB0;
  v34 = *v2;
  v35 = 0xE700000000000000;
  v36 = 0x4E4F49544F4D45;
  if (*v2 != 1)
  {
    v36 = 0;
    v35 = 0xE000000000000000;
  }

  if (v34 == 2)
  {
    v37 = 1146048333;
  }

  else
  {
    v37 = v36;
  }

  if (v34 == 2)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = v35;
  }

  MEMORY[0x259C931B0](v37, v38);

  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();

  sub_258B01044();

  sub_258B01054();
  sub_258AF6484();
  sub_258B01044();

  sub_258B01054();
  sub_258B01094();
  v39 = sub_258B01B24();
  v41 = v40;
  v43 = v42;
  *&v77 = v64;
  *(&v77 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v44 = v63;
  v45 = v67;
  sub_258B01D24();
  sub_2589BFFAC(v39, v41, v43 & 1);

  (*(v65 + 8))(v23, v45);
  v66 = v34;
  if (v34 == 1)
  {
    sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    MEMORY[0x259C92900]();
    sub_258B01AF4();
    v46 = sub_258B01B14();
  }

  else
  {
    sub_258B01084();
    v46 = sub_258B01B24();
  }

  v49 = v46;
  v50 = v48;
  v51 = v2;
  v52 = v69;
  v53 = v68;
  v54 = v47;
  sub_258B00AD4();
  sub_2589BFFAC(v49, v54, v50 & 1);

  sub_258AF8CC8(v44, sub_258AF8A1C);
  v55 = v71;
  sub_258B01124();
  sub_258B00AE4();
  v56 = *(v73 + 8);
  v57 = v55;
  v58 = v75;
  v56(v57, v75);
  sub_258AF8CC8(v53, sub_258AF8A1C);
  v59 = v51[3];
  v77 = *(v51 + 1);
  v78 = v59;
  sub_258AF297C(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v76);
  if (v76 == v66)
  {
    *&v77 = MEMORY[0x277D84F90];
    sub_258AF8F00(&qword_27F96EFD0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    sub_258AF8AC4(0);
    sub_258AF8F00(&qword_27F96EFE0, sub_258AF8AC4, MEMORY[0x277D83970]);
    v60 = v72;
    sub_258B03114();
  }

  else
  {
    v60 = v72;
    sub_258B01114();
  }

  sub_258B00AF4();
  v56(v60, v58);
  return sub_258AF8CC8(v52, sub_258AF8A1C);
}

uint64_t sub_258AF419C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF8A50(0, &qword_27F971AA0, sub_258AF87FC, sub_2589BF83C);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&v54 - v7);
  sub_258AF876C(0);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF86E0(0, &qword_27F971A90, sub_258AF876C, sub_258AF881C, MEMORY[0x277CE0DE0]);
  v63 = v12;
  v61 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v55 = &v54 - v13;
  sub_258AF863C(0);
  v60 = v14 - 8;
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v62 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  MEMORY[0x28223BE20](v17);
  v59 = &v54 - v20;
  sub_258AF7AB0(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v57 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v54 - v24;
  *v25 = sub_258B011A4();
  *(v25 + 1) = 0;
  v25[16] = 0;
  sub_258AF8B8C(0, &qword_27F971AF0, sub_258AF7B44, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_258AF48E0(a1, &v25[*(v26 + 44)]);
  v27 = sub_258B020A4();
  sub_2589E0B98(0);
  v29 = (v8 + *(v28 + 36));
  sub_258AF7FCC(0);
  v31 = *(v30 + 28);
  v32 = *MEMORY[0x277CE1058];
  v33 = sub_258B020B4();
  (*(*(v33 - 8) + 104))(v29 + v31, v32, v33);
  *v29 = swift_getKeyPath();
  *v8 = v27;
  v34 = sub_258B01FC4();
  sub_258AF87FC(0);
  *(v8 + *(v35 + 36)) = v34;
  v36 = sub_258B019D4();
  KeyPath = swift_getKeyPath();
  v38 = (v8 + *(v6 + 44));
  *v38 = KeyPath;
  v38[1] = v36;
  type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
  v39 = a1;
  v40 = v56;
  sub_258AC1BC4(v56);
  sub_258AF8D90(v40, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  sub_258B024F4();
  sub_258B00C94();
  sub_258AF8AF8(v8, v11);
  v41 = &v11[*(v58 + 36)];
  v42 = v73;
  *(v41 + 4) = v72;
  *(v41 + 5) = v42;
  *(v41 + 6) = v74;
  v43 = v69;
  *v41 = v68;
  *(v41 + 1) = v43;
  v44 = v71;
  *(v41 + 2) = v70;
  *(v41 + 3) = v44;
  sub_258AF881C();
  v45 = v55;
  sub_258B01E44();
  sub_258AF8D90(v11, sub_258AF876C);
  v46 = v39[3];
  v66 = *(v39 + 1);
  v67 = v46;
  sub_258AF297C(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v65);
  if (v65 == *v39)
  {
    v47 = 1.0;
  }

  else
  {
    v47 = 0.0;
  }

  (*(v61 + 32))(v19, v45, v63);
  *&v19[*(v60 + 44)] = v47;
  v48 = v59;
  sub_258AF8BF8(v19, v59, sub_258AF863C);
  v49 = v57;
  sub_258AF8C60(v25, v57, sub_258AF7AB0);
  v50 = v62;
  sub_258AF8C60(v48, v62, sub_258AF863C);
  v51 = v64;
  sub_258AF8C60(v49, v64, sub_258AF7AB0);
  sub_258AF7E40(0, &qword_27F9719C8, sub_258AF7AB0, sub_258AF863C);
  sub_258AF8C60(v50, v51 + *(v52 + 48), sub_258AF863C);
  sub_258AF8CC8(v48, sub_258AF863C);
  sub_258AF8CC8(v25, sub_258AF7AB0);
  sub_258AF8CC8(v50, sub_258AF863C);
  return sub_258AF8CC8(v49, sub_258AF7AB0);
}

uint64_t sub_258AF48E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v179 = a2;
  v3 = sub_258B012D4();
  MEMORY[0x28223BE20](v3 - 8);
  v152 = v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3F24C(0);
  MEMORY[0x28223BE20](v5 - 8);
  v151 = v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v147[1] = v7;
  MEMORY[0x28223BE20](v7);
  v149 = v147 - v8;
  sub_258AF84B8(0, &qword_27F96E9D8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
  v150 = v9;
  v148 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v147[0] = v147 - v10;
  sub_258AF842C(0);
  v154 = v11;
  MEMORY[0x28223BE20](v11);
  v155 = v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF838C(0);
  v183 = v13;
  v181 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v153 = v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF8358(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v178 = v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v182 = v147 - v18;
  v175 = sub_258B006A4();
  v173 = *(v175 - 8);
  v19 = MEMORY[0x28223BE20](v175);
  v172 = v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v168 = v147 - v21;
  v163 = sub_258B019F4();
  v22 = *(v163 - 8);
  v23 = MEMORY[0x28223BE20](v163);
  v161 = v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v162 = v147 - v25;
  v160 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0) - 8;
  MEMORY[0x28223BE20](v160);
  v159 = v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF82C4(0);
  v165 = v27 - 8;
  MEMORY[0x28223BE20](v27 - 8);
  v164 = v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF829C(0);
  v169 = v29 - 8;
  MEMORY[0x28223BE20](v29 - 8);
  v166 = v147 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF8210(0);
  v170 = v31 - 8;
  MEMORY[0x28223BE20](v31 - 8);
  v167 = v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF81E8(0);
  v174 = v33 - 8;
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v177 = v147 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v171 = v147 - v37;
  MEMORY[0x28223BE20](v36);
  v185 = v147 - v38;
  sub_258AF7C7C(0, &qword_27F9719F0, sub_258AF7D14);
  v40 = v39 - 8;
  MEMORY[0x28223BE20](v39);
  v42 = v147 - v41;
  sub_258AF7C00(0);
  v44 = v43 - 8;
  v45 = MEMORY[0x28223BE20](v43);
  v176 = v147 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = v147 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = v147 - v50;
  *v42 = sub_258B01004();
  *(v42 + 1) = 0x4010000000000000;
  v42[16] = 0;
  sub_258AF8B8C(0, &qword_27F971AF8, sub_258AF7DA8, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_258AF5948(a1, &v42[*(v52 + 44)]);
  v158 = objc_opt_self();
  v53 = [v158 labelColor];
  *&v42[*(v40 + 44)] = sub_258B01F94();
  sub_258B02504();
  sub_258B00C94();
  sub_2589B96B0(v42, v49);
  v54 = &v49[*(v44 + 44)];
  v55 = v196;
  v56 = v198;
  v57 = v199;
  *(v54 + 4) = v197;
  *(v54 + 5) = v56;
  *(v54 + 6) = v57;
  v58 = v194;
  *v54 = v193;
  *(v54 + 1) = v58;
  *(v54 + 2) = v195;
  *(v54 + 3) = v55;
  v184 = v51;
  sub_258AF8BF8(v49, v51, sub_258AF7C00);
  v157 = a1;
  *&v200 = sub_258AF6484();
  *(&v200 + 1) = v59;
  sub_2589BFF58(v200, v59, v60);
  v61 = sub_258B01B44();
  v63 = v62;
  LOBYTE(v40) = v64;
  sub_258B01994();
  v65 = sub_258B01A94();
  v67 = v66;
  v69 = v68;
  v156 = v70;
  sub_2589BFFAC(v61, v63, v40 & 1);

  v180 = type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
  v71 = v159;
  sub_258AC1BC4(v159);
  sub_258B019D4();
  v72 = sub_258B00A84();
  v73 = MEMORY[0x277CE0A10];
  if ((v72 & 1) == 0)
  {
    v73 = MEMORY[0x277CE0A18];
  }

  v74 = v161;
  v75 = v163;
  (*(v22 + 104))(v161, *v73, v163);
  v76 = v162;
  (*(v22 + 32))(v162, v74, v75);
  sub_258B01A14();

  (*(v22 + 8))(v76, v75);
  sub_258AF8D90(v71, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  v77 = sub_258B01AE4();
  v79 = v78;
  v81 = v80;
  sub_2589BFFAC(v65, v67, v69 & 1);

  v82 = [v158 labelColor];
  *&v200 = sub_258B01F94();
  v162 = sub_258B01AB4();
  v163 = v83;
  v85 = v84;
  v87 = v86;
  sub_2589BFFAC(v77, v79, v81 & 1);

  v88 = v157;
  v89 = v168;
  sub_258AC14E8(v168);
  v90 = v172;
  v91 = v173;
  v92 = v175;
  (*(v173 + 104))(v172, *MEMORY[0x277CDF3C0], v175);
  LOBYTE(v77) = sub_258B00694();
  v93 = *(v91 + 8);
  v93(v90, v92);
  v93(v89, v92);
  v94 = 1;
  if (v77)
  {
    v95 = 1.0;
  }

  else
  {
    v95 = 0.8;
  }

  v96 = *(v165 + 44);
  KeyPath = swift_getKeyPath();
  v98 = v164;
  *&v164[v96] = KeyPath;
  sub_2589C0024(0);
  swift_storeEnumTagMultiPayload();
  *v98 = v162;
  *(v98 + 1) = v85;
  v98[16] = v87 & 1;
  *(v98 + 3) = v163;
  *(v98 + 4) = v95;
  LOBYTE(v96) = sub_258B01884();
  sub_258B00654();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v107 = v98;
  v108 = v166;
  sub_258AF7448(v107, v166, sub_258AF82C4);
  v109 = v108 + *(v169 + 44);
  *v109 = v96;
  *(v109 + 8) = v100;
  *(v109 + 16) = v102;
  *(v109 + 24) = v104;
  *(v109 + 32) = v106;
  *(v109 + 40) = 0;
  v110 = swift_getKeyPath();
  v111 = v108;
  v112 = v167;
  sub_258AF7448(v111, v167, sub_258AF829C);
  v113 = v112 + *(v170 + 44);
  *v113 = v110;
  *(v113 + 8) = 0;
  sub_258B02504();
  sub_258B00C94();
  v114 = v171;
  sub_258AF7448(v112, v171, sub_258AF8210);
  v115 = (v114 + *(v174 + 44));
  v116 = v205;
  v115[4] = v204;
  v115[5] = v116;
  v115[6] = v206;
  v117 = v201;
  *v115 = v200;
  v115[1] = v117;
  v118 = v203;
  v115[2] = v202;
  v115[3] = v118;
  sub_258AF7448(v114, v185, sub_258AF81E8);
  if (*v88 == 1)
  {
    sub_258B01084();
    sub_258B02334();
    sub_258AF67C0(v151);
    sub_258B012C4();
    v119 = v147[0];
    sub_258B00644();
    sub_258A41F4C();
    v120 = v155;
    v121 = v150;
    sub_258B01C24();
    (*(v148 + 8))(v119, v121);
    v122 = sub_258B01884();
    sub_258B00654();
    v123 = v120 + *(v154 + 36);
    *v123 = v122;
    *(v123 + 8) = v124;
    *(v123 + 16) = v125;
    *(v123 + 24) = v126;
    *(v123 + 32) = v127;
    *(v123 + 40) = 0;
    v128 = v88[3];
    v186 = *(v88 + 1);
    v187 = v128;
    sub_258AF297C(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
    sub_258B02334();
    v129 = v190;
    v130 = v191;
    v131 = v192;
    LOBYTE(v190) = 0;
    sub_258B02114();
    v132 = v186;
    v133 = *(&v186 + 1);
    *&v186 = v129;
    *(&v186 + 1) = v130;
    v187 = v131;
    v188 = v132;
    v189 = v133;
    v134 = sub_258AF850C();
    sub_258AF85E8(v134, v135, v136);
    v137 = v153;
    sub_258B01C74();

    sub_258AF8CC8(v120, sub_258AF842C);
    (*(v181 + 32))(v182, v137, v183);
    v94 = 0;
  }

  v138 = v182;
  (*(v181 + 56))(v182, v94, 1, v183);
  v139 = v176;
  sub_258AF8C60(v184, v176, sub_258AF7C00);
  v140 = v185;
  v141 = v177;
  sub_258AF8D28(v185, v177, sub_258AF81E8);
  v142 = v178;
  sub_258AF8C60(v138, v178, sub_258AF8358);
  v143 = v179;
  sub_258AF8C60(v139, v179, sub_258AF7C00);
  sub_258AF7B78(0);
  v145 = v144;
  sub_258AF8D28(v141, v143 + *(v144 + 48), sub_258AF81E8);
  sub_258AF8C60(v142, v143 + *(v145 + 64), sub_258AF8358);
  sub_258AF8CC8(v138, sub_258AF8358);
  sub_258AF8D90(v140, sub_258AF81E8);
  sub_258AF8CC8(v184, sub_258AF7C00);
  sub_258AF8CC8(v142, sub_258AF8358);
  sub_258AF8D90(v141, sub_258AF81E8);
  return sub_258AF8CC8(v139, sub_258AF7C00);
}

uint64_t sub_258AF5948@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B019F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v116 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v117 = &v107 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v112 = &v107 - v11;
  MEMORY[0x28223BE20](v10);
  v114 = &v107 - v12;
  v121 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0);
  v13 = MEMORY[0x28223BE20](v121);
  v115 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v107 - v15;
  sub_2589E0B98(0);
  v18 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = (&v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AF7F38(0);
  v111 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF7F04(0);
  v109 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF7EBC(0);
  v28 = MEMORY[0x28223BE20](v27);
  v29 = MEMORY[0x28223BE20](v28);
  v113 = a1;
  v30 = *a1;
  v119 = v29;
  v120 = a2;
  v118 = v31;
  v122 = v4;
  v123 = v32;
  v124 = v5;
  v125 = &v107 - v33;
  v34 = sub_258B020A4();
  v35 = (v20 + *(v18 + 36));
  sub_258AF7FCC(0);
  v37 = *(v36 + 28);
  v38 = *MEMORY[0x277CE1050];
  v39 = sub_258B020B4();
  (*(*(v39 - 8) + 104))(v35 + v37, v38, v39);
  *v35 = swift_getKeyPath();
  *v20 = v34;
  LODWORD(v34) = sub_258B014B4();
  sub_258AF7448(v20, v23, sub_2589E0B98);
  *&v23[v111[9]] = v34;
  v110 = v113 + *(type metadata accessor for ReflectiveIntervalPickerSelectionView(0) + 36);
  sub_258AC1BC4(v16);
  sub_258B018F4();
  v40 = sub_258B00A84();
  v41 = v124;
  v42 = *(v124 + 104);
  v43 = MEMORY[0x277CE0A10];
  if ((v40 & 1) == 0)
  {
    v43 = MEMORY[0x277CE0A18];
  }

  v44 = *v43;
  v45 = v112;
  v46 = v122;
  v113 = (v124 + 104);
  v111 = v42;
  (v42)(v112, v44, v122);
  v47 = *(v41 + 32);
  v48 = v114;
  v112 = (v41 + 32);
  v108 = v47;
  v47(v114, v45, v46);
  v49 = sub_258B01A14();

  v50 = *(v41 + 8);
  v124 = v41 + 8;
  v114 = v50;
  (v50)(v48, v46);
  sub_258AF8D90(v16, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  KeyPath = swift_getKeyPath();
  sub_258AF7448(v23, v26, sub_258AF7F38);
  v52 = &v26[*(v109 + 36)];
  *v52 = KeyPath;
  v52[1] = v49;
  sub_258B01994();
  sub_258AF8000();
  sub_258B01BB4();
  sub_258AF8D90(v26, sub_258AF7F04);
  v129 = 0;
  v130 = 0xE000000000000000;
  sub_258B031B4();

  v129 = 0xD000000000000014;
  v130 = 0x8000000258B39DB0;
  v53 = 0xE700000000000000;
  v54 = 0x4E4F49544F4D45;
  if (v30 != 1)
  {
    v54 = 0;
    v53 = 0xE000000000000000;
  }

  if (v30 == 2)
  {
    v55 = 1146048333;
  }

  else
  {
    v55 = v54;
  }

  if (v30 == 2)
  {
    v56 = 0xE400000000000000;
  }

  else
  {
    v56 = v53;
  }

  MEMORY[0x259C931B0](v55, v56);

  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v57 = sub_258AFFD94();
  v59 = v58;

  v129 = v57;
  v130 = v59;
  sub_2589BFF58(v60, v61, v62);
  v63 = sub_258B01B44();
  v65 = v64;
  v67 = v66;
  LODWORD(v129) = sub_258B014B4();
  v68 = sub_258B01AB4();
  v70 = v69;
  v72 = v71;
  sub_2589BFFAC(v63, v65, v67 & 1);

  v73 = v115;
  sub_258AC1BC4(v115);
  sub_258B018F4();
  v74 = sub_258B00A84();
  v75 = MEMORY[0x277CE0A10];
  if ((v74 & 1) == 0)
  {
    v75 = MEMORY[0x277CE0A18];
  }

  v76 = v116;
  v77 = v122;
  (v111)(v116, *v75, v122);
  v78 = v117;
  v108(v117, v76, v77);
  sub_258B01A14();

  (v114)(v78, v77);
  sub_258AF8D90(v73, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  v79 = sub_258B01AE4();
  v81 = v80;
  LOBYTE(v77) = v82;
  sub_2589BFFAC(v68, v70, v72 & 1);

  sub_258B01994();
  v83 = sub_258B01A94();
  v122 = v84;
  v86 = v85;
  v124 = v87;
  sub_2589BFFAC(v79, v81, v77 & 1);

  v121 = swift_getKeyPath();
  sub_258B02504();
  sub_258B00C94();
  *&v143[55] = v149;
  *&v143[71] = v150;
  *&v143[87] = v151;
  *&v143[103] = v152;
  *&v143[7] = v146;
  *&v143[23] = v147;
  v145 = v86 & 1;
  *&v143[39] = v148;
  v88 = v118;
  v89 = v119;
  v90 = *(v118 + 16);
  v91 = v123;
  v90(v123, v125, v119);
  v92 = v120;
  v90(v120, v91, v89);
  sub_258AF7E40(0, &qword_27F971A08, sub_258AF7EBC, sub_2589BFB4C);
  v94 = *(v93 + 48);
  *(v128 + 9) = *v143;
  *(&v128[4] + 9) = *&v143[64];
  v95 = (v92 + v94);
  v96 = v83;
  *&v126 = v83;
  v97 = v121;
  v98 = v122;
  *(&v126 + 1) = v122;
  LOBYTE(v127) = v86 & 1;
  *(&v127 + 1) = *v144;
  DWORD1(v127) = *&v144[3];
  v99 = v124;
  *(&v127 + 1) = v124;
  *&v128[0] = v121;
  BYTE8(v128[0]) = 0;
  *(&v128[5] + 9) = *&v143[80];
  *(&v128[6] + 9) = *&v143[96];
  *(&v128[7] + 1) = *&v143[111];
  *(&v128[1] + 9) = *&v143[16];
  *(&v128[2] + 9) = *&v143[32];
  *(&v128[3] + 9) = *&v143[48];
  v100 = v128[5];
  v95[6] = v128[4];
  v95[7] = v100;
  v101 = v128[7];
  v95[8] = v128[6];
  v95[9] = v101;
  v102 = v128[1];
  v95[2] = v128[0];
  v95[3] = v102;
  v103 = v128[3];
  v95[4] = v128[2];
  v95[5] = v103;
  v104 = v127;
  *v95 = v126;
  v95[1] = v104;
  sub_258AF8D28(&v126, &v129, sub_2589BFB4C);
  v105 = *(v88 + 8);
  v105(v125, v89);
  v140 = *&v143[64];
  v141 = *&v143[80];
  v142[0] = *&v143[96];
  v136 = *v143;
  v137 = *&v143[16];
  v138 = *&v143[32];
  v129 = v96;
  v130 = v98;
  v131 = v86 & 1;
  *v132 = *v144;
  *&v132[3] = *&v144[3];
  v133 = v99;
  v134 = v97;
  v135 = 0;
  *(v142 + 15) = *&v143[111];
  v139 = *&v143[48];
  sub_258AF8D90(&v129, sub_2589BFB4C);
  return (v105)(v123, v89);
}

uint64_t sub_258AF6484()
{
  v1 = sub_258B00084();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  v8 = sub_258B00224();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 == 2)
  {
    type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
    sub_258AC1BF8(v11);
    sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    MEMORY[0x259C92900]();
    v19 = sub_258B00124();
    (*(v2 + 8))(v7, v1);
    (*(v9 + 8))(v11, v8);
    if (v19)
    {
      return sub_258AF72E8();
    }
  }

  else
  {
    if (*v0 != 1)
    {
      return sub_258AF72E8();
    }

    v12 = type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
    sub_258AC1BF8(v11);
    v13 = *(v12 + 24);
    sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    v20[0] = v14;
    v20[1] = v13;
    MEMORY[0x259C92900]();
    LOBYTE(v13) = sub_258B00124();
    v15 = *(v2 + 8);
    v15(v7, v1);
    (*(v9 + 8))(v11, v8);
    if (v13)
    {
      sub_258B00044();
      MEMORY[0x259C92900](v20[0]);
      sub_258AFFFF4();
      v17 = v16;
      v15(v5, v1);
      v15(v7, v1);
      if (v17 <= 60.0)
      {
        return sub_258AF72E8();
      }
    }
  }

  return sub_258AF71CC();
}

uint64_t sub_258AF67C0@<X0>(char *a1@<X8>)
{
  v81 = a1;
  v1 = sub_258B00384();
  v73 = *(v1 - 8);
  v74 = v1;
  MEMORY[0x28223BE20](v1);
  v72 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_258B00204();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F7DCC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AED27C(0);
  v80 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v82 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v70 - v9;
  v85 = sub_258B00224();
  v89 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258B00084();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v70 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v70 - v19;
  v21 = type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
  v87 = *(v21 + 28);
  sub_258AC1BF8(v11);
  v84 = *(v21 + 24);
  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v83 = v22;
  MEMORY[0x259C92900]();
  v88 = v20;
  sub_258B00114();
  v86 = v13;
  v23 = *(v13 + 8);
  v23(v18, v12);
  v24 = v89 + 8;
  v25 = *(v89 + 8);
  v26 = v85;
  v25(v11, v85);
  v27 = v24;
  sub_258AC1BF8(v11);
  MEMORY[0x259C92900](v83);
  LOBYTE(v24) = sub_258B00124();
  v83 = v23;
  v84 = v13 + 8;
  v23(v18, v12);
  v28 = v26;
  v29 = v25;
  v89 = v27;
  v25(v11, v28);
  if (v24)
  {
    v30 = v86;
    sub_258B00044();
    sub_258AF8F00(&qword_27F96F0D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v31 = v88;
    result = sub_258B02A74();
    if (result)
    {
      v33 = v12;
      v34 = v31;
      v35 = *(v30 + 32);
      v36 = v79;
      v35(v79, v34, v12);
      v37 = v80;
      v35((v36 + *(v80 + 48)), v18, v12);
      v38 = v82;
      sub_258AF8D28(v36, v82, sub_258AED27C);
      v39 = *(v37 + 48);
      v40 = v81;
      v35(v81, v38, v33);
      v41 = v83;
      v83((v38 + v39), v33);
LABEL_9:
      sub_258AF7448(v36, v38, sub_258AED27C);
      v57 = *(v37 + 48);
      sub_258A3F24C(0);
      v35(&v40[*(v58 + 36)], (v38 + v57), v33);
      return v41(v38, v33);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_258AC1BF8(v11);
  v43 = v75;
  v42 = v76;
  v44 = v78;
  (*(v76 + 104))(v75, *MEMORY[0x277CC9968], v78);
  v45 = v77;
  sub_258B001C4();
  (*(v42 + 8))(v43, v44);
  v29(v11, v28);
  v46 = v86;
  v47 = (*(v86 + 48))(v45, 1, v12);
  v33 = v12;
  v48 = v88;
  if (v47 == 1)
  {
    sub_258AF8D90(v45, sub_2589F7DCC);
    v49 = v72;
    sub_258B00364();
    v50 = sub_258B00374();
    v51 = sub_258B02E84();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v48;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v90 = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_2589F1F78(0xD00000000000004CLL, 0x8000000258B39E30, &v90);
      _os_log_impl(&dword_2589A1000, v50, v51, "[%{public}s] Unable to determine start of next day", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x259C945C0](v54, -1, -1);
      v55 = v53;
      v48 = v52;
      MEMORY[0x259C945C0](v55, -1, -1);
    }

    (*(v73 + 8))(v49, v74);
    v38 = v82;
    v41 = v83;
    sub_258AF8F00(&qword_27F96F0D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    result = sub_258B02A74();
    if (result)
    {
      v36 = v79;
      (*(v46 + 16))(v79, v48, v33);
      v37 = v80;
      v35 = *(v46 + 32);
      v35((v36 + *(v80 + 48)), v48, v33);
      sub_258AF8D28(v36, v38, sub_258AED27C);
      v56 = *(v37 + 48);
      v40 = v81;
      v35(v81, v38, v33);
      v41(v38 + v56, v33);
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v59 = v88;
  v60 = *(v46 + 32);
  v61 = v71;
  v60(v71, v45, v33);
  sub_258B00004();
  sub_258AF8F00(&qword_27F96F0D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v62 = sub_258B02A74();
  v63 = v83;
  result = (v83)(v61, v33);
  if (v62)
  {
    v64 = v79;
    v60(v79, v59, v33);
    v65 = v80;
    v60((v64 + *(v80 + 48)), v18, v33);
    v38 = v82;
    sub_258AF8D28(v64, v82, sub_258AED27C);
    v66 = *(v65 + 48);
    v41 = v63;
    v67 = v81;
    v60(v81, v38, v33);
    v41(v38 + v66, v33);
    sub_258AF7448(v64, v38, sub_258AED27C);
    v68 = *(v65 + 48);
    sub_258A3F24C(0);
    v60(&v67[*(v69 + 36)], v38 + v68, v33);
    return v41(v38, v33);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_258AF71CC()
{
  if (*v0 == 2)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

LABEL_8:
    swift_once();
    return sub_258AFFD94();
  }

  if (*v0 == 1)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_258AF72E8()
{
  sub_258B031B4();

  v1 = *v0;
  v2 = 0xE700000000000000;
  v3 = 0x4E4F49544F4D45;
  if (*v0 != 1)
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  if (v1 == 2)
  {
    v4 = 1146048333;
  }

  else
  {
    v4 = v3;
  }

  if (v1 == 2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x259C931B0](v4, v5);

  MEMORY[0x259C931B0](0x504952435345445FLL, 0xEC0000004E4F4954);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v6 = sub_258AFFD94();

  return v6;
}

uint64_t sub_258AF7448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258AF74B0(uint64_t a1)
{
  if (!qword_27F971968)
  {
    sub_258AF3634(255);
    sub_258AF8F00(&qword_27F971970, sub_258AF3634, MEMORY[0x277CDF3A0]);
    v1 = sub_258B01294();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971968);
    }
  }
}

void sub_258AF756C(uint64_t a1)
{
  type metadata accessor for __HKStateOfMindReflectiveInterval(319);
  if (v1 <= 0x3F)
  {
    sub_258AF297C(319, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_258AF297C(319, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_258AF297C(319, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_258AF297C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_258AF297C(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_258AF7740()
{
  result = qword_27F971988;
  if (!qword_27F971988)
  {
    sub_258AF8A50(255, &qword_27F971960, sub_258AF3754, sub_258AF74B0);
    sub_258AF7894(&qword_27F971990, sub_258AF3754, sub_258AF7858, MEMORY[0x277CDF918]);
    sub_258AF8F00(&qword_27F9719B0, sub_258AF74B0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971988);
  }

  return result;
}

uint64_t sub_258AF7894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

unint64_t sub_258AF7914()
{
  result = qword_27F9719A0;
  if (!qword_27F9719A0)
  {
    sub_258AF36E4(255);
    sub_258AF8F00(&qword_27F9719A8, type metadata accessor for ReflectiveIntervalPickerSelectionView, &unk_258B354F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9719A0);
  }

  return result;
}

void sub_258AF79E0(uint64_t a1)
{
  if (!qword_27F9719B8)
  {
    sub_258AF7A74(255);
    sub_258AF8F00(&qword_27F971AC8, sub_258AF7A74, MEMORY[0x277CE14C0]);
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9719B8);
    }
  }
}

void sub_258AF7AB0(uint64_t a1)
{
  if (!qword_27F9719D0)
  {
    sub_258AF7B44(255);
    sub_258AF8F00(&qword_27F971A80, sub_258AF7B44, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9719D0);
    }
  }
}

void sub_258AF7B78(uint64_t a1)
{
  if (!qword_27F9719E0)
  {
    sub_258AF7C00(255);
    sub_258AF81E8(255);
    sub_258AF8358(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F9719E0);
    }
  }
}

void sub_258AF7C00(uint64_t a1)
{
  if (!qword_27F9719E8)
  {
    sub_258AF7C7C(255, &qword_27F9719F0, sub_258AF7D14);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9719E8);
    }
  }
}

void sub_258AF7C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258AF84B8(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AF7D14(uint64_t a1)
{
  if (!qword_27F9719F8)
  {
    sub_258AF7DA8(255);
    sub_258AF8F00(&qword_27F971A38, sub_258AF7DA8, MEMORY[0x277CE14C0]);
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9719F8);
    }
  }
}

void sub_258AF7DE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_258AF7E40(255, a3, a4, a5);
    v6 = sub_258B02574();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AF7E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_258AF7F38(uint64_t a1)
{
  if (!qword_27F971A20)
  {
    sub_2589E0B98(255);
    sub_258AF84B8(255, &qword_27F96F3D8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971A20);
    }
  }
}

unint64_t sub_258AF8000()
{
  result = qword_27F971A28;
  if (!qword_27F971A28)
  {
    sub_258AF7F04(255);
    sub_258AF80E0(&qword_27F971A30, sub_258AF7F38, sub_258AF8164);
    sub_258AF8F00(&qword_27F96C938, sub_2589BF83C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971A28);
  }

  return result;
}

uint64_t sub_258AF80E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_2589E0C28();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258AF8164()
{
  result = qword_27F96F3E8;
  if (!qword_27F96F3E8)
  {
    sub_258AF84B8(255, &qword_27F96F3D8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F3E8);
  }

  return result;
}

void sub_258AF8210(uint64_t a1)
{
  if (!qword_27F971A48)
  {
    sub_258AF829C(255);
    sub_2589BFC30(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971A48);
    }
  }
}

void sub_258AF82C4(uint64_t a1)
{
  if (!qword_27F970BE0)
  {
    sub_258AF84B8(255, &qword_27F970BE8, MEMORY[0x277CE0BD8], MEMORY[0x277CDF910], MEMORY[0x277CDFAB8]);
    type metadata accessor for LoggingFlowBlendMode(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970BE0);
    }
  }
}

void sub_258AF838C(uint64_t a1)
{
  if (!qword_27F971A60)
  {
    sub_258AF842C(255);
    v5 = sub_258AF850C();
    sub_258AF85E8(v5, v1, v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971A60);
    }
  }
}

void sub_258AF8454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258AF84B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258AF850C()
{
  result = qword_27F971A70;
  if (!qword_27F971A70)
  {
    sub_258AF842C(255);
    sub_258AF84B8(255, &qword_27F96E9D8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    sub_258A41F4C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971A70);
  }

  return result;
}

unint64_t sub_258AF85E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971A78;
  if (!qword_27F971A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971A78);
  }

  return result;
}

void sub_258AF863C(uint64_t a1)
{
  if (!qword_27F971A88)
  {
    sub_258AF86E0(255, &qword_27F971A90, sub_258AF876C, sub_258AF881C, MEMORY[0x277CE0DE0]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971A88);
    }
  }
}

void sub_258AF86E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_258AF876C(uint64_t a1)
{
  if (!qword_27F971A98)
  {
    sub_258AF8A50(255, &qword_27F971AA0, sub_258AF87FC, sub_2589BF83C);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971A98);
    }
  }
}

unint64_t sub_258AF8858()
{
  result = qword_27F971AB8;
  if (!qword_27F971AB8)
  {
    sub_258AF8A50(255, &qword_27F971AA0, sub_258AF87FC, sub_2589BF83C);
    sub_258AF80E0(&qword_27F971AC0, sub_258AF87FC, sub_2589C02DC);
    sub_258AF8F00(&qword_27F96C938, sub_2589BF83C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971AB8);
  }

  return result;
}

void sub_258AF8968(uint64_t a1)
{
  if (!qword_27F971AD0)
  {
    sub_258AF79E0(255);
    sub_258AF8F00(&qword_27F971AD8, sub_258AF79E0, MEMORY[0x277CE1138]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971AD0);
    }
  }
}

void sub_258AF8A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_258AF8AF8(uint64_t a1, uint64_t a2)
{
  sub_258AF8A50(0, &qword_27F971AA0, sub_258AF87FC, sub_2589BF83C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258AF8B8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_258B00974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_258AF8BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AF8C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AF8CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AF8D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AF8D90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_258AF8DF0()
{
  result = qword_27F971B00;
  if (!qword_27F971B00)
  {
    sub_258AF8A1C(255);
    sub_258AF79E0(255);
    sub_258AF8F00(&qword_27F971AD8, sub_258AF79E0, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_258AF8F00(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B00);
  }

  return result;
}

uint64_t sub_258AF8F00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AssessmentsNotificationSettingsView.init(navigationTitleText:assessmentsSettingModel:notificationSettingsModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 48) = a1;
  *(a5 + 56) = a2;
  *a5 = sub_2589C0528;
  *(a5 + 8) = a3;
  *(a5 + 16) = 0;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(a5 + 24) = sub_258A35EA8;
  *(a5 + 32) = result;
  *(a5 + 40) = 0;
  return result;
}

uint64_t AssessmentsNotificationSettingsView.body.getter()
{
  type metadata accessor for AssessmentsSettingsModel();
  sub_258AF9180(&qword_27F96EDD0, type metadata accessor for AssessmentsSettingsModel, &protocol conformance descriptor for AssessmentsSettingsModel);
  sub_258B00744();
  type metadata accessor for NotificationSettingsModel(0);
  sub_258AF9180(&qword_27F96D308, type metadata accessor for NotificationSettingsModel, &protocol conformance descriptor for NotificationSettingsModel);
  sub_258B00744();
  sub_258B00A24();
  sub_258B00A24();
  v1 = v0;
  v2 = sub_258B02114();
  v5 = sub_258AF91C8(v2, v3, v4);
  sub_2589BFF58(v5, v6, v7);
  sub_258B01CB4();
}

uint64_t sub_258AF9180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258AF91C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971B08;
  if (!qword_27F971B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B08);
  }

  return result;
}

uint64_t sub_258AF923C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258AF9284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14ShowMoreButtonVMa(uint64_t a1)
{
  result = qword_27F971B10;
  if (!qword_27F971B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AF9358(uint64_t a1)
{
  sub_258AFA6D8(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2589C0D10();
    if (v2 <= 0x3F)
    {
      sub_2589FCE08();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258AF9440@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_258AFA2B0(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFA554(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_258B01194();
  *(v6 + 1) = 0;
  v6[16] = 0;
  sub_258AFA590(0);
  sub_258AF9640(v2, &v6[*(v11 + 44)]);
  sub_258B024F4();
  sub_258B00C94();
  sub_258AFA810(v6, v10, sub_258AFA2B0);
  v12 = &v10[*(v8 + 44)];
  v13 = v20[5];
  *(v12 + 4) = v20[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v20[6];
  v14 = v20[1];
  *v12 = v20[0];
  *(v12 + 1) = v14;
  v15 = v20[3];
  *(v12 + 2) = v20[2];
  *(v12 + 3) = v15;
  sub_258AFA628(0, &qword_27F971B68, sub_258AFA554, sub_258AFA69C);
  v17 = a1 + *(v16 + 36);
  sub_258B02494();
  LOBYTE(v8) = sub_258B01874();
  sub_258AFA69C(0);
  *(v17 + *(v18 + 36)) = v8;
  return sub_258AFA810(v10, a1, sub_258AFA554);
}

uint64_t sub_258AF9640@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v81 = a2;
  v71 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  MEMORY[0x28223BE20](v71);
  v70 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v69 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v66 - v8;
  v72 = _s14ShowMoreButtonVMa(0);
  v67 = *(v72 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v72);
  sub_258A8773C();
  v68 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFA424(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFA3E8(0);
  v75 = v19;
  MEMORY[0x28223BE20](v19);
  v74 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFA3B4(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v80 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v77 = &v66 - v24;
  v79 = sub_258B023A4();
  v78 = *(v79 - 8);
  v25 = MEMORY[0x28223BE20](v79);
  v76 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v73 = &v66 - v27;
  sub_258B02394();
  sub_258AFA9F0(a1, &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), _s14ShowMoreButtonVMa);
  v28 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v29 = swift_allocObject() + v28;
  v30 = a1;
  v31 = v18;
  sub_258AFA810(&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v29, _s14ShowMoreButtonVMa);
  v82 = v30;
  sub_258B02174();
  sub_258AC1060(v9);
  sub_258AFA7B0(v9, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00C94();
  (*(v12 + 32))(v18, v14, v68);
  v32 = &v18[*(v16 + 44)];
  v33 = v89;
  *(v32 + 4) = v88;
  *(v32 + 5) = v33;
  *(v32 + 6) = v90;
  v34 = v85;
  *v32 = v84;
  *(v32 + 1) = v34;
  v35 = v87;
  *(v32 + 2) = v86;
  *(v32 + 3) = v35;
  v36 = sub_258B01864();
  v37 = v69;
  sub_258AC1060(v69);
  v38 = v70;
  sub_258AFA9F0(v37 + *(v5 + 56), v70, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258AFA7B0(v37, type metadata accessor for StateOfMindTimeline.Styles);
  if ((*(v38 + *(v71 + 24)) & 1) != 0 && (sub_258B00A84() & 1) == 0)
  {
    sub_258ABF198();
  }

  sub_258AFA7B0(v38, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  v39 = v75;
  v40 = v74;
  sub_258B00654();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_258AFA810(v31, v40, sub_258AFA424);
  v49 = v40 + *(v39 + 36);
  *v49 = v36;
  *(v49 + 8) = v42;
  *(v49 + 16) = v44;
  *(v49 + 24) = v46;
  *(v49 + 32) = v48;
  *(v49 + 40) = 0;
  v50 = *(v30 + *(v72 + 24));
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v50 = sub_258A74828(0, *(v50 + 2) + 1, 1, v50);
  }

  v52 = *(v50 + 2);
  v51 = *(v50 + 3);
  if (v52 >= v51 >> 1)
  {
    v50 = sub_258A74828((v51 > 1), v52 + 1, 1, v50);
  }

  *(v50 + 2) = v52 + 1;
  v53 = &v50[16 * v52];
  *(v53 + 4) = 0x7474754265726F4DLL;
  *(v53 + 5) = 0xEA00000000006E6FLL;
  v83 = &unk_2869D4670;
  v54 = sub_258B003E4();
  sub_2589FC8C8(v54);
  sub_2589FCE08();
  sub_258AFA878(&qword_280DF8940, sub_2589FCE08, MEMORY[0x277D83958]);
  sub_258B02A34();

  sub_258AFA8C0();
  v55 = v77;
  sub_258B01DD4();

  sub_258AFA7B0(v40, sub_258AFA3E8);
  v56 = v78;
  v57 = *(v78 + 16);
  v58 = v76;
  v59 = v73;
  v60 = v79;
  v57(v76, v73, v79);
  v61 = v80;
  sub_258AFA9F0(v55, v80, sub_258AFA3B4);
  v62 = v81;
  v57(v81, v58, v60);
  sub_258AFA344(0);
  sub_258AFA9F0(v61, &v62[*(v63 + 48)], sub_258AFA3B4);
  sub_258AFA7B0(v55, sub_258AFA3B4);
  v64 = *(v56 + 8);
  v64(v59, v60);
  sub_258AFA7B0(v61, sub_258AFA3B4);
  return (v64)(v58, v60);
}

void sub_258AF9F80(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = sub_258B019F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v34 = sub_258AFFD94();
  v35 = v8;
  sub_2589BFF58(v34, v8, v9);
  v10 = sub_258B01B44();
  v12 = v11;
  v14 = v13;
  v30 = v15;
  sub_258AC1060(v7);
  v32 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_258AFA7B0(v7, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B018F4();
  (*(v2 + 104))(v4, *MEMORY[0x277CE0A10], v1);
  sub_258B01A14();

  (*(v2 + 8))(v4, v1);
  v16 = sub_258B01AE4();
  v31 = v17;
  v19 = v18;
  sub_2589BFFAC(v10, v12, v14 & 1);

  sub_258AC1060(v7);
  sub_258AFA7B0(v7, v32);
  v20 = [objc_opt_self() secondaryLabelColor];
  v34 = sub_258B01F94();
  v21 = v31;
  v22 = sub_258B01AB4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_2589BFFAC(v16, v21, v19 & 1);

  v29 = v33;
  *v33 = v22;
  v29[1] = v24;
  *(v29 + 16) = v26 & 1;
  v29[3] = v28;
}

void sub_258AFA2B0(uint64_t a1)
{
  if (!qword_27F971B20)
  {
    sub_258AFA6D8(255, &qword_27F971B28, sub_258AFA344, MEMORY[0x277CE14B8]);
    sub_258AFA4CC();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971B20);
    }
  }
}

void sub_258AFA344(uint64_t a1)
{
  if (!qword_27F971B30)
  {
    sub_258B023A4();
    sub_258AFA3B4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971B30);
    }
  }
}

void sub_258AFA460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_258AFA4CC()
{
  result = qword_27F971B50;
  if (!qword_27F971B50)
  {
    sub_258AFA6D8(255, &qword_27F971B28, sub_258AFA344, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B50);
  }

  return result;
}

void sub_258AFA590(uint64_t a1)
{
  if (!qword_27F971B60)
  {
    sub_258AFA6D8(255, &qword_27F971B28, sub_258AFA344, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F971B60);
    }
  }
}

void sub_258AFA628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AFA6D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258AFA7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AFA810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AFA878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258AFA8C0()
{
  result = qword_27F971B78;
  if (!qword_27F971B78)
  {
    sub_258AFA3E8(255);
    sub_258AFA940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B78);
  }

  return result;
}

unint64_t sub_258AFA940()
{
  result = qword_27F971B80;
  if (!qword_27F971B80)
  {
    sub_258AFA424(255);
    sub_258AFA878(&qword_27F96E060, sub_258A8773C, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B80);
  }

  return result;
}

uint64_t sub_258AFA9F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_258AFAA58()
{
  result = qword_27F971B88;
  if (!qword_27F971B88)
  {
    sub_258AFA628(255, &qword_27F971B68, sub_258AFA554, sub_258AFA69C);
    sub_258AFAB38();
    sub_258AFA878(&qword_27F971BA0, sub_258AFA69C, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B88);
  }

  return result;
}

unint64_t sub_258AFAB38()
{
  result = qword_27F971B90;
  if (!qword_27F971B90)
  {
    sub_258AFA554(255);
    sub_258AFA878(&qword_27F971B98, sub_258AFA2B0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B90);
  }

  return result;
}

__n128 sub_258AFABE8(float a1, float32x4_t a2)
{
  v2 = __sincospif_stret(a1 * 0.0055556);
  v3 = vmulq_f32(a2, a2);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  v5 = vmulq_n_f32(a2, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  v6 = vmuls_lane_f32(v2.__sinval, *v5.f32, 1);
  v7 = vmuls_lane_f32(v2.__sinval, v5, 2);
  v8 = (1.0 - v2.__cosval) * v5.f32[0];
  v9 = vmuls_lane_f32(1.0 - v2.__cosval, *v5.f32, 1);
  v10 = v2.__cosval + (v8 * v5.f32[0]);
  v11 = vmuls_lane_f32(v8, *v5.f32, 1);
  v12 = vmuls_lane_f32(v8, v5, 2);
  HIDWORD(v13) = 0;
  *&v13 = v10;
  *(&v13 + 1) = v7 + v11;
  *(&v13 + 2) = v12 - v6;
  v14 = v2.__cosval + vmuls_lane_f32(v9, *v5.f32, 1);
  v15 = vmuls_lane_f32(v9, v5, 2);
  HIDWORD(v16) = 0;
  *&v16 = v11 - v7;
  *(&v16 + 1) = v14;
  *(&v16 + 2) = (v2.__sinval * v5.f32[0]) + v15;
  v22 = v16;
  v23 = v13;
  *&v17 = v6 + v12;
  *(&v17 + 1) = v15 - (v2.__sinval * v5.f32[0]);
  *(&v17 + 1) = COERCE_UNSIGNED_INT(v2.__cosval + vmuls_lane_f32(vmuls_lane_f32(1.0 - v2.__cosval, v5, 2), v5, 2));
  v25 = v17;
  sub_258AFAD74(0, v18, v19);
  v20 = swift_allocObject();
  v20[2] = v23;
  v20[3] = v22;
  v20[4] = v25;
  v20[5] = xmmword_258B34050;
  swift_setDeallocating();
  swift_deallocClassInstance();
  return v23;
}

void sub_258AFAD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F971BA8)
  {
    sub_258AFADCC(255, a2, a3);
    v3 = sub_258B03424();
    if (!v4)
    {
      atomic_store(v3, &qword_27F971BA8);
    }
  }
}

void sub_258AFADCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F971BB0)
  {
    sub_258A75B6C(0, a2, a3);
    v3 = sub_258B034E4();
    if (!v4)
    {
      atomic_store(v3, &qword_27F971BB0);
    }
  }
}

__n64 sub_258AFAEB8(double a1, int32x4_t a2, int32x4_t a3)
{
  v3 = vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL);
  v4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL), vnegq_f32(a2)), a3, v3);
  v5 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v6 = vmulq_f32(v4, v4);
  v7 = COERCE_UNSIGNED_INT(v6.f32[1] + (v6.f32[2] + v6.f32[0]));
  v8 = vrsqrte_f32(v7);
  v9 = vmul_f32(v8, vrsqrts_f32(v7.u32[0], vmul_f32(v8, v8)));
  v10 = vmulq_n_f32(v5, vmul_f32(v9, vrsqrts_f32(v7.u32[0], vmul_f32(v9, v9))).f32[0]);
  v11 = vmlaq_f32(vmulq_f32(v3, vnegq_f32(v10)), a2, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v13 = vmulq_f32(v11, v11);
  v7.f32[0] = v13.f32[1] + (v13.f32[2] + v13.f32[0]);
  *v13.f32 = vrsqrte_f32(v7.u32[0]);
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v13.f32, *v13.f32)));
  result.n64_u32[0] = v10.i32[0];
  result.n64_u32[1] = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v13.f32, *v13.f32))).f32[0]).u32[0];
  return result;
}

void sub_258AFB04C()
{
  v1 = &v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds];
  v2 = *&v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds];
  v3 = *&v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds + 8];
  v4 = *&v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds + 16];
  v5 = *&v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds + 24];
  [v0 bounds];
  v44.origin.x = v6;
  v44.origin.y = v7;
  v44.size.width = v8;
  v44.size.height = v9;
  v39.origin.x = v2;
  v39.origin.y = v3;
  v39.size.width = v4;
  v39.size.height = v5;
  if (!CGRectEqualToRect(v39, v44))
  {
    v10 = *&v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer];
    if (v10)
    {
      v11 = *v1;
      v12 = v1[1];
      rect = *v1;
      v14 = v1[2];
      v13 = v1[3];
      rect_16 = v10;
      [v0 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v40.origin.x = v11;
      v40.origin.y = v12;
      v40.size.width = v14;
      v40.size.height = v13;
      Width = CGRectGetWidth(v40);
      v41.origin.x = v16;
      v41.origin.y = v18;
      v41.size.width = v20;
      v41.size.height = v22;
      rect_8 = vabdd_f64(Width, CGRectGetWidth(v41));
      v42.origin.x = rect;
      v42.origin.y = v12;
      v42.size.width = v14;
      v42.size.height = v13;
      Height = CGRectGetHeight(v42);
      v43.origin.x = v16;
      v43.origin.y = v18;
      v43.size.width = v20;
      v43.size.height = v22;
      v25 = vabdd_f64(Height, CGRectGetHeight(v43));
      if (rect_8 <= 40.0 && v25 <= 40.0)
      {
      }

      else
      {
        [v0 bounds];
        sub_258AC92B4();
        [v0 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        *v1 = v28;
        *(v1 + 1) = v30;
        *(v1 + 2) = v32;
        *(v1 + 3) = v34;
      }
    }
  }
}

id sub_258AFB274()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_258AFD58C(0, &qword_280DF8930, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_258B02D44();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *&v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer];
  sub_258B02D24();
  v8 = v7;
  v9 = sub_258B02D14();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  sub_258A8F398(0, 0, v5, &unk_258B35808, v10);

  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_258AFB3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_258B02D24();
  v4[4] = sub_258B02D14();
  v6 = sub_258B02CE4();

  return MEMORY[0x2822009F8](sub_258AFB488, v6, v5);
}

uint64_t sub_258AFB488()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink;
    v4 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink);
    if (v4)
    {
      [v4 setPaused_];
      v4 = *(v2 + v3);
    }

    [v4 invalidate];
    v5 = *(v2 + v3);
    *(v2 + v3) = 0;
  }

  **(v0 + 16) = v1 == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_258AFB828@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDF458];
  sub_258AFD58C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_258AFD5F0(v2, &v15 - v10, &qword_27F96C908, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B006A4();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_258B02E94();
    v14 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_258AFBA4C()
{
  v1 = sub_258B00F84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for EmotionShape(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_258B02E94();
    v7 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();
    sub_258AADD10(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

id sub_258AFBBA4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV14MentalHealthUI12EmotionShape11Coordinator_parent;
  [a1 velocityInView_];
  v7 = *(v1 + v4);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer);
    if (v8)
    {
      v9 = v5;
      v10 = v6;
      v11 = v8;
      sub_258AC753C(v9, v10);
    }
  }

  result = [a1 state];
  v13 = *(v2 + v4);
  if (result > 2)
  {
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer);
      if (v14)
      {
        v15 = 0;
        goto LABEL_11;
      }
    }
  }

  else if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer);
    if (v14)
    {
      v15 = 1;
LABEL_11:
      *(v14 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_isDragging) = v15;
    }
  }

  return result;
}

id sub_258AFBD3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmotionShape.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258AFBDA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258A9762C;

  return sub_258AFB3F0(a1, v4, v5, v6);
}

char *sub_258AFBE58()
{
  v1 = v0;
  v2 = sub_258B006A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v65 - v7;
  v9 = [objc_allocWithZone(type metadata accessor for ShapeContainer()) initWithFrame_];
  GenericRGB = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v13 = MTLCreateSystemDefaultDevice();
  [v12 setDevice_];
  v70 = GenericRGB;
  [v12 setOpaque_];
  [v12 setFramebufferOnly_];
  [v12 setPixelFormat_];
  [v12 setPresentsWithTransaction_];
  sub_258AFB828(v8);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
  v14 = sub_258B00694();
  v73 = v3;
  v15 = *(v3 + 8);
  v71 = v3 + 8;
  v15(v6, v2);
  v72 = v15;
  v15(v8, v2);
  v75 = v2;
  v76 = v9;
  v74 = v13;
  if ((v14 & 1) == 0)
  {
    GenericRGB = CGColorCreateGenericRGB(0.858823529, 0.882352941, 0.88627451, 1.0);
    goto LABEL_10;
  }

  GenericRGB = CGColorCreateGenericRGB(0.741176471, 0.82745098, 0.839215686, 1.0);
  if (CGColorGetNumberOfComponents(GenericRGB) != 4)
  {
    goto LABEL_10;
  }

  v16 = sub_258B02E04();
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = *(v16 + 16);
  if (v17)
  {
    if (v17 != 1)
    {
      if (v17 >= 3)
      {
        v18 = *(v16 + 32) * 0.5;
        v19 = *(v16 + 40) * 0.5;
        v20 = *(v16 + 48);

        v21 = CGColorCreateGenericRGB(v18, v19, v20 * 0.5, 1.0);

        GenericRGB = v21;
LABEL_10:
        [v12 setBackgroundColor_];

        v22 = v70;
        v23 = type metadata accessor for EmotionShape(0);
        v24 = *(v1 + v23[7]);
        v68 = *(v1 + v23[6]);
        v25 = (v1 + v23[9]);
        v26 = v25[1];
        v27 = *(v25 + 4);
        v77 = *v25;
        v78 = v26;
        LODWORD(v79) = v27;
        sub_258AFD66C(0, &unk_27F971190, MEMORY[0x277D83A90], MEMORY[0x277CE11F8]);
        v69 = v28;
        v70 = v22;
        sub_258B02334();
        v65 = v80[1];
        v66 = v80[0];
        v29 = v81;
        sub_258AFB828(v8);
        v67 = sub_258AFBA4C();
        v30 = objc_allocWithZone(type metadata accessor for ChamomileRenderer(0));
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode] = 0;
        v31 = &v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_randomNumberGenerator];
        v32 = MEMORY[0x277D84700];
        *(v31 + 3) = MEMORY[0x277D846F8];
        *(v31 + 4) = v32;
        v33 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_meshQuality;
        v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_meshQuality] = 2;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valence] = 0;
        v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_isDragging] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale] = 1065353216;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_time] = 0;
        v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_firstRun] = 1;
        v34 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_ringBufferHelpers;
        sub_258AFD66C(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_258B33250;
        type metadata accessor for RingBufferHelper();
        v36 = swift_allocObject();
        *(v36 + 32) = 0;
        *(v36 + 16) = 1065353216;
        *(v36 + 20) = 0x400000000;
        *(v36 + 36) = 0x3F80000000000000;
        *(v36 + 28) = 4;
        *(v35 + 32) = v36;
        v37 = swift_allocObject();
        *(v37 + 32) = 0;
        *(v37 + 16) = 0;
        *(v37 + 20) = 0x500000004;
        *(v37 + 36) = 0;
        *(v37 + 28) = 5;
        *(v35 + 40) = v37;
        v38 = swift_allocObject();
        *(v38 + 32) = 0;
        *(v38 + 16) = 1077936128;
        *(v38 + 20) = 0x600000005;
        *(v38 + 36) = 0x4040000000000000;
        *(v38 + 28) = 6;
        *(v35 + 48) = v38;
        *&v30[v34] = v35;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_disc] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_quad] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances] = 0;
        v39 = &v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_model];
        v40 = *MEMORY[0x277D860B8];
        v41 = *(MEMORY[0x277D860B8] + 16);
        v42 = *(MEMORY[0x277D860B8] + 32);
        v43 = *(MEMORY[0x277D860B8] + 48);
        *v39 = *MEMORY[0x277D860B8];
        v39[1] = v41;
        v39[2] = v42;
        v39[3] = v43;
        v44 = &v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation];
        *v44 = v40;
        v44[1] = v41;
        v44[2] = v42;
        v44[3] = v43;
        v45 = &v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_projection];
        *v45 = v40;
        v45[1] = v41;
        v45[2] = v42;
        v45[3] = v43;
        v46 = &v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_camera];
        *v46 = v40;
        v46[1] = v41;
        v46[2] = v42;
        v46[3] = v43;
        v47 = MEMORY[0x277D84F90];
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_lights] = MEMORY[0x277D84F90];
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_thetaOffsetRange] = 0x3EC90FDA00000000;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_environmentMap] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_albedo] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaAlbedo] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_backShape] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaBackShape] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_result] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_resultBuffer] = 0;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_blurSigma] = 1107296256;
        *&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_blurPipeline] = 0;
        v48 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_kernelCache;
        *&v30[v48] = [objc_allocWithZone(HKCVKernelCache) init];
        v49 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_renderPipelines;
        *&v30[v49] = sub_258AD64B0(v47);
        v50 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_computePipelines;
        *&v30[v50] = sub_258AD61A0(v47);
        v30[v33] = v68;
        v51 = &v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer__effectiveValence];
        v52 = v65;
        *v51 = v66;
        *(v51 + 1) = v52;
        *(v51 + 4) = v29;
        v53 = v75;
        (*(v73 + 16))(&v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_colorScheme], v8, v75);
        v30[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_reduceMotion] = v67 & 1;
        v54 = sub_258A0EE38(v12, 1, v24);
        v72(v8, v53);
        v55 = v76;
        v56 = *&v76[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer];
        *&v76[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer] = v54;
        v57 = v54;

        v58 = (v1 + v23[10]);
        v59 = v58[1];
        v60 = v58[2];
        v77 = *v58;
        v78 = v59;
        v79 = v60;
        sub_258AFD58C(0, &qword_27F971C78, sub_258AADFC0, MEMORY[0x277CE11F8]);
        MEMORY[0x259C92900](v80);
        *&v57[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset] = v80[0];
        v61 = (v1 + v23[11]);
        v62 = v61[1];
        v63 = *(v61 + 4);
        v77 = *v61;
        v78 = v62;
        LODWORD(v79) = v63;
        MEMORY[0x259C92900](v80, v69);

        swift_unknownObjectRelease();
        *&v57[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale] = v80[0];

        return v55;
      }

      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:

  result = sub_258B03294();
  __break(1u);
  return result;
}

void *sub_258AFC774(uint64_t a1)
{
  v2 = v1;
  v4 = sub_258B006A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFD454(0);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFD58C(0, &qword_27F96EAE0, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  if (a1)
  {
    v18 = type metadata accessor for EmotionShape(0);
    v19 = (v1 + v18[8]);
    v20 = v19[1];
    v21 = *(v19 + 4);
    v57 = *v19;
    v58 = v20;
    LODWORD(v59) = v21;
    sub_258AFD66C(0, &unk_27F971190, MEMORY[0x277D83A90], MEMORY[0x277CE11F8]);
    v23 = v22;
    MEMORY[0x259C92900](v56);
    *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valence) = v56[0];
    v24 = (v1 + v18[10]);
    v25 = v24[1];
    v26 = v24[2];
    v57 = *v24;
    v58 = v25;
    v59 = v26;
    sub_258AFD58C(0, &qword_27F971C78, sub_258AADFC0, MEMORY[0x277CE11F8]);
    MEMORY[0x259C92900](v56);
    *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset) = v56[0];
    v27 = (v1 + v18[11]);
    v28 = v27[1];
    v29 = *(v27 + 4);
    v57 = *v27;
    v58 = v28;
    LODWORD(v59) = v29;
    MEMORY[0x259C92900](v56, v23);
    *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale) = v56[0];
    v30 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_colorScheme;
    swift_beginAccess();
    (*(v5 + 16))(v17, a1 + v30, v4);
    v31 = *(v5 + 56);
    v31(v17, 0, 1, v4);
  }

  else
  {
    v31 = *(v5 + 56);
    v31(&v51 - v16, 1, 1, v4);
  }

  sub_258AFB828(v15);
  v31(v15, 0, 1, v4);
  v32 = *(v55 + 48);
  v33 = MEMORY[0x277D83D88];
  sub_258AFD5F0(v17, v9, &qword_27F96EAE0, MEMORY[0x277D83D88]);
  sub_258AFD5F0(v15, &v9[v32], &qword_27F96EAE0, v33);
  v55 = v5;
  v34 = *(v5 + 48);
  if (v34(v9, 1, v4) == 1)
  {
    sub_258A2D304(v15);
    sub_258A2D304(v17);
    if (v34(&v9[v32], 1, v4) == 1)
    {
      sub_258A2D304(v9);
LABEL_13:
      if (a1)
      {
        v42 = *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_reduceMotion);
        if ((sub_258AFBA4C() & 1) == v42)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      sub_258AFBA4C();
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v35 = v53;
  sub_258AFD5F0(v9, v53, &qword_27F96EAE0, MEMORY[0x277D83D88]);
  if (v34(&v9[v32], 1, v4) == 1)
  {
    sub_258A2D304(v15);
    sub_258A2D304(v17);
    (*(v55 + 8))(v35, v4);
LABEL_9:
    sub_258AFD4E8(v9);
    goto LABEL_10;
  }

  v36 = v55;
  v37 = *(v55 + 32);
  v52 = v2;
  v38 = v54;
  v37(v54, &v9[v32], v4);
  sub_258AFD544(&qword_27F971CC0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F8]);
  v39 = sub_258B02AA4();
  v40 = *(v36 + 8);
  v41 = v38;
  v2 = v52;
  v40(v41, v4);
  sub_258A2D304(v15);
  sub_258A2D304(v17);
  v40(v35, v4);
  sub_258A2D304(v9);
  if (v39)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (a1)
  {
LABEL_15:
    v43 = v2;
    v44 = v54;
    sub_258AFB828(v54);
    v45 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_colorScheme;
    swift_beginAccess();
    v46 = v44;
    v2 = v43;
    (*(v55 + 40))(a1 + v45, v46, v4);
    swift_endAccess();
    *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_reduceMotion) = sub_258AFBA4C() & 1;
    sub_258AC3580();
  }

LABEL_17:
  v47 = (v2 + *(type metadata accessor for EmotionShape(0) + 48));
  v48 = *v47;
  v49 = v47[1];
  LOBYTE(v47) = *(v47 + 16);
  v57 = v48;
  v58 = v49;
  LOBYTE(v59) = v47;
  sub_258AFD66C(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  result = MEMORY[0x259C92900](&v60);
  if (a1)
  {
    result = *(a1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink);
    if (result)
    {
      return [result setPaused_];
    }
  }

  return result;
}

void sub_258AFCE48(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer);
  v2 = v1;
  sub_258AFC774(v1);
}

id sub_258AFCEA4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for EmotionShape.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_258AFCF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258AFD544(&qword_27F971CA8, type metadata accessor for EmotionShape, &unk_258B35810);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_258AFCFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258AFD544(&qword_27F971CA8, type metadata accessor for EmotionShape, &unk_258B35810);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_258AFD04C(uint64_t a1)
{
  sub_258AFD544(&qword_27F971CA8, type metadata accessor for EmotionShape, &unk_258B35810);
  sub_258B01274();
  __break(1u);
}

unint64_t sub_258AFD0A4()
{
  result = qword_27F971C50;
  if (!qword_27F971C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F971C50);
  }

  return result;
}

uint64_t objectdestroyTm_25()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_258AFD130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2589EEE18;

  return sub_258AFB3F0(a1, v4, v5, v6);
}

uint64_t type metadata accessor for EmotionShape(uint64_t a1)
{
  result = qword_27F971C58;
  if (!qword_27F971C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AFD258(uint64_t a1)
{
  sub_258AFD58C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258AFD66C(319, &unk_27F971C68, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_258AFD66C(319, &unk_27F971190, MEMORY[0x277D83A90], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_258AFD58C(319, &qword_27F971C78, sub_258AADFC0, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_258AFD66C(319, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_258AFD454(uint64_t a1)
{
  if (!qword_27F971CB0)
  {
    sub_258AFD58C(255, &qword_27F96EAE0, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971CB0);
    }
  }
}

uint64_t sub_258AFD4E8(uint64_t a1)
{
  sub_258AFD454(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258AFD544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258AFD58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258AFD5F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_258AFD58C(0, a3, MEMORY[0x277CDF3E0], a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_258AFD66C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_258AFD6BC(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_258B03514(), sub_2589C6E40(a1), sub_258B02B74(), , v4 = sub_258B03554(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v33 = ~v5;
    v7 = 0xEA0000000000676ELL;
    v8 = 0x696472616F626E4FLL;
    v32 = a1;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      if (v9 > 4)
      {
        if (*(*(a2 + 48) + v6) <= 6u)
        {
          if (v9 == 5)
          {
            v16 = 0x746169636F737341;
            v17 = 0xEC000000736E6F69;
          }

          else
          {
            v16 = 0x616D7269666E6F43;
            v17 = 0xEC0000006E6F6974;
          }
        }

        else if (v9 == 7)
        {
          v16 = 0x6F4C207972746E45;
          v17 = 0xEC00000064656767;
        }

        else if (v9 == 8)
        {
          v17 = 0xEC00000064656C69;
          v16 = 0x6146207972746E45;
        }

        else
        {
          v16 = 0xD000000000000010;
          v17 = 0x8000000258B35BC0;
        }
      }

      else
      {
        v10 = 0xD000000000000013;
        if (v9 == 3)
        {
          v11 = 0xD000000000000010;
        }

        else
        {
          v11 = 0x736C6562614CLL;
        }

        if (v9 == 3)
        {
          v12 = 0x8000000258B35B70;
        }

        else
        {
          v12 = 0xE600000000000000;
        }

        if (v9 == 2)
        {
          v13 = 0x8000000258B35B50;
        }

        else
        {
          v10 = v11;
          v13 = v12;
        }

        v14 = 0xD000000000000017;
        if (*(*(a2 + 48) + v6))
        {
          v14 = v8;
          v15 = 0xEA0000000000676ELL;
        }

        else
        {
          v15 = 0x8000000258B35B20;
        }

        if (*(*(a2 + 48) + v6) <= 1u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v10;
        }

        if (*(*(a2 + 48) + v6) <= 1u)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }
      }

      v18 = 0xEC00000064656C69;
      v19 = 0x6146207972746E45;
      if (a1 != 8)
      {
        v19 = 0xD000000000000010;
        v18 = 0x8000000258B35BC0;
      }

      if (a1 == 7)
      {
        v19 = 0x6F4C207972746E45;
        v18 = 0xEC00000064656767;
      }

      v20 = 0x746169636F737341;
      if (a1 != 5)
      {
        v20 = 0x616D7269666E6F43;
      }

      v21 = 0xEC000000736E6F69;
      if (a1 != 5)
      {
        v21 = 0xEC0000006E6F6974;
      }

      if (a1 <= 6u)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 0xD000000000000013;
      if (a1 == 3)
      {
        v23 = 0xD000000000000010;
      }

      else
      {
        v23 = 0x736C6562614CLL;
      }

      if (a1 == 3)
      {
        v24 = 0x8000000258B35B70;
      }

      else
      {
        v24 = 0xE600000000000000;
      }

      if (a1 == 2)
      {
        v25 = 0x8000000258B35B50;
      }

      else
      {
        v22 = v23;
        v25 = v24;
      }

      v26 = 0xD000000000000017;
      if (a1)
      {
        v26 = v8;
      }

      else
      {
        v7 = 0x8000000258B35B20;
      }

      if (a1 <= 1u)
      {
        v22 = v26;
        v25 = v7;
      }

      v27 = a1 <= 4u ? v22 : v19;
      v28 = a1 <= 4u ? v25 : v18;
      if (v16 == v27 && v17 == v28)
      {
        break;
      }

      v29 = v8;
      v30 = sub_258B03454();

      if ((v30 & 1) == 0)
      {
        v6 = (v6 + 1) & v33;
        a1 = v32;
        v7 = 0xEA0000000000676ELL;
        v8 = v29;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v30 & 1;
    }

    v30 = 1;
  }

  else
  {
    v30 = 0;
  }

  return v30 & 1;
}

uint64_t sub_258AFDA74(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = 0xEF6F72746E492064, v5 = 0x6574614720656741, sub_258B03514(), sub_258B02B74(), , v6 = sub_258B03554(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v26 = ~v7;
    v9 = 0xE900000000000073;
    v10 = 0xD000000000000010;
    v11 = 0x746C75736552;
    v25 = a1;
    while (1)
    {
      v12 = *(*(a2 + 48) + v8);
      if (v12 <= 1)
      {
        if (*(*(a2 + 48) + v8))
        {
          v13 = v5;
        }

        else
        {
          v13 = 0xD000000000000010;
        }

        if (*(*(a2 + 48) + v8))
        {
          v14 = v4;
        }

        else
        {
          v14 = 0x8000000258B35DF0;
        }
      }

      else if (v12 == 2)
      {
        v14 = 0xE500000000000000;
        v13 = 0x6F72746E49;
      }

      else
      {
        if (v12 == 3)
        {
          v13 = 0x6E6F697473657551;
        }

        else
        {
          v13 = v11;
        }

        if (v12 == 3)
        {
          v14 = 0xE900000000000073;
        }

        else
        {
          v14 = 0xE600000000000000;
        }
      }

      v15 = a1;
      if (a1 == 3)
      {
        v16 = 0x6E6F697473657551;
      }

      else
      {
        v16 = v11;
      }

      if (a1 != 3)
      {
        v9 = 0xE600000000000000;
      }

      if (a1 == 2)
      {
        v16 = 0x6F72746E49;
        v9 = 0xE500000000000000;
      }

      v17 = v5;
      if (v15)
      {
        v10 = v5;
      }

      v18 = v4;
      v19 = v15 ? v4 : 0x8000000258B35DF0;
      v20 = v15 <= 1 ? v10 : v16;
      v21 = v15 <= 1 ? v19 : v9;
      if (v13 == v20 && v14 == v21)
      {
        break;
      }

      v22 = v11;
      v23 = sub_258B03454();

      if ((v23 & 1) == 0)
      {
        v8 = (v8 + 1) & v26;
        v4 = v18;
        v5 = v17;
        a1 = v25;
        v9 = 0xE900000000000073;
        v10 = 0xD000000000000010;
        v11 = v22;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v23 & 1;
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

void sub_258AFDD38(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_258AFDDB0()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 128);
  }

  else
  {
    v3 = HKLogMentalHealthCategory();
    v4 = [objc_allocWithZone(MEMORY[0x277CCCFE8]) initWithLoggingCategory:v3 healthDataSource:*(v0 + 112)];

    v5 = *(v0 + 128);
    *(v0 + 128) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t MentalHealthAssessmentsAnalyticsContextManager.__allocating_init(healthStore:entryPoint:provenance:)(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = swift_allocObject();
  LOBYTE(a2) = *a2;
  LOBYTE(a3) = *a3;
  swift_defaultActor_initialize();
  *(v6 + 120) = 2;
  *(v6 + 123) = 3;
  v7 = MEMORY[0x277D84FA0];
  *(v6 + 128) = 0;
  *(v6 + 136) = v7;
  *(v6 + 112) = a1;
  *(v6 + 121) = a2;
  *(v6 + 122) = a3;
  return v6;
}

uint64_t MentalHealthAssessmentsAnalyticsContextManager.init(healthStore:entryPoint:provenance:)(uint64_t a1, char *a2, char *a3)
{
  v5 = *a2;
  v6 = *a3;
  swift_defaultActor_initialize();
  *(v3 + 120) = 2;
  *(v3 + 123) = 3;
  v7 = MEMORY[0x277D84FA0];
  *(v3 + 128) = 0;
  *(v3 + 136) = v7;
  *(v3 + 112) = a1;
  *(v3 + 121) = v5;
  *(v3 + 122) = v6;
  return v3;
}

uint64_t sub_258AFDF2C(_BYTE *a1, _BYTE *a2)
{
  *(v3 + 64) = v2;
  *(v3 + 72) = *v2;
  *(v3 + 96) = *a1;
  *(v3 + 97) = *a2;
  return MEMORY[0x2822009F8](sub_258AFDF84, v2, 0);
}

uint64_t sub_258AFDF84()
{
  v12 = v0;
  if (*(v0[8] + 120) == 2)
  {
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_258AFE148;

    return sub_258AFE3F8();
  }

  else
  {
    v3 = *(v0 + 97);
    v4 = v0[9];
    v10 = *(v0 + 96);
    v11 = v3;
    v5 = sub_258AFE958(&v10, &v11);
    v6 = sub_258AFDDB0();
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v0[6] = sub_258AFEF04;
    v0[7] = v7;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_258AFDD38;
    v0[5] = &block_descriptor_16;
    v8 = _Block_copy(v0 + 2);

    [v6 submitEvent:v5 completion:v8];
    _Block_release(v8);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_258AFE148(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_258AFE260, v2, 0);
}

uint64_t sub_258AFE260()
{
  v14 = v0;
  v1 = *(v0 + 88);
  if (v1)
  {
    if (v1 >> 62)
    {
      v2 = sub_258B032B4();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v2 == 0;
  }

  else
  {
    v3 = 2;
  }

  *(*(v0 + 64) + 120) = v3;
  v4 = *(v0 + 97);
  v5 = *(v0 + 72);
  v12 = *(v0 + 96);
  v13 = v4;
  v6 = sub_258AFE958(&v12, &v13);
  v7 = sub_258AFDDB0();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v0 + 48) = sub_258AFEF04;
  *(v0 + 56) = v8;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_258AFDD38;
  *(v0 + 40) = &block_descriptor_16;
  v9 = _Block_copy((v0 + 16));

  [v7 submitEvent:v6 completion:v9];
  _Block_release(v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_258AFE3F8()
{
  v1[2] = v0;
  sub_258AFF160(0, &qword_27F96E850, &qword_27F96E858, 0x277CCD8A8, MEMORY[0x277CCB610]);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258AFE4E4, v0, 0);
}

uint64_t sub_258AFE4E4()
{
  v1 = v0[2];
  sub_258AFF1C8(0);
  sub_258AFF160(0, &qword_27F96E868, &qword_27F96E858, 0x277CCD8A8, MEMORY[0x277CCB570]);
  *(swift_allocObject() + 16) = xmmword_258B2BE60;
  sub_2589F4488(0, &qword_27F971CC8, 0x277CCD8F0);
  v2 = MEMORY[0x259C93600](*MEMORY[0x277CCCD60]);
  sub_2589F4488(0, &qword_27F96E858, 0x277CCD8A8);
  sub_258B028E4();

  v3 = MEMORY[0x259C93600](*MEMORY[0x277CCCD68]);
  sub_258B028E4();

  sub_258B028F4();
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_258AFE710;
  v6 = v0[3];

  return MEMORY[0x282120380](v4, v6);
}

uint64_t sub_258AFE710(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 16);
  if (v1)
  {

    v7 = sub_258AFE8D8;
  }

  else
  {
    *(v5 + 56) = a1;
    v7 = sub_258AFE854;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_258AFE854()
{
  v1 = v0[7];
  (*(v0[4] + 8))(v0[5], v0[3]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_258AFE8D8()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1(0);
}

_BYTE *sub_258AFE958(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(v2 + 123);
  v6 = *(v2 + 121);
  v7 = *(v2 + 122);
  swift_beginAccess();
  v8 = *(v2 + 136);
  sub_258B003E4();
  v9 = sub_258AFDA74(v3, v8);

  v10 = *(v2 + 120);
  type metadata accessor for MentalHealthAssessmentsEvent();
  v11 = swift_allocObject();
  v11[16] = v3;
  v11[17] = v4;
  v11[18] = v5;
  v11[19] = v6;
  v11[20] = v7;
  v11[21] = (v9 & 1) == 0;
  v11[22] = v10;
  if (v4 <= 1 && v4)
  {
  }

  else
  {
    v12 = sub_258B03454();

    if ((v12 & 1) == 0)
    {
      swift_beginAccess();
      sub_258AE5C88(&v14, v3);
      swift_endAccess();
    }
  }

  return v11;
}

uint64_t sub_258AFEBCC(char a1, void *a2, uint64_t a3)
{
  v5 = sub_258B00384();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  if (a1)
  {
    sub_258B00364();
    v12 = sub_258B00374();
    v13 = sub_258B02E64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136446210;
      v16 = sub_258B035A4();
      v18 = sub_2589F1F78(v16, v17, &v36);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2589A1000, v12, v13, "[%{public}s] Successfully submitted analytics", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x259C945C0](v15, -1, -1);
      MEMORY[0x259C945C0](v14, -1, -1);
    }

    v19 = *(v6 + 8);
    v20 = v11;
    goto LABEL_9;
  }

  sub_258B00364();
  v21 = a2;
  v22 = sub_258B00374();
  v23 = sub_258B02E84();

  if (!os_log_type_enabled(v22, v23))
  {

    v19 = *(v6 + 8);
    v20 = v9;
LABEL_9:
    v33 = v5;
    return v19(v20, v33);
  }

  v35 = v5;
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v36 = v26;
  *v24 = 136446466;
  v27 = sub_258B035A4();
  v29 = sub_2589F1F78(v27, v28, &v36);

  *(v24 + 4) = v29;
  *(v24 + 12) = 2112;
  if (a2)
  {
    v30 = a2;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    v32 = v31;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  *(v24 + 14) = v31;
  *v25 = v32;
  _os_log_impl(&dword_2589A1000, v22, v23, "[%{public}s] Failed to submit analytics with error: %@", v24, 0x16u);
  sub_258A22E44(v25);
  MEMORY[0x259C945C0](v25, -1, -1);
  __swift_destroy_boxed_opaque_existential_1(v26);
  MEMORY[0x259C945C0](v26, -1, -1);
  MEMORY[0x259C945C0](v24, -1, -1);

  v19 = *(v6 + 8);
  v20 = v9;
  v33 = v35;
  return v19(v20, v33);
}

double block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t MentalHealthAssessmentsAnalyticsContextManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MentalHealthAssessmentsAnalyticsContextManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of MentalHealthAssessmentsAnalyticsContextManager.submitAssessmentAnalyticsEvent(step:action:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 256) + **(*v2 + 256));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2589EEE18;

  return v8(a1, a2);
}

void sub_258AFF160(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2589F4488(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258AFF1C8(uint64_t a1)
{
  if (!qword_27F96E860)
  {
    sub_258AFF160(255, &qword_27F96E868, &qword_27F96E858, 0x277CCD8A8, MEMORY[0x277CCB570]);
    v1 = sub_258B03424();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96E860);
    }
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincospif_stret(float a1)
{
  MEMORY[0x2822043D0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}