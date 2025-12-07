NewsAnalytics::WidgetData __swiftcall WidgetData.init(webEmbedData:)(NewsAnalytics::WidgetData webEmbedData)
{
  v2 = *(webEmbedData.webEmbedData.embedUrl._countAndFlagsBits + 8);
  *v1 = *webEmbedData.webEmbedData.embedUrl._countAndFlagsBits;
  v1[1] = v2;
  return webEmbedData;
}

uint64_t sub_217AF112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217AF11B8(uint64_t a1)
{
  v2 = sub_217AF13A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AF11F4(uint64_t a1)
{
  v2 = sub_217AF13A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetData.encode(to:)(void *a1)
{
  sub_217AF1594(0, &qword_27CB9EF38, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF13A4();

  sub_217D89E7C();
  v11[0] = v8;
  v11[1] = v9;
  sub_217AE89C8();
  sub_217D89CAC();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217AF13A4()
{
  result = qword_27CB9EF40;
  if (!qword_27CB9EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF40);
  }

  return result;
}

uint64_t WidgetData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217AF1594(0, &qword_27CB9EF48, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF13A4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217AE8974();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v10 = v12[1];
    *a2 = v12[0];
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217AF1594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AF13A4();
    v7 = a3(a1, &type metadata for WidgetData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AF15FC()
{
  result = qword_27CB9EF50;
  if (!qword_27CB9EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF50);
  }

  return result;
}

unint64_t sub_217AF1654()
{
  result = qword_27CB9EF58;
  if (!qword_27CB9EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF58);
  }

  return result;
}

unint64_t sub_217AF16FC()
{
  result = qword_27CB9EF60;
  if (!qword_27CB9EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF60);
  }

  return result;
}

unint64_t sub_217AF1754()
{
  result = qword_27CB9EF68;
  if (!qword_27CB9EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF68);
  }

  return result;
}

unint64_t sub_217AF17AC()
{
  result = qword_27CB9EF70;
  if (!qword_27CB9EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF70);
  }

  return result;
}

NewsAnalytics::PurchaseType_optional __swiftcall PurchaseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PurchaseType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6C616E7265747865;
  if (v1 != 6)
  {
    v3 = 0x72756769666E6F63;
  }

  v4 = 0x43656C646E754273;
  if (v1 != 4)
  {
    v4 = 0x7748656C646E7562;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C646E7562;
  if (v1 != 2)
  {
    v5 = 0x656C646E754273;
  }

  if (*v0)
  {
    v2 = 0x6574726143616C61;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_217AF197C()
{
  result = qword_27CB9EF78;
  if (!qword_27CB9EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF78);
  }

  return result;
}

void sub_217AF19F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE800000000000000;
  v6 = 0x6C616E7265747865;
  if (v2 != 6)
  {
    v6 = 0x72756769666E6F63;
    v5 = 0xEC000000656C6261;
  }

  v7 = 0xEE00726569727261;
  v8 = 0x43656C646E754273;
  if (v2 != 4)
  {
    v8 = 0x7748656C646E7562;
    v7 = 0xE900000000000064;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x656C646E7562;
  if (v2 != 2)
  {
    v10 = 0x656C646E754273;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x6574726143616C61;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for PurchaseType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PurchaseType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217AF1D0C()
{
  result = qword_2811C7930;
  if (!qword_2811C7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7930);
  }

  return result;
}

unint64_t sub_217AF1D9C()
{
  result = qword_27CB9EF80;
  if (!qword_27CB9EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF80);
  }

  return result;
}

NewsAnalytics::UserSelectionType_optional __swiftcall UserSelectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UserSelectionType.rawValue.getter()
{
  v1 = 0x6E4F6E727574;
  if (*v0 != 1)
  {
    v1 = 0x776F4E746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217AF1EB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E4F6E727574;
  if (v2 != 1)
  {
    v3 = 0x776F4E746F6ELL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x6E4F6E727574;
  if (*a2 != 1)
  {
    v6 = 0x776F4E746F6ELL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217AF1FA8()
{
  result = qword_27CB9EF88;
  if (!qword_27CB9EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF88);
  }

  return result;
}

uint64_t sub_217AF1FFC()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217AF2098(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217AF2120(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217AF21C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E4F6E727574;
  if (v2 != 1)
  {
    v4 = 0x776F4E746F6ELL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217AF22DC()
{
  result = qword_27CB9EF90;
  if (!qword_27CB9EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF90);
  }

  return result;
}

uint64_t FeedLayoutResult.LayoutPath.analyticsLayoutPath.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_217D8905C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x277D31F20])
  {
    v9 = 0;
LABEL_7:
    *a1 = v9;
    return result;
  }

  if (result == *MEMORY[0x277D31F18])
  {
    v9 = 1;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x277D31F28])
  {
    v9 = 2;
    goto LABEL_7;
  }

  result = sub_217D89D3C();
  __break(1u);
  return result;
}

uint64_t sub_217AF2544()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9EFC8);
  __swift_project_value_buffer(v0, qword_27CB9EFC8);
  return sub_217D8866C();
}

uint64_t PuzzleShareEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PuzzleShareEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 20);
  sub_217AF33C0(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleShareEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 20);
  sub_217AF33C0(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 24);
  sub_217AF33C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleShareEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 24);
  sub_217AF33C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 28);
  sub_217AF33C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleShareEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 28);
  sub_217AF33C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.shareContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 32);
  sub_217AF33C0(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AF2C58()
{
  result = qword_2811C4D40;
  if (!qword_2811C4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D40);
  }

  return result;
}

unint64_t sub_217AF2CAC()
{
  result = qword_2811C4D48;
  if (!qword_2811C4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D48);
  }

  return result;
}

uint64_t PuzzleShareEvent.shareContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 32);
  sub_217AF33C0(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 36);
  sub_217AF33C0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleShareEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 36);
  sub_217AF33C0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 40);
  sub_217AF33C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleShareEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 40);
  sub_217AF33C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 44);
  sub_217AF33C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleShareEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 44);
  sub_217AF33C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 48);
  sub_217AF33C0(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AF33C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AF343C()
{
  result = qword_2811BD3F8;
  if (!qword_2811BD3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3F8);
  }

  return result;
}

unint64_t sub_217AF3490()
{
  result = qword_2811BD400;
  if (!qword_2811BD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD400);
  }

  return result;
}

uint64_t PuzzleShareEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleShareEvent(0) + 48);
  sub_217AF33C0(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleShareEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PuzzleShareEvent(0);
  v5 = v4[5];
  sub_217AF33C0(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217AF33C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217AF33C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_217AF33C0(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217AF33C0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217AF33C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  sub_217AF33C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217AF33C0(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v8, v21);
}

uint64_t PuzzleShareEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PuzzleShareEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t PuzzleShareEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PuzzleShareEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 28));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t PuzzleShareEvent.Model.shareContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t PuzzleShareEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 36));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_217AD85B8(v10, &v9);
}

uint64_t PuzzleShareEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PuzzleShareEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 44));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

void PuzzleShareEvent.Model.adData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PuzzleShareEvent.Model(0) + 48);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  sub_217AE39D0(v4, v5, v6, v7);
}

__n128 PuzzleShareEvent.Model.init(eventData:actionData:feedData:groupData:shareContextData:puzzleData:viewData:userBundleSubscriptionContextData:adData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = *a2;
  v36 = *a3;
  v16 = *(a3 + 2);
  v18 = *a5;
  v17 = a5[1];
  v39 = a7[1];
  v40 = *a7;
  v38 = *(a7 + 8);
  v42 = *(a10 + 32);
  v19 = sub_217D8899C();
  v41 = *a10;
  v37 = *(a10 + 16);
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for PuzzleShareEvent.Model(0);
  *(a9 + v20[5]) = v15;
  v21 = a9 + v20[6];
  *v21 = v36;
  *(v21 + 16) = v16;
  v22 = (a9 + v20[7]);
  v23 = a4[3];
  v22[2] = a4[2];
  v22[3] = v23;
  v24 = a4[1];
  *v22 = *a4;
  v22[1] = v24;
  v25 = a4[8];
  v22[7] = a4[7];
  v22[8] = v25;
  v26 = a4[6];
  v22[5] = a4[5];
  v22[6] = v26;
  v22[4] = a4[4];
  v27 = (a9 + v20[8]);
  *v27 = v18;
  v27[1] = v17;
  v28 = (a9 + v20[9]);
  v29 = a6[3];
  v28[2] = a6[2];
  v28[3] = v29;
  v28[4] = a6[4];
  v30 = a6[1];
  *v28 = *a6;
  v28[1] = v30;
  v31 = a9 + v20[10];
  *v31 = v40;
  *(v31 + 8) = v39;
  *(v31 + 16) = v38;
  v32 = a9 + v20[11];
  v33 = *(a8 + 16);
  *v32 = *a8;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a8 + 32);
  *(v32 + 48) = *(a8 + 48);
  v34 = a9 + v20[12];
  result = v41;
  *v34 = v41;
  *(v34 + 16) = v37;
  *(v34 + 32) = v42;
  return result;
}

