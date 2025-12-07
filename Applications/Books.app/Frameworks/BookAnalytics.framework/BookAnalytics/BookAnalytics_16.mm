unint64_t sub_181EE0()
{
  result = qword_28BE10;
  if (!qword_28BE10)
  {
    result = swift_getWitnessTable(byte_206B60, &type metadata for AccountData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BE10);
  }

  return result;
}

unint64_t sub_181F34()
{
  result = qword_28BE18;
  if (!qword_28BE18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountUserAction, &type metadata for AccountUserAction, v0, v1);
    atomic_store(result, &qword_28BE18);
  }

  return result;
}

unint64_t sub_181F88()
{
  result = qword_28BE20;
  if (!qword_28BE20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountType, &type metadata for AccountType, v0, v1);
    atomic_store(result, &qword_28BE20);
  }

  return result;
}

unint64_t sub_181FDC()
{
  result = qword_28BE30;
  if (!qword_28BE30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountUserAction, &type metadata for AccountUserAction, v0, v1);
    atomic_store(result, &qword_28BE30);
  }

  return result;
}

unint64_t sub_182030()
{
  result = qword_28BE38;
  if (!qword_28BE38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountType, &type metadata for AccountType, v0, v1);
    atomic_store(result, &qword_28BE38);
  }

  return result;
}

unint64_t sub_1820B0()
{
  result = qword_28BE40;
  if (!qword_28BE40)
  {
    result = swift_getWitnessTable(a1k, &type metadata for AccountData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BE40);
  }

  return result;
}

unint64_t sub_182108()
{
  result = qword_28BE48;
  if (!qword_28BE48)
  {
    result = swift_getWitnessTable(aYk, &type metadata for AccountData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BE48);
  }

  return result;
}

unint64_t sub_182160()
{
  result = qword_28BE50;
  if (!qword_28BE50)
  {
    result = swift_getWitnessTable(aAk, &type metadata for AccountData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BE50);
  }

  return result;
}

BookAnalytics::DialogActionType_optional __swiftcall DialogActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261610;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 15;
  if (v5 < 0xF)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t DialogActionType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6F4E657461647075;
      break;
    case 2:
      result = 0x614C657461647075;
      break;
    case 3:
      result = 27503;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x74754F6E676973;
      break;
    case 6:
      result = 0x746F67726F4669;
      break;
    case 7:
      result = 0x6C65636E6163;
      break;
    case 8:
    case 0xB:
      result = 0x74736F4D74726F73;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xC:
      result = 1701736302;
      break;
    case 0xD:
      result = 0x73676E6974746573;
      break;
    case 0xE:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1823E8()
{
  v0 = DialogActionType.rawValue.getter();
  v2 = v1;
  v3 = DialogActionType.rawValue.getter();
  v11 = v4;
  if (v0 == v3 && v2 == v4)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E1D30();
  }

  v2, v4, v5, v6, v7, v8, v9, v10;
  v11, v14, v15, v16, v17, v18, v19, v20;
  return v13 & 1;
}

unint64_t sub_182488()
{
  result = qword_28BE58;
  if (!qword_28BE58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DialogActionType, &type metadata for DialogActionType, v0, v1);
    atomic_store(result, &qword_28BE58);
  }

  return result;
}

Swift::Int sub_1824DC()
{
  sub_1E1DC0();
  DialogActionType.rawValue.getter();
  v1 = v0;
  sub_1E17D0();
  v1, v2, v3, v4, v5, v6, v7, v8;
  return sub_1E1DE0();
}

void sub_182544(uint64_t a1)
{
  DialogActionType.rawValue.getter();
  v2 = v1;
  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_1825A8(uint64_t a1)
{
  sub_1E1DC0();
  DialogActionType.rawValue.getter();
  v2 = v1;
  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

uint64_t sub_182618@<X0>(uint64_t *a1@<X8>)
{
  result = DialogActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DialogActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DialogActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_182840()
{
  result = qword_28BE60;
  if (!qword_28BE60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DialogActionType, &type metadata for DialogActionType, v0, v1);
    atomic_store(result, &qword_28BE60);
  }

  return result;
}

void sub_1828B0(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000000002172C0 == a2)
  {
    a2, 0x80000000002172C0, 0xD000000000000017, a3, a4, a5, a6, a7;
    v10 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v10 = v11 ^ 1;
  }

  *a8 = v10 & 1;
}

uint64_t sub_182944(uint64_t a1)
{
  v2 = sub_182CA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_182980(uint64_t a1)
{
  v2 = sub_182CA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RedownloadFailData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28BE68, &qword_206D00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_182CA4();
  sub_1E1E00();
  v10 = v7;
  sub_182CF8();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void RedownloadFailData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28BE80, &qword_206D08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_182CA4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_182D4C();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_182CA4()
{
  result = qword_28BE70;
  if (!qword_28BE70)
  {
    result = swift_getWitnessTable(byte_206ED8, &type metadata for RedownloadFailData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BE70);
  }

  return result;
}

unint64_t sub_182CF8()
{
  result = qword_28BE78;
  if (!qword_28BE78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RedownloadFailureReason, &type metadata for RedownloadFailureReason, v0, v1);
    atomic_store(result, &qword_28BE78);
  }

  return result;
}

unint64_t sub_182D4C()
{
  result = qword_28BE88;
  if (!qword_28BE88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RedownloadFailureReason, &type metadata for RedownloadFailureReason, v0, v1);
    atomic_store(result, &qword_28BE88);
  }

  return result;
}

unint64_t sub_182DCC()
{
  result = qword_28BE90;
  if (!qword_28BE90)
  {
    result = swift_getWitnessTable(byte_206EB0, &type metadata for RedownloadFailData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BE90);
  }

  return result;
}

unint64_t sub_182E24()
{
  result = qword_28BE98;
  if (!qword_28BE98)
  {
    result = swift_getWitnessTable(byte_206E20, &type metadata for RedownloadFailData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BE98);
  }

  return result;
}

unint64_t sub_182E7C()
{
  result = qword_28BEA0;
  if (!qword_28BEA0)
  {
    result = swift_getWitnessTable(byte_206E48, &type metadata for RedownloadFailData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BEA0);
  }

  return result;
}

void sub_182EF8(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x6F73616552646E65 && a2 == 0xED0000657079546ELL)
  {
    a2, 0xED0000657079546ELL, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_182F88(uint64_t a1)
{
  v2 = sub_18333C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_182FC4(uint64_t a1)
{
  v2 = sub_18333C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionEndReasonData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28BEA8, &qword_206F30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_18333C();
  sub_1E1E00();
  v10 = v7;
  sub_183390();
  sub_1E1C80();
  return (*(v4 + 8))(v6, v3);
}

void SessionEndReasonData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28BEC0, &qword_206F38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_18333C();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1833E4();
    sub_1E1BB0();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics20SessionEndReasonDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = *a2;
  if (v8 == 4)
  {
    if (v9 == 4)
    {
      return 1;
    }
  }

  else if (v9 != 4 && (sub_22BA0(v8, v9, a3, a4, a5, a6, a7, a8) & 1) != 0)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_18333C()
{
  result = qword_28BEB0;
  if (!qword_28BEB0)
  {
    result = swift_getWitnessTable(aQe_0, &type metadata for SessionEndReasonData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BEB0);
  }

  return result;
}

unint64_t sub_183390()
{
  result = qword_28BEB8;
  if (!qword_28BEB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EndReasonType, &type metadata for EndReasonType, v0, v1);
    atomic_store(result, &qword_28BEB8);
  }

  return result;
}

unint64_t sub_1833E4()
{
  result = qword_28BEC8;
  if (!qword_28BEC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EndReasonType, &type metadata for EndReasonType, v0, v1);
    atomic_store(result, &qword_28BEC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionEndReasonData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_183504()
{
  result = qword_28BED0;
  if (!qword_28BED0)
  {
    result = swift_getWitnessTable(byte_2070E0, &type metadata for SessionEndReasonData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BED0);
  }

  return result;
}

unint64_t sub_18355C()
{
  result = qword_28BED8;
  if (!qword_28BED8)
  {
    result = swift_getWitnessTable(byte_207050, &type metadata for SessionEndReasonData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BED8);
  }

  return result;
}

unint64_t sub_1835B4()
{
  result = qword_28BEE0;
  if (!qword_28BEE0)
  {
    result = swift_getWitnessTable(byte_207078, &type metadata for SessionEndReasonData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BEE0);
  }

  return result;
}

uint64_t AnnotationActionEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27F318, &unk_1E8408);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationActionEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnnotationActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27F318, &unk_1E8408);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AnnotationActionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationActionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnnotationActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AnnotationActionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AnnotationActionEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27F318, &unk_1E8408);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t AnnotationActionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationActionEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationActionEvent.Model.init(contentData:viewData:eventData:)@<X0>(_OWORD *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v8;
  v9 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v9;
  v10 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v10;
  *(a4 + 96) = v6;
  *(a4 + 98) = v7;
  v11 = *(type metadata accessor for AnnotationActionEvent.Model(0) + 24);
  v12 = sub_1E1150();
  v13 = *(*(v12 - 8) + 32);

  return v13(a4 + v11, a3, v12);
}

uint64_t sub_183C08(uint64_t a1)
{
  v2 = sub_183F20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_183C44(uint64_t a1)
{
  v2 = sub_183F20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AnnotationActionEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28BF18, &qword_207158);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-v6];
  sub_48B8(a1, a1[3]);
  sub_183F20();
  sub_1E1E00();
  v8 = v2[2];
  v9 = v2[4];
  v36 = v2[3];
  v37 = v9;
  v10 = v2[4];
  v38 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v34 = v2[1];
  v35 = v12;
  v13 = *v2;
  v30 = v36;
  v31 = v10;
  v32 = v2[5];
  v33 = v13;
  v27 = v11;
  v28 = v34;
  v29 = v8;
  v26 = 0;
  sub_13A5C(&v33, &v20);
  sub_143D0();
  v14 = v39;
  sub_1E1CF0();
  if (v14)
  {
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v20 = v27;
    v21 = v28;
    sub_14424(&v20);
  }

  else
  {
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v20 = v27;
    v21 = v28;
    sub_14424(&v20);
    v15 = *(v2 + 98);
    v18 = *(v2 + 48);
    v19 = v15;
    v17[12] = 1;
    sub_B7B4();
    sub_1E1CF0();
    type metadata accessor for AnnotationActionEvent.Model(0);
    LOBYTE(v18) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_183F20()
{
  result = qword_28BF20;
  if (!qword_28BF20)
  {
    result = swift_getWitnessTable(aYc, &type metadata for AnnotationActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BF20);
  }

  return result;
}

void AnnotationActionEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1E1150();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_3D68(&qword_28BF28, &qword_207160);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v34 - v7;
  v9 = type metadata accessor for AnnotationActionEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v39 = a1;
  sub_48B8(a1, v12);
  sub_183F20();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v39, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v34 = v9;
    v20 = v37;
    v21 = v6;
    v49 = 0;
    sub_14CB8();
    v22 = v38;
    sub_1E1C20();
    v23 = v45;
    *(v11 + 2) = v44;
    *(v11 + 3) = v23;
    v24 = v47;
    *(v11 + 4) = v46;
    *(v11 + 5) = v24;
    v25 = v43;
    *v11 = v42;
    *(v11 + 1) = v25;
    v48 = 1;
    sub_B75C();
    sub_1E1C20();
    v26 = v41;
    *(v11 + 48) = v40;
    v11[98] = v26;
    LOBYTE(v40) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v8, v22);
    (*(v35 + 32))(&v11[*(v34 + 24)], v21, v4);
    sub_184378(v11, v36);
    sub_4E48(v39, v27, v28, v29, v30, v31, v32, v33);
    sub_1843DC(v11);
  }
}

uint64_t sub_184378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationActionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1843DC(uint64_t a1)
{
  v2 = type metadata accessor for AnnotationActionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1844EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F318, &unk_1E8408);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_184664(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F318, &unk_1E8408);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1847E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1848A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_184960()
{
  result = qword_28C060;
  if (!qword_28C060)
  {
    result = swift_getWitnessTable(aQc, &type metadata for AnnotationActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C060);
  }

  return result;
}

unint64_t sub_1849B8()
{
  result = qword_28C068;
  if (!qword_28C068)
  {
    result = swift_getWitnessTable(byte_207268, &type metadata for AnnotationActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C068);
  }

  return result;
}

unint64_t sub_184A10()
{
  result = qword_28C070;
  if (!qword_28C070)
  {
    result = swift_getWitnessTable(byte_207290, &type metadata for AnnotationActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C070);
  }

  return result;
}

BookAnalytics::ListeningActionSourceType_optional __swiftcall ListeningActionSourceType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261798;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 8;
  if (v5 < 8)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t ListeningActionSourceType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 6452085;
  if (v1 != 6)
  {
    v3 = 0x6863746177;
  }

  v4 = 0x6979616C50776F6ELL;
  if (v1 != 4)
  {
    v4 = 0x746F6F5465756C62;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 != 2)
  {
    v5 = 0x79616C50726163;
  }

  if (*v0)
  {
    v2 = 0x7070416E69;
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

unint64_t sub_184BC8()
{
  result = qword_28C078;
  if (!qword_28C078)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListeningActionSourceType, &type metadata for ListeningActionSourceType, v0, v1);
    atomic_store(result, &qword_28C078);
  }

  return result;
}

