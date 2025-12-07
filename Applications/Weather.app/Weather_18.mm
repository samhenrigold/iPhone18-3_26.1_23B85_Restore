uint64_t sub_1001ECE00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
    v8 = v5 + *(a4 + 32);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001ECE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CB3B80, &unk_100A96720);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 24)));
  }

  return sub_100024D10(a1, a2, v6);
}

uint64_t sub_1001ECF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CB3B80, &unk_100A96720);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001ED058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 8));
  }

  v7 = type metadata accessor for PrecipitationAmount();
  v8 = a1 + *(a3 + 20);

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1001ED0D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PrecipitationAmount();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001ED158(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CA6CB0, &unk_100A31CB0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return sub_1000039D8(*(a1 + a3[5] + 8));
    }

    type metadata accessor for PrecipitationAmount();
    sub_100003928();
    if (*(v12 + 84) == a2)
    {
      v8 = v11;
      v13 = a3[6];
    }

    else
    {
      v8 = sub_10022C350(&qword_100CBB640, &qword_100A50F78);
      v13 = a3[8];
    }

    v9 = a1 + v13;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_1001ED274(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CA6CB0, &unk_100A31CB0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 8) = (a2 - 1);
      return;
    }

    type metadata accessor for PrecipitationAmount();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = sub_10022C350(&qword_100CBB640, &qword_100A50F78);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001ED3E0()
{
  sub_10022E824(&qword_100CBB710, &qword_100A51018);
  sub_10022E824(&qword_100CA5528, &qword_100A2F940);
  sub_10022E824(&qword_100CBB708, &qword_100A51010);
  sub_10022E824(&qword_100CBB700, &qword_100A51008);
  type metadata accessor for InsetGroupedListStyle();
  sub_100005DFC();
  sub_100006F64(v0, &qword_100CBB700, &qword_100A51008, v1);
  sub_100005DB4();
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  sub_100005DE4();
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v2, &qword_100CA5528, &qword_100A2F940, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001ED554(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_10022C350(qword_100CA5418, &qword_100A2F670);
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
    sub_100003928();
    if (*(v18 + 84) == a2)
    {
      v8 = v17;
      v12 = a3[14];
    }

    else
    {
      sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
      sub_100003928();
      if (*(v20 + 84) == a2)
      {
        v8 = v19;
        v12 = a3[15];
      }

      else
      {
        sub_10022C350(&qword_100CBB750, &unk_100A51050);
        sub_100003928();
        if (*(v22 + 84) == a2)
        {
          v8 = v21;
          v12 = a3[16];
        }

        else
        {
          sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
          sub_100003928();
          if (*(v24 + 84) == a2)
          {
            v8 = v23;
            v12 = a3[20];
          }

          else
          {
            v8 = sub_10022C350(&qword_100CBB758, &unk_100A51060);
            v12 = a3[22];
          }
        }
      }
    }

    goto LABEL_7;
  }

  v16 = *(a1 + a3[11]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1001ED7F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(qword_100CA5418, &qword_100A2F670);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[11]) = (a2 - 1);
          return;
        }

        sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[14];
        }

        else
        {
          sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[15];
          }

          else
          {
            sub_10022C350(&qword_100CBB750, &unk_100A51050);
            sub_100003928();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[16];
            }

            else
            {
              sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
              sub_100003928();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[20];
              }

              else
              {
                v10 = sub_10022C350(&qword_100CBB758, &unk_100A51060);
                v14 = a4[22];
              }
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001EDAC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DetailHeroChartLollipopModel(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
      v10 = *(a3 + 24);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_1001EDBA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DetailHeroChartLollipopModel(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
      v10 = *(a4 + 24);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1001EDC74()
{
  sub_100003A00();
  sub_10022C350(&qword_100CBBA28, &qword_100A51448);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_1001EDCD4(uint64_t a1)
{
  sub_10022C350(&qword_100CBBA28, &qword_100A51448);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1001EDEF4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10004E5F0();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_1000497EC();
    }

    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    sub_100003928();
    if (*(v12 + 84) == v3)
    {
      v8 = v11;
      v13 = a3[8];
    }

    else
    {
      type metadata accessor for Text.Measurements();
      sub_100003928();
      if (*(v15 + 84) == v3)
      {
        v8 = v14;
        v13 = a3[11];
      }

      else
      {
        v8 = sub_10022C350(&qword_100CBC190, &unk_100A52B00);
        v13 = a3[12];
      }
    }

    v9 = v4 + v13;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1001EE038(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10004E5F0();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + a4[5]) = (v4 - 1);
      return;
    }

    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      type metadata accessor for Text.Measurements();
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[11];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CBC190, &unk_100A52B00);
        v14 = a4[12];
      }
    }

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001EE18C()
{
  v1 = type metadata accessor for DailyComponentView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = type metadata accessor for DailyForecastComponentViewModel(0);
  v4 = v3[5];
  v5 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037E8();
  v7 = *(v6 + 8);
  v7(v2 + v4, v5);
  v7(v2 + v3[6], v5);
  v7(v2 + v3[7], v5);

  swift_unknownObjectRelease();

  v8 = v1[8];
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_1000037E8();
    (*(v9 + 8))(v2 + v8);
  }

  else
  {
  }

  sub_1000E4DF8(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  sub_1000E4DF8(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  v10 = v1[11];
  type metadata accessor for Text.Measurements();
  sub_1000037E8();
  (*(v11 + 8))(v2 + v10);
  v12 = v2 + v1[12];
  v13 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  if (!sub_100024D10(v12, 1, v13))
  {
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v14 + 8))(v12);
    sub_100003DAC();
    sub_100003DAC();
    v15 = v13[7];
    type metadata accessor for TimeZone();
    sub_1000037E8();
    (*(v16 + 8))(v12 + v15);
    v7(v12 + v13[8], v5);
    v7(v12 + v13[9], v5);
    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
    v17 = v13[15];
    v18 = type metadata accessor for Precipitation();
    if (!sub_100024D10(v12 + v17, 1, v18))
    {
      (*(*(v18 - 8) + 8))(v12 + v17, v18);
    }

    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
  }

  sub_10022C350(&qword_100CBC190, &unk_100A52B00);

  return swift_deallocObject();
}

uint64_t sub_1001EE590()
{

  return swift_deallocObject();
}

