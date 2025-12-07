uint64_t sub_20CE727E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20CE92720();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_20CE92EE0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_20CE74F38(0, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_20CE72960(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20CE92720();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_20CE92EE0();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_20CE74F38(0, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_20CE72ACC(uint64_t a1, uint64_t a2)
{
  sub_20CE76084(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CE72B38(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_20CE76084(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20CE72BB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CE72BF0()
{
  v1 = sub_20CE93030();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20CE72C90(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20CE92810();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_20CE72D3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20CE92810();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CE72DE0()
{
  sub_20CE7CDA8(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CE72E68(uint64_t a1, uint64_t a2, int *a3)
{
  sub_20CE83968(0, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_20CE83968(0, &qword_281111AE0, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_20CE83968(0, &qword_281111AD8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_20CE83968(0, &qword_281111AD0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 254)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_20CE831C8(0);
    v19 = v18;
    v20 = *(*(v18 - 8) + 48);
    v21 = a1 + a3[9];

    return v20(v21, a2, v19);
  }
}

void sub_20CE73128(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_20CE83968(0, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_20CE83968(0, &qword_281111AE0, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_20CE83968(0, &qword_281111AD8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_20CE83968(0, &qword_281111AD0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8] + 8) = -a2;
  }

  else
  {
    sub_20CE831C8(0);
    v19 = v18;
    v20 = *(*(v18 - 8) + 56);
    v21 = a1 + a4[9];

    v20(v21, a2, a2, v19);
  }
}

uint64_t sub_20CE733EC()
{
  sub_20CE7D994(255);
  sub_20CE83474(&qword_281111888, sub_20CE7D994, MEMORY[0x277CE11A8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CE73474(uint64_t a1, uint64_t a2)
{
  sub_20CE834BC(0, &qword_281111970, sub_20CE7DA3C, sub_20CE7E8B4, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE73570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CE92AA0();
  *a1 = result;
  return result;
}

uint64_t sub_20CE735C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20CE92A80();
  *a1 = result;
  return result;
}

uint64_t sub_20CE7361C@<X0>(uint64_t a1@<X8>)
{
  result = sub_20CE92AF0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20CE73700()
{
  v1 = sub_20CE92720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64) + 7;
  v7 = (v4 + 16 + ((((v6 + v5) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v4;
  v8 = (v6 + v7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);

  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t sub_20CE737F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CE73828()
{
  v1 = sub_20CE92720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20CE92EE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_20CE73990()
{
  v1 = sub_20CE92720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20CE92EE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v10 | 7);
}

uint64_t sub_20CE73AFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CE73B34()
{
  v13 = sub_20CE92720();
  v1 = *(v13 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v11 = sub_20CE92EE0();
  v4 = *(v11 - 8);
  v5 = *(v4 + 80);
  v6 = (((v2 + 16) & ~v2) + v3 + v5) & ~v5;
  v14 = v2 | v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v2 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;
  v12 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 8);
  v8(v0 + ((v2 + 16) & ~v2), v13);
  (*(v4 + 8))(v0 + v6, v11);

  v8(v0 + v10, v13);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v14 | 7);
}

uint64_t sub_20CE73D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CE8E598(0, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_20CE8E598(0, &qword_281111AE0, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20CE73E6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_20CE8E598(0, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_20CE8E598(0, &qword_281111AE0, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_20CE73FCC(uint64_t a1, uint64_t a2)
{
  sub_20CE8DEC8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE74034()
{
  sub_20CE8F664(255);
  sub_20CE8F554(255);
  sub_20CE8F484(255);
  sub_20CE8F3F0(255);
  sub_20CE8F7AC(&qword_281111850, sub_20CE8F3F0, MEMORY[0x277CE3D88]);
  sub_20CE835D8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CE742D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CE90B08(0, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CE743F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_20CE90B08(0, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t getEnumTagSinglePayload for MenstrualCyclesWidget(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MenstrualCyclesWidget(_WORD *result, int a2, int a3)
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

unint64_t sub_20CE74630()
{
  result = qword_281111F08;
  if (!qword_281111F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111F08);
  }

  return result;
}

id sub_20CE74684()
{
  type metadata accessor for MenstrualCyclesWidgetTimelineGenerator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2811123B0 = result;
  return result;
}

uint64_t MenstrualCyclesWidgetEntry.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE92720();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MenstrualCyclesWidgetEntry.dayIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MenstrualCyclesWidgetEntry(0) + 20);
  v4 = sub_20CE92EE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MenstrualCyclesWidgetEntry.dayIndex.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MenstrualCyclesWidgetEntry(0) + 20);
  v4 = sub_20CE92EE0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_20CE74918(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MenstrualCyclesWidgetEntry.projection.getter()
{
  v1 = *(v0 + *(type metadata accessor for MenstrualCyclesWidgetEntry(0) + 28));
  v2 = v1;
  return v1;
}

uint64_t MenstrualCyclesWidgetEntry.relevance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  if (*(v1 + *(v3 + 32) + 4) & 1) != 0 || (*(v1 + *(v3 + 36) + 8))
  {
    v4 = 1;
  }

  else
  {
    sub_20CE92FE0();
    v4 = 0;
  }

  v5 = sub_20CE93010();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

BOOL MenstrualCyclesWidgetEntry.hasFlow.getter()
{
  v1 = (v0 + *(type metadata accessor for MenstrualCyclesWidgetEntry(0) + 40));
  if (v1[1])
  {
    return 0;
  }

  v3 = *v1;
  return v3 == sub_20CE92ED0();
}

uint64_t MenstrualCyclesWidgetEntry.init(date:dayIndex:pregnancyState:projection:relevance:lastMenstrualFlowDayIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v53 = a7;
  v52 = a6;
  v14 = MEMORY[0x277CE3E20];
  sub_20CE74F38(0, &qword_281111FD0, MEMORY[0x277CE3E20]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v50 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - v18;
  v20 = sub_20CE92720();
  v46 = *(v20 - 8);
  v47 = v20;
  v21 = *(v46 + 16);
  v51 = a1;
  v21(a8, a1);
  v22 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v23 = v22[5];
  v24 = sub_20CE92EE0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v49 = a2;
  v45 = v24;
  v26(a8 + v23, a2);
  v27 = a8 + v22[6];
  v48 = a3;
  sub_20CE761D8(a3, v27, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  *(a8 + v22[7]) = a4;
  v28 = a5;
  sub_20CE761D8(a5, v19, &qword_281111FD0, v14);
  v29 = sub_20CE93010();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = v31(v19, 1, v29);
  if (v32 == 1)
  {
    sub_20CE7617C(v19, &qword_281111FD0, MEMORY[0x277CE3E20]);
    v33 = 0;
  }

  else
  {
    sub_20CE92FF0();
    v33 = v34;
    (*(v30 + 8))(v19, v29);
  }

  v35 = a8 + v22[8];
  *v35 = v33;
  *(v35 + 4) = v32 == 1;
  v36 = v50;
  sub_20CE761D8(v28, v50, &qword_281111FD0, MEMORY[0x277CE3E20]);
  v37 = v31(v36, 1, v29);
  if (v37 == 1)
  {
    v38 = MEMORY[0x277CE3E20];
    sub_20CE7617C(v28, &qword_281111FD0, MEMORY[0x277CE3E20]);
    sub_20CE7617C(v48, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    (*(v25 + 8))(v49, v45);
    (*(v46 + 8))(v51, v47);
    result = sub_20CE7617C(v36, &qword_281111FD0, v38);
    v40 = 0;
  }

  else
  {
    sub_20CE93000();
    v40 = v41;
    sub_20CE7617C(v28, &qword_281111FD0, MEMORY[0x277CE3E20]);
    sub_20CE7617C(v48, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    (*(v25 + 8))(v49, v45);
    (*(v46 + 8))(v51, v47);
    result = (*(v30 + 8))(v36, v29);
  }

  v42 = a8 + v22[9];
  *v42 = v40;
  *(v42 + 8) = v37 == 1;
  v43 = a8 + v22[10];
  *v43 = v52;
  *(v43 + 8) = v53 & 1;
  return result;
}

void sub_20CE74F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE93210();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20CE74F8C@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v82 = sub_20CE92750();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20CE92810();
  MEMORY[0x28223BE20](v5 - 8);
  v76 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CE92EE0();
  MEMORY[0x28223BE20](v7 - 8);
  v77 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_20CE92870();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_20CE925B0();
  v10 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20CE92720();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v75 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v85 = v70 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v70 - v19;
  MEMORY[0x28223BE20](v18);
  v87 = v70 - v21;
  sub_20CE74F38(0, &qword_281112028, MEMORY[0x277CC88A8]);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v70 - v26;
  sub_20CE74F38(0, &qword_281111FB0, MEMORY[0x277CC9578]);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = v70 - v32;
  if ([a1 state] == 1)
  {
    v34 = [a1 sample];
    if (v34)
    {
      v74 = a2;
      v73 = v34;
      v35 = [a1 estimatedDueDate];
      if (v35)
      {
        v36 = v35;
        sub_20CE92700();

        (*(v13 + 56))(v33, 0, 1, v12);
      }

      else
      {
        (*(v13 + 56))(v33, 1, 1, v12);
      }

      v40 = [a1 pregnancyDuration];
      if (v40)
      {
        v41 = v40;
        sub_20CE92580();

        v42 = 0;
      }

      else
      {
        v42 = 1;
      }

      v43 = v10;
      v44 = *(v10 + 56);
      v45 = v86;
      v44(v27, v42, 1, v86);
      sub_20CE761D8(v33, v31, &qword_281111FB0, MEMORY[0x277CC9578]);
      if ((*(v13 + 48))(v31, 1, v12) == 1)
      {
        v46 = &qword_281111FB0;
        v47 = MEMORY[0x277CC9578];
        v48 = v31;
      }

      else
      {
        (*(v13 + 32))(v87, v31, v12);
        sub_20CE761D8(v27, v25, &qword_281112028, MEMORY[0x277CC88A8]);
        if ((*(v43 + 48))(v25, 1, v45) != 1)
        {
          v72 = v43;
          (*(v43 + 32))(v84, v25, v45);
          v73 = v73;
          v51 = [v73 startDate];
          sub_20CE92700();

          sub_20CE926D0();
          v53 = v52;
          v54 = *(v13 + 8);
          v70[1] = v13 + 8;
          v71 = v54;
          v54(v20, v12);
          sub_20CE925A0();
          v56 = v55 / v53;
          sub_20CE92710();
          v70[0] = *(v13 + 16);
          (v70[0])(v85, v20, v12);
          v57 = v80;
          v58 = v78;
          v59 = v82;
          (*(v80 + 104))(v78, *MEMORY[0x277CC9830], v82);
          sub_20CE92760();
          (*(v57 + 8))(v58, v59);
          v60 = v85;
          sub_20CE92EC0();
          v61 = v60;
          v62 = v70[0];
          (v70[0])(v61, v87, v12);
          v62(v75, v20, v12);
          v63 = v73;
          v64 = v79;
          sub_20CE92830();
          v65 = v71;
          v71(v20, v12);
          (*(v72 + 8))(v84, v86);
          v65(v87, v12);
          sub_20CE76084(0);
          v67 = v66;
          v68 = *(v66 + 64);
          v69 = v74;
          *v74 = v63;
          v69[1] = v56;
          (*(v81 + 32))(v69 + v68, v64, v83);
          (*(*(v67 - 8) + 56))(v69, 0, 1, v67);

          goto LABEL_18;
        }

        (*(v13 + 8))(v87, v12);
        v46 = &qword_281112028;
        v47 = MEMORY[0x277CC88A8];
        v48 = v25;
      }

      sub_20CE7617C(v48, v46, v47);
      sub_20CE76084(0);
      (*(*(v49 - 8) + 56))(v74, 1, 1, v49);

      v50 = v73;
LABEL_18:
      sub_20CE7617C(v27, &qword_281112028, MEMORY[0x277CC88A8]);
      return sub_20CE7617C(v33, &qword_281111FB0, MEMORY[0x277CC9578]);
    }
  }

  sub_20CE76084(0);
  v38 = *(*(v37 - 8) + 56);

  return v38(a2, 1, 1, v37);
}

uint64_t sub_20CE7595C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE92720();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_20CE759C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 32) + 4) & 1) != 0 || (*(v2 + *(a1 + 36) + 8))
  {
    v4 = 1;
  }

  else
  {
    sub_20CE92FE0();
    v4 = 0;
  }

  v5 = sub_20CE93010();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t _s29HealthMenstrualCyclesWidgetUI0bcD5EntryV5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20CE92870();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v37 - v9;
  v10 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CE76244(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[*(v14 + 56)];
  sub_20CE762A8(a1, v16);
  sub_20CE762A8(a2, v17);
  sub_20CE76084(0);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  if (v20(v16, 1, v18) == 1)
  {
    v21 = 1;
    v22 = v20(v17, 1, v19);
    v23 = type metadata accessor for MenstrualCyclesWidgetEntry.State;
    if (v22 == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v39 = v5;
  sub_20CE762A8(v16, v12);
  v24 = *v12;
  v25 = v12[1];
  v26 = *(v19 + 64);
  if (v20(v17, 1, v19) != 1)
  {
    v38 = *v17;
    v27 = *(v17 + 8);
    v28 = v39;
    v29 = *(v39 + 32);
    v29(v40, v12 + v26, v4);
    v29(v8, (v17 + v26), v4);
    sub_20CE7636C(0, &qword_2811117F8, 0x277D82BB8);
    v30 = v38;
    v31 = sub_20CE931F0();

    if (v31)
    {
      if (v25 == v27)
      {
        v32 = v40;
        v21 = MEMORY[0x20F316440](v40, v8);
        v33 = *(v39 + 8);
        v33(v8, v4);
        v33(v32, v4);
LABEL_13:
        v23 = type metadata accessor for MenstrualCyclesWidgetEntry.State;
        goto LABEL_14;
      }

      v35 = *(v39 + 8);
      v35(v8, v4);
      v35(v40, v4);
    }

    else
    {
      v34 = *(v28 + 8);
      v34(v8, v4);
      v34(v40, v4);
    }

    v21 = 0;
    goto LABEL_13;
  }

  (*(v39 + 8))(v12 + v26, v4);

LABEL_6:
  v21 = 0;
  v23 = sub_20CE76244;
LABEL_14:
  sub_20CE7630C(v16, v23);
  return v21 & 1;
}

void sub_20CE75E74(uint64_t a1)
{
  sub_20CE92720();
  if (v1 <= 0x3F)
  {
    sub_20CE92EE0();
    if (v2 <= 0x3F)
    {
      sub_20CE74F38(319, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      if (v3 <= 0x3F)
      {
        sub_20CE75FBC(319);
        if (v4 <= 0x3F)
        {
          sub_20CE76024(319, &qword_281111828, MEMORY[0x277D83A90]);
          if (v5 <= 0x3F)
          {
            sub_20CE76024(319, &qword_281111830, MEMORY[0x277D839F8]);
            if (v6 <= 0x3F)
            {
              sub_20CE76024(319, &qword_281111820, MEMORY[0x277D83B88]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_20CE75FBC(uint64_t a1)
{
  if (!qword_281111818)
  {
    sub_20CE7636C(255, &qword_281111FC8, 0x277D119D0);
    v1 = sub_20CE93210();
    if (!v2)
    {
      atomic_store(v1, &qword_281111818);
    }
  }
}

void sub_20CE76024(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_20CE93210();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CE76084(uint64_t a1)
{
  if (!qword_281111810)
  {
    sub_20CE7636C(255, &qword_281111FC0, 0x277CCD0B0);
    sub_20CE92870();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_281111810);
    }
  }
}

uint64_t sub_20CE76124(uint64_t a1)
{
  sub_20CE76084(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_20CE7617C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_20CE74F38(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CE761D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CE74F38(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_20CE76244(uint64_t a1)
{
  if (!qword_27C818160)
  {
    type metadata accessor for MenstrualCyclesWidgetEntry.State(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C818160);
    }
  }
}

uint64_t sub_20CE762A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE7630C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CE7636C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_20CE763B4()
{
  v0 = sub_20CE928F0();
  __swift_allocate_value_buffer(v0, qword_2811123D0);
  __swift_project_value_buffer(v0, qword_2811123D0);
  return sub_20CE928E0();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t MenstrualCyclesWidgetTimelineProvider.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_20CE92750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  type metadata accessor for MenstrualCyclesWidgetTimelineGenerator(0);
  v7 = swift_allocObject();
  sub_20CE927F0();
  v8 = *MEMORY[0x277CC9830];
  v9 = *(v3 + 104);
  v9(v5, v8, v2);
  sub_20CE92760();
  v10 = *(v3 + 8);
  v10(v5, v2);
  *(v7 + 16) = v6;
  *(v7 + 24) = [objc_allocWithZone(MEMORY[0x277D11A10]) initWithHealthStore_];
  *a1 = v7;
  type metadata accessor for MenstrualCyclesWidgetTimelineProvider(0);
  v9(v5, v8, v2);
  sub_20CE92760();
  return (v10)(v5, v2);
}

uint64_t MenstrualCyclesWidgetTimelineProvider.placeholder(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v102 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_20CE7C1FC(0, &qword_281111FD0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v100 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v85 - v10;
  MEMORY[0x28223BE20](v9);
  v97 = &v85 - v12;
  sub_20CE7C1FC(0, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State, v5);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = &v85 - v14;
  v15 = sub_20CE92810();
  v88 = *(v15 - 8);
  v89 = v15;
  MEMORY[0x28223BE20](v15);
  v87 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20CE92EE0();
  v98 = *(v17 - 8);
  v99 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v101 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v93 = &v85 - v20;
  v21 = sub_20CE92720();
  v94 = *(v21 - 8);
  v95 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v91 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v86 = &v85 - v25;
  MEMORY[0x28223BE20](v24);
  v92 = &v85 - v26;
  v27 = sub_20CE93030();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v85 - v32;
  if (qword_281111B08 != -1)
  {
    swift_once();
  }

  v90 = v11;
  v34 = sub_20CE92970();
  __swift_project_value_buffer(v34, qword_2811123B8);
  v35 = *(v28 + 16);
  v35(v33, a1, v27);
  v36 = sub_20CE92950();
  v37 = sub_20CE931A0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v85 = v3;
    v40 = v39;
    v103[0] = v39;
    *v38 = 136446466;
    *(v38 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, v103);
    *(v38 + 12) = 2082;
    v35(v31, v33, v27);
    v41 = sub_20CE930D0();
    v43 = v42;
    (*(v28 + 8))(v33, v27);
    v44 = sub_20CE7C260(v41, v43, v103);

    *(v38 + 14) = v44;
    _os_log_impl(&dword_20CE71000, v36, v37, "[%{public}s] Returning placeholder for context: %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    v45 = v40;
    v3 = v85;
    MEMORY[0x20F317370](v45, -1, -1);
    MEMORY[0x20F317370](v38, -1, -1);
  }

  else
  {

    (*(v28 + 8))(v33, v27);
  }

  v46 = v92;
  sub_20CE92710();
  v47 = v95;
  v48 = *(v94 + 16);
  v48(v86, v46, v95);
  v85 = v48;
  v49 = type metadata accessor for MenstrualCyclesWidgetTimelineProvider(0);
  (*(v88 + 16))(v87, &v3[*(v49 + 24)], v89);
  v50 = v93;
  sub_20CE92EC0();
  v51 = v91;
  v48(v91, v46, v47);
  v52 = v99;
  v89 = *(v98 + 16);
  v89(v101, v50, v99);
  v53 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  v54 = v96;
  (*(*(v53 - 8) + 56))(v96, 1, 1, v53);
  v55 = sub_20CE93010();
  v56 = *(v55 - 8);
  v57 = v97;
  (*(v56 + 56))(v97, 1, 1, v55);
  v58 = v102;
  (v85)(v102, v51, v47);
  v59 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v89((v58 + v59[5]), v101, v52);
  sub_20CE7C96C(v54, v58 + v59[6], &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  *(v58 + v59[7]) = 0;
  v60 = v90;
  sub_20CE7C96C(v57, v90, &qword_281111FD0, MEMORY[0x277CE3E20]);
  v61 = *(v56 + 48);
  v62 = v61(v60, 1, v55);
  if (v62 == 1)
  {
    sub_20CE7C8FC(v60, &qword_281111FD0, MEMORY[0x277CE3E20]);
    v63 = 0;
  }

  else
  {
    sub_20CE92FF0();
    v63 = v64;
    (*(v56 + 8))(v60, v55);
  }

  v65 = v102 + v59[8];
  *v65 = v63;
  *(v65 + 4) = v62 == 1;
  v66 = v97;
  v67 = v100;
  sub_20CE7C96C(v97, v100, &qword_281111FD0, MEMORY[0x277CE3E20]);
  v68 = v61(v67, 1, v55);
  if (v68 == 1)
  {
    v69 = MEMORY[0x277CE3E20];
    sub_20CE7C8FC(v66, &qword_281111FD0, MEMORY[0x277CE3E20]);
    sub_20CE7C8FC(v96, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    v70 = v99;
    v71 = *(v98 + 8);
    v71(v101, v99);
    v72 = v95;
    v73 = *(v94 + 8);
    v73(v91, v95);
    v71(v93, v70);
    v73(v92, v72);
    result = sub_20CE7C8FC(v100, &qword_281111FD0, v69);
    v75 = 0;
  }

  else
  {
    sub_20CE93000();
    v75 = v76;
    sub_20CE7C8FC(v66, &qword_281111FD0, MEMORY[0x277CE3E20]);
    sub_20CE7C8FC(v96, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    v77 = *(v98 + 8);
    v78 = v56;
    v79 = v99;
    v77(v101, v99);
    v80 = v95;
    v81 = *(v94 + 8);
    v81(v91, v95);
    v77(v93, v79);
    v81(v92, v80);
    result = (*(v78 + 8))(v100, v55);
  }

  v82 = v102;
  v83 = v102 + v59[9];
  *v83 = v75;
  *(v83 + 8) = v68 == 1;
  v84 = v82 + v59[10];
  *v84 = 0;
  *(v84 + 8) = 1;
  return result;
}

uint64_t MenstrualCyclesWidgetTimelineProvider.getSnapshot(in:completion:)(void (*a1)(char *, char *, uint64_t), void (*a2)(char *), uint64_t a3)
{
  v107 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_20CE7C1FC(0, &qword_281111FD0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v98 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v95 = &v93 - v10;
  MEMORY[0x28223BE20](v9);
  v96 = &v93 - v11;
  sub_20CE7C1FC(0, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State, v5);
  MEMORY[0x28223BE20](v12 - 8);
  v106 = &v93 - v13;
  v115 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v14 = MEMORY[0x28223BE20](v115);
  v114 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v97 = &v93 - v16;
  v120 = sub_20CE92F30();
  v117 = *(v120 - 8);
  v17 = MEMORY[0x28223BE20](v120);
  v94 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v113 = &v93 - v19;
  v102 = sub_20CE92810();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_20CE92EE0();
  v21 = *(v116 - 8);
  v22 = MEMORY[0x28223BE20](v116);
  v104 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v112 = &v93 - v24;
  v25 = sub_20CE92720();
  v118 = *(v25 - 8);
  v119 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v110 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v99 = &v93 - v29;
  MEMORY[0x28223BE20](v28);
  v111 = &v93 - v30;
  v31 = sub_20CE93030();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v93 - v36;
  if (qword_281111B08 != -1)
  {
    swift_once();
  }

  v38 = sub_20CE92970();
  __swift_project_value_buffer(v38, qword_2811123B8);
  v39 = *(v32 + 16);
  v109 = a1;
  v39(v37, a1, v31);
  v40 = sub_20CE92950();
  v41 = sub_20CE931A0();
  v42 = os_log_type_enabled(v40, v41);
  v108 = a3;
  v105 = v21;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v121[0] = v44;
    *v43 = 136446466;
    *(v43 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, v121);
    *(v43 + 12) = 2082;
    v39(v35, v37, v31);
    v45 = sub_20CE930D0();
    v47 = v46;
    (*(v32 + 8))(v37, v31);
    v48 = sub_20CE7C260(v45, v47, v121);

    *(v43 + 14) = v48;
    _os_log_impl(&dword_20CE71000, v40, v41, "[%{public}s] Requesting snapshot for context: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F317370](v44, -1, -1);
    v49 = v43;
    v21 = v105;
    MEMORY[0x20F317370](v49, -1, -1);
  }

  else
  {

    (*(v32 + 8))(v37, v31);
  }

  v50 = v111;
  sub_20CE92710();
  v51 = v119;
  v52 = *(v118 + 16);
  v52(v99, v50, v119);
  v53 = type metadata accessor for MenstrualCyclesWidgetTimelineProvider(0);
  (*(v101 + 16))(v100, v103 + *(v53 + 24), v102);
  v54 = v112;
  sub_20CE92EC0();
  v55 = v113;
  sub_20CE93020();
  v56 = v117;
  v57 = (*(v117 + 88))(v55, v120);
  if (v57 == *MEMORY[0x277CE3B68] || v57 == *MEMORY[0x277CE3B98])
  {
    v72 = v94;
    sub_20CE93020();
    v73 = swift_allocObject();
    *(v73 + 16) = v107;
    *(v73 + 24) = v108;

    sub_20CE88D48(v50, v72, sub_20CE7C838, v73);

    (*(v56 + 8))(v72, v120);
    (*(v21 + 8))(v54, v116);
    return (*(v118 + 8))(v50, v51);
  }

  else
  {
    v52(v110, v50, v51);
    v109 = *(v21 + 16);
    v58 = v104;
    v59 = v116;
    v109(v104, v54, v116);
    v60 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
    v61 = v106;
    (*(*(v60 - 8) + 56))(v106, 1, 1, v60);
    v62 = sub_20CE93010();
    v63 = *(v62 - 8);
    v64 = v96;
    (*(v63 + 56))(v96, 1, 1, v62);
    v65 = v114;
    v52(v114, v110, v119);
    v66 = v115;
    v109(&v65[v115[5]], v58, v59);
    sub_20CE7C96C(v61, &v65[v66[6]], &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    *&v65[v66[7]] = 0;
    v67 = v64;
    v68 = v95;
    sub_20CE7C96C(v64, v95, &qword_281111FD0, MEMORY[0x277CE3E20]);
    v69 = *(v63 + 48);
    v70 = v69(v68, 1, v62);
    if (v70 == 1)
    {
      sub_20CE7C8FC(v68, &qword_281111FD0, MEMORY[0x277CE3E20]);
      v71 = 0;
    }

    else
    {
      sub_20CE92FF0();
      v71 = v75;
      (*(v63 + 8))(v68, v62);
    }

    v76 = v98;
    v77 = &v114[v115[8]];
    *v77 = v71;
    v77[4] = v70 == 1;
    sub_20CE7C96C(v64, v76, &qword_281111FD0, MEMORY[0x277CE3E20]);
    v78 = v69(v76, 1, v62);
    v79 = v105;
    if (v78 == 1)
    {
      v80 = v76;
      v81 = MEMORY[0x277CE3E20];
      sub_20CE7C8FC(v67, &qword_281111FD0, MEMORY[0x277CE3E20]);
      sub_20CE7C8FC(v106, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      v82 = *(v79 + 8);
      v83 = v116;
      v82(v104, v116);
      v84 = v119;
      v85 = *(v118 + 8);
      v85(v110, v119);
      sub_20CE7C8FC(v80, &qword_281111FD0, v81);
      v86 = 0;
    }

    else
    {
      sub_20CE93000();
      v86 = v87;
      sub_20CE7C8FC(v67, &qword_281111FD0, MEMORY[0x277CE3E20]);
      sub_20CE7C8FC(v106, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      v82 = *(v79 + 8);
      v83 = v116;
      v82(v104, v116);
      v84 = v119;
      v85 = *(v118 + 8);
      v85(v110, v119);
      (*(v63 + 8))(v76, v62);
    }

    v88 = v114;
    v89 = v115;
    v90 = &v114[v115[9]];
    *v90 = v86;
    v90[8] = v78 == 1;
    v91 = v88 + v89[10];
    *v91 = 0;
    *(v91 + 8) = 1;
    v92 = v97;
    sub_20CE7CAE4(v88, v97, type metadata accessor for MenstrualCyclesWidgetEntry);
    v107(v92);
    sub_20CE7CBB4(v92, type metadata accessor for MenstrualCyclesWidgetEntry);
    v82(v112, v83);
    v85(v111, v84);
    return (*(v117 + 8))(v113, v120);
  }
}

uint64_t sub_20CE77E40(uint64_t a1, uint64_t (*a2)(void))
{
  sub_20CE7C1FC(0, &qword_281111FD0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281111B08 != -1)
  {
    swift_once();
  }

  v10 = sub_20CE92970();
  __swift_project_value_buffer(v10, qword_2811123B8);
  sub_20CE7CB4C(a1, v9, type metadata accessor for MenstrualCyclesWidgetEntry);
  v11 = sub_20CE92950();
  v12 = sub_20CE931A0();
  if (os_log_type_enabled(v11, v12))
  {
    v22 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, &v23);
    *(v13 + 12) = 2080;
    if (v9[*(v7 + 32) + 4] & 1) != 0 || (v9[*(v7 + 36) + 8])
    {
      v15 = 1;
    }

    else
    {
      sub_20CE92FE0();
      v15 = 0;
    }

    v16 = sub_20CE93010();
    (*(*(v16 - 8) + 56))(v6, v15, 1, v16);
    v17 = sub_20CE930D0();
    v19 = v18;
    sub_20CE7CBB4(v9, type metadata accessor for MenstrualCyclesWidgetEntry);
    v20 = sub_20CE7C260(v17, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_20CE71000, v11, v12, "[%{public}s] Submitting entry with relevance: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F317370](v14, -1, -1);
    MEMORY[0x20F317370](v13, -1, -1);

    a2 = v22;
  }

  else
  {

    sub_20CE7CBB4(v9, type metadata accessor for MenstrualCyclesWidgetEntry);
  }

  return a2(a1);
}

uint64_t MenstrualCyclesWidgetTimelineProvider.getTimeline(in:completion:)(uint64_t a1, void (*a2)(char *), void (*a3)(char *))
{
  v153 = a3;
  v152 = a2;
  v4 = sub_20CE92FD0();
  MEMORY[0x28223BE20](v4 - 8);
  v148 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7C840(0);
  v150 = v6;
  v149 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v147 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_20CE7C1FC(0, &qword_281111FD0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v144 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v142 = &v132 - v13;
  MEMORY[0x28223BE20](v12);
  v143 = &v132 - v14;
  sub_20CE7C1FC(0, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State, v8);
  MEMORY[0x28223BE20](v15 - 8);
  v163 = &v132 - v16;
  v164 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v145 = *(v164 - 8);
  v17 = MEMORY[0x28223BE20](v164);
  v168 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v146 = &v132 - v19;
  v20 = sub_20CE92F30();
  v170 = *(v20 - 8);
  v171 = v20;
  MEMORY[0x28223BE20](v20);
  v169 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_20CE92800();
  v158 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v157 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7C1FC(0, &qword_281111FB0, MEMORY[0x277CC9578], v8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v141 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v159 = &v132 - v27;
  MEMORY[0x28223BE20](v26);
  v173 = &v132 - v28;
  v29 = sub_20CE92810();
  v156 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v155 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20CE92EE0();
  v167 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31);
  v166 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v175 = &v132 - v34;
  v176 = sub_20CE92720();
  v35 = *(v176 - 8);
  v36 = MEMORY[0x28223BE20](v176);
  v161 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v140 = &v132 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v154 = &v132 - v41;
  MEMORY[0x28223BE20](v40);
  v174 = &v132 - v42;
  v43 = sub_20CE93030();
  v44 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43);
  v151 = &v132 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v132 - v47;
  if (qword_281111B08 != -1)
  {
    swift_once();
  }

  v172 = v35;
  v49 = sub_20CE92970();
  __swift_project_value_buffer(v49, qword_2811123B8);
  v50 = *(v44 + 16);
  v50(v48, a1, v43);
  v51 = sub_20CE92950();
  v52 = sub_20CE931A0();
  v53 = os_log_type_enabled(v51, v52);
  v177 = v31;
  v162 = a1;
  v137 = v43;
  v136 = v44;
  v134 = v44 + 16;
  v133 = v50;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v139 = v29;
    v56 = v55;
    v178 = v55;
    *v54 = 136446466;
    *(v54 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, &v178);
    *(v54 + 12) = 2082;
    v50(v151, v48, v43);
    v57 = sub_20CE930D0();
    v58 = v44;
    v59 = v57;
    v61 = v60;
    (*(v58 + 8))(v48, v43);
    v62 = sub_20CE7C260(v59, v61, &v178);

    *(v54 + 14) = v62;
    _os_log_impl(&dword_20CE71000, v51, v52, "[%{public}s] Requesting timeline for context: %{public}s", v54, 0x16u);
    swift_arrayDestroy();
    v63 = v56;
    v29 = v139;
    MEMORY[0x20F317370](v63, -1, -1);
    MEMORY[0x20F317370](v54, -1, -1);
  }

  else
  {

    (*(v44 + 8))(v48, v43);
  }

  v64 = v174;
  sub_20CE92710();
  v65 = v172;
  v66 = *(v172 + 16);
  v67 = v176;
  v139 = v172 + 16;
  v138 = v66;
  v66(v154, v64, v176);
  v68 = type metadata accessor for MenstrualCyclesWidgetTimelineProvider(0);
  (*(v156 + 16))(v155, v165 + *(v68 + 24), v29);
  sub_20CE92EC0();
  v69 = v173;
  v156 = *(v65 + 56);
  (v156)(v173, 1, 1, v67);
  v70 = v158;
  v71 = v157;
  v72 = v160;
  (*(v158 + 104))(v157, *MEMORY[0x277CC9998], v160);
  v73 = v159;
  sub_20CE927E0();
  (*(v70 + 8))(v71, v72);
  v74 = *(v65 + 48);
  if (v74(v73, 1, v67) == 1)
  {
    sub_20CE7C8FC(v73, &qword_281111FB0, MEMORY[0x277CC9578]);
  }

  else
  {
    sub_20CE7C8FC(v69, &qword_281111FB0, MEMORY[0x277CC9578]);
    (*(v65 + 32))(v69, v73, v67);
    (v156)(v69, 0, 1, v67);
  }

  v75 = v177;
  v76 = v169;
  v77 = v162;
  sub_20CE93020();
  v78 = (*(v170 + 88))(v76, v171);
  if (v78 == *MEMORY[0x277CE3B68] || v78 == *MEMORY[0x277CE3B98])
  {
    v97 = v173;
    v98 = v141;
    sub_20CE7C96C(v173, v141, &qword_281111FB0, MEMORY[0x277CC9578]);
    v99 = v176;
    if (v74(v98, 1, v176) == 1)
    {
      v100 = MEMORY[0x277CC9578];
      sub_20CE7C8FC(v97, &qword_281111FB0, MEMORY[0x277CC9578]);
      (*(v167 + 8))(v175, v75);
      (*(v172 + 8))(v174, v99);
      return sub_20CE7C8FC(v98, &qword_281111FB0, v100);
    }

    else
    {
      v102 = v172;
      (*(v172 + 32))(v140, v98, v99);
      v103 = v151;
      v104 = v137;
      v133(v151, v77, v137);
      v105 = v136;
      v106 = (*(v136 + 80) + 16) & ~*(v136 + 80);
      v107 = (v135 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
      v108 = swift_allocObject();
      (*(v105 + 32))(v108 + v106, v103, v104);
      v109 = (v108 + v107);
      v110 = v153;
      *v109 = v152;
      v109[1] = v110;

      v111 = v174;
      v112 = v140;
      sub_20CE83E7C(v174, v140, sub_20CE7C9EC, v108);

      v113 = *(v102 + 8);
      v113(v112, v99);
      sub_20CE7C8FC(v97, &qword_281111FB0, MEMORY[0x277CC9578]);
      (*(v167 + 8))(v175, v177);
      return (v113)(v111, v99);
    }
  }

  else
  {
    v79 = v161;
    v80 = v176;
    v81 = v138;
    v138(v161, v174, v176);
    v165 = *(v167 + 16);
    v165(v166, v175, v177);
    v82 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
    v83 = v163;
    (*(*(v82 - 8) + 56))(v163, 1, 1, v82);
    v84 = sub_20CE93010();
    v85 = *(v84 - 8);
    v86 = v143;
    (*(v85 + 56))(v143, 1, 1, v84);
    v87 = v168;
    v88 = v79;
    v89 = v80;
    v90 = v86;
    v91 = v164;
    v81(v168, v88, v89);
    v92 = v177;
    v165(&v87[v91[5]], v166, v177);
    sub_20CE7C96C(v83, &v87[v91[6]], &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    *&v87[v91[7]] = 0;
    v93 = v142;
    sub_20CE7C96C(v90, v142, &qword_281111FD0, MEMORY[0x277CE3E20]);
    v94 = *(v85 + 48);
    v95 = v94(v93, 1, v84);
    if (v95 == 1)
    {
      sub_20CE7C8FC(v93, &qword_281111FD0, MEMORY[0x277CE3E20]);
      v96 = 0;
    }

    else
    {
      sub_20CE92FF0();
      v96 = v114;
      (*(v85 + 8))(v93, v84);
    }

    v115 = v144;
    v116 = &v168[v91[8]];
    *v116 = v96;
    v116[4] = v95 == 1;
    sub_20CE7C96C(v90, v115, &qword_281111FD0, MEMORY[0x277CE3E20]);
    v117 = v94(v115, 1, v84);
    if (v117 == 1)
    {
      v118 = v115;
      v119 = MEMORY[0x277CE3E20];
      sub_20CE7C8FC(v90, &qword_281111FD0, MEMORY[0x277CE3E20]);
      sub_20CE7C8FC(v163, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      v167 = *(v167 + 8);
      (v167)(v166, v92);
      v120 = *(v172 + 8);
      v121 = v176;
      v120(v161, v176);
      sub_20CE7C8FC(v118, &qword_281111FD0, v119);
      v122 = 0;
    }

    else
    {
      sub_20CE93000();
      v122 = v123;
      sub_20CE7C8FC(v90, &qword_281111FD0, MEMORY[0x277CE3E20]);
      sub_20CE7C8FC(v163, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      v167 = *(v167 + 8);
      (v167)(v166, v92);
      v120 = *(v172 + 8);
      v121 = v176;
      v120(v161, v176);
      (*(v85 + 8))(v115, v84);
    }

    v124 = v164;
    v125 = v168;
    v126 = &v168[*(v164 + 36)];
    *v126 = v122;
    v126[8] = v117 == 1;
    v127 = v125 + *(v124 + 40);
    *v127 = 0;
    *(v127 + 8) = 1;
    v128 = v146;
    sub_20CE7CAE4(v125, v146, type metadata accessor for MenstrualCyclesWidgetEntry);
    sub_20CE7C1FC(0, &qword_27C818178, type metadata accessor for MenstrualCyclesWidgetEntry, MEMORY[0x277D84560]);
    v129 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_20CE93A50;
    sub_20CE7CB4C(v128, v130 + v129, type metadata accessor for MenstrualCyclesWidgetEntry);
    sub_20CE92FC0();
    sub_20CE7C8A4();
    v131 = v147;
    sub_20CE93040();
    v152(v131);
    (*(v149 + 8))(v131, v150);
    sub_20CE7CBB4(v128, type metadata accessor for MenstrualCyclesWidgetEntry);
    sub_20CE7C8FC(v173, &qword_281111FB0, MEMORY[0x277CC9578]);
    (v167)(v175, v177);
    v120(v174, v121);
    return (*(v170 + 8))(v169, v171);
  }
}

uint64_t sub_20CE7957C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v36 = a1;
  v37 = a4;
  v6 = sub_20CE92FD0();
  MEMORY[0x28223BE20](v6 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7C840(0);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CE93030();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  if (qword_281111B08 != -1)
  {
    swift_once();
  }

  v17 = sub_20CE92970();
  __swift_project_value_buffer(v17, qword_2811123B8);
  v18 = *(v11 + 16);
  v18(v16, a2, v10);
  v19 = sub_20CE92950();
  v20 = sub_20CE931A0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = a3;
    v23 = v22;
    v38 = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, &v38);
    *(v21 + 12) = 2082;
    v18(v14, v16, v10);
    v24 = sub_20CE930D0();
    v26 = v25;
    (*(v11 + 8))(v16, v10);
    v27 = sub_20CE7C260(v24, v26, &v38);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_20CE71000, v19, v20, "[%{public}s] Returning timeline for context: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v31;
    MEMORY[0x20F317370](v28, -1, -1);
    MEMORY[0x20F317370](v21, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
  }

  sub_20CE92FB0();
  type metadata accessor for MenstrualCyclesWidgetEntry(0);
  sub_20CE7C8A4();
  v29 = v32;
  sub_20CE93040();
  a3(v29);
  return (*(v34 + 8))(v29, v35);
}

uint64_t sub_20CE79970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CE79A24;

  return MEMORY[0x282136270](a1, a2, a3);
}

uint64_t sub_20CE79A24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CE79B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CE7CF30;

  return MEMORY[0x282136278](a1, a2, a3);
}

uint64_t MenstrualCyclesWidgetTimelineProvider.relevance()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20CE92F30();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20CE92720();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CE79D18, 0, 0);
}

uint64_t sub_20CE79D18()
{
  v17 = v0;
  if (qword_281111B08 != -1)
  {
    swift_once();
  }

  v1 = sub_20CE92970();
  v0[12] = __swift_project_value_buffer(v1, qword_2811123B8);
  v2 = sub_20CE92950();
  v3 = sub_20CE931A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, &v16);
    _os_log_impl(&dword_20CE71000, v2, v3, "[%{public}s] Fetching widget relevance", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F317370](v5, -1, -1);
    MEMORY[0x20F317370](v4, -1, -1);
  }

  v6 = v0[9];
  v8 = v0[5];
  v7 = v0[6];
  v10 = v0[3];
  v9 = v0[4];
  sub_20CE92710();
  (*(v8 + 104))(v7, *MEMORY[0x277CE3B98], v9);
  v11 = swift_task_alloc();
  v0[13] = v11;
  v11[2] = v10;
  v11[3] = v6;
  v11[4] = v7;
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_20CE79F5C;
  v14 = v0[10];
  v13 = v0[11];

  return MEMORY[0x2822007B8](v13, 0, 0, 0xD00000000000001ALL, 0x800000020CE94F00, sub_20CE7CA8C, v11, v14);
}

uint64_t sub_20CE79F5C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20CE7A134, 0, 0);
}

uint64_t sub_20CE7A134()
{
  v25 = v0;
  v1 = MenstrualCyclesWidgetRelevanceProvider.widgetRelevances(_:)(v0[11]);
  v2 = MEMORY[0x277D84F78];
  if (v1)
  {
    v3 = v1;

    v4 = sub_20CE92950();
    v5 = sub_20CE931A0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24 = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, &v24);
      *(v6 + 12) = 2082;
      sub_20CE7CEDC(0, &qword_281111FD8, v2 + 8, MEMORY[0x277CE3B48]);
      v9 = MEMORY[0x20F316CF0](v3, v8);
      v11 = sub_20CE7C260(v9, v10, &v24);

      *(v6 + 14) = v11;
      _os_log_impl(&dword_20CE71000, v4, v5, "[%{public}s] Returning widget relevances %{public}s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F317370](v7, -1, -1);
      MEMORY[0x20F317370](v6, -1, -1);
    }

    v12 = v0[11];
    sub_20CE92F60();
    sub_20CE7CBB4(v12, type metadata accessor for MenstrualCyclesWidgetEntry);
    v13 = 0;
  }

  else
  {
    v14 = sub_20CE92950();
    v15 = sub_20CE931A0();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[11];
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, &v24);
      _os_log_impl(&dword_20CE71000, v14, v15, "[%{public}s] No widget relevance", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F317370](v19, -1, -1);
      MEMORY[0x20F317370](v18, -1, -1);
    }

    sub_20CE7CBB4(v17, type metadata accessor for MenstrualCyclesWidgetEntry);
    v13 = 1;
  }

  v20 = v0[2];
  sub_20CE7CEDC(0, &qword_27C818180, v2 + 8, MEMORY[0x277CE3BE0]);
  (*(*(v21 - 8) + 56))(v20, v13, 1, v21);

  v22 = v0[1];

  return v22();
}

uint64_t MenstrualCyclesWidgetRelevanceProvider.widgetRelevances(_:)(uint64_t a1)
{
  v172 = sub_20CE92720();
  v170 = *(v172 - 1);
  MEMORY[0x28223BE20](v172);
  v171 = &v161 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_20CE92EE0();
  v174 = *(v180 - 8);
  v3 = MEMORY[0x28223BE20](v180);
  v166 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v163 = &v161 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v164 = &v161 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v165 = &v161 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v162 = &v161 - v12;
  MEMORY[0x28223BE20](v11);
  v181 = &v161 - v13;
  v169 = sub_20CE92750();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v15 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20CE92810();
  v17 = *(v16 - 8);
  v183 = v16;
  v184 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v167 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v182 = &v161 - v20;
  v21 = sub_20CE92550();
  v178 = *(v21 - 8);
  v179 = v21;
  MEMORY[0x28223BE20](v21);
  v177 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20CE92570();
  MEMORY[0x28223BE20](v23 - 8);
  v176 = (&v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CE7C1FC(0, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v161 - v26;
  v28 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = (&v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v34 = &v161 - v33;
  v35 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v36 = v35[6];
  v173 = a1;
  sub_20CE7C96C(a1 + v36, v27, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_20CE7C8FC(v27, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    if (HKShowSensitiveLogItems())
    {
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v37 = sub_20CE92970();
      __swift_project_value_buffer(v37, qword_2811123B8);
      v38 = sub_20CE92950();
      v39 = sub_20CE931A0();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_22;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v185[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v185);
      v42 = "[%s] WidgetEntry pregnancy state was nil. Returning no relevance entries";
    }

    else
    {
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v79 = sub_20CE92970();
      __swift_project_value_buffer(v79, qword_2811123B8);
      v38 = sub_20CE92950();
      v39 = sub_20CE931A0();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_22;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v185[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v185);
      v42 = "[%s] Returning no relevance entries";
    }

    _os_log_impl(&dword_20CE71000, v38, v39, v42, v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x20F317370](v41, -1, -1);
    MEMORY[0x20F317370](v40, -1, -1);
LABEL_22:

    return 0;
  }

  sub_20CE7CAE4(v27, v34, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  sub_20CE7CB4C(v34, v32, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  sub_20CE76084(0);
  v44 = v43;
  v45 = (*(*(v43 - 8) + 48))(v32, 1, v43);
  v175 = v32;
  v46 = v34;
  if (v45 != 1)
  {

    if (HKShowSensitiveLogItems())
    {
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v80 = v34;
      v81 = sub_20CE92970();
      __swift_project_value_buffer(v81, qword_2811123B8);
      v82 = sub_20CE92950();
      v83 = sub_20CE931A0();
      if (!os_log_type_enabled(v82, v83))
      {
        goto LABEL_33;
      }

      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v185[0] = v85;
      *v84 = 136315138;
      *(v84 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v185);
      v86 = "[%s] Pregnancy state is ongoing. Returning relevance entries";
    }

    else
    {
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v80 = v34;
      v87 = sub_20CE92970();
      __swift_project_value_buffer(v87, qword_2811123B8);
      v82 = sub_20CE92950();
      v83 = sub_20CE931A0();
      if (!os_log_type_enabled(v82, v83))
      {
        goto LABEL_33;
      }

      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v185[0] = v85;
      *v84 = 136315138;
      *(v84 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v185);
      v86 = "[%s] Returning relevance entries";
    }

    _os_log_impl(&dword_20CE71000, v82, v83, v86, v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v85);
    MEMORY[0x20F317370](v85, -1, -1);
    MEMORY[0x20F317370](v84, -1, -1);
LABEL_33:

    v88 = *(v44 + 64);
    sub_20CE7CC58(0);
    sub_20CE7CEDC(0, &qword_281111FD8, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_20CE93A60;
    v90 = v177;
    sub_20CE92530();
    sub_20CE92560();
    v91 = v179;
    v92 = *(v178 + 8);
    v92(v90, v179);
    sub_20CE92F20();
    sub_20CE92540();
    sub_20CE92560();
    v92(v90, v91);
    sub_20CE92F20();
    sub_20CE7CBB4(v80, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    v93 = sub_20CE92870();
    (*(*(v93 - 8) + 8))(v175 + v88, v93);
    return v89;
  }

  v47 = v168;
  v48 = v169;
  (*(v168 + 104))(v15, *MEMORY[0x277CC9830], v169);
  v49 = v182;
  sub_20CE92760();
  (*(v47 + 8))(v15, v48);
  v50 = v173;
  (*(v170 + 16))(v171, v173, v172);
  (*(v184 + 16))(v167, v49, v183);
  v51 = v181;
  sub_20CE92EC0();
  v52 = *(v50 + v35[7]);
  if (!v52)
  {
    v95 = v174;
    v96 = v180;
    if (qword_281111B08 != -1)
    {
      swift_once();
    }

    v97 = sub_20CE92970();
    __swift_project_value_buffer(v97, qword_2811123B8);
    v98 = *(v95 + 16);
    v99 = v166;
    v98(v166, v51, v96);
    v100 = v51;
    v101 = sub_20CE92950();
    v102 = sub_20CE93170();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v179 = v46;
      v187[0] = v178;
      *v103 = 136315394;
      *(v103 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v187);
      *(v103 + 12) = 2080;
      v104 = v165;
      v98(v165, v99, v96);
      v98(v164, v104, v96);
      sub_20CE932E0();
      v105 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_20CE93220();
      swift_unknownObjectRelease();
      v106 = __swift_project_boxed_opaque_existential_0(v185, v186);
      MEMORY[0x28223BE20](v106);
      (*(v108 + 16))(&v161 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
      v109 = sub_20CE930D0();
      v111 = v110;
      v112 = *(v95 + 8);
      v112(v104, v96);
      v112(v166, v96);
      __swift_destroy_boxed_opaque_existential_0(v185);
      v113 = sub_20CE7C260(v109, v111, v187);

      *(v103 + 14) = v113;
      _os_log_impl(&dword_20CE71000, v101, v102, "[%s].WidgetRelevances: Current entry:%s has no projection", v103, 0x16u);
      v114 = v178;
      swift_arrayDestroy();
      MEMORY[0x20F317370](v114, -1, -1);
      MEMORY[0x20F317370](v103, -1, -1);

      v112(v181, v96);
LABEL_42:
      (*(v184 + 8))(v182, v183);
      v145 = v179;
LABEL_51:
      sub_20CE7CBB4(v145, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      sub_20CE7CBB4(v175, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      return 0;
    }

    v153 = *(v95 + 8);
    v153(v99, v96);
    v153(v100, v96);
LABEL_50:
    (*(v184 + 8))(v182, v183);
    v145 = v46;
    goto LABEL_51;
  }

  v53 = v52;
  [v53 allDays];
  v54 = sub_20CE931B0();
  v55 = v174;
  v56 = v180;
  if ((v54 & 1) == 0)
  {
    if (qword_281111B08 != -1)
    {
      swift_once();
    }

    v115 = sub_20CE92970();
    __swift_project_value_buffer(v115, qword_2811123B8);
    v116 = *(v55 + 16);
    v117 = v163;
    v116(v163, v51, v56);
    v118 = v53;
    v119 = v51;
    v120 = sub_20CE92950();
    v121 = sub_20CE931A0();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v179 = v46;
      v187[0] = v178;
      *v122 = 136446722;
      *(v122 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v187);
      *(v122 + 12) = 2080;
      LODWORD(v177) = v121;
      v123 = v165;
      v116(v165, v117, v56);
      v116(v164, v123, v56);
      sub_20CE932E0();
      v124 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_20CE93220();
      swift_unknownObjectRelease();
      v125 = __swift_project_boxed_opaque_existential_0(v185, v186);
      v176 = v120;
      MEMORY[0x28223BE20](v125);
      (*(v127 + 16))(&v161 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0));
      v128 = sub_20CE930D0();
      v130 = v129;
      v131 = *(v55 + 8);
      v131(v123, v56);
      v132 = v117;
      v133 = v56;
      v131(v132, v56);
      __swift_destroy_boxed_opaque_existential_0(v185);
      v134 = sub_20CE7C260(v128, v130, v187);

      *(v122 + 14) = v134;
      *(v122 + 22) = 2080;
      v135 = HKSensitiveLogItem();
      sub_20CE93220();
      swift_unknownObjectRelease();
      v136 = __swift_project_boxed_opaque_existential_0(v185, v186);
      MEMORY[0x28223BE20](v136);
      (*(v138 + 16))(&v161 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
      v139 = sub_20CE930D0();
      v141 = v140;
      __swift_destroy_boxed_opaque_existential_0(v185);
      v142 = sub_20CE7C260(v139, v141, v187);

      *(v122 + 24) = v142;
      v143 = v176;
      _os_log_impl(&dword_20CE71000, v176, v177, "[%{public}s].WidgetRelevances: Current entry:%s Conditions for relevances were not met. Returning no relevance entries. Projection : %s", v122, 0x20u);
      v144 = v178;
      swift_arrayDestroy();
      MEMORY[0x20F317370](v144, -1, -1);
      MEMORY[0x20F317370](v122, -1, -1);

      v131(v181, v133);
      goto LABEL_42;
    }

    v154 = *(v55 + 8);
    v154(v117, v56);
    v154(v119, v56);
    goto LABEL_50;
  }

  v57 = v50 + v35[10];
  if ((*(v57 + 8) & 1) == 0)
  {
    v58 = *v57;
    v59 = v58 == sub_20CE92ED0();
    v60 = v181;
    if (v59)
    {
      v179 = v34;
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v61 = sub_20CE92970();
      __swift_project_value_buffer(v61, qword_2811123B8);
      v62 = *(v55 + 16);
      v63 = v162;
      v62(v162, v60, v56);
      v64 = v60;
      v65 = sub_20CE92950();
      v66 = sub_20CE931A0();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v187[0] = v178;
        *v67 = 136446466;
        *(v67 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v187);
        *(v67 + 12) = 2080;
        v172 = v53;
        v68 = v165;
        v62(v165, v63, v56);
        v62(v164, v68, v56);
        sub_20CE932E0();
        v69 = HKSensitiveLogItem();
        swift_unknownObjectRelease();
        sub_20CE93220();
        swift_unknownObjectRelease();
        v70 = __swift_project_boxed_opaque_existential_0(v185, v186);
        MEMORY[0x28223BE20](v70);
        (*(v72 + 16))(&v161 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
        v73 = sub_20CE930D0();
        v75 = v74;
        v76 = *(v55 + 8);
        v76(v68, v56);
        v76(v162, v56);
        __swift_destroy_boxed_opaque_existential_0(v185);
        v77 = sub_20CE7C260(v73, v75, v187);

        *(v67 + 14) = v77;
        _os_log_impl(&dword_20CE71000, v65, v66, "[%{public}s].WidgetRelevances: User has a log for entry:%s Returning no relevance", v67, 0x16u);
        v78 = v178;
        swift_arrayDestroy();
        MEMORY[0x20F317370](v78, -1, -1);
        MEMORY[0x20F317370](v67, -1, -1);

        v76(v181, v56);
      }

      else
      {

        v160 = *(v55 + 8);
        v160(v63, v56);
        v160(v64, v56);
      }

      goto LABEL_42;
    }
  }

  v146 = HKShowSensitiveLogItems();
  v172 = v53;
  if (v146)
  {
    if (qword_281111B08 != -1)
    {
      swift_once();
    }

    v147 = sub_20CE92970();
    __swift_project_value_buffer(v147, qword_2811123B8);
    v148 = sub_20CE92950();
    v149 = sub_20CE931A0();
    if (!os_log_type_enabled(v148, v149))
    {
      goto LABEL_58;
    }

    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v185[0] = v151;
    *v150 = 136315138;
    *(v150 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v185);
    v152 = "[%s].WidgetRelevances: Current day is a projected light red or dark red day and the user has not logged yet. Returning relevance entries";
  }

  else
  {
    if (qword_281111B08 != -1)
    {
      swift_once();
    }

    v155 = sub_20CE92970();
    __swift_project_value_buffer(v155, qword_2811123B8);
    v148 = sub_20CE92950();
    v149 = sub_20CE931A0();
    if (!os_log_type_enabled(v148, v149))
    {
      goto LABEL_58;
    }

    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v185[0] = v151;
    *v150 = 136315138;
    *(v150 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v185);
    v152 = "[%s] Returning relevance entries";
  }

  _os_log_impl(&dword_20CE71000, v148, v149, v152, v150, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v151);
  MEMORY[0x20F317370](v151, -1, -1);
  MEMORY[0x20F317370](v150, -1, -1);
LABEL_58:

  sub_20CE7CC58(0);
  sub_20CE7CEDC(0, &qword_281111FD8, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_20CE93A60;
  v157 = v177;
  sub_20CE92530();
  sub_20CE92560();
  v158 = v179;
  v159 = *(v178 + 8);
  v159(v157, v179);
  sub_20CE92F20();
  sub_20CE92540();
  sub_20CE92560();
  v159(v157, v158);
  sub_20CE92F20();

  (*(v55 + 8))(v181, v180);
  (*(v184 + 8))(v182, v183);
  sub_20CE7CBB4(v34, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  sub_20CE7CBB4(v175, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  return v156;
}

uint64_t sub_20CE7BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20CE7CDA8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v9 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_20CE88D48(a3, a4, sub_20CE7CE10, v12);
}

uint64_t sub_20CE7C108(uint64_t a1)
{
  v2 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20CE7CB4C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MenstrualCyclesWidgetEntry);
  sub_20CE7CDA8(0);
  return sub_20CE93130();
}

uint64_t type metadata accessor for MenstrualCyclesWidgetTimelineProvider(uint64_t a1)
{
  result = qword_281111E48;
  if (!qword_281111E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CE7C1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_20CE7C260(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20CE7C32C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20CE7CE80(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20CE7C32C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_20CE7C438(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_20CE93270();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_20CE7C438(uint64_t a1, unint64_t a2)
{
  v3 = sub_20CE7C484(a1, a2);
  sub_20CE7C5B4(&unk_2823C7248);
  return v3;
}

void *sub_20CE7C484(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20CE7C6A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20CE93270();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20CE930F0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20CE7C6A0(v10, 0);
        result = sub_20CE93250();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20CE7C5B4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20CE7C72C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20CE7C6A0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_20CE7CEDC(0, &qword_27C818188, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20CE7C72C(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CE7CEDC(0, &qword_27C818188, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_20CE7C840(uint64_t a1)
{
  if (!qword_27C818168)
  {
    type metadata accessor for MenstrualCyclesWidgetEntry(255);
    sub_20CE7C8A4();
    v1 = sub_20CE93050();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818168);
    }
  }
}

unint64_t sub_20CE7C8A4()
{
  result = qword_27C818170;
  if (!qword_27C818170)
  {
    type metadata accessor for MenstrualCyclesWidgetEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818170);
  }

  return result;
}

uint64_t sub_20CE7C8FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_20CE7C1FC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CE7C96C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CE7C1FC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CE7C9EC(uint64_t a1)
{
  v3 = *(sub_20CE93030() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_20CE7957C(a1, v1 + v4, v6, v7);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_20CE7CAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE7CB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE7CBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_20CE7CC58(uint64_t a1)
{
  if (!qword_2811117F0)
  {
    sub_20CE7CEDC(255, &qword_281111FD8, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
    v1 = sub_20CE932B0();
    if (!v2)
    {
      atomic_store(v1, &qword_2811117F0);
    }
  }
}

uint64_t sub_20CE7CD04(uint64_t a1)
{
  result = type metadata accessor for MenstrualCyclesWidgetTimelineGenerator(319);
  if (v2 <= 0x3F)
  {
    result = sub_20CE92810();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20CE7CDA8(uint64_t a1)
{
  if (!qword_281111838)
  {
    type metadata accessor for MenstrualCyclesWidgetEntry(255);
    v1 = sub_20CE93140();
    if (!v2)
    {
      atomic_store(v1, &qword_281111838);
    }
  }
}

uint64_t sub_20CE7CE10(uint64_t a1)
{
  sub_20CE7CDA8(0);

  return sub_20CE7C108(a1);
}

uint64_t sub_20CE7CE80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_20CE7CEDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_20CE7CF34()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result isAppleWatch];

    if (v2)
    {
      sub_20CE92AC0();
      sub_20CE83474(&qword_27C818190, MEMORY[0x277CE3940], MEMORY[0x277CE3938]);
      sub_20CE92B30();
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20CE7D004@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CE92B20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3BA0];
  sub_20CE83968(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_20CE83690(v2, &v15 - v10, &qword_281111AF8, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_20CE92F30();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_20CE93190();
    v14 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20CE7D228@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE92B20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE3AF8];
  sub_20CE83968(0, &qword_281111B00, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for MenstrualCyclesWidgetRectangularView(0);
  sub_20CE83690(v1 + *(v11 + 20), v10, &qword_281111B00, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_20CE92F10();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_20CE93190();
    v14 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20CE7D454@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE92B20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDFA28];
  sub_20CE83968(0, &qword_281111AE8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for MenstrualCyclesWidgetRectangularView(0);
  sub_20CE83690(v1 + *(v11 + 28), v10, &qword_281111AE8, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_20CE929C0();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_20CE93190();
    v14 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20CE7D680()
{
  v1 = sub_20CE92B20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for MenstrualCyclesWidgetRectangularView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_20CE93190();
    v7 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();
    sub_20CE8395C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t MenstrualCyclesWidgetRectangularView.body.getter()
{
  v1 = v0;
  sub_20CE7D960(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7D994(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_20CE92EB0();
  v7[1] = v8;
  sub_20CE7FFC8(0);
  sub_20CE7F490(v1, v7 + *(v9 + 44));
  sub_20CE926C0();
  sub_20CE83474(&qword_281111888, sub_20CE7D994, MEMORY[0x277CE11A8]);
  sub_20CE92D50();
  sub_20CE838A8(v4, sub_20CE7D960);
  return sub_20CE83848(v7, sub_20CE7D994);
}

void sub_20CE7D994(uint64_t a1)
{
  if (!qword_281111880)
  {
    sub_20CE834BC(255, &qword_281111970, sub_20CE7DA3C, sub_20CE7E8B4, MEMORY[0x277CE0338]);
    sub_20CE7F2A8();
    v1 = sub_20CE92E80();
    if (!v2)
    {
      atomic_store(v1, &qword_281111880);
    }
  }
}

void sub_20CE7DA3C(uint64_t a1)
{
  if (!qword_2811118D0)
  {
    sub_20CE7DB0C(255);
    sub_20CE7F208(&qword_281111A50, sub_20CE7DB0C, &qword_2811118A8, sub_20CE7DB34);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811118D0);
    }
  }
}

void sub_20CE7DB70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_20CE83474(a4, a5, MEMORY[0x277CE14C0]);
    v8 = sub_20CE92E70();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_20CE7DC38(uint64_t a1)
{
  if (!qword_2811118F8)
  {
    sub_20CE7EC30(255, &qword_281111900, sub_20CE7DD28, sub_20CE7DDD4);
    sub_20CE7DFB4(255);
    sub_20CE7EC30(255, &qword_2811118F0, sub_20CE7E2D4, sub_20CE7E5BC);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2811118F8);
    }
  }
}

void sub_20CE7DD28(uint64_t a1)
{
  if (!qword_281111A20)
  {
    sub_20CE7F088(255, &qword_281111A98, &qword_281111940, MEMORY[0x277D85048]);
    sub_20CE7EDA8(255, &qword_281111950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_20CE929E0();
    if (!v2)
    {
      atomic_store(v1, &qword_281111A20);
    }
  }
}

unint64_t sub_20CE7DE1C()
{
  result = qword_281111AA0;
  if (!qword_281111AA0)
  {
    sub_20CE7F088(255, &qword_281111A98, &qword_281111940, MEMORY[0x277D85048]);
    sub_20CE7DEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111AA0);
  }

  return result;
}

unint64_t sub_20CE7DEB4()
{
  result = qword_281111948;
  if (!qword_281111948)
  {
    sub_20CE83424(255, &qword_281111940, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111948);
  }

  return result;
}

unint64_t sub_20CE7DF30()
{
  result = qword_281111958;
  if (!qword_281111958)
  {
    sub_20CE7EDA8(255, &qword_281111950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111958);
  }

  return result;
}

void sub_20CE7DFE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_20CE83424(255, a4, a5, MEMORY[0x277CE0860]);
    v8 = sub_20CE929E0();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_20CE7E07C(uint64_t a1)
{
  if (!qword_2811119C0)
  {
    sub_20CE7DFE4(255, &qword_2811119D0, sub_20CE7E128, &qword_281111938, MEMORY[0x277CDF720]);
    sub_20CE7E268(255, &qword_281111918, &qword_281111820, MEMORY[0x277D83B88]);
    v1 = sub_20CE929E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2811119C0);
    }
  }
}

void sub_20CE7E128(uint64_t a1)
{
  if (!qword_2811119F0)
  {
    sub_20CE7E1BC(255);
    sub_20CE7EDA8(255, &qword_281111950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_20CE929E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2811119F0);
    }
  }
}

void sub_20CE7E1BC(uint64_t a1)
{
  if (!qword_281111A30)
  {
    sub_20CE7EDA8(255, &qword_281111AA8, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_20CE7E268(255, &qword_281111930, &qword_281111908, MEMORY[0x277CE0AE0]);
    v1 = sub_20CE929E0();
    if (!v2)
    {
      atomic_store(v1, &qword_281111A30);
    }
  }
}

void sub_20CE7E268(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CE83424(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_20CE92C30();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CE7E2D4(uint64_t a1)
{
  if (!qword_2811119D8)
  {
    sub_20CE834BC(255, &qword_281111A08, sub_20CE7E3A4, sub_20CE7E554, MEMORY[0x277CDFAB8]);
    sub_20CE83424(255, &qword_281111940, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v1 = sub_20CE929E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2811119D8);
    }
  }
}

void sub_20CE7E3CC(uint64_t a1)
{
  if (!qword_2811118D8)
  {
    sub_20CE7E4D0();
    sub_20CE92880();
    sub_20CE83474(&qword_2811118B8, sub_20CE7E4D0, MEMORY[0x277CDEFC8]);
    sub_20CE83474(&qword_281111FA8, MEMORY[0x277D11A20], MEMORY[0x277D11A18]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811118D8);
    }
  }
}

void sub_20CE7E4D0()
{
  if (!qword_2811118B0)
  {
    v0 = sub_20CE92E30();
    if (!v1)
    {
      atomic_store(v0, &qword_2811118B0);
    }
  }
}

uint64_t sub_20CE7E604(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20CE7E690()
{
  result = qword_281111A10;
  if (!qword_281111A10)
  {
    sub_20CE834BC(255, &qword_281111A08, sub_20CE7E3A4, sub_20CE7E554, MEMORY[0x277CDFAB8]);
    sub_20CE7E784();
    sub_20CE83474(&qword_281111928, sub_20CE7E554, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111A10);
  }

  return result;
}

unint64_t sub_20CE7E784()
{
  result = qword_281111A70;
  if (!qword_281111A70)
  {
    sub_20CE7E3A4(255);
    sub_20CE7E4D0();
    sub_20CE92880();
    sub_20CE83474(&qword_2811118B8, sub_20CE7E4D0, MEMORY[0x277CDEFC8]);
    sub_20CE83474(&qword_281111FA8, MEMORY[0x277D11A20], MEMORY[0x277D11A18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111A70);
  }

  return result;
}

void sub_20CE7E8B4(uint64_t a1)
{
  if (!qword_2811118C0)
  {
    sub_20CE7E9BC(255);
    sub_20CE7EA8C(255);
    sub_20CE7F208(&qword_281111A40, sub_20CE7EA8C, &qword_281111898, sub_20CE7EAB4);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811118C0);
    }
  }
}

void sub_20CE7E9BC(uint64_t a1)
{
  if (!qword_2811118C8)
  {
    sub_20CE7EA8C(255);
    sub_20CE7F208(&qword_281111A40, sub_20CE7EA8C, &qword_281111898, sub_20CE7EAB4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811118C8);
    }
  }
}

void sub_20CE7EB24(uint64_t a1)
{
  if (!qword_281111A80)
  {
    sub_20CE7EBB4(255);
    sub_20CE7EF98(255);
    sub_20CE7F0FC(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_281111A80);
    }
  }
}

void sub_20CE7EC30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_20CE7ECC0(uint64_t a1)
{
  if (!qword_281111980)
  {
    sub_20CE7ED1C(255);
    v1 = sub_20CE92BE0();
    if (!v2)
    {
      atomic_store(v1, &qword_281111980);
    }
  }
}

void sub_20CE7ED1C(uint64_t a1)
{
  if (!qword_2811119F8)
  {
    sub_20CE7EDA8(255, &qword_281111A58, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    v1 = sub_20CE929E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2811119F8);
    }
  }
}

void sub_20CE7EDA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_20CE7EDFC()
{
  result = qword_281111988;
  if (!qword_281111988)
  {
    sub_20CE7ECC0(255);
    sub_20CE7EE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111988);
  }

  return result;
}

unint64_t sub_20CE7EE74()
{
  result = qword_281111A00;
  if (!qword_281111A00)
  {
    sub_20CE7ED1C(255);
    sub_20CE7EEF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111A00);
  }

  return result;
}

unint64_t sub_20CE7EEF4()
{
  result = qword_281111A60;
  if (!qword_281111A60)
  {
    sub_20CE7EDA8(255, &qword_281111A58, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111A60);
  }

  return result;
}

void sub_20CE7EFF0(uint64_t a1)
{
  if (!qword_281111A18)
  {
    sub_20CE7F088(255, &qword_281111A90, &qword_281111938, MEMORY[0x277CDF720]);
    sub_20CE7E268(255, &qword_281111918, &qword_281111820, MEMORY[0x277D83B88]);
    v1 = sub_20CE929E0();
    if (!v2)
    {
      atomic_store(v1, &qword_281111A18);
    }
  }
}

void sub_20CE7F088(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CE83424(255, a3, a4, MEMORY[0x277CE0860]);
    v5 = sub_20CE929E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CE7F124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_20CE929E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CE7F188()
{
  if (!qword_2811118E0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811118E0);
    }
  }
}

uint64_t sub_20CE7F208(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_20CE83474(a3, a4, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20CE7F2A8()
{
  result = qword_281111978;
  if (!qword_281111978)
  {
    sub_20CE834BC(255, &qword_281111970, sub_20CE7DA3C, sub_20CE7E8B4, MEMORY[0x277CE0338]);
    sub_20CE7DB0C(255);
    sub_20CE7F208(&qword_281111A50, sub_20CE7DB0C, &qword_2811118A8, sub_20CE7DB34);
    swift_getOpaqueTypeConformance2();
    sub_20CE7E9BC(255);
    sub_20CE7EA8C(255);
    sub_20CE7F208(&qword_281111A40, sub_20CE7EA8C, &qword_281111898, sub_20CE7EAB4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111978);
  }

  return result;
}

uint64_t sub_20CE7F490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  sub_20CE7E8B4(0);
  v84 = v3;
  v79 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v78 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE834BC(0, &qword_2811119A8, sub_20CE7DA3C, sub_20CE7E8B4, MEMORY[0x277CE0330]);
  v81 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v70 - v6;
  v73 = sub_20CE92C20();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7DB34(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7DB0C(0);
  v80 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7DA3C(0);
  v16 = v15;
  v74 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v75 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_20CE92870();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v19 = (&v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CE831C8(0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = (&v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v86 = &v70 - v24;
  sub_20CE834BC(0, &qword_281111970, sub_20CE7DA3C, sub_20CE7E8B4, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v25 - 8);
  v83 = &v70 - v26;
  sub_20CE93160();
  v82 = sub_20CE93150();
  sub_20CE93120();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = type metadata accessor for MenstrualCyclesWidgetRectangularView(0);
  v28 = v86;
  sub_20CE837E0(a1 + *(v27 + 36), v86, sub_20CE831C8);
  v29 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) != 1)
  {
    sub_20CE837E0(v86, v23, sub_20CE831C8);
    sub_20CE76084(0);
    v31 = v30;
    if ((*(*(v30 - 8) + 48))(v23, 1, v30) != 1)
    {
      v79 = *v23;
      v47 = v79;
      v48 = *(v76 + 32);
      v49 = v23 + *(v31 + 64);
      v70 = v19;
      v48(v19, v49, v77);
      *v11 = sub_20CE92B70();
      *(v11 + 1) = 0;
      v11[16] = 0;
      sub_20CE83540(0, &qword_27C818198, sub_20CE7DC04);
      sub_20CE81ADC(a1, v47, v19, &v11[*(v50 + 44)]);
      sub_20CE92EA0();
      sub_20CE929F0();
      sub_20CE83710(v11, v14, sub_20CE7DB34);
      v51 = v80;
      v52 = &v14[*(v80 + 36)];
      v53 = v96;
      *(v52 + 4) = v95;
      *(v52 + 5) = v53;
      *(v52 + 6) = v97;
      v54 = v92;
      *v52 = v91;
      *(v52 + 1) = v54;
      v55 = v94;
      *(v52 + 2) = v93;
      *(v52 + 3) = v55;
      v56 = v71;
      sub_20CE92C10();
      v57 = sub_20CE7F208(&qword_281111A50, sub_20CE7DB0C, &qword_2811118A8, sub_20CE7DB34);
      v58 = MEMORY[0x277CDF950];
      v59 = MEMORY[0x277CDF948];
      v60 = v75;
      sub_20CE92DD0();
      (*(v72 + 8))(v56, v73);
      sub_20CE83848(v14, sub_20CE7DB0C);
      v61 = v74;
      (*(v74 + 16))(v7, v60, v16);
      swift_storeEnumTagMultiPayload();
      v87 = v51;
      v88 = v58;
      v89 = v57;
      v90 = v59;
      swift_getOpaqueTypeConformance2();
      sub_20CE7E9BC(255);
      v63 = v62;
      sub_20CE7EA8C(255);
      v64 = v16;
      v66 = v65;
      v67 = sub_20CE7F208(&qword_281111A40, sub_20CE7EA8C, &qword_281111898, sub_20CE7EAB4);
      v87 = v66;
      v88 = v58;
      v89 = v67;
      v90 = v59;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v87 = v63;
      v88 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v46 = v83;
      sub_20CE92BD0();

      (*(v61 + 8))(v60, v64);
      (*(v76 + 8))(v70, v77);
      goto LABEL_8;
    }

    sub_20CE838A8(v23, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  }

  v32 = v78;
  sub_20CE80090(v78);
  v33 = v79;
  v34 = v79[2];
  v35 = v7;
  v77 = v16;
  v36 = v84;
  v34(v35, v32, v84);
  swift_storeEnumTagMultiPayload();
  v37 = sub_20CE7F208(&qword_281111A50, sub_20CE7DB0C, &qword_2811118A8, sub_20CE7DB34);
  v38 = MEMORY[0x277CDF950];
  *&v91 = v80;
  *(&v91 + 1) = MEMORY[0x277CDF950];
  v39 = MEMORY[0x277CDF948];
  *&v92 = v37;
  *(&v92 + 1) = MEMORY[0x277CDF948];
  swift_getOpaqueTypeConformance2();
  sub_20CE7E9BC(255);
  v41 = v40;
  sub_20CE7EA8C(255);
  v43 = v42;
  v44 = sub_20CE7F208(&qword_281111A40, sub_20CE7EA8C, &qword_281111898, sub_20CE7EAB4);
  *&v91 = v43;
  *(&v91 + 1) = v38;
  *&v92 = v44;
  *(&v92 + 1) = v39;
  v45 = swift_getOpaqueTypeConformance2();
  *&v91 = v41;
  *(&v91 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  v46 = v83;
  sub_20CE92BD0();
  (v33[1])(v32, v36);
LABEL_8:
  sub_20CE838A8(v86, sub_20CE831C8);
  sub_20CE73474(v46, v85);
}

void sub_20CE7FFC8(uint64_t a1)
{
  if (!qword_281111AB8)
  {
    sub_20CE834BC(255, &qword_281111970, sub_20CE7DA3C, sub_20CE7E8B4, MEMORY[0x277CE0338]);
    v1 = sub_20CE929B0();
    if (!v2)
    {
      atomic_store(v1, &qword_281111AB8);
    }
  }
}

uint64_t sub_20CE80090@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v32 = sub_20CE92C00();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20CE92C20();
  v28 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7EAB4(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7EA8C(0);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7E9BC(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_20CE92B70();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_20CE83540(0, &qword_281111AC0, sub_20CE7EAF0);
  sub_20CE808D0(v2, &v9[*(v19 + 44)]);
  sub_20CE92EA0();
  sub_20CE929F0();
  sub_20CE83710(v9, v13, sub_20CE7EAB4);
  v20 = &v13[*(v11 + 36)];
  v21 = v42;
  *(v20 + 4) = v41;
  *(v20 + 5) = v21;
  *(v20 + 6) = v43;
  v22 = v38;
  *v20 = v37;
  *(v20 + 1) = v22;
  v23 = v40;
  *(v20 + 2) = v39;
  *(v20 + 3) = v23;
  sub_20CE92C10();
  v24 = sub_20CE7F208(&qword_281111A40, sub_20CE7EA8C, &qword_281111898, sub_20CE7EAB4);
  v25 = MEMORY[0x277CDF950];
  v26 = MEMORY[0x277CDF948];
  sub_20CE92DD0();
  (*(v28 + 8))(v6, v29);
  sub_20CE83848(v13, sub_20CE7EA8C);
  sub_20CE92BF0();
  v33 = v11;
  v34 = v25;
  v35 = v24;
  v36 = v26;
  swift_getOpaqueTypeConformance2();
  sub_20CE92DE0();
  (*(v30 + 8))(v4, v32);
  return (*(v16 + 8))(v18, v15);
}

__n128 sub_20CE804F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v5 = sub_20CE92E40();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  v9 = sub_20CE92F30();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 88))(v12, v9);
  v14 = (v6 + 104);
  v15 = (v6 + 8);
  if (v13 == *MEMORY[0x277CE3B68])
  {
    (*v14)(v8, *MEMORY[0x277CE0FE0], v5);
    v16 = sub_20CE92E50();
    (*v15)(v8, v5);
    sub_20CE92EB0();
    sub_20CE929A0();
    *&v21[38] = v28;
    *&v21[22] = v27;
    *&v21[6] = v26;
    *(v25 + 2) = *v21;
    LOBYTE(v29) = 1;
    v23 = 0;
    v24 = v16;
    LOWORD(v25[0]) = 1;
    *(&v25[1] + 2) = *&v21[16];
    *(&v25[2] + 2) = *&v21[32];
    *&v25[3] = *(&v28 + 1);
    BYTE8(v25[3]) = 0;
    sub_20CE7ED1C(0);
    sub_20CE7EE74();
    sub_20CE92BD0();
  }

  else
  {
    (*v14)(v8, *MEMORY[0x277CE0FE0], v5);
    v17 = sub_20CE92E50();
    (*v15)(v8, v5);
    sub_20CE92EB0();
    sub_20CE929A0();
    *&v22[38] = v28;
    *&v22[22] = v27;
    *&v22[6] = v26;
    *&v30[2] = *v22;
    v23 = 1;
    v29 = v17;
    *v30 = 1;
    *&v30[18] = *&v22[16];
    *&v30[34] = *&v22[32];
    *&v30[48] = *(&v28 + 1);
    v30[56] = 1;
    sub_20CE7ED1C(0);
    sub_20CE7EE74();
    sub_20CE92BD0();
    (*(v10 + 8))(v12, v9);
    *&v30[16] = v25[1];
    *&v30[32] = v25[2];
    *&v30[41] = *(&v25[2] + 9);
    v29 = v24;
    *v30 = v25[0];
  }

  v18 = *&v30[32];
  *(a3 + 32) = *&v30[16];
  *(a3 + 48) = v18;
  *(a3 + 57) = *&v30[41];
  result = *v30;
  *a3 = v29;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_20CE808D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a1;
  v168 = a2;
  sub_20CE7F188();
  v164 = *(v2 - 8);
  v165 = v2;
  MEMORY[0x28223BE20](v2);
  v163 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7F0FC(0);
  v162 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v167 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v161 = &v139 - v8;
  MEMORY[0x28223BE20](v7);
  v166 = &v139 - v9;
  v179 = sub_20CE929C0();
  v183 = *(v179 - 8);
  v10 = MEMORY[0x28223BE20](v179);
  v178 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v177 = &v139 - v12;
  v13 = sub_20CE92CD0();
  v172 = *(v13 - 8);
  KeyPath = v13;
  MEMORY[0x28223BE20](v13);
  v171 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE835A4(0);
  MEMORY[0x28223BE20](v15 - 8);
  v176 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_20CE92CF0();
  v181 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v174 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_20CE92F10();
  v18 = *(v158 - 1);
  MEMORY[0x28223BE20](v158);
  v20 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_20CE92F30();
  v21 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v23 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7EBFC(0);
  v169 = *(v24 - 8);
  v170 = v24;
  MEMORY[0x28223BE20](v24);
  v157 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7EBB4(0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v180 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v182 = &v139 - v29;
  sub_20CE93160();
  v160 = sub_20CE93150();
  sub_20CE93120();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE7D004(v23);
  sub_20CE7D228(v20);
  (*(v18 + 8))(v20, v158);
  v30 = *(v21 + 8);
  v31 = v159;
  v30(v23, v159);
  if (qword_281111808 != -1)
  {
    swift_once();
  }

  v158 = qword_2811123B0;
  v32 = sub_20CE92E60();
  sub_20CE7D004(v23);
  sub_20CE804F0(v23, v32, &v193);

  v30(v23, v31);
  v187 = v195;
  v188[0] = v196[0];
  *(v188 + 9) = *(v196 + 9);
  v185 = v193;
  v186 = v194;
  sub_20CE7ECC0(0);
  v34 = v33;
  v35 = sub_20CE7EDFC();
  v36 = v157;
  sub_20CE92D40();
  v212[2] = v187;
  v213[0] = v188[0];
  *(v213 + 9) = *(v188 + 9);
  v212[0] = v185;
  v212[1] = v186;
  sub_20CE838A8(v212, sub_20CE7ECC0);
  *&v193 = v34;
  *(&v193 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  v37 = v170;
  sub_20CE92DC0();
  (*(v169 + 8))(v36, v37);
  v38 = v158;
  v156 = "IDGET_PREGNANCY_TITLE";
  *&v193 = sub_20CE926B0();
  *(&v193 + 1) = v39;
  v155 = sub_20CE835D8();
  v40 = sub_20CE92D30();
  v169 = v41;
  v170 = v40;
  v43 = v42;
  v45 = v44;
  v152 = v38;

  v46 = *MEMORY[0x277CE0A70];
  v47 = v181;
  v49 = v174;
  v48 = v175;
  v153 = *(v181 + 104);
  v154 = v181 + 104;
  v153(v174, v46, v175);
  v50 = *MEMORY[0x277CE09A0];
  v51 = sub_20CE92C80();
  v52 = *(v51 - 8);
  v53 = *(v52 + 104);
  v54 = v176;
  v150 = v50;
  v147 = v53;
  v148 = v52 + 104;
  v53(v176, v50, v51);
  v55 = *(v52 + 56);
  v151 = v51;
  v149 = v52 + 56;
  v146 = v55;
  v55(v54, 0, 1, v51);
  sub_20CE92CB0();
  sub_20CE838A8(v54, sub_20CE835A4);
  v56 = *(v47 + 8);
  v181 = v47 + 8;
  v145 = v56;
  v56(v49, v48);
  sub_20CE92C90();
  sub_20CE92CC0();

  v58 = v171;
  v57 = v172;
  v59 = KeyPath;
  (*(v172 + 104))(v171, *MEMORY[0x277CE0A10], KeyPath);
  sub_20CE92CE0();

  (*(v57 + 8))(v58, v59);
  v60 = v170;
  v61 = sub_20CE92D10();
  v63 = v62;
  v65 = v64;

  sub_20CE8362C(v60, v43, v45 & 1);

  if (sub_20CE7D680())
  {
    *&v193 = sub_20CE92DF0();
    sub_20CE83908();
    v66 = sub_20CE92E10();
  }

  else
  {
    v67 = [objc_opt_self() labelColor];
    v66 = sub_20CE92E00();
  }

  *&v193 = v66;
  v170 = sub_20CE92D00();
  v171 = v68;
  v159 = v69;
  v71 = v70;
  sub_20CE8362C(v61, v63, v65 & 1);

  KeyPath = swift_getKeyPath();
  v172 = swift_getKeyPath();
  LODWORD(v169) = v71 & 1;
  v208 = v71 & 1;
  v205 = 0;
  v158 = swift_getKeyPath();
  LODWORD(v157) = sub_20CE92C70();
  v72 = v177;
  sub_20CE7D454(v177);
  v144 = *MEMORY[0x277CDFA00];
  v73 = v183;
  v74 = *(v183 + 104);
  v142 = v183 + 104;
  v143 = v74;
  v76 = v178;
  v75 = v179;
  v74(v178);
  v141 = sub_20CE83474(&qword_281111AB0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  sub_20CE93070();
  v77 = *(v73 + 8);
  v183 = v73 + 8;
  v140 = v77;
  v77(v76, v75);
  v77(v72, v75);
  sub_20CE92980();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v210 = 0;
  v86 = v152;
  *&v193 = sub_20CE926B0();
  *(&v193 + 1) = v87;
  v88 = sub_20CE92D30();
  v90 = v89;
  LOBYTE(v76) = v91;

  v93 = v174;
  v92 = v175;
  v153(v174, *MEMORY[0x277CE0A90], v175);
  v94 = v176;
  v95 = v151;
  v147(v176, v150, v151);
  v146(v94, 0, 1, v95);
  sub_20CE92CB0();
  sub_20CE838A8(v94, sub_20CE835A4);
  v145(v93, v92);
  sub_20CE92CA0();
  sub_20CE92CC0();

  v96 = sub_20CE92D10();
  v98 = v97;
  LOBYTE(v93) = v99;

  sub_20CE8362C(v88, v90, v76 & 1);

  v100 = [objc_opt_self() systemIndigoColor];
  *&v193 = sub_20CE92E00();
  v101 = sub_20CE92D00();
  v103 = v102;
  LOBYTE(v90) = v104;
  v106 = v105;
  sub_20CE8362C(v96, v98, v93 & 1);

  *&v193 = v101;
  *(&v193 + 1) = v103;
  LOBYTE(v95) = v90 & 1;
  LOBYTE(v194) = v90 & 1;
  *(&v194 + 1) = v106;
  v107 = v163;
  sub_20CE92D40();
  sub_20CE8362C(v101, v103, v95);

  LOBYTE(v101) = sub_20CE92C70();
  v108 = v177;
  sub_20CE7D454(v177);
  v109 = v178;
  v110 = v179;
  v143(v178, v144, v179);
  sub_20CE93070();
  v111 = v140;
  v140(v109, v110);
  v111(v108, v110);
  sub_20CE92980();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = v161;
  (*(v164 + 32))(v161, v107, v165);
  v121 = v120 + *(v162 + 36);
  *v121 = v101;
  *(v121 + 8) = v113;
  *(v121 + 16) = v115;
  *(v121 + 24) = v117;
  *(v121 + 32) = v119;
  *(v121 + 40) = 0;
  v122 = v166;
  sub_20CE83710(v120, v166, sub_20CE7F0FC);
  v123 = v180;
  sub_20CE83778(v182, v180, sub_20CE7EBB4);
  v124 = v167;
  sub_20CE83778(v122, v167, sub_20CE7F0FC);
  v125 = v168;
  sub_20CE83778(v123, v168, sub_20CE7EBB4);
  sub_20CE7EB24(0);
  v127 = v125 + v126[12];
  *v127 = 0;
  *(v127 + 8) = 0;
  v128 = v125 + v126[16];
  v129 = v159;
  *&v185 = v170;
  *(&v185 + 1) = v159;
  LOBYTE(v186) = v169;
  *(&v186 + 1) = *v207;
  DWORD1(v186) = *&v207[3];
  *(&v186 + 1) = v171;
  *&v187 = KeyPath;
  BYTE8(v187) = 0;
  *(&v187 + 9) = *v206;
  HIDWORD(v187) = *&v206[3];
  *&v188[0] = v172;
  *(&v188[0] + 1) = 2;
  LOBYTE(v188[1]) = 0;
  *(&v188[1] + 1) = *v209;
  DWORD1(v188[1]) = *&v209[3];
  v130 = v158;
  *(&v188[1] + 1) = v158;
  *&v189 = 0x3FE0000000000000;
  LOBYTE(v96) = v157;
  BYTE8(v189) = v157;
  *(&v189 + 9) = *v211;
  HIDWORD(v189) = *&v211[3];
  *&v190 = v79;
  *(&v190 + 1) = v81;
  *&v191 = v83;
  *(&v191 + 1) = v85;
  v192 = 0;
  v131 = v185;
  v132 = v186;
  v133 = v188[0];
  *(v128 + 32) = v187;
  *(v128 + 48) = v133;
  *v128 = v131;
  *(v128 + 16) = v132;
  v134 = v188[1];
  v135 = v189;
  v136 = v190;
  v137 = v191;
  *(v128 + 128) = 0;
  *(v128 + 96) = v136;
  *(v128 + 112) = v137;
  *(v128 + 64) = v134;
  *(v128 + 80) = v135;
  sub_20CE83778(v124, v125 + v126[20], sub_20CE7F0FC);
  sub_20CE837E0(&v185, &v193, sub_20CE7EF98);
  sub_20CE83848(v122, sub_20CE7F0FC);
  sub_20CE83848(v182, sub_20CE7EBB4);
  sub_20CE83848(v124, sub_20CE7F0FC);
  *&v193 = v170;
  *(&v193 + 1) = v129;
  LOBYTE(v194) = v169;
  *(&v194 + 1) = *v207;
  DWORD1(v194) = *&v207[3];
  *(&v194 + 1) = v171;
  *&v195 = KeyPath;
  BYTE8(v195) = 0;
  *(&v195 + 9) = *v206;
  HIDWORD(v195) = *&v206[3];
  *&v196[0] = v172;
  *(&v196[0] + 1) = 2;
  LOBYTE(v196[1]) = 0;
  DWORD1(v196[1]) = *&v209[3];
  *(&v196[1] + 1) = *v209;
  *(&v196[1] + 1) = v130;
  v197 = 0x3FE0000000000000;
  v198 = v96;
  *&v199[3] = *&v211[3];
  *v199 = *v211;
  v200 = v79;
  v201 = v81;
  v202 = v83;
  v203 = v85;
  v204 = 0;
  sub_20CE838A8(&v193, sub_20CE7EF98);
  sub_20CE83848(v180, sub_20CE7EBB4);
}

uint64_t sub_20CE81ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, char *a4@<X8>)
{
  v110 = a3;
  v119 = a2;
  v120 = a1;
  v112 = a4;
  sub_20CE7EC30(0, &qword_2811118F0, sub_20CE7E2D4, sub_20CE7E5BC);
  v113 = *(v4 - 8);
  v114 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v127 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v126 = v94 - v7;
  v107 = sub_20CE92CD0();
  *&v128 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v115 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE835A4(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_20CE92CF0();
  *(&v128 + 1) = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v121 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7EC30(0, &qword_281111900, sub_20CE7DD28, sub_20CE7DDD4);
  v124 = *(v13 - 8);
  v125 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v123 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v129 = v94 - v16;
  sub_20CE93160();
  v111 = sub_20CE93150();
  sub_20CE93120();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_281111808 != -1)
  {
    swift_once();
  }

  v17 = qword_2811123B0;
  v146 = sub_20CE926B0();
  v147 = v18;
  v118 = sub_20CE835D8();
  v19 = sub_20CE92D30();
  v117 = v20;
  v22 = v21;

  v23 = *MEMORY[0x277CE0A58];
  v24 = *(&v128 + 1);
  v25 = *(*(&v128 + 1) + 104);
  v108 = *(&v128 + 1) + 104;
  v109 = v25;
  v26 = v121;
  v27 = v122;
  v25(v121, v23, v122);
  v105 = *MEMORY[0x277CE09A0];
  v28 = v105;
  v29 = sub_20CE92C80();
  v30 = *(v29 - 8);
  v104 = *(v30 + 104);
  v106 = v30 + 104;
  v31 = v28;
  v32 = v29;
  v100 = v29;
  v104(v11, v31);
  v33 = *(v30 + 56);
  v94[1] = v30 + 56;
  v103 = v33;
  v33(v11, 0, 1, v32);
  sub_20CE92CB0();
  v102 = sub_20CE835A4;
  sub_20CE838A8(v11, sub_20CE835A4);
  v34 = *(v24 + 8);
  *(&v128 + 1) = v24 + 8;
  v101 = v34;
  v34(v26, v27);
  sub_20CE92CA0();
  sub_20CE92CC0();
  v95 = v11;

  v99 = *MEMORY[0x277CE0A10];
  v35 = v128;
  v36 = *(v128 + 104);
  v97 = v128 + 104;
  v98 = v36;
  v37 = v115;
  v38 = v107;
  v36(v115);
  sub_20CE92CE0();

  v39 = *(v35 + 8);
  *&v128 = v35 + 8;
  v96 = v39;
  v39(v37, v38);
  v40 = v22;
  v41 = v117;
  v42 = sub_20CE92D10();
  v44 = v43;
  LOBYTE(v30) = v45;
  v116 = v46;

  sub_20CE8362C(v19, v41, v40 & 1);

  KeyPath = swift_getKeyPath();
  sub_20CE7636C(0, &qword_27C8181A0, 0x277D75348);
  sub_20CE931E0();
  v48 = sub_20CE92E00();
  v146 = v42;
  v147 = v44;
  v148 = v30 & 1;
  v150 = v116;
  v151 = KeyPath;
  v152 = 0x3FE0000000000000;
  v153 = v48;
  sub_20CE7DD28(0);
  v49 = v38;
  sub_20CE7DDD4();
  sub_20CE92D40();
  sub_20CE8362C(v42, v44, v30 & 1);

  v146 = sub_20CE82778(v119);
  v147 = v50;
  v51 = sub_20CE92D30();
  v117 = v52;
  v118 = v51;
  LOBYTE(v42) = v53;
  v120 = v54;
  LODWORD(v119) = sub_20CE92C70();
  sub_20CE92980();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  LODWORD(v116) = v42 & 1;
  LOBYTE(v146) = v42 & 1;
  LOBYTE(v136) = 0;
  v63 = v121;
  v64 = v122;
  v109(v121, *MEMORY[0x277CE0A70], v122);
  v65 = v95;
  v66 = v100;
  (v104)(v95, v105, v100);
  v103(v65, 0, 1, v66);
  sub_20CE92CB0();
  sub_20CE838A8(v65, v102);
  v101(v63, v64);
  sub_20CE92C90();
  sub_20CE92CC0();

  v67 = v115;
  v98(v115, v99, v49);
  *(&v128 + 1) = sub_20CE92CE0();

  v96(v67, v49);
  *&v128 = swift_getKeyPath();
  v68 = [objc_opt_self() labelColor];
  v122 = sub_20CE92E00();
  v115 = swift_getKeyPath();
  v121 = swift_getKeyPath();
  LOBYTE(v146) = 0;
  v69 = swift_getKeyPath();
  v70 = v126;
  sub_20CE82A80(v126);
  v71 = v123;
  v72 = *(v124 + 16);
  v73 = v125;
  v72(v123, v129, v125);
  v130 = 0;
  v74 = v113;
  v75 = v114;
  v110 = *(v113 + 16);
  v110(v127, v70, v114);
  v76 = v112;
  v72(v112, v71, v73);
  sub_20CE7DC38(0);
  v78 = &v76[v77[12]];
  v79 = v130;
  *v78 = 0;
  v78[8] = v79;
  v80 = &v76[v77[16]];
  *&v136 = v118;
  *(&v136 + 1) = v117;
  LOBYTE(v137) = v116;
  *(&v137 + 1) = *v135;
  DWORD1(v137) = *&v135[3];
  *(&v137 + 1) = v120;
  LOBYTE(v138) = v119;
  DWORD1(v138) = *&v134[3];
  *(&v138 + 1) = *v134;
  *(&v138 + 1) = v56;
  *&v139 = v58;
  *(&v139 + 1) = v60;
  *&v140 = v62;
  BYTE8(v140) = 0;
  HIDWORD(v140) = *&v131[3];
  *(&v140 + 9) = *v131;
  v141 = v128;
  *&v142 = v122;
  *(&v142 + 1) = v115;
  LOBYTE(v143) = 0;
  DWORD1(v143) = *&v132[3];
  *(&v143 + 1) = *v132;
  *(&v143 + 1) = v121;
  *&v144 = 2;
  BYTE8(v144) = 0;
  HIDWORD(v144) = *(v133 + 3);
  *(&v144 + 9) = v133[0];
  v81 = v69;
  *&v145 = v69;
  *(&v145 + 1) = 0x3FE0000000000000;
  v82 = v137;
  *v80 = v136;
  *(v80 + 1) = v82;
  v83 = v138;
  v84 = v139;
  v85 = v141;
  *(v80 + 4) = v140;
  *(v80 + 5) = v85;
  *(v80 + 2) = v83;
  *(v80 + 3) = v84;
  v86 = v142;
  v87 = v143;
  v88 = v145;
  *(v80 + 8) = v144;
  *(v80 + 9) = v88;
  *(v80 + 6) = v86;
  *(v80 + 7) = v87;
  v89 = v127;
  v110(&v76[v77[20]], v127, v75);
  sub_20CE837E0(&v136, &v146, sub_20CE7DFB4);
  v90 = *(v74 + 8);
  v90(v126, v75);
  v91 = v125;
  v92 = *(v124 + 8);
  v92(v129, v125);
  v90(v89, v75);
  v146 = v118;
  v147 = v117;
  v148 = v116;
  *v149 = *v135;
  *&v149[3] = *&v135[3];
  v150 = v120;
  LOBYTE(v151) = v119;
  *(&v151 + 1) = *v134;
  HIDWORD(v151) = *&v134[3];
  v152 = v56;
  v153 = v58;
  v154 = v60;
  v155 = v62;
  v156 = 0;
  *&v157[3] = *&v131[3];
  *v157 = *v131;
  v158 = v128;
  v159 = v122;
  v160 = v115;
  v161 = 0;
  *v162 = *v132;
  *&v162[3] = *&v132[3];
  v163 = v121;
  v164 = 2;
  v165 = 0;
  *&v166[3] = *(v133 + 3);
  *v166 = v133[0];
  v167 = v81;
  v168 = 0x3FE0000000000000;
  sub_20CE838A8(&v146, sub_20CE7DFB4);
  v92(v123, v91);
}

uint64_t sub_20CE82778(uint64_t a1)
{
  v24 = a1;
  v1 = sub_20CE929C0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = sub_20CE92720();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  sub_20CE92710();
  v13 = sub_20CE926E0();
  v14 = *(v9 + 8);
  v23 = v8;
  v21[0] = v14;
  v21[1] = v9 + 8;
  v14(v11, v8);
  v22 = v12;
  v15 = [v12 gestationalAgeStringOnDate:v13 pregnancySample:v24];

  v16 = sub_20CE930B0();
  sub_20CE7D454(v7);
  (*(v2 + 104))(v5, *MEMORY[0x277CDFA10], v1);
  sub_20CE83474(&qword_281111AB0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  LOBYTE(v15) = sub_20CE93070();
  v17 = *(v2 + 8);
  v17(v5, v1);
  v17(v7, v1);
  if (v15)
  {

    sub_20CE92710();
    v18 = sub_20CE926E0();
    (v21[0])(v11, v23);
    v19 = [v22 gestationalAgeCompactStringOnDate:v18 pregnancySample:v24];

    v16 = sub_20CE930B0();
  }

  return v16;
}

uint64_t sub_20CE82A80@<X0>(uint64_t a1@<X8>)
{
  v28[0] = a1;
  v1 = sub_20CE92880();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7E4D0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7E2D4(0);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE92840();
  v28[1] = v14;
  v29 = xmmword_20CE93B30;
  sub_20CE8363C();
  sub_20CE92E20();
  sub_20CE92990();
  sub_20CE83474(&qword_2811118B8, sub_20CE7E4D0, MEMORY[0x277CDEFC8]);
  sub_20CE83474(&qword_281111FA8, MEMORY[0x277D11A20], MEMORY[0x277D11A18]);
  sub_20CE92D80();
  (*(v2 + 8))(v4, v1);
  (*(v7 + 8))(v9, v6);
  sub_20CE92EB0();
  sub_20CE929A0();
  sub_20CE7E3A4(0);
  v16 = &v13[*(v15 + 36)];
  v17 = v30;
  *v16 = v29;
  v16[1] = v17;
  v16[2] = v31;
  KeyPath = swift_getKeyPath();
  sub_20CE834BC(0, &qword_281111A08, sub_20CE7E3A4, sub_20CE7E554, MEMORY[0x277CDFAB8]);
  v20 = &v13[*(v19 + 36)];
  sub_20CE7E554(0);
  v22 = *(v21 + 28);
  v23 = sub_20CE92E90();
  (*(*(v23 - 8) + 56))(v20 + v22, 1, 1, v23);
  *v20 = KeyPath;
  v24 = swift_getKeyPath();
  sub_20CE92850();
  v25 = &v13[*(v11 + 36)];
  *v25 = v24;
  v25[1] = v26;
  sub_20CE7E5BC();
  sub_20CE92D40();
  return sub_20CE83848(v13, sub_20CE7E2D4);
}

uint64_t sub_20CE82E84@<X0>(uint64_t a1@<X8>)
{
  sub_20CE93160();
  sub_20CE93150();
  sub_20CE93120();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE92B40();
  v2 = sub_20CE92D20();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_20CE82F6C(uint64_t a1)
{
  sub_20CE7E588(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20CE837E0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_20CE7E588);
  return sub_20CE92A50();
}

uint64_t sub_20CE8302C()
{
  v1 = v0;
  sub_20CE7D960(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7D994(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_20CE92EB0();
  v7[1] = v8;
  sub_20CE7FFC8(0);
  sub_20CE7F490(v1, v7 + *(v9 + 44));
  sub_20CE926C0();
  sub_20CE83474(&qword_281111888, sub_20CE7D994, MEMORY[0x277CE11A8]);
  sub_20CE92D50();
  sub_20CE838A8(v4, sub_20CE7D960);
  return sub_20CE83848(v7, sub_20CE7D994);
}

uint64_t type metadata accessor for MenstrualCyclesWidgetRectangularView(uint64_t a1)
{
  result = qword_281111EF0;
  if (!qword_281111EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CE8325C(uint64_t a1)
{
  sub_20CE83968(319, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_20CE83968(319, &qword_281111AE0, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_20CE83968(319, &qword_281111AD8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_20CE83968(319, &qword_281111AD0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_20CE83424(319, &qword_281111AC8, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_20CE831C8(319);
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

void sub_20CE83424(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_20CE83474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20CE834BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_20CE83540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE929B0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_20CE835D8()
{
  result = qword_281111840;
  if (!qword_281111840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111840);
  }

  return result;
}

uint64_t sub_20CE8362C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_20CE8363C()
{
  result = qword_27C8181A8;
  if (!qword_27C8181A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8181A8);
  }

  return result;
}

uint64_t sub_20CE83690(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CE83968(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CE83710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE83778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE837E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE83848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CE838A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CE83908()
{
  result = qword_27C8181B0;
  if (!qword_27C8181B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8181B0);
  }

  return result;
}

uint64_t sub_20CE8395C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void sub_20CE83968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_20CE839CC()
{
  type metadata accessor for MenstrualCyclesWidgetTimelineGenerator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2811123F0 = result;
  return result;
}

uint64_t sub_20CE83A24()
{
  v0 = sub_20CE92970();
  __swift_allocate_value_buffer(v0, qword_2811123B8);
  __swift_project_value_buffer(v0, qword_2811123B8);
  return sub_20CE92960();
}

uint64_t MenstrualCyclesWidgetTimelineGenerator.__allocating_init(healthStore:)(uint64_t a1)
{
  v2 = sub_20CE92750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  sub_20CE927F0();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9830], v2);
  sub_20CE92760();
  (*(v3 + 8))(v5, v2);
  *(v6 + 16) = a1;
  *(v6 + 24) = [objc_allocWithZone(MEMORY[0x277D11A10]) initWithHealthStore_];
  return v6;
}

uint64_t String.init<A>(describingSensitive:)(uint64_t a1, uint64_t a2)
{
  sub_20CE932D0();
  v4 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_20CE93220();
  swift_unknownObjectRelease();
  v5 = __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_20CE930D0();
  (*(*(a2 - 8) + 8))(a1, a2);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

uint64_t MenstrualCyclesWidgetTimelineGenerator.init(healthStore:)(uint64_t a1)
{
  v3 = sub_20CE92750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE927F0();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9830], v3);
  sub_20CE92760();
  (*(v4 + 8))(v6, v3);
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x277D11A10]) initWithHealthStore_];
  return v1;
}

uint64_t sub_20CE83E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = *v4;
  v7 = sub_20CE92720();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = *(v8 + 16);
  v13(&v26 - v11, a1, v7);
  v13(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v14 = *(v8 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = v9 + 7;
  v17 = (v9 + 7 + v15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v14 + 16 + v18) & ~v14;
  v27 = (v16 + v19) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = *(v8 + 32);
  v21(v20 + v15, v12, v7);
  *(v20 + v17) = v4;
  v22 = (v20 + v18);
  v23 = v31;
  *v22 = v30;
  v22[1] = v23;
  v21(v20 + v19, v28, v7);
  *(v20 + v27) = v29;
  v24 = *(*v4 + 144);

  v24(sub_20CE8C668, v20);
}

uint64_t sub_20CE840B8(void *a1, char *a2, unint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t), char *a6, uint64_t a7)
{
  v226 = a7;
  v234 = a6;
  v237 = a4;
  v238 = a5;
  v241 = a3;
  v229 = a1;
  v208 = sub_20CE927B0();
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v205 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_20CE927C0();
  v204 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v203 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_20CE92770();
  v202 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v201 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_20CE8CAF8(0, &qword_27C8181C0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v198 = &v190 - v13;
  sub_20CE8CAF8(0, &qword_27C8181C8, MEMORY[0x277CC99E8], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v197 = &v190 - v15;
  v200 = sub_20CE926A0();
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v214 = &v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_20CE93010();
  v231 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v219 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v220 = *(v221 - 8);
  v18 = MEMORY[0x28223BE20](v221);
  v196 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v193 = &v190 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v218 = &v190 - v23;
  MEMORY[0x28223BE20](v22);
  v210 = &v190 - v24;
  sub_20CE8CAC4(0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v192 = &v190 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v190 = &v190 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v191 = &v190 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v211 = (&v190 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v209 = &v190 - v35;
  MEMORY[0x28223BE20](v34);
  v223 = (&v190 - v36);
  sub_20CE831C8(0);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v212 = (&v190 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38);
  v225 = &v190 - v40;
  v41 = sub_20CE92810();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v190 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20CE92720();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v233 = &v190 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v228 = &v190 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v224 = &v190 - v52;
  v217 = v53;
  MEMORY[0x28223BE20](v51);
  v55 = &v190 - v54;
  v243 = sub_20CE92EE0();
  v56 = *(v243 - 8);
  v57 = MEMORY[0x28223BE20](v243);
  v232 = &v190 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v227 = (&v190 - v60);
  v61 = MEMORY[0x28223BE20](v59);
  v222 = &v190 - v62;
  v215 = v63;
  MEMORY[0x28223BE20](v61);
  v65 = &v190 - v64;
  v66 = swift_allocObject();
  v236 = v66;
  *(v66 + 16) = MEMORY[0x277D84F90];
  v213 = (v66 + 16);
  v235 = v46;
  v69 = *(v46 + 16);
  v68 = (v46 + 16);
  v67 = v69;
  v242 = v45;
  (v69)(v55, a2, v45);
  v194 = v42;
  v70 = *(v42 + 16);
  v195 = v41;
  v70(v44, v241 + OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_gregorianCalendar, v41);
  v239 = v55;
  sub_20CE92EC0();
  v240 = v65;
  v244 = v56;
  if (v229)
  {
    v71 = v229;
    v72 = [v71 state];
    v73 = v242;
    v74 = v243;
    v75 = v234;
    v76 = v67;
    v225 = v71;
    if (v72 == 1)
    {
      v77 = v239;
      (v76)(v239, a2, v242);
      v78 = v71;
      sub_20CE91194(v78, v77, &v245);
      v79 = v219;
      sub_20CE92FE0();
      v224 = a2;
      (v76)(v228, a2, v73);
      v80 = v68;
      v211 = *(v244 + 16);
      v211(v227, v240, v74);
      v81 = v78;
      v82 = v73;
      v83 = v212;
      v222 = v81;
      sub_20CE74F8C(v81, v212);
      v84 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
      (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
      v85 = v231;
      v86 = v191;
      v87 = v79;
      v88 = v230;
      (*(v231 + 16))(v191, v87, v230);
      (*(v85 + 56))(v86, 0, 1, v88);
      v89 = v193;
      v229 = v80;
      v223 = v76;
      (v76)(v193, v228, v82);
      v90 = v221;
      v91 = v74;
      v92 = v86;
      v211((v89 + *(v221 + 20)), v227, v91);
      sub_20CE8CF98(v83, v89 + v90[6], sub_20CE831C8);
      v93 = v90;
      *(v89 + v90[7]) = 0;
      v94 = v190;
      sub_20CE8CF98(v86, v190, sub_20CE8CAC4);
      v95 = *(v85 + 48);
      v96 = v95(v94, 1, v88);
      if (v96 == 1)
      {
        sub_20CE8CB5C(v94, sub_20CE8CAC4);
        v97 = 0;
      }

      else
      {
        sub_20CE92FF0();
        v97 = v125;
        (*(v85 + 8))(v94, v88);
      }

      v126 = v192;
      v127 = v89 + v93[8];
      *v127 = v97;
      *(v127 + 4) = v96 == 1;
      sub_20CE8CF98(v92, v126, sub_20CE8CAC4);
      v128 = v95(v126, 1, v88);
      if (v128 == 1)
      {
        sub_20CE8CB5C(v92, sub_20CE8CAC4);
        sub_20CE8CB5C(v212, sub_20CE831C8);
        (*(v244 + 8))(v227, v243);
        (*(v235 + 8))(v228, v242);
        sub_20CE8CB5C(v126, sub_20CE8CAC4);
        v129 = 0;
      }

      else
      {
        sub_20CE93000();
        v129 = v130;
        sub_20CE8CB5C(v92, sub_20CE8CAC4);
        sub_20CE8CB5C(v212, sub_20CE831C8);
        (*(v244 + 8))(v227, v243);
        (*(v235 + 8))(v228, v242);
        (*(v85 + 8))(v126, v88);
      }

      v131 = v220;
      v132 = v196;
      v133 = v89 + v93[9];
      *v133 = v129;
      *(v133 + 8) = v128 == 1;
      v134 = v89 + v93[10];
      *v134 = 0;
      *(v134 + 8) = 1;
      v135 = v218;
      sub_20CE8CBBC(v89, v218);
      sub_20CE8CF98(v135, v132, type metadata accessor for MenstrualCyclesWidgetEntry);
      v136 = v213;
      v137 = *v213;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v136 = v137;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v137 = sub_20CE8F7F4(0, v137[2] + 1, 1, v137);
        *v136 = v137;
      }

      v140 = v137[2];
      v139 = v137[3];
      if (v140 >= v139 >> 1)
      {
        v137 = sub_20CE8F7F4((v139 > 1), v140 + 1, 1, v137);
      }

      v137[2] = v140 + 1;
      sub_20CE8CBBC(v132, v137 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v140);
      *v136 = v137;
      v228 = OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_currentCalendar;
      (*(v194 + 56))(v197, 1, 1, v195);
      v141 = sub_20CE92820();
      (*(*(v141 - 8) + 56))(v198, 1, 1, v141);
      sub_20CE92690();
      v142 = v202;
      v143 = v201;
      (*(v202 + 104))(v201, *MEMORY[0x277CC9878], v216);
      v144 = v204;
      v145 = v203;
      v146 = v206;
      (*(v204 + 104))(v203, *MEMORY[0x277CC9900], v206);
      v147 = v207;
      v148 = v205;
      v149 = v208;
      v150 = (*(v207 + 104))(v205, *MEMORY[0x277CC98E8], v208);
      v227 = &v190;
      MEMORY[0x28223BE20](v150);
      v151 = v214;
      sub_20CE927A0();
      (*(v147 + 8))(v148, v149);
      (*(v144 + 8))(v145, v146);
      (*(v142 + 8))(v143, v216);
      (*(v199 + 8))(v151, v200);
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v152 = sub_20CE92970();
      __swift_project_value_buffer(v152, qword_2811123B8);
      v153 = v236;

      v154 = sub_20CE92950();
      v155 = sub_20CE93170();
      v156 = os_log_type_enabled(v154, v155);
      v157 = v231;
      v74 = v243;
      if (v156)
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v245 = v159;
        *v158 = 136380931;
        v160 = sub_20CE93320();
        v162 = sub_20CE7C260(v160, v161, &v245);

        *(v158 + 4) = v162;
        *(v158 + 12) = 2080;
        sub_20CE8CAF8(0, &qword_27C8181D0, sub_20CE8CF30, MEMORY[0x277D84560]);
        v163 = swift_allocObject();
        *(v163 + 16) = xmmword_20CE93A50;
        swift_beginAccess();
        *(v163 + 32) = *(v153 + 16);

        sub_20CE8CF30(0);
        v165 = MEMORY[0x20F316CF0](v163, v164);
        v167 = v166;

        v74 = v243;
        v168 = sub_20CE7C260(v165, v167, &v245);

        *(v158 + 14) = v168;
        a2 = v224;
        _os_log_impl(&dword_20CE71000, v154, v155, "[%{private}s] TimelineEntries in the generator are: %s", v158, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F317370](v159, -1, -1);
        MEMORY[0x20F317370](v158, -1, -1);

        v76 = v223;
      }

      else
      {

        v76 = v223;
        a2 = v224;
      }

      swift_beginAccess();

      v237(v169);

      sub_20CE8CB5C(v218, type metadata accessor for MenstrualCyclesWidgetEntry);
      (*(v157 + 8))(v219, v230);
      v73 = v242;
      v75 = v234;
    }

    (v76)(v239, a2, v73);
    v170 = v244;
    (*(v244 + 16))(v232, v240, v74);
    (v76)(v233, v75, v73);
    v171 = v235;
    v172 = *(v235 + 80);
    v173 = (v172 + 16) & ~v172;
    v174 = (v217 + *(v170 + 80) + v173) & ~*(v170 + 80);
    v231 = (v215 + v174 + 7) & 0xFFFFFFFFFFFFFFF8;
    v175 = (v231 + 15) & 0xFFFFFFFFFFFFFFF8;
    v176 = v74;
    v234 = ((v175 + 23) & 0xFFFFFFFFFFFFFFF8);
    v177 = (v234 + 15) & 0xFFFFFFFFFFFFFFF8;
    v178 = (v172 + v177 + 8) & ~v172;
    v230 = (v217 + v178 + 7) & 0xFFFFFFFFFFFFFFF8;
    v179 = swift_allocObject();
    v180 = *(v171 + 32);
    v180(v179 + v173, v239, v73);
    (*(v244 + 32))(v179 + v174, v232, v176);
    v181 = v225;
    *(v179 + v231) = v225;
    v182 = (v179 + v175);
    v183 = v238;
    *v182 = v237;
    v182[1] = v183;
    v184 = v233;
    *&v234[v179] = v236;
    v186 = v241;
    v185 = v242;
    *(v179 + v177) = v241;
    v180(v179 + v178, v184, v185);
    *(v179 + v230) = v226;
    v187 = *(*v186 + 136);
    v188 = v181;

    v187(sub_20CE8CDD4, v179);

    (*(v244 + 8))(v240, v243);
  }

  else
  {
    sub_20CE8CAF8(0, &qword_27C818178, type metadata accessor for MenstrualCyclesWidgetEntry, MEMORY[0x277D84560]);
    v241 = (*(v220 + 80) + 32) & ~*(v220 + 80);
    v239 = swift_allocObject();
    *(v239 + 16) = xmmword_20CE93A50;
    v98 = v224;
    v99 = v242;
    (v67)(v224, a2, v242);
    v229 = v68;
    v234 = *(v56 + 16);
    v100 = v222;
    v101 = v243;
    (v234)(v222, v65, v243);
    v102 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
    v103 = v225;
    (*(*(v102 - 8) + 56))(v225, 1, 1, v102);
    v104 = v231;
    v105 = v230;
    (*(v231 + 56))(v223, 1, 1, v230);
    v106 = v210;
    (v67)(v210, v98, v99);
    v107 = v221;
    (v234)(v106 + *(v221 + 20), v100, v101);
    sub_20CE8CF98(v103, v106 + v107[6], sub_20CE831C8);
    *(v106 + v107[7]) = 0;
    v108 = v223;
    v109 = v209;
    sub_20CE8CF98(v223, v209, sub_20CE8CAC4);
    v110 = *(v104 + 48);
    v111 = v110(v109, 1, v105);
    if (v111 == 1)
    {
      sub_20CE8CB5C(v109, sub_20CE8CAC4);
      v112 = 0;
    }

    else
    {
      sub_20CE92FF0();
      v112 = v113;
      (*(v104 + 8))(v109, v105);
    }

    v114 = v211;
    v115 = v106 + v107[8];
    *v115 = v112;
    *(v115 + 4) = v111 == 1;
    sub_20CE8CF98(v108, v114, sub_20CE8CAC4);
    v116 = v110(v114, 1, v105);
    v117 = v240;
    if (v116 == 1)
    {
      sub_20CE8CB5C(v108, sub_20CE8CAC4);
      sub_20CE8CB5C(v225, sub_20CE831C8);
      v118 = v243;
      v119 = *(v244 + 8);
      v119(v222, v243);
      (*(v235 + 8))(v224, v242);
      sub_20CE8CB5C(v114, sub_20CE8CAC4);
      v120 = 0;
    }

    else
    {
      sub_20CE93000();
      v120 = v121;
      sub_20CE8CB5C(v108, sub_20CE8CAC4);
      sub_20CE8CB5C(v225, sub_20CE831C8);
      v118 = v243;
      v119 = *(v244 + 8);
      v119(v222, v243);
      (*(v235 + 8))(v224, v242);
      (*(v231 + 8))(v114, v105);
    }

    v122 = v106 + v107[9];
    *v122 = v120;
    *(v122 + 8) = v116 == 1;
    v123 = v106 + v107[10];
    *v123 = 0;
    *(v123 + 8) = 1;
    v124 = v239;
    sub_20CE8CBBC(v106, v239 + v241);
    v237(v124);

    v119(v117, v118);
  }
}

uint64_t sub_20CE85C04(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, void (*a5)(char *, char *, uint64_t), char *a6, uint64_t *a7)
{
  v100 = a7;
  v89 = a6;
  v88 = a5;
  v96 = a4;
  v87 = a3;
  sub_20CE8CAC4(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v92 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v90 = &v87 - v12;
  MEMORY[0x28223BE20](v11);
  v91 = &v87 - v13;
  sub_20CE831C8(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v95 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v94 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v104 = &v87 - v21;
  MEMORY[0x28223BE20](v20);
  v99 = &v87 - v22;
  v93 = sub_20CE93010();
  v101 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v98 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20CE92810();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20CE92EE0();
  v105 = *(v28 - 8);
  v106 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v103 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v97 = &v87 - v31;
  sub_20CE8CF64(0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20CE92720();
  v36 = MEMORY[0x28223BE20](v35);
  v102 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v87 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v87 - v41;
  v43 = a1;
  v45 = v44;
  sub_20CE8CF98(v43, v34, sub_20CE8CF64);
  if ((*(v45 + 48))(v34, 1, v35) == 1)
  {
    return sub_20CE8CB5C(v34, sub_20CE8CF64);
  }

  (*(v45 + 32))(v42, v34, v35);
  if (sub_20CE926F0())
  {
    result = (*(v45 + 8))(v42, v35);
    *v87 = 1;
  }

  else
  {
    v96 = v45;
    v47 = *(v45 + 16);
    v47(v40, v42, v35);
    (*(v25 + 16))(v27, v88 + OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_gregorianCalendar, v24);
    v48 = v97;
    sub_20CE92EC0();
    v47(v40, v42, v35);
    v49 = v47;
    v87 = v47;
    v50 = v89;
    sub_20CE91194(v50, v40, &v107);
    v51 = v98;
    sub_20CE92FE0();
    v89 = v42;
    v49(v102, v42, v35);
    v88 = *(v105 + 16);
    v52 = v17;
    v53 = v106;
    v88(v103, v48, v106);
    sub_20CE74F8C(v50, v16);
    v54 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
    (*(*(v54 - 8) + 56))(v16, 0, 1, v54);
    v55 = v101;
    v56 = v91;
    v57 = v51;
    v58 = v93;
    (*(v101 + 16))(v91, v57, v93);
    (*(v55 + 56))(v56, 0, 1, v58);
    v59 = v104;
    v87(v104, v102, v35);
    v60 = v53;
    v61 = v52;
    v88(&v59[v52[5]], v103, v60);
    sub_20CE8CF98(v16, &v59[v52[6]], sub_20CE831C8);
    *&v59[v52[7]] = 0;
    v62 = v90;
    sub_20CE8CF98(v56, v90, sub_20CE8CAC4);
    v63 = *(v55 + 48);
    v64 = v63(v62, 1, v58);
    if (v64 == 1)
    {
      sub_20CE8CB5C(v62, sub_20CE8CAC4);
      v65 = 0;
    }

    else
    {
      sub_20CE92FF0();
      v65 = v66;
      (*(v55 + 8))(v62, v58);
    }

    v67 = v94;
    v68 = v92;
    v69 = &v104[v52[8]];
    *v69 = v65;
    v69[4] = v64 == 1;
    sub_20CE8CF98(v56, v68, sub_20CE8CAC4);
    v70 = v63(v68, 1, v58);
    if (v70 == 1)
    {
      sub_20CE8CB5C(v56, sub_20CE8CAC4);
      sub_20CE8CB5C(v16, sub_20CE831C8);
      v71 = *(v105 + 8);
      v71(v103, v106);
      v72 = *(v96 + 8);
      v72(v102, v35);
      sub_20CE8CB5C(v68, sub_20CE8CAC4);
      v73 = 0;
    }

    else
    {
      sub_20CE93000();
      v73 = v74;
      sub_20CE8CB5C(v56, sub_20CE8CAC4);
      sub_20CE8CB5C(v16, sub_20CE831C8);
      v71 = *(v105 + 8);
      v71(v103, v106);
      v72 = *(v96 + 8);
      v72(v102, v35);
      (*(v101 + 8))(v68, v58);
    }

    v76 = v99;
    v75 = v100;
    v77 = v104;
    v78 = &v104[v61[9]];
    *v78 = v73;
    v78[8] = v70 == 1;
    v79 = v77 + v61[10];
    *v79 = 0;
    *(v79 + 8) = 1;
    sub_20CE8CBBC(v77, v76);
    sub_20CE8CF98(v76, v67, type metadata accessor for MenstrualCyclesWidgetEntry);
    v80 = *v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v75 = v80;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v80 = sub_20CE8F7F4(0, v80[2] + 1, 1, v80);
      *v75 = v80;
    }

    v82 = v89;
    v84 = v80[2];
    v83 = v80[3];
    if (v84 >= v83 >> 1)
    {
      v86 = sub_20CE8F7F4((v83 > 1), v84 + 1, 1, v80);
      *v100 = v86;
    }

    sub_20CE8CB5C(v99, type metadata accessor for MenstrualCyclesWidgetEntry);
    (*(v101 + 8))(v98, v58);
    v71(v97, v106);
    v72(v82, v35);
    v85 = *v100;
    *(v85 + 16) = v84 + 1;
    return sub_20CE8CBBC(v67, v85 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v84);
  }

  return result;
}

uint64_t sub_20CE86708(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v124 = a8;
  v139 = a7;
  v136 = a6;
  v137 = a5;
  v132 = a4;
  v140 = a3;
  v135 = a1;
  v125 = sub_20CE927B0();
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v120 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_20CE927C0();
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_20CE92770();
  v117 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v116 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83D88];
  sub_20CE8CAF8(0, &qword_27C8181C0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v112 = &v108 - v16;
  sub_20CE8CAF8(0, &qword_27C8181C8, MEMORY[0x277CC99E8], v14);
  MEMORY[0x28223BE20](v17 - 8);
  v111 = &v108 - v18;
  v115 = sub_20CE926A0();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8CAC4(0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v133 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v128 = &v108 - v24;
  MEMORY[0x28223BE20](v23);
  v127 = &v108 - v25;
  sub_20CE831C8(0);
  MEMORY[0x28223BE20](v26 - 8);
  v144 = (&v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20CE92EE0();
  v142 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = v31;
  v32 = sub_20CE92720();
  v33 = *(v32 - 1);
  MEMORY[0x28223BE20](v32);
  v35 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v134 = *(v126 - 8);
  v36 = MEMORY[0x28223BE20](v126);
  v109 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v108 - v39;
  MEMORY[0x28223BE20](v38);
  v143 = &v108 - v41;
  v130 = v33;
  v42 = *(v33 + 16);
  v122 = a2;
  v42(v35, a2, v32);
  v131 = v29;
  v43 = *(v29 + 16);
  v43(v31, v140, v28);
  v44 = v132;
  v45 = v144;
  v110 = v44;
  sub_20CE74F8C(v44, v144);
  v46 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  v47 = sub_20CE93010();
  v48 = *(v47 - 8);
  v49 = v127;
  (*(v48 + 56))(v127, 1, 1, v47);
  v129 = v35;
  v50 = v35;
  v51 = v128;
  v132 = v32;
  v52 = v32;
  v53 = v126;
  v42(v40, v50, v52);
  v43(&v40[v53[5]], v141, v142);
  sub_20CE8CF98(v144, &v40[v53[6]], sub_20CE831C8);
  *&v40[v53[7]] = 0;
  sub_20CE8CF98(v49, v51, sub_20CE8CAC4);
  v54 = *(v48 + 48);
  v55 = v54(v51, 1, v47);
  v108 = v48;
  if (v55 == 1)
  {
    sub_20CE8CB5C(v51, sub_20CE8CAC4);
    v56 = 0;
  }

  else
  {
    sub_20CE92FF0();
    v56 = v57;
    (*(v48 + 8))(v51, v47);
  }

  v58 = &v40[v53[8]];
  *v58 = v56;
  v58[4] = v55 == 1;
  v59 = v133;
  sub_20CE8CF98(v49, v133, sub_20CE8CAC4);
  v60 = v54(v59, 1, v47);
  v61 = v143;
  if (v60 == 1)
  {
    sub_20CE8CB5C(v49, sub_20CE8CAC4);
    sub_20CE8CB5C(v144, sub_20CE831C8);
    (*(v131 + 8))(v141, v142);
    (*(v130 + 8))(v129, v132);
    sub_20CE8CB5C(v59, sub_20CE8CAC4);
    v62 = 0;
  }

  else
  {
    sub_20CE93000();
    v62 = v63;
    sub_20CE8CB5C(v49, sub_20CE8CAC4);
    sub_20CE8CB5C(v144, sub_20CE831C8);
    (*(v131 + 8))(v141, v142);
    (*(v130 + 8))(v129, v132);
    (*(v108 + 8))(v59, v47);
  }

  v64 = &v40[v53[9]];
  *v64 = v62;
  v64[8] = v60 == 1;
  v65 = &v40[v53[10]];
  *v65 = 0;
  v65[8] = 1;
  sub_20CE8CBBC(v40, v61);
  v66 = v135;
  if (v135)
  {
    v67 = (v139 + 16);
    v68 = v109;
    sub_20CE8CF98(v61, v109, type metadata accessor for MenstrualCyclesWidgetEntry);
    swift_beginAccess();
    v69 = *v67;
    v144 = v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v67 = v69;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v69 = sub_20CE8F7F4(0, v69[2] + 1, 1, v69);
      *v67 = v69;
    }

    v141 = a9;
    v142 = a10;
    v72 = v69[2];
    v71 = v69[3];
    if (v72 >= v71 >> 1)
    {
      v69 = sub_20CE8F7F4((v71 > 1), v72 + 1, 1, v69);
    }

    v69[2] = v72 + 1;
    sub_20CE8CBBC(v68, v69 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + v134[9] * v72);
    *v67 = v69;
    swift_endAccess();
    v135 = OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_currentCalendar;
    v73 = sub_20CE92810();
    (*(*(v73 - 8) + 56))(v111, 1, 1, v73);
    v74 = sub_20CE92820();
    (*(*(v74 - 8) + 56))(v112, 1, 1, v74);
    v75 = v113;
    sub_20CE92690();
    v76 = v117;
    v77 = v116;
    (*(v117 + 104))(v116, *MEMORY[0x277CC9878], v138);
    v78 = v119;
    v79 = v118;
    v80 = v121;
    (*(v119 + 104))(v118, *MEMORY[0x277CC9900], v121);
    v81 = v123;
    v82 = v67;
    v83 = v120;
    v84 = v125;
    v85 = (*(v123 + 104))(v120, *MEMORY[0x277CC98E8], v125);
    v134 = &v108;
    MEMORY[0x28223BE20](v85);
    v141 = v82;
    sub_20CE927A0();
    (*(v81 + 8))(v83, v84);
    (*(v78 + 8))(v79, v80);
    (*(v76 + 8))(v77, v138);
    (*(v114 + 8))(v75, v115);
    if (qword_281111B08 != -1)
    {
      swift_once();
    }

    v86 = sub_20CE92970();
    __swift_project_value_buffer(v86, qword_2811123B8);

    v87 = sub_20CE92950();
    v88 = sub_20CE93170();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v146 = v90;
      *v89 = 136380931;
      v91 = sub_20CE93320();
      v93 = sub_20CE7C260(v91, v92, &v146);

      *(v89 + 4) = v93;
      *(v89 + 12) = 2080;
      sub_20CE8CAF8(0, &qword_27C8181D0, sub_20CE8CF30, MEMORY[0x277D84560]);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_20CE93A50;
      v95 = v141;
      swift_beginAccess();
      *(v94 + 32) = *v95;
      v145[0] = v94;
      sub_20CE8CAF8(0, &qword_27C8181E0, sub_20CE8CF30, MEMORY[0x277D83940]);

      sub_20CE932E0();
      v96 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_20CE93220();
      swift_unknownObjectRelease();
      v97 = __swift_project_boxed_opaque_existential_0(v145, v145[3]);
      MEMORY[0x28223BE20](v97);
      (*(v99 + 16))(&v108 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
      v100 = sub_20CE930D0();
      v102 = v101;
      __swift_destroy_boxed_opaque_existential_0(v145);
      v103 = sub_20CE7C260(v100, v102, &v146);

      *(v89 + 14) = v103;
      _os_log_impl(&dword_20CE71000, v87, v88, "[%{private}s] TimelineEntries in the generator are: %s", v89, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F317370](v90, -1, -1);
      MEMORY[0x20F317370](v89, -1, -1);
    }

    v61 = v143;
    swift_beginAccess();

    v137(v106);
  }

  else
  {
    sub_20CE8CAF8(0, &qword_27C818178, type metadata accessor for MenstrualCyclesWidgetEntry, MEMORY[0x277D84560]);
    v104 = (*(v134 + 80) + 32) & ~*(v134 + 80);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_20CE93A50;
    sub_20CE8CF98(v61, v105 + v104, type metadata accessor for MenstrualCyclesWidgetEntry);
    v137(v105);
  }

  return sub_20CE8CB5C(v61, type metadata accessor for MenstrualCyclesWidgetEntry);
}

uint64_t sub_20CE87924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, void *a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  v159 = a8;
  v158 = a7;
  v157 = a6;
  v177 = a5;
  v174 = a3;
  sub_20CE831C8(0);
  MEMORY[0x28223BE20](v13 - 8);
  v170 = (&v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v175 = *(v172 - 1);
  v15 = MEMORY[0x28223BE20](v172);
  v166 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v162 = &v148 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v171 = &v148 - v20;
  MEMORY[0x28223BE20](v19);
  v163 = &v148 - v21;
  sub_20CE8CAC4(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v161 = &v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v160 = &v148 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v164 = &v148 - v28;
  MEMORY[0x28223BE20](v27);
  v165 = &v148 - v29;
  v30 = sub_20CE92810();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_20CE92EE0();
  v176 = *(v173 - 8);
  v34 = MEMORY[0x28223BE20](v173);
  v169 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v148 - v37;
  MEMORY[0x28223BE20](v36);
  v167 = &v148 - v39;
  sub_20CE8CF64(0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v148 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20CE92720();
  v44 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43);
  v168 = &v148 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v148 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v148 - v50;
  v52 = a1;
  v54 = v53;
  sub_20CE8CF98(v52, v42, sub_20CE8CF64);
  if ((*(v44 + 48))(v42, 1, v54) == 1)
  {
    return sub_20CE8CB5C(v42, sub_20CE8CF64);
  }

  (*(v44 + 32))(v51, v42, v54);
  if (sub_20CE926F0())
  {
    result = (*(v44 + 8))(v51, v54);
    *v174 = 1;
  }

  else
  {
    v156 = v51;
    v174 = v44;
    v155 = a12;
    v56 = v177;
    if ([v177 menstruationProjectionsEnabled] && ((v57 = objc_msgSend(v56, sel_menstruationProjections), v58 = sub_20CE8CD30(), v59 = sub_20CE93100(), v57, v59 >> 62) ? (v60 = sub_20CE93290()) : (v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v60))
    {
      v152 = v58;
      v154 = a10;
      v153 = a9;
      v62 = v174 + 16;
      v61 = *(v174 + 16);
      v63 = v156;
      v61(v49, v156, v54);
      (*(v31 + 16))(v33, v157 + OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_gregorianCalendar, v30);
      v64 = v167;
      sub_20CE92EC0();
      v166 = sub_20CE88BD4(v64);
      v157 = v61;
      if (v166)
      {
        v65 = v61;
        v61(v49, v63, v54);
        v66 = v166;
        v67 = v166;
        sub_20CE90E0C(v66, v49, v178);
        v68 = v165;
        sub_20CE92FE0();
        v69 = 0;
        v70 = v173;
      }

      else
      {
        v150 = v62;
        v151 = v54;
        if (qword_281111B08 != -1)
        {
          swift_once();
        }

        v86 = sub_20CE92970();
        __swift_project_value_buffer(v86, qword_2811123B8);
        v87 = v176;
        v88 = v173;
        (*(v176 + 16))(v38, v167, v173);
        v89 = v177;
        v90 = sub_20CE92950();
        v91 = sub_20CE93170();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v179 = v149;
          *v92 = 136446722;
          v93 = sub_20CE93320();
          LODWORD(v155) = v91;
          v95 = sub_20CE7C260(v93, v94, &v179);

          *(v92 + 4) = v95;
          *(v92 + 12) = 2082;
          sub_20CE8CD7C();
          v96 = sub_20CE932A0();
          v98 = v97;
          (*(v87 + 8))(v38, v88);
          v99 = sub_20CE7C260(v96, v98, &v179);

          *(v92 + 14) = v99;
          *(v92 + 22) = 2080;
          v100 = [v89 menstruationProjections];
          v101 = sub_20CE93100();

          v178[0] = v101;
          sub_20CE8CAF8(0, &qword_27C8181E8, sub_20CE8CD30, MEMORY[0x277D83940]);
          sub_20CE932E0();
          v102 = HKSensitiveLogItem();
          swift_unknownObjectRelease();
          sub_20CE93220();
          swift_unknownObjectRelease();
          v103 = __swift_project_boxed_opaque_existential_0(v178, v178[3]);
          MEMORY[0x28223BE20](v103);
          (*(v105 + 16))(&v148 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
          v106 = sub_20CE930D0();
          v108 = v107;
          __swift_destroy_boxed_opaque_existential_0(v178);
          v109 = sub_20CE7C260(v106, v108, &v179);

          *(v92 + 24) = v109;
          _os_log_impl(&dword_20CE71000, v90, v155, "[%{public}s] TimelineEntries: No projection found that contains %{public}s in %s", v92, 0x20u);
          v110 = v149;
          swift_arrayDestroy();
          MEMORY[0x20F317370](v110, -1, -1);
          MEMORY[0x20F317370](v92, -1, -1);
        }

        else
        {

          (*(v87 + 8))(v38, v88);
        }

        v69 = 1;
        v54 = v151;
        v68 = v165;
        v70 = v88;
        v65 = v157;
      }

      v111 = sub_20CE93010();
      v112 = *(v111 - 8);
      (*(v112 + 56))(v68, v69, 1, v111);
      v113 = v54;
      v65(v168, v158, v54);
      v114 = *(v176 + 16);
      v114(v169, v159, v70);
      v115 = v153;
      v116 = v170;
      sub_20CE74F8C(v115, v170);
      v117 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
      (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
      sub_20CE8CF98(v68, v164, sub_20CE8CAC4);
      v118 = [v177 lastMenstrualFlowDayIndex];
      v119 = v118;
      if (v118)
      {
        v177 = [v118 integerValue];
      }

      else
      {
        v177 = 0;
      }

      v120 = v171;
      v157(v171, v168, v113);
      v121 = v172;
      v114(&v120[v172[5]], v169, v70);
      sub_20CE8CF98(v170, &v120[v121[6]], sub_20CE831C8);
      v122 = v166;
      *&v120[v121[7]] = v166;
      v123 = v164;
      v124 = v160;
      sub_20CE8CF98(v164, v160, sub_20CE8CAC4);
      v125 = *(v112 + 48);
      v126 = v125(v124, 1, v111);
      v127 = v122;
      if (v126 == 1)
      {
        sub_20CE8CB5C(v124, sub_20CE8CAC4);
        v128 = 0;
      }

      else
      {
        sub_20CE92FF0();
        v128 = v129;
        (*(v112 + 8))(v124, v111);
      }

      v130 = v161;
      v131 = &v171[v172[8]];
      *v131 = v128;
      v131[4] = v126 == 1;
      sub_20CE8CF98(v123, v130, sub_20CE8CAC4);
      v132 = v125(v130, 1, v111);
      if (v132 == 1)
      {
        sub_20CE8CB5C(v123, sub_20CE8CAC4);
        sub_20CE8CB5C(v170, sub_20CE831C8);
        v133 = *(v176 + 8);
        v133(v169, v173);
        v134 = *(v174 + 8);
        v134(v168, v113);
        sub_20CE8CB5C(v130, sub_20CE8CAC4);
        v135 = 0;
      }

      else
      {
        sub_20CE93000();
        v135 = v136;
        sub_20CE8CB5C(v123, sub_20CE8CAC4);
        sub_20CE8CB5C(v170, sub_20CE831C8);
        v133 = *(v176 + 8);
        v133(v169, v173);
        v134 = *(v174 + 8);
        v134(v168, v113);
        (*(v112 + 8))(v130, v111);
      }

      v137 = v171;
      v138 = v172;
      v139 = &v171[v172[9]];
      *v139 = v135;
      v139[8] = v132 == 1;
      v140 = v137 + v138[10];
      *v140 = v177;
      *(v140 + 8) = v119 == 0;
      v141 = v163;
      sub_20CE8CBBC(v137, v163);
      v142 = v162;
      sub_20CE8CF98(v141, v162, type metadata accessor for MenstrualCyclesWidgetEntry);
      v143 = v154;
      swift_beginAccess();
      v144 = *v143;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v143 = v144;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v144 = sub_20CE8F7F4(0, v144[2] + 1, 1, v144);
        *v143 = v144;
      }

      v147 = v144[2];
      v146 = v144[3];
      if (v147 >= v146 >> 1)
      {
        v144 = sub_20CE8F7F4((v146 > 1), v147 + 1, 1, v144);
        *v154 = v144;
      }

      v144[2] = v147 + 1;
      sub_20CE8CBBC(v142, v144 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v147);
      swift_endAccess();

      sub_20CE8CB5C(v141, type metadata accessor for MenstrualCyclesWidgetEntry);
      sub_20CE8CB5C(v165, sub_20CE8CAC4);
      v133(v167, v173);
      return (v134)(v156, v113);
    }

    else
    {
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v71 = sub_20CE92970();
      __swift_project_value_buffer(v71, qword_2811123B8);
      v72 = sub_20CE92950();
      v73 = sub_20CE931A0();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v178[0] = v75;
        *v74 = 136446210;
        v76 = sub_20CE93320();
        v78 = v54;
        v79 = sub_20CE7C260(v76, v77, v178);

        *(v74 + 4) = v79;
        v54 = v78;
        _os_log_impl(&dword_20CE71000, v72, v73, "[%{public}s] TimelineEntries: Projections unavailable.", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x20F317370](v75, -1, -1);
        MEMORY[0x20F317370](v74, -1, -1);
      }

      v80 = v174;
      v81 = v166;
      sub_20CE8CF98(a11, v166, type metadata accessor for MenstrualCyclesWidgetEntry);
      swift_beginAccess();
      v82 = *a10;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      *a10 = v82;
      if ((v83 & 1) == 0)
      {
        v82 = sub_20CE8F7F4(0, v82[2] + 1, 1, v82);
        *a10 = v82;
      }

      v85 = v82[2];
      v84 = v82[3];
      if (v85 >= v84 >> 1)
      {
        v82 = sub_20CE8F7F4((v84 > 1), v85 + 1, 1, v82);
        *a10 = v82;
      }

      v82[2] = v85 + 1;
      sub_20CE8CBBC(v81, v82 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v85);
      swift_endAccess();
      return (*(v80 + 8))(v156, v54);
    }
  }

  return result;
}

void *sub_20CE88BD4(uint64_t a1)
{
  v2 = [v1 menstruationProjections];
  sub_20CE8CD30();
  v3 = sub_20CE93100();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20CE93290())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F316E40](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 allDays];
      if (sub_20CE92ED0() < v9)
      {

        goto LABEL_14;
      }

      [v7 allDays];
      if (sub_20CE931B0())
      {

        return v7;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_14:

  return 0;
}

uint64_t sub_20CE88D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v45 = a3;
  v46 = *v4;
  v47 = v4;
  v6 = sub_20CE92810();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE92720();
  v36 = *(v9 - 8);
  v10 = v36;
  v43 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20CE92EE0();
  v38 = *(v40 - 8);
  v13 = *(v38 + 64);
  v14 = MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = *(v10 + 16);
  v34 = v9;
  v17(v12, a1, v9);
  (*(v41 + 16))(v8, v47 + OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_gregorianCalendar, v42);
  v39 = v16;
  v35 = v12;
  sub_20CE92EC0();
  v42 = swift_allocObject();
  swift_weakInit();
  v17(v12, a1, v9);
  v18 = v37;
  v19 = v38;
  v20 = v16;
  v21 = v40;
  (*(v38 + 16))(v37, v20, v40);
  v22 = v36;
  v23 = (*(v36 + 80) + 40) & ~*(v36 + 80);
  v24 = (v43 + *(v19 + 80) + v23) & ~*(v19 + 80);
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v28 = v44;
  v27 = v45;
  *(v26 + 2) = v42;
  *(v26 + 3) = v27;
  *(v26 + 4) = v28;
  (*(v22 + 32))(&v26[v23], v35, v34);
  v29 = &v26[v24];
  v30 = v21;
  (*(v19 + 32))(v29, v18, v21);
  v31 = v47;
  *&v26[v25] = v46;
  v32 = *(*v31 + 144);

  v32(sub_20CE8C72C, v26);

  (*(v19 + 8))(v39, v30);
}

uint64_t sub_20CE89124(char *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v126 = a7;
  v127 = a1;
  v128 = a6;
  v129 = a5;
  v130 = a3;
  v131 = a4;
  sub_20CE8CAC4(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v124 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v122 = &v115 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v123 = &v115 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v115 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v115 = &v115 - v18;
  MEMORY[0x28223BE20](v17);
  v116 = &v115 - v19;
  sub_20CE831C8(0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v134 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v117 = (&v115 - v23);
  v137 = sub_20CE92EE0();
  v24 = *(v137 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v137);
  v133 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v115 - v28;
  MEMORY[0x28223BE20](v27);
  v120 = &v115 - v30;
  v136 = sub_20CE92720();
  v31 = *(v136 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v136);
  v132 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v115 - v35;
  MEMORY[0x28223BE20](v34);
  v118 = &v115 - v37;
  v135 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v38 = MEMORY[0x28223BE20](v135 - 2);
  v40 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v121 = &v115 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v119 = &v115 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v115 - v45;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    v125 = v31;
    v120 = *(v31 + 16);
    v127 = v40;
    v66 = v132;
    v67 = v136;
    (v120)(v132, v129, v136);
    v126 = v24;
    v129 = *(v24 + 16);
    v68 = v133;
    v69 = v137;
    (v129)(v133, v128, v137);
    v70 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
    v71 = v134;
    (*(*(v70 - 8) + 56))(v134, 1, 1, v70);
    v72 = sub_20CE93010();
    v73 = *(v72 - 8);
    v74 = v123;
    (*(v73 + 56))(v123, 1, 1, v72);
    v75 = v66;
    v76 = v127;
    (v120)(v127, v75, v67);
    (v129)(&v76[v135[5]], v68, v69);
    v77 = v135;
    sub_20CE8CF98(v71, &v76[v135[6]], sub_20CE831C8);
    *&v76[v77[7]] = 0;
    v78 = v122;
    sub_20CE8CF98(v74, v122, sub_20CE8CAC4);
    v79 = *(v73 + 48);
    v80 = v79(v78, 1, v72);
    if (v80 == 1)
    {
      sub_20CE8CB5C(v78, sub_20CE8CAC4);
      v81 = 0;
    }

    else
    {
      sub_20CE92FF0();
      v81 = v82;
      (*(v73 + 8))(v78, v72);
    }

    v83 = &v76[v77[8]];
    *v83 = v81;
    v83[4] = v80 == 1;
    v84 = v124;
    sub_20CE8CF98(v74, v124, sub_20CE8CAC4);
    v85 = v79(v84, 1, v72);
    v86 = v74;
    v88 = v125;
    v87 = v126;
    if (v85 == 1)
    {
      sub_20CE8CB5C(v86, sub_20CE8CAC4);
      sub_20CE8CB5C(v134, sub_20CE831C8);
      (*(v87 + 8))(v133, v137);
      (*(v88 + 8))(v132, v136);
      sub_20CE8CB5C(v84, sub_20CE8CAC4);
      v89 = 0;
    }

    else
    {
      sub_20CE93000();
      v89 = v90;
      sub_20CE8CB5C(v86, sub_20CE8CAC4);
      sub_20CE8CB5C(v134, sub_20CE831C8);
      (*(v87 + 8))(v133, v137);
      (*(v88 + 8))(v132, v136);
      (*(v73 + 8))(v84, v72);
    }

    v91 = &v76[v77[9]];
    *v91 = v89;
    v91[8] = v85 == 1;
    v92 = &v76[v77[10]];
    *v92 = 0;
    v92[8] = 1;
    v93 = v121;
    sub_20CE8CBBC(v76, v121);
    v130(v93);
    v94 = v93;
    return sub_20CE8CB5C(v94, type metadata accessor for MenstrualCyclesWidgetEntry);
  }

  if (!v127)
  {

    goto LABEL_7;
  }

  v132 = v46;
  v133 = v16;
  v134 = Strong;
  v48 = v127;
  v49 = [v48 state];
  v50 = *(v31 + 16);
  if (v49 != 1)
  {
    v50(v36, v129, v136);
    (*(v24 + 16))(v29, v128, v137);
    v95 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v96 = (v32 + *(v24 + 80) + v95) & ~*(v24 + 80);
    v135 = ((v25 + v96 + 7) & 0xFFFFFFFFFFFFFFF8);
    v97 = (v135 + 15) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    v99 = v131;
    *(v98 + 16) = v130;
    *(v98 + 24) = v99;
    (*(v31 + 32))(v98 + v95, v36, v136);
    (*(v24 + 32))(v98 + v96, v29, v137);
    v100 = v134;
    *(v135 + v98) = v48;
    *(v98 + v97) = v126;
    v101 = *(*v100 + 136);
    v102 = v48;

    v101(sub_20CE8CC20, v98);
  }

  v125 = v31;
  v126 = v24;
  v51 = v129;
  v52 = v136;
  v50(v118, v129, v136);
  v127 = *(v24 + 16);
  v53 = v137;
  (v127)(v120, v128, v137);
  v54 = v48;
  v55 = v117;
  sub_20CE74F8C(v54, v117);
  v56 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v50(v36, v51, v52);
  v129 = v54;
  sub_20CE91194(v129, v36, &v138);
  v57 = v116;
  sub_20CE92FE0();
  v58 = sub_20CE93010();
  v59 = *(v58 - 8);
  (*(v59 + 56))(v57, 0, 1, v58);
  v60 = v119;
  v50(v119, v118, v52);
  v61 = v135;
  (v127)(&v60[v135[5]], v120, v53);
  sub_20CE8CF98(v55, &v60[v61[6]], sub_20CE831C8);
  *&v60[v61[7]] = 0;
  v62 = v115;
  sub_20CE8CF98(v57, v115, sub_20CE8CAC4);
  v63 = *(v59 + 48);
  v64 = v63(v62, 1, v58);
  if (v64 == 1)
  {
    sub_20CE8CB5C(v62, sub_20CE8CAC4);
    v65 = 0;
  }

  else
  {
    sub_20CE92FF0();
    v65 = v104;
    (*(v59 + 8))(v62, v58);
  }

  v105 = &v119[v135[8]];
  *v105 = v65;
  v105[4] = v64 == 1;
  v106 = v133;
  sub_20CE8CF98(v57, v133, sub_20CE8CAC4);
  v107 = v63(v106, 1, v58);
  if (v107 == 1)
  {
    sub_20CE8CB5C(v57, sub_20CE8CAC4);
    sub_20CE8CB5C(v117, sub_20CE831C8);
    (*(v126 + 8))(v120, v137);
    (*(v125 + 8))(v118, v136);
    sub_20CE8CB5C(v106, sub_20CE8CAC4);
    v108 = 0;
  }

  else
  {
    sub_20CE93000();
    v108 = v109;
    sub_20CE8CB5C(v57, sub_20CE8CAC4);
    sub_20CE8CB5C(v117, sub_20CE831C8);
    (*(v126 + 8))(v120, v137);
    (*(v125 + 8))(v118, v136);
    (*(v59 + 8))(v106, v58);
  }

  v110 = v135;
  v111 = v119;
  v112 = &v119[v135[9]];
  *v112 = v108;
  v112[8] = v107 == 1;
  v113 = v111 + v110[10];
  *v113 = 0;
  *(v113 + 8) = 1;
  v114 = v132;
  sub_20CE8CBBC(v111, v132);
  v130(v114);

  v94 = v114;
  return sub_20CE8CB5C(v94, type metadata accessor for MenstrualCyclesWidgetEntry);
}

uint64_t sub_20CE89F50(uint64_t a1, void (*a2)(double *), uint64_t a3, char *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v194 = a7;
  v208 = a5;
  v209 = a6;
  v210 = a4;
  v211 = a3;
  v212 = a2;
  sub_20CE8CAC4(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v201 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v199 = &v188 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v200 = &v188 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v188 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v192 = &v188 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v197 = &v188 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v196 = (&v188 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v195 = &v188 - v24;
  MEMORY[0x28223BE20](v23);
  v205 = &v188 - v25;
  sub_20CE831C8(0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v207 = (&v188 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v204 = (&v188 - v30);
  MEMORY[0x28223BE20](v29);
  v32 = (&v188 - v31);
  v33 = sub_20CE92EE0();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v215 = (&v188 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x28223BE20](v35);
  v203 = &v188 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v190 = &v188 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v188 - v41;
  v43 = sub_20CE92720();
  v44 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43);
  v206 = &v188 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v191 = &v188 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v202 = &v188 - v50;
  MEMORY[0x28223BE20](v49);
  v52 = &v188 - v51;
  v53 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v54 = MEMORY[0x28223BE20](v53);
  v198 = &v188 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v57 = MEMORY[0x28223BE20](v56);
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v188 - v59;
  MEMORY[0x28223BE20](v58);
  v216 = v33;
  v217 = v43;
  v213 = v34;
  v214 = v44;
  if (v64)
  {
    v195 = v63;
    v189 = v16;
    v196 = v62;
    v193 = v53;
    v65 = v64;
    v66 = [v65 menstruationProjectionsEnabled];
    v205 = v65;
    if ((v66 & 1) != 0 && ((v67 = [v65 menstruationProjections], v68 = sub_20CE8CD30(), v69 = sub_20CE93100(), v67, v69 >> 62) ? (v70 = sub_20CE93290()) : (v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v70))
    {
      v71 = v208;
      v72 = sub_20CE88BD4(v208);
      v73 = v34;
      v215 = v72;
      if (!v72)
      {
        v74 = v205;
        if (qword_281111B08 != -1)
        {
          swift_once();
        }

        v75 = sub_20CE92970();
        __swift_project_value_buffer(v75, qword_2811123B8);
        v76 = v190;
        v77 = v216;
        (*(v34 + 16))(v190, v71, v216);
        v78 = v74;
        v79 = sub_20CE92950();
        v80 = sub_20CE93170();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v207 = swift_slowAlloc();
          v219 = v207;
          *v81 = 136446466;
          v82 = sub_20CE93320();
          LODWORD(v206) = v80;
          v84 = sub_20CE7C260(v82, v83, &v219);

          *(v81 + 4) = v84;
          *(v81 + 12) = 2080;
          sub_20CE8CD7C();
          v218[0] = sub_20CE932A0();
          v218[1] = v85;
          MEMORY[0x20F316CC0](544106784, 0xE400000000000000);
          v86 = [v78 0x277DAFEF3];
          v87 = sub_20CE93100();

          v88 = MEMORY[0x20F316CF0](v87, v68);
          v90 = v89;

          MEMORY[0x20F316CC0](v88, v90);

          sub_20CE932E0();
          v91 = HKSensitiveLogItem();
          swift_unknownObjectRelease();
          sub_20CE93220();
          swift_unknownObjectRelease();
          v92 = __swift_project_boxed_opaque_existential_0(v218, v218[3]);
          MEMORY[0x28223BE20](v92);
          (*(v94 + 16))(&v188 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
          v95 = sub_20CE930D0();
          v97 = v96;
          v73 = v213;
          (*(v213 + 8))(v76, v77);
          __swift_destroy_boxed_opaque_existential_0(v218);
          v98 = sub_20CE7C260(v95, v97, &v219);

          *(v81 + 14) = v98;
          _os_log_impl(&dword_20CE71000, v79, v206, "[%{public}s] Snapshot: No projections found that contains %s", v81, 0x16u);
          v99 = v207;
          swift_arrayDestroy();
          MEMORY[0x20F317370](v99, -1, -1);
          v100 = v81;
          v44 = v214;
          MEMORY[0x20F317370](v100, -1, -1);
        }

        else
        {

          (*(v34 + 8))(v76, v77);
        }

        v43 = v217;
        v72 = v215;
      }

      v161 = *(v44 + 16);
      v162 = v210;
      v161(v202, v210, v43);
      v208 = *(v73 + 16);
      (v208)(v203, v71, v216);
      v163 = v209;
      v164 = v204;
      sub_20CE74F8C(v163, v204);
      v165 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
      v166 = 1;
      (*(*(v165 - 8) + 56))(v164, 0, 1, v165);
      if (v72)
      {
        v167 = v191;
        v161(v191, v162, v43);
        v168 = v72;
        sub_20CE90E0C(v72, v167, v218);
        v169 = v197;
        sub_20CE92FE0();
        v166 = 0;
      }

      else
      {
        v169 = v197;
      }

      v170 = sub_20CE93010();
      v171 = *(v170 - 8);
      (*(v171 + 56))(v169, v166, 1, v170);
      v172 = [v205 lastMenstrualFlowDayIndex];
      v148 = v172 == 0;
      if (v172)
      {
        v173 = v172;
        v144 = [v172 integerValue];
      }

      else
      {
        v144 = 0;
      }

      v174 = v195;
      v161(v195, v202, v217);
      v175 = v193;
      (v208)(v174 + v193[5], v203, v216);
      v122 = v175;
      sub_20CE8CF98(v204, v174 + v175[6], sub_20CE831C8);
      *(v174 + v175[7]) = v215;
      v176 = v197;
      v177 = v192;
      sub_20CE8CF98(v197, v192, sub_20CE8CAC4);
      v178 = *(v171 + 48);
      v179 = v178(v177, 1, v170);
      if (v179 == 1)
      {
        sub_20CE8CB5C(v177, sub_20CE8CAC4);
        v180 = 0;
      }

      else
      {
        sub_20CE92FF0();
        v180 = v181;
        (*(v171 + 8))(v177, v170);
      }

      v182 = &v195[v122[8]];
      *v182 = v180;
      v182[4] = v179 == 1;
      v183 = v189;
      sub_20CE8CF98(v176, v189, sub_20CE8CAC4);
      if (v178(v183, 1, v170) == 1)
      {
        sub_20CE8CB5C(v176, sub_20CE8CAC4);
        sub_20CE8CB5C(v204, sub_20CE831C8);
        (*(v213 + 8))(v203, v216);
        (*(v214 + 8))(v202, v217);
        sub_20CE8CB5C(v183, sub_20CE8CAC4);
        v145 = 1;
        v146 = 0;
      }

      else
      {
        sub_20CE93000();
        v146 = v184;
        sub_20CE8CB5C(v176, sub_20CE8CAC4);
        sub_20CE8CB5C(v204, sub_20CE831C8);
        (*(v213 + 8))(v203, v216);
        (*(v214 + 8))(v202, v217);
        (*(v171 + 8))(v183, v170);
        v145 = 0;
      }

      v150 = v196;
      v151 = v205;
      v147 = v195;
    }

    else
    {
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v101 = sub_20CE92970();
      __swift_project_value_buffer(v101, qword_2811123B8);
      v102 = sub_20CE92950();
      v103 = sub_20CE931A0();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v218[0] = v105;
        *v104 = 136446210;
        v106 = sub_20CE93320();
        v108 = sub_20CE7C260(v106, v107, v218);

        *(v104 + 4) = v108;
        _os_log_impl(&dword_20CE71000, v102, v103, "[%{public}s] Snapshot: Projections unavailable.", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v105);
        v44 = v214;
        MEMORY[0x20F317370](v105, -1, -1);
        MEMORY[0x20F317370](v104, -1, -1);
      }

      v109 = v209;
      v110 = v200;
      v209 = *(v44 + 16);
      v111 = v206;
      v112 = v217;
      (v209)(v206, v210, v217);
      v210 = *(v34 + 16);
      v113 = v216;
      (v210)(v215, v208, v216);
      v114 = v109;
      v115 = v207;
      sub_20CE74F8C(v114, v207);
      v116 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
      (*(*(v116 - 8) + 56))(v115, 0, 1, v116);
      v117 = sub_20CE93010();
      v118 = *(v117 - 8);
      (*(v118 + 56))(v110, 1, 1, v117);
      v119 = v198;
      (v209)(v198, v111, v112);
      v120 = v193;
      (v210)(&v119[v193[5]], v215, v113);
      v121 = v115;
      v122 = v120;
      sub_20CE8CF98(v121, &v119[v120[6]], sub_20CE831C8);
      *&v119[v120[7]] = 0;
      v123 = v199;
      sub_20CE8CF98(v110, v199, sub_20CE8CAC4);
      v124 = *(v118 + 48);
      v125 = v124(v123, 1, v117);
      if (v125 == 1)
      {
        sub_20CE8CB5C(v123, sub_20CE8CAC4);
        v126 = 0;
      }

      else
      {
        sub_20CE92FF0();
        v126 = v139;
        (*(v118 + 8))(v123, v117);
      }

      v140 = &v119[v122[8]];
      *v140 = v126;
      v140[4] = v125 == 1;
      v141 = v201;
      sub_20CE8CF98(v110, v201, sub_20CE8CAC4);
      v142 = v124(v141, 1, v117);
      v143 = v206;
      if (v142 == 1)
      {
        sub_20CE8CB5C(v110, sub_20CE8CAC4);
        sub_20CE8CB5C(v207, sub_20CE831C8);
        (*(v213 + 8))(v215, v216);
        (*(v214 + 8))(v143, v217);
        sub_20CE8CB5C(v141, sub_20CE8CAC4);
        v144 = 0;
        v145 = 1;
        v146 = 0;
        v147 = v119;
        v148 = 1;
      }

      else
      {
        sub_20CE93000();
        v146 = v149;
        sub_20CE8CB5C(v110, sub_20CE8CAC4);
        sub_20CE8CB5C(v207, sub_20CE831C8);
        (*(v213 + 8))(v215, v216);
        (*(v214 + 8))(v143, v217);
        (*(v118 + 8))(v141, v117);
        v145 = 0;
        v144 = 0;
        v148 = 1;
        v147 = v119;
      }

      v150 = v196;
      v151 = v205;
    }

    v185 = v147 + v122[9];
    *v185 = v146;
    *(v185 + 8) = v145;
    v186 = v147 + v122[10];
    *v186 = v144;
    *(v186 + 8) = v148;
    sub_20CE8CBBC(v147, v150);
    v212(v150);
  }

  else
  {
    v207 = (&v188 - v61);
    v215 = *(v44 + 16);
    (v215)(v52, v210, v43);
    v206 = *(v34 + 16);
    (v206)(v42, v208, v33);
    sub_20CE74F8C(v209, v32);
    v127 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
    (*(*(v127 - 8) + 56))(v32, 0, 1, v127);
    v128 = sub_20CE93010();
    v129 = v32;
    v130 = *(v128 - 8);
    (*(v130 + 56))(v205, 1, 1, v128);
    v209 = v52;
    (v215)(v60, v52, v217);
    v131 = &v60[v53[5]];
    v210 = v42;
    (v206)(v131, v42, v33);
    v132 = &v60[v53[6]];
    v215 = v129;
    sub_20CE8CF98(v129, v132, sub_20CE831C8);
    v133 = v53;
    *&v60[v53[7]] = 0;
    v134 = v205;
    v135 = v195;
    sub_20CE8CF98(v205, v195, sub_20CE8CAC4);
    v136 = *(v130 + 48);
    v137 = v136(v135, 1, v128);
    v208 = v130;
    if (v137 == 1)
    {
      sub_20CE8CB5C(v135, sub_20CE8CAC4);
      v138 = 0;
    }

    else
    {
      sub_20CE92FF0();
      v138 = v152;
      (*(v130 + 8))(v135, v128);
    }

    v153 = v196;
    v154 = &v60[v133[8]];
    *v154 = v138;
    v154[4] = v137 == 1;
    sub_20CE8CF98(v134, v153, sub_20CE8CAC4);
    v155 = v136(v153, 1, v128);
    v156 = v210;
    if (v155 == 1)
    {
      sub_20CE8CB5C(v134, sub_20CE8CAC4);
      sub_20CE8CB5C(v215, sub_20CE831C8);
      (*(v213 + 8))(v156, v216);
      (*(v214 + 8))(v209, v217);
      sub_20CE8CB5C(v153, sub_20CE8CAC4);
      v157 = 0;
    }

    else
    {
      sub_20CE93000();
      v157 = v158;
      sub_20CE8CB5C(v134, sub_20CE8CAC4);
      sub_20CE8CB5C(v215, sub_20CE831C8);
      (*(v213 + 8))(v156, v216);
      (*(v214 + 8))(v209, v217);
      (*(v208 + 8))(v153, v128);
    }

    v159 = &v60[v133[9]];
    *v159 = v157;
    v159[8] = v155 == 1;
    v160 = &v60[v133[10]];
    *v160 = 0;
    v160[8] = 1;
    v150 = v207;
    sub_20CE8CBBC(v60, v207);
    v212(v150);
  }

  return sub_20CE8CB5C(v150, type metadata accessor for MenstrualCyclesWidgetEntry);
}

uint64_t sub_20CE8B670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = *v2;
  v6 = sub_20CE928C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  if (qword_281112000 != -1)
  {
    swift_once();
  }

  v13 = sub_20CE928F0();
  __swift_project_value_buffer(v13, qword_2811123D0);
  sub_20CE928B0();
  v14 = sub_20CE928D0();
  v15 = sub_20CE931D0();
  if (sub_20CE93200())
  {
    v16 = swift_slowAlloc();
    v27 = a2;
    v17 = a1;
    v18 = v16;
    *v16 = 0;
    v19 = sub_20CE928A0();
    _os_signpost_emit_with_name_impl(&dword_20CE71000, v14, v15, v19, "getCycleAnalysis", "", v18, 2u);
    v20 = v18;
    a1 = v17;
    a2 = v27;
    MEMORY[0x20F317370](v20, -1, -1);
  }

  (*(v7 + 16))(v10, v12, v6);
  sub_20CE92930();
  swift_allocObject();
  v21 = sub_20CE92920();
  (*(v7 + 8))(v12, v6);
  v22 = v3[3];
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = a1;
  v24 = v28;
  v23[4] = a2;
  v23[5] = v24;
  aBlock[4] = sub_20CE8C834;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CE8D044;
  aBlock[3] = &block_descriptor;
  v25 = _Block_copy(aBlock);

  [v22 fetchCurrentAnalysisWithCompletion_];
  _Block_release(v25);
}

uint64_t sub_20CE8B984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = *v2;
  v6 = sub_20CE928C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  if (qword_281112000 != -1)
  {
    swift_once();
  }

  v13 = sub_20CE928F0();
  __swift_project_value_buffer(v13, qword_2811123D0);
  sub_20CE928B0();
  v14 = sub_20CE928D0();
  v15 = sub_20CE931D0();
  if (sub_20CE93200())
  {
    v16 = swift_slowAlloc();
    v27 = a2;
    v17 = a1;
    v18 = v16;
    *v16 = 0;
    v19 = sub_20CE928A0();
    _os_signpost_emit_with_name_impl(&dword_20CE71000, v14, v15, v19, "getPregnancyModel", "", v18, 2u);
    v20 = v18;
    a1 = v17;
    a2 = v27;
    MEMORY[0x20F317370](v20, -1, -1);
  }

  (*(v7 + 16))(v10, v12, v6);
  sub_20CE92930();
  swift_allocObject();
  v21 = sub_20CE92920();
  (*(v7 + 8))(v12, v6);
  v22 = v3[3];
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = a1;
  v24 = v28;
  v23[4] = a2;
  v23[5] = v24;
  aBlock[4] = sub_20CE8C8D0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CE8D044;
  aBlock[3] = &block_descriptor_15;
  v25 = _Block_copy(aBlock);

  [v22 fetchCurrentPregnancyModelWithCompletion_];
  _Block_release(v25);
}

void sub_20CE8BC98(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, const char *a7, const char *a8, const char *a9)
{
  v70 = a7;
  v71 = a8;
  v75 = a5;
  v72 = a3;
  v12 = sub_20CE92900();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - v17;
  v19 = sub_20CE928C0();
  v73 = *(v19 - 8);
  v74 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v67 - v23;
  if (a2)
  {
    v69 = v18;
    v25 = a2;
    if (qword_281111B08 != -1)
    {
      swift_once();
    }

    v26 = sub_20CE92970();
    __swift_project_value_buffer(v26, qword_2811123B8);
    v27 = a2;
    v28 = sub_20CE92950();
    v29 = sub_20CE93180();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v76 = v67;
      *v30 = 136446466;
      v31 = sub_20CE93320();
      v33 = sub_20CE7C260(v31, v32, &v76);
      v68 = v12;
      v34 = v33;

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v37 + 16))(&v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      v38 = sub_20CE930D0();
      v40 = sub_20CE7C260(v38, v39, &v76);
      v12 = v68;

      *(v30 + 14) = v40;
      _os_log_impl(&dword_20CE71000, v28, v29, v70, v30, 0x16u);
      v41 = v67;
      swift_arrayDestroy();
      MEMORY[0x20F317370](v41, -1, -1);
      MEMORY[0x20F317370](v30, -1, -1);
    }

    if (qword_281112000 != -1)
    {
      swift_once();
    }

    v42 = sub_20CE928F0();
    __swift_project_value_buffer(v42, qword_2811123D0);
    v43 = sub_20CE928D0();
    sub_20CE92910();
    v44 = sub_20CE931C0();
    if (sub_20CE93200())
    {

      v45 = v69;
      sub_20CE92940();

      if ((*(v13 + 11))(v45, v12) == *MEMORY[0x277D85B00])
      {
        v46 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 1))(v45, v12);
        v46 = "";
      }

      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = sub_20CE928A0();
      _os_signpost_emit_with_name_impl(&dword_20CE71000, v43, v44, v64, v71, v46, v63, 2u);
      MEMORY[0x20F317370](v63, -1, -1);
    }

    (*(v73 + 8))(v24, v74);
    a4(0);
  }

  else
  {
    if (a1)
    {
      v70 = v13;
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v47 = sub_20CE92970();
      __swift_project_value_buffer(v47, qword_2811123B8);
      v48 = sub_20CE92950();
      v49 = sub_20CE931A0();
      if (os_log_type_enabled(v48, v49))
      {
        v69 = a9;
        v50 = swift_slowAlloc();
        v68 = v12;
        v51 = v50;
        v52 = swift_slowAlloc();
        v76 = v52;
        *v51 = 136446210;
        v53 = sub_20CE93320();
        v55 = sub_20CE7C260(v53, v54, &v76);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_20CE71000, v48, v49, v69, v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x20F317370](v52, -1, -1);
        v56 = v51;
        v12 = v68;
        MEMORY[0x20F317370](v56, -1, -1);
      }

      v13 = v70;
    }

    v57 = v13;
    v58 = v12;
    if (qword_281112000 != -1)
    {
      swift_once();
    }

    v59 = sub_20CE928F0();
    __swift_project_value_buffer(v59, qword_2811123D0);
    v60 = sub_20CE928D0();
    sub_20CE92910();
    v61 = sub_20CE931C0();
    if (sub_20CE93200())
    {

      sub_20CE92940();

      if ((*(v57 + 11))(v16, v58) == *MEMORY[0x277D85B00])
      {
        v62 = "[Error] Interval already ended";
      }

      else
      {
        (*(v57 + 1))(v16, v58);
        v62 = "";
      }

      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = sub_20CE928A0();
      _os_signpost_emit_with_name_impl(&dword_20CE71000, v60, v61, v66, v71, v62, v65, 2u);
      MEMORY[0x20F317370](v65, -1, -1);
    }

    (*(v73 + 8))(v22, v74);
    a4(a1);
  }
}

void sub_20CE8C460(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t MenstrualCyclesWidgetTimelineGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_currentCalendar;
  v2 = sub_20CE92810();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_gregorianCalendar, v2);
  return v0;
}

uint64_t MenstrualCyclesWidgetTimelineGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_currentCalendar;
  v2 = sub_20CE92810();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_gregorianCalendar, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_20CE8C668(void *a1)
{
  v3 = *(sub_20CE92720() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + 16 + v8) & ~v4;
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = *(v1 + ((v6 + v9) & 0xFFFFFFFFFFFFFFF8));

  return sub_20CE840B8(a1, (v1 + v5), v10, v11, v12, (v1 + v9), v13);
}

uint64_t sub_20CE8C72C(char *a1)
{
  v3 = *(sub_20CE92720() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_20CE92EE0() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = *(v1 + 4);
  v11 = *&v1[(*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8];

  return sub_20CE89124(a1, v8, v9, v10, &v1[v4], &v1[v7], v11);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t type metadata accessor for MenstrualCyclesWidgetTimelineGenerator(uint64_t a1)
{
  result = qword_281111DB0;
  if (!qword_281111DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CE8C968(uint64_t a1)
{
  result = sub_20CE92810();
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

void sub_20CE8CAF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE8CB5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CE8CBBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE8CC20(uint64_t a1)
{
  v3 = *(sub_20CE92720() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_20CE92EE0() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_20CE89F50(a1, v9, v10, (v1 + v4), v1 + v7, v11, v12);
}

unint64_t sub_20CE8CD30()
{
  result = qword_281111FC8;
  if (!qword_281111FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281111FC8);
  }

  return result;
}

unint64_t sub_20CE8CD7C()
{
  result = qword_27C8181B8;
  if (!qword_27C8181B8)
  {
    sub_20CE92EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8181B8);
  }

  return result;
}

uint64_t sub_20CE8CDD4(uint64_t a1)
{
  v3 = *(sub_20CE92720() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(sub_20CE92EE0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_20CE86708(a1, v1 + v5, v1 + v8, *(v1 + v9), *(v1 + v10), *(v1 + v10 + 8), *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), (v1 + ((v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4)), *(v1 + ((v6 + ((v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4) + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_20CE8CF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE8D048@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CE92B20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3BA0];
  sub_20CE8E598(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_20CE8E5FC(v2, &v15 - v10, &qword_281111AF8, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_20CE92F30();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_20CE93190();
    v14 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20CE8D26C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE92B20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE3AF8];
  sub_20CE8E598(0, &qword_281111B00, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for MenstrualCyclesWidgetCircularView(0);
  sub_20CE8E5FC(v1 + *(v11 + 20), v10, &qword_281111B00, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_20CE92F10();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_20CE93190();
    v14 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t MenstrualCyclesWidgetCircularView.body.getter@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_20CE92EB0();
  a2[1] = v4;
  sub_20CE8DDC0(0);
  return sub_20CE8D4D8(v2, a2 + *(v5 + 44));
}

uint64_t sub_20CE8D4D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v62 = a1;
  v78 = a2;
  v2 = sub_20CE92B60();
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v75 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20CE92740();
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20CE93090();
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE92E40();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20CE92F10();
  v11 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_20CE92F30();
  v14 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8E04C(0);
  v63 = v17;
  v61 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8DF30(0);
  v66 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8DEC8(0);
  v67 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v70 = &v59 - v27;
  v28 = sub_20CE92F00();
  v71 = *(v28 - 8);
  v72 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v69 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v79 = &v59 - v31;
  sub_20CE93160();
  v68 = sub_20CE93150();
  sub_20CE93120();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE92EF0();
  sub_20CE8D048(v16);
  sub_20CE8D26C(v13);
  (*(v11 + 8))(v13, v60);
  (*(v14 + 8))(v16, v59);
  if (qword_281111808 != -1)
  {
    swift_once();
  }

  v32 = qword_2811123B0;
  sub_20CE92E60();
  v34 = v64;
  v33 = v65;
  (*(v64 + 104))(v10, *MEMORY[0x277CE0FE0], v65);
  v35 = sub_20CE92E50();

  (*(v34 + 8))(v10, v33);
  v80 = v35;
  v81 = 0;
  v82 = 1;
  sub_20CE8E0D0();
  v37 = v36;
  v38 = sub_20CE7EEF4();
  sub_20CE92D90();

  v80 = v37;
  v81 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v63;
  sub_20CE92D40();
  (*(v61 + 8))(v19, v39);
  v40 = sub_20CE92C60();
  sub_20CE92980();
  v41 = &v22[*(v66 + 36)];
  *v41 = v40;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  sub_20CE930A0();
  if (qword_281111800 != -1)
  {
    swift_once();
  }

  v46 = qword_2811123F0;
  sub_20CE92730();
  v80 = sub_20CE930C0();
  v81 = v47;
  sub_20CE8E450();
  sub_20CE835D8();
  sub_20CE92DB0();

  sub_20CE8E538(v22, sub_20CE8DF30);
  v48 = v75;
  sub_20CE92B50();
  v49 = v70;
  sub_20CE929D0();
  (*(v76 + 8))(v48, v77);
  sub_20CE8E538(v26, sub_20CE8DEC8);
  v51 = v71;
  v50 = v72;
  v52 = *(v71 + 16);
  v53 = v69;
  v54 = v79;
  v52(v69, v79, v72);
  sub_20CE73FCC(v49, v26);
  v55 = v78;
  v52(v78, v53, v50);
  sub_20CE8DE58(0);
  sub_20CE73FCC(v26, &v55[*(v56 + 48)]);
  sub_20CE8E538(v49, sub_20CE8DEC8);
  v57 = *(v51 + 8);
  v57(v54, v50);
  sub_20CE8E538(v26, sub_20CE8DEC8);
  v57(v53, v50);
}

void sub_20CE8DDC0(uint64_t a1)
{
  if (!qword_27C8181F0)
  {
    sub_20CE8E598(255, &qword_27C8181F8, sub_20CE8DE58, MEMORY[0x277CE14B8]);
    v1 = sub_20CE929B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8181F0);
    }
  }
}

void sub_20CE8DE58(uint64_t a1)
{
  if (!qword_27C818200)
  {
    sub_20CE92F00();
    sub_20CE8DEC8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C818200);
    }
  }
}

void sub_20CE8DEC8(uint64_t a1)
{
  if (!qword_27C818208)
  {
    sub_20CE8DF30(255);
    sub_20CE92C40();
    v1 = sub_20CE929E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818208);
    }
  }
}

void sub_20CE8DF30(uint64_t a1)
{
  if (!qword_27C818210)
  {
    sub_20CE8DF90(255);
    v1 = sub_20CE929E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818210);
    }
  }
}

void sub_20CE8DF90(uint64_t a1)
{
  if (!qword_27C818218)
  {
    sub_20CE8E04C(255);
    sub_20CE8E0D0();
    sub_20CE7EEF4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27C818218);
    }
  }
}

void sub_20CE8E04C(uint64_t a1)
{
  if (!qword_27C818220)
  {
    sub_20CE8E0D0();
    sub_20CE7EEF4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27C818220);
    }
  }
}

void sub_20CE8E0D0()
{
  if (!qword_281111A58)
  {
    v0 = sub_20CE929E0();
    if (!v1)
    {
      atomic_store(v0, &qword_281111A58);
    }
  }
}

uint64_t sub_20CE8E144@<X0>(char *a2@<X8>)
{
  *a2 = sub_20CE92EB0();
  *(a2 + 1) = v4;
  sub_20CE8DDC0(0);
  return sub_20CE8D4D8(v2, &a2[*(v5 + 44)]);
}

uint64_t type metadata accessor for MenstrualCyclesWidgetCircularView(uint64_t a1)
{
  result = qword_281111F68;
  if (!qword_281111F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CE8E1F8(uint64_t a1)
{
  sub_20CE8E598(319, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_20CE8E598(319, &qword_281111AE0, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20CE8E2DC()
{
  result = qword_27C818228;
  if (!qword_27C818228)
  {
    sub_20CE8E334(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818228);
  }

  return result;
}

void sub_20CE8E334(uint64_t a1)
{
  if (!qword_27C818230)
  {
    sub_20CE8E598(255, &qword_27C8181F8, sub_20CE8DE58, MEMORY[0x277CE14B8]);
    sub_20CE8E3C8();
    v1 = sub_20CE92E80();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818230);
    }
  }
}

unint64_t sub_20CE8E3C8()
{
  result = qword_27C818238;
  if (!qword_27C818238)
  {
    sub_20CE8E598(255, &qword_27C8181F8, sub_20CE8DE58, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818238);
  }

  return result;
}

unint64_t sub_20CE8E450()
{
  result = qword_27C818240;
  if (!qword_27C818240)
  {
    sub_20CE8DF30(255);
    sub_20CE8E04C(255);
    sub_20CE8E0D0();
    sub_20CE7EEF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818240);
  }

  return result;
}

uint64_t sub_20CE8E538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20CE8E598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE8E5FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CE8E598(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CE8E6A8@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v73 = sub_20CE92F30();
  v81 = *(v73 - 8);
  v1 = MEMORY[0x28223BE20](v73);
  v77 = v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v74 = v61 - v3;
  v4 = sub_20CE92740();
  MEMORY[0x28223BE20](v4 - 8);
  v71 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20CE93090();
  MEMORY[0x28223BE20](v6 - 8);
  v64 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE92750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for MenstrualCyclesWidgetTimelineProvider(0);
  MEMORY[0x28223BE20](v63);
  v13 = (v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CE8F3F0(0);
  v67 = v14;
  v65 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v62 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8F484(0);
  v70 = v16;
  v68 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v66 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8F554(0);
  v80 = v18;
  v72 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v69 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8F664(0);
  v75 = *(v20 - 8);
  v76 = v20;
  MEMORY[0x28223BE20](v20);
  v79 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[1] = sub_20CE930B0();
  v61[0] = v22;
  v23 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  type metadata accessor for MenstrualCyclesWidgetTimelineGenerator(0);
  v24 = swift_allocObject();
  sub_20CE927F0();
  v25 = *MEMORY[0x277CC9830];
  v26 = *(v9 + 104);
  v26(v11, v25, v8);
  sub_20CE92760();
  v27 = *(v9 + 8);
  v27(v11, v8);
  *(v24 + 16) = v23;
  *(v24 + 24) = [objc_allocWithZone(MEMORY[0x277D11A10]) initWithHealthStore_];
  *v13 = v24;
  v26(v11, v25, v8);
  sub_20CE92760();
  v28 = v62;
  v27(v11, v8);
  type metadata accessor for MenstrualCyclesWidgetEntryView(0);
  sub_20CE8F7AC(qword_281111BA0, type metadata accessor for MenstrualCyclesWidgetEntryView, &protocol conformance descriptor for MenstrualCyclesWidgetEntryView);
  sub_20CE8F7AC(qword_281111E58, type metadata accessor for MenstrualCyclesWidgetTimelineProvider, &protocol conformance descriptor for MenstrualCyclesWidgetTimelineProvider);
  sub_20CE92F90();
  sub_20CE930A0();
  if (qword_281111800 != -1)
  {
    swift_once();
  }

  v29 = qword_2811123F0;
  sub_20CE92730();
  v30 = v29;
  v82 = sub_20CE930C0();
  v83 = v31;
  v32 = sub_20CE8F7AC(&qword_281111850, sub_20CE8F3F0, MEMORY[0x277CE3D88]);
  v33 = sub_20CE835D8();
  v34 = v66;
  v35 = v67;
  v36 = MEMORY[0x277D837D0];
  sub_20CE92BB0();

  (*(v65 + 8))(v28, v35);
  sub_20CE930A0();
  sub_20CE92730();
  v86 = sub_20CE930C0();
  v87 = v37;
  v82 = v35;
  v83 = v36;
  v84 = v32;
  v85 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v69;
  v39 = v70;
  v65 = OpaqueTypeConformance2;
  v71 = v33;
  sub_20CE92B80();

  (*(v68 + 8))(v34, v39);
  v41 = v81;
  v42 = *(v81 + 104);
  v43 = v74;
  LODWORD(v68) = *MEMORY[0x277CE3B68];
  v44 = v73;
  v67 = v42;
  v42(v74);
  v45 = sub_20CE8F828(0, 1, 1, MEMORY[0x277D84F90], &qword_2811117E8, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BA0]);
  v47 = v45[2];
  v46 = v45[3];
  if (v47 >= v46 >> 1)
  {
    v45 = sub_20CE8F828((v46 > 1), v47 + 1, 1, v45, &qword_2811117E8, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BA0]);
  }

  v45[2] = v47 + 1;
  v49 = *(v41 + 32);
  v48 = v41 + 32;
  v70 = (*(v48 + 48) + 32) & ~*(v48 + 48);
  v50 = v48;
  v51 = *(v48 + 40);
  v81 = v50;
  v74 = v49;
  (v49)(v45 + v70 + v51 * v47, v43, v44);
  v82 = v39;
  v83 = MEMORY[0x277D837D0];
  v84 = v65;
  v85 = v71;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v80;
  sub_20CE92B90();

  (*(v72 + 8))(v40, v53);
  sub_20CE8FA80(0, &qword_2811117E0, MEMORY[0x277CE3BD8], MEMORY[0x277D84560]);
  sub_20CE92F50();
  *(swift_allocObject() + 16) = xmmword_20CE93A50;
  sub_20CE92F40();
  v54 = v77;
  v67(v77, v68, v44);
  v55 = sub_20CE8F828(0, 1, 1, MEMORY[0x277D84F90], &qword_2811117E8, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BA0]);
  v57 = v55[2];
  v56 = v55[3];
  if (v57 >= v56 >> 1)
  {
    v55 = sub_20CE8F828((v56 > 1), v57 + 1, 1, v55, &qword_2811117E8, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BA0]);
  }

  v55[2] = v57 + 1;
  (v74)(v55 + v70 + v57 * v51, v54, v44);
  v82 = v80;
  v83 = v52;
  swift_getOpaqueTypeConformance2();
  v58 = v79;
  v59 = v76;
  sub_20CE92BA0();

  return (*(v75 + 8))(v58, v59);
}

uint64_t sub_20CE8F2D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_20CE93160();
  sub_20CE93150();
  sub_20CE93120();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for MenstrualCyclesWidgetEntryView(0);
  sub_20CE8FA1C(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_20CE8FA80(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
}

void sub_20CE8F3F0(uint64_t a1)
{
  if (!qword_281111848)
  {
    type metadata accessor for MenstrualCyclesWidgetEntryView(255);
    sub_20CE8F7AC(qword_281111BA0, type metadata accessor for MenstrualCyclesWidgetEntryView, &protocol conformance descriptor for MenstrualCyclesWidgetEntryView);
    v1 = sub_20CE92FA0();
    if (!v2)
    {
      atomic_store(v1, &qword_281111848);
    }
  }
}

void sub_20CE8F484(uint64_t a1)
{
  if (!qword_281111FE0)
  {
    sub_20CE8F3F0(255);
    sub_20CE8F7AC(&qword_281111850, sub_20CE8F3F0, MEMORY[0x277CE3D88]);
    sub_20CE835D8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281111FE0);
    }
  }
}

void sub_20CE8F554(uint64_t a1)
{
  if (!qword_281111FF0)
  {
    sub_20CE8F484(255);
    sub_20CE8F3F0(255);
    sub_20CE8F7AC(&qword_281111850, sub_20CE8F3F0, MEMORY[0x277CE3D88]);
    sub_20CE835D8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281111FF0);
    }
  }
}

void sub_20CE8F664(uint64_t a1)
{
  if (!qword_281111FE8)
  {
    sub_20CE8F554(255);
    sub_20CE8F484(255);
    sub_20CE8F3F0(255);
    sub_20CE8F7AC(&qword_281111850, sub_20CE8F3F0, MEMORY[0x277CE3D88]);
    sub_20CE835D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281111FE8);
    }
  }
}

uint64_t sub_20CE8F7AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_20CE8F828(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_20CE8FA80(0, a5, a6, MEMORY[0x277D84560]);
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

uint64_t sub_20CE8FA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20CE8FA80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t MenstrualCyclesWidgetEntryView.init(entry:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_20CE90B08(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for MenstrualCyclesWidgetEntryView(0) + 20);

  return sub_20CE8CBBC(a1, v4);
}

uint64_t sub_20CE8FB84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CE92B20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3BA0];
  v9 = MEMORY[0x277CDF458];
  sub_20CE90B08(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  sub_20CE90D9C(v2, &v16 - v11, &qword_281111AF8, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20CE92F30();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_20CE93190();
    v15 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t MenstrualCyclesWidgetEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32[4] = a1;
  v2 = type metadata accessor for MenstrualCyclesWidgetRectangularView(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CE90CD0(0, &qword_2811119A0, MEMORY[0x277CE0330]);
  v32[3] = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v32 - v6;
  sub_20CE90600(0, &qword_2811119B0, MEMORY[0x277CE0330]);
  v32[1] = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v32 - v9;
  sub_20CE90600(0, &qword_281111990, MEMORY[0x277CE0338]);
  v32[2] = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v32 - v12;
  v33 = type metadata accessor for MenstrualCyclesWidgetCircularView(0);
  MEMORY[0x28223BE20](v33);
  v15 = (v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_20CE92F30();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8FB84(v19);
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 != *MEMORY[0x277CE3B68])
  {
    v32[0] = v2;
    v28 = v33;
    if (v20 == *MEMORY[0x277CE3B78] || v20 == *MEMORY[0x277CE3B90])
    {
      *v15 = swift_getKeyPath();
      v30 = MEMORY[0x277CDF458];
      sub_20CE90B08(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v31 = *(v28 + 20);
      *(v15 + v31) = swift_getKeyPath();
      sub_20CE90B08(0, &qword_281111B00, MEMORY[0x277CE3AF8], v30);
      swift_storeEnumTagMultiPayload();
      v26 = type metadata accessor for MenstrualCyclesWidgetCircularView;
      sub_20CE90918(v15, v10, type metadata accessor for MenstrualCyclesWidgetCircularView);
      swift_storeEnumTagMultiPayload();
      sub_20CE90D54(&qword_281111FA0, type metadata accessor for MenstrualCyclesWidgetCircularView, &protocol conformance descriptor for MenstrualCyclesWidgetCircularView);
      sub_20CE90D54(&qword_281111F00, type metadata accessor for MenstrualCyclesWidgetRectangularView, &protocol conformance descriptor for MenstrualCyclesWidgetRectangularView);
      sub_20CE92BD0();
      sub_20CE90980(v13, v7);
      swift_storeEnumTagMultiPayload();
      sub_20CE90670();
      sub_20CE92BD0();
      sub_20CE90A00(v13);
      v27 = v15;
      return sub_20CE90A78(v27, v26);
    }

    v2 = v32[0];
    if (v20 != *MEMORY[0x277CE3B98])
    {
      swift_storeEnumTagMultiPayload();
      sub_20CE90670();
      sub_20CE92BD0();
      return (*(v17 + 8))(v19, v16);
    }
  }

  v21 = v1 + *(type metadata accessor for MenstrualCyclesWidgetEntryView(0) + 20);
  v22 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  sub_20CE90D9C(v21 + *(v22 + 24), v4 + v2[9], &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State, MEMORY[0x277D83D88]);
  *v4 = swift_getKeyPath();
  v23 = MEMORY[0x277CDF458];
  sub_20CE90B08(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *(v4 + v2[5]) = swift_getKeyPath();
  sub_20CE90B08(0, &qword_281111B00, MEMORY[0x277CE3AF8], v23);
  swift_storeEnumTagMultiPayload();
  *(v4 + v2[6]) = swift_getKeyPath();
  sub_20CE90B08(0, &qword_281111AF0, MEMORY[0x277CDF3E0], v23);
  swift_storeEnumTagMultiPayload();
  *(v4 + v2[7]) = swift_getKeyPath();
  sub_20CE90B08(0, &qword_281111AE8, MEMORY[0x277CDFA28], v23);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v25 = v4 + v2[8];
  *v25 = KeyPath;
  v25[8] = 0;
  v26 = type metadata accessor for MenstrualCyclesWidgetRectangularView;
  sub_20CE90918(v4, v10, type metadata accessor for MenstrualCyclesWidgetRectangularView);
  swift_storeEnumTagMultiPayload();
  sub_20CE90D54(&qword_281111FA0, type metadata accessor for MenstrualCyclesWidgetCircularView, &protocol conformance descriptor for MenstrualCyclesWidgetCircularView);
  sub_20CE90D54(&qword_281111F00, type metadata accessor for MenstrualCyclesWidgetRectangularView, &protocol conformance descriptor for MenstrualCyclesWidgetRectangularView);
  sub_20CE92BD0();
  sub_20CE90980(v13, v7);
  swift_storeEnumTagMultiPayload();
  sub_20CE90670();
  sub_20CE92BD0();
  sub_20CE90A00(v13);
  v27 = v4;
  return sub_20CE90A78(v27, v26);
}

uint64_t type metadata accessor for MenstrualCyclesWidgetEntryView(uint64_t a1)
{
  result = qword_281111B90;
  if (!qword_281111B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CE90600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MenstrualCyclesWidgetCircularView(255);
    v7 = type metadata accessor for MenstrualCyclesWidgetRectangularView(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_20CE90670()
{
  result = qword_281111998;
  if (!qword_281111998)
  {
    sub_20CE90600(255, &qword_281111990, MEMORY[0x277CE0338]);
    sub_20CE90D54(&qword_281111FA0, type metadata accessor for MenstrualCyclesWidgetCircularView, &protocol conformance descriptor for MenstrualCyclesWidgetCircularView);
    sub_20CE90D54(&qword_281111F00, type metadata accessor for MenstrualCyclesWidgetRectangularView, &protocol conformance descriptor for MenstrualCyclesWidgetRectangularView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111998);
  }

  return result;
}

uint64_t sub_20CE9076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_20CE9083C(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isAppleWatch];

    if (v4)
    {
      sub_20CE92AC0();
      sub_20CE90D54(&qword_27C818190, MEMORY[0x277CE3940], MEMORY[0x277CE3938]);
      sub_20CE92B30();
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CE90918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE90980(uint64_t a1, uint64_t a2)
{
  sub_20CE90600(0, &qword_281111990, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE90A00(uint64_t a1)
{
  sub_20CE90600(0, &qword_281111990, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CE90A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20CE90B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CE90B80(uint64_t a1)
{
  sub_20CE90B08(319, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MenstrualCyclesWidgetEntry(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20CE90C34()
{
  result = qword_281111968;
  if (!qword_281111968)
  {
    sub_20CE90CD0(255, &qword_281111960, MEMORY[0x277CE0338]);
    sub_20CE90670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111968);
  }

  return result;
}

void sub_20CE90CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_20CE90600(255, &qword_281111990, MEMORY[0x277CE0338]);
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_20CE90D54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CE90D9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_20CE90B08(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_20CE90E0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v26 = a3;
  v5 = sub_20CE92750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE92810();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_20CE92720();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20CE92EE0();
  v15 = MEMORY[0x28223BE20](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = v16;
    v24 = v15;
    v19 = *(v11 + 16);
    v25 = a2;
    v19(v13, a2, v10);
    (*(v6 + 104))(v8, *MEMORY[0x277CC9830], v5);
    sub_20CE92760();
    (*(v6 + 8))(v8, v5);
    sub_20CE92EC0();
    if (([a1 isPartiallyLogged] & 1) != 0 || (objc_msgSend(a1, sel_mostLikelyDays), (sub_20CE931B0() & 1) == 0))
    {
      [a1 allDays];
      v22 = sub_20CE931B0();

      (*(v11 + 8))(v25, v10);
      result = (*(v23 + 8))(v18, v24);
      v21 = v22 & 1;
    }

    else
    {

      (*(v11 + 8))(v25, v10);
      result = (*(v23 + 8))(v18, v24);
      v21 = 2;
    }
  }

  else
  {
    result = (*(v11 + 8))(a2, v10);
    v21 = 0;
  }

  *v26 = v21;
  return result;
}

void sub_20CE91194(void *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v100 = a2;
  v96 = a3;
  sub_20CE92040(0, &qword_281111FB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  *&v86 = &v76 - v5;
  v103 = sub_20CE92810();
  v105 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CE926A0();
  v101 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v88 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v76 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v76 - v13;
  v15 = sub_20CE92720();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v97 = &v76 - v19;
  v20 = sub_20CE925B0();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v76 - v25;
  v27 = [a1 pregnancyDuration];
  if (!v27)
  {
    (*(v16 + 8))(v100, v15);

    v69 = 0;
    goto LABEL_14;
  }

  v104 = v16;
  v84 = v12;
  v99 = v15;
  v95 = v7;
  v85 = a1;
  v28 = v27;
  sub_20CE92580();

  v82 = v21;
  v29 = *(v21 + 32);
  v94 = v26;
  v83 = v20;
  v29(v26, v24, v20);
  v30 = v102;
  sub_20CE927F0();
  sub_20CE92040(0, &qword_27C818250, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v32 = v31;
  v33 = sub_20CE92800();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v91 = *(v34 + 80);
  v93 = v32;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_20CE94000;
  v80 = v36;
  v38 = *MEMORY[0x277CC9978];
  v81 = v34;
  v39 = *(v34 + 104);
  v39(v37 + v36, v38, v33);
  v39(v37 + v36 + v35, *MEMORY[0x277CC9988], v33);
  v39(v37 + v36 + 2 * v35, *MEMORY[0x277CC9998], v33);
  v39(v37 + v36 + 3 * v35, *MEMORY[0x277CC9968], v33);
  v39(v37 + v36 + 4 * v35, *MEMORY[0x277CC9980], v33);
  v39(v37 + v36 + 5 * v35, *MEMORY[0x277CC99A0], v33);
  v92 = v35;
  v40 = *MEMORY[0x277CC99A8];
  v89 = v39;
  v90 = v34 + 104;
  v39(v37 + v36 + 6 * v35, v40, v33);
  sub_20CE920A4(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_20CE92790();

  v41 = *(v105 + 8);
  v105 += 8;
  v98 = v41;
  v41(v30, v103);
  sub_20CE92610();
  sub_20CE92630();
  v42 = sub_20CE925D0();
  if (v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = v42;
  }

  v79 = sub_20CE925F0();
  v78 = v45;
  v46 = sub_20CE92650();
  sub_20CE92670();
  sub_20CE92620();
  sub_20CE92640();
  if (__OFSUB__(v44, 1))
  {
    __break(1u);
  }

  else
  {
    sub_20CE925E0();
    sub_20CE92600();
    sub_20CE92660();
    sub_20CE92680();
    v47 = v102;
    sub_20CE927F0();
    v46 = v86;
    sub_20CE927D0();
    v98(v47, v103);
    v48 = v104;
    v49 = v99;
    if ((*(v104 + 48))(v46, 1, v99) != 1)
    {
      v50 = *(v101 + 8);
      v101 += 8;
      v79 = v50;
      v50(v14, v95);
      (*(v48 + 32))(v97, v46, v49);
      v51 = v102;
      sub_20CE927F0();
      v52 = v80;
      v53 = swift_allocObject();
      v86 = xmmword_20CE93A50;
      *(v53 + 16) = xmmword_20CE93A50;
      v78 = *MEMORY[0x277CC9940];
      v89(v53 + v52);
      sub_20CE920A4(v53);
      swift_setDeallocating();
      v81 = *(v81 + 8);
      (v81)(v53 + v52, v33);
      swift_deallocClassInstance();
      v54 = v87;
      v77 = v33;
      sub_20CE92590();
      v55 = v84;
      sub_20CE92780();

      v56 = *(v104 + 8);
      v104 += 8;
      v56(v54, v99);
      v98(v51, v103);
      sub_20CE927F0();
      v57 = swift_allocObject();
      *(v57 + 16) = v86;
      v58 = v77;
      (v89)(v57 + v52, v78, v77);
      sub_20CE920A4(v57);
      swift_setDeallocating();
      (v81)(v57 + v52, v58);
      v59 = v55;
      v60 = v99;
      swift_deallocClassInstance();
      v61 = v56;
      v62 = v59;
      sub_20CE92590();
      v63 = v88;
      v64 = v100;
      sub_20CE92780();

      v61(v54, v60);
      v98(v51, v103);
      v65 = sub_20CE925C0();
      if (v66)
      {

        v61(v64, v60);
        v67 = v95;
        v68 = v79;
        v79(v63, v95);
        v68(v62, v67);
        v61(v97, v60);
        (*(v82 + 8))(v94, v83);
      }

      else
      {
        v70 = v65;
        v71 = sub_20CE925C0();
        v73 = v72;

        v61(v64, v60);
        v74 = v95;
        v75 = v79;
        v79(v63, v95);
        v75(v62, v74);
        v61(v97, v60);
        (*(v82 + 8))(v94, v83);
        if ((v73 & 1) == 0 && v70 < v71)
        {
          v69 = 2;
          goto LABEL_14;
        }
      }

      v69 = 0;
LABEL_14:
      *v96 = v69;
      return;
    }
  }

  sub_20CE92390(v46);
  sub_20CE93280();
  __break(1u);
}

void MenstrualCyclesWidgetEntry.RelevanceScore.init(rawValue:)(char *a1@<X8>, float a2@<S0>)
{
  if (a2 == 0.0)
  {
    *a1 = 0;
  }

  else
  {
    if (a2 == 20.0)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    if (a2 == 10.0)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    *a1 = v3;
  }
}

unint64_t sub_20CE91DB4()
{
  result = qword_27C818248;
  if (!qword_27C818248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818248);
  }

  return result;
}

uint64_t sub_20CE91E5C(uint64_t a1, char a2)
{
  sub_20CE932F0();
  sub_20CE93300();
  return sub_20CE93310();
}

float sub_20CE91EBC@<S0>(float *a1@<X8>)
{
  result = flt_20CE940D0[*v1];
  *a1 = result;
  return result;
}

uint64_t _s14RelevanceScoreOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14RelevanceScoreOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_20CE92040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE920A4(uint64_t a1)
{
  v2 = sub_20CE92800();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_20CE9241C(0);
    v9 = sub_20CE93230();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20CE9249C(&qword_27C818260, MEMORY[0x277CC99D8]);
      v16 = sub_20CE93060();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_20CE9249C(&qword_27C818268, MEMORY[0x277CC99E0]);
          v23 = sub_20CE93080();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20CE92390(uint64_t a1)
{
  sub_20CE92040(0, &qword_281111FB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CE9241C(uint64_t a1)
{
  if (!qword_27C818258)
  {
    sub_20CE92800();
    sub_20CE9249C(&qword_27C818260, MEMORY[0x277CC99D8]);
    v1 = sub_20CE93240();
    if (!v2)
    {
      atomic_store(v1, &qword_27C818258);
    }
  }
}

uint64_t sub_20CE9249C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20CE92800();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}