unint64_t sub_217AF3EF0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746144746E657665;
    v6 = 0x6174614464656566;
    if (a1 != 2)
    {
      v6 = 0x74614470756F7267;
    }

    if (a1)
    {
      v5 = 0x61446E6F69746361;
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
    v1 = 0x6174614477656976;
    v2 = 0xD000000000000021;
    if (a1 != 7)
    {
      v2 = 0x617461446461;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6144656C7A7A7570;
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

uint64_t sub_217AF4024@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217AF5B1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217AF404C(uint64_t a1)
{
  v2 = sub_217AF46DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AF4088(uint64_t a1)
{
  v2 = sub_217AF46DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleShareEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AF4F44(0, &qword_27CB9EFE0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v45[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF46DC();
  sub_217D89E7C();
  LOBYTE(v90) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for PuzzleShareEvent.Model(0);
    LOBYTE(v90) = *(v3 + v10[5]);
    LOBYTE(v81) = 1;
    sub_217AED190();
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    v13 = v11[2];
    v100 = *v11;
    v101 = v12;
    v102 = v13;
    v99 = 2;
    sub_217AD1A68(v100, v12, v13);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v100, v101, v102);
    v14 = (v3 + v10[7]);
    v15 = v14[6];
    v16 = v14[4];
    v95 = v14[5];
    v96 = v15;
    v17 = v14[6];
    v18 = v14[8];
    v97 = v14[7];
    v98 = v18;
    v19 = v14[2];
    v20 = *v14;
    v91 = v14[1];
    v92 = v19;
    v21 = v14[2];
    v22 = v14[4];
    v93 = v14[3];
    v94 = v22;
    v23 = *v14;
    v87 = v17;
    v88 = v97;
    v89 = v14[8];
    v90 = v23;
    v83 = v21;
    v84 = v93;
    v85 = v16;
    v86 = v95;
    v81 = v20;
    v82 = v91;
    v80 = 3;
    sub_217AD87FC(&v90, v79);
    sub_217A5D3B4();
    sub_217D89C3C();
    v79[6] = v87;
    v79[7] = v88;
    v79[8] = v89;
    v79[2] = v83;
    v79[3] = v84;
    v79[4] = v85;
    v79[5] = v86;
    v79[0] = v81;
    v79[1] = v82;
    sub_217AD96E8(v79);
    v24 = (v3 + v10[8]);
    v25 = v24[1];
    v77 = *v24;
    v78 = v25;
    v76 = 4;
    sub_217AF2CAC();

    sub_217D89CAC();

    v26 = (v3 + v10[9]);
    v27 = v26[2];
    v28 = *v26;
    v72 = v26[1];
    v73 = v27;
    v29 = v26[2];
    v30 = v26[4];
    v74 = v26[3];
    v75 = v30;
    v31 = *v26;
    v68 = v29;
    v69 = v74;
    v70 = v26[4];
    v71 = v31;
    v66 = v28;
    v67 = v72;
    v65 = 5;
    sub_217AD85B8(&v71, v64);
    sub_217AD6D08();
    sub_217D89CAC();
    v64[2] = v68;
    v64[3] = v69;
    v64[4] = v70;
    v64[0] = v66;
    v64[1] = v67;
    sub_217AD9650(v64);
    v32 = (v3 + v10[10]);
    v33 = *v32;
    v34 = v32[1];
    LOWORD(v32) = *(v32 + 8);
    v61 = v33;
    v62 = v34;
    v63 = v32;
    v60 = 6;
    sub_217A5E790();

    sub_217D89C3C();

    v35 = (v3 + v10[11]);
    v36 = v35[1];
    v58[0] = *v35;
    v58[1] = v36;
    v38 = *v35;
    v37 = v35[1];
    v58[2] = v35[2];
    v59 = *(v35 + 48);
    v54 = v38;
    v55 = v37;
    v56 = v35[2];
    v57 = *(v35 + 48);
    v53 = 7;
    sub_217ACC004(v58, v51);
    sub_217A55B98();
    sub_217D89CAC();
    v51[0] = v54;
    v51[1] = v55;
    v51[2] = v56;
    v52 = v57;
    sub_217ACC69C(v51);
    v39 = v3 + v10[12];
    v40 = *(v39 + 8);
    v41 = *(v39 + 16);
    v42 = *(v39 + 24);
    v43 = *(v39 + 32);
    v46 = *v39;
    v47 = v40;
    v48 = v41;
    v49 = v42;
    v50 = v43;
    v45[7] = 8;
    sub_217AE39D0(v46, v40, v41, v42);
    sub_217AF3490();
    sub_217D89C3C();
    sub_217AE4AA0(v46, v47, v48, v49);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217AF46DC()
{
  result = qword_27CB9EFE8;
  if (!qword_27CB9EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EFE8);
  }

  return result;
}

uint64_t PuzzleShareEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_217D8899C();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AF4F44(0, &qword_27CB9EFF0, MEMORY[0x277D844C8]);
  v46 = v6;
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for PuzzleShareEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_217AF46DC();
  v45 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  v13 = v43;
  v39 = v9;
  v40 = v11;
  LOBYTE(v63) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v14 = v44;
  sub_217D89BCC();
  v15 = v40;
  (*(v42 + 32))(v40, v14, v4);
  LOBYTE(v57) = 1;
  sub_217AED13C();
  sub_217D89BCC();
  v38 = v4;
  v16 = v39;
  v15[v39[5]] = v63;
  LOBYTE(v57) = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v17 = v64;
  v18 = &v15[v16[6]];
  *v18 = v63;
  *(v18 + 2) = v17;
  v62 = 3;
  sub_217A5D308();
  sub_217D89B5C();
  v19 = &v15[v16[7]];
  v20 = v68;
  v21 = v70;
  *(v19 + 6) = v69;
  *(v19 + 7) = v21;
  *(v19 + 8) = v71;
  v22 = v64;
  v23 = v66;
  *(v19 + 2) = v65;
  *(v19 + 3) = v23;
  *(v19 + 4) = v67;
  *(v19 + 5) = v20;
  *v19 = v63;
  *(v19 + 1) = v22;
  LOBYTE(v52) = 4;
  sub_217AF2C58();
  sub_217D89BCC();
  v24 = *(&v57 + 1);
  v25 = &v15[v16[8]];
  *v25 = v57;
  *(v25 + 1) = v24;
  v56 = 5;
  sub_217AD6CB4();
  sub_217D89BCC();
  v26 = &v15[v16[9]];
  v27 = v60;
  *(v26 + 2) = v59;
  *(v26 + 3) = v27;
  *(v26 + 4) = v61;
  v28 = v58;
  *v26 = v57;
  *(v26 + 1) = v28;
  LOBYTE(v48) = 6;
  sub_217A5E738();
  sub_217D89B5C();
  v29 = v53;
  v30 = &v15[v16[10]];
  *v30 = v52;
  *(v30 + 8) = v29;
  v51 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  v31 = &v40[v16[11]];
  v32 = v53;
  *v31 = v52;
  *(v31 + 1) = v32;
  *(v31 + 2) = v54;
  v31[48] = v55;
  v47 = 8;
  sub_217AF343C();
  sub_217D89B5C();
  (*(v13 + 8))(v45, v46);
  v33 = v50;
  v34 = v40;
  v35 = &v40[v39[12]];
  v36 = v49;
  *v35 = v48;
  *(v35 + 1) = v36;
  v35[32] = v33;
  sub_217AF4FA8(v34, v41);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return sub_217AF500C(v34);
}

void sub_217AF4F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AF46DC();
    v7 = a3(a1, &type metadata for PuzzleShareEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AF4FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleShareEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AF500C(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleShareEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AF5140@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217AF33C0(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217AF33C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217AF33C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217AF33C0(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217AF33C0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217AF33C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  sub_217AF33C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217AF33C0(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v9, v22);
}

void sub_217AF55BC(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217AF33C0(319, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
    if (v2 <= 0x3F)
    {
      sub_217AF33C0(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217AF33C0(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217AF33C0(319, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
          if (v5 <= 0x3F)
          {
            sub_217AF33C0(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
            if (v6 <= 0x3F)
            {
              sub_217AF33C0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
              if (v7 <= 0x3F)
              {
                sub_217AF33C0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                if (v8 <= 0x3F)
                {
                  sub_217AF33C0(319, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
                  if (v9 <= 0x3F)
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
  }
}

void sub_217AF58D0(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD3F0, &type metadata for AdData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217AF5A18()
{
  result = qword_27CB9F018;
  if (!qword_27CB9F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F018);
  }

  return result;
}

unint64_t sub_217AF5A70()
{
  result = qword_27CB9F020;
  if (!qword_27CB9F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F020);
  }

  return result;
}

unint64_t sub_217AF5AC8()
{
  result = qword_27CB9F028;
  if (!qword_27CB9F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F028);
  }

  return result;
}

uint64_t sub_217AF5B1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD6C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t SportsData.sportsTagList.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_217AF5E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x61547374726F7073 && a2 == 0xED00007473694C67)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217AF5F10(uint64_t a1)
{
  v2 = sub_217A66008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AF5F4C(uint64_t a1)
{
  v2 = sub_217A66008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217A65E1C(0, &qword_27CB9F030, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A66008();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217AF6120();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217AF6120()
{
  result = qword_27CB9F038;
  if (!qword_27CB9F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F038);
  }

  return result;
}

unint64_t sub_217AF61A0()
{
  result = qword_27CB9F040;
  if (!qword_27CB9F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F040);
  }

  return result;
}

uint64_t sub_217AF62BC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C34B0);
  __swift_project_value_buffer(v0, qword_2811C34B0);
  return sub_217D8866C();
}

uint64_t GroupExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GroupExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 24);
  sub_217AF6F70(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 24);
  sub_217AF6F70(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 28);
  sub_217AF6F70(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 28);
  sub_217AF6F70(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 32);
  sub_217AF6F70(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 32);
  sub_217AF6F70(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 36);
  sub_217AF6F70(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AF6AC0()
{
  result = qword_2811BD368;
  if (!qword_2811BD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD368);
  }

  return result;
}

unint64_t sub_217AF6B14()
{
  result = qword_2811BD370;
  if (!qword_2811BD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD370);
  }

  return result;
}

uint64_t GroupExposureEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 36);
  sub_217AF6F70(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 40);
  sub_217AF6F70(0, &qword_2811C86C0, sub_217AF6D18, sub_217AF6D6C, &type metadata for GroupSectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AF6D18()
{
  result = qword_2811C5210;
  if (!qword_2811C5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5210);
  }

  return result;
}

unint64_t sub_217AF6D6C()
{
  result = qword_2811C5218;
  if (!qword_2811C5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5218);
  }

  return result;
}

uint64_t GroupExposureEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 40);
  sub_217AF6F70(0, &qword_2811C86C0, sub_217AF6D18, sub_217AF6D6C, &type metadata for GroupSectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 44);
  sub_217AF6F70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AF6F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t GroupExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 44);
  sub_217AF6F70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for GroupExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AF6F70(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217AF6F70(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217AF6F70(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217AF6F70(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217AF6F70(0, &qword_2811C86C0, sub_217AF6D18, sub_217AF6D6C, &type metadata for GroupSectionData);
  (*(*(v17 - 8) + 104))(a1 + v16, v14, v17);
  v18 = v4[11];
  sub_217AF6F70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t sub_217AF74D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t GroupExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 24));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AF7618(v17, &v16);
}

uint64_t GroupExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t GroupExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t GroupExposureEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t GroupExposureEvent.Model.sectionData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 40));
  *a1 = v3;

  return sub_217AF77A0(v3);
}

uint64_t sub_217AF77A0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t GroupExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 44));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 GroupExposureEvent.Model.init(eventData:timedData:groupData:feedData:viewData:tagData:sectionData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a4;
  v16 = *(a4 + 1);
  v15 = *(a4 + 2);
  v17 = a5[1];
  v33 = *(a5 + 8);
  v34 = *a5;
  v35 = a6[1];
  v36 = *a6;
  v37 = *a7;
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for GroupExposureEvent.Model(0);
  v20 = v19[5];
  v21 = sub_217D889CC();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = (a9 + v19[6]);
  v23 = a3[3];
  v22[2] = a3[2];
  v22[3] = v23;
  v24 = a3[1];
  *v22 = *a3;
  v22[1] = v24;
  v25 = a3[8];
  v22[7] = a3[7];
  v22[8] = v25;
  v26 = a3[6];
  v22[5] = a3[5];
  v22[6] = v26;
  v22[4] = a3[4];
  v27 = a9 + v19[7];
  *v27 = v14;
  *(v27 + 8) = v16;
  *(v27 + 16) = v15;
  v28 = a9 + v19[8];
  *v28 = v34;
  *(v28 + 8) = v17;
  *(v28 + 16) = v33;
  v29 = (a9 + v19[9]);
  *v29 = v36;
  v29[1] = v35;
  *(a9 + v19[10]) = v37;
  v30 = a9 + v19[11];
  v31 = *(a8 + 16);
  *v30 = *a8;
  *(v30 + 16) = v31;
  result = *(a8 + 32);
  *(v30 + 32) = result;
  *(v30 + 48) = *(a8 + 48);
  return result;
}

unint64_t sub_217AF79B0()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x446E6F6974636573;
  if (v1 != 6)
  {
    v3 = 0xD000000000000021;
  }

  v4 = 0x6174614477656976;
  if (v1 != 4)
  {
    v4 = 0x61746144676174;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74614470756F7267;
  if (v1 != 2)
  {
    v5 = 0x6174614464656566;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217AF7AB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217AF9568(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217AF7AE8(uint64_t a1)
{
  v2 = sub_217AF80B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AF7B24(uint64_t a1)
{
  v2 = sub_217AF80B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AF8B04(0, &qword_27CB9F048, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v33 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF80B0();
  sub_217D89E7C();
  LOBYTE(v54[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for GroupExposureEvent.Model(0);
    v65 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[5];
    v13 = v11[7];
    v59 = v11[6];
    v60 = v13;
    v14 = v11[7];
    v61 = v11[8];
    v15 = v11[1];
    v16 = v11[3];
    v55 = v11[2];
    v56 = v16;
    v17 = v11[3];
    v18 = v11[5];
    v57 = v11[4];
    v58 = v18;
    v19 = v11[1];
    v54[0] = *v11;
    v54[1] = v19;
    v51 = v59;
    v52 = v14;
    v53 = v11[8];
    v47 = v55;
    v48 = v17;
    v49 = v57;
    v50 = v12;
    v45 = v54[0];
    v46 = v15;
    v64 = 2;
    sub_217AF7618(v54, v44);
    sub_217A5D3B4();
    sub_217D89CAC();
    v44[6] = v51;
    v44[7] = v52;
    v44[8] = v53;
    v44[2] = v47;
    v44[3] = v48;
    v44[4] = v49;
    v44[5] = v50;
    v44[0] = v45;
    v44[1] = v46;
    sub_217AF8104(v44);
    v20 = v3 + v10[7];
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    LOBYTE(v39) = *v20;
    *(&v39 + 1) = v21;
    *&v40 = v22;
    LOBYTE(v35) = 3;
    sub_217A5BA2C();

    sub_217D89CAC();

    v23 = (v3 + v10[8]);
    v24 = *v23;
    v25 = v23[1];
    LOWORD(v23) = *(v23 + 8);
    *&v39 = v24;
    *(&v39 + 1) = v25;
    LOWORD(v40) = v23;
    LOBYTE(v35) = 4;
    sub_217A5E790();

    sub_217D89CAC();

    v26 = (v3 + v10[9]);
    v27 = v26[1];
    *&v39 = *v26;
    *(&v39 + 1) = v27;
    LOBYTE(v35) = 5;
    sub_217AF6B14();

    sub_217D89C3C();

    v43 = *(v3 + v10[10]);
    v63 = 6;
    sub_217AF77A0(v43);
    sub_217AF6D6C();
    sub_217D89C3C();
    sub_217AF8158(v43);
    v29 = (v3 + v10[11]);
    v30 = v29[1];
    v39 = *v29;
    v40 = v30;
    v32 = *v29;
    v31 = v29[1];
    v41 = v29[2];
    v42 = *(v29 + 48);
    v35 = v32;
    v36 = v31;
    v37 = v29[2];
    v38 = *(v29 + 48);
    v62 = 7;
    sub_217ACC004(&v39, v33);
    sub_217A55B98();
    sub_217D89CAC();
    v33[0] = v35;
    v33[1] = v36;
    v33[2] = v37;
    v34 = v38;
    sub_217ACC69C(v33);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217AF80B0()
{
  result = qword_2811C3498;
  if (!qword_2811C3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3498);
  }

  return result;
}

uint64_t sub_217AF8158(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t GroupExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = sub_217D889CC();
  v41 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AF8B04(0, &qword_2811BCA30, MEMORY[0x277D844C8]);
  v42 = v7;
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = type metadata accessor for GroupExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF80B0();
  v43 = v9;
  v13 = v44;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v41;
  v44 = v12;
  LOBYTE(v47) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v15 = v39;
  sub_217D89BCC();
  (*(v38 + 32))(v44, v15, v5);
  LOBYTE(v47) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v16 = v37;
  sub_217D89BCC();
  v39 = 0;
  v17 = v10;
  v18 = *(v10 + 20);
  v19 = v44;
  (*(v14 + 32))(&v44[v18], v4, v16);
  v57 = 2;
  sub_217A5D308();
  sub_217D89BCC();
  v20 = &v19[v17[6]];
  v21 = v54;
  *(v20 + 6) = v53;
  *(v20 + 7) = v21;
  *(v20 + 8) = v55;
  v22 = v50;
  *(v20 + 2) = v49;
  *(v20 + 3) = v22;
  v23 = v52;
  *(v20 + 4) = v51;
  *(v20 + 5) = v23;
  v24 = v48;
  *v20 = v47;
  *(v20 + 1) = v24;
  v56 = 3;
  sub_217A5B978();
  sub_217D89BCC();
  v25 = a1;
  v26 = &v19[v17[7]];
  *v26 = v45[0];
  *(v26 + 8) = *(v45 + 8);
  v56 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  v27 = v40;
  v28 = *(&v45[0] + 1);
  v29 = v45[1];
  v30 = &v19[v17[8]];
  *v30 = *&v45[0];
  *(v30 + 1) = v28;
  *(v30 + 8) = v29;
  v56 = 5;
  sub_217AF6AC0();
  sub_217D89B5C();
  *&v19[v17[9]] = v45[0];
  v56 = 6;
  sub_217AF6D18();
  sub_217D89B5C();
  *&v19[v17[10]] = *&v45[0];
  v56 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v27 + 8))(v43, v42);
  v31 = v44;
  v32 = &v44[v17[11]];
  v33 = v45[1];
  *v32 = v45[0];
  *(v32 + 1) = v33;
  *(v32 + 2) = v45[2];
  v32[48] = v46;
  sub_217AF8B68(v31, v36);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_217AF8BCC(v31);
}

void sub_217AF8B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AF80B0();
    v7 = a3(a1, &type metadata for GroupExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AF8B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AF8BCC(uint64_t a1)
{
  v2 = type metadata accessor for GroupExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AF8D00@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AF6F70(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217AF6F70(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217AF6F70(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217AF6F70(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217AF6F70(0, &qword_2811C86C0, sub_217AF6D18, sub_217AF6D6C, &type metadata for GroupSectionData);
  (*(*(v18 - 8) + 104))(a2 + v17, v15, v18);
  v19 = a1[11];
  sub_217AF6F70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_217AF90CC(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217AF6F70(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217AF6F70(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217AF6F70(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
          if (v5 <= 0x3F)
          {
            sub_217AF6F70(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
            if (v6 <= 0x3F)
            {
              sub_217AF6F70(319, &qword_2811C86C0, sub_217AF6D18, sub_217AF6D6C, &type metadata for GroupSectionData);
              if (v7 <= 0x3F)
              {
                sub_217AF6F70(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                if (v8 <= 0x3F)
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
}

void sub_217AF9358(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD360, &type metadata for TagData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9F050, &type metadata for GroupSectionData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217AF9464()
{
  result = qword_27CB9F058;
  if (!qword_27CB9F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F058);
  }

  return result;
}

unint64_t sub_217AF94BC()
{
  result = qword_2811C3488;
  if (!qword_2811C3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3488);
  }

  return result;
}

unint64_t sub_217AF9514()
{
  result = qword_2811C3490;
  if (!qword_2811C3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3490);
  }

  return result;
}

uint64_t sub_217AF9568(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t PuzzleData.puzzleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleData.puzzleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PuzzleData.puzzleTypeID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PuzzleData.puzzleTypeID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void PuzzleData.progressInfo.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t PuzzleData.progressInfo.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  return result;
}

uint64_t PuzzleData.init(puzzleID:puzzleTypeID:progressInfo:isPaid:difficulty:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  v9 = *(a5 + 1);
  v10 = *(a5 + 16);
  v11 = *(a5 + 3);
  v12 = *(a5 + 32);
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v8;
  *(a8 + 40) = v9;
  *(a8 + 48) = v10;
  *(a8 + 56) = v11;
  *(a8 + 64) = v12;
  *(a8 + 65) = a6;
  *(a8 + 72) = a7;
  return result;
}

uint64_t sub_217AF9A44()
{
  v1 = *v0;
  v2 = 0x4449656C7A7A7570;
  v3 = 0x73736572676F7270;
  v4 = 0x646961507369;
  if (v1 != 3)
  {
    v4 = 0x6C75636966666964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7954656C7A7A7570;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217AF9AF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217AFA4A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217AF9B24(uint64_t a1)
{
  v2 = sub_217AF9DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AF9B60(uint64_t a1)
{
  v2 = sub_217AF9DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleData.encode(to:)(void *a1)
{
  sub_217AFA290(0, &qword_2811BC890, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = v8;
  v30 = *(v1 + 32);
  v21 = *(v1 + 40);
  v20 = *(v1 + 48);
  v19 = *(v1 + 56);
  LODWORD(v8) = *(v1 + 64);
  v17 = *(v1 + 65);
  v18 = v8;
  v16[1] = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF9DFC();
  v9 = v4;
  sub_217D89E7C();
  LOBYTE(v25) = 0;
  v10 = v24;
  sub_217D89C6C();
  if (!v10)
  {
    v11 = v19;
    v12 = v20;
    v13 = v21;
    v14 = v30;
    LOBYTE(v25) = 1;
    sub_217D89C6C();
    v25 = v14;
    v26 = v13;
    v27 = v12;
    v28 = v11;
    v29 = v18;
    v31 = 2;
    sub_217ADC5EC();
    sub_217D89CAC();
    LOBYTE(v25) = 3;
    sub_217D89C7C();
    LOBYTE(v25) = 4;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v7, v9);
}

unint64_t sub_217AF9DFC()
{
  result = qword_2811C7F48;
  if (!qword_2811C7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F48);
  }

  return result;
}

uint64_t PuzzleData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217AFA290(0, &qword_27CB9F060, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF9DFC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36) = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v55 = v10;
  LOBYTE(v36) = 1;
  v13 = sub_217D89B8C();
  *(&v30 + 1) = v14;
  *&v30 = v13;
  LOBYTE(v31) = 2;
  sub_217ADC594();
  sub_217D89BCC();
  v29 = v36;
  v28 = v37;
  v27 = *(&v38 + 1);
  v54 = v38;
  v52 = v39;
  LOBYTE(v36) = 3;
  v26 = sub_217D89B9C();
  v49 = 4;
  v15 = sub_217D89BEC();
  v16 = v26 & 1;
  v17 = *(v7 + 8);
  v25 = v15;
  v17(v9, v6);
  *&v31 = v55;
  *(&v31 + 1) = v12;
  v32 = v30;
  LODWORD(v33) = v29;
  *(&v33 + 1) = v28;
  v26 = v54;
  LOBYTE(v34) = v54;
  *(&v34 + 1) = *v53;
  DWORD1(v34) = *&v53[3];
  v18 = v27;
  *(&v34 + 1) = v27;
  v19 = v52;
  LOBYTE(v35) = v52;
  BYTE1(v35) = v16;
  *(&v35 + 2) = v50;
  WORD3(v35) = v51;
  v20 = v25;
  *(&v35 + 1) = v25;
  v21 = v34;
  a2[2] = v33;
  a2[3] = v21;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  a2[4] = v35;
  sub_217AD85B8(&v31, &v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36 = v55;
  v37 = v12;
  v38 = v30;
  v39 = v29;
  v40 = v28;
  v41 = v26;
  *v42 = *v53;
  *&v42[3] = *&v53[3];
  v43 = v18;
  v44 = v19;
  v45 = v16;
  v46 = v50;
  v47 = v51;
  v48 = v20;
  return sub_217AD9650(&v36);
}

void sub_217AFA290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AF9DFC();
    v7 = a3(a1, &type metadata for PuzzleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_217AFA348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

unint64_t sub_217AFA3A4()
{
  result = qword_27CB9F068;
  if (!qword_27CB9F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F068);
  }

  return result;
}

unint64_t sub_217AFA3FC()
{
  result = qword_2811C7F38;
  if (!qword_2811C7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F38);
  }

  return result;
}

unint64_t sub_217AFA454()
{
  result = qword_2811C7F40;
  if (!qword_2811C7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F40);
  }

  return result;
}

uint64_t sub_217AFA4A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C7A7A7570 && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954656C7A7A7570 && a2 == 0xEC00000044496570 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEC0000006F666E49 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C75636966666964 && a2 == 0xEA00000000007974)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_217AFA72C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C02A8);
  __swift_project_value_buffer(v0, qword_2811C02A8);
  return sub_217D8866C();
}

uint64_t TodayFeedPoolLoadEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TodayFeedPoolLoadEvent.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 20);
  sub_217AFB1E8(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayFeedPoolLoadEvent.feedConfigData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 20);
  sub_217AFB1E8(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayFeedPoolLoadEvent.poolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 24);
  sub_217AFB1E8(0, &qword_2811C8660, sub_217AFAAE0, sub_217AFAB34, &type metadata for TodayFeedPoolData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AFAAE0()
{
  result = qword_2811C42E0;
  if (!qword_2811C42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42E0);
  }

  return result;
}

unint64_t sub_217AFAB34()
{
  result = qword_2811C42E8;
  if (!qword_2811C42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42E8);
  }

  return result;
}

uint64_t TodayFeedPoolLoadEvent.poolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 24);
  sub_217AFB1E8(0, &qword_2811C8660, sub_217AFAAE0, sub_217AFAB34, &type metadata for TodayFeedPoolData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayFeedPoolLoadEvent.myArticlesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 28);
  sub_217AFB1E8(0, &qword_2811C8538, sub_217AFAD38, sub_217AFAD8C, &type metadata for TodayFeedPoolMyArticlesData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AFAD38()
{
  result = qword_2811BEBB8;
  if (!qword_2811BEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEBB8);
  }

  return result;
}

unint64_t sub_217AFAD8C()
{
  result = qword_2811BEBC0;
  if (!qword_2811BEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEBC0);
  }

  return result;
}

uint64_t TodayFeedPoolLoadEvent.myArticlesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 28);
  sub_217AFB1E8(0, &qword_2811C8538, sub_217AFAD38, sub_217AFAD8C, &type metadata for TodayFeedPoolMyArticlesData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayFeedPoolLoadEvent.groupingInventoryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 32);
  sub_217AFB1E8(0, &qword_2811C85B8, sub_217AFAF90, sub_217AFAFE4, &type metadata for GroupingInventoryData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AFAF90()
{
  result = qword_2811C1270;
  if (!qword_2811C1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1270);
  }

  return result;
}

unint64_t sub_217AFAFE4()
{
  result = qword_2811C1278;
  if (!qword_2811C1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1278);
  }

  return result;
}

uint64_t TodayFeedPoolLoadEvent.groupingInventoryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 32);
  sub_217AFB1E8(0, &qword_2811C85B8, sub_217AFAF90, sub_217AFAFE4, &type metadata for GroupingInventoryData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayFeedPoolLoadEvent.articleScoreSummaryDataList.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 36);
  sub_217AFB1E8(0, &qword_2811C8540, sub_217AFB264, sub_217AFB2B8, &type metadata for ArticleScoreSummaryDataList);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AFB1E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AFB264()
{
  result = qword_2811BEDC8;
  if (!qword_2811BEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEDC8);
  }

  return result;
}

unint64_t sub_217AFB2B8()
{
  result = qword_2811BEDD0;
  if (!qword_2811BEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEDD0);
  }

  return result;
}

uint64_t TodayFeedPoolLoadEvent.articleScoreSummaryDataList.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayFeedPoolLoadEvent(0) + 36);
  sub_217AFB1E8(0, &qword_2811C8540, sub_217AFB264, sub_217AFB2B8, &type metadata for ArticleScoreSummaryDataList);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayFeedPoolLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for TodayFeedPoolLoadEvent(0);
  v5 = Event[5];
  sub_217AFB1E8(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  sub_217AFB1E8(0, &qword_2811C8660, sub_217AFAAE0, sub_217AFAB34, &type metadata for TodayFeedPoolData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = Event[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217AFB1E8(0, &qword_2811C8538, sub_217AFAD38, sub_217AFAD8C, &type metadata for TodayFeedPoolMyArticlesData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = Event[8];
  sub_217AFB1E8(0, &qword_2811C85B8, sub_217AFAF90, sub_217AFAFE4, &type metadata for GroupingInventoryData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = Event[9];
  sub_217AFB1E8(0, &qword_2811C8540, sub_217AFB264, sub_217AFB2B8, &type metadata for ArticleScoreSummaryDataList);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v10, v15);
}

uint64_t TodayFeedPoolLoadEvent.Model.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TodayFeedPoolLoadEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t TodayFeedPoolLoadEvent.Model.poolData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TodayFeedPoolLoadEvent.Model(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t TodayFeedPoolLoadEvent.Model.myArticlesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TodayFeedPoolLoadEvent.Model(0) + 28));
  v4 = v3[2];
  v6 = v3[4];
  v15 = v3[3];
  v5 = v15;
  v16 = v6;
  v17 = *(v3 + 10);
  v7 = v17;
  v9 = *v3;
  v13 = v3[1];
  v8 = v13;
  v14 = v4;
  v12 = v9;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v9;
  *(a1 + 16) = v8;
  return sub_217AFB84C(&v12, v11);
}

uint64_t sub_217AFB84C(uint64_t a1, uint64_t a2)
{
  sub_217A5E974(0, &qword_27CB9F070, &type metadata for TodayFeedPoolMyArticlesData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TodayFeedPoolLoadEvent.Model.groupingInventoryData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TodayFeedPoolLoadEvent.Model(0) + 32));
}

uint64_t TodayFeedPoolLoadEvent.Model.articleScoreSummaryDataList.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TodayFeedPoolLoadEvent.Model(0) + 36));
}

__n128 TodayFeedPoolLoadEvent.Model.init(eventData:feedConfigData:poolData:myArticlesData:groupingInventoryData:articleScoreSummaryDataList:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);
  v25 = *(a2 + 3);
  v13 = a2[5];
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *a5;
  v26 = *a6;
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for TodayFeedPoolLoadEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v10;
  *(v19 + 8) = v11;
  *(v19 + 16) = v12;
  *(v19 + 24) = v25;
  *(v19 + 40) = v13;
  v20 = a7 + v18[6];
  *v20 = v14;
  *(v20 + 8) = v15;
  v21 = a7 + v18[7];
  v22 = *(a4 + 48);
  *(v21 + 32) = *(a4 + 32);
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a4 + 64);
  *(v21 + 80) = *(a4 + 80);
  result = *a4;
  v24 = *(a4 + 16);
  *v21 = *a4;
  *(v21 + 16) = v24;
  *(a7 + v18[8]) = v16;
  *(a7 + v18[9]) = v26;
  return result;
}

uint64_t sub_217AFBA6C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6C6369747241796DLL;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x666E6F4364656566;
  if (v1 != 1)
  {
    v5 = 0x617461446C6F6F70;
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

uint64_t sub_217AFBB4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217AFCFCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217AFBB80(uint64_t a1)
{
  v2 = sub_217AFBFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AFBBBC(uint64_t a1)
{
  v2 = sub_217AFBFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TodayFeedPoolLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AFC68C(0, &qword_27CB9F078, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AFBFF0();
  sub_217D89E7C();
  LOBYTE(v34) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for TodayFeedPoolLoadEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 40);
    *&v34 = *v11;
    *(&v34 + 1) = v12;
    LOBYTE(v35[0]) = v13;
    *(v35 + 8) = *(v11 + 24);
    *(&v35[1] + 1) = v14;
    LOBYTE(v28) = 1;
    sub_217A6088C();

    sub_217D89CAC();

    v15 = (v3 + v10[6]);
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    v38 = v16;
    v39 = v15;
    v37 = 2;
    sub_217AFAB34();
    sub_217D89CAC();
    v17 = (v3 + v10[7]);
    v18 = v17[3];
    v19 = v17[1];
    v35[1] = v17[2];
    v35[2] = v18;
    v20 = v17[3];
    v35[3] = v17[4];
    v21 = v17[1];
    v34 = *v17;
    v35[0] = v21;
    v30 = v35[1];
    v31 = v20;
    v32 = v17[4];
    v36 = *(v17 + 10);
    v33 = *(v17 + 10);
    v28 = v34;
    v29 = v19;
    v27 = 3;
    sub_217AFB84C(&v34, v25);
    sub_217AFAD8C();
    sub_217D89C3C();
    v25[2] = v30;
    v25[3] = v31;
    v25[4] = v32;
    v26 = v33;
    v25[0] = v28;
    v25[1] = v29;
    sub_217AFC044(v25);
    v24 = *(v3 + v10[8]);
    HIBYTE(v23) = 4;
    sub_217AFAFE4();

    sub_217D89C3C();

    v24 = *(v3 + v10[9]);
    HIBYTE(v23) = 5;
    sub_217AFB2B8();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217AFBFF0()
{
  result = qword_27CB9F080;
  if (!qword_27CB9F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F080);
  }

  return result;
}

uint64_t sub_217AFC044(uint64_t a1)
{
  sub_217A5E974(0, &qword_27CB9F070, &type metadata for TodayFeedPoolMyArticlesData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TodayFeedPoolLoadEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_217D8899C();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AFC68C(0, &qword_27CB9F088, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = type metadata accessor for TodayFeedPoolLoadEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AFBFF0();
  v34 = v9;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v12;
  LOBYTE(v36) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v31;
  v16 = v32;
  sub_217D89BCC();
  (*(v30 + 32))(v14, v15, v4);
  LOBYTE(v35) = 1;
  sub_217A60838();
  sub_217D89BCC();
  v17 = v37[0];
  v18 = *&v37[24];
  v19 = v14 + v10[5];
  *v19 = v36;
  *(v19 + 16) = v17;
  *(v19 + 24) = *&v37[8];
  *(v19 + 40) = v18;
  LOBYTE(v35) = 2;
  sub_217AFAAE0();
  sub_217D89BCC();
  v20 = v13;
  v21 = BYTE8(v36);
  v22 = v14 + v10[6];
  *v22 = v36;
  *(v22 + 8) = v21;
  v42 = 3;
  sub_217AFAD38();
  sub_217D89B5C();
  v23 = v33;
  v24 = v14 + v10[7];
  v25 = v38;
  *(v24 + 32) = *&v37[16];
  *(v24 + 48) = v25;
  *(v24 + 64) = v39;
  *(v24 + 80) = v40;
  v26 = *v37;
  *v24 = v36;
  *(v24 + 16) = v26;
  v41 = 4;
  sub_217AFAF90();
  sub_217D89B5C();
  *(v14 + v10[8]) = v35;
  v41 = 5;
  sub_217AFB264();
  sub_217D89B5C();
  (*(v23 + 8))(v34, v16);
  *(v14 + v10[9]) = v35;
  sub_217AFC6F0(v14, v29);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_217AFC754(v14);
}

void sub_217AFC68C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AFBFF0();
    v7 = a3(a1, &type metadata for TodayFeedPoolLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AFC6F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedPoolLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AFC754(uint64_t a1)
{
  v2 = type metadata accessor for TodayFeedPoolLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AFC888@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217AFB1E8(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AFB1E8(0, &qword_2811C8660, sub_217AFAAE0, sub_217AFAB34, &type metadata for TodayFeedPoolData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217AFB1E8(0, &qword_2811C8538, sub_217AFAD38, sub_217AFAD8C, &type metadata for TodayFeedPoolMyArticlesData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217AFB1E8(0, &qword_2811C85B8, sub_217AFAF90, sub_217AFAFE4, &type metadata for GroupingInventoryData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217AFB1E8(0, &qword_2811C8540, sub_217AFB264, sub_217AFB2B8, &type metadata for ArticleScoreSummaryDataList);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v11, v16);
}

void sub_217AFCB94(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217AFB1E8(319, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
    if (v2 <= 0x3F)
    {
      sub_217AFB1E8(319, &qword_2811C8660, sub_217AFAAE0, sub_217AFAB34, &type metadata for TodayFeedPoolData);
      if (v3 <= 0x3F)
      {
        sub_217AFB1E8(319, &qword_2811C8538, sub_217AFAD38, sub_217AFAD8C, &type metadata for TodayFeedPoolMyArticlesData);
        if (v4 <= 0x3F)
        {
          sub_217AFB1E8(319, &qword_2811C85B8, sub_217AFAF90, sub_217AFAFE4, &type metadata for GroupingInventoryData);
          if (v5 <= 0x3F)
          {
            sub_217AFB1E8(319, &qword_2811C8540, sub_217AFB264, sub_217AFB2B8, &type metadata for ArticleScoreSummaryDataList);
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

void sub_217AFCDB8(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CB9F070, &type metadata for TodayFeedPoolMyArticlesData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9F0A0, &type metadata for GroupingInventoryData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9F0A8, &type metadata for ArticleScoreSummaryDataList);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217AFCEC8()
{
  result = qword_27CB9F0B0;
  if (!qword_27CB9F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F0B0);
  }

  return result;
}

unint64_t sub_217AFCF20()
{
  result = qword_27CB9F0B8;
  if (!qword_27CB9F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F0B8);
  }

  return result;
}

unint64_t sub_217AFCF78()
{
  result = qword_27CB9F0C0;
  if (!qword_27CB9F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F0C0);
  }

  return result;
}

uint64_t sub_217AFCFCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666E6F4364656566 && a2 == 0xEE00617461446769 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461446C6F6F70 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6369747241796DLL && a2 == 0xEE00617461447365 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCD6E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DCD700 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

NewsAnalytics::SubscribeButtonLocation_optional __swiftcall SubscribeButtonLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SubscribeButtonLocation.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x656C6369747261;
      break;
    case 2:
      result = 0x466C656E6E616863;
      break;
    case 3:
      result = 0x50676E69646E616CLL;
      break;
    case 4:
      result = 0x656E697A6167616DLL;
      break;
    case 5:
      result = 0x434F546575737369;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6565466F69647561;
      break;
    case 8:
      result = 0x6575737349666470;
      break;
    case 9:
      result = 0x656C7A7A7570;
      break;
    case 0xA:
      result = 0x73614D7961646F74;
      break;
    case 0xB:
      result = 0x657069636572;
      break;
    case 0xC:
      result = 0x627548646F6F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217AFD3B4()
{
  v0 = SubscribeButtonLocation.rawValue.getter();
  v2 = v1;
  if (v0 == SubscribeButtonLocation.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217D89D4C();
  }

  return v5 & 1;
}

unint64_t sub_217AFD454()
{
  result = qword_27CB9F0C8;
  if (!qword_27CB9F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F0C8);
  }

  return result;
}

uint64_t sub_217AFD4A8()
{
  sub_217D89E1C();
  SubscribeButtonLocation.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217AFD510(uint64_t a1)
{
  SubscribeButtonLocation.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217AFD574(uint64_t a1)
{
  sub_217D89E1C();
  SubscribeButtonLocation.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217AFD5E4@<X0>(unint64_t *a1@<X8>)
{
  result = SubscribeButtonLocation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SubscribeButtonLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubscribeButtonLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217AFD80C()
{
  result = qword_2811BFCD0;
  if (!qword_2811BFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BFCD0);
  }

  return result;
}

uint64_t sub_217AFD8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E69776F6C6C6F66 && a2 == 0xED00006570795467)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217AFD960(uint64_t a1)
{
  v2 = sub_217AFDB34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AFD99C(uint64_t a1)
{
  v2 = sub_217AFDB34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FollowingData.encode(to:)(void *a1)
{
  sub_217AFDD74(0, &qword_2811BC7D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AFDB34();
  sub_217D89E7C();
  v11 = v8;
  sub_217AFDB88();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217AFDB34()
{
  result = qword_2811C72E8[0];
  if (!qword_2811C72E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C72E8);
  }

  return result;
}

unint64_t sub_217AFDB88()
{
  result = qword_2811C72C0;
  if (!qword_2811C72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72C0);
  }

  return result;
}

uint64_t FollowingData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217AFDD74(0, &qword_2811BCAE0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AFDB34();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217AFDDD8();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217AFDD74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AFDB34();
    v7 = a3(a1, &type metadata for FollowingData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AFDDD8()
{
  result = qword_2811C72B0;
  if (!qword_2811C72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72B0);
  }

  return result;
}

unint64_t sub_217AFDE70()
{
  result = qword_27CB9F0D0;
  if (!qword_27CB9F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F0D0);
  }

  return result;
}

unint64_t sub_217AFDEC8()
{
  result = qword_2811C72D8;
  if (!qword_2811C72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72D8);
  }

  return result;
}

unint64_t sub_217AFDF20()
{
  result = qword_2811C72E0;
  if (!qword_2811C72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72E0);
  }

  return result;
}

uint64_t sub_217AFE03C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BED60);
  __swift_project_value_buffer(v0, qword_2811BED60);
  return sub_217D8866C();
}

uint64_t JourneyMessageExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t JourneyMessageExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 24);
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 24);
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 28);
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 28);
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 32);
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageExposureEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 32);
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 36);
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 36);
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.dialogStyleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 40);
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AFE9F0()
{
  result = qword_2811C68E8;
  if (!qword_2811C68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C68E8);
  }

  return result;
}

unint64_t sub_217AFEA44()
{
  result = qword_2811C68F0;
  if (!qword_2811C68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C68F0);
  }

  return result;
}

uint64_t JourneyMessageExposureEvent.dialogStyleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 40);
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 44);
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AFEC48()
{
  result = qword_2811C1EB8;
  if (!qword_2811C1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1EB8);
  }

  return result;
}