uint64_t sub_1001EE5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004E5F0();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_1000497EC();
    }

    type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
    sub_100003928();
    if (*(v12 + 84) == v3)
    {
      v8 = v11;
      v13 = *(a3 + 28);
    }

    else
    {
      v8 = sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
      v13 = *(a3 + 60);
    }

    v9 = v4 + v13;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1001EE6C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10004E5F0();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + a4[5]) = (v4 - 1);
      return;
    }

    type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      v10 = sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
      v14 = a4[15];
    }

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001EE7CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CBC548, &unk_100A52F70);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001EE860(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CBC548, &unk_100A52F70);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001EE970()
{
  v2 = type metadata accessor for OpenL2Descriptor(0);
  sub_100003DDC();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  v5 = v0 + v4;
  v6 = *(v2 + 24);
  v7 = type metadata accessor for Location();
  if (!sub_10000CABC(v7))
  {
    (*(*(v1 - 8) + 8))(v5 + v6, v1);
  }

  v8 = *(v2 + 36);
  v9 = type metadata accessor for Date();
  if (!sub_10000CABC(v9))
  {
    (*(*(v1 - 8) + 8))(v5 + v8, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1001EEAC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActualListInput(0);
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001EEB08(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ActualListInput(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001EEB64(unint64_t *a1, uint64_t a2, int *a3)
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
    sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CB0250, &qword_100A3FF58);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[14];
      }

      else
      {
        type metadata accessor for Date();
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[21];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
          v11 = a3[34];
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_1001EECD0(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for Location();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for WeatherData(0);
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for PreprocessedWeatherData(0);
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        type metadata accessor for NewsDataModel(0);
        sub_100003928();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          if (a2 == 254)
          {
            v17 = *(a1 + a3[8]);
            if (v17 >= 2)
            {
              return v17 - 1;
            }

            else
            {
              return 0;
            }
          }

          v8 = type metadata accessor for AppConfiguration();
          v12 = a3[12];
        }
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_1001EEE54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for Location();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for WeatherData(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for PreprocessedWeatherData(0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        type metadata accessor for NewsDataModel(0);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          if (a3 == 254)
          {
            *(a1 + a4[8]) = a2 + 1;
            return;
          }

          v10 = type metadata accessor for AppConfiguration();
          v14 = a4[12];
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001EF068()
{
  v2 = sub_100003B38();
  v3 = type metadata accessor for SunriseSunsetDetailInput.Input(v2);
  v4 = sub_100024D10(v1, v0, v3);
  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001EF0A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SunriseSunsetDetailInput.Input(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001EF104(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003B38();
  type metadata accessor for Location();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for WeatherData(0);
    sub_100003928();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for NewsDataModel(0);
      sub_100003928();
      if (*(v14 + 84) != v3)
      {
        v16 = *(v4 + a3[7]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v13;
      v12 = a3[6];
    }

    v9 = v4 + v12;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1001EF238(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003B38();
  type metadata accessor for Location();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for WeatherData(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for NewsDataModel(0);
      sub_100003928();
      if (*(v16 + 84) != a3)
      {
        *(v5 + a4[7]) = v4 + 1;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001EF358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
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
    v8 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001EF3D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = -a2;
  }

  else
  {
    v7 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001EF480()
{

  return swift_deallocObject();
}

uint64_t sub_1001EF4B8()
{
  v1 = type metadata accessor for IndexPath();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1001EF574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for Date();

  return sub_100024D10(a1 + v5, a2, v6);
}

uint64_t sub_1001EF5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for Date();

  return sub_10001B350(a1 + v6, a2, a2, v7);
}

uint64_t sub_1001EF620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LollipopMarkModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(a3 + 20);
  }

  else
  {
    v7 = type metadata accessor for LollipopDetailViewModel(0);
    v8 = *(a3 + 24);
  }

  return sub_100024D10(a1 + v8, a2, v7);
}

uint64_t sub_1001EF6BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LollipopMarkModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 20);
  }

  else
  {
    v9 = type metadata accessor for LollipopDetailViewModel(0);
    v10 = *(a4 + 24);
  }

  return sub_10001B350(a1 + v10, a2, a2, v9);
}

uint64_t sub_1001EF7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 <= 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = *(a1 + *(a3 + 24));
  }

  v15 = v14 - 2;
  if (v13 >= 2)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

void sub_1001EF8B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001EF9AC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10047F1E0();
  *a2 = result;
  return result;
}

uint64_t sub_1001EFB5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AttributedString();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
      v10 = *(a3 + 24);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_1001EFC34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
      v10 = *(a4 + 24);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1001EFD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v8 = sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001EFD94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001EFE1C()
{
  v1 = (type metadata accessor for PressureComponentGaugeView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1000E4DF8(*v2, *(v2 + 8));
  v3 = v1[7];
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001EFF54()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000006) != 0)
  {
    sub_1002DDD7C(v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1001EFFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003B38();
  type metadata accessor for CalendarDayViewModel(v6);
  sub_100003928();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    if (v3 == 254)
    {
      v11 = *(v4 + *(a3 + 20));
      if (v11 >= 2)
      {
        return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    v10 = v4 + *(a3 + 24);
  }

  return sub_100024D10(v10, v3, v9);
}

void sub_1001F00C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003B38();
  type metadata accessor for CalendarDayViewModel(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    if (a3 == 254)
    {
      *(v5 + *(a4 + 20)) = v4 + 1;
      return;
    }

    v11 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    v12 = v5 + *(a4 + 24);
  }

  sub_10001B350(v12, v4, v4, v11);
}

uint64_t sub_1001F0190()
{
  v2 = sub_100003B38();
  v3 = type metadata accessor for CalendarDayCellViewModel(v2);
  v4 = sub_100024D10(v1, v0, v3);
  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F01D0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for CalendarDayCellViewModel(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001F022C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CalendarGridCellViewModel(0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 24);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_1001F02D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003B38();
  type metadata accessor for CalendarGridCellViewModel(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {

    sub_10001B350(v5, v4, v4, v9);
  }

  else
  {
    *(v5 + *(a4 + 20) + 24) = (v4 - 1);
  }
}

uint64_t sub_1001F0378()
{
  v1 = v0;
  v2 = type metadata accessor for CalendarDayCellViewModel(0);
  sub_100003DDC();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v20 = type metadata accessor for CalendarGridCell(0);
  sub_100003DDC();
  v8 = (v4 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1 + v4;

  v19 = type metadata accessor for CalendarDayViewModel(0);
  v10 = *(v19 + 36);
  v11 = type metadata accessor for MoonPhase.Hemisphere();
  sub_1000037E8();
  v13 = *(v12 + 8);
  v13(v9 + v10, v11);
  v14 = *(v2 + 24);
  v15 = type metadata accessor for Date();
  if (!sub_100030484(v9 + v14))
  {
    (*(*(v15 - 8) + 8))(v9 + v14, v15);
  }

  v16 = v1 + v8;
  if (!sub_100024D10(v1 + v8, 1, v2))
  {

    v13(v16 + *(v19 + 36), v11);
    v17 = *(v2 + 24);
    if (!sub_100030484(v16 + v17))
    {
      (*(*(v15 - 8) + 8))(v16 + v17, v15);
    }
  }

  sub_100006F14((v16 + *(v20 + 20)));

  return swift_deallocObject();
}

uint64_t sub_1001F0610()
{

  return swift_deallocObject();
}

uint64_t sub_1001F0650()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001F06B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MoonPhase.Hemisphere();
    v9 = a1 + *(a3 + 36);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001F0738(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MoonPhase.Hemisphere();
    v8 = v5 + *(a4 + 36);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001F07B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarDayViewModel(0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1001F0800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarDayViewModel(0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1001F084C()
{
  sub_10022E824(&qword_100CBE488, &qword_100A55C50);
  sub_1004B71E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001F08B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WindComponentCompassViewModel();
    v9 = a1 + *(a3 + 68);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001F0938(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WindComponentCompassViewModel();
    v8 = v5 + *(a4 + 68);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001F09B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001F0A4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001F0AF4()
{
  v1 = type metadata accessor for SearchView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_100006F14((v2 + 16));
  v3 = *(v1 + 24);
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F0C54()
{

  return swift_deallocObject();
}

uint64_t sub_1001F0CB0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return sub_100024D10(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for VisibleLocationWeatherLoadStatusLog(0);
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = type metadata accessor for Date();
      v14 = a3[8];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_1001F0DC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5]) = (a2 - 1);
      return;
    }

    type metadata accessor for VisibleLocationWeatherLoadStatusLog(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = type metadata accessor for Date();
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001F0EDC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_1001F0F70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001F1038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConditionDetailMapViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_100024D10(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001F10F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConditionDetailMapViewModel(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_10001B350(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1001F11A0(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CBED80, &unk_100A565F8);
  sub_1000037E8();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001F1208(uint64_t a1)
{
  sub_10022C350(&qword_100CBED80, &unk_100A565F8);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1001F1268()
{

  return swift_deallocObject();
}

uint64_t sub_1001F12A4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CBEEC8, &qword_100A566C8);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for Date();
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  type metadata accessor for Calendar();
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1001F13DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CBEEC8, &qword_100A566C8);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for Calendar();
      sub_100003928();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001F1528()
{

  return swift_deallocObject();
}

uint64_t sub_1001F15A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for DisableAnimatedBackgroundsStateModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable(byte_100A56A50, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = sub_10001EEA4(v5);
  swift_getOpaqueTypeMetadata2();
  sub_10022E824(&qword_100CE1580, &unk_100A408E0);
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for EnvironmentAnimatedBackgroundDisabledReasons(255);
  v13 = v4;
  v14 = &type metadata for Bool;
  v15 = v6;
  v16 = &protocol witness table for Bool;
  v12[0] = swift_getOpaqueTypeConformance2();
  v12[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v12);
  v10 = sub_1004C70C8();
  v13 = v7;
  v14 = v8;
  v15 = WitnessTable;
  v16 = v10;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001F1740()
{

  return swift_deallocObject();
}

uint64_t sub_1001F1778(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for RecordAnimatedBackgroundDisabledModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable(aAo, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  sub_10001EEA4(v5);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001F1814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationInfoProperty(0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1001F1868()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001F18A0()
{

  return swift_deallocObject();
}

uint64_t sub_1001F19A0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000038D8();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_11:

    return sub_100024D10(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = type metadata accessor for TimeZone();
      v14 = a3[7];
    }

    v9 = v3 + v14;
    goto LABEL_11;
  }

  v10 = *(v3 + a3[5]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_1001F1AB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000038D8();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5]) = (a2 - 1);
      return;
    }

    sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = type metadata accessor for TimeZone();
      v14 = a4[7];
    }

    v11 = v4 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001F1BEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SettingCellStyle();
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001F1C74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SettingCellStyle();
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001F1CF4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LocationOfInterest();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001F1D7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocationOfInterest();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001F1DFC()
{
  v1 = (type metadata accessor for SuggestedSearchResultRowView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  sub_100006F14((v0 + v2));
  v3 = v1[7];
  type metadata accessor for LocationOfInterest();
  sub_1000037E8();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_1001F1F30()
{
  sub_100003A00();
  type metadata accessor for DetailCondition();
  v1 = sub_1000251E0();

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_1001F1F70()
{
  sub_100003A00();
  type metadata accessor for DetailCondition();
  sub_10002FDE8();
  sub_1000178C4();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_1001F1FD0()
{

  sub_100006F14((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1001F2018()
{
  sub_10000EACC();
  if (v3)
  {
    return sub_1000039D8(*(v0 + 24));
  }

  v5 = v2;
  v6 = v1;
  type metadata accessor for ConditionDetailViewModel.Model(0);
  sub_100003928();
  if (*(v8 + 84) == v6)
  {
    v9 = v7;
    v10 = *(v5 + 28);
  }

  else
  {
    v9 = sub_10022C350(&qword_100CBB758, &unk_100A51060);
    v10 = *(v5 + 32);
  }

  return sub_100024D10(v0 + v10, v6, v9);
}

void sub_1001F20D8()
{
  sub_100003A00();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v3 = v2;
    type metadata accessor for ConditionDetailViewModel.Model(0);
    sub_100003928();
    if (*(v4 + 84) != v3)
    {
      sub_10022C350(&qword_100CBB758, &unk_100A51060);
    }

    sub_1000178C4();

    sub_10001B350(v5, v6, v7, v8);
  }
}

uint64_t sub_1001F21F8()
{
  sub_10000EACC();
  if (v3)
  {
    return sub_1000039D8(*v0);
  }

  v5 = v2;
  v6 = v1;
  sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
  sub_100003928();
  if (*(v8 + 84) == v6)
  {
    v9 = v7;
    v10 = v5[6];
  }

  else
  {
    sub_10022C350(&qword_100CBFD10, &qword_100A58200);
    sub_100003928();
    if (*(v12 + 84) == v6)
    {
      v9 = v11;
      v10 = v5[10];
    }

    else
    {
      v9 = sub_10022C350(&qword_100CBFD18, &qword_100A58208);
      v10 = v5[11];
    }
  }

  return sub_100024D10(v0 + v10, v6, v9);
}

void sub_1001F2310()
{
  sub_100003A00();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v3 = v2;
    sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
    sub_100003928();
    if (*(v4 + 84) != v3)
    {
      sub_10022C350(&qword_100CBFD10, &qword_100A58200);
      sub_100003928();
      if (*(v5 + 84) != v3)
      {
        sub_10022C350(&qword_100CBFD18, &qword_100A58208);
      }
    }

    sub_1000178C4();

    sub_10001B350(v6, v7, v8, v9);
  }
}

uint64_t sub_1001F2430()
{
  sub_10022E824(&qword_100CBFC00, &qword_100A58070);
  type metadata accessor for Date();
  sub_10022E824(&qword_100CBFBF8, &qword_100A58068);
  sub_10022E824(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_1004DD314();
  sub_1004DD518();
  swift_getOpaqueTypeConformance2();
  sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001F254C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_1000039D8(*(v4 + a3[5]));
    }

    sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    sub_100003928();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[10];
    }

    else
    {
      sub_10022C350(&qword_100CBFD10, &qword_100A58200);
      sub_100003928();
      if (*(v14 + 84) == v3)
      {
        v8 = v13;
        v12 = a3[12];
      }

      else
      {
        sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
        sub_100003928();
        if (*(v16 + 84) == v3)
        {
          v8 = v15;
          v12 = a3[13];
        }

        else
        {
          v8 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
          v12 = a3[14];
        }
      }
    }

    v7 = v4 + v12;
  }

  return sub_100024D10(v7, v3, v8);
}

void sub_1001F2700()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    sub_10002FDE8();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20)) = (v0 - 1);
      return;
    }

    sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    sub_100003928();
    if (*(v5 + 84) != v3)
    {
      sub_10022C350(&qword_100CBFD10, &qword_100A58200);
      sub_100003928();
      if (*(v6 + 84) != v3)
      {
        sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
        sub_100003928();
        if (*(v7 + 84) != v3)
        {
          sub_10022C350(&qword_100CA61E0, &unk_100A31050);
        }
      }
    }
  }

  sub_1000178C4();

  sub_10001B350(v8, v9, v10, v11);
}

uint64_t sub_1001F28B0()
{
  sub_10000EACC();
  if (v3)
  {
    return sub_1000039D8(*v0);
  }

  v5 = v2;
  v6 = v1;
  v7 = type metadata accessor for DetailCondition();
  v8 = v0 + *(v5 + 32);

  return sub_100024D10(v8, v6, v7);
}

void sub_1001F2924()
{
  sub_100003A00();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    type metadata accessor for DetailCondition();
    sub_1000178C4();

    sub_10001B350(v3, v4, v5, v6);
  }
}

uint64_t sub_1001F299C()
{
  v0 = sub_10022E824(&qword_100CBFE20, &qword_100A58300);
  sub_10022E824(&unk_100CE0EB0, &qword_100A310D0);
  sub_10022E824(&qword_100CBFE78, &qword_100A58328);
  v1 = sub_10022E824(&qword_100CBFE18, &qword_100A582F8);
  sub_10022E824(&unk_100CE1680, &unk_100A450F0);
  sub_1004DE2D0();
  v2 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
  v25 = sub_100017540(v2, v3, v4, v5, v6, v7, v8, v9, v1);
  sub_100017540(v25, v10, v11, v12, v13, v14, v15, v16, &type metadata for Solarium);
  v26 = sub_1004DE52C();
  return sub_100016A48(v26, v17, v18, v19, v20, v21, v22, v23, v0);
}

uint64_t sub_1001F2AEC()
{
  type metadata accessor for PagingChartsView.HorizontalChartPages(0);
  sub_100008560();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);

  sub_100006F14((v1 + v3 + 8));
  v4 = *(v0 + 40);
  type metadata accessor for DetailCondition();
  sub_100003D98();
  (*(v5 + 8))(v1 + v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_1001F2BD4()
{
  v3 = type metadata accessor for StickyChartHeadersView(0);
  sub_100003DDC();
  v5 = v0 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  sub_100003D98();
  (*(v6 + 8))(v5);

  v7 = sub_10002C784();
  if (!sub_10002473C(v7))
  {
    sub_100003B20();
    (*(v8 + 8))(v5 + v2, v1);
  }

  sub_10001845C();

  v9 = *(sub_10022C350(&qword_100CBFD10, &qword_100A58200) + 32);
  type metadata accessor for DetailCondition();
  sub_100003D98();
  (*(v10 + 8))(v1 + v9);
  v11 = *(v3 + 52);
  sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
  sub_100003D98();
  (*(v12 + 8))(v5 + v11);
  v13 = *(v3 + 56);
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000CB9C(v14))
    {
      sub_100003B20();
      (*(v15 + 8))(v5 + v13, v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F2E1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA6E4();
  *a1 = result;
  return result;
}

uint64_t sub_1001F2E50()
{

  return swift_deallocObject();
}

uint64_t sub_1001F2E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DetailChartsViewModel(0);
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 24) + 24));
  }

  return sub_100024D10(a1, a2, v6);
}

void sub_1001F2F28()
{
  sub_1000041D8();
  type metadata accessor for DetailChartsViewModel(0);
  sub_100003928();
  if (*(v1 + 84) == v0)
  {
    sub_10002FDE8();
    sub_1000178C4();

    sub_10001B350(v2, v3, v4, v5);
  }

  else
  {
    sub_100024178();
  }
}

uint64_t sub_1001F2FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    v8 = type metadata accessor for DetailCondition();
    v7 = v4 + *(a3 + 24);
  }

  return sub_100024D10(v7, v3, v8);
}

uint64_t sub_1001F304C()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
  sub_100003928();
  if (*(v1 + 84) == v0)
  {
    sub_10002FDE8();
  }

  else
  {
    type metadata accessor for DetailCondition();
  }

  sub_1000178C4();

  return sub_10001B350(v2, v3, v4, v5);
}

uint64_t sub_1001F30E4()
{
  v0 = sub_100003940();
  v2 = sub_10022E824(v0, v1);
  v11 = sub_100006F64(&qword_100CC0078, &qword_100CC0050, &qword_100A58470, &protocol conformance descriptor for LazyHStack<A>);
  return sub_100017540(v11, v3, v4, v5, v6, v7, v8, v9, v2);
}

uint64_t sub_1001F316C()
{
  v0 = sub_100003940();
  v2 = sub_10022E824(v0, v1);
  sub_10022E824(&qword_100CC00A0, &qword_100A584B8);
  sub_100005A00();
  sub_100006F64(v3, &qword_100CC0090, &qword_100A584A8, v4);
  v13 = sub_1004DEFEC();
  return sub_100016A48(v13, v5, v6, v7, v8, v9, v10, v11, v2);
}

uint64_t sub_1001F3220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    type metadata accessor for DetailChartViewModel(0);
    sub_100003928();
    if (*(v10 + 84) != v3)
    {
      return sub_1000039D8(*(v4 + *(a3 + 24) + 24));
    }

    v8 = v9;
    v7 = v4 + *(a3 + 20);
  }

  return sub_100024D10(v7, v3, v8);
}

void sub_1001F3308()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  sub_100003928();
  if (*(v1 + 84) == v0)
  {
    sub_10002FDE8();
  }

  else
  {
    type metadata accessor for DetailChartViewModel(0);
    sub_100003928();
    if (*(v2 + 84) != v0)
    {
      sub_100024178();
      return;
    }
  }

  sub_1000178C4();

  sub_10001B350(v3, v4, v5, v6);
}

__n128 sub_1001F348C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001F3498(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003B38();
  type metadata accessor for LocationComponentContainerViewModel(v6);
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1000251E0();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      sub_1000115D8();
      return (v10 + 1);
    }

    type metadata accessor for Location.Identifier();
    sub_100003928();
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[8];
    }

    else
    {
      sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
      sub_100003928();
      if (*(v16 + 84) == v3)
      {
        v9 = v15;
        v14 = a3[17];
      }

      else
      {
        v9 = sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
        v14 = a3[20];
      }
    }

    v8 = v4 + v14;
  }

  return sub_100024D10(v8, v3, v9);
}

void sub_1001F35E8()
{
  sub_1000041D8();
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    sub_10002FDE8();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20)) = (v0 - 1);
      return;
    }

    type metadata accessor for Location.Identifier();
    sub_100003928();
    if (*(v5 + 84) != v3)
    {
      sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
      sub_100003928();
      if (*(v6 + 84) != v3)
      {
        sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
      }
    }
  }

  sub_1000178C4();

  sub_10001B350(v7, v8, v9, v10);
}

uint64_t sub_1001F3824()
{
  sub_100071768();
  type metadata accessor for LocationComponentContainerView(0);
  sub_100003A0C();
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v101 = *(v9 + 64);
  v103 = type metadata accessor for DateInterval();
  sub_1000037C4();
  v11 = v10;
  v100 = *(v10 + 80);
  swift_unknownObjectRelease();
  v102 = v8;
  v12 = v1 + v8;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:

      goto LABEL_6;
    case 1u:

      goto LABEL_6;
    case 2u:

      goto LABEL_6;
    case 3u:
      type metadata accessor for WeatherDescription();
      sub_100003D98();
      (*(v13 + 8))(v1 + v8);
      v2 = v12 + *(type metadata accessor for LocationComponentHeaderViewModel.Description(0) + 20);

LABEL_6:

      break;
    default:
      break;
  }

  type metadata accessor for LocationComponentContainerViewModel(0);
  v14 = sub_1005026D4();
  switch(sub_1000C8BBC(v14))
  {
    case 0u:

      v15 = type metadata accessor for AirQualityComponentViewModel(0);
      v16 = *(v15 + 60);
      type metadata accessor for AttributedString();
      sub_100003D98();
      (*(v17 + 8))(v3 + v16);
      v18 = *(v15 + 64);
      goto LABEL_55;
    case 1u:

      type metadata accessor for DailyForecastComponentViewModel(0);
      sub_1000C827C();
      v97 = v20;
      sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
      sub_1000037E8();
      v22 = *(v21 + 8);
      v23 = sub_100037FEC(v97);
      v22(v23);
      v24 = sub_100037FEC(v4[6]);
      v22(v24);
      v25 = sub_100037FEC(v4[7]);
      v22(v25);
      v26 = v4[8];
      goto LABEL_23;
    case 2u:

      v52 = type metadata accessor for FeelsLikeComponentViewModel(0);
      v53 = sub_100199484();
      v54 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(v53);
      if (!sub_1000214B8(v54))
      {

        sub_10050269C();
        type metadata accessor for TemperatureScaleConfiguration();
        sub_100003D98();
        (*(v55 + 8))(v5);
        type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
        sub_10003C540();
      }

      sub_10002418C(*(v52 + 28));

      v18 = *(v52 + 32);
      goto LABEL_55;
    case 3u:
      v50 = type metadata accessor for UUID();
      if (!sub_1000D3BF0(v3))
      {
        sub_100003B20();
        (*(v51 + 8))(v3, v50);
      }

      type metadata accessor for HourlyForecastComponentViewModel(0);
      goto LABEL_56;
    case 4u:
      goto LABEL_56;
    case 5u:
      type metadata accessor for WeatherMapOverlayKind();
      sub_100003D98();
      (*(v27 + 8))(v3);
      v28 = type metadata accessor for MapComponentViewModel(0);
      v29 = *(v28 + 20);
      type metadata accessor for Location();
      sub_100003D98();
      v31 = v3 + v29;
      v32 = v28;
      (*(v30 + 8))(v31);
      v33 = sub_100199484();
      v34 = type metadata accessor for WeatherData(v33);
      if (!sub_1000214B8(v34))
      {
        v98 = v28;

        v35 = v6[5];
        v36 = type metadata accessor for Locale();
        if (!sub_1000D3BF0(v5 + v35))
        {
          sub_100003B20();
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v6[6];
        type metadata accessor for WeatherDataModel();
        sub_100003D98();
        (*(v39 + 8))(v5 + v38);
        v40 = v5 + v6[7];
        v41 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
        if (!sub_1000D3BF0(v40))
        {
          type metadata accessor for Date();
          sub_100003D98();
          v95 = *(v42 + 8);
          v96 = v43;
          v95(v40);
          v44 = *(v41 + 48);
          v45 = type metadata accessor for WeatherDataRelevancy(0);
          if (!sub_100024D10(v40 + v44, 1, v45))
          {
            (v95)(v40 + v44, v96);
          }
        }

        v46 = v5 + v6[8];
        type metadata accessor for WeatherData.WeatherStatisticsState(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          type metadata accessor for WeatherStatisticsModel();
          sub_100003D98();
          (*(v76 + 8))(v46);
          v32 = v98;
        }

        else
        {
          v32 = v98;
          if (!EnumCaseMultiPayload)
          {
          }
        }

        v77 = sub_10050269C();
        v78 = type metadata accessor for WeatherDataOverrides(v77);
        if (!sub_1000214B8(v78))
        {
          v99 = type metadata accessor for Date();
          if (!sub_100024D10(v5, 1, v99))
          {
            sub_100049884();
            (*(v79 + 8))(v5);
          }

          v80 = v6[5];
          if (!sub_100024D10(v5 + v80, 1, v99))
          {
            sub_100049884();
            (*(v81 + 8))(v5 + v80);
          }
        }
      }

      v18 = *(v32 + 28);
      goto LABEL_55;
    case 6u:

      v56 = *(v3 + 32);
      if (v56 != 255)
      {
        sub_1002773E8(*(v3 + 16), *(v3 + 24), v56);
      }

      v57 = type metadata accessor for MoonComponentViewModel(0);
      v58 = *(v57 + 28);
      type metadata accessor for Date();
      sub_100003D98();
      (*(v59 + 8))(v3 + v58);
      v18 = *(v57 + 40);
      goto LABEL_55;
    case 7u:
      v60 = type metadata accessor for NewsArticleComponentViewModel(0);
      if (sub_1000C8BBC(v60) == 1)
      {

        v61 = type metadata accessor for NewsArticleComponentContentViewModel(0);
        v62 = v61[5];
        v63 = type metadata accessor for URL();
        if (!sub_1000D3BF0(v3 + v62))
        {
          sub_100003B20();
          (*(v64 + 8))(v3 + v62, v63);
        }

        sub_10002418C(v61[6]);

        sub_1000E171C();
        v66 = *(v65 + 8);
        v66(v3 + v67, v63);
        v68 = v61[8];
        if (!sub_1000D3BF0(v3 + v68))
        {
          v66(v3 + v68, v63);
        }
      }

      break;
    case 8u:

      v19 = *(type metadata accessor for NextHourPrecipitationComponentViewModel(0) + 20);
      type metadata accessor for NextHourPrecipitationChartViewModel();
      goto LABEL_43;
    case 9u:
      type metadata accessor for Location();
      goto LABEL_41;
    case 0xAu:

      goto LABEL_56;
    case 0xBu:
      type metadata accessor for PressureTrend();
      sub_100003D98();
      (*(v48 + 8))(v3);
      type metadata accessor for PressureComponentViewModel(0);
      sub_1000C827C();
      sub_10002418C(v49);

      sub_10002418C(v4[6]);

      v26 = v4[7];
LABEL_23:
      sub_10002418C(v26);

      v18 = v4[9];
LABEL_55:
      sub_10002418C(v18);
      goto LABEL_56;
    case 0xDu:

      v19 = *(type metadata accessor for SevereAlertComponentViewModel(0) + 36);
      type metadata accessor for WeatherAlert.Prominence();
LABEL_43:
      sub_100003D98();
      (*(v73 + 8))(v3 + v19);
      break;
    case 0xEu:
      type metadata accessor for SunriseSunsetViewModel();
LABEL_41:
      sub_100003D98();
      (*(v72 + 8))(v3);
      break;
    case 0xFu:

      goto LABEL_56;
    case 0x10u:

      v69 = type metadata accessor for UVIndexComponentViewModel(0);
      v70 = *(v69 + 28);
      type metadata accessor for WeatherDescription();
      sub_100003D98();
      (*(v71 + 8))(v3 + v70);
      sub_10002418C(*(v69 + 32));

      goto LABEL_56;
    case 0x11u:

      goto LABEL_56;
    case 0x12u:

      v74 = *(type metadata accessor for WindComponentViewModel(0) + 68);
      type metadata accessor for WindComponentCompassViewModel();
      sub_100003D98();
      (*(v75 + 8))(v3 + v74);
LABEL_56:

      break;
    default:
      break;
  }

  v82 = v12 + *(v2 + 32);
  v83 = type metadata accessor for LocationComponentAction(0);
  if (!sub_100005BB8(v83))
  {
    sub_10002C598();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        type metadata accessor for URL();
        goto LABEL_62;
      case 1u:
        type metadata accessor for WeatherMapOverlayKind();
        goto LABEL_62;
      case 2u:
        type metadata accessor for DetailCondition();
LABEL_62:
        sub_100003D98();
        (*(v84 + 8))(v82);
        break;
      case 4u:
        v85 = *(sub_10022C350(&qword_100CA6688, &unk_100A314A0) + 48);
        type metadata accessor for Location();
        sub_100003D98();
        (*(v86 + 8))(v82 + v85);
        break;
      default:
        break;
    }
  }

  swift_unknownObjectRelease();
  sub_100006F14((v12 + v0[6]));
  v87 = v0[8];
  type metadata accessor for Location.Identifier();
  sub_100003D98();
  (*(v88 + 8))(v12 + v87);

  sub_10004E484();
  sub_10004E484();
  sub_10004E484();

  v89 = v0[17];
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v90 + 8))(v12 + v89);
  }

  else
  {
  }

  sub_100022C00(v0[18]);
  sub_100022C00(v0[19]);
  v91 = v0[20];
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v92 + 8))(v12 + v91);
  }

  else
  {
  }

  sub_100022C00(v0[21]);
  sub_100022C00(v0[22]);
  sub_100022C00(v0[23]);
  sub_100022C00(v0[24]);
  sub_100022C00(v0[25]);
  sub_100022C00(v0[26]);
  sub_100022C00(v0[27]);

  (*(v11 + 8))(v1 + ((v102 + v101 + v100) & ~v100), v103);
  sub_100051A4C();

  return swift_deallocObject();
}

