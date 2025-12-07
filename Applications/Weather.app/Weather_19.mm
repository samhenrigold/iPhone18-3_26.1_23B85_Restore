uint64_t sub_100205248()
{
  v1 = type metadata accessor for ChartView(0);
  sub_100003DDC();
  v3 = *(v2 + 80);
  v43 = *(v4 + 64);
  v44 = type metadata accessor for DetailChartGradientModel();
  v5 = *(v44 - 8);
  v6 = *(v5 + 80);
  v45 = v0;
  v7 = v0 + ((v3 + 16) & ~v3);

  v8 = type metadata accessor for ChartViewModel(0);
  v9 = v8[5];
  type metadata accessor for ChartKind();
  sub_100003D98();
  (*(v10 + 8))(v7 + v9);

  v11 = v8[7];
  type metadata accessor for DetailChartExtrema();
  sub_100003D98();
  (*(v12 + 8))(v7 + v11);

  sub_1000209AC((v7 + v8[11]));
  v13 = v7 + v8[12];
  v14 = sub_10022C350(&qword_100CAC408, &qword_100A6B670);
  v15 = *(v14 + 48);
  v16 = type metadata accessor for Date();
  if (!sub_100024D10(v13 + v15, 1, v16))
  {
    sub_100003B20();
    (*(v17 + 8))(v13 + v15, v16);
  }

  v18 = *(v14 + 64);
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v19 + 8))(v13 + v18);
  v20 = v7 + v8[14];
  v21 = sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
  if (!sub_100024D10(v20, 1, v21))
  {

    v22 = *(v21 + 48);
    if (!sub_100024D10(v20 + v22, 1, v16))
    {
      sub_100003B20();
      (*(v23 + 8))(v20 + v22, v16);
    }
  }

  v24 = v8[16];
  type metadata accessor for ChartDarkeningScrim();
  sub_100003D98();
  (*(v25 + 8))(v7 + v24);

  v26 = *(*(v16 - 8) + 8);
  v26(v7 + v8[18], v16);
  v26(v7 + v8[19], v16);
  v26(v7 + v8[20], v16);
  v27 = v8[21];
  v28 = type metadata accessor for DetailChartDataElement();
  if (!sub_100024D10(v7 + v27, 1, v28))
  {
    sub_100003B20();
    (*(v29 + 8))(v7 + v27, v28);
  }

  v30 = v8[23];
  type metadata accessor for ChartPeakMarkStyle();
  sub_100003D98();
  (*(v31 + 8))(v7 + v30);

  v32 = v8[26];
  type metadata accessor for ChartViewModelInterpolationMode();
  sub_100003D98();
  (*(v33 + 8))(v7 + v32);
  v34 = v8[27];
  type metadata accessor for ChartPastDataTreatment();
  sub_100003D98();
  (*(v35 + 8))(v7 + v34);
  sub_1000047FC(v8[28]);

  sub_1000047FC(v8[29]);

  sub_1000047FC(v8[30]);

  sub_1000047FC(v8[31]);

  sub_1000047FC(v8[32]);

  sub_1000047FC(v8[33]);

  sub_100006F14((v7 + v1[7]));
  sub_1000E4DF8(*(v7 + v1[8]), *(v7 + v1[8] + 8));
  v36 = v1[9];
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v37 + 8))(v7 + v36);
  }

  else
  {
  }

  v38 = v1[10];
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v39 + 8))(v7 + v38);
  }

  else
  {
  }

  v40 = v1[11];
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v41 + 8))(v7 + v40);
  (*(v5 + 8))(v45 + ((((v3 + 16) & ~v3) + v43 + v6) & ~v6), v44);

  return swift_deallocObject();
}

uint64_t sub_100205848(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003B38();
  type metadata accessor for ChartViewModel.Background(v6);
  sub_100003928();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    type metadata accessor for ChartProxy();
    sub_100003928();
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v15 + 84) == v3)
      {
        v9 = v14;
        v13 = a3[6];
      }

      else
      {
        v9 = sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
        v13 = a3[7];
      }
    }

    v10 = v4 + v13;
  }

  return sub_100024D10(v10, v3, v9);
}

uint64_t sub_100205964(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003B38();
  type metadata accessor for ChartViewModel.Background(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    type metadata accessor for ChartProxy();
    sub_100003928();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[6];
      }

      else
      {
        v11 = sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
        v15 = a4[7];
      }
    }

    v12 = v5 + v15;
  }

  return sub_10001B350(v12, v4, v4, v11);
}