unint64_t sub_217AFEC9C()
{
  result = qword_2811C1EC0;
  if (!qword_2811C1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1EC0);
  }

  return result;
}

uint64_t JourneyMessageExposureEvent.placementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 44);
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 48);
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 48);
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.engagementPlacementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 52);
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AFF050()
{
  result = qword_2811BDCA8;
  if (!qword_2811BDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCA8);
  }

  return result;
}

unint64_t sub_217AFF0A4()
{
  result = qword_2811BDCB0;
  if (!qword_2811BDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCB0);
  }

  return result;
}

uint64_t JourneyMessageExposureEvent.engagementPlacementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 52);
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 56);
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AFF2A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AFF324()
{
  result = qword_2811C7940;
  if (!qword_2811C7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7940);
  }

  return result;
}

unint64_t sub_217AFF378()
{
  result = qword_2811C7948;
  if (!qword_2811C7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7948);
  }

  return result;
}

uint64_t JourneyMessageExposureEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageExposureEvent(0) + 56);
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for JourneyMessageExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

uint64_t sub_217AFFA20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t JourneyMessageExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t JourneyMessageExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 28);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AFFBC0(v17, v16);
}

uint64_t sub_217AFFBC0(uint64_t a1, uint64_t a2)
{
  sub_217A5E974(0, &qword_2811C7DB8, &type metadata for ArticleData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t JourneyMessageExposureEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t JourneyMessageExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t JourneyMessageExposureEvent.Model.dialogStyleData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t JourneyMessageExposureEvent.Model.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t JourneyMessageExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 48);
  v11 = *(v3 + 48);
  v4 = v11;
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v10 = *(v3 + 32);
  v6 = v10;
  *a1 = v9[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;
  return sub_217ACC004(v9, v8);
}

uint64_t JourneyMessageExposureEvent.Model.engagementPlacementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t JourneyMessageExposureEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageExposureEvent.Model(0) + 56));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 JourneyMessageExposureEvent.Model.init(eventData:timedData:viewData:articleData:tagData:feedData:dialogStyleData:placementData:userBundleSubscriptionContextData:engagementPlacementOriginationData:purchaseData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t *a12)
{
  v17 = *a3;
  v18 = a3[1];
  v19 = *(a3 + 8);
  v20 = a5[1];
  v42 = *a6;
  v40 = *a5;
  v41 = *(a6 + 2);
  v43 = *a7;
  v44 = a8[1];
  v45 = *a8;
  v46 = *a11;
  v49 = *a12;
  v48 = a12[1];
  v47 = *(a12 + 16);
  v21 = sub_217D8899C();
  v38 = *(a8 + 2);
  v39 = *(a8 + 1);
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for JourneyMessageExposureEvent.Model(0);
  v23 = v22[5];
  v24 = sub_217D889CC();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = a9 + v22[6];
  *v25 = v17;
  *(v25 + 8) = v18;
  *(v25 + 16) = v19;
  v26 = a9 + v22[7];
  v27 = *(a4 + 48);
  *(v26 + 32) = *(a4 + 32);
  *(v26 + 48) = v27;
  v28 = *(a4 + 16);
  *v26 = *a4;
  *(v26 + 16) = v28;
  *(v26 + 127) = *(a4 + 127);
  v29 = *(a4 + 112);
  *(v26 + 96) = *(a4 + 96);
  *(v26 + 112) = v29;
  v30 = *(a4 + 80);
  *(v26 + 64) = *(a4 + 64);
  *(v26 + 80) = v30;
  v31 = (a9 + v22[8]);
  *v31 = v40;
  v31[1] = v20;
  v32 = a9 + v22[9];
  *v32 = v42;
  *(v32 + 16) = v41;
  *(a9 + v22[10]) = v43;
  v33 = a9 + v22[11];
  *v33 = v45;
  *(v33 + 8) = v44;
  *(v33 + 16) = v39;
  *(v33 + 32) = v38;
  v34 = a9 + v22[12];
  v35 = *(a10 + 16);
  *v34 = *a10;
  *(v34 + 16) = v35;
  result = *(a10 + 32);
  *(v34 + 32) = result;
  *(v34 + 48) = *(a10 + 48);
  *(a9 + v22[13]) = v46;
  v37 = a9 + v22[14];
  *v37 = v49;
  *(v37 + 8) = v48;
  *(v37 + 16) = v47;
  return result;
}

