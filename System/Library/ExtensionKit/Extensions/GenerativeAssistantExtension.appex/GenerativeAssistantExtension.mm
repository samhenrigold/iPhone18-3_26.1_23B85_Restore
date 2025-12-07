uint64_t sub_100002000()
{
  v0 = sub_10004D020();
  sub_1000037AC(v0, qword_100062400);
  sub_100003774(v0, qword_100062400);
  return sub_10004D000();
}

double sub_100002070@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004CF00();
  result = 0.0;
  *(a2 + *(a1 + 20)) = xmmword_10004E720;
  return result;
}

uint64_t sub_1000020C8(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_100061188, type metadata accessor for GeneratedImage, &unk_10004E748);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_100002144(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_100061188, type metadata accessor for GeneratedImage, &unk_10004E748);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_1000021C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100060FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, qword_100062400);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000226C(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_100061078, type metadata accessor for GeneratedImage, &unk_10004E780);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t _s28GenerativeAssistantExtension18ResponseTextEntityV21displayRepresentation10AppIntents07DisplayH0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004CF30();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100002350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100002414;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100002414()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002508(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_1000610C0, type metadata accessor for GeneratedImage, &unk_10004E930);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000025A4()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for GeneratedImage(0) + 20));
  v4 = *v2;
  v3 = v2[1];
  sub_100003720(*v2, v3);
  v5 = *(v0 + 8);

  return v5(v4, v3);
}

uint64_t sub_10000262C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004D470();
  __chkstk_darwin(v2 - 8);
  sub_10004D460();
  return sub_10004D300();
}

uint64_t sub_1000026D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002750(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v7 = sub_10004D130();
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000026D8(a1, a2);
  sub_10004D110();
  return a4(v9);
}

uint64_t sub_100002828()
{
  v0 = sub_10004D130();
  __chkstk_darwin(v0 - 8);
  sub_1000026D8(&qword_100061060, &qword_10004E730);
  sub_10004D110();
  return sub_10004CC90();
}

uint64_t type metadata accessor for GeneratedImage(uint64_t a1)
{
  result = qword_100061140;
  if (!qword_100061140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000029D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002AEC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004CF30();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100002E48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004CF30();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_100002F10(uint64_t a1)
{
  result = sub_10004CF30();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100002FC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002AEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003030(uint64_t a1, id *a2)
{
  result = sub_10004DD10();
  *a2 = 0;
  return result;
}

uint64_t sub_1000030A8(uint64_t a1, id *a2)
{
  v3 = sub_10004DD20();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003128@<X0>(uint64_t *a1@<X8>)
{
  sub_10004DD30();
  v2 = sub_10004DD00();

  *a1 = v2;
  return result;
}

Swift::Int sub_100003210(uint64_t a1, uint64_t a2)
{
  sub_10004DFC0();
  swift_getWitnessTable();
  sub_10004D2E0();
  return sub_10004DFD0();
}

uint64_t sub_10000327C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_10004D2D0();
}

uint64_t sub_1000032EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004DD30();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003318(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_100061228, type metadata accessor for Key, &unk_10004EF58);
  v3 = sub_1000029D0(&unk_100061230, type metadata accessor for Key, &unk_10004EC00);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000033D4(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_100061218, type metadata accessor for DocumentAttributeKey, &unk_10004EEEC);
  v3 = sub_1000029D0(&qword_100061220, type metadata accessor for DocumentAttributeKey, &unk_10004ED0C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003490@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10004DD00();

  *a2 = v3;
  return result;
}

uint64_t sub_1000034D8(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_100061208, type metadata accessor for DocumentType, &unk_10004EE64);
  v3 = sub_1000029D0(&qword_100061210, type metadata accessor for DocumentType, &unk_10004EE0C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003594()
{
  sub_10004DD30();
  v0 = sub_10004DDE0();

  return v0;
}

uint64_t sub_1000035D0(uint64_t a1)
{
  sub_10004DD30();
  sub_10004DDB0();
}

Swift::Int sub_100003624()
{
  sub_10004DD30();
  sub_10004DFC0();
  sub_10004DDB0();
  v0 = sub_10004DFD0();

  return v0;
}

uint64_t sub_100003698(void *a1, uint64_t *a2)
{
  v2 = sub_10004DD30();
  v4 = v3;
  if (v2 == sub_10004DD30() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10004DFA0();
  }

  return v7 & 1;
}

void sub_100003720(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_100003774(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000037AC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100003860(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100003BFC()
{
  v0 = sub_1000026D8(&unk_100061B30, "zS");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10004D130();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10004D020();
  sub_1000037AC(v5, static LLMPartner.typeDisplayRepresentation);
  sub_100003774(v5, static LLMPartner.typeDisplayRepresentation);
  sub_10004D110();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10004D010();
}

uint64_t LLMPartner.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100060FC8 != -1)
  {
    swift_once();
  }

  v0 = sub_10004D020();

  return sub_100003774(v0, static LLMPartner.typeDisplayRepresentation);
}

uint64_t static LLMPartner.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100060FC8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, static LLMPartner.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LLMPartner.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_100060FC8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, static LLMPartner.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static LLMPartner.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100060FC8 != -1)
  {
    swift_once();
  }

  v1 = sub_10004D020();
  sub_100003774(v1, static LLMPartner.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

GenerativeAssistantExtension::LLMPartner_optional __swiftcall LLMPartner.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_10005DBD8;
  v6._object = object;
  v3 = sub_10004DF70(v2, v6);

  if (v3 == 1)
  {
    v4.value = GenerativeAssistantExtension_LLMPartner_other;
  }

  else
  {
    v4.value = GenerativeAssistantExtension_LLMPartner_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t LLMPartner.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 0x54504774616863;
  }
}

uint64_t sub_1000040B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726568746FLL;
  }

  else
  {
    v3 = 0x54504774616863;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726568746FLL;
  }

  else
  {
    v5 = 0x54504774616863;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004DFA0();
  }

  return v8 & 1;
}

Swift::Int sub_10000415C()
{
  sub_10004DFC0();
  sub_10004DDB0();

  return sub_10004DFD0();
}

uint64_t sub_1000041DC(uint64_t a1)
{
  sub_10004DDB0();
}

Swift::Int sub_100004248()
{
  sub_10004DFC0();
  sub_10004DDB0();

  return sub_10004DFD0();
}

uint64_t sub_1000042C4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10005DBD8;
  v8._object = v3;
  v5 = sub_10004DF70(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100004324(uint64_t *a1@<X8>)
{
  v2 = 0x54504774616863;
  if (*v1)
  {
    v2 = 0x726568746FLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100004360(uint64_t a1)
{
  v2 = sub_100004A98();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000043AC(uint64_t a1)
{
  v2 = sub_1000049F4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t _s28GenerativeAssistantExtension10LLMPartnerO26caseDisplayRepresentationsSDyAC10AppIntents0F14RepresentationVGvgZ_0()
{
  v0 = sub_1000026D8(&qword_100061308, "zS");
  __chkstk_darwin(v0 - 8);
  v2 = v20 - v1;
  v3 = sub_1000026D8(&unk_100061B30, "zS");
  __chkstk_darwin(v3 - 8);
  v5 = v20 - v4;
  v6 = sub_10004D130();
  v21 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_1000026D8(&qword_100061310, "zS");
  v8 = sub_1000026D8(&qword_100061F10, &qword_10004F290);
  v9 = *(v8 - 8);
  v23 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004EFA0;
  v12 = (v11 + v10);
  v20[1] = *(v8 + 48);
  *v12 = 0;
  sub_10004D110();
  v13 = *(v7 + 56);
  v20[2] = v7 + 56;
  v22 = v13;
  v14 = v5;
  v13(v5, 1, 1, v6);
  v15 = sub_10004CF10();
  v16 = *(*(v15 - 8) + 56);
  v16(v2, 1, 1, v15);
  sub_10004CF20();
  v17 = &v12[v23];
  v23 = *(v8 + 48);
  *v17 = 1;
  sub_10004D110();
  v22(v14, 1, 1, v21);
  v16(v2, 1, 1, v15);
  sub_10004CF20();
  v18 = sub_100045C90(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v18;
}

unint64_t sub_100004780()
{
  result = qword_1000612A0;
  if (!qword_1000612A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612A0);
  }

  return result;
}

unint64_t sub_1000047D8()
{
  result = qword_1000612A8;
  if (!qword_1000612A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612A8);
  }

  return result;
}

unint64_t sub_100004830()
{
  result = qword_1000612B0;
  if (!qword_1000612B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612B0);
  }

  return result;
}

unint64_t sub_100004888()
{
  result = qword_1000612B8;
  if (!qword_1000612B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612B8);
  }

  return result;
}

unint64_t sub_1000048EC()
{
  result = qword_1000612C0;
  if (!qword_1000612C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612C0);
  }

  return result;
}

unint64_t sub_100004944()
{
  result = qword_1000612C8;
  if (!qword_1000612C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612C8);
  }

  return result;
}

unint64_t sub_10000499C()
{
  result = qword_1000612D0;
  if (!qword_1000612D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612D0);
  }

  return result;
}

unint64_t sub_1000049F4()
{
  result = qword_1000612D8;
  if (!qword_1000612D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612D8);
  }

  return result;
}

unint64_t sub_100004A98()
{
  result = qword_100061460;
  if (!qword_100061460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061460);
  }

  return result;
}

unint64_t sub_100004AF0()
{
  result = qword_1000612E0;
  if (!qword_1000612E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612E0);
  }

  return result;
}

unint64_t sub_100004B48()
{
  result = qword_1000612E8;
  if (!qword_1000612E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612E8);
  }

  return result;
}

unint64_t sub_100004BA0()
{
  result = qword_1000612F0;
  if (!qword_1000612F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612F0);
  }

  return result;
}

unint64_t sub_100004BF8()
{
  result = qword_1000612F8;
  if (!qword_1000612F8)
  {
    sub_100002AEC(&qword_100061300, &qword_10004F208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LLMPartner(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LLMPartner(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100004E18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10004D150();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1000026D8(&qword_100061480, &qword_10004F2F0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_10004D1B0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_10004D960();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v6 = sub_10004DC80();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = sub_10004D760();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000050EC, 0, 0);
}

uint64_t sub_1000050EC()
{
  v61 = v0;
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v4 = *(v3 + 16);
  v4(v1, v0[3], v2);
  v5 = (*(v3 + 88))(v1, v2);
  v6 = v0[24];
  if (v5 == enum case for GeneratedResponse.RichContentEntity.text(_:))
  {
    v7 = v0[28];
    v8 = v0[2];
    (*(v0[25] + 96))(v7, v6);
    v9 = v7[1];
    *v8 = *v7;
    v8[1] = v9;
    v10 = enum case for RichContentResultSegment.string(_:);
    v11 = sub_10004D410();
    (*(*(v11 - 8) + 104))(v8, v10, v11);
LABEL_3:

    v12 = v0[1];

    return v12();
  }

  if (v5 == enum case for GeneratedResponse.RichContentEntity.imageData(_:))
  {
    v14 = v0[28];
    (*(v0[25] + 96))(v14, v6);
    v15 = *v14;
    v0[29] = v14[1];
    v58 = (v15 + *v15);
    v16 = swift_task_alloc();
    v0[30] = v16;
    *v16 = v0;
    v16[1] = sub_10000570C;

    return v58();
  }

  else
  {
    if (v5 != enum case for GeneratedResponse.RichContentEntity.fileData(_:))
    {
      v27 = v0[27];
      v28 = v0[3];
      v29 = v0[24];
      sub_10004DC30();
      v4(v27, v28, v29);
      v30 = sub_10004DC70();
      v31 = sub_10004DEB0();
      v32 = os_log_type_enabled(v30, v31);
      v33 = v0[27];
      if (v32)
      {
        v34 = v0[25];
        v35 = v0[26];
        v36 = v0[24];
        v56 = v0[18];
        v57 = v0[17];
        v59 = v0[21];
        v37 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v60 = v55;
        *v37 = 136315138;
        v4(v35, v33, v36);
        v38 = sub_10004DD70();
        v54 = v31;
        v40 = v39;
        v41 = *(v34 + 8);
        v41(v33, v36);
        v42 = sub_10001E340(v38, v40, &v60);

        *(v37 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v30, v54, "Unexpected segment content: %s", v37, 0xCu);
        sub_100007B00(v55);

        (*(v56 + 8))(v59, v57);
      }

      else
      {
        v43 = v0[24];
        v44 = v0[25];
        v45 = v0[21];
        v46 = v0[17];
        v47 = v0[18];

        v48 = *(v44 + 8);
        v48(v33, v43);
        v41 = v48;
        (*(v47 + 8))(v45, v46);
      }

      v49 = v0[28];
      v50 = v0[24];
      v51 = v0[2];
      *v51 = 0;
      v51[1] = 0xE000000000000000;
      v52 = enum case for RichContentResultSegment.string(_:);
      v53 = sub_10004D410();
      (*(*(v53 - 8) + 104))(v51, v52, v53);
      v41(v49, v50);
      goto LABEL_3;
    }

    v17 = v0[28];
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[14];
    (*(v0[25] + 96))(v17, v6);
    (*(v19 + 32))(v18, v17, v20);
    sub_10004D920();
    v21 = sub_10004D940();
    v23 = v22;
    v0[34] = v22;
    v24 = swift_task_alloc();
    v0[35] = v24;
    *v24 = v0;
    v24[1] = sub_100005A38;
    v25 = v0[12];
    v26 = v0[8];

    return sub_100006724(v26, v25, v21, v23);
  }
}

uint64_t sub_10000570C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[31] = a1;
  v4[32] = a2;
  v4[33] = v2;

  if (v2)
  {
    v5 = sub_100006104;
  }

  else
  {
    v5 = sub_100005824;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100005824()
{
  sub_10004DC30();
  v1 = sub_10004DC70();
  v2 = sub_10004DEA0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Generated image] Loaded image data successfully", v3, 2u);
  }

  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[23];
  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[2];

  (*(v8 + 8))(v6, v7);
  *v9 = v5;
  v9[1] = v4;
  v10 = enum case for RichContentResultSegment.imageData(_:);
  v11 = sub_10004D410();
  (*(*(v11 - 8) + 104))(v9, v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100005A38()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v2[36] = v0;

  v6 = *(v4 + 8);
  v2[37] = v6;
  v2[38] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  if (v0)
  {
    v7 = sub_1000063A8;
  }

  else
  {
    v7 = sub_100005BD8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100005BD8()
{
  v59 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007BC0(v3, &qword_100061480, &qword_10004F2F0);
    v5 = v0[15];
    v4 = v0[16];
    v56 = v0[14];
    v6 = v0[10];
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    v48 = v0[9];
    v51 = v0[4];
    v10 = v0[2];
    v11 = sub_1000026D8(&qword_1000613B0, &unk_10004F300);
    v12 = (v10 + v11[12]);
    v13 = (v10 + v11[16]);
    v53 = v11[20];
    (*(v6 + 56))(v7, 1, 1, v48);
    (*(v9 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v51);
    sub_10004D190();
    *v12 = sub_10004D950();
    v12[1] = v14;
    *v13 = 0x64616F6C6E776F44;
    v13[1] = 0xEF64656C69614620;
    v15 = sub_10004D930();
    (*(v5 + 8))(v4, v56);
    *(v10 + v53) = v15;
  }

  else
  {
    v16 = v0[13];
    v17 = v0[11];
    (*(v2 + 32))(v16, v3, v1);
    sub_10004DC30();
    v57 = *(v2 + 16);
    v57(v17, v16, v1);
    v18 = sub_10004DC70();
    v19 = sub_10004DEB0();
    v20 = os_log_type_enabled(v18, v19);
    v54 = v0[37];
    v21 = v0[22];
    v22 = v0[17];
    v23 = v0[18];
    v24 = v0[11];
    v25 = v0[9];
    if (v20)
    {
      v49 = v19;
      v26 = swift_slowAlloc();
      v52 = v22;
      v27 = swift_slowAlloc();
      v58 = v27;
      *v26 = 136315138;
      sub_100007D30(&qword_1000613B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v28 = sub_10004DF80();
      v47 = v21;
      v30 = v29;
      v54(v24, v25);
      v31 = sub_10001E340(v28, v30, &v58);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v18, v49, "[Generated file] Succesfully downloaded file at %s", v26, 0xCu);
      sub_100007B00(v27);

      (*(v23 + 8))(v47, v52);
    }

    else
    {

      v54(v24, v25);
      (*(v23 + 8))(v21, v22);
    }

    v50 = v0[37];
    v33 = v0[15];
    v32 = v0[16];
    v34 = v0[13];
    v55 = v0[14];
    v35 = v0[9];
    v10 = v0[2];
    v36 = sub_1000026D8(&qword_1000613B0, &unk_10004F300);
    v37 = (v10 + v36[12]);
    v38 = (v10 + v36[16]);
    v39 = v36[20];
    v57(v10, v34, v35);
    *v37 = sub_10004D950();
    v37[1] = v40;
    *v38 = sub_10004D940();
    v38[1] = v41;
    v42 = sub_10004D930();
    v50(v34, v35);
    (*(v33 + 8))(v32, v55);
    *(v10 + v39) = v42;
  }

  v43 = enum case for RichContentResultSegment.fileData(_:);
  v44 = sub_10004D410();
  (*(*(v44 - 8) + 104))(v10, v43, v44);

  v45 = v0[1];

  return v45();
}

uint64_t sub_100006104(uint64_t a1)
{
  sub_10004DC30();
  swift_errorRetain();
  v2 = sub_10004DC70();
  v3 = sub_10004DEB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Generated image] Failed to load image data: %@", v4, 0xCu);
    sub_100007BC0(v5, &qword_100061DC0, &unk_100050840);
  }

  else
  {
  }

  v7 = v1[2];
  (*(v1[18] + 8))(v1[20], v1[17]);
  *v7 = xmmword_10004E720;
  v8 = enum case for RichContentResultSegment.imageData(_:);
  v9 = sub_10004D410();
  (*(*(v9 - 8) + 104))(v7, v8, v9);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1000063A8(uint64_t a1)
{
  sub_10004DC30();
  swift_errorRetain();
  v2 = sub_10004DC70();
  v3 = sub_10004DEB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Generated file] Failed to download file: %@", v4, 0xCu);
    sub_100007BC0(v5, &qword_100061DC0, &unk_100050840);
  }

  else
  {
  }

  (*(v1[18] + 8))(v1[19], v1[17]);
  v8 = v1[15];
  v7 = v1[16];
  v26 = v1[14];
  v9 = v1[10];
  v11 = v1[6];
  v10 = v1[7];
  v12 = v1[5];
  v23 = v1[9];
  v24 = v1[4];
  v13 = v1[2];
  v14 = sub_1000026D8(&qword_1000613B0, &unk_10004F300);
  v15 = (v13 + v14[12]);
  v16 = (v13 + v14[16]);
  v25 = v14[20];
  (*(v9 + 56))(v10, 1, 1, v23);
  (*(v12 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v24);
  sub_10004D190();
  *v15 = sub_10004D950();
  v15[1] = v17;
  *v16 = 0x64616F6C6E776F44;
  v16[1] = 0xEF64656C69614620;
  v18 = sub_10004D930();
  (*(v8 + 8))(v7, v26);
  *(v13 + v25) = v18;
  v19 = enum case for RichContentResultSegment.fileData(_:);
  v20 = sub_10004D410();
  (*(*(v20 - 8) + 104))(v13, v19, v20);

  v21 = v1[1];

  return v21();
}

uint64_t sub_100006724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  sub_10004D290();
  v4[8] = swift_task_alloc();
  v5 = sub_10004D2B0();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  sub_1000026D8(&qword_100061480, &qword_10004F2F0);
  v4[12] = swift_task_alloc();
  v6 = sub_10004D1B0();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000068E0, 0, 0);
}

uint64_t sub_1000068E0()
{
  sub_100007248(v0[6], v0[7], v0[12]);
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[4];
    sub_100007BC0(v1, &qword_100061480, &qword_10004F2F0);
    (*(v3 + 56))(v4, 1, 1, v2);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[16];
    v8 = *(v3 + 32);
    v0[17] = v8;
    v0[18] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v8(v7, v1, v2);
    v9 = [objc_opt_self() defaultSessionConfiguration];
    v0[19] = v9;
    [v9 set_usesNWLoader:1];
    v10 = sub_10004DD00();
    [v9 set_sourceApplicationBundleIdentifier:v10];

    v0[20] = [objc_opt_self() sessionWithConfiguration:v9];
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_100006BDC;
    v12 = v0[15];
    v13 = v0[5];

    return NSURLSession.download(from:delegate:)(v12, v13, 0);
  }
}

uint64_t sub_100006BDC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_100007154;
  }

  else
  {
    v4 = sub_100006D1C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100006D1C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1 || [v1 statusCode] - 300 < 0xFFFFFFFFFFFFFF9CLL)
  {
    v2 = v0[22];
    v3 = v0[20];
    v50 = v0[16];
    v46 = v0[19];
    v48 = v0[15];
    v4 = v0[13];
    v5 = v0[14];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    sub_10004D280();
    sub_100007C20(&_swiftEmptyArrayStorage);
    sub_100007D30(&qword_1000613C0, &type metadata accessor for URLError, &protocol conformance descriptor for URLError);
    sub_10004D0E0();
    sub_10004D2A0();
    (*(v7 + 8))(v6, v8);
    swift_willThrow();

    v9 = *(v5 + 8);
    v9(v48, v4);
    v9(v50, v4);
LABEL_4:

    v10 = v0[1];
    goto LABEL_5;
  }

  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  sub_10004D170(v14);
  v16 = v15;
  v0[2] = 0;
  v17 = [v13 removeItemAtURL:v15 error:v0 + 2];

  v18 = v0[2];
  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v20 = v18;
    sub_10004D100();

    swift_willThrow();
  }

  v21 = [v12 defaultManager];
  sub_10004D170(v22);
  v24 = v23;
  sub_10004D170(v25);
  v27 = v26;
  v0[3] = 0;
  v28 = [v21 moveItemAtURL:v24 toURL:v26 error:v0 + 3];

  v29 = v0[3];
  v30 = v0[22];
  v31 = v0[19];
  v32 = v0[20];
  if (!v28)
  {
    v40 = v0[15];
    v39 = v0[16];
    v41 = v0[13];
    v42 = v0[14];
    v43 = v29;
    sub_10004D100();

    swift_willThrow();
    v44 = *(v42 + 8);
    v44(v40, v41);
    v44(v39, v41);
    goto LABEL_4;
  }

  v49 = v0[17];
  v33 = v0[15];
  v45 = v0[20];
  v47 = v0[16];
  v35 = v0[13];
  v34 = v0[14];
  v36 = v0[4];
  v37 = *(v34 + 8);
  v38 = v29;
  v37(v33, v35);

  v49(v36, v47, v35);
  (*(v34 + 56))(v36, 0, 1, v35);

  v10 = v0[1];
LABEL_5:

  return v10();
}

uint64_t sub_100007154()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100007248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v60 = a1;
  v61 = a2;
  v63 = sub_10004DC80();
  v3 = *(v63 - 8);
  __chkstk_darwin(v63);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004D150();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000026D8(&qword_100061480, &qword_10004F2F0);
  __chkstk_darwin(v10 - 8);
  v57 = v53 - v11;
  v12 = sub_10004D1B0();
  v13 = *(v12 - 8);
  v65 = v12;
  v66 = v13;
  v14 = __chkstk_darwin(v12);
  v62 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = v53 - v17;
  v19 = __chkstk_darwin(v16);
  v58 = v53 - v20;
  __chkstk_darwin(v19);
  v59 = v53 - v21;
  v22 = CPSharedResourcesDirectory();
  if (v22 && (objc_opt_self(), swift_dynamicCastObjCClass()) && (v67 = 0, v68 = 0, v23 = v5, v24 = v7, v25 = v6, v26 = v3, v27 = v22, sub_10004DD20(), v56 = v27, v27, v3 = v26, v28 = v25, v29 = v24, v5 = v23, v68))
  {
    v54 = v67;
    v53[0] = *(v66 + 56);
    v53[1] = v66 + 56;
    (v53[0])(v57, 1, 1, v65);
    v30 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v31 = *(v29 + 104);
    LODWORD(v63) = enum case for URL.DirectoryHint.inferFromPath(_:);
    v31(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v28);
    v55 = v31;
    sub_10004D190();
    v67 = 7368052;
    v68 = 0xE300000000000000;
    v31(v9, v30, v28);
    v57 = sub_100007DF8();
    v32 = v58;
    sub_10004D1A0();
    v54 = *(v29 + 8);
    v54(v9, v28);
    v33 = v65;
    v34 = *(v66 + 8);
    v34(v18, v65);
    v67 = 0xD000000000000018;
    v68 = 0x80000001000517A0;
    v55(v9, v63, v28);
    v35 = v59;
    sub_10004D1A0();
    v54(v9, v28);
    v34(v32, v33);

    v36 = v62;
    sub_10004D180();

    v37 = [objc_opt_self() defaultManager];
    sub_10004D170(v38);
    v40 = v39;
    v67 = 0;
    v41 = [v37 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:&v67];

    if (v41)
    {
      v42 = v67;
      v34(v35, v33);

      v43 = v64;
      (*(v66 + 32))(v64, v36, v33);
      return (v53[0])(v43, 0, 1, v33);
    }

    else
    {
      v52 = v67;
      sub_10004D100();

      swift_willThrow();
      v34(v36, v33);
      return (v34)(v35, v33);
    }
  }

  else
  {
    sub_10004DC30();
    v45 = sub_10004DC70();
    v46 = sub_10004DEB0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v67 = v48;
      *v47 = 136315138;
      v69 = CPSharedResourcesDirectory();
      sub_1000026D8(&qword_1000613C8, qword_10004F320);
      v49 = sub_10004DD70();
      v51 = sub_10001E340(v49, v50, &v67);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "Could not get URL string: %s", v47, 0xCu);
      sub_100007B00(v48);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v63);
    return (*(v66 + 56))(v64, 1, 1, v65);
  }
}

uint64_t sub_100007970(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_1000079D0(uint64_t a1, uint64_t a2)
{
  sub_10004DFC0();
  sub_10004DDB0();
  v4 = sub_10004DFD0();

  return sub_100007A48(a1, a2, v4);
}

unint64_t sub_100007A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10004DFA0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100007B00(void *a1)
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

void sub_100007B4C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100007BC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000026D8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100007C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000026D8(&qword_100061E10, &unk_10004F310);
    v3 = sub_10004DF50();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007D78(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000079D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007DE8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100007D30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&unk_100061E40, qword_10004F6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100007DE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100007DF8()
{
  result = qword_1000613D0;
  if (!qword_1000613D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000613D0);
  }

  return result;
}

unint64_t sub_100007E50()
{
  result = qword_1000613E0;
  if (!qword_1000613E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000613E0);
  }

  return result;
}

unint64_t sub_100007EA8()
{
  result = qword_1000613E8;
  if (!qword_1000613E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000613E8);
  }

  return result;
}

uint64_t sub_100007F1C()
{
  v0[5] = sub_10004D500();
  v0[6] = &protocol witness table for GenerativeAssistantFeatureFlagManager;
  sub_100014CF4(v0 + 2);
  sub_10004D4F0();
  sub_10004DE50();
  v0[8] = sub_10004DE40();
  v2 = sub_10004DE20();

  return _swift_task_switch(sub_100007FD4, v2, v1);
}