uint64_t sub_100205AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScrubberDay(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
    v8 = a1 + *(a3 + 28);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_100205B7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ScrubberDay(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
    v10 = a1 + *(a4 + 28);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_100205C2C()
{
  v1 = (type metadata accessor for ScrubberDayView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  type metadata accessor for Date();
  sub_1000037E8();
  (*(v3 + 8))(v2);
  type metadata accessor for ScrubberDay(0);

  v4 = v1[9];
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    (*(v5 + 8))(v2 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100205D9C(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for PolarType();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        type metadata accessor for TimeZone();
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[8];
        }

        else
        {
          type metadata accessor for AttributedString();
          sub_100003928();
          if (*(v17 + 84) == a2)
          {
            v10 = v16;
            v11 = a3[9];
          }

          else
          {
            type metadata accessor for SunriseSunsetDetailChartViewModel();
            sub_100003928();
            if (*(v19 + 84) == a2)
            {
              v10 = v18;
              v11 = a3[12];
            }

            else
            {
              type metadata accessor for Location();
              sub_100003928();
              if (*(v21 + 84) == a2)
              {
                v10 = v20;
                v11 = a3[13];
              }

              else
              {
                type metadata accessor for DaylightStringBuilder();
                sub_100003928();
                if (*(v23 + 84) == a2)
                {
                  v10 = v22;
                  v11 = a3[14];
                }

                else
                {
                  type metadata accessor for OverviewTableViewModel();
                  sub_100003928();
                  if (*(v25 + 84) == a2)
                  {
                    v10 = v24;
                    v11 = a3[15];
                  }

                  else
                  {
                    v10 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
                    v11 = a3[16];
                  }
                }
              }
            }
          }
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_100206030(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for PolarType();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        type metadata accessor for TimeZone();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[8];
        }

        else
        {
          type metadata accessor for AttributedString();
          sub_100003928();
          if (*(v17 + 84) == a3)
          {
            v10 = v16;
            v11 = a4[9];
          }

          else
          {
            type metadata accessor for SunriseSunsetDetailChartViewModel();
            sub_100003928();
            if (*(v19 + 84) == a3)
            {
              v10 = v18;
              v11 = a4[12];
            }

            else
            {
              type metadata accessor for Location();
              sub_100003928();
              if (*(v21 + 84) == a3)
              {
                v10 = v20;
                v11 = a4[13];
              }

              else
              {
                type metadata accessor for DaylightStringBuilder();
                sub_100003928();
                if (*(v23 + 84) == a3)
                {
                  v10 = v22;
                  v11 = a4[14];
                }

                else
                {
                  type metadata accessor for OverviewTableViewModel();
                  sub_100003928();
                  if (*(v25 + 84) == a3)
                  {
                    v10 = v24;
                    v11 = a4[15];
                  }

                  else
                  {
                    v10 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
                    v11 = a4[16];
                  }
                }
              }
            }
          }
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100206308(char a1)
{
  if (a1)
  {
    return 0x6361667265746E69;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100206368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CurrentWeather();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
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
      v8 = sub_10022C350(&qword_100CAE8F0, &qword_100A3E420);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_10020644C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for CurrentWeather();
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
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_10022C350(&qword_100CAE8F0, &qword_100A3E420);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100206614(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1002066A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10020675C()
{
  v1 = (sub_10022C350(&qword_100CC3798, &unk_100A74C50) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = *(*v1 + 64);
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v23 = v4;
  v24 = v3;
  v5 = *(v4 + 80);
  v21 = *(v6 + 64);
  v7 = type metadata accessor for Date();
  sub_1000037C4();
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);
  swift_unknownObjectRelease();
  v13 = *(v9 + 8);
  v13(v0 + v2, v7);
  v14 = v0 + v2 + v1[14];
  v15 = sub_10022C350(&qword_100CD0298, &qword_100A74C68);
  if (!sub_100024D10(v14, 2, v15))
  {
    v13(v14, v7);
    v13(v14 + *(v15 + 48), v7);
  }

  v16 = (((v22 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;
  v17 = (v10 + 8 + ((v21 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v23 + 8))(v0 + v16, v24);
  v13(v0 + v17, v7);

  v13(v0 + ((v10 + 8 + v19) & ~v10), v7);

  return swift_deallocObject();
}

uint64_t sub_100206A28()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100206A60()
{

  return swift_deallocObject();
}

uint64_t sub_100206AC0()
{

  return swift_deallocObject();
}

uint64_t sub_100206AFC()
{
  sub_10000FE4C();
  result = EnvironmentValues.listRowSpacing.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_100206B30()
{
  sub_10000FE4C();
  result = WeatherAlertEntity.id.getter();
  *v0 = result;
  return result;
}

uint64_t sub_100206B6C()
{
  sub_10000FE4C();
  result = PeriodicWeatherAlertEntity.id.getter();
  *v0 = result;
  return result;
}

uint64_t sub_100206B94(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100206C1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100206C9C()
{
  sub_10022E824(&qword_100CD04C8, &qword_100A74F50);
  sub_10068C908();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100206DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CurrentWeather();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for PressureComponentPreprocessedDataModel(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_100206E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CurrentWeather();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for PressureComponentPreprocessedDataModel(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_100206F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for Location();

  return sub_100024D10(a1 + v5, a2, v6);
}

uint64_t sub_100206F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for Location();

  return sub_10001B350(a1 + v6, a2, a2, v7);
}

uint64_t sub_100206FC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100207074(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
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
      v14 = a3[7];
    }

    else
    {
      v8 = type metadata accessor for NewsArticleComponentViewModel(0);
      v14 = a3[8];
    }

    v9 = a1 + v14;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_100207194(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
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
      v14 = a4[7];
    }

    else
    {
      v10 = type metadata accessor for NewsArticleComponentViewModel(0);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1002072CC()
{
  v1 = *(sub_10022C350(&qword_100CD0BC8, &qword_100A75990) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);

  v3 = *(sub_10022C350(&qword_100CD0BD8, &qword_100A759A8) + 36);
  v4 = v3 + *(type metadata accessor for RoundedRectangle() + 20);
  type metadata accessor for RoundedCornerStyle();
  sub_1000037E8();
  (*(v5 + 8))(v0 + v2 + v4);

  return swift_deallocObject();
}

uint64_t sub_1002073D8()
{

  return swift_deallocObject();
}

uint64_t sub_100207418@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10020749C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*a1);
  }

  v7 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v8 = a1 + *(a3 + 20);

  return sub_100024D10(v8, a2, v7);
}

void *sub_100207524(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10020765C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 8));
  }

  v7 = type metadata accessor for LocationComponentContainerViewModel(0);
  v8 = a1 + *(a3 + 28);

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1002076D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocationComponentContainerViewModel(0);
    v8 = v5 + *(a4 + 28);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100207758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationViewModel(0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 36)));
  }

  return sub_100024D10(a1, a2, v6);
}

uint64_t sub_1002077F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocationViewModel(0);
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

uint64_t sub_1002078A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(type metadata accessor for LazyLocationContentView(0, *(v4 + 16), *(v4 + 24), a4) - 8) + 80);
  v6 = v4 + ((v5 + 32) & ~v5);
  v7 = type metadata accessor for Location.Identifier();
  sub_1000037E8();
  v9 = *(v8 + 8);
  (v9)(v6, v7);
  v10 = type metadata accessor for LocationViewModel(0);
  v11 = v10[5];
  if (!sub_100024D10(v6 + v11, 1, v7))
  {
    (v9)(v6 + v11, v7);
  }

  v12 = v6 + v10[6];

  sub_10016AD1C(*(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40));

  v13 = v6 + v10[9];
  v14 = type metadata accessor for LocationFooterViewModel(0);
  if (!sub_100005BB8(v14))
  {

    if (*(v13 + 24))
    {
    }

    v15 = v13 + *(v9 + 36);

    v16 = *(type metadata accessor for LearnMoreAttributorViewModel(0) + 24);
    v17 = type metadata accessor for URL();
    if (!sub_100024D10(v15 + v16, 1, v17))
    {
      sub_100003B20();
      (*(v18 + 8))(v15 + v16, v17);
    }

    v19 = *(v9 + 44);
    v20 = type metadata accessor for LocationOfInterest();
    if (!sub_100024D10(v13 + v19, 1, v20))
    {
      sub_100003B20();
      (*(v21 + 8))(v13 + v19, v20);
    }

    v22 = v13 + *(v9 + 56);
    v23 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
    if (!sub_100005BB8(v23))
    {
      v24 = *(v9 + 20);
      type metadata accessor for Location();
      sub_1000037E8();
      (*(v25 + 8))(v22 + v24);
      (*(*(v20 - 8) + 8))(v22 + *(v9 + 24), v20);
    }
  }

  v26 = v10[19];
  type metadata accessor for Date();
  sub_1000037E8();
  (*(v27 + 8))(v6 + v26);
  v28 = v10[20];
  v29 = type metadata accessor for ForegroundEffect();
  if (!sub_100024D10(v6 + v28, 1, v29))
  {
    sub_100003B20();
    (*(v30 + 8))(v6 + v28, v29);
  }

  v31 = (v6 + v10[26]);
  v32 = type metadata accessor for PreviewLocation(0);
  if (!sub_100005BB8(v32))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        type metadata accessor for Location();
        goto LABEL_19;
      case 2u:
        type metadata accessor for LocationOfInterest();
LABEL_19:
        sub_1000037E8();
        (*(v33 + 8))(v31);
        break;
      case 3u:

        v35 = *(type metadata accessor for SearchLocation(0) + 32);
        v36 = type metadata accessor for Location();
        if (!sub_100024D10(v31 + v35, 1, v36))
        {
          sub_100003B20();
          (*(v37 + 8))(v31 + v35);
        }

        break;
      case 4u:

        break;
      default:
        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100207DD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_10022E824(&qword_100CD1160, &unk_100A76220);
  v4 = sub_100699F70();
  v7 = sub_1003BDB64();
  type metadata accessor for ForEach();
  v5 = sub_100008C6C();
  return swift_getWitnessTable(v5, v2, v3, &unk_100C53760, v1, v4, v7);
}

char *sub_100207ECC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100004870(a3, result);
  }

  return result;
}

uint64_t sub_1002080CC@<X0>(uint64_t *a6@<X8>)
{
  result = LocationSearchEntity.$name.getter();
  *a6 = result;
  return result;
}

uint64_t sub_100208110(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[8];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for LearnMoreAttributorViewModel(0);
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[16];
    }

    else
    {
      v8 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
      v9 = a3[22];
    }

LABEL_3:

    return sub_100024D10(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[9]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_100208234()
{
  type metadata accessor for EndpointConfiguration();
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1002082C4()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1002082FC()
{

  return swift_deallocObject();
}

uint64_t sub_100208398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DetailType();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Location();
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = type metadata accessor for DetailViewOrigin();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_100208470(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for DetailType();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Location();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = type metadata accessor for DetailViewOrigin();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100208568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LocationViewModel(0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for DisplayMetrics(0);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 32));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_100208660(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel(0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for DisplayMetrics(0);
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100208760()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100208798()
{

  return swift_deallocObject();
}

uint64_t sub_1002087D0()
{
  sub_100006F14((v0 + 16));

  sub_100006F14((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_10020881C()
{
  swift_unknownObjectRelease();
  sub_100006F14((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100208860()
{

  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1002088C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CD1E18, &unk_100A77300);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_100208954(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CD1E18, &unk_100A77300);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1002089E8()
{
  v1 = type metadata accessor for MoonScrubberView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 20);
  v4 = type metadata accessor for ScrubberDateSelection(0);
  if (!sub_100024D10(v3, 1, v4))
  {
    v5 = type metadata accessor for Date();
    if (!sub_100024D10(v3, 1, v5))
    {
      (*(*(v5 - 8) + 8))(v3, v5);
    }
  }

  sub_10022C350(&qword_100CD1E18, &unk_100A77300);

  sub_100006F14((v2 + *(v1 + 24)));

  return swift_deallocObject();
}

uint64_t sub_100208B4C()
{
  sub_10022E824(&qword_100CD1ED8, &qword_100A77380);
  sub_10022E824(&unk_100CE1680, &unk_100A450F0);
  type metadata accessor for ScrubberView(255);
  sub_10022E824(&qword_100CA6BC0, &unk_100A31BE0);
  sub_100010848();
  sub_1006BF808(v0, v1, byte_100A9CD78);
  sub_1006BF6FC();
  sub_100008CC8();
  swift_getOpaqueTypeConformance2();
  sub_10000652C(&qword_100CA53C8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100208C60()
{

  sub_100006F14((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_100208D00()
{

  sub_1000244CC();

  return swift_deallocObject();
}

void sub_10020936C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_100052404();
  a33 = v35;
  a34 = v36;
  v38 = *(v34 + 2);
  v37 = *(v34 + 3);
  v39 = *(v34 + 4);
  v40 = *(v34 + 5);
  v41 = type metadata accessor for ScrollViewProxy();
  sub_1000037C4();
  v43 = v42;
  v44 = *(v42 + 80);
  v46 = *(v45 + 64);
  a19 = v38;
  a20 = v37;
  v47 = (v44 + 48) & ~v44;
  v65 = v39;
  a21 = v39;
  a22 = v40;
  v48 = type metadata accessor for LazyHStackAnimatableTabView(0, &a19);
  sub_100003DDC();
  v64 = *(v49 + 80);
  (*(v43 + 8))(&v34[v47], v41);

  sub_10003C724();
  type metadata accessor for Binding();
  sub_10000CDE8();
  v51 = *(v50 + 8);
  v51(&v34[((v47 + v46 + v64) & ~v64) + v52], v37);
  v53 = sub_100037270();
  if (!sub_100024D10(v53, 1, v37))
  {
    v54 = sub_100003A80();
    (v51)(v54);
  }

  type metadata accessor for Optional();
  sub_100013B04();
  type metadata accessor for State();
  sub_1000715A4();
  sub_1000B0EC4();

  sub_100032688();
  sub_1000D3F54();
  sub_1000D3F54();
  v55 = sub_1000D3F54();
  a19 = v38;
  a20 = v37;
  a21 = v65;
  a22 = v40;
  if (!sub_10004E928(v55, &a19))
  {
    sub_100003B20();
    v63 = *(v56 + 8);
    v57 = sub_10001173C();
    v58(v57);
    a19 = v38;
    a20 = v37;
    a21 = v65;
    a22 = v40;
    v59 = type metadata accessor for Page(0, &a19);
    v60 = sub_100017CA0(v59);
    v51(v60, v37);
    v61 = sub_1000249C0();
    v63(v61, v38);
    v62 = sub_1000B99EC();
    (v51)(v62);
  }

  sub_100011680();
  type metadata accessor for Optional();
  sub_100013B04();
  type metadata accessor for State();
  sub_1000715A4();
  sub_1000D3F54();

  sub_10003C708(*(v48 + 92));
  sub_100019D18();
  swift_deallocObject();
  sub_100170790();
}

uint64_t sub_10020961C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1002096D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1002097D8(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v3 = sub_100031F04();
  type metadata accessor for Page(v3, v4);
  v50 = type metadata accessor for Array();
  v5 = sub_100031F04();
  v7 = type metadata accessor for PageContainer(v5, v6);
  sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  v8 = sub_100006558();
  WitnessTable = swift_getWitnessTable(v8, v7);
  type metadata accessor for EmptyVisualEffect();
  sub_100010890();
  sub_100121A00(v10, v11, &protocol conformance descriptor for EmptyVisualEffect);
  sub_10001CAD0();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100018678();
  swift_getOpaqueTypeMetadata2();
  v14 = type metadata accessor for _ConditionalContent();
  v60 = v7;
  v61 = &type metadata for Solarium;
  v62 = OpaqueTypeMetadata2;
  v63 = WitnessTable;
  v64 = &protocol witness table for Solarium;
  v65 = OpaqueTypeConformance2;
  v59[0] = &protocol witness table for EmptyView;
  v59[1] = swift_getOpaqueTypeConformance2();
  v15 = sub_10001F590();
  v51 = v16;
  swift_getWitnessTable(v15, v14, v59);
  sub_10000381C();
  v17 = type metadata accessor for VStack();
  v18 = sub_100008CF4();
  v19 = swift_getWitnessTable(v18, v17);
  v60 = v17;
  v61 = v1;
  v62 = v19;
  v63 = v2;
  sub_100031F04();
  v20 = type metadata accessor for IDView();
  v21 = sub_100016D5C();
  v22 = swift_getWitnessTable(v21, v50);
  v60 = v50;
  v61 = v1;
  v52 = v2;
  v53 = v1;
  v62 = v20;
  v63 = v22;
  v64 = v2;
  sub_100031F04();
  v23 = type metadata accessor for ForEach();
  v24 = sub_100052028();
  v58 = swift_getWitnessTable(v24, v20);
  v25 = sub_100008C6C();
  swift_getWitnessTable(v25, v23, &v58);
  v26 = sub_10000381C();
  v29 = type metadata accessor for WireframeScrollInterestView(v26, v23, v27, v28);
  v30 = sub_100074E00();
  v31 = swift_getWitnessTable(v30, v29);
  v60 = v1;
  v61 = v29;
  v62 = v2;
  v63 = v31;
  sub_100031F04();
  v32 = type metadata accessor for TabView();
  v33 = type metadata accessor for PageTabViewStyle();
  v34 = swift_getWitnessTable(&protocol conformance descriptor for TabView<A, B>, v32);
  v60 = v32;
  v61 = v33;
  v62 = v34;
  v63 = &protocol witness table for PageTabViewStyle;
  swift_getOpaqueTypeMetadata2();
  v35 = type metadata accessor for LazyPageTabViewStyle();
  v60 = v32;
  v61 = v35;
  v62 = v34;
  v63 = &protocol witness table for LazyPageTabViewStyle;
  sub_100031F04();
  swift_getOpaqueTypeMetadata2();
  sub_10000381C();
  v36 = type metadata accessor for _ConditionalContent();
  v37 = type metadata accessor for Group();
  v38 = type metadata accessor for ModifiedContent();
  v39 = type metadata accessor for ModifiedContent();
  v60 = v32;
  v61 = v33;
  v62 = v34;
  v63 = &protocol witness table for PageTabViewStyle;
  v40 = swift_getOpaqueTypeConformance2();
  v60 = v32;
  v61 = v35;
  v62 = v34;
  v63 = &protocol witness table for LazyPageTabViewStyle;
  v57[0] = v40;
  v57[1] = swift_getOpaqueTypeConformance2();
  v56 = swift_getWitnessTable(v51, v36, v57);
  v55[0] = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v37, &v56);
  v55[1] = &protocol witness table for _AllowsHitTestingModifier;
  v54[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v38, v55);
  v54[1] = &protocol witness table for _TransactionModifier;
  v41 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v39, v54);
  v60 = v39;
  v61 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v60 = v39;
  v61 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v60 = v39;
  v61 = &type metadata for Solarium;
  v62 = v42;
  v63 = v41;
  v64 = &protocol witness table for Solarium;
  v65 = v43;
  sub_100031F04();
  v44 = swift_getOpaqueTypeMetadata2();
  v60 = v39;
  v61 = &type metadata for Solarium;
  v62 = v42;
  v63 = v41;
  v64 = &protocol witness table for Solarium;
  v65 = v43;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v52[1];
  v60 = v44;
  v61 = v53;
  v62 = v45;
  v63 = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v60 = v44;
  v61 = v53;
  v62 = v45;
  v63 = v46;
  v48 = sub_100088480(&v60);
  v60 = v47;
  v61 = v53;
  v62 = v48;
  v63 = v46;
  return sub_100088480(&v60);
}

uint64_t sub_100209DD0()
{

  return swift_deallocObject();
}

uint64_t sub_100209ECC()
{
  v17 = type metadata accessor for Date();
  sub_1000037C4();
  v2 = v1;
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = *(v4 + 64);
  active = type metadata accessor for ActiveUserStatus();
  sub_1000037C4();
  v7 = v6;
  v8 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v10 = *(v9 + 64);
  v11 = type metadata accessor for DeviceInfo();
  sub_1000037C4();
  v13 = v12;
  v14 = (v8 + v10 + *(v12 + 80)) & ~*(v12 + 80);

  (*(v2 + 8))(v0 + v3, v17);
  (*(v7 + 8))(v0 + v8, active);
  (*(v13 + 8))(v0 + v14, v11);

  return swift_deallocObject();
}

uint64_t sub_10020A0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetailComponentContainerViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_100024D10(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10020A154(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DetailComponentContainerViewModel(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_10001B350(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10020A204()
{
  v1 = type metadata accessor for DetailComponentContainerView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1000E4DF8(*v2, *(v2 + 8));
  v3 = v2 + *(v1 + 20);
  if (*(v3 + 8))
  {
  }

  v4 = type metadata accessor for DetailComponentContainerViewModel(0);
  v5 = v3 + *(v4 + 20);
  type metadata accessor for NewsArticleComponentViewModel(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v6 = type metadata accessor for NewsArticleComponentContentViewModel(0);
    v7 = v6[5];
    v8 = type metadata accessor for URL();
    if (!sub_100024D10(v5 + v7, 1, v8))
    {
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }

    v9 = *(*(v8 - 8) + 8);
    v9(v5 + v6[7], v8);
    v10 = v6[8];
    if (!sub_100024D10(v5 + v10, 1, v8))
    {
      v9(v5 + v10, v8);
    }
  }

  v11 = *(v4 + 24);
  v12 = type metadata accessor for DetailComponentAction(0);
  if (!sub_100024D10(v3 + v11, 1, v12))
  {
    type metadata accessor for URL();
    sub_1000037E8();
    (*(v13 + 8))(v3 + v11);
  }

  sub_100006F14((v2 + *(v1 + 24)));

  return swift_deallocObject();
}

uint64_t sub_10020A45C()
{
  sub_10000FE4C();
  v0 = EnvironmentValues.accessibilityEnabled.getter();
  return sub_100005F94(v0);
}

uint64_t sub_10020A4CC()
{
  sub_10000FE4C();
  v0 = sub_10014B378();
  return sub_100005F94(v0);
}

uint64_t sub_10020A594()
{
  sub_10000FE4C();
  v0 = EnvironmentValues.accessibilityVoiceOverEnabled.getter();
  return sub_100005F94(v0);
}

uint64_t sub_10020A5BC()
{
  sub_10000FE4C();
  v0 = EnvironmentValues.accessibilitySwitchControlEnabled.getter();
  return sub_100005F94(v0);
}

uint64_t sub_10020A5E8(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CD2AC8, &qword_100A78478);
  sub_100003A9C();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

void sub_10020A77C(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
}

id sub_10020A7A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_10020A7DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10020A938(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for ChartProxy();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      type metadata accessor for GeometryProxy();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        type metadata accessor for Date();
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[7];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
          v11 = a3[10];
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_10020AA8C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    type metadata accessor for ChartProxy();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      type metadata accessor for GeometryProxy();
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        type metadata accessor for Date();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[7];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
          v11 = a4[10];
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_10020ABE0()
{
  sub_10022E824(qword_100CD3140, &unk_100A79D40);
  type metadata accessor for ChartDragGestureRecognizerRepresentable();
  sub_10022E824(&qword_100CCE098, &unk_100A6EEE0);
  type metadata accessor for LocalCoordinateSpace();
  sub_10064B084();
  sub_100006594();
  swift_getOpaqueTypeConformance2();
  sub_100010904();
  sub_1006EA2B4(v0, v1, &protocol conformance descriptor for ChartDragGestureRecognizerRepresentable);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10020AD04(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10020AD8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10020AE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100010934();
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    v9 = v4 + *(a3 + 20);
  }

  return sub_100024D10(v9, v3, v8);
}

uint64_t sub_10020AF34(uint64_t a1, uint64_t a2, int a3)
{
  sub_100010934();
  sub_100003928();
  if (*(v4 + 84) != a3)
  {
    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
  }

  sub_1000178C4();

  return sub_10001B350(v5, v6, v7, v8);
}

uint64_t sub_10020AFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100017580();
  type metadata accessor for PressureComponentViewModel(v6);
  sub_100003928();
  if (*(v8 + 84) != a2)
  {
    return sub_100004914(*(a3 + 20));
  }

  return sub_100024D10(v3, a2, v7);
}

void sub_10020B07C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100010934();
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    sub_1000178C4();

    sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = -v4;
  }
}

uint64_t sub_10020B114()
{
  v2 = sub_100010934();

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_10020B150()
{
  sub_100010934();
  sub_1000178C4();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_10020B1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100017580();
  type metadata accessor for PressureTrend();
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_100004914(*(a3 + 24));
  }

  v8 = v6;
  v9 = v3 + *(a3 + 20);

  return sub_100024D10(v9, a2, v8);
}

void sub_10020B244(uint64_t a1, char a2, int a3, uint64_t a4)
{
  type metadata accessor for PressureTrend();
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    sub_1000178C4();

    sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }
}

uint64_t sub_10020B374()
{
  v1 = type metadata accessor for GradientArcView(0);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v1 + 20);
  type metadata accessor for PressureTrend();
  sub_1000037E8();
  (*(v5 + 8))(v3 + v4);
  sub_1000E4DF8(*(v3 + *(v2 + 32)), *(v3 + *(v2 + 32) + 8));

  return swift_deallocObject();
}

uint64_t sub_10020B46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10022C350(&qword_100CBB758, &unk_100A51060);
    v9 = a1 + *(a3 + 28);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10020B500(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CBB758, &unk_100A51060);
    v8 = v5 + *(a4 + 28);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10020B590()
{
  sub_10000EACC();
  if (v1)
  {
    return sub_1000039D8(*(v0 + 8));
  }

  sub_100017CD0();
  sub_10022C350(&qword_100CB76D0, &unk_100A4B720);
  v3 = sub_1000039C8();

  return sub_100024D10(v3, v4, v5);
}

void sub_10020B604()
{
  sub_100011510();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_10022C350(&qword_100CB76D0, &unk_100A4B720);
    v3 = sub_1000039C8();

    sub_10001B350(v3, v4, v0, v5);
  }
}

uint64_t sub_10020B67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CBB750, &unk_100A51050);
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 20) + 8));
  }

  return sub_100024D10(a1, a2, v6);
}

void sub_10020B728()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CBB750, &unk_100A51050);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {

    sub_10001B350(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }
}

uint64_t sub_10020B7EC()
{
  v1 = *(type metadata accessor for ComparisonCapsuleCompactGridView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_10022C350(&qword_100CBB750, &unk_100A51050);
  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_10020B8F4(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CD3DE0, &qword_100A7B068);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_10020B988()
{
  sub_10000EACC();
  if (v3)
  {
    return sub_1000039D8(*(v1 + 24));
  }

  sub_100017CD0();
  v5 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  v6 = v1 + *(v2 + 24);

  return sub_100024D10(v6, v0, v5);
}

void sub_10020B9F8()
{
  sub_100011510();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
    v6 = v1 + *(v4 + 24);

    sub_10001B350(v6, v0, v0, v5);
  }
}

uint64_t sub_10020BA6C()
{
  sub_10000EACC();
  if (v1)
  {
    return sub_1000039D8(*(v0 + 8));
  }

  sub_100017CD0();
  type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  v3 = sub_1000039C8();

  return sub_100024D10(v3, v4, v5);
}

void sub_10020BAD4()
{
  sub_100011510();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    type metadata accessor for ComparisonCapsuleViewModel.Row(0);
    v3 = sub_1000039C8();

    sub_10001B350(v3, v4, v0, v5);
  }
}

uint64_t sub_10020BB40()
{
  sub_100017CD0();
  v3 = v2;
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v5 + 84) == v0)
  {
    v6 = v4;
    v7 = v3;
  }

  else
  {
    sub_10022C350(&qword_100CBEEC8, &qword_100A566C8);
    sub_100003928();
    if (*(v9 + 84) == v0)
    {
      v6 = v8;
      v10 = v1[5];
    }

    else
    {
      sub_10022C350(&qword_100CBB750, &unk_100A51050);
      sub_100003928();
      if (*(v12 + 84) == v0)
      {
        v6 = v11;
        v10 = v1[6];
      }

      else
      {
        if (v0 == 0x7FFFFFFF)
        {
          return sub_1000039D8(*(v3 + v1[7] + 8));
        }

        v6 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
        v10 = v1[8];
      }
    }

    v7 = v3 + v10;
  }

  return sub_100024D10(v7, v0, v6);
}

void sub_10020BCA4()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_10022C350(&qword_100CBEEC8, &qword_100A566C8);
    sub_100003928();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      sub_10022C350(&qword_100CBB750, &unk_100A51050);
      sub_100003928();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        if (v3 == 0x7FFFFFFF)
        {
          *(v1 + v2[7] + 8) = (v0 - 1);
          return;
        }

        v6 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
        v10 = v2[8];
      }
    }

    v7 = v1 + v10;
  }

  sub_10001B350(v7, v0, v0, v6);
}

uint64_t sub_10020BEF4()
{
  sub_100003A00();
  type metadata accessor for UnitsConfigurationViewModel.Representation(0);
  v1 = sub_1000251E0();

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_10020BF34()
{
  sub_100003A00();
  type metadata accessor for UnitsConfigurationViewModel.Representation(0);
  sub_10002FDE8();
  sub_1000178C4();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_10020BF74(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    sub_10022C350(&qword_100CB6038, &qword_100A64140);
    sub_100003928();
    if (*(v10 + 84) == v3)
    {
      v8 = v9;
      v11 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CB6028, &unk_100A7B470);
      sub_100003928();
      if (*(v13 + 84) == v3)
      {
        v8 = v12;
        v11 = a3[6];
      }

      else
      {
        type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
        sub_100003928();
        if (*(v15 + 84) == v3)
        {
          v8 = v14;
          v11 = a3[7];
        }

        else
        {
          sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
          sub_100003928();
          if (*(v17 + 84) != v3)
          {
            v19 = *(v4 + a3[9]);
            if (v19 >= 2)
            {
              return ((v19 + 2147483646) & 0x7FFFFFFF) + 1;
            }

            else
            {
              return 0;
            }
          }

          v8 = v16;
          v11 = a3[8];
        }
      }
    }

    v7 = v4 + v11;
  }

  return sub_100024D10(v7, v3, v8);
}

void sub_10020C158()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    sub_10002FDE8();
  }

  else
  {
    sub_10022C350(&qword_100CB6038, &qword_100A64140);
    sub_100003928();
    if (*(v5 + 84) != v3)
    {
      sub_10022C350(&qword_100CB6028, &unk_100A7B470);
      sub_100003928();
      if (*(v6 + 84) != v3)
      {
        type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
        sub_100003928();
        if (*(v7 + 84) != v3)
        {
          sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
          sub_100003928();
          if (*(v8 + 84) != v3)
          {
            *(v1 + *(v2 + 36)) = v0 + 1;
            return;
          }
        }
      }
    }
  }

  sub_1000178C4();

  sub_10001B350(v9, v10, v11, v12);
}