uint64_t sub_1001F46B0()
{
  sub_10000FE4C();
  v0 = sub_100121D30();
  return sub_100005F94(v0);
}

uint64_t sub_1001F4774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100003B38();
  type metadata accessor for LocationComponentContainerViewModel(v5);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    if (v3 == 2147483646)
    {
      sub_100502678();
      sub_1000115D8();
      return sub_1005026B4(v8);
    }

    sub_10022C350(&qword_100CC0BD8, &qword_100A597D8);
    v7 = *(a3 + 28);
  }

  v10 = sub_1000039EC(v7);

  return sub_100024D10(v10, v11, v12);
}

void sub_1001F4838()
{
  sub_1000041D8();
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_100003928();
  if (*(v3 + 84) == v2)
  {
    v4 = *(v1 + 20);
  }

  else
  {
    if (v2 == 2147483646)
    {
      sub_100502678();
      *(v5 + 24) = v0;
      return;
    }

    sub_10022C350(&qword_100CC0BD8, &qword_100A597D8);
    v4 = *(v1 + 28);
  }

  v6 = sub_100016A74(v4);

  sub_10001B350(v6, v7, v8, v9);
}

uint64_t sub_1001F48F8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CABE00, &unk_100A598A0);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = a3[6];
  }

  else
  {
    type metadata accessor for LocationComponentViewModel(0);
    sub_100003928();
    if (*(v7 + 84) == v3)
    {
      v6 = a3[7];
    }

    else
    {
      sub_10022C350(&qword_100CC0BD8, &qword_100A597D8);
      sub_100003928();
      if (*(v8 + 84) == v3)
      {
        v6 = a3[9];
      }

      else
      {
        type metadata accessor for Location.Identifier();
        sub_100003928();
        if (*(v9 + 84) != v3)
        {
          sub_1000115D8();
          return (v14 + 1);
        }

        v6 = a3[11];
      }
    }
  }

  v10 = sub_1000039EC(v6);

  return sub_100024D10(v10, v11, v12);
}

void sub_1001F4A6C()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CABE00, &unk_100A598A0);
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    v5 = v2[6];
  }

  else
  {
    type metadata accessor for LocationComponentViewModel(0);
    sub_100003928();
    if (*(v6 + 84) == v3)
    {
      v5 = v2[7];
    }

    else
    {
      sub_10022C350(&qword_100CC0BD8, &qword_100A597D8);
      sub_100003928();
      if (*(v7 + 84) == v3)
      {
        v5 = v2[9];
      }

      else
      {
        type metadata accessor for Location.Identifier();
        sub_100003928();
        if (*(v8 + 84) != v3)
        {
          *(v1 + v2[12]) = (v0 - 1);
          return;
        }

        v5 = v2[11];
      }
    }
  }

  v9 = sub_100016A74(v5);

  sub_10001B350(v9, v10, v11, v12);
}

uint64_t sub_1001F4BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100017580();
  type metadata accessor for LocationComponentContainerViewModel(v6);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3 + *(a3 + 24);

    return sub_100024D10(v10, a2, v9);
  }

  else
  {
    sub_1000115D8();
    return (v12 + 1);
  }
}

void sub_1001F4C80()
{
  sub_1000041D8();
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_100016A74(*(v2 + 24));

    sub_10001B350(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 28)) = (v0 - 1);
  }
}

uint64_t sub_1001F4D14()
{
  sub_100003A00();
  sub_10022C350(&qword_100CC0BD8, &qword_100A597D8);
  v1 = sub_1000251E0();

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_1001F4D60()
{
  sub_100003A00();
  sub_10022C350(&qword_100CC0BD8, &qword_100A597D8);
  sub_10002FDE8();
  sub_1000178C4();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_1001F4DB4()
{
  sub_10000FE4C();
  v0 = sub_100A05078();
  return sub_100005F94(v0);
}

uint64_t sub_1001F4E14(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CC0BD8, &qword_100A597D8);
  sub_100003928();
  if (*(v5 + 84) == a2)
  {

    return sub_100024D10(a1, a2, v4);
  }

  else
  {
    sub_1000115D8();
    return sub_1005026B4(v7);
  }
}

void sub_1001F4EC4()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CC0BD8, &qword_100A597D8);
  sub_100003928();
  if (*(v2 + 84) == v1)
  {
    sub_10002FDE8();
    sub_1000178C4();

    sub_10001B350(v3, v4, v5, v6);
  }

  else
  {
    sub_100502678();
    *(v7 + 16) = v0;
  }
}

uint64_t sub_1001F4F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003B38();
  type metadata accessor for AirQualityComponentViewModel(v6);
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1000251E0();
  }

  else
  {
    sub_10022C350(&qword_100CC0BD8, &qword_100A597D8);
    sub_100003928();
    if (*(v11 + 84) != v3)
    {
      sub_100502678();
      return sub_100042260(*(v13 + 8));
    }

    v9 = v10;
    v8 = v4 + *(a3 + 20);
  }

  return sub_100024D10(v8, v3, v9);
}

void sub_1001F5040()
{
  sub_1000041D8();
  type metadata accessor for AirQualityComponentViewModel(0);
  sub_100003928();
  if (*(v2 + 84) == v1)
  {
    sub_10002FDE8();
  }

  else
  {
    sub_10022C350(&qword_100CC0BD8, &qword_100A597D8);
    sub_100003928();
    if (*(v3 + 84) != v1)
    {
      sub_100502678();
      *(v8 + 8) = -v0;
      return;
    }
  }

  sub_1000178C4();

  sub_10001B350(v4, v5, v6, v7);
}

uint64_t sub_1001F5120(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    return sub_100042260(*(a1 + 24));
  }

  sub_10022C350(&qword_100CABE00, &unk_100A598A0);
  v5 = sub_1000039EC(*(a3 + 28));

  return sub_100024D10(v5, v6, v7);
}

void sub_1001F51A0()
{
  sub_100003A00();
  if (v3 == 254)
  {
    *(v1 + 24) = -v0;
  }

  else
  {
    v4 = v2;
    sub_10022C350(&qword_100CABE00, &unk_100A598A0);
    v5 = sub_100016A74(*(v4 + 28));

    sub_10001B350(v5, v6, v7, v8);
  }
}

uint64_t sub_1001F521C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003B38();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      sub_1000115D8();
      return (v9 + 1);
    }

    sub_10022C350(&qword_100CB6E18, &unk_100A4A9E0);
    sub_100003928();
    if (*(v12 + 84) == v3)
    {
      v8 = v11;
      v13 = *(a3 + 48);
    }

    else
    {
      v8 = sub_10022C350(&qword_100CABE00, &unk_100A598A0);
      v13 = *(a3 + 52);
    }

    v7 = v4 + v13;
  }

  return sub_100024D10(v7, v3, v8);
}

void sub_1001F5330()
{
  sub_1000041D8();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    sub_10002FDE8();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20) + 8) = (v0 - 1);
      return;
    }

    sub_10022C350(&qword_100CB6E18, &unk_100A4A9E0);
    sub_100003928();
    if (*(v5 + 84) != v3)
    {
      sub_10022C350(&qword_100CABE00, &unk_100A598A0);
    }
  }

  sub_1000178C4();

  sub_10001B350(v6, v7, v8, v9);
}

uint64_t sub_1001F5440(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    return sub_100042260(*(a1 + 8));
  }

  sub_10022C350(&qword_100CC0BD8, &qword_100A597D8);
  v5 = sub_1000039EC(*(a3 + 20));

  return sub_100024D10(v5, v6, v7);
}

void sub_1001F54C0()
{
  sub_100003A00();
  if (v3 == 254)
  {
    *(v1 + 8) = -v0;
  }

  else
  {
    v4 = v2;
    sub_10022C350(&qword_100CC0BD8, &qword_100A597D8);
    v5 = sub_100016A74(*(v4 + 20));

    sub_10001B350(v5, v6, v7, v8);
  }
}

uint64_t sub_1001F5548()
{
  sub_10022E824(&qword_100CC0FA0, &qword_100A59D98);
  sub_10022E824(&qword_100CC0FB0, &qword_100A59DA8);
  sub_1004FC890();
  v0 = type metadata accessor for EmptyVisualEffect();
  v1 = sub_10002C598();
  v3 = sub_10022E824(v1, v2);
  sub_100010208();
  v6 = sub_100061A3C(v4, v5, &protocol conformance descriptor for EmptyVisualEffect);
  v24 = sub_10023FBF4(&qword_100CC0FD8, &qword_100CC0FD0, &qword_100A59DB0, &protocol conformance descriptor for OffsetShape<A>);
  v14 = sub_100017540(v24, v7, v8, v9, v10, v11, v12, v13, v0);
  return sub_1000043A0(v14, v15, v16, v17, v18, v19, v20, v21, v23, v3, v6, v24);
}

uint64_t sub_1001F56B8()
{
  v0 = sub_10000C918();
  sub_10022E824(v0, v1);
  sub_10022E824(&qword_100CC2320, &unk_100A5AE38);
  sub_100007EB8();
  sub_10023FBF4(v2, &qword_100CC2318, &qword_100A5AE30, v3);
  v4 = sub_10022E824(&qword_100CA4670, &unk_100A2E850);
  v5 = sub_10022E824(&qword_100CA4680, &unk_100A59690);
  type metadata accessor for EmptyVisualEffect();
  sub_100010208();
  sub_100061A3C(v6, v7, &protocol conformance descriptor for EmptyVisualEffect);
  sub_100005B34();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_100017540(OpaqueTypeConformance2, v9, v10, v11, v12, v13, v14, v15, v5);
  v34 = sub_1001A7CA8();
  v24 = sub_100017540(v34, v17, v18, v19, v20, v21, v22, v23, v4);
  return sub_1000043A0(v24, v25, v26, v27, v28, v29, v30, v31, v33, &type metadata for Path, v16, v34);
}

