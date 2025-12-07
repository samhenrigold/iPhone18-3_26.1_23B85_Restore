unint64_t sub_10085AC64()
{
  result = qword_100CDED60;
  if (!qword_100CDED60)
  {
    result = swift_getWitnessTable(asc_100A8E7CC, &type metadata for AutomationInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDED60);
  }

  return result;
}

unint64_t sub_10085ACB8()
{
  result = qword_100CDED68;
  if (!qword_100CDED68)
  {
    result = swift_getWitnessTable(asc_100A8E068, &type metadata for AutomationComponentInfo, v0, v1);
    atomic_store(result, &qword_100CDED68);
  }

  return result;
}

uint64_t sub_10085AD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_10085AD68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10085ADC0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_10085AE08()
{
  result = qword_100CDED88;
  if (!qword_100CDED88)
  {
    result = swift_getWitnessTable(aU_7, &type metadata for AutomationViewInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDED88);
  }

  return result;
}

uint64_t sub_10085AE5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_10085AEB8()
{
  result = qword_100CDEDA8;
  if (!qword_100CDEDA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDEDA0, &qword_100A8E100);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_10085ADC0(&qword_100CB1CF8, &type metadata accessor for WeatherMapOverlayKind, &protocol conformance descriptor for WeatherMapOverlayKind);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CDEDA8);
  }

  return result;
}

unint64_t sub_10085AF74()
{
  result = qword_100CDEDB0;
  if (!qword_100CDEDB0)
  {
    result = swift_getWitnessTable(aY_19, &type metadata for AutomationSearchInfo, v0, v1);
    atomic_store(result, &qword_100CDEDB0);
  }

  return result;
}

unint64_t sub_10085AFC8()
{
  result = qword_100CDEDC8;
  if (!qword_100CDEDC8)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CDEDC0, &qword_100A8E110);
    v4[0] = &protocol witness table for String;
    v4[1] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CDEDC8);
  }

  return result;
}

unint64_t sub_10085B044()
{
  result = qword_100CDEDD8;
  if (!qword_100CDEDD8)
  {
    result = swift_getWitnessTable(byte_100A8E72C, &type metadata for AutomationComponentInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEDD8);
  }

  return result;
}

unint64_t sub_10085B098()
{
  result = qword_100CDEDE0;
  if (!qword_100CDEDE0)
  {
    result = swift_getWitnessTable(aM_4, &type metadata for AutomationComponentInfo.AutomationInfoKind, v0, v1);
    atomic_store(result, &qword_100CDEDE0);
  }

  return result;
}

unint64_t sub_10085B0EC()
{
  result = qword_100CDEDF0;
  if (!qword_100CDEDF0)
  {
    result = swift_getWitnessTable(asc_100A8E6B4, &type metadata for AutomationCellInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEDF0);
  }

  return result;
}

unint64_t sub_10085B140()
{
  result = qword_100CDEDF8;
  if (!qword_100CDEDF8)
  {
    result = swift_getWitnessTable(byte_100A8E68C, &type metadata for AutomationCellInfo.AutomationInfoKind, v0, v1);
    atomic_store(result, &qword_100CDEDF8);
  }

  return result;
}

unint64_t sub_10085B194()
{
  result = qword_100CDEE10;
  if (!qword_100CDEE10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDEE08, &qword_100A8E130);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_10085B220();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CDEE10);
  }

  return result;
}

unint64_t sub_10085B220()
{
  result = qword_100CD3048;
  if (!qword_100CD3048)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10022E824(&qword_100CA6078, &unk_100A30870);
    v4[0] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CD3048);
  }

  return result;
}

unint64_t sub_10085B29C()
{
  result = qword_100CDEE20;
  if (!qword_100CDEE20)
  {
    result = swift_getWitnessTable(byte_100A8E63C, &type metadata for AutomationSearchInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomationCellInfo.AutomationInfoKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10085B40C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = sub_100020E50(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10085B4E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = sub_100020E50(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10085B5C0()
{
  result = qword_100CDEE28;
  if (!qword_100CDEE28)
  {
    result = swift_getWitnessTable(asc_100A8E1F4, &type metadata for AutomationInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE28);
  }

  return result;
}

unint64_t sub_10085B618()
{
  result = qword_100CDEE30;
  if (!qword_100CDEE30)
  {
    result = swift_getWitnessTable(aU_8, &type metadata for AutomationViewInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE30);
  }

  return result;
}

unint64_t sub_10085B670()
{
  result = qword_100CDEE38;
  if (!qword_100CDEE38)
  {
    result = swift_getWitnessTable(byte_100A8E364, &type metadata for AutomationComponentInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE38);
  }

  return result;
}

unint64_t sub_10085B6C8()
{
  result = qword_100CDEE40;
  if (!qword_100CDEE40)
  {
    result = swift_getWitnessTable(byte_100A8E404, &type metadata for AutomationComponentInfo.AutomationInfoKind, v0, v1);
    atomic_store(result, &qword_100CDEE40);
  }

  return result;
}

unint64_t sub_10085B720()
{
  result = qword_100CDEE48;
  if (!qword_100CDEE48)
  {
    result = swift_getWitnessTable(aE_10, &type metadata for AutomationCellInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE48);
  }

  return result;
}

unint64_t sub_10085B778()
{
  result = qword_100CDEE50;
  if (!qword_100CDEE50)
  {
    result = swift_getWitnessTable(byte_100A8E55C, &type metadata for AutomationCellInfo.AutomationInfoKind, v0, v1);
    atomic_store(result, &qword_100CDEE50);
  }

  return result;
}

unint64_t sub_10085B7D0()
{
  result = qword_100CDEE58;
  if (!qword_100CDEE58)
  {
    result = swift_getWitnessTable(byte_100A8E614, &type metadata for AutomationSearchInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE58);
  }

  return result;
}

unint64_t sub_10085B828()
{
  result = qword_100CDEE60;
  if (!qword_100CDEE60)
  {
    result = swift_getWitnessTable(asc_100A8E584, &type metadata for AutomationSearchInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE60);
  }

  return result;
}

unint64_t sub_10085B880()
{
  result = qword_100CDEE68;
  if (!qword_100CDEE68)
  {
    result = swift_getWitnessTable(asc_100A8E5AC, &type metadata for AutomationSearchInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE68);
  }

  return result;
}

unint64_t sub_10085B8D8()
{
  result = qword_100CDEE70;
  if (!qword_100CDEE70)
  {
    result = swift_getWitnessTable(byte_100A8E42C, &type metadata for AutomationCellInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE70);
  }

  return result;
}

unint64_t sub_10085B930()
{
  result = qword_100CDEE78;
  if (!qword_100CDEE78)
  {
    result = swift_getWitnessTable(asc_100A8E454, &type metadata for AutomationCellInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE78);
  }

  return result;
}

unint64_t sub_10085B988()
{
  result = qword_100CDEE80;
  if (!qword_100CDEE80)
  {
    result = swift_getWitnessTable(asc_100A8E2D4, &type metadata for AutomationComponentInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE80);
  }

  return result;
}

unint64_t sub_10085B9E0()
{
  result = qword_100CDEE88;
  if (!qword_100CDEE88)
  {
    result = swift_getWitnessTable(byte_100A8E2FC, &type metadata for AutomationComponentInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE88);
  }

  return result;
}

unint64_t sub_10085BA38()
{
  result = qword_100CDEE90;
  if (!qword_100CDEE90)
  {
    result = swift_getWitnessTable(byte_100A8E21C, &type metadata for AutomationViewInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE90);
  }

  return result;
}

unint64_t sub_10085BA90()
{
  result = qword_100CDEE98;
  if (!qword_100CDEE98)
  {
    result = swift_getWitnessTable(byte_100A8E244, &type metadata for AutomationViewInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEE98);
  }

  return result;
}

unint64_t sub_10085BAE8()
{
  result = qword_100CDEEA0;
  if (!qword_100CDEEA0)
  {
    result = swift_getWitnessTable(asc_100A8E164, &type metadata for AutomationInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEEA0);
  }

  return result;
}

unint64_t sub_10085BB40()
{
  result = qword_100CDEEA8;
  if (!qword_100CDEEA8)
  {
    result = swift_getWitnessTable(aE_11, &type metadata for AutomationInfo.Key, v0, v1);
    atomic_store(result, &qword_100CDEEA8);
  }

  return result;
}

unint64_t sub_10085BB94()
{
  result = qword_100CDEEB0;
  if (!qword_100CDEEB0)
  {
    result = swift_getWitnessTable(byte_100A8E38C, &type metadata for AutomationComponentInfo.AutomationInfoKind, v0, v1);
    atomic_store(result, &qword_100CDEEB0);
  }

  return result;
}

unint64_t sub_10085BBE8()
{
  result = qword_100CDEEB8;
  if (!qword_100CDEEB8)
  {
    result = swift_getWitnessTable(asc_100A8E4E4, &type metadata for AutomationCellInfo.AutomationInfoKind, v0, v1);
    atomic_store(result, &qword_100CDEEB8);
  }

  return result;
}

id sub_10085BC50@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LocalSearchCompleterManager();
  result = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  a1[4] = &protocol witness table for LocalSearchCompleterManager;
  *a1 = result;
  return result;
}

void *sub_10085BC9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDEF70, &qword_100A8E868);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDEF88, &qword_100A8E878);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6[3])
  {
    v5 = type metadata accessor for LocalSearchRequestManager();
    swift_allocObject();
    result = LocalSearchRequestManager.init(service:store:appConfigurationManager:queue:)(v9, v10, v7, v8, v6, 0);
    a2[3] = v5;
    a2[4] = &off_100C6CB98;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_10085BE0C(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96D8, &qword_100A74D90);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1938, &unk_100A9F510);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA730, &unk_100A4FE30);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    v4 = type metadata accessor for ListViewTipManager(0);
    swift_allocObject();
    sub_100230B74();
    a2[3] = v4;
    a2[4] = &off_100C46408;
    *a2 = v5;
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_10085BFB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    type metadata accessor for LocalSearchRequestService();
    v4 = swift_allocObject();
    result = sub_100013188(&v5, v4 + 16);
    *a2 = v4;
    a2[1] = &protocol witness table for LocalSearchRequestService;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10085C058(uint64_t a1)
{
  v3 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_1000037C4();
  sub_100003828();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v10 - v6, a1, v3, v5);
  sub_1008634D4();
  v11 = dispatch thunk of Sequence._copyToContiguousArray()();
  sub_10085C158(&v11);
  v8 = v11;
  if (v1)
  {
  }

  return v8;
}

void sub_10085C158(uint64_t *a1)
{
  v2 = type metadata accessor for DayWeather();
  sub_100003810(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309360();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  sub_100861F3C(v8);
  *a1 = v5;
}

uint64_t sub_10085C1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v3 = sub_10022C350(&qword_100CA5898, &qword_100A2FCF8);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v63 = &v59 - v5;
  v6 = sub_1000038CC();
  v62 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v60 = v9 - v8;
  sub_1000038CC();
  v10 = type metadata accessor for Location();
  sub_1000037C4();
  v65 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  type metadata accessor for Date();
  sub_1000037C4();
  v66 = v24;
  v67 = v23;
  __chkstk_darwin(v23);
  sub_1000037D8();
  v27 = (v26 - v25);
  v28 = type metadata accessor for SunriseSunsetDetailInput(0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  v33 = type metadata accessor for SunriseSunsetDetailInput.Input(0);
  sub_1000037E8();
  __chkstk_darwin(v34);
  sub_1000037D8();
  v37 = v36 - v35;
  sub_100861DD8(v68, v32);
  if (sub_100024D10(v32, 1, v33) == 1)
  {
    sub_100861E3C(v32, type metadata accessor for SunriseSunsetDetailInput);
    v38 = type metadata accessor for SunriseSunsetDetailViewModel(0);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return sub_10001B350(a2, 0, 1, v38);
  }

  v61 = a2;
  v39 = sub_10000CA1C();
  sub_100861EDC(v39, v40, v41);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v18 + 8))(v22, v16);
  (*(v65 + 16))(v15, v37, v10);
  if (*(v37 + *(v33 + 28)) != 1)
  {
    v52 = sub_100017010();
    v53(v52);
    (*(v66 + 8))(v27, v67);
LABEL_11:
    sub_100023398();
    v38 = type metadata accessor for SunriseSunsetDetailViewModel(0);
    a2 = v61;
    goto LABEL_12;
  }

  v42 = v64;
  sub_1000161C0((v64 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_preprocessedDataProvider), *(v64 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_preprocessedDataProvider + 24));
  v43 = v63;
  sub_10000CA1C();
  sub_1002794EC();
  v44 = sub_100024D10(v43, 1, v62);
  v45 = v61;
  if (v44 == 1)
  {
    sub_1000180EC(v43, &qword_100CA5898, &qword_100A2FCF8);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000703C(v46, qword_100D90B68);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Preprocessed data isn't available", v49, 2u);
    }

    v50 = sub_100017010();
    v51(v50);
    (*(v66 + 8))(v27, v67);
    goto LABEL_11;
  }

  v55 = v43;
  v56 = v60;
  sub_100861EDC(v55, v60, type metadata accessor for SunriseSunsetDetailPreprocessedDataModel);
  sub_10085C79C(v15, v56, v27, v37 + *(v33 + 24), *(v42 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_isDemoPresetActive), v45);
  sub_100861E3C(v56, type metadata accessor for SunriseSunsetDetailPreprocessedDataModel);
  v57 = sub_100017010();
  v58(v57);
  (*(v66 + 8))(v27, v67);
  return sub_100023398();
}

uint64_t sub_10085C79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void (*a3)(void, void, void)@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t *a6@<X8>)
{
  LODWORD(v224) = a5;
  v218 = a4;
  v239 = a3;
  v220 = a2;
  v241 = a1;
  v232 = a6;
  v183 = type metadata accessor for OverviewTableViewModel();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v191 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for Location();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v219 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v203 = &v170 - v9;
  v231 = type metadata accessor for SunriseSunsetDetailViewModel(0);
  __chkstk_darwin(v231);
  v184 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for AttributedString();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v201 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v190 = &v170 - v13;
  v14 = sub_10022C350(&qword_100CCD148, &unk_100A6DC00);
  __chkstk_darwin(v14 - 8);
  v178 = (&v170 - v15);
  v202 = type metadata accessor for SunriseSunsetDetailChartViewModel();
  v189 = *(v202 - 8);
  __chkstk_darwin(v202);
  v188 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v200 = &v170 - v18;
  v181 = type metadata accessor for SunriseSunsetEvent();
  v180 = *(v181 - 8);
  __chkstk_darwin(v181);
  v199 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v20 - 8);
  v186 = (&v170 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v205 = &v170 - v23;
  v210 = type metadata accessor for SunEvents();
  v206 = *(v210 - 8);
  __chkstk_darwin(v210);
  v179 = &v170 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v187 = &v170 - v26;
  __chkstk_darwin(v27);
  v185 = &v170 - v28;
  __chkstk_darwin(v29);
  v204 = &v170 - v30;
  v211 = type metadata accessor for Date();
  v208 = *(v211 - 8);
  __chkstk_darwin(v211);
  v197 = &v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v196 = &v170 - v33;
  __chkstk_darwin(v34);
  v195 = &v170 - v35;
  __chkstk_darwin(v36);
  v198 = &v170 - v37;
  __chkstk_darwin(v38);
  v207 = &v170 - v39;
  v40 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  __chkstk_darwin(v40 - 8);
  v234 = &v170 - v41;
  v216 = type metadata accessor for ArticlePlacementLocation();
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v214 = &v170 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10022C350(&qword_100CB8A48, &qword_100A7FE00);
  __chkstk_darwin(v43 - 8);
  v213 = &v170 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v226 = &v170 - v46;
  v47 = sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
  __chkstk_darwin(v47 - 8);
  v217 = &v170 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v223 = &v170 - v50;
  v240 = type metadata accessor for DayWeather();
  v225 = *(v240 - 8);
  __chkstk_darwin(v240);
  v209 = &v170 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v236 = &v170 - v53;
  v237 = type metadata accessor for TimeZone();
  v233 = *(v237 - 8);
  __chkstk_darwin(v237);
  v177 = &v170 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v57 = &v170 - v56;
  v230 = type metadata accessor for Calendar();
  v229 = *(v230 - 8);
  __chkstk_darwin(v230);
  v59 = &v170 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v63 = &v170 - v62;
  v176 = type metadata accessor for CurrentWeather();
  v175 = *(v176 - 8);
  __chkstk_darwin(v176);
  v65 = &v170 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for SunriseSunsetModel();
  v227 = *(v228 - 8);
  __chkstk_darwin(v228);
  v67 = &v170 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  WeatherDataModel.dailyForecast.getter();
  v174 = v65;
  SunriseSunsetModel.init(currentWeather:dailyForecast:)();
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v69 = v233 + 8;
  v68 = *(v233 + 8);
  v194 = v57;
  v68(v57, v237);
  SunriseSunsetModel.dailyForecast.getter();
  v238 = v59;
  v242 = v59;
  v243 = v224;
  v244 = v239;
  v70 = v223;
  sub_1001190BC();
  v71 = *(v61 + 8);
  v224 = v60;
  v212 = v61 + 8;
  v71(v63, v60);
  v72 = v240;
  if (sub_100024D10(v70, 1, v240) != 1)
  {
    v173 = v68;
    v87 = *(v225 + 32);
    v172 = v225 + 32;
    v171 = v87;
    v87(v236, v70, v72);
    sub_1000161C0((v235 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_newsArticleComponentViewModelFactory), *(v235 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_newsArticleComponentViewModelFactory + 24));
    v88 = v215;
    v89 = *(v215 + 104);
    v219 = v71;
    v90 = v214;
    v91 = v216;
    v89(v214, enum case for ArticlePlacementLocation.sunriseSunsetDetail(_:), v216);
    v92 = v226;
    sub_1005C188C(v90, v226);
    (*(v88 + 8))(v90, v91);
    v93 = v92;
    v94 = v213;
    sub_100035AD0(v93, v213, &qword_100CB8A48, &qword_100A7FE00);
    sub_100428C50(v94, v234);
    v223 = v67;
    v95 = SunriseSunsetModel.dailyForecast.getter();
    __chkstk_darwin(v95);
    v96 = v238;
    *(&v170 - 2) = v238;
    v97 = v217;
    sub_1001190BC();
    (v219)(v63, v224);
    v98 = v240;
    if (sub_100024D10(v97, 1, v240) == 1)
    {
      sub_1000180EC(v97, &qword_100CAB9B0, &qword_100A3A820);
      v99 = v231;
      v100 = v232;
      v101 = v234;
      v102 = v223;
      v103 = v226;
      v104 = v225;
    }

    else
    {
      v170 = v69;
      v106 = v209;
      v171(v209, v97, v98);
      v107 = v204;
      DayWeather.sun.getter();
      v108 = v205;
      SunEvents.sunrise.getter();
      v110 = (v206 + 8);
      v109 = *(v206 + 8);
      v111 = v210;
      v109(v107, v210);
      v112 = v211;
      if (sub_100024D10(v108, 1, v211) == 1)
      {
        v104 = v225;
        (*(v225 + 8))(v106, v98);
        sub_1000180EC(v108, &unk_100CB2CF0, &unk_100A2D7F0);
        v99 = v231;
        v100 = v232;
      }

      else
      {
        v224 = v208[4];
        v224(v207, v108, v112);
        v113 = v110;
        v114 = v109;
        v115 = v185;
        DayWeather.sun.getter();
        v116 = v186;
        SunEvents.sunset.getter();
        v117 = v116;
        v114(v115, v111);
        v118 = sub_100024D10(v116, 1, v112);
        v119 = v235;
        if (v118 != 1)
        {
          v224(v198, v116, v112);
          Location.coordinate.getter();
          v219 = v114;
          v121 = v194;
          Location.timeZone.getter();
          v224 = v113;
          v122 = v239;
          SunriseSunsetEventCalculator.nextEvent(coordinate:date:timeZone:)();
          v173(v121, v237);
          v217 = SunriseSunsetEvent.headerDescription.getter();
          v216 = v123;
          v213 = SunriseSunsetEvent.symbolIconName.getter();
          v212 = v124;
          v125 = (v119 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory);
          v126 = *(v119 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory + 24);
          v127 = v125[4];
          sub_1000161C0(v125, v126);
          v128 = v174;
          SunriseSunsetModel.currentWeather.getter();
          v129 = v178;
          DayWeather.sun.getter();
          sub_10001B350(v129, 0, 1, v111);
          sub_10038C384(v129, v220, v126, v127, v200);
          sub_1000180EC(v129, &qword_100CCD148, &unk_100A6DC00);
          (*(v175 + 8))(v128, v176);
          Location.timeZone.getter();
          v130 = v199;
          v131 = v235;
          v215 = sub_10085EA3C(v199, v122, v121);
          v214 = v132;
          v133 = v237;
          v134 = v173;
          v173(v121, v237);
          v135 = v187;
          DayWeather.sun.getter();
          Location.timeZone.getter();
          v136 = v190;
          sub_10085EDE8(v130, v135, v122, v121, v238, v190);
          v134(v121, v133);
          v137 = v219;
          (v219)(v135, v210);
          v218 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
          v138 = v208[2];
          v139 = v122;
          v140 = v211;
          v138(v195, v139, v211);
          v138(v196, v207, v140);
          v138(v197, v198, v140);
          v141 = v241;
          Location.timeZone.getter();
          v142 = *(v192 + 16);
          v205 = (v192 + 16);
          v239 = v142;
          v142(v201, v136, v193);
          sub_100119F7C();
          v204 = static NSDateFormatter.timeSymbols.getter();
          v143 = *(v221 + 16);
          v185 = (v221 + 16);
          v186 = v143;
          v143(v203, v141, v222);
          DayWeather.sun.getter();
          v178 = *(v189 + 16);
          v178(v188, v200, v202);
          sub_1000161C0((v131 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetTableViewModelFactory), *(v131 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetTableViewModelFactory + 24));
          v144 = v137;
          v145 = v179;
          DayWeather.sun.getter();
          v146 = v177;
          Location.timeZone.getter();
          dispatch thunk of SunriseSunsetTableViewModelFactoryType.makeViewModel(from:timeZone:calendar:)();
          v147 = v237;
          v173(v146, v237);
          v148 = v145;
          v149 = v210;
          (v144)(v148, v210);
          v150 = _s11NormalModelVMa(0);
          v151 = v184;
          sub_100035AD0(v234, &v184[v150[18]], &qword_100CA7188, &qword_100A35360);
          v152 = v216;
          *v151 = v217;
          *(v151 + 1) = v152;
          v153 = v212;
          *(v151 + 2) = v213;
          *(v151 + 3) = v153;
          v154 = v211;
          v138(&v151[v150[7]], v195, v211);
          v138(&v151[v150[8]], v196, v154);
          v138(&v151[v150[9]], v197, v154);
          (*(v233 + 16))(&v151[v150[10]], v194, v147);
          v155 = v193;
          v239(&v151[v150[11]], v201, v193);
          *&v151[v150[12]] = v204;
          v186(&v151[v150[14]], v203, v222);
          v156 = v188;
          v157 = v202;
          v178(&v151[v150[13]], v188, v202);
          v158 = v187;
          (*(v206 + 16))(&v151[v150[15]], v187, v149);
          v159 = v182;
          v160 = v191;
          v161 = v183;
          (*(v182 + 16))(&v151[v150[16]], v191, v183);
          v162 = v214;
          *(v151 + 4) = v215;
          *(v151 + 5) = v162;
          DaylightStringBuilder.init()();
          (*(v159 + 8))(v160, v161);
          v163 = *(v189 + 8);
          v163(v156, v157);
          (v219)(v158, v149);
          (*(v221 + 8))(v203, v222);
          v164 = *(v192 + 8);
          v164(v201, v155);
          v173(v194, v237);
          v165 = v208[1];
          v166 = v211;
          v165(v197, v211);
          v165(v196, v166);
          v165(v195, v166);
          v167 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(0);
          sub_10086014C((v220 + *(v167 + 24)), &v151[v218]);
          v164(v190, v155);
          v163(v200, v202);
          (*(v180 + 8))(v199, v181);
          v165(v198, v166);
          v165(v207, v166);
          v168 = *(v225 + 8);
          v169 = v240;
          v168(v209, v240);
          v96 = v238;
          sub_1000180EC(v234, &qword_100CA7188, &qword_100A35360);
          sub_1000180EC(v226, &qword_100CB8A48, &qword_100A7FE00);
          v168(v236, v169);
          (*(v227 + 8))(v223, v228);
          v99 = v231;
          swift_storeEnumTagMultiPayload();
          v100 = v232;
          sub_100861EDC(v151, v232, type metadata accessor for SunriseSunsetDetailViewModel);
          goto LABEL_16;
        }

        (v208[1])(v207, v112);
        v104 = v225;
        v98 = v240;
        (*(v225 + 8))(v209, v240);
        sub_1000180EC(v117, &unk_100CB2CF0, &unk_100A2D7F0);
        v99 = v231;
        v100 = v232;
      }

      v101 = v234;
      v102 = v223;
      v103 = v226;
    }

    sub_10085E678(v241, v102, v239, v220, v101, v100);
    sub_1000180EC(v101, &qword_100CA7188, &qword_100A35360);
    sub_1000180EC(v103, &qword_100CB8A48, &qword_100A7FE00);
    (*(v104 + 8))(v236, v98);
    (*(v227 + 8))(v102, v228);
LABEL_16:
    v105 = 0;
    goto LABEL_17;
  }

  v73 = v238;
  sub_1000180EC(v70, &qword_100CAB9B0, &qword_100A3A820);
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  sub_10000703C(v74, qword_100D90A90);
  v75 = v221;
  v76 = v219;
  v77 = v222;
  (*(v221 + 16))(v219, v241, v222);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v245 = v81;
    *v80 = 141558275;
    *(v80 + 4) = 1752392040;
    *(v80 + 12) = 2081;
    sub_10006CB24(&qword_100CA6678, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v76;
    v85 = v84;
    (*(v75 + 8))(v83, v77);
    v86 = sub_100078694(v82, v85, &v245);

    *(v80 + 14) = v86;
    _os_log_impl(&_mh_execute_header, v78, v79, "Missing sunset L2 daily forecast for location:%{private,mask.hash}s", v80, 0x16u);
    sub_100006F14(v81);
  }

  else
  {

    (*(v75 + 8))(v76, v77);
  }

  (*(v227 + 8))(v67, v228);
  v105 = 1;
  v96 = v73;
  v99 = v231;
  v100 = v232;
LABEL_17:
  sub_10001B350(v100, v105, 1, v99);
  return (*(v229 + 8))(v96, v230);
}