unint64_t sub_217B00068(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x6174614477656976;
    v8 = 0x44656C6369747261;
    if (a1 != 3)
    {
      v8 = 0x61746144676174;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x74614464656D6974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000021;
    v2 = 0x6573616863727570;
    if (a1 == 9)
    {
      v2 = 0xD000000000000022;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6174614464656566;
    v4 = 0x7453676F6C616964;
    if (a1 != 6)
    {
      v4 = 0x6E656D6563616C70;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217B001F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B022FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B0021C(uint64_t a1)
{
  v2 = sub_217B0098C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B00258(uint64_t a1)
{
  v2 = sub_217B0098C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyMessageExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B015C8(0, &qword_27CB9F0D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v40 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B0098C();
  sub_217D89E7C();
  LOBYTE(v74[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for JourneyMessageExposureEvent.Model(0);
    LOBYTE(v74[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + *(v10 + 24));
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v82 = v12;
    v83 = v13;
    v84 = v11;
    v81 = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v85 = v10;
    v14 = v3 + *(v10 + 28);
    v15 = *(v14 + 96);
    v16 = *(v14 + 64);
    v78 = *(v14 + 80);
    v79 = v15;
    v17 = *(v14 + 96);
    *v80 = *(v14 + 112);
    v18 = *(v14 + 16);
    v19 = *(v14 + 48);
    v75 = *(v14 + 32);
    v76 = v19;
    v20 = *(v14 + 48);
    v77 = *(v14 + 64);
    v21 = *(v14 + 16);
    v74[0] = *v14;
    v74[1] = v21;
    v71 = v78;
    v72 = v17;
    v73[0] = *(v14 + 112);
    v68 = v75;
    v69 = v20;
    v70 = v16;
    *&v80[15] = *(v14 + 127);
    *(v73 + 15) = *(v14 + 127);
    v66 = v74[0];
    v67 = v18;
    v65 = 3;
    sub_217AFFBC0(v74, v63);
    sub_217ACF52C();
    sub_217D89C3C();
    v63[6] = v72;
    *v64 = v73[0];
    *&v64[15] = *(v73 + 15);
    v63[2] = v68;
    v63[3] = v69;
    v63[4] = v70;
    v63[5] = v71;
    v63[0] = v66;
    v63[1] = v67;
    sub_217B009E0(v63);
    v23 = v85;
    v24 = (v3 + v85[8]);
    v25 = v24[1];
    *&v53 = *v24;
    *(&v53 + 1) = v25;
    LOBYTE(v49) = 4;
    sub_217AF6B14();

    sub_217D89C3C();

    v26 = (v3 + v23[9]);
    v27 = v26[1];
    v28 = v26[2];
    *&v53 = *v26;
    *(&v53 + 1) = v27;
    *&v54 = v28;
    LOBYTE(v49) = 5;
    sub_217AD1A68(v53, v27, v28);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v53, *(&v53 + 1), v54);
    LOBYTE(v53) = *(v3 + v23[10]);
    LOBYTE(v49) = 6;
    sub_217AFEA44();
    sub_217D89CAC();
    v29 = (v3 + v23[11]);
    v30 = v29[1];
    v31 = v29[2];
    v32 = v29[5];
    v58 = *v29;
    v59 = v30;
    v61 = *(v29 + 3);
    v60 = v31;
    v62 = v32;
    v57 = 7;
    v40[1] = v61;
    v41 = v32;
    sub_217AFEC9C();

    sub_217D89CAC();
    v41 = v62;

    v33 = (v3 + v23[12]);
    v34 = v33[1];
    v53 = *v33;
    v54 = v34;
    v36 = *v33;
    v35 = v33[1];
    v55 = v33[2];
    v56 = *(v33 + 48);
    v49 = v36;
    v50 = v35;
    v51 = v33[2];
    v52 = *(v33 + 48);
    v48 = 8;
    sub_217ACC004(&v53, v46);
    sub_217A55B98();
    sub_217D89CAC();
    v46[0] = v49;
    v46[1] = v50;
    v46[2] = v51;
    v47 = v52;
    sub_217ACC69C(v46);
    LOBYTE(v42) = *(v3 + v23[13]);
    v45 = 9;
    sub_217AFF0A4();
    sub_217D89C3C();
    v37 = (v3 + v23[14]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v37) = *(v37 + 16);
    v42 = v38;
    v43 = v39;
    v44 = v37;
    v45 = 10;
    sub_217AFF378();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B0098C()
{
  result = qword_27CB9F0E0;
  if (!qword_27CB9F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F0E0);
  }

  return result;
}

uint64_t sub_217B009E0(uint64_t a1)
{
  sub_217A5E974(0, &qword_2811C7DB8, &type metadata for ArticleData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t JourneyMessageExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_217D889CC();
  v44 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B015C8(0, &qword_27CB9F0E8, MEMORY[0x277D844C8]);
  v48 = v8;
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v40 - v9;
  v11 = type metadata accessor for JourneyMessageExposureEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_217B0098C();
  v49 = v10;
  v15 = v50;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v16 = v46;
  v41 = v3;
  v42 = v11;
  v50 = v13;
  LOBYTE(v60) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v17 = v47;
  sub_217D89BCC();
  v18 = v50;
  (*(v45 + 32))(v50, v17, v6);
  LOBYTE(v60) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v19 = v41;
  sub_217D89BCC();
  v40[1] = v6;
  v47 = 0;
  v20 = v42;
  (*(v44 + 32))(&v18[v42[5]], v5, v19);
  LOBYTE(v55) = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v21 = *(&v60 + 1);
  v22 = v61;
  v23 = &v18[v20[6]];
  *v23 = v60;
  *(v23 + 1) = v21;
  *(v23 + 8) = v22;
  v59 = 3;
  sub_217ACF4D8();
  sub_217D89B5C();
  v24 = &v18[v20[7]];
  v25 = *v67;
  *(v24 + 6) = v66;
  *(v24 + 7) = v25;
  *(v24 + 127) = *&v67[15];
  v26 = v63;
  *(v24 + 2) = v62;
  *(v24 + 3) = v26;
  v27 = v65;
  *(v24 + 4) = v64;
  *(v24 + 5) = v27;
  v28 = v61;
  *v24 = v60;
  *(v24 + 1) = v28;
  LOBYTE(v51) = 4;
  sub_217AF6AC0();
  sub_217D89B5C();
  *&v18[v20[8]] = v55;
  LOBYTE(v51) = 5;
  sub_217A5B978();
  sub_217D89B5C();
  v29 = v56;
  v30 = &v18[v20[9]];
  *v30 = v55;
  *(v30 + 2) = v29;
  LOBYTE(v51) = 6;
  sub_217AFE9F0();
  sub_217D89BCC();
  v18[v20[10]] = v55;
  LOBYTE(v51) = 7;
  sub_217AFEC48();
  sub_217D89BCC();
  v31 = *(&v55 + 1);
  v32 = &v50[v42[11]];
  *v32 = v55;
  *(v32 + 1) = v31;
  v33 = v57;
  *(v32 + 1) = v56;
  *(v32 + 2) = v33;
  v54 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v34 = &v50[v42[12]];
  v35 = v56;
  *v34 = v55;
  *(v34 + 1) = v35;
  *(v34 + 2) = v57;
  v34[48] = v58;
  v53 = 9;
  sub_217AFF050();
  sub_217D89B5C();
  v50[v42[13]] = v51;
  v53 = 10;
  sub_217AFF324();
  sub_217D89B5C();
  (*(v16 + 8))(v49, v48);
  v36 = v52;
  v37 = v50;
  v38 = &v50[v42[14]];
  *v38 = v51;
  v38[16] = v36;
  sub_217B0162C(v37, v43);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return sub_217B01690(v37);
}

void sub_217B015C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B0098C();
    v7 = a3(a1, &type metadata for JourneyMessageExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B0162C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JourneyMessageExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B01690(uint64_t a1)
{
  v2 = type metadata accessor for JourneyMessageExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B017C4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v11, v26);
}

void sub_217B01CF8(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217AFF2A8(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_217AFF2A8(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
        if (v4 <= 0x3F)
        {
          sub_217AFF2A8(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
          if (v5 <= 0x3F)
          {
            sub_217AFF2A8(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
            if (v6 <= 0x3F)
            {
              sub_217AFF2A8(319, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
              if (v7 <= 0x3F)
              {
                sub_217AFF2A8(319, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
                if (v8 <= 0x3F)
                {
                  sub_217AFF2A8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_217AFF2A8(319, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
                    if (v10 <= 0x3F)
                    {
                      sub_217AFF2A8(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
                      if (v11 <= 0x3F)
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
      }
    }
  }
}

void sub_217B02074(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7DB8, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD360, &type metadata for TagData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CB9F100, &type metadata for EngagementPlacementOriginationData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_27CB9F108, &type metadata for PurchaseData);
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

unint64_t sub_217B021F8()
{
  result = qword_27CB9F110;
  if (!qword_27CB9F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F110);
  }

  return result;
}

unint64_t sub_217B02250()
{
  result = qword_27CB9F118;
  if (!qword_27CB9F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F118);
  }

  return result;
}

unint64_t sub_217B022A8()
{
  result = qword_27CB9F120;
  if (!qword_27CB9F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F120);
  }

  return result;
}

uint64_t sub_217B022FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7453676F6C616964 && a2 == 0xEF61746144656C79 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000217DCD720 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144)
  {

    return 10;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

id SessionObserver.configurationManagerScienceExperimentFieldsDidChange(_:)(void *a1)
{
  result = [a1 configuration];
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v3;
    v5 = v1;
    swift_unknownObjectRetain();
    sub_217D8833C();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B02908()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F1C0);
  __swift_project_value_buffer(v0, qword_27CB9F1C0);
  return sub_217D8866C();
}

uint64_t MediaViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 24);
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 24);
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 28);
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 28);
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 32);
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 32);
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 36);
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 36);
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 40);
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 40);
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 44);
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 44);
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 48);
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 48);
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 52);
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820, &type metadata for GalleryData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B037CC()
{
  result = qword_2811C7D38;
  if (!qword_2811C7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D38);
  }

  return result;
}