uint64_t sub_1001F58B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WeatherAlert.Prominence();
    v9 = a1 + *(a3 + 36);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001F5940(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherAlert.Prominence();
    v8 = v5 + *(a4 + 36);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001F5A20(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
    v12 = a3[17];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1001F5B44(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
      v14 = a4[17];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001F5C64()
{
  v1 = type metadata accessor for DailyComponentForecastRowViewLargeText(0);
  v23 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v23 + 16) & ~v23);
  v3 = type metadata accessor for Date();
  sub_1000037E8();
  v22 = *(v4 + 8);
  v22(v2, v3);
  v5 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_100008544(v5[5]);

  sub_100008544(v5[6]);

  v6 = v5[7];
  v7 = type metadata accessor for TimeZone();
  sub_1000037E8();
  v21 = *(v8 + 8);
  v21(v2 + v6, v7);
  v9 = v5[8];
  v10 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037E8();
  v12 = *(v11 + 8);
  v12(v2 + v9, v10);
  v12(v2 + v5[9], v10);
  sub_100008544(v5[10]);

  sub_100008544(v5[11]);

  sub_100008544(v5[14]);

  v13 = v5[15];
  v14 = type metadata accessor for Precipitation();
  if (!sub_100024D10(v2 + v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v2 + v13, v14);
  }

  sub_100008544(v5[17]);

  sub_100008544(v5[18]);

  sub_100008544(v5[19]);

  v15 = v1[5];
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    (*(v16 + 8))(v2 + v15);
  }

  else
  {
  }

  sub_1000E4DF8(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  sub_1000E4DF8(*(v2 + v1[7]), *(v2 + v1[7] + 8));
  sub_100008544(v1[8]);

  v17 = v2 + v1[17];

  v18 = v17 + *(sub_10022C350(&qword_100CABD18, &unk_100A3AC40) + 32);
  if (!sub_100024D10(v18, 1, v5))
  {
    v22(v18, v3);
    sub_100003DC4();
    sub_100003DC4();
    v21(v18 + v5[7], v7);
    v12(v18 + v5[8], v10);
    v12(v18 + v5[9], v10);
    sub_100003DC4();
    sub_100003DC4();
    sub_100003DC4();
    v19 = v5[15];
    if (!sub_100024D10(v18 + v19, 1, v14))
    {
      (*(*(v14 - 8) + 8))(v18 + v19, v14);
    }

    sub_100003DC4();
    sub_100003DC4();
    sub_100003DC4();
  }

  return swift_deallocObject();
}

uint64_t sub_1001F60D4()
{
  v2 = sub_100003B38();
  v3 = type metadata accessor for MoonDetailViewModel.Model(v2);
  v4 = sub_100024D10(v1, v0, v3);
  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F6114(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MoonDetailViewModel.Model(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001F6170(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003B38();
  type metadata accessor for MoonDetailSelectedDate(v6);
  sub_100003928();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_21:

    return sub_100024D10(v10, v3, v9);
  }

  if (v3 != 0x7FFFFFFF)
  {
    type metadata accessor for MoonViewModel(0);
    sub_100003928();
    if (*(v14 + 84) == v3)
    {
      v9 = v13;
      v15 = a3[7];
    }

    else
    {
      type metadata accessor for MoonScrubberHeaderViewModel(0);
      sub_100003928();
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v15 = a3[8];
      }

      else
      {
        type metadata accessor for OverviewTableViewModel();
        sub_100003928();
        if (*(v19 + 84) == v3)
        {
          v9 = v18;
          v15 = a3[9];
        }

        else
        {
          sub_10022C350(&qword_100CBA588, &qword_100A97960);
          sub_100003928();
          if (*(v21 + 84) == v3)
          {
            v9 = v20;
            v15 = a3[10];
          }

          else
          {
            type metadata accessor for ConditionDetailPlatterViewModel(0);
            sub_100003928();
            if (*(v23 + 84) == v3)
            {
              v9 = v22;
              v15 = a3[11];
            }

            else
            {
              sub_10022C350(&qword_100CA7188, &qword_100A35360);
              sub_100003928();
              if (*(v25 + 84) == v3)
              {
                v9 = v24;
                v15 = a3[13];
              }

              else
              {
                v9 = type metadata accessor for Location();
                v15 = a3[14];
              }
            }
          }
        }
      }
    }

    v10 = v4 + v15;
    goto LABEL_21;
  }

  v11 = *(v4 + a3[5] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_1001F63D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003B38();
  type metadata accessor for MoonDetailSelectedDate(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + a4[5] + 8) = (v4 - 1);
      return;
    }

    type metadata accessor for MoonViewModel(0);
    sub_100003928();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[7];
    }

    else
    {
      type metadata accessor for MoonScrubberHeaderViewModel(0);
      sub_100003928();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[8];
      }

      else
      {
        type metadata accessor for OverviewTableViewModel();
        sub_100003928();
        if (*(v19 + 84) == a3)
        {
          v11 = v18;
          v15 = a4[9];
        }

        else
        {
          sub_10022C350(&qword_100CBA588, &qword_100A97960);
          sub_100003928();
          if (*(v21 + 84) == a3)
          {
            v11 = v20;
            v15 = a4[10];
          }

          else
          {
            type metadata accessor for ConditionDetailPlatterViewModel(0);
            sub_100003928();
            if (*(v23 + 84) == a3)
            {
              v11 = v22;
              v15 = a4[11];
            }

            else
            {
              sub_10022C350(&qword_100CA7188, &qword_100A35360);
              sub_100003928();
              if (*(v25 + 84) == a3)
              {
                v11 = v24;
                v15 = a4[13];
              }

              else
              {
                v11 = type metadata accessor for Location();
                v15 = a4[14];
              }
            }
          }
        }
      }
    }

    v12 = v5 + v15;
  }

  sub_10001B350(v12, v4, v4, v11);
}

