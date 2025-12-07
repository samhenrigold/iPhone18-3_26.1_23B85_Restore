void *sub_1AAD2C7B8@<X0>(_BYTE *a1@<X8>)
{
  sub_1AACBFE5C();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

uint64_t sub_1AAD2C860(void *a1)
{
  sub_1AAF8DF74();
  sub_1AAE2910C();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD2C8D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD2C90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartModel.Scenegraph(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD2C978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartModel.Scenegraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD2CA44()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 208);
  v3 = *(v0 + 280);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), v2, *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), v3);
  }

  return MEMORY[0x1EEE6BDD0](v0, 304, 7);
}

uint64_t sub_1AAD2CB2C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1AACB8788(result, a2 & 1, MEMORY[0x1E69E7CF8], MEMORY[0x1E69E7D48]);
  }

  return result;
}

uint64_t sub_1AAD2CB84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_1AAF8E004();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = v6 + *(v4 + 64);
  v9 = type metadata accessor for ChartScrollView(0, v2, v1, v8);
  v10 = *(*(v9 - 1) + 80);
  v11 = (v7 + v10) & ~v10;
  v12 = *(*(v9 - 1) + 64);
  (*(v4 + 8))(v0 + v6, v3);
  v13 = v0 + v11;
  (*(*(v2 - 8) + 8))(v0 + v11 + v9[9], v2);
  v14 = v0 + v11 + v9[10];
  if (*(v14 + 104) != 255)
  {
    sub_1AACE3E8C(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64));
  }

  v15 = v13 + v9[11];
  if (*(v15 + 104) != 255)
  {
    sub_1AACE3E8C(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64));
  }

  v16 = v13 + v9[12];
  if (*(v16 + 90))
  {
    v17 = *(v16 + 40);
    if (v17 >> 8 <= 0xFE)
    {
      if ((v17 & 0x100) != 0)
      {
        sub_1AACB634C((v13 + v9[12]));
      }

      else
      {
        sub_1AACCA728(*v16, *(v16 + 8), *(v16 + 16));
      }
    }

    v18 = *(v16 + 88);
    if (v18 >> 8 <= 0xFE)
    {
      if ((v18 & 0x100) != 0)
      {
        sub_1AACB634C((v16 + 48));
      }

      else
      {
        sub_1AACCA728(*(v16 + 48), *(v16 + 56), *(v16 + 64));
      }
    }
  }

  else
  {
  }

  v19 = v13 + v9[13];
  if (*(v19 + 80))
  {
    if (*(v19 + 64))
    {
      sub_1AACB634C((v19 + 40));
    }
  }

  else
  {
  }

  v20 = v13 + v9[14];
  v21 = *(v20 + 16);
  if (v21 != 255)
  {
    sub_1AACCA728(*v20, *(v20 + 8), v21);
  }

  v22 = v13 + v9[15];
  v23 = *(v22 + 16);
  if (v23 != 255)
  {
    sub_1AACCA728(*v22, *(v22 + 8), v23);
  }

  return MEMORY[0x1EEE6BDD0](v0, v11 + v12, v5 | v10 | 7);
}

uint64_t sub_1AAD2CE68()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_1AAF8E004();
  v4 = *(v3 - 8);
  v29 = *(v4 + 80);
  v5 = (v29 + 32) & ~v29;
  v6 = v5 + *(v4 + 64);
  v8 = type metadata accessor for ChartScrollView(0, v2, v1, v7);
  v9 = *(*(v8 - 1) + 80);
  v10 = (v6 + v9) & ~v9;
  v26 = *(*(v8 - 1) + 64);
  v28 = sub_1AAF8DF94();
  v11 = *(v28 - 8);
  v12 = *(v11 + 80);
  v27 = *(v11 + 64);
  (*(v4 + 8))(v0 + v5, v3);
  v13 = v0 + v10;
  (*(*(v2 - 8) + 8))(v0 + v10 + v8[9], v2);
  v14 = v0 + v10 + v8[10];
  if (*(v14 + 104) != 255)
  {
    sub_1AACE3E8C(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64));
  }

  v15 = v13 + v8[11];
  if (*(v15 + 104) != 255)
  {
    sub_1AACE3E8C(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64));
  }

  v16 = v13 + v8[12];
  if (*(v16 + 90))
  {
    v17 = *(v16 + 40);
    if (v17 >> 8 <= 0xFE)
    {
      if ((v17 & 0x100) != 0)
      {
        sub_1AACB634C((v13 + v8[12]));
      }

      else
      {
        sub_1AACCA728(*v16, *(v16 + 8), *(v16 + 16));
      }
    }

    v18 = *(v16 + 88);
    if (v18 >> 8 <= 0xFE)
    {
      if ((v18 & 0x100) != 0)
      {
        sub_1AACB634C((v16 + 48));
      }

      else
      {
        sub_1AACCA728(*(v16 + 48), *(v16 + 56), *(v16 + 64));
      }
    }
  }

  else
  {
  }

  v19 = v13 + v8[13];
  if (*(v19 + 80))
  {
    if (*(v19 + 64))
    {
      sub_1AACB634C((v19 + 40));
    }
  }

  else
  {
  }

  v20 = v13 + v8[14];
  v21 = *(v20 + 16);
  if (v21 != 255)
  {
    sub_1AACCA728(*v20, *(v20 + 8), v21);
  }

  v22 = v13 + v8[15];
  v23 = *(v22 + 16);
  if (v23 != 255)
  {
    sub_1AACCA728(*v22, *(v22 + 8), v23);
  }

  v24 = (v10 + v26 + v12) & ~v12;

  (*(v11 + 8))(v0 + v24, v28);

  return MEMORY[0x1EEE6BDD0](v0, v24 + v27, v29 | v9 | v12 | 7);
}

uint64_t sub_1AAD2D1F0(uint64_t a1, uint64_t a2)
{
  sub_1AAD00D70(0, &qword_1ED9B2C90, sub_1AACCF9DC, sub_1AACCBDEC, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD2D298(uint64_t a1, uint64_t a2)
{
  sub_1AACCC2A8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD2D2FC(uint64_t a1, uint64_t a2)
{
  sub_1AAD00BB8(0, &qword_1ED9B2C28, sub_1AACCC2A8, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD2D390(uint64_t *a1)
{
  sub_1AAD0A750(255, &qword_1ED9ADA30, sub_1AAE386A4, &type metadata for ScrollViewBoundsReader, MEMORY[0x1E697CA00]);
  sub_1AAF8DF74();
  sub_1AAE386F8();
  swift_getWitnessTable();
  sub_1AAE38788();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1AAE052B0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1AAE05304();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1AAF8E564();
  swift_getWitnessTable();
  sub_1AAF8D844();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1AAF8E024();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1AAF8E384();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD2D6A4()
{
  sub_1AAD0A750(255, &qword_1ED9ADA48, sub_1AAE386A4, &type metadata for ScrollViewBoundsReader, MEMORY[0x1E697FDE8]);
  sub_1AACBC0B0(255);
  sub_1AAE39A84();
  sub_1AAE39B14(&unk_1ED9AD860, sub_1AACBC0B0, sub_1AAE39B84, MEMORY[0x1E69E7C80]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1AAD2D7AC(uint64_t *a1)
{
  type metadata accessor for StrokedSymbolShape(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t sub_1AAD2D818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1AAE3EF6C(v5, v7) & 1;
}

uint64_t sub_1AAD2D874(void *a1)
{
  sub_1AAF8DF74();
  sub_1AAE3ECA8();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD2D8DC(void *a1)
{
  sub_1AAF8DF74();
  sub_1AAE3ECA8();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD2D948()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AAD2D990()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1AAD2DA90(char *a1, uint64_t a2, int *a3, __n128 a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  v9 = sub_1AAF8E9D4();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[10];
LABEL_9:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  sub_1AAE45C24(0, &qword_1ED9ADBA8, MEMORY[0x1E6969770], MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[11];
    goto LABEL_9;
  }

  sub_1AAE45C24(0, &qword_1ED9ADBA0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = &a1[a3[12]];

  return v17(v18, a2, v16);
}

char *sub_1AAD2DC5C(char *result, uint64_t a2, int a3, int *a4, __n128 a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v9 = sub_1AAF8E9D4();
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a4[10];
LABEL_7:
    v14 = *(v11 + 56);

    return v14(&v6[v12], a2, a2, v10);
  }

  sub_1AAE45C24(0, &qword_1ED9ADBA8, MEMORY[0x1E6969770], MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a4[11];
    goto LABEL_7;
  }

  sub_1AAE45C24(0, &qword_1ED9ADBA0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = &v6[a4[12]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1AAD2DE2C()
{
  v1 = type metadata accessor for DefaultChartLegend.ColorRampView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[10];
  v7 = sub_1AAF8E9D4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[11];
  sub_1AAE45C24(0, &qword_1EB425A20, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1AAF8CAA4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[12];
  sub_1AAE45C24(0, &qword_1EB425A28, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1AAF8DF14();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1AAD2E108()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD2E2C0()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[6];
  v3 = v0[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 64) & ~v7;
  v9 = *(*v6 + 64);
  v31 = v3;
  v10 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v2, v3);
  v32 = *(*(v10 - 8) + 64);
  v33 = *(*(v10 - 8) + 80);
  v11 = (v8 + v9 + v33) & ~v33;
  v12 = v0 + v8;
  sub_1AAD04750(*v12, *(v12 + 1), v12[16]);

  v13 = &v12[v6[13]];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v15 = sub_1AAF8CB94();
          v16 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v15 - 8) + 8))(&v13[*(TupleTypeMetadata3 + 48)], v15);
          (*(*(v16 - 8) + 8))(&v13[*(TupleTypeMetadata3 + 64)], v16);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(*(v1 - 8) + 8);
      v18(v13, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v18(&v13[*(TupleTypeMetadata2 + 48)], v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v13, v1);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v11), *(v0 + v11 + 8), *(v0 + v11 + 16));

  v20 = v0 + v11 + *(v10 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v2, v31);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v21 != 3)
      {
        if (v21 == 4)
        {

          sub_1AAF90774();
          v22 = sub_1AAF8CB94();
          v23 = v7;
          v24 = sub_1AAF8CBA4();
          v25 = swift_getTupleTypeMetadata3();
          (*(*(v22 - 8) + 8))(&v20[*(v25 + 48)], v22);
          v26 = *(*(v24 - 8) + 8);
          v27 = v24;
          v7 = v23;
          v26(&v20[*(v25 + 64)], v27);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v28 = *(*(v2 - 8) + 8);
      v28(v20, v2);
      v29 = swift_getTupleTypeMetadata2();
      v28(&v20[*(v29 + 48)], v2);
    }
  }

  else
  {
    (*(*(v2 - 8) + 8))(v20, v2);
  }

LABEL_25:

  return MEMORY[0x1EEE6BDD0](v0, v32 + v11 + 1, v7 | v33 | 7);
}

uint64_t sub_1AAD2E804()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[6];
  v4 = v0[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v3);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 64) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v46 = v7;
  v10 = (v9 + v7 + v8) & ~v7;
  v43 = v4;
  v44 = v2;
  v11 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v2, v4);
  v45 = *(*(v11 - 8) + 64);
  v47 = *(*(v11 - 8) + 80);
  v12 = v10 + v9 + v47;
  v13 = v0 + v8;
  sub_1AAD04750(*v13, *(v13 + 1), v13[16]);

  v14 = &v13[*(v6 + 44)];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v41 = v11;
          v16 = sub_1AAF8CB94();
          v42 = v12;
          v17 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v16 - 8) + 8))(&v14[*(TupleTypeMetadata3 + 48)], v16);
          v19 = *(*(v17 - 8) + 8);
          v20 = &v14[*(TupleTypeMetadata3 + 64)];
          v21 = v17;
          v11 = v41;
          v12 = v42;
          v19(v20, v21);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *(*(v1 - 8) + 8);
      v22(v14, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v22(&v14[*(TupleTypeMetadata2 + 48)], v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v14, v1);
  }

LABEL_13:
  v24 = v12 & ~v47;
  v25 = v0 + v10;
  sub_1AAD04750(*v25, *(v25 + 1), v25[16]);

  v26 = &v25[*(v6 + 44)];
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 > 1)
  {
    if (v27 != 2)
    {
      if (v27 != 3)
      {
        if (v27 == 4)
        {

          sub_1AAF90774();
          v28 = sub_1AAF8CB94();
          v29 = sub_1AAF8CBA4();
          v30 = swift_getTupleTypeMetadata3();
          (*(*(v28 - 8) + 8))(&v26[*(v30 + 48)], v28);
          (*(*(v29 - 8) + 8))(&v26[*(v30 + 64)], v29);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v27)
  {
    if (v27 == 1)
    {
      v31 = *(*(v1 - 8) + 8);
      v31(v26, v1);
      v32 = swift_getTupleTypeMetadata2();
      v31(&v26[*(v32 + 48)], v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v26, v1);
  }

LABEL_25:
  sub_1AAD04750(*(v0 + v24), *(v0 + v24 + 8), *(v0 + v24 + 16));

  v33 = v0 + v24 + *(v11 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v44, v43);
  v34 = swift_getEnumCaseMultiPayload();
  if (v34 > 1)
  {
    if (v34 != 2)
    {
      if (v34 != 3)
      {
        if (v34 == 4)
        {

          sub_1AAF90774();
          v35 = sub_1AAF8CB94();
          v36 = sub_1AAF8CBA4();
          v37 = swift_getTupleTypeMetadata3();
          (*(*(v35 - 8) + 8))(&v33[*(v37 + 48)], v35);
          (*(*(v36 - 8) + 8))(&v33[*(v37 + 64)], v36);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v34)
  {
    if (v34 == 1)
    {
      v38 = *(*(v44 - 8) + 8);
      v38(v33, v44);
      v39 = swift_getTupleTypeMetadata2();
      v38(&v33[*(v39 + 48)], v44);
    }
  }

  else
  {
    (*(*(v44 - 8) + 8))(v33, v44);
  }

LABEL_37:

  return MEMORY[0x1EEE6BDD0](v0, v24 + v45, v46 | v47 | 7);
}

uint64_t sub_1AAD2EF30()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[6];
  v4 = v0[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v2, v4) - 8);
  v43 = *(*v6 + 80);
  v7 = (v43 + 64) & ~v43;
  v8 = *(*v6 + 64);
  v44 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v3);
  v9 = *(v44 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v41 = *(v9 + 64) + v10 + v11;
  v42 = *(v9 + 64);
  v12 = v0 + v7;
  sub_1AAD04750(*v12, *(v12 + 1), v12[16]);

  v13 = &v12[v6[13]];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v15 = sub_1AAF8CB94();
          v16 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v15 - 8) + 8))(&v13[*(TupleTypeMetadata3 + 48)], v15);
          (*(*(v16 - 8) + 8))(&v13[*(TupleTypeMetadata3 + 64)], v16);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(*(v2 - 8) + 8);
      v18(v13, v2);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v18(&v13[*(TupleTypeMetadata2 + 48)], v2);
    }
  }

  else
  {
    (*(*(v2 - 8) + 8))(v13, v2);
  }

LABEL_13:
  v20 = v41 & ~v10;
  v21 = v0 + v11;
  sub_1AAD04750(*v21, *(v21 + 1), v21[16]);

  v22 = v44;
  v23 = &v21[*(v44 + 44)];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v3);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      if (v24 != 3)
      {
        if (v24 == 4)
        {

          sub_1AAF90774();
          v25 = sub_1AAF8CB94();
          v26 = sub_1AAF8CBA4();
          v27 = swift_getTupleTypeMetadata3();
          v28 = *(*(v25 - 8) + 8);
          v29 = v25;
          v20 = v41 & ~v10;
          v28(&v23[*(v27 + 48)], v29);
          v30 = *(v27 + 64);
          v22 = v44;
          (*(*(v26 - 8) + 8))(&v23[v30], v26);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v24)
  {
    if (v24 == 1)
    {
      v31 = *(*(v1 - 8) + 8);
      v31(v23, v1);
      v32 = swift_getTupleTypeMetadata2();
      v31(&v23[*(v32 + 48)], v1);
      v22 = v44;
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v23, v1);
  }

LABEL_25:
  sub_1AAD04750(*(v0 + v20), *(v0 + v20 + 8), *(v0 + v20 + 16));

  v33 = v0 + v20 + *(v22 + 44);
  v34 = swift_getEnumCaseMultiPayload();
  if (v34 > 1)
  {
    if (v34 != 2)
    {
      if (v34 != 3)
      {
        if (v34 == 4)
        {

          sub_1AAF90774();
          v35 = sub_1AAF8CB94();
          v36 = sub_1AAF8CBA4();
          v37 = swift_getTupleTypeMetadata3();
          (*(*(v35 - 8) + 8))(&v33[*(v37 + 48)], v35);
          (*(*(v36 - 8) + 8))(&v33[*(v37 + 64)], v36);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v34)
  {
    if (v34 == 1)
    {
      v38 = *(*(v1 - 8) + 8);
      v38(v33, v1);
      v39 = swift_getTupleTypeMetadata2();
      v38(&v33[*(v39 + 48)], v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v33, v1);
  }

LABEL_37:

  return MEMORY[0x1EEE6BDD0](v0, v20 + v42, v43 | v10 | 7);
}

uint64_t sub_1AAD2F64C()
{
  v1 = v0[3];
  v42 = v1;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[7];
  v6 = v0[8];
  v5 = v0[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v4) - 8);
  v50 = *(*v8 + 80);
  v9 = (v50 + 80) & ~v50;
  v10 = *(*v8 + 64);
  v43 = v6;
  v44 = v3;
  v11 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v6);
  v49 = *(*(v11 - 8) + 80);
  v12 = (v9 + v10 + v49) & ~v49;
  v13 = *(*(v11 - 8) + 64);
  v48 = v2;
  v46 = v5;
  v14 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v2, v5);
  v47 = *(*(v14 - 8) + 64);
  v51 = *(*(v14 - 8) + 80);
  v15 = v12 + v13 + v51;
  v16 = v0 + v9;
  sub_1AAD04750(*v16, *(v16 + 1), v16[16]);

  v17 = &v16[v8[13]];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v42, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v45 = v14;
  v19 = v11;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v20 = sub_1AAF8CB94();
          v21 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v20 - 8) + 8))(&v17[*(TupleTypeMetadata3 + 48)], v20);
          (*(*(v21 - 8) + 8))(&v17[*(TupleTypeMetadata3 + 64)], v21);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = *(*(v42 - 8) + 8);
      v23(v17, v42);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v23(&v17[*(TupleTypeMetadata2 + 48)], v42);
    }
  }

  else
  {
    (*(*(v42 - 8) + 8))(v17, v42);
  }