uint64_t sub_10020C31C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CB63C0, &unk_100A64130);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    sub_10022C350(&qword_100CB63E0, &unk_100A7B490);
    sub_100003928();
    if (*(v10 + 84) == v3)
    {
      v8 = v9;
      v11 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CB63D0, &unk_100A64120);
      sub_100003928();
      if (*(v13 + 84) == v3)
      {
        v8 = v12;
        v11 = a3[6];
      }

      else
      {
        sub_10022C350(&qword_100CB6418, &unk_100A7B4A0);
        sub_100003928();
        if (*(v15 + 84) == v3)
        {
          v8 = v14;
          v11 = a3[7];
        }

        else
        {
          v8 = sub_10022C350(&qword_100CB63F0, &unk_100A64110);
          v11 = a3[8];
        }
      }
    }

    v7 = v4 + v11;
  }

  return sub_100024D10(v7, v3, v8);
}

uint64_t sub_10020C4A8()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CB63C0, &unk_100A64130);
  sub_100003928();
  if (*(v1 + 84) == v0)
  {
    sub_10002FDE8();
  }

  else
  {
    sub_10022C350(&qword_100CB63E0, &unk_100A7B490);
    sub_100003928();
    if (*(v2 + 84) != v0)
    {
      sub_10022C350(&qword_100CB63D0, &unk_100A64120);
      sub_100003928();
      if (*(v3 + 84) != v0)
      {
        sub_10022C350(&qword_100CB6418, &unk_100A7B4A0);
        sub_100003928();
        if (*(v4 + 84) != v0)
        {
          sub_10022C350(&qword_100CB63F0, &unk_100A64110);
        }
      }
    }
  }

  sub_1000178C4();

  return sub_10001B350(v5, v6, v7, v8);
}

uint64_t sub_10020C630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CB6170, &unk_100A7B4C0);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    v8 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
    v7 = v4 + *(a3 + 20);
  }

  return sub_100024D10(v7, v3, v8);
}

uint64_t sub_10020C6D8()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CB6170, &unk_100A7B4C0);
  sub_100003928();
  if (*(v1 + 84) == v0)
  {
    sub_10002FDE8();
  }

  else
  {
    sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  }

  sub_1000178C4();

  return sub_10001B350(v2, v3, v4, v5);
}

uint64_t sub_10020C77C()
{
  sub_100003A00();
  type metadata accessor for UnitConfiguration.Temperature();
  v1 = sub_1000251E0();
  v3 = sub_100024D10(v1, v0, v2);
  if (v3 >= 2)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020C7BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 1);
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for UnitConfiguration.Temperature();
  v5 = sub_10002FDE8();

  return sub_10001B350(v5, v4, a3, v6);
}

uint64_t sub_10020C884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000038D8();
  v7 = type metadata accessor for LocationViewModel(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
LABEL_8:

    return sub_100024D10(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = type metadata accessor for DisplayMetrics(0);
    v9 = v3 + *(a3 + 40);
    goto LABEL_8;
  }

  v10 = *(v3 + *(a3 + 20));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_10020C950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000038D8();
  result = type metadata accessor for LocationViewModel(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v10 = type metadata accessor for DisplayMetrics(0);
    v11 = v4 + *(a4 + 40);
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10020CA24()
{
  v3 = v0;
  v4 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_100003DDC();
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = type metadata accessor for LocationGridView(0);
  sub_100003DDC();
  v126 = *(v10 + 80);
  v11 = v8 + v126;
  v12 = v3 + v6;
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
      (*(v13 + 8))(v3 + v6);
      v1 = v12 + *(type metadata accessor for LocationComponentHeaderViewModel.Description(0) + 20);

LABEL_6:

      break;
    default:
      break;
  }

  v125 = v6 + v11;
  v14 = v12 + *(v4 + 20);
  type metadata accessor for LocationComponentViewModel(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v15 = type metadata accessor for AirQualityComponentViewModel(0);
      v16 = *(v15 + 60);
      type metadata accessor for AttributedString();
      sub_100003D98();
      (*(v17 + 8))(v14 + v16);
      v18 = *(v15 + 64);
      goto LABEL_55;
    case 1u:

      v20 = type metadata accessor for DailyForecastComponentViewModel(0);
      v21 = v20[5];
      v22 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
      sub_1000037E8();
      v24 = *(v23 + 8);
      v24(v14 + v21, v22);
      v25 = sub_10000ED28(v20[6]);
      (v24)(v25);
      v26 = sub_10000ED28(v20[7]);
      (v24)(v26);
      v27 = v20[8];
      goto LABEL_23;
    case 2u:

      v50 = type metadata accessor for FeelsLikeComponentViewModel(0);
      v51 = v14 + v50[6];
      v52 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
      if (!sub_1000138DC(v52))
      {

        v53 = v51 + v2[5];
        type metadata accessor for TemperatureScaleConfiguration();
        sub_100003D98();
        (*(v54 + 8))(v53);
        type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
      }

      sub_10000EADC(v50[7]);

      v18 = v50[8];
      goto LABEL_55;
    case 3u:
      v48 = type metadata accessor for UUID();
      if (!sub_100005BB8(v48))
      {
        sub_100003B20();
        (*(v49 + 8))(v14, v1);
      }

      type metadata accessor for HourlyForecastComponentViewModel(0);
      goto LABEL_56;
    case 4u:
      goto LABEL_56;
    case 5u:
      type metadata accessor for WeatherMapOverlayKind();
      sub_100003D98();
      (*(v28 + 8))(v14);
      v29 = type metadata accessor for MapComponentViewModel(0);
      v30 = v29[5];
      type metadata accessor for Location();
      sub_100003D98();
      (*(v31 + 8))(v14 + v30);
      v32 = v14 + v29[6];
      v33 = type metadata accessor for WeatherData(0);
      if (!sub_1000138DC(v33))
      {
        v123 = v29;

        v34 = v2[5];
        v35 = type metadata accessor for Locale();
        if (!sub_10000CAFC(v32 + v34))
        {
          sub_100003B20();
          (*(v36 + 8))(v32 + v34, v35);
        }

        v37 = v2[6];
        type metadata accessor for WeatherDataModel();
        sub_100003D98();
        (*(v38 + 8))(v32 + v37);
        v39 = v32 + v2[7];
        v40 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
        if (!sub_10000CAFC(v39))
        {
          type metadata accessor for Date();
          sub_100003D98();
          v121 = *(v41 + 8);
          v122 = v42;
          v121(v39);
          v43 = *(v40 + 48);
          v44 = type metadata accessor for WeatherDataRelevancy(0);
          if (!sub_100024D10(v39 + v43, 1, v44))
          {
            (v121)(v39 + v43, v122);
          }
        }

        v45 = v32 + v2[8];
        type metadata accessor for WeatherData.WeatherStatisticsState(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          type metadata accessor for WeatherStatisticsModel();
          sub_100003D98();
          (*(v72 + 8))(v45);
        }

        else if (!EnumCaseMultiPayload)
        {
        }

        v73 = v32 + v2[9];
        v74 = type metadata accessor for WeatherDataOverrides(0);
        v29 = v123;
        if (!sub_1000138DC(v74))
        {
          v124 = type metadata accessor for Date();
          if (!sub_100024D10(v73, 1, v124))
          {
            sub_100003B20();
            (*(v75 + 8))(v73);
          }

          v76 = v2[5];
          if (!sub_100024D10(v73 + v76, 1, v124))
          {
            sub_100003B20();
            (*(v77 + 8))(v73 + v76);
          }
        }
      }

      v18 = v29[7];
      goto LABEL_55;
    case 6u:

      v55 = *(v14 + 32);
      if (v55 != 255)
      {
        sub_1002773E8(*(v14 + 16), *(v14 + 24), v55);
      }

      v56 = type metadata accessor for MoonComponentViewModel(0);
      v57 = *(v56 + 28);
      type metadata accessor for Date();
      sub_100003D98();
      (*(v58 + 8))(v14 + v57);
      v18 = *(v56 + 40);
      goto LABEL_55;
    case 7u:
      type metadata accessor for NewsArticleComponentViewModel(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v59 = type metadata accessor for NewsArticleComponentContentViewModel(0);
        v60 = v59[5];
        v61 = type metadata accessor for URL();
        if (!sub_10000CAFC(v14 + v60))
        {
          sub_100003B20();
          (*(v62 + 8))(v14 + v60, v61);
        }

        sub_10000EADC(v59[6]);

        v63 = *(*(v61 - 8) + 8);
        v63(v14 + v59[7], v61);
        v64 = v59[8];
        if (!sub_10000CAFC(v14 + v64))
        {
          v63(v14 + v64, v61);
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
      (*(v47 + 8))(v14);
      v20 = type metadata accessor for PressureComponentViewModel(0);
      sub_10000EADC(v20[5]);

      sub_10000EADC(v20[6]);

      v27 = v20[7];
LABEL_23:
      sub_10000EADC(v27);

      v18 = v20[9];
LABEL_55:
      sub_10000EADC(v18);
      goto LABEL_56;
    case 0xDu:

      v19 = *(type metadata accessor for SevereAlertComponentViewModel(0) + 36);
      type metadata accessor for WeatherAlert.Prominence();
LABEL_43:
      sub_100003D98();
      (*(v69 + 8))(v14 + v19);
      break;
    case 0xEu:
      type metadata accessor for SunriseSunsetViewModel();
LABEL_41:
      sub_100003D98();
      (*(v68 + 8))(v14);
      break;
    case 0xFu:

      goto LABEL_56;
    case 0x10u:

      v65 = type metadata accessor for UVIndexComponentViewModel(0);
      v66 = *(v65 + 28);
      type metadata accessor for WeatherDescription();
      sub_100003D98();
      (*(v67 + 8))(v14 + v66);
      sub_10000EADC(*(v65 + 32));

      goto LABEL_56;
    case 0x11u:

      goto LABEL_56;
    case 0x12u:

      v70 = *(type metadata accessor for WindComponentViewModel(0) + 68);
      type metadata accessor for WindComponentCompassViewModel();
      sub_100003D98();
      (*(v71 + 8))(v14 + v70);
LABEL_56:

      break;
    default:
      break;
  }

  v78 = v125 & ~v126;

  v79 = v12 + *(v4 + 32);
  v80 = type metadata accessor for LocationComponentAction(0);
  if (!sub_100024D10(v79, 1, v80))
  {
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
        (*(v81 + 8))(v79);
        break;
      case 4u:
        v82 = *(sub_10022C350(&qword_100CA6688, &unk_100A314A0) + 48);
        type metadata accessor for Location();
        sub_100003D98();
        (*(v83 + 8))(v79 + v82);
        break;
      default:
        break;
    }
  }

  v84 = v3 + v78;
  v85 = type metadata accessor for Location.Identifier();
  sub_1000037E8();
  v87 = *(v86 + 8);
  (v87)(v3 + v78, v85);
  v88 = type metadata accessor for LocationViewModel(0);
  v89 = v88[5];
  if (!sub_1000186A8(v3 + v78 + v89))
  {
    (v87)(v84 + v89, v85);
  }

  v90 = v84 + v88[6];

  sub_10016AD1C(*(v90 + 16), *(v90 + 24), *(v90 + 32), *(v90 + 40));

  sub_100037CD8();
  v91 = sub_10000CE10();
  v92 = type metadata accessor for LocationFooterViewModel(v91);
  if (!sub_100005BB8(v92))
  {

    if (*(v90 + 24))
    {
    }

    v93 = v90 + *(v87 + 36);

    v94 = *(type metadata accessor for LearnMoreAttributorViewModel(0) + 24);
    v95 = type metadata accessor for URL();
    if (!sub_100024D10(v93 + v94, 1, v95))
    {
      sub_100003B20();
      (*(v96 + 8))(v93 + v94, v95);
    }

    v97 = *(v87 + 44);
    v98 = type metadata accessor for LocationOfInterest();
    if (!sub_100024D10(v90 + v97, 1, v98))
    {
      sub_100003B20();
      (*(v99 + 8))(v90 + v97, v98);
    }

    v100 = v90 + *(v87 + 56);
    v101 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
    if (!sub_100005BB8(v101))
    {
      v102 = *(v87 + 20);
      type metadata accessor for Location();
      sub_100003D98();
      (*(v103 + 8))(v100 + v102);
      sub_100020A90();
      v105 = sub_10000ED28(v104);
      v106(v105);
    }
  }

  v107 = v88[19];
  type metadata accessor for Date();
  sub_100003D98();
  (*(v108 + 8))(v84 + v107);
  v109 = v88[20];
  v110 = type metadata accessor for ForegroundEffect();
  if (!sub_1000186A8(v84 + v109))
  {
    sub_100003B20();
    (*(v111 + 8))(v84 + v109, v110);
  }

  v112 = sub_10000CE10();
  v113 = type metadata accessor for PreviewLocation(v112);
  if (!sub_100005BB8(v113))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        type metadata accessor for Location();
        goto LABEL_82;
      case 2u:
        type metadata accessor for LocationOfInterest();
LABEL_82:
        sub_100003D98();
        (*(v114 + 8))(v110);
        break;
      case 3u:

        v119 = *(type metadata accessor for SearchLocation(0) + 32);
        type metadata accessor for Location();
        if (!sub_10000CAFC(v110 + v119))
        {
          sub_100003B20();
          (*(v120 + 8))(v110 + v119);
        }

        break;
      case 4u:

        break;
      default:
        break;
    }
  }

  swift_unknownObjectRelease();
  sub_100006F14((v84 + *(v9 + 36)));
  v115 = *(v9 + 40);
  v116 = v115 + *(type metadata accessor for DisplayMetrics(0) + 36);
  type metadata accessor for DynamicTypeSize();
  sub_100003D98();
  (*(v117 + 8))(v84 + v116);

  sub_100074E5C();
  sub_100031788();

  return swift_deallocObject();
}