unint64_t sub_217B03820()
{
  result = qword_2811C7D40;
  if (!qword_2811C7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D40);
  }

  return result;
}

uint64_t MediaViewEvent.galleryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 52);
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820, &type metadata for GalleryData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 56);
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 56);
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 60);
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 60);
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 64);
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B03D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t MediaViewEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 64);
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaViewEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820, &type metadata for GalleryData);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v27 - 8) + 104))(a1 + v26, v12, v27);
  v28 = v4[16];
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v30 = *(*(v29 - 8) + 104);

  return v30(a1 + v28, v12, v29);
}

uint64_t sub_217B04544@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t MediaViewEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t MediaViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t MediaViewEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178, &type metadata for GroupData);
}

uint64_t MediaViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t MediaViewEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 40));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t MediaViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaViewEvent.Model.anfComponentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 48));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v5 = v3[3];
  v10 = v3[2];
  v6 = v10;
  v11 = v5;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return sub_217AE38AC(v9, &v8, &qword_27CB9ECA0, &type metadata for ANFComponentData);
}

uint64_t MediaViewEvent.Model.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 52);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t MediaViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 56);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

void MediaViewEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 60));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t MediaViewEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 64));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 MediaViewEvent.Model.init(eventData:timedData:articleData:channelData:groupData:feedData:mediaData:viewData:anfComponentData:galleryData:userBundleSubscriptionContextData:issueData:issueViewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, __int128 *a11, uint64_t a12, __n128 *a13, uint64_t *a14)
{
  v19 = *a4;
  v20 = a4[1];
  v50 = *(a4 + 17);
  v51 = *(a4 + 16);
  v48 = a4[4];
  v49 = a4[3];
  v53 = *a6;
  v52 = *(a6 + 2);
  v57 = *(a7 + 1);
  v56 = *(a7 + 2);
  v55 = *(a7 + 6);
  v54 = a7[28];
  v61 = *a8;
  v60 = a8[1];
  v58 = *a7;
  v59 = *(a8 + 8);
  v65 = *a11;
  v64 = *(a11 + 2);
  v63 = *(a11 + 6);
  v67 = a14[1];
  v68 = *a14;
  v21 = sub_217D8899C();
  v66 = *a13;
  v62 = a13[1];
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for MediaViewEvent.Model(0);
  v23 = v22[5];
  v24 = sub_217D889CC();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = a9 + v22[6];
  v26 = *(a3 + 48);
  *(v25 + 32) = *(a3 + 32);
  *(v25 + 48) = v26;
  v27 = *(a3 + 16);
  *v25 = *a3;
  *(v25 + 16) = v27;
  *(v25 + 127) = *(a3 + 127);
  v28 = *(a3 + 112);
  *(v25 + 96) = *(a3 + 96);
  *(v25 + 112) = v28;
  v29 = *(a3 + 80);
  *(v25 + 64) = *(a3 + 64);
  *(v25 + 80) = v29;
  v30 = a9 + v22[7];
  *v30 = v19;
  *(v30 + 8) = v20;
  *(v30 + 16) = v51;
  *(v30 + 17) = v50;
  *(v30 + 24) = v49;
  *(v30 + 32) = v48;
  v31 = (a9 + v22[8]);
  v32 = a5[3];
  v31[2] = a5[2];
  v31[3] = v32;
  v33 = a5[1];
  *v31 = *a5;
  v31[1] = v33;
  v34 = a5[8];
  v31[7] = a5[7];
  v31[8] = v34;
  v35 = a5[6];
  v31[5] = a5[5];
  v31[6] = v35;
  v31[4] = a5[4];
  v36 = a9 + v22[9];
  *v36 = v53;
  *(v36 + 16) = v52;
  v37 = a9 + v22[10];
  *v37 = v58;
  *(v37 + 8) = v57;
  *(v37 + 16) = v56;
  *(v37 + 24) = v55;
  *(v37 + 28) = v54;
  v38 = a9 + v22[11];
  *v38 = v61;
  *(v38 + 8) = v60;
  *(v38 + 16) = v59;
  v39 = (a9 + v22[12]);
  v40 = a10[1];
  *v39 = *a10;
  v39[1] = v40;
  v41 = a10[3];
  v39[2] = a10[2];
  v39[3] = v41;
  v42 = a9 + v22[13];
  *v42 = v65;
  *(v42 + 16) = v64;
  *(v42 + 24) = v63;
  v43 = a9 + v22[14];
  *(v43 + 48) = *(a12 + 48);
  v44 = *(a12 + 32);
  *(v43 + 16) = *(a12 + 16);
  *(v43 + 32) = v44;
  *v43 = *a12;
  v45 = (a9 + v22[15]);
  result = v66;
  *v45 = v66;
  v45[1] = v62;
  v47 = (a9 + v22[16]);
  *v47 = v68;
  v47[1] = v67;
  return result;
}