LABEL_13:
  v25 = v15 & ~v51;
  v26 = v0 + v12;
  sub_1AAD04750(*v26, *(v26 + 1), v26[16]);

  v27 = &v26[*(v19 + 44)];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v44, v43);
  v28 = swift_getEnumCaseMultiPayload();
  if (v28 > 1)
  {
    if (v28 != 2)
    {
      if (v28 != 3)
      {
        if (v28 == 4)
        {

          sub_1AAF90774();
          v29 = sub_1AAF8CB94();
          v30 = sub_1AAF8CBA4();
          v31 = swift_getTupleTypeMetadata3();
          (*(*(v29 - 8) + 8))(&v27[*(v31 + 48)], v29);
          (*(*(v30 - 8) + 8))(&v27[*(v31 + 64)], v30);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v28)
  {
    if (v28 == 1)
    {
      v32 = *(*(v44 - 8) + 8);
      v32(v27, v44);
      v33 = swift_getTupleTypeMetadata2();
      v32(&v27[*(v33 + 48)], v44);
    }
  }

  else
  {
    (*(*(v44 - 8) + 8))(v27, v44);
  }

LABEL_25:
  sub_1AAD04750(*(v0 + v25), *(v0 + v25 + 8), *(v0 + v25 + 16));

  v34 = v0 + v25 + *(v45 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v48, v46);
  v35 = swift_getEnumCaseMultiPayload();
  if (v35 > 1)
  {
    if (v35 != 2)
    {
      if (v35 != 3)
      {
        if (v35 == 4)
        {

          sub_1AAF90774();
          v36 = sub_1AAF8CB94();
          v37 = sub_1AAF8CBA4();
          v38 = swift_getTupleTypeMetadata3();
          (*(*(v36 - 8) + 8))(&v34[*(v38 + 48)], v36);
          (*(*(v37 - 8) + 8))(&v34[*(v38 + 64)], v37);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v35)
  {
    if (v35 == 1)
    {
      v39 = *(*(v48 - 8) + 8);
      v39(v34, v48);
      v40 = swift_getTupleTypeMetadata2();
      v39(&v34[*(v40 + 48)], v48);
    }
  }

  else
  {
    (*(*(v48 - 8) + 8))(v34, v48);
  }

LABEL_37:

  return MEMORY[0x1EEE6BDD0](v0, v47 + v25 + 1, v50 | v49 | v51 | 7);
}

uint64_t sub_1AAD2FE04()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[7];
  v50 = v1;
  v5 = v0[8];
  v61 = v0[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v4);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v8 + 80) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  v53 = v5;
  v54 = v3;
  v49 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v5);
  v11 = *(*(v49 - 8) + 80);
  v52 = (v10 + v8 + v9) & ~v8;
  v60 = (v52 + v10 + v11) & ~v11;
  v12 = *(*(v49 - 8) + 64);
  v55 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v2, v61);
  v56 = *(*(v55 - 8) + 80);
  v57 = *(*(v55 - 8) + 64);
  v51 = v12 + v56;
  v13 = v0 + v9;
  sub_1AAD04750(*v13, *(v13 + 1), v13[16]);

  v14 = &v13[*(v7 + 44)];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v50, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v58 = v11;
  v59 = v8;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v16 = v49;
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v17 = sub_1AAF8CB94();
          v18 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v17 - 8) + 8))(&v14[*(TupleTypeMetadata3 + 48)], v17);
          (*(*(v18 - 8) + 8))(&v14[*(TupleTypeMetadata3 + 64)], v18);
        }

        goto LABEL_13;
      }
    }

LABEL_12:
    v16 = v49;
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(*(v50 - 8) + 8))(v14, v50);
    goto LABEL_12;
  }

  v16 = v49;
  if (EnumCaseMultiPayload == 1)
  {
    v20 = *(*(v50 - 8) + 8);
    v20(v14, v50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v20(&v14[*(TupleTypeMetadata2 + 48)], v50);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v52), *(v0 + v52 + 8), *(v0 + v52 + 16));

  v22 = v0 + v52 + *(v7 + 44);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 <= 1)
  {
    v24 = v56;
    if (v23)
    {
      if (v23 == 1)
      {
        v28 = *(*(v50 - 8) + 8);
        v28(v22, v50);
        v29 = swift_getTupleTypeMetadata2();
        v28(&v22[*(v29 + 48)], v50);
      }
    }

    else
    {
      (*(*(v50 - 8) + 8))(v22, v50);
    }
  }

  else
  {
    v24 = v56;
    switch(v23)
    {
      case 2:

        break;
      case 3:

        break;
      case 4:

        sub_1AAF90774();
        v25 = sub_1AAF8CB94();
        v26 = sub_1AAF8CBA4();
        v27 = swift_getTupleTypeMetadata3();
        (*(*(v25 - 8) + 8))(&v22[*(v27 + 48)], v25);
        (*(*(v26 - 8) + 8))(&v22[*(v27 + 64)], v26);
        break;
    }
  }

  v30 = (v60 + v51) & ~v24;
  sub_1AAD04750(*(v0 + v60), *(v0 + v60 + 8), *(v0 + v60 + 16));

  v31 = v0 + v60 + *(v16 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v54, v53);
  v32 = swift_getEnumCaseMultiPayload();
  if (v32 > 1)
  {
    v33 = v59;
    v34 = v2;
    if (v32 != 2)
    {
      if (v32 != 3)
      {
        if (v32 == 4)
        {

          sub_1AAF90774();
          v35 = sub_1AAF8CB94();
          v36 = sub_1AAF8CBA4();
          v37 = swift_getTupleTypeMetadata3();
          (*(*(v35 - 8) + 8))(&v31[*(v37 + 48)], v35);
          (*(*(v36 - 8) + 8))(&v31[*(v37 + 64)], v36);
        }

        goto LABEL_36;
      }
    }

    goto LABEL_36;
  }

  v33 = v59;
  v34 = v2;
  if (v32)
  {
    if (v32 == 1)
    {
      v38 = v24;
      v39 = *(*(v54 - 8) + 8);
      v39(v31, v54);
      v40 = swift_getTupleTypeMetadata2();
      v39(&v31[*(v40 + 48)], v54);
      v24 = v38;
      v33 = v59;
    }
  }

  else
  {
    (*(*(v54 - 8) + 8))(v31, v54);
  }

LABEL_36:
  sub_1AAD04750(*(v0 + v30), *(v0 + v30 + 8), *(v0 + v30 + 16));

  v41 = v0 + v30 + *(v55 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v34, v61);
  v42 = swift_getEnumCaseMultiPayload();
  if (v42 > 1)
  {
    if (v42 != 2)
    {
      if (v42 != 3)
      {
        if (v42 == 4)
        {

          sub_1AAF90774();
          v43 = sub_1AAF8CB94();
          v44 = sub_1AAF8CBA4();
          v45 = swift_getTupleTypeMetadata3();
          (*(*(v43 - 8) + 8))(&v41[*(v45 + 48)], v43);
          (*(*(v44 - 8) + 8))(&v41[*(v45 + 64)], v44);
        }

        goto LABEL_48;
      }
    }

    goto LABEL_48;
  }

  if (v42)
  {
    if (v42 == 1)
    {
      v46 = *(*(v34 - 8) + 8);
      v46(v41, v34);
      v47 = swift_getTupleTypeMetadata2();
      v46(&v41[*(v47 + 48)], v34);
    }
  }

  else
  {
    (*(*(v34 - 8) + 8))(v41, v34);
  }

LABEL_48:

  return MEMORY[0x1EEE6BDD0](v0, v30 + v57, v33 | v58 | v24 | 7);
}

uint64_t sub_1AAD30808()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v63 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v2, v5) - 8);
  v68 = *(*v8 + 80);
  v9 = (v68 + 80) & ~v68;
  v10 = *(*v8 + 64);
  v70 = v1;
  v64 = v4;
  v11 = v4;
  v12 = v2;
  v72 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v11);
  v13 = *(*(v72 - 8) + 80);
  v14 = (v9 + v10 + v13) & ~v13;
  v15 = *(*(v72 - 8) + 64);
  v66 = v3;
  v67 = v13;
  v71 = (v15 + v13 + v14) & ~v13;
  v65 = v6;
  v16 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v6);
  v17 = *(*(v16 - 8) + 64);
  v69 = *(*(v16 - 8) + 80);
  v18 = v15 + v69;
  v19 = v0 + v9;
  sub_1AAD04750(*v19, *(v19 + 1), v19[16]);

  v20 = &v19[v8[13]];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v2, v63);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v22 = v70;
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }

      v28 = *(*(v2 - 8) + 8);
      v28(v20, v12);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v28(&v20[*(TupleTypeMetadata2 + 48)], v12);
    }

    else
    {
      (*(*(v2 - 8) + 8))(v20, v2);
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 2)
  {

LABEL_12:
    v22 = v70;
    goto LABEL_13;
  }

  v22 = v70;
  if (EnumCaseMultiPayload == 3)
  {
  }

  else if (EnumCaseMultiPayload == 4)
  {

    sub_1AAF90774();
    v23 = sub_1AAF8CB94();
    v24 = sub_1AAF8CBA4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(*(v23 - 8) + 8))(&v20[*(TupleTypeMetadata3 + 48)], v23);
    v26 = *(*(v24 - 8) + 8);
    v27 = v24;
    v22 = v70;
    v26(&v20[*(TupleTypeMetadata3 + 64)], v27);
  }