uint64_t sub_10020DBDC()
{
  sub_10022E824(&qword_100CD47D8, &unk_100A7B920);
  sub_10022E824(&qword_100CD47D0, &qword_100A7B918);
  sub_10022E824(&qword_100CD47E0, &qword_100A83D20);
  sub_100004954();
  sub_100006F64(v0, &qword_100CD47D0, &qword_100A7B918, v1);
  sub_100708038();
  sub_100010558();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10020DCD0()
{

  return swift_deallocObject();
}

uint64_t sub_10020DD18(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CD4950, &qword_100A7BDC8);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_10020DD88()
{
  sub_10022C350(&qword_100CD4A38, &qword_100A7BE48);
  sub_100003D98();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_10020DE10()
{

  sub_100006F14((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_10020DE60()
{
  swift_weakDestroy();
  sub_100016D4C();

  return swift_deallocObject();
}

uint64_t sub_10020DE90()
{

  sub_100006F14((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_10020DED8()
{

  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_10020DF1C()
{
  sub_100016D4C();

  return swift_deallocObject();
}

uint64_t sub_10020DF54()
{
  sub_1002DDD7C(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10020E064()
{

  if (*(v0 + 40) >= 0xEuLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10020E154(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return sub_100024D10(a1 + v9, a2, v8);
  }

  sub_10022C350(&qword_100CA42D8, &unk_100A2E3A0);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_10020E25C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_10022C350(&qword_100CA42D8, &unk_100A2E3A0);
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[7];
  }

  sub_10001B350(a1 + v11, a2, a2, v10);
}

uint64_t sub_10020E360()
{
  sub_10022E824(&qword_100CD5140, &qword_100A7D498);
  sub_10022E824(&qword_100CD5158, &unk_100A7D4A8);
  sub_100717878();
  sub_1007179A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10020E4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CD5450, &qword_100A7DC38);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_100024D10(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_10022C350(&qword_100CD5458, &qword_100A7DC40);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_10020E5C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CD5450, &qword_100A7DC38);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_10022C350(&qword_100CD5458, &qword_100A7DC40);
    v10 = a1 + *(a4 + 24);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_10020E6B0()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10020E6E8()
{
  type metadata accessor for WeatherApp(0);
  sub_100008560();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_10022C350(&qword_100CD5450, &qword_100A7DC38);
  sub_1000037E8();
  (*(v7 + 8))(v0 + v4);
  sub_10004E9D0();
  v8 = sub_100016E10();
  if (!sub_1000041EC(v8))
  {

    v9 = sub_100028A20();
    if (!sub_100003EB0(v9))
    {
      sub_100019B68();
      (*(v10 + 8))(v1, v2);
    }

    sub_10022C350(&qword_100CD5528, &unk_100A9DEA0);

    sub_100013B60();
  }

  sub_10022C350(&qword_100CD5458, &qword_100A7DC40);

  sub_100006F14((v0 + ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_10020E868()
{
  type metadata accessor for WeatherApp(0);
  sub_100008560();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  sub_10022C350(&qword_100CD5450, &qword_100A7DC38);
  sub_1000037E8();
  (*(v7 + 8))(v0 + v4);
  sub_10004E9D0();
  v8 = sub_100016E10();
  if (!sub_1000041EC(v8))
  {

    v9 = sub_100028A20();
    if (!sub_100003EB0(v9))
    {
      sub_100019B68();
      (*(v10 + 8))(v1, v2);
    }

    sub_10022C350(&qword_100CD5528, &unk_100A9DEA0);

    sub_100013B60();
  }

  sub_10022C350(&qword_100CD5458, &qword_100A7DC40);

  sub_100006F14((v0 + ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_10020E9F0()
{
  sub_100003A00();
  sub_10022C350(&qword_100CA2DD8, &qword_100A2C518);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_10020EA50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100083FB8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10020EAB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10020EB48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10020EBD4()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10020EC0C()
{

  return swift_deallocObject();
}

uint64_t sub_10020ECAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CACF38, &unk_100A47BB0);
    v9 = a1 + *(a3 + 28);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10020ED40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CACF38, &unk_100A47BB0);
    v8 = v5 + *(a4 + 28);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10020F2C0()
{
  swift_unknownObjectRelease();

  sub_10003716C();

  return swift_deallocObject();
}

uint64_t sub_10020F2FC()
{

  return swift_deallocObject();
}

uint64_t sub_10020F334()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10020F374()
{
  sub_100020AF8();
  v2 = sub_10074B098(v0, v1);
  return sub_100005F94(v2);
}

uint64_t sub_10020F3C0()
{
  sub_100020AF8();
  v2 = sub_10074B1A0(v0, v1);
  return sub_100005F94(v2);
}

uint64_t sub_10020F40C()
{
  sub_100020AF8();
  v2 = sub_10074B2A8(v0, v1);
  return sub_100005F94(v2);
}

uint64_t sub_10020F458()
{
  sub_100020AF8();
  v2 = sub_10074B3B0(v0, v1);
  return sub_100005F94(v2);
}

uint64_t sub_10020F4A4()
{
  sub_100020AF8();
  v2 = sub_10074B4B8(v0, v1);
  return sub_100005F94(v2);
}

uint64_t sub_10020F4F4(uint64_t a1, uint64_t a2, int *a3)
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

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_10020F644(uint64_t a1, uint64_t a2, int a3, int *a4)
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
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10020F7A4()
{
  type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_100008560();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
  sub_100003D98();
  (*(v4 + 8))(v3);
  v5 = v0[7];
  sub_10022C350(&qword_100CC39F8, &qword_100A5CDD8);
  sub_100003D98();
  (*(v6 + 8))(v3 + v5);
  v7 = v0[8];
  sub_10022C350(&qword_100CC3A00, &unk_100A5CDE0);
  sub_100003D98();
  (*(v8 + 8))(v3 + v7);

  sub_10003C7D8();
  sub_100006F14((v3 + v0[11]));

  return swift_deallocObject();
}

uint64_t sub_10020F910()
{
  sub_10022E824(&qword_100CD6320, &qword_100A7F1C0);
  sub_10000579C();
  sub_100006F64(v0, &qword_100CD6320, &qword_100A7F1C0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10020FC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListLocationViewModel(0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_10020FCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListLocationViewModel(0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_10020FD18@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.effectiveForegroundStyle.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10020FE28()
{
  v29 = type metadata accessor for LocationData();
  sub_1000037C4();
  v2 = v1;
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v26 = v3;
  v5 = *(v4 + 64);
  v28 = type metadata accessor for ComponentData();
  sub_1000037C4();
  v7 = v6;
  v25 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v27 = type metadata accessor for ComponentPositionData();
  sub_1000037C4();
  v11 = v10;
  v12 = (v25 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v14 = *(v13 + 64);
  v15 = type metadata accessor for Date();
  sub_1000037C4();
  v17 = v16;
  v19 = v18;
  v20 = *(v17 + 80);
  v21 = (v12 + v14 + v20) & ~v20;
  v22 = (*(v19 + 64) + v20 + v21) & ~v20;
  (*(v2 + 8))(v0 + v26, v29);
  (*(v7 + 8))(v0 + v25, v28);
  (*(v11 + 8))(v0 + v12, v27);
  v23 = *(v17 + 8);
  v23(v0 + v21, v15);
  v23(v0 + v22, v15);

  return swift_deallocObject();
}

uint64_t sub_100210080(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DispatchQoS();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_100210108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DispatchQoS();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1002101B0(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    v5 = sub_10000FE68();

    return sub_100024D10(v5, a2, v6);
  }
}

uint64_t sub_100210240(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    v4 = sub_10000FE68();

    return sub_10001B350(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_1002102E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeasuredText(0);
  if (*(*(v4 - 8) + 84) == a2)
  {
    v5 = v4;
    v6 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CD7068, &unk_100A7FD10);
    v6 = sub_10000FE68();
  }

  return sub_100024D10(v6, a2, v5);
}

uint64_t sub_10021038C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for MeasuredText(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CD7068, &unk_100A7FD10);
    v8 = sub_10000FE68();
  }

  return sub_10001B350(v8, a2, a2, v7);
}

uint64_t sub_100210438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherCondition();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_100210480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherCondition();

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1002104CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_100210514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_10021057C()
{
  sub_100003A00();
  sub_10022C350(&qword_100CD7310, &qword_100A7FFC8);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_1002105FC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100210820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Elevation();
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

uint64_t sub_1002108D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Elevation();
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

uint64_t sub_100210A98()
{
  swift_unknownObjectWeakDestroy();
  sub_100016D4C();

  return swift_deallocObject();
}

uint64_t sub_100210AC8()
{
  _Block_release(*(v0 + 16));
  sub_100016D4C();

  return swift_deallocObject();
}

uint64_t sub_100210AF8()
{

  return swift_deallocObject();
}

uint64_t sub_100210B38()
{

  if (*(v0 + 48))
  {
  }

  sub_100011824();

  return swift_deallocObject();
}

uint64_t sub_100210B80()
{
  swift_weakDestroy();
  sub_100016D4C();

  return swift_deallocObject();
}

uint64_t sub_100210BB4()
{

  if (*(v0 + 48))
  {
  }

  sub_100011824();

  return swift_deallocObject();
}

uint64_t sub_100210C08()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100210C5C()
{

  return swift_deallocObject();
}

uint64_t sub_100210C94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100210CD4()
{

  sub_100018584();

  return swift_deallocObject();
}

uint64_t sub_100210D04()
{

  return swift_deallocObject();
}

uint64_t sub_100210D3C()
{

  return swift_deallocObject();
}

uint64_t sub_100210D74()
{

  sub_100018584();

  return swift_deallocObject();
}

uint64_t sub_100210DB0()
{

  return swift_deallocObject();
}

uint64_t sub_100210E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationViewModel(0);
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

uint64_t sub_100210F4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocationViewModel(0);
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

uint64_t sub_100210FF8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SelectedSearchResult(0);
    v9 = a1 + *(a3 + 32);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_100211080(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SelectedSearchResult(0);
    v8 = v5 + *(a4 + 32);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100211164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SunriseSunsetViewModel();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    sub_100003928();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24) + 8);
      if (v13 > 1)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_10021125C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for SunriseSunsetViewModel();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10021136C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sunriseSunsetNightLineColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100211428()
{

  sub_10016AD1C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1002114A0(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for CurrentWeather();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CA7030, &qword_100A32000);
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
        sub_100003928();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
          sub_100003928();
          if (*(v18 + 84) != a2)
          {
            v20 = *(a1 + a3[9]);
            if (v20 >= 2)
            {
              return ((v20 + 2147483646) & 0x7FFFFFFF) + 1;
            }

            else
            {
              return 0;
            }
          }

          v8 = v17;
          v12 = a3[8];
        }
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_100211680(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for CurrentWeather();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CA7030, &qword_100A32000);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
          sub_100003928();
          if (*(v20 + 84) != a3)
          {
            *(a1 + a4[9]) = a2 + 1;
            return;
          }

          v10 = v19;
          v14 = a4[8];
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100211890()
{

  return swift_deallocObject();
}

uint64_t sub_1002118D0()
{

  return swift_deallocObject();
}

uint64_t sub_100211918()
{

  return swift_deallocObject();
}

uint64_t sub_100211954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5 = type metadata accessor for WindComponentViewModel(v4);

  return sub_100024D10(v2, a2, v5);
}

uint64_t sub_100211998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5 = type metadata accessor for WindComponentViewModel(v4);

  return sub_10001B350(v2, a2, a2, v5);
}

uint64_t sub_100211A00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for WindComponentViewModel(0);
      v10 = *(a3 + 36);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_100211AD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for WindComponentViewModel(0);
      v10 = *(a4 + 36);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_100211BE8()
{
  v1 = type metadata accessor for WindDataTableView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1000EBD74(*v2, *(v2 + 8));
  v3 = v1[5];
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

  sub_1000EBD74(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  sub_1000EBD74(*(v2 + v1[7]), *(v2 + v1[7] + 8));
  v5 = v2 + v1[8];
  sub_100168B1C(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72));
  v6 = v2 + v1[9];

  v7 = *(type metadata accessor for WindComponentViewModel(0) + 68);
  type metadata accessor for WindComponentCompassViewModel();
  sub_1000037E8();
  (*(v8 + 8))(v6 + v7);

  return swift_deallocObject();
}

uint64_t sub_100211E1C()
{

  return swift_deallocObject();
}

uint64_t sub_100211F40()
{
  sub_10000EACC();
  if (v3)
  {
    return sub_1000039D8(*(v1 + 8));
  }

  sub_100017CD0();
  sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
  sub_100003928();
  if (*(v5 + 84) == v0)
  {
    v6 = v2[13];
  }

  else
  {
    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    sub_100003928();
    if (*(v7 + 84) == v0)
    {
      v6 = v2[15];
    }

    else
    {
      type metadata accessor for Text.Measurements();
      v6 = v2[19];
    }
  }

  v8 = sub_1000039EC(v6);

  return sub_100024D10(v8, v9, v10);
}

void sub_100212044()
{
  sub_100003A00();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
    sub_100003928();
    if (*(v6 + 84) == v5)
    {
      v7 = v4[13];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
      sub_100003928();
      if (*(v8 + 84) == v5)
      {
        v7 = v4[15];
      }

      else
      {
        type metadata accessor for Text.Measurements();
        v7 = v4[19];
      }
    }

    v9 = sub_100016A74(v7);

    sub_10001B350(v9, v10, v11, v12);
  }
}

uint64_t sub_100212154()
{
  sub_10000FE4C();
  v0 = sub_10014E064();
  return sub_100005F94(v0);
}

uint64_t sub_1002122B0()
{
  sub_10000FE4C();
  v1 = sub_10014E940(v0);
  return sub_100005F94(v1);
}

uint64_t sub_1002122E0()
{
  sub_10000FE4C();
  v0 = sub_100198BD0();
  return sub_100005F94(v0);
}

void sub_100212344()
{
  sub_10000FE4C();
  EnvironmentValues.displayScale.getter();
  *v0 = v1;
}

uint64_t sub_100212400()
{
  sub_10000EACC();
  if (v2)
  {
    return sub_1000039D8(*v0);
  }

  sub_100017CD0();
  sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
  v4 = sub_1000039EC(*(v1 + 24));

  return sub_100024D10(v4, v5, v6);
}

void sub_100212478()
{
  sub_100003A00();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    v5 = sub_100016A74(*(v4 + 24));

    sub_10001B350(v5, v6, v7, v8);
  }
}

uint64_t sub_1002124F8()
{
  sub_10000EACC();
  if (v2)
  {
    return sub_1000039D8(*v0);
  }

  sub_100017CD0();
  sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
  v4 = sub_1000039EC(*(v1 + 40));

  return sub_100024D10(v4, v5, v6);
}

void sub_100212570()
{
  sub_100003A00();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
    v5 = sub_100016A74(*(v4 + 40));

    sub_10001B350(v5, v6, v7, v8);
  }
}

uint64_t sub_1002125F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PinnedScrollableViews();
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 40)));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 36);

  return sub_100024D10(v9, a2, v8);
}

void sub_100212690()
{
  sub_1000062E8();
  type metadata accessor for PinnedScrollableViews();
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_100016A74(*(v2 + 36));

    sub_10001B350(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 40)) = (v0 - 1);
  }
}

uint64_t sub_100212720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 8);
    if (v9 > 1)
    {
      return (v9 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1002127C8()
{
  sub_1000062E8();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v4 + 84) == v2)
  {

    sub_10001B350(v1, v0, v0, v3);
  }

  else
  {
    sub_1000202B0();
    *(v5 + 8) = -v0;
  }
}

uint64_t sub_100212898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  type metadata accessor for LocationViewModel(0);
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
      sub_1000202B0();
      return sub_1000039D8(*(v10 + 24));
    }

    type metadata accessor for Text.Measurements();
    sub_100003928();
    if (*(v13 + 84) == v3)
    {
      v8 = v12;
      v14 = *(a3 + 32);
    }

    else
    {
      v8 = sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
      v14 = *(a3 + 44);
    }

    v9 = v4 + v14;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_1002129A0()
{
  v4 = sub_1000062E8();
  type metadata accessor for LocationViewModel(v4);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      sub_1000202B0();
      *(v9 + 24) = (v0 - 1);
      return;
    }

    type metadata accessor for Text.Measurements();
    sub_100003928();
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = *(v2 + 32);
    }

    else
    {
      v7 = sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
      v12 = *(v2 + 44);
    }

    v8 = v1 + v12;
  }

  sub_10001B350(v8, v0, v0, v7);
}

uint64_t sub_100212AA4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003A00();
  type metadata accessor for LocationViewModel(0);
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
      sub_1000202B0();
      return sub_1000039D8(*(v10 + 24));
    }

    type metadata accessor for Text.Measurements();
    sub_100003928();
    if (*(v13 + 84) == v3)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
      sub_100003928();
      if (*(v16 + 84) == v3)
      {
        v8 = v15;
        v14 = a3[9];
      }

      else
      {
        v8 = sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
        v14 = a3[12];
      }
    }

    v9 = v4 + v14;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_100212BF8()
{
  v4 = sub_1000062E8();
  type metadata accessor for LocationViewModel(v4);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      sub_1000202B0();
      *(v9 + 24) = (v0 - 1);
      return;
    }

    type metadata accessor for Text.Measurements();
    sub_100003928();
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[8];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
      sub_100003928();
      if (*(v14 + 84) == v3)
      {
        v7 = v13;
        v12 = v2[9];
      }

      else
      {
        v7 = sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
        v12 = v2[12];
      }
    }

    v8 = v1 + v12;
  }

  sub_10001B350(v8, v0, v0, v7);
}