uint64_t sub_100007FD4()
{

  sub_10004DA00();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100008044()
{
  v0 = sub_10004D130();
  sub_1000037AC(v0, qword_100062430);
  sub_100003774(v0, qword_100062430);
  return sub_10004D110();
}

uint64_t sub_100008110@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000026D8(&unk_100061B30, "zS");
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10004D130();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  sub_10004D110();
  sub_10004D110();
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_1000026D8(&qword_100061560, &qword_10004F700);
  *(swift_allocObject() + 16) = xmmword_10004F370;
  sub_10004D110();
  sub_10004D110();
  sub_10004D110();
  sub_10004D110();
  sub_10004D110();
  sub_10004CE40();
  v7 = sub_10004CE30();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_10000839C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000026D8(&unk_100061430, &unk_10004F5E0);
  __chkstk_darwin(v2 - 8);
  v49 = v45 - v3;
  v55 = sub_10004CFC0();
  v69 = *(v55 - 8);
  __chkstk_darwin(v55);
  v67 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000026D8(&unk_100061B20, &qword_100050D50);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = v45 - v8;
  v9 = sub_1000026D8(&unk_100061440, &unk_10004F5F0);
  __chkstk_darwin(v9 - 8);
  v47 = v45 - v10;
  v11 = sub_1000026D8(&unk_100061B30, "zS");
  __chkstk_darwin(v11 - 8);
  v54 = v45 - v12;
  v13 = sub_10004D120();
  v59 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v68 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004D270();
  __chkstk_darwin(v16 - 8);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004DCF0();
  __chkstk_darwin(v19 - 8);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004D130();
  v51 = v22;
  v70 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[3] = sub_10004D500();
  a1[4] = &protocol witness table for GenerativeAssistantFeatureFlagManager;
  sub_100014CF4(a1);
  sub_10004D4F0();
  a1[8] = sub_10004D520();
  a1[9] = &protocol witness table for GenerativeAssistantRestrictionManager;
  sub_100014CF4(a1 + 5);
  sub_10004D510();
  type metadata accessor for StreamController();
  a1[10] = swift_initStaticObject();
  sub_10004D990();
  swift_allocObject();
  a1[11] = sub_10004D980();
  a1[12] = &unk_10004F600;
  a1[13] = 0;
  v62 = a1;
  v46 = sub_1000026D8(&unk_100061450, &qword_10004F608);
  v56 = v21;
  sub_10004DCE0();
  v57 = v18;
  sub_10004D260();
  v25 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v26 = *(v14 + 104);
  v52 = v14 + 104;
  v65 = v26;
  v53 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v26(v68, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_10004D140();
  v27 = *(v70 + 56);
  v70 += 56;
  v64 = v27;
  v28 = v54;
  v27(v54, 1, 1, v22);
  LOBYTE(v71) = 2;
  v29 = sub_10004DE10();
  (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
  v60 = sub_10004CBB0();
  v30 = *(v60 - 8);
  v61 = *(v30 + 56);
  v58 = v30 + 56;
  v61(v66, 1, 1, v60);
  v50 = enum case for InputConnectionBehavior.default(_:);
  v31 = *(v69 + 104);
  v69 += 104;
  v63 = v31;
  v32 = v55;
  (v31)(v67);
  a1[14] = sub_10004CD10();
  v47 = sub_1000026D8(&unk_100061B40, &qword_10004F610);
  sub_10004DCE0();
  sub_10004D260();
  v65(v68, v25, v59);
  v45[1] = v24;
  sub_10004D140();
  v33 = v51;
  v64(v28, 1, 1, v51);
  LOBYTE(v71) = 2;
  v34 = v60;
  v35 = v61;
  v61(v66, 1, 1, v60);
  v35(v48, 1, 1, v34);
  v36 = v50;
  v63(v67, v50, v32);
  sub_100004A98();
  v62[15] = sub_10004CCF0();
  sub_1000026D8(&qword_100061B50, &qword_10004F618);
  sub_10004DCE0();
  sub_10004D260();
  v65(v68, v53, v59);
  sub_10004D140();
  v37 = v54;
  v64(v54, 1, 1, v33);
  v38 = sub_10004DCD0();
  v71 = 0;
  v72 = 0;
  v39 = *(v38 - 8);
  v47 = *(v39 + 56);
  v48 = (v39 + 56);
  v40 = v49;
  (v47)(v49, 1, 1, v38);
  v41 = v66;
  v61(v66, 1, 1, v60);
  v42 = v67;
  v43 = v55;
  v63(v67, v36, v55);
  v62[16] = sub_10004CD00();
  v46 = sub_1000026D8(&qword_100061470, &qword_10004F620);
  sub_10004DCE0();
  sub_10004D260();
  v65(v68, v53, v59);
  sub_10004D140();
  v64(v37, 1, 1, v51);
  v71 = 0;
  v72 = 0;
  (v47)(v40, 1, 1, v38);
  v61(v41, 1, 1, v60);
  v63(v42, v50, v43);
  result = sub_10004CD00();
  v62[17] = result;
  return result;
}

uint64_t sub_100008E84(uint64_t a1)
{
  v2[194] = v1;
  v2[193] = a1;
  v3 = sub_10004CFB0();
  v2[195] = v3;
  v2[196] = *(v3 - 8);
  v2[197] = swift_task_alloc();
  v2[198] = swift_task_alloc();
  v4 = sub_10004D5D0();
  v2[199] = v4;
  v2[200] = *(v4 - 8);
  v2[201] = swift_task_alloc();
  v5 = sub_10004D380();
  v2[202] = v5;
  v2[203] = *(v5 - 8);
  v2[204] = swift_task_alloc();
  v6 = sub_10004CB90();
  v2[205] = v6;
  v2[206] = *(v6 - 8);
  v2[207] = swift_task_alloc();
  v7 = sub_10004CF50();
  v2[208] = v7;
  v2[209] = *(v7 - 8);
  v2[210] = swift_task_alloc();
  v8 = sub_10004CF40();
  v2[211] = v8;
  v2[212] = *(v8 - 8);
  v2[213] = swift_task_alloc();
  v9 = sub_10004D1B0();
  v2[214] = v9;
  v2[215] = *(v9 - 8);
  v2[216] = swift_task_alloc();
  v10 = sub_10004D6A0();
  v2[217] = v10;
  v2[218] = *(v10 - 8);
  v2[219] = swift_task_alloc();
  v11 = sub_10004D3F0();
  v2[220] = v11;
  v2[221] = *(v11 - 8);
  v2[222] = swift_task_alloc();
  v12 = sub_10004D3D0();
  v2[223] = v12;
  v2[224] = *(v12 - 8);
  v2[225] = swift_task_alloc();
  sub_10004CE60();
  v2[226] = swift_task_alloc();
  v13 = sub_10004D350();
  v2[227] = v13;
  v2[228] = *(v13 - 8);
  v2[229] = swift_task_alloc();
  v2[230] = swift_task_alloc();
  v2[231] = swift_task_alloc();
  v2[232] = swift_task_alloc();
  v2[233] = swift_task_alloc();
  v14 = sub_10004D3A0();
  v2[234] = v14;
  v2[235] = *(v14 - 8);
  v2[236] = swift_task_alloc();
  sub_1000026D8(&qword_100061480, &qword_10004F2F0);
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();
  sub_1000026D8(&qword_100061488, &unk_100050D70);
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v2[243] = swift_task_alloc();
  v2[244] = swift_task_alloc();
  v2[245] = swift_task_alloc();
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v2[248] = swift_task_alloc();
  v2[249] = swift_task_alloc();
  v2[250] = swift_task_alloc();
  v15 = sub_10004D840();
  v2[251] = v15;
  v2[252] = *(v15 - 8);
  v2[253] = swift_task_alloc();
  v2[254] = swift_task_alloc();
  v2[255] = swift_task_alloc();
  sub_1000026D8(&unk_100061490, &qword_10004F630);
  v2[256] = swift_task_alloc();
  v2[257] = swift_task_alloc();
  v16 = sub_10004D410();
  v2[258] = v16;
  v2[259] = *(v16 - 8);
  v2[260] = swift_task_alloc();
  v2[261] = swift_task_alloc();
  v17 = sub_10004D760();
  v2[262] = v17;
  v2[263] = *(v17 - 8);
  v2[264] = swift_task_alloc();
  v18 = sub_10004D870();
  v2[265] = v18;
  v2[266] = *(v18 - 8);
  v2[267] = swift_task_alloc();
  v19 = sub_10004D9F0();
  v2[268] = v19;
  v2[269] = *(v19 - 8);
  v2[270] = swift_task_alloc();
  sub_1000026D8(&unk_100061DA0, &qword_10004F638);
  v2[271] = swift_task_alloc();
  v20 = sub_10004CBB0();
  v2[272] = v20;
  v2[273] = *(v20 - 8);
  v2[274] = swift_task_alloc();
  v2[275] = swift_task_alloc();
  v2[276] = swift_task_alloc();
  v2[277] = sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  v2[278] = swift_task_alloc();
  v21 = sub_10004DA90();
  v2[279] = v21;
  v2[280] = *(v21 - 8);
  v2[281] = swift_task_alloc();
  v2[282] = swift_task_alloc();
  v2[283] = swift_task_alloc();
  v22 = sub_10004D570();
  v2[284] = v22;
  v2[285] = *(v22 - 8);
  v2[286] = swift_task_alloc();
  sub_1000026D8(&qword_1000614A8, &unk_100050D80);
  v2[287] = swift_task_alloc();
  sub_1000026D8(&unk_1000614B0, &qword_10004F650);
  v2[288] = swift_task_alloc();
  sub_1000026D8(&unk_100061DB0, &qword_10004F658);
  v2[289] = swift_task_alloc();
  v23 = sub_10004D720();
  v2[290] = v23;
  v2[291] = *(v23 - 8);
  v2[292] = swift_task_alloc();
  v2[293] = swift_task_alloc();
  v2[294] = sub_1000026D8(&qword_1000614C0, &unk_10004F660);
  v2[295] = swift_task_alloc();
  v2[296] = swift_task_alloc();
  sub_10004D8F0();
  v2[297] = swift_task_alloc();
  sub_1000026D8(&qword_1000614C8, &unk_100050D90);
  v2[298] = swift_task_alloc();
  v24 = sub_10004D620();
  v2[299] = v24;
  v2[300] = *(v24 - 8);
  v2[301] = swift_task_alloc();
  v25 = sub_10004D540();
  v2[302] = v25;
  v2[303] = *(v25 - 8);
  v2[304] = swift_task_alloc();
  v2[305] = swift_task_alloc();
  sub_1000026D8(&qword_1000614D0, &unk_10004F670);
  v2[306] = swift_task_alloc();
  v2[307] = swift_task_alloc();
  v26 = type metadata accessor for GenerativeResponseEntity(0);
  v2[308] = v26;
  v2[309] = *(v26 - 8);
  v2[310] = swift_task_alloc();
  v2[311] = swift_task_alloc();
  v27 = sub_10004DA20();
  v2[312] = v27;
  v2[313] = *(v27 - 8);
  v2[314] = swift_task_alloc();
  v28 = sub_10004D640();
  v2[315] = v28;
  v2[316] = *(v28 - 8);
  v2[317] = swift_task_alloc();
  v29 = sub_10004DC80();
  v2[318] = v29;
  v2[319] = *(v29 - 8);
  v2[320] = swift_task_alloc();
  v2[321] = swift_task_alloc();
  v2[322] = swift_task_alloc();
  v2[323] = swift_task_alloc();
  v2[324] = swift_task_alloc();
  v2[325] = swift_task_alloc();
  v2[326] = swift_task_alloc();
  v2[327] = swift_task_alloc();
  v2[328] = swift_task_alloc();
  v2[329] = swift_task_alloc();
  v2[330] = swift_task_alloc();
  v30 = sub_10004CEF0();
  v2[331] = v30;
  v2[332] = *(v30 - 8);
  v2[333] = swift_task_alloc();
  v2[334] = swift_task_alloc();
  v2[335] = swift_task_alloc();
  v2[336] = swift_task_alloc();
  v2[337] = swift_task_alloc();
  v2[338] = swift_task_alloc();
  v2[339] = swift_task_alloc();
  v2[340] = swift_task_alloc();
  sub_1000026D8(&qword_1000614D8, &unk_100050DA0);
  v2[341] = swift_task_alloc();
  v2[342] = swift_task_alloc();
  v2[343] = swift_task_alloc();
  v2[344] = swift_task_alloc();
  v2[345] = swift_task_alloc();
  v2[346] = swift_task_alloc();
  v31 = sub_10004D210();
  v2[347] = v31;
  v32 = *(v31 - 8);
  v2[348] = v32;
  v2[349] = *(v32 + 64);
  v2[350] = swift_task_alloc();
  v2[351] = swift_task_alloc();
  sub_10004DE50();
  v2[352] = sub_10004DE40();
  v34 = sub_10004DE20();
  v2[353] = v34;
  v2[354] = v33;

  return _swift_task_switch(sub_100009F14, v34, v33);
}

uint64_t sub_100009F14()
{
  v40 = v0;
  v1 = v0[346];
  v2 = v0[340];
  v3 = v0[332];
  v4 = v0[331];
  sub_10004D700();
  sub_10004D6F0();
  sub_10004DAE0();
  sub_10004D6D0();

  sub_10004D200();
  v0[355] = sub_100007E50();
  sub_10004CA80();
  sub_10004CED0();
  v5 = *(v3 + 8);
  v0[356] = v5;
  v0[357] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v6 = sub_10004CEC0();
  v0[358] = v6;
  v7 = *(v6 - 8);
  v0[359] = v7;
  v8 = *(v7 + 48);
  v0[360] = v8;
  v0[361] = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v9 = v8(v1, 1, v6);
  v10 = v0[346];
  if (v9 == 1)
  {
    sub_100007BC0(v0[346], &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    sub_10004CE90();
    (*(v7 + 8))(v10, v6);
  }

  v0[362] = sub_10004DBC0();
  sub_10004DBB0();
  sub_10004DB70();

  sub_10004DBB0();
  sub_10004DBA0();

  sub_10004DC60();
  v11 = sub_10004DC70();
  v12 = sub_10004DEA0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[330];
  v15 = v0[319];
  v16 = v0[318];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, &v39);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v39);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s creating transaction", v17, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(v15 + 8);
  v18(v14, v16);
  v37 = v18;
  v0[363] = v18;
  v19 = v0[317];
  v20 = v0[316];
  v21 = v0[315];
  v22 = v0[194];
  v0[364] = os_transaction_create();
  sub_10004D6F0();
  (*(v20 + 104))(v19, enum case for GenerativeUsecases.textGeneration(_:), v21);
  sub_10004D630();
  (*(v20 + 8))(v19, v21);
  sub_10004D6B0();

  sub_10004DC60();
  sub_100014DAC(v22, (v0 + 2));
  v23 = sub_10004DC70();
  v24 = sub_10004DE90();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[329];
  v27 = v0[318];
  if (v25)
  {
    v28 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v28 = 136315650;
    *(v28 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, &v39);
    v36 = v26;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v39);
    *(v28 + 22) = 2080;
    sub_100014E78(v0 + 2, v0[5]);
    v29 = sub_10004D530();
    v31 = v30;
    sub_100014DE4((v0 + 2));
    v32 = sub_10001E340(v29, v31, &v39);

    *(v28 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s.%s feature flags: %s", v28, 0x20u);
    swift_arrayDestroy();

    v37(v36, v27);
  }

  else
  {

    v37(v26, v27);
    sub_100014DE4((v0 + 2));
  }

  v38 = (*(v0[194] + 96) + **(v0[194] + 96));
  v33 = swift_task_alloc();
  v0[365] = v33;
  *v33 = v0;
  v33[1] = sub_10000A580;
  v34 = v0[314];

  return v38(v34);
}

uint64_t sub_10000A580()
{
  v1 = *v0;

  v2 = *(v1 + 2832);
  v3 = *(v1 + 2824);

  return _swift_task_switch(sub_10000A6A0, v3, v2);
}

uint64_t sub_10000A6A0()
{
  v155 = v0;
  v142 = *(v0 + 2880);
  v138 = *(v0 + 2864);
  v132 = *(v0 + 2848);
  v1 = *(v0 + 2760);
  v2 = *(v0 + 2712);
  v3 = *(v0 + 2648);
  v4 = *(v0 + 2456);
  v5 = *(v0 + 2440);
  v6 = *(v0 + 2424);
  v7 = *(v0 + 2416);
  v8 = *(v0 + 1552);
  sub_1000157A0(*(v0 + 2488));
  v9 = sub_10004D580();
  v149 = *(v9 - 8);
  v151 = v9;
  (*(v149 + 56))(v4, 1, 1);
  (*(v6 + 104))(v5, enum case for GenerativeAssistantUseCase.composition(_:), v7);
  sub_100014E14(v8, v0 + 1312);
  sub_10004CCC0();
  sub_10004CA80();
  sub_10004CED0();
  v132(v2, v3);
  if (v142(v1, 1, v138) == 1)
  {
    v10 = *(v0 + 2384);
    sub_100007BC0(*(v0 + 2760), &qword_1000614D8, &unk_100050DA0);
    v11 = sub_10004CE70();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  else
  {
    v12 = *(v0 + 2872);
    v13 = *(v0 + 2864);
    v14 = *(v0 + 2760);
    sub_10004CE80();
    (*(v12 + 8))(v14, v13);
  }

  v143 = *(v0 + 2880);
  v15 = *(v0 + 2848);
  v135 = *(v0 + 2752);
  v139 = *(v0 + 2864);
  v16 = *(v0 + 2704);
  v17 = *(v0 + 2696);
  v18 = *(v0 + 2648);
  v130 = *(v0 + 2432);
  v133 = *(v0 + 2440);
  v19 = *(v0 + 2424);
  v128 = *(v0 + 2416);
  v20 = *(v0 + 2384);
  v21 = *(v0 + 2368);
  sub_10004DED0();
  sub_100007BC0(v20, &qword_1000614C8, &unk_100050D90);
  sub_10004CA80();
  sub_10004CEE0();
  v15(v16, v18);
  sub_10004DEE0();
  sub_100007BC0(v21, &qword_1000614C0, &unk_10004F660);
  (*(v19 + 16))(v130, v133, v128);
  sub_10004CA80();
  sub_10004CED0();
  v15(v17, v18);
  if (v143(v135, 1, v139) == 1)
  {
    sub_100007BC0(*(v0 + 2752), &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    v22 = *(v0 + 2872);
    v23 = *(v0 + 2864);
    v24 = *(v0 + 2752);
    sub_10004CEA0();
    (*(v22 + 8))(v24, v23);
  }

  v140 = (v0 + 1352);
  v25 = *(v0 + 2880);
  v26 = *(v0 + 2864);
  v27 = *(v0 + 2848);
  v28 = *(v0 + 2744);
  v29 = *(v0 + 2688);
  v30 = *(v0 + 2648);
  sub_10004CA80();
  sub_10004CED0();
  v27(v29, v30);
  if (v25(v28, 1, v26) == 1)
  {
    sub_100007BC0(*(v0 + 2744), &qword_1000614D8, &unk_100050DA0);
    v31 = v149;
  }

  else
  {
    v32 = *(v0 + 2872);
    v33 = *(v0 + 2864);
    v34 = *(v0 + 2744);
    sub_10004CEB0();
    v36 = v35;
    (*(v32 + 8))(v34, v33);
    v31 = v149;
    if (v36)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v37 = *(v0 + 2456);
  v38 = *(v0 + 2448);
  v39 = *(v0 + 2312);
  sub_10004D250();
  v40 = sub_10004D270();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  sub_10001564C(v37, v38, &qword_1000614D0, &unk_10004F670);
  v41 = (*(v31 + 48))(v38, 1, v151);
  v42 = *(v0 + 2448);
  if (v41 == 1)
  {
    sub_100007BC0(*(v0 + 2448), &qword_1000614D0, &unk_10004F670);
    *v140 = 0u;
    *(v0 + 1368) = 0u;
    *(v0 + 1384) = 0;
  }

  else
  {
    *(v0 + 1376) = v151;
    *(v0 + 1384) = &protocol witness table for UserRequestPartnerInfo;
    v43 = sub_100014CF4(v140);
    (*(v31 + 32))(v43, v42, v151);
  }

  v44 = *(v0 + 2304);
  v45 = *(v0 + 1552);
  v46 = sub_10004D5B0();
  (*(*(v46 - 8) + 56))(v44, 1, 1, v46);
  sub_10004D610();
  v47 = sub_10004D5F0();
  v49 = v48;
  v152 = v47;
  *(v0 + 2928) = v47;
  *(v0 + 2936) = v48;
  sub_10004DC50();
  sub_100014DAC(v45, v0 + 160);
  v50 = sub_10004DC70();
  v51 = sub_10004DEA0();
  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 2904);
  v54 = *(v0 + 2624);
  v55 = *(v0 + 2544);
  v153 = v49;
  if (v52)
  {
    v56 = swift_slowAlloc();
    v154[0] = swift_slowAlloc();
    *v56 = 136315650;
    *(v56 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v154);
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v154);
    *(v56 + 22) = 2080;
    sub_10004CCC0();
    v57 = *(v0 + 3321);
    v58 = 0x54504774616863;
    if (v57)
    {
      v58 = 0x726568746FLL;
    }

    v59 = 0xE700000000000000;
    if (v57)
    {
      v59 = 0xE500000000000000;
    }

    if (v57 == 2)
    {
      v60 = 0;
    }

    else
    {
      v60 = v58;
    }

    if (v57 == 2)
    {
      v61 = 0xE000000000000000;
    }

    else
    {
      v61 = v59;
    }

    sub_100014DE4(v0 + 160);
    v62 = sub_10001E340(v60, v61, v154);
    v49 = v153;

    *(v56 + 24) = v62;
    _os_log_impl(&_mh_execute_header, v50, v51, "%s.%s partner requested: %s", v56, 0x20u);
    swift_arrayDestroy();

    v53(v54, v55);
  }

  else
  {

    v53(v54, v55);
    sub_100014DE4(v0 + 160);
  }

  sub_10004DC50();

  v63 = sub_10004DC70();
  v64 = sub_10004DEA0();

  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 2904);
  v67 = *(v0 + 2616);
  v68 = *(v0 + 2544);
  if (v65)
  {
    v69 = v49;
    v70 = swift_slowAlloc();
    v154[0] = swift_slowAlloc();
    *v70 = 136315650;
    *(v70 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v154);
    *(v70 + 12) = 2080;
    *(v70 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v154);
    *(v70 + 22) = 2080;
    *(v70 + 24) = sub_10001E340(v152, v69, v154);
    _os_log_impl(&_mh_execute_header, v63, v64, "%s.%s partner to use: %s", v70, 0x20u);
    swift_arrayDestroy();
  }

  v66(v67, v68);
  v71 = *(v0 + 1552);
  sub_10004DC60();
  sub_100014DAC(v71, v0 + 304);
  v72 = sub_10004DC70();
  v73 = sub_10004DE90();
  if (!os_log_type_enabled(v72, v73))
  {
    v78 = *(v0 + 2904);
    v79 = *(v0 + 2608);
    v80 = *(v0 + 2544);

    sub_100014DE4(v0 + 304);
    v78(v79, v80);
    goto LABEL_37;
  }

  v144 = *(v0 + 2864);
  v147 = *(v0 + 2880);
  v136 = *(v0 + 2848);
  v74 = *(v0 + 2736);
  v75 = *(v0 + 2680);
  v76 = *(v0 + 2648);
  v77 = swift_slowAlloc();
  v154[0] = swift_slowAlloc();
  *v77 = 136315650;
  *(v77 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v154);
  *(v77 + 12) = 2080;
  *(v77 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v154);
  *(v77 + 22) = 2080;
  sub_10004CA80();
  sub_10004CED0();
  v136(v75, v76);
  if (v147(v74, 1, v144) == 1)
  {
    sub_100007BC0(*(v0 + 2736), &qword_1000614D8, &unk_100050DA0);
LABEL_35:
    sub_100014DE4(v0 + 304);

    v86 = 0xE700000000000000;
    v87 = 0x6E776F6E6B6E75;
    goto LABEL_36;
  }

  v81 = *(v0 + 2872);
  v82 = *(v0 + 2864);
  v83 = *(v0 + 2736);
  v84 = sub_10004CEB0();
  v86 = v85;
  (*(v81 + 8))(v83, v82);
  if (!v86)
  {
    goto LABEL_35;
  }

  sub_100014DE4(v0 + 304);
  v87 = v84;
LABEL_36:
  v88 = *(v0 + 2904);
  v89 = *(v0 + 2608);
  v90 = *(v0 + 2544);
  v91 = sub_10001E340(v87, v86, v154);

  *(v77 + 24) = v91;
  _os_log_impl(&_mh_execute_header, v72, v73, "%s.%s Setting DialogEngineClient locale to %s", v77, 0x20u);
  swift_arrayDestroy();

  v88(v89, v90);
LABEL_37:
  v145 = *(v0 + 2880);
  v92 = *(v0 + 2864);
  v93 = *(v0 + 2848);
  v94 = *(v0 + 2728);
  v95 = *(v0 + 2672);
  v96 = *(v0 + 2648);
  *(v0 + 2944) = sub_10004D8E0();
  sub_10004D8D0();
  sub_10004CA80();
  sub_10004CED0();
  v93(v95, v96);
  if (v145(v94, 1, v92) == 1)
  {
    sub_100007BC0(*(v0 + 2728), &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    v97 = *(v0 + 2872);
    v98 = *(v0 + 2864);
    v99 = *(v0 + 2728);
    sub_10004CEB0();
    (*(v97 + 8))(v99, v98);
  }

  v100 = *(v0 + 1552);
  sub_10004D8C0();

  sub_100014E78(v100 + 5, v100[8]);
  if (sub_10004D4D0())
  {
    v101 = v100[8];
    v102 = v100[9];
    sub_100014E78(v100 + 5, v101);
    v103 = swift_task_alloc();
    *(v0 + 2952) = v103;
    *v103 = v0;
    v103[1] = sub_10000BD5C;

    return dispatch thunk of GenerativeAssistantRestrictions.signOutIfRestricted()(v101, v102);
  }

  else
  {

    sub_10004DC50();
    v104 = sub_10004DC70();
    v105 = sub_10004DEA0();
    v106 = os_log_type_enabled(v104, v105);
    v107 = *(v0 + 2904);
    v108 = *(v0 + 2560);
    v109 = *(v0 + 2544);
    if (v106)
    {
      v110 = swift_slowAlloc();
      v154[0] = swift_slowAlloc();
      *v110 = 136315394;
      *(v110 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v154);
      *(v110 + 12) = 2080;
      *(v110 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v154);
      _os_log_impl(&_mh_execute_header, v104, v105, "%s.%s request is still downloading and unavailable", v110, 0x16u);
      swift_arrayDestroy();
    }

    v107(v108, v109);
    v148 = *(v0 + 2496);
    v150 = *(v0 + 2512);
    v111 = *(v0 + 2472);
    v112 = *(v0 + 2464);
    v141 = *(v0 + 2456);
    v146 = *(v0 + 2504);
    v134 = *(v0 + 2440);
    v137 = *(v0 + 2488);
    v129 = *(v0 + 2424);
    v131 = *(v0 + 2416);
    v113 = *(v0 + 2400);
    v126 = *(v0 + 2392);
    v127 = *(v0 + 2408);
    v114 = *(v0 + 2264);
    v115 = *(v0 + 2240);
    v116 = *(v0 + 2232);
    v117 = *(v0 + 2224);
    v118 = *(v0 + 2208);
    v119 = *(v0 + 2184);
    v125 = *(v0 + 2176);
    sub_100014EBC(v137, v117);
    (*(v111 + 56))(v117, 0, 1, v112);
    sub_10004D8A0();
    (*(v115 + 104))(v114, enum case for CatId.modelDownloadingErrorResponse(_:), v116);
    sub_10004D880();

    (*(v115 + 8))(v114, v116);
    sub_100014F20();
    sub_10004CBD0();
    (*(v119 + 8))(v118, v125);
    sub_100007BC0(v117, &qword_1000614A0, &unk_10004F640);
    (*(v113 + 8))(v127, v126);
    (*(v129 + 8))(v134, v131);
    sub_100007BC0(v141, &qword_1000614D0, &unk_10004F670);
    (*(v146 + 8))(v150, v148);
    sub_100014FD4(v137);
    v120 = *(v0 + 2808);
    v121 = *(v0 + 2784);
    v122 = *(v0 + 2776);
    sub_10001295C(*(v0 + 2912));
    swift_unknownObjectRelease();
    (*(v121 + 8))(v120, v122);

    v123 = *(v0 + 8);

    return v123();
  }
}

uint64_t sub_10000BD5C()
{
  v2 = *v1;
  *(*v1 + 2960) = v0;

  if (v0)
  {

    v3 = *(v2 + 2832);
    v4 = *(v2 + 2824);
    v5 = sub_100011390;
  }

  else
  {
    v3 = *(v2 + 2832);
    v4 = *(v2 + 2824);
    v5 = sub_10000BE80;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000BE80()
{
  v214 = v0;
  sub_100014E78((*(v0 + 1552) + 40), *(*(v0 + 1552) + 64));
  if (sub_10004D480())
  {
    v1 = *(v0 + 2936);
    v2 = *(v0 + 2928);
    v3 = *(v0 + 2296);
    sub_10004DBB0();
    sub_10004DB60();

    sub_10002FB8C(v2, v1, v3);
    v4 = sub_1000026D8(&qword_100061418, &unk_100050D40);
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      v48 = *(v0 + 2504);
      v192 = *(v0 + 2496);
      v197 = *(v0 + 2512);
      v175 = *(v0 + 2440);
      v181 = *(v0 + 2456);
      v49 = *(v0 + 2424);
      v50 = *(v0 + 2416);
      v51 = *(v0 + 2408);
      v52 = *(v0 + 2400);
      v53 = *(v0 + 2392);
      v203 = *(v0 + 2296);
      v209 = *(v0 + 2488);
      v186 = *(v0 + 1544);

      (*(v52 + 8))(v51, v53);
      (*(v49 + 8))(v175, v50);
      sub_100007BC0(v181, &qword_1000614D0, &unk_10004F670);
      (*(v48 + 8))(v197, v192);
      sub_100014FD4(v209);
      (*(v5 + 32))(v186, v203, v4);
      goto LABEL_13;
    }

    v6 = *(v0 + 1552);
    sub_100007BC0(*(v0 + 2296), &qword_1000614A8, &unk_100050D80);
    sub_100014E78((v6 + 40), *(v6 + 64));
    if (sub_10004D490())
    {
      v7 = *(v0 + 2848);
      v8 = *(v0 + 2664);
      v9 = *(v0 + 2648);
      v10 = *(v0 + 2360);
      v11 = *(v0 + 2336);
      v12 = *(v0 + 2328);
      v13 = *(v0 + 2320);
      sub_10004CA80();
      sub_10004CEE0();
      v7(v8, v9);
      sub_10004DEE0();
      sub_100007BC0(v10, &qword_1000614C0, &unk_10004F660);
      v14 = sub_10004D710();
      (*(v12 + 8))(v11, v13);
      if (v14 && (v15 = *(v0 + 2288), v16 = *(v0 + 2280), v17 = *(v0 + 2272), sub_10004D560(), v18 = sub_10004D550(), (*(v16 + 8))(v15, v17), (v18 & 1) == 0))
      {

        sub_10004DC50();
        v128 = sub_10004DC70();
        v129 = sub_10004DEB0();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          _os_log_impl(&_mh_execute_header, v128, v129, "Siri\\remote_montara is currently disabled and hence remote Montara requests are not available.", v130, 2u);
        }

        v131 = *(v0 + 2904);
        v132 = *(v0 + 2600);
        v133 = *(v0 + 2544);
        v206 = *(v0 + 2496);
        v212 = *(v0 + 2512);
        v149 = *(v0 + 2488);
        v151 = *(v0 + 2472);
        v195 = *(v0 + 2456);
        v200 = *(v0 + 2504);
        v184 = *(v0 + 2416);
        v189 = *(v0 + 2440);
        v173 = *(v0 + 2408);
        v178 = *(v0 + 2424);
        v165 = *(v0 + 2400);
        v169 = *(v0 + 2392);
        v134 = *(v0 + 2264);
        v135 = *(v0 + 2240);
        v136 = *(v0 + 2232);
        v145 = *(v0 + 2464);
        v147 = *(v0 + 2224);
        v158 = *(v0 + 2184);
        v161 = *(v0 + 2176);
        v154 = *(v0 + 2208);

        v131(v132, v133);
        sub_10004D8D0();
        v143 = enum case for CatId.featureUnsupportedForRemoteClients(_:);
        v141 = *(v135 + 104);
        v141(v134);
        sub_100007C20(&_swiftEmptyArrayStorage);
        v137 = sub_10004D8B0();
        v139 = v138;

        v140 = *(v135 + 8);
        v140(v134, v136);
        *(v0 + 1520) = v137;
        *(v0 + 1528) = v139;
        sub_10004CC30();
        sub_100014EBC(v149, v147);
        (*(v151 + 56))(v147, 0, 1, v145);
        sub_10004D8A0();
        (v141)(v134, v143, v136);
        sub_10004D880();
        v140(v134, v136);
        sub_100014F20();
        sub_10004CBD0();
        (*(v158 + 8))(v154, v161);
        sub_100007BC0(v147, &qword_1000614A0, &unk_10004F640);
        (*(v165 + 8))(v173, v169);
        (*(v178 + 8))(v189, v184);
        sub_100007BC0(v195, &qword_1000614D0, &unk_10004F670);
        (*(v200 + 8))(v212, v206);
        v47 = v149;
      }

      else
      {
        v19 = *(v0 + 1552);
        sub_10004DC50();
        sub_100014DAC(v19, v0 + 448);
        v20 = sub_10004DC70();
        v21 = sub_10004DEA0();
        v22 = os_log_type_enabled(v20, v21);
        v23 = *(v0 + 2904);
        if (v22)
        {
          v179 = *(v0 + 2848);
          v24 = *(v0 + 2664);
          v25 = *(v0 + 2648);
          v201 = *(v0 + 2544);
          v207 = *(v0 + 2592);
          v190 = *(v0 + 2904);
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v213[0] = v27;
          *v26 = 136315138;
          sub_10004CA80();
          sub_10004CEE0();
          v179(v24, v25);
          v28 = sub_10004DD70();
          v30 = v29;
          sub_100014DE4(v0 + 448);
          v31 = sub_10001E340(v28, v30, v213);

          *(v26 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v20, v21, "The invoking interace idiom is %s", v26, 0xCu);
          sub_100007B00(v27);

          v190(v207, v201);
        }

        else
        {
          v74 = *(v0 + 2592);
          v75 = *(v0 + 2544);

          sub_100014DE4(v0 + 448);
          v23(v74, v75);
        }

        v76 = *(v0 + 2168);
        sub_10004DAC0();
        sub_10004DAB0();
        sub_10004DAA0();

        v77 = sub_1000026D8(&unk_1000614F0, &qword_10004F680);
        if ((*(*(v77 - 8) + 48))(v76, 1, v77) == 1)
        {
          sub_100007BC0(*(v0 + 2168), &unk_100061DA0, &qword_10004F638);
          v78 = sub_10004DB40();
          if (v78 == 2 || (v78 & 1) == 0)
          {
            v88 = *(v0 + 2800);
            v89 = *(v0 + 2792);
            v90 = *(v0 + 2784);
            v91 = *(v0 + 2776);
            v92 = *(v0 + 1552);
            (*(v90 + 16))(v88, *(v0 + 2808), v91);
            sub_100014DAC(v92, v0 + 592);
            v93 = (*(v90 + 80) + 16) & ~*(v90 + 80);
            v79 = swift_allocObject();
            (*(v90 + 32))(v79 + v93, v88, v91);
            v94 = (v79 + ((v89 + v93 + 7) & 0xFFFFFFFFFFFFFFF8));
            v95 = *(v0 + 704);
            v94[6] = *(v0 + 688);
            v94[7] = v95;
            v94[8] = *(v0 + 720);
            v96 = *(v0 + 640);
            v94[2] = *(v0 + 624);
            v94[3] = v96;
            v97 = *(v0 + 672);
            v94[4] = *(v0 + 656);
            v94[5] = v97;
            v98 = *(v0 + 608);
            *v94 = *(v0 + 592);
            v94[1] = v98;
          }

          else
          {
            v79 = 0;
          }

          *(v0 + 2968) = v79;
          v99 = *(v0 + 2936);
          v100 = *(v0 + 2928);
          v101 = *(v0 + 1552);
          sub_100014DAC(v101, v0 + 736);
          v102 = swift_allocObject();
          *(v0 + 2976) = v102;
          v103 = *(v0 + 848);
          v102[7] = *(v0 + 832);
          v102[8] = v103;
          v102[9] = *(v0 + 864);
          v104 = *(v0 + 784);
          v102[3] = *(v0 + 768);
          v102[4] = v104;
          v105 = *(v0 + 816);
          v102[5] = *(v0 + 800);
          v102[6] = v105;
          v106 = *(v0 + 752);
          v102[1] = *(v0 + 736);
          v102[2] = v106;
          sub_10004D5E0();
          sub_100014DAC(v101, v0 + 880);
          v107 = swift_allocObject();
          v108 = *(v0 + 992);
          *(v107 + 112) = *(v0 + 976);
          *(v107 + 128) = v108;
          *(v107 + 144) = *(v0 + 1008);
          v109 = *(v0 + 928);
          *(v107 + 48) = *(v0 + 912);
          *(v107 + 64) = v109;
          v110 = *(v0 + 960);
          *(v107 + 80) = *(v0 + 944);
          *(v107 + 96) = v110;
          v111 = *(v0 + 896);
          *(v107 + 16) = *(v0 + 880);
          *(v107 + 32) = v111;
          *(v107 + 160) = v100;
          *(v107 + 168) = v99;
          sub_100014DAC(v101, v0 + 1024);
          v112 = swift_allocObject();
          v113 = *(v0 + 1104);
          v114 = *(v0 + 1136);
          v112[7] = *(v0 + 1120);
          v112[8] = v114;
          v112[9] = *(v0 + 1152);
          v115 = *(v0 + 1040);
          v116 = *(v0 + 1072);
          v112[3] = *(v0 + 1056);
          v112[4] = v116;
          v112[5] = *(v0 + 1088);
          v112[6] = v113;
          v112[1] = *(v0 + 1024);
          v112[2] = v115;
          sub_100014DAC(v101, v0 + 1168);
          v117 = swift_allocObject();
          v118 = *(v0 + 1248);
          v119 = *(v0 + 1280);
          v117[7] = *(v0 + 1264);
          v117[8] = v119;
          v117[9] = *(v0 + 1296);
          v120 = *(v0 + 1184);
          v121 = *(v0 + 1216);
          v117[3] = *(v0 + 1200);
          v117[4] = v121;
          v117[5] = *(v0 + 1232);
          v117[6] = v118;
          v117[1] = *(v0 + 1168);
          v117[2] = v120;
          swift_bridgeObjectRetain_n();

          sub_10004D9C0();
          sub_10004D9D0();
          *(v0 + 2984) = *(v101 + 128);
          sub_10004CCC0();
          v122 = *(v0 + 1408);
          v123 = *(v0 + 1416);
          *(v0 + 2992) = v123;
          v124 = swift_task_alloc();
          *(v0 + 3000) = v124;
          *v124 = v0;
          v124[1] = sub_10000D998;
          v125 = *(v0 + 2408);
          v126 = *(v0 + 2160);
          v127 = *(v0 + 2136);

          return GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)(v127, v122, v123, v125, v126);
        }

        v205 = *(v0 + 2496);
        v211 = *(v0 + 2512);
        v80 = *(v0 + 2472);
        v153 = *(v0 + 2464);
        v155 = *(v0 + 2488);
        v194 = *(v0 + 2456);
        v199 = *(v0 + 2504);
        v183 = *(v0 + 2416);
        v188 = *(v0 + 2440);
        v172 = *(v0 + 2408);
        v177 = *(v0 + 2424);
        v164 = *(v0 + 2400);
        v168 = *(v0 + 2392);
        v81 = *(v0 + 2224);
        v82 = *(v0 + 2200);
        v83 = *(v0 + 2184);
        v84 = *(v0 + 2176);
        v85 = *(v0 + 2168);

        v87 = *v85;
        v86 = *(v85 + 1);
        (*(v83 + 32))(v82, &v85[*(v77 + 48)], v84);
        *(v0 + 1504) = v87;
        *(v0 + 1512) = v86;
        sub_10004CC30();
        sub_100014EBC(v155, v81);
        (*(v80 + 56))(v81, 0, 1, v153);
        sub_100014F20();
        sub_10004CBD0();
        sub_100007BC0(v81, &qword_1000614A0, &unk_10004F640);
        (*(v83 + 8))(v82, v84);
        (*(v164 + 8))(v172, v168);
        (*(v177 + 8))(v188, v183);
        sub_100007BC0(v194, &qword_1000614D0, &unk_10004F670);
        (*(v199 + 8))(v211, v205);
        v47 = v155;
      }
    }

    else
    {

      sub_10004DC50();
      v59 = sub_10004DC70();
      v60 = sub_10004DEA0();
      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 2904);
      v63 = *(v0 + 2576);
      v64 = *(v0 + 2544);
      if (v61)
      {
        v65 = swift_slowAlloc();
        v213[0] = swift_slowAlloc();
        *v65 = 136315394;
        *(v65 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v213);
        *(v65 + 12) = 2080;
        *(v65 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v213);
        _os_log_impl(&_mh_execute_header, v59, v60, "%s.%s request is not available", v65, 0x16u);
        swift_arrayDestroy();
      }

      v62(v63, v64);
      v204 = *(v0 + 2496);
      v210 = *(v0 + 2512);
      v148 = *(v0 + 2488);
      v150 = *(v0 + 2472);
      v66 = *(v0 + 2464);
      v193 = *(v0 + 2456);
      v198 = *(v0 + 2504);
      v182 = *(v0 + 2416);
      v187 = *(v0 + 2440);
      v171 = *(v0 + 2408);
      v176 = *(v0 + 2424);
      v163 = *(v0 + 2400);
      v167 = *(v0 + 2392);
      v67 = *(v0 + 2264);
      v68 = *(v0 + 2240);
      v69 = *(v0 + 2232);
      v142 = *(v0 + 2224);
      v157 = *(v0 + 2184);
      v160 = *(v0 + 2176);
      v152 = *(v0 + 2208);
      sub_10004D8D0();
      v146 = enum case for CatId.disabledResponse(_:);
      v144 = *(v68 + 104);
      v144(v67);
      sub_100007C20(&_swiftEmptyArrayStorage);
      v70 = sub_10004D8B0();
      v72 = v71;

      v73 = *(v68 + 8);
      v73(v67, v69);
      *(v0 + 1392) = v70;
      *(v0 + 1400) = v72;
      sub_10004CC30();
      sub_100014EBC(v148, v142);
      (*(v150 + 56))(v142, 0, 1, v66);
      sub_10004D8A0();
      (v144)(v67, v146, v69);
      sub_10004D880();
      v73(v67, v69);
      sub_100014F20();
      sub_10004CBD0();
      (*(v157 + 8))(v152, v160);
      sub_100007BC0(v142, &qword_1000614A0, &unk_10004F640);
      (*(v163 + 8))(v171, v167);
      (*(v176 + 8))(v187, v182);
      sub_100007BC0(v193, &qword_1000614D0, &unk_10004F670);
      (*(v198 + 8))(v210, v204);
      v47 = v148;
    }
  }

  else
  {

    sub_10004DC50();
    v32 = sub_10004DC70();
    v33 = sub_10004DEA0();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 2904);
    v36 = *(v0 + 2568);
    v37 = *(v0 + 2544);
    if (v34)
    {
      v38 = swift_slowAlloc();
      v213[0] = swift_slowAlloc();
      *v38 = 136315394;
      *(v38 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v213);
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v213);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s.%s request was restricted by MDM or parental controls.", v38, 0x16u);
      swift_arrayDestroy();
    }

    v35(v36, v37);
    v202 = *(v0 + 2496);
    v208 = *(v0 + 2512);
    v39 = *(v0 + 2472);
    v40 = *(v0 + 2464);
    v191 = *(v0 + 2456);
    v196 = *(v0 + 2504);
    v180 = *(v0 + 2440);
    v185 = *(v0 + 2488);
    v170 = *(v0 + 2424);
    v174 = *(v0 + 2416);
    v162 = *(v0 + 2392);
    v166 = *(v0 + 2408);
    v41 = *(v0 + 2264);
    v42 = *(v0 + 2240);
    v43 = *(v0 + 2232);
    v44 = *(v0 + 2224);
    v45 = *(v0 + 2208);
    v46 = *(v0 + 2184);
    v156 = *(v0 + 2176);
    v159 = *(v0 + 2400);
    sub_100014EBC(v185, v44);
    (*(v39 + 56))(v44, 0, 1, v40);
    sub_10004D8A0();
    (*(v42 + 104))(v41, enum case for CatId.genericRestrictionResponse(_:), v43);
    sub_10004D880();

    (*(v42 + 8))(v41, v43);
    sub_100014F20();
    sub_10004CBD0();
    (*(v46 + 8))(v45, v156);
    sub_100007BC0(v44, &qword_1000614A0, &unk_10004F640);
    (*(v159 + 8))(v166, v162);
    (*(v170 + 8))(v180, v174);
    sub_100007BC0(v191, &qword_1000614D0, &unk_10004F670);
    (*(v196 + 8))(v208, v202);
    v47 = v185;
  }

  sub_100014FD4(v47);