LABEL_13:
  v30 = v71 + v18;
  v31 = v0 + v14;
  sub_1AAD04750(*v31, *(v31 + 1), v31[16]);

  v32 = &v31[*(v72 + 44)];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v22, v64);
  v33 = swift_getEnumCaseMultiPayload();
  if (v33 > 1)
  {
    v34 = v69;
    if (v33 != 2)
    {
      if (v33 != 3)
      {
        if (v33 == 4)
        {

          sub_1AAF90774();
          v35 = sub_1AAF8CB94();
          v36 = sub_1AAF8CBA4();
          v37 = swift_getTupleTypeMetadata3();
          v38 = *(*(v35 - 8) + 8);
          v39 = v35;
          v22 = v70;
          v38(&v32[*(v37 + 48)], v39);
          v40 = *(*(v36 - 8) + 8);
          v41 = v36;
          v34 = v69;
          v40(&v32[*(v37 + 64)], v41);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  v34 = v69;
  if (v33)
  {
    if (v33 == 1)
    {
      v42 = *(*(v22 - 8) + 8);
      v42(v32, v22);
      v43 = swift_getTupleTypeMetadata2();
      v42(&v32[*(v43 + 48)], v22);
    }
  }

  else
  {
    (*(*(v22 - 8) + 8))(v32, v22);
  }

LABEL_25:
  v44 = v30 & ~v34;
  sub_1AAD04750(*(v0 + v71), *(v0 + v71 + 8), *(v0 + v71 + 16));

  v45 = v0 + v71 + *(v72 + 44);
  v46 = swift_getEnumCaseMultiPayload();
  if (v46 > 1)
  {
    if (v46 != 2)
    {
      if (v46 != 3)
      {
        if (v46 == 4)
        {

          sub_1AAF90774();
          v47 = sub_1AAF8CB94();
          v48 = v16;
          v49 = sub_1AAF8CBA4();
          v50 = swift_getTupleTypeMetadata3();
          (*(*(v47 - 8) + 8))(&v45[*(v50 + 48)], v47);
          v51 = *(*(v49 - 8) + 8);
          v52 = v49;
          v16 = v48;
          v51(&v45[*(v50 + 64)], v52);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v46)
  {
    if (v46 == 1)
    {
      v53 = *(*(v22 - 8) + 8);
      v53(v45, v22);
      v54 = swift_getTupleTypeMetadata2();
      v53(&v45[*(v54 + 48)], v22);
    }
  }

  else
  {
    (*(*(v22 - 8) + 8))(v45, v22);
  }

LABEL_37:
  sub_1AAD04750(*(v0 + v44), *(v0 + v44 + 8), *(v0 + v44 + 16));

  v55 = v0 + v44 + *(v16 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v66, v65);
  v56 = swift_getEnumCaseMultiPayload();
  if (v56 > 1)
  {
    if (v56 != 2)
    {
      if (v56 != 3)
      {
        if (v56 == 4)
        {

          sub_1AAF90774();
          v57 = sub_1AAF8CB94();
          v58 = sub_1AAF8CBA4();
          v59 = swift_getTupleTypeMetadata3();
          (*(*(v57 - 8) + 8))(&v55[*(v59 + 48)], v57);
          (*(*(v58 - 8) + 8))(&v55[*(v59 + 64)], v58);
        }

        goto LABEL_49;
      }
    }

    goto LABEL_49;
  }

  if (v56)
  {
    if (v56 == 1)
    {
      v60 = *(*(v66 - 8) + 8);
      v60(v55, v66);
      v61 = swift_getTupleTypeMetadata2();
      v60(&v55[*(v61 + 48)], v66);
    }
  }

  else
  {
    (*(*(v66 - 8) + 8))(v55, v66);
  }

LABEL_49:

  return MEMORY[0x1EEE6BDD0](v0, v44 + v17, v68 | v67 | v34 | 7);
}

uint64_t sub_1AAD311D4()
{

  sub_1AAD04750(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  sub_1AAD04750(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  sub_1AAD04750(*(v0 + 152), *(v0 + 160), *(v0 + 168));

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_1AAD31248()
{

  sub_1AAD04750(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  sub_1AAD04750(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AAD312C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD31308()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD314C0()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[6];
  v3 = v0[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v4) - 8);
  v37 = *(*v6 + 80);
  v7 = (v37 + 64) & ~v37;
  v8 = *(*v6 + 64);
  v35 = v3;
  v9 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v2, v3);
  v36 = *(*(v9 - 8) + 80);
  v10 = (v7 + v8 + v36) & ~v36;
  v11 = v10 + *(*(v9 - 8) + 64);
  v12 = v0 + v7;
  sub_1AAD04750(*v12, *(v12 + 1), v12[16]);

  v13 = &v12[v6[13]];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v15 = sub_1AAF8CB94();
          v16 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v15 - 8) + 8))(&v13[*(TupleTypeMetadata3 + 48)], v15);
          (*(*(v16 - 8) + 8))(&v13[*(TupleTypeMetadata3 + 64)], v16);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(*(v1 - 8) + 8);
      v18(v13, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v18(&v13[*(TupleTypeMetadata2 + 48)], v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v13, v1);
  }

LABEL_13:
  v20 = v11 + 127;
  v21 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1AAD04750(*(v0 + v10), *(v0 + v10 + 8), *(v0 + v10 + 16));

  v22 = v0 + v10 + *(v9 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v2, v35);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      if (v23 != 3)
      {
        if (v23 == 4)
        {

          sub_1AAF90774();
          v24 = sub_1AAF8CB94();
          v25 = sub_1AAF8CBA4();
          v26 = swift_getTupleTypeMetadata3();
          (*(*(v24 - 8) + 8))(&v22[*(v26 + 48)], v24);
          (*(*(v25 - 8) + 8))(&v22[*(v26 + 64)], v25);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v23)
  {
    if (v23 == 1)
    {
      v27 = *(*(v2 - 8) + 8);
      v27(v22, v2);
      v28 = swift_getTupleTypeMetadata2();
      v27(&v22[*(v28 + 48)], v2);
    }
  }

  else
  {
    (*(*(v2 - 8) + 8))(v22, v2);
  }

LABEL_25:
  v29 = v20 & 0xFFFFFFFFFFFFFFF8;
  v30 = v0 + v21;
  v31 = *(v0 + v21 + 96);
  if (v31 != 255)
  {
    sub_1AAD31A5C(*(v30 + 11), v31 & 1);
  }

  sub_1AAD31A5C(*(v30 + 13), v30[112]);
  v32 = v0 + v29;
  v33 = *(v0 + v29 + 96);
  if (v33 != 255)
  {
    sub_1AAD31A5C(*(v32 + 11), v33 & 1);
  }

  sub_1AAD31A5C(*(v32 + 13), v32[112]);

  return MEMORY[0x1EEE6BDD0](v0, v29 + 114, v37 | v36 | 7);
}

double sub_1AAD31A5C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1AAD31A68()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[6];
  v4 = v0[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v3);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 64) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v52 = v7;
  v10 = (v9 + v7 + v8) & ~v7;
  v49 = v4;
  v50 = v2;
  v11 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v2, v4);
  v51 = *(*(v11 - 8) + 80);
  v12 = (v10 + v9 + v51) & ~v51;
  v48 = *(*(v11 - 8) + 64) + v12;
  v13 = v0 + v8;
  sub_1AAD04750(*v13, *(v13 + 1), v13[16]);

  v14 = &v13[*(v6 + 44)];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v46 = v11;
          v16 = sub_1AAF8CB94();
          v47 = v12;
          v17 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v16 - 8) + 8))(&v14[*(TupleTypeMetadata3 + 48)], v16);
          v19 = *(*(v17 - 8) + 8);
          v20 = &v14[*(TupleTypeMetadata3 + 64)];
          v21 = v17;
          v11 = v46;
          v12 = v47;
          v19(v20, v21);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *(*(v1 - 8) + 8);
      v22(v14, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v22(&v14[*(TupleTypeMetadata2 + 48)], v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v14, v1);
  }

LABEL_13:
  v24 = v0 + v10;
  sub_1AAD04750(*v24, *(v24 + 1), v24[16]);

  v25 = &v24[*(v6 + 44)];
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 > 1)
  {
    if (v26 != 2)
    {
      if (v26 != 3)
      {
        if (v26 == 4)
        {

          sub_1AAF90774();
          v27 = v12;
          v28 = sub_1AAF8CB94();
          v29 = sub_1AAF8CBA4();
          v30 = swift_getTupleTypeMetadata3();
          v31 = *(*(v28 - 8) + 8);
          v32 = v28;
          v12 = v27;
          v31(&v25[*(v30 + 48)], v32);
          (*(*(v29 - 8) + 8))(&v25[*(v30 + 64)], v29);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v33 = *(*(v1 - 8) + 8);
      v33(v25, v1);
      v34 = swift_getTupleTypeMetadata2();
      v33(&v25[*(v34 + 48)], v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v25, v1);
  }

LABEL_25:
  v35 = (v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1AAD04750(*(v0 + v12), *(v0 + v12 + 8), *(v0 + v12 + 16));

  v36 = v0 + v12 + *(v11 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v50, v49);
  v37 = swift_getEnumCaseMultiPayload();
  if (v37 > 1)
  {
    if (v37 != 2)
    {
      if (v37 != 3)
      {
        if (v37 == 4)
        {

          sub_1AAF90774();
          v38 = sub_1AAF8CB94();
          v39 = sub_1AAF8CBA4();
          v40 = swift_getTupleTypeMetadata3();
          (*(*(v38 - 8) + 8))(&v36[*(v40 + 48)], v38);
          (*(*(v39 - 8) + 8))(&v36[*(v40 + 64)], v39);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v37)
  {
    if (v37 == 1)
    {
      v41 = *(*(v50 - 8) + 8);
      v41(v36, v50);
      v42 = swift_getTupleTypeMetadata2();
      v41(&v36[*(v42 + 48)], v50);
    }
  }

  else
  {
    (*(*(v50 - 8) + 8))(v36, v50);
  }

LABEL_37:
  v43 = v0 + v35;
  v44 = *(v0 + v35 + 96);
  if (v44 != 255)
  {
    sub_1AAD31A5C(*(v43 + 11), v44 & 1);
  }

  sub_1AAD31A5C(*(v43 + 13), v43[112]);

  return MEMORY[0x1EEE6BDD0](v0, v35 + 113, v52 | v51 | 7);
}

uint64_t sub_1AAD321CC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[6];
  v4 = v0[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v2, v4) - 8);
  v46 = *(*v6 + 80);
  v7 = (v46 + 64) & ~v46;
  v8 = *(*v6 + 64);
  v47 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v3);
  v9 = *(*(v47 - 8) + 80);
  v10 = *(*(v47 - 8) + 64);
  v11 = (v7 + v8 + v9) & ~v9;
  v44 = v10 + ((v10 + v9 + v11) & ~v9);
  v45 = (v10 + v9 + v11) & ~v9;
  v12 = v0 + v7;
  sub_1AAD04750(*v12, *(v12 + 1), v12[16]);

  v13 = &v12[v6[13]];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v15 = sub_1AAF8CB94();
          v16 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v15 - 8) + 8))(&v13[*(TupleTypeMetadata3 + 48)], v15);
          (*(*(v16 - 8) + 8))(&v13[*(TupleTypeMetadata3 + 64)], v16);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(*(v2 - 8) + 8);
      v18(v13, v2);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v18(&v13[*(TupleTypeMetadata2 + 48)], v2);
    }
  }

  else
  {
    (*(*(v2 - 8) + 8))(v13, v2);
  }

LABEL_13:
  v20 = v44 + 7;
  v21 = v0 + v11;
  sub_1AAD04750(*v21, *(v21 + 1), v21[16]);

  v22 = v47;
  v23 = &v21[*(v47 + 44)];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v3);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      if (v24 != 3)
      {
        if (v24 == 4)
        {

          sub_1AAF90774();
          v25 = sub_1AAF8CB94();
          v26 = sub_1AAF8CBA4();
          v27 = swift_getTupleTypeMetadata3();
          v28 = *(*(v25 - 8) + 8);
          v29 = v25;
          v20 = v44 + 7;
          v28(&v23[*(v27 + 48)], v29);
          v30 = *(v27 + 64);
          v22 = v47;
          (*(*(v26 - 8) + 8))(&v23[v30], v26);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v24)
  {
    if (v24 == 1)
    {
      v31 = *(*(v1 - 8) + 8);
      v31(v23, v1);
      v32 = swift_getTupleTypeMetadata2();
      v31(&v23[*(v32 + 48)], v1);
      v22 = v47;
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v23, v1);
  }

LABEL_25:
  v33 = v20 & 0xFFFFFFFFFFFFFFF8;
  sub_1AAD04750(*(v0 + v45), *(v0 + v45 + 8), *(v0 + v45 + 16));

  v34 = v0 + v45 + *(v22 + 44);
  v35 = swift_getEnumCaseMultiPayload();
  if (v35 > 1)
  {
    if (v35 != 2)
    {
      if (v35 != 3)
      {
        if (v35 == 4)
        {

          sub_1AAF90774();
          v36 = sub_1AAF8CB94();
          v37 = sub_1AAF8CBA4();
          v38 = swift_getTupleTypeMetadata3();
          (*(*(v36 - 8) + 8))(&v34[*(v38 + 48)], v36);
          (*(*(v37 - 8) + 8))(&v34[*(v38 + 64)], v37);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v35)
  {
    if (v35 == 1)
    {
      v39 = *(*(v1 - 8) + 8);
      v39(v34, v1);
      v40 = swift_getTupleTypeMetadata2();
      v39(&v34[*(v40 + 48)], v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v34, v1);
  }

LABEL_37:
  v41 = v0 + v33;
  v42 = *(v0 + v33 + 96);
  if (v42 != 255)
  {
    sub_1AAD31A5C(*(v41 + 11), v42 & 1);
  }

  sub_1AAD31A5C(*(v41 + 13), v41[112]);

  return MEMORY[0x1EEE6BDD0](v0, v33 + 113, v46 | v9 | 7);
}

uint64_t sub_1AAD32920()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v2) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (*(*v4 + 64) + v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v6;
  sub_1AAD04750(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16));

  v9 = v8 + v4[13];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v11 = sub_1AAF8CB94();
          v12 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v11 - 8) + 8))(v9 + *(TupleTypeMetadata3 + 48), v11);
          (*(*(v12 - 8) + 8))(v9 + *(TupleTypeMetadata3 + 64), v12);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(*(v1 - 8) + 8);
      v14(v9, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v14(v9 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v9, v1);
  }