uint64_t sub_100212D48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100212D88()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100212DC8()
{
  v1 = (type metadata accessor for GridViewIdentifierModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  type metadata accessor for Location.Identifier();
  sub_100003D98();
  (*(v3 + 8))(v2);
  sub_10002436C((v2 + v1[7]));
  sub_10002436C((v2 + v1[8]));
  v4 = v2 + v1[9];
  sub_100109A54(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
  sub_10003BCD8();
  sub_100030448();

  return swift_deallocObject();
}

uint64_t sub_100212ED8(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 72);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100017CD0();
    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    v5 = sub_1000039EC(*(v2 + 20));

    return sub_100024D10(v5, v6, v7);
  }
}

void sub_100212F5C()
{
  sub_100003A00();
  if (v3 == 254)
  {
    *(v1 + 72) = -v0;
  }

  else
  {
    v4 = v2;
    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    v5 = sub_100016A74(*(v4 + 20));

    sub_10001B350(v5, v6, v7, v8);
  }
}

uint64_t sub_1002130E4(uint64_t *a1)
{
  v1 = a1[1];
  sub_1007E9D1C();
  v2 = type metadata accessor for _VariadicView.Tree();
  v4[0] = sub_1007E9D70();
  v4[1] = v1;
  return swift_getWitnessTable(&protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v2, v4);
}

uint64_t sub_100213158(void *a1)
{
  v1 = type metadata accessor for HStack();

  return swift_getWitnessTable(&protocol conformance descriptor for HStack<A>, v1);
}

uint64_t sub_1002131D8(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for Location();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_10:

    return sub_100024D10(a1 + v9, a2, v8);
  }

  sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_10;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = type metadata accessor for WeatherMapOverlayKind();
    v9 = a3[8];
    goto LABEL_10;
  }

  v12 = *(a1 + a3[7] + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

void sub_1002132F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for Location();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_10022C350(&qword_100CA3898, &qword_100A314D0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return;
      }

      v10 = type metadata accessor for WeatherMapOverlayKind();
      v11 = a4[8];
    }
  }

  sub_10001B350(a1 + v11, a2, a2, v10);
}

BOOL sub_1002136F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45230, v2);

  return v3 != 0;
}

uint64_t sub_100213798(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CBB758, &unk_100A51060);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_17:

    return sub_100024D10(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_10022C350(&qword_100CDB158, &unk_100A87F30);
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
      sub_100003928();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[9];
      }

      else
      {
        type metadata accessor for SunriseSunsetDetailChartViewModel();
        sub_100003928();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[11];
        }

        else
        {
          type metadata accessor for SunriseSunsetDetailChartContentStyle();
          sub_100003928();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[13];
          }

          else
          {
            v8 = type metadata accessor for Calendar();
            v14 = a3[17];
          }
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_17;
  }

  v10 = *(a1 + a3[5] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_10021398C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10022C350(&qword_100CBB758, &unk_100A51060);
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

    sub_10022C350(&qword_100CDB158, &unk_100A87F30);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        type metadata accessor for SunriseSunsetDetailChartViewModel();
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[11];
        }

        else
        {
          type metadata accessor for SunriseSunsetDetailChartContentStyle();
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[13];
          }

          else
          {
            v10 = type metadata accessor for Calendar();
            v14 = a4[17];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100213B84()
{
  sub_10022E824(&qword_100CDB268, &qword_100A87FF8);
  sub_10022E824(&qword_100CDB340, &qword_100A88098);
  sub_10022E824(&qword_100CDB260, &qword_100A87FF0);
  sub_10022E824(&qword_100CDB310, &qword_100A88070);
  sub_10022E824(&qword_100CDB258, &qword_100A87FE8);
  sub_10022E824(&qword_100CB90B0, &qword_100A4D630);
  sub_10022E824(&qword_100CDB250, &qword_100A87FE0);
  sub_10022E824(&qword_100CDB248, &qword_100A87FD8);
  v94 = sub_10022E824(&qword_100CDB2D8, &qword_100A88048);
  v86 = sub_10022E824(&qword_100CDB240, &qword_100A87FD0);
  v78 = sub_10022E824(&qword_100CDB2A0, &qword_100A88028);
  sub_10022E824(&qword_100CDB238, &qword_100A87FC8);
  sub_10022E824(&qword_100CCF578, &qword_100A88020);
  type metadata accessor for PlotDimensionScaleRange();
  sub_10022E824(&qword_100CDB230, &qword_100A87FC0);
  sub_10022E824(&qword_100CA72D0, &qword_100A32450);
  sub_1008059FC();
  v0 = sub_100805B40(&qword_100CCF570, &qword_100CA72D0, &qword_100A32450, &protocol witness table for Date);
  sub_100049DB8(v0, v1, v2, v3, v4, v5, v6, v7, v70, v78, v86, v94);
  sub_10002CA80();
  v103 = sub_100805B40(v8, v9, v10, v11);
  sub_100049DB8(v103, v12, v13, v14, v15, v16, v17, v18, v71, v79, v87, v95);
  sub_10022E824(&qword_100CDB2A8, &qword_100A88030);
  sub_10022E824(&qword_100CDB2B0, &qword_100A88038);
  sub_10023FBF4(&qword_100CDB2B8, &qword_100CDB2A8, &qword_100A88030, &protocol conformance descriptor for AxisMarks<A>);
  sub_100805BC8();
  swift_getOpaqueTypeConformance2();
  sub_1000300E4();
  sub_100049DB8(v19, v20, v21, v22, v23, v24, v25, v26, v72, v80, v88, v96);
  sub_10022E824(&qword_100CDB2E0, &qword_100A88050);
  sub_10022E824(&qword_100CDB2E8, &qword_100A88058);
  sub_10002CA80();
  sub_10023FBF4(v27, v28, v29, &protocol conformance descriptor for AxisMarks<A>);
  sub_100805C98();
  swift_getOpaqueTypeConformance2();
  sub_1000300E4();
  v102 = sub_100049DB8(v30, v31, v32, v33, v34, v35, v36, v37, v73, v81, v89, v97);
  sub_100049DB8(v102, v38, v39, v40, v41, v42, v43, v44, v74, v82, v90, v98);
  sub_100433B9C();
  sub_1000300E4();
  sub_100049DB8(v45, v46, v47, v48, v49, v50, v51, v52, v75, v83, v91, v99);
  sub_100805E8C();
  sub_1000300E4();
  sub_100049DB8(v53, v54, v55, v56, v57, v58, v59, v60, v76, v84, v92, v100);
  sub_100806040();
  sub_1000300E4();
  return sub_100049DB8(v61, v62, v63, v64, v65, v66, v67, v68, v77, v85, v93, v101);
}

uint64_t sub_100213FA8()
{

  return swift_deallocObject();
}

uint64_t sub_100213FF0()
{
  sub_10000EACC();
  if (v2)
  {
    return sub_10000901C();
  }

  sub_100017CD0();
  v4 = *(sub_10022C350(&qword_100CDB158, &unk_100A87F30) - 8);
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 20);
  }

  else
  {
    type metadata accessor for SunriseSunsetDetailViewModel(0);
    v5 = *(v1 + 24);
  }

  v6 = sub_1000039EC(v5);

  return sub_100024D10(v6, v7, v8);
}

void sub_1002140A8()
{
  sub_100011510();
  if (v2)
  {
    sub_10000CEFC();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = *(sub_10022C350(&qword_100CDB158, &unk_100A87F30) - 8);
    if (*(v5 + 84) == v4)
    {
      v6 = *(v3 + 20);
    }

    else
    {
      type metadata accessor for SunriseSunsetDetailViewModel(0);
      v6 = *(v3 + 24);
    }

    v7 = sub_100016A74(v6);

    sub_10001B350(v7, v8, v9, v10);
  }
}

uint64_t sub_100214164()
{
  sub_10000EACC();
  if (v1)
  {
    return sub_10000901C();
  }

  sub_100017CD0();
  type metadata accessor for AttributedString();
  v3 = sub_1000039EC(*(v0 + 24));

  return sub_100024D10(v3, v4, v5);
}

void sub_1002141CC()
{
  sub_100011510();
  if (v1)
  {
    sub_10000CEFC();
  }

  else
  {
    v2 = v0;
    type metadata accessor for AttributedString();
    v3 = sub_100016A74(*(v2 + 24));

    sub_10001B350(v3, v4, v5, v6);
  }
}

uint64_t sub_100214234()
{
  sub_10000EACC();
  if (v1)
  {
    return sub_10000901C();
  }

  sub_100017CD0();
  type metadata accessor for AttributedString();
  v3 = sub_1000039EC(*(v0 + 20));

  return sub_100024D10(v3, v4, v5);
}

void sub_10021429C()
{
  sub_100011510();
  if (v1)
  {
    sub_10000CEFC();
  }

  else
  {
    v2 = v0;
    type metadata accessor for AttributedString();
    v3 = sub_100016A74(*(v2 + 20));

    sub_10001B350(v3, v4, v5, v6);
  }
}

uint64_t sub_10021430C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1002143D8()
{
  sub_10000EACC();
  if (v1)
  {
    return sub_10000901C();
  }

  sub_100017CD0();
  sub_10022C350(&qword_100CDB830, &unk_100A885A0);
  v3 = sub_1000039EC(*(v0 + 24));

  return sub_100024D10(v3, v4, v5);
}

void sub_10021444C()
{
  sub_100011510();
  if (v1)
  {
    sub_10000CEFC();
  }

  else
  {
    v2 = v0;
    sub_10022C350(&qword_100CDB830, &unk_100A885A0);
    v3 = sub_100016A74(*(v2 + 24));

    sub_10001B350(v3, v4, v5, v6);
  }
}