LABEL_13:
  v54 = *(v0 + 2808);
  v55 = *(v0 + 2784);
  v56 = *(v0 + 2776);
  sub_10001295C(*(v0 + 2912));
  swift_unknownObjectRelease();
  (*(v55 + 8))(v54, v56);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_10000D998()
{
  v2 = *v1;
  *(*v1 + 3008) = v0;

  if (v0)
  {

    v3 = *(v2 + 2832);
    v4 = *(v2 + 2824);
    v5 = sub_100011A2C;
  }

  else
  {
    v3 = *(v2 + 2832);
    v4 = *(v2 + 2824);
    v5 = sub_10000DAE4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000DAE4()
{
  v1 = sub_10004D810();
  *(v0 + 3016) = v1;
  v2 = *(v1 + 16);
  *(v0 + 3024) = v2;
  if (v2)
  {
    v3 = *(v0 + 2104);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = *(v3 + 64);
    *(v0 + 3312) = v5;
    *(v0 + 3032) = *(v3 + 56);
    *(v0 + 3040) = v4;
    *(v0 + 3056) = &_swiftEmptyArrayStorage;
    *(v0 + 3048) = 0;
    v4(*(v0 + 2112), v1 + ((v5 + 32) & ~v5), *(v0 + 2096));
    v6 = swift_task_alloc();
    *(v0 + 3064) = v6;
    *v6 = v0;
    v6[1] = sub_10000DD7C;
    v7 = *(v0 + 2088);

    return sub_100004E18(v7);
  }

  else
  {

    *(v0 + 3072) = &_swiftEmptyArrayStorage;
    v9 = *(v0 + 2040);
    v10 = *(v0 + 2032);
    v11 = *(v0 + 2016);
    v12 = *(v0 + 2008);
    v13 = sub_10004D7C0();
    sub_10004D850();
    *(v0 + 3316) = enum case for GeneratedResponse.Outcome.rateLimited(_:);
    (*(v11 + 104))(v10);
    sub_100015604(&unk_100061DD0, &type metadata accessor for GeneratedResponse.Outcome, &protocol conformance descriptor for GeneratedResponse.Outcome);
    v14 = sub_10004DCC0();
    v15 = *(v11 + 8);
    *(v0 + 3080) = v15;
    *(v0 + 3088) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v10, v12);
    v15(v9, v12);
    v16 = swift_task_alloc();
    *(v0 + 3096) = v16;
    *v16 = v0;
    v16[1] = sub_10000E268;
    v17 = *(v0 + 2936);
    v18 = *(v0 + 2928);
    v19 = *(v0 + 2056);

    return static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(v19, v13 & 1, v18, v17, (v14 & 1) == 0);
  }
}

uint64_t sub_10000DD7C()
{
  v1 = *v0;
  v2 = *(*v0 + 2112);
  v3 = *(*v0 + 2104);
  v4 = *(*v0 + 2096);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 2832);
  v6 = *(v1 + 2824);

  return _swift_task_switch(sub_10000DF00, v6, v5);
}

uint64_t sub_10000DF00()
{
  (*(*(v0 + 2072) + 16))(*(v0 + 2080), *(v0 + 2088), *(v0 + 2064));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 3056);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100048484(0, v2[2] + 1, 1, *(v0 + 3056));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100048484((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 3024);
  v6 = *(v0 + 2080);
  v7 = *(v0 + 2072);
  v8 = *(v0 + 2064);
  v9 = *(v0 + 3048) + 1;
  (*(v7 + 8))(*(v0 + 2088), v8);
  v2[2] = v4 + 1;
  (*(v7 + 32))(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, v6, v8);
  if (v9 == v5)
  {

    *(v0 + 3072) = v2;
    v10 = *(v0 + 2040);
    v11 = *(v0 + 2032);
    v12 = *(v0 + 2016);
    v13 = *(v0 + 2008);
    v14 = sub_10004D7C0();
    sub_10004D850();
    *(v0 + 3316) = enum case for GeneratedResponse.Outcome.rateLimited(_:);
    (*(v12 + 104))(v11);
    sub_100015604(&unk_100061DD0, &type metadata accessor for GeneratedResponse.Outcome, &protocol conformance descriptor for GeneratedResponse.Outcome);
    v15 = sub_10004DCC0();
    v16 = *(v12 + 8);
    *(v0 + 3080) = v16;
    *(v0 + 3088) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v11, v13);
    v16(v10, v13);
    v17 = swift_task_alloc();
    *(v0 + 3096) = v17;
    *v17 = v0;
    v17[1] = sub_10000E268;
    v18 = *(v0 + 2936);
    v19 = *(v0 + 2928);
    v20 = *(v0 + 2056);

    return static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(v20, v14 & 1, v19, v18, (v15 & 1) == 0);
  }

  else
  {
    v21 = *(v0 + 3048) + 1;
    *(v0 + 3056) = v2;
    *(v0 + 3048) = v21;
    (*(v0 + 3040))(*(v0 + 2112), *(v0 + 3016) + ((*(v0 + 3312) + 32) & ~*(v0 + 3312)) + *(v0 + 3032) * v21, *(v0 + 2096));
    v22 = swift_task_alloc();
    *(v0 + 3064) = v22;
    *v22 = v0;
    v22[1] = sub_10000DD7C;
    v23 = *(v0 + 2088);

    return sub_100004E18(v23);
  }
}

uint64_t sub_10000E268()
{
  v1 = *v0;

  v2 = *(v1 + 2832);
  v3 = *(v1 + 2824);

  return _swift_task_switch(sub_10000E3AC, v3, v2);
}