LABEL_13:
  v16 = v0 + v7;
  v17 = *(v0 + v7 + 96);
  if (v17 != 255)
  {
    sub_1AAD31A5C(*(v16 + 88), v17 & 1);
  }

  sub_1AAD31A5C(*(v16 + 104), *(v16 + 112));

  return MEMORY[0x1EEE6BDD0](v0, v7 + 114, v5 | 7);
}

uint64_t sub_1AAD32C14()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v2) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 73) & ~v5;
  v7 = (*(*v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v6;
  sub_1AAD04750(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16));

  v9 = v8 + v4[13];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v11 = sub_1AAF8CB94();
          v12 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v11 - 8) + 8))(v9 + *(TupleTypeMetadata3 + 48), v11);
          (*(*(v12 - 8) + 8))(v9 + *(TupleTypeMetadata3 + 64), v12);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(*(v1 - 8) + 8);
      v14(v9, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v14(v9 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v9, v1);
  }

LABEL_13:
  v16 = v0 + v7;
  v17 = *(v0 + v7 + 96);
  if (v17 != 255)
  {
    sub_1AAD31A5C(*(v16 + 88), v17 & 1);
  }

  sub_1AAD31A5C(*(v16 + 104), *(v16 + 112));

  return MEMORY[0x1EEE6BDD0](v0, v7 + 114, v5 | 7);
}

uint64_t sub_1AAD32F08()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v2);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = (v5 + 48) & ~v5;
  v8 = (v6 + v5 + v7) & ~v5;
  v9 = v0 + v7;
  sub_1AAD04750(*(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16));

  v10 = v9 + *(v4 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v29 = v8;
          v12 = sub_1AAF8CB94();
          v28 = v6;
          v13 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v12 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 48), v12);
          v15 = *(*(v13 - 8) + 8);
          v16 = v10 + *(TupleTypeMetadata3 + 64);
          v17 = v13;
          v6 = v28;
          v8 = v29;
          v15(v16, v17);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v8;
      v18 = *(*(v1 - 8) + 8);
      v18(v10, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v18(v10 + *(TupleTypeMetadata2 + 48), v1);
      v8 = v30;
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v10, v1);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v8), *(v0 + v8 + 8), *(v0 + v8 + 16));

  v20 = v0 + v8 + *(v4 + 44);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v21 != 3)
      {
        if (v21 == 4)
        {

          sub_1AAF90774();
          v22 = sub_1AAF8CB94();
          v23 = sub_1AAF8CBA4();
          v24 = swift_getTupleTypeMetadata3();
          (*(*(v22 - 8) + 8))(v20 + *(v24 + 48), v22);
          (*(*(v23 - 8) + 8))(v20 + *(v24 + 64), v23);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v25 = *(*(v1 - 8) + 8);
      v25(v20, v1);
      v26 = swift_getTupleTypeMetadata2();
      v25(v20 + *(v26 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v20, v1);
  }

LABEL_25:

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v5 | 7);
}

uint64_t sub_1AAD333D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v2);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = (v5 + 73) & ~v5;
  v8 = (v6 + v5 + v7) & ~v5;
  v9 = v0 + v7;
  sub_1AAD04750(*(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16));

  v10 = v9 + *(v4 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v29 = v8;
          v12 = sub_1AAF8CB94();
          v28 = v6;
          v13 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v12 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 48), v12);
          v15 = *(*(v13 - 8) + 8);
          v16 = v10 + *(TupleTypeMetadata3 + 64);
          v17 = v13;
          v6 = v28;
          v8 = v29;
          v15(v16, v17);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v8;
      v18 = *(*(v1 - 8) + 8);
      v18(v10, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v18(v10 + *(TupleTypeMetadata2 + 48), v1);
      v8 = v30;
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v10, v1);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v8), *(v0 + v8 + 8), *(v0 + v8 + 16));

  v20 = v0 + v8 + *(v4 + 44);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v21 != 3)
      {
        if (v21 == 4)
        {

          sub_1AAF90774();
          v22 = sub_1AAF8CB94();
          v23 = sub_1AAF8CBA4();
          v24 = swift_getTupleTypeMetadata3();
          (*(*(v22 - 8) + 8))(v20 + *(v24 + 48), v22);
          (*(*(v23 - 8) + 8))(v20 + *(v24 + 64), v23);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v25 = *(*(v1 - 8) + 8);
      v25(v20, v1);
      v26 = swift_getTupleTypeMetadata2();
      v25(v20 + *(v26 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v20, v1);
  }

LABEL_25:

  return MEMORY[0x1EEE6BDD0](v0, v8 + v6, v5 | 7);
}

uint64_t sub_1AAD33894()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v2) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (((((*(*v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v6;
  sub_1AAD04750(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16));

  v9 = v8 + v4[13];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v11 = sub_1AAF8CB94();
          v12 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v11 - 8) + 8))(v9 + *(TupleTypeMetadata3 + 48), v11);
          (*(*(v12 - 8) + 8))(v9 + *(TupleTypeMetadata3 + 64), v12);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(*(v1 - 8) + 8);
      v14(v9, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v14(v9 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v9, v1);
  }

LABEL_13:

  v16 = v0 + v7;
  v17 = *(v0 + v7 + 96);
  if (v17 != 255)
  {
    sub_1AAD31A5C(*(v16 + 88), v17 & 1);
  }

  sub_1AAD31A5C(*(v16 + 104), *(v16 + 112));

  return MEMORY[0x1EEE6BDD0](v0, v7 + 114, v5 | 7);
}

uint64_t sub_1AAD33BB0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v2) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 64) & ~v5;
  v7 = (*(*v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = v0 + v6;
  sub_1AAD04750(*v8, *(v8 + 8), *(v8 + 16));

  v9 = v8 + v4[13];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v11 = sub_1AAF8CB94();
          v12 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v11 - 8) + 8))(v9 + *(TupleTypeMetadata3 + 48), v11);
          (*(*(v12 - 8) + 8))(v9 + *(TupleTypeMetadata3 + 64), v12);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(*(v1 - 8) + 8);
      v14(v9, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v14(v9 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v9, v1);
  }

LABEL_13:
  v16 = v0 + v7;
  v17 = *(v0 + v7 + 96);
  if (v17 != 255)
  {
    sub_1AAD31A5C(*(v16 + 88), v17 & 1);
  }

  sub_1AAD31A5C(*(v16 + 104), *(v16 + 112));

  return MEMORY[0x1EEE6BDD0](v0, v7 + 114, v5 | 7);
}

uint64_t sub_1AAD33EB4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v2);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = (v5 + 48) & ~v5;
  v8 = (v6 + v5 + v7) & ~v5;
  v9 = v0 + v7;
  sub_1AAD04750(*(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16));

  v10 = v9 + *(v4 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v29 = v8;
          v12 = sub_1AAF8CB94();
          v28 = v6;
          v13 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v12 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 48), v12);
          v15 = *(*(v13 - 8) + 8);
          v16 = v10 + *(TupleTypeMetadata3 + 64);
          v17 = v13;
          v6 = v28;
          v8 = v29;
          v15(v16, v17);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v8;
      v18 = *(*(v1 - 8) + 8);
      v18(v10, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v18(v10 + *(TupleTypeMetadata2 + 48), v1);
      v8 = v30;
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v10, v1);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v8), *(v0 + v8 + 8), *(v0 + v8 + 16));

  v20 = v0 + v8 + *(v4 + 44);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v21 != 3)
      {
        if (v21 == 4)
        {

          sub_1AAF90774();
          v22 = sub_1AAF8CB94();
          v23 = sub_1AAF8CBA4();
          v24 = swift_getTupleTypeMetadata3();
          (*(*(v22 - 8) + 8))(v20 + *(v24 + 48), v22);
          (*(*(v23 - 8) + 8))(v20 + *(v24 + 64), v23);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v25 = *(*(v1 - 8) + 8);
      v25(v20, v1);
      v26 = swift_getTupleTypeMetadata2();
      v25(v20 + *(v26 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v20, v1);
  }

LABEL_25:

  return MEMORY[0x1EEE6BDD0](v0, ((((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_1AAD34398()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v2);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = (v5 + 64) & ~v5;
  v8 = (v6 + v5 + v7) & ~v5;

  v9 = v0 + v7;
  sub_1AAD04750(*v9, *(v9 + 8), *(v9 + 16));

  v10 = v9 + *(v4 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v29 = v8;
          v12 = sub_1AAF8CB94();
          v28 = v6;
          v13 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v12 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 48), v12);
          v15 = *(*(v13 - 8) + 8);
          v16 = v10 + *(TupleTypeMetadata3 + 64);
          v17 = v13;
          v6 = v28;
          v8 = v29;
          v15(v16, v17);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v8;
      v18 = *(*(v1 - 8) + 8);
      v18(v10, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v18(v10 + *(TupleTypeMetadata2 + 48), v1);
      v8 = v30;
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v10, v1);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v8), *(v0 + v8 + 8), *(v0 + v8 + 16));

  v20 = v0 + v8 + *(v4 + 44);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v21 != 3)
      {
        if (v21 == 4)
        {

          sub_1AAF90774();
          v22 = sub_1AAF8CB94();
          v23 = sub_1AAF8CBA4();
          v24 = swift_getTupleTypeMetadata3();
          (*(*(v22 - 8) + 8))(v20 + *(v24 + 48), v22);
          (*(*(v23 - 8) + 8))(v20 + *(v24 + 64), v23);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v25 = *(*(v1 - 8) + 8);
      v25(v20, v1);
      v26 = swift_getTupleTypeMetadata2();
      v25(v20 + *(v26 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v20, v1);
  }

LABEL_25:

  return MEMORY[0x1EEE6BDD0](v0, v8 + v6, v5 | 7);
}

uint64_t sub_1AAD3487C()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD34A3C()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[6];
  v3 = v0[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 64) & ~v7;
  v9 = *(*v6 + 64);
  v31 = v3;
  v10 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v2, v3);
  v32 = *(*(v10 - 8) + 80);
  v33 = *(*(v10 - 8) + 64);
  v11 = (v8 + v9 + v32) & ~v32;
  v12 = v0 + v8;
  sub_1AAD04750(*v12, *(v12 + 1), v12[16]);

  v13 = &v12[v6[13]];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v15 = sub_1AAF8CB94();
          v16 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v15 - 8) + 8))(&v13[*(TupleTypeMetadata3 + 48)], v15);
          (*(*(v16 - 8) + 8))(&v13[*(TupleTypeMetadata3 + 64)], v16);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(*(v1 - 8) + 8);
      v18(v13, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v18(&v13[*(TupleTypeMetadata2 + 48)], v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v13, v1);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v11), *(v0 + v11 + 8), *(v0 + v11 + 16));

  v20 = v0 + v11 + *(v10 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v2, v31);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v21 != 3)
      {
        if (v21 == 4)
        {

          sub_1AAF90774();
          v22 = sub_1AAF8CB94();
          v23 = v7;
          v24 = sub_1AAF8CBA4();
          v25 = swift_getTupleTypeMetadata3();
          (*(*(v22 - 8) + 8))(&v20[*(v25 + 48)], v22);
          v26 = *(*(v24 - 8) + 8);
          v27 = v24;
          v7 = v23;
          v26(&v20[*(v25 + 64)], v27);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v28 = *(*(v2 - 8) + 8);
      v28(v20, v2);
      v29 = swift_getTupleTypeMetadata2();
      v28(&v20[*(v29 + 48)], v2);
    }
  }

  else
  {
    (*(*(v2 - 8) + 8))(v20, v2);
  }

LABEL_25:

  return MEMORY[0x1EEE6BDD0](v0, v11 + v33, v7 | v32 | 7);
}

uint64_t sub_1AAD34F7C()
{
  v1 = v0[3];
  v44 = v1;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[7];
  v6 = v0[8];
  v5 = v0[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v4) - 8);
  v52 = *(*v8 + 80);
  v9 = (v52 + 80) & ~v52;
  v10 = *(*v8 + 64);
  v45 = v6;
  v46 = v3;
  v11 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v6);
  v51 = *(*(v11 - 8) + 80);
  v12 = (v9 + v10 + v51) & ~v51;
  v13 = *(*(v11 - 8) + 64);
  v50 = v2;
  v48 = v5;
  v14 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v2, v5);
  v49 = *(*(v14 - 8) + 64);
  v15 = *(*(v14 - 8) + 80);
  v16 = v12 + v13 + v15;
  v53 = v0;
  v17 = v0 + v9;
  sub_1AAD04750(*v17, *(v17 + 1), v17[16]);

  v18 = &v17[v8[13]];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v44, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = v14;
  v20 = v11;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v21 = sub_1AAF8CB94();
          v22 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v21 - 8) + 8))(&v18[*(TupleTypeMetadata3 + 48)], v21);
          (*(*(v22 - 8) + 8))(&v18[*(TupleTypeMetadata3 + 64)], v22);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *(*(v44 - 8) + 8);
      v24(v18, v44);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v24(&v18[*(TupleTypeMetadata2 + 48)], v44);
    }
  }

  else
  {
    (*(*(v44 - 8) + 8))(v18, v44);
  }