uint64_t sub_1002144C0()
{
  type metadata accessor for SunriseSunsetDetailView(0);
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  v5 = v4 + *(v0 + 24);
  v6 = type metadata accessor for DetailChartDataElement();
  if (!sub_100020660(v6))
  {
    sub_100003B20();
    (*(v7 + 8))(v5, v2);
  }

  sub_10022C350(&qword_100CDB830, &unk_100A885A0);

  sub_100006F14((v4 + *(v0 + 32)));

  return swift_deallocObject();
}

uint64_t sub_1002145E0()
{
  type metadata accessor for SunriseSunsetDetailView(0);
  sub_100003A0C();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  v5 = v1 + v4 + *(v0 + 24);
  v6 = type metadata accessor for DetailChartDataElement();
  if (!sub_100020660(v6))
  {
    sub_100003B20();
    (*(v7 + 8))(v5, v2);
  }

  sub_10022C350(&qword_100CDB830, &unk_100A885A0);

  sub_100006F14((v1 + v4 + *(v0 + 32)));

  return swift_deallocObject();
}

uint64_t sub_10021471C()
{
  v0 = sub_100003940();
  sub_10022E824(v0, v1);
  sub_10023FBF4(&qword_100CDB9E0, &qword_100CA2DF0, &qword_100A2C530, byte_100A4F4C0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1002147D0()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_100214874(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x5474756F6C6C6163;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x616E6964726F6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10021494C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
    v9 = a1 + *(a3 + 32);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1002149E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
    v8 = v5 + *(a4 + 32);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100214A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_100214ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_100214C20()
{
  swift_unknownObjectRelease();
  sub_1002773E8(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_100214CF0()
{
  type metadata accessor for SavedLocation();
  sub_100003A0C();
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SavedLocation.Placeholder();
  }

  else
  {
    type metadata accessor for Location();
  }

  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_100214DDC()
{
  type metadata accessor for CurrentLocation();
  sub_100003A0C();
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    type metadata accessor for Location();
    sub_1000037E8();
    (*(v3 + 8))(v0 + v2);
  }

  return swift_deallocObject();
}

uint64_t sub_100214EDC(char a1)
{
  if (a1)
  {
    return 1953720684;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t sub_100214EFC()
{
  sub_100013984();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100C454E8, v2);
  sub_1000379AC();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100214F3C(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 0x74736554786676;
}

BOOL sub_100214F98()
{
  sub_100013984();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100C455A0, v2);
  sub_1000379AC();
  return v1 != 0;
}

BOOL sub_100214FE8()
{
  sub_100013984();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100C45628, v2);
  sub_1000379AC();
  return v1 != 0;
}

BOOL sub_100215038()
{
  sub_100013984();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100C456F8, v2);
  sub_1000379AC();
  return v1 != 0;
}

uint64_t sub_100215148(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for Date();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[7];
    }

    else
    {
      type metadata accessor for TimeZone();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[10];
      }

      else
      {
        type metadata accessor for AttributedString();
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[11];
        }

        else
        {
          type metadata accessor for SunriseSunsetDetailChartViewModel();
          sub_100003928();
          if (*(v17 + 84) == a2)
          {
            v10 = v16;
            v11 = a3[13];
          }

          else
          {
            type metadata accessor for Location();
            sub_100003928();
            if (*(v19 + 84) == a2)
            {
              v10 = v18;
              v11 = a3[14];
            }

            else
            {
              type metadata accessor for SunEvents();
              sub_100003928();
              if (*(v21 + 84) == a2)
              {
                v10 = v20;
                v11 = a3[15];
              }

              else
              {
                type metadata accessor for OverviewTableViewModel();
                sub_100003928();
                if (*(v23 + 84) == a2)
                {
                  v10 = v22;
                  v11 = a3[16];
                }

                else
                {
                  type metadata accessor for DaylightStringBuilder();
                  sub_100003928();
                  if (*(v25 + 84) == a2)
                  {
                    v10 = v24;
                    v11 = a3[17];
                  }

                  else
                  {
                    v10 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
                    v11 = a3[18];
                  }
                }
              }
            }
          }
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_1002153DC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      type metadata accessor for TimeZone();
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[10];
      }

      else
      {
        type metadata accessor for AttributedString();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[11];
        }

        else
        {
          type metadata accessor for SunriseSunsetDetailChartViewModel();
          sub_100003928();
          if (*(v17 + 84) == a3)
          {
            v10 = v16;
            v11 = a4[13];
          }

          else
          {
            type metadata accessor for Location();
            sub_100003928();
            if (*(v19 + 84) == a3)
            {
              v10 = v18;
              v11 = a4[14];
            }

            else
            {
              type metadata accessor for SunEvents();
              sub_100003928();
              if (*(v21 + 84) == a3)
              {
                v10 = v20;
                v11 = a4[15];
              }

              else
              {
                type metadata accessor for OverviewTableViewModel();
                sub_100003928();
                if (*(v23 + 84) == a3)
                {
                  v10 = v22;
                  v11 = a4[16];
                }

                else
                {
                  type metadata accessor for DaylightStringBuilder();
                  sub_100003928();
                  if (*(v25 + 84) == a3)
                  {
                    v10 = v24;
                    v11 = a4[17];
                  }

                  else
                  {
                    v10 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
                    v11 = a4[18];
                  }
                }
              }
            }
          }
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1002156A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for AnimatableValueObserverModifier(255, *a1, a1[1], a4);
  v5 = sub_10001F980();
  swift_getWitnessTable(v5, v4);
  type metadata accessor for _ViewModifier_Content();
  v6 = sub_10001CB30();

  return swift_getWitnessTable(v6);
}

uint64_t sub_100215704(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for AnimatableValueObserverModifier(255, a1[1], a1[3], a4);
  v6 = type metadata accessor for ModifiedContent();
  v7 = sub_10001F980();
  v9[0] = v4;
  v9[1] = swift_getWitnessTable(v7, v5);
  return swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v9);
}

uint64_t sub_100215788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AnimatableValueObserverModifier(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  v8 = *(*(v5 - 8) + 8);
  v8(v7, v5);
  if (*(v7 + *(v6 + 36)))
  {
  }

  v8(v7 + *(v6 + 40), v5);

  return swift_deallocObject();
}

uint64_t sub_1002158FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100215988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100215A74()
{
  sub_1000232FC();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v4 + 84) != v1)
  {
    return sub_1000039D8(*(v0 + *(v2 + 24) + 8));
  }

  return sub_100024D10(v0, v1, v3);
}

void sub_100215B08()
{
  sub_1000062E8();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_100005B64();

    sub_10001B350(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 - 1);
  }
}

uint64_t sub_100215B94()
{
  v3 = sub_1000232FC();
  type metadata accessor for PeakUpperMarkModel(v3);
  sub_100003928();
  if (*(v5 + 84) != v1)
  {
    return sub_1000039D8(*(v0 + *(v2 + 20)));
  }

  return sub_100024D10(v0, v1, v4);
}