uint64_t sub_10000E3AC()
{
  v1 = *(v0 + 2024);
  v2 = *(v0 + 2016);
  v3 = *(v0 + 2008);
  v4 = *(v0 + 2000);
  v5 = *(v0 + 1992);
  v6 = *(v0 + 1568);
  v7 = *(v0 + 1560);
  v8 = *(v6 + 56);
  *(v0 + 3104) = v8;
  *(v0 + 3112) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v4, 1, 1, v7);
  v8(v5, 1, 1, v7);
  sub_10004D850();
  v9 = (*(v2 + 88))(v1, v3);
  if (v9 == enum case for GeneratedResponse.Outcome.success(_:))
  {
    *(v0 + 3120) = sub_10004D730();
    *(v0 + 3128) = v10;
    *(v0 + 3136) = sub_10004D600();
    *(v0 + 3144) = v11;
    *(v0 + 3152) = sub_10004D770();
    *(v0 + 3160) = v12;
    sub_10004D740();
    *(v0 + 3168) = sub_10004D780();
    *(v0 + 3176) = sub_10004D7A0();
    *(v0 + 3184) = v13;

    return _swift_task_switch(sub_10000EC00, 0, 0);
  }

  if (v9 == enum case for GeneratedResponse.Outcome.dismissSiriUI(_:))
  {
    v45 = *(v0 + 2000);
    v14 = *(v0 + 1968);
    v15 = *(v0 + 1848);
    v16 = *(v0 + 1824);
    v17 = *(v0 + 1816);
    v47 = *(v0 + 1560);
    sub_10004D360();
    (*(v16 + 104))(v15, enum case for GenerativeResultModels.GenerativeDismissalSnippet(_:), v17);
    sub_100015604(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
    sub_10004D2C0();
    (*(v16 + 8))(v15, v17);
    sub_10004D340();
    sub_10004CE50();
    sub_10004CFA0();
    v18 = v45;
    sub_100007BC0(v45, &qword_100061488, &unk_100050D70);
    v8(v14, 0, 1, v47);
    v19 = v14;
LABEL_7:
    sub_100015594(v19, v18);
LABEL_8:
    *(v0 + 1424) = sub_10004D7F0();
    *(v0 + 1432) = v20;
    sub_10004CC30();
    *(v0 + 1440) = sub_10004D860();
    *(v0 + 1448) = v21;
    sub_10004CC30();
    v22 = swift_task_alloc();
    *(v0 + 3304) = v22;
    *v22 = v0;
    v22[1] = sub_10000F9C8;
    v23 = *(v0 + 3072);

    return sub_100015B24(v23);
  }

  if (v9 != enum case for GeneratedResponse.Outcome.signInRequired(_:))
  {
    if (v9 != *(v0 + 3316))
    {
      (*(v0 + 3080))(*(v0 + 2024), *(v0 + 2008));
      goto LABEL_8;
    }

    v27 = *(v0 + 2048);
    v46 = *(v0 + 2000);
    v28 = *(v0 + 1832);
    v29 = *(v0 + 1824);
    v44 = *(v0 + 1952);
    v30 = *(v0 + 1632);
    v31 = *(v0 + 1624);
    v43 = *(v0 + 1816);
    v41 = *(v0 + 2056);
    v42 = *(v0 + 1616);
    v48 = *(v0 + 1560);
    sub_10004D7F0();
    sub_10004CCC0();
    sub_10001564C(v41, v27, &unk_100061490, &qword_10004F630);
    sub_10004D370();
    (*(v31 + 16))(v28, v30, v42);
    (*(v29 + 104))(v28, enum case for GenerativeResultModels.GenerativeRateLimitedSnippet(_:), v43);
    sub_100015604(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
    sub_10004D2C0();
    (*(v29 + 8))(v28, v43);
    sub_10004D340();
    sub_10004CE50();
    sub_10004CFA0();
    (*(v31 + 8))(v30, v42);
    v18 = v46;
    sub_100007BC0(v46, &qword_100061488, &unk_100050D70);
    v8(v44, 0, 1, v48);
    v19 = v44;
    goto LABEL_7;
  }

  v24 = *(v0 + 1896);
  v25 = *(v0 + 1720);
  v26 = *(v0 + 1712);
  sub_10004D670();
  if ((*(v25 + 48))(v24, 1, v26) == 1)
  {
    sub_100007BC0(*(v0 + 1896), &qword_100061480, &qword_10004F2F0);
    goto LABEL_8;
  }

  v32 = *(v0 + 2264);
  v33 = *(v0 + 2240);
  v34 = *(v0 + 2232);
  (*(*(v0 + 1720) + 32))(*(v0 + 1728), *(v0 + 1896), *(v0 + 1712));
  sub_10004DA50();
  sub_10004D8A0();
  (*(v33 + 104))(v32, enum case for CatId.signInRequired(_:), v34);
  sub_10004D5F0();
  sub_10004D880();

  (*(v33 + 8))(v32, v34);
  *(v0 + 1536) = &_swiftEmptyArrayStorage;
  sub_100015604(&unk_100061510, &type metadata accessor for ConfirmationConditions, &protocol conformance descriptor for ConfirmationConditions);
  sub_1000026D8(&unk_100061DF0, &unk_100050DF0);
  sub_100002FC8(&unk_100061520, &unk_100061DF0, &unk_100050DF0, &protocol conformance descriptor for [A]);
  sub_10004DF00();
  v35 = swift_task_alloc();
  *(v0 + 3288) = v35;
  *v35 = v0;
  v35[1] = sub_10000F4A8;
  v36 = *(v0 + 2840);
  v37 = *(v0 + 2192);
  v38 = *(v0 + 1704);
  v39 = *(v0 + 1680);

  return AppIntent.requestConfirmation(conditions:actionName:dialog:)(v39, v38, v37, &type metadata for GenerateRichContentIntent, v36);
}

uint64_t sub_10000EC00()
{
  v17 = v0[398];
  v1 = v0[397];
  v2 = v0[257];
  v3 = v0[256];
  v16 = v0[240];
  v4 = v0[236];
  v14 = v0[235];
  v15 = v0[234];
  v5 = v0[233];
  v6 = v0[228];
  v7 = v0[227];
  sub_10001564C(v16, v0[239], &qword_100061480, &qword_10004F2F0);
  sub_10001564C(v2, v3, &unk_100061490, &qword_10004F630);

  sub_1000156B4(v1, v17);
  sub_10004D390();
  (*(v14 + 16))(v5, v4, v15);
  v8 = enum case for GenerativeResultModels.GenerativeRichTextResultSnippet(_:);
  v9 = *(v6 + 104);
  v0[399] = v9;
  v0[400] = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v5, v8, v7);
  v0[401] = sub_100015604(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
  sub_10004D2C0();
  v10 = *(v6 + 8);
  v0[402] = v10;
  v0[403] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  sub_10004D340();
  sub_10004CE50();
  sub_10004CFA0();
  sub_1000156C8(v1, v17);
  (*(v14 + 8))(v4, v15);
  sub_100007BC0(v16, &qword_100061480, &qword_10004F2F0);
  v11 = v0[354];
  v12 = v0[353];

  return _swift_task_switch(sub_10000EEE8, v12, v11);
}

uint64_t sub_10000EEE8()
{
  v1 = v0[388];
  v2 = v0[250];
  v3 = v0[248];
  v4 = v0[195];
  sub_100007BC0(v2, &qword_100061488, &unk_100050D70);
  v1(v3, 0, 1, v4);
  sub_100015594(v3, v2);
  v0[404] = sub_10004D730();
  v0[405] = v5;
  v0[406] = sub_10004D600();
  v0[407] = v6;
  v0[408] = sub_10004D770();
  v0[409] = v7;
  v0[410] = sub_10004D750();
  sub_10004D740();

  return _swift_task_switch(sub_10000EFF8, 0, 0);
}

uint64_t sub_10000EFF8()
{
  v1 = v0[410];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[221];
    v4 = v0[218];
    sub_100045A98(0, v2, 0);
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v24 = *(v5 + 56);
    v25 = v6;
    do
    {
      v8 = v0[219];
      v9 = v0[217];
      v25(v8, v7, v9);
      sub_10004D680();
      sub_10004D690();
      sub_10004D3E0();
      (*(v5 - 8))(v8, v9);
      v11 = *(&_swiftEmptyArrayStorage + 2);
      v10 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100045A98((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[222];
      v13 = v0[220];
      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      (*(v3 + 32))(&_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v7 += v24;
      --v2;
    }

    while (v2);
  }

  v23 = v0[402];
  v22 = v0[399];
  v26 = v0[238];
  v14 = v0[232];
  v15 = v0[227];
  v16 = v0[225];
  v17 = v0[224];
  v18 = v0[223];
  sub_10001564C(v26, v0[239], &qword_100061480, &qword_10004F2F0);
  sub_10004D3C0();
  (*(v17 + 16))(v14, v16, v18);
  v22(v14, enum case for GenerativeResultModels.GenerativeAttributionSnippet(_:), v15);
  sub_10004D2C0();
  v23(v14, v15);
  sub_10004D340();
  sub_10004CE50();
  sub_10004CFA0();
  (*(v17 + 8))(v16, v18);
  sub_100007BC0(v26, &qword_100061480, &qword_10004F2F0);
  v19 = v0[354];
  v20 = v0[353];

  return _swift_task_switch(sub_10000F368, v20, v19);
}

uint64_t sub_10000F368()
{
  v1 = v0[388];
  v2 = v0[249];
  v3 = v0[247];
  v4 = v0[195];
  sub_100007BC0(v2, &qword_100061488, &unk_100050D70);
  v1(v3, 0, 1, v4);
  sub_100015594(v3, v2);
  v0[178] = sub_10004D7F0();
  v0[179] = v5;
  sub_10004CC30();
  v0[180] = sub_10004D860();
  v0[181] = v6;
  sub_10004CC30();
  v7 = swift_task_alloc();
  v0[413] = v7;
  *v7 = v0;
  v7[1] = sub_10000F9C8;
  v8 = v0[384];

  return sub_100015B24(v8);
}

uint64_t sub_10000F4A8()
{
  v2 = *v1;
  *(*v1 + 3296) = v0;

  if (v0)
  {
    v3 = v2[274];
    v4 = v2[273];
    v5 = v2[272];
    v6 = v2[213];
    v7 = v2[212];
    v8 = v2[211];
    (*(v2[209] + 8))(v2[210], v2[208]);
    (*(v4 + 8))(v3, v5);
    (*(v7 + 8))(v6, v8);

    v9 = v2[354];
    v10 = v2[353];
    v11 = sub_100012174;
  }

  else
  {
    v12 = v2[274];
    v13 = v2[273];
    v14 = v2[272];
    v15 = v2[213];
    v16 = v2[212];
    v17 = v2[211];
    (*(v2[209] + 8))(v2[210], v2[208]);
    (*(v13 + 8))(v12, v14);
    (*(v16 + 8))(v15, v17);
    v9 = v2[354];
    v10 = v2[353];
    v11 = sub_10000F6B0;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10000F6B0(uint64_t a1)
{
  v17 = v1[388];
  v2 = v1[230];
  v3 = v1[228];
  v12 = v1[227];
  v13 = v1[245];
  v15 = v1[250];
  v16 = v1[216];
  v18 = v1[215];
  v19 = v1[214];
  v4 = v1[207];
  v5 = v1[206];
  v6 = v1[205];
  v14 = v1[195];
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v5 + 8))(v4, v6);
  sub_10004DB80();

  sub_10004D360();
  (*(v3 + 104))(v2, enum case for GenerativeResultModels.GenerativeDismissalSnippet(_:), v12);
  sub_100015604(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
  sub_10004D2C0();
  (*(v3 + 8))(v2, v12);
  sub_10004D340();
  sub_10004CE50();
  sub_10004CFA0();
  sub_100007BC0(v15, &qword_100061488, &unk_100050D70);
  v17(v13, 0, 1, v14);
  sub_100015594(v13, v15);
  sub_100014154();
  (*(v18 + 8))(v16, v19);
  v1[178] = sub_10004D7F0();
  v1[179] = v7;
  sub_10004CC30();
  v1[180] = sub_10004D860();
  v1[181] = v8;
  sub_10004CC30();
  v9 = swift_task_alloc();
  v1[413] = v9;
  *v9 = v1;
  v9[1] = sub_10000F9C8;
  v10 = v1[384];

  return sub_100015B24(v10);
}

uint64_t sub_10000F9C8()
{
  v1 = *v0;

  v2 = *(v1 + 2832);
  v3 = *(v1 + 2824);

  return _swift_task_switch(sub_10000FB0C, v3, v2);
}

uint64_t sub_10000FB0C()
{
  v138 = v0;
  v1 = v0[311];
  v2 = v0[310];

  sub_100017588();
  sub_10004DC50();
  sub_100014EBC(v1, v2);
  v3 = sub_10004DC70();
  v4 = sub_10004DEA0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[363];
  v7 = v0[323];
  v8 = v0[318];
  v9 = v0[310];
  if (v5)
  {
    v135 = v0[363];
    v10 = swift_slowAlloc();
    v137[0] = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v137);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v137);
    *(v10 + 22) = 2080;
    v11 = sub_100017684();
    v13 = v12;
    sub_100014FD4(v9);
    v14 = sub_10001E340(v11, v13, v137);

    *(v10 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s %s", v10, 0x20u);
    swift_arrayDestroy();

    v135(v7, v8);
  }

  else
  {

    sub_100014FD4(v9);
    v6(v7, v8);
  }

  v15 = v0[281];
  v16 = v0[280];
  v17 = v0[279];
  sub_10004D800();
  (*(v16 + 104))(v15, enum case for CatId.empty(_:), v17);
  sub_100015604(&unk_100061500, &type metadata accessor for CatId, &protocol conformance descriptor for CatId);
  sub_10004DDF0();
  sub_10004DDF0();
  v18 = v0[282];
  v19 = v0[281];
  v20 = v0[280];
  v21 = v0[279];
  if (v0[182] == v0[184] && v0[183] == v0[185])
  {
    v22 = *(v20 + 8);
    v22(v0[281], v0[279]);
    v22(v18, v21);
  }

  else
  {
    v23 = sub_10004DFA0();
    v24 = *(v20 + 8);
    v24(v19, v21);
    v24(v18, v21);

    if ((v23 & 1) == 0)
    {
      v45 = v0[243];
      v46 = v0[196];
      v47 = v0[195];
      sub_10001564C(v0[250], v45, &qword_100061488, &unk_100050D70);
      LODWORD(v47) = (*(v46 + 48))(v45, 1, v47);
      sub_100007BC0(v45, &qword_100061488, &unk_100050D70);
      if (v47 == 1)
      {
        v129 = sub_10004D7F0();
        v132 = v48;
      }

      else
      {
        v129 = 0;
        v132 = 0xE000000000000000;
      }

      goto LABEL_14;
    }
  }

  v25 = sub_10004D820();
  if (v25[2] != 1)
  {
    v26 = v0[269];
    v130 = v0[268];
    v133 = v0[270];
    v27 = v0[266];
    v121 = v0[265];
    v125 = v0[267];
    v114 = v0[250];
    v117 = v0[257];
    v28 = v0[249];
    v29 = v0[201];
    v30 = v0[200];
    v31 = v0[199];

    *v29 = 0xD00000000000002ELL;
    v29[1] = 0x80000001000519B0;
    (*(v30 + 104))(v29, enum case for GATError.notImplemented(_:), v31);
    sub_10004D5C0();
    (*(v30 + 8))(v29, v31);
    swift_willThrow();

    sub_100007BC0(v28, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v114, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v117, &unk_100061490, &qword_10004F630);
    (*(v27 + 8))(v125, v121);
    (*(v26 + 8))(v133, v130);
    v32 = v0[313];
    v131 = v0[312];
    v134 = v0[314];
    v122 = v0[305];
    v126 = v0[307];
    v33 = v0[303];
    v118 = v0[302];
    v34 = v0[301];
    v35 = v0[300];
    v36 = v0[299];
    v37 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    v39 = sub_10004D0F0();
    sub_10004AAE4(1, v39);

    swift_willThrow();
    (*(v35 + 8))(v34, v36);
    (*(v33 + 8))(v122, v118);
    sub_100007BC0(v126, &qword_1000614D0, &unk_10004F670);
    (*(v32 + 8))(v134, v131);
    v40 = v0[364];
    v41 = v0[351];
    v42 = v0[348];
    v43 = v0[347];
    sub_100014FD4(v0[311]);
    sub_10001295C(v40);
    swift_unknownObjectRelease();
    (*(v42 + 8))(v41, v43);

    v44 = v0[1];
    goto LABEL_21;
  }

  v129 = v25[4];
  v132 = v25[5];

LABEL_14:
  v49 = v0[242];
  v50 = v0[196];
  v51 = v0[195];
  sub_10001564C(v0[250], v49, &qword_100061488, &unk_100050D70);
  v52 = *(v50 + 48);
  if (v52(v49, 1, v51) == 1)
  {
    v123 = v0[312];
    v127 = v0[314];
    v53 = v0[311];
    v54 = v0[309];
    v55 = v0[308];
    v115 = v0[307];
    v119 = v0[313];
    v110 = v0[302];
    v112 = v0[305];
    v106 = v0[301];
    v108 = v0[303];
    v102 = v0[300];
    v104 = v0[299];
    v56 = v0[278];
    v57 = v0[276];
    v58 = v0[273];
    v82 = v0[272];
    v98 = v0[268];
    v100 = v0[270];
    v94 = v0[267];
    v96 = v0[269];
    v59 = v0[266];
    v90 = v0[257];
    v92 = v0[265];
    v87 = v0[250];
    v84 = v0[249];
    sub_100007BC0(v0[242], &qword_100061488, &unk_100050D70);
    sub_100014EBC(v53, v56);
    (*(v54 + 56))(v56, 0, 1, v55);
    v136 = v53;
    sub_1000142C0(v129, v132, v53, v57);

    sub_100014F20();
    sub_10004CBD0();

    (*(v58 + 8))(v57, v82);
    sub_100007BC0(v56, &qword_1000614A0, &unk_10004F640);
    sub_100007BC0(v84, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v87, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v90, &unk_100061490, &qword_10004F630);
    (*(v59 + 8))(v94, v92);
    (*(v96 + 8))(v100, v98);
    (*(v102 + 8))(v106, v104);
    (*(v108 + 8))(v112, v110);
    sub_100007BC0(v115, &qword_1000614D0, &unk_10004F670);
    (*(v119 + 8))(v127, v123);
  }

  else
  {
    v60 = v0[309];
    v61 = v0[273];
    v62 = v0[249];
    v63 = v0[241];
    v64 = v0[196];
    v65 = v0[195];
    v79 = *(v64 + 32);
    v79(v0[198], v0[242], v65);
    sub_10001564C(v62, v63, &qword_100061488, &unk_100050D70);
    v66 = v52(v63, 1, v65);
    v67 = (v60 + 56);
    v85 = (v61 + 8);
    v89 = (v64 + 8);
    v124 = v0[314];
    v128 = v0[313];
    v120 = v0[312];
    v136 = v0[311];
    v80 = v0[308];
    v113 = v0[303];
    v116 = v0[307];
    v109 = v0[302];
    v111 = v0[305];
    v105 = v0[301];
    v107 = v0[300];
    v103 = v0[299];
    v68 = v0[278];
    v69 = v0[276];
    v81 = v0[272];
    v99 = v0[270];
    v101 = v0[269];
    v95 = v0[266];
    v97 = v0[268];
    v91 = v0[265];
    v93 = v0[267];
    v88 = v0[257];
    v86 = v0[250];
    v83 = v0[249];
    v70 = v0[198];
    if (v66 == 1)
    {
      v71 = v0[195];
      sub_100007BC0(v0[241], &qword_100061488, &unk_100050D70);
      sub_100014EBC(v136, v68);
      (*v67)(v68, 0, 1, v80);
      sub_1000142C0(v129, v132, v136, v69);

      sub_100014F20();
      sub_10004CBF0();

      (*v85)(v69, v81);
      sub_100007BC0(v68, &qword_1000614A0, &unk_10004F640);
      (*v89)(v70, v71);
    }

    else
    {
      v72 = v0[197];
      v73 = v0[195];
      v79(v72, v0[241], v73);
      sub_100014EBC(v136, v68);
      (*v67)(v68, 0, 1, v80);
      sub_1000142C0(v129, v132, v136, v69);

      sub_100014F20();
      sub_10004CBE0();

      (*v85)(v69, v81);
      sub_100007BC0(v68, &qword_1000614A0, &unk_10004F640);
      v74 = *v89;
      (*v89)(v72, v73);
      v74(v70, v73);
    }

    sub_100007BC0(v83, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v86, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v88, &unk_100061490, &qword_10004F630);
    (*(v95 + 8))(v93, v91);
    (*(v101 + 8))(v99, v97);
    (*(v107 + 8))(v105, v103);
    (*(v113 + 8))(v111, v109);
    sub_100007BC0(v116, &qword_1000614D0, &unk_10004F670);
    (*(v128 + 8))(v124, v120);
  }

  sub_100014FD4(v136);
  v75 = v0[351];
  v76 = v0[348];
  v77 = v0[347];
  sub_10001295C(v0[364]);
  swift_unknownObjectRelease();
  (*(v76 + 8))(v75, v77);

  v44 = v0[1];
LABEL_21:

  return v44();
}

uint64_t sub_100011390()
{
  v16 = v0[314];
  v1 = v0[313];
  v2 = v0[312];
  v3 = v0[307];
  v4 = v0[305];
  v5 = v0[303];
  v6 = v0[302];
  v7 = v0[301];
  v8 = v0[300];
  v9 = v0[299];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  sub_100007BC0(v3, &qword_1000614D0, &unk_10004F670);
  (*(v1 + 8))(v16, v2);
  v10 = v0[364];
  v11 = v0[351];
  v12 = v0[348];
  v13 = v0[347];
  sub_100014FD4(v0[311]);
  sub_10001295C(v10);
  swift_unknownObjectRelease();
  (*(v12 + 8))(v11, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100011A2C()
{
  v1 = v0[270];
  v2 = v0[269];
  v3 = v0[268];

  (*(v2 + 8))(v1, v3);
  v4 = v0[313];
  v21 = v0[312];
  v22 = v0[314];
  v19 = v0[305];
  v20 = v0[307];
  v5 = v0[303];
  v18 = v0[302];
  v6 = v0[301];
  v7 = v0[300];
  v8 = v0[299];
  v9 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  type metadata accessor for AutoBugCaptureHelper();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = 0;
  v11 = sub_10004D0F0();
  sub_10004AAE4(1, v11);

  swift_willThrow();
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v19, v18);
  sub_100007BC0(v20, &qword_1000614D0, &unk_10004F670);
  (*(v4 + 8))(v22, v21);
  v12 = v0[364];
  v13 = v0[351];
  v14 = v0[348];
  v15 = v0[347];
  sub_100014FD4(v0[311]);
  sub_10001295C(v12);
  swift_unknownObjectRelease();
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100012174()
{
  v1 = v0[269];
  v29 = v0[268];
  v31 = v0[270];
  v2 = v0[266];
  v25 = v0[265];
  v27 = v0[267];
  v23 = v0[257];
  v3 = v0[250];
  v4 = v0[249];
  v5 = v0[216];
  v6 = v0[215];
  v7 = v0[214];

  (*(v6 + 8))(v5, v7);
  sub_100007BC0(v4, &qword_100061488, &unk_100050D70);
  sub_100007BC0(v3, &qword_100061488, &unk_100050D70);
  sub_100007BC0(v23, &unk_100061490, &qword_10004F630);
  (*(v2 + 8))(v27, v25);
  (*(v1 + 8))(v31, v29);
  v8 = v0[313];
  v28 = v0[312];
  v30 = v0[314];
  v24 = v0[305];
  v26 = v0[307];
  v9 = v0[303];
  v22 = v0[302];
  v10 = v0[301];
  v11 = v0[300];
  v12 = v0[299];
  v13 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  type metadata accessor for AutoBugCaptureHelper();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = 0;
  v15 = sub_10004D0F0();
  sub_10004AAE4(1, v15);

  swift_willThrow();
  (*(v11 + 8))(v10, v12);
  (*(v9 + 8))(v24, v22);
  sub_100007BC0(v26, &qword_1000614D0, &unk_10004F670);
  (*(v8 + 8))(v30, v28);
  v16 = v0[364];
  v17 = v0[351];
  v18 = v0[348];
  v19 = v0[347];
  sub_100014FD4(v0[311]);
  sub_10001295C(v16);
  swift_unknownObjectRelease();
  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_10001295C(uint64_t a1)
{
  v2 = sub_10004DC80();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000026D8(&unk_100061550, &unk_1000501C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_10004D700();
  sub_10004D6F0();
  sub_10004DAE0();
  v8 = sub_10004DC00();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_10004D6C0();

  sub_100007BC0(v7, &unk_100061550, &unk_1000501C0);
  sub_10004D6F0();
  sub_10004D6E0();

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004DB90();

  sub_10004DC60();
  swift_unknownObjectRetain();
  v9 = sub_10004DC70();
  v10 = sub_10004DEA0();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v19);
    *(v11 + 12) = 2080;
    v18 = a1;
    swift_unknownObjectRetain();
    sub_1000026D8(&unk_100061EB0, &qword_1000507D0);
    v12 = sub_10004DD70();
    v14 = sub_10001E340(v12, v13, &v19);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "(Self.self).%s disposing %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v16 + 8))(v4, v17);
}

uint64_t sub_100012C90()
{
  v1 = sub_10004DC80();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004DE50();
  v0[5] = sub_10004DE40();
  v3 = sub_10004DE20();

  return _swift_task_switch(sub_100012D80, v3, v2);
}

uint64_t sub_100012D80()
{
  v11 = v0;

  sub_10004DC50();
  v1 = sub_10004DC70();
  v2 = sub_10004DEA0();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, &v10);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v10);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s Skipping confirmation", v7, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100012F2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 120) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_10004CB90();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  sub_10004DE50();
  *(v5 + 72) = sub_10004DE40();
  v8 = sub_10004DE20();
  *(v5 + 80) = v8;
  *(v5 + 88) = v7;

  return _swift_task_switch(sub_100013028, v8, v7);
}

uint64_t sub_100013028()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  type metadata accessor for AutoBugCaptureHelper();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  sub_10004B450(1, v1);

  v6 = v2[3];
  v5 = v2[4];
  v7 = sub_100014E78(v2, v6);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = sub_100007E50();
  *(v0 + 104) = v9;
  *v8 = v0;
  v8[1] = sub_100013164;
  v10 = *(v0 + 120);
  v11 = *(v0 + 24);

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)(v7, v11, v10, &type metadata for GenerateRichContentIntent, v6, v9, v5);
}

uint64_t sub_100013164()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1000133A4;
  }

  else
  {
    v5 = sub_1000132A0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000132A0()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v3 + 8))(v1, v2);
  sub_10004DB80();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000133A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100013410(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10004CB90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_10004DE50();
  v1[6] = sub_10004DE40();
  v4 = sub_10004DE20();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_100013504, v4, v3);
}

uint64_t sub_100013504()
{
  sub_10004DB10();
  v1 = sub_10004DD00();

  sub_10004CCC0();
  v2 = [objc_opt_self() montaraEnablementWithBundleIdentifier:v1 source:2 isExplicitRequest:*(v0 + 104) & 1];
  *(v0 + 72) = v2;

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = sub_100007E50();
  *(v0 + 88) = v4;
  *v3 = v0;
  v3[1] = sub_100013620;

  return AppIntent.requestConfirmation(systemStyle:)(v2, &type metadata for GenerateRichContentIntent, v4);
}

uint64_t sub_100013620()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100013840;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10001373C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10001373C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v3 + 8))(v1, v2);
  sub_10004DB80();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100013840()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000138B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_10004CB90();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = sub_10004DA90();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  sub_1000026D8(&unk_100061B20, &qword_100050D50);
  v5[25] = swift_task_alloc();
  sub_10004DE50();
  v5[26] = sub_10004DE40();
  v9 = sub_10004DE20();
  v5[27] = v9;
  v5[28] = v8;

  return _swift_task_switch(sub_100013A48, v9, v8);
}

uint64_t sub_100013A48()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v0[29] = sub_10004CCE0();
  sub_10004D8E0();
  sub_10004D8D0();
  (*(v4 + 104))(v2, enum case for CatId.acmeAsks(_:), v3);
  sub_1000026D8(&unk_100061540, &unk_1000507C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004F380;
  *(inited + 32) = 0x6E6F697473657571;
  *(inited + 40) = 0xE800000000000000;
  v6 = sub_10004DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_100045F74(inited);
  swift_setDeallocating();
  sub_100007BC0(inited + 32, &unk_100061E40, qword_10004F6E0);
  sub_10004D8B0();

  (*(v4 + 8))(v2, v3);
  sub_10004CBA0();
  v8 = sub_10004CBB0();
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_100013C90;
  v10 = v0[25];

  return IntentParameter.requestValue(_:)(v0 + 12, v10);
}

uint64_t sub_100013C90()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  *(*v1 + 248) = v0;

  sub_100007BC0(v3, &unk_100061B20, &qword_100050D50);

  v4 = *(v2 + 224);
  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_100013F50;
  }

  else
  {
    v6 = sub_100013E1C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100013E1C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v4 = v0[13];
  v7 = v0[12];
  sub_10004DBC0();
  sub_10004DBB0();
  sub_100007E50();
  sub_10004CA70();
  sub_10004CB80();
  (*(v2 + 8))(v1, v3);
  sub_10004DB80();

  v5 = v0[1];

  return v5(v7, v4);
}

uint64_t sub_100013F50()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100013FDC()
{
  sub_100015730();
  v0 = sub_10004CFD0();
  v1 = sub_10004D650();
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    [v0 setTotalUnitCount:v1 - 1];

    v2 = sub_10004CFD0();
    [v2 setTotalUnitCount:sub_10004D650()];
  }
}

void sub_100014088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100015730();
  v4 = sub_10004CFD0();
  v5 = sub_10004DD00();
  [v4 setLocalizedDescription:v5];

  v6 = sub_10004CFD0();
  [v6 setCompletedUnitCount:a1];
}