uint64_t sub_10085E534(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v9 = Calendar.isDateInToday(_:)();
  v10 = *(v6 + 8);
  v10(v8, v5);
  if (v9 & 1) == 0 && (a3)
  {
    DayWeather.date.getter();
    v9 = Calendar.isDate(_:inSameDayAs:)();
    v10(v8, v5);
  }

  return v9 & 1;
}

uint64_t sub_10085E678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v23[0] = a3;
  v23[1] = a2;
  v25 = a6;
  v31 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v27 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = v23 - v8;
  v26 = type metadata accessor for CurrentWeather();
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Elevation();
  v13 = *(v24 - 8);
  __chkstk_darwin(v24);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6;
  sub_1000161C0((v6 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunElevationCalculator), *(v6 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunElevationCalculator + 24));
  v16 = a1;
  v17 = v23[0];
  dispatch thunk of SunElevationCalculatorType.getElevation(for:on:)();
  Elevation.degrees.getter();
  v19 = v18;
  SunriseSunsetModel.currentWeather.getter();
  SunriseSunsetModel.dailyForecast.getter();
  if (v19 >= 0.0)
  {
    v20 = &enum case for PolarType.day(_:);
    v21 = sub_100863538;
  }

  else
  {
    v20 = &enum case for PolarType.night(_:);
    v21 = sub_100863558;
  }

  sub_1008609E8(v16, v17, v12, v9, v29, v30, v21, v20, v25);
  (*(v27 + 8))(v9, v31);
  (*(v10 + 8))(v12, v26);
  return (*(v13 + 8))(v15, v24);
}

uint64_t sub_10085E950()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v4 = Calendar.isDateInToday(_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_10085EA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  SunriseSunsetEvent.date.getter();
  sub_100860570();
  v10 = v9;
  v11 = *(v6 + 8);
  v11(v8, v5);
  if ((v10 - 49) >= 0xFFFFFFFFFFFFFFE7)
  {
LABEL_4:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    goto LABEL_5;
  }

  SunriseSunsetEvent.date.getter();
  sub_1008607AC();
  v10 = v12;
  v11(v8, v5);
  if (v10 < 8)
  {
    if (v10 < 2)
    {
      SunriseSunsetEvent.date.getter();
      v14 = Date.formattedTime(timeZone:)();
      v11(v8, v5);
      return v14;
    }

    goto LABEL_4;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v10 = 7;
LABEL_5:
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100A2C3F0;
  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = v10;
  v14 = static String.localizedStringWithFormat(_:_:)();

  return v14;
}

uint64_t sub_10085EDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v148 = a2;
  v150 = a4;
  v151 = a5;
  v149 = a6;
  v8 = type metadata accessor for TimeZone();
  v139 = *(v8 - 8);
  v140 = v8;
  __chkstk_darwin(v8);
  v132 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v133 = &v121 - v11;
  v12 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v12 - 8);
  v138 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v137 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v136 = (&v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = type metadata accessor for SunriseSunsetEvent();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v135 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v130 = &v121 - v20;
  __chkstk_darwin(v21);
  v129 = &v121 - v22;
  __chkstk_darwin(v23);
  v143 = &v121 - v24;
  v25 = type metadata accessor for Calendar.Component();
  v141 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v28 - 8);
  v30 = &v121 - v29;
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v131 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v134 = &v121 - v35;
  __chkstk_darwin(v36);
  v145 = &v121 - v37;
  __chkstk_darwin(v38);
  v40 = &v121 - v39;
  SunriseSunsetEvent.date.getter();
  v41 = static Date.> infix(_:_:)();
  v142 = v32;
  isa = v32[1].isa;
  v43 = v32 + 1;
  v42 = isa;
  isa(v40, v31);
  if (v41 & 1) == 0 || (SunriseSunsetEvent.date.getter(), v45 = Calendar.isDate(_:inSameDayAs:)(), v42(v40, v31), (v45))
  {
    sub_1000161C0((v147 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_daylightStringBuilder), *(v147 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_daylightStringBuilder + 24));
    return dispatch thunk of DaylightStringBuilderType.makeDaylightString(for:sunEvents:timeZone:calendar:)();
  }

  SunriseSunsetEvent.date.getter();
  v127 = a3;
  sub_1008607AC();
  v123 = v47;
  v42(v40, v31);
  v128 = a1;
  SunriseSunsetEvent.date.getter();
  v121 = Date.formattedMonthAndDay(timeZone:)();
  v124 = v48;
  v126 = v42;
  v125 = v43;
  v42(v40, v31);
  v49 = v141;
  (*(v141 + 104))(v27, enum case for Calendar.Component.day(_:), v25);
  v50 = v127;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v49 + 8))(v27, v25);
  v51 = v50;
  if (sub_100024D10(v30, 1, v31) == 1)
  {
    Date.addingTimeInterval(_:)();
    v52 = sub_100024D10(v30, 1, v31);
    v53 = v143;
    v54 = v144;
    if (v52 != 1)
    {
      sub_1000180EC(v30, &unk_100CB2CF0, &unk_100A2D7F0);
    }
  }

  else
  {
    (v142[4].isa)(v145, v30, v31);
    v53 = v143;
    v54 = v144;
  }

  v55 = v128;
  SunriseSunsetEvent.date.getter();
  v56 = Calendar.isDate(_:inSameDayAs:)();
  v57 = v126;
  v126(v40, v31);
  v58 = v55;
  v59 = v146;
  v141 = *(v54 + 16);
  (v141)(v53, v58, v146);
  v60 = (*(v54 + 88))(v53, v59);
  if (v60 != enum case for SunriseSunsetEvent.sunrise(_:))
  {
    if (v60 == enum case for SunriseSunsetEvent.sunset(_:))
    {
      (*(v144 + 96))(v53, v146);
      v61 = v128;
      v62 = v135;
      if ((v56 & 1) != 0 || v123 >= 8)
      {
        goto LABEL_21;
      }

      if (v123 >= 1)
      {
        goto LABEL_34;
      }

      v57(v53, v31);
    }

    else
    {

      v63 = v128;
      if (qword_100CA26B8 != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      sub_10000703C(v64, qword_100D90A90);
      v65 = v129;
      v66 = v141;
      (v141)(v129, v63, v146);
      (v142[2].isa)(v134, v51, v31);
      v67 = v133;
      (*(v139 + 16))(v133, v150, v140);
      v68 = Logger.logObject.getter();
      LODWORD(v138) = static os_log_type_t.error.getter();
      v69 = os_log_type_enabled(v68, v138);
      v122 = v31;
      if (v69)
      {
        v70 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v152 = v137;
        *v70 = 136315650;
        v124 = v68;
        v71 = v146;
        v66(v130, v65, v146);
        v72 = String.init<A>(describing:)();
        v74 = v73;
        v136 = *(v144 + 8);
        v136(v65, v71);
        v75 = sub_100078694(v72, v74, &v152);

        *(v70 + 4) = v75;
        *(v70 + 12) = 2080;
        sub_10006CB24(&qword_100CA5720, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v76 = v134;
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v79 = v78;
        v126(v76, v31);
        v53 = v143;
        v80 = sub_100078694(v77, v79, &v152);

        *(v70 + 14) = v80;
        *(v70 + 22) = 2080;
        sub_10006CB24(&qword_100CCC818, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
        v81 = v133;
        v82 = v140;
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v85 = v84;
        (*(v139 + 8))(v81, v82);
        v86 = sub_100078694(v83, v85, &v152);

        *(v70 + 24) = v86;
        v87 = v124;
        _os_log_impl(&_mh_execute_header, v124, v138, "Unexpected sun event encountered. event: %s, date:%s, timeZone:%s", v70, 0x20u);
        swift_arrayDestroy();

        v88 = v71;
        v89 = v136;
      }

      else
      {

        (*(v139 + 8))(v67, v140);
        v57(v134, v31);
        v89 = *(v144 + 8);
        v90 = v146;
        v89(v65, v146);
        v88 = v90;
      }

      v62 = v135;
      v89(v53, v88);
      v31 = v122;
      v61 = v128;
    }

LABEL_26:
    v92 = v139;
    v91 = v140;
    v93 = v132;
    if (qword_100CA26B8 != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    sub_10000703C(v94, qword_100D90A90);
    v95 = v62;
    v96 = v61;
    v97 = v62;
    v98 = v146;
    v99 = v141;
    (v141)(v95, v96, v146);
    v100 = v131;
    (v142[2].isa)(v131, v127, v31);
    (*(v92 + 16))(v93, v150, v91);
    v101 = Logger.logObject.getter();
    LODWORD(v143) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v101, v143))
    {
      v102 = v92;
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v122 = v31;
      v152 = v104;
      *v103 = 136315650;
      v142 = v101;
      v99(v130, v97, v98);
      v105 = String.init<A>(describing:)();
      v107 = v106;
      (*(v144 + 8))(v97, v98);
      v108 = sub_100078694(v105, v107, &v152);

      *(v103 + 4) = v108;
      *(v103 + 12) = 2080;
      sub_10006CB24(&qword_100CA5720, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = v110;
      v126(v100, v122);
      v112 = sub_100078694(v109, v111, &v152);

      *(v103 + 14) = v112;
      *(v103 + 22) = 2080;
      sub_10006CB24(&qword_100CCC818, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
      v113 = v140;
      v114 = dispatch thunk of CustomStringConvertible.description.getter();
      v116 = v115;
      (*(v102 + 8))(v93, v113);
      v117 = sub_100078694(v114, v116, &v152);
      v57 = v126;

      *(v103 + 24) = v117;
      v118 = v142;
      _os_log_impl(&_mh_execute_header, v142, v143, "It should not be possible to get here. event: %s, date:%s, timeZone:%s", v103, 0x20u);
      swift_arrayDestroy();
      v31 = v122;
      v53 = v145;
    }

    else
    {

      (*(v92 + 8))(v93, v91);
      v57 = v126;
      v126(v100, v31);
      (*(v144 + 8))(v97, v98);
      v53 = v145;
    }

    sub_1000161C0((v147 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_daylightStringBuilder), *(v147 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_daylightStringBuilder + 24));
    dispatch thunk of DaylightStringBuilderType.makeDaylightString(for:sunEvents:timeZone:calendar:)();
    return (v57)(v53, v31);
  }

  (*(v54 + 96))(v53, v59);
  if ((v56 & 1) != 0 || v123 >= 8)
  {
LABEL_21:

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v57(v145, v31);
    return (v57)(v53, v31);
  }

  if (v123 < 1)
  {

    v57(v53, v31);
    v61 = v128;
    v62 = v135;
    goto LABEL_26;
  }

LABEL_34:
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_100A2C3F0;
  *(v119 + 56) = &type metadata for String;
  *(v119 + 64) = sub_100035744();
  v120 = v124;
  *(v119 + 32) = v121;
  *(v119 + 40) = v120;
  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v57(v145, v31);
  return (v57)(v53, v31);
}

uint64_t sub_10086014C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = a1;
  v7 = *a1;
  v8 = v7[1].i64[0];
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v43 = a2;
    v50 = _swiftEmptyArrayStorage;
    sub_1006A83E4();
    v9 = v50;
    v45 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
    v10 = v7 + 3;
    do
    {
      v48 = v8;
      v11 = v10[-1].i64[0];
      v12 = v10[-1].i64[1];
      v13 = v10->i64[0];
      v14 = v10->i64[1];
      v15 = v10[1].i64[0];
      v16 = v10[1].i64[1];
      v17 = v10[2].i64[0];
      v18 = v10[2].i64[1];
      v19 = v47;
      v20 = (v6 + *(v47 + 20));
      *v20 = vextq_s8(v10[3], v10[3], 8uLL);
      v20[1].i64[0] = v15;
      v20[1].i64[1] = v16;
      v20[2].i64[0] = v17;
      v20[2].i64[1] = v18;
      swift_storeEnumTagMultiPayload();
      *v6 = v13;
      v6[1] = v14;
      v6[2] = v11;
      v6[3] = v12;
      v6[4] = v11;
      v6[5] = v12;
      *(v6 + *(v19 + 24)) = 3;
      v50 = v9;
      v22 = v9[2];
      v21 = v9[3];
      swift_bridgeObjectRetain_n();

      if (v22 >= v21 >> 1)
      {
        sub_1006A83E4();
        v9 = v50;
      }

      v9[2] = v22 + 1;
      sub_100861EDC(v6, v9 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v22, type metadata accessor for ComparisonCapsuleViewModel.Row);
      v10 += 5;
      v8 = v48 - 1;
    }

    while (v48 != 1);
    a2 = v43;
  }

  if (qword_100CA2840 != -1)
  {
    swift_once();
  }

  v23 = qword_100D90E18;

  sub_10064C8F0(3, v9, v23, &v50);
  v24 = v51;
  if (v51)
  {
    v26 = v53;
    v25 = v54;
    v27 = v52;
    v28 = v50;
    v29 = [objc_opt_self() mainBundle];
    v55._object = 0x8000000100AE1740;
    v30._object = 0x8000000100AE1720;
    v55._countAndFlagsBits = 0xD000000000000029;
    v30._countAndFlagsBits = 0xD00000000000001BLL;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v55);

    v33 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v34 = v33[6];
    v35 = *(type metadata accessor for SunriseSunsetMonthlyViewModel(0) + 20);
    v36 = type metadata accessor for WeatherDescription();
    (*(*(v36 - 8) + 16))(a2 + v34, &v44[v35], v36);
    sub_10001B350(a2 + v34, 0, 1, v36);
    v37 = a2 + v33[7];
    v49 = 0;
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = v28;
    *(v37 + 40) = v24;
    *(v37 + 48) = v27;
    *(v37 + 56) = v26;
    *(v37 + 64) = v25;
    *(v37 + 89) = 0;
    v38 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_10001B350(a2 + v33[8], 1, 1, v38);
    *a2 = xmmword_100A2F600;
    *(a2 + 16) = 2;
    *(a2 + 24) = v32;
    *(a2 + v33[9]) = 0;
    *(a2 + v33[10]) = 0;
    v39 = a2;
    v40 = 0;
    v41 = v33;
  }

  else
  {
    v41 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v39 = a2;
    v40 = 1;
  }

  return sub_10001B350(v39, v40, 1, v41);
}

void sub_100860570()
{
  v0 = type metadata accessor for DateComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA53E8, &unk_100A2F650);
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  (*(v5 + 104))(v7 + v6, enum case for Calendar.Component.hour(_:), v4);
  sub_10004BCB0(v7);
  Calendar.dateComponents(_:from:to:)();

  DateComponents.hour.getter();
  LOBYTE(v7) = v8;
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    Date.timeIntervalSince1970.getter();
    v10 = v9;
    Date.timeIntervalSince1970.getter();
    v12 = (v10 - v11) / 3600.0;
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v12 > -9.22337204e18)
    {
      if (v12 < 9.22337204e18)
      {
        return;
      }

LABEL_8:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_8;
  }
}

void sub_1008607AC()
{
  v0 = type metadata accessor for DateComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA53E8, &unk_100A2F650);
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  (*(v5 + 104))(v7 + v6, enum case for Calendar.Component.day(_:), v4);
  sub_10004BCB0(v7);
  Calendar.dateComponents(_:from:to:)();

  DateComponents.day.getter();
  LOBYTE(v7) = v8;
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    Date.timeIntervalSince1970.getter();
    v10 = v9;
    Date.timeIntervalSince1970.getter();
    v12 = (v10 - v11) / 7200.0;
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v12 > -9.22337204e18)
    {
      if (v12 < 9.22337204e18)
      {
        return;
      }

LABEL_8:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_1008609E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, unsigned int *a8@<X7>, uint64_t *a9@<X8>)
{
  v158 = a8;
  v147 = a7;
  v152 = a6;
  v167 = a5;
  v168 = a4;
  v159 = a3;
  v178 = a2;
  v155 = a9;
  type metadata accessor for Location();
  sub_1000037C4();
  v171 = v11;
  v172 = v10;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v170 = (v13 - v12);
  sub_1000038CC();
  v14 = type metadata accessor for AttributeContainer();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_1000037D8();
  sub_100003918(v17 - v16);
  v154 = type metadata accessor for AttributedString();
  sub_1000037C4();
  v153 = v18;
  __chkstk_darwin(v19);
  sub_1000037D8();
  sub_100003918(v21 - v20);
  v182 = type metadata accessor for Date();
  sub_1000037C4();
  v174 = v22;
  __chkstk_darwin(v23);
  sub_1000037D8();
  v177 = (v25 - v24);
  sub_1000038CC();
  v176 = type metadata accessor for PolarType();
  sub_1000037C4();
  v164 = v26;
  __chkstk_darwin(v27);
  sub_100003848();
  v148 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v175 = v30;
  v31 = sub_10022C350(&qword_100CCD148, &unk_100A6DC00);
  sub_100003810(v31);
  sub_100003828();
  __chkstk_darwin(v32);
  sub_100003918(&v127[-v33]);
  v166 = type metadata accessor for SunriseSunsetDetailChartViewModel();
  sub_1000037C4();
  v165 = v34;
  __chkstk_darwin(v35);
  sub_100003848();
  v163 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_10000E70C();
  sub_100003918(v38);
  v151 = type metadata accessor for SunriseSunsetEvent();
  sub_1000037C4();
  v150 = v39;
  __chkstk_darwin(v40);
  sub_1000037D8();
  v173 = v42 - v41;
  v43 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v43);
  sub_100003828();
  __chkstk_darwin(v44);
  sub_100003918(&v127[-v45]);
  v46 = type metadata accessor for SunriseSunsetPolarSunEventStringBuilder();
  sub_1000037C4();
  v48 = v47;
  __chkstk_darwin(v49);
  sub_1000037D8();
  v52 = v51 - v50;
  v53 = sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
  v54 = sub_100003810(v53);
  __chkstk_darwin(v54);
  v56 = &v127[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v57);
  v59 = &v127[-v58];
  v60 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v62 = v61;
  __chkstk_darwin(v63);
  sub_100003848();
  v143 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  v67 = &v127[-v66];
  v146 = type metadata accessor for Calendar();
  sub_1000037C4();
  v145 = v68;
  __chkstk_darwin(v69);
  sub_1000037D8();
  v72 = v71 - v70;
  v160 = a1;
  Location.timeZone.getter();
  v161 = v72;
  static Calendar.currentCalendar(with:)();
  v144 = v62;
  v73 = *(v62 + 8);
  v74 = v67;
  v180 = v62 + 8;
  v181 = v60;
  v179 = v73;
  (v73)(v67, v60);
  v75 = sub_10085C058(v168);
  sub_1002B0A3C(7, v75);
  v184 = v178;
  sub_1008DC48C();
  swift_unknownObjectRelease();
  v139 = v48;
  v76 = *(v48 + 16);
  v136 = v183 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetPolarSunEventStringBuilder;
  v140 = v46;
  v76(v52);
  v147 = v59;
  sub_100035AD0(v59, v56, &qword_100CAB9B0, &qword_100A3A820);
  v77 = type metadata accessor for DayWeather();
  if (sub_100024D10(v56, 1, v77) == 1)
  {
    sub_1000180EC(v56, &qword_100CAB9B0, &qword_100A3A820);
    v78 = 1;
    v79 = v142;
  }

  else
  {
    v79 = v142;
    DayWeather.date.getter();
    (*(*(v77 - 8) + 8))(v56, v77);
    v78 = 0;
  }

  sub_10001B350(v79, v78, 1, v182);
  Location.timeZone.getter();
  v142 = SunriseSunsetPolarSunEventStringBuilder.makeTitle(currentDate:nextEvent:timeZone:)();
  v141 = v80;
  v81 = v179;
  (v179)(v74, v181);
  sub_1000180EC(v79, &unk_100CB2CF0, &unk_100A2D7F0);
  (*(v139 + 8))(v52, v140);
  Location.coordinate.getter();
  v82 = v74;
  Location.timeZone.getter();
  v83 = v183;
  SunriseSunsetEventCalculator.nextEvent(coordinate:date:timeZone:)();
  v84 = sub_100024B2C();
  v81(v84);
  v138 = SunriseSunsetEvent.headerDescription.getter();
  v137 = v85;
  v135 = SunriseSunsetEvent.symbolIconName.getter();
  v134 = v86;
  v87 = (v83 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory);
  v88 = *(v83 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory + 24);
  v89 = *(v83 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory + 32);
  sub_1000161C0(v87, v88);
  v90 = type metadata accessor for SunEvents();
  v91 = v156;
  sub_10001B350(v156, 1, 1, v90);
  v92 = v162;
  sub_10038C384(v91, v167, v88, v89, v162);
  sub_1000180EC(v91, &qword_100CCD148, &unk_100A6DC00);
  v128 = *v158;
  v93 = v164;
  v94 = v164 + 104;
  v156 = *(v164 + 104);
  v95 = v175;
  v96 = v176;
  v156(v175);
  v129 = v94;
  v97 = v177;
  CurrentWeather.date.getter();
  Location.timeZone.getter();
  v133 = SunriseSunsetPolarSunEventStringBuilder.makeString(for:currentDate:nextEvent:timeZone:)();
  v157 = v82;
  (v179)(v82, v181);
  v98 = v174;
  v99 = *(v174 + 8);
  v139 = v174 + 8;
  v140 = v99;
  v100 = v182;
  v99(v97, v182);
  v101 = *(v93 + 8);
  v158 = (v93 + 8);
  v159 = v101;
  v101(v95, v96);
  v136 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
  v102 = v128;
  (v156)(v95, v128, v96);
  v103 = *(v98 + 16);
  v174 = v98 + 16;
  v132 = v103;
  v103(v97, v178, v100);
  v104 = v160;
  Location.timeZone.getter();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  sub_100119F7C();
  v131 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  v105 = *(v171 + 16);
  v133 = v171 + 16;
  v149 = v105;
  v105(v170, v104, v172);
  v130 = *(v165 + 16);
  v130(v163, v92, v166);
  sub_1000161C0((v183 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetTableViewModelFactory), *(v183 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetTableViewModelFactory + 24));
  v106 = v143;
  Location.timeZone.getter();
  v107 = v176;
  (v156)(v148, v102, v176);
  v108 = _s10PolarModelVMa(0);
  v109 = v155;
  dispatch thunk of SunriseSunsetTableViewModelFactoryType.makePolarViewModel(from:forecast:timeZone:calendar:type:)();
  sub_10003C998();
  v110();
  v111 = v181;
  (v179)(v106, v181);
  sub_100035AD0(v152, v109 + v108[16], &qword_100CA7188, &qword_100A35360);
  v112 = v137;
  *v109 = v138;
  v109[1] = v112;
  v113 = v134;
  v109[2] = v135;
  v109[3] = v113;
  (*(v164 + 16))(v109 + v108[6], v175, v107);
  v132(v109 + v108[7], v177, v182);
  (*(v144 + 16))(v109 + v108[8], v157, v111);
  v114 = (v109 + v108[11]);
  v115 = v141;
  *v114 = v142;
  v114[1] = v115;
  v116 = v153;
  v117 = v169;
  v118 = v154;
  (*(v153 + 16))(v109 + v108[9], v169, v154);
  *(v109 + v108[10]) = v131;
  v119 = v163;
  v120 = v166;
  v130(v109 + v108[12], v163, v166);
  v149(v109 + v108[13], v170, v172);
  DaylightStringBuilder.init()();
  v121 = *(v165 + 8);
  v121(v119, v120);
  v122 = sub_100024B2C();
  v123(v122);
  (*(v116 + 8))(v117, v118);
  (v179)(v157, v181);
  v140(v177, v182);
  sub_10003C998();
  v124();
  v125 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(0);
  sub_10086014C((v167 + *(v125 + 24)), v109 + v136);
  v121(v162, v120);
  (*(v150 + 8))(v173, v151);
  sub_1000180EC(v147, &qword_100CAB9B0, &qword_100A3A820);
  (*(v145 + 8))(v161, v146);
  type metadata accessor for SunriseSunsetDetailViewModel(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_10086194C()
{
  sub_10000E8AC();
  v19[1] = v0;
  v1 = type metadata accessor for Date();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  v12 = type metadata accessor for SunEvents();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  DayWeather.sun.getter();
  SunEvents.sunset.getter();
  (*(v14 + 8))(v18, v12);
  LODWORD(v18) = sub_100024D10(v11, 1, v1);
  sub_1000180EC(v11, &unk_100CB2CF0, &unk_100A2D7F0);
  if (v18 != 1)
  {
    DayWeather.date.getter();
    static Date.> infix(_:_:)();
    (*(v3 + 8))(v7, v1);
  }

  sub_10000C8F4();
}

uint64_t sub_100861B40()
{
  v1 = OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetEventCalculator;
  type metadata accessor for SunriseSunsetEventCalculator();
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);
  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory));
  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_viewDataCache));
  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_preprocessedDataProvider));
  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_daylightStringBuilder));
  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunElevationCalculator));
  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetTableViewModelFactory));
  v3 = OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetPolarSunEventStringBuilder;
  type metadata accessor for SunriseSunsetPolarSunEventStringBuilder();
  sub_1000037E8();
  (*(v4 + 8))(v0 + v3);
  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_newsArticleComponentViewModelFactory));
  return v0;
}