LABEL_13:
  v26 = v16 & ~v15;
  v27 = v15;
  v28 = v53 + v12;
  sub_1AAD04750(*v28, *(v28 + 1), v28[16]);

  v29 = &v28[*(v20 + 44)];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v46, v45);
  v30 = swift_getEnumCaseMultiPayload();
  if (v30 > 1)
  {
    if (v30 != 2)
    {
      if (v30 != 3)
      {
        if (v30 == 4)
        {

          sub_1AAF90774();
          v31 = sub_1AAF8CB94();
          v32 = sub_1AAF8CBA4();
          v33 = swift_getTupleTypeMetadata3();
          (*(*(v31 - 8) + 8))(&v29[*(v33 + 48)], v31);
          (*(*(v32 - 8) + 8))(&v29[*(v33 + 64)], v32);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v30)
  {
    if (v30 == 1)
    {
      v34 = *(*(v46 - 8) + 8);
      v34(v29, v46);
      v35 = swift_getTupleTypeMetadata2();
      v34(&v29[*(v35 + 48)], v46);
    }
  }

  else
  {
    (*(*(v46 - 8) + 8))(v29, v46);
  }

LABEL_25:
  sub_1AAD04750(*(v53 + v26), *(v53 + v26 + 8), *(v53 + v26 + 16));

  v36 = v53 + v26 + *(v47 + 44);
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v50, v48);
  v37 = swift_getEnumCaseMultiPayload();
  if (v37 > 1)
  {
    if (v37 != 2)
    {
      if (v37 != 3)
      {
        if (v37 == 4)
        {

          sub_1AAF90774();
          v38 = sub_1AAF8CB94();
          v39 = sub_1AAF8CBA4();
          v40 = swift_getTupleTypeMetadata3();
          (*(*(v38 - 8) + 8))(&v36[*(v40 + 48)], v38);
          (*(*(v39 - 8) + 8))(&v36[*(v40 + 64)], v39);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v37)
  {
    if (v37 == 1)
    {
      v41 = *(*(v50 - 8) + 8);
      v41(v36, v50);
      v42 = swift_getTupleTypeMetadata2();
      v41(&v36[*(v42 + 48)], v50);
    }
  }

  else
  {
    (*(*(v50 - 8) + 8))(v36, v50);
  }

LABEL_37:

  return MEMORY[0x1EEE6BDD0](v53, v26 + v49, v52 | v51 | v27 | 7);
}

uint64_t sub_1AAD35768()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD357C0(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1AAD357D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1AAD357F0()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD359A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PointsRenderer(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD35A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PointsRenderer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD35A8C()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD35C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectanglesRenderer(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD35CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectanglesRenderer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD35D20()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD35ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RulesRenderer(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD35F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RulesRenderer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD35FB4()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD3616C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v2) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = v6 + *(*v4 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0 + v6;
  sub_1AAD04750(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16));

  v10 = v9 + v4[13];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v12 = sub_1AAF8CB94();
          v13 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v12 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 48), v12);
          (*(*(v13 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 64), v13);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(*(v1 - 8) + 8);
      v15(v10, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v15(v10 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v10, v1);
  }

LABEL_13:
  v17 = v0 + v8;
  v18 = *(v0 + v8 + 96);
  if (v18 != 255)
  {
    sub_1AAD31A5C(*(v17 + 88), v18 & 1);
  }

  sub_1AAD31A5C(*(v17 + 104), *(v17 + 112));
  v19 = v0 + ((v7 + 127) & 0xFFFFFFFFFFFFFFF8);
  v20 = *(v19 + 96);
  if (v20 != 255)
  {
    sub_1AAD31A5C(*(v19 + 88), v20 & 1);
  }

  sub_1AAD31A5C(*(v19 + 104), *(v19 + 112));

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 247) & 0xFFFFFFFFFFFFFFF8) + 9, v5 | 7);
}

uint64_t sub_1AAD364A0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = (type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v1, v2) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = v6 + *(*v4 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0 + v6;
  sub_1AAD04750(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16));

  v10 = v9 + v4[13];
  type metadata accessor for PlottableProjection.Storage(0, AssociatedTypeWitness, v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v12 = sub_1AAF8CB94();
          v13 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v12 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 48), v12);
          (*(*(v13 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 64), v13);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(*(v1 - 8) + 8);
      v15(v10, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v15(v10 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v10, v1);
  }

LABEL_13:
  v17 = v0 + v8;
  v18 = *(v0 + v8 + 96);
  if (v18 != 255)
  {
    sub_1AAD31A5C(*(v17 + 88), v18 & 1);
  }

  sub_1AAD31A5C(*(v17 + 104), *(v17 + 112));
  v19 = v0 + ((v7 + 127) & 0xFFFFFFFFFFFFFFF8);
  v20 = *(v19 + 96);
  if (v20 != 255)
  {
    sub_1AAD31A5C(*(v19 + 88), v20 & 1);
  }

  sub_1AAD31A5C(*(v19 + 104), *(v19 + 112));

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 247) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_1AAD3682C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

_WORD *sub_1AAD36888@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1AAD368BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD368F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD3692C()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AAD36964()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD369CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD36A1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD36A58(void *a1)
{
  sub_1AAF8DF74();
  sub_1AACAA3E4();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD36B48()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 15);
}