uint64_t sub_1001F662C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherCondition();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1001F6674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherCondition();

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1001F66E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CB76D0, &unk_100A4B720);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001F677C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CB76D0, &unk_100A4B720);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001F6818()
{
  sub_100003A00();
  sub_10022C350(&qword_100CC2E78, &unk_100A5BAC8);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_1001F6878@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002D8510(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001F68D4()
{
  type metadata accessor for ReportWeatherContentView(0);
  sub_100008560();
  v3 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  v4 = *(v0 + 28);
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F69F0()
{
  type metadata accessor for ReportWeatherContentView(0);
  sub_100008560();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 28);
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F6B18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002D84C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001F6B6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002D8478(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001F6BC8()
{
  v0 = sub_100003940();
  sub_10022E824(v0, v1);
  type metadata accessor for InsetGroupedListStyle();
  sub_100005DFC();
  sub_100513FAC(v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001F6CE0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001F6D8C(void *a1)
{
  v1 = a1[1];
  v2 = type metadata accessor for Optional();
  v13 = v1;
  v3 = sub_10001C4A8();
  swift_getWitnessTable(v3, v2, &v13);
  sub_10000381C();
  v4 = type metadata accessor for ZStack();
  sub_10022E824(&qword_100CBE348, &unk_100A55B80);
  sub_10000381C();
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for StaticIf();
  v7 = sub_10001EF94();
  v12[0] = swift_getWitnessTable(v7, v4);
  v12[1] = sub_100082E44();
  v8 = sub_100007E30();
  v11[0] = &protocol witness table for Solarium;
  v11[1] = swift_getWitnessTable(v8, v5, v12);
  v11[2] = v1;
  v9 = sub_100006058();
  return swift_getWitnessTable(v9, v6, v11);
}

uint64_t sub_1001F6EA0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CC39F8, &qword_100A5CDD8);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_10022C350(&qword_100CC3A00, &unk_100A5CDE0);
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1001F6FF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CC39F8, &qword_100A5CDD8);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CC3A00, &unk_100A5CDE0);
      sub_100003928();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001F7150()
{
  sub_10000C778();
  type metadata accessor for PredictedLocationNotificationsDebugView(0);
  sub_100008560();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
  sub_1000037E8();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = v0[7];
  sub_10022C350(&qword_100CC39F8, &qword_100A5CDD8);
  sub_100003D98();
  (*(v8 + 8))(v3 + v7);
  v9 = v0[8];
  sub_10022C350(&qword_100CC3A00, &unk_100A5CDE0);
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);
  v11 = sub_10004E684();
  (v6)(v11);

  sub_1000247C4();
  sub_100006F14((v3 + v0[12]));
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1001F72D4()
{
  sub_10022E824(&qword_100CC3AC8, &qword_100A5CE68);
  sub_10000579C();
  sub_100006F64(v0, &qword_100CC3AC8, &qword_100A5CE68, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001F73E0()
{
  sub_100074B7C();
  if (*(v2 + 16) == 1)
  {
    sub_1000199D8();
    v4 = *v3;
  }

  else
  {
    sub_100008898();
    __chkstk_darwin(v5);
    sub_10001EFB8();
    while (v7 != v9)
    {
      sub_10001C4F4(v8, v9);
    }

    v4 = sub_10001484C(v6, v7, v8);
  }

  if (*(*(v4 - 8) + 84) == v0)
  {
    v10 = v1;
  }

  else
  {
    sub_10022C350(&qword_100CA42D8, &unk_100A2E3A0);
    v10 = sub_100016AD8();
  }

  return sub_100024D10(v10, v0, v4);
}

uint64_t sub_1001F74B4()
{
  sub_1000041D8();
  if (*(v2 + 16) == 1)
  {
    sub_1000199D8();
    v4 = *v3;
  }

  else
  {
    __chkstk_darwin(v1);
    sub_10001EFB8();
    while (v6 != v8)
    {
      sub_10001C4F4(v7, v8);
    }

    v4 = sub_10001484C(v5, v6, v7);
  }

  if (*(*(v4 - 8) + 84) != v0)
  {
    sub_10022C350(&qword_100CA42D8, &unk_100A2E3A0);
    sub_100016AD8();
  }

  sub_1000178C4();
  return sub_10001B350(v9, v10, v11, v12);
}

uint64_t sub_1001F75A0()
{
  sub_100074B7C();
  if (*(v3 + 16) == 1)
  {
    sub_1000199D8();
    v5 = *v4;
  }

  else
  {
    sub_100008898();
    __chkstk_darwin(v6);
    sub_10001EFB8();
    while (v8 != v10)
    {
      sub_10001C4F4(v9, v10);
    }

    v5 = sub_10001484C(v7, v8, v9);
  }

  if (*(*(v5 - 8) + 84) == v0)
  {
    v11 = v1;
    return sub_100024D10(v11, v0, v5);
  }

  if (v0 != 0x7FFFFFFF)
  {
    v5 = sub_10022C350(&qword_100CA42D8, &unk_100A2E3A0);
    v11 = v1 + *(v2 + 64);
    return sub_100024D10(v11, v0, v5);
  }

  v12 = *(v1 + *(v2 + 60));
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

void sub_1001F76A0()
{
  sub_1000041D8();
  if (*(v5 + 16) == 1)
  {
    sub_1000199D8();
    v7 = *v6;
  }

  else
  {
    __chkstk_darwin(v4);
    sub_10001EFB8();
    while (v9 != v11)
    {
      sub_10001C4F4(v10, v11);
    }

    v7 = sub_10001484C(v8, v9, v10);
  }

  if (*(*(v7 - 8) + 84) != v3)
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 60)) = (v0 - 1);
      return;
    }

    sub_10022C350(&qword_100CA42D8, &unk_100A2E3A0);
  }

  sub_1000178C4();
  sub_10001B350(v12, v13, v14, v15);
}

uint64_t sub_1001F77A4(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = sub_10022E824(&qword_100CBD8C8, &unk_100A550D0);
  v5[3] = v2;
  v5[4] = sub_1005284D4();
  type metadata accessor for SizeFittingCanvasViewLayoutContainer(255, v5);
  v3 = sub_1000102F8();
  return swift_getWitnessTable(v3);
}

uint64_t sub_1001F7818()
{
  sub_100074B7C();
  v3 = type metadata accessor for Font.Context();
  if (*(*(v3 - 8) + 84) == v0)
  {

    return sub_100024D10(v1, v0, v3);
  }

  else
  {
    if (*(v2 + 16) == 1)
    {
      sub_1000199D8();
    }

    else
    {
      sub_100008898();
      __chkstk_darwin(v5);
      sub_10001EFB8();
      while (v7 != v9)
      {
        sub_10001C4F4(v8, v9);
      }

      sub_10001484C(v6, v7, v8);
    }

    v10 = sub_100016AD8();
    return sub_100024D10(v10, v0, v11);
  }
}

uint64_t sub_1001F7904()
{
  sub_1000041D8();
  if (*(*(type metadata accessor for Font.Context() - 8) + 84) == v1)
  {
    sub_1000178C4();

    return sub_10001B350(v2, v3, v4, v5);
  }

  else
  {
    if (*(v0 + 16) == 1)
    {
      sub_1000199D8();
    }

    else
    {
      sub_100008898();
      __chkstk_darwin(v7);
      sub_10001EFB8();
      while (v9 != v11)
      {
        sub_10001C4F4(v10, v11);
      }

      sub_10001484C(v8, v9, v10);
    }

    sub_100016AD8();
    sub_1000178C4();
    return sub_10001B350(v12, v13, v14, v15);
  }
}

uint64_t sub_1001F79F0(uint64_t *a1)
{
  v1 = a1[4];
  v2 = type metadata accessor for SizeFittingCanvasViewLayout(255, *a1, a1[1], a1[3]);
  swift_getWitnessTable(byte_100A5D540, v2);
  v3 = type metadata accessor for _LayoutRoot();
  swift_getWitnessTable(&protocol conformance descriptor for _LayoutRoot<A>, v3);
  v4 = type metadata accessor for _VariadicView.Tree();
  v6[0] = swift_getWitnessTable(&protocol conformance descriptor for _LayoutRoot<A>, v3);
  v6[1] = v1;
  return swift_getWitnessTable(&protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v4, v6);
}

uint64_t sub_1001F7AFC()
{
  type metadata accessor for AppConfiguration();
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001F7C14()
{

  return swift_deallocObject();
}

uint64_t sub_1001F7C4C()
{
  sub_10000C778();
  v1 = type metadata accessor for ViewData();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Date();
  sub_1000037C4();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1001F7D6C()
{
  type metadata accessor for ViewData();
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001F7DEC()
{
  v54 = type metadata accessor for LocationListPositionData();
  sub_1000037C4();
  v2 = v1;
  v58 = *(v1 + 80);
  v4 = *(v3 + 64);
  v51 = type metadata accessor for TemperatureScaleData();
  sub_1000037C4();
  v6 = v5;
  v43 = (((v58 + 16) & ~v58) + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v46 = type metadata accessor for LocationData();
  sub_1000037C4();
  v10 = v9;
  v42 = (v43 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = sub_10022C350(&qword_100CB1290, &unk_100A418D0);
  sub_100003AE8(v13);
  v41 = (v42 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v15 + 64);
  v17 = sub_10022C350(&qword_100CC41C0, &qword_100A5D7E0);
  sub_100003AE8(v17);
  v48 = (v41 + v16 + *(v18 + 80)) & ~*(v18 + 80);
  v55 = *(v19 + 64);
  v57 = type metadata accessor for AQIAvailabilityData();
  sub_1000037C4();
  v21 = v20;
  v52 = *(v20 + 80);
  v50 = *(v22 + 64);
  PerfLogData = type metadata accessor for LocationViewLoadPerfLogData();
  sub_1000037C4();
  v24 = v23;
  v47 = *(v23 + 80);
  v45 = *(v25 + 64);
  ErrorData = type metadata accessor for LocationViewLoadErrorData();
  sub_1000037C4();
  v27 = v26;
  v28 = *(v26 + 80);
  v44 = *(v29 + 64);
  v49 = type metadata accessor for Date();
  sub_1000037C4();
  v31 = v30;
  v32 = *(v30 + 80);
  (*(v2 + 8))(v0 + ((v58 + 16) & ~v58), v54);
  (*(v6 + 8))(v0 + v43, v51);
  (*(v10 + 8))(v0 + v42, v46);
  v33 = type metadata accessor for LocationConditionData();
  if (!sub_100030484(v0 + v41))
  {
    sub_100003B20();
    (*(v34 + 8))(v0 + v41, v33);
  }

  v35 = type metadata accessor for AQIData();
  if (!sub_100030484(v0 + v48))
  {
    sub_100003B20();
    (*(v36 + 8))(v0 + v48, v35);
  }

  v37 = (v48 + v55 + v52) & ~v52;
  v38 = (v37 + v50 + v47) & ~v47;
  v39 = (v38 + v45 + v28) & ~v28;
  (*(v21 + 8))(v0 + v37, v57);
  (*(v24 + 8))(v0 + v38, PerfLogData);
  (*(v27 + 8))(v0 + v39, ErrorData);
  (*(v31 + 8))(v0 + ((v39 + v44 + v32) & ~v32), v49);

  return swift_deallocObject();
}

uint64_t sub_1001F831C()
{
  v36 = type metadata accessor for LocationListPositionData();
  sub_1000037C4();
  v2 = v1;
  v37 = *(v1 + 80);
  v4 = *(v3 + 64);
  v34 = type metadata accessor for TemperatureScaleData();
  sub_1000037C4();
  v6 = v5;
  v31 = (((v37 + 16) & ~v37) + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v32 = type metadata accessor for LocationData();
  sub_1000037C4();
  v10 = v9;
  v11 = (v31 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v13 = *(v12 + 64);
  v14 = sub_10022C350(&qword_100CB1290, &unk_100A418D0);
  sub_100003AE8(v14);
  v16 = (v11 + v13 + *(v15 + 80)) & ~*(v15 + 80);
  v18 = *(v17 + 64);
  v19 = sub_10022C350(&qword_100CC41C0, &qword_100A5D7E0);
  sub_100003AE8(v19);
  v21 = (v16 + v18 + *(v20 + 80)) & ~*(v20 + 80);
  v33 = *(v22 + 64);
  v35 = type metadata accessor for AQIAvailabilityData();
  sub_1000037C4();
  v24 = v23;
  v25 = *(v23 + 80);
  (*(v2 + 8))(v0 + ((v37 + 16) & ~v37), v36);
  (*(v6 + 8))(v0 + v31, v34);
  (*(v10 + 8))(v0 + v11, v32);
  v26 = type metadata accessor for LocationConditionData();
  if (!sub_100024D10(v0 + v16, 1, v26))
  {
    sub_100003B20();
    (*(v27 + 8))(v0 + v16, v26);
  }

  v28 = type metadata accessor for AQIData();
  if (!sub_100024D10(v0 + v21, 1, v28))
  {
    sub_100003B20();
    (*(v29 + 8))(v0 + v21, v28);
  }

  (*(v24 + 8))(v0 + ((v21 + v33 + v25) & ~v25), v35);

  return swift_deallocObject();
}

uint64_t sub_1001F86C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6650, &unk_100A3FAB0);
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F8718(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10022C350(&qword_100CA6650, &unk_100A3FAB0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001F8780(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CA6CB0, &unk_100A31CB0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return sub_100024D10(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for DayWeather();
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = sub_10022C350(&qword_100CC4350, &qword_100A5D908);
      v14 = a3[8];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_1001F88A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CA6CB0, &unk_100A31CB0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 8) = (a2 - 1);
      return;
    }

    type metadata accessor for DayWeather();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = sub_10022C350(&qword_100CC4350, &qword_100A5D908);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001F89D0()
{
  sub_10022E824(&qword_100CC4410, &qword_100A5D998);
  sub_10022E824(&qword_100CA5528, &qword_100A2F940);
  sub_10022E824(&qword_100CC4408, &qword_100A5D990);
  sub_10022E824(&qword_100CC4400, &qword_100A5D988);
  type metadata accessor for InsetGroupedListStyle();
  sub_100005DFC();
  sub_100006F64(v0, &qword_100CC4400, &qword_100A5D988, v1);
  sub_100005DB4();
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  sub_100005DE4();
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v2, &qword_100CA5528, &qword_100A2F940, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001F8B44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_10022C350(&qword_100CB76D0, &unk_100A4B720);
      v11 = *(a3 + 28);
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_1001F8C24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_10022C350(&qword_100CB76D0, &unk_100A4B720);
      v11 = *(a4 + 28);
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1001F8D10()
{
  sub_100003B38();
  type metadata accessor for GraphicsContext.ResolvedText();
  v0 = sub_100014880();

  return sub_100024D10(v0, v1, v2);
}

uint64_t sub_1001F8D48()
{
  sub_100003B38();
  type metadata accessor for GraphicsContext.ResolvedText();
  v0 = sub_100005B64();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_1001F8D80()
{
  v0 = sub_100003B38();
  type metadata accessor for MeasuredText(v0);
  v1 = sub_100014880();

  return sub_100024D10(v1, v2, v3);
}

uint64_t sub_1001F8DB8()
{
  v0 = sub_100003B38();
  type metadata accessor for MeasuredText(v0);
  v1 = sub_100005B64();

  return sub_10001B350(v1, v2, v3, v4);
}

uint64_t sub_1001F8DF8()
{
  v0 = sub_100003B38();
  type metadata accessor for MeasuredText(v0);
  v1 = sub_100014880();

  return sub_100024D10(v1, v2, v3);
}

uint64_t sub_1001F8E30()
{
  v0 = sub_100003B38();
  type metadata accessor for MeasuredText(v0);
  v1 = sub_100005B64();

  return sub_10001B350(v1, v2, v3, v4);
}

uint64_t sub_1001F90E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CA58B8, &qword_100A2FD30);
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_10022C350(&qword_100CACCC0, &unk_100A5D780);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_1001F91D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CA58B8, &qword_100A2FD30);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_10022C350(&qword_100CACCC0, &unk_100A5D780);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001F92F8(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1001F94E4()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1001F951C()
{

  return swift_deallocObject();
}

uint64_t sub_1001F9554()
{

  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1001F9C88()
{

  sub_1000E4DF8(*(v0 + 32), *(v0 + 40));
  sub_1000E4DF8(*(v0 + 48), *(v0 + 56));
  sub_100006F14((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1001F9CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA6CB0, &unk_100A31CB0);
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for MoonDetailViewModel.Model(0);
    sub_100003928();
    if (*(v11 + 84) != v3)
    {
      return sub_10004E6F4(*(a3 + 32));
    }

    v8 = v10;
    v9 = v4 + *(a3 + 28);
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1001F9DD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA6CB0, &unk_100A31CB0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for MoonDetailViewModel.Model(0);
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 32) + 24) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 28);
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001F9F58()
{
  type metadata accessor for OverviewTableViewModel();
  sub_100003D98();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001F9FDC()
{
  v1 = (type metadata accessor for MoonCompactOverviewTableViewModel(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for OverviewTableViewModel();
  sub_1000037E8();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v1[7];
  if (!sub_100024D10(v2 + v6, 1, v3))
  {
    v5(v2 + v6, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1001FA0F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

__n128 sub_1001FA164(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001FA178(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for MoonViewModel(0);
    sub_100003928();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[8];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        return sub_10004E6F4(a3[9]);
      }

      v8 = type metadata accessor for CoordinateSpace();
      v12 = a3[12];
    }

    v9 = v4 + v12;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1001FA27C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for MoonViewModel(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v5 + a4[9] + 24) = (v4 - 1);
        return;
      }

      v10 = type metadata accessor for CoordinateSpace();
      v14 = a4[12];
    }

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_1001FA4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000038D8();
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v3 + *(a3 + 20);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1001FA548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000038D8();
  v8 = type metadata accessor for Location();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = type metadata accessor for Date();
    v10 = v4 + *(a4 + 20);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1001FA5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CurrentWeather();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1001FA694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CurrentWeather();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001FA764(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AutomationInfo(0);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001FA7E4()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1001FA81C()
{

  return swift_deallocObject();
}

uint64_t sub_1001FA854()
{

  return swift_deallocObject();
}

uint64_t sub_1001FA894()
{

  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1001FAB10()
{

  return swift_deallocObject();
}

uint64_t sub_1001FAC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationDynamicContentConfiguration(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1001FACC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocationDynamicContentConfiguration(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001FADD4()
{
  v0 = sub_10001853C();
  v4 = type metadata accessor for DefaultContentView(v0, v1, v2, v3);
  v5 = type metadata accessor for _ConditionalContent();
  v6 = sub_10001853C();
  v10 = type metadata accessor for NoAqiNewsContentView(v6, v7, v8, v9);
  v11 = sub_10001853C();
  v15 = type metadata accessor for SevereContentView(v11, v12, v13, v14);
  sub_1000371F0();
  v164 = type metadata accessor for _ConditionalContent();
  v162 = sub_1000163D4();
  v16 = sub_10001853C();
  v165 = type metadata accessor for NhpContentView(v16, v17, v18, v19);
  v20 = sub_10001853C();
  v167 = type metadata accessor for ElevatedAqiSevereContentView(v20, v21, v22, v23);
  v163 = sub_10003BE34();
  v24 = sub_10001853C();
  v168 = type metadata accessor for DefaultNewsContentView(v24, v25, v26, v27);
  v28 = sub_10001853C();
  v169 = type metadata accessor for DefaultTrendNewsContentView(v28, v29, v30, v31);
  v171 = sub_10003BE34();
  sub_100030500();
  v172 = type metadata accessor for _ConditionalContent();
  sub_100011680();
  v161 = type metadata accessor for _ConditionalContent();
  v32 = sub_10001853C();
  v173 = type metadata accessor for ElevatedAqiNewsContentView(v32, v33, v34, v35);
  v36 = sub_10001853C();
  v174 = type metadata accessor for NoAqiSevereNewsContentView(v36, v37, v38, v39);
  v170 = sub_10003BE34();
  v40 = sub_10001853C();
  v175 = type metadata accessor for NoAqiSevereNhpContentView(v40, v41, v42, v43);
  v44 = sub_10001853C();
  v177 = type metadata accessor for NoAqiNhpNewsContentView(v44, v45, v46, v47);
  v178 = sub_10003BE34();
  sub_100030500();
  v166 = type metadata accessor for _ConditionalContent();
  v48 = sub_10001853C();
  v179 = type metadata accessor for SevereNhpContentView(v48, v49, v50, v51);
  v52 = sub_10001853C();
  v180 = type metadata accessor for SevereNhpAqiContentView(v52, v53, v54, v55);
  v176 = sub_10003BE34();
  v56 = sub_10001853C();
  v181 = type metadata accessor for SevereNewsContentView(v56, v57, v58, v59);
  v60 = sub_10001853C();
  v183 = type metadata accessor for NhpNewsContentView(v60, v61, v62, v63);
  v184 = sub_10003BE34();
  sub_100030500();
  v186 = type metadata accessor for _ConditionalContent();
  sub_100011680();
  v187 = type metadata accessor for _ConditionalContent();
  sub_10002526C();
  v64 = type metadata accessor for _ConditionalContent();
  v65 = sub_10001853C();
  v188 = type metadata accessor for ElevatedAqiSevereNewsContentView(v65, v66, v67, v68);
  v69 = sub_10001853C();
  v189 = type metadata accessor for NoAqiSevereNhpNewsContentView(v69, v70, v71, v72);
  v185 = sub_10003BE34();
  v73 = sub_10001853C();
  v190 = type metadata accessor for ElevatedAqiContentView(v73, v74, v75, v76);
  v77 = sub_10001853C();
  v192 = type metadata accessor for NoAqiSevereContentView(v77, v78, v79, v80);
  v193 = sub_10003BE34();
  sub_100011680();
  v182 = type metadata accessor for _ConditionalContent();
  v81 = sub_10001853C();
  v194 = type metadata accessor for NoAqiNhpContentView(v81, v82, v83, v84);
  v85 = sub_10001853C();
  v195 = type metadata accessor for NoAqiContentView(v85, v86, v87, v88);
  sub_100011680();
  v191 = type metadata accessor for _ConditionalContent();
  v89 = sub_10001853C();
  v196 = type metadata accessor for SevereNhpNewsContentView(v89, v90, v91, v92);
  v93 = sub_10001853C();
  v197 = type metadata accessor for MinorAlertContentView(v93, v94, v95, v96);
  sub_100011680();
  v198 = type metadata accessor for _ConditionalContent();
  sub_10002526C();
  v199 = type metadata accessor for _ConditionalContent();
  v97 = sub_10003BE34();
  v98 = sub_10001853C();
  v102 = type metadata accessor for NhpMinorAlertContentView(v98, v99, v100, v101);
  v103 = sub_10001853C();
  v200 = type metadata accessor for ElevatedAqiMinorAlertContentView(v103, v104, v105, v106);
  sub_100011680();
  v201 = type metadata accessor for _ConditionalContent();
  sub_10002526C();
  v107 = v97;
  v202 = type metadata accessor for _ConditionalContent();
  sub_100030500();
  v108 = v64;
  v109 = type metadata accessor for _ConditionalContent();
  v203 = type metadata accessor for Optional();
  v110 = sub_1000208A8();
  v229[0] = &protocol witness table for EmptyView;
  v229[1] = swift_getWitnessTable(v110, v4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v5, v229);
  v112 = sub_100017AE4();
  v113 = swift_getWitnessTable(v112, v10);
  v114 = sub_10006970C();
  v228[0] = v113;
  v228[1] = swift_getWitnessTable(v114, v15);
  v227[0] = WitnessTable;
  v227[1] = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v164, v228);
  v115 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v162, v227);
  v116 = sub_100074C34();
  v117 = swift_getWitnessTable(v116, v165);
  v118 = sub_10002876C();
  v226[0] = v117;
  v226[1] = swift_getWitnessTable(v118, v167);
  v119 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v163, v226);
  v120 = sub_100004554();
  v121 = swift_getWitnessTable(v120, v168);
  v122 = sub_100014994();
  v225[0] = v121;
  v225[1] = swift_getWitnessTable(v122, v169);
  v224[0] = v119;
  v224[1] = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v171, v225);
  v223[0] = v115;
  v223[1] = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v172, v224);
  v123 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v161, v223);
  v124 = sub_10001C670();
  v125 = swift_getWitnessTable(v124, v173);
  v126 = sub_100051EE8();
  v222[0] = v125;
  v222[1] = swift_getWitnessTable(v126, v174);
  v127 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v170, v222);
  v128 = sub_100037BBC();
  v129 = swift_getWitnessTable(v128, v175);
  v130 = sub_10000EB60();
  v221[0] = v129;
  v221[1] = swift_getWitnessTable(v130, v177);
  v220[0] = v127;
  v220[1] = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v178, v221);
  v131 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v166, v220);
  v132 = sub_10003C608();
  v133 = swift_getWitnessTable(v132, v179);
  v134 = sub_10004E720();
  v219[0] = v133;
  v219[1] = swift_getWitnessTable(v134, v180);
  v135 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v176, v219);
  v136 = sub_100016BA0();
  v137 = swift_getWitnessTable(v136, v181);
  v138 = sub_1000499A0();
  v218[0] = v137;
  v218[1] = swift_getWitnessTable(v138, v183);
  v217[0] = v135;
  v217[1] = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v184, v218);
  v216[0] = v131;
  v216[1] = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v186, v217);
  v215[0] = v123;
  v215[1] = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v187, v216);
  v139 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v108, v215);
  v140 = sub_100008974();
  v141 = swift_getWitnessTable(v140, v188);
  v142 = sub_1000061EC();
  v214[0] = v141;
  v214[1] = swift_getWitnessTable(v142, v189);
  v143 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v185, v214);
  v144 = sub_100010448();
  v145 = swift_getWitnessTable(v144, v190);
  v146 = sub_10001F170();
  v213[0] = v145;
  v213[1] = swift_getWitnessTable(v146, v192);
  v212[0] = v143;
  v212[1] = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v193, v213);
  v147 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v182, v212);
  v148 = sub_10002C864();
  v149 = swift_getWitnessTable(v148, v194);
  v150 = sub_10000CCA8();
  v211[0] = v149;
  v211[1] = swift_getWitnessTable(v150, v195);
  v151 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v191, v211);
  v152 = sub_100024868();
  v153 = swift_getWitnessTable(v152, v196);
  v154 = sub_1000139D4();
  v210[0] = v153;
  v210[1] = swift_getWitnessTable(v154, v197);
  v209[0] = v151;
  v209[1] = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v198, v210);
  v208[0] = v147;
  v208[1] = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v199, v209);
  v155 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v107, v208);
  v156 = sub_100022E14();
  v157 = swift_getWitnessTable(v156, v102);
  v158 = sub_100019A94();
  v207[0] = v157;
  v207[1] = swift_getWitnessTable(v158, v200);
  v206[0] = v155;
  v206[1] = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v201, v207);
  v205[0] = v139;
  v205[1] = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v202, v206);
  v204 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v109, v205);
  v159 = sub_10000898C();
  return swift_getWitnessTable(v159, v203, &v204);
}