uint64_t sub_217B04D30(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0x44656C6369747261;
      break;
    case 3:
      result = 0x446C656E6E616863;
      break;
    case 4:
      result = 0x74614470756F7267;
      break;
    case 5:
      v3 = 1684366694;
      goto LABEL_12;
    case 6:
      result = 0x746144616964656DLL;
      break;
    case 7:
      v3 = 2003134838;
LABEL_12:
      result = v3 | 0x6174614400000000;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x447972656C6C6167;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0x7461446575737369;
      break;
    case 12:
      result = 0x6569566575737369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B04E98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B07524(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B04ECC(uint64_t a1)
{
  v2 = sub_217B058B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B04F08(uint64_t a1)
{
  v2 = sub_217B058B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B06624(0, &qword_27CB9F1D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v69 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B058B0();
  sub_217D89E7C();
  LOBYTE(v113) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for MediaViewEvent.Model(0);
    v148 = v3;
    v147[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    v11 = v148;
    sub_217D89CAC();
    v69 = v10;
    v12 = v11 + *(v10 + 24);
    v13 = *(v12 + 96);
    v14 = *(v12 + 64);
    v144 = *(v12 + 80);
    v145 = v13;
    v15 = *(v12 + 96);
    *v146 = *(v12 + 112);
    v16 = *(v12 + 16);
    v17 = *(v12 + 48);
    v141 = *(v12 + 32);
    v142 = v17;
    v18 = *(v12 + 48);
    v143 = *(v12 + 64);
    v19 = *(v12 + 16);
    v140[0] = *v12;
    v140[1] = v19;
    v137 = v144;
    v138 = v15;
    v139[0] = *(v12 + 112);
    v134 = v141;
    v135 = v18;
    v136 = v14;
    *&v146[15] = *(v12 + 127);
    *(v139 + 15) = *(v12 + 127);
    v132 = v140[0];
    v133 = v16;
    v131 = 2;
    sub_217AD1630(v140, &v113);
    sub_217ACF52C();
    sub_217D89CAC();
    v129[5] = v137;
    v129[6] = v138;
    *v130 = v139[0];
    *&v130[15] = *(v139 + 15);
    v129[2] = v134;
    v129[3] = v135;
    v129[4] = v136;
    v129[0] = v132;
    v129[1] = v133;
    sub_217AD2864(v129);
    v20 = v148;
    v21 = (v148 + v69[7]);
    v22 = v21[1];
    v23 = *(v21 + 16);
    v24 = *(v21 + 17);
    v25 = v21[3];
    v26 = v21[4];
    v123 = *v21;
    v124 = v22;
    v125 = v23;
    v126 = v24;
    v127 = v25;
    v128 = v26;
    v122 = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v27 = v69;
    v28 = (v20 + v69[8]);
    v29 = v28[6];
    v30 = v28[4];
    v118 = v28[5];
    v119 = v29;
    v31 = v28[6];
    v32 = v28[8];
    v120 = v28[7];
    v121 = v32;
    v33 = v28[2];
    v34 = *v28;
    v114 = v28[1];
    v115 = v33;
    v35 = v28[2];
    v36 = v28[4];
    v116 = v28[3];
    v117 = v36;
    v37 = *v28;
    v110 = v31;
    v111 = v120;
    v112 = v28[8];
    v113 = v37;
    v106 = v35;
    v107 = v116;
    v108 = v30;
    v109 = v118;
    v104 = v34;
    v105 = v114;
    v103 = 4;
    sub_217AE38AC(&v113, v102, &qword_2811BD178, &type metadata for GroupData);
    sub_217A5D3B4();
    sub_217D89C3C();
    v102[6] = v110;
    v102[7] = v111;
    v102[8] = v112;
    v102[2] = v106;
    v102[3] = v107;
    v102[4] = v108;
    v102[5] = v109;
    v102[0] = v104;
    v102[1] = v105;
    sub_217AE4A44(v102, &qword_2811BD178, &type metadata for GroupData);
    v38 = (v20 + v27[9]);
    v39 = v38[1];
    v40 = v38[2];
    *&v94 = *v38;
    *(&v94 + 1) = v39;
    *&v95 = v40;
    LOBYTE(v90) = 5;
    sub_217AD1A68(v94, v39, v40);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v94, *(&v94 + 1), v95);
    v42 = (v20 + v27[10]);
    v43 = *v42;
    v44 = *(v42 + 1);
    v45 = *(v42 + 2);
    v46 = *(v42 + 6);
    LOBYTE(v42) = v42[28];
    LOBYTE(v94) = v43;
    *(&v94 + 1) = v44;
    *&v95 = v45;
    DWORD2(v95) = v46;
    BYTE12(v95) = v42;
    LOBYTE(v90) = 6;
    sub_217AE1D08();

    sub_217D89CAC();

    v47 = (v20 + v27[11]);
    v48 = *v47;
    v49 = v47[1];
    LOWORD(v47) = *(v47 + 8);
    v99 = v48;
    v100 = v49;
    v101 = v47;
    v98 = 7;
    sub_217A5E790();

    sub_217D89CAC();

    v50 = (v20 + v27[12]);
    v51 = v50[1];
    v94 = *v50;
    v95 = v51;
    v52 = v50[3];
    v54 = *v50;
    v53 = v50[1];
    v96 = v50[2];
    v97 = v52;
    v90 = v54;
    v91 = v53;
    v55 = v50[3];
    v92 = v50[2];
    v93 = v55;
    v89 = 8;
    sub_217AE38AC(&v94, v88, &qword_27CB9ECA0, &type metadata for ANFComponentData);
    sub_217AE2368();
    sub_217D89C3C();
    v88[0] = v90;
    v88[1] = v91;
    v88[2] = v92;
    v88[3] = v93;
    sub_217AE4A44(v88, &qword_27CB9ECA0, &type metadata for ANFComponentData);
    v56 = (v20 + v27[13]);
    v57 = *(v56 + 2);
    v58 = *(v56 + 6);
    v85 = *v56;
    v86 = v57;
    v87 = v58;
    v84 = 9;
    sub_217B03820();

    sub_217D89C3C();

    v59 = (v20 + v27[14]);
    v60 = v59[1];
    v82[0] = *v59;
    v82[1] = v60;
    v62 = *v59;
    v61 = v59[1];
    v82[2] = v59[2];
    v83 = *(v59 + 48);
    v78 = v62;
    v79 = v61;
    v80 = v59[2];
    v81 = *(v59 + 48);
    v77 = 10;
    sub_217ACC004(v82, v75);
    sub_217A55B98();
    sub_217D89CAC();
    v75[0] = v78;
    v75[1] = v79;
    v75[2] = v80;
    v76 = v81;
    sub_217ACC69C(v75);
    v63 = (v148 + v69[15]);
    v64 = v63[1];
    v65 = v63[2];
    v66 = v63[3];
    v71 = *v63;
    v72 = v64;
    v73 = v65;
    v74 = v66;
    v70 = 11;
    sub_217AE39D0(v71, v64, v65, v66);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v71, v72, v73, v74);
    v67 = (v148 + v69[16]);
    v68 = v67[1];
    v71 = *v67;
    v72 = v68;
    v70 = 12;
    sub_217AD01EC();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B058B0()
{
  result = qword_27CB9F1E0;
  if (!qword_27CB9F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F1E0);
  }

  return result;
}

void MediaViewEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v65 = sub_217D889CC();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v66 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217D8899C();
  v64 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v67 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B06624(0, &qword_27CB9F1E8, MEMORY[0x277D844C8]);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v59 - v7;
  v9 = type metadata accessor for MediaViewEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B058B0();
  v70 = v8;
  v12 = v103;
  sub_217D89E5C();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v66;
    v60 = v9;
    v61 = a1;
    v103 = v11;
    LOBYTE(v94) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v14 = v67;
    sub_217D89BCC();
    v15 = v4;
    v16 = *(v64 + 32);
    v17 = v103;
    v67 = v15;
    v16(v103, v14);
    LOBYTE(v94) = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v18 = v13;
    v19 = v65;
    sub_217D89BCC();
    v59[1] = 0;
    v20 = v60;
    (*(v63 + 32))(&v17[v60[5]], v18, v19);
    v85 = 2;
    sub_217ACF4D8();
    sub_217D89BCC();
    v21 = &v17[v20[6]];
    v22 = v91;
    v23 = *v93;
    *(v21 + 6) = v92;
    *(v21 + 7) = v23;
    *(v21 + 127) = *&v93[15];
    v24 = v87;
    v25 = v89;
    *(v21 + 2) = v88;
    *(v21 + 3) = v25;
    *(v21 + 4) = v90;
    *(v21 + 5) = v22;
    *v21 = v86;
    *(v21 + 1) = v24;
    LOBYTE(v80) = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v26 = *(&v94 + 1);
    v27 = v95;
    v28 = BYTE1(v95);
    v29 = *(&v95 + 1);
    v30 = v96;
    v31 = &v17[v20[7]];
    *v31 = v94;
    *(v31 + 1) = v26;
    v31[16] = v27;
    v31[17] = v28;
    *(v31 + 3) = v29;
    *(v31 + 4) = v30;
    v84 = 4;
    sub_217A5D308();
    sub_217D89B5C();
    v32 = &v17[v20[8]];
    v33 = v101;
    *(v32 + 6) = v100;
    *(v32 + 7) = v33;
    *(v32 + 8) = v102;
    v34 = v97;
    *(v32 + 2) = v96;
    *(v32 + 3) = v34;
    v35 = v99;
    *(v32 + 4) = v98;
    *(v32 + 5) = v35;
    v36 = v95;
    *v32 = v94;
    *(v32 + 1) = v36;
    LOBYTE(v75) = 5;
    sub_217A5B978();
    sub_217D89B5C();
    v37 = v81;
    v38 = &v17[v20[9]];
    *v38 = v80;
    *(v38 + 2) = v37;
    LOBYTE(v75) = 6;
    sub_217AE1CB4();
    sub_217D89BCC();
    v39 = *(&v80 + 1);
    v40 = v81;
    v41 = DWORD2(v81);
    v42 = BYTE12(v81);
    v43 = &v17[v20[10]];
    *v43 = v80;
    *(v43 + 1) = v39;
    *(v43 + 2) = v40;
    *(v43 + 6) = v41;
    v43[28] = v42;
    LOBYTE(v75) = 7;
    sub_217A5E738();
    sub_217D89BCC();
    v44 = *(&v80 + 1);
    v45 = v81;
    v46 = &v17[v20[11]];
    *v46 = v80;
    *(v46 + 1) = v44;
    *(v46 + 8) = v45;
    v79 = 8;
    sub_217AE2314();
    sub_217D89B5C();
    v47 = &v103[v60[12]];
    v48 = v81;
    v49 = v82;
    *v47 = v80;
    *(v47 + 1) = v48;
    v50 = v83;
    *(v47 + 2) = v49;
    *(v47 + 3) = v50;
    LOBYTE(v72) = 9;
    sub_217B037CC();
    sub_217D89B5C();
    v51 = v76;
    v52 = DWORD2(v76);
    v53 = &v103[v60[13]];
    *v53 = v75;
    *(v53 + 2) = v51;
    *(v53 + 6) = v52;
    v74 = 10;
    sub_217A54D08();
    sub_217D89BCC();
    v54 = &v103[v60[14]];
    v55 = v76;
    *v54 = v75;
    *(v54 + 1) = v55;
    *(v54 + 2) = v77;
    v54[48] = v78;
    v71 = 11;
    sub_217ACFF40();
    sub_217D89B5C();
    v56 = &v103[v60[15]];
    v57 = v73;
    *v56 = v72;
    *(v56 + 1) = v57;
    v71 = 12;
    sub_217AD0198();
    sub_217D89B5C();
    (*(v68 + 8))(v70, v69);
    v58 = v103;
    *&v103[v60[16]] = v72;
    sub_217B06688(v58, v62);
    __swift_destroy_boxed_opaque_existential_1(v61);
    sub_217B066EC(v58);
  }
}

void sub_217B06624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B058B0();
    v7 = a3(a1, &type metadata for MediaViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B06688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B066EC(uint64_t a1)
{
  v2 = type metadata accessor for MediaViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B06820@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820, &type metadata for GalleryData);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v28 - 8) + 104))(a2 + v27, v13, v28);
  v29 = a1[16];
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v31 = *(*(v30 - 8) + 104);

  return v31(a2 + v29, v13, v30);
}