uint64_t sub_1AAD36B90()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD36BCC(uint64_t *a1)
{
  sub_1AACD21D4(255, &qword_1EB426788, &type metadata for ChartSelectionConfiguration, MEMORY[0x1E6980B20]);
  sub_1AAF8DF74();
  sub_1AAE99068();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD36C5C(uint64_t *a1)
{
  sub_1AACD21D4(255, &qword_1EB426788, &type metadata for ChartSelectionConfiguration, MEMORY[0x1E6980B20]);
  sub_1AAF8DF74();
  sub_1AAE99178(255);
  sub_1AAF8DF74();
  sub_1AAE99068();
  swift_getWitnessTable();
  sub_1AAE991F4(&qword_1EB4267A0, sub_1AAE99178, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1AAD36D8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1AAD36DC4()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1AAE9F794(0, &qword_1EB4267F0, sub_1AAE9F48C, MEMORY[0x1E69E8300]);
  }
}

void sub_1AAD36E30()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1AAE9F794(0, &qword_1EB4267F8, sub_1AAE9F600, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1AAD36E9C()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AAD36ED4()
{

  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1AAD36F20(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1AAD37154()
{
  sub_1AACE56EC(v0[7], v0[8], v0[9], v0[10], v0[11]);

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1AAD37194()
{

  if (!*(v0 + 330) && (*(v0 + 329) != 1 || *(v0 + 328) <= 2u))
  {
    sub_1AACB634C((v0 + 288));
  }

  return MEMORY[0x1EEE6BDD0](v0, 331, 7);
}

uint64_t sub_1AAD3720C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD37244()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD3727C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD3733C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD37384()
{
  sub_1AAEBF458(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1AAD12C64(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1AAD373D0()
{
  v1 = sub_1AAF8DF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + v5;

  if (*(v0 + v5 + 32))
  {
  }

  v7 = *(v6 + 64);
  if (v7 != 255)
  {
    sub_1AACE40AC(*(v6 + 56), v7 & 1);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((((v5 + 111) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1AAD374C4()
{
  v1 = sub_1AAF8DF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + v5;

  if (*(v0 + v5 + 32))
  {
  }

  v7 = *(v6 + 64);
  if (v7 != 255)
  {
    sub_1AACE40AC(*(v6 + 56), v7 & 1);
  }

  v8 = (((v5 + 111) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1AAEBF458(*(v0 + v8 + 16), *(v0 + v8 + 24), *(v0 + v8 + 32), *(v0 + v8 + 40), *(v0 + v8 + 48));
  sub_1AAD12C64(*(v0 + v8 + 64), *(v0 + v8 + 72), *(v0 + v8 + 80));

  return MEMORY[0x1EEE6BDD0](v0, v8 + 81, v3 | 7);
}

uint64_t sub_1AAD375CC()
{
  v1 = sub_1AAF8DF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 48))
  {
  }

  v5 = *(v0 + 80);
  if (v5 != 255)
  {
    sub_1AACE40AC(*(v0 + 72), v5 & 1);
  }

  v6 = (v3 + 120) & ~v3;
  v7 = (v6 + v4) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 24, v3 | 7);
}

uint64_t sub_1AAD376F8()
{

  if (!*(v0 + 330) && (*(v0 + 329) != 1 || *(v0 + 328) <= 2u))
  {
    sub_1AACB634C((v0 + 288));
  }

  return MEMORY[0x1EEE6BDD0](v0, 331, 7);
}

uint64_t sub_1AAD37770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AxisMarkValues(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1AAD37830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AxisMarkValues(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AAD378F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AAECDDB8(0, &qword_1ED9AF540, sub_1AADFACDC, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1AAECDDB8(0, qword_1ED9AF548, sub_1AADFAC74, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1AAD37A48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1AAECDDB8(0, &qword_1ED9AF540, sub_1AADFACDC, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1AAECDDB8(0, qword_1ED9AF548, sub_1AADFAC74, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1AAD37BA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AAF8D974();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AAD37C50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1AAF8D974();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD37D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AGChartRendererContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1AAD37E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AGChartRendererContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AAD37EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AGChartRendererContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AAD37F98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AGChartRendererContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AAD38054(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AGChartRendererContent(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AAD38100(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AGChartRendererContent(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD381A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttributeGraphBasedChartsModifier(255, a1[1], a1[3], a4);
  sub_1AAF8DF74();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD3823C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1AACAE1F4(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 56);

    return v10(v11, a2, v9);
  }
}

void *sub_1AAD3831C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1AACAE1F4(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 56);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAD383F0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DisplayListProxyViewContainer(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1AAD3849C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DisplayListProxyViewContainer(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD38548()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AAD38588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 44);
  v6 = sub_1AAF8E244();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AAD38600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 44);
  v7 = sub_1AAF8E244();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AAD3867C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AAF8E244();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_1AAD38728(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AAF8E244();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD387CC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AAF8E244();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ChartDisplayList.ClipRect(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1AAD388F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1AAF8E244();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ChartDisplayList.ClipRect(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AAD38A14()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AAD38A5C()
{

  if (*(v0 + 104))
  {
    sub_1AACB634C((v0 + 80));
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1AAD38AAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1AAD38AF4()
{

  if (*(v0 + 104))
  {
    sub_1AACB634C((v0 + 64));
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 146, 7);
}

uint64_t sub_1AAD38B58()
{

  if (*(v0 + 104))
  {
    sub_1AACB634C((v0 + 64));
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 186, 7);
}

uint64_t sub_1AAD38BC4()
{

  if (*(v0 + 120))
  {
    sub_1AACB634C((v0 + 80));
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 186, 7);
}

uint64_t sub_1AAD38C28()
{

  sub_1AACB634C((v0 + 80));
  if (*(v0 + 160))
  {
    sub_1AACB634C((v0 + 120));
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 186, 7);
}

uint64_t sub_1AAD38C8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AAD38CE8()
{
  v1 = sub_1AAF8D954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AAD38DB0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 65) = a2;
  return result;
}

uint64_t sub_1AAD38DDC(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_1AAD38E08()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD38E40()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD38EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ChartEnvironmentValues(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AAD38F8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ChartEnvironmentValues(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD39030()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD39068()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD390A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD390FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ChartModifiedContent(255, *(v4 + 16), *(v4 + 24), a4);
  v5 = sub_1AAF8D954();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(v6 + 64);
  (*(v6 + 8))(v4 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v4, v8 + v9, v7 | 7);
}

uint64_t sub_1AAD39194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAF8EFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 72));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1AAD39254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AAF8EFE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 72)) = (a2 - 1);
  return result;
}

uint64_t sub_1AAD39330(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AAF8E4B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1AAD393DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AAF8E4B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD39484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BuilderTuple(255, *(a3 + 16), *(a3 + 24), a4);
  v7 = sub_1AAF8D954();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = type metadata accessor for _ChartContentInputs(0);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 44);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 52));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1AAD395A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for BuilderTuple(255, *(a4 + 16), *(a4 + 24), a4);
  v8 = sub_1AAF8D954();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for _ChartContentInputs(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 52)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 44);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AAD396B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAF8F194();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1AAF8E3C4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AAD397A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1AAF8F194();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1AAF8E3C4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1AAD398A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAF8E134();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for ChartContainerValues(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1AAD399C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AAF8E134();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for ChartContainerValues(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1AAD39AEC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1AACBBDB4(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 72);

    return v10(v11, a2, v9);
  }
}

void *sub_1AAD39BCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1AACBBDB4(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 72);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAD39CA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD39CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8E4B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD39D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8E4B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD39DEC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AAF8DC74();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1AAD39E98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AAF8DC74();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD39FBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD3A00C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD3A044@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1AAF70898(*(a1 + a2 - 24), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

__n128 sub_1AAD3A088(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1AAD3A09C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AAD3A0D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD3A10C()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AAD3A14C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for CollectedChartContent(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1AAD3A208(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  result = type metadata accessor for CollectedChartContent(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AAD3A2C0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1AAF26348(0, &qword_1ED9B1E50, a3, type metadata accessor for ChartDisplayListBuilder, MEMORY[0x1E6981E98]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1AAD3A3A0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1AAF26348(0, &qword_1ED9B1E50, a3, type metadata accessor for ChartDisplayListBuilder, MEMORY[0x1E6981E98]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAD3A474()
{

  if (*(v0 + 96))
  {
    sub_1AACB634C((v0 + 72));
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AAD3A4BC()
{

  if (*(v0 + 104))
  {
    sub_1AACB634C((v0 + 80));
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1AAD3A50C()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1AAD3A554()
{

  if (*(v0 + 104))
  {
    sub_1AACB634C((v0 + 64));
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 146, 7);
}

uint64_t sub_1AAD3A5B8()
{

  if (*(v0 + 104))
  {
    sub_1AACB634C((v0 + 64));
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 186, 7);
}

uint64_t sub_1AAD3A624()
{

  if (*(v0 + 120))
  {
    sub_1AACB634C((v0 + 80));
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 186, 7);
}

uint64_t sub_1AAD3A688()
{

  sub_1AACB634C((v0 + 80));
  if (*(v0 + 160))
  {
    sub_1AACB634C((v0 + 120));
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 186, 7);
}

uint64_t sub_1AAD3A6EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AAD3A768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1AAF8DF14();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AAD3A7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1AAF8DF14();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AAD3A85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1AAF8DF14();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AAD3A8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1AAF8DF14();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AAD3A950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD3A9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD3AA38(__n128 a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    sub_1AAD04750(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  }

  sub_1AAD3D014(*(v1 + 48), *(v1 + 56), *(v1 + 64));
LABEL_5:
  v3 = *(v1 + 96);
  if (v3)
  {
    if (v3 == 1)
    {
      goto LABEL_9;
    }

    sub_1AAD04750(*(v1 + 72), *(v1 + 80), *(v1 + 88));
  }

  sub_1AAD2C0B8(*(v1 + 104), *(v1 + 112), *(v1 + 120));
LABEL_9:
  v4 = *(v1 + 152);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_13;
    }

    sub_1AAD04750(*(v1 + 128), *(v1 + 136), *(v1 + 144));
  }

  sub_1AAF3A2D0(*(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200));
LABEL_13:
  v5 = *(v1 + 232);
  if (v5)
  {
    if (v5 == 1)
    {
      goto LABEL_21;
    }

    sub_1AAD04750(*(v1 + 208), *(v1 + 216), *(v1 + 224));
  }

  v6 = *(v1 + 280);
  if (v6 == 2 || v6 == 1)
  {
  }

  else if (!*(v1 + 280))
  {
    sub_1AACB634C((v1 + 240));
  }

LABEL_21:
  v7 = *(v1 + 336);
  if (v7 <= 0xFB)
  {
    sub_1AAF3A300(*(v1 + 288), *(v1 + 296), *(v1 + 304), *(v1 + 312), *(v1 + 320), *(v1 + 328), v7);
  }

  v8 = *(v1 + 392);
  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_27;
    }

    sub_1AAD04750(*(v1 + 368), *(v1 + 376), *(v1 + 384));
  }

  sub_1AAF3A35C(*(v1 + 400), *(v1 + 408), *(v1 + 416), *(v1 + 424), *(v1 + 432), *(v1 + 440), *(v1 + 448), *(v1 + 456), *(v1 + 464), *(v1 + 472));
LABEL_27:
  v9 = *(v1 + 504);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_31;
    }

    sub_1AAD04750(*(v1 + 480), *(v1 + 488), *(v1 + 496));
  }

  sub_1AAE0FD00(*(v1 + 512), *(v1 + 520), *(v1 + 528));
LABEL_31:
  v10 = *(v1 + 560);
  if (v10)
  {
    if (v10 == 1)
    {
      goto LABEL_35;
    }

    sub_1AAD04750(*(v1 + 536), *(v1 + 544), *(v1 + 552));
  }

  sub_1AAD3D014(*(v1 + 568), *(v1 + 576), *(v1 + 584));
LABEL_35:
  v11 = *(v1 + 616);
  if (v11)
  {
    if (v11 == 1)
    {
      goto LABEL_39;
    }

    sub_1AAD04750(*(v1 + 592), *(v1 + 600), *(v1 + 608));
  }

  sub_1AAE0FE08(*(v1 + 624), *(v1 + 632), *(v1 + 640), *(v1 + 648), *(v1 + 656));
LABEL_39:
  v12 = *(v1 + 688);
  if (v12)
  {
    if (v12 == 1)
    {
      goto LABEL_43;
    }

    sub_1AAD04750(*(v1 + 664), *(v1 + 672), *(v1 + 680));
  }

  sub_1AAE0FE08(*(v1 + 696), *(v1 + 704), *(v1 + 712), *(v1 + 720), *(v1 + 728));
LABEL_43:

  return MEMORY[0x1EEE6BDD0](v1, 729, 7);
}

uint64_t sub_1AAD3ACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v5 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for AnyConcreteScale(0, v5, a3, a4) - 8);
  v39 = *(v9 + 80);
  v10 = (v39 + 48) & ~v39;
  v11 = *(v9 + 64);
  v33 = v8;
  v34 = v6;
  v12 = type metadata accessor for PlottableProjection(0, v6, v7, v8);
  v37 = *(*(v12 - 8) + 80);
  v38 = *(*(v12 - 8) + 64);
  v13 = (v10 + v11 + v37) & ~v37;
  v14 = *(v5 - 8);
  v35 = *(v14 + 80);
  v36 = *(v14 + 64);
  v15 = v4 + v10;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v18 = MEMORY[0x1E69E6158];
  }

  else
  {
    v18 = MEMORY[0x1E69E63B0];
  }

  v19 = type metadata accessor for ConcreteScale(0, v18, v5, v17);
  v20 = v19[9];
  if (!(*(v14 + 48))(&v15[v20], 1, v5))
  {
    (*(v14 + 8))(&v15[v20], v5);
  }

  if (*&v15[v19[10]])
  {
  }

  v21 = &v15[v19[12]];
  v22 = v21[8];
  v23 = v13;
  if (v22 != 255)
  {
    sub_1AACE40AC(*v21, v22 & 1);
  }

  sub_1AAD04750(*(v4 + v13), *(v4 + v13 + 8), *(v4 + v13 + 16));

  v24 = v4 + v13 + *(v12 + 44);
  type metadata accessor for PlottableProjection.Storage(0, v34, v7, v33);
  v25 = swift_getEnumCaseMultiPayload();
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      if (v25 != 3)
      {
        if (v25 == 4)
        {

          sub_1AAF90774();
          v26 = sub_1AAF8CB94();
          v27 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v26 - 8) + 8))(&v24[*(TupleTypeMetadata3 + 48)], v26);
          (*(*(v27 - 8) + 8))(&v24[*(TupleTypeMetadata3 + 64)], v27);
        }

        goto LABEL_22;
      }
    }

    goto LABEL_22;
  }

  if (v25)
  {
    if (v25 == 1)
    {
      v29 = *(*(v7 - 8) + 8);
      v29(v24, v7);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v29(&v24[*(TupleTypeMetadata2 + 48)], v7);
    }
  }

  else
  {
    (*(*(v7 - 8) + 8))(v24, v7);
  }

LABEL_22:
  v31 = (v23 + v38 + v35) & ~v35;
  (*(v14 + 8))(v4 + v31, v5);

  return MEMORY[0x1EEE6BDD0](v4, v31 + v36, v39 | v37 | v35 | 7);
}

uint64_t sub_1AAD3B130()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1AAD3B168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 != 1)
  {
    v8 = a7;
    sub_1AADA61DC(a1, a2, a3, a4);

    sub_1AAD3CEFC(a5, a6, v8);
  }
}

uint64_t sub_1AAD3B1C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1AAF3A170(v3 + 16, a2, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
}

uint64_t sub_1AAD3B224()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD3B25C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = (type metadata accessor for PlottableProjection(0, v2, v1, v3) - 8);
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = (v5 + 40) & ~v5;
  sub_1AAD04750(*(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16));

  v8 = v0 + v7 + v4[13];
  type metadata accessor for PlottableProjection.Storage(0, v2, v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v10 = sub_1AAF8CB94();
          v11 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v10 - 8) + 8))(&v8[*(TupleTypeMetadata3 + 48)], v10);
          (*(*(v11 - 8) + 8))(&v8[*(TupleTypeMetadata3 + 64)], v11);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(*(v1 - 8) + 8);
      v13(v8, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v13(&v8[*(TupleTypeMetadata2 + 48)], v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v8, v1);
  }

LABEL_13:

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v5 | 7);
}

uint64_t sub_1AAD3B580()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD3B6BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AAF8E244();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[11];
  }

  else
  {
    v10 = type metadata accessor for SgShapeStyle(0);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[14]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[12];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_1AAD3B7D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1AAF8E244();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
  }

  else
  {
    result = type metadata accessor for SgShapeStyle(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[14]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[12];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1AAD3B8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1AAF8E244();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1AAD3BA34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1AAF8E244();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AAD3BB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for SgShapeStyle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AAD3BC2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
  }

  else
  {
    v7 = type metadata accessor for SgShapeStyle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD3BCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAF8E244();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SgShapeStyle(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1AAD3BDF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1AAF8E244();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for SgShapeStyle(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 44);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1AAD3BEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *(a1 + 40);
    if (v4 > 6)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for SgShapeStyle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AAD3BF94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *(result + 40) = -a2;
  }

  else
  {
    v7 = type metadata accessor for SgShapeStyle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD3C034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = type metadata accessor for SgShapeStyle(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AAD3C0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = type metadata accessor for SgShapeStyle(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AAD3C59C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1AACDBA18(v3 + 184, a2, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
}

uint64_t sub_1AAD3C610@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1AACDBA18(v3 + 128, a2, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
}

uint64_t sub_1AAD3C684@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1AACDBA18(v3 + 72, a2, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
}

uint64_t sub_1AAD3C6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1AAF8E244();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AAD3C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1AAF8E244();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AAD3C82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1AAD1A2F8(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AAD3C904(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 72) = a2;
  }

  else
  {
    sub_1AAD1A2F8(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAD3C9E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD3CA3C()
{
  if (*(v0 + 40))
  {
    sub_1AACB634C((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AAD3CA7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 98, 7);
}

__n128 sub_1AAD3CAFC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1AAD3CB10()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD3CBC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD3CC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AAD3CCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_1AAF8FAE4();
}

uint64_t sub_1AAD3CD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t getEnumTagSinglePayload for VisibleAxisResults(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VisibleAxisResults(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

double sub_1AAD3CEFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return result;
}

double sub_1AAD3CF1C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 113) = 0u;
  return result;
}

double sub_1AAD3CF48(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void *sub_1AAD3CF64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1AAD3CF74@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1AAD3CF90(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

double sub_1AAD3D014(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return result;
}

double sub_1AAD3D034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a4 != 1)
  {
    sub_1AADA6198(a1, a2, a3, a4);

    return sub_1AAD3D014(a5, a6, a7);
  }

  return result;
}

void BuilderConditional<>.body.getter()
{
  sub_1AAF902C4();
  __break(1u);
}

{
  sub_1AAF902C4();
  __break(1u);
}

uint64_t static BuilderConditional<>._makeChart3DContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a6;
  v36 = a5;
  v39 = a1;
  v49[4] = *MEMORY[0x1E69E9840];
  v42 = type metadata accessor for SetDependency(0) - 8;
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _Chart3DContentOutputs(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _Chart3DContentInputs(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = a3;
  v49[1] = a4;
  v49[2] = a5;
  v49[3] = a6;
  v19 = _s11Container3DVMa(0, v49);
  v40 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v36 - v20);
  v22 = type metadata accessor for AddPreference(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v48 = v24;
  sub_1AAF8E394();
  v25 = a7;
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v26 = sub_1AAF8E4B4();
  v27 = *(v26 - 8);
  (*(v27 + 24))(v25, v24, v26);
  sub_1AAD3FE38(v24, type metadata accessor for AddPreference);
  type metadata accessor for BuilderConditional(0, a3, a4, v28);
  LODWORD(v24) = sub_1AACBC3B4(v39);
  sub_1AAD3F894(a2, v18, type metadata accessor for _Chart3DContentInputs);
  v29 = v38;
  sub_1AAD3F894(v25, v38, type metadata accessor for _Chart3DContentOutputs);
  sub_1AAD3D5C4(v24, v18, v29, a3, a4, v36, v37, v21);
  v45 = type metadata accessor for BuilderConditional.Info(0, a3, a4, v30);
  v46 = v19;
  WitnessTable = swift_getWitnessTable();
  v31 = sub_1AAF8D1A4();
  sub_1AACBC418(v21, sub_1AAD3F8FC, v44, v19, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);
  LODWORD(a4) = v49[0];
  v33 = v41;
  (*(v27 + 16))(v41, v25, v26);
  v34 = v33 + *(v42 + 28);
  *v34 = a4;
  *(v34 + 4) = 0;
  v43 = v33;
  sub_1AAF8E484();
  (*(v40 + 8))(v21, v19);
  return sub_1AAD3FE38(v33, type metadata accessor for SetDependency);
}

id sub_1AAD3D5C4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _DWORD *a8@<X8>)
{
  *a8 = a1;
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  v11 = _s11Container3DVMa(0, v13);
  sub_1AAD40014(a2, a8 + v11[13], type metadata accessor for _Chart3DContentInputs);
  sub_1AAD40014(a3, a8 + v11[14], type metadata accessor for _Chart3DContentOutputs);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a8 + v11[15]) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static BuilderConditional<>._chart3DContentCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = static Chart3DContent._chart3DContentCount(inputs:)(a1, a2, a4);
  if ((v9 & 1) == 0)
  {
    v10 = result;
    v11 = result != static Chart3DContent._chart3DContentCount(inputs:)(a1, a3, a5);
    if ((v12 | v11))
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

uint64_t sub_1AAD3D6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for BuilderConditional(0, *(a1 + 16), *(a1 + 24), a2);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

uint64_t sub_1AAD3D788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v67 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for BuilderConditional.Info(0, v7, v8, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v53 - v15;
  v64 = sub_1AAF8FE74();
  v16 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  v26 = type metadata accessor for BuilderConditional(0, v7, v8, v25);
  v60 = *(v26 - 8);
  v61 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v65 = &v53 - v27;
  v58 = v5;
  sub_1AAD3D6FC(a1, v28, &v53 - v27);
  OutputValue = AGGraphGetOutputValue();
  v62 = a1;
  if (OutputValue)
  {
    (*(v10 + 16))(v24, OutputValue, v9);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v10 + 56))(v24, v30, 1, v9);
  v31 = *(v16 + 16);
  v66 = v24;
  v32 = v64;
  v31(v21, v24, v64);
  v33 = v16;
  v34 = *(v10 + 48);
  v35 = v34(v21, 1, v9);
  v63 = v33;
  if (v35 == 1)
  {
    (*(v33 + 8))(v21, v32);
  }

  else
  {
    v38 = sub_1AAE21158(v65, v9, v36, v37);
    v54 = *(v10 + 8);
    v55 = v10 + 8;
    v54(v21, v9);
    if (v38)
    {
      result = AGGraphGetOutputValue();
      if (result)
      {
        v40 = v56;
        (*(v10 + 16))(v56, result, v9);
        v42 = v60;
        v41 = v61;
        v43 = v65;
        v44 = (*(v60 + 24))(v40, v65, v61);
        MEMORY[0x1EEE9AC00](v44);
        *(&v53 - 2) = v62;
        *(&v53 - 1) = swift_getWitnessTable();
        sub_1AACBC418(v40, sub_1AAD401E0, (&v53 - 4), v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v45);
        (*(v63 + 8))(v66, v32);
        (*(v42 + 8))(v43, v41);
        return (v54)(v40, v9);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v31(v18, v66, v32);
  if (v34(v18, 1, v9) == 1)
  {
    v46 = v63;
    (*(v63 + 8))(v18, v32);
    v47 = v62;
  }

  else
  {
    v48 = v57;
    (*(v10 + 32))(v57, v18, v9);
    v47 = v62;
    sub_1AAD3DE04(v48, v62);
    (*(v10 + 8))(v48, v9);
    v46 = v63;
  }

  v49 = v59;
  v50 = v65;
  v51 = sub_1AAD3DF1C(v65, v47, v59);
  MEMORY[0x1EEE9AC00](v51);
  *(&v53 - 2) = v47;
  *(&v53 - 1) = swift_getWitnessTable();
  sub_1AACBC418(v49, sub_1AAD3FCA4, (&v53 - 4), v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v52);
  (*(v10 + 8))(v49, v9);
  (*(v46 + 8))(v66, v32);
  return (*(v60 + 8))(v50, v61);
}

uint64_t sub_1AAD3DE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetPreference(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 56);
  v8 = sub_1AAF8E4B4();
  (*(*(v8 - 8) + 16))(v6, v2 + v7, v8);
  v12 = v6;
  sub_1AAF8E484();
  sub_1AAD3FE38(v6, type metadata accessor for ResetPreference);
  type metadata accessor for BuilderConditional.Info(0, *(a2 + 16), *(a2 + 24), v9);
  return AGSubgraphInvalidate();
}

uint64_t sub_1AAD3DF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _Chart3DContentOutputs(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _Chart3DContentInputs(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = AGSubgraphGetGraph();
    v16 = AGSubgraphCreate();

    AGSubgraphAddChild();
    sub_1AAD3F894(v3 + *(a2 + 52), v12, type metadata accessor for _Chart3DContentInputs);
    sub_1AAD3F894(v3 + *(a2 + 56), v9, type metadata accessor for _Chart3DContentOutputs);
    AGGraphClearUpdate();
    v17 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    sub_1AAD3E128(a1, v14, v12, v9, v16, *(a2 + 16), *(a2 + 24), *(a2 + 32), a3, *(a2 + 40));
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    sub_1AAD3FE38(v9, type metadata accessor for _Chart3DContentOutputs);
    return sub_1AAD3FE38(v12, type metadata accessor for _Chart3DContentInputs);
  }

  return result;
}

id sub_1AAD3E128@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v85 = a8;
  v99 = a9;
  v100 = a5;
  v95 = a4;
  v91 = a3;
  LODWORD(v87) = a2;
  v83 = a10;
  v104 = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for BuilderConditional(0, a6, a7, a4);
  v96 = *(v13 - 8);
  v97 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v77 - v14;
  v92 = type metadata accessor for SetSource(0);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1AAF8D954();
  v86 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  v80 = *(a7 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for _Chart3DContentInputs(0);
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1AAF8D954();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - v22;
  v23 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for BuilderConditional.Storage(0, a6, a7, v27);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v77 - v30;
  v32 = type metadata accessor for _Chart3DContentOutputs(0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v89 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v29 + 16);
  v98 = a1;
  v35(v31, a1, v28, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = v80;
    v37 = *(v80 + 32);
    v77 = v20;
    v37(v20, v31, a7);
    nullsub_1();
    LODWORD(v101) = v38;
    MEMORY[0x1EEE9AC00](v38);
    *(&v77 - 4) = a7;
    v40 = type metadata accessor for BuilderConditional.FalseChild(0, a6, a7, v39);
    *(&v77 - 3) = v40;
    *(&v77 - 2) = swift_getWitnessTable();
    v41 = sub_1AAF8D1A4();
    v42 = MEMORY[0x1E69E73E0];
    v44 = sub_1AACBC418(&v101, sub_1AAD401F8, (&v77 - 6), v40, MEMORY[0x1E69E73E0], v41, MEMORY[0x1E69E7410], v43);
    v45 = v83;
    v87 = v16;
    v46 = v103;
    MEMORY[0x1EEE9AC00](v44);
    *(&v77 - 2) = a7;
    *(&v77 - 2) = v46;
    sub_1AACBC418(v20, sub_1AAD3FCF8, (&v77 - 4), a7, v42, MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v47);
    v48 = *(v88 + 24);
    v49 = v91;
    v50 = *(v91 + v48);
    v101 = 0;
    v102 = v50;
    sub_1AACBC63C();
    sub_1AAF8DC74();
    sub_1AAD3FD34(0, &qword_1EB422E70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for ContainerWith3DChildID);
    sub_1AAD3FD88();
    *(v49 + v48) = sub_1AAF8D194();
    v51 = v84;
    sub_1AACBC644(v46, v84);
    v52 = v90;
    sub_1AAD3F894(v49, v90, type metadata accessor for _Chart3DContentInputs);
    v53 = v89;
    (*(v45 + 32))(v51, v52, a7, v45);
    sub_1AAD3FE38(v52, type metadata accessor for _Chart3DContentInputs);
    (*(v86 + 8))(v51, v87);
    (*(v36 + 8))(v77, a7);
  }

  else
  {
    v78 = v23;
    (*(v23 + 32))(v26, v31, a6);
    nullsub_1();
    LODWORD(v101) = v54;
    MEMORY[0x1EEE9AC00](v54);
    *(&v77 - 4) = a6;
    v56 = type metadata accessor for BuilderConditional.TrueChild(0, a6, a7, v55);
    *(&v77 - 3) = v56;
    *(&v77 - 2) = swift_getWitnessTable();
    v57 = sub_1AAF8D1A4();
    v58 = MEMORY[0x1E69E73E0];
    v59 = MEMORY[0x1E69E7410];
    v61 = sub_1AACBC418(&v101, sub_1AAD401F8, (&v77 - 6), v56, MEMORY[0x1E69E73E0], v57, MEMORY[0x1E69E7410], v60);
    v62 = v103;
    MEMORY[0x1EEE9AC00](v61);
    *(&v77 - 2) = a6;
    *(&v77 - 2) = v62;
    sub_1AACBC418(v26, sub_1AAD40218, (&v77 - 4), a6, v58, MEMORY[0x1E69E6370], v59, v63);
    v64 = *(v88 + 24);
    v65 = v85;
    v66 = v91;
    v67 = *(v91 + v64);
    v101 = 1;
    v102 = v67;
    sub_1AACBC63C();
    sub_1AAF8DC74();
    sub_1AAD3FD34(0, &qword_1EB422E70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for ContainerWith3DChildID);
    sub_1AAD3FD88();
    *(v66 + v64) = sub_1AAF8D194();
    v68 = v79;
    sub_1AACBC644(v62, v79);
    v69 = v90;
    sub_1AAD3F894(v66, v90, type metadata accessor for _Chart3DContentInputs);
    v53 = v89;
    (*(v65 + 32))(v68, v69, a6, v65);
    sub_1AAD3FE38(v69, type metadata accessor for _Chart3DContentInputs);
    (*(v81 + 8))(v68, v82);
    (*(v78 + 8))(v26, a6);
  }

  v70 = sub_1AAF8E4B4();
  v71 = *(*(v70 - 8) + 16);
  v72 = v93;
  v71(v93, v95, v70);
  v73 = (v71)(v72 + *(v92 + 20), v53, v70);
  MEMORY[0x1EEE9AC00](v73);
  *(&v77 - 2) = v72;
  sub_1AAF8E484();
  sub_1AAD3FE38(v53, type metadata accessor for _Chart3DContentOutputs);
  sub_1AAD3FE38(v72, type metadata accessor for SetSource);
  v74 = v94;
  (*(v96 + 16))(v94, v98, v97);
  sub_1AAE213B8(v74, v100, a6, a7, v99);
  v75 = v100;

  return v75;
}

uint64_t sub_1AAD3EC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for BuilderConditional.Info(0, *(a1 + 16), *(a1 + 24), a3);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 1, 1, v4);
}

void Optional<A>.body.getter()
{
  sub_1AAF902C4();
  __break(1u);
}

{
  sub_1AAF902C4();
  __break(1u);
}

uint64_t static Optional<A>._makeChart3DContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for BuilderConditional(255, a3, &type metadata for BuilderEmpty, a4);
  v11 = sub_1AAF8D954();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v20 - v13);
  sub_1AAF8FE74();
  v21 = sub_1AACBC3B4(a1);
  v23 = v10;
  v16 = _s5ChildVMa(0, a3, a4, v15);
  v24 = v16;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1AAF8D1A4();
  sub_1AACBC418(&v21, sub_1AACBC584, v22, v16, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  sub_1AACBC644(v20[2], v14);
  static BuilderConditional<>._makeChart3DContent(content:inputs:)(v14, a2, a3, &type metadata for BuilderEmpty, a4, &protocol witness table for BuilderEmpty, a5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1AAD3EFB4@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1AAF8FE74();
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

uint64_t sub_1AAD3F03C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a4;
  v5 = type metadata accessor for BuilderConditional.Storage(0, a2, &type metadata for BuilderEmpty, a3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = sub_1AAF8FE74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD3EFB4(v11);
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v16 = *(v12 + 32);
    v16(v15, v11, a2);
    v16(v7, v15, a2);
  }

  swift_storeEnumTagMultiPayload();
  return BuilderConditional.init(storage:)(v7, a2, &type metadata for BuilderEmpty, v17, v20);
}

uint64_t sub_1AAD3F27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for BuilderConditional(0, *(a1 + 16), &type metadata for BuilderEmpty, a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t sub_1AAD3F440(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1AC599340](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1AAD3F494(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AAF90734();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_1AAD3F4EC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1AAF90744();
  *a1 = result;
  return result;
}

uint64_t sub_1AAD3F514(uint64_t a1)
{
  sub_1AAD3FC28(&qword_1EB422E80, MEMORY[0x1E698D3E8]);
  sub_1AAD3FC28(&qword_1EB422E88, &unk_1AAF92428);
  return sub_1AAF903F4();
}

uint64_t sub_1AAD3F638@<X0>(_BYTE *a3@<X8>)
{
  result = AGGraphSetValue();
  *a3 = result;
  return result;
}

uint64_t sub_1AAD3F6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v11, v15);
  sub_1AAF8D1E4();
  (*(v9 + 8))(v11, a5);
  v22 = a5;
  v23 = a6;
  sub_1AACBE580(v17, sub_1AACBE65C, v21, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  return (*(v13 + 8))(v17, a4);
}

uint64_t sub_1AAD3F894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for ChartAccessibilityContent.GroupItem.ResolvedGeometry(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 sub_1AAD3F9BC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AxisLabelPosition(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AAD3FA04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD3FA24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 sub_1AAD3FA64(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1AAD3FA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1AAD3FAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BuilderConditional(255, *(a1 + 16), *(a1 + 24), a4);
  sub_1AAF8D1A4();
  if (v4 <= 0x3F)
  {
    type metadata accessor for _Chart3DContentInputs(319);
    if (v5 <= 0x3F)
    {
      type metadata accessor for _Chart3DContentOutputs(319);
      if (v6 <= 0x3F)
      {
        type metadata accessor for Subgraph(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1AAD3FC28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AAD3FCF8@<X0>(_BYTE *a2@<X8>)
{
  result = AGGraphSetValue();
  *a2 = result;
  return result;
}

void sub_1AAD3FD34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1AAD3FD88()
{
  result = qword_1EB422E78;
  if (!qword_1EB422E78)
  {
    sub_1AAD3FD34(255, &qword_1EB422E70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for ContainerWith3DChildID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB422E78);
  }

  return result;
}

uint64_t sub_1AAD3FE38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAD3FE98@<X0>(_DWORD *a3@<X8>)
{
  sub_1AACBC63C();
  result = sub_1AAF8D194();
  *a3 = result;
  return result;
}

uint64_t (*sub_1AAD3FF24())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return sub_1AAD3FF80;
}

uint64_t (*sub_1AAD3FF8C())()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return sub_1AAD3FFE8;
}

uint64_t sub_1AAD40014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD40090(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1AAD400D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_1AAD4014C(uint64_t a1)
{
  type metadata accessor for CGPath(255);
  *(a1 + 16) = v2;
  return 0;
}

void sub_1AAD40194(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void BuilderTuple<each A>.body.getter()
{
  sub_1AAF902C4();
  __break(1u);
}

{
  sub_1AAF902C4();
  __break(1u);
}

uint64_t static BuilderTuple<each A>._makeChart3DContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v78 = a2;
  v76 = a1;
  v73 = a6;
  v9 = type metadata accessor for _Chart3DContentOutputs(0);
  v67 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AAF8E4B4();
  v80 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MultiPreferenceCombinerVisitor(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _Chart3DContentInputs(0);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderTuple(255, a3, a4, v19);
  v74 = sub_1AAF8D954();
  v20 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v22 = &v65 - v21;
  v77 = a5;
  ListVMa = _s8MakeListVMa(0, a3, a4, a5);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](ListVMa);
  v82 = &v65 - v25;
  v71 = v14;
  v72 = v16;
  v69 = v26;
  v70 = v17;
  v66 = v13;
  v68 = v11;
  if (a3 == 1)
  {
    v27 = v78;
  }

  else
  {
    v65 = &v65;
    MEMORY[0x1EEE9AC00](v23);
    v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v78;
    if (a3)
    {
      v30 = 0;
      v31 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_9;
      }

      if (&v29[-v31] < 0x20)
      {
        goto LABEL_9;
      }

      v30 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v32 = (v31 + 16);
      v33 = v29 + 16;
      v34 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v35 = *v32;
        *(v33 - 1) = *(v32 - 1);
        *v33 = v35;
        v32 += 2;
        v33 += 2;
        v34 -= 4;
      }

      while (v34);
      if (v30 != a3)
      {
LABEL_9:
        v36 = a3 - v30;
        v37 = 8 * v30;
        v38 = &v29[8 * v30];
        v39 = (v31 + v37);
        do
        {
          v40 = *v39++;
          *v38 = v40;
          v38 += 8;
          --v36;
        }

        while (v36);
      }
    }

    swift_getTupleTypeMetadata();
  }

  (*(v20 + 16))(v22, v76, v74, v24);
  v41 = v75;
  sub_1AAD3F894(v27, v75, type metadata accessor for _Chart3DContentInputs);
  v42 = v77;
  sub_1AAD409D0(v22, v41, 0, MEMORY[0x1E69E7CC0], a3, a4, v77, v82);
  if (a3)
  {
    v43 = 0;
    v44 = *(ListVMa + 48);
    while (1)
    {
      v45 = *((a4 & 0xFFFFFFFFFFFFFFFELL) + 8 * v43);
      v46 = *((v42 & 0xFFFFFFFFFFFFFFFELL) + 8 * v43);
      v47 = AGTupleElementOffset();
      v48 = ListVMa;
      *(v82 + v44) = v47;
      result = sub_1AAD40AC0(v45, v48, v45, v46);
      if (v43 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (a3 == ++v43)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v50 = *(v82 + *(ListVMa + 52));
    v51 = *(v50 + 16);
    v52 = MEMORY[0x1E69E7CC0];
    if (v51)
    {
      v83 = MEMORY[0x1E69E7CC0];
      sub_1AAD40F4C(0, v51, 0);
      v52 = v83;
      v53 = v68;
      v54 = v50 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v55 = *(v67 + 72);
      v56 = (v80 + 32);
      v57 = v66;
      do
      {
        v58 = v79;
        sub_1AAD3F894(v54, v79, type metadata accessor for _Chart3DContentOutputs);
        v59 = *v56;
        (*v56)(v57, v58, v53);
        v83 = v52;
        v61 = *(v52 + 16);
        v60 = *(v52 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1AAD40F4C((v60 > 1), v61 + 1, 1);
          v52 = v83;
        }

        *(v52 + 16) = v61 + 1;
        v59((v52 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v61), v57, v53);
        v54 += v55;
        --v51;
      }

      while (v51);
    }

    else
    {
      v53 = v68;
    }

    v62 = v72;
    v63 = *(v71 + 20);
    Chart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0 = _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
    *v62 = v52;
    MEMORY[0x1EEE9AC00](Chart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0);
    *(&v65 - 2) = v62;
    sub_1AAF8E394();
    (*(v69 + 8))(v82, ListVMa);
    (*(v80 + 16))(v73, &v62[v63], v53);
    return sub_1AACEE924(v62, type metadata accessor for MultiPreferenceCombinerVisitor);
  }

  return result;
}

uint64_t sub_1AAD409D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  type metadata accessor for BuilderTuple(255, a5, a6, a4);
  v16 = sub_1AAF8D954();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  ListVMa = _s8MakeListVMa(0, a5, a6, a7);
  result = sub_1AAD468B8(a2, a8 + ListVMa[11], type metadata accessor for _Chart3DContentInputs);
  *(a8 + ListVMa[12]) = a3;
  *(a8 + ListVMa[13]) = a4;
  return result;
}

uint64_t sub_1AAD40AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v32 = sub_1AAF8D954();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v28 - v7;
  v9 = type metadata accessor for _Chart3DContentOutputs(0);
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v28 - v12;
  v13 = type metadata accessor for _Chart3DContentInputs(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD3F894(v4 + *(a2 + 44), v16, type metadata accessor for _Chart3DContentInputs);
  v33 = *(a2 + 52);
  v17 = *(v4 + v33);
  v18 = *(v14 + 32);
  v19 = *&v16[v18];
  v35 = v17[2];
  v36 = v19;
  sub_1AACBC63C();
  sub_1AAF8DC74();
  sub_1AAD46864(0, &qword_1EB422E70, MEMORY[0x1E69E6540], type metadata accessor for ContainerWith3DChildID);
  sub_1AAD3FD88();
  *&v16[v18] = sub_1AAF8D194();
  type metadata accessor for BuilderTuple(0, *(a2 + 16), *(a2 + 24), v20);
  sub_1AACBC3B4(v4);
  v21 = v28;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  sub_1AACBC644(OffsetAttribute2, v8);
  v23 = a3;
  v24 = v29;
  (*(v31 + 32))(v8, v16, v23);
  (*(v30 + 8))(v8, v32);
  sub_1AAD3F894(v24, v21, type metadata accessor for _Chart3DContentOutputs);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1AAD674BC(0, v17[2] + 1, 1, v17);
  }

  v26 = v17[2];
  v25 = v17[3];
  if (v26 >= v25 >> 1)
  {
    v17 = sub_1AAD674BC((v25 > 1), v26 + 1, 1, v17);
  }

  sub_1AACEE924(v24, type metadata accessor for _Chart3DContentOutputs);
  sub_1AACEE924(v16, type metadata accessor for _Chart3DContentInputs);
  v17[2] = v26 + 1;
  result = sub_1AAD468B8(v21, v17 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v26, type metadata accessor for _Chart3DContentOutputs);
  *(v4 + v33) = v17;
  return result;
}

void *sub_1AAD40F4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9AD6B8, MEMORY[0x1E697FC08], MEMORY[0x1E697FC08]);
  *v3 = result;
  return result;
}

void sub_1AAD40FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BuilderTuple(255, *(a1 + 16), *(a1 + 24), a4);
  sub_1AAF8D954();
  if (v4 <= 0x3F)
  {
    type metadata accessor for _Chart3DContentInputs(319);
    if (v5 <= 0x3F)
    {
      sub_1AAD45848(319, &qword_1EB422FA0, type metadata accessor for _Chart3DContentOutputs, MEMORY[0x1E69E62F8]);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

char *sub_1AAD410B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD41D44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD410D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD41E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD410F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD431D8(a1, a2, a3, *v3, &qword_1EB422FC0, &qword_1EB424650, MEMORY[0x1E697A3C0]);
  *v3 = result;
  return result;
}

void *sub_1AAD41128(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD41FA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41148(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD42148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41168(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD42240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41188(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD42338(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD411A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD42470(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD411C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD425A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD411E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD426CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD41208(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD24DC0(a1, a2, a3, *v3, sub_1AAD46288, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
  *v3 = result;
  return result;
}

void *sub_1AAD4124C(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD24DC0(a1, a2, a3, *v3, sub_1AAD4620C, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
  *v3 = result;
  return result;
}

void *sub_1AAD41290(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD427F0(a1, a2, a3, *v3, &qword_1EB423068, sub_1AAD464E8, sub_1AAD464E8);
  *v3 = result;
  return result;
}

char *sub_1AAD412E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD42938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD41300(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD427F0(a1, a2, a3, *v3, &qword_1EB423050, sub_1AAD463D8, sub_1AAD463D8);
  *v3 = result;
  return result;
}

char *sub_1AAD41350(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD42A30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41370(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD42EA8(a1, a2, a3, *v3, &qword_1EB423048, type metadata accessor for CGPoint);
  *v3 = result;
  return result;
}

void *sub_1AAD413AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD42C50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD413CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD42B28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD413EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD42D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD4140C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD42EA8(a1, a2, a3, *v3, &qword_1ED9AD688, type metadata accessor for CGSize);
  *v3 = result;
  return result;
}

char *sub_1AAD41448(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD42FBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41468(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD430E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD41488(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD431D8(a1, a2, a3, *v3, &qword_1ED9AEE70, &qword_1ED9AEE60, MEMORY[0x1E69E7740]);
  *v3 = result;
  return result;
}

void *sub_1AAD414C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD4332C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD414E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD4346C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41500(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD435B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD41520(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD24DC0(a1, a2, a3, *v3, sub_1AAD45F80, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField);
  *v3 = result;
  return result;
}

char *sub_1AAD41564(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD43860(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41584(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD4399C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD415A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD43AC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD415C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD44E50(a1, a2, a3, *v3, &qword_1ED9B09D8, &type metadata for CurvePointLine);
  *v3 = result;
  return result;
}

char *sub_1AAD415F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD43D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41614(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD04BF0(a1, a2, a3, *v3, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item);
  *v3 = result;
  return result;
}

char *sub_1AAD41644(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD43E44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41664(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD43F7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD41684(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD440C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD416A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD44D1C(a1, a2, a3, *v3, &qword_1EB423090, &type metadata for ChartDisplayList.Style);
  *v3 = result;
  return result;
}

char *sub_1AAD416D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD44388(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD416F4(char *a1, int64_t a2, char a3)
{
  result = sub_1AACFE930(a1, a2, a3, *v3, &qword_1EB4230B8, &type metadata for ChartDisplayList.AreaItem.Point);
  *v3 = result;
  return result;
}

void *sub_1AAD41724(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB4230C8, type metadata accessor for ChartDisplayList.ClipRect, type metadata accessor for ChartDisplayList.ClipRect);
  *v3 = result;
  return result;
}

char *sub_1AAD41774(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD444C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41794(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD445FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD417B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD4473C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD417D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB4230D8, type metadata accessor for ChartDisplayList.RectangleItem, type metadata accessor for ChartDisplayList.RectangleItem);
  *v3 = result;
  return result;
}

void *sub_1AAD41824(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB4230D0, type metadata accessor for ChartDisplayList.BarItem, type metadata accessor for ChartDisplayList.BarItem);
  *v3 = result;
  return result;
}

char *sub_1AAD41874(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD4487C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41894(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD449B0(a1, a2, a3, *v3, &qword_1EB4230B0, &type metadata for ChartDisplayList.LineItem);
  *v3 = result;
  return result;
}

char *sub_1AAD418C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD449B0(a1, a2, a3, *v3, &qword_1EB4230A0, &type metadata for ChartDisplayList.RuleItem);
  *v3 = result;
  return result;
}

char *sub_1AAD418F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD449B0(a1, a2, a3, *v3, &qword_1EB423098, &type metadata for ChartDisplayList.ShapeItem);
  *v3 = result;
  return result;
}

char *sub_1AAD41924(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD44AEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41944(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD44C10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41964(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD44E50(a1, a2, a3, *v3, &qword_1ED9AD758, &type metadata for SgSymbolSize);
  *v3 = result;
  return result;
}

char *sub_1AAD41994(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD44F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD419B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD450A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD419D4(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD24DC0(a1, a2, a3, *v3, sub_1AAD45B54, &qword_1ED9AD908, &type metadata for SgLine.Points.Element);
  *v3 = result;
  return result;
}

char *sub_1AAD41A18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD4522C(a1, a2, a3, *v3, &unk_1ED9AEE88, &type metadata for SgArea.Points.Element, MEMORY[0x1E69E6F90], sub_1AAD469FC);
  *v3 = result;
  return result;
}

char *sub_1AAD41A70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD4522C(a1, a2, a3, *v3, &unk_1EB422FF8, sub_1AAD45BD0, MEMORY[0x1E69E6F90], sub_1AAD45848);
  *v3 = result;
  return result;
}

void *sub_1AAD41AD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB423010, type metadata accessor for SgPath, type metadata accessor for SgPath);
  *v3 = result;
  return result;
}

void *sub_1AAD41B24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB423008, type metadata accessor for SgArea, type metadata accessor for SgArea);
  *v3 = result;
  return result;
}

void *sub_1AAD41B74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9AD6D8, type metadata accessor for SgLine, type metadata accessor for SgLine);
  *v3 = result;
  return result;
}

void *sub_1AAD41BC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9AD6C8, type metadata accessor for SgPoint, type metadata accessor for SgPoint);
  *v3 = result;
  return result;
}

void *sub_1AAD41C14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB422FE0, type metadata accessor for SgSector, type metadata accessor for SgSector);
  *v3 = result;
  return result;
}

void *sub_1AAD41C64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB422FD8, type metadata accessor for AnyVectorizedRenderer, type metadata accessor for AnyVectorizedRenderer);
  *v3 = result;
  return result;
}

void *sub_1AAD41CB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9AEEC8, type metadata accessor for SgRectangle, type metadata accessor for SgRectangle);
  *v3 = result;
  return result;
}

char *sub_1AAD41D04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD4534C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41D24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD46570(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41D44(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1EB422FA8, &type metadata for ChartContentID, MEMORY[0x1E69E6F90]);
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

char *sub_1AAD41E68(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1EB422FC8, &type metadata for TickViewModel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD41FA4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD420D8(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AACC9AC0(0, &qword_1EB422FB8, &type metadata for ChartContentID, MEMORY[0x1E69E6530]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1AAD420D8(uint64_t a1)
{
  if (!qword_1EB422FB0)
  {
    sub_1AACC9AC0(255, &qword_1EB422FB8, &type metadata for ChartContentID, MEMORY[0x1E69E6530]);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB422FB0);
    }
  }
}

char *sub_1AAD42148(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD466A4(0);
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

char *sub_1AAD42240(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD46720(0);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1AAD42338(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1EB423040, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD42470(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9AD6C0, MEMORY[0x1E697DD48], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD425A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B11A0, &type metadata for AnyPrimitivePlottableArray, MEMORY[0x1E69E6F90]);
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

char *sub_1AAD426CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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

void *sub_1AAD427F0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  if (v13)
  {
    sub_1AAD45848(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1AAD42938(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD46460(0);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1AAD42A30(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD45D28(0);
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

char *sub_1AAD42B28(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD45848(0, &qword_1ED9B1180, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_1AAD42C50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD46304(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD469FC(0, &qword_1ED9B10D8, &type metadata for DomainOverride, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD42D90(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD46380(0, &qword_1ED9AD698, &qword_1ED9AD8A0, MEMORY[0x1E69E6530], "x y ");
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

char *sub_1AAD42EA8(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
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
    sub_1AAD45848(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1AAD42FBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1EB423110, &type metadata for DefaultChartLegend.ColorRampView.Tick, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD430E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD45DB0(0);
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

void *sub_1AAD431D8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
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
    sub_1AAD0D328(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
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
    sub_1AAD45E1C(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1AAD4332C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD45E78(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD469FC(0, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD4346C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD45848(0, &qword_1ED9B0C08, sub_1AAD45EF4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD45EF4(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD435B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B1E00, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1AAD436F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD45848(0, &qword_1ED9B0BF8, sub_1AAD45FFC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[38 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 304 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD45FFC(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD43860(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9AEEA0, &type metadata for LegendRenderingContext.Category, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AAD4399C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9AEEA8, &type metadata for LegendRenderingContext.Section, MEMORY[0x1E69E6F90]);
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