uint64_t sub_1001FB4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001FB59C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArticleModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1001FB66C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB7090, &unk_100A4C520);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1001FB6C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB7090, &unk_100A4C520);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1001FB8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Navigate.Destination(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001FB9B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Navigate.Destination(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1001FBA6C(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for UVIndexComponentViewModel(0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v10 = *(a1 + a3[5] + 8);
      if (v10 > 1)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      v8 = sub_10022C350(&qword_100CBB750, &unk_100A51050);
      v14 = a3[9];
    }

    v9 = a1 + v14;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_1001FBB8C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for UVIndexComponentViewModel(0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + a4[5] + 8) = -a2;
      return;
    }

    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      v10 = sub_10022C350(&qword_100CBB750, &unk_100A51050);
      v14 = a4[9];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001FBCB4(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CC7C08, &qword_100A64428);
  sub_1000037E8();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001FBEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationsOptInComponentViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1001FBF68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NotificationsOptInComponentViewModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

BOOL sub_1001FC044(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C44810, v2);

  return v3 != 0;
}

uint64_t sub_1001FC148(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1001FC160()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001FC1A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
    v9 = a1 + *(a3 + 32);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001FC234(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
    v8 = v5 + *(a4 + 32);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001FC390()
{
  v2 = sub_100003B38();
  v3 = type metadata accessor for LocationPreviewViewContentModel(v2);
  v4 = sub_100024D10(v1, v0, v3);
  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FC3D0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for LocationPreviewViewContentModel(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1001FC42C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003B38();
  type metadata accessor for PreviewLocation(v6);
  sub_100003928();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    if (v3 == 254)
    {
      v11 = *(v4 + a3[5]);
      if (v11 >= 2)
      {
        return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    type metadata accessor for WeatherConditionBackgroundModel();
    sub_100003928();
    if (*(v14 + 84) == v3)
    {
      v9 = v13;
      v15 = a3[8];
    }

    else
    {
      v9 = type metadata accessor for LocationPreviewModalViewModel(0);
      v15 = a3[9];
    }

    v10 = v4 + v15;
  }

  return sub_100024D10(v10, v3, v9);
}

void sub_1001FC53C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003B38();
  type metadata accessor for PreviewLocation(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    if (a3 == 254)
    {
      *(v5 + a4[5]) = v4 + 1;
      return;
    }

    type metadata accessor for WeatherConditionBackgroundModel();
    sub_100003928();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[8];
    }

    else
    {
      v11 = type metadata accessor for LocationPreviewModalViewModel(0);
      v15 = a4[9];
    }

    v12 = v5 + v15;
  }

  sub_10001B350(v12, v4, v4, v11);
}

uint64_t sub_1001FC6B0(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for ModalViewState(0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_10:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_9:
    v9 = a1 + v12;
    goto LABEL_10;
  }

  sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_9;
  }

  type metadata accessor for WeatherMapOverlayKind();
  sub_100003928();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[8];
    goto LABEL_9;
  }

  v18 = *(a1 + a3[9] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_1001FC838(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for ModalViewState(0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        type metadata accessor for WeatherMapOverlayKind();
        sub_100003928();
        if (*(v18 + 84) != a3)
        {
          *(a1 + a4[9] + 8) = (a2 - 1);
          return;
        }

        v10 = v17;
        v14 = a4[8];
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001FCA30(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel(0);
    v9 = a1 + *(a3 + 32);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1001FCAB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel(0);
    v8 = v5 + *(a4 + 32);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001FCB84()
{

  sub_100006F14((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1001FCC18(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CC8F00, &unk_100A66EE8);
  sub_1000037E8();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001FCC80(uint64_t *a1)
{
  sub_10022E824(&qword_100CB5B20, &qword_100A49390);
  swift_getTupleTypeMetadata3();
  v1 = type metadata accessor for TupleView();
  swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v1);
  v2 = type metadata accessor for VStack();

  return swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v2);
}

uint64_t sub_1001FCDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1001FCE78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001FCF24(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CC9118, &qword_100A67230);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_1001FCFB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CC9118, &qword_100A67230);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001FD0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ToolbarSearchViewModel.State(0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1001FD1B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ToolbarSearchViewModel.State(0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1001FD2A8()
{

  return swift_deallocObject();
}

uint64_t sub_1001FD2E8()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1001FD320()
{

  return swift_deallocObject();
}

uint64_t sub_1001FD358()
{
  v1 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  sub_100006F14((v0 + 16));
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1001FD414()
{

  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1001FD4EC()
{
  sub_10000FE4C();
  v0 = EnvironmentValues.useGlobalCoordinateSpaceForForegroundEffectBackgroundContainer.getter();
  return sub_100005F94(v0);
}

uint64_t sub_1001FD548()
{
  sub_10000FE4C();
  v0 = sub_1000EF7B4();
  return sub_100005F94(v0);
}

uint64_t sub_1001FD5C4(uint64_t a1, int a2)
{
  sub_100017580();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v3 + 84) == a2)
  {
    v4 = sub_10000EBDC();

    return sub_100024D10(v4, v5, v6);
  }

  else
  {
    sub_100038040();
    return sub_100042260(*(v8 + 72));
  }
}

void sub_1001FD654()
{
  sub_1000062E8();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_100005B64();

    sub_10001B350(v3, v4, v5, v6);
  }

  else
  {
    sub_1000202B0();
    *(v7 + 72) = -v0;
  }
}

uint64_t sub_1001FD6DC(uint64_t a1, int a2)
{
  sub_100017580();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v3 + 84) == a2)
  {
    v4 = sub_10000EBDC();

    return sub_100024D10(v4, v5, v6);
  }

  else
  {
    sub_100038040();
    v9 = *(v8 + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_1001FD784()
{
  sub_1000062E8();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_100005B64();

    sub_10001B350(v3, v4, v5, v6);
  }

  else
  {
    sub_1000202B0();
    *(v7 + 8) = v0;
  }
}

uint64_t sub_1001FD80C()
{
  v2 = sub_100003B38();
  type metadata accessor for LocationViewerViewModel(v2);
  sub_100003928();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1000251E0();
  }

  else
  {
    sub_100170754();
    if (v6)
    {
      sub_1000202B0();
      return sub_1000039D8(*(v7 + 24));
    }

    type metadata accessor for ContentStatusBannerPresentationMetrics(0);
    sub_1000D3DA4();
    v4 = v1 + v9;
  }

  return sub_100024D10(v4, v0, v5);
}

void sub_1001FD8B8()
{
  v1 = sub_1000062E8();
  type metadata accessor for LocationViewerViewModel(v1);
  sub_100003928();
  if (*(v2 + 84) == v0)
  {
    sub_10002FDE8();
  }

  else
  {
    sub_1000C9034();
    if (v3)
    {
      sub_10003BACC();
      return;
    }

    type metadata accessor for ContentStatusBannerPresentationMetrics(0);
    sub_100037844();
  }

  sub_1000178C4();

  sub_10001B350(v4, v5, v6, v7);
}

uint64_t sub_1001FD958(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003B38();
  type metadata accessor for LocationViewerViewModel(v6);
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1000251E0();
  }

  else
  {
    sub_100016C10();
    if (*(v10 + 84) == v3)
    {
      sub_1000BCECC();
    }

    else
    {
      sub_100170754();
      if (v13)
      {
        return sub_1000039D8(*(v4 + a3[6]));
      }

      type metadata accessor for Text.Measurements();
      sub_100003928();
      if (*(v15 + 84) == v3)
      {
        v9 = v14;
        v11 = a3[13];
      }

      else
      {
        v9 = sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
        v11 = a3[16];
      }
    }

    v8 = v4 + v11;
  }

  return sub_100024D10(v8, v3, v9);
}

void sub_1001FDA88()
{
  v1 = sub_1000062E8();
  type metadata accessor for LocationViewerViewModel(v1);
  sub_100003928();
  if (*(v2 + 84) == v0)
  {
    sub_10002FDE8();
  }

  else
  {
    sub_100016C10();
    if (*(v3 + 84) == v0)
    {
      sub_10012CD54();
    }

    else
    {
      sub_1000C9034();
      if (v8)
      {
        sub_100021054();
        return;
      }

      type metadata accessor for Text.Measurements();
      sub_100003928();
      if (*(v9 + 84) != v0)
      {
        sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
      }
    }
  }

  sub_1000178C4();

  sub_10001B350(v4, v5, v6, v7);
}

uint64_t sub_1001FDBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003B38();
  type metadata accessor for LocationViewerViewModel(v6);
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1000251E0();
  }

  else
  {
    sub_100016C10();
    if (*(v10 + 84) != v3)
    {
      return sub_1000039D8(*(v4 + *(a3 + 24)));
    }

    sub_1000BCECC();
    v8 = v4 + v11;
  }

  return sub_100024D10(v8, v3, v9);
}

void sub_1001FDC74()
{
  v1 = sub_1000062E8();
  type metadata accessor for LocationViewerViewModel(v1);
  sub_100003928();
  if (*(v2 + 84) == v0)
  {
    sub_10002FDE8();
  }

  else
  {
    sub_100016C10();
    if (*(v3 + 84) != v0)
    {
      sub_100021054();
      return;
    }

    sub_10012CD54();
  }

  sub_1000178C4();

  sub_10001B350(v4, v5, v6, v7);
}

uint64_t sub_1001FDD30(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    sub_100170754();
    if (v9)
    {
      sub_1000202B0();
      return sub_1000039D8(*(v10 + 24));
    }

    sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
    sub_100003928();
    if (*(v13 + 84) == v3)
    {
      v8 = v12;
      v14 = a3[7];
    }

    else
    {
      sub_10022C350(&qword_100CA61E0, &unk_100A31050);
      sub_100003928();
      if (*(v16 + 84) == v3)
      {
        v8 = v15;
        v14 = a3[8];
      }

      else
      {
        v8 = sub_10022C350(&qword_100CC9F58, &qword_100A682A8);
        v14 = a3[9];
      }
    }

    v7 = v4 + v14;
  }

  return sub_100024D10(v7, v3, v8);
}

void sub_1001FDE94()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  sub_100003928();
  if (*(v1 + 84) == v0)
  {
    sub_10002FDE8();
  }

  else
  {
    sub_1000C9034();
    if (v2)
    {
      sub_10003BACC();
      return;
    }

    sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
    sub_100003928();
    if (*(v3 + 84) != v0)
    {
      sub_10022C350(&qword_100CA61E0, &unk_100A31050);
      sub_100003928();
      if (*(v4 + 84) != v0)
      {
        sub_10022C350(&qword_100CC9F58, &qword_100A682A8);
      }
    }
  }

  sub_1000178C4();

  sub_10001B350(v5, v6, v7, v8);
}

uint64_t sub_1001FE014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 24)));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 20);

  return sub_100024D10(v9, a2, v8);
}

void sub_1001FE0C0()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v1 + 84) == v0)
  {
    sub_10012CD54();
    sub_1000178C4();

    sub_10001B350(v2, v3, v4, v5);
  }

  else
  {
    sub_100021054();
  }
}

uint64_t sub_1001FE158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 24));
  }

  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    sub_1000D3DA4();
  }

  else
  {
    v8 = sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
    v9 = *(a3 + 32);
  }

  return sub_100024D10(a1 + v9, a2, v8);
}

void sub_1001FE21C()
{
  sub_100003A00();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v3 = v2;
    type metadata accessor for Location.Identifier();
    sub_100003928();
    if (*(v4 + 84) == v3)
    {
      sub_100037844();
    }

    else
    {
      sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
    }

    sub_1000178C4();

    sub_10001B350(v5, v6, v7, v8);
  }
}

uint64_t sub_1001FE2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CC9118, &qword_100A67230);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    sub_100170754();
    if (v9)
    {
      return sub_1000039D8(*(v4 + *(a3 + 20)));
    }

    sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    sub_1000D3DA4();
    v7 = v4 + v11;
  }

  return sub_100024D10(v7, v3, v8);
}

void sub_1001FE3A8()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CC9118, &qword_100A67230);
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    sub_10002FDE8();
  }

  else
  {
    sub_1000C9034();
    if (v5)
    {
      *(v1 + *(v2 + 20)) = (v0 - 1);
      return;
    }

    sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    sub_100037844();
  }

  sub_1000178C4();

  sub_10001B350(v6, v7, v8, v9);
}

uint64_t sub_1001FE46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003B38();
  type metadata accessor for LocationViewerViewModel(v6);
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1000251E0();
  }

  else
  {
    sub_100016C10();
    if (*(v10 + 84) == v3)
    {
      sub_1000BCECC();
    }

    else
    {
      sub_100170754();
      if (v12)
      {
        return sub_1000039D8(*(v4 + *(a3 + 24)));
      }

      v9 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
      v11 = *(a3 + 48);
    }

    v8 = v4 + v11;
  }

  return sub_100024D10(v8, v3, v9);
}

void sub_1001FE55C()
{
  v1 = sub_1000062E8();
  type metadata accessor for LocationViewerViewModel(v1);
  sub_100003928();
  if (*(v2 + 84) == v0)
  {
    sub_10002FDE8();
  }

  else
  {
    sub_100016C10();
    if (*(v3 + 84) == v0)
    {
      sub_10012CD54();
    }

    else
    {
      sub_1000C9034();
      if (v4)
      {
        sub_100021054();
        return;
      }

      sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    }
  }

  sub_1000178C4();

  sub_10001B350(v5, v6, v7, v8);
}

uint64_t sub_1001FE688(uint64_t a1, int a2)
{
  v3 = sub_100017580();
  type metadata accessor for LocationViewerViewModel(v3);
  sub_100003928();
  if (*(v4 + 84) == a2)
  {
    v5 = sub_10000EBDC();

    return sub_100024D10(v5, v6, v7);
  }

  else
  {
    sub_100038040();
    return sub_1000039D8(*(v9 + 24));
  }
}

void sub_1001FE718()
{
  v1 = sub_1000062E8();
  type metadata accessor for LocationViewerViewModel(v1);
  sub_100003928();
  if (*(v2 + 84) == v0)
  {
    v3 = sub_100005B64();

    sub_10001B350(v3, v4, v5, v6);
  }

  else
  {
    sub_10003BACC();
  }
}

uint64_t sub_1001FE798(uint64_t a1, uint64_t a2)
{
  if (a2 == 254)
  {
    return sub_100042260(*(a1 + 32));
  }

  sub_10022C350(&qword_100CADC58, &unk_100A44700);
  sub_100003928();
  if (*(v5 + 84) == a2)
  {
    sub_1000BCECC();
  }

  else
  {
    sub_10022C350(&qword_100CCA710, &qword_100A68C68);
    sub_1000D3DA4();
  }

  return sub_100024D10(a1 + v7, a2, v6);
}

void sub_1001FE860()
{
  sub_100003A00();
  if (v2 == 254)
  {
    *(v1 + 32) = -v0;
  }

  else
  {
    v3 = v2;
    sub_10022C350(&qword_100CADC58, &unk_100A44700);
    sub_100003928();
    if (*(v4 + 84) == v3)
    {
      sub_10012CD54();
    }

    else
    {
      sub_10022C350(&qword_100CCA710, &qword_100A68C68);
      sub_100037844();
    }

    sub_1000178C4();

    sub_10001B350(v5, v6, v7, v8);
  }
}

uint64_t sub_1001FE92C()
{
  v0 = sub_100003940();
  v2 = sub_10022E824(v0, v1);
  type metadata accessor for DisplayMetrics(255);
  sub_10001E6B0();
  sub_1005F6F6C(v3);
  v12 = sub_1000EA178(&qword_100CA6120);
  return sub_100017540(v12, v4, v5, v6, v7, v8, v9, v10, v2);
}

uint64_t sub_1001FEA2C()
{
  sub_1000C87D0();
  type metadata accessor for CommonTabView(0);
  sub_100003DDC();
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v3 + 8))(v2);
  type metadata accessor for LocationViewerViewModel(0);
  sub_1000717B4();

  sub_100087188();
  type metadata accessor for ConditionPickerMenuViewModel(0);
  v4 = sub_100016410();
  if (!sub_100020918(v4))
  {
    sub_100003B20();
    v5 = sub_1000437BC();
    v6(v5);
  }

  sub_10003263C();

  sub_1000132CC();

  sub_10003BEA0();
  v7 = type metadata accessor for ContentStatusBanner(0);
  if (!sub_100003EB0(v7))
  {
    sub_1000D4274();
    if (v8)
    {
    }

    v9 = sub_100172198();
    if (!sub_100021564(v9))
    {
      sub_100019B68();
      v10 = sub_1000749D4();
      v11(v10);
    }
  }

  sub_1001200B0();
  sub_100087DE0();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000CB9C(v12))
    {
      sub_100003D20();
      v13 = sub_100044E18();
      v14(v13);
    }
  }

  else
  {
  }

  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_1001FEC88()
{
  sub_10000FE4C();
  v0 = sub_100739F1C();
  return sub_100005F94(v0);
}

