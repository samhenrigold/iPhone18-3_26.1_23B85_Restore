uint64_t sub_10021F11C(uint64_t result, uint64_t a2, int a3, int *a4)
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
      v11 = a4[6];
    }

    else
    {
      sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        type metadata accessor for DetailCondition();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[9];
        }

        else
        {
          v10 = type metadata accessor for Location();
          v11 = a4[12];
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_10021F294(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SunriseSunsetMonthlyViewModel(0);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_10021F31C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SunriseSunsetMonthlyViewModel(0);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10021F408()
{
  sub_10022E824(&qword_100CE5CE0, &qword_100A99090);
  sub_100918570();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10021F494(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for ChartViewModel(0);
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CBFE98, &qword_100A58340);
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = sub_10022C350(&qword_100CC01C0, &qword_100A58610);
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_10021F5C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for ChartViewModel(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CBFE98, &qword_100A58340);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CC01C0, &qword_100A58610);
        v14 = a4[7];
      }
    }

    v11 = a1 + v14;
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10021F76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 32);
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
    v8 = type metadata accessor for DisplayMetrics(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for LayoutDirection();
      v10 = *(a3 + 24);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_10021F830(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 32) = -a2;
  }

  else
  {
    v8 = type metadata accessor for DisplayMetrics(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for LayoutDirection();
      v10 = *(a4 + 24);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_10021F974(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5 = type metadata accessor for LocationComponentViewModel(v4);

  return sub_100024D10(v2, a2, v5);
}

uint64_t sub_10021F9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5 = type metadata accessor for LocationComponentViewModel(v4);

  return sub_10001B350(v2, a2, a2, v5);
}

uint64_t sub_10021FA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
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

uint64_t sub_10021FABC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConditionDetailChartHeaderStringModel();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10021FBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10021FC8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10021FD3C(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_10021FE6C(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
        v14 = a4[7];
      }
    }

    v11 = a1 + v14;
  }

  return sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100220030()
{
  sub_100037E94();
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v3 + 84) != v1)
  {
    return sub_1000039D8(*(v0 + *(v2 + 20) + 8));
  }

  v4 = sub_10000EBDC();

  return sub_100024D10(v4, v5, v6);
}

void sub_1002200CC()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_100005B64();

    sub_10001B350(v3, v4, v5, v6);
  }

  else
  {
    sub_100037390(*(v0 + 20));
  }
}

uint64_t sub_100220160(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v6 + 84) == a2)
  {
    v7 = sub_1000251E0();
  }

  else
  {
    sub_10022C350(&qword_100CADC58, &unk_100A44700);
    sub_100003928();
    if (*(v10 + 84) == a2)
    {
      v8 = v9;
      v11 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CE6930, &unk_100A99FC0);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v8 = v12;
        v11 = a3[6];
      }

      else
      {
        sub_10022C350(&qword_100CC9F58, &qword_100A682A8);
        sub_100003928();
        if (*(v15 + 84) != a2)
        {
          return sub_1000039D8(*(a1 + a3[18] + 8));
        }

        v8 = v14;
        v11 = a3[12];
      }
    }

    v7 = a1 + v11;
  }

  return sub_100024D10(v7, a2, v8);
}

void sub_1002202F0()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v2 + 84) == v1 || (sub_10022C350(&qword_100CADC58, &unk_100A44700), sub_100003928(), *(v3 + 84) == v1) || (sub_10022C350(&qword_100CE6930, &unk_100A99FC0), sub_100003928(), *(v4 + 84) == v1) || (sub_10022C350(&qword_100CC9F58, &qword_100A682A8), sub_100003928(), *(v5 + 84) == v1))
  {
    sub_1000178C4();

    sub_10001B350(v6, v7, v8, v9);
  }

  else
  {
    sub_100037390(*(v0 + 72));
  }
}

uint64_t sub_100220474()
{
  sub_100037E94();
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v3 + 84) != v1)
  {
    return sub_1000039D8(*(v0 + *(v2 + 20)));
  }

  v4 = sub_10000EBDC();

  return sub_100024D10(v4, v5, v6);
}

void sub_10022050C()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_100005B64();

    sub_10001B350(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1002205A4()
{
  sub_100037E94();
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v3 + 84) != v1)
  {
    return sub_1000039D8(*(v0 + *(v2 + 24)));
  }

  v4 = sub_10000EBDC();

  return sub_100024D10(v4, v5, v6);
}

void sub_10022063C()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_100005B64();

    sub_10001B350(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_1002206D4()
{
  sub_10022E824(&qword_100CE67B0, &qword_100A99DD8);
  sub_10022E824(&qword_100CE67A8, &qword_100A99DD0);
  sub_10022E824(&qword_100CE67C8, &unk_100A99DE8);
  sub_10093F644();
  swift_getOpaqueTypeConformance2();
  sub_10001758C();
  swift_getOpaqueTypeConformance2();
  sub_100355554();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10022081C()
{

  return swift_deallocObject();
}

uint64_t sub_100220864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 8));
  }

  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = sub_10022C350(&qword_100CE6F18, &qword_100A9A508);
    v10 = *(a3 + 24);
  }

  return sub_100024D10(a1 + v10, a2, v9);
}

uint64_t sub_100220938(uint64_t result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    sub_100003928();
    if (*(v4 + 84) != a3)
    {
      sub_10022C350(&qword_100CE6F18, &qword_100A9A508);
    }

    sub_1000178C4();

    return sub_10001B350(v5, v6, v7, v8);
  }

  return result;
}

uint64_t sub_100220A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000038D8();
  type metadata accessor for ListLocationViewModel(v6);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = sub_1000251E0();
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return sub_1000039D8(*(v3 + *(a3 + 20)));
    }

    v9 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    v8 = v3 + *(a3 + 52);
  }

  return sub_100024D10(v8, a2, v9);
}

void sub_100220AD4()
{
  sub_1000041D8();
  type metadata accessor for ListLocationViewModel(0);
  sub_100003928();
  if (*(v4 + 84) != v3)
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20)) = (v0 - 1);
      return;
    }

    sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  }

  sub_1000178C4();

  sub_10001B350(v5, v6, v7, v8);
}

uint64_t sub_100220B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1 + *(a3 + 28);

    return sub_100024D10(v9, a2, v8);
  }

  else
  {
    v11 = *(a1 + *(a3 + 32) + 8);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_100220C50(uint64_t a1, char a2, int a3, uint64_t a4)
{
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    sub_1000178C4();

    sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = -a2;
  }
}

uint64_t sub_100220D90()
{
  sub_10022E824(&qword_100CE6F10, &unk_100A9A4E0);
  sub_10022E824(&qword_100CA6028, &qword_100A40610);
  sub_10022E824(&qword_100CA5A98, &qword_100A2FFA8);
  sub_10022E824(&qword_100CADBA0, &qword_100A3D250);
  sub_1000A4F28();
  sub_10014F7C8();
  swift_getOpaqueTypeConformance2();
  sub_1000F1EAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100220E84()
{
  sub_10000C778();
  v1 = sub_10022C350(&qword_100CE7198, &qword_100A9A780);
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  active = type metadata accessor for ScrollToActiveLocationModifier(0);
  sub_100003DDC();
  v9 = *(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v10 = v0 + ((v4 + v6 + v9) & ~v9);

  v11 = *(active + 20);
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v10 + v11, 1, v12))
    {
      sub_100003B20();
      (*(v13 + 8))(v10 + v11, v12);
    }
  }

  else
  {
  }

  v14 = v10 + *(active + 24);
  type metadata accessor for ScrollPosition();
  sub_100003D98();
  (*(v15 + 8))(v14);
  sub_10022C350(&qword_100CE6F18, &qword_100A9A508);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10022107C()
{
  sub_1000C87D0();
  active = type metadata accessor for ScrollToActiveLocationModifier(0);
  sub_100003DDC();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v17 = *(v4 + 64);
  v5 = type metadata accessor for ScrollViewProxy();
  sub_1000037C4();
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = v0 + v3;

  v10 = *(active + 20);
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100030484(v9 + v10))
    {
      sub_100022F14();
      (*(v12 + 8))(v9 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v9 + *(active + 24);
  type metadata accessor for ScrollPosition();
  sub_100003D98();
  (*(v14 + 8))(v13);
  sub_10022C350(&qword_100CE6F18, &qword_100A9A508);

  (*(v7 + 8))(v0 + ((v3 + v17 + v8) & ~v8), v5);
  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_10022126C()
{
  sub_10000C778();
  v1 = type metadata accessor for ListRowView(0);
  sub_100003DDC();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v4 + 8))(v3);
  v5 = type metadata accessor for ListLocationViewModel(0);
  sub_10001673C(v5[6]);

  v6 = v3 + v5[7];
  type metadata accessor for ListLocationRowPrimaryText(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    if (!sub_10000CAFC(v6))
    {
      sub_100003B20();
      (*(v8 + 8))(v6, v7);
    }
  }

  else
  {
  }

  sub_10000EA08((v3 + v5[8]));
  v9 = v5[10];
  v10 = type metadata accessor for Date();
  if (!sub_10000CADC(v10))
  {
    sub_100003B20();
    (*(v11 + 8))(v3 + v9, v6);
  }

  v12 = v5[11];
  v13 = type metadata accessor for TimeZone();
  if (!sub_10000CADC(v13))
  {
    sub_100003B20();
    (*(v14 + 8))(v3 + v12, v6);
  }

  sub_10001673C(v5[12]);

  sub_10001673C(v5[13]);

  sub_10001673C(v5[15]);

  sub_10001673C(v5[16]);

  sub_10001673C(v5[17]);

  sub_10001673C(v5[18]);

  sub_10001673C(v5[19]);

  sub_10001673C(v5[20]);

  v15 = v5[22];
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v16 + 8))(v3 + v15);
  sub_10001673C(v5[25]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100006F14((v3 + v1[9]));
  sub_10001673C(v1[10]);

  sub_10001673C(v1[11]);

  sub_10001673C(v1[12]);

  v17 = v1[13];
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100030484(v3 + v17))
    {
      sub_100022F14();
      (*(v19 + 8))(v3 + v17, v18);
    }
  }

  else
  {
  }

  sub_10001673C(v1[14]);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1002215C0()
{
  v1 = type metadata accessor for ListRowView(0);
  sub_100003DDC();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for ListLocationViewModel(0);
  sub_1000037C4();
  v8 = *(v7 + 80);
  v40 = v0;
  v9 = v0 + v3;
  v10 = type metadata accessor for LocationModel();
  sub_1000037E8();
  v39 = *(v11 + 8);
  v39(v0 + v3, v10);
  sub_10000EADC(v6[6]);

  v12 = v0 + v3 + v6[7];
  type metadata accessor for ListLocationRowPrimaryText(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for Date();
    if (!sub_10006A954(v12))
    {
      sub_100003B20();
      (*(v14 + 8))(v12, v13);
    }
  }

  else
  {
  }

  v15 = v5 + v8;
  sub_10000EA08((v9 + v6[8]));
  v16 = v6[10];
  v17 = type metadata accessor for Date();
  if (!sub_10000CAFC(v9 + v16))
  {
    sub_100003B20();
    (*(v18 + 8))(v9 + v16, v17);
  }

  v19 = v3 + v15;
  v20 = v6[11];
  v21 = type metadata accessor for TimeZone();
  if (!sub_10006A954(v9 + v20))
  {
    sub_100003B20();
    (*(v22 + 8))(v9 + v20, v21);
  }

  v41 = v19 & ~v8;
  sub_10000EADC(v6[12]);

  sub_10000EADC(v6[13]);

  sub_10000EADC(v6[15]);

  sub_10000EADC(v6[16]);

  sub_10000EADC(v6[17]);

  sub_10000EADC(v6[18]);

  sub_10000EADC(v6[19]);

  sub_10000EADC(v6[20]);

  v23 = v6[22];
  v24 = type metadata accessor for WeatherConditionBackgroundModel();
  sub_1000037E8();
  v38 = *(v25 + 8);
  v38(v9 + v23, v24);
  sub_10000EADC(v6[25]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100006F14((v9 + v1[9]));
  sub_10000EADC(v1[10]);

  sub_10000EADC(v1[11]);

  sub_10000EADC(v1[12]);

  v26 = v1[13];
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v9 + v26, 1, v27))
    {
      sub_100003B20();
      (*(v28 + 8))(v9 + v26, v27);
    }
  }

  else
  {
  }

  sub_10000EADC(v1[14]);

  v29 = v40 + v41;
  v30 = sub_10000C918();
  (v39)(v30);
  sub_10001673C(v6[6]);

  v31 = v40 + v41 + v6[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!sub_10000CAFC(v31))
    {
      sub_100003B20();
      (*(v32 + 8))(v31, v17);
    }
  }

  else
  {
  }

  sub_10000EA08((v29 + v6[8]));
  v33 = v6[10];
  if (!sub_10000CAFC(v29 + v33))
  {
    sub_100003B20();
    (*(v34 + 8))(v29 + v33, v17);
  }

  v35 = v6[11];
  if (!sub_10006A954(v29 + v35))
  {
    sub_100003B20();
    (*(v36 + 8))(v29 + v35, v21);
  }

  sub_10001673C(v6[12]);

  sub_10001673C(v6[13]);

  sub_10001673C(v6[15]);

  sub_10001673C(v6[16]);

  sub_10001673C(v6[17]);

  sub_10001673C(v6[18]);

  sub_10001673C(v6[19]);

  sub_10001673C(v6[20]);

  v38(v29 + v6[22], v24);
  sub_10001673C(v6[25]);

  return swift_deallocObject();
}

uint64_t sub_100221B9C()
{
  sub_100037E94();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v3 + 84) != v1)
  {
    return sub_1000039D8(*(v0 + *(v2 + 20) + 8));
  }

  v4 = sub_10000EBDC();

  return sub_100024D10(v4, v5, v6);
}

void sub_100221C2C()
{
  sub_1000041D8();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_100005B64();

    sub_10001B350(v3, v4, v5, v6);
  }

  else
  {
    sub_100037390(*(v0 + 20));
  }
}

uint64_t sub_100221D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CE7510, &unk_100A9AD10);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 32);

    return sub_100024D10(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100221E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CE7510, &unk_100A9AD10);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return sub_10001B350(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 52) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100221F20()
{

  return swift_deallocObject();
}

uint64_t sub_100221F58(uint64_t a1, int a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v3 = *(a1 + 32);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
    sub_100003928();
    if (*(v8 + 84) == a2)
    {
      v9 = a3[6];
    }

    else
    {
      type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
      sub_100003928();
      if (*(v10 + 84) == a2)
      {
        v9 = a3[7];
      }

      else
      {
        sub_10022C350(&qword_100CE7868, &qword_100A9B138);
        v9 = a3[8];
      }
    }

    v11 = sub_1000039EC(v9);

    return sub_100024D10(v11, v12, v13);
  }
}

uint64_t sub_100222080(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
    sub_100003928();
    if (*(v7 + 84) == a3)
    {
      v8 = a4[6];
    }

    else
    {
      type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
      sub_100003928();
      if (*(v9 + 84) == a3)
      {
        v8 = a4[7];
      }

      else
      {
        sub_10022C350(&qword_100CE7868, &qword_100A9B138);
        v8 = a4[8];
      }
    }

    v10 = sub_1000039EC(v8);

    return sub_10001B350(v10, v11, a2, v12);
  }

  return result;
}

uint64_t sub_1002221C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for AttributedString();
    v6 = sub_1000039EC(*(a3 + 20));

    return sub_100024D10(v6, v7, v8);
  }
}

uint64_t sub_100222244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for AttributedString();
    v6 = sub_1000039EC(*(a4 + 20));

    return sub_10001B350(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_10022233C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CA6CB0, &unk_100A31CB0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  type metadata accessor for TimeZone();
  sub_100003928();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_100222480(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for TimeZone();
      sub_100003928();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_1002225C4()
{
  type metadata accessor for DailyForecastEditorView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0) + 32);
    type metadata accessor for PresentationMode();
    sub_100003D98();
    (*(v6 + 8))(v3 + v5);
  }

  v7 = *(v0 + 20);
  sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_100003D98();
  (*(v8 + 8))(v3 + v7);
  v9 = *(v0 + 28);
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);

  return swift_deallocObject();
}