void sub_100014154()
{
  sub_1000026D8(&unk_100061E00, &unk_1000507B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004EFA0;
  *(inited + 32) = sub_10004DD30();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  *(inited + 56) = sub_10004DD30();
  *(inited + 64) = v2;
  *(inited + 72) = 1;
  v3 = sub_100045E78(inited);
  swift_setDeallocating();
  sub_1000026D8(&qword_100061530, &unk_10004F6D0);
  swift_arrayDestroy();
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v6 = v4;
    sub_10004D170(v5);
    v8 = v7;
    sub_100032B1C(v3);

    isa = sub_10004DC90().super.isa;

    [v6 openSensitiveURL:v8 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000142C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a4;
  v31 = a1;
  v32 = a2;
  v30 = sub_10004DA90();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004D240();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004CEF0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000026D8(&qword_1000614D8, &unk_100050DA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v25 - v15;
  sub_100007E50();
  sub_10004CA80();
  sub_10004CED0();
  (*(v11 + 8))(v13, v10);
  v17 = sub_10004CEC0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100007BC0(v16, &qword_1000614D8, &unk_100050DA0);
LABEL_5:
    sub_10004D230();
    v26 = sub_10004D220();
    (*(v7 + 8))(v9, v6);

    goto LABEL_6;
  }

  v19 = sub_10004CE90();
  v21 = v20;
  (*(v18 + 8))(v16, v17);
  if (!v21)
  {
    goto LABEL_5;
  }

  v26 = v19;
LABEL_6:
  v25 = sub_10004D8A0();
  v22 = v27;
  v23 = v30;
  (*(v4 + 104))(v27, enum case for CatId.generateRichContentResponse(_:), v30);
  type metadata accessor for GenerativeResponseEntity(0);
  sub_10004CC20();
  sub_10004CC20();
  sub_10004CC20();
  sub_10004D890();

  return (*(v4 + 8))(v22, v23);
}

unint64_t sub_100014740()
{
  result = qword_1000613F0;
  if (!qword_1000613F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000613F0);
  }

  return result;
}

unint64_t sub_100014798()
{
  result = qword_1000613F8;
  if (!qword_1000613F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000613F8);
  }

  return result;
}

uint64_t sub_10001483C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100060FD0 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D130();
  v3 = sub_100003774(v2, qword_100062430);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000148FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000026D8(&qword_100061568, qword_10004F708);
  __chkstk_darwin(v2 - 8);
  sub_10004CF90();
  return sub_10004CF80();
}

uint64_t sub_1000149D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002414;

  return sub_100008E84(a1);
}

uint64_t sub_100014A74(uint64_t a1)
{
  v2 = sub_100014D58();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100014AC0(uint64_t a1)
{
  v2 = sub_100007E50();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100014AFC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_100014B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_100014B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *sub_100014CF4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100014D58()
{
  result = qword_100061478;
  if (!qword_100061478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061478);
  }

  return result;
}

uint64_t sub_100014E14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100014E78(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100014EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeResponseEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100014F20()
{
  result = qword_1000614E0;
  if (!qword_1000614E0)
  {
    sub_100002AEC(&qword_1000614A0, &unk_10004F640);
    sub_100015604(&qword_1000614E8, type metadata accessor for GenerativeResponseEntity, &unk_10004FAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000614E0);
  }

  return result;
}

uint64_t sub_100014FD4(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeResponseEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015030()
{
  v1 = sub_10004D210();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100007B00((v0 + v5));
  sub_100007B00((v0 + v5 + 40));

  return _swift_deallocObject(v0, v5 + 144, v3 | 7);
}

uint64_t sub_100015110(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(sub_10004D210() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_100002414;

  return sub_100012F2C(a1, a2, a3, v3 + v9, v3 + v10);
}

uint64_t sub_100015230()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001578C;

  return sub_100013410(v0 + 16);
}

uint64_t sub_1000152C4()
{
  sub_100007B00((v0 + 16));
  sub_100007B00((v0 + 56));

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_100015344(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 160);
  v7 = *(v2 + 168);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100015400;

  return sub_1000138B8(a1, a2, v2 + 16, v6, v7);
}

uint64_t sub_100015400(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_10001550C()
{
  sub_100007B00((v0 + 16));
  sub_100007B00((v0 + 56));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_100015594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&qword_100061488, &unk_100050D70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001564C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026D8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1000156B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_100003720(a1, a2);
  }
}

uint64_t sub_1000156C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000156DC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000156DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100015730()
{
  result = qword_100061538;
  if (!qword_100061538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061538);
  }

  return result;
}

uint64_t sub_1000157A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004D130();
  __chkstk_darwin(v2 - 8);
  sub_10004D230();
  v3 = type metadata accessor for GenerativeResponseEntity(0);
  v4 = v3[5];
  sub_1000026D8(&qword_100061998, &qword_100050100);
  sub_10004D110();
  sub_10001AFFC(&qword_1000615F8, type metadata accessor for ResponseImageEntity, &protocol conformance descriptor for ResponseImageEntity);
  *(a1 + v4) = sub_10004CC50();
  v5 = v3[6];
  sub_1000026D8(&qword_1000619A0, &qword_100050108);
  sub_10004D110();
  *(a1 + v5) = sub_10004CC70();
  v6 = v3[7];
  sub_1000026D8(&qword_1000619A8, &qword_100050110);
  sub_10004D110();
  sub_10001AFFC(&qword_100061660, type metadata accessor for ResponseTextEntity, &protocol conformance descriptor for ResponseTextEntity);
  *(a1 + v6) = sub_10004CC50();
  v7 = v3[8];
  sub_1000026D8(&qword_100061070, &qword_10004E740);
  sub_10004D110();
  *(a1 + v7) = sub_10004CC70();
  v8 = v3[9];
  sub_10004D110();
  *(a1 + v8) = sub_10004CC70();
  v9 = v3[10];
  sub_1000026D8(&qword_1000619B0, &unk_100050118);
  sub_10004D110();
  *(a1 + v9) = sub_10004CC80();
  v10 = v3[11];
  sub_10004D110();
  *(a1 + v10) = sub_10004CC70();
  v11 = v3[12];
  sub_10004D110();
  *(a1 + v11) = sub_10004CC80();
  *(a1 + v3[13]) = 300;
  *(a1 + v3[14]) = 0x4082800000000000;
  *(a1 + v3[15]) = 792;
  *(a1 + v3[16]) = 0x4034000000000000;
  *(a1 + v3[17]) = 0x4034000000000000;
  sub_10004CC30();
  return sub_10004CC30();
}

uint64_t sub_100015B24(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_1000026D8(&qword_100061978, &unk_1000500D8);
  v2[20] = swift_task_alloc();
  sub_1000026D8(&qword_100061570, qword_10004F790);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v3 = type metadata accessor for ResponseImageEntity(0);
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = sub_10004DC80();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v5 = sub_10004D150();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  sub_1000026D8(&qword_100061480, &qword_10004F2F0);
  v2[35] = swift_task_alloc();
  v6 = sub_10004D1B0();
  v2[36] = v6;
  v2[37] = *(v6 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  sub_10004D130();
  v2[44] = swift_task_alloc();
  v7 = type metadata accessor for ResponseTextEntity(0);
  v2[45] = v7;
  v2[46] = *(v7 - 8);
  v2[47] = swift_task_alloc();
  v8 = sub_10004D410();
  v2[48] = v8;
  v2[49] = *(v8 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v9 = sub_1000026D8(&qword_100061980, &qword_1000500E8);
  v2[54] = v9;
  v2[55] = *(v9 - 8);
  v2[56] = swift_task_alloc();
  sub_1000026D8(&qword_100061988, &unk_1000500F0);
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v10 = sub_10004D240();
  v2[59] = v10;
  v2[60] = *(v10 - 8);
  v2[61] = swift_task_alloc();

  return _swift_task_switch(sub_100016048, 0, 0);
}

uint64_t sub_100016048(uint64_t a1)
{
  v202 = v1;
  v3 = *(v1 + 480);
  v2 = *(v1 + 488);
  v4 = *(v1 + 472);
  v5 = *(v1 + 440);
  v190 = *(v1 + 432);
  v6 = *(v1 + 416);
  v7 = *(v1 + 392);
  v161 = *(v1 + 360);
  v162 = *(v1 + 368);
  v8 = *(v1 + 296);
  v9 = *(v1 + 264);
  v198 = *(v1 + 216);
  v158 = *(v1 + 184);
  v159 = *(v1 + 192);
  v10 = *(v1 + 144);
  sub_10004D230();
  v157 = sub_10004D220();
  v163 = v11;
  (*(v3 + 8))(v2, v4);
  v12 = 0;
  v189 = (v6 + 8);
  v13 = *(v10 + 16);
  v14 = (v7 + 16);
  v195 = (v5 + 48);
  v196 = (v5 + 56);
  v193 = (v7 + 88);
  v194 = (v7 + 32);
  v192 = enum case for RichContentResultSegment.string(_:);
  v184 = v7;
  v185 = (v198 + 8);
  v191 = enum case for RichContentResultSegment.imageData(_:);
  v186 = (v7 + 96);
  v167 = (v8 + 8);
  v183 = enum case for RichContentResultSegment.fileData(_:);
  v155 = (v9 + 104);
  v156 = (v8 + 56);
  v160 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v154 = (v9 + 8);
  v153 = (v8 + 16);
  v164 = &_swiftEmptyArrayStorage;
  v165 = &_swiftEmptyArrayStorage;
  v166 = &_swiftEmptyArrayStorage;
  v187 = (v7 + 16);
  v188 = v13;
  v197 = (v7 + 8);
LABEL_2:
  v15 = v190;
  while (1)
  {
    if (v12 == v13)
    {
      v18 = 1;
      v199 = v13;
    }

    else
    {
      if (v12 >= v13)
      {
        __break(1u);
LABEL_52:
        __break(1u);
      }

      v19 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_52;
      }

      v20 = *(v1 + 448);
      v21 = *(v1 + 456);
      v22 = *(v1 + 384);
      v23 = *(v1 + 144) + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v12;
      v24 = *(v15 + 48);
      *v20 = v12;
      (*(v184 + 16))(&v20[v24], v23, v22);
      sub_10001CABC(v20, v21, &qword_100061980, &qword_1000500E8);
      v18 = 0;
      v199 = v19;
    }

    v25 = *(v1 + 456);
    v26 = *(v1 + 464);
    v27 = *(v1 + 432);
    (*v196)(v25, v18, 1, v27);
    sub_10001CABC(v25, v26, &qword_100061988, &unk_1000500F0);
    if ((*v195)(v26, 1, v27) == 1)
    {
      break;
    }

    v28 = *(v1 + 464);
    v29 = *(v1 + 416);
    v30 = *(v1 + 424);
    v31 = *(v1 + 384);
    v32 = *v28;
    (*v194)(v30, &v28[*(v15 + 48)], v31);
    v33 = *v14;
    (*v14)(v29, v30, v31);
    v34 = (*v193)(v29, v31);
    if (v34 == v192)
    {
      v71 = *(v1 + 416);
      v72 = *(v1 + 376);
      (*v186)(v71, *(v1 + 384));
      v181 = *v71;
      v73 = *v189;
      sub_10004CF00();
      v74 = *(v161 + 20);
      sub_1000026D8(&qword_100061060, &qword_10004E730);
      sub_10004D110();
      *(v72 + v74) = sub_10004CC90();
      v75 = *(v161 + 24);
      sub_1000026D8(&qword_100061070, &qword_10004E740);
      sub_10004D110();
      *(v72 + v75) = sub_10004CC70();
      *(v1 + 80) = v32;
      *(v1 + 88) = 0;
      sub_10004CC30();
      *(v1 + 48) = v181;
      *(v1 + 56) = v73;
      sub_10004CC30();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v166 = sub_10004845C(0, v166[2] + 1, 1, v166);
      }

      v77 = v166[2];
      v76 = v166[3];
      v14 = v187;
      v13 = v188;
      if (v77 >= v76 >> 1)
      {
        v166 = sub_10004845C((v76 > 1), v77 + 1, 1, v166);
      }

      v78 = *(v1 + 376);
      (*v197)(*(v1 + 424), *(v1 + 384));
      v166[2] = v77 + 1;
      sub_10001CB24(v78, v166 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v77, type metadata accessor for ResponseTextEntity);
      v12 = v199;
    }

    else if (v34 == v191)
    {
      v35 = *(v1 + 416);
      (*v186)(v35, *(v1 + 384));
      v36 = *v35;
      v37 = *v189;
      v38 = CPSharedResourcesDirectory();
      if (v38)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v200 = 0;
          v201 = 0;
          v39 = v38;
          sub_10004DD20();

          if (v201)
          {
            v179 = v37;
            v182 = v36;
            v79 = *(v1 + 328);
            v170 = *(v1 + 336);
            v175 = *(v1 + 288);
            v80 = *(v1 + 272);
            v81 = *(v1 + 256);
            (*v156)();
            v82 = *v155;
            (*v155)(v80, v160, v81);
            sub_10004D190();
            *(v1 + 16) = 7368052;
            *(v1 + 24) = 0xE300000000000000;
            v82(v80, v160, v81);
            sub_100007DF8();
            sub_10004D1A0();
            v147 = *v154;
            (*v154)(v80, v81);
            v83 = *v167;
            (*v167)(v79, v175);
            *(v1 + 32) = 0xD000000000000018;
            *(v1 + 40) = 0x80000001000517A0;
            v82(v80, v160, v81);
            sub_10004D1A0();
            v147(v80, v81);
            v84 = v175;
            v176 = v83;
            v83(v170, v84);
            v200 = v157;
            v201 = v163;

            v204._countAndFlagsBits = 0x772E6567616D695FLL;
            v204._object = 0xEB00000000706265;
            sub_10004DDC0(v204);
            sub_10004D180();

            v85 = [objc_opt_self() defaultManager];
            sub_10004D170(v86);
            v88 = v87;
            *(v1 + 128) = 0;
            LODWORD(v79) = [v85 createDirectoryAtURL:v87 withIntermediateDirectories:1 attributes:0 error:v1 + 128];

            v89 = *(v1 + 128);
            if (v79)
            {
              v90 = v89;
              sub_10004D1E0();
              v130 = *(v1 + 312);
              v131 = *(v1 + 320);
              v132 = *(v1 + 288);
              sub_10004DC40();
              (*v153)(v130, v131, v132);
              v133 = sub_10004DC70();
              v134 = sub_10004DEA0();
              v135 = os_log_type_enabled(v133, v134);
              v136 = *(v1 + 312);
              v137 = *(v1 + 288);
              v138 = *(v1 + 248);
              v139 = *(v1 + 208);
              if (v135)
              {
                v171 = *(v1 + 208);
                v140 = swift_slowAlloc();
                v141 = swift_slowAlloc();
                v200 = v141;
                *v140 = 136315138;
                v150 = sub_10004D160();
                v151 = v138;
                v143 = v142;
                v176(v136, v137);
                v144 = sub_10001E340(v150, v143, &v200);

                *(v140 + 4) = v144;
                _os_log_impl(&_mh_execute_header, v133, v134, "Wrote image to the path %s", v140, 0xCu);
                sub_100007B00(v141);

LABEL_33:
                (*v185)(v151, v171);
              }

              else
              {

                v176(v136, v137);
                (*v185)(v138, v139);
              }
            }

            else
            {
              v91 = v89;
              v92 = sub_10004D100();

              swift_willThrow();
              v93 = *(v1 + 320);
              v94 = *(v1 + 304);
              v95 = *(v1 + 288);
              sub_10004DC40();
              (*v153)(v94, v93, v95);
              swift_errorRetain();
              v96 = sub_10004DC70();
              v97 = sub_10004DEB0();

              v98 = os_log_type_enabled(v96, v97);
              v99 = *(v1 + 304);
              v100 = *(v1 + 288);
              v101 = *(v1 + 224);
              v171 = *(v1 + 208);
              if (v98)
              {
                v151 = *(v1 + 224);
                v102 = swift_slowAlloc();
                v200 = swift_slowAlloc();
                *v102 = 136315394;
                v103 = sub_10004D160();
                v149 = v97;
                v104 = v92;
                v106 = v105;
                v176(v99, v100);
                v107 = sub_10001E340(v103, v106, &v200);

                *(v102 + 4) = v107;
                *(v102 + 12) = 2080;
                *(v1 + 136) = v104;
                swift_errorRetain();
                sub_1000026D8(&qword_100061990, &unk_100050DE0);
                v108 = sub_10004DD70();
                v110 = sub_10001E340(v108, v109, &v200);

                *(v102 + 14) = v110;
                _os_log_impl(&_mh_execute_header, v96, v149, "Failed to write image to disk %s: %s", v102, 0x16u);
                swift_arrayDestroy();

                goto LABEL_33;
              }

              v176(v99, v100);
              (*v185)(v101, v171);
            }

            v111 = *(v1 + 200);
            v152 = *(v1 + 176);
            v172 = *(v1 + 168);
            v148 = *(v1 + 160);
            sub_100003720(v182, v179);
            sub_10004D160();
            sub_10004CF00();
            v112 = *(v158 + 20);
            sub_1000026D8(&qword_100061060, &qword_10004E730);
            sub_10004D110();
            *(v111 + v112) = sub_10004CC90();
            v113 = *(v158 + 24);
            sub_1000026D8(&qword_100061068, &qword_10004E738);
            sub_10004D110();
            *(v111 + v113) = sub_10004CC60();
            *(v1 + 64) = v32;
            *(v1 + 72) = 0;
            sub_10004CC30();
            v114 = sub_10004D470();
            (*(*(v114 - 8) + 56))(v148, 1, 1, v114);
            sub_100003720(v182, v179);
            sub_10004CB30();
            v115 = sub_10004CB40();
            (*(*(v115 - 8) + 56))(v152, 0, 1, v115);
            sub_10001A0D4(v152, v172);
            sub_10004CC30();
            sub_1000156DC(v182, v179);
            sub_100007BC0(v152, &qword_100061570, qword_10004F790);
            v116 = v164;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v116 = sub_100048434(0, v164[2] + 1, 1, v164);
            }

            v118 = v116[2];
            v117 = v116[3];
            if (v118 >= v117 >> 1)
            {
              v116 = sub_100048434((v117 > 1), v118 + 1, 1, v116);
            }

            v119 = *(v1 + 200);
            v116[2] = v118 + 1;
            sub_10001CB24(v119, v116 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v118, type metadata accessor for ResponseImageEntity);
            v173 = sub_10004D160();
            v121 = v120;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v165 = sub_100048328(0, *(v165 + 2) + 1, 1, v165);
            }

            v123 = *(v165 + 2);
            v122 = *(v165 + 3);
            v164 = v116;
            if (v123 >= v122 >> 1)
            {
              v165 = sub_100048328((v122 > 1), v123 + 1, 1, v165);
            }

            v124 = *(v1 + 424);
            v125 = *(v1 + 384);
            v126 = *(v1 + 344);
            v127 = *(v1 + 320);
            v128 = *(v1 + 288);
            sub_1000156DC(v182, v179);

            v176(v127, v128);
            v176(v126, v128);
            (*v197)(v124, v125);
            *(v165 + 2) = v123 + 1;
            v129 = &v165[16 * v123];
            *(v129 + 4) = v173;
            *(v129 + 5) = v121;
            v14 = v187;
            v13 = v188;
            v12 = v199;
            goto LABEL_2;
          }
        }
      }

      sub_10004DC40();
      v40 = sub_10004DC70();
      v41 = sub_10004DEB0();
      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v1 + 424);
      v44 = *(v1 + 384);
      v45 = *(v1 + 240);
      v46 = *(v1 + 208);
      if (v42)
      {
        v177 = *(v1 + 208);
        v47 = swift_slowAlloc();
        v180 = v44;
        v48 = swift_slowAlloc();
        v200 = v48;
        *v47 = 136315138;
        *(v1 + 120) = CPSharedResourcesDirectory();
        sub_1000026D8(&qword_1000613C8, qword_10004F320);
        v49 = sub_10004DD70();
        v168 = v45;
        v51 = v37;
        v52 = sub_10001E340(v49, v50, &v200);

        *(v47 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v40, v41, "Could not get URL string: %s", v47, 0xCu);
        sub_100007B00(v48);

        sub_1000156DC(v36, v51);
        (*v185)(v168, v177);
        (*v197)(v43, v180);
      }

      else
      {

        sub_1000156DC(v36, v37);
        (*v185)(v45, v46);
        (*v197)(v43, v44);
      }

LABEL_23:
      v15 = v190;
      v14 = v187;
      v13 = v188;
      v12 = v199;
    }

    else
    {
      v53 = *(v1 + 424);
      v54 = *(v1 + 384);
      if (v34 != v183)
      {
        v55 = *(v1 + 408);
        sub_10004DC40();
        v33(v55, v53, v54);
        v56 = sub_10004DC70();
        v57 = sub_10004DEB0();
        v58 = os_log_type_enabled(v56, v57);
        v178 = *(v1 + 424);
        v59 = *(v1 + 408);
        if (v58)
        {
          v60 = *(v1 + 400);
          v61 = *(v1 + 384);
          v169 = *(v1 + 208);
          v174 = *(v1 + 232);
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v200 = v63;
          *v62 = 136315138;
          v33(v60, v59, v61);
          v64 = sub_10004DD70();
          v66 = v65;
          v67 = *v197;
          (*v197)(v59, v61);
          v68 = sub_10001E340(v64, v66, &v200);

          *(v62 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v56, v57, "Unknown RichContentResultSegment type: %s", v62, 0xCu);
          sub_100007B00(v63);

          (*v185)(v174, v169);
        }

        else
        {
          v61 = *(v1 + 384);
          v69 = *(v1 + 232);
          v70 = *(v1 + 208);

          v67 = *v197;
          (*v197)(v59, v61);
          (*v185)(v69, v70);
        }

        v67(v178, v61);
        v67(*(v1 + 416), *(v1 + 384));
        goto LABEL_23;
      }

      v16 = *(v1 + 416);
      v17 = *(v1 + 288);
      (*v197)(*(v1 + 424), *(v1 + 384));
      (*v186)(v16, v54);
      sub_1000026D8(&qword_1000613B0, &unk_10004F300);

      (*v167)(v16, v17);
      v12 = v199;
    }
  }

  type metadata accessor for GenerativeResponseEntity(0);
  *(v1 + 96) = v166;
  sub_10004CC30();
  *(v1 + 104) = v164;
  sub_10004CC30();
  *(v1 + 112) = v165;
  sub_10004CC30();

  v145 = *(v1 + 8);

  return v145();
}

void *sub_100017588()
{
  sub_10004D7E0();
  type metadata accessor for GenerativeResponseEntity(0);
  sub_10004CC30();
  sub_10004D790();
  sub_10004CC30();
  v0 = sub_10004D7B0();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  v5 = v3 != 0;
  sub_10004CC30();
  result = sub_10004CC20();
  if (v5)
  {
    sub_10004D7B0();
    return sub_10004CC30();
  }

  return result;
}

uint64_t sub_100017684()
{
  sub_10004DF30(114);
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x8000000100051B50;
  sub_10004DDC0(v6);
  type metadata accessor for GenerativeResponseEntity(0);
  sub_10004CC20();
  if (v5)
  {
    v0._countAndFlagsBits = 1702195828;
  }

  else
  {
    v0._countAndFlagsBits = 0x65736C6166;
  }

  if (v5)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  v0._object = v1;
  sub_10004DDC0(v0);

  v7._countAndFlagsBits = 0x7265735520200A2CLL;
  v7._object = 0xEF203A7972657551;
  sub_10004DDC0(v7);
  sub_10004CC20();
  sub_1000026D8(&qword_100061808, "4K");
  v8._countAndFlagsBits = sub_10004DD70();
  sub_10004DDC0(v8);

  v9._object = 0x8000000100051B80;
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  sub_10004DDC0(v9);
  sub_10004CC20();
  if (v5)
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (v5)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_10004DDC0(v2);

  v10._countAndFlagsBits = 0x7073655220200A2CLL;
  v10._object = 0xEE00203A65736E6FLL;
  sub_10004DDC0(v10);
  sub_10004CC20();
  v11._countAndFlagsBits = sub_10004DD70();
  sub_10004DDC0(v11);

  return 0;
}