uint64_t sub_1001FECB0()
{
  sub_1000C87D0();
  type metadata accessor for CommonTabView(0);
  sub_100003DDC();
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v3 + 8))(v2);
  type metadata accessor for LocationViewerViewModel(0);
  sub_1000717B4();

  sub_100087188();
  type metadata accessor for ConditionPickerMenuViewModel(0);
  v4 = sub_100016410();
  if (!sub_100020918(v4))
  {
    sub_100003B20();
    v5 = sub_1000437BC();
    v6(v5);
  }

  sub_10003263C();

  sub_1000132CC();

  sub_10003BEA0();
  v7 = type metadata accessor for ContentStatusBanner(0);
  if (!sub_100003EB0(v7))
  {
    sub_1000D4274();
    if (v8)
    {
    }

    v9 = sub_100172198();
    if (!sub_100021564(v9))
    {
      sub_100019B68();
      v10 = sub_1000749D4();
      v11(v10);
    }
  }

  sub_1001200B0();
  sub_100087DE0();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000CB9C(v12))
    {
      sub_100003D20();
      v13 = sub_100044E18();
      v14(v13);
    }
  }

  else
  {
  }

  sub_1000116BC();
  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_1001FEF24()
{
  sub_1000C87D0();
  type metadata accessor for DebugButtonGroup(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v4 + 8))(v3);
  type metadata accessor for LocationViewerViewModel(0);
  sub_1000717B4();

  sub_1000AF5B0();
  type metadata accessor for ConditionPickerMenuViewModel(0);
  v5 = sub_100016410();
  if (!sub_100020918(v5))
  {
    sub_100003B20();
    v6 = sub_1000437BC();
    v7(v6);
  }

  sub_10003263C();

  sub_100088420();

  sub_100006F14((v3 + *(v0 + 20)));
  sub_1000116BC();
  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_1001FF074()
{
  sub_100003B38();
  type metadata accessor for LocationModel();
  v1 = sub_1000251E0();

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_1001FF0B0()
{
  sub_100003B38();
  type metadata accessor for LocationModel();
  v0 = sub_100005B64();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_1001FF0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003B38();
  type metadata accessor for LocationModel();
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    sub_100016C10();
    if (*(v9 + 84) == v3)
    {
      sub_1000BCECC();
    }

    else
    {
      if (v3 == 254)
      {
        v11 = *(v4 + *(a3 + 28));
        if (v11 >= 2)
        {
          return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
      v10 = *(a3 + 36);
    }

    v7 = v4 + v10;
  }

  return sub_100024D10(v7, v3, v8);
}

uint64_t sub_1001FF1F4()
{
  sub_1000062E8();
  type metadata accessor for LocationModel();
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    sub_10002FDE8();
  }

  else
  {
    result = sub_100016C10();
    if (*(v6 + 84) == v3)
    {
      sub_10012CD54();
    }

    else
    {
      if (v3 == 254)
      {
        *(v1 + *(v2 + 28)) = v0 + 1;
        return result;
      }

      sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    }
  }

  sub_1000178C4();

  return sub_10001B350(v7, v8, v9, v10);
}

uint64_t sub_1001FF2E0(uint64_t a1, int a2)
{
  sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
  sub_100003928();
  if (*(v3 + 84) == a2)
  {
    v4 = sub_10000EBDC();

    return sub_100024D10(v4, v5, v6);
  }

  else
  {
    sub_100038040();
    return sub_100042260(*(v8 + 48));
  }
}

void sub_1001FF380()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
  sub_100003928();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_100005B64();

    sub_10001B350(v3, v4, v5, v6);
  }

  else
  {
    sub_1000202B0();
    *(v7 + 48) = -v0;
  }
}

uint64_t sub_1001FF418()
{
  v0 = sub_10022E824(&qword_100CCA848, &qword_100A68F88);
  v9 = sub_1005F4788();
  return sub_100017540(v9, v1, v2, v3, v4, v5, v6, v7, v0);
}

uint64_t sub_1001FF47C(uint64_t *a1)
{
  sub_10022E824(&qword_100CCAB70, &qword_100A69318);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  v1 = type metadata accessor for TupleView();
  sub_1000439FC(&unk_100CCAB78);
  v2 = type metadata accessor for _VariadicView.Tree();
  v4[0] = sub_1000439FC(&unk_100CCAB88);
  v4[1] = swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v1);
  return swift_getWitnessTable(&protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v2, v4);
}

uint64_t sub_1001FF5E0()
{
  type metadata accessor for PrimitiveButtonStyleConfiguration();
  sub_100003D98();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001FF664()
{
  type metadata accessor for ComputePinnedMapSizeViewModifier(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(type metadata accessor for DisplayMetrics(0) + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = sub_100071D70(v0[5]);
  sub_100109A54(v6, v8, v9, v10, v11, v12, *(v7 + 48));
  v13 = sub_100071D70(v0[6]);
  sub_1000C8EBC(v13, v14, v15, v16, v17, v18, v19);
  sub_100037B34(v0[7]);
  sub_100030448();

  return swift_deallocObject();
}

uint64_t sub_1001FF79C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001FF7D4()
{
  v0 = sub_10022E824(&qword_100CCAE30, &qword_100A69688);
  sub_10022E824(&unk_100CE1680, &unk_100A450F0);
  v1 = sub_10022E824(&qword_100CCAE28, &qword_100A69680);
  type metadata accessor for BorderlessButtonStyle();
  sub_1005F6F6C(&unk_100CCAE58);
  v2 = sub_1000EA178(&qword_100CA5550);
  sub_100017540(v2, v3, v4, v5, v6, v7, v8, v9, v1);
  v18 = sub_1000439FC(&qword_100CA53C8);
  return sub_100017540(v18, v10, v11, v12, v13, v14, v15, v16, v0);
}

uint64_t sub_1001FF96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherConditionBackgroundTimeData(0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1001FF9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherConditionBackgroundTimeData(0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1001FFAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 20)));
  }

  return sub_100024D10(a1, a2, v6);
}

void sub_1001FFB68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {

    sub_10001B350(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1001FFC18(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 32));
  }

  type metadata accessor for Precipitation();
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[9];
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[13];
    }

    else
    {
      v9 = type metadata accessor for TimeZone();
      v10 = a3[14];
    }
  }

  return sub_100024D10(a1 + v10, a2, v9);
}

uint64_t sub_1001FFD14(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Precipitation();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[9];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[13];
      }

      else
      {
        v10 = type metadata accessor for TimeZone();
        v11 = a4[14];
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1001FFE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000038D8();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    type metadata accessor for TimeZone();
    sub_100003928();
    if (*(v11 + 84) != a2)
    {
      return sub_1000039D8(*(v3 + *(a3 + 24)));
    }

    v8 = v10;
    v9 = v3 + *(a3 + 20);
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_1001FFEF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000038D8();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for TimeZone();
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100200114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for LocationOfInterest();
    v8 = a1 + *(a3 + 20);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1002001B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Location();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for LocationOfInterest();
    v10 = a1 + *(a4 + 20);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_10020027C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ViewState(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100200324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ViewState(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1002003DC()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100200414()
{
  swift_unknownObjectRelease();
  sub_100006F14((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100200454()
{

  return swift_deallocObject();
}

uint64_t sub_10020048C()
{

  return swift_deallocObject();
}

uint64_t sub_1002004C4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(qword_100CCBC80, &qword_100A6B4D8);
    v9 = a1 + *(a3 + 40);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_100200558(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(qword_100CCBC80, &qword_100A6B4D8);
    v8 = v5 + *(a4 + 40);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1002005E4(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CCBD18, &qword_100A6B550);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_100200648(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CCBD18, &qword_100A6B550);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_1002006AC(uint64_t a1)
{
  sub_10022C350(&qword_100CCBD18, &qword_100A6B550);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10020070C(void *a1)
{
  type metadata accessor for NavigationView();
  sub_10022E824(&qword_100CCBD18, &qword_100A6B550);
  sub_10022E824(&qword_100CCBD20, &qword_100A6B558);
  swift_getTupleTypeMetadata3();
  v1 = type metadata accessor for TupleView();
  swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v1);
  v2 = type metadata accessor for VStack();

  return swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v2);
}

uint64_t sub_100200818(uint64_t a1, uint64_t a2, int *a3)
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

  type metadata accessor for ChartKind();
  sub_100003928();
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[5];
  }

  else
  {
    type metadata accessor for DetailChartExtrema();
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v10 = v12;
      v11 = a3[7];
    }

    else
    {
      v15 = type metadata accessor for ChartDateStep(0);
      sub_100003810(v15);
      if (*(v16 + 84) == a2)
      {
        v17 = a3[12];
        v10 = sub_10022C350(&qword_100CAC408, &qword_100A6B670);
        v14 = a1 + v17;
        goto LABEL_10;
      }

      type metadata accessor for ChartViewModel.Background(0);
      sub_100003928();
      if (*(v19 + 84) == a2)
      {
        v10 = v18;
        v11 = a3[14];
      }

      else
      {
        type metadata accessor for ChartDarkeningScrim();
        sub_100003928();
        if (*(v21 + 84) == a2)
        {
          v10 = v20;
          v11 = a3[16];
        }

        else
        {
          type metadata accessor for Date();
          sub_100003928();
          if (*(v23 + 84) == a2)
          {
            v10 = v22;
            v11 = a3[18];
          }

          else
          {
            sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
            sub_100003928();
            if (*(v25 + 84) == a2)
            {
              v10 = v24;
              v11 = a3[21];
            }

            else
            {
              type metadata accessor for ChartPeakMarkStyle();
              sub_100003928();
              if (*(v27 + 84) == a2)
              {
                v10 = v26;
                v11 = a3[23];
              }

              else
              {
                type metadata accessor for ChartViewModelInterpolationMode();
                sub_100003928();
                if (*(v29 + 84) == a2)
                {
                  v10 = v28;
                  v11 = a3[26];
                }

                else
                {
                  v10 = type metadata accessor for ChartPastDataTreatment();
                  v11 = a3[27];
                }
              }
            }
          }
        }
      }
    }
  }

  v14 = a1 + v11;
LABEL_10:

  return sub_100024D10(v14, a2, v10);
}

uint64_t sub_100200B04(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  type metadata accessor for ChartKind();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    type metadata accessor for DetailChartExtrema();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      v15 = type metadata accessor for ChartDateStep(0);
      sub_100003810(v15);
      if (*(v16 + 84) == a3)
      {
        v17 = a4[12];
        v10 = sub_10022C350(&qword_100CAC408, &qword_100A6B670);
        v14 = v5 + v17;
        goto LABEL_8;
      }

      type metadata accessor for ChartViewModel.Background(0);
      sub_100003928();
      if (*(v19 + 84) == a3)
      {
        v10 = v18;
        v11 = a4[14];
      }

      else
      {
        type metadata accessor for ChartDarkeningScrim();
        sub_100003928();
        if (*(v21 + 84) == a3)
        {
          v10 = v20;
          v11 = a4[16];
        }

        else
        {
          type metadata accessor for Date();
          sub_100003928();
          if (*(v23 + 84) == a3)
          {
            v10 = v22;
            v11 = a4[18];
          }

          else
          {
            sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
            sub_100003928();
            if (*(v25 + 84) == a3)
            {
              v10 = v24;
              v11 = a4[21];
            }

            else
            {
              type metadata accessor for ChartPeakMarkStyle();
              sub_100003928();
              if (*(v27 + 84) == a3)
              {
                v10 = v26;
                v11 = a4[23];
              }

              else
              {
                type metadata accessor for ChartViewModelInterpolationMode();
                sub_100003928();
                if (*(v29 + 84) == a3)
                {
                  v10 = v28;
                  v11 = a4[26];
                }

                else
                {
                  v10 = type metadata accessor for ChartPastDataTreatment();
                  v11 = a4[27];
                }
              }
            }
          }
        }
      }
    }
  }

  v14 = v5 + v11;
LABEL_8:

  return sub_10001B350(v14, a2, a2, v10);
}

uint64_t sub_100200DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100200E40(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10022C350(&qword_100CAC418, &qword_100A6EE30);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_100200EE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100611110(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_100200F40()
{

  return swift_deallocObject();
}

uint64_t sub_100200F88()
{

  return swift_deallocObject();
}

uint64_t sub_100200FCC()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100201004()
{

  return swift_deallocObject();
}

uint64_t sub_1002010DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000038D8();
  type metadata accessor for Location();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
      v12 = *(a3 + 32);
    }

    v9 = v3 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_1002011BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000038D8();
  type metadata accessor for Location();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
      v14 = *(a4 + 32);
    }

    v11 = v4 + v14;
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10020132C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for Font.Context();

  return sub_100024D10(a1 + v5, a2, v6);
}

uint64_t sub_100201380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for Font.Context();

  return sub_10001B350(a1 + v6, a2, a2, v7);
}