uint64_t sub_100222788()
{
  sub_10022E824(&qword_100CE7B58, &qword_100A9B470);
  sub_10022E824(&qword_100CA5528, &qword_100A2F940);
  sub_10022E824(&qword_100CE7B50, &qword_100A9B468);
  sub_10022E824(&qword_100CE7B48, &qword_100A9B460);
  type metadata accessor for InsetGroupedListStyle();
  sub_100011068();
  sub_100006F64(v0, v1, &qword_100A9B460, v2);
  sub_100005DB4();
  swift_getOpaqueTypeConformance2();
  sub_100004C88();
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v3, &qword_100CA5528, &qword_100A2F940, v4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100222900()
{
  v1 = type metadata accessor for WeatherMap.Event();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1002229E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MapComponentViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_100024D10(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    v8 = a1 + *(a3 + 32);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 28));
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

uint64_t sub_100222AD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MapComponentViewModel(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v9 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    v10 = a1 + *(a4 + 32);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_100222BB0()
{
  v1 = type metadata accessor for MapComponentView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  (*(v3 + 8))(v2);
  v4 = type metadata accessor for MapComponentViewModel(0);
  v5 = *(v4 + 20);
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v6 + 8))(v2 + v5);
  v7 = v2 + *(v4 + 24);
  v8 = type metadata accessor for WeatherData(0);
  v9 = sub_1000162A4();
  if (!sub_100024D10(v9, v10, v8))
  {

    v11 = v8[5];
    v12 = type metadata accessor for Locale();
    if (!sub_100024D10(v7 + v11, 1, v12))
    {
      sub_100003B20();
      (*(v13 + 8))(v7 + v11, v12);
    }

    v14 = v8[6];
    type metadata accessor for WeatherDataModel();
    sub_1000037E8();
    (*(v15 + 8))(v7 + v14);
    v16 = v7 + v8[7];
    v17 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
    if (!sub_100024D10(v16, 1, v17))
    {
      v18 = type metadata accessor for Date();
      sub_1000037E8();
      v40 = *(v19 + 8);
      v40(v16, v18);
      v20 = *(v17 + 48);
      v21 = type metadata accessor for WeatherDataRelevancy(0);
      if (!sub_100024D10(v16 + v20, 1, v21))
      {
        v40(v16 + v20, v18);
      }
    }

    v22 = v7 + v8[8];
    type metadata accessor for WeatherData.WeatherStatisticsState(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for WeatherStatisticsModel();
      sub_1000037E8();
      (*(v24 + 8))(v22);
    }

    else if (!EnumCaseMultiPayload)
    {
    }

    v25 = v7 + v8[9];
    v26 = type metadata accessor for WeatherDataOverrides(0);
    v27 = sub_1000162A4();
    if (!sub_100024D10(v27, v28, v26))
    {
      v29 = type metadata accessor for Date();
      v30 = sub_1000162A4();
      if (!sub_100024D10(v30, v31, v29))
      {
        sub_100003B20();
        (*(v32 + 8))(v25, v29);
      }

      v33 = *(v26 + 20);
      if (!sub_100024D10(v25 + v33, 1, v29))
      {
        sub_100003B20();
        (*(v34 + 8))(v25 + v33, v29);
      }
    }
  }

  sub_1000EBD74(*(v2 + v1[5]), *(v2 + v1[5] + 8));
  sub_1000EBD74(*(v2 + v1[6]), *(v2 + v1[6] + 8));

  v35 = v1[8];
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v2 + v35, 1, v36))
    {
      sub_100003B20();
      (*(v37 + 8))(v2 + v35, v36);
    }
  }

  else
  {
  }

  sub_100109A3C(*(v2 + v1[9]), *(v2 + v1[9] + 8), *(v2 + v1[9] + 9));
  v38 = v2 + v1[10];
  sub_100168B1C(*v38, *(v38 + 8), *(v38 + 16), *(v38 + 24), *(v38 + 32), *(v38 + 40), *(v38 + 48), *(v38 + 56), *(v38 + 64), *(v38 + 72));
  sub_1004BFF94(*(v2 + v1[11]), *(v2 + v1[11] + 8), *(v2 + v1[11] + 16), *(v2 + v1[11] + 17));

  return swift_deallocObject();
}

uint64_t sub_100223098()
{
  sub_100003A00();
  sub_10022C350(&qword_100CE7D70, &qword_100A9B820);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_100223100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 72);
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
    v8 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10022318C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 72) = -a2;
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10022321C()
{
  v0 = sub_100003940();
  sub_10022E824(v0, v1);
  sub_10006768C(&qword_100CE7ED0, &qword_100CE7EC8, &qword_100A9BCE0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1002232B4()
{
  v1 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_100223400()
{

  return swift_deallocObject();
}

uint64_t sub_1002234B4(void *a1)
{
  v1 = a1[1];
  v2 = type metadata accessor for ModifiedContent();
  v3 = type metadata accessor for ModifiedContent();
  v4 = sub_1001B8300();
  v66[0] = v1;
  v66[1] = v4;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v66);
  v6 = sub_100965958();
  v65[0] = WitnessTable;
  v65[1] = v6;
  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v65);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100017180();
  swift_getOpaqueTypeMetadata2();
  v45 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for Button();
  v8 = sub_100006C58();
  swift_getWitnessTable(v8, v7);
  swift_getOpaqueTypeMetadata2();
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v64[0] = swift_getOpaqueTypeConformance2();
  v64[1] = v4;
  v63[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v64);
  v63[1] = v6;
  v11 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v10, v63);
  v42 = sub_1001B8354();
  swift_getOpaqueTypeMetadata2();
  v40 = sub_1001B83A8();
  swift_getOpaqueTypeMetadata2();
  v12 = type metadata accessor for PlainButtonStyle();
  sub_100009354();
  v15 = sub_1001B83FC(v13, v14, &protocol conformance descriptor for PlainButtonStyle);
  v61 = v11;
  v62 = v15;
  swift_getOpaqueTypeMetadata2();
  v16 = type metadata accessor for _ConditionalContent();
  v17 = type metadata accessor for _ConditionalContent();
  v37 = type metadata accessor for _ConditionalContent();
  v59 = OpaqueTypeMetadata2;
  v60 = OpaqueTypeConformance2;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = sub_1009659AC();
  v18 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v45, &v57);
  v26 = sub_10000EF1C(v18, v19, v20, v21, v22, v23, v24, v25, v37, v40, v42, &protocol conformance descriptor for <> ModifiedContent<A, B>, v45, OpaqueTypeConformance2, OpaqueTypeMetadata2, v51, v52, v53, v54, v55, v56, v57, v58, v10, &type metadata for DefaultBackgroundButtonStyle, v61, v62);
  v34 = sub_10000EF1C(v26, v27, v28, v29, v30, v31, v32, v33, v38, v41, v43, v44, v46, v48, v50, v51, v52, v53, v54, v55, v56, v57, v58, v10, &type metadata for FixedBackgroundButtonStyle, v61, v62);
  v59 = v10;
  v60 = v12;
  v61 = v11;
  v62 = v15;
  v55 = v34;
  v56 = swift_getOpaqueTypeConformance2();
  sub_100049F70();
  v53 = v26;
  v54 = swift_getWitnessTable(v35, v16, &v55);
  v51 = v18;
  v52 = swift_getWitnessTable(v12, v17, &v53);
  return swift_getWitnessTable(v12, v39, &v51);
}

uint64_t sub_1002238C4(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 32);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for ScrubberViewModel(0);
    sub_100003928();
    if (*(v7 + 84) == a2)
    {
      v8 = a3[10];
    }

    else
    {
      sub_10022C350(&qword_100CAD050, &qword_100A3C430);
      sub_100003928();
      if (*(v9 + 84) == a2)
      {
        v8 = a3[13];
      }

      else
      {
        sub_10022C350(&qword_100CE86D8, &unk_100A9CD58);
        sub_100003928();
        if (*(v10 + 84) == a2)
        {
          v8 = a3[19];
        }

        else
        {
          sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
          v8 = a3[20];
        }
      }
    }

    v11 = sub_1000039EC(v8);

    return sub_100024D10(v11, v12, v13);
  }
}

uint64_t sub_100223A2C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    type metadata accessor for ScrubberViewModel(0);
    sub_100003928();
    if (*(v7 + 84) == a3)
    {
      v8 = a4[10];
    }

    else
    {
      sub_10022C350(&qword_100CAD050, &qword_100A3C430);
      sub_100003928();
      if (*(v9 + 84) == a3)
      {
        v8 = a4[13];
      }

      else
      {
        sub_10022C350(&qword_100CE86D8, &unk_100A9CD58);
        sub_100003928();
        if (*(v10 + 84) == a3)
        {
          v8 = a4[19];
        }

        else
        {
          sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
          v8 = a4[20];
        }
      }
    }

    v11 = sub_1000039EC(v8);

    return sub_10001B350(v11, v12, a2, v13);
  }

  return result;
}

uint64_t sub_100223BAC()
{
  type metadata accessor for ScrubberView(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_100006F14((v1 + v3 + 8));

  v4 = v1 + v3 + v0[10];

  v5 = *(type metadata accessor for ScrubberViewModel(0) + 24);
  type metadata accessor for TimeZone();
  sub_1000037E8();
  (*(v6 + 8))(v4 + v5);
  sub_100023610();

  v7 = v1 + v3 + v0[13];
  v8 = type metadata accessor for Date();
  sub_1000037E8();
  v10 = *(v9 + 8);
  v10(v7, v8);
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);

  sub_100023610();
  sub_100023610();

  sub_100023610();
  sub_100023610();
  v11 = v1 + v3 + v0[19];

  v12 = *(sub_10022C350(&qword_100CE86D8, &unk_100A9CD58) + 32);
  v13 = type metadata accessor for ScrubberDateSelection(0);
  if (!sub_100024D10(v11 + v12, 1, v13) && !sub_100024D10(v11 + v12, 1, v8))
  {
    v10(v11 + v12, v8);
  }

  v14 = v0[20];
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    (*(v15 + 8))(v1 + v3 + v14);
  }

  else
  {
  }

  sub_100023610();

  return swift_deallocObject();
}

uint64_t sub_100223E6C()
{
  sub_10022E824(&qword_100CE87D8, &qword_100A9CDC8);
  sub_10022E824(&qword_100CA6BC0, &unk_100A31BE0);
  sub_100974950();
  sub_1006BF6FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100223F38()
{

  return swift_deallocObject();
}

uint64_t sub_100223F70(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for ScrubberDay(0);
    v8 = sub_1000039EC(*(a3 + 20));

    return sub_100024D10(v8, v9, v10);
  }
}

_BYTE *sub_100223FF4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    type metadata accessor for ScrubberDay(0);
    v6 = sub_1000039EC(*(a4 + 20));

    return sub_10001B350(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1002240C8()
{
  v0 = sub_100003940();
  sub_10022E824(v0, v1);
  sub_100005A00();
  sub_100006F64(v2, &qword_100CE8AC8, &qword_100A9D178, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10022416C()
{
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90, &unk_100A54580);
  v0 = swift_allocObject();
  v1 = sub_10003201C(v0, xmmword_100A3B030);

  return v1;
}

uint64_t sub_10022427C()
{
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90, &unk_100A54580);
  v0 = swift_allocObject();
  v1 = sub_10003201C(v0, xmmword_100A3B030);

  return v1;
}

uint64_t sub_1002244B0()
{
  v1 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1002245F0(uint64_t a1, uint64_t a2, int *a3)
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
          v12 = a3[10];
        }
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_100224774(uint64_t a1, uint64_t a2, int a3, int *a4)
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
          v14 = a4[10];
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100224934@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100224A28(uint64_t a1, uint64_t a2)
{
  if (a2 == 254)
  {
    v2 = *(a1 + 8);
    if (v2 > 1)
    {
      return (v2 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for WindComponentViewModel(0);
    v5 = sub_10001C19C();

    return sub_100024D10(v5, a2, v6);
  }
}

uint64_t sub_100224AA4(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    type metadata accessor for WindComponentViewModel(0);
    v4 = sub_10001C19C();

    return sub_10001B350(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_100224B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
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

    type metadata accessor for WindComponentViewModel(0);
    v8 = sub_10001C19C();
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_100224C00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 8) = -a2;
      return result;
    }

    type metadata accessor for WindComponentViewModel(0);
    v10 = sub_10001C19C();
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_100224CD8()
{
  v1 = type metadata accessor for SimpleWindComponentContentView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  sub_1000E4DF8(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));
  v5 = v3 + *(v1 + 24);

  v6 = *(type metadata accessor for WindComponentViewModel(0) + 68);
  type metadata accessor for WindComponentCompassViewModel();
  sub_1000037E8();
  (*(v7 + 8))(v5 + v6);

  return swift_deallocObject();
}

uint64_t sub_100224EB4()
{
  sub_100003A00();
  sub_10022C350(&qword_100CB6FB8, &qword_100A831C0);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_100224F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_100224FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_100225004(uint64_t a1)
{
  sub_10022C350(&qword_100CE9640, &qword_100A9E530);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_100225064(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CE9640, &qword_100A9E530);
  sub_1000037E8();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1002250CC()
{
  v1 = *(type metadata accessor for ReportWeatherSubmittedView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0) + 32);
  type metadata accessor for PresentationMode();
  sub_1000037E8();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_1002251C4()
{
  sub_10022E824(&qword_100CE9640, &qword_100A9E530);
  sub_10022E824(&qword_100CE9650, &unk_100A9E540);
  sub_100005A00();
  sub_100006F64(v0, &qword_100CE9640, &qword_100A9E530, v1);
  sub_100996FC4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1002253B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WeatherDescription();
    v9 = a1 + *(a3 + 28);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10022543C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherDescription();
    v8 = v5 + *(a4 + 28);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10022557C()
{
  sub_100003B38();
  v2 = type metadata accessor for PrecipitationTotalPlatterViewModel();

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_1002255BC()
{
  sub_100003B38();
  type metadata accessor for PrecipitationTotalPlatterViewModel();
  v0 = sub_100005B64();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_1002255F4()
{
  v1 = *(type metadata accessor for PrecipitationTotalPlatterView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for PrecipitationTotalPlatterViewModel();
  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1002256B8()
{
  sub_1000232FC();
  type metadata accessor for PrecipitationTotalPlatterViewModel.SectionModel();
  sub_100003928();
  if (*(v4 + 84) != v1)
  {
    return sub_1000093E8(*(v2 + 24));
  }

  return sub_100024D10(v0, v1, v3);
}

void sub_100225744(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003B38();
  type metadata accessor for PrecipitationTotalPlatterViewModel.SectionModel();
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_100005B64();

    sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 24)) = (v4 - 1);
  }
}

uint64_t sub_100225818()
{
  v1 = *(type metadata accessor for PrecipitationTotalSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for PrecipitationTotalPlatterViewModel.SectionModel();
  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_100225908()
{
  sub_1000232FC();
  type metadata accessor for PrecipitationTotalPlatterViewModel.RowModel();
  sub_100003928();
  if (*(v4 + 84) != v1)
  {
    return sub_1000093E8(*(v2 + 28));
  }

  return sub_100024D10(v0, v1, v3);
}

void sub_100225994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003B38();
  type metadata accessor for PrecipitationTotalPlatterViewModel.RowModel();
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_100005B64();

    sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 28)) = (v4 - 1);
  }
}

uint64_t sub_100225A58(uint64_t a1)
{
  sub_10022C350(&qword_100CEA588, &qword_100A9FB50);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_100225BA8()
{

  return swift_deallocObject();
}

uint64_t sub_100225BE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = type metadata accessor for _ConditionalContent();
  v6 = &protocol witness table for Color;
  v7 = v1;
  v3 = sub_10001F590();
  swift_getWitnessTable(v3, v2, &v6);
  type metadata accessor for GeometryReader();
  v4 = sub_10001D440();
  return swift_getWitnessTable(v4, v6, v7);
}

uint64_t sub_100225C7C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003B38();
  type metadata accessor for LocationModel();
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
      return sub_100020D78(v4 + a3[6]);
    }

    type metadata accessor for ListLocationRowPrimaryText(0);
    sub_100003928();
    if (*(v12 + 84) == v3)
    {
      v8 = v11;
      v13 = a3[7];
    }

    else
    {
      sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
      sub_100003928();
      if (*(v15 + 84) == v3)
      {
        v8 = v14;
        v13 = a3[10];
      }

      else
      {
        sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
        sub_100003928();
        if (*(v17 + 84) == v3)
        {
          v8 = v16;
          v13 = a3[11];
        }

        else
        {
          v8 = type metadata accessor for WeatherConditionBackgroundModel();
          v13 = a3[22];
        }
      }
    }

    v9 = v4 + v13;
  }

  return sub_100024D10(v9, v3, v8);
}

void sub_100225E0C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003B38();
  type metadata accessor for LocationModel();
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
      *(v5 + a4[6] + 8) = (v4 - 1);
      return;
    }

    type metadata accessor for ListLocationRowPrimaryText(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[10];
      }

      else
      {
        sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[11];
        }

        else
        {
          v10 = type metadata accessor for WeatherConditionBackgroundModel();
          v14 = a4[22];
        }
      }
    }

    v11 = v5 + v14;
  }

  sub_10001B350(v11, v4, v4, v10);
}

uint64_t sub_100225FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_100020D78(a1 + *(a3 + 20));
  }

  return sub_100024D10(a1, a2, v6);
}

void sub_100226044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003B38();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {

    sub_10001B350(v5, v4, v4, v8);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }
}

uint64_t sub_10022610C(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for TargetWindowSizeClass();
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_10022C350(&qword_100CEACE8, &unk_100AA05A0);
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = type metadata accessor for DynamicTypeSize();
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_100226230()
{
  sub_1000041D8();
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    type metadata accessor for TargetWindowSizeClass();
    sub_100003928();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      sub_10022C350(&qword_100CEACE8, &unk_100AA05A0);
      sub_100003928();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        v6 = type metadata accessor for DynamicTypeSize();
        v10 = v2[7];
      }
    }

    v7 = v1 + v10;
  }

  return sub_10001B350(v7, v0, v0, v6);
}