uint64_t sub_100017900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002414;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_1000179B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100017A74;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100017A74(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100017B74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001AE48();
  *v5 = v2;
  v5[1] = sub_10001578C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100017C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001578C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_100017CE0()
{
  v0 = sub_1000026D8(&unk_100061B30, "zS");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10004D130();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10004D020();
  sub_1000037AC(v5, qword_100062448);
  sub_100003774(v5, qword_100062448);
  sub_10004D110();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10004D010();
}

id sub_100017E50()
{
  result = [objc_opt_self() systemFontOfSize:18.0];
  qword_100062460 = result;
  return result;
}

void sub_100017ECC(uint64_t a1, SEL *a2, void *a3)
{
  if (qword_100060FE0 != -1)
  {
    swift_once();
  }

  v5 = qword_100062460;
  [v5 *a2];
  v7 = v6;

  *a3 = v7;
}

uint64_t sub_100017F54()
{
  sub_1000026D8(&qword_100061A08, &unk_100050180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004F380;
  *(inited + 32) = NSFontAttributeName;
  v1 = qword_100060FE0;
  v2 = NSFontAttributeName;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_100062460;
  *(inited + 64) = sub_10001DA18(0, &qword_100061A10, UIFont_ptr);
  *(inited + 40) = v3;
  v4 = v3;
  v5 = sub_1000460A4(inited);
  swift_setDeallocating();
  result = sub_100007BC0(inited + 32, &qword_100061ED0, &qword_100050E20);
  qword_100062480 = v5;
  return result;
}

unint64_t sub_100018054()
{
  v0 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v0 setAlignment:1];
  sub_1000026D8(&qword_100061A08, &unk_100050180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004EFA0;
  *(inited + 32) = NSFontAttributeName;
  v2 = qword_100060FE0;
  v3 = NSFontAttributeName;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100062460;
  v5 = sub_10001DA18(0, &qword_100061A10, UIFont_ptr);
  *(inited + 40) = v4;
  *(inited + 64) = v5;
  *(inited + 72) = NSParagraphStyleAttributeName;
  *(inited + 104) = sub_10001DA18(0, &qword_100061A18, NSMutableParagraphStyle_ptr);
  *(inited + 80) = v0;
  v6 = v4;
  v7 = NSParagraphStyleAttributeName;
  v8 = sub_1000460A4(inited);
  swift_setDeallocating();
  sub_1000026D8(&qword_100061ED0, &qword_100050E20);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_1000181C0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_1000026D8(&qword_1000619C8, &qword_100050128);
  __chkstk_darwin(v1);
  v26 = v22 - v2;
  v3 = sub_10004D470();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000026D8(&qword_1000619D0, &qword_100050130);
  v25 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v23 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v24 = v22 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = v22 - v10;
  __chkstk_darwin(v9);
  v28 = v22 - v12;
  sub_10004D430();
  type metadata accessor for GenerativeResponseEntity(0);
  sub_10001AFFC(&qword_1000619D8, type metadata accessor for GenerativeResponseEntity, &unk_10004F964);
  sub_10004D300();
  sub_10004D440();
  sub_10004D300();
  sub_10004D450();
  sub_10004D300();
  sub_10004D420();
  sub_10004D300();
  v13 = v1[12];
  v14 = v1[16];
  v22[0] = v1[20];
  v22[1] = v1;
  v16 = v25;
  v15 = v26;
  v17 = *(v25 + 16);
  v17(v26, v28, v4);
  v17(&v15[v13], v11, v4);
  v18 = v24;
  v17(&v15[v14], v24, v4);
  v19 = v23;
  v17(&v15[v22[0]], v23, v4);
  sub_10004D320();
  v20 = *(v16 + 8);
  v20(v19, v4);
  v20(v18, v4);
  v20(v11, v4);
  return (v20)(v28, v4);
}

uint64_t sub_1000185BC()
{
  v1 = sub_100018634();
  if (v2 >> 60 == 15)
  {
    v1 = 0;
    v2 = 0xC000000000000000;
  }

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

void *sub_100018634()
{
  result = sub_1000190BC();
  if (result)
  {
    v1 = result;
    v2 = [result length];
    sub_1000026D8(&qword_100061A28, &qword_100050198);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004F380;
    *(inited + 32) = NSDocumentTypeDocumentAttribute;
    type metadata accessor for DocumentType(0);
    *(inited + 64) = v4;
    *(inited + 40) = NSRTFTextDocumentType;
    v5 = NSDocumentTypeDocumentAttribute;
    v6 = NSRTFTextDocumentType;
    sub_1000460C8(inited);
    swift_setDeallocating();
    sub_100007BC0(inited + 32, &qword_100061A30, &unk_1000501A0);
    type metadata accessor for DocumentAttributeKey(0);
    sub_10001AFFC(&qword_100061218, type metadata accessor for DocumentAttributeKey, &unk_10004EEEC);
    isa = sub_10004DC90().super.isa;

    v12 = 0;
    v8 = [v1 dataFromRange:0 documentAttributes:v2 error:{isa, &v12}];

    v9 = v12;
    if (v8)
    {
      v10 = sub_10004D1D0();

      return v10;
    }

    else
    {
      v11 = v9;
      sub_10004D100();

      swift_willThrow();

      return 0;
    }
  }

  return result;
}

uint64_t sub_100018838(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_10004DD60();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000188F8, 0, 0);
}

uint64_t sub_1000188F8()
{
  type metadata accessor for GenerativeResponseEntity(0);
  sub_10004CC20();
  if (!v0[3] || (v2 = v0[6], v1 = v0[7], v3 = v0[5], sub_10004DD50(), v4 = sub_10004DD40(), v6 = v5, , (*(v2 + 8))(v1, v3), v6 >> 60 == 15))
  {
    v4 = 0;
    v6 = 0xC000000000000000;
  }

  v7 = v0[1];

  return v7(v4, v6);
}

uint64_t sub_100018A1C()
{
  v1 = sub_100018A94();
  if (v2 >> 60 == 15)
  {
    v1 = 0;
    v2 = 0xC000000000000000;
  }

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_100018A94()
{
  v0 = sub_10004CB40();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000026D8(&qword_100061570, qword_10004F790);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ResponseImageEntity(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeResponseEntity(0);
  sub_10004CC20();
  if (!*(v14 + 16))
  {

    return 0;
  }

  sub_10001D998(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v10, type metadata accessor for ResponseImageEntity);

  sub_10004CC20();
  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_100007BC0(v6, &qword_100061570, qword_10004F790);
    sub_10001D938(v10, type metadata accessor for ResponseImageEntity);
    return 0;
  }

  (*(v1 + 16))(v3, v6, v0);
  sub_100007BC0(v6, &qword_100061570, qword_10004F790);
  sub_10001D938(v10, type metadata accessor for ResponseImageEntity);
  v12 = sub_10004CB20();
  (*(v1 + 8))(v3, v0);
  return v12;
}

uint64_t sub_100018D88()
{
  v1 = sub_100018E00();
  if (v2 >> 60 == 15)
  {
    v1 = 0;
    v2 = 0xC000000000000000;
  }

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_100018E00()
{
  sub_1000026D8(&qword_1000619E0, &qword_100050158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004EFA0;
  *(inited + 32) = kCGPDFContextCreator;
  *(inited + 40) = 0x65746E6F43464450;
  *(inited + 48) = 0xEA0000000000746ELL;
  *(inited + 56) = kCGPDFContextAuthor;
  *(inited + 64) = 0xD000000000000019;
  *(inited + 72) = 0x8000000100051BC0;
  v1 = kCGPDFContextCreator;
  v2 = kCGPDFContextAuthor;
  v3 = sub_100046204(inited);
  swift_setDeallocating();
  sub_1000026D8(&qword_1000619E8, &qword_100050160);
  swift_arrayDestroy();
  sub_1000195F0();
  v5 = v4;
  v7 = v6;
  v8 = [objc_allocWithZone(NSMutableData) init];
  sub_100032D64(v3);

  isa = sub_10004DC90().super.isa;

  v14.size.width = 612.0;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.height = v7;
  UIGraphicsBeginPDFContextToData(v8, v14, isa);

  UIGraphicsBeginPDFPage();
  v10 = UIGraphicsGetCurrentContext();
  if (v10)
  {

    sub_10001CB8C(v5);

    UIGraphicsEndPDFContext();
    v11 = v8;
    v12 = sub_10004D1D0();
  }

  else
  {

    return 0;
  }

  return v12;
}

uint64_t ResponseTextEntity.text.getter()
{
  type metadata accessor for ResponseTextEntity(0);
  sub_10004CC20();
  return v1;
}

uint64_t sub_1000190BC()
{
  v0 = sub_10004DC80();
  v25 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v24 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v23 = v22 - v3;
  v4 = sub_1000026D8(&qword_100061480, &qword_10004F2F0);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_10004D080();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004D090();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004D0B0();
  __chkstk_darwin(v15 - 8);
  type metadata accessor for GenerativeResponseEntity(0);
  sub_10004CC20();
  if (v27)
  {
    v22[1] = v0;
    v23 = v26;
    sub_10001DA18(0, &qword_100061A38, NSAttributedString_ptr);
    (*(v12 + 104))(v14, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.inlineOnlyPreservingWhitespace(_:), v11);
    (*(v8 + 104))(v10, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v7);
    sub_10004D0A0();
    v16 = sub_10004D1B0();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    return sub_10004DEC0();
  }

  else
  {
    v18 = v23;
    sub_10004DC40();
    v19 = sub_10004DC70();
    v20 = sub_10004DEB0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Response is empty. Cannot convert to .rtf", v21, 2u);
    }

    (*(v25 + 8))(v18, v0);
    return 0;
  }
}

void sub_1000195F0()
{
  v1 = type metadata accessor for ResponseTextEntity(0);
  v34 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ResponseImageEntity(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for GenerativeResponseEntity(0);
  v36 = v0;
  sub_10004CC20();
  v8 = *(v38 + 16);
  if (v8)
  {
    v32[1] = v38;
    v33 = v1;
    v9 = 0;
    v10 = v38 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = &_swiftEmptyArrayStorage;
    v12 = *(v5 + 72);
    while (1)
    {
      sub_10001D998(v10, v7, type metadata accessor for ResponseImageEntity);
      sub_10004CC20();
      if (BYTE8(v38))
      {
        sub_10001D938(v7, type metadata accessor for ResponseImageEntity);
      }

      else
      {
        v13 = v38;
        v39 = v4;
        v40 = sub_10001AFFC(&qword_1000619C0, type metadata accessor for ResponseImageEntity, &protocol conformance descriptor for ResponseImageEntity);
        v14 = sub_100014CF4(&v38);
        sub_10001D998(v7, v14, type metadata accessor for ResponseImageEntity);
        v15 = v11[2];
        if (v15 < v13)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v13 < 0)
        {
          goto LABEL_42;
        }

        sub_10001DA00(&v38, v37);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v15 >= v11[3] >> 1)
        {
          v11 = sub_100048768(isUniquelyReferenced_nonNull_native, v15 + 1, 1, v11);
        }

        v17 = &v11[5 * v13];
        sub_1000026D8(&qword_100061A00, &qword_100050178);
        swift_arrayDestroy();
        memmove(v17 + 9, v17 + 4, 40 * (v11[2] - v13));
        ++v11[2];
        sub_100014E14(v37, (v17 + 4));
        sub_100007BC0(v37, &qword_100061A20, &qword_100050190);
        sub_10001D938(v7, type metadata accessor for ResponseImageEntity);
        v18 = *(v36 + *(v35 + 52));
        v19 = __OFADD__(v9, v18);
        v9 += v18;
        if (v19)
        {
          __break(1u);
LABEL_14:

          v1 = v33;
          goto LABEL_16;
        }
      }

      v10 += v12;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }
  }

  v9 = 0;
  v11 = &_swiftEmptyArrayStorage;
LABEL_16:
  sub_10004CC20();
  v20 = *(v38 + 16);
  if (v20)
  {
    v21 = *(v34 + 80);
    v33 = v38;
    v22 = v38 + ((v21 + 32) & ~v21);
    v23 = *(v34 + 72);
    do
    {
      sub_10001D998(v22, v3, type metadata accessor for ResponseTextEntity);
      sub_10004CC20();
      if (BYTE8(v38))
      {
        sub_10001D938(v3, type metadata accessor for ResponseTextEntity);
      }

      else
      {
        v24 = v38;
        v39 = v1;
        v40 = sub_10001AFFC(&qword_1000619B8, type metadata accessor for ResponseTextEntity, &protocol conformance descriptor for ResponseTextEntity);
        v25 = sub_100014CF4(&v38);
        sub_10001D998(v3, v25, type metadata accessor for ResponseTextEntity);
        v26 = v11[2];
        if (v26 < v24)
        {
          goto LABEL_43;
        }

        if (v24 < 0)
        {
          goto LABEL_44;
        }

        sub_10001DA00(&v38, v37);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        if (!v27 || v26 >= v11[3] >> 1)
        {
          v11 = sub_100048768(v27, v26 + 1, 1, v11);
        }

        v28 = &v11[5 * v24];
        sub_1000026D8(&qword_100061A00, &qword_100050178);
        swift_arrayDestroy();
        memmove(v28 + 9, v28 + 4, 40 * (v11[2] - v24));
        ++v11[2];
        sub_100014E14(v37, (v28 + 4));
        sub_100007BC0(v37, &qword_100061A20, &qword_100050190);
        sub_10004CC20();
        if (*(&v38 + 1))
        {
          if (qword_100061000 != -1)
          {
            swift_once();
          }

          v29 = sub_10004DDA0();
        }

        else
        {
          v29 = 0;
        }

        sub_10001D938(v3, type metadata accessor for ResponseTextEntity);
        v30 = 18 * v29;
        if ((v29 * 18) >> 64 != (18 * v29) >> 63)
        {
          goto LABEL_45;
        }

        v19 = __OFADD__(v9, v30);
        v9 += v30;
        if (v19)
        {
          goto LABEL_46;
        }
      }

      v22 += v23;
      --v20;
    }

    while (v20);
  }

  v31 = *(v36 + *(v35 + 60));
  if (!v31)
  {
    goto LABEL_47;
  }

  if (v9 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_50;
  }

  if (__OFADD__(v9 / v31, 1))
  {
    goto LABEL_48;
  }

  if ((v31 * (v9 / v31 + 1)) >> 64 != (v31 * (v9 / v31 + 1)) >> 63)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }
}

uint64_t sub_100019C7C(void (*a1)(void))
{
  a1(0);
  sub_10004CC20();
  return v2;
}

uint64_t sub_100019CE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100060FD8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, qword_100062448);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100019D90(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_100061590, type metadata accessor for GenerativeResponseEntity, &unk_10004F90C);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100019E60(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000615D8, type metadata accessor for GenerativeResponseEntity, &unk_10004FB28);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t ResponseImageEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004D130();
  __chkstk_darwin(v2 - 8);
  sub_10004CF00();
  v3 = type metadata accessor for ResponseImageEntity(0);
  v4 = *(v3 + 20);
  sub_1000026D8(&qword_100061060, &qword_10004E730);
  sub_10004D110();
  *(a1 + v4) = sub_10004CC90();
  v5 = *(v3 + 24);
  sub_1000026D8(&qword_100061068, &qword_10004E738);
  sub_10004D110();
  result = sub_10004CC60();
  *(a1 + v5) = result;
  return result;
}

uint64_t ResponseImageEntity.data.setter(uint64_t a1)
{
  v2 = sub_1000026D8(&qword_100061570, qword_10004F790);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for ResponseImageEntity(0);
  sub_10001A0D4(a1, v4);
  sub_10004CC30();
  return sub_100007BC0(a1, &qword_100061570, qword_10004F790);
}

uint64_t sub_10001A0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&qword_100061570, qword_10004F790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*static ResponseImageEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t)
{
  if (qword_100061008 != -1)
  {
    swift_once();
  }

  v1 = sub_10004D020();
  sub_100003774(v1, static ResponseImageEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*ResponseImageEntity.index.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ResponseImageEntity(0);
  *(v3 + 32) = sub_10004CC10();
  return sub_10001DA6C;
}

uint64_t (*ResponseImageEntity.data.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ResponseImageEntity(0);
  *(v3 + 32) = sub_10004CC10();
  return sub_10001DA6C;
}

uint64_t sub_10001A3D8(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000619C0, type metadata accessor for ResponseImageEntity, &protocol conformance descriptor for ResponseImageEntity);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_10001A454(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000619C0, type metadata accessor for ResponseImageEntity, &protocol conformance descriptor for ResponseImageEntity);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_10001A4F4(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000615F8, type metadata accessor for ResponseImageEntity, &protocol conformance descriptor for ResponseImageEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001A570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001578C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10001A634(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_100061640, type metadata accessor for ResponseImageEntity, &protocol conformance descriptor for ResponseImageEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t ResponseTextEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004D130();
  __chkstk_darwin(v2 - 8);
  sub_10004CF00();
  v3 = type metadata accessor for ResponseTextEntity(0);
  v4 = *(v3 + 20);
  sub_1000026D8(&qword_100061060, &qword_10004E730);
  sub_10004D110();
  *(a1 + v4) = sub_10004CC90();
  v5 = *(v3 + 24);
  sub_1000026D8(&qword_100061070, &qword_10004E740);
  sub_10004D110();
  result = sub_10004CC70();
  *(a1 + v5) = result;
  return result;
}

uint64_t sub_10001A8A4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10004D020();
  sub_1000037AC(v3, a2);
  sub_100003774(v3, a2);
  return sub_10004D000();
}

uint64_t sub_10001A928(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_10004D020();

  return sub_100003774(v4, a2);
}

uint64_t sub_10001A9A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_10004D020();
  v7 = sub_100003774(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t sub_10001AA6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_10004D020();
  v7 = sub_100003774(v6, a3);
  swift_beginAccess();
  v8 = *(v6 - 8);
  (*(v8 + 24))(v7, a1, v6);
  swift_endAccess();
  return (*(v8 + 8))(a1, v6);
}

uint64_t (*static ResponseTextEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100061010 != -1)
  {
    swift_once();
  }

  v1 = sub_10004D020();
  sub_100003774(v1, static ResponseTextEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10001ABE8(uint64_t a1)
{
  v3 = sub_10004CF30();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t (*ResponseTextEntity.index.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ResponseTextEntity(0);
  *(v3 + 32) = sub_10004CC10();
  return sub_10001DA6C;
}

uint64_t (*ResponseTextEntity.text.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ResponseTextEntity(0);
  *(v3 + 32) = sub_10004CC10();
  return sub_10001ADA8;
}

void sub_10001ADAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10001AE48()
{
  result = qword_100061578;
  if (!qword_100061578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061578);
  }

  return result;
}

unint64_t sub_10001AEA0()
{
  result = qword_100061580;
  if (!qword_100061580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061580);
  }

  return result;
}

unint64_t sub_10001AEF8()
{
  result = qword_100061588;
  if (!qword_100061588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061588);
  }

  return result;
}

uint64_t sub_10001AF6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001AFA8()
{
  result = qword_100061598;
  if (!qword_100061598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061598);
  }

  return result;
}

uint64_t sub_10001AFFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001B048()
{
  result = qword_1000615A0;
  if (!qword_1000615A0)
  {
    sub_100002AEC(&qword_1000615A8, qword_10004F850);
    sub_10001AFFC(&qword_1000614E8, type metadata accessor for GenerativeResponseEntity, &unk_10004FAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000615A0);
  }

  return result;
}

uint64_t sub_10001B7B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a5)(char *)@<X5>, uint64_t a6@<X8>)
{
  v11 = sub_10004D130();
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CF00();
  v14 = *(a1 + 20);
  sub_1000026D8(&qword_100061060, &qword_10004E730);
  sub_10004D110();
  *(a6 + v14) = sub_10004CC90();
  v15 = *(a1 + 24);
  sub_1000026D8(a2, a3);
  sub_10004D110();
  result = a5(v13);
  *(a6 + v15) = result;
  return result;
}