void sub_100215C24()
{
  v4 = sub_1000062E8();
  type metadata accessor for PeakUpperMarkModel(v4);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = sub_100005B64();

    sub_10001B350(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_100215CC4()
{
  sub_10022E824(&qword_100CCDD30, &unk_100A6E9D0);
  sub_10022E824(&qword_100CDCEA0, &qword_100A8BAE8);
  sub_10022E824(&qword_100CCDD38, &unk_100A707B0);
  type metadata accessor for PointMark();
  sub_100010D0C();
  swift_getOpaqueTypeConformance2();
  sub_10001CEBC();
  swift_getOpaqueTypeConformance2();
  sub_10082B218();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100215DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for UpArrowPopoverBackgroundView(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_100215EC4(uint64_t *a1)
{
  v1 = a1[1];
  sub_10022E824(&qword_100CDCF68, &qword_100A8BC20);
  v2 = type metadata accessor for ModifiedContent();
  v3 = type metadata accessor for ModifiedContent();
  sub_100004724();
  v8[0] = v1;
  v8[1] = sub_100006F64(v4, &qword_100CDCF68, &qword_100A8BC20, v5);
  v7[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v8);
  v7[1] = &protocol witness table for _PaddingLayout;
  return swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v7);
}

uint64_t sub_100216050(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD0298, &qword_100A74C68);
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002160A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10022C350(&qword_100CD0298, &qword_100A74C68);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_100216110(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MaxDaylight(0);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_100216198(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MaxDaylight(0);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100216244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WindComponentViewModel(0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_10021628C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WindComponentViewModel(0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1002162E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WindComponentCompassViewModel();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_100216368(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for WindComponentCompassViewModel();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100216438(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DetailCondition();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1002164C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DetailCondition();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100216540(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for HourlyForecastComponentViewModel(0);
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

    type metadata accessor for Text.Measurements();
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
      v14 = a3[7];
    }

    v9 = a1 + v14;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_100216654(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for HourlyForecastComponentViewModel(0);
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

    type metadata accessor for Text.Measurements();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100216768()
{
  v1 = type metadata accessor for HourlyForecastComponentView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  if (!sub_100024D10(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  type metadata accessor for HourlyForecastComponentViewModel(0);

  sub_1000E4DF8(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  v5 = v1[6];
  type metadata accessor for Text.Measurements();
  sub_1000037E8();
  (*(v6 + 8))(v3 + v5);
  v7 = v1[7];
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10021693C()
{
  sub_10022E824(&qword_100CDDA90, &qword_100A8C6A0);
  sub_10022E824(&qword_100CDDAD0, &qword_100A8C6C8);
  sub_10022E824(&qword_100CDDA88, &qword_100A8C698);
  sub_10022E824(&qword_100CDDA80, &qword_100A8C690);
  sub_1000090E4();
  sub_100006F64(v0, &qword_100CDDA80, &qword_100A8C690, v1);
  sub_100014F8C();
  swift_getOpaqueTypeConformance2();
  sub_100005CEC();
  swift_getOpaqueTypeConformance2();
  sub_10083D74C();
  sub_100004C40(&qword_100CDDAE0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100216A74()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100216AAC()
{

  return swift_deallocObject();
}

uint64_t sub_100216AE4()
{
  sub_100006F14((v0 + 16));
  sub_100006F14((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_100216B24()
{

  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_100216BD4(uint64_t *a1)
{
  type metadata accessor for OverlayValueViewModifier(255, *a1, a1[1], a1[2]);
  v2 = sub_10001F9F8();
  swift_getWitnessTable(v2, v1);
  v3 = type metadata accessor for _ViewModifier_Content();
  sub_100005BA8();
  v4 = type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  v5 = sub_10001CED4();
  swift_getWitnessTable(v5, v3);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for _OverlayModifier<A>, v4);
  return sub_100010D50(WitnessTable, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t sub_100216C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10022C350(qword_100CDDE48, &unk_100A8CCF0);
    v9 = a1 + *(a3 + 52);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_100216D18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(qword_100CDDE48, &unk_100A8CCF0);
    v8 = v5 + *(a4 + 52);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100216DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_100005BA8();
  v5 = type metadata accessor for OverlayEnvironmentValueViewModifier(v2, v3, v4, v1);
  swift_getWitnessTable(byte_100A8CD38, v5);
  v6 = type metadata accessor for _ViewModifier_Content();
  v7 = sub_100005BA8();
  v10 = type metadata accessor for OverlayValueViewModifier(v7, v8, v9, v1);
  type metadata accessor for ModifiedContent();
  v11 = sub_10001CED4();
  swift_getWitnessTable(v11, v6);
  v12 = sub_10001F9F8();
  WitnessTable = swift_getWitnessTable(v12, v10);
  return sub_100010D50(WitnessTable, v14, v15, v16, v17, v18, v19, v20, v22, v23);
}

uint64_t sub_100216E54()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100216E8C()
{

  return swift_deallocObject();
}

uint64_t sub_100216F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  type metadata accessor for GridGeometryRoot(0, v5, *(v4 + 24), a4);
  sub_100013D48();
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = (type metadata accessor for LocationViewGeometry(0) - 8);
  v11 = (v7 + v9 + *(*v10 + 80)) & ~*(*v10 + 80);
  v12 = v4 + v7;
  sub_1000EBD74(*v12, *(v12 + 8));
  sub_100069B18();
  (*(v13 + 8))(v12 + v14, v5);
  v15 = v4 + v10[8];
  type metadata accessor for TargetWindowSizeClass();
  sub_100003D98();
  (*(v16 + 8))(v15 + v11);

  return swift_deallocObject();
}

uint64_t sub_1002170D4()
{
  v1 = type metadata accessor for LocationViewGeometry(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + *(v1 + 24);
  type metadata accessor for TargetWindowSizeClass();
  sub_100003D98();
  (*(v4 + 8))(v3 + v2);

  return swift_deallocObject();
}

uint64_t sub_1002171E4(uint64_t a1, int a2, int *a3)
{
  sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
  sub_100003928();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[5];
LABEL_7:
    v10 = sub_1000039EC(v7);

    return sub_100024D10(v10, v11, v12);
  }

  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v7 = a3[6];
    goto LABEL_7;
  }

  sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
  sub_100003928();
  if (*(v9 + 84) == a2)
  {
    v7 = a3[9];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[12]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_100217330()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    v5 = v2[5];
  }

  else
  {
    sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    sub_100003928();
    if (*(v6 + 84) == v3)
    {
      v5 = v2[6];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
      sub_100003928();
      if (*(v7 + 84) != v3)
      {
        *(v1 + v2[12]) = (v0 - 1);
        return;
      }

      v5 = v2[9];
    }
  }

  v8 = sub_1000039EC(v5);

  sub_10001B350(v8, v9, v0, v10);
}

uint64_t sub_10021746C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CA6028, &qword_100A40610);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_100217530()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA6028, &qword_100A40610);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {

    sub_10001B350(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

uint64_t sub_100217618(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CA6CB0, &unk_100A31CB0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_19:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for LocationModel();
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_18:
    v9 = a1 + v12;
    goto LABEL_19;
  }

  type metadata accessor for LocationWeatherDataState(0);
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_18;
  }

  type metadata accessor for WeatherData(0);
  sub_100003928();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[8];
    goto LABEL_18;
  }

  type metadata accessor for PreprocessedWeatherData(0);
  sub_100003928();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[9];
    goto LABEL_18;
  }

  type metadata accessor for NewsDataModel(0);
  sub_100003928();
  if (*(v20 + 84) == a2)
  {
    v8 = v19;
    v12 = a3[10];
    goto LABEL_18;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = sub_10022C350(&qword_100CDE580, &qword_100A8D698);
    v12 = a3[12];
    goto LABEL_18;
  }

  v21 = *(a1 + a3[11]);
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  return (v21 + 1);
}

void sub_10021783C(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    type metadata accessor for LocationModel();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for LocationWeatherDataState(0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        type metadata accessor for WeatherData(0);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          type metadata accessor for PreprocessedWeatherData(0);
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[9];
          }

          else
          {
            type metadata accessor for NewsDataModel(0);
            sub_100003928();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[10];
            }

            else
            {
              if (a3 == 0x7FFFFFFF)
              {
                *(a1 + a4[11]) = (a2 - 1);
                return;
              }

              v10 = sub_10022C350(&qword_100CDE580, &qword_100A8D698);
              v14 = a4[12];
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100217A84()
{
  v0 = sub_100003940();
  sub_10022E824(v0, v1);
  type metadata accessor for InsetGroupedListStyle();
  sub_100005DFC();
  sub_100006F64(v2, &qword_100CDE640, &qword_100A8D710, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100217B2C()
{

  return swift_deallocObject();
}

uint64_t sub_100217B64(uint64_t a1, uint64_t a2, int *a3)
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

  type metadata accessor for CurrentWeather();
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
    v8 = sub_10022C350(&qword_100CDE7B0, &qword_100A8D8F8);
    v12 = a3[7];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_100217C88(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    type metadata accessor for CurrentWeather();
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
        *(a1 + a4[6]) = (a2 - 1);
        return;
      }

      v10 = sub_10022C350(&qword_100CDE7B0, &qword_100A8D8F8);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100217DAC()
{
  sub_10022E824(&qword_100CDE868, &qword_100A8D990);
  sub_10022E824(&qword_100CA5528, &qword_100A2F940);
  sub_10022E824(&qword_100CDE860, &qword_100A8D988);
  sub_10022E824(&qword_100CDE858, &qword_100A8D980);
  type metadata accessor for InsetGroupedListStyle();
  sub_100005DFC();
  sub_100006F64(v0, &qword_100CDE858, &qword_100A8D980, v1);
  sub_100005DB4();
  swift_getOpaqueTypeConformance2();
  sub_100004C88();
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v2, &qword_100CA5528, &qword_100A2F940, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100217F14(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ArticlePlacementLocation();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_100217F9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ArticlePlacementLocation();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100218044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WeatherMapOverlayKind();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for WeatherData(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_1002180E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WeatherMapOverlayKind();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for WeatherData(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1002181AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100859C00();
  *a1 = result;
  return result;
}

uint64_t sub_100218370()
{
  v1 = (type metadata accessor for DebugLocationManager.DebugLocation(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v1[7];
  type metadata accessor for Location();
  sub_100003D98();
  (*(v4 + 8))(v3 + v2);

  return swift_deallocObject();
}

uint64_t sub_10021844C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100218484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1002184CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_100218540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = type metadata accessor for Date();

  return sub_100024D10(a1 + v5, a2, v6);
}

uint64_t sub_100218594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = type metadata accessor for Date();

  return sub_10001B350(a1 + v6, a2, a2, v7);
}

uint64_t sub_1002185EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    HourPrecipitationChartViewModel = type metadata accessor for NextHourPrecipitationChartViewModel();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, HourPrecipitationChartViewModel);
  }
}

uint64_t sub_100218674(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    HourPrecipitationChartViewModel = type metadata accessor for NextHourPrecipitationChartViewModel();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, HourPrecipitationChartViewModel);
  }

  return result;
}

uint64_t sub_1002186F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConditionDetailChartFooterViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1002187A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConditionDetailChartFooterViewModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100218854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationViewModel(0);
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

uint64_t sub_100218904(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocationViewModel(0);
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

uint64_t sub_100218A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LearnMoreAttributorViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = a1 + *(a3 + 20);
    v9 = *(v8 + 8);
    v10 = *v8 & 0x7FFFFFFF;
    if ((v9 & 0xF000000000000007) != 0)
    {
      return (v10 + 1);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100218B10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LearnMoreAttributorViewModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    *v9 = (a2 - 1);
    v9[1] = 1;
  }

  return result;
}

uint64_t sub_100218BC8(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CDFA80, &qword_100A8F270);
  sub_1000037E8();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100218C30(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CDFA88, &qword_100A8F278);
  sub_1000037E8();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100218CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 8));
  }

  type metadata accessor for Measurement();
  sub_100013B04();
  v7 = type metadata accessor for Optional();
  v8 = a1 + *(a3 + 28);

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_100218D40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Measurement();
    sub_100013B04();
    v7 = type metadata accessor for Optional();
    v8 = v5 + *(a4 + 28);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100218DD0(uint64_t a1, uint64_t a2, int *a3)
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
      return sub_1000039D8(*(a1 + a3[7] + 8));
    }

    type metadata accessor for Measurement();
    sub_10003C9C4();
    type metadata accessor for Optional();
    sub_100003928();
    if (*(v12 + 84) == a2)
    {
      v8 = v11;
      v13 = a3[8];
    }

    else
    {
      type metadata accessor for Optional();
      sub_100013B04();
      v8 = type metadata accessor for State();
      v13 = a3[11];
    }

    v9 = a1 + v13;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_100218EFC(uint64_t a1, uint64_t a2, int a3, int *a4)
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
      *(a1 + a4[7] + 8) = (a2 - 1);
      return;
    }

    type metadata accessor for Measurement();
    type metadata accessor for Optional();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      type metadata accessor for Optional();
      sub_100013B04();
      v10 = type metadata accessor for State();
      v14 = a4[11];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100219040(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_10022E824(&qword_100CD0638, &unk_100A8F6E0);
  v5 = type metadata accessor for MeasurementEditorView(255, v1, v3, v4);
  sub_100008B1C();
  v8 = sub_100006F64(v6, &qword_100CD0638, &unk_100A8F6E0, v7);
  v9 = sub_10001A098();
  WitnessTable = swift_getWitnessTable(v9, v5);
  type metadata accessor for NavigationLink();
  v10 = sub_1000233FC();
  return swift_getWitnessTable(v10, v2, v5, v8, WitnessTable);
}

uint64_t sub_1002190E8()
{
  v2 = *(v1 + 16);
  v3 = sub_10003C9C4();
  type metadata accessor for MeasurementEditorView(v3, v4, v5, v6);
  sub_100003A0C();
  v8 = v1 + ((*(v7 + 80) + 24) & ~*(v7 + 80));
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v10 = *(sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v11 + 8))(v8 + v10);
  }

  sub_10001673C(v0[7]);

  v12 = v0[8];
  sub_10003C9C4();
  v13 = type metadata accessor for Measurement();
  if (!sub_1000187E0(v13))
  {
    sub_100003B20();
    (*(v14 + 8))(v8 + v12, v2);
  }

  sub_10001673C(v0[10]);

  if (!sub_100024B74())
  {
    sub_100003B20();
    (*(v15 + 8))(v0, v2);
  }

  type metadata accessor for Optional();
  sub_100013B04();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t sub_1002192DC(uint64_t *a1)
{
  sub_10022E824(&qword_100CDFF60, &qword_100A8F7A8);
  swift_getTupleTypeMetadata2();
  sub_10000E9D0();
  v1 = type metadata accessor for Array();
  sub_10022E824(&qword_100CDFF68, &qword_100A8F7B0);
  v2 = sub_100016D5C();
  swift_getWitnessTable(v2, v1);
  v3 = type metadata accessor for ForEach();
  sub_100004CD4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v4 = sub_100008C6C();
  swift_getWitnessTable(v4, v3, &OpaqueTypeConformance2);
  type metadata accessor for Picker();
  swift_getTupleTypeMetadata2();
  sub_10000E9D0();
  v5 = type metadata accessor for TupleView();
  v6 = sub_1000065AC();
  swift_getWitnessTable(v6, v5);
  v7 = type metadata accessor for List();
  type metadata accessor for InlinePickerStyle();
  v8 = sub_10000694C();
  swift_getWitnessTable(v8, v7);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v9 = type metadata accessor for VStack();
  v10 = sub_100008CF4();
  swift_getWitnessTable(v10, v9);
  sub_10002D5A4();
  swift_getOpaqueTypeMetadata2();
  sub_10022E824(&qword_100CA5528, &qword_100A2F940);
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v11, &qword_100CA5528, &qword_100A2F940, v12);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1002195C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 28);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_100219650(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 28);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10021975C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MainAction(0);
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

uint64_t sub_100219808(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MainAction(0);
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

uint64_t sub_1002198B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentWeather();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1002198F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentWeather();

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_100219A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
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

uint64_t sub_100219A7C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_100219BCC(void *a1)
{
  v1 = a1[1];
  v2 = type metadata accessor for Optional();
  v12 = v1;
  v3 = sub_10000898C();
  swift_getWitnessTable(v3, v2, &v12);
  v4 = type metadata accessor for ZStack();
  v5 = type metadata accessor for PlaceholderContentView();
  v6 = type metadata accessor for ModifiedContent();
  v7 = sub_100006A08();
  swift_getWitnessTable(v7, v4);
  v8 = sub_10001D038();
  v11[0] = swift_getWitnessTable(v8, v5);
  v11[1] = &protocol witness table for _OpacityEffect;
  v9 = sub_100007E30();
  swift_getWitnessTable(v9, v6, v11);
  sub_100010E3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100219D4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_100035B30(a1 + 16, (a2 + 1));
  *a2 = v3;
  return result;
}

uint64_t sub_100219D80(unint64_t *a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*a1);
  }

  sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
  sub_100003928();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[8];
  }

  else
  {
    sub_10022C350(&unk_100CE0D50, &unk_100A91618);
    sub_100003928();
    if (*(v8 + 84) == a2)
    {
      v7 = a3[9];
    }

    else
    {
      sub_10022C350(&qword_100CA61E0, &unk_100A31050);
      v7 = a3[10];
    }
  }

  v9 = sub_1000039EC(v7);

  return sub_100024D10(v9, v10, v11);
}

void sub_100219E9C()
{
  sub_100011510();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    sub_100003928();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[8];
    }

    else
    {
      sub_10022C350(&unk_100CE0D50, &unk_100A91618);
      sub_100003928();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[9];
      }

      else
      {
        sub_10022C350(&qword_100CA61E0, &unk_100A31050);
        v8 = v5[10];
      }
    }

    v10 = sub_1000039EC(v8);

    sub_10001B350(v10, v11, v0, v12);
  }
}

uint64_t sub_100219FBC()
{
  sub_10000FE4C();
  result = EnvironmentValues.accentColor.getter();
  *v0 = result;
  return result;
}

uint64_t sub_100219FE8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 24));
  }

  sub_10022C350(&qword_100CADC58, &unk_100A44700);
  v5 = sub_1000039EC(*(a3 + 20));

  return sub_100024D10(v5, v6, v7);
}

void sub_10021A06C()
{
  sub_100011510();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_10022C350(&qword_100CADC58, &unk_100A44700);
    v5 = sub_1000039EC(*(v4 + 20));

    sub_10001B350(v5, v6, v0, v7);
  }
}

uint64_t sub_10021A13C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10088C80C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_10021A260()
{
  sub_10000FE4C();
  result = sub_100283608();
  *v0 = result & 1;
  return result;
}

uint64_t sub_10021A2B4()
{

  return swift_deallocObject();
}

uint64_t sub_10021A2FC()
{
  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_10021A340()
{
  sub_10022E824(&qword_100CE1548, &qword_100A92158);
  type metadata accessor for WeatherSplitViewBindingModel(255);
  sub_10022E824(&qword_100CE1540, &qword_100A92150);
  sub_100892F54();
  sub_100008CC8();
  swift_getOpaqueTypeConformance2();
  sub_100004D1C();
  sub_100061520(v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10021A428()
{
  v0 = sub_100025214();
  sub_10022E824(v0, v1);
  sub_10022E824(&qword_100CE16D8, &qword_100A92300);
  sub_10022E824(&qword_100CE16E0, &qword_100A92308);
  sub_1000055A4();
  sub_10006768C(v2, &qword_100CE16D0, &qword_100A922F8);
  sub_10022E824(&qword_100CE16F0, &qword_100A92310);
  sub_10022E824(&qword_100CE16F8, &qword_100A92318);
  sub_10022E824(&qword_100CE12F8, &qword_100A91C10);
  sub_10022E824(&qword_100CE1308, &unk_100A91C18);
  sub_100018414();
  v4 = sub_10006768C(v3, &qword_100CE1308, &unk_100A91C18);
  sub_100075180(v4, v5);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = sub_100075180(OpaqueTypeConformance2, v7);
  sub_100075180(v8, v9);
  sub_10022E824(&qword_100CE1700, &qword_100A92320);
  sub_10022E824(&qword_100CE1708, &qword_100A92328);
  v10 = type metadata accessor for Material();
  sub_100075180(v10, v11);
  sub_10006768C(&unk_100CE1710, &qword_100CE1708, &qword_100A92328);
  v14 = swift_getOpaqueTypeConformance2();
  return sub_100075180(v14, v12);
}

uint64_t sub_10021A774(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_10021A7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_10021A9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10021AA88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10021AB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CADC58, &unk_100A44700);
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

    return (v10 + 1);
  }
}

uint64_t sub_10021ABF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CADC58, &unk_100A44700);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_10001B350(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10021B230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100052404();
  v22 = type metadata accessor for WeatherData(0);
  sub_100003DDC();
  v24 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v25 = type metadata accessor for PreprocessedWeatherData(0);
  sub_1000037C4();
  v26 = sub_100045454();
  type metadata accessor for NewsDataModel(v26);
  sub_1000037C4();
  v109 = *(v27 + 80);
  sub_10004ECA4();
  type metadata accessor for Location();
  sub_1000037C4();
  sub_10004ECA4();
  sub_1000452A4();

  v108 = v21;
  v28 = v21 + v24;

  v29 = *(v22 + 20);
  v30 = type metadata accessor for Locale();
  if (!sub_1000BC6F0(v30))
  {
    sub_100003B20();
    (*(v31 + 8))(v28 + v29, v20);
  }

  sub_1008B16A0();
  sub_100003D98();
  (*(v32 + 8))(v28 + v20);
  v33 = v28 + *(v22 + 28);
  v34 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
  v35 = sub_10000C834();
  if (!sub_100024D10(v35, v36, v34))
  {
    v37 = type metadata accessor for Date();
    sub_1000037E8();
    v39 = *(v38 + 8);
    v40 = sub_10003C620();
    v39(v40);
    v41 = sub_1000C8C20();
    if (!sub_100024D10(v33 + v34, 1, v41))
    {
      (v39)(v33 + v34, v37);
    }
  }

  v42 = sub_100040D3C();
  type metadata accessor for WeatherData.WeatherStatisticsState(v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for WeatherStatisticsModel();
    sub_100003D98();
    (*(v45 + 8))(v33);
    v44 = a20;
  }

  else
  {
    v44 = a20;
    if (!EnumCaseMultiPayload)
    {
    }
  }

  v46 = sub_100040D3C();
  v47 = type metadata accessor for WeatherDataOverrides(v46);
  v48 = sub_10000C834();
  if (!sub_100024D10(v48, v49, v47))
  {
    v22 = type metadata accessor for Date();
    v50 = sub_10000C834();
    if (!sub_100024D10(v50, v51, v22))
    {
      sub_100019B68();
      (*(v52 + 8))(v33, v22);
    }

    v44 = *(v47 + 20);
    v53 = sub_10000CF38();
    if (!sub_100024D10(v53, v54, v22))
    {
      sub_100019B68();
      (*(v55 + 8))(v33 + v44, v22);
    }
  }

  v56 = sub_1000E1768();
  sub_1000037E8();
  v58 = *(v57 + 8);
  v59 = sub_10002C598();
  v58(v59);

  type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
  v60 = sub_1000E3268();
  if (!sub_1000138DC(v60))
  {

    sub_100030298();
    sub_100003D98();
    (*(v61 + 8))(v34);
    v62 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    sub_1000BAEF0(v62);
  }

  sub_10001979C();
  v63 = v22 + v25[7];
  v64 = sub_10000C834();
  if (!sub_100024D10(v64, v65, v56))
  {
    v66 = sub_10003C620();
    v58(v66);
  }

  type metadata accessor for HourlyForecastComponentViewModel(0);

  type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
  sub_100041080();
  v67 = type metadata accessor for WeatherDescription();
  v68 = sub_10000CF38();
  if (!sub_100024D10(v68, v69, v67))
  {
    sub_100003B20();
    (*(v70 + 8))(v63 + v44, v67);
  }

  sub_100013D5C();

  v71 = v63 + *(type metadata accessor for ListPreprocessedDataModel(0) + 32);
  v72 = type metadata accessor for Date();
  sub_1000037E8();
  (*(v73 + 8))(v71, v72);
  type metadata accessor for WeatherConditionBackgroundTimeData(0);
  sub_100041080();
  v74 = type metadata accessor for Elevation();
  v75 = sub_10000CF38();
  if (!sub_100024D10(v75, v76, v74))
  {
    sub_100003B20();
    v77 = sub_100040E5C();
    v78(v77);
  }

  v79 = sub_1000C8DC4();
  v80 = sub_10000CF38();
  if (!sub_100024D10(v80, v81, v79))
  {
    sub_100003B20();
    v82 = sub_100040F2C();
    v83(v82);
  }

  v84 = v58 + a11;
  sub_100013D5C();

  v85 = v22 + v25[10];
  sub_100003B20();
  (*(v86 + 8))(v85, v67);
  v87 = type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
  sub_100016588(v87);
  sub_100042364();
  sub_100013D5C();

  v88 = v22 + v25[12];
  type metadata accessor for PressureTrend();
  sub_100003D98();
  (*(v89 + 8))(v88);
  v90 = type metadata accessor for PressureComponentPreprocessedDataModel(0);
  sub_100016588(v90);
  sub_100042364();
  sub_100020F38();
  sub_100020F38();
  sub_100013D5C();

  v91 = sub_1000378B0();
  v92(v91);
  v93 = sub_10000CF38();
  if (!sub_100024D10(v93, v94, v74))
  {
    sub_100003B20();
    v95 = sub_100040E5C();
    v96(v95);
  }

  v97 = v84 & ~v109;
  v98 = sub_10000CF38();
  if (!sub_100024D10(v98, v99, v79))
  {
    sub_100003B20();
    v100 = sub_100040F2C();
    v101(v100);
  }

  sub_100013D5C();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for News();
    sub_100003D98();
    (*(v102 + 8))(v108 + v97);
  }

  sub_100044EBC();
  v104 = sub_100043AC8(v103);
  v105(v104);

  sub_100170790();

  return swift_deallocObject();
}