uint64_t sub_100226350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 24)));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 20);

  return sub_100024D10(v9, a2, v8);
}

void sub_1002263F0()
{
  sub_1000041D8();
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1 + *(v2 + 20);

    sub_10001B350(v7, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_10022649C()
{
  sub_10000FE4C();
  v0 = sub_1000A3D80();
  return sub_100005F94(v0);
}

uint64_t sub_1002264F8()
{
  sub_10000FE4C();
  v0 = sub_10093EA20();
  return sub_100005F94(v0);
}

uint64_t sub_100226544(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10022C350(&qword_100CB76D0, &unk_100A4B720);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    sub_10022C350(&qword_100CEAE70, &qword_100AA08E8);
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v9 = a3[6];
    }

    else
    {
      type metadata accessor for WeatherConditionBackgroundModel();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v8 = v12;
        v9 = a3[12];
      }

      else
      {
        if (a2 == 0x7FFFFFFF)
        {
          return sub_1000039D8(*(a1 + a3[13]));
        }

        v8 = sub_10022C350(&qword_100CACB08, &unk_100A3BEF0);
        v9 = a3[19];
      }
    }
  }

  return sub_100024D10(a1 + v9, a2, v8);
}

void sub_1002266A8()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CB76D0, &unk_100A4B720);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v2[5];
  }

  else
  {
    sub_10022C350(&qword_100CEAE70, &qword_100AA08E8);
    sub_100003928();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v7 = v2[6];
    }

    else
    {
      type metadata accessor for WeatherConditionBackgroundModel();
      sub_100003928();
      if (*(v11 + 84) == v3)
      {
        v6 = v10;
        v7 = v2[12];
      }

      else
      {
        if (v3 == 0x7FFFFFFF)
        {
          *(v1 + v2[13]) = (v0 - 1);
          return;
        }

        v6 = sub_10022C350(&qword_100CACB08, &unk_100A3BEF0);
        v7 = v2[19];
      }
    }
  }

  sub_10001B350(v1 + v7, v0, v0, v6);
}

uint64_t sub_100226834()
{
  type metadata accessor for WeatherConditionBackgroundModifier(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for WeatherConditionBackgroundModel();
  sub_1000037C4();
  v8 = v7;
  v9 = *(v7 + 80);
  v21 = v1;
  v10 = v1 + v3;

  v11 = v0[5];
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v12 + 8))(v10 + v11);
  }

  else
  {
  }

  v13 = v0[6];
  sub_10022C350(&qword_100CB0588, &qword_100AA07C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for TargetWindowSizeClass();
    if (!sub_100024D10(v10 + v13, 1, v14))
    {
      sub_100003B20();
      (*(v15 + 8))(v10 + v13, v14);
    }
  }

  else
  {
  }

  v16 = (v3 + v5 + v9) & ~v9;
  sub_100024CE0(v0[7]);
  sub_100024CE0(v0[8]);
  sub_100024CE0(v0[9]);
  sub_100024CE0(v0[10]);
  sub_100024CE0(v0[11]);
  v17 = *(v8 + 8);
  v17(v10 + v0[12], v6);
  swift_unknownObjectRelease();
  sub_1000872DC();

  v18 = v10 + v0[19];
  type metadata accessor for AnimatedGradient();
  sub_100003D98();
  (*(v19 + 8))(v18);
  sub_10022C350(&qword_100CACB08, &unk_100A3BEF0);

  sub_100071A7C();
  sub_100071A7C();
  sub_10003BCA4();
  sub_100071A7C();
  sub_10003BCA4();

  v17(v21 + v16, v6);

  return swift_deallocObject();
}

uint64_t sub_100226B44()
{
  type metadata accessor for WeatherConditionBackgroundModifier(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v0[6];
  sub_10022C350(&qword_100CB0588, &qword_100AA07C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for TargetWindowSizeClass();
    if (!sub_10017084C(v7))
    {
      sub_100003B20();
      (*(v8 + 8))(v3 + v6, v4);
    }
  }

  else
  {
  }

  sub_100020D90(v0[7]);
  sub_100020D90(v0[8]);
  sub_100020D90(v0[9]);
  sub_100020D90(v0[10]);
  sub_100020D90(v0[11]);
  v9 = v0[12];
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);
  swift_unknownObjectRelease();
  sub_10003270C();

  v11 = v3 + v0[19];
  type metadata accessor for AnimatedGradient();
  sub_100003D98();
  (*(v12 + 8))(v11);
  sub_10022C350(&qword_100CACB08, &unk_100A3BEF0);

  sub_1000795E0();
  sub_1000795E0();
  sub_100086998();
  sub_1000795E0();
  sub_100086998();

  return swift_deallocObject();
}

uint64_t sub_100226DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
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

uint64_t sub_100226E28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Date();

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_100226E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MainAction(0);
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

uint64_t sub_100226F40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MainAction(0);
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

uint64_t sub_100226FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MonthlyAveragesChartModel(0);
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

uint64_t sub_100227098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MonthlyAveragesChartModel(0);
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

uint64_t sub_100227194()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1002271CC()
{

  return swift_deallocObject();
}

uint64_t sub_100227210()
{
  v1 = type metadata accessor for Location();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1002272C8()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100227300()
{

  return swift_deallocObject();
}

uint64_t sub_100227344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000038D8();
  v6 = type metadata accessor for TemperatureChartKind();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_8:

    return sub_100024D10(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_10022C350(&qword_100CEBB68, &unk_100AA1760);
    v8 = v3 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(v3 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_100227420(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000038D8();
  result = type metadata accessor for TemperatureChartKind();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = sub_10022C350(&qword_100CEBB68, &unk_100AA1760);
    v10 = v4 + *(a4 + 24);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1002274F8(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CB5C40, &qword_100A493F0);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_10022755C(uint64_t a1)
{
  sub_10022C350(&qword_100CB5C40, &qword_100A493F0);
  sub_1000037E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1002275C0(uint64_t a1, uint64_t a2)
{
  sub_1000038D8();
  v4 = type metadata accessor for TemperatureChartKind();

  return sub_100024D10(v2, a2, v4);
}

uint64_t sub_100227604(uint64_t a1, uint64_t a2)
{
  sub_1000038D8();
  v4 = type metadata accessor for TemperatureChartKind();

  return sub_10001B350(v2, a2, a2, v4);
}

uint64_t sub_100227650@<X0>(uint64_t *a1@<X8>)
{
  result = TemperatureChartKind.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10022767C()
{
  v1 = *(type metadata accessor for TemperatureChartSelectionSummaryView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for TemperatureChartKind();
  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_100227788()
{

  return swift_deallocObject();
}

uint64_t sub_100227838(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WeatherDescription();
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

void *sub_1002278C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherDescription();
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1002279B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1009C6D38(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_100227A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 3)
    {
      return v8 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100227B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Location();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100227C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CurrentWeather();
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

uint64_t sub_100227CB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CurrentWeather();
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

uint64_t sub_100227E5C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*a1);
  }

  type metadata accessor for Date();
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = type metadata accessor for TimeZone();
    v10 = *(a3 + 32);
  }

  return sub_100024D10(a1 + v10, a2, v9);
}

void *sub_100227F18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = type metadata accessor for TimeZone();
      v11 = *(a4 + 32);
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100227FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 20) + 8));
  }

  return sub_100024D10(a1, a2, v6);
}

void sub_10022807C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {

    sub_10001B350(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_10022814C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 32);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1002281D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 32);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100228254(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    sub_100003928();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 32));
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 24);
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_10022835C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    sub_100003928();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 1;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100228450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
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

uint64_t sub_100228498(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1002284F4(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for Location();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      type metadata accessor for LocationOfInterest();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = type metadata accessor for AttributedString();
        v11 = a3[7];
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_1002285FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
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
      type metadata accessor for LocationOfInterest();
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for AttributedString();
        v11 = a4[7];
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100228758()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100228790()
{

  return swift_deallocObject();
}

uint64_t sub_1002287DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000038D8();
  type metadata accessor for LocationViewModel(v6);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for DisplayMetrics(0);
    sub_100003928();
    if (*(v12 + 84) != a2)
    {
      return sub_100017240();
    }

    v9 = v11;
    v10 = v3 + *(a3 + 20);
  }

  return sub_100024D10(v10, a2, v9);
}

void sub_1002288B0()
{
  sub_10001A37C();
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    type metadata accessor for DisplayMetrics(0);
    sub_100003928();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  sub_10001B350(v7, v0, v0, v6);
}

uint64_t sub_100228984()
{
  type metadata accessor for LazyLocationGridViewContainer(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = type metadata accessor for Location.Identifier();
  sub_1000037E8();
  v6 = *(v5 + 8);
  v7 = sub_10002C8AC();
  (v6)(v7);
  v8 = type metadata accessor for LocationViewModel(0);
  v9 = v8[5];
  if (!sub_10003CAC0())
  {
    (v6)(v3 + v9, v4);
  }

  sub_10001888C();
  sub_10016AD1C(*(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40));

  sub_100037CD8();
  v10 = sub_10000CE10();
  v11 = type metadata accessor for LocationFooterViewModel(v10);
  if (!sub_100005BB8(v11))
  {

    if (*(v4 + 24))
    {
    }

    v12 = v4 + *(v6 + 36);

    v13 = *(type metadata accessor for LearnMoreAttributorViewModel(0) + 24);
    v14 = type metadata accessor for URL();
    if (!sub_100024D10(v12 + v13, 1, v14))
    {
      sub_100003B20();
      (*(v15 + 8))(v12 + v13, v14);
    }

    v16 = *(v6 + 44);
    v17 = type metadata accessor for LocationOfInterest();
    if (!sub_100024D10(v4 + v16, 1, v17))
    {
      sub_100003B20();
      (*(v18 + 8))(v4 + v16, v17);
    }

    v19 = v4 + *(v6 + 56);
    v20 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
    if (!sub_100005BB8(v20))
    {
      v21 = *(v6 + 20);
      type metadata accessor for Location();
      sub_100003D98();
      (*(v22 + 8))(v19 + v21);
      sub_100020A90();
      (*(v23 + 8))(v19 + v24, v17);
    }
  }

  v25 = v8[19];
  type metadata accessor for Date();
  sub_100003D98();
  (*(v26 + 8))(v3 + v25);
  v27 = v8[20];
  v28 = type metadata accessor for ForegroundEffect();
  if (!sub_10003CAC0())
  {
    sub_100003B20();
    (*(v29 + 8))(v3 + v27, v28);
  }

  v30 = sub_10000CE10();
  v31 = type metadata accessor for PreviewLocation(v30);
  if (!sub_100005BB8(v31))
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
        sub_100003D98();
        (*(v32 + 8))(v28);
        break;
      case 3u:

        v37 = *(type metadata accessor for SearchLocation(0) + 32);
        v38 = type metadata accessor for Location();
        if (!sub_10005227C(v38))
        {
          sub_100003B20();
          (*(v39 + 8))(v28 + v37);
        }

        break;
      case 4u:

        break;
      default:
        break;
    }
  }

  sub_10001888C();

  v33 = v0[5];
  v34 = v33 + *(type metadata accessor for DisplayMetrics(0) + 36);
  type metadata accessor for DynamicTypeSize();
  sub_100003D98();
  (*(v35 + 8))(v3 + v34);

  swift_unknownObjectRelease();
  sub_100006F14((v3 + v0[10]));
  sub_100028F38(v0[11]);
  sub_1000E4DF8(*(v3 + v0[12]), *(v3 + v0[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_100228EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LocationViewModel(0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 28));
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

void sub_100228F94()
{
  sub_10001A37C();
  sub_100003928();
  if (*(v5 + 84) == v3)
  {

    sub_10001B350(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 28)) = v0;
  }
}

uint64_t sub_100229024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000038D8();
  type metadata accessor for LocationViewModel(v6);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for DisplayMetrics(0);
    sub_100003928();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = *(a3 + 20);
    }

    else
    {
      if (a2 == 0x7FFFFFFF)
      {
        return sub_100017240();
      }

      v9 = type metadata accessor for LocationViewCellContentDescriptor(0);
      v13 = *(a3 + 48);
    }

    v10 = v3 + v13;
  }

  return sub_100024D10(v10, a2, v9);
}

void sub_100229118()
{
  sub_10001A37C();
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    type metadata accessor for DisplayMetrics(0);
    sub_100003928();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        *(v1 + v2[6]) = (v0 - 1);
        return;
      }

      v6 = type metadata accessor for LocationViewCellContentDescriptor(0);
      v10 = v2[12];
    }

    v7 = v1 + v10;
  }

  sub_10001B350(v7, v0, v0, v6);
}

uint64_t sub_100229294()
{
  v0 = sub_10022E824(&qword_100CECDB0, &qword_100AA40A0);
  v1 = sub_10022E824(&qword_100CECDB8, &unk_100AA40A8);
  sub_10022E824(&qword_100CD47E0, &qword_100A83D20);
  sub_100006F64(&qword_100CECDC0, &qword_100CECDB8, &unk_100AA40A8, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v2 = sub_100708038();
  v18 = sub_100017540(v2, v3, v4, v5, v6, v7, v8, v9, v1);
  return sub_100017540(v18, v10, v11, v12, v13, v14, v15, v16, v0);
}

uint64_t sub_100229390()
{
  v0 = sub_10022E824(&qword_100CECDD0, &qword_100AA40C0);
  v9 = sub_1009D70C0();
  return sub_100017540(v9, v1, v2, v3, v4, v5, v6, v7, v0);
}

uint64_t sub_100229440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
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

uint64_t sub_100229508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CA61E0, &unk_100A31050);
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

uint64_t sub_100229604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherActivity(0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_10022964C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherActivity(0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1002296A8(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for DetailChartCondition();
    sub_100003928();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[6];
    }

    else
    {
      type metadata accessor for TimeZone();
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[10];
      }

      else
      {
        if (a2 == 0x7FFFFFFF)
        {
          return sub_1000039D8(*(v3 + a3[11]));
        }

        type metadata accessor for CurrentWeather();
        sub_100003928();
        if (*(v17 + 84) == a2)
        {
          v8 = v16;
          v12 = a3[12];
        }

        else
        {
          sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
          sub_100003928();
          if (*(v19 + 84) == a2)
          {
            v8 = v18;
            v12 = a3[13];
          }

          else
          {
            v8 = type metadata accessor for ChartViewModelInterpolationMode();
            v12 = a3[14];
          }
        }
      }
    }

    v9 = v3 + v12;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_100229870()
{
  sub_1000062E8();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v4 + 84) != v3)
  {
    type metadata accessor for DetailChartCondition();
    sub_100003928();
    if (*(v5 + 84) != v3)
    {
      type metadata accessor for TimeZone();
      sub_100003928();
      if (*(v6 + 84) != v3)
      {
        if (v3 == 0x7FFFFFFF)
        {
          *(v1 + *(v2 + 44)) = (v0 - 1);
          return;
        }

        type metadata accessor for CurrentWeather();
        sub_100003928();
        if (*(v11 + 84) != v3)
        {
          sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
          sub_100003928();
          if (*(v12 + 84) != v3)
          {
            type metadata accessor for ChartViewModelInterpolationMode();
          }
        }
      }
    }
  }

  sub_1000178C4();

  sub_10001B350(v7, v8, v9, v10);
}

uint64_t sub_100229A58(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 8));
  }

  type metadata accessor for Date();
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
  }

  else
  {
    type metadata accessor for DetailChartCondition();
    sub_100003928();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[7];
    }

    else
    {
      v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
      v10 = a3[9];
    }
  }

  return sub_100024D10(a1 + v10, a2, v9);
}

uint64_t sub_100229B60(uint64_t result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v4 + 84) != a3)
    {
      type metadata accessor for DetailChartCondition();
      sub_100003928();
      if (*(v5 + 84) != a3)
      {
        sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    sub_1000178C4();

    return sub_10001B350(v6, v7, v8, v9);
  }

  return result;
}

uint64_t sub_100229C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 20)));
  }

  return sub_100024D10(a1, a2, v6);
}