void sub_184C44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE300000000000000;
  v6 = 6452085;
  if (v2 != 6)
  {
    v6 = 0x6863746177;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEA0000000000676ELL;
  v8 = 0x6979616C50776F6ELL;
  if (v2 != 4)
  {
    v8 = 0x746F6F5465756C62;
    v7 = 0xE900000000000068;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000000002130D0;
  v10 = 0xD000000000000014;
  if (v2 != 2)
  {
    v10 = 0x79616C50726163;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x7070416E69;
    v3 = 0xE500000000000000;
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

unint64_t sub_184E00()
{
  result = qword_28C080;
  if (!qword_28C080)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListeningActionSourceType, &type metadata for ListeningActionSourceType, v0, v1);
    atomic_store(result, &qword_28C080);
  }

  return result;
}

uint64_t sub_184E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_185598();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_184EC8()
{
  sub_185534();
  sub_1E1490();
  return v1;
}

uint64_t View.appAnalyticsPositionInSection(_:)(objc_class *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  sub_5DE50(&qword_28C0A0, &qword_2074B0);
  v7 = sub_1E1440();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - v9;
  KeyPath = swift_getKeyPath();
  v29[2] = a1;
  a2 &= 1u;
  v30 = a2;
  sub_1E1500();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = swift_allocObject();
  v19[1].super.isa = a1;
  v19[1].dataProviders[0] = a2;
  v20 = sub_1852DC();
  v29[0] = a4;
  v29[1] = v20;
  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v29);
  sub_1E14F0();
  v19, v21, v22, v23, v24, v25, v26, v27;
  return (*(v8 + 8))(v10, v7);
}

void *sub_1850BC@<X0>(uint64_t a1@<X8>)
{
  sub_185534();
  result = sub_1E1490();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void *sub_185114@<X0>(uint64_t a1@<X8>)
{
  sub_185534();
  result = sub_1E1490();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_185214(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_27D610 != -1)
  {
    swift_once();
  }

  v3 = sub_3D68(&qword_28C0B0, &unk_2074E0);
  sub_3B2C(v3, qword_28C088);
  sub_3D68(&qword_28C0B8, &qword_20E4D0);
  return sub_1E1710();
}

unint64_t sub_1852DC()
{
  result = qword_28C0A8;
  if (!qword_28C0A8)
  {
    v3 = sub_5DE50(&qword_28C0A0, &qword_2074B0);
    result = swift_getWitnessTable(&protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>, v3, v0, v1);
    atomic_store(result, &qword_28C0A8);
  }

  return result;
}

uint64_t sub_185340()
{
  v0 = sub_3D68(&qword_28C0B0, &unk_2074E0);
  sub_5F94(v0, qword_28C088);
  sub_3B2C(v0, qword_28C088);
  sub_3D68(&qword_28C0B8, &qword_20E4D0);
  return sub_1E1700();
}

uint64_t static MetricsFieldsContext.Property<A>.positionInSection.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D610 != -1)
  {
    swift_once();
  }

  v2 = sub_3D68(&qword_28C0B0, &unk_2074E0);
  v3 = sub_3B2C(v2, qword_28C088);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_185498(uint64_t *a1)
{
  v1 = a1[1];
  sub_5DE50(&qword_28C0A0, &qword_2074B0);
  v2 = sub_1E1440();
  v4[0] = v1;
  v4[1] = sub_1852DC();
  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_185534()
{
  result = qword_28C0C0;
  if (!qword_28C0C0)
  {
    result = swift_getWitnessTable(byte_20752C, &_s24__Key__positionInSectionVN, v0, v1);
    atomic_store(result, &qword_28C0C0);
  }

  return result;
}

unint64_t sub_185598()
{
  result = qword_28C0C8;
  if (!qword_28C0C8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_5DE50(&qword_28C0B8, &qword_20E4D0);
    v4[0] = &protocol witness table for Int;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_28C0C8);
  }

  return result;
}

uint64_t ReportAnIssueEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAnIssueEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAnIssueEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ReportAnIssueEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t ReportAnIssueEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueEvent.Model.init(contentData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[3];
  *(a3 + 2) = a1[2];
  *(a3 + 3) = v5;
  v6 = a1[5];
  *(a3 + 4) = a1[4];
  *(a3 + 5) = v6;
  v7 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v7;
  v8 = *(type metadata accessor for ReportAnIssueEvent.Model(0) + 20);
  v9 = sub_1E1150();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a3[v8], a2, v9);
}

uint64_t sub_185A5C(uint64_t a1)
{
  v2 = sub_185D2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_185A98(uint64_t a1)
{
  v2 = sub_185D2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReportAnIssueEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28C100, &qword_207570);
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15[-v6];
  sub_48B8(a1, a1[3]);
  sub_185D2C();
  sub_1E1E00();
  v8 = v3[2];
  v9 = v3[4];
  v27 = v3[3];
  v28 = v9;
  v10 = v3[4];
  v29 = v3[5];
  v11 = *v3;
  v12 = v3[2];
  v25 = v3[1];
  v26 = v12;
  v13 = *v3;
  v21 = v27;
  v22 = v10;
  v23 = v3[5];
  v24 = v13;
  v18 = v11;
  v19 = v25;
  v20 = v8;
  v17 = 0;
  sub_13A5C(&v24, v16);
  sub_143D0();
  sub_1E1CF0();
  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v16[5] = v23;
  v16[0] = v18;
  v16[1] = v19;
  sub_14424(v16);
  if (!v2)
  {
    type metadata accessor for ReportAnIssueEvent.Model(0);
    v15[15] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v30 + 8))(v7, v5);
}

unint64_t sub_185D2C()
{
  result = qword_28C108;
  if (!qword_28C108)
  {
    result = swift_getWitnessTable(aM_19, &type metadata for ReportAnIssueEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C108);
  }

  return result;
}

void ReportAnIssueEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_1E1150();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_3D68(&qword_28C110, &qword_207578);
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v31 - v7;
  v9 = type metadata accessor for ReportAnIssueEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v36 = a1;
  sub_48B8(a1, v12);
  sub_185D2C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v36, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = v34;
    v44 = 0;
    sub_14CB8();
    sub_1E1C20();
    v21 = v40;
    *(v11 + 2) = v39;
    *(v11 + 3) = v21;
    v22 = v42;
    *(v11 + 4) = v41;
    *(v11 + 5) = v22;
    v23 = v38;
    *v11 = v37;
    *(v11 + 1) = v23;
    v43 = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v8, v35);
    (*(v32 + 32))(&v11[*(v9 + 20)], v6, v4);
    sub_186120(v11, v33);
    sub_4E48(v36, v24, v25, v26, v27, v28, v29, v30);
    sub_186184(v11);
  }
}