uint64_t sub_10001BA08(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000619B8, type metadata accessor for ResponseTextEntity, &protocol conformance descriptor for ResponseTextEntity);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_10001BBA4(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000619B8, type metadata accessor for ResponseTextEntity, &protocol conformance descriptor for ResponseTextEntity);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_10001BC44@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_10004D020();
  v7 = sub_100003774(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t sub_10001BD34(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_100061660, type metadata accessor for ResponseTextEntity, &protocol conformance descriptor for ResponseTextEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001BE10@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_10001BE7C(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000616A8, type metadata accessor for ResponseTextEntity, &protocol conformance descriptor for ResponseTextEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void sub_10001BF50(uint64_t a1)
{
  sub_10004CF30();
  if (v1 <= 0x3F)
  {
    sub_10001C018(319);
    if (v2 <= 0x3F)
    {
      sub_10001C110(319, &qword_100061750, &qword_100061570, qword_10004F790, sub_10001C180);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001C018(uint64_t a1)
{
  if (!qword_100061730)
  {
    sub_100002AEC(&qword_100061738, "NK");
    sub_10001C39C(&qword_100061740, &qword_100061738, "NK", sub_10001C0BC);
    v1 = sub_10004CCA0();
    if (!v2)
    {
      atomic_store(v1, &qword_100061730);
    }
  }
}

unint64_t sub_10001C0BC()
{
  result = qword_100061748;
  if (!qword_100061748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061748);
  }

  return result;
}

void sub_10001C110(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_100002AEC(a3, a4);
    a5();
    v7 = sub_10004CCA0();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10001C180()
{
  result = qword_100061758;
  if (!qword_100061758)
  {
    sub_100002AEC(&qword_100061570, qword_10004F790);
    sub_10001AFFC(&unk_100061760, &type metadata accessor for IntentFile, &protocol conformance descriptor for IntentFile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061758);
  }

  return result;
}

void sub_10001C25C(uint64_t a1)
{
  sub_10004CF30();
  if (v1 <= 0x3F)
  {
    sub_10001C018(319);
    if (v2 <= 0x3F)
    {
      sub_10001C2F8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001C2F8(uint64_t a1)
{
  if (!qword_100061800)
  {
    sub_100002AEC(&qword_100061808, "4K");
    sub_10001C39C(&qword_100061810, &qword_100061808, "4K", sub_10001C418);
    v1 = sub_10004CCA0();
    if (!v2)
    {
      atomic_store(v1, &qword_100061800);
    }
  }
}

uint64_t sub_10001C39C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002AEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001C418()
{
  result = qword_100061818;
  if (!qword_100061818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061818);
  }

  return result;
}

uint64_t sub_10001C4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
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

uint64_t sub_10001C594(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
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

void sub_10001C650(uint64_t a1)
{
  sub_10004D240();
  if (v1 <= 0x3F)
  {
    sub_10001C110(319, &qword_1000618B8, &qword_1000618C0, &qword_1000500B0, sub_10001C7DC);
    if (v2 <= 0x3F)
    {
      sub_10001C110(319, &qword_1000618D0, &qword_1000618D8, &qword_1000500B8, sub_10001C890);
      if (v3 <= 0x3F)
      {
        sub_10001C110(319, &qword_1000618E8, &qword_1000618F0, &qword_1000500C0, sub_10001C914);
        if (v4 <= 0x3F)
        {
          sub_10001C2F8(319);
          if (v5 <= 0x3F)
          {
            sub_10001C9C8(319);
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

unint64_t sub_10001C7DC()
{
  result = qword_1000618C8;
  if (!qword_1000618C8)
  {
    sub_100002AEC(&qword_1000618C0, &qword_1000500B0);
    sub_10001AFFC(&qword_100061638, type metadata accessor for ResponseImageEntity, &protocol conformance descriptor for ResponseImageEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000618C8);
  }

  return result;
}

unint64_t sub_10001C890()
{
  result = qword_1000618E0;
  if (!qword_1000618E0)
  {
    sub_100002AEC(&qword_1000618D8, &qword_1000500B8);
    sub_10001C418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000618E0);
  }

  return result;
}

unint64_t sub_10001C914()
{
  result = qword_1000618F8;
  if (!qword_1000618F8)
  {
    sub_100002AEC(&qword_1000618F0, &qword_1000500C0);
    sub_10001AFFC(&qword_1000616A0, type metadata accessor for ResponseTextEntity, &protocol conformance descriptor for ResponseTextEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000618F8);
  }

  return result;
}

void sub_10001C9C8(uint64_t a1)
{
  if (!qword_100061900)
  {
    sub_10001CA24();
    v1 = sub_10004CCA0();
    if (!v2)
    {
      atomic_store(v1, &qword_100061900);
    }
  }
}

unint64_t sub_10001CA24()
{
  result = qword_100061908;
  if (!qword_100061908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061908);
  }

  return result;
}

uint64_t sub_10001CABC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026D8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001CB24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_10001CB8C(uint64_t a1)
{
  v2 = v1;
  v101 = sub_10004CB40();
  v103 = *(v101 - 8);
  __chkstk_darwin(v101);
  v93 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000026D8(&qword_100061570, qword_10004F790);
  __chkstk_darwin(v5 - 8);
  v7 = &v90 - v6;
  v8 = sub_1000026D8(&qword_1000619F0, &qword_100050168);
  __chkstk_darwin(v8 - 8);
  v10 = &v90 - v9;
  v11 = type metadata accessor for ResponseImageEntity(0);
  v106 = *(v11 - 8);
  __chkstk_darwin(v11);
  v105 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10004DC80();
  v13 = *(v107 - 8);
  v14 = __chkstk_darwin(v107);
  v108 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v90 - v17;
  __chkstk_darwin(v16);
  v97 = &v90 - v19;
  v20 = sub_1000026D8(&qword_1000619F8, &qword_100050170);
  __chkstk_darwin(v20 - 8);
  v112 = &v90 - v21;
  v111 = type metadata accessor for ResponseTextEntity(0);
  v22 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100018054();
  v25 = type metadata accessor for GenerativeResponseEntity(0);
  v27 = *(a1 + 16);
  if (v27)
  {
    v100 = v24;
    v96 = v18;
    v102 = v25;
    v28 = *(v2 + *(v25 + 68));
    v29 = a1 + 32;
    v109 = (v22 + 56);
    v104 = (v106 + 7);
    v106 = (v13 + 8);
    v99 = (v103 + 48);
    v92 = (v103 + 16);
    v91 = (v103 + 8);
    *&v26 = 136315138;
    v94 = v26;
    v30 = v28;
    v98 = v10;
    v103 = v11;
    v31 = v108;
    v32 = v112;
    v33 = v111;
    v95 = v7;
    while (1)
    {
      sub_100014E14(v29, v116);
      sub_100014E14(v116, v115);
      sub_1000026D8(&qword_100061A00, &qword_100050178);
      v36 = swift_dynamicCast();
      v37 = *v109;
      if (v36)
      {
        v37(v32, 0, 1, v33);
        sub_10001CB24(v32, v110, type metadata accessor for ResponseTextEntity);
        sub_10004CC20();
        if (v115[1])
        {
          v38 = v102;
          v39 = *(v2 + *(v102 + 56));
          v40 = sub_10004DDA0();
          if (qword_100060FE8 != -1)
          {
            v86 = v40;
            swift_once();
            v40 = v86;
            v38 = v102;
          }

          v41 = *&qword_100062468;
          if (qword_100060FF0 != -1)
          {
            v87 = v40;
            swift_once();
            v40 = v87;
            v38 = v102;
          }

          v42 = *&qword_100062470;
          if (qword_100060FF8 != -1)
          {
            v88 = v40;
            swift_once();
            v40 = v88;
            v38 = v102;
          }

          v43 = (v41 + v42 + *&qword_100062478) * v40;
          v44 = *(v2 + *(v38 + 64));
          v45 = sub_10004DD00();

          type metadata accessor for Key(0);
          sub_10001AFFC(&qword_100061228, type metadata accessor for Key, &unk_10004EF58);
          isa = sub_10004DC90().super.isa;
          [v45 drawInRect:isa withAttributes:{v44, v30, v39, v43}];

          sub_100007B00(v116);
          sub_10001D938(v110, type metadata accessor for ResponseTextEntity);
          v30 = v30 + v28 + v43;
          goto LABEL_5;
        }

        v62 = v97;
        sub_10004DC40();
        v63 = sub_10004DC70();
        v64 = sub_10004DEB0();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&_mh_execute_header, v63, v64, "No text present in the entity response while converting to PDF.", v65, 2u);
          v11 = v103;
        }

        (*v106)(v62, v107);
        sub_100007B00(v116);
        v34 = type metadata accessor for ResponseTextEntity;
        v35 = &v118;
      }

      else
      {
        v37(v32, 1, 1, v33);
        sub_100007BC0(v32, &qword_1000619F8, &qword_100050170);
        sub_100014E14(v116, v115);
        v47 = swift_dynamicCast();
        v48 = *v104;
        if (!v47)
        {
          v48(v10, 1, 1, v11);
          sub_100007BC0(v10, &qword_1000619F0, &qword_100050168);
          sub_10004DC40();
          sub_100014E14(v116, v115);
          v53 = sub_10004DC70();
          v54 = sub_10004DEB0();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v114 = v56;
            *v55 = v94;
            sub_100014E14(v115, v113);
            v57 = sub_10004DD70();
            v58 = v2;
            v60 = v59;
            sub_100007B00(v115);
            v61 = sub_10001E340(v57, v60, &v114);
            v2 = v58;
            v7 = v95;

            *(v55 + 4) = v61;
            _os_log_impl(&_mh_execute_header, v53, v54, "Encountered unexpected entity type while writing file contents: %s.", v55, 0xCu);
            sub_100007B00(v56);
            v10 = v98;

            v11 = v103;
          }

          else
          {

            sub_100007B00(v115);
          }

          (*v106)(v31, v107);
          sub_100007B00(v116);
          goto LABEL_6;
        }

        v48(v10, 0, 1, v11);
        sub_10001CB24(v10, v105, type metadata accessor for ResponseImageEntity);
        sub_10004CC20();
        if ((*v99)(v7, 1, v101))
        {
          sub_100007BC0(v7, &qword_100061570, qword_10004F790);
        }

        else
        {
          v66 = v93;
          v67 = v101;
          (*v92)(v93, v7, v101);
          sub_100007BC0(v7, &qword_100061570, qword_10004F790);
          v68 = sub_10004CB20();
          v70 = v69;
          (*v91)(v66, v67);
          v71 = objc_allocWithZone(UIImage);
          sub_100003720(v68, v70);
          v72 = sub_10004D1C0().super.isa;
          v73 = [v71 initWithData:v72];

          sub_1000156DC(v68, v70);
          if (v73)
          {
            [v73 size];
            v75 = v74;
            [v73 size];
            v77 = *(v2 + *(v102 + 56));
            v78 = v77;
            v79 = v75;
            v80 = v78 / v79;
            v81 = *(v2 + *(v102 + 52));
            v82 = v76;
            if ((v81 / v82) < v80)
            {
              v80 = v81 / v82;
            }

            v83 = v80;
            v84 = v75 * v80;
            v85 = v76 * v83;
            [v73 drawInRect:{(v77 - v84) * 0.5, v30, v84, v76 * v83}];

            sub_1000156DC(v68, v70);
            sub_100007B00(v116);
            sub_10001D938(v105, type metadata accessor for ResponseImageEntity);
            v30 = v30 + v28 + v85;
            v10 = v98;
            v11 = v103;
            goto LABEL_5;
          }

          sub_1000156DC(v68, v70);
          v10 = v98;
          v11 = v103;
        }

        v49 = v96;
        sub_10004DC40();
        v50 = sub_10004DC70();
        v51 = sub_10004DEA0();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "No image present in the entity response while converting to PDF.", v52, 2u);
          v11 = v103;
        }

        (*v106)(v49, v107);
        sub_100007B00(v116);
        v34 = type metadata accessor for ResponseImageEntity;
        v35 = &v117;
      }

      sub_10001D938(*(v35 - 32), v34);
LABEL_5:
      v31 = v108;
LABEL_6:
      v32 = v112;
      v33 = v111;
      v29 += 40;
      if (!--v27)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_36:

  return result;
}

uint64_t sub_10001D938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001D998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001DA00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001DA18(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10001DAB0()
{
  v0 = sub_10004D120();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004D270();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004DCF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004D130();
  sub_1000037AC(v6, static PrewarmGenerativeAssistantExtensionIntent.title);
  sub_100003774(v6, static PrewarmGenerativeAssistantExtensionIntent.title);
  sub_10004DCE0();
  sub_10004D260();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004D140();
}

uint64_t PrewarmGenerativeAssistantExtensionIntent.title.unsafeMutableAddressor()
{
  if (qword_100061018 != -1)
  {
    swift_once();
  }

  v0 = sub_10004D130();

  return sub_100003774(v0, static PrewarmGenerativeAssistantExtensionIntent.title);
}

uint64_t static PrewarmGenerativeAssistantExtensionIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100061018 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D130();
  v3 = sub_100003774(v2, static PrewarmGenerativeAssistantExtensionIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PrewarmGenerativeAssistantExtensionIntent.perform()(uint64_t a1)
{
  v1[2] = a1;
  sub_1000026D8(&unk_100061550, &unk_1000501C0);
  v1[3] = swift_task_alloc();
  v2 = sub_10004DC80();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10001DE94, 0, 0);
}

uint64_t sub_10001DE94()
{
  v13 = v0;
  sub_10004D700();
  sub_10004D6F0();
  sub_10004DAD0();
  sub_10004D6D0();

  sub_10004DC60();
  v1 = sub_10004DC70();
  v2 = sub_10004DE90();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10001E340(0xD000000000000029, 0x80000001000501B0, &v12);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s prewarming GenerativeAssistantExtension", v7, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v4, v6);
  v8 = *(v0 + 24);
  *(v0 + 56) = 1;
  sub_10001CA24();
  sub_10004CC00();
  sub_10004D6F0();
  sub_10004DAD0();
  v9 = sub_10004DC00();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10004D6C0();

  sub_10001E128(v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10001E128(uint64_t a1)
{
  v2 = sub_1000026D8(&unk_100061550, &unk_1000501C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001E19C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002414;

  return PrewarmGenerativeAssistantExtensionIntent.perform()(a1);
}

uint64_t sub_10001E234(uint64_t a1)
{
  v2 = sub_10001EA68();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10001E270(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_10001E2E4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10001E340(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_10001E340(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001E40C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_10001EB34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007B00(v11);
  return v7;
}

unint64_t sub_10001E40C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001E518(a5, a6);
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
    result = sub_10004DF40();
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

char *sub_10001E518(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001E564(a1, a2);
  sub_10001E694(&off_10005DC78);
  return v3;
}

char *sub_10001E564(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001E780(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10004DF40();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10004DDD0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001E780(v10, 0);
        result = sub_10004DF20();
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

void sub_10001E694(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_10001E7F4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_10001E780(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000026D8(&qword_100061A68, &qword_100050318);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001E7F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026D8(&qword_100061A68, &qword_100050318);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

_BYTE **sub_10001E8E8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10001E8F8(uint64_t (*a1)(void))
{
  v1 = a1();

  return _typeName(_:qualified:)(v1, 0);
}

unint64_t sub_10001E938()
{
  result = qword_100061A40;
  if (!qword_100061A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061A40);
  }

  return result;
}

unint64_t sub_10001E990()
{
  result = qword_100061A48;
  if (!qword_100061A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061A48);
  }

  return result;
}

unint64_t sub_10001EA68()
{
  result = qword_100061A50;
  if (!qword_100061A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061A50);
  }

  return result;
}

unint64_t sub_10001EAD0()
{
  result = qword_100061A58;
  if (!qword_100061A58)
  {
    sub_100002AEC(&qword_100061A60, &qword_100050310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061A58);
  }

  return result;
}

uint64_t sub_10001EB34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001EB94(uint64_t a1)
{
  v16 = sub_1000026D8(&qword_100061AC8, &qword_100050510);
  v19 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = v13 - v2;
  v4 = sub_1000026D8(&qword_100061AD0, &qword_100050518);
  __chkstk_darwin(v4);
  sub_100007E50();
  sub_10004CDD0();
  v20._countAndFlagsBits = 543912769;
  v20._object = 0xE400000000000000;
  sub_10004CDC0(v20);
  swift_getKeyPath();
  sub_1000215FC();
  v18 = a1;
  sub_10004CD20();

  sub_10004CDB0();

  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  sub_10004CDC0(v21);
  swift_getKeyPath();
  v13[1] = sub_10001C418();
  sub_10004CD20();

  sub_10004CDB0();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_10004CDC0(v22);
  sub_10004CDE0();
  v17 = sub_10004CD40();
  v5 = *(v19 + 8);
  v19 += 8;
  v15 = v5;
  v6 = v16;
  v5(v3, v16);
  sub_10004CDD0();
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_10004CDC0(v23);
  swift_getKeyPath();
  sub_10004CD20();

  sub_10004CDB0();

  v24._countAndFlagsBits = 32;
  v24._object = 0xE100000000000000;
  sub_10004CDC0(v24);
  swift_getKeyPath();
  sub_10004CD20();

  sub_10004CDB0();

  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10004CDC0(v25);
  sub_10004CDE0();
  v14 = sub_10004CD40();
  v7 = v15;
  v15(v3, v6);
  sub_10004CDD0();
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10004CDC0(v26);
  swift_getKeyPath();
  sub_10004CD20();

  sub_10004CDB0();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_10004CDC0(v27);
  sub_10004CDE0();
  v8 = sub_10004CD40();
  v7(v3, v6);
  sub_1000026D8(&qword_100061AD8, &unk_100050520);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100050320;
  v10 = v14;
  *(v9 + 32) = v17;
  *(v9 + 40) = v10;
  *(v9 + 48) = v8;
  v11 = sub_10004CD30();

  return v11;
}

uint64_t sub_10001F034()
{
  v0 = sub_10004CDA0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001C418();
  sub_10004CD20();

  sub_100007E50();
  sub_10004CD90();
  v4 = sub_10004CD80();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1000215FC();
  sub_10004CD20();

  sub_10004CD90();
  v6 = sub_10004CD80();
  v5(v3, v0);
  sub_1000026D8(&qword_100061A88, &qword_100050430);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10004EFA0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_10004CD70();

  return v8;
}

uint64_t sub_10001F224()
{
  v23 = sub_10004CD60();
  v22 = sub_10004CD60();
  v21 = sub_10004CD60();
  v20 = sub_10004CD60();
  v19 = sub_10004CD60();
  v18 = sub_10004CD60();
  v17 = sub_10004CD60();
  v16 = sub_10004CD60();
  v15 = sub_10004CD60();
  v14 = sub_10004CD60();
  v13 = sub_10004CD60();
  v12 = sub_10004CD60();
  v0 = sub_10004CD60();
  v1 = sub_10004CD60();
  v2 = sub_10004CD60();
  v3 = sub_10004CD60();
  v4 = sub_10004CD60();
  v5 = sub_10004CD60();
  v6 = sub_10004CD60();
  v7 = sub_10004CD60();
  v8 = sub_10004CD60();
  sub_1000026D8(&qword_100061A90, &qword_100050438);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100050330;
  *(v9 + 32) = v23;
  *(v9 + 40) = v22;
  *(v9 + 48) = v21;
  *(v9 + 56) = v20;
  *(v9 + 64) = v19;
  *(v9 + 72) = v18;
  *(v9 + 80) = v17;
  *(v9 + 88) = v16;
  *(v9 + 96) = v15;
  *(v9 + 104) = v14;
  *(v9 + 112) = v13;
  *(v9 + 120) = v12;
  *(v9 + 128) = v0;
  *(v9 + 136) = v1;
  *(v9 + 144) = v2;
  *(v9 + 152) = v3;
  *(v9 + 160) = v4;
  *(v9 + 168) = v5;
  *(v9 + 176) = v6;
  *(v9 + 184) = v7;
  *(v9 + 192) = v8;
  v10 = sub_10004CD50();

  return v10;
}

uint64_t sub_10001F554(uint64_t a1)
{
  v16 = sub_1000026D8(&qword_100061AB0, &qword_1000504A8);
  v19 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = v13 - v2;
  v4 = sub_1000026D8(&qword_100061AB8, &qword_1000504B0);
  __chkstk_darwin(v4);
  sub_100021468();
  sub_10004CDD0();
  v20._countAndFlagsBits = 543912769;
  v20._object = 0xE400000000000000;
  sub_10004CDC0(v20);
  swift_getKeyPath();
  sub_1000215FC();
  v18 = a1;
  sub_10004CD20();

  sub_10004CDB0();

  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  sub_10004CDC0(v21);
  swift_getKeyPath();
  v13[1] = sub_10001C418();
  sub_10004CD20();

  sub_10004CDB0();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_10004CDC0(v22);
  sub_10004CDE0();
  v17 = sub_10004CD40();
  v5 = *(v19 + 8);
  v19 += 8;
  v15 = v5;
  v6 = v16;
  v5(v3, v16);
  sub_10004CDD0();
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_10004CDC0(v23);
  swift_getKeyPath();
  sub_10004CD20();

  sub_10004CDB0();

  v24._countAndFlagsBits = 32;
  v24._object = 0xE100000000000000;
  sub_10004CDC0(v24);
  swift_getKeyPath();
  sub_10004CD20();

  sub_10004CDB0();

  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10004CDC0(v25);
  sub_10004CDE0();
  v14 = sub_10004CD40();
  v7 = v15;
  v15(v3, v6);
  sub_10004CDD0();
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10004CDC0(v26);
  swift_getKeyPath();
  sub_10004CD20();

  sub_10004CDB0();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_10004CDC0(v27);
  sub_10004CDE0();
  v8 = sub_10004CD40();
  v7(v3, v6);
  sub_1000026D8(&qword_100061AC0, &qword_1000504B8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100050320;
  v10 = v14;
  *(v9 + 32) = v17;
  *(v9 + 40) = v10;
  *(v9 + 48) = v8;
  v11 = sub_10004CD30();

  return v11;
}

uint64_t sub_10001F9F4()
{
  v0 = sub_10004CDA0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001C418();
  sub_10004CD20();

  sub_100021468();
  sub_10004CD90();
  v4 = sub_10004CD80();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1000215FC();
  sub_10004CD20();

  sub_10004CD90();
  v6 = sub_10004CD80();
  v5(v3, v0);
  sub_1000026D8(&qword_100061A88, &qword_100050430);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10004EFA0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_10004CD70();

  return v8;
}

uint64_t sub_10001FBE4()
{
  v106 = sub_10004CD60();
  v105 = sub_10004CD60();
  v104 = sub_10004CD60();
  v103 = sub_10004CD60();
  v102 = sub_10004CD60();
  v101 = sub_10004CD60();
  v100 = sub_10004CD60();
  v99 = sub_10004CD60();
  v98 = sub_10004CD60();
  v97 = sub_10004CD60();
  v96 = sub_10004CD60();
  v95 = sub_10004CD60();
  v94 = sub_10004CD60();
  v93 = sub_10004CD60();
  v92 = sub_10004CD60();
  v91 = sub_10004CD60();
  v90 = sub_10004CD60();
  v89 = sub_10004CD60();
  v88 = sub_10004CD60();
  v87 = sub_10004CD60();
  v86 = sub_10004CD60();
  v85 = sub_10004CD60();
  v84 = sub_10004CD60();
  v83 = sub_10004CD60();
  v82 = sub_10004CD60();
  v80 = sub_10004CD60();
  v79 = sub_10004CD60();
  v78 = sub_10004CD60();
  v77 = sub_10004CD60();
  v76 = sub_10004CD60();
  v75 = sub_10004CD60();
  v74 = sub_10004CD60();
  v73 = sub_10004CD60();
  v72 = sub_10004CD60();
  v71 = sub_10004CD60();
  v70 = sub_10004CD60();
  v69 = sub_10004CD60();
  v68 = sub_10004CD60();
  v67 = sub_10004CD60();
  v66 = sub_10004CD60();
  v65 = sub_10004CD60();
  v64 = sub_10004CD60();
  v63 = sub_10004CD60();
  v62 = sub_10004CD60();
  v61 = sub_10004CD60();
  v60 = sub_10004CD60();
  v59 = sub_10004CD60();
  v58 = sub_10004CD60();
  v57 = sub_10004CD60();
  v56 = sub_10004CD60();
  v55 = sub_10004CD60();
  v54 = sub_10004CD60();
  v53 = sub_10004CD60();
  v52 = sub_10004CD60();
  v51 = sub_10004CD60();
  v50 = sub_10004CD60();
  v49 = sub_10004CD60();
  v48 = sub_10004CD60();
  v47 = sub_10004CD60();
  v46 = sub_10004CD60();
  v45 = sub_10004CD60();
  v44 = sub_10004CD60();
  v43 = sub_10004CD60();
  v42 = sub_10004CD60();
  v41 = sub_10004CD60();
  v40 = sub_10004CD60();
  v38 = sub_10004CD60();
  v36 = sub_10004CD60();
  v33 = sub_10004CD60();
  v31 = sub_10004CD60();
  v29 = sub_10004CD60();
  v27 = sub_10004CD60();
  v25 = sub_10004CD60();
  v23 = sub_10004CD60();
  v21 = sub_10004CD60();
  v39 = sub_10004CD60();
  v37 = sub_10004CD60();
  v35 = sub_10004CD60();
  v34 = sub_10004CD60();
  v32 = sub_10004CD60();
  v30 = sub_10004CD60();
  v28 = sub_10004CD60();
  v26 = sub_10004CD60();
  v24 = sub_10004CD60();
  v22 = sub_10004CD60();
  v20 = sub_10004CD60();
  v19 = sub_10004CD60();
  v81 = sub_10004CD60();
  v18 = sub_10004CD60();
  v17 = sub_10004CD60();
  v16 = sub_10004CD60();
  v15 = sub_10004CD60();
  v14 = sub_10004CD60();
  v13 = sub_10004CD60();
  v12 = sub_10004CD60();
  v11 = sub_10004CD60();
  v0 = sub_10004CD60();
  v1 = sub_10004CD60();
  v2 = sub_10004CD60();
  v3 = sub_10004CD60();
  v4 = sub_10004CD60();
  v5 = sub_10004CD60();
  v6 = sub_10004CD60();
  v7 = sub_10004CD60();
  sub_1000026D8(&qword_100061A90, &qword_100050438);
  v8 = swift_allocObject();
  *(v8 + 32) = v106;
  *(v8 + 40) = v105;
  *(v8 + 48) = v104;
  *(v8 + 56) = v103;
  *(v8 + 64) = v102;
  *(v8 + 72) = v101;
  *(v8 + 80) = v100;
  *(v8 + 88) = v99;
  *(v8 + 96) = v98;
  *(v8 + 104) = v97;
  *(v8 + 112) = v96;
  *(v8 + 120) = v95;
  *(v8 + 128) = v94;
  *(v8 + 136) = v93;
  *(v8 + 144) = v92;
  *(v8 + 152) = v91;
  *(v8 + 160) = v90;
  *(v8 + 168) = v89;
  *(v8 + 176) = v88;
  *(v8 + 184) = v87;
  *(v8 + 192) = v86;
  *(v8 + 200) = v85;
  *(v8 + 208) = v84;
  *(v8 + 216) = v83;
  *(v8 + 224) = v82;
  *(v8 + 232) = v80;
  *(v8 + 240) = v79;
  *(v8 + 248) = v78;
  *(v8 + 256) = v77;
  *(v8 + 264) = v76;
  *(v8 + 272) = v75;
  *(v8 + 280) = v74;
  *(v8 + 288) = v73;
  *(v8 + 296) = v72;
  *(v8 + 304) = v71;
  *(v8 + 312) = v70;
  *(v8 + 320) = v69;
  *(v8 + 328) = v68;
  *(v8 + 336) = v67;
  *(v8 + 344) = v66;
  *(v8 + 352) = v65;
  *(v8 + 360) = v64;
  *(v8 + 368) = v63;
  *(v8 + 376) = v62;
  *(v8 + 384) = v61;
  *(v8 + 392) = v60;
  *(v8 + 400) = v59;
  *(v8 + 408) = v58;
  *(v8 + 416) = v57;
  *(v8 + 424) = v56;
  *(v8 + 432) = v55;
  *(v8 + 440) = v54;
  *(v8 + 448) = v53;
  *(v8 + 456) = v52;
  *(v8 + 464) = v51;
  *(v8 + 472) = v50;
  *(v8 + 480) = v49;
  *(v8 + 488) = v48;
  *(v8 + 496) = v47;
  *(v8 + 504) = v46;
  *(v8 + 512) = v45;
  *(v8 + 520) = v44;
  *(v8 + 528) = v43;
  *(v8 + 536) = v42;
  *(v8 + 544) = v41;
  *(v8 + 552) = v40;
  *(v8 + 560) = v38;
  *(v8 + 568) = v36;
  *(v8 + 576) = v33;
  *(v8 + 584) = v31;
  *(v8 + 592) = v29;
  *(v8 + 600) = v27;
  *(v8 + 608) = v25;
  *(v8 + 616) = v23;
  *(v8 + 624) = v21;
  *(v8 + 16) = xmmword_100050340;
  *(v8 + 632) = v39;
  *(v8 + 640) = v37;
  *(v8 + 648) = v35;
  *(v8 + 656) = v34;
  *(v8 + 664) = v32;
  *(v8 + 672) = v30;
  *(v8 + 680) = v28;
  *(v8 + 688) = v26;
  *(v8 + 696) = v24;
  *(v8 + 704) = v22;
  *(v8 + 712) = v20;
  *(v8 + 720) = v19;
  *(v8 + 728) = v81;
  *(v8 + 736) = v18;
  *(v8 + 744) = v17;
  *(v8 + 752) = v16;
  *(v8 + 760) = v15;
  *(v8 + 768) = v14;
  *(v8 + 776) = v13;
  *(v8 + 784) = v12;
  *(v8 + 792) = v11;
  *(v8 + 800) = v0;
  *(v8 + 808) = v1;
  *(v8 + 816) = v2;
  *(v8 + 824) = v3;
  *(v8 + 832) = v4;
  *(v8 + 840) = v5;
  *(v8 + 848) = v6;
  *(v8 + 856) = v7;
  v9 = sub_10004CD50();

  return v9;
}

uint64_t sub_100020A70()
{
  v13 = sub_1000026D8(&qword_100061A98, &qword_100050440);
  v0 = *(v13 - 8);
  __chkstk_darwin(v13);
  v2 = v11 - v1;
  v3 = sub_1000026D8(&qword_100061AA0, &qword_100050448);
  __chkstk_darwin(v3);
  sub_1000214BC();
  sub_10004CDD0();
  v14._countAndFlagsBits = 543912769;
  v14._object = 0xE400000000000000;
  sub_10004CDC0(v14);
  swift_getKeyPath();
  v11[3] = sub_1000215FC();
  sub_10004CD20();

  sub_10004CDB0();

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  sub_10004CDC0(v15);
  swift_getKeyPath();
  v11[2] = sub_10001C418();
  sub_10004CD20();

  sub_10004CDB0();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_10004CDC0(v16);
  sub_10004CDE0();
  v12 = sub_10004CD40();
  v4 = v0 + 8;
  v5 = *(v0 + 8);
  v11[1] = v4;
  v6 = v13;
  v5(v2, v13);
  sub_10004CDD0();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_10004CDC0(v17);
  swift_getKeyPath();
  sub_10004CD20();

  sub_10004CDB0();

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  sub_10004CDC0(v18);
  swift_getKeyPath();
  sub_10004CD20();

  sub_10004CDB0();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_10004CDC0(v19);
  sub_10004CDE0();
  v7 = sub_10004CD40();
  v5(v2, v6);
  sub_1000026D8(&qword_100061AA8, &qword_100050450);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10004EFA0;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_10004CD30();

  return v9;
}

uint64_t sub_100020E3C()
{
  v0 = sub_10004CDA0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001C418();
  sub_10004CD20();

  sub_1000214BC();
  sub_10004CD90();
  v4 = sub_10004CD80();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1000215FC();
  sub_10004CD20();

  sub_10004CD90();
  v6 = sub_10004CD80();
  v5(v3, v0);
  sub_1000026D8(&qword_100061A88, &qword_100050430);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10004EFA0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_10004CD70();

  return v8;
}

uint64_t sub_10002102C()
{
  v0 = sub_10004CD60();
  v1 = sub_10004CD60();
  v2 = sub_10004CD60();
  sub_1000026D8(&qword_100061A90, &qword_100050438);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100050320;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_10004CD50();

  return v4;
}

uint64_t sub_100021100()
{
  v0 = sub_10004CD60();
  sub_1000026D8(&qword_100061A90, &qword_100050438);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10004F380;
  *(v1 + 32) = v0;
  v2 = sub_10004CD50();

  return v2;
}

uint64_t sub_10002119C()
{
  if (qword_100061020 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100021208()
{
  v0 = sub_10004CE10();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000839C(v12);
  sub_100007E50();
  sub_10004CE20();
  v4 = sub_10004CE00();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_100033034(v12);
  sub_100021468();
  sub_10004CE20();
  v6 = sub_10004CE00();
  v5(v3, v0);
  sub_1000218B8(v12);
  sub_1000214BC();
  sub_10004CE20();
  v7 = sub_10004CE00();
  v5(v3, v0);
  sub_1000026D8(&qword_100061A70, &qword_1000503D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100050320;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_10004CDF0();

  return v9;
}

unint64_t sub_100021468()
{
  result = qword_100061D50;
  if (!qword_100061D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D50);
  }

  return result;
}

unint64_t sub_1000214BC()
{
  result = qword_100061AE0;
  if (!qword_100061AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061AE0);
  }

  return result;
}

void *sub_100021510@<X0>(void *a1@<X8>)
{
  result = sub_10004CCC0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_100021588@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004CCC0();
  *a1 = v3;
  return result;
}

unint64_t sub_1000215FC()
{
  result = qword_100061A78;
  if (!qword_100061A78)
  {
    sub_100002AEC(&qword_100061A80, &qword_100050428);
    sub_10000499C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061A78);
  }

  return result;
}

void *sub_100021680@<X0>(void *a1@<X8>)
{
  result = sub_10004CCC0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_1000216F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004CCC0();
  *a1 = v3;
  return result;
}

void *sub_10002176C@<X0>(void *a1@<X8>)
{
  result = sub_10004CCC0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_1000217E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004CCC0();
  *a1 = v3;
  return result;
}

unint64_t sub_100021864()
{
  result = qword_100061AE8;
  if (!qword_100061AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061AE8);
  }

  return result;
}

uint64_t sub_1000218B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000026D8(&unk_100061430, &unk_10004F5E0);
  __chkstk_darwin(v2 - 8);
  v54 = v48 - v3;
  v61 = sub_10004CFC0();
  v73 = *(v61 - 8);
  __chkstk_darwin(v61);
  v70 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000026D8(&unk_100061B20, &qword_100050D50);
  v6 = __chkstk_darwin(v5 - 8);
  v53 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v48 - v8;
  v9 = sub_1000026D8(&unk_100061440, &unk_10004F5F0);
  __chkstk_darwin(v9 - 8);
  v52 = v48 - v10;
  v11 = sub_1000026D8(&unk_100061B30, "zS");
  __chkstk_darwin(v11 - 8);
  v13 = v48 - v12;
  v58 = sub_10004D120();
  v14 = *(v58 - 8);
  __chkstk_darwin(v58);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004D270();
  __chkstk_darwin(v17 - 8);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004DCF0();
  __chkstk_darwin(v20 - 8);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10004D130();
  v64 = v23;
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[3] = sub_10004D500();
  a1[4] = &protocol witness table for GenerativeAssistantFeatureFlagManager;
  sub_100014CF4(a1);
  sub_10004D4F0();
  a1[8] = sub_10004D520();
  a1[9] = &protocol witness table for GenerativeAssistantRestrictionManager;
  sub_100014CF4(a1 + 5);
  sub_10004D510();
  v72 = a1;
  a1[10] = &unk_100050760;
  a1[11] = 0;
  v51 = sub_1000026D8(&unk_100061450, &qword_10004F608);
  sub_10004DCE0();
  sub_10004D260();
  v71 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v27 = *(v14 + 104);
  v68 = v14 + 104;
  v59 = v27;
  v62 = v16;
  v27(v16);
  sub_10004D140();
  v28 = *(v24 + 56);
  v65 = v24 + 56;
  v69 = v28;
  v29 = v13;
  v28(v13, 1, 1, v23);
  LOBYTE(v74) = 2;
  v30 = sub_10004DE10();
  (*(*(v30 - 8) + 56))(v52, 1, 1, v30);
  v31 = sub_10004CBB0();
  v32 = *(v31 - 8);
  v57 = *(v32 + 56);
  v66 = v32 + 56;
  v33 = v60;
  v57(v60, 1, 1, v31);
  v63 = enum case for InputConnectionBehavior.default(_:);
  v34 = *(v73 + 104);
  v73 += 104;
  v67 = v34;
  v35 = v61;
  v34(v70);
  v48[1] = v26;
  v36 = v33;
  v72[12] = sub_10004CD10();
  v52 = sub_1000026D8(&unk_100061B40, &qword_10004F610);
  v55 = v22;
  sub_10004DCE0();
  sub_10004D260();
  v37 = v58;
  v38 = v59;
  v59(v62, v71, v58);
  sub_10004D140();
  v69(v29, 1, 1, v64);
  LOBYTE(v74) = 2;
  v56 = v31;
  v39 = v57;
  v57(v36, 1, 1, v31);
  v39(v53, 1, 1, v31);
  v67(v70, v63, v35);
  sub_100004A98();
  v72[13] = sub_10004CCF0();
  v51 = sub_1000026D8(&qword_100061B50, &qword_10004F618);
  sub_10004DCE0();
  v50 = v19;
  sub_10004D260();
  v38(v62, v71, v37);
  sub_10004D140();
  v49 = v29;
  v69(v29, 1, 1, v64);
  v40 = sub_10004DCD0();
  v74 = 0;
  v75 = 0;
  v41 = *(v40 - 8);
  v52 = *(v41 + 56);
  v53 = (v41 + 56);
  v42 = v54;
  (v52)(v54, 1, 1, v40);
  v43 = v60;
  v44 = v57;
  v57(v60, 1, 1, v56);
  v45 = v70;
  v46 = v61;
  v67(v70, v63, v61);
  v72[14] = sub_10004CD00();
  v51 = sub_1000026D8(&qword_100061470, &qword_10004F620);
  sub_10004DCE0();
  sub_10004D260();
  v59(v62, v71, v58);
  sub_10004D140();
  v69(v49, 1, 1, v64);
  v74 = 0;
  v75 = 0;
  (v52)(v42, 1, 1, v40);
  v44(v43, 1, 1, v56);
  v67(v45, v63, v46);
  result = sub_10004CD00();
  v72[15] = result;
  return result;
}

uint64_t sub_1000223DC()
{
  v0[5] = sub_10004D500();
  v0[6] = &protocol witness table for GenerativeAssistantFeatureFlagManager;
  sub_100014CF4(v0 + 2);
  sub_10004D4F0();
  sub_10004DE50();
  v0[8] = sub_10004DE40();
  v2 = sub_10004DE20();

  return _swift_task_switch(sub_100022494, v2, v1);
}

uint64_t sub_100022494()
{

  sub_10004DA00();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022504()
{
  v0 = sub_10004D130();
  sub_1000037AC(v0, qword_1000624D8);
  sub_100003774(v0, qword_1000624D8);
  return sub_10004D110();
}

uint64_t sub_100022568(uint64_t a1)
{
  v2[176] = v1;
  v2[175] = a1;
  v3 = sub_10004CFB0();
  v2[177] = v3;
  v2[178] = *(v3 - 8);
  v2[179] = swift_task_alloc();
  v2[180] = swift_task_alloc();
  v4 = sub_10004D5D0();
  v2[181] = v4;
  v2[182] = *(v4 - 8);
  v2[183] = swift_task_alloc();
  v5 = sub_10004D380();
  v2[184] = v5;
  v2[185] = *(v5 - 8);
  v2[186] = swift_task_alloc();
  v6 = sub_10004CB90();
  v2[187] = v6;
  v2[188] = *(v6 - 8);
  v2[189] = swift_task_alloc();
  v7 = sub_10004CF50();
  v2[190] = v7;
  v2[191] = *(v7 - 8);
  v2[192] = swift_task_alloc();
  v8 = sub_10004CF40();
  v2[193] = v8;
  v2[194] = *(v8 - 8);
  v2[195] = swift_task_alloc();
  v9 = sub_10004D1B0();
  v2[196] = v9;
  v2[197] = *(v9 - 8);
  v2[198] = swift_task_alloc();
  v10 = sub_10004D6A0();
  v2[199] = v10;
  v2[200] = *(v10 - 8);
  v2[201] = swift_task_alloc();
  v11 = sub_10004D3F0();
  v2[202] = v11;
  v2[203] = *(v11 - 8);
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();
  v12 = sub_10004D3D0();
  v2[206] = v12;
  v2[207] = *(v12 - 8);
  v2[208] = swift_task_alloc();
  sub_10004CE60();
  v2[209] = swift_task_alloc();
  v13 = sub_10004D350();
  v2[210] = v13;
  v2[211] = *(v13 - 8);
  v2[212] = swift_task_alloc();
  v2[213] = swift_task_alloc();
  v2[214] = swift_task_alloc();
  v2[215] = swift_task_alloc();
  v14 = sub_10004D3A0();
  v2[216] = v14;
  v2[217] = *(v14 - 8);
  v2[218] = swift_task_alloc();
  sub_1000026D8(&qword_100061480, &qword_10004F2F0);
  v2[219] = swift_task_alloc();
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v2[222] = swift_task_alloc();
  sub_1000026D8(&qword_100061488, &unk_100050D70);
  v2[223] = swift_task_alloc();
  v2[224] = swift_task_alloc();
  v2[225] = swift_task_alloc();
  v2[226] = swift_task_alloc();
  v2[227] = swift_task_alloc();
  v2[228] = swift_task_alloc();
  v2[229] = swift_task_alloc();
  v2[230] = swift_task_alloc();
  v2[231] = swift_task_alloc();
  v15 = sub_10004D840();
  v2[232] = v15;
  v2[233] = *(v15 - 8);
  v2[234] = swift_task_alloc();
  v2[235] = swift_task_alloc();
  sub_1000026D8(&unk_100061490, &qword_10004F630);
  v2[236] = swift_task_alloc();
  v2[237] = swift_task_alloc();
  v16 = sub_10004D410();
  v2[238] = v16;
  v2[239] = *(v16 - 8);
  v2[240] = swift_task_alloc();
  v2[241] = swift_task_alloc();
  v17 = sub_10004D760();
  v2[242] = v17;
  v2[243] = *(v17 - 8);
  v2[244] = swift_task_alloc();
  v18 = sub_10004D870();
  v2[245] = v18;
  v2[246] = *(v18 - 8);
  v2[247] = swift_task_alloc();
  v19 = sub_10004D9F0();
  v2[248] = v19;
  v2[249] = *(v19 - 8);
  v2[250] = swift_task_alloc();
  v20 = sub_10004DA20();
  v2[251] = v20;
  v2[252] = *(v20 - 8);
  v2[253] = swift_task_alloc();
  sub_1000026D8(&unk_100061DA0, &qword_10004F638);
  v2[254] = swift_task_alloc();
  v21 = sub_10004CBB0();
  v2[255] = v21;
  v2[256] = *(v21 - 8);
  v2[257] = swift_task_alloc();
  v2[258] = swift_task_alloc();
  v2[259] = swift_task_alloc();
  v2[260] = sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  v2[261] = swift_task_alloc();
  v22 = sub_10004DA90();
  v2[262] = v22;
  v2[263] = *(v22 - 8);
  v2[264] = swift_task_alloc();
  v2[265] = swift_task_alloc();
  v2[266] = swift_task_alloc();
  v23 = sub_10004D570();
  v2[267] = v23;
  v2[268] = *(v23 - 8);
  v2[269] = swift_task_alloc();
  sub_1000026D8(&qword_1000614A8, &unk_100050D80);
  v2[270] = swift_task_alloc();
  v24 = type metadata accessor for GenerativeResponseEntity(0);
  v2[271] = v24;
  v2[272] = *(v24 - 8);
  v2[273] = swift_task_alloc();
  v2[274] = swift_task_alloc();
  v2[275] = swift_task_alloc();
  sub_1000026D8(&unk_1000614B0, &qword_10004F650);
  v2[276] = swift_task_alloc();
  sub_1000026D8(&unk_100061DB0, &qword_10004F658);
  v2[277] = swift_task_alloc();
  v25 = sub_10004D720();
  v2[278] = v25;
  v2[279] = *(v25 - 8);
  v2[280] = swift_task_alloc();
  v2[281] = swift_task_alloc();
  v2[282] = sub_1000026D8(&qword_1000614C0, &unk_10004F660);
  v2[283] = swift_task_alloc();
  v2[284] = swift_task_alloc();
  sub_10004D8F0();
  v2[285] = swift_task_alloc();
  sub_1000026D8(&qword_1000614C8, &unk_100050D90);
  v2[286] = swift_task_alloc();
  v26 = sub_10004D620();
  v2[287] = v26;
  v2[288] = *(v26 - 8);
  v2[289] = swift_task_alloc();
  v27 = sub_10004D540();
  v2[290] = v27;
  v2[291] = *(v27 - 8);
  v2[292] = swift_task_alloc();
  v2[293] = swift_task_alloc();
  sub_1000026D8(&qword_1000614D0, &unk_10004F670);
  v2[294] = swift_task_alloc();
  v2[295] = swift_task_alloc();
  v28 = sub_10004D640();
  v2[296] = v28;
  v2[297] = *(v28 - 8);
  v2[298] = swift_task_alloc();
  v29 = sub_10004DC80();
  v2[299] = v29;
  v2[300] = *(v29 - 8);
  v2[301] = swift_task_alloc();
  v2[302] = swift_task_alloc();
  v2[303] = swift_task_alloc();
  v2[304] = swift_task_alloc();
  v2[305] = swift_task_alloc();
  v2[306] = swift_task_alloc();
  v2[307] = swift_task_alloc();
  v2[308] = swift_task_alloc();
  v2[309] = swift_task_alloc();
  v2[310] = swift_task_alloc();
  v2[311] = swift_task_alloc();
  v2[312] = swift_task_alloc();
  v2[313] = swift_task_alloc();
  v30 = sub_10004CEF0();
  v2[314] = v30;
  v2[315] = *(v30 - 8);
  v2[316] = swift_task_alloc();
  v2[317] = swift_task_alloc();
  v2[318] = swift_task_alloc();
  v2[319] = swift_task_alloc();
  v2[320] = swift_task_alloc();
  v2[321] = swift_task_alloc();
  v2[322] = swift_task_alloc();
  v2[323] = swift_task_alloc();
  sub_1000026D8(&qword_1000614D8, &unk_100050DA0);
  v2[324] = swift_task_alloc();
  v2[325] = swift_task_alloc();
  v2[326] = swift_task_alloc();
  v2[327] = swift_task_alloc();
  v2[328] = swift_task_alloc();
  v2[329] = swift_task_alloc();
  v31 = sub_10004D210();
  v2[330] = v31;
  v2[331] = *(v31 - 8);
  v2[332] = swift_task_alloc();
  sub_10004DE50();
  v2[333] = sub_10004DE40();
  v33 = sub_10004DE20();
  v2[334] = v33;
  v2[335] = v32;

  return _swift_task_switch(sub_1000235F0, v33, v32);
}

uint64_t sub_1000235F0(uint64_t a1)
{
  v184 = v1;
  v2 = *(v1 + 2632);
  v3 = *(v1 + 2584);
  v4 = *(v1 + 2520);
  v5 = *(v1 + 2512);
  sub_10004D200();
  sub_10004D700();
  sub_10004D6F0();
  sub_10004DB00();
  sub_10004D6D0();

  *(v1 + 2688) = sub_1000214BC();
  sub_10004CA80();
  sub_10004CED0();
  v6 = *(v4 + 8);
  *(v1 + 2696) = v6;
  *(v1 + 2704) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v179 = v6;
  v6(v3, v5);
  v7 = sub_10004CEC0();
  v8 = *(v7 - 8);
  v176 = *(v8 + 48);
  v9 = v176(v2, 1, v7);
  v10 = *(v1 + 2632);
  v170 = v8;
  if (v9 == 1)
  {
    sub_100007BC0(v10, &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    sub_10004CE90();
    (*(v8 + 8))(v10, v7);
  }

  *(v1 + 2712) = sub_10004DBC0();
  sub_10004DBB0();
  sub_10004DB70();

  sub_10004DBB0();
  sub_10004DBA0();

  sub_10004DBB0();
  LOBYTE(v183[0]) = 0;
  sub_10004DB50();

  sub_10004DC60();
  v11 = sub_10004DC70();
  v12 = sub_10004DEA0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v1 + 2504);
  v15 = *(v1 + 2400);
  v16 = *(v1 + 2392);
  v174 = v7;
  if (v13)
  {
    v17 = swift_slowAlloc();
    v183[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10001E340(0xD00000000000001FLL, 0x8000000100050710, v183);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v183);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s creating transaction", v17, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(v15 + 8);
  v18(v14, v16);
  v172 = v18;
  *(v1 + 2720) = v18;
  v19 = *(v1 + 2384);
  v20 = *(v1 + 2376);
  v21 = *(v1 + 2368);
  v22 = *(v1 + 1408);
  *(v1 + 2728) = os_transaction_create();
  sub_10004D6F0();
  (*(v20 + 104))(v19, enum case for GenerativeUsecases.knowledge(_:), v21);
  sub_10004D630();
  (*(v20 + 8))(v19, v21);
  sub_10004D6B0();

  sub_10004DC60();
  sub_10002E288(v22, v1 + 16);
  v23 = sub_10004DC70();
  v24 = sub_10004DE90();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v1 + 2496);
  v27 = *(v1 + 2392);
  if (v25)
  {
    v28 = swift_slowAlloc();
    v183[0] = swift_slowAlloc();
    *v28 = 136315650;
    *(v28 + 4) = sub_10001E340(0xD00000000000001FLL, 0x8000000100050710, v183);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v183);
    *(v28 + 22) = 2080;
    v167 = v26;
    sub_100014E78((v1 + 16), *(v1 + 40));
    v29 = sub_10004D530();
    v31 = v30;
    sub_10002E2C0(v1 + 16);
    v32 = sub_10001E340(v29, v31, v183);

    *(v28 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s.%s feature flags: %s", v28, 0x20u);
    swift_arrayDestroy();

    v33 = v172;
    v172(v167, v27);
  }

  else
  {

    v33 = v18;
    v18(v26, v27);
    sub_10002E2C0(v1 + 16);
  }

  v34 = *(v1 + 2360);
  v35 = *(v1 + 2344);
  v36 = *(v1 + 2328);
  v37 = *(v1 + 2320);
  v38 = sub_10004D580();
  v165 = *(v38 - 8);
  v168 = v38;
  (*(v165 + 56))(v34, 1, 1);
  sub_10004DBB0();
  sub_10004DB60();

  v39 = *(v36 + 104);
  v39(v35, enum case for GenerativeAssistantUseCase.knowledgeFallback(_:), v37);
  sub_10004CCC0();
  v40 = *(v1 + 3160);
  if (v40 == 2 || (v40 & 1) == 0)
  {
    sub_10004DC50();
    v48 = sub_10004DC70();
    v49 = sub_10004DEA0();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v1 + 2480);
    v52 = *(v1 + 2392);
    if (v50)
    {
      v53 = swift_slowAlloc();
      v183[0] = swift_slowAlloc();
      *v53 = 136315394;
      *(v53 + 4) = sub_10001E340(0xD00000000000001FLL, 0x8000000100050710, v183);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v183);
      _os_log_impl(&_mh_execute_header, v48, v49, "%s.%s This is NOT an explicit knowledge request -- hence using .knowledgeFallback use case", v53, 0x16u);
      swift_arrayDestroy();
    }

    v33(v51, v52);
  }

  else
  {
    sub_10004DC50();
    v41 = sub_10004DC70();
    v42 = sub_10004DEA0();
    v43 = os_log_type_enabled(v41, v42);
    v162 = *(v1 + 2392);
    v164 = *(v1 + 2488);
    v44 = *(v1 + 2344);
    v45 = *(v1 + 2328);
    v46 = *(v1 + 2320);
    if (v43)
    {
      v160 = *(v1 + 2344);
      v47 = swift_slowAlloc();
      v183[0] = swift_slowAlloc();
      *v47 = 136315394;
      *(v47 + 4) = sub_10001E340(0xD00000000000001FLL, 0x8000000100050710, v183);
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v183);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s.%s This is an explicit knowledge request -- using .knowledge use case ", v47, 0x16u);
      swift_arrayDestroy();

      v172(v164, v162);
      (*(v45 + 8))(v160, v46);
    }

    else
    {

      v172(v164, v162);
      (*(v45 + 8))(v44, v46);
    }

    v39(*(v1 + 2344), enum case for GenerativeAssistantUseCase.knowledge(_:), *(v1 + 2320));
  }

  v54 = *(v1 + 2624);
  v55 = *(v1 + 2576);
  v56 = *(v1 + 2512);
  sub_100014E14(*(v1 + 1408), v1 + 1168);
  sub_10004CCC0();
  sub_10004CA80();
  sub_10004CED0();
  v179(v55, v56);
  v57 = v176(v54, 1, v174);
  v58 = *(v1 + 2624);
  v59 = *(v1 + 2288);
  if (v57 == 1)
  {
    sub_100007BC0(*(v1 + 2624), &qword_1000614D8, &unk_100050DA0);
    v60 = sub_10004CE70();
    (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
  }

  else
  {
    sub_10004CE80();
    (*(v170 + 8))(v58, v174);
  }

  v61 = *(v1 + 2568);
  v62 = *(v1 + 2560);
  v63 = *(v1 + 2512);
  v161 = *(v1 + 2344);
  v163 = *(v1 + 2616);
  v159 = *(v1 + 2336);
  v64 = *(v1 + 2328);
  v158 = *(v1 + 2320);
  v65 = *(v1 + 2288);
  v66 = *(v1 + 2272);
  sub_10004DED0();
  sub_100007BC0(v65, &qword_1000614C8, &unk_100050D90);
  sub_10004CA80();
  sub_10004CEE0();
  v179(v61, v63);
  sub_10004DEE0();
  sub_100007BC0(v66, &qword_1000614C0, &unk_10004F660);
  (*(v64 + 16))(v159, v161, v158);
  sub_10004CA80();
  sub_10004CED0();
  v179(v62, v63);
  v67 = v176(v163, 1, v174);
  v68 = *(v1 + 2616);
  if (v67 == 1)
  {
    sub_100007BC0(*(v1 + 2616), &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    sub_10004CEA0();
    (*(v170 + 8))(v68, v174);
  }

  v69 = *(v1 + 2608);
  v70 = *(v1 + 2552);
  v71 = *(v1 + 2512);
  sub_10004CA80();
  sub_10004CED0();
  v179(v70, v71);
  v72 = v176(v69, 1, v174);
  v73 = *(v1 + 2608);
  if (v72 == 1)
  {
    sub_100007BC0(*(v1 + 2608), &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    sub_10004CEB0();
    v75 = v74;
    (*(v170 + 8))(v73, v174);
    if (v75)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  v76 = *(v1 + 2360);
  v77 = *(v1 + 2352);
  v78 = *(v1 + 2216);
  sub_10004D250();
  v79 = sub_10004D270();
  (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
  sub_10001564C(v76, v77, &qword_1000614D0, &unk_10004F670);
  v80 = (*(v165 + 48))(v77, 1, v168);
  v81 = *(v1 + 2352);
  if (v80 == 1)
  {
    sub_100007BC0(*(v1 + 2352), &qword_1000614D0, &unk_10004F670);
    *(v1 + 1208) = 0u;
    *(v1 + 1224) = 0u;
    *(v1 + 1240) = 0;
  }

  else
  {
    *(v1 + 1232) = v168;
    *(v1 + 1240) = &protocol witness table for UserRequestPartnerInfo;
    v82 = sub_100014CF4((v1 + 1208));
    (*(v165 + 32))(v82, v81, v168);
  }

  v83 = *(v1 + 2208);
  v84 = *(v1 + 1408);
  v85 = sub_10004D5B0();
  (*(*(v85 - 8) + 56))(v83, 1, 1, v85);
  sub_10004D610();
  v86 = sub_10004D5F0();
  v88 = v87;
  v166 = v86;
  *(v1 + 2736) = v86;
  *(v1 + 2744) = v87;
  sub_10004DC50();
  sub_10002E288(v84, v1 + 144);
  v89 = sub_10004DC70();
  v90 = sub_10004DEA0();
  v91 = os_log_type_enabled(v89, v90);
  v92 = *(v1 + 2472);
  v93 = *(v1 + 2392);
  v169 = v88;
  if (v91)
  {
    v94 = swift_slowAlloc();
    v183[0] = swift_slowAlloc();
    *v94 = 136315650;
    *(v94 + 4) = sub_10001E340(0xD00000000000001FLL, 0x8000000100050710, v183);
    *(v94 + 12) = 2080;
    *(v94 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v183);
    *(v94 + 22) = 2080;
    sub_10004CCC0();
    v95 = *(v1 + 3162);
    v96 = 0x54504774616863;
    if (v95)
    {
      v96 = 0x726568746FLL;
    }

    v97 = 0xE700000000000000;
    if (v95)
    {
      v97 = 0xE500000000000000;
    }

    if (v95 == 2)
    {
      v98 = 0;
    }

    else
    {
      v98 = v96;
    }

    if (v95 == 2)
    {
      v99 = 0xE000000000000000;
    }

    else
    {
      v99 = v97;
    }

    sub_10002E2C0(v1 + 144);
    v100 = sub_10001E340(v98, v99, v183);
    v88 = v169;

    *(v94 + 24) = v100;
    _os_log_impl(&_mh_execute_header, v89, v90, "%s.%s partner requested: %s", v94, 0x20u);
    swift_arrayDestroy();

    v101 = v172;
    v172(v92, v93);
  }

  else
  {

    v101 = v172;
    v172(v92, v93);
    sub_10002E2C0(v1 + 144);
  }

  sub_10004DC50();

  v102 = sub_10004DC70();
  v103 = sub_10004DEA0();

  v104 = os_log_type_enabled(v102, v103);
  v105 = *(v1 + 2464);
  v106 = *(v1 + 2392);
  if (v104)
  {
    v107 = swift_slowAlloc();
    v183[0] = swift_slowAlloc();
    *v107 = 136315650;
    *(v107 + 4) = sub_10001E340(0xD00000000000001FLL, 0x8000000100050710, v183);
    *(v107 + 12) = 2080;
    *(v107 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v183);
    *(v107 + 22) = 2080;
    *(v107 + 24) = sub_10001E340(v166, v88, v183);
    _os_log_impl(&_mh_execute_header, v102, v103, "%s.%s partner to use: %s", v107, 0x20u);
    swift_arrayDestroy();
    v101 = v172;
  }

  v101(v105, v106);
  v108 = *(v1 + 1408);
  sub_10004DC60();
  sub_10002E288(v108, v1 + 272);
  v109 = sub_10004DC70();
  v110 = sub_10004DE90();
  if (!os_log_type_enabled(v109, v110))
  {
    v117 = *(v1 + 2456);
    v118 = *(v1 + 2392);

    sub_10002E2C0(v1 + 272);
    v119 = v117;
    v120 = v118;
    goto LABEL_54;
  }

  v111 = *(v1 + 2600);
  v112 = *(v1 + 2544);
  v113 = *(v1 + 2512);
  v114 = swift_slowAlloc();
  v183[0] = swift_slowAlloc();
  *v114 = 136315650;
  *(v114 + 4) = sub_10001E340(0xD00000000000001FLL, 0x8000000100050710, v183);
  *(v114 + 12) = 2080;
  *(v114 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v183);
  *(v114 + 22) = 2080;
  sub_10004CA80();
  sub_10004CED0();
  v179(v112, v113);
  v115 = v176(v111, 1, v174);
  v116 = *(v1 + 2600);
  if (v115 == 1)
  {
    sub_100007BC0(*(v1 + 2600), &qword_1000614D8, &unk_100050DA0);
LABEL_52:
    sub_10002E2C0(v1 + 272);

    v123 = 0xE700000000000000;
    v124 = 0x6E776F6E6B6E75;
    goto LABEL_53;
  }

  v121 = sub_10004CEB0();
  v123 = v122;
  (*(v170 + 8))(v116, v174);
  if (!v123)
  {
    goto LABEL_52;
  }

  sub_10002E2C0(v1 + 272);
  v124 = v121;
LABEL_53:
  v125 = *(v1 + 2456);
  v126 = *(v1 + 2392);
  v127 = sub_10001E340(v124, v123, v183);

  *(v114 + 24) = v127;
  _os_log_impl(&_mh_execute_header, v109, v110, "%s.%s Setting DialogEngineClient locale to %s", v114, 0x20u);
  swift_arrayDestroy();

  v119 = v125;
  v120 = v126;
  v101 = v172;
LABEL_54:
  v101(v119, v120);
  v128 = *(v1 + 2592);
  v129 = *(v1 + 2536);
  v130 = *(v1 + 2512);
  *(v1 + 2752) = sub_10004D8E0();
  sub_10004D8D0();
  sub_10004CA80();
  sub_10004CED0();
  v179(v129, v130);
  v131 = v176(v128, 1, v174);
  v132 = *(v1 + 2592);
  if (v131 == 1)
  {
    sub_100007BC0(*(v1 + 2592), &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    sub_10004CEB0();
    (*(v170 + 8))(v132, v174);
  }

  v133 = *(v1 + 2200);
  v134 = *(v1 + 1408);
  sub_10004D8C0();

  sub_1000157A0(v133);
  sub_100014E78(v134 + 5, v134[8]);
  if (sub_10004D4D0())
  {
    v135 = v134[8];
    v136 = v134[9];
    sub_100014E78(v134 + 5, v135);
    v137 = swift_task_alloc();
    *(v1 + 2760) = v137;
    *v137 = v1;
    v137[1] = sub_1000254BC;

    return dispatch thunk of GenerativeAssistantRestrictions.signOutIfRestricted()(v135, v136);
  }

  else
  {

    sub_10004DC50();
    v138 = sub_10004DC70();
    v139 = sub_10004DEA0();
    v140 = os_log_type_enabled(v138, v139);
    v141 = *(v1 + 2408);
    v142 = *(v1 + 2392);
    if (v140)
    {
      v143 = swift_slowAlloc();
      v183[0] = swift_slowAlloc();
      *v143 = 136315394;
      *(v143 + 4) = sub_10001E340(0xD00000000000001FLL, 0x8000000100050710, v183);
      *(v143 + 12) = 2080;
      *(v143 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v183);
      _os_log_impl(&_mh_execute_header, v138, v139, "%s.%s request is still downloading and unavailable", v143, 0x16u);
      swift_arrayDestroy();
    }

    v101(v141, v142);
    v181 = *(v1 + 2344);
    v182 = *(v1 + 2360);
    v178 = *(v1 + 2328);
    v180 = *(v1 + 2320);
    v144 = *(v1 + 2304);
    v173 = *(v1 + 2296);
    v175 = *(v1 + 2312);
    v177 = *(v1 + 2200);
    v145 = *(v1 + 2176);
    v146 = *(v1 + 2168);
    v147 = *(v1 + 2128);
    v148 = *(v1 + 2104);
    v149 = *(v1 + 2096);
    v150 = *(v1 + 2088);
    v151 = *(v1 + 2072);
    v152 = *(v1 + 2048);
    v171 = *(v1 + 2040);
    sub_100014EBC(v177, v150);
    (*(v145 + 56))(v150, 0, 1, v146);
    sub_10004D8A0();
    (*(v148 + 104))(v147, enum case for CatId.modelDownloadingErrorResponse(_:), v149);
    sub_10004D880();

    (*(v148 + 8))(v147, v149);
    sub_100014F20();
    sub_10004CBD0();
    (*(v152 + 8))(v151, v171);
    sub_100007BC0(v150, &qword_1000614A0, &unk_10004F640);
    (*(v144 + 8))(v175, v173);
    (*(v178 + 8))(v181, v180);
    sub_100007BC0(v182, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v177);
    v153 = *(v1 + 2656);
    v154 = *(v1 + 2648);
    v155 = *(v1 + 2640);
    sub_10002C27C(*(v1 + 2728));
    swift_unknownObjectRelease();
    (*(v154 + 8))(v153, v155);

    v156 = *(v1 + 8);

    return v156();
  }
}