void sub_217B06E44(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217B03D84(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217B03D84(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217B03D84(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217B03D84(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
            if (v6 <= 0x3F)
            {
              sub_217B03D84(319, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
              if (v7 <= 0x3F)
              {
                sub_217B03D84(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
                if (v8 <= 0x3F)
                {
                  sub_217B03D84(319, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
                  if (v9 <= 0x3F)
                  {
                    sub_217B03D84(319, &qword_2811C87E0, sub_217B037CC, sub_217B03820, &type metadata for GalleryData);
                    if (v10 <= 0x3F)
                    {
                      sub_217B03D84(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                      if (v11 <= 0x3F)
                      {
                        sub_217B03D84(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                        if (v12 <= 0x3F)
                        {
                          sub_217B03D84(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
                          if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_217B07260(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_27CB9ECA0, &type metadata for ANFComponentData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CB9F1F0, &type metadata for GalleryData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811C71A8, &type metadata for IssueViewData);
                if (v8 <= 0x3F)
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
}

unint64_t sub_217B07420()
{
  result = qword_27CB9F1F8;
  if (!qword_27CB9F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F1F8);
  }

  return result;
}

unint64_t sub_217B07478()
{
  result = qword_27CB9F200;
  if (!qword_27CB9F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F200);
  }

  return result;
}

unint64_t sub_217B074D0()
{
  result = qword_27CB9F208;
  if (!qword_27CB9F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F208);
  }

  return result;
}

uint64_t sub_217B07524(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD5D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x447972656C6C6167 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477)
  {

    return 12;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t ErrorData.errorDomain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ErrorData.errorDomain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ErrorData.errorCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ErrorData.errorCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ErrorData.errorDetails.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall ErrorData.init(errorDomain:errorCode:errorDetails:)(NewsAnalytics::ErrorData *__return_ptr retstr, Swift::String_optional errorDomain, Swift::String errorCode, Swift::OpaquePointer_optional errorDetails)
{
  retstr->errorDomain = errorDomain;
  retstr->errorCode = errorCode;
  retstr->errorDetails.value._rawValue = errorDetails.value._rawValue;
}

uint64_t sub_217B07AD4()
{
  v1 = 0x646F43726F727265;
  if (*v0 != 1)
  {
    v1 = 0x746544726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6F44726F727265;
  }
}

uint64_t sub_217B07B44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B084DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B07B6C(uint64_t a1)
{
  v2 = sub_217B07DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B07BA8(uint64_t a1)
{
  v2 = sub_217B07DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ErrorData.encode(to:)(void *a1)
{
  sub_217B081B4(0, &qword_27CB9F210, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = v1[2];
  v14 = v1[3];
  v15 = v8;
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B07DF0();
  sub_217D89E7C();
  v20 = 0;
  v9 = v16;
  sub_217D89C0C();
  if (!v9)
  {
    v10 = v13;
    v19 = 1;
    sub_217D89C6C();
    v17 = v10;
    v18 = 2;
    sub_217B07E44();
    sub_217B08218(&qword_27CB9F228, sub_217B07E94, MEMORY[0x277D83948]);
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B07DF0()
{
  result = qword_27CB9F218;
  if (!qword_27CB9F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F218);
  }

  return result;
}

void sub_217B07E44()
{
  if (!qword_27CB9F220)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB9F220);
    }
  }
}

unint64_t sub_217B07E94()
{
  result = qword_27CB9F230;
  if (!qword_27CB9F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F230);
  }

  return result;
}

uint64_t ErrorData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B081B4(0, &qword_27CB9F238, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B07DF0();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    v10 = sub_217D89B2C();
    v13 = v12;
    v20 = v10;
    v23 = 1;
    v14 = sub_217D89B8C();
    v16 = v15;
    v19 = v14;
    sub_217B07E44();
    v22 = 2;
    sub_217B08218(&qword_27CB9F240, sub_217B08284, MEMORY[0x277D83978]);
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v17 = v21;
    *a2 = v20;
    a2[1] = v13;
    a2[2] = v19;
    a2[3] = v16;
    a2[4] = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_217B081B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B07DF0();
    v7 = a3(a1, &type metadata for ErrorData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B08218(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217B07E44();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217B08284()
{
  result = qword_27CB9F248;
  if (!qword_27CB9F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F248);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217B08324(uint64_t a1, int a2)
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

uint64_t sub_217B0836C(uint64_t result, int a2, int a3)
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

unint64_t sub_217B083D8()
{
  result = qword_27CB9F250;
  if (!qword_27CB9F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F250);
  }

  return result;
}

unint64_t sub_217B08430()
{
  result = qword_27CB9F258;
  if (!qword_27CB9F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F258);
  }

  return result;
}

unint64_t sub_217B08488()
{
  result = qword_27CB9F260;
  if (!qword_27CB9F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F260);
  }

  return result;
}

uint64_t sub_217B084DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746544726F727265 && a2 == 0xEC000000736C6961)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t SearchResultsData.topicIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SearchResultsData.channelIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SearchResultsData.articleIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SearchResultsData.topResultTagID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SearchResultsData.topResultTagID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SearchResultsData.topResultArticleID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SearchResultsData.topResultArticleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t SearchResultsData.completedString.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SearchResultsData.completedString.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t SearchResultsData.clientLatency.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t SearchResultsData.clientLatency.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t SearchResultsData.serverLatency.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t SearchResultsData.serverLatency.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t SearchResultsData.serverProcessingLatency.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t SearchResultsData.serverProcessingLatency.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t SearchResultsData.sportTagIDs.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t SearchResultsData.recipeIDs.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t SearchResultsData.topResultRecipeID.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t SearchResultsData.topResultRecipeID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

__n128 SearchResultsData.init(topicIDs:channelIDs:articleIDs:topResultTagID:topResultArticleID:totalResults:completedString:resultsSource:clientLatency:serverLatency:serverProcessingLatency:sportTagIDs:recipeIDs:topResultRecipeID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, __int128 a13, __int128 a14, __int128 a15, __n128 a16, uint64_t a17, uint64_t a18)
{
  result = a16;
  v19 = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = v19;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 120) = a15;
  *(a9 + 136) = a16;
  *(a9 + 152) = a17;
  *(a9 + 160) = a18;
  return result;
}

uint64_t sub_217B08C24(char a1)
{
  result = 0x7344496369706F74;
  switch(a1)
  {
    case 1:
      result = 0x496C656E6E616863;
      break;
    case 2:
      result = 0x49656C6369747261;
      break;
    case 3:
      result = 0x6C75736552706F74;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x7365526C61746F74;
      break;
    case 6:
      result = 0x6574656C706D6F63;
      break;
    case 7:
      result = 0x5373746C75736572;
      break;
    case 8:
      v3 = 0x746E65696C63;
      goto LABEL_16;
    case 9:
      v3 = 0x726576726573;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x67615474726F7073;
      break;
    case 12:
      result = 0x4449657069636572;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B08DF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B0A074(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B08E18(uint64_t a1)
{
  v2 = sub_217B09328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B08E54(uint64_t a1)
{
  v2 = sub_217B09328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResultsData.encode(to:)(void *a1)
{
  sub_217B09C60(0, &qword_27CB9F268, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v40 = v1[2];
  v41 = v8;
  v11 = v1[4];
  v12 = v1[5];
  v38 = v10;
  v39 = v11;
  v36 = v1[6];
  v37 = v12;
  v35 = *(v1 + 14);
  v13 = v1[8];
  v33 = v1[9];
  v34 = v13;
  v32 = *(v1 + 80);
  v14 = v1[11];
  v30 = v1[12];
  v31 = v14;
  v15 = v1[13];
  v28 = v1[14];
  v29 = v15;
  v16 = v1[15];
  v26 = v1[16];
  v27 = v16;
  v17 = v1[17];
  v24 = v1[18];
  v25 = v17;
  v18 = v1[20];
  v23 = v1[19];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B09328();

  sub_217D89E7C();
  v44 = v9;
  v43 = 0;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  v19 = v7;
  v20 = v42;
  sub_217D89CAC();
  if (v20)
  {

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v22 = v40;
    v42 = v18;

    v44 = v41;
    v43 = 1;
    sub_217D89CAC();
    v44 = v22;
    v43 = 2;
    sub_217D89CAC();
    LOBYTE(v44) = 3;
    sub_217D89C0C();
    LOBYTE(v44) = 4;
    sub_217D89C0C();
    LOBYTE(v44) = 5;
    sub_217D89CBC();
    LOBYTE(v44) = 6;
    sub_217D89C0C();
    LOBYTE(v44) = v32;
    v43 = 7;
    sub_217B0937C();
    sub_217D89C3C();
    LOBYTE(v44) = 8;
    sub_217D89C0C();
    LOBYTE(v44) = 9;
    sub_217D89C0C();
    LOBYTE(v44) = 10;
    sub_217D89C0C();
    v44 = v25;
    v43 = 11;
    sub_217D89C3C();
    v44 = v24;
    v43 = 12;
    sub_217D89CAC();
    LOBYTE(v44) = 13;
    sub_217D89C0C();
    return (*(v5 + 8))(v19, 0);
  }
}

unint64_t sub_217B09328()
{
  result = qword_27CB9F270;
  if (!qword_27CB9F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F270);
  }

  return result;
}

unint64_t sub_217B0937C()
{
  result = qword_27CB9F278;
  if (!qword_27CB9F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F278);
  }

  return result;
}

uint64_t SearchResultsData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B09C60(0, &qword_27CB9F280, MEMORY[0x277D844C8]);
  v61 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B09328();
  sub_217D89E5C();
  if (v2)
  {
    v91 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v59 = a2;
    sub_217A55F8C();
    LOBYTE(v62) = 0;
    v9 = sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89BCC();
    v11 = v73[0];
    LOBYTE(v62) = 1;
    sub_217D89BCC();
    v56 = v6;
    v12 = v73[0];
    LOBYTE(v62) = 2;
    v91 = 0;
    sub_217D89BCC();
    v60 = v9;
    v55 = v73[0];
    LOBYTE(v73[0]) = 3;
    v54 = sub_217D89B2C();
    v57 = v13;
    LOBYTE(v73[0]) = 4;
    v14 = v11;
    v52 = sub_217D89B2C();
    v53 = v15;
    LOBYTE(v73[0]) = 5;
    LODWORD(v11) = sub_217D89BDC();
    LOBYTE(v73[0]) = 6;
    v51 = sub_217D89B2C();
    v58 = v16;
    LOBYTE(v62) = 7;
    sub_217B09CC4();
    sub_217D89B5C();
    v48 = LOBYTE(v73[0]);
    v49 = v11;
    LOBYTE(v73[0]) = 8;
    v47 = sub_217D89B2C();
    v50 = v17;
    v45 = v12;
    v46 = v14;
    LOBYTE(v73[0]) = 9;
    v18 = sub_217D89B2C();
    v44 = v19;
    v20 = v18;
    LOBYTE(v73[0]) = 10;
    v21 = sub_217D89B2C();
    v43 = v22;
    v91 = 0;
    v23 = v21;
    LOBYTE(v62) = 11;
    sub_217D89B5C();
    v91 = 0;
    v24 = v73[0];
    LOBYTE(v62) = 12;
    sub_217D89BCC();
    v91 = 0;
    v60 = v73[0];
    v89 = 13;
    v25 = sub_217D89B2C();
    v91 = 0;
    v26 = v25;
    v28 = v27;
    (*(v56 + 8))(v8, v61);
    *&v62 = v46;
    *(&v62 + 1) = v45;
    *&v63 = v55;
    *(&v63 + 1) = v54;
    v29 = v57;
    *&v64 = v57;
    *(&v64 + 1) = v52;
    *&v65 = v53;
    DWORD2(v65) = v49;
    *&v66 = v51;
    *(&v66 + 1) = v58;
    LOBYTE(v67) = v48;
    *(&v67 + 1) = v90[0];
    DWORD1(v67) = *(v90 + 3);
    *(&v67 + 1) = v47;
    *&v68 = v50;
    v41 = v23;
    v42 = v20;
    *(&v68 + 1) = v20;
    v30 = v44;
    *&v69 = v44;
    *(&v69 + 1) = v23;
    v31 = v43;
    *&v70 = v43;
    *(&v70 + 1) = v24;
    v32 = v59;
    *&v71 = v60;
    *(&v71 + 1) = v26;
    v72 = v28;
    v33 = v67;
    *(v59 + 64) = v66;
    *(v32 + 80) = v33;
    v34 = v68;
    v35 = v69;
    v36 = v70;
    v37 = v71;
    *(v32 + 160) = v28;
    *(v32 + 128) = v36;
    *(v32 + 144) = v37;
    *(v32 + 96) = v34;
    *(v32 + 112) = v35;
    v38 = v62;
    v39 = v63;
    v40 = v65;
    *(v32 + 32) = v64;
    *(v32 + 48) = v40;
    *v32 = v38;
    *(v32 + 16) = v39;
    sub_217B09D18(&v62, v73);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v73[0] = v46;
    v73[1] = v45;
    v73[2] = v55;
    v73[3] = v54;
    v73[4] = v29;
    v73[5] = v52;
    v73[6] = v53;
    v74 = v49;
    v75 = v51;
    v76 = v58;
    v77 = v48;
    *v78 = v90[0];
    *&v78[3] = *(v90 + 3);
    v79 = v47;
    v80 = v50;
    v81 = v42;
    v82 = v30;
    v83 = v41;
    v84 = v31;
    v85 = v24;
    v86 = v60;
    v87 = v26;
    v88 = v28;
    return sub_217B09D50(v73);
  }
}

void sub_217B09C60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B09328();
    v7 = a3(a1, &type metadata for SearchResultsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B09CC4()
{
  result = qword_27CB9F288;
  if (!qword_27CB9F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F288);
  }

  return result;
}

unint64_t sub_217B09D84()
{
  result = qword_27CB9F290;
  if (!qword_27CB9F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F290);
  }

  return result;
}

unint64_t sub_217B09DDC()
{
  result = qword_27CB9F298;
  if (!qword_27CB9F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F298);
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_217B09E9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_217B09EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217B09F70()
{
  result = qword_27CB9F2A0;
  if (!qword_27CB9F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F2A0);
  }

  return result;
}

unint64_t sub_217B09FC8()
{
  result = qword_27CB9F2A8;
  if (!qword_27CB9F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F2A8);
  }

  return result;
}

unint64_t sub_217B0A020()
{
  result = qword_27CB9F2B0;
  if (!qword_27CB9F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F2B0);
  }

  return result;
}

uint64_t sub_217B0A074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7344496369706F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xEA00000000007344 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49656C6369747261 && a2 == 0xEA00000000007344 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C75736552706F74 && a2 == 0xEE00444967615474 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCD810 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365526C61746F74 && a2 == 0xEC00000073746C75 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEF676E6972745364 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5373746C75736572 && a2 == 0xED0000656372756FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x614C746E65696C63 && a2 == 0xED000079636E6574 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x614C726576726573 && a2 == 0xED000079636E6574 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCD830 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x67615474726F7073 && a2 == 0xEB00000000734449 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4449657069636572 && a2 == 0xE900000000000073 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCD850 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

void EventUserInfo.headlineEmbeddings.getter(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_217B0A8E4(v2, v3, v4, v5, sub_217B0A564);
}

uint64_t sub_217B0A564(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t EventUserInfo.init(isFake:headline:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  if (a2)
  {
    swift_getObjectType();
    sub_217B0A630(v7);
    result = swift_unknownObjectRelease();
    v6 = v7[0];
    v5 = v7[1];
  }

  else
  {
    v5 = xmmword_217D921D0;
    v6 = 0uLL;
  }

  *a3 = v3 & 1;
  *(a3 + 8) = v6;
  *(a3 + 24) = v5;
  return result;
}

double sub_217B0A630@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if ([v1 respondsToSelector_])
  {
    v4 = [v1 float16FullBodyEncoding];
    if (v4)
    {
      v5 = v4;
      v6 = sub_217D87C0C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xF000000000000000;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0xB000000000000000;
  }

  if ([v2 respondsToSelector_])
  {
    v10 = [v2 float16TitleEncoding];
    if (v10)
    {
      v11 = v10;
      v12 = sub_217D87C0C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0xB000000000000000;
  }

  if (v8 >> 60 != 11)
  {
    if (v8 >> 60 != 15)
    {
      if (v14 >> 60 != 11)
      {
        if (v14 >> 60 != 15)
        {
          v15 = v14 | 0x2000000000000000;
          *a1 = v6;
          a1[1] = v8;
          a1[2] = v12;
          goto LABEL_18;
        }

        sub_217B0AAA8(v12, v14);
      }

      *a1 = v6;
      a1[1] = v8;
      a1[2] = 0;
      a1[3] = 0;
      return result;
    }

    sub_217B0AAA8(v6, v8);
  }

  if (v14 >> 60 == 11)
  {
LABEL_17:
    *a1 = 0;
    a1[1] = 0;
    v15 = 0x3000000000000000;
    a1[2] = 0;
LABEL_18:
    a1[3] = v15;
    return result;
  }

  if (v14 >> 60 == 15)
  {
    sub_217B0AAA8(v12, v14);
    goto LABEL_17;
  }

  *a1 = v12;
  a1[1] = v14;
  result = 0.0;
  *(a1 + 1) = xmmword_217D921E0;
  return result;
}

double ProcessEvent.newsUserInfo.getter@<D0>(uint64_t a1@<X8>)
{
  sub_217D8819C();
  if (!v3[3])
  {
    sub_217A576FC(v3);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *a1 = 2;
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
  }

  return result;
}

uint64_t ProcessEvent.isFake.getter()
{
  ProcessEvent.newsUserInfo.getter(v2);
  v0 = v2[0];
  if (LOBYTE(v2[0]) == 2)
  {
    v0 = 0;
  }

  else
  {
    sub_217B0A898(v2[0], v2[1], v2[2], v2[3], v2[4]);
  }

  return v0 & 1;
}

void sub_217B0A898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result != 2)
  {
    sub_217B0A8E4(a2, a3, a4, a5, sub_217AE010C);
  }
}

void sub_217B0A8E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (((a4 >> 60) & 3) > 1)
  {
    if (((a4 >> 60) & 3) == 2)
    {
      a5(a1, a2);

      a5(a3, a4 & 0xCFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {

    (a5)(a1, a2, a3);
  }
}

void ProcessEvent.headlineEmbeddings.getter(_OWORD *a1@<X8>)
{
  ProcessEvent.newsUserInfo.getter(v4);
  if (v4[0] == 2)
  {
    v2 = xmmword_217D921D0;
    v3 = 0uLL;
  }

  else
  {
    v3 = v5;
    v2 = v6;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_13NewsAnalytics31EventUserInfoHeadlineEmbeddingsO(uint64_t a1)
{
  if (((*(a1 + 24) >> 60) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 24) >> 60) & 3;
  }
}

uint64_t sub_217B0A9F8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_217B0AA4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_217B0AAA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_217B0AABC(a1, a2);
  }

  return a1;
}

uint64_t sub_217B0AABC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_217AE010C(result, a2);
  }

  return result;
}

uint64_t sub_217B0AB98()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F2E8);
  __swift_project_value_buffer(v0, qword_27CB9F2E8);
  return sub_217D8866C();
}

uint64_t WidgetExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WidgetExposureEvent.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 20);
  sub_217B0B99C(0, &qword_27CB9F300, sub_217B0AD9C, sub_217B0ADF0, &type metadata for WidgetExposureData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0AD9C()
{
  result = qword_27CB9F308;
  if (!qword_27CB9F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F308);
  }

  return result;
}

unint64_t sub_217B0ADF0()
{
  result = qword_27CB9F310;
  if (!qword_27CB9F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F310);
  }

  return result;
}

uint64_t WidgetExposureEvent.exposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 20);
  sub_217B0B99C(0, &qword_27CB9F300, sub_217B0AD9C, sub_217B0ADF0, &type metadata for WidgetExposureData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.groupDataList.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 24);
  sub_217B0B99C(0, &qword_27CB9F318, sub_217B0AFF4, sub_217B0B048, &type metadata for GroupDataList);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0AFF4()
{
  result = qword_27CB9F320;
  if (!qword_27CB9F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F320);
  }

  return result;
}

unint64_t sub_217B0B048()
{
  result = qword_27CB9F328;
  if (!qword_27CB9F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F328);
  }

  return result;
}

uint64_t WidgetExposureEvent.groupDataList.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 24);
  sub_217B0B99C(0, &qword_27CB9F318, sub_217B0AFF4, sub_217B0B048, &type metadata for GroupDataList);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.personalizationFeatureCTRDataList.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 28);
  sub_217B0B99C(0, &qword_27CB9F330, sub_217B0B24C, sub_217B0B2A0, &type metadata for PersonalizationFeatureCTRDataList);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0B24C()
{
  result = qword_27CB9F338;
  if (!qword_27CB9F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F338);
  }

  return result;
}

unint64_t sub_217B0B2A0()
{
  result = qword_27CB9F340;
  if (!qword_27CB9F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F340);
  }

  return result;
}

uint64_t WidgetExposureEvent.personalizationFeatureCTRDataList.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 28);
  sub_217B0B99C(0, &qword_27CB9F330, sub_217B0B24C, sub_217B0B2A0, &type metadata for PersonalizationFeatureCTRDataList);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 32);
  sub_217B0B99C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 32);
  sub_217B0B99C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 36);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.typeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 40);
  sub_217B0B99C(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798, &type metadata for WidgetTypeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0B744()
{
  result = qword_2811C6990;
  if (!qword_2811C6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6990);
  }

  return result;
}