uint64_t sub_1002013D8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Font.Context();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_100201460(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Font.Context();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10020151C(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for PeakUpperMarkModel(0);
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[12];
    }

    else
    {
      type metadata accessor for DetailHeroChartLollipopModel(0);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[14];
      }

      else
      {
        v10 = type metadata accessor for Date();
        v11 = a3[15];
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_100201624(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for PeakUpperMarkModel(0);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[12];
    }

    else
    {
      type metadata accessor for DetailHeroChartLollipopModel(0);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[14];
      }

      else
      {
        v10 = type metadata accessor for Date();
        v11 = a4[15];
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100201728()
{
  swift_unknownObjectRelease();

  sub_100006F14((v0 + 96));

  swift_unknownObjectRelease();
  sub_100006F14((v0 + 160));

  return swift_deallocObject();
}

uint64_t sub_1002017D0()
{
  v22 = type metadata accessor for MapOverlayData();
  sub_1000037C4();
  v1 = v0;
  v19 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v3 = *(v2 + 64);
  v21 = type metadata accessor for ViewData();
  sub_1000037C4();
  v5 = v4;
  v18 = (v19 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v20 = type metadata accessor for MapSessionStatisticsData();
  sub_1000037C4();
  v9 = v8;
  v10 = (v18 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v11 + 64);
  v13 = type metadata accessor for MapStallStatisticsData();
  sub_1000037C4();
  v15 = v14;
  v16 = (v10 + v12 + *(v15 + 80)) & ~*(v15 + 80);
  (*(v1 + 8))(v23 + v19, v22);
  (*(v5 + 8))(v23 + v18, v21);
  (*(v9 + 8))(v23 + v10, v20);
  (*(v15 + 8))(v23 + v16, v13);

  return swift_deallocObject();
}

uint64_t sub_100201A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for WeatherMapSessionStatistics();
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = type metadata accessor for WeatherMapStallStatistics();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_100201ADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for WeatherMapSessionStatistics();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = type metadata accessor for WeatherMapStallStatistics();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100201BBC()
{
  type metadata accessor for ViewData();
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_100201C3C()
{
  v17 = type metadata accessor for MapEmbedStateData();
  sub_1000037C4();
  v2 = v1;
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v5 = *(v4 + 64);
  v16 = type metadata accessor for MapOverlayData();
  sub_1000037C4();
  v7 = v6;
  v8 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v10 = *(v9 + 64);
  v11 = type metadata accessor for ZoomData();
  sub_1000037C4();
  v13 = v12;
  v14 = (v8 + v10 + *(v13 + 80)) & ~*(v13 + 80);
  (*(v2 + 8))(v0 + v3, v17);
  (*(v7 + 8))(v0 + v8, v16);
  (*(v13 + 8))(v0 + v14, v11);

  return swift_deallocObject();
}

uint64_t sub_100201DEC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for WeatherMapOverlayKind();
    v11 = &a1[*(a3 + 20)];

    return sub_100024D10(v11, a2, v10);
  }
}

_BYTE *sub_100201E74(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for WeatherMapOverlayKind();
    v8 = &v5[*(a4 + 20)];

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100201F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100201F98(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for AirQualityDetailViewModel.Model(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_100201FF4(uint64_t a1, uint64_t a2, int *a3)
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
    sub_10022C350(&qword_100CB8BE0, &unk_100A4CFB0);
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[14];
    }

    else
    {
      type metadata accessor for ConditionDetailMapViewModel(0);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[18];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
        v11 = a3[19];
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_100202114(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10022C350(&qword_100CB8BE0, &unk_100A4CFB0);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[14];
    }

    else
    {
      type metadata accessor for ConditionDetailMapViewModel(0);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[18];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
        v11 = a4[19];
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100202298(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CCD6C8, &qword_100A6E3A8);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_10020230C(uint64_t *a1)
{
  v1 = a1[1];
  type metadata accessor for NavigationPath();
  sub_10022E824(&qword_100CA6E10, &qword_100A31DE0);
  v2 = type metadata accessor for ModifiedContent();
  sub_100004724();
  v24[0] = v1;
  v24[1] = sub_10023FBF4(v3, &qword_100CA6E10, &qword_100A31DE0, v4);
  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v24);
  swift_getOpaqueTypeMetadata2();
  sub_10022E824(&qword_100CCD630, &qword_100A6E338);
  swift_getOpaqueTypeConformance2();
  sub_1000063C0();
  sub_10023FBF4(v5, &qword_100CCD630, &qword_100A6E338, v6);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v9 = swift_getOpaqueTypeMetadata2();
  v10 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v23[2] = OpaqueTypeMetadata2;
  v23[3] = &type metadata for Solarium;
  v23[4] = v9;
  v23[5] = OpaqueTypeConformance2;
  v23[6] = &protocol witness table for Solarium;
  v23[7] = v10;
  swift_getOpaqueTypeConformance2();
  v11 = type metadata accessor for NavigationStack();
  sub_10022E824(&qword_100CE15A0, &unk_100A6E340);
  v12 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v14 = sub_100010610();
  WitnessTable = swift_getWitnessTable(v14, v11);
  sub_100014B8C();
  v23[0] = WitnessTable;
  v23[1] = sub_10023FBF4(v16, &qword_100CE15A0, &unk_100A6E340, v17);
  v22[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v12, v23);
  v22[1] = sub_100061564();
  v18 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v22);
  v21 = sub_100636EA4();
  v19 = sub_100003940();
  return swift_getWitnessTable(v19, v18, v21);
}

uint64_t sub_1002026CC()
{

  return swift_deallocObject();
}

uint64_t sub_100202714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10020279C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100202824()
{
  v1 = (type metadata accessor for PrecipitationAveragesHeroChartView(0) - 8);
  v2 = *(*v1 + 80);
  v19 = *(*v1 + 64);
  v20 = type metadata accessor for ChartProxy();
  sub_1000037C4();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = v0 + ((v2 + 16) & ~v2);
  sub_1000E4DF8(*v6, *(v6 + 8));
  sub_100006F14((v6 + 16));
  v7 = v6 + v1[8];

  sub_100452DEC(*(v7 + 104), *(v7 + 112), *(v7 + 120), *(v7 + 128));

  v8 = type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  v9 = v7 + v8[12];
  v10 = type metadata accessor for Date();
  sub_1000037E8();
  v12 = *(v11 + 8);
  v12(v9, v10);
  type metadata accessor for PeakUpperMarkModel(0);
  sub_100003DC4();
  sub_100003DC4();
  sub_100003DC4();
  v12(v7 + v8[13], v10);
  sub_100003DC4();
  sub_100003DC4();
  sub_100003DC4();
  v13 = v7 + v8[14];
  type metadata accessor for DetailHeroChartLollipopModel(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
    v12(v13 + *(active + 20), v10);
    v13 += *(active + 24);
  }

  type metadata accessor for LollipopDetailViewModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v18 = *(type metadata accessor for TitleAndDetailLollipopDetailViewModel(0) + 20);
    type metadata accessor for AttributedString();
    sub_1000037E8();
    (*(v16 + 8))(v13 + v18);
    sub_100003DC4();
    sub_100003DC4();
    sub_100003DC4();
    sub_100003DC4();
  }

  else if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v12(v7 + v8[15], v10);
  v12(v7 + v8[16], v10);
  (*(v4 + 8))(v0 + ((((v2 + 16) & ~v2) + v19 + v5) & ~v5), v20);

  return swift_deallocObject();
}

uint64_t sub_100202C78()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100202CB0()
{
  type metadata accessor for AppConfiguration();
  sub_10000548C();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v1 + v4, v0);

  return swift_deallocObject();
}

uint64_t sub_100202D8C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_10:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_9:
    v9 = a1 + v12;
    goto LABEL_10;
  }

  type metadata accessor for DetailChartViewModel(0);
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_9;
  }

  sub_10022C350(&qword_100CBB758, &unk_100A51060);
  sub_100003928();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[9];
    goto LABEL_9;
  }

  v18 = *(a1 + a3[10] + 24);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_100202F20()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
    sub_100003928();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      type metadata accessor for DetailChartViewModel(0);
      sub_100003928();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[7];
      }

      else
      {
        sub_10022C350(&qword_100CBB758, &unk_100A51060);
        sub_100003928();
        if (*(v14 + 84) != v3)
        {
          *(v1 + v2[10] + 24) = (v0 - 1);
          return;
        }

        v6 = v13;
        v10 = v2[9];
      }
    }

    v7 = v1 + v10;
  }

  sub_10001B350(v7, v0, v0, v6);
}

uint64_t sub_1002030C8(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CCDFD0, &unk_100A6ED50);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_10020312C(uint64_t a1)
{
  sub_10022C350(&qword_100CCDFD0, &unk_100A6ED50);
  sub_100003D98();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_100203198()
{
  type metadata accessor for DetailChart(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v4 + 8))(v3);
  }

  else
  {
  }

  v5 = v0[5];
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v6 + 8))(v3 + v5);
  }

  else
  {
  }

  sub_1000E4DF8(*(v3 + v0[6]), *(v3 + v0[6] + 8));
  v7 = v3 + v0[7];
  type metadata accessor for ConditionDetailChartHeaderStringModel();
  sub_100003D98();
  (*(v8 + 8))(v7);
  v53 = type metadata accessor for DetailChartViewModel(0);
  v9 = v7 + *(v53 + 20);

  v10 = type metadata accessor for ChartViewModel(0);
  v11 = v10[5];
  type metadata accessor for ChartKind();
  sub_100003D98();
  (*(v12 + 8))(v9 + v11);

  v13 = v10[7];
  type metadata accessor for DetailChartExtrema();
  sub_100003D98();
  (*(v14 + 8))(v9 + v13);

  sub_100452DEC(*(v9 + v10[11]), *(v9 + v10[11] + 8), *(v9 + v10[11] + 16), *(v9 + v10[11] + 24));
  v15 = v9 + v10[12];
  v16 = sub_10022C350(&qword_100CAC408, &qword_100A6B670);
  v17 = *(v16 + 48);
  v18 = type metadata accessor for Date();
  if (!sub_10000CAFC(v15 + v17))
  {
    sub_100003B20();
    (*(v19 + 8))(v15 + v17, v18);
  }

  v20 = *(v16 + 64);
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v21 + 8))(v15 + v20);
  v22 = v9 + v10[14];
  v23 = sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
  if (!sub_1000214B8(v23))
  {

    v24 = *(v17 + 48);
    if (!sub_10000CAFC(v22 + v24))
    {
      sub_100003B20();
      (*(v25 + 8))(v22 + v24, v18);
    }
  }

  v26 = v10[16];
  type metadata accessor for ChartDarkeningScrim();
  sub_100003D98();
  (*(v27 + 8))(v9 + v26);

  v28 = *(*(v18 - 8) + 8);
  v28(v9 + v10[18], v18);
  v28(v9 + v10[19], v18);
  v28(v9 + v10[20], v18);
  v29 = v10[21];
  v30 = type metadata accessor for DetailChartDataElement();
  if (!sub_100024D10(v9 + v29, 1, v30))
  {
    sub_100003B20();
    (*(v31 + 8))(v9 + v29, v30);
  }

  v32 = v10[23];
  type metadata accessor for ChartPeakMarkStyle();
  sub_100003D98();
  (*(v33 + 8))(v9 + v32);

  v34 = v10[26];
  type metadata accessor for ChartViewModelInterpolationMode();
  sub_100003D98();
  (*(v35 + 8))(v9 + v34);
  v36 = v10[27];
  type metadata accessor for ChartPastDataTreatment();
  sub_100003D98();
  (*(v37 + 8))(v9 + v36);
  sub_100028874(v10[28]);

  sub_100028874(v10[29]);

  sub_100028874(v10[30]);

  sub_100028874(v10[31]);

  sub_100028874(v10[32]);

  sub_100028874(v10[33]);

  v38 = v53;
  v39 = v7 + *(v53 + 24);
  v40 = type metadata accessor for LollipopViewModel(0);
  if (!sub_100024D10(v39, 1, v40))
  {

    v41 = *(v40 + 20);
    type metadata accessor for DetailChartDataPoint();
    sub_100003D98();
    (*(v42 + 8))(v39 + v41);
    v43 = v39 + *(v40 + 28);
    type metadata accessor for LollipopDetailViewModel(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v45 = *(type metadata accessor for TitleAndDetailLollipopDetailViewModel(0) + 20);
      type metadata accessor for AttributedString();
      sub_100003D98();
      v47 = v43 + v45;
      v38 = v53;
      (*(v46 + 8))(v47);
      sub_100017BA8();
      sub_100017BA8();
      sub_100017BA8();
      sub_100017BA8();
    }

    else if (EnumCaseMultiPayload == 1)
    {
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_22:
  v48 = v7 + *(v38 + 28);
  v49 = type metadata accessor for ConditionDetailChartFooterViewModel(0);
  if (!sub_100024D10(v48, 1, v49))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for TemperatureChartKind();
      sub_100003D98();
      (*(v50 + 8))(v48);
    }

    else
    {
    }
  }

  v51 = v3 + v0[9];
  if (!sub_10000CAFC(v51))
  {
    v28(v51, v18);
  }

  sub_10022C350(&qword_100CBB758, &unk_100A51060);

  sub_100006F14((v3 + v0[10]));

  return swift_deallocObject();
}

uint64_t sub_100203948()
{
  type metadata accessor for ChartProxy();
  sub_100003D98();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1002039CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000038D8();
  type metadata accessor for DetailChartLollipopPoint();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    type metadata accessor for ChartProxy();
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = type metadata accessor for DetailChartViewModel(0);
      v12 = *(a3 + 28);
    }

    v9 = v3 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_100203AA0()
{
  sub_1000041D8();
  type metadata accessor for DetailChartLollipopPoint();
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    type metadata accessor for ChartProxy();
    sub_100003928();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = *(v2 + 20);
    }

    else
    {
      v6 = type metadata accessor for DetailChartViewModel(0);
      v10 = *(v2 + 28);
    }

    v7 = v1 + v10;
  }

  return sub_10001B350(v7, v0, v0, v6);
}

uint64_t sub_100203B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DetailChartDataElement();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }

  else
  {
    v11 = *(a1 + *(a3 + 28));
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_100203C30()
{
  sub_1000041D8();
  type metadata accessor for DetailChartDataElement();
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1 + *(v2 + 20);

    sub_10001B350(v7, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 28)) = v0 + 1;
  }
}

uint64_t sub_100203D30(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_100203DB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100203E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
    v8 = a1 + *(a3 + 24);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_100203F14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
    v10 = a1 + *(a4 + 24);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_100203FF4()
{
  v1 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1002041B4(uint64_t *a1)
{
  v1 = a1[2];
  v2 = type metadata accessor for Array();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v2);
  v3 = type metadata accessor for ForEach();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12[6] = v1;
  v12[7] = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, &OpaqueTypeConformance2);
  v4 = type metadata accessor for Picker();
  type metadata accessor for InlinePickerStyle();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for Picker<A, B, C>, v4);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12[4] = WitnessTable;
  v12[5] = &protocol witness table for InlinePickerStyle;
  v7 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v8 = type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CA5110, &qword_100A2F320);
  v9 = type metadata accessor for ModifiedContent();
  v12[2] = OpaqueTypeMetadata2;
  v12[3] = v7;
  v12[0] = swift_getOpaqueTypeConformance2();
  v12[1] = &protocol witness table for _PaddingLayout;
  v11[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v12);
  v11[1] = sub_100006F64(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v11);
}

uint64_t sub_10020449C()
{
  sub_100003A00();
  sub_10022C350(&qword_100CB7090, &unk_100A4C520);
  v0 = sub_100005B64();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_100204564(void *a1)
{
  v1 = a1[1];
  v2 = type metadata accessor for Optional();
  v7 = v1;
  swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v2, &v7);
  v3 = type metadata accessor for ZStack();
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = swift_getWitnessTable(&protocol conformance descriptor for ZStack<A>, v3);
  v6[1] = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v4, v6);
  sub_10016AE88();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10020466C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1002046F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1002048F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AttributedString();
    v9 = a1 + *(a3 + 60);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10020497C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = v5 + *(a4 + 60);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1002049FC()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100204A34()
{

  return swift_deallocObject();
}

uint64_t sub_100204A6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003B38();
  type metadata accessor for ChartViewModel(v6);
  sub_100003928();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_13:

    return sub_100024D10(v10, v3, v9);
  }

  if (v3 != 0x7FFFFFFF)
  {
    sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
    sub_100003928();
    if (*(v14 + 84) == v3)
    {
      v9 = v13;
      v15 = a3[9];
    }

    else
    {
      sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
      sub_100003928();
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v15 = a3[10];
      }

      else
      {
        v9 = type metadata accessor for Text.Measurements();
        v15 = a3[11];
      }
    }

    v10 = v4 + v15;
    goto LABEL_13;
  }

  v11 = *(v4 + a3[7] + 24);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_100204BCC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003B38();
  type metadata accessor for ChartViewModel(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + a4[7] + 24) = (v4 - 1);
      return;
    }

    sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
    sub_100003928();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[9];
    }

    else
    {
      sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
      sub_100003928();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[10];
      }

      else
      {
        v11 = type metadata accessor for Text.Measurements();
        v15 = a4[11];
      }
    }

    v12 = v5 + v15;
  }

  sub_10001B350(v12, v4, v4, v11);
}

uint64_t sub_100204D3C()
{
  v1 = type metadata accessor for ChartView(0);
  sub_100003DDC();
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);

  v4 = v0 + v3;

  v5 = type metadata accessor for ChartViewModel(0);
  v6 = v5[5];
  type metadata accessor for ChartKind();
  sub_100003D98();
  (*(v7 + 8))(v0 + v3 + v6);

  v8 = v5[7];
  type metadata accessor for DetailChartExtrema();
  sub_100003D98();
  (*(v9 + 8))(v0 + v3 + v8);

  sub_1000209AC((v0 + v3 + v5[11]));
  v10 = v0 + v3 + v5[12];
  v11 = sub_10022C350(&qword_100CAC408, &qword_100A6B670);
  v12 = *(v11 + 48);
  v13 = type metadata accessor for Date();
  if (!sub_100030484(v10 + v12))
  {
    sub_100003B20();
    (*(v14 + 8))(v10 + v12, v13);
  }

  v15 = *(v11 + 64);
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v16 + 8))(v10 + v15);
  v17 = v4 + v5[14];
  v18 = sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
  if (!sub_100005BB8(v18))
  {

    v19 = *(v10 + 48);
    if (!sub_100030484(v17 + v19))
    {
      sub_100003B20();
      (*(v20 + 8))(v17 + v19, v13);
    }
  }

  v21 = v5[16];
  type metadata accessor for ChartDarkeningScrim();
  sub_100003D98();
  (*(v22 + 8))(v4 + v21);

  sub_100018624();
  v24 = *(v23 + 8);
  v26 = sub_1000697B4(v25);
  v24(v26);
  v27 = sub_1000697B4(v5[19]);
  v24(v27);
  v28 = sub_1000697B4(v5[20]);
  v24(v28);
  v29 = v5[21];
  v30 = type metadata accessor for DetailChartDataElement();
  if (!sub_100030484(v4 + v29))
  {
    sub_100003B20();
    (*(v31 + 8))(v4 + v29, v30);
  }

  v32 = v5[23];
  type metadata accessor for ChartPeakMarkStyle();
  sub_100003D98();
  (*(v33 + 8))(v4 + v32);

  v34 = v5[26];
  type metadata accessor for ChartViewModelInterpolationMode();
  sub_100003D98();
  (*(v35 + 8))(v4 + v34);
  v36 = v5[27];
  type metadata accessor for ChartPastDataTreatment();
  sub_100003D98();
  (*(v37 + 8))(v4 + v36);
  sub_100028874(v5[28]);

  sub_100028874(v5[29]);

  sub_100028874(v5[30]);

  sub_100028874(v5[31]);

  sub_100028874(v5[32]);

  sub_100028874(v5[33]);

  sub_100051F98();
  v38 = sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  if (sub_10002FF98(v38) == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v39 + 8))(v5 + v4);
  }

  else
  {
  }

  v40 = *(v1 + 40);
  v41 = sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (sub_10002FF98(v41) == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v42 + 8))(v4 + v40);
  }

  else
  {
  }

  v43 = *(v1 + 44);
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v44 + 8))(v4 + v43);
  sub_1000116BC();

  return swift_deallocObject();
}