uint64_t sub_186120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAnIssueEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_186184(uint64_t a1)
{
  v2 = type metadata accessor for ReportAnIssueEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_186280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_18636C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_186488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_18659C(uint64_t a1)
{
  sub_58328(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_186634(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1866F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_186798(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_186828()
{
  result = qword_28C238;
  if (!qword_28C238)
  {
    result = swift_getWitnessTable(aE_16, &type metadata for ReportAnIssueEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C238);
  }

  return result;
}

unint64_t sub_186880()
{
  result = qword_28C240;
  if (!qword_28C240)
  {
    result = swift_getWitnessTable(byte_207674, &type metadata for ReportAnIssueEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C240);
  }

  return result;
}

unint64_t sub_1868D8()
{
  result = qword_28C248;
  if (!qword_28C248)
  {
    result = swift_getWitnessTable(byte_20769C, &type metadata for ReportAnIssueEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C248);
  }

  return result;
}

uint64_t ReadingBrightnessChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBrightnessChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingBrightnessChangeEvent.brightnessData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28C280, &unk_207780);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBrightnessChangeEvent.brightnessData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28C280, &unk_207780);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingBrightnessChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBrightnessChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingBrightnessChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingBrightnessChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_28C280, &unk_207780);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ReadingBrightnessChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBrightnessChangeEvent.Model.init(readingSessionData:contentData:brightnessData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *a3;
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v13 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v16;
  *(a5 + 48) = v14;
  *(a5 + 64) = v15;
  *(a5 + 112) = v12;
  v17 = *(type metadata accessor for ReadingBrightnessChangeEvent.Model(0) + 28);
  v18 = sub_1E1150();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

unint64_t sub_187104()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x656E746867697262;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_18719C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_188500(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1871C4(uint64_t a1)
{
  v2 = sub_18753C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_187200(uint64_t a1)
{
  v2 = sub_18753C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingBrightnessChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28C288, &qword_207790);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-v6];
  sub_48B8(a1, a1[3]);
  sub_18753C();
  sub_1E1E00();
  v8 = *(v2 + 4);
  v9 = v2[2];
  v10 = *(v2 + 12);
  v11 = *(v2 + 13);
  v12 = *(v2 + 14);
  v38 = *v2;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = v11;
  v43 = v12;
  v37 = 0;
  sub_67BE8();
  v13 = v44;
  sub_1E1CF0();
  if (!v13)
  {
    v14 = *(v2 + 3);
    v15 = *(v2 + 5);
    v34 = *(v2 + 4);
    v35 = v15;
    v16 = *(v2 + 5);
    v36 = *(v2 + 6);
    v17 = *(v2 + 1);
    v18 = *(v2 + 3);
    v32 = *(v2 + 2);
    v33 = v18;
    v19 = *(v2 + 1);
    v28 = v34;
    v29 = v16;
    v30 = *(v2 + 6);
    v31 = v19;
    v25 = v17;
    v26 = v32;
    v27 = v14;
    v24 = 1;
    sub_13A5C(&v31, v23);
    sub_143D0();
    sub_1E1CF0();
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[5] = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_14424(v23);
    v22 = v2[28];
    v21[11] = 2;
    sub_EC614();
    sub_1E1CF0();
    type metadata accessor for ReadingBrightnessChangeEvent.Model(0);
    LOBYTE(v22) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_18753C()
{
  result = qword_28C290;
  if (!qword_28C290)
  {
    result = swift_getWitnessTable(byte_207968, &type metadata for ReadingBrightnessChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C290);
  }

  return result;
}

void ReadingBrightnessChangeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1E1150();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_28C298, &qword_207798);
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for ReadingBrightnessChangeEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v43 = a1;
  sub_48B8(a1, v13);
  sub_18753C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v43, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v38 = v10;
    v21 = v41;
    LOBYTE(v50) = 0;
    sub_686E8();
    sub_1E1C20();
    v22 = BYTE4(v44);
    v23 = DWORD2(v44);
    v24 = BYTE12(v44);
    v25 = BYTE13(v44);
    v26 = BYTE14(v44);
    *v12 = v44;
    v12[4] = v22;
    *(v12 + 2) = v23;
    v12[12] = v24;
    v12[13] = v25;
    v12[14] = v26;
    v52 = 1;
    sub_14CB8();
    sub_1E1C20();
    v27 = v47;
    *(v12 + 3) = v46;
    *(v12 + 4) = v27;
    v28 = v49;
    *(v12 + 5) = v48;
    *(v12 + 6) = v28;
    v29 = v45;
    *(v12 + 1) = v44;
    *(v12 + 2) = v29;
    v51 = 2;
    sub_EC5BC();
    sub_1E1C20();
    *(v12 + 28) = v50;
    LOBYTE(v50) = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v30 = v42;
    sub_1E1C20();
    (*(v21 + 8))(v9, v30);
    (*(v39 + 32))(&v12[*(v38 + 28)], v6, v4);
    sub_187990(v12, v40);
    sub_4E48(v43, v31, v32, v33, v34, v35, v36, v37);
    sub_1879F4(v12);
  }
}

uint64_t sub_187990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingBrightnessChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1879F4(uint64_t a1)
{
  v2 = type metadata accessor for ReadingBrightnessChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_187AF0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_28C280, &unk_207780);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_187C74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v14 = sub_3D68(&qword_28C280, &unk_207780);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_187E40(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_28C280, &unk_207780);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_188004(uint64_t a1)
{
  sub_188160(319, &qword_280E40, sub_686E8, sub_67BE8, &type metadata for ReadingSessionData);
  if (v1 <= 0x3F)
  {
    sub_188160(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_188160(319, &unk_28C308, sub_EC5BC, sub_EC614, &type metadata for BrightnessData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_188160(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1881F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1882B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188354(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1883FC()
{
  result = qword_28C3D8;
  if (!qword_28C3D8)
  {
    result = swift_getWitnessTable(asc_207940, &type metadata for ReadingBrightnessChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C3D8);
  }

  return result;
}

unint64_t sub_188454()
{
  result = qword_28C3E0;
  if (!qword_28C3E0)
  {
    result = swift_getWitnessTable(aQ_15, &type metadata for ReadingBrightnessChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C3E0);
  }

  return result;
}

unint64_t sub_1884AC()
{
  result = qword_28C3E8;
  if (!qword_28C3E8)
  {
    result = swift_getWitnessTable(aY_23, &type metadata for ReadingBrightnessChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C3E8);
  }

  return result;
}

uint64_t sub_188500(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000214400;
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEB00000000617461;
    if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0xEE00617461447373;
      if (a1 == 0x656E746867697262 && a2 == 0xEE00617461447373 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
      {
        0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = sub_1E1D30();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t ReadingScrollViewSettingChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.scrollViewSettingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28C420, &unk_2079C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.scrollViewSettingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28C420, &unk_2079C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingScrollViewSettingChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_28C420, &unk_2079C0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ReadingScrollViewSettingChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.Model.init(readingSessionData:contentData:scrollViewSettingData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *a3;
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v13 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v16;
  *(a5 + 48) = v14;
  *(a5 + 64) = v15;
  *(a5 + 112) = v12;
  v17 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent.Model(0) + 28);
  v18 = sub_1E1150();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

unint64_t sub_188E50()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_188EE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_18A248(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_188F0C(uint64_t a1)
{
  v2 = sub_189284();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_188F48(uint64_t a1)
{
  v2 = sub_189284();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingScrollViewSettingChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28C428, &qword_2079D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-v6];
  sub_48B8(a1, a1[3]);
  sub_189284();
  sub_1E1E00();
  v8 = *(v2 + 4);
  v9 = v2[2];
  v10 = *(v2 + 12);
  v11 = *(v2 + 13);
  v12 = *(v2 + 14);
  v38 = *v2;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = v11;
  v43 = v12;
  v37 = 0;
  sub_67BE8();
  v13 = v44;
  sub_1E1CF0();
  if (!v13)
  {
    v14 = *(v2 + 3);
    v15 = *(v2 + 5);
    v34 = *(v2 + 4);
    v35 = v15;
    v16 = *(v2 + 5);
    v36 = *(v2 + 6);
    v17 = *(v2 + 1);
    v18 = *(v2 + 3);
    v32 = *(v2 + 2);
    v33 = v18;
    v19 = *(v2 + 1);
    v28 = v34;
    v29 = v16;
    v30 = *(v2 + 6);
    v31 = v19;
    v25 = v17;
    v26 = v32;
    v27 = v14;
    v24 = 1;
    sub_13A5C(&v31, v23);
    sub_143D0();
    sub_1E1CF0();
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[5] = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_14424(v23);
    v22 = *(v2 + 112);
    v21[14] = 2;
    sub_C02B4();
    sub_1E1CF0();
    type metadata accessor for ReadingScrollViewSettingChangeEvent.Model(0);
    v22 = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_189284()
{
  result = qword_28C430;
  if (!qword_28C430)
  {
    result = swift_getWitnessTable(byte_207BB0, &type metadata for ReadingScrollViewSettingChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C430);
  }

  return result;
}

void ReadingScrollViewSettingChangeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1E1150();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_28C438, &qword_2079D8);
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for ReadingScrollViewSettingChangeEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v43 = a1;
  sub_48B8(a1, v13);
  sub_189284();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v43, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v38 = v10;
    v21 = v41;
    v52 = 0;
    sub_686E8();
    sub_1E1C20();
    v22 = BYTE4(v44);
    v23 = DWORD2(v44);
    v24 = BYTE12(v44);
    v25 = BYTE13(v44);
    v26 = BYTE14(v44);
    *v12 = v44;
    v12[4] = v22;
    *(v12 + 2) = v23;
    v12[12] = v24;
    v12[13] = v25;
    v12[14] = v26;
    v52 = 1;
    sub_14CB8();
    sub_1E1C20();
    v27 = v47;
    *(v12 + 3) = v46;
    *(v12 + 4) = v27;
    v28 = v49;
    *(v12 + 5) = v48;
    *(v12 + 6) = v28;
    v29 = v45;
    *(v12 + 1) = v44;
    *(v12 + 2) = v29;
    v50 = 2;
    sub_C025C();
    sub_1E1C20();
    v12[112] = v51;
    v51 = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v30 = v42;
    sub_1E1C20();
    (*(v21 + 8))(v9, v30);
    (*(v39 + 32))(&v12[*(v38 + 28)], v6, v4);
    sub_1896D8(v12, v40);
    sub_4E48(v43, v31, v32, v33, v34, v35, v36, v37);
    sub_18973C(v12);
  }
}

uint64_t sub_1896D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingScrollViewSettingChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18973C(uint64_t a1)
{
  v2 = type metadata accessor for ReadingScrollViewSettingChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_189838@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_28C420, &unk_2079C0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_1899BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v14 = sub_3D68(&qword_28C420, &unk_2079C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_189B88(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_28C420, &unk_2079C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_189D4C(uint64_t a1)
{
  sub_189EA8(319, &qword_280E40, sub_686E8, sub_67BE8, &type metadata for ReadingSessionData);
  if (v1 <= 0x3F)
  {
    sub_189EA8(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_189EA8(319, &unk_28C4A8, sub_C025C, sub_C02B4, &type metadata for ScrollViewSettingData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_189EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_189F38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_189FF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18A09C(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18A144()
{
  result = qword_28C578;
  if (!qword_28C578)
  {
    result = swift_getWitnessTable(byte_207B88, &type metadata for ReadingScrollViewSettingChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C578);
  }

  return result;
}

unint64_t sub_18A19C()
{
  result = qword_28C580;
  if (!qword_28C580)
  {
    result = swift_getWitnessTable(asc_207AF8, &type metadata for ReadingScrollViewSettingChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C580);
  }

  return result;
}

unint64_t sub_18A1F4()
{
  result = qword_28C588;
  if (!qword_28C588)
  {
    result = swift_getWitnessTable(byte_207B20, &type metadata for ReadingScrollViewSettingChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C588);
  }

  return result;
}

uint64_t sub_18A248(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000214400;
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEB00000000617461;
    if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x8000000000217310;
      if (a1 == 0xD000000000000015 && 0x8000000000217310 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
      {
        0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = sub_1E1D30();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t SearchSuggestionsReturnedEvent.searchSuggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchSuggestionsReturnedEvent(0) + 20);
  v4 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchSuggestionsReturnedEvent.searchSuggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchSuggestionsReturnedEvent(0) + 20);
  v4 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchSuggestionsReturnedEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchSuggestionsReturnedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchSuggestionsReturnedEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchSuggestionsReturnedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchSuggestionsReturnedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchSuggestionsReturnedEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_2863F0, &qword_1FA280);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SearchSuggestionsReturnedEvent.Model.searchSuggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t SearchSuggestionsReturnedEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchSuggestionsReturnedEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchSuggestionsReturnedEvent.Model.init(searchData:searchSuggestionData:eventData:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *a2;
  v9 = *(a2 + 1);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  v10 = *(type metadata accessor for SearchSuggestionsReturnedEvent.Model(0) + 24);
  v11 = sub_1E1150();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

unint64_t sub_18A9D4()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6144686372616573;
  }
}

uint64_t sub_18AA3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_18BB30(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_18AA64(uint64_t a1)
{
  v2 = sub_18AD24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18AAA0(uint64_t a1)
{
  v2 = sub_18AD24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchSuggestionsReturnedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28C5C0, &qword_207C08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  sub_48B8(a1, a1[3]);
  sub_18AD24();
  sub_1E1E00();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v38 = *v3;
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v37 = 0;
  sub_81E44();

  sub_1E1CF0();
  v12 = v39;
  v41, v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;
  if (!v2)
  {
    v27 = v3[5];
    LODWORD(v38) = *(v3 + 8);
    v39 = v27;
    v37 = 1;
    sub_F7474();

    sub_1E1CF0();
    v39, v28, v29, v30, v31, v32, v33, v34;
    type metadata accessor for SearchSuggestionsReturnedEvent.Model(0);
    LOBYTE(v38) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_18AD24()
{
  result = qword_28C5C8;
  if (!qword_28C5C8)
  {
    result = swift_getWitnessTable(byte_207DD8, &type metadata for SearchSuggestionsReturnedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C5C8);
  }

  return result;
}

void SearchSuggestionsReturnedEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1E1150();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_28C5D0, &qword_207C10);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for SearchSuggestionsReturnedEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v39 = a1;
  sub_48B8(a1, v13);
  sub_18AD24();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v39, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = v37;
    v22 = v12;
    v34 = v6;
    v43 = 0;
    sub_826DC();
    v23 = v38;
    sub_1E1C20();
    v24 = v41;
    v25 = v42;
    *v22 = v40;
    *(v22 + 16) = v24;
    *(v22 + 24) = v25;
    v43 = 1;
    sub_F7894();
    sub_1E1C20();
    v26 = *(&v40 + 1);
    *(v22 + 32) = v40;
    *(v22 + 40) = v26;
    LOBYTE(v40) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v21 + 8))(v9, v23);
    (*(v35 + 32))(v22 + *(v10 + 24), v34, v4);
    sub_18B114(v22, v36);
    sub_4E48(v39, v27, v28, v29, v30, v31, v32, v33);
    sub_18B178(v22);
  }
}

uint64_t sub_18B114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchSuggestionsReturnedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B178(uint64_t a1)
{
  v2 = type metadata accessor for SearchSuggestionsReturnedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_2863F0, &qword_1FA280);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_18B3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281D58, &qword_1EE340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_18B524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281D58, &qword_1EE340);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_18B694(uint64_t a1)
{
  sub_18B7A0(319, &qword_281E38, sub_826DC, sub_81E44, &type metadata for SearchData);
  if (v1 <= 0x3F)
  {
    sub_18B7A0(319, &unk_286490, sub_F7894, sub_F7474, &type metadata for SearchSuggestionData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18B7A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_18B830(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18B8F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18B994(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18BA2C()
{
  result = qword_28C708;
  if (!qword_28C708)
  {
    result = swift_getWitnessTable(byte_207DB0, &type metadata for SearchSuggestionsReturnedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C708);
  }

  return result;
}

unint64_t sub_18BA84()
{
  result = qword_28C710;
  if (!qword_28C710)
  {
    result = swift_getWitnessTable(byte_207D20, &type metadata for SearchSuggestionsReturnedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C710);
  }

  return result;
}

unint64_t sub_18BADC()
{
  result = qword_28C718;
  if (!qword_28C718)
  {
    result = swift_getWitnessTable(byte_207D48, &type metadata for SearchSuggestionsReturnedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C718);
  }

  return result;
}

uint64_t sub_18BB30(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6144686372616573 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000000002160E0;
    if (a1 == 0xD000000000000014 && 0x80000000002160E0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

BookAnalytics::TargetType_optional __swiftcall TargetType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261878;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

unint64_t TargetType.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_18BD1C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0xD000000000000012;
  v9 = *a1;
  v10 = 0x8000000000213110;
  if (v9 == 1)
  {
    v11 = 0xD000000000000012;
  }

  else
  {
    v11 = 0xD00000000000001ALL;
  }

  if (v9 == 1)
  {
    v12 = 0x8000000000213110;
  }

  else
  {
    v12 = 0x8000000000213130;
  }

  if (*a1)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x6E776F6E6B6E75;
  }

  if (v9)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v8 = 0xD00000000000001ALL;
    v10 = 0x8000000000213130;
  }

  if (*a2)
  {
    v15 = v8;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v13 == v15 && v14 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v14, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_18BE00()
{
  result = qword_28C720;
  if (!qword_28C720)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TargetType, &type metadata for TargetType, v0, v1);
    atomic_store(result, &qword_28C720);
  }

  return result;
}

Swift::Int sub_18BE54()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0x8000000000213110;
  if (v1 != 1)
  {
    v2 = 0x8000000000213130;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_18BEFC(uint64_t a1)
{
  v2 = 0x8000000000213110;
  if (*v1 != 1)
  {
    v2 = 0x8000000000213130;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_18BF90(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0x8000000000213110;
  if (v2 != 1)
  {
    v3 = 0x8000000000213130;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_18C040(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x8000000000213110;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x8000000000213130;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_18C164()
{
  result = qword_28C728;
  if (!qword_28C728)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TargetType, &type metadata for TargetType, v0, v1);
    atomic_store(result, &qword_28C728);
  }

  return result;
}

BookAnalytics::SearchEndMethod_optional __swiftcall SearchEndMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2618E0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 4;
  if (v5 < 4)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

unint64_t SearchEndMethod.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x656E6F646E616261;
  }

  if (*v0)
  {
    v1 = 0x75426C65636E6163;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_18C2A8()
{
  result = qword_28C730;
  if (!qword_28C730)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchEndMethod, &type metadata for SearchEndMethod, v0, v1);
    atomic_store(result, &qword_28C730);
  }

  return result;
}

Swift::Int sub_18C2FC()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0x8000000000213160;
  if (v1 != 2)
  {
    v3 = 0xE900000000000064;
  }

  if (v1)
  {
    v2 = 0xEF7061546E6F7474;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_18C3D4(uint64_t a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x8000000000213160;
  if (*v1 != 2)
  {
    v3 = 0xE900000000000064;
  }

  if (*v1)
  {
    v2 = 0xEF7061546E6F7474;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_18C498(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0x8000000000213160;
  if (v2 != 2)
  {
    v4 = 0xE900000000000064;
  }

  if (v2)
  {
    v3 = 0xEF7061546E6F7474;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_18C578(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x8000000000213160;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x656E6F646E616261;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x75426C65636E6163;
    v2 = 0xEF7061546E6F7474;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_18C6CC()
{
  result = qword_28C738;
  if (!qword_28C738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchEndMethod, &type metadata for SearchEndMethod, v0, v1);
    atomic_store(result, &qword_28C738);
  }

  return result;
}

BookAnalytics::FilterType_optional __swiftcall FilterType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261960;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 4;
  if (v5 < 4)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t FilterType.rawValue.getter()
{
  v1 = 0x7265536E496C6C61;
  v2 = 0x646165726E75;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x6573616863727570;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_18C810()
{
  result = qword_28C740;
  if (!qword_28C740)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FilterType, &type metadata for FilterType, v0, v1);
    atomic_store(result, &qword_28C740);
  }

  return result;
}

Swift::Int sub_18C864()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xEB00000000736569;
  v3 = 0xE600000000000000;
  if (v1 != 2)
  {
    v3 = 0xE700000000000000;
  }

  if (v1)
  {
    v2 = 0xE900000000000064;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_18C930(uint64_t a1)
{
  v2 = 0xEB00000000736569;
  v3 = 0xE600000000000000;
  if (*v1 != 2)
  {
    v3 = 0xE700000000000000;
  }

  if (*v1)
  {
    v2 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_18C9E8(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xEB00000000736569;
  v4 = 0xE600000000000000;
  if (v2 != 2)
  {
    v4 = 0xE700000000000000;
  }

  if (v2)
  {
    v3 = 0xE900000000000064;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_18CABC(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000736569;
  v3 = 0x7265536E496C6C61;
  v4 = 0xE600000000000000;
  v5 = 0x646165726E75;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6573616863727570;
    v2 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_18CC04()
{
  result = qword_28C748;
  if (!qword_28C748)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FilterType, &type metadata for FilterType, v0, v1);
    atomic_store(result, &qword_28C748);
  }

  return result;
}

void sub_18CC88(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x536C61766F6D6572 && a2 == 0xEE007972616D6D75)
  {
    a2, 0xEE007972616D6D75, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_18CD18(uint64_t a1)
{
  v2 = sub_18CF34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18CD54(uint64_t a1)
{
  v2 = sub_18CF34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WantListRemovalData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28C750, &qword_208170);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_18CF34();

  sub_1E1E00();
  v16[1] = v7;
  sub_3D68(&qword_28C760, &qword_208178);
  sub_18D138(&qword_28C768, sub_C584, &protocol conformance descriptor for <A> [A]);
  sub_1E1CF0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_18CF34()
{
  result = qword_28C758;
  if (!qword_28C758)
  {
    result = swift_getWitnessTable(aS_0, &type metadata for WantListRemovalData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C758);
  }

  return result;
}

void WantListRemovalData.init(from:)(BAEventReporter **a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_28C770, &qword_208180);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_18CF34();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_28C760, &qword_208178);
    sub_18D138(&qword_28C778, sub_C52C, &protocol conformance descriptor for <A> [A]);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v16[1];
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_18D138(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(&qword_28C760, &qword_208178);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18D1B4()
{
  result = qword_28C780;
  if (!qword_28C780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WantListRemovalData, &type metadata for WantListRemovalData, v0, v1);
    atomic_store(result, &qword_28C780);
  }

  return result;
}

unint64_t sub_18D20C()
{
  result = qword_28C788;
  if (!qword_28C788)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WantListRemovalData, &type metadata for WantListRemovalData, v0, v1);
    atomic_store(result, &qword_28C788);
  }

  return result;
}

unint64_t sub_18D2B4()
{
  result = qword_28C790;
  if (!qword_28C790)
  {
    result = swift_getWitnessTable(a9s, &type metadata for WantListRemovalData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C790);
  }

  return result;
}

unint64_t sub_18D30C()
{
  result = qword_28C798;
  if (!qword_28C798)
  {
    result = swift_getWitnessTable(byte_2082A0, &type metadata for WantListRemovalData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C798);
  }

  return result;
}

unint64_t sub_18D364()
{
  result = qword_28C7A0;
  if (!qword_28C7A0)
  {
    result = swift_getWitnessTable(aIs, &type metadata for WantListRemovalData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C7A0);
  }

  return result;
}

void sub_18D3E8(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x537972617262696CLL && a2 == 0xEE007972616D6D75)
  {
    a2, 0xEE007972616D6D75, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_18D478(uint64_t a1)
{
  v2 = sub_18D694();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18D4B4(uint64_t a1)
{
  v2 = sub_18D694();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28C7A8, &qword_2083A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_18D694();

  sub_1E1E00();
  v16[1] = v7;
  sub_3D68(&qword_28C7B8, &qword_2083B0);
  sub_18D898(&qword_28C7C0, sub_15986C, &protocol conformance descriptor for <A> [A]);
  sub_1E1CF0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_18D694()
{
  result = qword_28C7B0;
  if (!qword_28C7B0)
  {
    result = swift_getWitnessTable(byte_208590, &type metadata for LibraryData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C7B0);
  }

  return result;
}

void LibraryData.init(from:)(BAEventReporter **a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_28C7C8, &qword_2083B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_18D694();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_28C7B8, &qword_2083B0);
    sub_18D898(&qword_28C7D0, sub_159814, &protocol conformance descriptor for <A> [A]);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v16[1];
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_18D898(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(&qword_28C7B8, &qword_2083B0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18D96C()
{
  result = qword_28C7D8;
  if (!qword_28C7D8)
  {
    result = swift_getWitnessTable(byte_208568, &type metadata for LibraryData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C7D8);
  }

  return result;
}

unint64_t sub_18D9C4()
{
  result = qword_28C7E0;
  if (!qword_28C7E0)
  {
    result = swift_getWitnessTable(aIq, &type metadata for LibraryData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C7E0);
  }

  return result;
}

unint64_t sub_18DA1C()
{
  result = qword_28C7E8;
  if (!qword_28C7E8)
  {
    result = swift_getWitnessTable(a1q, &type metadata for LibraryData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C7E8);
  }

  return result;
}

uint64_t ReadingBackgroundColorChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.backgroundColorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28C820, &unk_2085E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.backgroundColorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28C820, &unk_2085E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingBackgroundColorChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_28C820, &unk_2085E0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ReadingBackgroundColorChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.Model.init(readingSessionData:contentData:backgroundColorData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *a3;
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v13 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v16;
  *(a5 + 48) = v14;
  *(a5 + 64) = v15;
  *(a5 + 112) = v12;
  v17 = *(type metadata accessor for ReadingBackgroundColorChangeEvent.Model(0) + 28);
  v18 = sub_1E1150();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

unint64_t sub_18E23C()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_18E2D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_18F6DC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_18E2F8(uint64_t a1)
{
  v2 = sub_18E670();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18E334(uint64_t a1)
{
  v2 = sub_18E670();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingBackgroundColorChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28C828, &qword_2085F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-v6];
  sub_48B8(a1, a1[3]);
  sub_18E670();
  sub_1E1E00();
  v8 = *(v2 + 4);
  v9 = v2[2];
  v10 = *(v2 + 12);
  v11 = *(v2 + 13);
  v12 = *(v2 + 14);
  v38 = *v2;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = v11;
  v43 = v12;
  v37 = 0;
  sub_67BE8();
  v13 = v44;
  sub_1E1CF0();
  if (!v13)
  {
    v14 = *(v2 + 3);
    v15 = *(v2 + 5);
    v34 = *(v2 + 4);
    v35 = v15;
    v16 = *(v2 + 5);
    v36 = *(v2 + 6);
    v17 = *(v2 + 1);
    v18 = *(v2 + 3);
    v32 = *(v2 + 2);
    v33 = v18;
    v19 = *(v2 + 1);
    v28 = v34;
    v29 = v16;
    v30 = *(v2 + 6);
    v31 = v19;
    v25 = v17;
    v26 = v32;
    v27 = v14;
    v24 = 1;
    sub_13A5C(&v31, v23);
    sub_143D0();
    sub_1E1CF0();
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[5] = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_14424(v23);
    v22 = *(v2 + 112);
    v21[14] = 2;
    sub_18E6C4();
    sub_1E1CF0();
    type metadata accessor for ReadingBackgroundColorChangeEvent.Model(0);
    v22 = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_18E670()
{
  result = qword_28C830;
  if (!qword_28C830)
  {
    result = swift_getWitnessTable(byte_2087CC, &type metadata for ReadingBackgroundColorChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C830);
  }

  return result;
}

unint64_t sub_18E6C4()
{
  result = qword_28C838;
  if (!qword_28C838)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BackgroundColorData, &type metadata for BackgroundColorData, v0, v1);
    atomic_store(result, &qword_28C838);
  }

  return result;
}

void ReadingBackgroundColorChangeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1E1150();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_28C840, &qword_2085F8);
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for ReadingBackgroundColorChangeEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v43 = a1;
  sub_48B8(a1, v13);
  sub_18E670();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v43, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v38 = v10;
    v21 = v41;
    v52 = 0;
    sub_686E8();
    sub_1E1C20();
    v22 = BYTE4(v44);
    v23 = DWORD2(v44);
    v24 = BYTE12(v44);
    v25 = BYTE13(v44);
    v26 = BYTE14(v44);
    *v12 = v44;
    v12[4] = v22;
    *(v12 + 2) = v23;
    v12[12] = v24;
    v12[13] = v25;
    v12[14] = v26;
    v52 = 1;
    sub_14CB8();
    sub_1E1C20();
    v27 = v47;
    *(v12 + 3) = v46;
    *(v12 + 4) = v27;
    v28 = v49;
    *(v12 + 5) = v48;
    *(v12 + 6) = v28;
    v29 = v45;
    *(v12 + 1) = v44;
    *(v12 + 2) = v29;
    v50 = 2;
    sub_18EB18();
    sub_1E1C20();
    v12[112] = v51;
    v51 = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v30 = v42;
    sub_1E1C20();
    (*(v21 + 8))(v9, v30);
    (*(v39 + 32))(&v12[*(v38 + 28)], v6, v4);
    sub_18EB6C(v12, v40);
    sub_4E48(v43, v31, v32, v33, v34, v35, v36, v37);
    sub_18EBD0(v12);
  }
}

unint64_t sub_18EB18()
{
  result = qword_28C848;
  if (!qword_28C848)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BackgroundColorData, &type metadata for BackgroundColorData, v0, v1);
    atomic_store(result, &qword_28C848);
  }

  return result;
}

uint64_t sub_18EB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingBackgroundColorChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18EBD0(uint64_t a1)
{
  v2 = type metadata accessor for ReadingBackgroundColorChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18ECCC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_28C820, &unk_2085E0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_18EE50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v14 = sub_3D68(&qword_28C820, &unk_2085E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_18F01C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_28C820, &unk_2085E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_18F1E0(uint64_t a1)
{
  sub_18F33C(319, &qword_280E40, sub_686E8, sub_67BE8, &type metadata for ReadingSessionData);
  if (v1 <= 0x3F)
  {
    sub_18F33C(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_18F33C(319, &unk_28C8B8, sub_18EB18, sub_18E6C4, &type metadata for BackgroundColorData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18F33C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_18F3CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18F48C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18F530(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18F5D8()
{
  result = qword_28C988;
  if (!qword_28C988)
  {
    result = swift_getWitnessTable(byte_2087A4, &type metadata for ReadingBackgroundColorChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C988);
  }

  return result;
}

unint64_t sub_18F630()
{
  result = qword_28C990;
  if (!qword_28C990)
  {
    result = swift_getWitnessTable(aO_3, &type metadata for ReadingBackgroundColorChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C990);
  }

  return result;
}

unint64_t sub_18F688()
{
  result = qword_28C998;
  if (!qword_28C998)
  {
    result = swift_getWitnessTable(byte_20873C, &type metadata for ReadingBackgroundColorChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C998);
  }

  return result;
}

uint64_t sub_18F6DC(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000214400;
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEB00000000617461;
    if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x8000000000217330;
      if (a1 == 0xD000000000000013 && 0x8000000000217330 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
      {
        0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = sub_1E1D30();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

BookAnalytics::WelcomeScreenData __swiftcall WelcomeScreenData.init(welcomeScreenType:welcomeScreenPosition:)(BookAnalytics::WelcomeScreenData welcomeScreenType, Swift::Int32 welcomeScreenPosition)
{
  *v2 = *welcomeScreenType.welcomeScreenType;
  *(v2 + 4) = welcomeScreenPosition;
  return welcomeScreenType;
}

BOOL static WelcomeScreenData.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = 0x6E776F6E6B6E75;
  v10 = *a1;
  v11 = *a2;
  if (v10 <= 1)
  {
    if (*a1)
    {
      v14 = 0x656D6F636C6577;
    }

    else
    {
      v14 = 0x6E776F6E6B6E75;
    }

    v15 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
    v13 = 0x657061637365;
    if (v10 != 3)
    {
      v13 = 2003792487;
      v12 = 0xE400000000000000;
    }

    if (v10 == 2)
    {
      v14 = 0x7265766F63736964;
    }

    else
    {
      v14 = v13;
    }

    if (v10 == 2)
    {
      v15 = 0xE800000000000000;
    }

    else
    {
      v15 = v12;
    }
  }

  v16 = *(a1 + 1);
  v17 = *(a2 + 1);
  v18 = 0xE800000000000000;
  v19 = 0x7265766F63736964;
  v20 = 0xE600000000000000;
  v21 = 0x657061637365;
  if (v11 != 3)
  {
    v21 = 2003792487;
    v20 = 0xE400000000000000;
  }

  if (v11 != 2)
  {
    v19 = v21;
    v18 = v20;
  }

  if (*a2)
  {
    v9 = 0x656D6F636C6577;
  }

  if (*a2 <= 1u)
  {
    v22 = v9;
  }

  else
  {
    v22 = v19;
  }

  if (*a2 <= 1u)
  {
    v23 = 0xE700000000000000;
  }

  else
  {
    v23 = v18;
  }

  if (v14 == v22 && v15 == v23)
  {
    v15, a2, v22, a4, a5, a6, a7, a8;
    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    v31 = sub_1E1D30();
    v15, v32, v33, v34, v35, v36, v37, v38;
    v23, v39, v40, v41, v42, v43, v44, v45;
    result = 0;
    if ((v31 & 1) == 0)
    {
      return result;
    }
  }

  return v16 == v17;
}

unint64_t sub_18FA04()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_18FA40(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000217350;
  if (a1 == 0xD000000000000011 && 0x8000000000217350 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000000217370 == a2)
  {
    a2, 0x8000000000217370, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_18FB24(uint64_t a1)
{
  v2 = sub_18FD3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18FB60(uint64_t a1)
{
  v2 = sub_18FD3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WelcomeScreenData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28C9A0, &qword_208820);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 1);
  sub_48B8(a1, a1[3]);
  sub_18FD3C();
  sub_1E1E00();
  v14 = v8;
  v13 = 0;
  sub_18FD90();
  sub_1E1CF0();
  if (!v2)
  {
    v12 = 1;
    sub_1E1D00();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_18FD3C()
{
  result = qword_28C9A8;
  if (!qword_28C9A8)
  {
    result = swift_getWitnessTable(byte_2089F8, &type metadata for WelcomeScreenData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C9A8);
  }

  return result;
}

unint64_t sub_18FD90()
{
  result = qword_28C9B0;
  if (!qword_28C9B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WelcomeScreenType, &type metadata for WelcomeScreenType, v0, v1);
    atomic_store(result, &qword_28C9B0);
  }

  return result;
}

void WelcomeScreenData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28C9B8, &qword_208828);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_18FD3C();
  sub_1E1DF0();
  if (!v2)
  {
    v20 = 0;
    sub_18FFA0();
    sub_1E1C20();
    v16 = v21;
    v19 = 1;
    v17 = sub_1E1C30();
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    *(a2 + 4) = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_18FFA0()
{
  result = qword_28C9C0;
  if (!qword_28C9C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WelcomeScreenType, &type metadata for WelcomeScreenType, v0, v1);
    atomic_store(result, &qword_28C9C0);
  }

  return result;
}

uint64_t sub_18FFFC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *(a1 + 4);
  v9 = *(a2 + 1);
  return sub_23114(*a1, *a2, a3, a4, a5, a6, a7, a8) & (v8 == v9);
}

uint64_t getEnumTagSinglePayload for WelcomeScreenData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[8])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WelcomeScreenData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_19011C()
{
  result = qword_28C9C8;
  if (!qword_28C9C8)
  {
    result = swift_getWitnessTable(byte_2089D0, &type metadata for WelcomeScreenData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C9C8);
  }

  return result;
}

unint64_t sub_190174()
{
  result = qword_28C9D0;
  if (!qword_28C9D0)
  {
    result = swift_getWitnessTable(byte_208940, &type metadata for WelcomeScreenData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C9D0);
  }

  return result;
}

unint64_t sub_1901CC()
{
  result = qword_28C9D8;
  if (!qword_28C9D8)
  {
    result = swift_getWitnessTable(byte_208968, &type metadata for WelcomeScreenData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C9D8);
  }

  return result;
}

BookAnalytics::StartMethod_optional __swiftcall StartMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2619E0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 9;
  if (v5 < 9)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

unint64_t StartMethod.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x65726353656D6F68;
    if (v1 != 2)
    {
      v7 = 0x756F546563726F66;
    }

    if (*v0)
    {
      v6 = 0x6C616E7265747865;
    }

    if (*v0 <= 1u)
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
    v2 = 0x6163696669746F6ELL;
    v3 = 0x746567646977;
    if (v1 != 7)
    {
      v3 = 0x6E65746E49707061;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000017;
    if (v1 != 4)
    {
      v4 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1903D4()
{
  result = qword_28C9E0;
  if (!qword_28C9E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StartMethod, &type metadata for StartMethod, v0, v1);
    atomic_store(result, &qword_28C9E0);
  }

  return result;
}

Swift::Int sub_190428()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E00C4(v3, v1);
  return sub_1E1DE0();
}

Swift::Int sub_190478(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  sub_1E00C4(v4, v2);
  return sub_1E1DE0();
}

unint64_t sub_1904C8@<X0>(unint64_t *a1@<X8>)
{
  result = StartMethod.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1905B0()
{
  result = qword_28C9E8;
  if (!qword_28C9E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StartMethod, &type metadata for StartMethod, v0, v1);
    atomic_store(result, &qword_28C9E8);
  }

  return result;
}

void sub_190628(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x65506E6F69746361 && a2 == 0xEF64656D726F6672)
  {
    a2, 0xEF64656D726F6672, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_1906B8(uint64_t a1)
{
  v2 = sub_19086C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1906F4(uint64_t a1)
{
  v2 = sub_19086C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ActionData.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_28C9F0, &qword_208B70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_19086C();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_19086C()
{
  result = qword_28C9F8;
  if (!qword_28C9F8)
  {
    result = swift_getWitnessTable(aI_15, &type metadata for ActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28C9F8);
  }

  return result;
}

void ActionData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28CA00, &qword_208B78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_48B8(a1, a1[3]);
  sub_19086C();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = sub_1E1BE0();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v18;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_190A78()
{
  result = qword_28CA08;
  if (!qword_28CA08)
  {
    result = swift_getWitnessTable(aEi, &type metadata for ActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CA08);
  }

  return result;
}

unint64_t sub_190AD0()
{
  result = qword_28CA10;
  if (!qword_28CA10)
  {
    result = swift_getWitnessTable(byte_208C94, &type metadata for ActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CA10);
  }

  return result;
}

unint64_t sub_190B28()
{
  result = qword_28CA18;
  if (!qword_28CA18)
  {
    result = swift_getWitnessTable(aUi, &type metadata for ActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CA18);
  }

  return result;
}

unint64_t sub_190B80()
{
  v1 = 0x44496D6F6F72;
  v2 = 0x657079546D6F6F72;
  if (*v0 != 2)
  {
    v2 = 0x656D614E6D6F6F72;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_190BFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1914F0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_190C24(uint64_t a1)
{
  v2 = sub_1912C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_190C60(uint64_t a1)
{
  v2 = sub_1912C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RoomData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28CA20, &qword_208DA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v7;
  v13 = *(v1 + 32);
  v8 = *(v1 + 40);
  v12[0] = *(v1 + 48);
  v12[1] = v8;
  sub_48B8(a1, a1[3]);
  sub_1912C4();
  sub_1E1E00();
  v21 = 0;
  v9 = v16;
  sub_1E1CB0();
  if (!v9)
  {
    v11 = v13;
    v20 = 1;
    sub_1E1CB0();
    v19 = v11;
    v18 = 2;
    sub_191318();
    sub_1E1CF0();
    v17 = 3;
    sub_1E1C50();
  }

  return (*(v4 + 8))(v6, v3);
}

void RoomData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28CA38, &qword_208DA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - v7;
  sub_48B8(a1, a1[3]);
  sub_1912C4();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v63 = 0;
    v16 = sub_1E1BE0();
    v58 = v17;
    v62 = 1;
    v56 = sub_1E1BE0();
    v57 = v18;
    v60 = 2;
    sub_19136C();
    sub_1E1C20();
    v55 = v61;
    v59 = 3;
    v19 = sub_1E1B80();
    v28 = v27;
    v29 = *(v6 + 8);
    v54 = v19;
    v29(v8, v5);
    v31 = v57;
    v30 = v58;
    *a2 = v16;
    *(a2 + 8) = v30;
    *(a2 + 16) = v56;
    *(a2 + 24) = v31;
    *(a2 + 32) = v55;
    *(a2 + 40) = v54;
    *(a2 + 48) = v28;

    sub_4E48(a1, v32, v33, v34, v35, v36, v37, v38);
    v28, v39, v40, v41, v42, v43, v44, v45;
    v31, v46, v47, v48, v49, v50, v51, v52;
    v30, v20, v21, v22, v23, v24, v25, v26;
  }
}

uint64_t _s13BookAnalytics8RoomDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a1 + 32);
  v11 = a1[5];
  v12 = a1[6];
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v19 = *(a2 + 40);
  v18 = *(a2 + 48);
  if (*a1 == *a2 && a1[1] == v14 || (sub_1E1D30()) && (v8 == v15 && v9 == v16 || (sub_1E1D30()) && (sub_20CFC(v10, v17, v13, v14, a5, a6, a7, a8))
  {
    if (v12)
    {
      if (v18 && (v11 == v19 && v12 == v18 || (sub_1E1D30() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v18)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1912C4()
{
  result = qword_28CA28;
  if (!qword_28CA28)
  {
    result = swift_getWitnessTable(byte_208F94, &type metadata for RoomData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CA28);
  }

  return result;
}

unint64_t sub_191318()
{
  result = qword_28CA30;
  if (!qword_28CA30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RoomType, &type metadata for RoomType, v0, v1);
    atomic_store(result, &qword_28CA30);
  }

  return result;
}

unint64_t sub_19136C()
{
  result = qword_28CA40;
  if (!qword_28CA40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RoomType, &type metadata for RoomType, v0, v1);
    atomic_store(result, &qword_28CA40);
  }

  return result;
}

unint64_t sub_1913EC()
{
  result = qword_28CA48;
  if (!qword_28CA48)
  {
    result = swift_getWitnessTable(byte_208F6C, &type metadata for RoomData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CA48);
  }

  return result;
}

unint64_t sub_191444()
{
  result = qword_28CA50;
  if (!qword_28CA50)
  {
    result = swift_getWitnessTable(aEg, &type metadata for RoomData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CA50);
  }

  return result;
}

unint64_t sub_19149C()
{
  result = qword_28CA58;
  if (!qword_28CA58)
  {
    result = swift_getWitnessTable(aG, &type metadata for RoomData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CA58);
  }

  return result;
}

uint64_t sub_1914F0(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x44496D6F6F72 && a2 == 0xE600000000000000;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000217390;
    if (a1 == 0xD000000000000011 && 0x8000000000217390 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x657079546D6F6F72 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000)
    {
      0xE800000000000000, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }
  }
}

uint64_t DialogExposureEvent.dialogData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_284058, &qword_1F3A10);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DialogExposureEvent.dialogData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_284058, &qword_1F3A10);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DialogExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DialogExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DialogExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DialogExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DialogExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DialogExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DialogExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_284058, &qword_1F3A10);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for DialogExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t DialogExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v2;
  v12[8] = *(v1 + 136);
  v13 = *(v1 + 152);
  v3 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v3;
  v4 = *(v1 + 88);
  v12[4] = *(v1 + 72);
  v12[5] = v4;
  v5 = *(v1 + 24);
  v12[0] = *(v1 + 8);
  v12[1] = v5;
  v6 = *(v1 + 120);
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v1 + 136);
  *(a1 + 144) = *(v1 + 152);
  v7 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v7;
  v8 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v8;
  v9 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v9;
  return sub_275C4(v12, v11);
}

uint64_t DialogExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogExposureEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogExposureEvent.Model(0) + 28);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogExposureEvent.Model.init(dialogData:linkData:eventData:timedData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a2 + 112);
  *(a5 + 104) = *(a2 + 96);
  *(a5 + 120) = v8;
  *(a5 + 136) = *(a2 + 128);
  v9 = *(a2 + 48);
  *(a5 + 40) = *(a2 + 32);
  *(a5 + 56) = v9;
  v10 = *(a2 + 80);
  *(a5 + 72) = *(a2 + 64);
  *(a5 + 88) = v10;
  v11 = *(a2 + 16);
  *(a5 + 8) = *a2;
  *a5 = *a1;
  *(a5 + 152) = *(a2 + 144);
  *(a5 + 24) = v11;
  v12 = type metadata accessor for DialogExposureEvent.Model(0);
  v13 = *(v12 + 24);
  v14 = sub_1E1150();
  (*(*(v14 - 8) + 32))(a5 + v13, a3, v14);
  v15 = *(v12 + 28);
  v16 = sub_1E11A0();
  v17 = *(*(v16 - 8) + 32);

  return v17(a5 + v15, a4, v16);
}

uint64_t sub_192084()
{
  v1 = 0x6144676F6C616964;
  v2 = 0x746144746E657665;
  if (*v0 != 2)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0)
  {
    v1 = 0x617461446B6E696CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19210C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_193808(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_192134(uint64_t a1)
{
  v2 = sub_19253C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_192170(uint64_t a1)
{
  v2 = sub_19253C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DialogExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28CA90, &qword_208FF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_19253C();
  sub_1E1E00();
  v36[0] = *v3;
  v35 = 0;
  sub_411FC();
  sub_1E1CF0();
  if (!v2)
  {
    v9 = *(v3 + 120);
    v33[6] = *(v3 + 104);
    v33[7] = v9;
    v33[8] = *(v3 + 136);
    v34 = *(v3 + 152);
    v10 = *(v3 + 56);
    v33[2] = *(v3 + 40);
    v33[3] = v10;
    v11 = *(v3 + 88);
    v33[4] = *(v3 + 72);
    v33[5] = v11;
    v12 = *(v3 + 24);
    v33[0] = *(v3 + 8);
    v33[1] = v12;
    v13 = *(v3 + 120);
    v29 = *(v3 + 104);
    v30 = v13;
    v31 = *(v3 + 136);
    v32 = *(v3 + 152);
    v14 = *(v3 + 56);
    v25 = *(v3 + 40);
    v26 = v14;
    v15 = *(v3 + 88);
    v27 = *(v3 + 72);
    v28 = v15;
    v16 = *(v3 + 24);
    v23 = *(v3 + 8);
    v24 = v16;
    v22 = 1;
    sub_275C4(v33, v20);
    sub_18630();
    sub_1E1CF0();
    v20[6] = v29;
    v20[7] = v30;
    v20[8] = v31;
    v21 = v32;
    v20[2] = v25;
    v20[3] = v26;
    v20[4] = v27;
    v20[5] = v28;
    v20[0] = v23;
    v20[1] = v24;
    sub_283A8(v20);
    type metadata accessor for DialogExposureEvent.Model(0);
    v19 = 2;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v19 = 3;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_19253C()
{
  result = qword_28CA98;
  if (!qword_28CA98)
  {
    result = swift_getWitnessTable(byte_2091D0, &type metadata for DialogExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CA98);
  }

  return result;
}

void DialogExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = sub_1E11A0();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v44 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_3D68(&qword_28CAA0, &qword_208FF8);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v9 = &v40 - v8;
  v10 = type metadata accessor for DialogExposureEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v61 = a1;
  sub_48B8(a1, v13);
  sub_19253C();
  v47 = v9;
  v14 = v48;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v61, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v48 = v7;
    v22 = v45;
    v40 = v4;
    v50 = 0;
    sub_411A4();
    v23 = v46;
    sub_1E1C20();
    v24 = v12;
    *v12 = v51;
    v50 = 1;
    sub_18FA4();
    sub_1E1C20();
    v25 = v22;
    v26 = v58;
    *(v24 + 104) = v57;
    *(v24 + 120) = v26;
    *(v24 + 136) = v59;
    v27 = v54;
    *(v24 + 40) = v53;
    *(v24 + 56) = v27;
    v28 = v56;
    *(v24 + 72) = v55;
    *(v24 + 88) = v28;
    v29 = v52;
    *(v24 + 8) = v51;
    *(v24 + 152) = v60;
    *(v24 + 24) = v29;
    v49 = 2;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v30 = v48;
    sub_1E1C20();
    (*(v44 + 32))(v24 + *(v10 + 24), v30, v5);
    v49 = 3;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v31 = v40;
    v32 = v43;
    sub_1E1C20();
    (*(v25 + 8))(v47, v23);
    (*(v41 + 32))(v24 + *(v10 + 28), v31, v32);
    sub_192BD0(v24, v42);
    sub_4E48(v61, v33, v34, v35, v36, v37, v38, v39);
    sub_192C34(v24);
  }
}

uint64_t sub_192BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192C34(uint64_t a1)
{
  v2 = type metadata accessor for DialogExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192D30@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_284058, &qword_1F3A10);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_192EB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_284058, &qword_1F3A10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
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

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_193080(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_284058, &qword_1F3A10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_193244(uint64_t a1)
{
  sub_193368(319, &qword_2840F8, sub_411A4, sub_411FC, &type metadata for DialogData);
  if (v1 <= 0x3F)
  {
    sub_193368(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        sub_5750(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_193368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1933F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_193530(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_193654(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    result = sub_1E11A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_193704()
{
  result = qword_28CBD8;
  if (!qword_28CBD8)
  {
    result = swift_getWitnessTable(byte_2091A8, &type metadata for DialogExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CBD8);
  }

  return result;
}

unint64_t sub_19375C()
{
  result = qword_28CBE0;
  if (!qword_28CBE0)
  {
    result = swift_getWitnessTable(aE_17, &type metadata for DialogExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CBE0);
  }

  return result;
}

unint64_t sub_1937B4()
{
  result = qword_28CBE8;
  if (!qword_28CBE8)
  {
    result = swift_getWitnessTable(byte_209140, &type metadata for DialogExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CBE8);
  }

  return result;
}

uint64_t sub_193808(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6144676F6C616964 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1939B4(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL)
  {
    a2, 0xEF726F6C6F43646ELL, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_193A44(uint64_t a1)
{
  v2 = sub_193C08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_193A80(uint64_t a1)
{
  v2 = sub_193C08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BackgroundColorData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28CBF0, &qword_209220);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_193C08();
  sub_1E1E00();
  v10 = v7;
  sub_129EE0();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_193C08()
{
  result = qword_28CBF8;
  if (!qword_28CBF8)
  {
    result = swift_getWitnessTable(byte_2093F8, &type metadata for BackgroundColorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CBF8);
  }

  return result;
}

void BackgroundColorData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28CC00, &qword_209228);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_193C08();
  sub_1E1DF0();
  if (!v2)
  {
    sub_129F34();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_193E24()
{
  result = qword_28CC08;
  if (!qword_28CC08)
  {
    result = swift_getWitnessTable(byte_2093D0, &type metadata for BackgroundColorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CC08);
  }

  return result;
}

unint64_t sub_193E7C()
{
  result = qword_28CC10;
  if (!qword_28CC10)
  {
    result = swift_getWitnessTable(byte_209340, &type metadata for BackgroundColorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CC10);
  }

  return result;
}

unint64_t sub_193ED4()
{
  result = qword_28CC18;
  if (!qword_28CC18)
  {
    result = swift_getWitnessTable(byte_209368, &type metadata for BackgroundColorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CC18);
  }

  return result;
}

void __swiftcall WantListRemovalItemData.init(from:)(BookAnalytics::WantListRemovalItemData *__return_ptr retstr, BookAnalytics::ContentData *from)
{
  countAndFlagsBits = from->contentPrivateID._countAndFlagsBits;
  v6 = from->contentUserID._countAndFlagsBits;
  object = from->contentUserID._object;
  contentType = from->contentType;
  v9 = from->contentID._countAndFlagsBits;
  v8 = from->contentID._object;
  v10 = *&from->contentUserID._object;
  v14 = *&from->contentPrivateID._object;
  v3 = v14;
  v15 = v10;
  contentKind = from->contentKind;
  v16 = *(&from->supplementalContentCount.value + 1);
  v17 = contentKind;
  v12 = *&from->contentType;
  v13[0] = from->contentID;
  v13[1] = v12;

  sub_14424(v13);
  retstr->contentPrivateID._countAndFlagsBits = countAndFlagsBits;
  retstr->contentPrivateID._object = v3;
  retstr->contentUserID._countAndFlagsBits = v6;
  retstr->contentUserID._object = object;
  retstr->contentType = contentType;
  retstr->contentID._countAndFlagsBits = v9;
  retstr->contentID._object = v8;
}

BookAnalytics::RemovalType_optional __swiftcall RemovalType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261AD8;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

unint64_t RemovalType.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x6F4465766F6D6572;
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

unint64_t sub_19408C()
{
  result = qword_28CC20;
  if (!qword_28CC20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemovalType, &type metadata for RemovalType, v0, v1);
    atomic_store(result, &qword_28CC20);
  }

  return result;
}

Swift::Int sub_1940E0()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0x8000000000213220;
  if (v1 != 1)
  {
    v2 = 0xEE0064616F6C6E77;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_194194(uint64_t a1)
{
  v2 = 0x8000000000213220;
  if (*v1 != 1)
  {
    v2 = 0xEE0064616F6C6E77;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_194234(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0x8000000000213220;
  if (v2 != 1)
  {
    v3 = 0xEE0064616F6C6E77;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_1942F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000000213220;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x6F4465766F6D6572;
    v4 = 0xEE0064616F6C6E77;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_194420()
{
  result = qword_28CC28;
  if (!qword_28CC28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemovalType, &type metadata for RemovalType, v0, v1);
    atomic_store(result, &qword_28CC28);
  }

  return result;
}

uint64_t AppReviewPromptRequestEvent.locationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_283E38, &unk_209560);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppReviewPromptRequestEvent.locationData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_283E38, &unk_209560);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppReviewPromptRequestEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppReviewPromptRequestEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppReviewPromptRequestEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppReviewPromptRequestEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppReviewPromptRequestEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_283E38, &unk_209560);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AppReviewPromptRequestEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t AppReviewPromptRequestEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppReviewPromptRequestEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppReviewPromptRequestEvent.Model.init(locationData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for AppReviewPromptRequestEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_194994()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

void sub_1949DC(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xEC00000061746144;
  v13 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
    v14 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a9 = v14;
}

uint64_t sub_194AC4(uint64_t a1)
{
  v2 = sub_194CF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_194B00(uint64_t a1)
{
  v2 = sub_194CF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppReviewPromptRequestEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28CC60, &qword_209570);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_48B8(a1, a1[3]);
  sub_194CF8();
  sub_1E1E00();
  v10[15] = *v3;
  v10[14] = 0;
  sub_B5304();
  sub_1E1CF0();
  if (!v2)
  {
    type metadata accessor for AppReviewPromptRequestEvent.Model(0);
    v10[13] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_194CF8()
{
  result = qword_28CC68;
  if (!qword_28CC68)
  {
    result = swift_getWitnessTable(aA_26, &type metadata for AppReviewPromptRequestEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CC68);
  }

  return result;
}

void AppReviewPromptRequestEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E1150();
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_28CC70, &qword_209578);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v23 - v6;
  v8 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_194CF8();
  sub_1E1DF0();
  if (!v2)
  {
    v18 = v10;
    v25 = v8;
    v19 = v28;
    v20 = v29;
    v32 = 0;
    sub_B5C60();
    v21 = v30;
    sub_1E1C20();
    v24 = v18;
    *v18 = v33;
    v31 = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v23 = v5;
    sub_1E1C20();
    (*(v19 + 8))(v7, v21);
    v22 = v24;
    (*(v26 + 32))(&v24[*(v25 + 20)], v23, v20);
    sub_195048(v22, v27);
  }

  sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_195048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19514C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_283E38, &unk_209560);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_195238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_283E38, &unk_209560);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_195354(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_283E38, &unk_209560);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_195468(uint64_t a1)
{
  sub_1954EC(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1954EC(uint64_t a1)
{
  if (!qword_283F00)
  {
    sub_B5C60();
    sub_B5304();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_283F00);
    }
  }
}

uint64_t sub_195568(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 224)
  {
    v4 = *a1;
    if (v4 >= 0x20)
    {
      return v4 - 31;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_195620(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 224)
  {
    *result = a2 + 31;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1956C0(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_195750()
{
  result = qword_28CD98;
  if (!qword_28CD98)
  {
    result = swift_getWitnessTable(aY_24, &type metadata for AppReviewPromptRequestEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CD98);
  }

  return result;
}

unint64_t sub_1957A8()
{
  result = qword_28CDA0;
  if (!qword_28CDA0)
  {
    result = swift_getWitnessTable(byte_209680, &type metadata for AppReviewPromptRequestEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CDA0);
  }

  return result;
}

unint64_t sub_195800()
{
  result = qword_28CDA8;
  if (!qword_28CDA8)
  {
    result = swift_getWitnessTable(byte_2096A8, &type metadata for AppReviewPromptRequestEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CDA8);
  }

  return result;
}

void __swiftcall PurchaseFailData.init(purchaseFailureReason:errorCode:errorDescription:errorDomain:)(BookAnalytics::PurchaseFailData *__return_ptr retstr, BookAnalytics::PurchaseFailureReason purchaseFailureReason, Swift::Int32_optional errorCode, Swift::String_optional errorDescription, Swift::String_optional errorDomain)
{
  retstr->purchaseFailureReason = *purchaseFailureReason;
  *(&retstr->errorCode.value + 3) = errorCode.value;
  LOBYTE(retstr->errorDescription.value._countAndFlagsBits) = errorCode.is_nil;
  *&retstr->errorDescription.value._object = errorDescription;
  *&retstr->errorDomain.value._object = errorDomain;
}

unint64_t sub_195878()
{
  v1 = 0x646F43726F727265;
  v2 = 0x6D6F44726F727265;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_195908@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_19634C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_195930(uint64_t a1)
{
  v2 = sub_196064();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_19596C(uint64_t a1)
{
  v2 = sub_196064();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseFailData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28CDB0, &qword_209790);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  v8 = *v1;
  v14 = *(v1 + 1);
  v13 = v1[8];
  v9 = *(v1 + 2);
  v12[2] = *(v1 + 3);
  v12[3] = v9;
  v10 = *(v1 + 4);
  v12[0] = *(v1 + 5);
  v12[1] = v10;
  sub_48B8(a1, a1[3]);
  sub_196064();
  sub_1E1E00();
  v20 = v8;
  v19 = 0;
  sub_1960B8();
  sub_1E1CF0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v18 = 1;
  v17 = v13;
  sub_1E1C90();
  v16 = 2;
  sub_1E1C50();
  v15 = 3;
  sub_1E1C50();
  return (*(v5 + 8))(v7, v4);
}

void PurchaseFailData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28CDC8, &qword_209798);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  sub_48B8(a1, a1[3]);
  sub_196064();
  sub_1E1DF0();
  if (v2)
  {
    v19 = 0;
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v54 = 0;
    sub_19610C();
    sub_1E1C20();
    v16 = v55;
    v53 = 1;
    v50 = sub_1E1BC0();
    v52 = 2;
    v17 = sub_1E1B80();
    v19 = v18;
    v49 = v17;
    v51 = 3;
    v20 = sub_1E1B80();
    v22 = v21;
    v23 = *(v6 + 8);
    v48 = v20;
    v23(v8, v5);
    *a2 = v16;
    v24 = BYTE4(v50);
    *(a2 + 4) = v50;
    *(a2 + 8) = v24 & 1;
    v25 = v48;
    *(a2 + 16) = v49;
    *(a2 + 24) = v19;
    *(a2 + 32) = v25;
    *(a2 + 40) = v22;

    sub_4E48(a1, v26, v27, v28, v29, v30, v31, v32);
    v22, v33, v34, v35, v36, v37, v38, v39;
  }

  v19, v40, v41, v42, v43, v44, v45, v46;
}

BOOL _s13BookAnalytics16PurchaseFailDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = a1[8];
  v11 = *(a1 + 3);
  v49 = *(a1 + 4);
  v50 = *(a1 + 2);
  v52 = *(a1 + 5);
  v12 = *(a2 + 4);
  v13 = *(a2 + 8);
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v48 = *(a2 + 32);
  v51 = *(a2 + 40);
  v16 = 0xE500000000000000;
  v17 = 0x726F727265;
  if (v8 != 1)
  {
    v17 = 0x64656C65636E6163;
    v16 = 0xE800000000000000;
  }

  if (*a1)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0xE700000000000000;
  }

  v20 = 0xE500000000000000;
  v21 = 0x726F727265;
  if (*a2 != 1)
  {
    v21 = 0x64656C65636E6163;
    v20 = 0xE800000000000000;
  }

  if (*a2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0xE700000000000000;
  }

  if (v18 == v22 && v19 == v23)
  {
    v19, a2, v22, a4, a5, a6, a7, a8;
    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    v31 = sub_1E1D30();
    v19, v32, v33, v34, v35, v36, v37, v38;
    v23, v39, v40, v41, v42, v43, v44, v45;
    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v12)
    {
      v46 = v13;
    }

    else
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (!v14 || (v50 != v15 || v11 != v14) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v52)
  {
    return v51 && (v49 == v48 && v52 == v51 || (sub_1E1D30() & 1) != 0);
  }

  return !v51;
}

unint64_t sub_196064()
{
  result = qword_28CDB8;
  if (!qword_28CDB8)
  {
    result = swift_getWitnessTable(byte_209984, &type metadata for PurchaseFailData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CDB8);
  }

  return result;
}

unint64_t sub_1960B8()
{
  result = qword_28CDC0;
  if (!qword_28CDC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseFailureReason, &type metadata for PurchaseFailureReason, v0, v1);
    atomic_store(result, &qword_28CDC0);
  }

  return result;
}

unint64_t sub_19610C()
{
  result = qword_28CDD0;
  if (!qword_28CDD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseFailureReason, &type metadata for PurchaseFailureReason, v0, v1);
    atomic_store(result, &qword_28CDD0);
  }

  return result;
}

uint64_t sub_196168(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1961C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_196248()
{
  result = qword_28CDD8;
  if (!qword_28CDD8)
  {
    result = swift_getWitnessTable(asc_20995C, &type metadata for PurchaseFailData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CDD8);
  }

  return result;
}

unint64_t sub_1962A0()
{
  result = qword_28CDE0;
  if (!qword_28CDE0)
  {
    result = swift_getWitnessTable(aU_23, &type metadata for PurchaseFailData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CDE0);
  }

  return result;
}

unint64_t sub_1962F8()
{
  result = qword_28CDE8;
  if (!qword_28CDE8)
  {
    result = swift_getWitnessTable(asc_2098F4, &type metadata for PurchaseFailData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CDE8);
  }

  return result;
}

uint64_t sub_19634C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000215530;
  if (a1 == 0xD000000000000015 && 0x8000000000215530 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = 0x8000000000215550;
    if (a1 == 0xD000000000000010 && 0x8000000000215550 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961)
    {
      0xEB000000006E6961, 0xEB000000006E6961, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }
  }
}

uint64_t PlayAttemptEvent.listeningSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.listeningSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.listeningActionSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.listeningActionSourceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.bitRateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.bitRateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.doNotDisturbData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 40);
  v4 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.doNotDisturbData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 40);
  v4 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.userEmbeddingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 52);
  v4 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.userEmbeddingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 52);
  v4 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PlayAttemptEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = enum case for EventProperty.optional<A>(_:);
  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v14, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v14, v23);
}

uint64_t PlayAttemptEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent.Model(0) + 48);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.Model.userEmbeddingData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PlayAttemptEvent.Model(0) + 52));
}

uint64_t PlayAttemptEvent.Model.init(contentData:listeningSessionData:listeningActionSourceData:bitRateData:errorData:upSellData:doNotDisturbData:seriesData:eventData:userEmbeddingData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, __int16 *a3@<X2>, int *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int16 *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *(a4 + 4);
  v15 = a4[2];
  v16 = *a5;
  v17 = *(a5 + 2);
  v18 = *(a5 + 3);
  v19 = *(a6 + 16);
  v20 = *a7;
  v21 = *a11;
  v22 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v22;
  v23 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v23;
  v24 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v24;
  v25 = a2[1];
  *(a9 + 96) = *a2;
  *(a9 + 112) = v25;
  *(a9 + 128) = a2[2];
  *(a9 + 138) = *(a2 + 42);
  *(a9 + 154) = v12;
  *(a9 + 156) = v13;
  *(a9 + 160) = v14;
  *(a9 + 164) = v15;
  *(a9 + 168) = v16;
  *(a9 + 184) = v17;
  *(a9 + 192) = v18;
  *(a9 + 200) = *a6;
  *(a9 + 216) = v19;
  *(a9 + 224) = v20;
  v26 = a8[1];
  *(a9 + 232) = *a8;
  *(a9 + 248) = v26;
  *(a9 + 264) = a8[2];
  v27 = type metadata accessor for PlayAttemptEvent.Model(0);
  v28 = *(v27 + 48);
  v29 = sub_1E1150();
  result = (*(*(v29 - 8) + 32))(a9 + v28, a10, v29);
  *(a9 + *(v27 + 52)) = v21;
  return result;
}

uint64_t sub_19771C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6144736569726573;
    v6 = 0x746144746E657665;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x61446C6C65537075;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x44746E65746E6F63;
    v2 = 0xD000000000000019;
    v3 = 0x4465746152746962;
    if (a1 != 3)
    {
      v3 = 0x746144726F727265;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_19788C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_199AD0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1978B4(uint64_t a1)
{
  v2 = sub_197EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1978F0(uint64_t a1)
{
  v2 = sub_197EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlayAttemptEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28CE20, &qword_209A00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v62 - v7;
  sub_48B8(a1, a1[3]);
  sub_197EB8();
  sub_1E1E00();
  v9 = *(v3 + 48);
  v10 = *(v3 + 16);
  v85 = *(v3 + 32);
  v86 = v9;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v87 = *(v3 + 64);
  v88 = v12;
  v13 = *(v3 + 16);
  v84[0] = *v3;
  v84[1] = v13;
  v80 = v85;
  v81 = v11;
  v14 = *(v3 + 80);
  v82 = v87;
  v83 = v14;
  v78 = v84[0];
  v79 = v10;
  v77 = 0;
  sub_13A5C(v84, v76);
  sub_143D0();
  sub_1E1CF0();
  v76[2] = v80;
  v76[3] = v81;
  v76[4] = v82;
  v76[5] = v83;
  v76[0] = v78;
  v76[1] = v79;
  sub_14424(v76);
  if (!v2)
  {
    v15 = *(v3 + 112);
    v74[0] = *(v3 + 96);
    v74[1] = v15;
    v17 = *(v3 + 96);
    v16 = *(v3 + 112);
    v75[0] = *(v3 + 128);
    *(v75 + 10) = *(v3 + 138);
    v71 = v17;
    v72 = v16;
    v73[0] = *(v3 + 128);
    *(v73 + 10) = *(v3 + 138);
    v70 = 1;
    sub_3D9DC(v74, v68);
    sub_3E638();
    sub_1E1CF0();
    v68[0] = v71;
    v68[1] = v72;
    *v69 = v73[0];
    *&v69[10] = *(v73 + 10);
    sub_3E68C(v68);
    LOWORD(v62) = *(v3 + 154);
    v67 = 2;
    sub_14520();
    sub_1E1CF0();
    v18 = *(v3 + 160);
    v19 = *(v3 + 164);
    LODWORD(v62) = *(v3 + 156);
    BYTE4(v62) = v18;
    DWORD2(v62) = v19;
    v67 = 3;
    sub_14574();
    sub_1E1CF0();
    v20 = *(v3 + 176);
    v21 = *(v3 + 184);
    v22 = *(v3 + 192);
    *&v62 = *(v3 + 168);
    *(&v62 + 1) = v20;
    v63 = v21;
    v64 = v22;
    v67 = 4;
    sub_145C8();

    sub_1E1CF0();
    v23 = *(&v62 + 1);
    v64, v24, v25, v26, v27, v28, v29, v30;
    v23, v31, v32, v33, v34, v35, v36, v37;
    v38 = *(v3 + 216);
    v62 = *(v3 + 200);
    v63 = v38;
    v67 = 5;
    sub_28450();

    sub_1E1C80();
    v63, v47, v48, v49, v50, v51, v52, v53;
    LOWORD(v62) = *(v3 + 224);
    v67 = 6;
    sub_3E6E0();
    sub_1E1CF0();
    v54 = *(v3 + 240);
    v55 = *(v3 + 248);
    v56 = *(v3 + 256);
    v57 = *(v3 + 264);
    v58 = *(v3 + 272);
    *&v62 = *(v3 + 232);
    *(&v62 + 1) = v54;
    v63 = v55;
    v64 = v56;
    v65 = v57;
    v66 = v58;
    v67 = 7;
    sub_13BDC(v62, v54, v55, v56, v57, v58);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v62, *(&v62 + 1), v63, v64, v65, v66, v59, v60);
    v61 = type metadata accessor for PlayAttemptEvent.Model(0);
    LOBYTE(v62) = 8;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    *&v62 = *(v3 + *(v61 + 52));
    v67 = 9;
    sub_3E734();

    sub_1E1C80();
    v62, v39, v40, v41, v42, v43, v44, v45;
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_197EB8()
{
  result = qword_28CE28;
  if (!qword_28CE28)
  {
    result = swift_getWitnessTable(asc_209C1C, &type metadata for PlayAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CE28);
  }

  return result;
}

void PlayAttemptEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1E1150();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_3D68(&qword_28CE30, &qword_209A08);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v8 = &v37 - v7;
  v9 = type metadata accessor for PlayAttemptEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v60 = a1;
  sub_48B8(a1, v12);
  sub_197EB8();
  v44 = v8;
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v60, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v38 = v6;
    v20 = v42;
    v39 = v4;
    v53 = 0;
    sub_14CB8();
    sub_1E1C20();
    v21 = v57;
    *(v11 + 2) = v56;
    *(v11 + 3) = v21;
    v22 = v59;
    *(v11 + 4) = v58;
    *(v11 + 5) = v22;
    v23 = v55;
    *v11 = v54;
    *(v11 + 1) = v23;
    v49 = 1;
    sub_3F258();
    sub_1E1C20();
    v24 = v51;
    *(v11 + 6) = v50;
    *(v11 + 7) = v24;
    *(v11 + 8) = *v52;
    *(v11 + 138) = *&v52[10];
    v48 = 2;
    sub_14D60();
    sub_1E1C20();
    *(v11 + 77) = v45;
    v48 = 3;
    sub_14DB4();
    sub_1E1C20();
    v25 = BYTE4(v45);
    v26 = DWORD2(v45);
    *(v11 + 39) = v45;
    v11[160] = v25;
    *(v11 + 41) = v26;
    v48 = 4;
    sub_14E08();
    sub_1E1C20();
    v27 = v46;
    *(v11 + 168) = v45;
    *(v11 + 184) = v27;
    v48 = 5;
    sub_28EF4();
    sub_1E1BB0();
    v28 = v46;
    *(v11 + 200) = v45;
    *(v11 + 27) = v28;
    v48 = 6;
    sub_3F2AC();
    sub_1E1C20();
    *(v11 + 112) = v45;
    v48 = 7;
    sub_DAD8();
    sub_1E1BB0();
    v29 = v46;
    *(v11 + 232) = v45;
    *(v11 + 248) = v29;
    *(v11 + 264) = v47;
    LOBYTE(v45) = 8;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v41 + 32))(&v11[*(v9 + 48)], v38, v39);
    v48 = 9;
    sub_3F300();
    sub_1E1BB0();
    (*(v20 + 8))(v44, v43);
    *&v11[*(v9 + 52)] = v45;
    sub_19879C(v11, v40);
    sub_4E48(v60, v30, v31, v32, v33, v34, v35, v36);
    sub_198800(v11);
  }
}

uint64_t sub_19879C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayAttemptEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_198800(uint64_t a1)
{
  v2 = type metadata accessor for PlayAttemptEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1988FC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = enum case for EventProperty.optional<A>(_:);
  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v20 - 8) + 104))(a2 + v19, v15, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v15, v24);
}

uint64_t sub_198C5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  v14 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  v15 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  v16 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  v18 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  v22 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + a3[13];

  return v23(v24, a2, v22);
}

uint64_t sub_199020(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  v16 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  v17 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  v18 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  v20 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  v24 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + a4[13];

  return v25(v26, a2, a2, v24);
}

void sub_1993DC(uint64_t a1)
{
  sub_403DC(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_403DC(319, &qword_27F998, sub_3F258, sub_3E638, &type metadata for ListeningSessionData);
    if (v2 <= 0x3F)
    {
      sub_403DC(319, &qword_27E2D8, sub_14D60, sub_14520, &type metadata for ListeningActionSourceData);
      if (v3 <= 0x3F)
      {
        sub_403DC(319, &qword_27E2E0, sub_14DB4, sub_14574, &type metadata for BitRateData);
        if (v4 <= 0x3F)
        {
          sub_403DC(319, &unk_27E2E8, sub_14E08, sub_145C8, &type metadata for ErrorData);
          if (v5 <= 0x3F)
          {
            sub_403DC(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
            if (v6 <= 0x3F)
            {
              sub_403DC(319, &qword_27F9A0, sub_3F2AC, sub_3E6E0, &type metadata for DoNotDisturbData);
              if (v7 <= 0x3F)
              {
                sub_403DC(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
                if (v8 <= 0x3F)
                {
                  sub_5684(319);
                  if (v9 <= 0x3F)
                  {
                    sub_403DC(319, &unk_27F9A8, sub_3F300, sub_3E734, &type metadata for UserEmbeddingData);
                    if (v10 <= 0x3F)
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

uint64_t sub_19972C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1997EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_199890(uint64_t a1)
{
  sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        sub_19FE0(319, &unk_27FA68, &type metadata for UserEmbeddingData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1999CC()
{
  result = qword_28CF98;
  if (!qword_28CF98)
  {
    result = swift_getWitnessTable(aU_24, &type metadata for PlayAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CF98);
  }

  return result;
}

unint64_t sub_199A24()
{
  result = qword_28CFA0;
  if (!qword_28CFA0)
  {
    result = swift_getWitnessTable(byte_209B64, &type metadata for PlayAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CFA0);
  }

  return result;
}

unint64_t sub_199A7C()
{
  result = qword_28CFA8;
  if (!qword_28CFA8)
  {
    result = swift_getWitnessTable(byte_209B8C, &type metadata for PlayAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CFA8);
  }

  return result;
}

uint64_t sub_199AD0(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000213D80;
    if (a1 == 0xD000000000000014 && 0x8000000000213D80 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x8000000000213970;
      if (a1 == 0xD000000000000019 && 0x8000000000213970 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x4465746152746962 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 5;
      }

      else
      {
        v14 = 0x8000000000213DA0;
        if (a1 == 0xD000000000000010 && 0x8000000000213DA0 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 6;
        }

        else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 7;
        }

        else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 8;
        }

        else if (a1 == 0xD000000000000011 && 0x8000000000213DC0 == a2)
        {
          a2, 0x8000000000213DC0, a3, a4, a5, a6, a7, a8;
          return 9;
        }

        else
        {
          v15 = sub_1E1D30();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
          {
            return 9;
          }

          else
          {
            return 10;
          }
        }
      }
    }
  }
}

unint64_t sub_199E20()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void sub_199E5C(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000213A10;
  if (a1 == 0xD000000000000012 && 0x8000000000213A10 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000213A50 == a2)
  {
    a2, 0x8000000000213A50, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_199F40(uint64_t a1)
{
  v2 = sub_19A348();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_199F7C(uint64_t a1)
{
  v2 = sub_19A348();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DailyGoalsReachedData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28CFB0, &qword_209C70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[1] = *(v1 + 1);
  sub_48B8(a1, a1[3]);
  sub_19A348();
  sub_1E1E00();
  v13 = v8;
  v12 = 0;
  sub_1E23C();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = 1;
    sub_1E1D10();
  }

  return (*(v5 + 8))(v7, v4);
}

void DailyGoalsReachedData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28CFC0, &qword_209C78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_19A348();
  sub_1E1DF0();
  if (!v2)
  {
    v20 = 0;
    sub_1E2E4();
    sub_1E1C20();
    v16 = v21;
    v19 = 1;
    v17 = sub_1E1C40();
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    *(a2 + 8) = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_19A348()
{
  result = qword_28CFB8;
  if (!qword_28CFB8)
  {
    result = swift_getWitnessTable(a8, &type metadata for DailyGoalsReachedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CFB8);
  }

  return result;
}

unint64_t sub_19A3C8()
{
  result = qword_28CFC8;
  if (!qword_28CFC8)
  {
    result = swift_getWitnessTable(aE8, &type metadata for DailyGoalsReachedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CFC8);
  }

  return result;
}

unint64_t sub_19A420()
{
  result = qword_28CFD0;
  if (!qword_28CFD0)
  {
    result = swift_getWitnessTable(byte_209D94, &type metadata for DailyGoalsReachedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CFD0);
  }

  return result;
}

unint64_t sub_19A478()
{
  result = qword_28CFD8;
  if (!qword_28CFD8)
  {
    result = swift_getWitnessTable(aU8, &type metadata for DailyGoalsReachedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28CFD8);
  }

  return result;
}

uint64_t WidgetEngagementEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetEngagementEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetEngagementEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetEngagementEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetEngagementEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetEngagementEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetEngagementEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetEngagementEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_289618, &unk_200CF0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WidgetEngagementEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v2, v9);
}

uint64_t WidgetEngagementEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetEngagementEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetEngagementEvent.Model.init(widgetData:contentData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  v6 = a2[3];
  *(a4 + 72) = a2[2];
  *(a4 + 88) = v6;
  v7 = a2[5];
  *(a4 + 104) = a2[4];
  *(a4 + 120) = v7;
  v8 = a2[1];
  *(a4 + 40) = *a2;
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 33);
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 33) = v11;
  *(a4 + 56) = v8;
  v12 = *(type metadata accessor for WidgetEngagementEvent.Model(0) + 24);
  v13 = sub_1E1150();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

uint64_t sub_19AAFC()
{
  v1 = 0x44746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6144746567646977;
  }
}

uint64_t sub_19AB68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_19BDC0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_19AB90(uint64_t a1)
{
  v2 = sub_19AF38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_19ABCC(uint64_t a1)
{
  v2 = sub_19AF38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WidgetEngagementEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28D010, &qword_209EA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35[-v6];
  sub_48B8(a1, a1[3]);
  sub_19AF38();
  sub_1E1E00();
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v11 = *(v2 + 32);
  v12 = *(v2 + 33);
  v46 = *v2;
  v47 = v8;
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v51 = v12;
  v45 = 0;
  sub_13D870();

  v13 = v52;
  sub_1E1CF0();
  v14 = v47;
  v49, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  if (!v13)
  {
    v30 = *(v2 + 9);
    v31 = *(v2 + 13);
    v44[3] = *(v2 + 11);
    v44[4] = v31;
    v44[5] = *(v2 + 15);
    v32 = *(v2 + 5);
    v44[1] = *(v2 + 7);
    v44[2] = v30;
    v33 = *(v2 + 9);
    v34 = *(v2 + 13);
    v41 = *(v2 + 11);
    v42 = v34;
    v43 = *(v2 + 15);
    v44[0] = v32;
    v38 = *(v2 + 5);
    v39 = *(v2 + 7);
    v40 = v33;
    v37 = 1;
    sub_437B4(v44, v36);
    sub_143D0();
    sub_1E1C80();
    v36[2] = v40;
    v36[3] = v41;
    v36[4] = v42;
    v36[5] = v43;
    v36[0] = v38;
    v36[1] = v39;
    sub_440C0(v36);
    type metadata accessor for WidgetEngagementEvent.Model(0);
    v35[15] = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_19AF38()
{
  result = qword_28D018;
  if (!qword_28D018)
  {
    result = swift_getWitnessTable(a6_0, &type metadata for WidgetEngagementEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D018);
  }

  return result;
}

void WidgetEngagementEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_1E1150();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_28D020, &qword_209EA8);
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for WidgetEngagementEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v41 = a1;
  sub_48B8(a1, v13);
  sub_19AF38();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v41, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = v39;
    v36 = v6;
    v49 = 0;
    sub_13D818();
    v22 = v40;
    sub_1E1C20();
    v23 = v43;
    v24 = v44;
    v25 = BYTE1(v44);
    *v12 = v42;
    *(v12 + 1) = v23;
    v12[32] = v24;
    v12[33] = v25;
    v49 = 1;
    sub_14CB8();
    sub_1E1BB0();
    v26 = v45;
    *(v12 + 72) = v44;
    *(v12 + 88) = v26;
    v27 = v47;
    *(v12 + 104) = v46;
    *(v12 + 120) = v27;
    v28 = v43;
    *(v12 + 40) = v42;
    *(v12 + 56) = v28;
    v48 = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v21 + 8))(v9, v22);
    (*(v37 + 32))(&v12[*(v10 + 24)], v36, v4);
    sub_19B380(v12, v38);
    sub_4E48(v41, v29, v30, v31, v32, v33, v34, v35);
    sub_19B3E4(v12);
  }
}

uint64_t sub_19B380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19B3E4(uint64_t a1)
{
  v2 = type metadata accessor for WidgetEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19B4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_289618, &unk_200CF0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v4, v10);
}

uint64_t sub_19B62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_289618, &unk_200CF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_19B7A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_289618, &unk_200CF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_19B914(uint64_t a1)
{
  sub_19BA20(319, &qword_2896A0, sub_13D818, sub_13D870, &type metadata for WidgetData);
  if (v1 <= 0x3F)
  {
    sub_19BA20(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19BA20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_19BAB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19BB70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_19BC14(uint64_t a1)
{
  sub_45610();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_19BCBC()
{
  result = qword_28D158;
  if (!qword_28D158)
  {
    result = swift_getWitnessTable(a6_1, &type metadata for WidgetEngagementEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D158);
  }

  return result;
}

unint64_t sub_19BD14()
{
  result = qword_28D160;
  if (!qword_28D160)
  {
    result = swift_getWitnessTable(aI6, &type metadata for WidgetEngagementEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D160);
  }

  return result;
}

unint64_t sub_19BD6C()
{
  result = qword_28D168;
  if (!qword_28D168)
  {
    result = swift_getWitnessTable(aQ6, &type metadata for WidgetEngagementEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D168);
  }

  return result;
}

uint64_t sub_19BDC0(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6144746567646977 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEB00000000617461;
    if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t BrickExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.brickData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_283E30, &qword_20A0C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.brickData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_283E30, &qword_20A0C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for BrickExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_283E30, &qword_20A0C0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = enum case for EventProperty.optional<A>(_:);
  v13 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v17 - 8) + 104))(a1 + v16, v12, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v2, v21);
}

uint64_t BrickExposureEvent.Model.brickData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 272);
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  v5 = *(v1 + 296);
  *a1 = *(v1 + 264);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t BrickExposureEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 328);
  *a1 = *(v1 + 304);
  *(a1 + 8) = *(v1 + 312);
  *(a1 + 24) = v2;
}

void BrickExposureEvent.Model.mediaData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 344);
  v4 = *(v1 + 352);
  v5 = *(v1 + 360);
  v6 = *(v1 + 368);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  sub_2EB50(v2, v3, v4, v5);
}

uint64_t BrickExposureEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 392);
  *a1 = *(v1 + 376);
  *(a1 + 16) = v2;
}

uint64_t BrickExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent.Model(0) + 44);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}