void sub_100229D08()
{
  sub_1000062E8();
  type metadata accessor for Date();
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    sub_1000178C4();

    sub_10001B350(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_100229D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000038D8();
  type metadata accessor for ConditionDetailChartHeaderInput();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    v8 = type metadata accessor for ConditionDetailChartDataInput(0);
    v9 = v3 + *(a3 + 20);
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_100229E2C()
{
  sub_1000062E8();
  type metadata accessor for ConditionDetailChartHeaderInput();
  sub_100003928();
  if (*(v1 + 84) != v0)
  {
    type metadata accessor for ConditionDetailChartDataInput(0);
  }

  sub_1000178C4();

  return sub_10001B350(v2, v3, v4, v5);
}

uint64_t sub_100229EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_100229F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_100229F74()
{
  sub_1000152DC();
  sub_100003928();
  if (*(v4 + 84) == v1)
  {

    return sub_100024D10(v0, v1, v3);
  }

  else
  {
    v6 = *(v0 + *(v2 + 20));
    if (v6 >= 2)
    {
      return ((v6 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_10022A01C()
{
  sub_10001FFF8();
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_100005B64();

    sub_10001B350(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

uint64_t sub_10022A0A0()
{
  sub_1000152DC();
  sub_100003928();
  if (*(v4 + 84) != v1)
  {
    return sub_1000039D8(*(v0 + *(v2 + 20)));
  }

  return sub_100024D10(v0, v1, v3);
}

void sub_10022A12C()
{
  sub_10001FFF8();
  sub_100003928();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_100005B64();

    sub_10001B350(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_10022A1CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*a1);
  }

  v7 = type metadata accessor for TimeZone();
  v8 = a1 + *(a3 + 24);

  return sub_100024D10(v8, a2, v7);
}

void *sub_10022A248(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TimeZone();
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10022A338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CB76D0, &unk_100A4B720);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    sub_100003928();
    if (*(v11 + 84) != a2)
    {
      return sub_100020D78(a1 + *(a3 + 24));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_10022A430()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CB76D0, &unk_100A4B720);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_10022C350(&qword_100CA61E0, &unk_100A31050);
    sub_100003928();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  sub_10001B350(v7, v0, v0, v6);
}

uint64_t sub_10022A528()
{
  sub_10000FE4C();
  result = EnvironmentValues.multilineTextAlignment.getter();
  *v0 = result;
  return result;
}

uint64_t sub_10022A580()
{
  sub_10000FE4C();
  result = EnvironmentValues.font.getter();
  *v0 = result;
  return result;
}

uint64_t sub_10022A5AC()
{
  v1 = *(type metadata accessor for WindCategoryTableView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_10022A72C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for LocationComponentHeaderViewModel(0);
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

    sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        sub_10022C350(&qword_100CAD870, &qword_100A3CC30);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[11];
        }

        else
        {
          sub_10022C350(&qword_100CEE148, &unk_100AA5D10);
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[13];
          }

          else
          {
            v10 = sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
            v14 = a4[14];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10022A954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1009F9FA0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10022A9B4()
{
  v0 = sub_10022E824(&qword_100CEE538, &qword_100AA6350);
  v1 = sub_10022E824(&qword_100CEE530, &qword_100AA6348);
  v2 = sub_10022E824(&qword_100CEE540, &qword_100AA6358);
  v3 = sub_10022E824(&qword_100CEE548, &qword_100AA6360);
  type metadata accessor for InsetGroupedListStyle();
  sub_100005DFC();
  sub_100006F64(v4, &qword_100CEE548, &qword_100AA6360, v5);
  sub_100005DB4();
  sub_100015314(v6, v7, v8, v9, v10, v11, v12, v13, v3);
  sub_10001D590();
  sub_100015314(v14, v15, v16, v17, v18, v19, v20, v21, v2);
  sub_10002D5A4();
  sub_100005DE4();
  v37 = sub_100015314(v22, v23, v24, v25, v26, v27, v28, v29, v1);
  return sub_100015314(v37, &opaque type descriptor for <<opaque return type of View.navigationBarTitleDisplayMode(_:)>>, v30, v31, v32, v33, v34, v35, v0);
}

uint64_t sub_10022AAE0()
{
  v0 = sub_100003B38();
  type metadata accessor for LollipopDetailViewModel(v0);
  v1 = sub_100003B2C();

  return sub_100024D10(v1, v2, v3);
}

uint64_t sub_10022AB1C()
{
  v1 = sub_100003B38();
  type metadata accessor for LollipopDetailViewModel(v1);
  v2 = sub_100003B2C();

  return sub_10001B350(v2, v3, v0, v4);
}

uint64_t sub_10022AB5C()
{
  v0 = sub_100003B38();
  type metadata accessor for TitleAndDetailLollipopDetailViewModel(v0);
  v1 = sub_100003B2C();

  return sub_100024D10(v1, v2, v3);
}

uint64_t sub_10022AB98()
{
  v1 = sub_100003B38();
  type metadata accessor for TitleAndDetailLollipopDetailViewModel(v1);
  v2 = sub_100003B2C();

  return sub_10001B350(v2, v3, v0, v4);
}

uint64_t sub_10022ACF4(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for AirQualityComponentViewModel(0);
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
      v14 = a3[10];
    }

    v9 = a1 + v14;
  }

  return sub_100024D10(v9, a2, v8);
}

void sub_10022AE14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for AirQualityComponentViewModel(0);
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
      v14 = a4[10];
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10022AF3C()
{
  v1 = *(sub_10022C350(&qword_100CEE9C8, &unk_100AA6B68) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for DynamicTypeSize();
  sub_1000037E8();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = sub_10022C350(&qword_100CB7090, &unk_100A4C520);
  v5(v2 + *(v6 + 36), v3);

  return swift_deallocObject();
}

uint64_t sub_10022B080()
{

  return swift_deallocObject();
}

uint64_t sub_10022B168()
{

  sub_100006F14((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_10022B1B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
    if (*(*(HourPrecipitationDetailView - 8) + 84) == a2)
    {
      v9 = HourPrecipitationDetailView;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CEED10, &qword_100AA77C8);
      v10 = *(a3 + 28);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_10022B288(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
    if (*(*(HourPrecipitationDetailView - 8) + 84) == a3)
    {
      v9 = HourPrecipitationDetailView;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CEED10, &qword_100AA77C8);
      v10 = *(a4 + 28);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_10022B3AC()
{
  HourPrecipitationDetailInnerView = type metadata accessor for NextHourPrecipitationDetailInnerView(0);
  v47 = *(*(HourPrecipitationDetailInnerView - 8) + 80);
  v3 = (v0 + ((v47 + 16) & ~v47));
  sub_100006F14(v3);
  v4 = v3 + *(HourPrecipitationDetailInnerView + 20);

  HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
  v6 = HourPrecipitationDetailView[7];
  type metadata accessor for NextHourPrecipitationChartViewModel();
  sub_100003D98();
  (*(v7 + 8))(&v4[v6]);
  v8 = &v4[HourPrecipitationDetailView[8]];

  v9 = type metadata accessor for ConditionDetailMapViewModel(0);
  v10 = v9[5];
  type metadata accessor for Location();
  sub_100003D98();
  (*(v11 + 8))(&v8[v10]);
  v12 = &v8[v9[6]];
  v13 = type metadata accessor for WeatherData(0);
  if (!sub_1000057B4(v13))
  {

    v14 = v1[5];
    v15 = type metadata accessor for Locale();
    if (!sub_100024D10(&v12[v14], 1, v15))
    {
      sub_100003B20();
      (*(v16 + 8))(&v12[v14], v15);
    }

    v17 = v1[6];
    type metadata accessor for WeatherDataModel();
    sub_100003D98();
    (*(v18 + 8))(&v12[v17]);
    v19 = &v12[v1[7]];
    v20 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
    if (!sub_100024D10(v19, 1, v20))
    {
      type metadata accessor for Date();
      sub_100003D98();
      v45 = *(v21 + 8);
      v46 = v22;
      v45(v19);
      v23 = *(v20 + 48);
      v24 = type metadata accessor for WeatherDataRelevancy(0);
      if (!sub_100024D10(v19 + v23, 1, v24))
      {
        (v45)(v19 + v23, v46);
      }
    }

    v25 = &v12[v1[8]];
    type metadata accessor for WeatherData.WeatherStatisticsState(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for WeatherStatisticsModel();
      sub_100003D98();
      (*(v27 + 8))(v25);
    }

    else if (!EnumCaseMultiPayload)
    {
    }

    v28 = &v12[v1[9]];
    v29 = type metadata accessor for WeatherDataOverrides(0);
    if (!sub_100024D10(v28, 1, v29))
    {
      v30 = type metadata accessor for Date();
      if (!sub_1000057B4(v30))
      {
        sub_100003B20();
        (*(v31 + 8))(v28, v1);
      }

      v32 = *(v29 + 20);
      if (!sub_100024D10(v28 + v32, 1, v1))
      {
        sub_100003B20();
        (*(v33 + 8))(v28 + v32, v1);
      }
    }
  }

  v34 = v9[8];
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003D98();
  (*(v35 + 8))(&v8[v34]);
  v36 = HourPrecipitationDetailView[9];
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v37 + 8))(&v4[v36]);
  v38 = HourPrecipitationDetailView[10];
  v39 = sub_10022C350(&qword_100CAE8F0, &qword_100A3E420);
  if (!sub_100024D10(&v4[v38], 1, v39))
  {
    sub_100003B20();
    (*(v40 + 8))(&v4[v38], v39);
  }

  v41 = v3 + *(HourPrecipitationDetailInnerView + 28);
  HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartViewModel.Point();
  if (!sub_100024D10(v41, 1, HourPrecipitationChartView))
  {
    sub_100003B20();
    (*(v43 + 8))(v41, HourPrecipitationChartView);
  }

  sub_10022C350(&qword_100CEED10, &qword_100AA77C8);

  return swift_deallocObject();
}

uint64_t sub_10022B8E8(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CEEE30, &qword_100AA7908);
  sub_1000037E8();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10022B950(uint64_t a1)
{
  sub_10022C350(&qword_100CEEE30, &qword_100AA7908);
  sub_100003D98();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10022B9F0()
{

  return swift_deallocObject();
}

__n128 sub_10022BA74(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10022BAB0(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_6:

    return sub_100024D10(v9, a2, v8);
  }

  type metadata accessor for TimeZone();
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_5:
    v9 = a1 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for ConditionUnits();
    sub_100003928();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[9];
    }

    else
    {
      v8 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
      v12 = a3[10];
    }

    goto LABEL_5;
  }

  v14 = *(a1 + a3[7]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_10022BC08(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    type metadata accessor for TimeZone();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      type metadata accessor for ConditionUnits();
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
        v14 = a4[10];
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10022BD5C(void *a1)
{
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  v1 = type metadata accessor for TupleView();
  return swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v1);
}

uint64_t sub_10022BDEC@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherIntentResponse.code.getter();
  *a1 = result;
  return result;
}

double sub_10022BF20@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL sub_10022BF44(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_10022BF9C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10022C350(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_10022C398()
{
  sub_10000C778();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v2 - 8);
  __chkstk_darwin(v6);
  sub_10001BA34();
  v9 = type metadata accessor for _TagTraitWritingModifier();
  sub_1000037C4();
  v11 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_10000C790();
  (*(v8 + 16))(v1, v7, v3);
  sub_10022E7A8(v1, v5, v3, v0);
  View.modifier<A>(_:)();
  (*(v11 + 8))(v0, v9);
  sub_10000536C();
}

uint64_t variable initialization expression of WeatherAsyncImage.url()
{
  sub_10000C76C();
  type metadata accessor for URL();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t variable initialization expression of SessionEventsAndDataCoordinator.lock()
{
  v0 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_10000C790();
  sub_10022C350(&qword_100CA2D40, &unk_100A41F80);
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static UnfairLock.Options.dataSynchronization.getter();
  sub_10022E90C(&qword_100CA2D48, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_10022C350(&qword_100CA2D50, &qword_100A2C490);
  sub_1000037F8();
  v3 = sub_100006F64(v1, &qword_100CA2D50, &qword_100A2C490, v2);
  sub_10003B8C0(v3);
  type metadata accessor for UnfairLock();
  swift_allocObject();
  sub_100037034();
  return UnfairLock.init(options:)();
}

uint64_t variable initialization expression of SessionEventsAndDataCoordinator.startMethod@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StartMethod.unknown(_:);
  type metadata accessor for StartMethod();
  sub_1000037E8();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_10022C788(uint64_t a1)
{
  type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000037D8();
  (*(v5 + 16))(v4 - v3, a1);
  return EnvironmentValues.dynamicTypeSize.setter();
}

void variable initialization expression of OpenWeatherAirQualityIntent._location()
{
  sub_10000C778();
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100036C4C(v1);
  v2 = sub_10022C350(&qword_100CA2D68, &unk_100A2C4D0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100028068(v4, v41);
  __chkstk_darwin(v5);
  sub_10002FD24(v6, v7, v8, v9, v10, v11, v12, v13, v42);
  v14 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100037908();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10001BA34();
  v19 = type metadata accessor for Locale();
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000037D8();
  v21 = sub_10001621C();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_100011330();
  v23 = type metadata accessor for LocalizedStringResource();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_1000200F8();
  v25 = sub_10022C350(&qword_100CA2D78, &qword_100A2C4E0);
  sub_100069338(v25);
  static Locale.current.getter();
  v26 = *(v17 + 104);
  v27 = sub_10004E2F8();
  v26(v27);
  v28 = sub_100005354();
  sub_100043938(v28, v29, v30, v31, v32, v33);
  sub_1000B9830();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = sub_10004E2F8();
  v26(v34);
  sub_100005354();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v35 = sub_10002400C();
  sub_10001B350(v35, v36, v37, v23);
  static LocationSearchEntity.makeCurrentLocation()();
  v38 = sub_100049540();
  sub_100016638(v38);
  v39 = sub_100031B9C();
  v40(v39);
  sub_10022C350(&qword_100CA2D80, &qword_100A2C4E8);
  sub_1000226EC(&qword_100CA2D88);
  sub_10015E074();
  sub_100071BFC();
  sub_1000745B8();
  sub_10000536C();
}

void variable initialization expression of OpenWeatherAirQualityIntent._position()
{
  sub_10000C778();
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  v39 = v3;
  v40 = v2;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v38 = v5 - v4;
  v6 = sub_10022C350(&qword_100CA2D68, &unk_100A2C4D0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  v37 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v36 = v35 - v10;
  v11 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v13 = sub_100037908();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  sub_100011330();
  v17 = type metadata accessor for Locale();
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_1000037D8();
  v19 = sub_10001621C();
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_10001BA34();
  v21 = type metadata accessor for LocalizedStringResource();
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000037D8();
  v35[1] = sub_10022C350(&qword_100CA2D98, &unk_100A2C4F0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v24 = *(v15 + 104);
  v24(v0, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_10000E700();
  sub_100043938(v25, v26, v27, v1, v0, v28);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24(v0, v23, v13);
  sub_10000E700();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v29 = sub_10002400C();
  sub_10001B350(v29, v30, v31, v21);
  v41 = 0;
  v32 = type metadata accessor for IntentDialog();
  sub_10001B350(v36, 1, 1, v32);
  sub_10001B350(v37, 1, 1, v32);
  v33 = sub_1000866C4();
  v34(v33);
  sub_10022E86C();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10000536C();
}

void variable initialization expression of OpenSunriseSunsetIntent._location()
{
  sub_10000C778();
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100036C4C(v1);
  v2 = sub_10022C350(&qword_100CA2D68, &unk_100A2C4D0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100028068(v4, v41);
  __chkstk_darwin(v5);
  sub_10002FD24(v6, v7, v8, v9, v10, v11, v12, v13, v42);
  v14 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100037908();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10001BA34();
  v19 = type metadata accessor for Locale();
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000037D8();
  v21 = sub_10001621C();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_100011330();
  v23 = type metadata accessor for LocalizedStringResource();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_1000200F8();
  v25 = sub_10022C350(&qword_100CA2D78, &qword_100A2C4E0);
  sub_100069338(v25);
  static Locale.current.getter();
  v26 = *(v17 + 104);
  v27 = sub_10004E2F8();
  v26(v27);
  v28 = sub_100005354();
  sub_100043938(v28, v29, v30, v31, v32, v33);
  sub_1000B9830();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = sub_10004E2F8();
  v26(v34);
  sub_100005354();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v35 = sub_10002400C();
  sub_10001B350(v35, v36, v37, v23);
  static LocationSearchEntity.makeCurrentLocation()();
  v38 = sub_100049540();
  sub_100016638(v38);
  v39 = sub_100031B9C();
  v40(v39);
  sub_10022C350(&qword_100CA2D80, &qword_100A2C4E8);
  sub_1000226EC(&qword_100CA2D88);
  sub_10015E074();
  sub_100071BFC();
  sub_1000745B8();
  sub_10000536C();
}

uint64_t variable initialization expression of LocaleMonitor.lastLocale()
{
  sub_10000C76C();
  type metadata accessor for Locale();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t variable initialization expression of LocaleMonitor.lastTemperatureUnit()
{
  sub_10000C76C();
  type metadata accessor for UnitConfiguration.Temperature();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t variable initialization expression of LocationSearchEntity._name()
{
  v0 = type metadata accessor for LocalizedStringResource();
  v1 = sub_100003810(v0);
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10000C790();
  sub_10022C350(&qword_100CA2DA8, &unk_100A6BEF0);
  LocalizedStringResource.init(stringLiteral:)();
  return EntityProperty<>.init(title:)();
}

uint64_t variable initialization expression of LocationSearchEntity._placemark()
{
  v0 = type metadata accessor for LocalizedStringResource();
  v1 = sub_100003810(v0);
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10000C790();
  sub_10022C350(&qword_100CA2DB0, &unk_100A2C500);
  LocalizedStringResource.init(stringLiteral:)();
  return EntityProperty<>.init(title:)();
}

uint64_t sub_10022D41C(uint64_t *a1, uint64_t *a2)
{
  sub_10022C350(a1, a2);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  return AppDependency.__allocating_init(key:manager:)();
}

uint64_t variable initialization expression of LocationSearchEntityQuery.locationSearcher()
{
  type metadata accessor for LocationSearcher();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of LocalSearchRequestManager.geocodeRequestDeduper()
{
  type metadata accessor for PromiseDeduperFlags();
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_10000C790();
  sub_10022E90C(&qword_100CA2E08, &type metadata accessor for PromiseDeduperFlags, &protocol conformance descriptor for PromiseDeduperFlags);
  sub_10022C350(&qword_100CA2E10, &qword_100A82DF0);
  sub_1000037F8();
  v3 = sub_100006F64(v1, &qword_100CA2E10, &qword_100A82DF0, v2);
  sub_10003B8C0(v3);
  sub_10022C350(&qword_100CA2E20, &unk_100A2C550);
  swift_allocObject();
  sub_100037034();
  return PromiseDeduper.init(options:)();
}

double variable initialization expression of LocalSearchRequestManager.$__lazy_storage_$_store@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_100A2C400;
  return result;
}

uint64_t variable initialization expression of SettingsMonitor.lastDistanceConfiguration()
{
  sub_10000C76C();
  type metadata accessor for UnitConfiguration.Distance();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t variable initialization expression of SettingsMonitor.lastWindSpeedConfiguration()
{
  sub_10000C76C();
  type metadata accessor for UnitConfiguration.WindSpeed();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t variable initialization expression of SettingsMonitor.lastPressureConfiguration()
{
  sub_10000C76C();
  type metadata accessor for UnitConfiguration.Pressure();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t variable initialization expression of SettingsMonitor.lastPrecipitationConfiguration()
{
  sub_10000C76C();
  type metadata accessor for UnitConfiguration.Precipitation();
  v0 = sub_100007E1C();

  return sub_10001B350(v0, v1, v2, v3);
}

void variable initialization expression of OpenMoonIntent._location()
{
  sub_10000C778();
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100036C4C(v1);
  v2 = sub_10022C350(&qword_100CA2D68, &unk_100A2C4D0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100028068(v4, v41);
  __chkstk_darwin(v5);
  sub_10002FD24(v6, v7, v8, v9, v10, v11, v12, v13, v42);
  v14 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100037908();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10001BA34();
  v19 = type metadata accessor for Locale();
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000037D8();
  v21 = sub_10001621C();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_100011330();
  v23 = type metadata accessor for LocalizedStringResource();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_1000200F8();
  v25 = sub_10022C350(&qword_100CA2D78, &qword_100A2C4E0);
  sub_100069338(v25);
  static Locale.current.getter();
  v26 = *(v17 + 104);
  v27 = sub_10004E2F8();
  v26(v27);
  v28 = sub_100005354();
  sub_100043938(v28, v29, v30, v31, v32, v33);
  sub_1000B9830();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = sub_10004E2F8();
  v26(v34);
  sub_100005354();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v35 = sub_10002400C();
  sub_10001B350(v35, v36, v37, v23);
  static LocationSearchEntity.makeCurrentLocation()();
  v38 = sub_100049540();
  sub_100016638(v38);
  v39 = sub_100031B9C();
  v40(v39);
  sub_10022C350(&qword_100CA2D80, &qword_100A2C4E8);
  sub_1000226EC(&qword_100CA2D88);
  sub_10015E074();
  sub_100071BFC();
  sub_1000745B8();
  sub_10000536C();
}

void variable initialization expression of OpenMoonIntent._date()
{
  sub_10000C778();
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  v38 = v2;
  v39 = v1;
  __chkstk_darwin(v1);
  sub_1000037D8();
  v37 = v4 - v3;
  sub_10022C350(&qword_100CA2E28, &unk_100A9DAF0);
  sub_1000037C4();
  v35 = v6;
  v36 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v34 = v32 - v8;
  v9 = sub_10022C350(&qword_100CA2D68, &unk_100A2C4D0);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v33 = v32 - v11;
  v12 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000200F8();
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for Locale();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_10000C790();
  v23 = type metadata accessor for String.LocalizationValue();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  v25 = type metadata accessor for LocalizedStringResource();
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_10001BA34();
  v32[1] = sub_10022C350(&qword_100CA2E30, &qword_100A2C560);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v28 = *(v16 + 104);
  v28(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  sub_10000E700();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28(v20, v27, v14);
  sub_10000E700();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v0, 0, 1, v25);
  v29 = type metadata accessor for IntentDialog();
  sub_10001B350(v33, 1, 1, v29);
  (*(v35 + 104))(v34, enum case for IntentParameter.DateKind.dateTime<A>(_:), v36);
  v30 = sub_1000866C4();
  v31(v30);
  IntentParameter<>.init(title:description:kind:requestValueDialog:inputConnectionBehavior:)();
  sub_10000536C();
}

uint64_t sub_10022DE08@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_10022C350(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

void variable initialization expression of NetworkConnectivityMonitor.setupMonitorQueue()
{
  sub_10000C778();
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000037C4();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = type metadata accessor for DispatchQoS();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_10022E90C(&qword_100CA2E50, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10022C350(&qword_100CA2E58, &qword_100A2C5A0);
  sub_1000037F8();
  sub_100006F64(v9, &qword_100CA2E58, &qword_100A2C5A0, v10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10000536C();
}

void sub_10022E0F8()
{
  sub_100020558();
  LocationSearchEntityFromStringResolver.init()();
  *v0 = v1;
}

uint64_t sub_10022E120@<X0>(uint64_t *a1@<X8>)
{
  result = _s7Weather31SessionEventsAndDataCoordinatorC25lastPushedTemperatureUnit33_8ECD549B82C3B8992579EA0CB842041CLLSo06NSUnitI0CSgvpfi_0();
  *a1 = result;
  return result;
}

uint64_t sub_10022E148@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10022BEDC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10022E178@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10022BF70(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10022E1A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10022BEE4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10022E1E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10022F29C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10022E214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10022F2F0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10022E260@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10022BEFC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10022E2F4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10022F334(a2);
  *a1 = result;
  return result;
}

uint64_t sub_10022E328@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10022E35C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void *sub_10022E3A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10022E3B4(uint64_t a1)
{
  v2 = sub_10022E90C(&qword_100CA3030, type metadata accessor for LaunchOptionsKey, byte_100A2CBD8);
  v3 = sub_10022E90C(&qword_100CA3038, type metadata accessor for LaunchOptionsKey, byte_100A2CB2C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10022E470(uint64_t a1)
{
  v2 = sub_10022E90C(&qword_100CA30E0, type metadata accessor for Key, asc_100A2D22C);
  v3 = sub_10022E90C(&qword_100CA30E8, type metadata accessor for Key, byte_100A2D180);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10022E52C(uint64_t a1)
{
  v2 = sub_10022E90C(&qword_100CA3040, type metadata accessor for OpenExternalURLOptionsKey, aM_29);
  v3 = sub_10022E90C(&qword_100CA3048, type metadata accessor for OpenExternalURLOptionsKey, byte_100A2C9A0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10022E5E8(uint64_t a1)
{
  v2 = sub_10022E90C(&qword_100CA3100, type metadata accessor for AttributeName, byte_100A2D270);
  v3 = sub_10022E90C(&qword_100CA3108, type metadata accessor for AttributeName, byte_100A2CF4C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10022E6A4@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10022E6EC(uint64_t a1)
{
  v2 = sub_10022E90C(&qword_100CA30F0, type metadata accessor for TraitKey, byte_100A2D2B4);
  v3 = sub_10022E90C(&qword_100CA30F8, type metadata accessor for TraitKey, byte_100A2D060);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10022E7A8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for _TagTraitWritingModifier();
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_10022E824(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10022E86C()
{
  result = qword_100CA2DA0;
  if (!qword_100CA2DA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AirQualityPosition, &type metadata for AirQualityPosition, v0, v1);
    atomic_store(result, &qword_100CA2DA0);
  }

  return result;
}

unint64_t sub_10022E8C0()
{
  result = qword_100CA2DC8;
  if (!qword_100CA2DC8)
  {
    v3 = type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable(&protocol conformance descriptor for _TaskModifier2, v3, v0, v1);
    atomic_store(result, &qword_100CA2DC8);
  }

  return result;
}

uint64_t sub_10022E90C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10022E990(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10022E9E4(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10022EA58(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10022EB10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022EB30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_10022ED30(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10022EDB0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hashValue.getter();
  sub_100037034();

  return v1;
}

uint64_t sub_10022EDE4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10022F268(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String._bridgeToObjectiveC()();
  sub_100037034();

  return v1;
}

uint64_t sub_10022F29C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 & a1;
  if (UIRectCorner.isEmpty.getter())
  {
    return 0;
  }

  *v1 = v3 & ~a1;
  return v4;
}

uint64_t sub_10022F2F0(uint64_t a1)
{
  v2 = *v1 & a1;
  *v1 |= a1;
  if (UIRectCorner.isEmpty.getter())
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10022F334(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

unint64_t sub_10022F3EC(unsigned int *a1)
{
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100005384();
  (*(v5 + 104))(v1, *a1, ParameterKey);
  WeatherQueryParameterKey.rawValue.getter();
  (*(v5 + 8))(v1, ParameterKey);
  v7 = URLHandlerMatch.Values.subscript.getter();
  v9 = v8;

  if (v9)
  {
    result = v7;
  }

  else
  {
    result = 48;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE100000000000000;
  }

  v12 = HIBYTE(v11) & 0xF;
  v13 = result & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v14 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    return 0;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    v16 = sub_10022FBE0(result, v11, 10);
    v32 = v33;
    goto LABEL_76;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    if (result == 43)
    {
      if (v12)
      {
        if (v12 != 1)
        {
          sub_10001915C();
          while (1)
          {
            sub_10001BA4C();
            if (!v18 & v17)
            {
              break;
            }

            sub_10001E598();
            if (!v18)
            {
              break;
            }

            v16 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            sub_100007E48();
            if (v18)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }

      goto LABEL_83;
    }

    if (result != 45)
    {
      if (v12)
      {
        while (1)
        {
          sub_10001BA4C();
          if (!v18 & v17)
          {
            break;
          }

          sub_10001E598();
          if (!v18)
          {
            break;
          }

          v16 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          sub_100007E48();
          if (v18)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_74;
    }

    if (v12)
    {
      if (v12 != 1)
      {
        sub_10001915C();
        while (1)
        {
          sub_10001BA4C();
          if (!v18 & v17)
          {
            break;
          }

          sub_10001E598();
          if (!v18)
          {
            break;
          }

          v16 = v23 - v22;
          if (__OFSUB__(v23, v22))
          {
            break;
          }

          sub_100007E48();
          if (v18)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_74;
    }
  }

  else
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v15 = *result;
    if (v15 == 43)
    {
      if (v13 >= 1)
      {
        if (v13 != 1)
        {
          v16 = 0;
          if (result)
          {
            while (1)
            {
              sub_10001BA4C();
              if (!v18 & v17)
              {
                goto LABEL_74;
              }

              sub_10001E598();
              if (!v18)
              {
                goto LABEL_74;
              }

              v16 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_74;
              }

              sub_100007E48();
              if (v18)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_65;
        }

        goto LABEL_74;
      }

      goto LABEL_82;
    }

    if (v15 != 45)
    {
      if (v13)
      {
        v16 = 0;
        if (result)
        {
          while (1)
          {
            v28 = *result - 48;
            if (v28 > 9)
            {
              goto LABEL_74;
            }

            v29 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_74;
            }

            v16 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_74;
            }

            ++result;
            if (!--v13)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_74:
      v16 = 0;
      v21 = 1;
      goto LABEL_75;
    }

    if (v13 >= 1)
    {
      if (v13 != 1)
      {
        v16 = 0;
        if (result)
        {
          while (1)
          {
            sub_10001BA4C();
            if (!v18 & v17)
            {
              goto LABEL_74;
            }

            sub_10001E598();
            if (!v18)
            {
              goto LABEL_74;
            }

            v16 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              goto LABEL_74;
            }

            sub_100007E48();
            if (v18)
            {
              goto LABEL_75;
            }
          }
        }

LABEL_65:
        v21 = 0;
LABEL_75:
        v32 = v21;
LABEL_76:

        return (v16 > 0) & ~v32;
      }

      goto LABEL_74;
    }

    __break(1u);
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_10022F730()
{
  v1 = v0;
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v30[0] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v11 = __chkstk_darwin(v10);
  v13 = v30 - v12;
  v14 = *(v4 + 104);
  v14(v30 - v12, enum case for WeatherQueryParameterKey.lat(_:), ParameterKey, v11);
  WeatherQueryParameterKey.rawValue.getter();
  v15 = *(v4 + 8);
  v15(v13, ParameterKey);
  v30[1] = v1;
  v16 = URLHandlerMatch.Values.subscript.getter();
  v18 = v17;

  if (!v18)
  {
    return 0;
  }

  v19 = sub_10022F9A0(v16, v18);
  if (v20)
  {
    return 0;
  }

  v21 = v19;
  (v14)(v9, enum case for WeatherQueryParameterKey.long(_:), ParameterKey);
  WeatherQueryParameterKey.rawValue.getter();
  v22 = sub_100003834();
  (v15)(v22);
  v23 = URLHandlerMatch.Values.subscript.getter();
  v25 = v24;

  if (!v25)
  {
    (v14)(v30[0], enum case for WeatherQueryParameterKey.lng(_:), ParameterKey);
    WeatherQueryParameterKey.rawValue.getter();
    v26 = sub_100003834();
    (v15)(v26);
    v23 = URLHandlerMatch.Values.subscript.getter();
    v25 = v27;

    if (!v25)
    {
      return 0;
    }
  }

  sub_10022F9A0(v23, v25);
  if (v28)
  {
    return 0;
  }

  return v21;
}

uint64_t sub_10022F9A0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_100230640(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022FA00()
{
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100005384();
  (*(v3 + 104))(v0, enum case for WeatherQueryParameterKey.city(_:), ParameterKey);
  WeatherQueryParameterKey.rawValue.getter();
  (*(v3 + 8))(v0, ParameterKey);
  v5 = URLHandlerMatch.Values.subscript.getter();
  v7 = v6;

  if (v7)
  {
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {

      if (qword_100CA2758 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000703C(v9, qword_100D90C60);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
      }

      return 0;
    }
  }

  return v5;
}

unsigned __int8 *sub_10022FBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100230168(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100230168(uint64_t a1, unint64_t a2)
{
  v2 = sub_1002301D4(sub_1002301D0, 0, a1, a2);
  v6 = sub_100230208(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100230208(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10007996C(v9, 0), v12 = sub_100230368(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

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
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100230368(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_100230578(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
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
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_100230578(v12, a6, a7);
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

    result = String.UTF8View._foreignIndex(after:)();
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

uint64_t sub_100230578(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_100014054(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_100014054(v3);
    return v4 | 8;
  }
}

_BYTE *sub_1002305D4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_100230640(uint64_t a1, uint64_t a2, uint64_t a3)
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
    _StringGuts._slowWithCString<A>(_:)();
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

uint64_t sub_100230754(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);

  return static LocationOfInterestType.== infix(_:_:)();
}

uint64_t sub_1002307D0(uint64_t a1)
{
  String.hash(into:)();
  type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  type metadata accessor for LocationOfInterestType();
  sub_10001BA5C();
  sub_1002357D8(v1, v2, &protocol conformance descriptor for LocationOfInterestType);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100230850()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  type metadata accessor for LocationOfInterestType();
  sub_1002357D8(&qword_100CA3590, &type metadata accessor for LocationOfInterestType, &protocol conformance descriptor for LocationOfInterestType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100230908(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for LocationOfInterestType();
  sub_10001BA5C();
  sub_1002357D8(v1, v2, &protocol conformance descriptor for LocationOfInterestType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_10023099C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C42900, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002309E8(char a1)
{
  result = 0x61647055656D6F68;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      result = 0x616470556B726F77;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD00000000000002ALL;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_100230B18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10023099C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100230B48@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1002309E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100230B74()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v58 = v2;
  v59 = v4;
  v60 = v6;
  v61 = v5;
  v7 = v4;
  v9 = v8;
  v55 = v8;
  v10 = sub_10022C350(&qword_100CA34C8, &qword_100A2D518);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  sub_10022C350(&qword_100CA34D0, &qword_100A2D520);
  sub_1000037C4();
  v56 = v14;
  v57 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  type metadata accessor for WeatherMenuTipMutableAttributes();
  sub_100007E8C();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v0 + 16) = v19;
  *(v0 + 24) = 67109120;
  sub_10022C350(&qword_100CA34D8, &qword_100A2D528);
  swift_allocObject();
  *(v0 + 32) = PassthroughSubject.init()();
  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v20 = OBJC_IVAR____TtC7Weather18ListViewTipManager_tipStatus;
  type metadata accessor for Tips.Status();
  sub_100235718();
  *(v0 + v20) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cancellables) = 0;
  v21 = v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cachedLocationOfInterestState;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = -1;
  sub_100035B30(v7, v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_notificationsOptInStatusFactory);
  sub_100035B30(v3, v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_weatherLocationCoalescenceManager);
  v22 = (v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_dispatcher);
  v23 = v61;
  *v22 = v9;
  v22[1] = v23;
  *&v62[0] = *(v0 + 32);
  v24 = objc_opt_self();

  v25 = [v24 mainRunLoop];
  v63 = v25;
  type metadata accessor for NSRunLoop.SchedulerOptions();
  v26 = sub_1000313F0();
  sub_10001B350(v26, v27, v28, v29);
  sub_1000405D8();
  sub_100006F64(&qword_100CA34F0, &qword_100CA34D8, &qword_100A2D528, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_1002357D8(&qword_100CA34F8, sub_1000405D8, &protocol conformance descriptor for NSRunLoop);
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000180EC(v13, &qword_100CA34C8, &qword_100A2D518);

  sub_100007E8C();
  swift_allocObject();
  swift_weakInit();
  sub_100006F64(&qword_100CA3500, &qword_100CA34D0, &qword_100A2D520, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v30 = v56;
  v31 = Publisher<>.sink(receiveValue:)();

  (*(v57 + 8))(v18, v30);
  *(v1 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cancellables) = v31;

  sub_10000E700();
  sub_1002336E8(v32, v33, v34);
  sub_10000E700();
  sub_1002336E8(v35, v36, v37);
  sub_10000E700();
  sub_1002336E8(v38, v39, v40);
  sub_10000E700();
  sub_1002336E8(v41, v42, v43);
  sub_10000E700();
  sub_1002336E8(v44, v45, v46);
  sub_10000E700();
  sub_1002336E8(v47, v48, v49);
  v50 = swift_allocObject();
  v51 = v61;
  *(v50 + 16) = v55;
  *(v50 + 24) = v51;

  sub_1002336E8(7, sub_100235774, v50);

  v52 = v60;
  sub_100035B30(v60, v62);
  v53 = swift_allocObject();
  sub_100013188(v62, v53 + 16);
  sub_1002336E8(5, sub_10023577C, v53);

  sub_100006F14(v58);
  sub_100006F14(v52);
  sub_100006F14(v59);
  sub_10000536C();
}

uint64_t sub_10023106C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1002312FC();
  }

  return result;
}

uint64_t sub_1002310CC(uint64_t (*a1)(uint64_t))
{
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  type metadata accessor for MainAction(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100A2C3F0;
  type metadata accessor for ListViewAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_100035AD0(v7, v4, &unk_100CD81B0, &unk_100A3B000);
  v5 = v2;
  v6 = 0;
  sub_10004F1B0(v4, a1);
  sub_1000180EC(v4, &qword_100CA3510, &unk_100A2D540);
  return sub_1000180EC(v7, &unk_100CD81B0, &unk_100A3B000);
}

uint64_t sub_1002312B0(unsigned int a1)
{
  v2 = (a1 >> 8) & 1;
  v3 = HIWORD(a1);
  if ((a1 & 0xFE) == 2)
  {
    LOBYTE(v2) = 0;
    LOBYTE(v3) = 0;
  }

  v1[24] = ((a1 & 0xFE) != 2) & (a1 ^ 1);
  v1[25] = v3;
  v1[26] = v2;
  sub_10000E700();
  return sub_1002336E8(v4, v5, v6);
}

void sub_1002312FC()
{
  sub_10000C778();
  v1 = v0;
  sub_1000038D8();
  v224 = type metadata accessor for LocationOfInterestType();
  sub_1000037C4();
  v225 = v2;
  __chkstk_darwin(v3);
  sub_100003848();
  v236 = v4;
  sub_10000386C();
  __chkstk_darwin(v5);
  sub_10000E70C();
  v239 = v6;
  v7 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v221 - v9;
  v243 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v237 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v242 = (v14 - v13);
  sub_1000038CC();
  v241 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v228 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v240 = v18 - v17;
  v19 = sub_1000038CC();
  v234 = type metadata accessor for LocationsState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003848();
  v227 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  sub_10000E70C();
  v235 = v23;
  sub_1000038CC();
  v24 = type metadata accessor for Tips.InvalidationReason();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = v29 - v28;
  v31 = *(v0 + 64);
  sub_100234F84();
  if (v32)
  {
    v33 = *(v0 + 25);
    v34 = *(v0 + 26);
    LOBYTE(v245) = *(v0 + 24);
    BYTE1(v245) = v33;
    BYTE2(v245) = v34;
    (*(v26 + 104))(v30, enum case for Tips.InvalidationReason.actionPerformed(_:), v24);
    sub_100235784();
    Tip.invalidate(reason:)();
    (*(v26 + 8))(v30, v24);
    if (qword_100CA27B0 != -1)
    {
      sub_10000F960(&qword_100CA27B0);
    }

    v35 = type metadata accessor for Logger();
    sub_1000212C4(v35, qword_100D90D68);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = sub_10000389C();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Invalidate notification tip due to invalidation before TipKit migration or resubscription tip shown", v38, 2u);
      sub_100003884(v38);
    }
  }

  else
  {
    sub_1002346E8();
    v40 = v39;
    if (qword_100CA1E70 != -1)
    {
      swift_once();
    }

    v41 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
    sub_10000703C(v41, qword_100D8F350);
    sub_1000745EC(v40 & 1);
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
  }

  v42 = sub_100234B10(v31);
  if (qword_100CA1F98 != -1)
  {
    swift_once();
  }

  v238 = v10;
  v43 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_10000703C(v43, qword_100D8FC10);
  sub_1000745EC(v42 & 1);
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v44 = sub_100234D3C(v31);
  if (qword_100CA21A8 != -1)
  {
    swift_once();
  }

  sub_10000703C(v43, qword_100D90310);
  sub_1000745EC(v44 & 1);
  v229 = v43;
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v45 = v31 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  sub_10004E308();
  sub_100094F38(v45, v235);
  v46 = *(v234 + 48);
  v226 = v45;
  v47 = v45 + v46;
  v48 = *v47;
  v49 = *(v47 + 8);
  LODWORD(v50) = *(v47 + 16);
  v51 = *(v1 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cachedLocationOfInterestState + 16);
  v233 = (v1 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cachedLocationOfInterestState);
  if (v51 == 255)
  {
    v81 = sub_10000385C();
    sub_1000DC3D4(v81, v82, v83);
    v84 = sub_10000385C();
    sub_1000DC3D4(v84, v85, v86);
LABEL_18:
    if (qword_100CA27B0 != -1)
    {
      sub_10000F960(&qword_100CA27B0);
    }

    v87 = type metadata accessor for Logger();
    v88 = sub_10000703C(v87, qword_100D90D68);
    v89 = sub_10000385C();
    sub_1000DC3D4(v89, v90, v91);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    v94 = sub_10000385C();
    sub_100187350(v94, v95, v96);

    v97 = os_log_type_enabled(v92, v93);
    v231 = v49;
    v232 = v48;
    v230 = v88;
    if (v97)
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v223 = v99;
      *v98 = 141558787;
      *(v98 + 4) = 1752392040;
      *(v98 + 12) = 2081;
      v244 = v99;
      v245 = v48;
      v246 = v49;
      v247 = v50;
      sub_10016D534();
      v222 = v93;
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = sub_100078694(v100, v101, &v244);

      *(v98 + 14) = v102;
      *(v98 + 22) = 2160;
      *(v98 + 24) = 1752392040;
      *(v98 + 32) = 2081;
      v103 = sub_100018254();
      sub_100236000(v103, v104, v105);
      v106 = sub_100018254();
      v109 = sub_1002784C0(v106, v107, v108);
      v111 = v110;
      v112 = sub_100018254();
      sub_100235FEC(v112, v113, v114);
      v115 = sub_100078694(v109, v111, &v244);

      *(v98 + 34) = v115;
      _os_log_impl(&_mh_execute_header, v92, v222, "ListViewTipManager detected location of interest state change new=%{private,mask.hash}s, old=%{private,mask.hash}s", v98, 0x2Au);
      v116 = v223;
      swift_arrayDestroy();
      sub_100003884(v116);
      v88 = v230;
      sub_100003884(v98);
    }

    if (v50 < 2)
    {
      sub_100187350(v232, v231, v50);
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = sub_10000389C();
        *v119 = 0;
        _os_log_impl(&_mh_execute_header, v117, v118, "ListViewTipManager location of interest state is new or saved", v119, 2u);
        sub_100003884(v119);
      }

      LODWORD(v227) = v50;

      v120 = *(v235 + *(v234 + 24));
      v121 = *(v120 + 16);
      if (v121)
      {
        v239 = *(v228 + 16);
        v122 = v120 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
        v123 = *(v228 + 72);
        v124 = (v228 + 8);
        v50 = v238;
        v92 = v237 + 4;
        v125 = _swiftEmptyArrayStorage;
        do
        {
          v126 = v240;
          v127 = v241;
          v239(v240, v122, v241);
          LocationModel.locationOfInterest.getter();
          (*v124)(v126, v127);
          v128 = v243;
          sub_1000038B4(v50, 1, v243);
          if (v129)
          {
            sub_1000180EC(v50, &qword_100CA3588, &unk_100A4F350);
          }

          else
          {
            isa = v92->isa;
            (v92->isa)(v242, v50, v128);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100032BC8();
              v125 = v135;
            }

            v132 = v125[2];
            if (v132 >= v125[3] >> 1)
            {
              sub_100032BC8();
              v125 = v136;
            }

            v125[2] = v132 + 1;
            sub_10000C7B8();
            isa(v125 + v133 + *(v134 + 72) * v132, v242, v243);
            v50 = v238;
          }

          v122 += v123;
          --v121;
        }

        while (v121);
      }

      else
      {
        v125 = _swiftEmptyArrayStorage;
      }

      v174 = v125[2];

      if (!v174)
      {
        v79 = v231;
        v78 = v232;
        v80 = v227;
        goto LABEL_57;
      }

      v175 = Logger.logObject.getter();
      v176 = static os_log_type_t.default.getter();
      sub_10000C79C(v176);
      sub_100037928();
      if (v177)
      {
        v178 = sub_10000389C();
        sub_100025054(v178);
        sub_1000133FC(&_mh_execute_header, v179, v180, "ListViewTipManager set HomeAndWorkAddedTip.displayTip = true");
        sub_100007E54();
      }

      if (qword_100CA27D0 != -1)
      {
        swift_once();
      }

      sub_1000212C4(v229, qword_100D90DC8);
      sub_1000745EC(1);
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
      sub_10001E5AC();
      v182 = v92;
      goto LABEL_65;
    }

    v125 = v231;
    if (v50 != 2)
    {
      v164 = v88;
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.default.getter();
      if (!sub_10000C79C(v166))
      {

        sub_10001E5AC();
        v182 = v235;
LABEL_65:
        sub_100031148(v182, v181);
        v164 = v232;
LABEL_79:
        v209 = v233;
        v210 = *v233;
        v211 = v233[1];
        *v233 = v164;
        v209[1] = v125;
        v212 = *(v209 + 16);
        *(v209 + 16) = v50;
        sub_100235FEC(v210, v211, v212);
        goto LABEL_80;
      }

      v168 = sub_10000389C();
      sub_100025054(v168);
      sub_1000133FC(&_mh_execute_header, v169, v170, "ListViewTipManager location of interest state is none");
      sub_100007E54();
      v171 = sub_100069364();
      v173 = 3;
      goto LABEL_69;
    }

    sub_10004E308();
    v137 = v227;
    sub_100094F38(v226, v227);
    sub_1002323BC();
    v139 = v138;
    sub_10001E5AC();
    sub_100031148(v137, v140);
    if (!*(v139 + 16))
    {

      v164 = v88;
      v165 = Logger.logObject.getter();
      v195 = static os_log_type_t.default.getter();
      if (sub_10000C79C(v195))
      {
        v196 = sub_10000389C();
        sub_100025054(v196);
        sub_1000133FC(&_mh_execute_header, v197, v198, "ListViewTipManager changes is empty");
        sub_100007E54();
      }

      v171 = sub_100069364();
      v173 = 2;
LABEL_69:
      sub_100187350(v171, v172, v173);

      sub_10001E5AC();
      v200 = v235;
LABEL_78:
      sub_100031148(v200, v199);
      goto LABEL_79;
    }

    LODWORD(v227) = 2;
    sub_10022C350(&qword_100CA35A8, &unk_100A2D5A0);
    v141 = v225;
    v142 = *(v225 + 72);
    v143 = (*(v225 + 80) + 32) & ~*(v225 + 80);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_100A2D320;
    v238 = v144;
    v146 = *(v141 + 104);
    v145 = v144 + v143;
    LODWORD(v228) = enum case for LocationOfInterestType.home(_:);
    v147 = v224;
    v146(v145);
    v243 = v142;
    LODWORD(v223) = enum case for LocationOfInterestType.work(_:);
    v148 = v147;
    v237 = (v141 + 104);
    v234 = v146;
    v146(v145 + v142);
    v149 = *(v141 + 16);
    v241 = v139 + 56;
    v242 = v149;
    v150 = (v141 + 8);

    v151 = 0;
    v152 = v139;
    v226 = v145;
LABEL_41:
    if (v151 == 2)
    {

      swift_setDeallocating();
      sub_1005C1D60();

      v164 = v230;
      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.default.getter();
      if (sub_10000C79C(v214))
      {
        v215 = sub_10000389C();
        sub_100025054(v215);
        sub_1000133FC(&_mh_execute_header, v216, v217, "ListViewTipManager set HomeAndWorkUpdatedTip.displayTip = true");
        sub_100007E54();
      }

      v218 = v235;
      LOBYTE(v50) = v227;
      v125 = v231;
      if (qword_100CA2370 != -1)
      {
        swift_once();
      }

      sub_1000212C4(v229, qword_100D905A0);
      sub_1000745EC(1);
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
      v219 = sub_100069364();
      sub_100187350(v219, v220, 2u);
      sub_10001E5AC();
      v200 = v218;
      goto LABEL_78;
    }

    v240 = v151;
    v242(v239, v145 + v151 * v243, v147);
    if (*(v152 + 16))
    {
      ++v240;
      sub_10001BA5C();
      sub_1002357D8(&qword_100CA3590, v153, &protocol conformance descriptor for LocationOfInterestType);
      v154 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v155 = ~(-1 << *(v152 + 32));
      while (1)
      {
        v156 = v154 & v155;
        if (((*(v241 + (((v154 & v155) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v154 & v155)) & 1) == 0)
        {
          break;
        }

        v157 = *(v152 + 48) + v156 * v243;
        v158 = v152;
        v159 = v236;
        v242(v236, v157, v147);
        sub_10001BA5C();
        sub_1002357D8(&qword_100CA35B0, v160, &protocol conformance descriptor for LocationOfInterestType);
        v161 = dispatch thunk of static Equatable.== infix(_:_:)();
        v162 = *v150;
        v163 = v159;
        v152 = v158;
        (*v150)(v163, v147);
        v154 = v156 + 1;
        if (v161)
        {
          v162(v239, v147);
          v145 = v226;
          v151 = v240;
          goto LABEL_41;
        }
      }
    }

    v184 = *v150;
    (*v150)(v239, v147);
    swift_setDeallocating();
    sub_1005C1D60();

    v185 = v236;
    LOBYTE(v50) = v237;
    v125 = v234;
    (v234)(v236, v228, v147);
    sub_10069A148();
    v187 = v186;
    v184(v185, v148);
    if (v187)
    {

      v164 = v230;
      v188 = Logger.logObject.getter();
      v189 = static os_log_type_t.default.getter();
      sub_10000C79C(v189);
      sub_100037928();
      if (v190)
      {
        v191 = sub_10000389C();
        sub_100025054(v191);
        sub_1000133FC(&_mh_execute_header, v192, v193, "ListViewTipManager set HomeUpdatedTip.displayTip = true");
        sub_100007E54();
      }

      if (qword_100CA2358 != -1)
      {
        swift_once();
      }

      v194 = qword_100D90568;
    }

    else
    {
      (v125)(v185, v223, v148);
      sub_10069A148();
      v164 = v201;

      v184(v185, v148);
      sub_100037928();
      if ((v164 & 1) == 0)
      {
LABEL_77:
        v207 = sub_100069364();
        sub_100187350(v207, v208, 2u);
        sub_10001E5AC();
        v200 = v152;
        goto LABEL_78;
      }

      v164 = v230;
      v202 = Logger.logObject.getter();
      v203 = static os_log_type_t.default.getter();
      if (sub_10000C79C(v203))
      {
        v204 = sub_10000389C();
        sub_100025054(v204);
        sub_1000133FC(&_mh_execute_header, v205, v206, "ListViewTipManager set WorkUpdatedTip.displayTip = true");
        sub_100007E54();
      }

      if (qword_100CA2350 != -1)
      {
        swift_once();
      }

      v194 = qword_100D90550;
    }

    sub_1000212C4(v229, v194);
    sub_1000745EC(1);
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
    goto LABEL_77;
  }

  v52 = sub_10000385C();
  sub_1000DC3D4(v52, v53, v54);
  v55 = sub_10000385C();
  sub_1000DC3D4(v55, v56, v57);
  v58 = sub_10000385C();
  sub_1000DC3D4(v58, v59, v60);
  v61 = sub_100011340();
  sub_100236000(v61, v62, v63);
  v64 = sub_100011340();
  sub_1000B9E84(v64, v65, v66, v48, v49, v50);
  v68 = v67;
  v69 = sub_10000385C();
  sub_100187350(v69, v70, v71);
  v72 = sub_100011340();
  sub_100235FEC(v72, v73, v74);
  if ((v68 & 1) == 0)
  {
    goto LABEL_18;
  }

  v75 = sub_10000385C();
  sub_100187350(v75, v76, v77);
  v78 = sub_10000385C();
LABEL_57:
  sub_100187350(v78, v79, v80);
  sub_10001E5AC();
  sub_100031148(v235, v183);
LABEL_80:
  sub_10000536C();
}

void sub_1002323BC()
{
  sub_10000C778();
  v171 = v1;
  v166 = v2;
  v164 = v3;
  type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  sub_1000037C4();
  v169 = v5;
  v170 = v4;
  __chkstk_darwin(v4);
  sub_100003848();
  v159 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  sub_10000E70C();
  v153 = v8;
  v9 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003848();
  v172 = v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  sub_100003878();
  v165 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v161 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v151 - v17;
  v157 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100003848();
  v152 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v156 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v167 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v163 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v162 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  v33 = &v151 - v32;
  v34 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v34);
  sub_100003828();
  __chkstk_darwin(v35);
  v37 = &v151 - v36;
  v38 = type metadata accessor for WeatherCoalescedLocationResult();
  v154 = v38;
  v173 = *(v38 - 8);
  __chkstk_darwin(v38);
  sub_1000037D8();
  v41 = v40 - v39;
  v42 = (v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_weatherLocationCoalescenceManager);
  v43 = *(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_weatherLocationCoalescenceManager + 24);
  v155 = *(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_weatherLocationCoalescenceManager + 32);
  sub_1000161C0((v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_weatherLocationCoalescenceManager), v43);
  sub_1000038D8();
  v160 = type metadata accessor for CurrentLocation();
  v44 = sub_1000313F0();
  sub_10001B350(v44, v45, v46, v47);
  v48 = type metadata accessor for LocationsState(0);
  v158 = *(v164 + *(v48 + 20));
  v164 = *(v164 + *(v48 + 52));
  dispatch thunk of WeatherLocationCoalescenceManagerType.coalesceLocations(currentLocation:locationList:locationsOfInterest:displayContextByLocation:)();
  sub_1000180EC(v37, &unk_100CE49F0, &unk_100A3AFA0);
  v49 = WeatherCoalescedLocationResult.coalescedLocations.getter();
  v50 = *(v173 + 8);
  v173 += 8;
  v155 = v50;
  v50(v41, v38);
  sub_1000161C0(v42, v42[3]);
  v51 = sub_1000313F0();
  sub_10001B350(v51, v52, v53, v160);
  dispatch thunk of WeatherLocationCoalescenceManagerType.coalesceLocations(currentLocation:locationList:locationsOfInterest:displayContextByLocation:)();
  sub_1000180EC(v37, &unk_100CE49F0, &unk_100A3AFA0);
  v54 = WeatherCoalescedLocationResult.coalescedLocations.getter();
  v55 = v157;
  v166 = v54;
  v155(v41, v154);
  v56 = 0;
  v57 = *(v49 + 16);
  v173 = v20 + 16;
  v158 = (v20 + 32);
  v58 = (v20 + 8);
  v164 = _swiftEmptyArrayStorage;
  v171 = v49;
  while (1)
  {
    v59 = v167;
    if (v57 == v56)
    {
      break;
    }

    if (v56 >= *(v49 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    sub_1000B9840();
    v62 = v61 & ~v60;
    v63 = *(v20 + 72);
    (*(v20 + 16))(v33, v49 + v62 + v63 * v56, v55);
    v64 = v55;
    LocationModel.locationOfInterest.getter();
    v65 = type metadata accessor for LocationOfInterest();
    sub_1000038B4(v18, 1, v65);
    if (v66)
    {
      (*v58)(v33, v55);
      sub_1000180EC(v18, &qword_100CA3588, &unk_100A4F350);
      ++v56;
      v49 = v171;
    }

    else
    {
      sub_1000180EC(v18, &qword_100CA3588, &unk_100A4F350);
      v160 = *v158;
      (v160)(v162, v33, v55);
      v55 = v164;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v55;
      v174[0] = v55;
      if (isUniquelyReferenced_nonNull_native)
      {
        v55 = v64;
      }

      else
      {
        sub_100037040();
        sub_100071C0C();
      }

      v49 = v171;
      v70 = v68[2];
      v69 = v68[3];
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        sub_1000166B4(v69);
        v164 = v72;
        v155 = v73;
        sub_1006A77CC();
        sub_100071C0C();
      }

      ++v56;
      v68[2] = v71;
      v164 = v68;
      (v160)(v68 + v62 + v70 * v63, v162, v55);
    }
  }

  v74 = v164;
  v75 = v164[2];
  v168 = v20;
  if (v75)
  {
    v162 = (v20 + 8);
    v174[0] = _swiftEmptyArrayStorage;
    sub_1006A7774();
    v55 = v157;
    v76 = 0;
    v77 = v174[0];
    sub_1000B9840();
    v160 = (v74 + (v79 & ~v78));
    v80 = v153;
    v81 = v163;
    while (v76 < v74[2])
    {
      v82 = v20;
      v83 = v75;
      (*(v82 + 16))(v81, v160 + *(v82 + 72) * v76, v55);
      v84 = v55;
      v85 = LocationModel.name.getter();
      v87 = v86;
      v88 = v161;
      LocationModel.locationOfInterest.getter();
      v89 = v88;
      v90 = type metadata accessor for LocationOfInterest();
      sub_1000038B4(v89, 1, v90);
      if (v66)
      {
        __break(1u);
LABEL_53:
        __break(1u);
        return;
      }

      LocationOfInterest.type.getter();
      (*v162)(v81, v84);
      (*(*(v90 - 8) + 8))(v89, v90);
      *v80 = v85;
      v80[1] = v87;
      v174[0] = v77;
      v92 = *(v77 + 16);
      v91 = *(v77 + 24);
      v55 = v84;
      if (v92 >= v91 >> 1)
      {
        sub_1000166B4(v91);
        sub_1006A7774();
        v55 = v157;
        v77 = v174[0];
      }

      ++v76;
      *(v77 + 16) = v92 + 1;
      sub_10000C7B8();
      sub_100235F88(v80, v77 + v93 + *(v94 + 72) * v92);
      v75 = v83;
      v66 = v83 == v76;
      v81 = v163;
      v74 = v164;
      v20 = v168;
      if (v66)
      {
        v163 = v77;

        v59 = v167;
        v58 = v162;
        goto LABEL_23;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v163 = _swiftEmptyArrayStorage;
LABEL_23:
  v95 = 0;
  v96 = v166;
  v97 = *(v166 + 16);
  v167 = _swiftEmptyArrayStorage;
  while (v97 != v95)
  {
    if (v95 >= *(v96 + 16))
    {
      goto LABEL_48;
    }

    sub_1000B9840();
    v100 = v99 & ~v98;
    v101 = *(v20 + 72);
    (*(v20 + 16))(v59, v96 + v100 + v101 * v95, v55);
    v102 = v59;
    v103 = v165;
    v104 = v55;
    LocationModel.locationOfInterest.getter();
    v105 = type metadata accessor for LocationOfInterest();
    sub_1000038B4(v103, 1, v105);
    if (v66)
    {
      (*v58)(v102, v55);
      sub_1000180EC(v103, &qword_100CA3588, &unk_100A4F350);
      ++v95;
      v59 = v102;
      v96 = v166;
    }

    else
    {
      sub_1000180EC(v103, &qword_100CA3588, &unk_100A4F350);
      v164 = *v158;
      (v164)(v156, v102, v55);
      v55 = v167;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v55;
      v174[0] = v55;
      v59 = v102;
      if (v106)
      {
        v55 = v104;
      }

      else
      {
        sub_100037040();
        sub_100071C0C();
      }

      v96 = v166;
      v109 = v107[2];
      v108 = v107[3];
      v110 = v109 + 1;
      if (v109 >= v108 >> 1)
      {
        sub_1000166B4(v108);
        v167 = v111;
        sub_1006A77CC();
        sub_100071C0C();
      }

      ++v95;
      v107[2] = v110;
      v167 = v107;
      (v164)(v107 + v100 + v109 * v101, v156, v55);
    }
  }

  v112 = v167;
  v113 = *(v167 + 2);
  if (v113)
  {
    v174[0] = _swiftEmptyArrayStorage;
    sub_1006A7774();
    v114 = v157;
    v115 = 0;
    v116 = v174[0];
    sub_1000B9840();
    v165 = v112 + (v118 & ~v117);
    v119 = v152;
    v164 = v113;
    while (v115 < v112[2])
    {
      v120 = v20;
      v121 = v116;
      (*(v120 + 16))(v119, v165 + *(v120 + 72) * v115, v114);
      v122 = LocationModel.name.getter();
      v124 = v123;
      LocationModel.locationOfInterest.getter();
      v125 = type metadata accessor for LocationOfInterest();
      sub_1000038B4(v172, 1, v125);
      if (v66)
      {
        goto LABEL_53;
      }

      v126 = v159;
      LocationOfInterest.type.getter();
      (*v58)(v119, v114);
      (*(*(v125 - 8) + 8))(v172, v125);
      *v126 = v122;
      v126[1] = v124;
      v116 = v121;
      v174[0] = v121;
      v128 = *(v121 + 16);
      v127 = *(v121 + 24);
      if (v128 >= v127 >> 1)
      {
        sub_1000166B4(v127);
        sub_1006A7774();
        v119 = v152;
        v114 = v157;
        v126 = v159;
        v116 = v174[0];
      }

      ++v115;
      *(v116 + 16) = v128 + 1;
      sub_10000C7B8();
      sub_100235F88(v126, v116 + v129 + *(v130 + 72) * v128);
      v112 = v167;
      v20 = v168;
      if (v164 == v115)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_50;
  }

LABEL_42:

  v131 = sub_10069A8CC();

  v132 = sub_10069A8CC();
  v174[0] = v131;
  sub_100235B64(v132);
  sub_1002331B8(v174[0]);

  sub_10069AA48();
  if (qword_100CA27B0 == -1)
  {
    goto LABEL_43;
  }

LABEL_51:
  sub_10000F960(&qword_100CA27B0);
LABEL_43:
  v133 = type metadata accessor for Logger();
  sub_1000212C4(v133, qword_100D90D68);

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v174[0] = v173;
    *v136 = 136316163;
    type metadata accessor for LocationOfInterestType();
    sub_10001BA5C();
    sub_1002357D8(v137, v138, &protocol conformance descriptor for LocationOfInterestType);
    v139 = Set.description.getter();
    v141 = sub_100078694(v139, v140, v174);

    *(v136 + 4) = v141;
    *(v136 + 12) = 2160;
    *(v136 + 14) = 1752392040;
    *(v136 + 22) = 2081;
    v142 = Array.description.getter();
    v144 = v143;

    v145 = sub_100078694(v142, v144, v174);

    *(v136 + 24) = v145;
    *(v136 + 32) = 2160;
    *(v136 + 34) = 1752392040;
    *(v136 + 42) = 2081;
    v146 = Array.description.getter();
    v148 = v147;

    v149 = sub_100078694(v146, v148, v174);

    *(v136 + 44) = v149;
    _os_log_impl(&_mh_execute_header, v134, v135, "Location of interest changes = %s, with oldSavedLocationsWithLocationOfInterest %{private,mask.hash}s, with newSavedLocationsWithLocationOfInterest %{private,mask.hash}s", v136, 0x34u);
    v150 = v173;
    swift_arrayDestroy();
    sub_100003884(v150);
    sub_100003884(v136);
  }

  else
  {
  }

  sub_10000536C();
}

uint64_t sub_1002331B8(uint64_t a1)
{
  v3 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationOfInterestType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v32[1] = v1;
  v45 = _swiftEmptyArrayStorage;
  sub_1006A771C();
  v10 = v45;
  result = sub_1003E28BC(a1);
  v14 = v6;
  v15 = result;
  v16 = 0;
  v44 = a1 + 56;
  v36 = (v14 + 16);
  v37 = v14;
  v34 = v9;
  v35 = v14 + 32;
  v33 = a1 + 64;
  v17 = a1;
  v41 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v15 < 1 << *(v17 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v44 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v17 + 36) != v12)
      {
        goto LABEL_26;
      }

      v43 = v13;
      v42 = v12;
      v19 = v38;
      sub_100094F38(*(v17 + 48) + *(v39 + 72) * v15, v38);
      (*v36)(v8, v19 + *(v40 + 20), v5);
      sub_100031148(v19, type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType);
      v45 = v10;
      v20 = v10[2];
      if (v20 >= v10[3] >> 1)
      {
        sub_1006A771C();
        v10 = v45;
      }

      v10[2] = v20 + 1;
      v21 = v8;
      v22 = v8;
      v23 = v5;
      result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v20, v22, v5);
      if (v43)
      {
        goto LABEL_30;
      }

      v17 = v41;
      v24 = 1 << *(v41 + 32);
      if (v15 >= v24)
      {
        goto LABEL_27;
      }

      v25 = *(v44 + 8 * v18);
      if ((v25 & (1 << v15)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v41 + 36) != v42)
      {
        goto LABEL_29;
      }

      v26 = v25 & (-2 << (v15 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v18 << 6;
        v28 = v18 + 1;
        v29 = (v33 + 8 * v18);
        while (v28 < (v24 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_100049534(v15, v42, 0);
            v24 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        result = sub_100049534(v15, v42, 0);
LABEL_19:
        v17 = v41;
      }

      if (++v16 == v34)
      {
        return v10;
      }

      v13 = 0;
      v12 = *(v17 + 36);
      v15 = v24;
      v5 = v23;
      v8 = v21;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1002335A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      *(a2 + 24) = &type metadata for HomeAndWorkUpdatedTip;
      result = sub_100235A9C();
      goto LABEL_11;
    case 2:
      *(a2 + 24) = &type metadata for HomeUpdatedTip;
      result = sub_1002359A0();
      goto LABEL_11;
    case 3:
      *(a2 + 24) = &type metadata for WorkUpdatedTip;
      result = sub_10023594C();
      goto LABEL_11;
    case 4:
      v5 = *(v2 + 24);
      v6 = *(v2 + 25);
      v7 = *(v2 + 26);
      *(a2 + 24) = &type metadata for NotificationsOptInListTip;
      result = sub_100235784();
      *(a2 + 32) = result;
      *a2 = v5;
      *(a2 + 1) = v6;
      *(a2 + 2) = v7;
      return result;
    case 5:
      *(a2 + 24) = &type metadata for NotificationsResubscriptionListTip;
      result = sub_100235A48();
      goto LABEL_11;
    case 6:
      v9 = *(v2 + 27);
      *(a2 + 24) = &type metadata for PredictedLocationsNotificationOptInListTip;
      result = sub_1002359F4();
      *(a2 + 32) = result;
      *a2 = v9;
      return result;
    case 7:
      v8 = *(v2 + 16);
      *(a2 + 24) = &type metadata for AddWeatherMenuListTip;
      *(a2 + 32) = sub_1002358F8();
      *a2 = v8;

    default:
      *(a2 + 24) = &type metadata for HomeAndWorkAddedTip;
      result = sub_100235AF0();
LABEL_11:
      *(a2 + 32) = result;
      return result;
  }
}

uint64_t sub_1002336E8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  sub_10001B350(v11, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = sub_1000053B8();
  sub_10007A47C(v13);
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  *(v15 + 32) = v4;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  sub_1006C0138();
}

uint64_t sub_100233804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 208) = a5;
  *(v7 + 56) = a4;
  v8 = type metadata accessor for Tips.Status();
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();
  sub_10022C350(&qword_100CA3528, &unk_100A4A660);
  *(v7 + 104) = swift_task_alloc();
  v9 = sub_10022C350(&qword_100CA3540, &qword_100A2D578);
  *(v7 + 112) = v9;
  *(v7 + 120) = *(v9 - 8);
  *(v7 + 128) = swift_task_alloc();
  v10 = sub_10022C350(&qword_100CA3548, &unk_100A2D580);
  *(v7 + 136) = v10;
  *(v7 + 144) = *(v10 - 8);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = type metadata accessor for MainActor();
  *(v7 + 168) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 176) = v12;
  *(v7 + 184) = v11;

  return _swift_task_switch(sub_100233A0C, v12, v11);
}

uint64_t sub_100233A0C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  sub_1002335A8(*(v0 + 208), v0 + 16);
  sub_1000161C0((v0 + 16), *(v0 + 40));
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  sub_100006F14((v0 + 16));
  v4 = static MainActor.shared.getter();
  *(v0 + 192) = v4;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v6 = sub_100016688(v5);

  return AsyncStream.Iterator.next(isolation:)(v6, v4, &protocol witness table for MainActor);
}

uint64_t sub_100233B28()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_100233C6C, v3, v2);
}

uint64_t sub_100233C6C()
{
  v1 = v0[13];
  v2 = v0[10];
  sub_1000038B4(v1, 1, v2);
  if (v3)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v1, v2);
    sub_100233E18();
    v6 = sub_1000053B8();
    v7(v6);
    v8 = static MainActor.shared.getter();
    v0[24] = v8;
    v9 = swift_task_alloc();
    v0[25] = v9;
    *v9 = v0;
    v10 = sub_100016688(v9);

    return AsyncStream.Iterator.next(isolation:)(v10, v8, &protocol witness table for MainActor);
  }
}

void sub_100233E18()
{
  sub_10000C778();
  v80 = v2;
  v87 = v3;
  v5 = v4;
  v91 = v6;
  type metadata accessor for Tips.InvalidationReason();
  sub_1000037C4();
  v85 = v8;
  v86 = v7;
  __chkstk_darwin(v7);
  sub_100003848();
  v83 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_10000E70C();
  v84 = v11;
  sub_1000038CC();
  v12 = type metadata accessor for Tips.Status();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100003848();
  v88 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v81 = v18;
  v19 = sub_10022C350(&qword_100CA3520, &unk_100A2D550) - 8;
  sub_100003828();
  __chkstk_darwin(v20);
  v90 = &v77[-v21];
  v22 = sub_10022C350(&qword_100CA3528, &unk_100A4A660);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_100003848();
  v93 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v89 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100020104();
  __chkstk_darwin(v28);
  v30 = &v77[-v29];
  sub_10002401C(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_tipStatus, &v95);

  sub_100879C58();

  v92 = v14;
  v31 = *(v14 + 16);
  v32 = v91;
  v31(v1, v91, v12);
  sub_10001B350(v1, 0, 1, v12);
  swift_beginAccess();
  v33 = v1;
  v34 = v30;
  v35 = v5;
  v37 = v89;
  v36 = v90;
  v82 = v35;
  sub_100403220(v33, v35);
  swift_endAccess();
  v31(v37, v32, v12);
  sub_10001B350(v37, 0, 1, v12);
  v38 = *(v19 + 56);
  sub_100035AD0(v34, v36, &qword_100CA3528, &unk_100A4A660);
  sub_100035AD0(v37, v36 + v38, &qword_100CA3528, &unk_100A4A660);
  sub_1000038B4(v36, 1, v12);
  if (!v40)
  {
    sub_100035AD0(v36, v93, &qword_100CA3528, &unk_100A4A660);
    sub_1000038B4(v36 + v38, 1, v12);
    if (!v40)
    {
      v39 = v92;
      v70 = v81;
      (*(v92 + 32))(v81, v36 + v38, v12);
      sub_1002357D8(&qword_100CA3530, &type metadata accessor for Tips.Status, &protocol conformance descriptor for Tips.Status);
      v78 = dispatch thunk of static Equatable.== infix(_:_:)();
      v79 = v31;
      v71 = *(v39 + 8);
      v71(v70, v12);
      sub_1000180EC(v37, &qword_100CA3528, &unk_100A4A660);
      v71(v93, v12);
      v31 = v79;
      sub_1000180EC(v36, &qword_100CA3528, &unk_100A4A660);
      if (v78)
      {
        goto LABEL_33;
      }

LABEL_10:
      v41 = v88;
      v31(v88, v32, v12);
      v42 = (*(v39 + 88))(v41, v12);
      if (v42 == enum case for Tips.Status.invalidated(_:))
      {
        (*(v39 + 96))(v41, v12);
        v44 = v84;
        v43 = v85;
        v45 = v86;
        (*(v85 + 32))(v84, v41, v86);
        if (qword_100CA27B0 != -1)
        {
          sub_10000F960(&qword_100CA27B0);
        }

        v46 = type metadata accessor for Logger();
        sub_1000212C4(v46, qword_100D90D68);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (sub_100007E70(v48))
        {
          sub_100018264();
          v49 = sub_10000539C();
          v94[0] = v49;
          sub_100051CF4(4.8149e-34);
          v50 = String.init<A>(describing:)();
          v52 = sub_100078694(v50, v51, v94);

          *(v41 + 4) = v52;
          sub_1000C86A0(&_mh_execute_header, v53, v54, "Update %s status to invalidated");
          sub_100006F14(v49);
          sub_100003884(v49);
          sub_100003884(v41);
        }

        v55 = v87;
        v56 = v83;
        (*(v43 + 104))(v83, enum case for Tips.InvalidationReason.tipClosed(_:), v45);
        v57 = static Tips.InvalidationReason.== infix(_:_:)();
        v58 = *(v43 + 8);
        v58(v56, v45);
        if ((v57 & 1) != 0 && v55)
        {

          v55(v59);
          sub_10002B028(v55);
        }

        v58(v44, v45);
        goto LABEL_33;
      }

      if (v42 == enum case for Tips.Status.pending(_:))
      {
        if (qword_100CA27B0 != -1)
        {
          sub_10000F960(&qword_100CA27B0);
        }

        v60 = type metadata accessor for Logger();
        sub_1000212C4(v60, qword_100D90D68);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        if (!sub_100007E70(v62))
        {
          goto LABEL_32;
        }

        sub_100018264();
        v63 = sub_10000539C();
        v94[0] = v63;
        sub_100051CF4(4.8149e-34);
        v64 = String.init<A>(describing:)();
        v66 = sub_100078694(v64, v65, v94);

        *(v41 + 4) = v66;
        v69 = "Update %s status to pending";
      }

      else
      {
        if (v42 != enum case for Tips.Status.available(_:))
        {
          sub_1000180EC(v34, &qword_100CA3528, &unk_100A4A660);
          (*(v39 + 8))(v41, v12);
          goto LABEL_34;
        }

        if (qword_100CA27B0 != -1)
        {
          sub_10000F960(&qword_100CA27B0);
        }

        v72 = type metadata accessor for Logger();
        sub_1000212C4(v72, qword_100D90D68);
        v61 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (!sub_100007E70(v73))
        {
          goto LABEL_32;
        }

        sub_100018264();
        v63 = sub_10000539C();
        v94[0] = v63;
        sub_100051CF4(4.8149e-34);
        v74 = String.init<A>(describing:)();
        v76 = sub_100078694(v74, v75, v94);

        *(v41 + 4) = v76;
        v69 = "Update %s status to available";
      }

      sub_1000C86A0(&_mh_execute_header, v67, v68, v69);
      sub_100006F14(v63);
      sub_100003884(v63);
      sub_100003884(v41);
LABEL_32:

      goto LABEL_33;
    }

    sub_1000180EC(v37, &qword_100CA3528, &unk_100A4A660);
    v39 = v92;
    (*(v92 + 8))(v93, v12);
LABEL_9:
    sub_1000180EC(v36, &qword_100CA3520, &unk_100A2D550);
    goto LABEL_10;
  }

  sub_1000180EC(v37, &qword_100CA3528, &unk_100A4A660);
  sub_1000038B4(v36 + v38, 1, v12);
  v39 = v92;
  if (!v40)
  {
    goto LABEL_9;
  }

  sub_1000180EC(v36, &qword_100CA3528, &unk_100A4A660);
LABEL_33:
  sub_1000180EC(v34, &qword_100CA3528, &unk_100A4A660);
LABEL_34:
  sub_10000536C();
}

void sub_1002346E8()
{
  sub_10000C778();
  v3 = v2;
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003848();
  v42 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100020104();
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_100035AD0(v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, &v38 - v16, &unk_100CE49F0, &unk_100A3AFA0);
  v52 = *(v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  sub_100035B30(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_notificationsOptInStatusFactory, v54);
  v43 = v56;
  v46 = v55;
  v47 = sub_1000161C0(v54, v55);
  v18 = v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
  v19 = *(v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
  v44 = *(v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + 17);
  v45 = v19;
  v38 = type metadata accessor for NotificationsOptInState(0);
  v20 = *(v38 + 44);
  v49 = v10;
  v50 = v6;
  v21 = *(v6 + 16);
  v41 = v18;
  v51 = v4;
  v21(v10, v18 + v20, v4);
  v22 = v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  sub_10002401C(v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment, &v53);
  v40 = *(v22 + 1);
  v39 = *(v3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
  v48 = v17;
  sub_100035AD0(v17, v1, &unk_100CE49F0, &unk_100A3AFA0);
  v23 = type metadata accessor for CurrentLocation();
  LODWORD(v4) = sub_100024D10(v1, 1, v23);

  if (v4 == 1)
  {
    sub_1000180EC(v1, &unk_100CE49F0, &unk_100A3AFA0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_10001406C();
    sub_100031148(v1, v24);
  }

  sub_10003B8E8();
  sub_100141E5C();
  v26 = v25;

  v27 = v48;
  v28 = v42;
  sub_100035AD0(v48, v42, &unk_100CE49F0, &unk_100A3AFA0);
  sub_1000038B4(v28, 1, v23);
  if (v29)
  {
    sub_1000180EC(v28, &unk_100CE49F0, &unk_100A3AFA0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_10001406C();
    sub_100031148(v28, v30);
  }

  sub_10003B8E8();
  sub_100141E74();
  v32 = v31;

  v33 = *(v41 + *(v38 + 48));

  v35 = sub_10058D62C(v34);
  v36 = v32 & 1;
  v37 = v49;
  (*(v43 + 8))(v45, v44, v49, v40, v39, v26 & 1, v36, v33, v35 & 0xFFFFFF, v46, v43);
  (*(v50 + 8))(v37, v51);
  sub_1000180EC(v27, &unk_100CE49F0, &unk_100A3AFA0);
  sub_100006F14(v54);
  sub_10000536C();
}

uint64_t sub_100234B10(uint64_t a1)
{
  v2 = type metadata accessor for ViewState(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v6 = v5 - v4;
  sub_100094F38(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v5 - v4);
  v7 = *(v6 + *(v3 + 44) + 8);
  sub_100031148(v6, type metadata accessor for ViewState);
  if (v7 != 2)
  {
    goto LABEL_14;
  }

  v8 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  sub_10002401C(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment, v15);
  if (LocationAuthorizationState.rawValue.getter(*(v8 + 1)) == 0xD000000000000010 && 0x8000000100ABA410 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
LABEL_14:
      v13 = 0;
      return v13 & 1;
    }
  }

  switch(*(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications))
  {
    case 1:

      break;
    default:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        goto LABEL_14;
      }

      break;
  }

  if (*(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + 18) != 1)
  {
    goto LABEL_14;
  }

  v13 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + 19) ^ 1;
  return v13 & 1;
}

uint64_t sub_100234D3C(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v19[-v7 - 8];
  v9 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  sub_10002401C(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment, v19);
  if (*(v9 + 2) < 2u || (v10 = , sub_100441CA8(v10) == 6) || (v11 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn, (*(v11 + *(type metadata accessor for NotificationsOptInState(0) + 52)) & 1) != 0))
  {
    v12 = 0;
  }

  else
  {
    sub_100035AD0(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v8, &unk_100CE49F0, &unk_100A3AFA0);
    sub_100035AD0(v8, v5, &unk_100CE49F0, &unk_100A3AFA0);
    v14 = type metadata accessor for CurrentLocation();
    v15 = sub_100024D10(v5, 1, v14);

    if (v15 == 1)
    {
      sub_1000180EC(v5, &unk_100CE49F0, &unk_100A3AFA0);
    }

    else
    {
      CurrentLocation.id.getter();
      sub_10001406C();
      sub_100031148(v5, v16);
    }

    sub_100141E74();
    v12 = v17;

    sub_1000180EC(v8, &unk_100CE49F0, &unk_100A3AFA0);
  }

  return v12 & 1;
}

void sub_100234F84()
{
  sub_10000C778();
  sub_1000038D8();
  type metadata accessor for Tips.Status();
  sub_1000037C4();
  __chkstk_darwin(v1);
  __chkstk_darwin(v2);
  if ((*(v0 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + 18) & 1) == 0)
  {

    if ((sub_10058D62C(v3) & 0xFE) == 2)
    {
      v19 = 0;
      v20 = 0;
      sub_100235784();
      Tip.status.getter();
      v4 = sub_1000053B8();
      v6 = v5(v4);
      if (v6 == enum case for Tips.Status.invalidated(_:))
      {
LABEL_14:
        v16 = sub_1000053B8();
        v17(v16);
        goto LABEL_15;
      }

      if (v6 != enum case for Tips.Status.pending(_:) && v6 != enum case for Tips.Status.available(_:))
      {
        if (qword_100CA26C0 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_1000212C4(v8, qword_100D90AA8);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = sub_100018264();
          v12 = swift_slowAlloc();
          v18 = v12;
          *v11 = 136315138;
          Tip.status.getter();
          v13 = String.init<A>(describing:)();
          v15 = sub_100078694(v13, v14, &v18);

          *(v11 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v9, v10, "Unhandled notificationTip.status =%s", v11, 0xCu);
          sub_100006F14(v12);
          sub_100003884(v12);
          sub_100003884(v11);
        }

        goto LABEL_14;
      }
    }
  }

LABEL_15:
  sub_10000536C();
}

uint64_t sub_100235220()
{

  v1 = OBJC_IVAR____TtC7Weather18ListViewTipManager_debounceTime;
  type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);
  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_notificationsOptInStatusFactory));
  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_weatherLocationCoalescenceManager));

  sub_100235FEC(*(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cachedLocationOfInterestState), *(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cachedLocationOfInterestState + 8), *(v0 + OBJC_IVAR____TtC7Weather18ListViewTipManager_cachedLocationOfInterestState + 16));

  return v0;
}

uint64_t sub_1002352F4()
{
  sub_100235220();

  return swift_deallocClassInstance();
}

uint64_t sub_100235374(uint64_t a1)
{
  result = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10023549C()
{
  if (*(*v0 + 26))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return v1 | (*(*v0 + 25) << 8) | *(*v0 + 24);
}

uint64_t sub_10023550C()
{
  type metadata accessor for WeatherMenuTipMutableAttributes();
  sub_100007E8C();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for ListViewTipManager.ListViewTip(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ListViewTipManager.ListViewTip(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1002356AC()
{
  result = qword_100CA34C0;
  if (!qword_100CA34C0)
  {
    result = swift_getWitnessTable(a5_12, &type metadata for ListViewTipManager.ListViewTip, v0, v1);
    atomic_store(result, &qword_100CA34C0);
  }

  return result;
}

unint64_t sub_100235718()
{
  result = qword_100CA34E0;
  if (!qword_100CA34E0)
  {
    result = swift_getWitnessTable(byte_100A2D48C, &type metadata for ListViewTipManager.ListViewTip, v0, v1);
    atomic_store(result, &qword_100CA34E0);
  }

  return result;
}

unint64_t sub_100235784()
{
  result = qword_100CA3518;
  if (!qword_100CA3518)
  {
    result = swift_getWitnessTable(aE_24, &type metadata for NotificationsOptInListTip, v0, v1);
    atomic_store(result, &qword_100CA3518);
  }

  return result;
}

uint64_t sub_1002357D8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100235820(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000926F8;

  return sub_100233804(a1, v4, v5, v6, v9, v7, v8);
}

unint64_t sub_1002358F8()
{
  result = qword_100CA3550;
  if (!qword_100CA3550)
  {
    result = swift_getWitnessTable(byte_100A8F568, &type metadata for AddWeatherMenuListTip, v0, v1);
    atomic_store(result, &qword_100CA3550);
  }

  return result;
}

unint64_t sub_10023594C()
{
  result = qword_100CA3558;
  if (!qword_100CA3558)
  {
    result = swift_getWitnessTable(byte_100A6B978, &type metadata for WorkUpdatedTip, v0, v1);
    atomic_store(result, &qword_100CA3558);
  }

  return result;
}

unint64_t sub_1002359A0()
{
  result = qword_100CA3560;
  if (!qword_100CA3560)
  {
    result = swift_getWitnessTable(byte_100A6BD78, &type metadata for HomeUpdatedTip, v0, v1);
    atomic_store(result, &qword_100CA3560);
  }

  return result;
}

unint64_t sub_1002359F4()
{
  result = qword_100CA3568;
  if (!qword_100CA3568)
  {
    result = swift_getWitnessTable(aU_29, &type metadata for PredictedLocationsNotificationOptInListTip, v0, v1);
    atomic_store(result, &qword_100CA3568);
  }

  return result;
}

unint64_t sub_100235A48()
{
  result = qword_100CA3570;
  if (!qword_100CA3570)
  {
    result = swift_getWitnessTable(aM_32, &type metadata for NotificationsResubscriptionListTip, v0, v1);
    atomic_store(result, &qword_100CA3570);
  }

  return result;
}