uint64_t sub_100861C40()
{
  sub_100861B40();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SunriseSunsetDetailViewModelFactory(uint64_t a1)
{
  result = qword_100CDF010;
  if (!qword_100CDF010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100861CEC(uint64_t a1)
{
  result = type metadata accessor for SunriseSunsetEventCalculator();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SunriseSunsetPolarSunEventStringBuilder();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100861DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetDetailInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100861E3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100861EDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_100861F3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DayWeather();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = type metadata accessor for DayWeather();
      sub_100003810(v7);
      sub_1008623A4(&v13, v14, a1, v4, v9, v10, v11, v12, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5);
      v6[2] = 0;

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
    sub_100862068();
  }
}

void sub_100862068()
{
  sub_10000E8AC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v62 = type metadata accessor for Date();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100003848();
  v61 = v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  sub_10000E70C();
  v60 = v13;
  sub_1000038CC();
  v14 = type metadata accessor for DayWeather();
  sub_1000037C4();
  __chkstk_darwin(v15);
  sub_100003848();
  v53 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  v59 = &v43 - v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_10000E70C();
  v58 = v21;
  v45 = v5;
  if (v3 != v5)
  {
    v22 = *v1;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v9 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = v22 + v25 * (v3 - 1);
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = v7 - v3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * v3;
    v29 = v60;
    while (2)
    {
      v48 = v26;
      v49 = v3;
      v46 = v28;
      v47 = v27;
      v63 = v27;
      do
      {
        v30 = v58;
        v31 = v56;
        v56(v58, v28, v14);
        v32 = v14;
        v33 = v59;
        v31(v59, v26, v32);
        DayWeather.date.getter();
        v34 = v61;
        DayWeather.date.getter();
        v64 = static Date.< infix(_:_:)();
        v35 = *v55;
        v36 = v34;
        v37 = v62;
        (*v55)(v36, v62);
        v35(v29, v37);
        v38 = *v54;
        v39 = v33;
        v14 = v32;
        (*v54)(v39, v32);
        v38(v30, v32);
        if ((v64 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return;
        }

        v40 = *v51;
        v41 = v53;
        (*v51)(v53, v28, v32);
        sub_100069B70();
        swift_arrayInitWithTakeFrontToBack();
        v40(v26, v41, v32);
        v26 += v50;
        v28 += v50;
      }

      while (!__CFADD__(v63++, 1));
      v3 = v49 + 1;
      v26 = v48 + v44;
      v27 = v47 - 1;
      v28 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  sub_10000C8F4();
}

void sub_1008623A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void))
{
  sub_10000E8AC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v155 = v16;
  v179 = type metadata accessor for Date();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100003848();
  v178 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v177 = v22;
  sub_1000038CC();
  v23 = type metadata accessor for DayWeather();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100003848();
  v158 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  v169 = &v152 - v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  v176 = &v152 - v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  sub_10000E70C();
  v180 = v33;
  v164 = v15;
  v34 = v15[1];
  v159 = v25;
  if (v34 < 1)
  {
    v36 = _swiftEmptyArrayStorage;
LABEL_101:
    sub_100017F28();
    if (!v139)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v144 = v36 + 16;
      v145 = *(v36 + 2);
      while (v145 >= 2)
      {
        if (!*v164)
        {
          goto LABEL_139;
        }

        v146 = v36;
        v147 = &v36[16 * v145];
        v148 = *v147;
        v149 = &v144[2 * v145];
        v150 = *(v149 + 1);
        sub_100862EBC(*v164 + *(v159 + 72) * *v147, *v164 + *(v159 + 72) * *v149, *v164 + *(v159 + 72) * v150, a10, v140, v141, v142, v143, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
        if (v11)
        {
          break;
        }

        if (v150 < v148)
        {
          goto LABEL_127;
        }

        if (v145 - 2 >= *v144)
        {
          goto LABEL_128;
        }

        *v147 = v148;
        *(v147 + 1) = v150;
        v151 = *v144 - v145;
        if (*v144 < v145)
        {
          goto LABEL_129;
        }

        v145 = *v144 - 1;
        sub_1003090FC(v149 + 16, v151, v149);
        *v144 = v145;
        v36 = v146;
      }

LABEL_111:

      sub_10000C8F4();
      return;
    }

LABEL_136:
    v36 = sub_100308E24();
    goto LABEL_103;
  }

  v153 = v13;
  v35 = 0;
  v173 = (v18 + 8);
  v174 = v25 + 16;
  v171 = (v25 + 32);
  v172 = (v25 + 8);
  v36 = _swiftEmptyArrayStorage;
  v175 = v23;
  while (1)
  {
    v37 = v35;
    v38 = v35 + 1;
    if (v35 + 1 < v34)
    {
      v154 = v36;
      v39 = v35;
      v156 = v35;
      v165 = v11;
      v166 = v35 + 1;
      a10 = *v164;
      v40 = v25;
      v41 = *(v25 + 72);
      v167 = v34;
      v168 = v41;
      v42 = a10 + v41 * v38;
      v43 = v23;
      v44 = *(v40 + 16);
      sub_10004EBE4();
      v44();
      v45 = v176;
      v162 = v44;
      (v44)(v176, a10 + v41 * v39, v43);
      v11 = v177;
      v36 = v180;
      DayWeather.date.getter();
      v25 = v178;
      DayWeather.date.getter();
      LODWORD(v163) = static Date.< infix(_:_:)();
      v46 = *v173;
      v47 = v179;
      (*v173)(v25, v179);
      v161 = v46;
      v46(v11, v47);
      v48 = *(v159 + 8);
      v48(v45, v43);
      v160 = v48;
      v48(v36, v43);
      v49 = v167;
      v50 = (v156 + 2);
      v51 = a10 + v168 * (v156 + 2);
      while (1)
      {
        v52 = v50;
        if (++v166 >= v49)
        {
          break;
        }

        v11 = v180;
        v53 = v162;
        a10 = v50;
        (v162)(v180, v51, v175);
        v36 = v176;
        sub_10004EBE4();
        v53();
        v54 = v177;
        DayWeather.date.getter();
        v55 = v178;
        DayWeather.date.getter();
        LOBYTE(v170) = static Date.< infix(_:_:)() & 1;
        LODWORD(v170) = v170;
        v56 = v55;
        v25 = v179;
        v57 = v161;
        (v161)(v56, v179);
        v57(v54, v25);
        v58 = sub_10000CA1C();
        v59 = v160;
        (v160)(v58);
        v60 = sub_100024B2C();
        (v59)(v60);
        v52 = a10;
        v49 = v167;
        v51 = v168 + v51;
        v42 = v168 + v42;
        v50 = (a10 + 1);
        if ((v163 & 1) != v170)
        {
          goto LABEL_9;
        }
      }

      v166 = v49;
LABEL_9:
      if (v163)
      {
        v38 = v166;
        v37 = v156;
        v23 = v175;
        if (v166 < v156)
        {
          goto LABEL_133;
        }

        if (v156 >= v166)
        {
          sub_100009174();
          goto LABEL_32;
        }

        if (v49 >= v52)
        {
          v61 = v52;
        }

        else
        {
          v61 = v49;
        }

        v62 = v168 * (v61 - 1);
        v63 = v168 * v61;
        v64 = v156;
        v65 = v156 * v168;
        v11 = v165;
        v25 = v159;
        do
        {
          if (v64 != --v38)
          {
            v66 = v11;
            v67 = *v164;
            if (!*v164)
            {
              goto LABEL_140;
            }

            sub_10004EBE4();
            a10 = v68;
            v68();
            v69 = v65 < v62 || v67 + v65 >= v67 + v63;
            if (v69)
            {
              sub_100069B70();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v65 != v62)
            {
              sub_100069B70();
              swift_arrayInitWithTakeBackToFront();
            }

            (a10)(v67 + v62, v158, v23);
            v11 = v66;
            v25 = v159;
          }

          ++v64;
          v62 -= v168;
          v63 -= v168;
          v65 += v168;
        }

        while (v64 < v38);
        v36 = v154;
      }

      else
      {
        sub_100009174();
        v23 = v175;
      }

      v38 = v166;
      v37 = v156;
    }

LABEL_32:
    v70 = v164[1];
    if (v38 < v70)
    {
      if (__OFSUB__(v38, v37))
      {
        goto LABEL_132;
      }

      if (v38 - v37 < v153)
      {
        break;
      }
    }

LABEL_48:
    if (v38 < v37)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10011E564();
      v36 = v137;
    }

    v88 = *(v36 + 2);
    v89 = v88 + 1;
    if (v88 >= *(v36 + 3) >> 1)
    {
      sub_10011E564();
      v36 = v138;
    }

    *(v36 + 2) = v89;
    v90 = &v36[16 * v88 + 32];
    *v90 = v37;
    v90[1] = v38;
    sub_100017F28();
    if (!v96)
    {
      goto LABEL_141;
    }

    v166 = v38;
    if (v88)
    {
      v170 = v95;
      while (1)
      {
        v97 = v89 - 1;
        v98 = (v95 + 16 * v89 - 16);
        v99 = &v36[16 * v89];
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v100 = *(v36 + 4);
          v101 = *(v36 + 5);
          v110 = __OFSUB__(v101, v100);
          v102 = v101 - v100;
          v103 = v110;
LABEL_69:
          if (v103)
          {
            goto LABEL_118;
          }

          v115 = *v99;
          v114 = *(v99 + 1);
          v116 = __OFSUB__(v114, v115);
          v117 = v114 - v115;
          v118 = v116;
          if (v116)
          {
            goto LABEL_121;
          }

          v119 = v98[1];
          v120 = v119 - *v98;
          if (__OFSUB__(v119, *v98))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v117, v120))
          {
            goto LABEL_126;
          }

          if (v117 + v120 >= v102)
          {
            if (v102 < v120)
            {
              v97 = v89 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v89 < 2)
        {
          goto LABEL_120;
        }

        v122 = *v99;
        v121 = *(v99 + 1);
        v110 = __OFSUB__(v121, v122);
        v117 = v121 - v122;
        v118 = v110;
LABEL_84:
        if (v118)
        {
          goto LABEL_123;
        }

        v124 = *v98;
        v123 = v98[1];
        v110 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v110)
        {
          goto LABEL_125;
        }

        if (v125 < v117)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v97 - 1 >= v89)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v164)
        {
          goto LABEL_138;
        }

        v129 = (v95 + 16 * v97 - 16);
        v130 = *v129;
        v131 = v97;
        v132 = v95 + 16 * v97;
        v133 = *(v132 + 1);
        sub_100862EBC(*v164 + *(v25 + 72) * *v129, *v164 + *(v25 + 72) * *v132, *v164 + *(v25 + 72) * v133, a10, v91, v92, v93, v94, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
        if (v11)
        {
          goto LABEL_111;
        }

        if (v133 < v130)
        {
          goto LABEL_113;
        }

        v165 = 0;
        v11 = v25;
        v134 = v36;
        v135 = *(v36 + 2);
        if (v131 > v135)
        {
          goto LABEL_114;
        }

        *v129 = v130;
        v129[1] = v133;
        if (v131 >= v135)
        {
          goto LABEL_115;
        }

        v89 = v135 - 1;
        sub_1003090FC(v132 + 16, v135 - 1 - v131, v132);
        *(v134 + 2) = v135 - 1;
        v136 = v135 > 2;
        v36 = v134;
        v25 = v11;
        v11 = v165;
        v95 = v170;
        if (!v136)
        {
          goto LABEL_98;
        }
      }

      v104 = v95 + 16 * v89;
      v105 = *(v104 - 8);
      v106 = *(v104 - 7);
      v110 = __OFSUB__(v106, v105);
      v107 = v106 - v105;
      if (v110)
      {
        goto LABEL_116;
      }

      v109 = *(v104 - 6);
      v108 = *(v104 - 5);
      v110 = __OFSUB__(v108, v109);
      v102 = v108 - v109;
      v103 = v110;
      if (v110)
      {
        goto LABEL_117;
      }

      v111 = *(v99 + 1);
      v112 = v111 - *v99;
      if (__OFSUB__(v111, *v99))
      {
        goto LABEL_119;
      }

      v110 = __OFADD__(v102, v112);
      v113 = v102 + v112;
      if (v110)
      {
        goto LABEL_122;
      }

      if (v113 >= v107)
      {
        v127 = *v98;
        v126 = v98[1];
        v110 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v110)
        {
          goto LABEL_130;
        }

        if (v102 < v128)
        {
          v97 = v89 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v34 = v164[1];
    v35 = v166;
    if (v166 >= v34)
    {
      goto LABEL_101;
    }
  }

  v71 = (v37 + v153);
  if (__OFADD__(v37, v153))
  {
    goto LABEL_134;
  }

  if (v71 >= v70)
  {
    v71 = v164[1];
  }

  if (v71 < v37)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v38 == v71)
  {
    goto LABEL_48;
  }

  v154 = v36;
  v165 = v11;
  v72 = *v164;
  v73 = *(v25 + 72);
  v170 = *(v25 + 16);
  v74 = v72 + v73 * (v38 - 1);
  v167 = -v73;
  v156 = v37;
  v75 = (v37 - v38);
  v168 = v72;
  v157 = v73;
  v76 = v72 + v38 * v73;
  v160 = v71;
LABEL_41:
  v166 = v38;
  v161 = v76;
  v162 = v75;
  v163 = v74;
  v77 = v74;
  while (1)
  {
    v11 = v180;
    sub_10004EBE4();
    v78 = v170;
    v170();
    v36 = v176;
    (v78)(v176, v77, v23);
    v79 = v177;
    DayWeather.date.getter();
    v80 = v178;
    DayWeather.date.getter();
    LODWORD(a10) = static Date.< infix(_:_:)();
    v81 = *v173;
    v82 = v80;
    v83 = v179;
    (*v173)(v82, v179);
    v84 = v79;
    v23 = v175;
    v81(v84, v83);
    v25 = *v172;
    v85 = sub_10000CA1C();
    (v25)(v85);
    v86 = sub_100024B2C();
    (v25)(v86);
    if ((a10 & 1) == 0)
    {
LABEL_46:
      v38 = v166 + 1;
      v74 = v163 + v157;
      v75 = (v162 - 1);
      v76 = &v161[v157];
      if ((v166 + 1) == v160)
      {
        v38 = v160;
        sub_100009174();
        v37 = v156;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v168)
    {
      break;
    }

    v87 = *v171;
    v25 = v169;
    sub_10004EBE4();
    v87();
    sub_100069B70();
    swift_arrayInitWithTakeFrontToBack();
    (v87)(v77, v25, v23);
    v77 += v167;
    v76 += v167;
    v69 = __CFADD__(v75, 1);
    v75 = (v75 + 1);
    if (v69)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_100862EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v21;
  a20 = v22;
  v108 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v103 = type metadata accessor for Date();
  sub_1000037C4();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_100003848();
  v102 = v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  sub_10000E70C();
  v101 = v35;
  sub_1000038CC();
  v107 = type metadata accessor for DayWeather();
  __chkstk_darwin(v107);
  v100 = v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v105 = v91 - v39;
  v41 = *(v40 + 72);
  if (!v41)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v42 = v27 - v29 == 0x8000000000000000 && v41 == -1;
  if (v42)
  {
    goto LABEL_60;
  }

  v43 = v25 - v27;
  if (v25 - v27 == 0x8000000000000000 && v41 == -1)
  {
    goto LABEL_61;
  }

  v91[1] = v20;
  v45 = (v27 - v29) / v41;
  a10 = v29;
  v110 = v108;
  v98 = (v31 + 8);
  v99 = (v38 + 16);
  v97 = (v38 + 8);
  v46 = v43 / v41;
  if (v45 >= v43 / v41)
  {
    v66 = v108;
    sub_1006A072C(v27, v43 / v41, v108);
    v67 = v66 + v46 * v41;
    v68 = -v41;
    v69 = v67;
    v106 = v29;
    v93 = v68;
LABEL_36:
    v70 = v27 + v68;
    v71 = v25;
    v91[0] = v69;
    v72 = v69;
    v94 = v27 + v68;
    v95 = v27;
    while (1)
    {
      if (v67 <= v108)
      {
        a10 = v27;
        v109 = v72;
        goto LABEL_58;
      }

      if (v27 <= v29)
      {
        break;
      }

      v92 = v72;
      v104 = v71 + v68;
      v73 = v67 + v68;
      v74 = v67;
      v75 = *v99;
      v76 = v70;
      v77 = v107;
      v78 = v71;
      (*v99)(v105, v67 + v68, v107);
      v79 = v100;
      v75(v100, v76, v77);
      v80 = v101;
      DayWeather.date.getter();
      v81 = v102;
      DayWeather.date.getter();
      LODWORD(v96) = static Date.< infix(_:_:)();
      v82 = *v98;
      v83 = v81;
      v84 = v103;
      (*v98)(v83, v103);
      v82(v80, v84);
      v85 = *v97;
      (*v97)(v79, v77);
      v85(v105, v77);
      if (v96)
      {
        v67 = v74;
        v25 = v104;
        if (v78 < v95 || v104 >= v95)
        {
          v27 = v94;
          swift_arrayInitWithTakeFrontToBack();
          v69 = v92;
          v68 = v93;
          v29 = v106;
        }

        else
        {
          v89 = v92;
          v68 = v93;
          v69 = v92;
          v42 = v78 == v95;
          v90 = v94;
          v27 = v94;
          v29 = v106;
          if (!v42)
          {
            swift_arrayInitWithTakeBackToFront();
            v27 = v90;
            v69 = v89;
          }
        }

        goto LABEL_36;
      }

      v86 = v104;
      if (v78 < v74 || v104 >= v74)
      {
        sub_100075134();
        swift_arrayInitWithTakeFrontToBack();
        v71 = v86;
        v67 = v73;
        v72 = v73;
        v70 = v94;
        v27 = v95;
        v29 = v106;
        v68 = v93;
      }

      else
      {
        v72 = v73;
        v42 = v74 == v78;
        v71 = v104;
        v67 = v73;
        v70 = v94;
        v27 = v95;
        v29 = v106;
        v68 = v93;
        if (!v42)
        {
          sub_100075134();
          swift_arrayInitWithTakeBackToFront();
          v71 = v86;
          v67 = v73;
          v72 = v73;
        }
      }
    }

    a10 = v27;
    v109 = v91[0];
  }

  else
  {
    v47 = v108;
    sub_1006A072C(v29, (v27 - v29) / v41, v108);
    v95 = v41;
    v96 = v47 + v45 * v41;
    v109 = v96;
    v104 = v25;
    while (v108 < v96 && v27 < v25)
    {
      v106 = v29;
      v49 = *v99;
      v50 = v105;
      v51 = v107;
      (*v99)(v105, v27, v107);
      v52 = v100;
      v49(v100, v108, v51);
      v53 = v101;
      DayWeather.date.getter();
      v54 = v102;
      DayWeather.date.getter();
      v55 = static Date.< infix(_:_:)();
      v56 = v27;
      v57 = *v98;
      v58 = v54;
      v59 = v103;
      (*v98)(v58, v103);
      v57(v53, v59);
      v60 = *v97;
      (*v97)(v52, v51);
      v60(v50, v51);
      if (v55)
      {
        v61 = v95;
        v27 = v56 + v95;
        v62 = v106;
        if (v106 < v56 || v106 >= v27)
        {
          sub_100075134();
          swift_arrayInitWithTakeFrontToBack();
          v25 = v104;
        }

        else
        {
          v25 = v104;
          if (v106 != v56)
          {
            sub_100075134();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v61 = v95;
        v64 = v108 + v95;
        v62 = v106;
        if (v106 < v108 || v106 >= v64)
        {
          swift_arrayInitWithTakeFrontToBack();
          v25 = v104;
          v27 = v56;
        }

        else
        {
          v25 = v104;
          v27 = v56;
          if (v106 != v108)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v110 = v64;
        v108 = v64;
      }

      v29 = v62 + v61;
      a10 = v29;
    }
  }

LABEL_58:
  sub_100309004(&a10, &v110, &v109);
  sub_10000C8F4();
}

unint64_t sub_1008634D4()
{
  result = qword_100CA7010;
  if (!qword_100CA7010)
  {
    v3 = sub_10022E824(&qword_100CA7000, &unk_100A3E7F0);
    result = swift_getWitnessTable(&protocol conformance descriptor for Forecast<A>, v3, v0, v1);
    atomic_store(result, &qword_100CA7010);
  }

  return result;
}

uint64_t sub_100863584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TemperatureChartKind();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v12 = v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v10, v14);
  v17 = (*(v12 + 88))(v16, v10);
  if (v17 == enum case for DetailCondition.conditions(_:))
  {
    (*(v12 + 8))(a1, v10);
    (*(v12 + 96))(v16, v10);
    (*(v6 + 32))(v9, v16, v4);
    v18 = (*(v6 + 88))(v9, v4);
    if (v18 != enum case for TemperatureChartKind.actual(_:))
    {
      v22 = v18;
      v23 = enum case for TemperatureChartKind.feelsLike(_:);
      type metadata accessor for DetailType();
      sub_100003A9C();
      v25 = *(v24 + 104);
      if (v22 != v23)
      {
        v25(a2, enum case for DetailType.temperature(_:));
        return (*(v6 + 8))(v9, v4);
      }

      v26 = enum case for DetailType.feelsLike(_:);
      v27 = a2;
      return v25(v27, v26);
    }

    v19 = &enum case for DetailType.temperature(_:);
  }

  else if (v17 == enum case for DetailCondition.humidity(_:))
  {
    v20 = sub_10001FA78();
    v21(v20);
    v19 = &enum case for DetailType.humidity(_:);
  }

  else if (v17 == enum case for DetailCondition.pressure(_:))
  {
    v28 = sub_10001FA78();
    v29(v28);
    v19 = &enum case for DetailType.pressure(_:);
  }

  else if (v17 == enum case for DetailCondition.precipitationTotal(_:))
  {
    v31 = sub_10001FA78();
    v32(v31);
    v19 = &enum case for DetailType.precipitationTotals(_:);
  }

  else if (v17 == enum case for DetailCondition.uvIndex(_:))
  {
    v33 = sub_10001FA78();
    v34(v33);
    v19 = &enum case for DetailType.uvIndex(_:);
  }

  else if (v17 == enum case for DetailCondition.visibility(_:))
  {
    v35 = sub_10001FA78();
    v36(v35);
    v19 = &enum case for DetailType.visibility(_:);
  }

  else
  {
    if (v17 != enum case for DetailCondition.wind(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v37 = sub_10001FA78();
    v38(v37);
    v19 = &enum case for DetailType.wind(_:);
  }

  v39 = *v19;
  type metadata accessor for DetailType();
  sub_100003A9C();
  v25 = *(v40 + 104);
  v27 = a2;
  v26 = v39;
  return v25(v27, v26);
}

void sub_100863990(uint64_t *a1)
{
  v2 = *(type metadata accessor for DebugLocationManager.DebugLocation(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309378();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_100864A48(v6);
  *a1 = v3;
}

void sub_100863A38()
{
  v1 = OBJC_IVAR____TtC7Weather27DebugLocationViewController_tableView;
  *(v0 + v1) = [objc_allocWithZone(UITableView) init];
  *(v0 + OBJC_IVAR____TtC7Weather27DebugLocationViewController_locations) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100863AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7Weather27DebugLocationViewController_tableView;
  *&v4[v10] = [objc_allocWithZone(UITableView) init];
  *&v4[OBJC_IVAR____TtC7Weather27DebugLocationViewController_locations] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC7Weather27DebugLocationViewController_locationManager] = a1;
  *&v4[OBJC_IVAR____TtC7Weather27DebugLocationViewController_weatherDataUpdater] = a2;
  v11 = &v4[OBJC_IVAR____TtC7Weather27DebugLocationViewController_dispatcher];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);
}

id sub_100863BC8()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC7Weather27DebugLocationViewController_tableView];
  [v2 setDelegate:v1];
  [v2 setDataSource:v1];
  result = [v1 view];
  if (result)
  {
    v4 = result;
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v2 setFrame:{v6, v8, v10, v12}];
    type metadata accessor for DebugLocationViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = sub_10001CF60();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v14];

    result = [v1 view];
    if (result)
    {
      v15 = result;
      [result addSubview:v2];

      [v2 reloadData];
      sub_100040690();

      v16 = static OS_dispatch_queue.main.getter();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      AsyncObservable.onNext(on:eager:block:)();

      return sub_100006F14(v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100863DD4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v8[0] = v2;

    sub_100863990(v8);
    *&v4[OBJC_IVAR____TtC7Weather27DebugLocationViewController_locations] = v8[0];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC7Weather27DebugLocationViewController_tableView);

    [v7 reloadData];
  }
}

unint64_t sub_100864010()
{
  v1 = v0;
  v2 = type metadata accessor for DebugLocationManager.DebugLocation(0);
  sub_1000037C4();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v8 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &aBlock - v10;
  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *&v0[OBJC_IVAR____TtC7Weather27DebugLocationViewController_locations];
  if (result >= *(v13 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v14 = *(v4 + 80);
  sub_1008649E4(v13 + ((v14 + 32) & ~v14) + *(v4 + 72) * result, v11);
  sub_100090A8C(&v11[*(v2 + 20)], 0, v15, v16, v17, v18, v19, v20, aBlock, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  v21 = [v0 navigationController];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 presentingViewController];

    if (v23)
    {
      sub_1008649E4(v11, v8);
      v24 = swift_allocObject();
      *(v24 + 16) = v1;
      sub_10068EFE8(v8, v24 + ((v14 + 24) & ~v14));
      v32 = sub_100865A44;
      v33 = v24;
      aBlock = _NSConcreteStackBlock;
      v29 = 1107296256;
      v30 = sub_1000742F0;
      v31 = &unk_100C717A8;
      v25 = _Block_copy(&aBlock);
      v26 = v1;

      [v23 dismissViewControllerAnimated:1 completion:v25];
      _Block_release(v25);
    }
  }

  sub_10001FA88();
  return sub_100865AA8(v11, v27);
}

uint64_t sub_100864268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + OBJC_IVAR____TtC7Weather27DebugLocationViewController_dispatcher;
  v8 = *(a1 + OBJC_IVAR____TtC7Weather27DebugLocationViewController_dispatcher);
  v9 = *(v7 + 8);
  v10 = *(type metadata accessor for DebugLocationManager.DebugLocation(0) + 20);
  v11 = type metadata accessor for Location();
  (*(*(v11 - 8) + 16))(v6, a2 + v10, v11);
  type metadata accessor for DebugAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_10004F034(v6, v13, v8, v9);
  sub_1000E17D8(v13);
  return sub_100865AA8(v6, type metadata accessor for MainAction);
}

unint64_t sub_1008644EC(void *a1)
{
  type metadata accessor for DebugLocationManager.DebugLocation(0);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC7Weather27DebugLocationViewController_locations);
  if (result >= *(v9 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1008649E4(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * result, v7);
  v10 = sub_10001CF60();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [a1 dequeueReusableCellWithIdentifier:v10 forIndexPath:isa];

  type metadata accessor for DebugLocationViewCell();
  v13 = swift_dynamicCastClassUnconditional();
  v14 = v12;
  [v13 setAccessoryType:0];
  v15 = [v13 textLabel];
  if (v15)
  {
    v16 = v15;
    v17 = Location.name.getter();
    sub_10030F7D8(v17, v18, v16);
  }

  v19 = [v13 detailTextLabel];
  if (v19)
  {
    v20 = v19;
    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100A2C3F0;
    v22 = *v7;
    *(v21 + 56) = &type metadata for Double;
    *(v21 + 64) = &protocol witness table for Double;
    *(v21 + 32) = v22;
    v23 = String.init(format:_:)();
    sub_10030F7D8(v23, v24, v20);
  }

  sub_10001FA88();
  sub_100865AA8(v7, v25);
  return v13;
}

id sub_100864854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", 1, v6);

  return v7;
}

uint64_t sub_1008649E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugLocationManager.DebugLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100864A48(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DebugLocationManager.DebugLocation(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for DebugLocationManager.DebugLocation(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100864D84(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_100864B78(0, v2, 1, a1);
  }
}

void sub_100864B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for DebugLocationManager.DebugLocation(0);
  __chkstk_darwin(v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v26 - v11);
  __chkstk_darwin(v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      do
      {
        sub_1008649E4(v22, v16);
        sub_1008649E4(v19, v12);
        v23 = *v16;
        v24 = *v12;
        sub_100865AA8(v12, type metadata accessor for DebugLocationManager.DebugLocation);
        sub_100865AA8(v16, type metadata accessor for DebugLocationManager.DebugLocation);
        if (v24 >= v23)
        {
          break;
        }

        if (!v17)
        {
          __break(1u);
          return;
        }

        sub_10068EFE8(v22, v9);
        swift_arrayInitWithTakeFrontToBack();
        sub_10068EFE8(v9, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_100864D84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v106 = a1;
  v118 = type metadata accessor for DebugLocationManager.DebugLocation(0);
  v112 = *(v118 - 8);
  __chkstk_darwin(v118);
  v109 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v117 = &v102 - v10;
  __chkstk_darwin(v11);
  v13 = (&v102 - v12);
  __chkstk_darwin(v14);
  v16 = (&v102 - v15);
  v114 = a3;
  v17 = *(a3 + 8);
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_100:
    a3 = *v106;
    if (!*v106)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v96 = v19 + 16;
      v95 = *(v19 + 2);
      for (i = v19; v95 >= 2; v19 = i)
      {
        if (!*v114)
        {
          goto LABEL_138;
        }

        v97 = &v19[16 * v95];
        v98 = *v97;
        v99 = &v96[2 * v95];
        v100 = *(v99 + 1);
        sub_100865604(*v114 + *(v112 + 72) * *v97, *v114 + *(v112 + 72) * *v99, *v114 + *(v112 + 72) * v100, a3);
        if (v5)
        {
          break;
        }

        if (v100 < v98)
        {
          goto LABEL_126;
        }

        if (v95 - 2 >= *v96)
        {
          goto LABEL_127;
        }

        *v97 = v98;
        *(v97 + 1) = v100;
        v101 = *v96 - v95;
        if (*v96 < v95)
        {
          goto LABEL_128;
        }

        v95 = *v96 - 1;
        sub_1003090FC(v99 + 16, v101, v99);
        *v96 = v95;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v19 = sub_100308E24();
    goto LABEL_102;
  }

  v104 = a4;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v110 = (&v102 - v15);
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    if (v18 + 1 < v17)
    {
      v22 = *v114;
      a3 = *(v112 + 72);
      i = v17;
      v116 = v18 + 1;
      v23 = v22 + a3 * v21;
      sub_1008649E4(v23, v16);
      sub_1008649E4(v22 + a3 * v20, v13);
      v24 = *v16;
      v25 = *v13;
      sub_100865AA8(v13, type metadata accessor for DebugLocationManager.DebugLocation);
      sub_100865AA8(v16, type metadata accessor for DebugLocationManager.DebugLocation);
      v26 = i;
      v105 = v20;
      v27 = v20 + 2;
      v113 = a3;
      v28 = v22 + a3 * (v20 + 2);
      while (1)
      {
        v29 = v27;
        if (++v116 >= v26)
        {
          break;
        }

        a3 = v25 < v24;
        sub_1008649E4(v28, v16);
        sub_1008649E4(v23, v13);
        v30 = *v16;
        v31 = *v13;
        sub_100865AA8(v13, type metadata accessor for DebugLocationManager.DebugLocation);
        sub_100865AA8(v16, type metadata accessor for DebugLocationManager.DebugLocation);
        v26 = i;
        v28 += v113;
        v23 += v113;
        v27 = v29 + 1;
        if (v25 < v24 == v31 >= v30)
        {
          goto LABEL_9;
        }
      }

      v116 = v26;
LABEL_9:
      if (v25 < v24)
      {
        v21 = v116;
        if (v116 < v105)
        {
          goto LABEL_132;
        }

        if (v105 >= v116)
        {
          v20 = v105;
          goto LABEL_31;
        }

        i = v19;
        v103 = v5;
        if (v26 >= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v26;
        }

        v33 = v113 * (v32 - 1);
        v34 = v113 * v32;
        v35 = v105 * v113;
        v36 = v105;
        do
        {
          if (v36 != --v21)
          {
            a3 = *v114;
            if (!*v114)
            {
              goto LABEL_139;
            }

            sub_10068EFE8(a3 + v35, v109);
            v37 = v35 < v33 || a3 + v35 >= a3 + v34;
            if (v37)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_10068EFE8(v109, a3 + v33);
          }

          ++v36;
          v33 -= v113;
          v34 -= v113;
          v35 += v113;
        }

        while (v36 < v21);
        v5 = v103;
        v19 = i;
      }

      v21 = v116;
      v20 = v105;
    }

LABEL_31:
    v38 = v114[1];
    if (v21 < v38)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_131;
      }

      if (v21 - v20 < v104)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_130;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10011E564();
      v19 = v93;
    }

    a3 = *(v19 + 2);
    v52 = a3 + 1;
    if (a3 >= *(v19 + 3) >> 1)
    {
      sub_10011E564();
      v19 = v94;
    }

    *(v19 + 2) = v52;
    v53 = v19 + 32;
    v54 = &v19[16 * a3 + 32];
    v55 = v116;
    *v54 = v20;
    *(v54 + 1) = v55;
    v113 = *v106;
    if (!v113)
    {
      goto LABEL_140;
    }

    if (a3)
    {
      i = v19;
      while (1)
      {
        v56 = v52 - 1;
        v57 = &v53[16 * v52 - 16];
        v58 = &v19[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v59 = *(v19 + 4);
          v60 = *(v19 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_68:
          if (v62)
          {
            goto LABEL_117;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_120;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_125;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v52 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v52 < 2)
        {
          goto LABEL_119;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_83:
        if (v77)
        {
          goto LABEL_122;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_124;
        }

        if (v84 < v76)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v56 - 1 >= v52)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v114)
        {
          goto LABEL_137;
        }

        v88 = &v53[16 * v56 - 16];
        v89 = *v88;
        a3 = v56;
        v90 = &v53[16 * v56];
        v91 = *(v90 + 1);
        sub_100865604(*v114 + *(v112 + 72) * *v88, *v114 + *(v112 + 72) * *v90, *v114 + *(v112 + 72) * v91, v113);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v91 < v89)
        {
          goto LABEL_112;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_113;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        if (a3 >= v5)
        {
          goto LABEL_114;
        }

        v52 = v5 - 1;
        sub_1003090FC(v90 + 16, v5 - 1 - a3, v90);
        v19 = i;
        *(i + 16) = v5 - 1;
        v92 = v5 > 2;
        v5 = 0;
        v16 = v110;
        if (!v92)
        {
          goto LABEL_97;
        }
      }

      v63 = &v53[16 * v52];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_115;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_116;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_118;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_121;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_129;
        }

        if (v61 < v87)
        {
          v56 = v52 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v17 = v114[1];
    v18 = v116;
    if (v116 >= v17)
    {
      goto LABEL_100;
    }
  }

  v39 = v20 + v104;
  if (__OFADD__(v20, v104))
  {
    goto LABEL_133;
  }

  if (v39 >= v38)
  {
    v39 = v114[1];
  }

  if (v39 < v20)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v21 == v39)
  {
    goto LABEL_47;
  }

  i = v19;
  v103 = v5;
  a3 = *v114;
  v40 = *(v112 + 72);
  v41 = *v114 + v40 * (v21 - 1);
  v42 = v20;
  v43 = -v40;
  v105 = v42;
  v44 = v42 - v21;
  v107 = v40;
  v108 = v39;
  v45 = a3 + v21 * v40;
LABEL_40:
  v116 = v21;
  v46 = v45;
  v111 = v44;
  v113 = v41;
  v47 = v41;
  while (1)
  {
    sub_1008649E4(v46, v16);
    sub_1008649E4(v47, v13);
    v48 = *v16;
    v49 = *v13;
    sub_100865AA8(v13, type metadata accessor for DebugLocationManager.DebugLocation);
    sub_100865AA8(v16, type metadata accessor for DebugLocationManager.DebugLocation);
    if (v49 >= v48)
    {
LABEL_45:
      v21 = v116 + 1;
      v41 = v113 + v107;
      v44 = v111 - 1;
      v45 += v107;
      if (v116 + 1 == v108)
      {
        v21 = v108;
        v5 = v103;
        v19 = i;
        v20 = v105;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!a3)
    {
      break;
    }

    v50 = v117;
    sub_10068EFE8(v46, v117);
    swift_arrayInitWithTakeFrontToBack();
    sub_10068EFE8(v50, v47);
    v47 += v43;
    v46 += v43;
    v37 = __CFADD__(v44++, 1);
    if (v37)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_100865604(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for DebugLocationManager.DebugLocation(0);
  __chkstk_darwin(v52);
  v10 = (v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (v46 - v12);
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v46[1] = v4;
  v20 = v16 / v15;
  v55 = a1;
  v54 = a4;
  v21 = v18 / v15;
  if (v16 / v15 >= v18 / v15)
  {
    v50 = a1;
    v48 = v10;
    sub_1006A087C(a2, v18 / v15, a4);
    v28 = a4 + v21 * v15;
    v29 = -v15;
    v30 = v28;
    v31 = a3;
    v49 = v29;
LABEL_37:
    v51 = a2 + v29;
    v32 = v31;
    v46[0] = v30;
    while (1)
    {
      if (v28 <= a4)
      {
        v55 = a2;
        v53 = v30;
        goto LABEL_59;
      }

      if (a2 <= v50)
      {
        break;
      }

      v47 = v30;
      v33 = a2;
      v34 = a4;
      v31 = v32 + v49;
      v35 = v28 + v49;
      v36 = v28;
      sub_1008649E4(v28 + v49, v13);
      v37 = v13;
      v38 = v48;
      sub_1008649E4(v51, v48);
      v39 = *v37;
      v40 = *v38;
      v41 = v38;
      v13 = v37;
      sub_100865AA8(v41, type metadata accessor for DebugLocationManager.DebugLocation);
      sub_100865AA8(v37, type metadata accessor for DebugLocationManager.DebugLocation);
      if (v40 < v39)
      {
        v43 = v32 < v33 || v31 >= v33;
        a4 = v34;
        if (v43)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v47;
          v29 = v49;
          v28 = v36;
        }

        else
        {
          v30 = v47;
          v17 = v32 == v33;
          v44 = v51;
          a2 = v51;
          v29 = v49;
          v28 = v36;
          if (!v17)
          {
            v45 = v47;
            swift_arrayInitWithTakeBackToFront();
            v28 = v36;
            a2 = v44;
            v30 = v45;
          }
        }

        goto LABEL_37;
      }

      v42 = v32 < v36 || v31 >= v36;
      a4 = v34;
      if (v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 = v31;
        v28 = v35;
        v30 = v35;
        a2 = v33;
      }

      else
      {
        v30 = v35;
        v17 = v36 == v32;
        v32 = v31;
        v28 = v35;
        a2 = v33;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = v31;
          v28 = v35;
          v30 = v35;
        }
      }
    }

    v55 = a2;
    v53 = v46[0];
  }

  else
  {
    sub_1006A087C(a1, v16 / v15, a4);
    v22 = a4 + v20 * v15;
    v53 = v22;
    while (a4 < v22 && a2 < a3)
    {
      sub_1008649E4(a2, v13);
      sub_1008649E4(a4, v10);
      v24 = *v13;
      v25 = *v10;
      sub_100865AA8(v10, type metadata accessor for DebugLocationManager.DebugLocation);
      sub_100865AA8(v13, type metadata accessor for DebugLocationManager.DebugLocation);
      if (v25 >= v24)
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v54 = a4 + v15;
        a4 += v15;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      a1 += v15;
      v55 = a1;
    }
  }

LABEL_59:
  sub_10030901C(&v55, &v54, &v53);
}

uint64_t sub_100865A44()
{
  v1 = *(type metadata accessor for DebugLocationManager.DebugLocation(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100864268(v2, v3);
}

uint64_t sub_100865AA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_100865B04(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2928 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2938 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2930 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2920 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2918 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_100865C70(char a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v80 = &v75 - v10;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  v15 = type metadata accessor for LocationComponentViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  __chkstk_darwin(v21);
  v23 = &v75 - v22;
  __chkstk_darwin(v24);
  v26 = &v75 - v25;
  v27 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  v32 = &v75 - v31;
  __chkstk_darwin(v33);
  v35 = &v75 - v34;
  sub_100865B04(a1, a2);
  v37 = v36;
  v38 = OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v38, v14, &qword_100CA5008, &unk_100A2F7B0);
  v39 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v14, 1, v39) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v40], v23, v41);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v23, v26, v42);
    sub_100566A5C(v37, v83);
    if ((v84 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v26, v32, v44);
      v43 = 0;
      v45 = &v32[*(v6 + 20)];
      v46 = v83[1];
      *v45 = v83[0];
      *(v45 + 1) = v46;
      goto LABEL_7;
    }

    sub_1003169AC(v26, type metadata accessor for LocationComponentViewModel);
  }

  v43 = 1;
LABEL_7:
  v47 = v77;
  sub_10001B350(v32, v43, 1, v6);
  sub_1003168DC(v32, v35);
  sub_10001B350(v47, 1, 1, v6);
  sub_10001BD64();
  sub_10031694C(v48 + v49, v20, v50);
  sub_100566A94(v37, v85);
  v51 = v78;
  if (v86 & 1) != 0 || (sub_100011474(), v52 = v80, sub_1001B6FB0(v20, v80, v53), v54 = (v52 + *(v6 + 20)), v55 = v85[1], *v54 = v85[0], v54[1] = v55, sub_100035AD0(v35, v51, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v58 = v76, sub_10031694C(v56 + v57, v76, v59), sub_100566AB0(v37, v87), v60 = v81, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v58, v60, v61);
    v62 = (v60 + *(v6 + 20));
    v63 = v87[1];
    *v62 = v87[0];
    v62[1] = v63;
    sub_10001BD64();
    v66 = v79;
    sub_10031694C(v64 + v65, v79, v67);
    sub_100566AE8(v37, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v68 = v66;
      v69 = v82;
      sub_1001B6FB0(v68, v82, v70);
      v71 = (v69 + *(v6 + 20));
      v72 = v89[1];
      *v71 = v89[0];
      v71[1] = v72;
      v73 = sub_100924C14(v47, v52, v51, v60, v69);
      sub_1000180EC(v35, &qword_100CAC7F8, &qword_100A65EA0);
      return v73;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100866280(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v116 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v121 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v16 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_nextHourPrecipitation, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v118 = v13 + 2 * v14;
    v119 = v14;
    v30 = v14;
    v31 = swift_allocObject();
    v122 = xmmword_100A2D320;
    *(v31 + 16) = xmmword_100A2D320;
    v32 = a1;
    v33 = *(a1 + 16);
    v34 = v32;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v31 + v13 + v30, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v35;
    *(v12 + 144) = v36;
    v120 = v15;
    v37 = swift_allocObject();
    sub_1000056EC(v37);
    v39 = v38 + v13;
    v40 = *(v34 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v39 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v41;
    *(v12 + 168) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v13;
    v46 = v121;
    v47 = *(v121 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v48 = v119;
    sub_10031694C(v47 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v49;
    *(v12 + 192) = v50;
    v51 = sub_10000C998();
    sub_1000056EC(v51);
    v53 = v52 + v13;
    v54 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v53 + v48;
    v56 = v48;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 200) = sub_1001B38A0(v31);
    *(v12 + 208) = v57;
    *(v12 + 216) = v58;
    v59 = sub_10000C998();
    sub_100003E18(v59);
    v61 = v60 + v13;
    v62 = *(v46 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v13, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 224) = sub_1001B38A0(v59);
    *(v12 + 232) = v63;
    *(v12 + 240) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v65 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v70 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_nextHourPrecipitation, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v82;
    *(v12 + 120) = v83;
    sub_100016B54();
    v120 = v69;
    v84 = swift_allocObject();
    sub_1000056EC(v84);
    sub_10031694C(v9, v85 + v66, v7);
    *(v12 + 128) = sub_1001B38A0(v70);
    *(v12 + 136) = v86;
    *(v12 + 144) = v87;
    v88 = v67;
    v119 = v68;
    v89 = v66 + 2 * v67;
    v90 = swift_allocObject();
    v116 = xmmword_100A2D320;
    *(v90 + 16) = xmmword_100A2D320;
    *&v122 = v9;
    v91 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v117 = v88;
    sub_10031694C(v91 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v90 + v66 + v88, v7);
    *(v12 + 152) = sub_1001B38A0(v90);
    *(v12 + 160) = v92;
    *(v12 + 168) = v93;
    v118 = v89;
    v94 = swift_allocObject();
    *(v94 + 16) = v116;
    v95 = v121;
    v96 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v94 + v66 + v88, v7);
    *(v12 + 176) = sub_1001B38A0(v94);
    *(v12 + 184) = v97;
    *(v12 + 192) = v98;
    v99 = swift_allocObject();
    *(v99 + 16) = 2;
    *(v99 + 24) = 4;
    v100 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v101 = v117;
    sub_10031694C(v100 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v99 + v66 + v117, v7);
    *(v12 + 200) = sub_1001B38A0(v99);
    *(v12 + 208) = v102;
    *(v12 + 216) = v103;
    v104 = swift_allocObject();
    v105 = sub_100017A70(v104) + v66;
    v106 = v121;
    v107 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v105 + v101, v7);
    *(v12 + 224) = sub_1001B38A0(v104);
    *(v12 + 232) = v108;
    *(v12 + 240) = v109;
    v110 = swift_allocObject();
    v111 = sub_100017A70(v110) + v66;
    v112 = *(v106 + 16);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v111, v7);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v111 + v101, v7);
    *(v12 + 248) = sub_1001B38A0(v110);
    *(v12 + 256) = v113;
    *(v12 + 264) = v114;
    sub_1003169AC(v122, v7);
  }

  return v12;
}

void sub_100866B40()
{
  v34[0] = xmmword_100A2C3F0;
  v34[1] = xmmword_100A3BBF0;
  v33[0] = xmmword_100A3BB70;
  v33[1] = xmmword_100A3BBA0;
  v35 = v34;
  v36 = v33;
  v32[0] = xmmword_100A3BBB0;
  v32[1] = xmmword_100A3BC00;
  v31[0] = xmmword_100A3BB70;
  v31[1] = xmmword_100A3BBD0;
  v37 = v32;
  v38 = v31;
  v30[0] = xmmword_100A2C3F0;
  v30[1] = xmmword_100A3BC00;
  v29[0] = xmmword_100A3BB70;
  v29[1] = xmmword_100A41B80;
  v39 = v30;
  v40 = v29;
  v28[0] = xmmword_100A3BBB0;
  v28[1] = xmmword_100A3BBF0;
  v27[0] = xmmword_100A3BB70;
  v27[1] = xmmword_100A2C3F0;
  v41 = v28;
  v42 = v27;
  v26[0] = xmmword_100A2C3F0;
  v26[1] = xmmword_100A3BBC0;
  v25[0] = xmmword_100A2C3F0;
  v25[1] = xmmword_100A3BC10;
  v43 = v26;
  v44 = v25;
  v24[0] = xmmword_100A3BB70;
  v24[1] = xmmword_100A3BBB0;
  *(&v22 + 1) = 2;
  v23 = xmmword_100A3BC20;
  sub_10003C6E4(v24, v12, v13, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19, v20, v21, 1);
  v16 = v0;
  v17 = v1;
  v45 = v2;
  v46 = &v16;
  sub_10004EBF0(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  qword_100D91188 = v11;
}

void sub_100866C4C()
{
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC00;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBA0;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC20;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3BBD0;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BC00;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A2C3F0;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC10;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC30;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BB80;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BB80;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC10;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC30;
  v27 = v2;
  v28 = v1;
  sub_100559E60();
  qword_100D91190 = v0;
}

void sub_100866D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BB80;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBA0;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BB80;
  v19[0] = 0;
  v19[1] = 4;
  v20 = xmmword_100A3BBD0;
  v26 = v21;
  v27 = v19;
  v18[0] = xmmword_100A3BBD0;
  v18[1] = xmmword_100A3BC50;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BB70;
  v28 = v18;
  v29 = v17;
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BC50;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v30 = v16;
  v31 = v15;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BB80;
  v13[0] = xmmword_100A3BBB0;
  v13[1] = xmmword_100A3BB80;
  v32 = v14;
  v33 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC60;
  v34 = v12;
  v35 = v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC40;
  v36 = v10;
  v37 = v9;
  sub_10004EBF0(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D91198 = v8;
}

void sub_100866E74()
{
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BC50;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v17 = v16;
  v18 = v15;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC50;
  v11 = 0;
  v12 = xmmword_100A3BC70;
  v13 = 2;
  v19 = v14;
  v20 = &v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v21 = v10;
  v22 = v9;
  v8[0] = xmmword_100A2D320;
  v8[1] = xmmword_100A3BBB0;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BC50;
  v23 = v8;
  v24 = v7;
  v6[0] = xmmword_100A3BBB0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v25 = v6;
  v26 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v27 = v4;
  v28 = v3;
  v2[0] = xmmword_100A3BC40;
  v2[1] = xmmword_100A3BBD0;
  v1[0] = xmmword_100A3BBD0;
  v1[1] = xmmword_100A3BBD0;
  v29 = v2;
  v30 = v1;
  sub_100559E60();
  qword_100D911A0 = v0;
}

void sub_100866F90()
{
  v37[0] = xmmword_100A3BC50;
  v37[1] = xmmword_100A3BC60;
  v35 = 1;
  v36 = 4;
  v38 = v37;
  v39 = &v34;
  v33[0] = xmmword_100A3BC60;
  v33[1] = xmmword_100A3BC40;
  v34 = xmmword_100A3BB70;
  v32[0] = xmmword_100A41B90;
  v32[1] = xmmword_100A3BBB0;
  v40 = v33;
  v41 = v32;
  v31[0] = xmmword_100A3BBD0;
  v31[1] = xmmword_100A3BC60;
  v30[0] = xmmword_100A3BC90;
  v30[1] = xmmword_100A3BD20;
  v42 = v31;
  v43 = v30;
  v29[0] = xmmword_100A3BB70;
  v29[1] = xmmword_100A3BC60;
  v28[0] = xmmword_100A2D320;
  v28[1] = xmmword_100A2C3F0;
  v44 = v29;
  v45 = v28;
  v27[0] = xmmword_100A3BC60;
  v27[1] = xmmword_100A3BC60;
  v26[0] = xmmword_100A3BC40;
  v26[1] = xmmword_100A3BC40;
  v46 = v27;
  v47 = v26;
  v25[0] = xmmword_100A3BB70;
  v25[1] = xmmword_100A3BBB0;
  *(&v23 + 1) = 3;
  v24 = xmmword_100A3BC40;
  sub_10003C6E4(v25, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, 2);
  v17 = v1;
  v18 = v0;
  v48 = v2;
  v49 = &v17;
  sub_10004EBF0(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  qword_100D911A8 = v12;
}

uint64_t sub_1008670A8(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v35 = v6;
  __chkstk_darwin(v7);
  sub_100003878();
  v34 = v8;
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for LocationViewComponent(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v32 - v24;

  sub_1005D71C4(v26, a2);
  v33 = v27;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather35LocationNoAqiSevereNhpConfiguration8_Storage_map, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10001B350(v25, 0, 1, v4);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather35LocationNoAqiSevereNhpConfiguration8_Storage_nextHourPrecipitation, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather35LocationNoAqiSevereNhpConfiguration8_Storage_severeAlert, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v25, v22, &qword_100CA5008, &unk_100A2F7B0);
  v28 = v34;
  sub_10031694C(v14, v34, type metadata accessor for LocationComponentContainerViewModel);
  v29 = v35;
  sub_10031694C(v11, v35, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for NoAqiSevereNhpContent._Storage(0);
  swift_allocObject();
  v30 = sub_1002D44DC(v33, v22, v28, v29);
  sub_1003169AC(v11, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v25, &qword_100CA5008, &unk_100A2F7B0);
  return v30;
}

uint64_t sub_1008673F0(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_10068A650(a2, a3);
  }

  v7 = v3[5];
  v8 = v3[6];
  sub_1000161C0(v3 + 2, v7);
  return (*(v8 + 16))(a2, a3, v7, v8);
}

uint64_t sub_10086749C(uint64_t a1)
{
  result = type metadata accessor for FeelsLikeComponentPreprocessedDataModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10086750C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
  __chkstk_darwin(v4);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CDF490, &qword_100A8EBE0);
  sub_1000037C4();
  v17 = v7;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for FeelsLikeComponent(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_100867964();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v18;
    sub_1008679B8(&qword_100CDF4A0, byte_100A7E788);
    v15 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v10, v6);
    sub_10012A688(v15, v13, type metadata accessor for FeelsLikeComponentPreprocessedDataModel);
    sub_10012A688(v13, v14, type metadata accessor for FeelsLikeComponent);
  }

  return sub_100006F14(a1);
}

uint64_t sub_100867760(void *a1)
{
  v2 = sub_10022C350(&qword_100CDF4A8, &qword_100A8EBE8);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_100867964();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
  sub_1008679B8(&qword_100CDF4B0, byte_100A7E760);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1008678B8(uint64_t a1)
{
  v2 = sub_100867964();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008678F4(uint64_t a1)
{
  v2 = sub_100867964();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100867964()
{
  result = qword_100CDF498;
  if (!qword_100CDF498)
  {
    result = swift_getWitnessTable(asc_100A8ECB4, &type metadata for FeelsLikeComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDF498);
  }

  return result;
}

uint64_t sub_1008679B8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeelsLikeComponent.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100867AAC()
{
  result = qword_100CDF4B8;
  if (!qword_100CDF4B8)
  {
    result = swift_getWitnessTable(aU_9, &type metadata for FeelsLikeComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDF4B8);
  }

  return result;
}

unint64_t sub_100867B04()
{
  result = qword_100CDF4C0;
  if (!qword_100CDF4C0)
  {
    result = swift_getWitnessTable(byte_100A8EBFC, &type metadata for FeelsLikeComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDF4C0);
  }

  return result;
}

unint64_t sub_100867B5C()
{
  result = qword_100CDF4C8;
  if (!qword_100CDF4C8)
  {
    result = swift_getWitnessTable(byte_100A8EC24, &type metadata for FeelsLikeComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDF4C8);
  }

  return result;
}

uint64_t sub_100867BB0()
{
  v1 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  if (*(v0 + 32))
  {
    v8 = *(v0 + 32);
  }

  else
  {
    (*(v3 + 104))(v7, enum case for Font.TextStyle.largeTitle(_:), v1);
    static Font.Weight.medium.getter();
    v8 = static Font.system(_:weight:)();
    (*(v3 + 8))(v7, v1);
    *(v0 + 32) = v8;
  }

  return v8;
}

uint64_t sub_100867CC8()
{
  v1 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  if (*(v0 + 48))
  {
    v15 = *(v0 + 48);
  }

  else
  {
    (*(v10 + 104))(v14, enum case for Font.TextStyle.largeTitle(_:), v8);
    static Font.Weight.medium.getter();
    static Font.system(_:weight:)();
    (*(v10 + 8))(v14, v8);
    (*(v3 + 104))(v7, enum case for Font.Leading.tight(_:), v1);
    v15 = Font.leading(_:)();

    (*(v3 + 8))(v7, v1);
    *(v0 + 48) = v15;
  }

  return v15;
}

uint64_t sub_100867EA4()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_100867BB0();
    *(v0 + 80) = v1;
  }

  return v1;
}

double sub_100867F00()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = 0x3FF0000000000000;
  *(v0 + 104) = 0;
  return 1.0;
}

void sub_100867FB4()
{
  type metadata accessor for VisibilityChartHeaderStyle();
  v0 = swift_allocObject();
  sub_1004669B4();
  qword_100D911B8 = v0;
}

uint64_t sub_100868040(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NextHourPrecipitationComponentViewModel(0);

  return static NextHourPrecipitationChartViewModel.== infix(_:_:)();
}

uint64_t type metadata accessor for ConditionDetailChartFooterView(uint64_t a1)
{
  result = qword_100CDF768;
  if (!qword_100CDF768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100868134(uint64_t a1)
{
  result = type metadata accessor for ConditionDetailChartFooterViewModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_1004DCED0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008681D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v49[1] = sub_10022C350(&qword_100CDF7A0, &qword_100A8EF20);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v49 - v7;
  v50 = type metadata accessor for TemperatureChartPickerView(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for TemperatureChartKind();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_1000037D8();
  v17 = v16 - v15;
  v49[2] = sub_10022C350(&qword_100CDF7A8, &unk_100A8EF28);
  sub_1000037E8();
  __chkstk_darwin(v18);
  v20 = v49 - v19;
  type metadata accessor for ConditionDetailChartFooterViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = (v23 - v22);
  sub_100868768(v2, v23 - v22, type metadata accessor for ConditionDetailChartFooterViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v17, v24, v13);
    (*(v14 + 16))(v12, v17, v13);
    v25 = type metadata accessor for ConditionDetailChartFooterView(0);
    sub_100035B30(v2 + *(v25 + 20), v12 + *(v50 + 20));
    sub_10001B350(v8, 1, 1, v13);
    sub_100868690(v8, v5);
    State.init(wrappedValue:)();
    sub_100868700(v8);
    sub_100868768(v12, v20, type metadata accessor for TemperatureChartPickerView);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA6438, &qword_100A31270);
    sub_100287740();
    sub_1008687C8();
    _ConditionalContent<>.init(storage:)();
    sub_100868820(v12);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    v27 = v24[1];
    v52 = *v24;
    v53 = v27;
    sub_10002D5A4();
    v28 = Text.init<A>(_:)();
    v30 = v29;
    v32 = v31;
    static Font.footnote.getter();
    v33 = Text.font(_:)();
    v35 = v34;
    v37 = v36;

    sub_10010CD64(v28, v30, v32 & 1);

    v52 = static Color.secondary.getter();
    v38 = Text.foregroundStyle<A>(_:)();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_10010CD64(v33, v35, v37 & 1);

    LOBYTE(v28) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v52) = v42 & 1;
    v54 = 0;
    *v20 = v38;
    *(v20 + 1) = v40;
    v20[16] = v42 & 1;
    *(v20 + 3) = v44;
    v20[32] = v28;
    *(v20 + 5) = v45;
    *(v20 + 6) = v46;
    *(v20 + 7) = v47;
    *(v20 + 8) = v48;
    v20[72] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA6438, &qword_100A31270);
    sub_100287740();
    sub_1008687C8();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100868690(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CDF7A0, &qword_100A8EF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100868700(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CDF7A0, &qword_100A8EF20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100868768(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1008687C8()
{
  result = qword_100CDF7B0;
  if (!qword_100CDF7B0)
  {
    v3 = type metadata accessor for TemperatureChartPickerView(255);
    result = swift_getWitnessTable(asc_100AA1798, v3, v0, v1);
    atomic_store(result, &qword_100CDF7B0);
  }

  return result;
}

uint64_t sub_100868820(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureChartPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10086887C()
{
  result = qword_100CDF7B8;
  if (!qword_100CDF7B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDF7C0, &qword_100A8EF38);
    v4[0] = sub_100287740();
    v4[1] = sub_1008687C8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDF7B8);
  }

  return result;
}

uint64_t sub_100868930@<X0>(uint64_t a1@<X8>)
{
  v1 = type metadata accessor for WindComponentViewModel(0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000038E4();
  v64 = v3;
  v4 = sub_1000038CC();
  v5 = type metadata accessor for UVIndexComponentViewModel(v4);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000038E4();
  v63 = v7;
  sub_1000038CC();
  type metadata accessor for SunriseSunsetViewModel();
  sub_1000037C4();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v9 = sub_1000038CC();
  type metadata accessor for PressureComponentViewModel(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for MoonComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for AttributeContainer();
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_1000038E4();
  v20 = sub_1000038CC();
  type metadata accessor for FeelsLikeComponentViewModel(v20);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = type metadata accessor for AirQualityComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  type metadata accessor for LocationComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_1000037D8();
  v33 = (v32 - v31);
  sub_1001B4294(v66, v32 - v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xDu:
      sub_1001B42FC(v33, type metadata accessor for LocationComponentViewModel);
      goto LABEL_3;
    case 2u:
      v37 = sub_100024B38();
      sub_10086A570(v37, v24, v38);

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      sub_100013DB0();
      sub_1001B42FC(v24, v39);
      v34 = type metadata accessor for AttributedString();
      v35 = a1;
      goto LABEL_18;
    case 4u:
      sub_100386FA4(v33[1], v33[2]);

      sub_100017F3C();
      AttributedString.init(_:attributes:)();
      v34 = type metadata accessor for AttributedString();
      v35 = a1;
      goto LABEL_18;
    case 6u:
      v60 = sub_100024B38();
      sub_10086A570(v60, v17, v61);

      sub_100017F3C();
      sub_100015024();
      v56 = type metadata accessor for MoonComponentViewModel;
      v57 = v17;
      goto LABEL_16;
    case 0xAu:

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();

      v34 = type metadata accessor for AttributedString();
      v35 = a1;
      goto LABEL_18;
    case 0xBu:
      v54 = sub_100024B38();
      sub_10086A570(v54, v13, v55);

      sub_100017F3C();
      sub_100015024();
      v56 = type metadata accessor for PressureComponentViewModel;
      v57 = v13;
      goto LABEL_16;
    case 0xCu:
    case 0x13u:
LABEL_3:
      v34 = type metadata accessor for AttributedString();
      v35 = a1;
      v36 = 1;
      return sub_10001B350(v35, v36, 1, v34);
    case 0xEu:
      v40 = sub_100020B1C();
      v41(v40);
      SunriseSunsetViewModel.accessibilityDescription.getter();
      sub_100017F3C();
      sub_100015024();
      v42 = sub_100020B1C();
      v43(v42);
      goto LABEL_17;
    case 0xFu:
      memcpy(__dst, v33, 0xB0uLL);

      sub_100017F3C();
      sub_100015024();
      sub_100470A18(__dst);
      goto LABEL_17;
    case 0x10u:
      v44 = sub_100024B38();
      v45 = v63;
      sub_10086A570(v44, v63, v46);
      sub_1009A0F10();
      sub_100017F3C();
      sub_100015024();
      v47 = type metadata accessor for UVIndexComponentViewModel;
      goto LABEL_13;
    case 0x11u:

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();

      v34 = type metadata accessor for AttributedString();
      v35 = a1;
      goto LABEL_18;
    case 0x12u:
      v58 = sub_100024B38();
      v45 = v64;
      sub_10086A570(v58, v64, v59);

      sub_100017F3C();
      sub_100015024();
      v47 = type metadata accessor for WindComponentViewModel;
LABEL_13:
      v56 = v47;
      v57 = v45;
LABEL_16:
      sub_1001B42FC(v57, v56);
LABEL_17:
      v34 = type metadata accessor for AttributedString();
      v35 = v24;
LABEL_18:
      v36 = 0;
      break;
    default:
      v48 = sub_100024B38();
      sub_10086A570(v48, v29, v49);
      v50 = *(v25 + 60);
      v51 = type metadata accessor for AttributedString();
      sub_1000037E8();
      (*(v52 + 16))(a1, v29 + v50, v51);
      sub_10004EC0C();
      sub_1001B42FC(v29, v53);
      v35 = a1;
      v36 = 0;
      v34 = v51;
      break;
  }

  return sub_10001B350(v35, v36, 1, v34);
}

BOOL sub_100869090(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  type metadata accessor for LocationComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  sub_1001B4294(v4, &v18 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10001FAA0();
  sub_1001B42FC(v13, v15);
  if (EnumCaseMultiPayload == 5 && (a3 & 1) != 0)
  {
    return 0;
  }

  if (a1 == 3 || *(a2 + 8) == 1)
  {
    return 1;
  }

  if (qword_100CA24D0 != -1)
  {
    swift_once();
  }

  if (byte_100D90788 != 1)
  {
    return 1;
  }

  type metadata accessor for DisplayMetrics(0);
  if (DynamicTypeSize.isAccessibilitySize.getter())
  {
    return 1;
  }

  if ((byte_100D90788 != 1 || (DynamicTypeSize.isAccessibilitySize.getter() & 1) != 0 || !sub_10029C3DC(*a2) || *(a2 + 17) != 1) && (sub_1004B5750() & 1) == 0)
  {
    return 1;
  }

  sub_1001B4294(v4, v10);
  sub_100003984();
  v16 = swift_getEnumCaseMultiPayload() != 5;
  sub_1001B42FC(v10, type metadata accessor for LocationComponentViewModel);
  return v16;
}

uint64_t sub_100869268(uint64_t *a1, double *a2)
{
  v277 = a1;
  v278 = a2;
  v2 = type metadata accessor for WindComponentViewModel(0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000038E4();
  v261 = v4;
  v5 = sub_1000038CC();
  v6 = type metadata accessor for UVIndexComponentViewModel(v5);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000038E4();
  v259 = v8;
  sub_1000038CC();
  type metadata accessor for SunriseSunsetViewModel();
  sub_1000037C4();
  v275 = v10;
  v276 = v9;
  __chkstk_darwin(v9);
  sub_1000038E4();
  v258 = v11;
  v12 = sub_1000038CC();
  v13 = type metadata accessor for SevereAlertComponentViewModel(v12);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_1000038E4();
  v257 = v15;
  v16 = sub_1000038CC();
  v17 = type metadata accessor for PressureComponentViewModel(v16);
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_1000038E4();
  v256 = v19;
  v20 = sub_1000038CC();
  v246 = type metadata accessor for NotificationsOptInComponentViewModel(v20);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000038E4();
  v260 = v22;
  v23 = sub_1000038CC();
  HourPrecipitationComponentViewModel = type metadata accessor for NextHourPrecipitationComponentViewModel(v23);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000038E4();
  v255 = v25;
  v26 = sub_1000038CC();
  v27 = type metadata accessor for NewsArticleComponentViewModel(v26);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_1000038E4();
  v254 = v29;
  v30 = sub_1000038CC();
  v31 = type metadata accessor for MoonComponentViewModel(v30);
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_1000038E4();
  v253 = v33;
  v34 = sub_1000038CC();
  v35 = type metadata accessor for MapComponentViewModel(v34);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_1000038E4();
  v252 = v37;
  v38 = sub_1000038CC();
  v39 = type metadata accessor for HourlyForecastComponentViewModel(v38);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_1000038E4();
  v251 = v41;
  v42 = sub_1000038CC();
  v43 = type metadata accessor for FeelsLikeComponentViewModel(v42);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_1000038E4();
  v250 = v45;
  v46 = sub_1000038CC();
  v47 = type metadata accessor for DailyForecastComponentViewModel(v46);
  v48 = sub_100003810(v47);
  __chkstk_darwin(v48);
  sub_1000038E4();
  v249 = v49;
  v50 = sub_1000038CC();
  v51 = type metadata accessor for AirQualityComponentViewModel(v50);
  v52 = sub_100003810(v51);
  __chkstk_darwin(v52);
  sub_1000038E4();
  v247 = v53;
  v54 = sub_1000038CC();
  type metadata accessor for LocationComponentViewModel(v54);
  sub_1000037E8();
  __chkstk_darwin(v55);
  v273 = (&v246 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v268 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v272 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v266 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v271 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v270 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v265 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v267 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v262 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v274 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v269 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v264 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v263 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  v83 = &v246 - v82;
  __chkstk_darwin(v84);
  v86 = &v246 - v85;
  __chkstk_darwin(v87);
  v89 = &v246 - v88;
  __chkstk_darwin(v90);
  v92 = &v246 - v91;
  __chkstk_darwin(v93);
  v95 = (&v246 - v94);
  __chkstk_darwin(v96);
  v98 = (&v246 - v97);
  v99 = sub_10022C350(&qword_100CDF908, &qword_100A8F040);
  v100 = sub_100003810(v99);
  __chkstk_darwin(v100);
  v102 = (&v246 - v101);
  v104 = &v246 + *(v103 + 56) - v101;
  sub_1001B4294(v277, &v246 - v101);
  v277 = v104;
  sub_1001B4294(v278, v104);
  v278 = v102;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v166 = sub_1000233C0();
      sub_1001B4294(v166, v95);
      if (sub_100004CA0() == 1)
      {
        v167 = sub_1000167A4();
        v168 = v249;
        sub_10086A570(v167, v249, v169);
        v115 = sub_1006967BC(v95, v168);
        v152 = type metadata accessor for DailyForecastComponentViewModel;
        sub_1001B42FC(v168, type metadata accessor for DailyForecastComponentViewModel);
        v153 = v95;
        goto LABEL_62;
      }

      v223 = type metadata accessor for DailyForecastComponentViewModel;
      v224 = v95;
      goto LABEL_97;
    case 2u:
      v148 = sub_1000233C0();
      sub_1001B4294(v148, v92);
      if (sub_100004CA0() == 2)
      {
        v149 = sub_1000167A4();
        v150 = v250;
        sub_10086A570(v149, v250, v151);
        v115 = sub_1003CE238();
        v152 = type metadata accessor for FeelsLikeComponentViewModel;
        sub_1001B42FC(v150, type metadata accessor for FeelsLikeComponentViewModel);
        v153 = v92;
        goto LABEL_62;
      }

      sub_100013DB0();
      v224 = v92;
      goto LABEL_97;
    case 3u:
      v156 = sub_1000233C0();
      sub_1001B4294(v156, v89);
      v157 = v277;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v158 = v251;
        sub_10086A570(v157, v251, type metadata accessor for HourlyForecastComponentViewModel);
        sub_1005FEA54();
        v115 = v159;
        sub_1001B42FC(v158, type metadata accessor for HourlyForecastComponentViewModel);
        v153 = v89;
        v160 = type metadata accessor for HourlyForecastComponentViewModel;
        goto LABEL_63;
      }

      v223 = type metadata accessor for HourlyForecastComponentViewModel;
      v224 = v89;
      goto LABEL_97;
    case 4u:
      v128 = sub_1000233C0();
      sub_1001B4294(v128, v86);
      v130 = *(v86 + 1);
      v129 = *(v86 + 2);
      v131 = v277;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_89;
      }

      if (*v86 != *v131)
      {

        goto LABEL_126;
      }

      if (v130 == *(v131 + 8) && v129 == *(v131 + 16))
      {

        goto LABEL_112;
      }

      v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v133)
      {
        goto LABEL_112;
      }

      goto LABEL_126;
    case 5u:
      v190 = sub_1000233C0();
      sub_1001B4294(v190, v83);
      if (sub_100004CA0() == 5)
      {
        v191 = sub_1000167A4();
        v192 = v252;
        sub_10086A570(v191, v252, v193);
        v115 = sub_1003C7DB4(v83, v192);
        v152 = type metadata accessor for MapComponentViewModel;
        sub_1001B42FC(v192, type metadata accessor for MapComponentViewModel);
        v153 = v83;
        goto LABEL_62;
      }

      v223 = type metadata accessor for MapComponentViewModel;
      v224 = v83;
      goto LABEL_97;
    case 6u:
      v199 = sub_1000233C0();
      v108 = v263;
      sub_1001B4294(v199, v263);
      if (sub_100004CA0() == 6)
      {
        v200 = sub_1000167A4();
        v110 = v253;
        sub_10086A570(v200, v253, v201);
        v202 = sub_100003984();
        v115 = sub_1003B3618(v202, v203);
        v116 = type metadata accessor for MoonComponentViewModel;
        goto LABEL_61;
      }

      v222 = type metadata accessor for MoonComponentViewModel;
      goto LABEL_96;
    case 7u:
      v161 = sub_1000233C0();
      v108 = v264;
      sub_1001B4294(v161, v264);
      if (sub_100004CA0() == 7)
      {
        v162 = sub_1000167A4();
        v110 = v254;
        sub_10086A570(v162, v254, v163);
        v164 = sub_100003984();
        v115 = sub_1003545AC(v164, v165);
        v116 = type metadata accessor for NewsArticleComponentViewModel;
        goto LABEL_61;
      }

      v222 = type metadata accessor for NewsArticleComponentViewModel;
      goto LABEL_96;
    case 8u:
      v213 = sub_1000233C0();
      v108 = v269;
      sub_1001B4294(v213, v269);
      if (sub_100004CA0() != 8)
      {
        v222 = type metadata accessor for NextHourPrecipitationComponentViewModel;
        goto LABEL_96;
      }

      v214 = sub_1000167A4();
      v215 = v255;
      sub_10086A570(v214, v255, v216);
      v217 = *v108 == *v215 && v108[1] == v215[1];
      if (v217 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static NextHourPrecipitationChartViewModel.== infix(_:_:)())
      {
        sub_100069B7C();
        sub_1001B42FC(v215, v218);
        v219 = v108;
        v220 = v89;
        goto LABEL_111;
      }

      sub_100069B7C();
      sub_1001B42FC(v215, v229);
      v230 = v108;
      v231 = v89;
      goto LABEL_125;
    case 9u:
      v138 = sub_1000233C0();
      v139 = v274;
      sub_1001B4294(v138, v274);
      if (sub_100004CA0() != 9)
      {
        sub_10001CF84();
        v224 = v139;
        goto LABEL_97;
      }

      v140 = sub_1000167A4();
      v141 = v260;
      sub_10086A570(v140, v260, v142);
      sub_100020B1C();
      if ((static Location.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_123;
      }

      v143 = *(v246 + 20);
      v144 = *(v139 + v143) | (*(v139 + v143 + 2) << 16);
      v145 = *(v141 + v143) | (*(v141 + v143 + 2) << 16);
      v146 = *(v139 + v143);
      if (v146 == 2)
      {
        sub_10001CF84();
        sub_1001B42FC(v141, v236);
        if (v145 == 2)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (v146 == 3)
        {
          sub_10001CF84();
          sub_1001B42FC(v141, v147);
          if (v145 != 3)
          {
            goto LABEL_124;
          }

LABEL_110:
          sub_10001CF84();
          v219 = v139;
LABEL_111:
          sub_1001B42FC(v219, v220);
LABEL_112:
          sub_10001FAA0();
          v235 = v98;
          goto LABEL_113;
        }

        if ((v145 & 0xFE) != 2 && ((v145 ^ v144) & 1) == 0 && ((v145 & 0x100) == 0) != (v144 & 0x100) >> 8)
        {
          v237 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE2(v144));
          v239 = v238;
          if (v237 == PredictedLocationsAuthorizationState.rawValue.getter(SBYTE2(v145)) && v239 == v240)
          {

            sub_10001CF84();
            sub_1001B42FC(v141, v245);
          }

          else
          {
            sub_100003984();
            v242 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_10001CF84();
            sub_1001B42FC(v141, v243);
            if ((v242 & 1) == 0)
            {
              goto LABEL_124;
            }
          }

          goto LABEL_110;
        }

LABEL_123:
        sub_10001CF84();
        sub_1001B42FC(v141, v244);
      }

LABEL_124:
      sub_10001CF84();
      v230 = v139;
LABEL_125:
      sub_1001B42FC(v230, v231);
LABEL_126:
      sub_10001FAA0();
      v233 = v98;
LABEL_127:
      sub_1001B42FC(v233, v232);
LABEL_99:
      v115 = 0;
      return v115 & 1;
    case 0xAu:
      v211 = sub_1000233C0();
      v212 = v262;
      sub_1001B4294(v211, v262);
      memcpy(v279, v212, 0x70uLL);
      if (sub_100004CA0() == 10)
      {
        memcpy(v280, v212, 0x70uLL);
        v115 = sub_10051B804(v279, v280);
        sub_100428500(v279);
        sub_100428500(v280);
        goto LABEL_64;
      }

      sub_100428500(v279);
      goto LABEL_98;
    case 0xBu:
      v123 = sub_1000233C0();
      v108 = v267;
      sub_1001B4294(v123, v267);
      if (sub_100004CA0() == 11)
      {
        v124 = sub_1000167A4();
        v110 = v256;
        sub_10086A570(v124, v256, v125);
        v126 = sub_100003984();
        v115 = sub_1008B51D4(v126, v127);
        v116 = type metadata accessor for PressureComponentViewModel;
        goto LABEL_61;
      }

      v222 = type metadata accessor for PressureComponentViewModel;
      goto LABEL_96;
    case 0xCu:
      v134 = sub_1000233C0();
      v135 = v265;
      sub_1001B4294(v134, v265);
      if (sub_100004CA0() != 12)
      {
        goto LABEL_98;
      }

      v136 = *v135 ^ *v89;
      sub_10001FAA0();
      sub_1001B42FC(v98, v137);
      v115 = v136 ^ 1;
      return v115 & 1;
    case 0xDu:
      v194 = sub_1000233C0();
      v108 = v270;
      sub_1001B4294(v194, v270);
      if (sub_100004CA0() == 13)
      {
        v195 = sub_1000167A4();
        v110 = v257;
        sub_10086A570(v195, v257, v196);
        v197 = sub_100003984();
        v115 = sub_100502988(v197, v198);
        v116 = type metadata accessor for SevereAlertComponentViewModel;
        goto LABEL_61;
      }

      v222 = type metadata accessor for SevereAlertComponentViewModel;
      goto LABEL_96;
    case 0xEu:
      v117 = sub_1000233C0();
      v118 = v271;
      sub_1001B4294(v117, v271);
      if (sub_100004CA0() == 14)
      {
        v120 = v275;
        v119 = v276;
        v121 = v258;
        (*(v275 + 32))(v258, v89, v276);
        sub_100020B1C();
        v115 = static SunriseSunsetViewModel.== infix(_:_:)();
        v122 = *(v120 + 8);
        v122(v121, v119);
        v122(v118, v119);
        goto LABEL_64;
      }

      (*(v275 + 8))(v118, v276);
      goto LABEL_98;
    case 0xFu:
      v154 = sub_1000233C0();
      v155 = v266;
      sub_1001B4294(v154, v266);
      memcpy(v279, v155, sizeof(v279));
      if (sub_100004CA0() == 15)
      {
        memcpy(v280, v155, 0xB0uLL);
        v115 = sub_1004B7548(v279, v280);
        sub_100470A18(v279);
        sub_100470A18(v280);
        goto LABEL_64;
      }

      sub_100470A18(v279);
      goto LABEL_98;
    case 0x10u:
      v107 = sub_1000233C0();
      v108 = v272;
      sub_1001B4294(v107, v272);
      if (sub_100004CA0() == 16)
      {
        v109 = sub_1000167A4();
        v110 = v259;
        sub_10086A570(v109, v259, v111);
        v112 = sub_100003984();
        sub_1009A1130(v112, v113);
        v115 = v114;
        v116 = type metadata accessor for UVIndexComponentViewModel;
        goto LABEL_61;
      }

      v222 = type metadata accessor for UVIndexComponentViewModel;
      goto LABEL_96;
    case 0x11u:
      v170 = sub_1000233C0();
      v171 = v268;
      sub_1001B4294(v170, v268);
      v173 = *v171;
      v172 = v171[1];
      v175 = v171[2];
      v174 = v171[3];
      v177 = v171[4];
      v176 = v171[5];
      v178 = v277;
      if (swift_getEnumCaseMultiPayload() != 17)
      {

LABEL_89:

LABEL_98:
        sub_10086A508(v98);
        goto LABEL_99;
      }

      v179 = *v178;
      v180 = v178[1];
      v182 = v178[2];
      v181 = v178[3];
      v183 = v178[5];
      v276 = v178[4];
      v277 = v180;
      v184 = v173 == v179 && v172 == v180;
      v185 = v181;
      if (!v184 && (sub_100003984(), v186 = _stringCompareWithSmolCheck(_:_:expecting:)(), v181 = v185, (v186 & 1) == 0) || (v175 == v182 ? (v187 = v174 == v181) : (v187 = 0), !v187 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {

        goto LABEL_104;
      }

      if (v177 == v276 && v176 == v183)
      {

        goto LABEL_108;
      }

      v189 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v189 & 1) == 0)
      {
LABEL_104:
        sub_10001FAA0();
        v233 = v278;
        goto LABEL_127;
      }

LABEL_108:
      sub_10001FAA0();
      v235 = v278;
LABEL_113:
      sub_1001B42FC(v235, v234);
      v115 = 1;
      return v115 & 1;
    case 0x12u:
      v204 = sub_1000233C0();
      v108 = v273;
      sub_1001B4294(v204, v273);
      if (sub_100004CA0() == 18)
      {
        v205 = sub_1000167A4();
        v110 = v261;
        sub_10086A570(v205, v261, v206);
        v207 = sub_100003984();
        v115 = sub_1004B9FA8(v207, v208);
        v116 = type metadata accessor for WindComponentViewModel;
LABEL_61:
        v152 = v116;
        sub_1001B42FC(v110, v116);
        v153 = v108;
LABEL_62:
        v160 = v152;
LABEL_63:
        sub_1001B42FC(v153, v160);
LABEL_64:
        sub_10001FAA0();
        v210 = v98;
        goto LABEL_65;
      }

      v222 = type metadata accessor for WindComponentViewModel;
LABEL_96:
      v223 = v222;
      v224 = v108;
LABEL_97:
      sub_1001B42FC(v224, v223);
      goto LABEL_98;
    case 0x13u:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v98 = v278;
      if (EnumCaseMultiPayload == 19)
      {
        goto LABEL_112;
      }

      goto LABEL_98;
    default:
      v105 = v278;
      sub_1001B4294(v278, v98);
      if (sub_100004CA0())
      {
        sub_10004EC0C();
        sub_1001B42FC(v98, v106);
        v98 = v105;
        goto LABEL_98;
      }

      v226 = sub_1000167A4();
      v227 = v247;
      sub_10086A570(v226, v247, v228);
      v115 = sub_10065C008(v98, v227);
      sub_1001B42FC(v227, type metadata accessor for AirQualityComponentViewModel);
      sub_1001B42FC(v98, type metadata accessor for AirQualityComponentViewModel);
      sub_10001FAA0();
      v210 = v105;
LABEL_65:
      sub_1001B42FC(v210, v209);
      return v115 & 1;
  }
}

uint64_t sub_10086A4E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001B3DAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10086A508(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CDF908, &qword_100A8F040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10086A570(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

double sub_10086A5D0(uint64_t a1)
{
  v3 = *a1;
  if (sub_1004CF4D0(*a1))
  {
    return dbl_100A679A0[*(a1 + 18) < 2u];
  }

  if (sub_10029C3DC(v3) && *(a1 + 16))
  {
    return 385.0;
  }

  return sub_10014B28C() * 2.5 + *(v1 + 40);
}

void sub_10086A658(double a1, double a2, double a3, double a4)
{
  Width = CGRectGetWidth(*&a1);
  v10.origin.x = sub_10001E728();
  Height = CGRectGetHeight(v10);
  if (Width > Height)
  {
    v6 = Width;
  }

  else
  {
    v6 = Height;
  }

  if (v6 != 1024.0)
  {
    v11.origin.x = sub_10001E728();
    v7 = CGRectGetWidth(v11);
    v12.origin.x = sub_10001E728();
    v8 = CGRectGetHeight(v12);
    if (v7 > v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    if (v9 != 1112.0)
    {
      v13.origin.x = sub_10001E728();
      CGRectGetWidth(v13);
      v14.origin.x = sub_10001E728();
      CGRectGetHeight(v14);
    }
  }
}

uint64_t sub_10086A71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HistoricalFactsCategory(0);
  __chkstk_darwin(v4);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  __chkstk_darwin(v32);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CDF910, &qword_100A8F0C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_10022C350(&qword_100CDF918, &qword_100A8F0C8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v34 = a1;

  sub_10022C350(&qword_100CDF920, &unk_100A8F0D0);
  sub_100006F64(&qword_100CDF928, &qword_100CDF920, &unk_100A8F0D0, &protocol conformance descriptor for [A]);
  NonEmpty.init(_:)();
  if (sub_100024D10(v10, 1, v11) == 1)
  {
    sub_10086AB5C(v10);
    v15 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v16 = a2;
    v17 = 1;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if (NonEmpty.count.getter() < 2)
    {
      NonEmpty.first.getter();
      countAndFlagsBits = *v6;
      object = v6[1];
      v25 = *(v4 + 20);

      v26 = v6 + v25;
      v24 = v33;
      sub_10086AC38(v26, 0, v33);
      sub_10086B0AC(v6);
    }

    else
    {
      v18 = [objc_opt_self() mainBundle];
      v35._object = 0x8000000100AE1EB0;
      v19._countAndFlagsBits = 0x6369726F74736948;
      v19._object = 0xEA00000000006C61;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      v35._countAndFlagsBits = 0xD00000000000003DLL;
      v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v35);
      countAndFlagsBits = v21._countAndFlagsBits;
      object = v21._object;

      type metadata accessor for ConditionDetailPlatterViewModel.TextSection(0);
      v24 = v33;
      NonEmpty.map<A>(_:)();
    }

    (*(v12 + 8))(v14, v11);
    v27 = v32;
    swift_storeEnumTagMultiPayload();
    v28 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v29 = v28[6];
    v30 = type metadata accessor for WeatherDescription();
    sub_10001B350(a2 + v29, 1, 1, v30);
    sub_10001B350(a2 + v28[8], 1, 1, v27);
    *a2 = xmmword_100A8F080;
    *(a2 + 16) = 2;
    *(a2 + 24) = countAndFlagsBits;
    *(a2 + 32) = object;
    sub_10046104C(v24, a2 + v28[7]);
    *(a2 + v28[9]) = 0;
    *(a2 + v28[10]) = 0;
    v16 = a2;
    v17 = 0;
    v15 = v28;
  }

  return sub_10001B350(v16, v17, 1, v15);
}

uint64_t sub_10086AB5C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CDF910, &qword_100A8F0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10086ABC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(type metadata accessor for HistoricalFactsCategory(0) + 20);
  v7 = *(type metadata accessor for ConditionDetailPlatterViewModel.TextSection(0) + 20);

  result = sub_10086AC38(a1 + v6, 1, a2 + v7);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_10086AC38@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributedString();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v39 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = v33 - v9;
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v42 = type metadata accessor for WeatherDescription();
  v13 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CBC548, &unk_100A52F70);
  if (NonEmpty.count.getter() == 1 && (a2 & 1) == 0)
  {
    v16 = v41;
    NonEmpty.first.getter();
    static Font.body.getter();
    WeatherDescription.formatted(font:color:)();

    return (*(v13 + 8))(v16, v42);
  }

  v18 = sub_100006F64(&qword_100CDF930, &qword_100CBC548, &unk_100A52F70, &protocol conformance descriptor for NonEmpty<A>);
  v19 = v15;
  v20 = dispatch thunk of Collection.count.getter();
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = v20;
  v44 = _swiftEmptyArrayStorage;
  sub_1006A7EB4();
  v22 = v44;
  v37 = v18;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v33[0] = a3;
    v33[1] = v19;
    v35 = v40 + 8;
    v36 = (v13 + 16);
    v33[3] = v40 + 32;
    v34 = (v13 + 8);
    v23 = v12;
    v33[2] = a1;
    v24 = (v40 + 8);
    do
    {
      v25 = dispatch thunk of Collection.subscript.read();
      v26 = v41;
      v27 = v42;
      (*v36)(v41);
      v25(v43, 0);
      static Font.body.getter();
      v28 = v38;
      WeatherDescription.formatted(font:color:)();

      v29 = v39;
      AttributedString.init(stringLiteral:)();
      static AttributedString.+ infix(_:_:)();
      v30 = *v24;
      (*v24)(v29, v6);
      v30(v28, v6);
      (*v34)(v26, v27);
      v44 = v22;
      v31 = v6;
      v32 = v22[2];
      if (v32 >= v22[3] >> 1)
      {
        sub_1006A7EB4();
        v22 = v44;
      }

      v22[2] = v32 + 1;
      (*(v40 + 32))(v22 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32, v23, v31);
      dispatch thunk of Collection.formIndex(after:)();
      --v21;
      v6 = v31;
    }

    while (v21);
LABEL_10:
    Array<A>.joined(separator:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_10086B0AC(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalFactsCategory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *WeatherLocation.currentLocationID.unsafeMutableAddressor()
{
  if (qword_100CA2950 != -1)
  {
    sub_10001FAB8(&qword_100CA2950);
  }

  return &static WeatherLocation.currentLocationID;
}

uint64_t sub_10086B17C()
{
  result = static Location.currentLocationIntentID.getter();
  static WeatherLocation.currentLocationID = result;
  *algn_100D911C8 = v1;
  return result;
}

uint64_t static WeatherLocation.currentLocationID.getter()
{
  if (qword_100CA2950 != -1)
  {
    sub_10001FAB8(&qword_100CA2950);
  }

  v0 = static WeatherLocation.currentLocationID;

  return v0;
}

uint64_t sub_10086B218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v698 = a3;
  v706 = a2;
  v695 = a1;
  v687 = type metadata accessor for PreviewLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v4);
  sub_10000E70C();
  v6 = sub_100003918(v5);
  v656 = type metadata accessor for WeatherMapPresentationState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v9 = sub_100003918(v8);
  v627 = type metadata accessor for DisplayMetrics(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  sub_100003990(v11);
  v12 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_10000E70C();
  sub_100003990(v15);
  v16 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_10000E70C();
  sub_100003990(v19);
  v20 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_10000E70C();
  v25 = sub_100003918(v24);
  active = type metadata accessor for LocationViewerActiveLocationState(v25);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000038E4();
  sub_100003990(v27);
  v28 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  sub_100003918(v31);
  v599 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v598 = v32;
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_10000E70C();
  v36 = sub_100003918(v35);
  v654 = type metadata accessor for ViewState.SecondaryViewState(v36);
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_10000E70C();
  sub_100003990(v39);
  v40 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v40);
  sub_100003828();
  __chkstk_darwin(v41);
  sub_1000039BC();
  sub_100003918(v42);
  v611 = type metadata accessor for WeatherCoalescedLocationResult();
  sub_1000037C4();
  v610 = v43;
  __chkstk_darwin(v44);
  sub_1000038E4();
  sub_100003918(v45);
  v608 = type metadata accessor for LocationDisplayContext();
  sub_1000037C4();
  *(&v606 + 1) = v46;
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_10000E70C();
  sub_100003990(v49);
  v50 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_10000E70C();
  sub_100003990(v53);
  v54 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003810(v54);
  sub_100003828();
  __chkstk_darwin(v55);
  sub_1000039BC();
  sub_100003918(v56);
  type metadata accessor for Location();
  sub_1000037C4();
  v693 = v58;
  v694 = v57;
  __chkstk_darwin(v57);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_10000E70C();
  v61 = sub_100003918(v60);
  v705 = type metadata accessor for ViewState(v61);
  sub_1000037E8();
  __chkstk_darwin(v62);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_10000E70C();
  v68 = sub_100003918(v67);
  v704 = type metadata accessor for TimeState(v68);
  sub_1000037E8();
  __chkstk_darwin(v69);
  sub_100003848();
  v692 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_10000E70C();
  v690 = v74;
  v703 = type metadata accessor for NotificationsOptInState(0);
  sub_1000037E8();
  __chkstk_darwin(v75);
  sub_100003848();
  v691 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_10000E70C();
  v81 = sub_100003918(v80);
  v701 = type metadata accessor for NotificationsState(v81);
  sub_1000037E8();
  __chkstk_darwin(v82);
  sub_100003848();
  v689 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_10000E70C();
  v88 = sub_100003918(v87);
  v702 = type metadata accessor for LocationsState(v88);
  sub_1000037E8();
  __chkstk_darwin(v89);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_10000E70C();
  v95 = sub_100003918(v94);
  v700 = type metadata accessor for EnvironmentState(v95);
  sub_1000037E8();
  __chkstk_darwin(v96);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_10000E70C();
  v101 = sub_100003918(v100);
  v699 = type metadata accessor for AppConfigurationState(v101);
  sub_1000037E8();
  __chkstk_darwin(v102);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_10000E70C();
  v107 = sub_100003918(v106);
  v696 = type metadata accessor for ModalViewState(v107);
  sub_1000037E8();
  __chkstk_darwin(v108);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  v697 = v115;
  sub_10000386C();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_10000E70C();
  sub_100003990(v118);
  v119 = sub_10022C350(&qword_100CA65C0, &unk_100A313E0);
  sub_100003810(v119);
  sub_100003828();
  __chkstk_darwin(v120);
  sub_1000039BC();
  sub_100003990(v121);
  v122 = sub_10022C350(&qword_100CA65D0, &unk_100A313F0);
  sub_100003810(v122);
  sub_100003828();
  __chkstk_darwin(v123);
  sub_1000039BC();
  sub_100003990(v124);
  v125 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  sub_100003810(v125);
  sub_100003828();
  __chkstk_darwin(v126);
  sub_1000039BC();
  sub_100003990(v127);
  v128 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v129 = sub_100003810(v128);
  __chkstk_darwin(v129);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_10000E70C();
  sub_100003990(v137);
  v138 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v139 = sub_100003810(v138);
  __chkstk_darwin(v139);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_10000E70C();
  sub_100003990(v147);
  v148 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v149 = sub_100003810(v148);
  __chkstk_darwin(v149);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_10000E70C();
  sub_100003990(v157);
  v158 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v159 = sub_100003810(v158);
  __chkstk_darwin(v159);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_10000E70C();
  sub_100003990(v167);
  v168 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v169 = sub_100003810(v168);
  __chkstk_darwin(v169);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_10000E70C();
  sub_100003990(v177);
  v178 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v179 = sub_100003810(v178);
  __chkstk_darwin(v179);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_10000E70C();
  sub_100003990(v187);
  v188 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v189 = sub_100003810(v188);
  __chkstk_darwin(v189);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v191);
  v193 = &v596 - v192;
  __chkstk_darwin(v194);
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v198);
  sub_10000E70C();
  sub_100003990(v199);
  v200 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v201 = sub_100003810(v200);
  __chkstk_darwin(v201);
  v203 = &v596 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v204);
  __chkstk_darwin(v205);
  v207 = &v596 - v206;
  __chkstk_darwin(v208);
  __chkstk_darwin(v209);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v211);
  v213 = &v596 - v212;
  __chkstk_darwin(v214);
  type metadata accessor for LocationPreviewViewAction(0);
  sub_1000037E8();
  __chkstk_darwin(v215);
  v217 = &v596 - ((v216 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10086FD8C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v296 = v217[*(sub_10022C350(&unk_100CE2F60, &unk_100A42090) + 48)];
      v298 = v693;
      v297 = v694;
      v299 = v671;
      (*(v693 + 32))(v671, v217, v694);
      (*(v298 + 16))(v652, v299, v297);
      sub_1000113EC();
      swift_storeEnumTagMultiPayload();
      sub_100020FE8();
      sub_100187704();
      sub_100003934();
      sub_10001B350(v300, v301, v302, v699);
      v303 = sub_100003BCC(&v682);
      sub_10001B350(v303, v304, v305, v700);
      v306 = sub_100003BCC(&v686);
      sub_10001B350(v306, v307, v308, v702);
      v309 = sub_100003BCC(&v689);
      sub_10001B350(v309, v310, v311, v701);
      v312 = sub_100003BCC(&v692);
      sub_10001B350(v312, v313, v314, v703);
      v315 = sub_100003BCC(&v698);
      sub_10001B350(v315, v316, v317, v704);
      v318 = sub_100003BCC(&v700);
      sub_10001B350(v318, v319, v320, v705);
      v321 = v666;
      sub_10086FD8C();
      sub_10000E7B0();
      sub_10001B350(v322, v323, v324, v299);
      type metadata accessor for LocationPreviewModalViewState(0);
      v325 = v667;
      sub_100003934();
      sub_10001B350(v326, v327, v328, v329);
      type metadata accessor for SelectedSearchResult(0);
      v330 = v668;
      sub_100003934();
      sub_10001B350(v331, v332, v333, v334);
      v335 = v695;
      sub_10043DB64(v321, v325, v330, v638);
      sub_1000180EC(v330, &qword_100CA65C0, &unk_100A313E0);
      sub_1000180EC(v325, &qword_100CA65D0, &unk_100A313F0);
      sub_1000180EC(v321, &qword_100CA65C8, &unk_100A31670);
      sub_100141BEC(v296, type metadata accessor for PreviewLocation);
      (*(v298 + 8))(v671, v297);
      v336 = v696;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v337, v338, v339, v336);
      sub_100028C78();
      sub_1000113EC();
      sub_10086FD8C();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(v297);
      if (v220)
      {
        sub_1000180EC(v297, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100024B44();
        sub_100141BEC(v335, v425);
        sub_10001FAD8();
        sub_100021CEC();
        sub_100187704();
      }

      v426 = v644;
      v427 = v640;
      v428 = v633;
      v429 = v630;
      sub_10001FAD8();
      sub_100187704();
      v430 = *(v706 + 16);
      LODWORD(v698) = *(v706 + 24);
      sub_100051BBC();
      v431 = v699;
      sub_1000113D0(v203, 1);
      if (v220)
      {
        sub_10003C9AC();
        sub_10086FD8C();
        v432 = sub_100024D10(v203, 1, v431);

        v433 = v647;
        if (v432 != 1)
        {
          sub_1000180EC(v203, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100017F58();
        sub_100187704();

        v433 = v647;
      }

      v699 = v430;
      sub_100051BBC();
      v434 = sub_100007FC4();
      sub_1000113D0(v434, v435);
      if (v220)
      {
        sub_10002014C(v706 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100069B94();
        sub_10086FD8C();
        sub_100003A40(v429);
        if (!v220)
        {
          sub_1000180EC(v429, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100013DC8();
        sub_100187704();
      }

      sub_100051BBC();
      sub_100005404(v428);
      if (v220)
      {
        sub_10001CF9C();
        sub_10086FD8C();
        sub_100005404(v428);
        v436 = v650;
        if (!v220)
        {
          sub_1000180EC(v428, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10004EC24();
        sub_100187704();
        v436 = v650;
      }

      sub_1000B0318();
      sub_100003A40(v427);
      if (v220)
      {
        sub_100017020();
        sub_10086FD8C();
        sub_100003A40(v427);
        v437 = v704;
        if (!v220)
        {
          sub_1000180EC(v427, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100049E08();
        sub_100187704();
        v437 = v704;
      }

      sub_100051BBC();
      v438 = sub_1000162B0();
      v439 = v703;
      sub_1000038B4(v438, v440, v703);
      if (v220)
      {
        sub_100075144();
        sub_10086FD8C();
        v441 = sub_1000162B0();
        sub_1000038B4(v441, v442, v439);
        v443 = v705;
        if (!v220)
        {
          sub_1000180EC(v426, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000233CC();
        sub_100187704();
        v443 = v705;
      }

      sub_100051BBC();
      v444 = sub_1000182B8();
      sub_1000038B4(v444, v445, v437);
      if (v220)
      {
        sub_10001A068();
        sub_10086FD8C();
        v446 = sub_1000182B8();
        sub_1000038B4(v446, v447, v437);
        if (!v220)
        {
          sub_1000180EC(v433, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100004CBC();
        sub_100187704();
      }

      sub_100051BBC();
      v448 = sub_1000131C4();
      sub_1000038B4(v448, v449, v443);
      if (v220)
      {
        sub_100006934();
        sub_10086FD8C();
        v450 = sub_1000131C4();
        sub_1000038B4(v450, v451, v443);
        if (!v220)
        {
          sub_1000180EC(v436, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10001504C();
        sub_100021CEC();
        sub_100187704();
      }

      sub_10001FAD8();
      sub_100071830();
      sub_100044DA4();
      v452 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v452);
      sub_10000E80C();
      v370 = v699;
      v371 = v698;
      v372 = v678;
      v373 = v681;
      v374 = v685;
      v375 = v689;
      v376 = v691;
      v377 = v692;
      goto LABEL_163;
    case 2u:
      sub_100003934();
      v222 = v699;
      sub_10001B350(v223, v224, v225, v699);
      v226 = sub_100003BCC(&v681);
      v227 = v700;
      sub_10001B350(v226, v228, v229, v700);
      v230 = sub_100003BCC(&v684);
      v231 = v702;
      sub_10001B350(v230, v232, v233, v702);
      v234 = sub_100003BCC(&v687);
      sub_10001B350(v234, v235, v236, v701);
      v237 = sub_100003BCC(&v690);
      sub_10001B350(v237, v238, v239, v703);
      v240 = sub_100003BCC(&v696);
      sub_10001B350(v240, v241, v242, v704);
      v243 = sub_100003BCC(&v699);
      sub_10001B350(v243, v244, v245, v705);
      v246 = v666;
      sub_100003934();
      sub_10001B350(v247, v248, v249, v687);
      v250 = type metadata accessor for LocationPreviewModalViewState(0);
      v251 = v667;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v252, v253, v254, v250);
      type metadata accessor for SelectedSearchResult(0);
      v255 = v668;
      sub_100003934();
      sub_10001B350(v256, v257, v258, v259);
      v260 = v695;
      sub_10043DB64(v246, v251, v255, v634);
      sub_1000180EC(v255, &qword_100CA65C0, &unk_100A313E0);
      sub_1000180EC(v251, &qword_100CA65D0, &unk_100A313F0);
      sub_1000180EC(v246, &qword_100CA65C8, &unk_100A31670);
      v261 = v696;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v262, v263, v264, v261);
      sub_100028C78();
      v265 = v706;
      sub_1000113EC();
      sub_10086FD8C();
      v266 = v637;
      sub_100051BBC();
      sub_10000554C(v266);
      if (v220)
      {
        sub_1000180EC(v266, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100024B44();
        sub_100141BEC(v260, v340);
        sub_10001FAD8();
        sub_100187704();
      }

      v341 = v645;
      v342 = v631;
      sub_10001FAD8();
      sub_100187704();
      v343 = *(v265 + 16);
      LODWORD(v698) = *(v265 + 24);
      sub_100051BBC();
      sub_100005404(v213);
      v344 = v628;
      if (v220)
      {
        sub_10003C9AC();
        sub_10086FD8C();
        v345 = sub_100007FC4();
        v347 = sub_100024D10(v345, v346, v222);

        if (v347 != 1)
        {
          sub_1000180EC(v213, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100017F58();
        sub_100187704();
      }

      v699 = v343;
      sub_100051BBC();
      v348 = sub_1000162B0();
      sub_1000038B4(v348, v349, v227);
      if (v220)
      {
        sub_10002014C(v265 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100069B94();
        sub_10086FD8C();
        v350 = sub_1000162B0();
        sub_1000038B4(v350, v351, v227);
        v352 = v703;
        if (!v220)
        {
          sub_1000180EC(v344, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100013DC8();
        sub_100187704();
        v352 = v703;
      }

      sub_100051BBC();
      v353 = sub_1000182B8();
      sub_1000038B4(v353, v354, v231);
      if (v220)
      {
        sub_10001CF9C();
        sub_10086FD8C();
        v355 = sub_1000182B8();
        sub_1000038B4(v355, v356, v231);
        if (!v220)
        {
          sub_1000180EC(v342, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10004EC24();
        sub_100187704();
      }

      v357 = v636;
      sub_100051BBC();
      v358 = sub_1000175DC();
      v359 = v701;
      sub_1000038B4(v358, v360, v701);
      if (v220)
      {
        sub_100017020();
        sub_10086FD8C();
        v361 = sub_1000175DC();
        sub_1000038B4(v361, v362, v359);
        if (!v220)
        {
          sub_1000180EC(v357, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100049E08();
        sub_100187704();
      }

      v363 = v641;
      sub_100051BBC();
      v364 = sub_1000182B8();
      sub_1000038B4(v364, v365, v352);
      if (v220)
      {
        sub_100075144();
        sub_10086FD8C();
        v366 = sub_1000182B8();
        sub_1000038B4(v366, v367, v352);
        v368 = v648;
        if (!v220)
        {
          sub_1000180EC(v363, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000233CC();
        sub_100187704();
        v368 = v648;
      }

      sub_100051BBC();
      sub_100003A40(v341);
      if (v220)
      {
        sub_10001A068();
        sub_10086FD8C();
        sub_100003A40(v341);
        if (!v220)
        {
          sub_1000180EC(v341, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100004CBC();
        sub_100187704();
      }

      sub_1000B0318();
      sub_100005404(v368);
      if (v220)
      {
        sub_100006934();
        sub_10086FD8C();
        sub_100005404(v368);
        if (!v220)
        {
          sub_1000180EC(v368, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10001504C();
        sub_100187704();
      }

      sub_10001FAD8();
      sub_100071830();
      sub_100044DA4();
      v369 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v369);
      sub_10000E80C();
      v370 = v699;
      v371 = v698;
      v372 = v675;
      v373 = v677;
      v374 = v680;
      v375 = v683;
      v376 = v686;
      v377 = v690;
      goto LABEL_163;
    case 3u:
      sub_100003934();
      sub_10001B350(v267, v268, v269, v699);
      sub_100003934();
      sub_10001B350(v270, v271, v272, v700);
      v273 = sub_100003BCC(&v683);
      sub_10001B350(v273, v274, v275, v702);
      v276 = sub_100003BCC(&v685);
      v277 = v701;
      sub_10001B350(v276, v278, v279, v701);
      v280 = sub_100003BCC(&v688);
      sub_10001B350(v280, v281, v282, v703);
      v283 = sub_100003BCC(&v691);
      sub_10001B350(v283, v284, v285, v704);
      v286 = sub_100003BCC(&v697);
      sub_10001B350(v286, v287, v288, v705);
      v289 = v696;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v290, v291, v292, v289);
      sub_100028C78();
      v293 = v706;
      v294 = v642;
      sub_10086FD8C();
      v295 = v635;
      sub_100051BBC();
      sub_1000038B4(v295, 1, v289);
      if (v220)
      {
        sub_1000180EC(v295, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100024B44();
        sub_100141BEC(v294, v378);
        sub_10001FAD8();
        sub_100187704();
      }

      sub_10001FAD8();
      sub_100187704();
      v379 = *(v293 + 16);
      LODWORD(v696) = *(v293 + 24);
      sub_100051BBC();
      v380 = sub_100016298();
      v381 = v699;
      sub_1000038B4(v380, v382, v699);
      v383 = v632;
      v384 = v629;
      v698 = v379;
      if (v220)
      {
        sub_10003C9AC();
        sub_10086FD8C();
        v385 = sub_100016298();
        v387 = sub_100024D10(v385, v386, v381);

        if (v387 != 1)
        {
          sub_1000180EC(v207, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100017F58();
        sub_100187704();
      }

      sub_100021CEC();
      sub_100051BBC();
      sub_1000038B4(v193, 1, v700);
      if (v220)
      {
        sub_10002014C(v293 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100069B94();
        sub_10086FD8C();
        sub_100005404(v193);
        v388 = v643;
        v389 = v639;
        if (!v220)
        {
          sub_1000180EC(v193, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100013DC8();
        sub_100187704();
        v388 = v643;
        v389 = v639;
      }

      sub_100051BBC();
      v390 = sub_1000175DC();
      sub_1000038B4(v390, v391, v702);
      if (v220)
      {
        sub_10001CF9C();
        sub_10086FD8C();
        sub_10000554C(v384);
        v392 = v646;
        if (!v220)
        {
          sub_1000180EC(v384, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10004EC24();
        sub_100187704();
        v392 = v646;
      }

      sub_1000B0318();
      sub_1000038B4(v383, 1, v277);
      if (v220)
      {
        sub_100017020();
        sub_10086FD8C();
        sub_1000038B4(v383, 1, v277);
        if (!v220)
        {
          sub_1000180EC(v383, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100049E08();
        sub_100187704();
      }

      sub_100051BBC();
      v393 = sub_100016298();
      v394 = v703;
      sub_1000038B4(v393, v395, v703);
      if (v220)
      {
        sub_100075144();
        sub_10086FD8C();
        v396 = sub_100016298();
        sub_1000038B4(v396, v397, v394);
        if (!v220)
        {
          sub_1000180EC(v389, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000233CC();
        sub_100187704();
      }

      sub_100051BBC();
      v398 = sub_1000131C4();
      v399 = v704;
      sub_1000038B4(v398, v400, v704);
      if (v220)
      {
        sub_10001A068();
        sub_10086FD8C();
        v401 = sub_1000131C4();
        sub_1000038B4(v401, v402, v399);
        if (!v220)
        {
          sub_1000180EC(v388, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100004CBC();
        sub_100187704();
      }

      sub_100051BBC();
      sub_1000038B4(v392, 1, v705);
      if (v220)
      {
        sub_100006934();
        sub_10086FD8C();
        sub_100005404(v392);
        if (!v220)
        {
          sub_1000180EC(v392, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10001504C();
        sub_100187704();
      }

      sub_10001FAD8();
      v403 = v697;
      sub_100187704();
      v404 = v293;
      v406 = *(v293 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v405 = *(v293 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v408 = *(v293 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v407 = *(v293 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v409 = v293 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v410 = *(v293 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v412 = *(v409 + 8);
      v411 = *(v409 + 16);
      v413 = *(v404 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v414 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v414);
      LOBYTE(v595) = v410;
      sub_10003E038(v698, v696, v673, v674, v676, v679, v682, v684, v688, v403, v406, v405, v408, v407, v595, v412, v411, v413, v596, v597, v598, v599, v600, v601, active, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612);
      v221 = v415;

      goto LABEL_164;
    default:
      v218 = v649;
      sub_1006E6234(v649);
      v219 = v694;
      sub_1000038B4(v218, 1, v694);
      if (v220)
      {
        sub_1000180EC(v218, &qword_100CA65D8, &unk_100A3D9D0);
        v221 = v706;
      }

      else
      {
        v416 = v693;
        v417 = v662;
        (*(v693 + 32))(v662, v218, v219);
        v418 = v706 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
        sub_10001CF9C();
        sub_100020FE8();
        sub_10086FD8C();
        sub_1007BDCF4();
        v420 = v419;
        sub_10003BFC8();
        sub_100141BEC(v218, v421);
        v422 = v702[5];
        v698 = v418;
        v423 = *(v418 + v422);
        if (v420)
        {

          v424 = v423;
        }

        else
        {
          sub_10022C350(&qword_100CCF258, &qword_100A766F0);
          v453 = *(type metadata accessor for SavedLocation() - 8);
          v454 = (*(v453 + 80) + 32) & ~*(v453 + 80);
          v455 = swift_allocObject();
          *(v455 + 16) = xmmword_100A2C3F0;
          (*(v416 + 16))(v455 + v454, v417, v219);
          swift_storeEnumTagMultiPayload();
          v707 = v423;

          sub_10035DC18(v455);
          v424 = v707;
        }

        v456 = *(v698 + v702[13]);

        v457 = Location.id.getter();
        v459 = v458;
        LocationDisplayContext.init(canActAsLocationOfInterest:)();
        v460 = v607;
        v461 = sub_100003940();
        v462(v461);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v707 = v456;
        sub_100239940(v460, v457, v459, isUniquelyReferenced_nonNull_native);

        v464 = v707;
        sub_1000161C0((v617 + 16), *(v617 + 40));
        sub_100020FE8();
        sub_100095588();

        v465 = v609;
        v691 = v464;
        v692 = v424;
        dispatch thunk of WeatherLocationCoalescenceManagerType.coalesceLocations(currentLocation:locationList:locationsOfInterest:displayContextByLocation:)();

        sub_1000180EC(v460, &unk_100CE49F0, &unk_100A3AFA0);
        v466 = WeatherCoalescedLocationResult.coalescedLocations.getter();
        (*(v610 + 8))(v465, v611);
        sub_10001655C();
        v695 = v467;
        sub_100020FE8();
        sub_10086FD8C();
        v468 = v654;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_100141BEC(v460, type metadata accessor for ViewState.SecondaryViewState);
          v469 = 1;
          v470 = v622;
          v471 = v653;
        }

        else
        {
          v472 = *v460;
          v473 = v597;
          Location.identifier.getter();
          v474 = v596;
          sub_10086EE80(v473, v466, v596);
          v475 = v598;
          v476 = v473;
          v477 = v599;
          (*(v598 + 8))(v476, v599);
          v479 = *(v475 + 32);
          v478 = v475 + 32;
          v480 = v600;
          v479(v600, v474, v477);
          sub_10000E7B0();
          sub_10001B350(v481, v482, v483, v477);
          sub_10000E7B0();
          sub_10001B350(v484, v485, v486, active);
          sub_1000113EC();
          sub_100051BBC();
          sub_10000554C(v480);
          if (v220)
          {
            sub_10003778C();
            sub_10086FD8C();
            sub_10000554C(v480);
            if (!v220)
            {
              sub_1000180EC(v480, &qword_100CA65B8, &unk_100A313D0);
            }
          }

          else
          {
            sub_10003778C();
            sub_100187704();
          }

          v487 = *(v472 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
          v488 = *(v472 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
          v489 = *(v472 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
          v490 = *(v472 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
          v491 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v472);

          v492 = type metadata accessor for LocationViewerViewState._Storage(0);
          sub_100003B6C(v492);
          v493 = sub_10003DDB8(v478, v491, v487, v490, v488, v489);
          v471 = v653;
          *v653 = v493;
          swift_storeEnumTagMultiPayload();
          v469 = 0;
          v470 = v622;
        }

        sub_10001B350(v471, v469, 1, v468);
        v494 = sub_100003BCC(v663);
        sub_10001B350(v494, v495, v496, v699);
        v497 = sub_100003BCC(v664);
        sub_10001B350(v497, v498, v499, v700);
        sub_10001CF9C();
        v500 = v651;
        sub_10086FD8C();
        sub_100020FE8();
        sub_100095588();
        v501 = v702;
        v502 = v500 + v702[12];
        v503 = *v502;
        v504 = *(v502 + 8);
        v505 = *(v502 + 16);

        sub_1000DC3D4(v503, v504, v505);
        v506 = v653;
        sub_10003A500();
        sub_10003BFC8();
        sub_100141BEC(v500, v507);
        sub_10000E7B0();
        v508 = v654;
        sub_10001B350(v509, v510, v511, v501);
        v512 = sub_100003BCC(v665);
        sub_10001B350(v512, v513, v514, v701);
        v515 = sub_100003BCC(&v666);
        sub_10001B350(v515, v516, v517, v703);
        v518 = sub_100003BCC(v669);
        sub_10001B350(v518, v519, v520, v704);
        sub_100006934();
        sub_10086FD8C();
        type metadata accessor for ListViewState._Storage();
        swift_allocObject();
        sub_10000E7B0();
        v524 = sub_100042DA8(v521, v522, v523, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0, 0, 1, 0);
        v525 = type metadata accessor for SearchViewState(0);
        v526 = sub_100003BCC(v670);
        sub_10001B350(v526, v527, v528, v525);
        sub_100003934();
        v529 = v627;
        sub_10001B350(v530, v531, v532, v627);
        v533 = sub_100003BCC(v672);
        sub_10001B350(v533, v534, v535, v656);
        v536 = v619;
        sub_100095588();
        sub_100005404(v536);
        if (v220)
        {
          v540 = v705;
          sub_10001655C();
          sub_10086FD8C();
          v537 = sub_100016298();
          v539 = sub_100024D10(v537, v538, v508);

          if (v539 != 1)
          {
            sub_1000180EC(v536, &qword_100CA6608, &unk_100A31430);
          }
        }

        else
        {
          sub_100071E80();
          sub_100187704();

          v540 = v705;
        }

        LODWORD(v705) = *(v470 + v540[6]);
        v541 = [objc_opt_self() currentDevice];
        v542 = [v541 userInterfaceIdiom];

        sub_1000180EC(v506, &qword_100CA6608, &unk_100A31430);
        (*(v693 + 8))(v662, v694);
        if (v542 && *(v470 + v540[9] + 8) == 2)
        {
          v543 = 1;
        }

        else
        {
          v543 = *(v470 + v540[7]);
        }

        v544 = v624;
        sub_1000B0318();
        sub_100003A40(v544);
        if (v220)
        {
          sub_100095588();
          sub_100003A40(v544);
          if (!v220)
          {
            sub_1000180EC(v544, &qword_100CA6600, &unk_100A5C400);
          }
        }

        else
        {
          sub_100187704();
          v529 = v627;
          sub_10000E7B0();
          sub_10001B350(v545, v546, v547, v525);
        }

        v548 = v625;
        sub_100051BBC();
        v549 = sub_100007FC4();
        sub_1000038B4(v549, v550, v529);
        if (v220)
        {
          sub_10086FD8C();
          v551 = sub_100007FC4();
          sub_1000038B4(v551, v552, v529);
          v553 = v621;
          if (!v220)
          {
            sub_1000180EC(v548, &qword_100CA65F8, &dword_100A31420);
          }
        }

        else
        {
          sub_1000B9A98();
          sub_100187704();
          v553 = v621;
        }

        v554 = v626;
        sub_100051BBC();
        sub_100003A40(v554);
        if (v220)
        {
          sub_10086FD8C();
          sub_100003A40(v554);
          v555 = v612;
          if (!v220)
          {
            sub_1000180EC(v554, &qword_100CA65F0, &unk_100A5C3F0);
          }
        }

        else
        {
          sub_1000211C4();
          sub_100187704();
          v555 = v612;
        }

        v556 = *(v470 + v540[11]);
        sub_100141BEC(v470, type metadata accessor for ViewState);
        *v553 = v524;
        sub_100071E80();
        sub_100187704();
        *(v553 + v540[6]) = v705;
        *(v553 + v540[7]) = v543;
        sub_100051BBC();
        sub_1000B9A98();
        sub_100187704();
        sub_1000211C4();
        sub_100187704();

        *(v553 + v540[11]) = v556;
        sub_10000E7B0();
        sub_10001B350(v557, v558, v559, v540);
        v560 = v614;
        v561 = v696;
        swift_storeEnumTagMultiPayload();
        sub_10000E7B0();
        sub_10001B350(v562, v563, v564, v561);
        sub_100028C78();
        v565 = v706;
        sub_1000113EC();
        sub_10086FD8C();
        sub_10003778C();
        sub_100051BBC();
        sub_10000554C(v560);
        if (v220)
        {
          sub_1000180EC(v560, &qword_100CA65E8, &unk_100A31410);
        }

        else
        {
          sub_100024B44();
          sub_100141BEC(v556, v566);
          sub_10001FAD8();
          sub_100021CEC();
          sub_100187704();
        }

        v567 = v699;
        v568 = v616;
        v569 = v615;
        sub_10001FAD8();
        sub_100187704();
        v570 = *(v565 + 16);
        LODWORD(v699) = *(v565 + 24);
        sub_1000113EC();
        sub_100051BBC();
        sub_10000554C(v556);
        if (v220)
        {
          sub_10003C9AC();
          sub_10086FD8C();
          v571 = sub_100024D10(v556, 1, v567);

          v220 = v571 == 1;
          v572 = v620;
          v573 = v606;
          if (!v220)
          {
            sub_1000180EC(v556, &qword_100CA6640, qword_100A32640);
          }
        }

        else
        {
          sub_100017F58();
          sub_100187704();

          v572 = v620;
          v573 = v606;
        }

        v705 = v570;
        sub_100051BBC();
        v574 = sub_1000131C4();
        sub_1000113D0(v574, v575);
        if (v220)
        {
          v576 = v573;
          sub_10002014C(v565 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
          sub_100069B94();
          sub_10086FD8C();
          sub_100003A40(v573);
          v577 = v623;
          if (!v220)
          {
            sub_1000180EC(v576, &qword_100CA6638, &unk_100A31460);
          }
        }

        else
        {
          sub_100013DC8();
          sub_100187704();
          v577 = v623;
        }

        sub_100051BBC();
        v578 = sub_100007FC4();
        sub_1000113D0(v578, v579);
        if (v220)
        {
          sub_10001CF9C();
          sub_10086FD8C();
          sub_100003A40(v555);
          v580 = v704;
          if (!v220)
          {
            sub_1000180EC(v555, &qword_100CA6630, &unk_100A32630);
          }
        }

        else
        {
          sub_10004EC24();
          sub_100187704();
          v580 = v704;
        }

        sub_100051BBC();
        v581 = sub_1000162B0();
        sub_1000113D0(v581, v582);
        if (v220)
        {
          sub_100017020();
          sub_10086FD8C();
          sub_100003A40(v569);
          if (!v220)
          {
            sub_1000180EC(v569, &qword_100CA6628, &unk_100A31450);
          }
        }

        else
        {
          sub_100049E08();
          sub_100187704();
        }

        sub_100051BBC();
        v583 = sub_1000175DC();
        v584 = v703;
        sub_1000038B4(v583, v585, v703);
        if (v220)
        {
          sub_100075144();
          sub_10086FD8C();
          v586 = sub_1000175DC();
          sub_1000038B4(v586, v587, v584);
          if (!v220)
          {
            sub_1000180EC(v568, &qword_100CA6620, &unk_100A32620);
          }
        }

        else
        {
          sub_1000233CC();
          sub_100187704();
        }

        sub_100051BBC();
        sub_1000038B4(v572, 1, v580);
        if (v220)
        {
          sub_10001A068();
          sub_10086FD8C();
          sub_1000038B4(v572, 1, v580);
          if (!v220)
          {
            sub_1000180EC(v572, &qword_100CA6618, &unk_100A31440);
          }
        }

        else
        {
          sub_100004CBC();
          sub_100187704();
        }

        sub_100051BBC();
        v588 = sub_1000131C4();
        sub_1000038B4(v588, v589, v540);
        if (v220)
        {
          sub_100006934();
          sub_10086FD8C();
          v590 = sub_1000131C4();
          sub_1000038B4(v590, v591, v540);
          if (!v220)
          {
            sub_1000180EC(v577, &qword_100CA6610, &unk_100A32610);
          }
        }

        else
        {
          sub_10001504C();
          sub_100021CEC();
          sub_100187704();
        }

        sub_10001FAD8();
        sub_100071830();
        v592 = type metadata accessor for MainState._Storage(0);
        sub_100003B6C(v592);
        sub_10000E80C();
        v370 = v705;
        v371 = v699;
        v372 = v655;
        v373 = v657;
        v374 = v658;
        v375 = v659;
        v376 = v660;
        v377 = v661;
LABEL_163:
        sub_10003E038(v370, v371, v372, v373, v374, v375, v376, v377, v596, v597, v598, v599, v600, v601, active, v603, v604, v605, v606, *(&v606 + 1), v607, v608, v609, v610, v611, v612, v613, v614, v615, v616, v617, v618, v619, v620, v621);
        v221 = v593;

LABEL_164:
      }

      return v221;
  }
}

uint64_t sub_10086EE80@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v84 = a3;
  v4 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  __chkstk_darwin(v4 - 8);
  v79 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v81 = &v74 - v7;
  v8 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v8 - 8);
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v74 - v11;
  v13 = type metadata accessor for Location.Identifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v75 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v78 = &v74 - v17;
  __chkstk_darwin(v18);
  v74 = &v74 - v19;
  __chkstk_darwin(v20);
  v86 = &v74 - v21;
  __chkstk_darwin(v22);
  v94 = &v74 - v23;
  v24 = type metadata accessor for LocationModel();
  __chkstk_darwin(v24);
  v76 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.n128_f64[0] = __chkstk_darwin(v26);
  v31 = &v74 - v30;
  v32 = *(a2 + 16);
  v88 = v14;
  v89 = v13;
  v82 = a2;
  v80 = v28;
  if (v32)
  {
    v33 = *(v28 + 16);
    v34 = a2 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v92 = *(v28 + 72);
    v93 = v33;
    v90 = (v14 + 32);
    v91 = (v28 + 8);
    v35 = _swiftEmptyArrayStorage;
    v87 = v24;
    v85 = v28 + 16;
    do
    {
      v93(v31, v34, v24, v29);
      LocationModel.location.getter();
      v36 = v24;
      v37 = type metadata accessor for Location();
      if (sub_100024D10(v12, 1, v37) == 1)
      {
        (*v91)(v31, v36);
        v27 = sub_1000180EC(v12, &qword_100CA65D8, &unk_100A3D9D0);
        v24 = v36;
      }

      else
      {
        v38 = v13;
        v39 = v86;
        Location.identifier.getter();
        (*v91)(v31, v36);
        (*(*(v37 - 8) + 8))(v12, v37);
        v40 = *v90;
        (*v90)(v94, v39, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100030858();
          v35 = v42;
        }

        v41 = *(v35 + 2);
        if (v41 >= *(v35 + 3) >> 1)
        {
          sub_100030858();
          v35 = v43;
        }

        *(v35 + 2) = v41 + 1;
        v13 = v89;
        v27 = v40(&v35[((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v41], v94, v89);
        v24 = v87;
      }

      v34 += v92;
      --v32;
    }

    while (v32);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v27);
  v44 = v83;
  *(&v74 - 2) = v83;
  v45 = sub_1000E0FA0(sub_1000E1030, (&v74 - 4), v35);

  if (v45)
  {
    return (*(v88 + 16))(v84, v44, v89);
  }

  __chkstk_darwin(v46);
  *(&v74 - 2) = v44;
  v48 = v81;
  v49 = v82;
  sub_100030C98(sub_10086FDE4, (&v74 - 4), v82);
  v50 = sub_100024D10(v48, 1, v24);
  v51 = v88;
  if (v50 == 1)
  {
    v52 = &unk_100CE2F20;
    v53 = &unk_100A2D7D0;
    v54 = v48;
  }

  else
  {
    v55 = v80;
    v56 = v76;
    (*(v80 + 32))(v76, v48, v24);
    v57 = v77;
    LocationModel.location.getter();
    v58 = type metadata accessor for Location();
    if (sub_100024D10(v57, 1, v58) != 1)
    {
      v73 = v74;
      Location.identifier.getter();
      (*(v55 + 8))(v56, v24);
      (*(*(v58 - 8) + 8))(v57, v58);
      return (*(v51 + 32))(v84, v73, v89);
    }

    (*(v55 + 8))(v56, v24);
    v52 = &qword_100CA65D8;
    v53 = &unk_100A3D9D0;
    v54 = v57;
  }

  sub_1000180EC(v54, v52, v53);
  v59 = v78;
  if (qword_100CA26C0 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_10000703C(v60, qword_100D90AA8);
  v61 = v89;
  v94 = *(v51 + 16);
  (v94)(v59, v44, v89);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = v59;
    v65 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v95[0] = v93;
    *v65 = 141558275;
    *(v65 + 4) = 1752392040;
    *(v65 + 12) = 2081;
    sub_10086FE04(&qword_100CA38C8, &protocol conformance descriptor for Location.Identifier);
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v87 = v24;
    v67 = v49;
    v69 = v68;
    (*(v88 + 8))(v64, v61);
    v70 = sub_100078694(v66, v69, v95);
    v49 = v67;
    v24 = v87;

    *(v65 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v62, v63, "Failed to find location identifier %{private,mask.hash}s from list", v65, 0x16u);
    sub_100006F14(v93);
    v51 = v88;
  }

  else
  {

    (*(v51 + 8))(v59, v61);
  }

  v71 = v79;
  sub_100169AC0(v49, v79);
  if (sub_100024D10(v71, 1, v24) == 1)
  {
    sub_1000180EC(v71, &unk_100CE2F20, &unk_100A2D7D0);
    return (v94)(v84, v44, v89);
  }

  else
  {
    v72 = v75;
    LocationModel.identifier.getter();
    (*(v80 + 8))(v71, v24);
    return (*(v51 + 32))(v84, v72, v89);
  }
}

uint64_t sub_10086F800(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v2 = type metadata accessor for Location.Identifier();
  v35 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  __chkstk_darwin(v33);
  v5 = &v30 - v4;
  v31 = type metadata accessor for Location();
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v12 - 8);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  LocationModel.locationOfInterest.getter();
  v20 = type metadata accessor for LocationOfInterest();
  if (sub_100024D10(v11, 1, v20) == 1)
  {
    sub_1000180EC(v11, &qword_100CA3588, &unk_100A4F350);
    v21 = 1;
  }

  else
  {
    LocationOfInterest.location.getter();
    (*(*(v20 - 8) + 8))(v11, v20);
    Location.identifier.getter();
    (*(v6 + 8))(v8, v31);
    v21 = 0;
  }

  sub_10001B350(v19, v21, 1, v2);
  v22 = v35;
  (*(v35 + 16))(v16, v34, v2);
  sub_10001B350(v16, 0, 1, v2);
  v23 = *(v33 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v5, 1, v2) != 1)
  {
    v25 = v32;
    sub_100095588();
    if (sub_100024D10(&v5[v23], 1, v2) != 1)
    {
      v26 = &v5[v23];
      v27 = v30;
      (*(v22 + 32))(v30, v26, v2);
      sub_10086FE04(&qword_100CA3A48, &protocol conformance descriptor for Location.Identifier);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v22 + 8);
      v28(v27, v2);
      sub_1000180EC(v16, &qword_100CADBA0, &qword_100A3D250);
      sub_1000180EC(v19, &qword_100CADBA0, &qword_100A3D250);
      v28(v32, v2);
      sub_1000180EC(v5, &qword_100CADBA0, &qword_100A3D250);
      return v24 & 1;
    }

    sub_1000180EC(v16, &qword_100CADBA0, &qword_100A3D250);
    sub_1000180EC(v19, &qword_100CADBA0, &qword_100A3D250);
    (*(v22 + 8))(v25, v2);
    goto LABEL_9;
  }

  sub_1000180EC(v16, &qword_100CADBA0, &qword_100A3D250);
  sub_1000180EC(v19, &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(&v5[v23], 1, v2) != 1)
  {
LABEL_9:
    sub_1000180EC(v5, &qword_100CADD58, &unk_100A3E650);
    v24 = 0;
    return v24 & 1;
  }

  sub_1000180EC(v5, &qword_100CADBA0, &qword_100A3D250);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_10086FD8C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10086FE04(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for Location.Identifier();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for LearnMoreAttributorView(uint64_t a1)
{
  result = qword_100CDFA30;
  if (!qword_100CDFA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10086FEBC(uint64_t a1)
{
  type metadata accessor for LearnMoreAttributorViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1000077F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10086FF78@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_10022C350(&qword_100CDFB30, &qword_100A8F370);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100003848();
  v68 = v4;
  __chkstk_darwin(v5);
  v67 = &v63 - v6;
  v66 = sub_10022C350(&qword_100CB8BD0, &qword_100A4CFA0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v65 = &v63 - v8;
  v9 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v79 = &v63 - v11;
  sub_1000038CC();
  v81 = type metadata accessor for AttributeContainer();
  sub_1000037C4();
  v75 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v78 = v15 - v14;
  sub_1000038CC();
  type metadata accessor for AttributedString.Runs.Index();
  sub_1000037C4();
  v82 = v17;
  v83 = v16;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = v19 - v18;
  v70 = type metadata accessor for AttributedString.Runs.Run();
  sub_1000037C4();
  v74 = v21;
  __chkstk_darwin(v22);
  sub_100003848();
  v69 = v23;
  __chkstk_darwin(v24);
  v80 = &v63 - v25;
  sub_1000038CC();
  v26 = type metadata accessor for AttributedString.Runs();
  sub_1000037C4();
  v63 = v27;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v76 = (v30 - v29);
  v77 = sub_10022C350(&qword_100CC26F8, &unk_100A5B2C0);
  sub_1000037E8();
  __chkstk_darwin(v31);
  v33 = &v63 - v32;
  v64 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_1000037D8();
  v39 = v38 - v37;
  sub_1000038CC();
  v40 = type metadata accessor for String.LocalizationValue();
  v41 = sub_100003810(v40);
  __chkstk_darwin(v41);
  sub_1000037D8();
  String.LocalizationValue.init(stringLiteral:)();
  if (*(v1 + *(type metadata accessor for LearnMoreAttributorViewModel(0) + 32)))
  {

    dispatch thunk of Lazy.value.getter();
  }

  else
  {
  }

  AttributedString.init(localized:bundle:linkA:linkB:)();
  v42 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v42 setAlignment:1];
  v43 = v1 + *(type metadata accessor for LearnMoreAttributorView(0) + 28);
  v44 = *v43;
  if (*(v43 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v44, 0);
    (*(v35 + 8))(v39, v64);
    v45 = v69;
    if (v84 != 1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v46 = [objc_opt_self() blackColor];
    goto LABEL_9;
  }

  v45 = v69;
  if (v44)
  {
    goto LABEL_8;
  }

LABEL_6:
  v46 = sub_10068CE44();
LABEL_9:
  v84 = v46;
  sub_100504088();
  AttributedString.subscript.setter();
  v84 = v42;
  sub_1008723B8();
  v64 = v42;
  AttributedString.subscript.setter();
  v84 = sub_10068CF44();
  sub_100513F58();
  AttributedString.subscript.setter();
  v48 = v76;
  AttributedString.runs.getter();
  v49 = v63;
  (*(v63 + 16))(v33, v48, v26);
  sub_10087240C(&qword_100CC2708, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  dispatch thunk of Collection.startIndex.getter();
  (*(v49 + 8))(v48, v26);
  ++v82;
  v76 = (v74 + 4);
  v77 = (v74 + 2);
  ++v74;
  ++v75;
  v50 = v70;
  v72 = v26;
  for (i = v33; ; v33 = i)
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_10087240C(&qword_100CC2710, &type metadata accessor for AttributedString.Runs.Index, &protocol conformance descriptor for AttributedString.Runs.Index);
    v51 = v83;
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v82)(v20, v51);
    if (v52)
    {
      break;
    }

    v53 = dispatch thunk of Collection.subscript.read();
    v54 = v80;
    (*v77)(v80);
    v53(&v84, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v76)(v45, v54, v50);
    v55 = v78;
    AttributedString.Runs.Run.attributes.getter();
    sub_100504124();
    v56 = v79;
    AttributeContainer.subscript.getter();
    (*v75)(v55, v81);
    v57 = type metadata accessor for URL();
    LODWORD(v53) = sub_100024D10(v56, 1, v57);
    sub_1000180EC(v56, &qword_100CB3AB0, &unk_100A2FB80);
    if (v53 != 1)
    {
      v58 = v65;
      AttributedString.Runs.Run.range.getter();
      v59 = v67;
      static Text.LineStyle.single.getter();
      v60 = type metadata accessor for Text.LineStyle();
      sub_10001B350(v59, 0, 1, v60);
      sub_100006F64(&qword_100CB8C08, &qword_100CB8BD0, &qword_100A4CFA0, &protocol conformance descriptor for Range<A>);
      v61 = AttributedString.subscript.modify();
      sub_100035AD0(v59, v68, &qword_100CDFB30, &qword_100A8F370);
      sub_100872454();
      v50 = v70;
      AttributedSubstring.subscript.setter();
      sub_1000180EC(v59, &qword_100CDFB30, &qword_100A8F370);
      v61(&v84, 0);
      v45 = v69;
      sub_1000180EC(v58, &qword_100CB8BD0, &qword_100A4CFA0);
    }

    (*v74)(v45, v50);
  }

  return sub_1000180EC(v33, &qword_100CC26F8, &unk_100A5B2C0);
}

uint64_t sub_10087096C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CDFA70, &qword_100A8F230);
  sub_100870A00(v2, a2 + *(v4 + 44));
  sub_10068CE44();
  v5 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  result = sub_10022C350(&qword_100CDFA78, &qword_100A8F268);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  return result;
}

uint64_t sub_100870A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v27 = sub_10022C350(&qword_100CDFA80, &qword_100A8F270);
  __chkstk_darwin(v27);
  v4 = &v27 - v3;
  v5 = sub_10022C350(&qword_100CDFA88, &qword_100A8F278);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AttributedString();
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v15 != 5)
  {
    sub_10086FF78(v13);
    v16 = Text.init(_:)();
    v17 = v20;
    v19 = v21;
    v18 = v22 & 1;
    sub_10010CD54(v16, v20, v22 & 1);
  }

  v23 = v28;
  if (*(*(v28 + 8) + 16))
  {
    *v4 = static VerticalAlignment.center.getter();
    *(v4 + 1) = 0x4034000000000000;
    v4[16] = 0;
    sub_10022C350(&qword_100CDFA90, &qword_100A8F280);
    sub_100870CF4(v23);
    sub_100218BC8(v4, v10);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  sub_10001B350(v10, v24, 1, v27);
  sub_100218C30(v10, v7);
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = 0x4030000000000000;
  *(a2 + 40) = 0;
  v25 = sub_10022C350(&qword_100CDFA98, &unk_100A8F288);
  sub_100218C30(v7, a2 + *(v25 + 64));
  sub_100148118(v16, v17, v18, v19);
  sub_10014A53C(v16, v17, v18, v19);
  sub_1000180EC(v10, &qword_100CDFA88, &qword_100A8F278);
  sub_1000180EC(v7, &qword_100CDFA88, &qword_100A8F278);
  return sub_10014A53C(v16, v17, v18, v19);
}

uint64_t sub_100870CF4(uint64_t a1)
{
  v2 = type metadata accessor for LearnMoreAttributorView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = *(a1 + 8);
  swift_getKeyPath();
  sub_100871D70(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100871DD4(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_10022C350(&qword_100CDFAA0, &qword_100A8F2B0);
  sub_10022C350(&qword_100CDFAA8, &qword_100A8F2B8);
  sub_100006F64(&qword_100CDFAB0, &qword_100CDFAA0, &qword_100A8F2B0, &protocol conformance descriptor for [A]);
  sub_10087240C(&qword_100CDFAB8, &type metadata accessor for WeatherProviderAttribution, &protocol conformance descriptor for WeatherProviderAttribution);
  sub_100871E50();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100870EE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v56 = a1;
  v53 = a2;
  v2 = type metadata accessor for LearnMoreAttributorView(0);
  v3 = *(v2 - 8);
  v51 = v2 - 8;
  v55 = v3;
  v54 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v52 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityTraits();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PlainButtonStyle();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10022C350(&qword_100CDFAD8, &unk_100A8F2C8);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v39 - v8;
  v43 = sub_10022C350(&qword_100CDFAE8, &qword_100A8F2D8);
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = &v39 - v10;
  v44 = sub_10022C350(&qword_100CDFAD0, &qword_100A8F2C0);
  __chkstk_darwin(v44);
  v40 = &v39 - v12;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CDFAF0, &qword_100A8F2E0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  WeatherProviderAttribution.logoURL.getter();
  v20 = WeatherProviderAttribution.name.getter();
  sub_100871600(v16, v20, v21, v19);

  (*(v14 + 8))(v16, v13);
  WeatherProviderAttribution.source.getter();
  v57 = v19;
  v22 = v19;
  sub_1008720B4();
  Link.init(destination:label:)();
  v23 = v39;
  PlainButtonStyle.init()();
  v24 = sub_100006F64(&qword_100CDFAE0, &qword_100CDFAD8, &unk_100A8F2C8, &protocol conformance descriptor for Link<A>);
  v25 = sub_10087240C(&qword_100CB0848, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v26 = v41;
  v27 = v45;
  View.buttonStyle<A>(_:)();
  (*(v47 + 8))(v23, v27);
  (*(v42 + 8))(v9, v26);
  v28 = v48;
  static AccessibilityTraits.isButton.getter();
  v58 = v26;
  v59 = v27;
  v60 = v24;
  v61 = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v40;
  v30 = v43;
  View.accessibility(removeTraits:)();
  (*(v49 + 8))(v28, v50);
  (*(v46 + 8))(v11, v30);
  v31 = v56;
  v32 = v53;
  ModifiedContent<>.accessibilityHint(_:)();
  sub_1000180EC(v29, &qword_100CDFAD0, &qword_100A8F2C0);
  KeyPath = swift_getKeyPath();
  v34 = v52;
  sub_100871D70(v31, v52);
  v35 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v36 = swift_allocObject();
  sub_100871DD4(v34, v36 + v35);
  v37 = (v32 + *(sub_10022C350(&qword_100CDFAA8, &qword_100A8F2B8) + 36));
  sub_10022C350(&qword_100CA5500, &qword_100A5C030);
  OpenURLAction.init(handler:)();
  *v37 = KeyPath;
  return sub_1000180EC(v22, &qword_100CDFAF0, &qword_100A8F2E0);
}

uint64_t sub_100871600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v33._countAndFlagsBits = a2;
  v33._object = a3;
  v34 = a4;
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for LearnMoreAttributorView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_10022C350(&qword_100CDFB08, &qword_100A8F2E8);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 16))(v12, a1, v16);
  sub_10001B350(v12, 0, 1, v16);
  sub_100871D70(v4, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_100871DD4(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_10022C350(&qword_100CDFB20, &unk_100A8F330);
  sub_10087232C();
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = &v15[*(v13 + 36)];
  v20 = v36;
  *v19 = v35;
  *(v19 + 1) = v20;
  *(v19 + 2) = v37;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v33);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
  v23 = LocalizedStringKey.init(stringInterpolation:)();
  v27 = Text.init(_:tableName:bundle:comment:)(v23, v25, v24 & 1, v26, 0, 0, 0, "Accessibility label for the provider logo icon", 46, 2);
  v29 = v28;
  v31 = v30;
  sub_100872170();
  View.accessibilityLabel(_:)();
  sub_10010CD64(v27, v29, v31 & 1);

  return sub_1000180EC(v15, &qword_100CDFB08, &qword_100A8F2E8);
}

uint64_t sub_100871998(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for LearnMoreAttributorView(0) + 20);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);
    Strong = swift_unknownObjectRelease();
  }

  return static OpenURLAction.Result.systemAction.getter(Strong);
}