unint64_t sub_217B0B798()
{
  result = qword_2811C6998;
  if (!qword_2811C6998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6998);
  }

  return result;
}

uint64_t WidgetExposureEvent.typeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 40);
  sub_217B0B99C(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798, &type metadata for WidgetTypeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.locationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 44);
  sub_217B0B99C(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C, &type metadata for WidgetLocationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B0B99C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B0BA18()
{
  result = qword_2811C2D98;
  if (!qword_2811C2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2D98);
  }

  return result;
}

unint64_t sub_217B0BA6C()
{
  result = qword_2811C2DA0;
  if (!qword_2811C2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DA0);
  }

  return result;
}

uint64_t WidgetExposureEvent.locationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 44);
  sub_217B0B99C(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C, &type metadata for WidgetLocationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WidgetExposureEvent(0);
  v5 = v4[5];
  sub_217B0B99C(0, &qword_27CB9F300, sub_217B0AD9C, sub_217B0ADF0, &type metadata for WidgetExposureData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B0B99C(0, &qword_27CB9F318, sub_217B0AFF4, sub_217B0B048, &type metadata for GroupDataList);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B0B99C(0, &qword_27CB9F330, sub_217B0B24C, sub_217B0B2A0, &type metadata for PersonalizationFeatureCTRDataList);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217B0B99C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217A608E0(0);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217B0B99C(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798, &type metadata for WidgetTypeData);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_217B0B99C(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C, &type metadata for WidgetLocationData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a1 + v17, v2, v18);
}

uint64_t WidgetExposureEvent.Model.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetExposureEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v3 + 16);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t WidgetExposureEvent.Model.groupDataList.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for WidgetExposureEvent.Model(0) + 24));
}

uint64_t WidgetExposureEvent.Model.personalizationFeatureCTRDataList.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for WidgetExposureEvent.Model(0) + 28));
}

uint64_t WidgetExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WidgetExposureEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t sub_217B0C0F0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 36);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t WidgetExposureEvent.Model.typeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WidgetExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t WidgetExposureEvent.Model.locationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WidgetExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t WidgetExposureEvent.Model.init(eventData:exposureData:groupDataList:personalizationFeatureCTRDataList:viewData:timedData:typeData:locationData:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v26 = *a2;
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  v13 = *(a2 + 32);
  v14 = *(a2 + 5);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  v18 = a5[1];
  v27 = *(a5 + 8);
  v28 = *a7;
  v29 = *a8;
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for WidgetExposureEvent.Model(0);
  v21 = a9 + v20[5];
  *v21 = v26;
  *(v21 + 16) = v11;
  *(v21 + 24) = v12;
  *(v21 + 32) = v13;
  *(v21 + 40) = v14;
  *(a9 + v20[6]) = v15;
  *(a9 + v20[7]) = v16;
  v22 = a9 + v20[8];
  *v22 = v17;
  *(v22 + 8) = v18;
  *(v22 + 16) = v27;
  v23 = v20[9];
  v24 = sub_217D889CC();
  result = (*(*(v24 - 8) + 32))(a9 + v23, a6, v24);
  *(a9 + v20[10]) = v28;
  *(a9 + v20[11]) = v29;
  return result;
}

uint64_t sub_217B0C344()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614465707974;
  if (v1 != 6)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  v4 = 0x6174614477656976;
  if (v1 != 4)
  {
    v4 = 0x74614464656D6974;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74614470756F7267;
  if (v1 != 2)
  {
    v5 = 0xD000000000000021;
  }

  if (*v0)
  {
    v2 = 0x657275736F707865;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217B0C460@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B0DB40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B0C488(uint64_t a1)
{
  v2 = sub_217B0C938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B0C4C4(uint64_t a1)
{
  v2 = sub_217B0C938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B0D120(0, &qword_27CB9F358, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B0C938();
  sub_217D89E7C();
  LOBYTE(v21) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for WidgetExposureEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v13 = *(v11 + 32);
    v14 = v11[5];
    v21 = *v11;
    v22 = v12;
    v23 = *(v11 + 1);
    v24 = v13;
    v25 = v14;
    v20 = 1;
    sub_217B0ADF0();

    sub_217D89CAC();

    v21 = *(v3 + v10[6]);
    v20 = 2;
    sub_217B0B048();

    sub_217D89CAC();

    v21 = *(v3 + v10[7]);
    v20 = 3;
    sub_217B0B2A0();

    sub_217D89CAC();

    v16 = (v3 + v10[8]);
    v17 = *v16;
    v18 = v16[1];
    LOWORD(v16) = *(v16 + 8);
    v21 = v17;
    v22 = v18;
    LOWORD(v23) = v16;
    v20 = 4;
    sub_217A5E790();

    sub_217D89CAC();

    LOBYTE(v21) = 5;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    LOBYTE(v21) = *(v3 + v10[10]);
    v20 = 6;
    sub_217B0B798();
    sub_217D89CAC();
    LOBYTE(v21) = *(v3 + v10[11]);
    v20 = 7;
    sub_217B0BA6C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B0C938()
{
  result = qword_27CB9F360;
  if (!qword_27CB9F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F360);
  }

  return result;
}

uint64_t WidgetExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_217D889CC();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v38 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217B0D120(0, &qword_27CB9F368, MEMORY[0x277D844C8]);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for WidgetExposureEvent.Model(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B0C938();
  v39 = v11;
  v15 = v40;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v6;
  v17 = v36;
  LOBYTE(v41) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  (*(v35 + 32))(v14, v38, v7);
  v46 = 1;
  sub_217B0AD9C();
  sub_217D89BCC();
  v31 = v7;
  v18 = v42;
  v19 = v44;
  v20 = v45;
  v21 = *(v12 + 20);
  v40 = v14;
  v22 = &v14[v21];
  *v22 = v41;
  *(v22 + 1) = v18;
  *(v22 + 1) = v43;
  v22[32] = v19;
  *(v22 + 5) = v20;
  v46 = 2;
  sub_217B0AFF4();
  sub_217D89BCC();
  v38 = a1;
  *&v40[*(v12 + 24)] = v41;
  v46 = 3;
  sub_217B0B24C();
  sub_217D89BCC();
  v23 = v12;
  v24 = v40;
  *&v40[v23[7]] = v41;
  v46 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  v25 = v42;
  v26 = v43;
  v27 = v24 + v23[8];
  *v27 = v41;
  *(v27 + 8) = v25;
  *(v27 + 16) = v26;
  LOBYTE(v41) = 5;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v28 = v33;
  sub_217D89BCC();
  (*(v34 + 32))(v24 + v23[9], v16, v28);
  v46 = 6;
  sub_217B0B744();
  v29 = v37;
  sub_217D89BCC();
  *(v24 + v23[10]) = v41;
  v46 = 7;
  sub_217B0BA18();
  sub_217D89BCC();
  (*(v17 + 8))(v39, v29);
  *(v24 + v23[11]) = v41;
  sub_217B0D184(v24, v32);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_217B0D1E8(v24);
}

void sub_217B0D120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B0C938();
    v7 = a3(a1, &type metadata for WidgetExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B0D184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B0D1E8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B0D31C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B0B99C(0, &qword_27CB9F300, sub_217B0AD9C, sub_217B0ADF0, &type metadata for WidgetExposureData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B0B99C(0, &qword_27CB9F318, sub_217B0AFF4, sub_217B0B048, &type metadata for GroupDataList);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B0B99C(0, &qword_27CB9F330, sub_217B0B24C, sub_217B0B2A0, &type metadata for PersonalizationFeatureCTRDataList);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217B0B99C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217A608E0(0);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217B0B99C(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798, &type metadata for WidgetTypeData);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_217B0B99C(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C, &type metadata for WidgetLocationData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a2 + v18, v4, v19);
}

void sub_217B0D6D4(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217B0B99C(319, &qword_27CB9F300, sub_217B0AD9C, sub_217B0ADF0, &type metadata for WidgetExposureData);
    if (v2 <= 0x3F)
    {
      sub_217B0B99C(319, &qword_27CB9F318, sub_217B0AFF4, sub_217B0B048, &type metadata for GroupDataList);
      if (v3 <= 0x3F)
      {
        sub_217B0B99C(319, &qword_27CB9F330, sub_217B0B24C, sub_217B0B2A0, &type metadata for PersonalizationFeatureCTRDataList);
        if (v4 <= 0x3F)
        {
          sub_217B0B99C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
          if (v5 <= 0x3F)
          {
            sub_217A608E0(319);
            if (v6 <= 0x3F)
            {
              sub_217B0B99C(319, &qword_27CB9F348, sub_217B0B744, sub_217B0B798, &type metadata for WidgetTypeData);
              if (v7 <= 0x3F)
              {
                sub_217B0B99C(319, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C, &type metadata for WidgetLocationData);
                if (v8 <= 0x3F)
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
}

uint64_t sub_217B0D960(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    result = sub_217D889CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217B0DA3C()
{
  result = qword_27CB9F390;
  if (!qword_27CB9F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F390);
  }

  return result;
}

unint64_t sub_217B0DA94()
{
  result = qword_27CB9F398;
  if (!qword_27CB9F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F398);
  }

  return result;
}

unint64_t sub_217B0DAEC()
{
  result = qword_27CB9F3A0;
  if (!qword_27CB9F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F3A0);
  }

  return result;
}

uint64_t sub_217B0DB40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xED00007473694C61 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCD870 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614465707974 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144)
  {

    return 7;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t AppData.appVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppData.appVersion.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppData.appBuildNumber.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppData.appBuildNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

NewsAnalytics::AppData __swiftcall AppData.init(appVersion:appBuildNumber:)(Swift::String appVersion, Swift::String appBuildNumber)
{
  *v2 = appVersion;
  v2[1] = appBuildNumber;
  result.appBuildNumber = appBuildNumber;
  result.appVersion = appVersion;
  return result;
}

uint64_t sub_217B0DF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646C697542707061 && a2 == 0xEE007265626D754ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217B0E02C(uint64_t a1)
{
  v2 = sub_217A61774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B0E068(uint64_t a1)
{
  v2 = sub_217A61774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217A61640(0, &qword_2811BC910, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A61774();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_217D89B8C();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217B0E2CC(uint64_t a1, int a2)
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

uint64_t sub_217B0E314(uint64_t result, int a2, int a3)
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

unint64_t sub_217B0E374()
{
  result = qword_27CB9F3A8;
  if (!qword_27CB9F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F3A8);
  }

  return result;
}

void *sub_217B0E3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_217D87A4C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v26 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v26 - v16;
  if (a3)
  {
    sub_217D87A1C();
    v18 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_217B5ABE8((v19 > 1), v20 + 1, 1, v18);
    }

    v18[2] = v20 + 1;
    (*(v9 + 32))(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v17, v8);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v27 = a4;
  v28 = a5;
  v26[0] = 0x686372616573;
  v26[1] = 0xE600000000000000;
  sub_217A4EBC4();
  if (sub_217D8995C() & 1) != 0 || (v27 = a4, v28 = a5, strcpy(v26, "searchSeeMore"), HIWORD(v26[1]) = -4864, (sub_217D8995C()))
  {
    sub_217D87A1C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_217B5ABE8(0, v18[2] + 1, 1, v18);
    }

    v22 = v18[2];
    v21 = v18[3];
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      v18 = sub_217B5ABE8((v21 > 1), v22 + 1, 1, v18);
    }
  }

  else
  {
    v27 = a4;
    v28 = a5;
    strcpy(v26, "following");
    WORD1(v26[1]) = 0;
    HIDWORD(v26[1]) = -385875968;
    if ((sub_217D8995C() & 1) == 0)
    {
      return v18;
    }

    sub_217D87A1C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_217B5ABE8(0, v18[2] + 1, 1, v18);
    }

    v22 = v18[2];
    v25 = v18[3];
    v23 = v22 + 1;
    if (v22 >= v25 >> 1)
    {
      v18 = sub_217B5ABE8((v25 > 1), v22 + 1, 1, v18);
    }

    v15 = v12;
  }

  v18[2] = v23;
  (*(v9 + 32))(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v15, v8);
  return v18;
}

uint64_t sub_217B0E7A0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_217B5ABE8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_217D87A4C();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_217B0E920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217D87A4C();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedViewEvent.Model(0);
  MEMORY[0x28223BE20](v6);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B0EF5C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217D881AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  sub_217B0EFB4(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v20 = swift_dynamicCast();
  v21 = *(v17 + 56);
  if (!v20)
  {
    v21(v10, 1, 1, v16);
    sub_217B0F0E4(v10, sub_217B0EF5C);
    sub_217B0F048();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v21(v10, 0, 1, v16);
  (*(v17 + 32))(v19, v10, v16);
  v22 = sub_217D8816C();
  v23 = v50;
  v24 = sub_217D887BC();
  if (v23)
  {
    (*(v17 + 8))(v19, v16);

    return;
  }

  v26 = v24;
  v27 = v25;

  sub_217D8796C();
  swift_allocObject();
  sub_217D8795C();
  sub_217B0F09C(&qword_2811C7478, type metadata accessor for FeedViewEvent.Model, &protocol conformance descriptor for FeedViewEvent.Model);
  v28 = v49;
  sub_217D8794C();
  v50 = v27;

  v29 = (v28 + *(v6 + 24));
  v52 = *v29;
  if (FeedType.rawValue.getter() == 0x6C656E6E616863 && v30 == 0xE700000000000000)
  {
  }

  else
  {
    v31 = sub_217D89D4C();

    if ((v31 & 1) == 0)
    {
      (*(v17 + 8))(v19, v16);
      sub_217AE010C(v26, v50);
      sub_217B0F0E4(v28, type metadata accessor for FeedViewEvent.Model);
      return;
    }
  }

  v45 = v29;
  v32 = v46;
  sub_217D87A1C();
  v33 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
  v35 = v33[2];
  v34 = v33[3];
  if (v35 >= v34 >> 1)
  {
    v33 = sub_217B5ABE8((v34 > 1), v35 + 1, 1, v33);
  }

  v37 = v47;
  v36 = v48;
  v33[2] = v35 + 1;
  (*(v37 + 32))(v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35, v32, v36);
  v51 = v33;
  v38 = *(v45 + 1);
  v39 = *(v45 + 2);
  v40 = *v45;
  v41 = sub_217D8898C();
  v43 = sub_217B0E3C8(v40, v38, v39, v41, v42);

  sub_217B0E7A0(v43);
  sub_217AE010C(v26, v50);
  (*(v17 + 8))(v19, v16);
  sub_217B0F0E4(v49, type metadata accessor for FeedViewEvent.Model);
}