uint64_t sub_10021BAA4()
{
  type metadata accessor for Location();
  sub_10000548C();

  v0 = sub_1000751C4();
  v1(v0);
  sub_100036F2C();

  return swift_deallocObject();
}

uint64_t sub_10021BB50()
{
  type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v21 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v2 + 64);
  v23 = type metadata accessor for Location();
  sub_1000037C4();
  v5 = v4;
  v6 = (v21 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  sub_1000326E4();
  v22 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v8 = v7;
  v9 = (((v21 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 8) & ~*(v7 + 80);

  v18 = sub_1000524C0(v10, v11, v12, v13, v14, v15, v16, v17, v21);
  v19(v18);
  (*(v5 + 8))(v0 + v6, v23);

  (*(v8 + 8))(v0 + v9, v22);

  return swift_deallocObject();
}

uint64_t sub_10021BD20()
{
  sub_10000C778();
  type metadata accessor for Location();
  sub_10000548C();
  type metadata accessor for AppConfiguration();
  sub_1000037C4();

  v0 = sub_1000134A0();
  v1(v0);
  v2 = sub_10001626C();
  v3(v2);
  sub_10006A920();
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10021BE3C()
{
  sub_10000C778();
  type metadata accessor for Location();
  sub_10000548C();
  sub_10002CB50();
  type metadata accessor for OSSignpostID();
  sub_1000037C4();

  v0 = sub_1000134A0();
  v1(v0);

  v2 = sub_1000C90B8();
  v3(v2);
  sub_10006A920();
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10021BF58()
{
  type metadata accessor for Location();
  sub_10000548C();
  sub_100069BF8();

  v0 = sub_1000751C4();
  v1(v0);

  sub_100036F2C();

  return swift_deallocObject();
}

uint64_t sub_10021C024()
{
  sub_10000C778();
  type metadata accessor for Location();
  sub_10000548C();
  type metadata accessor for WeatherStatisticsModel();
  sub_1000037C4();
  sub_100171244();

  v0 = sub_1000134A0();
  v1(v0);
  v2 = sub_10001626C();
  v3(v2);

  sub_10006A920();
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10021C144()
{
  sub_10000C778();
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_100003DDC();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  type metadata accessor for Location();
  sub_10000548C();
  v7 = v6;
  v8 = *(v6 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for WeatherStatisticsModel();
    sub_100003D98();
    (*(v10 + 8))(v1 + v3);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  (*(v7 + 8))(v1 + ((((v3 + v5) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8), v0);
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10021C2C4()
{
  sub_10003C97C();
  v15 = type metadata accessor for Location();
  sub_1000037C4();
  v3 = v2;
  v4 = *(v2 + 80);
  sub_10017080C();
  v12 = (((v1 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v6 = v5;
  v13 = (*(v5 + 80) + v12 + 8) & ~*(v5 + 80);
  sub_1000203C4();
  v14 = type metadata accessor for AvailableDataSets();
  sub_1000037C4();
  v8 = v7;
  v9 = (*(v7 + 80) + v12 + 16) & ~*(v7 + 80);
  (*(v3 + 8))(v0 + ((v4 + 16) & ~v4), v15);

  (*(v6 + 8))(v0 + v13, v16);

  (*(v8 + 8))(v0 + v9, v14);
  sub_10006A920();
  sub_100017EE8();

  return swift_deallocObject();
}

uint64_t sub_10021C4B8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000038D8();
  type metadata accessor for CurrentWeather();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_14:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_13:
    v9 = v3 + v12;
    goto LABEL_14;
  }

  sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_13;
  }

  sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_100003928();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[7];
    goto LABEL_13;
  }

  sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  sub_100003928();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[8];
    goto LABEL_13;
  }

  sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  sub_100003928();
  if (*(v20 + 84) == a2)
  {
    v8 = v19;
    v12 = a3[9];
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    type metadata accessor for WeatherAvailability();
    sub_100003928();
    if (*(v25 + 84) == a2)
    {
      v8 = v24;
      v12 = a3[11];
    }

    else
    {
      sub_10022C350(&qword_100CE29C8, &qword_100A9AC10);
      sub_100003928();
      if (*(v27 + 84) == a2)
      {
        v8 = v26;
        v12 = a3[12];
      }

      else
      {
        v8 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
        v12 = a3[13];
      }
    }

    goto LABEL_13;
  }

  v22 = *(v3 + a3[10]);
  if (v22 >= 0xFFFFFFFF)
  {
    LODWORD(v22) = -1;
  }

  v23 = v22 - 1;
  if (v23 < 0)
  {
    v23 = -1;
  }

  return (v23 + 1);
}

void sub_10021C7A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000038D8();
  type metadata accessor for CurrentWeather();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CA7030, &qword_100A32000);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[8];
          }

          else
          {
            sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
            sub_100003928();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[9];
            }

            else
            {
              if (a3 == 2147483646)
              {
                *(v4 + a4[10]) = a2;
                return;
              }

              type metadata accessor for WeatherAvailability();
              sub_100003928();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[11];
              }

              else
              {
                sub_10022C350(&qword_100CE29C8, &qword_100A9AC10);
                sub_100003928();
                if (*(v26 + 84) == a3)
                {
                  v10 = v25;
                  v14 = a4[12];
                }

                else
                {
                  v10 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
                  v14 = a4[13];
                }
              }
            }
          }
        }
      }
    }

    v11 = v4 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10021CAA8(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for Calendar();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for TemperatureScaleConfiguration();
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        sub_10022C350(&qword_100CD6650, &qword_100A979D0);
        sub_100003928();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          sub_10022C350(&qword_100CB5468, &unk_100A95C40);
          sub_100003928();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            v8 = type metadata accessor for Locale();
            v12 = a3[9];
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_10021CC58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for Calendar();
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
      type metadata accessor for TemperatureScaleConfiguration();
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        sub_10022C350(&qword_100CD6650, &qword_100A979D0);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          sub_10022C350(&qword_100CB5468, &unk_100A95C40);
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[8];
          }

          else
          {
            v10 = type metadata accessor for Locale();
            v14 = a4[9];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10021CE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
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

uint64_t sub_10021CEBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
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

uint64_t sub_10021CF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PressureTrend();
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

uint64_t sub_10021D014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PressureTrend();
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

uint64_t sub_10021D0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Location();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for WeatherData(0);
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

void sub_10021D1AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10021D2A4(uint64_t a1, uint64_t a2, int *a3)
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
    sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        type metadata accessor for URL();
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[8];
        }

        else
        {
          v10 = type metadata accessor for NewsChannel(0);
          v11 = a3[9];
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_10021D3F8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        type metadata accessor for URL();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[8];
        }

        else
        {
          v10 = type metadata accessor for NewsChannel(0);
          v11 = a4[9];
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_10021D61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 17);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for DynamicTypeSize();
    v9 = a1 + *(a3 + 36);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10021D69C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 17) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for DynamicTypeSize();
    v8 = v5 + *(a4 + 36);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10021D718(unint64_t *a1, uint64_t a2, int *a3)
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
    type metadata accessor for WeatherMapDisplayMode();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[8];
    }

    else
    {
      sub_10022C350(&qword_100CE3748, &unk_100A96710);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[11];
      }

      else
      {
        sub_10022C350(&qword_100CA61E0, &unk_100A31050);
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[13];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CB3B80, &unk_100A96720);
          v11 = a3[17];
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

void *sub_10021D884(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for WeatherMapDisplayMode();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[8];
    }

    else
    {
      sub_10022C350(&qword_100CE3748, &unk_100A96710);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[11];
      }

      else
      {
        sub_10022C350(&qword_100CA61E0, &unk_100A31050);
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[13];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CB3B80, &unk_100A96720);
          v11 = a4[17];
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_10021D9F0(uint64_t a1)
{
  sub_10022C350(&qword_100CE3858, &qword_100A967D8);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10021DB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 8));
  }

  v7 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  v8 = a1 + *(a3 + 28);

  return sub_100024D10(v8, a2, v7);
}

void sub_10021DBC8()
{
  sub_100003A00();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    v6 = v1 + *(v4 + 28);

    sub_10001B350(v6, v0, v0, v5);
  }
}

uint64_t sub_10021DC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 20) + 8));
  }

  return sub_100024D10(a1, a2, v6);
}

uint64_t sub_10021DD1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003A00();
  result = sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_100005B64();

    return sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }

  return result;
}

uint64_t sub_10021DDC4()
{

  return swift_deallocObject();
}

uint64_t sub_10021DE04()
{
  sub_100003A00();
  v2 = sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_10021DE54()
{
  sub_100003A00();
  sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
  v0 = sub_100005B64();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_10021DFA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10021E034(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10021E0C4(uint64_t a1)
{
  sub_10022C350(&qword_100CE4C48, &qword_100A97CE0);
  sub_100003D98();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10021E1C8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003B38();
  type metadata accessor for Date();
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
      sub_1000202B0();
      return sub_1000039D8(*(v10 + 8));
    }

    sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
    sub_100003928();
    if (*(v13 + 84) == v3)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      type metadata accessor for ConditionUnits();
      sub_100003928();
      if (*(v16 + 84) == v3)
      {
        v8 = v15;
        v14 = a3[7];
      }

      else
      {
        v8 = type metadata accessor for DetailCondition();
        v14 = a3[8];
      }
    }

    v9 = v4 + v14;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_10021E30C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003B38();
  type metadata accessor for Date();
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
      sub_1000202B0();
      *(v12 + 8) = (v4 - 1);
      return;
    }

    sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
    sub_100003928();
    if (*(v14 + 84) == a3)
    {
      v10 = v13;
      v15 = a4[6];
    }

    else
    {
      type metadata accessor for ConditionUnits();
      sub_100003928();
      if (*(v17 + 84) == a3)
      {
        v10 = v16;
        v15 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for DetailCondition();
        v15 = a4[8];
      }
    }

    v11 = v5 + v15;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_10021E458(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003B38();
  type metadata accessor for Date();
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
      sub_1000202B0();
      return sub_1000039D8(*(v10 + 8));
    }

    sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
    sub_100003928();
    if (*(v13 + 84) == v3)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      type metadata accessor for DetailChartExtrema();
      sub_100003928();
      if (*(v16 + 84) == v3)
      {
        v8 = v15;
        v14 = a3[8];
      }

      else
      {
        type metadata accessor for ConditionUnits();
        sub_100003928();
        if (*(v18 + 84) == v3)
        {
          v8 = v17;
          v14 = a3[9];
        }

        else
        {
          v8 = type metadata accessor for DetailChartCondition();
          v14 = a3[10];
        }
      }
    }

    v9 = v4 + v14;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_10021E5DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003B38();
  type metadata accessor for Date();
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
      sub_1000202B0();
      *(v12 + 8) = (v4 - 1);
      return;
    }

    sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
    sub_100003928();
    if (*(v14 + 84) == a3)
    {
      v10 = v13;
      v15 = a4[6];
    }

    else
    {
      type metadata accessor for DetailChartExtrema();
      sub_100003928();
      if (*(v17 + 84) == a3)
      {
        v10 = v16;
        v15 = a4[8];
      }

      else
      {
        type metadata accessor for ConditionUnits();
        sub_100003928();
        if (*(v19 + 84) == a3)
        {
          v10 = v18;
          v15 = a4[9];
        }

        else
        {
          v10 = type metadata accessor for DetailChartCondition();
          v15 = a4[10];
        }
      }
    }

    v11 = v5 + v15;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_10021E768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003B38();
  type metadata accessor for ConditionUnits();
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
      return sub_1000039D8(*(v4 + *(a3 + 20)));
    }

    v8 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
    v9 = v4 + *(a3 + 24);
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_10021E82C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003B38();
  type metadata accessor for ConditionUnits();
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
      *(v5 + *(a4 + 20)) = (v4 - 1);
      return;
    }

    v10 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
    v11 = v5 + *(a4 + 24);
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_10021E940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for DetailComponentContainerViewModel(0);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_10021EA3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for DetailComponentContainerViewModel(0);
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10021EB40()
{
  sub_100003A00();
  sub_10022C350(&qword_100CDB968, &qword_100A98540);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_10021EBA0(uint64_t a1)
{
  sub_10022C350(&qword_100CDB968, &qword_100A98540);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10021EC00()
{
  sub_100003A00();
  sub_10022C350(&qword_100CB5C40, &qword_100A493F0);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_10021ED04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_10:

    return sub_100024D10(v9, v3, v8);
  }

  if (v3 != 2147483646)
  {
    v8 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    v9 = v4 + *(a3 + 36);
    goto LABEL_10;
  }

  v10 = *(v4 + *(a3 + 20) + 8);
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

void sub_10021EDF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003A00();
  sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v5 + *(a4 + 20) + 8) = v4;
      return;
    }

    v10 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    v11 = v5 + *(a4 + 36);
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_10021EF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailViewModel.Model(0);
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

uint64_t sub_10021EF6C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ConditionDetailViewModel.Model(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_10021EFC8(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for Date();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        type metadata accessor for DetailCondition();
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[9];
        }

        else
        {
          v10 = type metadata accessor for Location();
          v11 = a3[12];
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}