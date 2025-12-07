IntelligencePlatformDataActionsAppIntentsExtension::AppUsageActivityOptions_optional __swiftcall AppUsageActivityOptions.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v5._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_100039950;
  v5._object = object;
  v3 = sub_10002DDF0(v2, v5);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t AppUsageActivityOptions.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 7368801;
  }

  return 0x65746973626577;
}

IntelligencePlatformDataActionsAppIntentsExtension::AppUsageActivityOptions_optional sub_100001878@<W0>(Swift::String *a1@<X0>, IntelligencePlatformDataActionsAppIntentsExtension::AppUsageActivityOptions_optional *a2@<X8>)
{
  result.value = AppUsageActivityOptions.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1000018A8@<X0>(uint64_t *a1@<X8>)
{
  result = AppUsageActivityOptions.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static AppUsageActivityOptions.typeDisplayRepresentation.getter()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v1 = sub_100002CD8(v0);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  v4 = sub_10002D740();
  __chkstk_darwin(v4);
  sub_100002C9C();
  sub_10002D730();
  sub_100001AC4(v3, 1, 1, v4);
  return sub_10002D610();
}

uint64_t sub_100001A7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001AEC()
{
  v0 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v3 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  __chkstk_darwin(v3 - 8);
  v5 = v14 - v4;
  v6 = sub_10002D740();
  __chkstk_darwin(v6);
  sub_100001A7C(&qword_10003C1C0, &qword_10002E7C0);
  v7 = *(sub_100001A7C(&qword_10003C1C8, qword_10002E7C8) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v14[1] = v10;
  *(v10 + 16) = xmmword_10002E420;
  v11 = v10 + v9;
  *(v10 + v9) = 0;
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  v12 = sub_10002D4E0();
  sub_100001AC4(v2, 1, 1, v12);
  sub_10002D500();
  *(v11 + v8) = 1;
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  sub_100001AC4(v2, 1, 1, v12);
  sub_10002D500();
  *(v11 + 2 * v8) = 2;
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  sub_100001AC4(v2, 1, 1, v12);
  sub_10002D500();
  sub_10002D510();
  sub_1000029DC();
  result = sub_10002DBB0();
  static AppUsageActivityOptions.caseDisplayRepresentations = result;
  return result;
}

uint64_t *AppUsageActivityOptions.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_10003C0B0 != -1)
  {
    sub_100002CAC(&qword_10003C0B0);
  }

  return &static AppUsageActivityOptions.caseDisplayRepresentations;
}

uint64_t static AppUsageActivityOptions.caseDisplayRepresentations.getter()
{
  if (qword_10003C0B0 != -1)
  {
    sub_100002CAC(&qword_10003C0B0);
  }
}

uint64_t sub_100001EC8(uint64_t a1)
{
  v2 = sub_1000028D4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100001F14()
{
  AppUsageActivityOptions.caseDisplayRepresentations.unsafeMutableAddressor();
}

uint64_t sub_100001F44(uint64_t a1)
{
  v2 = sub_100002830();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t variable initialization expression of DeviceActivityDeviceAppEntity._name()
{
  v0 = sub_10002D740();
  v1 = sub_100002CD8(v0);
  __chkstk_darwin(v1);
  sub_100002C9C();
  sub_100002D00();
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  sub_10002D730();
  return sub_10002D300();
}

uint64_t variable initialization expression of DeviceActivityDeviceAppEntity._isAllDevices()
{
  v0 = sub_10002D740();
  v1 = sub_100002CD8(v0);
  __chkstk_darwin(v1);
  sub_100002C9C();
  sub_100002D00();
  sub_100001A7C(&qword_10003C110, &unk_10002E440);
  sub_10002D730();
  return sub_10002D320();
}

uint64_t variable initialization expression of FindSportsEvents._sportsTeamAppEntity()
{
  v0 = sub_10002D5C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_100002C9C();
  v4 = v3 - v2;
  v5 = sub_100001A7C(&qword_10003C118, &unk_10002EF20);
  v6 = sub_100002CD8(v5);
  v7 = __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v13 = sub_100002CD8(v12);
  __chkstk_darwin(v13);
  v15 = v18 - v14;
  v16 = sub_10002D740();
  __chkstk_darwin(v16);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C120, &qword_10002E450);
  sub_10002D730();
  sub_100002CE4(v15);
  sub_10002D1F0();
  memset(v18, 0, sizeof(v18));
  sub_100002CE4(v11);
  sub_100002CE4(v9);
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v0);
  sub_100002310();
  return sub_10002D3B0();
}

unint64_t sub_100002310()
{
  result = qword_10003C128;
  if (!qword_10003C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C128);
  }

  return result;
}

uint64_t variable initialization expression of SportsEventAppEntity._teams()
{
  sub_100001A7C(&qword_10003C130, &qword_10002E458);
  sub_100002310();
  return sub_10002D2B0();
}

uint64_t sub_1000023B8(uint64_t a1)
{
  v1 = sub_10002D740();
  v2 = sub_100002CD8(v1);
  __chkstk_darwin(v2);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C138, &qword_10002E460);
  sub_10002D730();
  sub_100002310();
  return sub_10002D2A0();
}

uint64_t variable initialization expression of SportsEventAppEntity._startTime()
{
  v0 = sub_10002D740();
  v1 = sub_100002CD8(v0);
  __chkstk_darwin(v1);
  sub_100002C9C();
  sub_100002D00();
  sub_100001A7C(&qword_10003C140, &qword_10002E468);
  sub_10002D730();
  return sub_10002D2F0();
}

uint64_t variable initialization expression of SportsEventAppEntity._endTime()
{
  v0 = sub_10002D740();
  v1 = sub_100002CD8(v0);
  __chkstk_darwin(v1);
  sub_100002C9C();
  sub_100002D00();
  sub_100001A7C(&qword_10003C140, &qword_10002E468);
  sub_10002D730();
  return sub_10002D2F0();
}

unint64_t sub_1000025BC()
{
  result = qword_10003C148;
  if (!qword_10003C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C148);
  }

  return result;
}

unint64_t sub_100002614()
{
  result = qword_10003C150;
  if (!qword_10003C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C150);
  }

  return result;
}

unint64_t sub_10000266C()
{
  result = qword_10003C158;
  if (!qword_10003C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C158);
  }

  return result;
}

unint64_t sub_1000026C4()
{
  result = qword_10003C160;
  if (!qword_10003C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C160);
  }

  return result;
}

unint64_t sub_100002728()
{
  result = qword_10003C168;
  if (!qword_10003C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C168);
  }

  return result;
}

unint64_t sub_100002780()
{
  result = qword_10003C170;
  if (!qword_10003C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C170);
  }

  return result;
}

unint64_t sub_1000027D8()
{
  result = qword_10003C178;
  if (!qword_10003C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C178);
  }

  return result;
}

unint64_t sub_100002830()
{
  result = qword_10003C180;
  if (!qword_10003C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C180);
  }

  return result;
}

unint64_t sub_1000028D4()
{
  result = qword_10003C188;
  if (!qword_10003C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C188);
  }

  return result;
}

unint64_t sub_10000292C()
{
  result = qword_10003C190;
  if (!qword_10003C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C190);
  }

  return result;
}

unint64_t sub_100002984()
{
  result = qword_10003C198;
  if (!qword_10003C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C198);
  }

  return result;
}

unint64_t sub_1000029DC()
{
  result = qword_10003C1A0;
  if (!qword_10003C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C1A0);
  }

  return result;
}

unint64_t sub_100002A34()
{
  result = qword_10003C1A8;
  if (!qword_10003C1A8)
  {
    sub_100002A98(&qword_10003C1B0, &qword_10002E718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C1A8);
  }

  return result;
}

uint64_t sub_100002A98(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppUsageActivityOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppUsageActivityOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100002C44);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100002CAC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002CE4(uint64_t a1)
{

  return sub_100001AC4(a1, 1, 1, v1);
}

uint64_t type metadata accessor for AppUsageAppEntity(uint64_t a1)
{
  result = qword_10003C2A0;
  if (!qword_10003C2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002DA0()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_10002D740();
  __chkstk_darwin(v3);
  v4 = sub_10002D620();
  sub_100004480(v4, qword_10003CBD0);
  sub_100004448(v4, qword_10003CBD0);
  sub_10002D730();
  sub_100001AC4(v2, 1, 1, v3);
  return sub_10002D610();
}

uint64_t sub_100002EDC()
{
  v0 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  sub_100002CD8(v0);
  sub_10000457C();
  __chkstk_darwin(v1);
  v3 = &v13 - v2;
  v4 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  sub_100002CD8(v4);
  sub_10000457C();
  __chkstk_darwin(v5);
  v6 = sub_10002D740();
  sub_100004570();
  __chkstk_darwin(v7);
  sub_100002C9C();
  sub_100003028();
  sub_100004588();
  sub_100001AC4(v8, v9, v10, v6);
  sub_1000031E4(v3);
  v11 = sub_10002D4E0();
  sub_100001AC4(v3, 0, 1, v11);
  return sub_10002D500();
}

uint64_t sub_100003028()
{
  v1 = sub_10002D3F0();
  sub_100004534();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002C9C();
  v7 = v6 - v5;
  v8 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  sub_100002CD8(v8);
  sub_10000457C();
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for AppUsageAppEntity(0);
  sub_10000437C(v0 + *(v12 + 20), v11);
  v13 = sub_10002DAA0();
  if (sub_1000040D4(v11, 1, v13) == 1)
  {
    sub_1000043EC(v11, &qword_10003C240, &qword_10002F350);
    sub_10002D270();
    sub_10002D3D0();
    (*(v3 + 8))(v7, v1);
  }

  else
  {
    sub_10002DA90();
    sub_100004570();
    (*(v14 + 8))(v11, v13);
  }

  return sub_10002D730();
}

uint64_t sub_1000031E4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  sub_10002D3F0();
  sub_100004534();
  v41 = v3;
  v42 = v2;
  __chkstk_darwin(v2);
  sub_100002C9C();
  v6 = v5 - v4;
  v7 = sub_100001A7C(&qword_10003C2F8, &qword_10002EA60);
  sub_100002CD8(v7);
  sub_10000457C();
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = sub_10002D770();
  sub_100004534();
  v40 = v12;
  __chkstk_darwin(v13);
  sub_100004560();
  v39 = v14 - v15;
  __chkstk_darwin(v16);
  v38 = &v38 - v17;
  v18 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  v19 = sub_100002CD8(v18);
  __chkstk_darwin(v19);
  sub_100004560();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v25 = &v38 - v24;
  v26 = *(type metadata accessor for AppUsageAppEntity(0) + 20);
  sub_10000437C(v1 + v26, v25);
  v27 = sub_10002DAA0();
  if (sub_1000040D4(v25, 1, v27) == 1)
  {
    sub_1000043EC(v25, &qword_10003C240, &qword_10002F350);
  }

  else
  {
    sub_10002DA60();
    v29 = v28;
    sub_100004570();
    (*(v30 + 8))(v25, v27);
    if (v29 >> 60 != 15)
    {
      return sub_10002D4D0();
    }
  }

  sub_10000437C(v1 + v26, v22);
  if (sub_1000040D4(v22, 1, v27) == 1)
  {
    sub_1000043EC(v22, &qword_10003C240, &qword_10002F350);
    sub_100004588();
    sub_100001AC4(v31, v32, v33, v11);
LABEL_7:
    sub_1000043EC(v10, &qword_10003C2F8, &qword_10002EA60);
    sub_10002D270();
    sub_10002D3D0();
    (*(v41 + 8))(v6, v42);
    return sub_10002D4B0();
  }

  sub_10002DA70();
  sub_100004570();
  (*(v34 + 8))(v22, v27);
  if (sub_1000040D4(v10, 1, v11) == 1)
  {
    goto LABEL_7;
  }

  v36 = v40;
  v37 = v38;
  (*(v40 + 32))(v38, v10, v11);
  (*(v36 + 16))(v39, v37, v11);
  sub_10002D4C0();
  return (*(v36 + 8))(v37, v11);
}

uint64_t sub_1000035F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002D740();
  v3 = sub_100002CD8(v2);
  __chkstk_darwin(v3);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C2F0, "N");
  sub_100004594();
  *a1 = sub_10002D2C0();
  type metadata accessor for AppUsageAppEntity(0);
  sub_10002DAA0();
  sub_100004588();
  return sub_100001AC4(v4, v5, v6, v7);
}

uint64_t sub_1000036A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10002D3F0();
  sub_100004534();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100004560();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v16 = sub_10002D740();
  v17 = sub_100002CD8(v16);
  __chkstk_darwin(v17);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C2F0, "N");
  sub_100004594();
  *a3 = sub_10002D2C0();
  v18 = *(type metadata accessor for AppUsageAppEntity(0) + 20);
  sub_10002DAA0();
  sub_100004588();
  sub_100001AC4(v19, v20, v21, v22);
  sub_10000430C(a2, a3 + v18);
  v23 = *(v8 + 16);
  v23(v15, a1, v6);
  v23(v12, v15, v6);
  sub_10002D280();
  sub_1000043EC(a2, &qword_10003C240, &qword_10002F350);
  v24 = *(v8 + 8);
  v24(a1, v6);
  return (v24)(v15, v6);
}

uint64_t sub_1000039BC(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_10003C300, type metadata accessor for AppUsageAppEntity, &unk_10002E7E0);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_100003B80(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_10003C300, type metadata accessor for AppUsageAppEntity, &unk_10002E7E0);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_100003BFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0B8 != -1)
  {
    swift_once();
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, qword_10003CBD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003CE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002A98(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003D30(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_10003C1D0, type metadata accessor for AppUsageAppEntity, &unk_10002E818);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100003DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100003EBC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003EBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003FB0(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_10003C218, type metadata accessor for AppUsageAppEntity, &unk_10002E9C8);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100004040(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
    v9 = a1 + *(a3 + 20);

    return sub_1000040D4(v9, a2, v8);
  }
}

void *sub_100004110(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
    v8 = v5 + *(a4 + 20);

    return sub_100001AC4(v8, a2, a2, v7);
  }

  return result;
}

void sub_10000419C(uint64_t a1)
{
  sub_100004220(319);
  if (v1 <= 0x3F)
  {
    sub_1000042B4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100004220(uint64_t a1)
{
  if (!qword_10003C2B0)
  {
    sub_10002D3F0();
    sub_1000044E4(&qword_10003C2B8, &type metadata accessor for IntentApplication, &protocol conformance descriptor for IntentApplication);
    v1 = sub_10002D330();
    if (!v2)
    {
      atomic_store(v1, &qword_10003C2B0);
    }
  }
}

void sub_1000042B4(uint64_t a1)
{
  if (!qword_10003C2C0)
  {
    sub_10002DAA0();
    v1 = sub_10002DD40();
    if (!v2)
    {
      atomic_store(v1, &qword_10003C2C0);
    }
  }
}

uint64_t sub_10000430C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000437C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000043EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100001A7C(a2, a3);
  sub_100004570();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100004448(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004480(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000044E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004594()
{

  return sub_10002D730();
}

uint64_t type metadata accessor for AppUsageResultEntity(uint64_t a1)
{
  result = qword_10003C3D0;
  if (!qword_10003C3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004648()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_10002D740();
  __chkstk_darwin(v3);
  v4 = sub_10002D620();
  sub_100004480(v4, qword_10003CBE8);
  sub_100004448(v4, qword_10003CBE8);
  sub_10002D730();
  sub_100001AC4(v2, 1, 1, v3);
  return sub_10002D610();
}

id sub_10000477C()
{
  result = [objc_allocWithZone(NSDateComponentsFormatter) init];
  qword_10003C308 = result;
  return result;
}

uint64_t sub_1000047E4@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  sub_100002CD8(v2);
  sub_10000457C();
  __chkstk_darwin(v3);
  v20[0] = v20 - v4;
  v5 = sub_100001A7C(&qword_10003C418, "> ");
  sub_100004534();
  v7 = v6;
  sub_10000457C();
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  v11 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  sub_100002CD8(v11);
  sub_10000457C();
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  v15 = sub_10002D740();
  sub_100006D2C();
  __chkstk_darwin(v16);
  sub_100002C9C();
  sub_100004A40();
  if (qword_10003C0C8 != -1)
  {
    sub_100006D54(&qword_10003C0C8);
  }

  v17 = qword_10003C308;
  sub_10002D270();
  sub_1000060D0();

  (*(v7 + 8))(v10, v5);
  sub_10002D730();
  sub_100001AC4(v14, 0, 1, v15);
  v18 = type metadata accessor for AppUsageResultEntity(0);
  sub_100006C50(v1 + *(v18 + 40), v20[0], &qword_10003C1B8, &unk_10002EA50);
  return sub_10002D500();
}

uint64_t sub_100004A40()
{
  v1 = sub_10002D510();
  sub_100004534();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002C9C();
  v7 = v6 - v5;
  v8 = sub_10002D3F0();
  sub_100004534();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002C9C();
  v14 = v13 - v12;
  if (*(v0 + 56))
  {

    return sub_10002D730();
  }

  else
  {

    sub_10002D400();
    sub_10002D3E0();
    (*(v10 + 8))(v14, v8);
    sub_10002D4F0();
    return (*(v3 + 8))(v7, v1);
  }
}

uint64_t sub_100004C00@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002D740();
  v3 = sub_100002CD8(v2);
  __chkstk_darwin(v3);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C498, &qword_10002ED60);
  sub_10002D730();
  sub_100006D3C();
  sub_100006CA0(v4, v5, &unk_10002E818);
  *a1 = sub_10002D2A0();
  sub_100001A7C(&qword_10003C4A0, &qword_10002ED68);
  sub_100006DC0();
  sub_10002D730();
  a1[1] = sub_10002D2E0();
  sub_100001A7C(&qword_10003C4A8, &unk_10002ED70);
  sub_100006DA8();
  sub_10002D730();
  a1[2] = sub_10002D2D0();
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  sub_100006D74();
  sub_10002D730();
  a1[3] = sub_10002D300();
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  v6 = type metadata accessor for AppUsageResultEntity(0);
  a1[6] = 0;
  a1[7] = 0;
  v7 = *(v6 + 40);
  v8 = sub_10002D4E0();
  return sub_100001AC4(a1 + v7, 1, 1, v8);
}

uint64_t sub_100004D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v120 = a2;
  v132 = a1;
  v109 = sub_10002D510();
  sub_100004534();
  v108 = v4;
  __chkstk_darwin(v5);
  sub_100002C9C();
  v107 = v7 - v6;
  v106 = sub_10002D3F0();
  sub_100004534();
  v105 = v8;
  __chkstk_darwin(v9);
  sub_100002C9C();
  v116 = v11 - v10;
  v12 = sub_100001A7C(&qword_10003C3E8, "F ");
  v13 = sub_100002CD8(v12);
  __chkstk_darwin(v13);
  sub_100006D08();
  sub_100006D1C();
  __chkstk_darwin(v14);
  v113 = (v101 - v15);
  v16 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  sub_100002CD8(v16);
  sub_10000457C();
  __chkstk_darwin(v17);
  v124 = v101 - v18;
  v19 = sub_100001A7C(&qword_10003C2F8, &qword_10002EA60);
  v20 = sub_100002CD8(v19);
  __chkstk_darwin(v20);
  sub_100006D08();
  sub_100006D1C();
  __chkstk_darwin(v21);
  sub_100006D1C();
  v23 = __chkstk_darwin(v22);
  v127 = v101 - v24;
  __chkstk_darwin(v23);
  v121 = v101 - v25;
  v125 = sub_10002D770();
  sub_100004534();
  v104 = v26;
  __chkstk_darwin(v27);
  sub_100006D08();
  sub_100006D1C();
  __chkstk_darwin(v28);
  v101[0] = v101 - v29;
  v30 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  v31 = sub_100002CD8(v30);
  __chkstk_darwin(v31);
  sub_100006D08();
  sub_100006D1C();
  __chkstk_darwin(v32);
  sub_100006D1C();
  v34 = __chkstk_darwin(v33);
  v36 = v101 - v35;
  __chkstk_darwin(v34);
  v38 = v101 - v37;
  v39 = sub_100001A7C(&qword_10003C418, "> ");
  sub_100004534();
  v41 = v40;
  v43 = __chkstk_darwin(v42);
  v45 = v101 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = v101 - v46;
  v48 = sub_10002D740();
  v49 = sub_100002CD8(v48);
  __chkstk_darwin(v49);
  sub_100006D08();
  v128 = v50;
  __chkstk_darwin(v51);
  sub_100001A7C(&qword_10003C498, &qword_10002ED60);
  sub_10002D730();
  sub_100006D3C();
  sub_100006CA0(v52, v53, &unk_10002E818);
  v110 = sub_10002D2A0();
  *a3 = v110;
  sub_100001A7C(&qword_10003C4A0, &qword_10002ED68);
  sub_100006DC0();
  sub_10002D730();
  v111 = sub_10002D2E0();
  a3[1] = v111;
  sub_100001A7C(&qword_10003C4A8, &unk_10002ED70);
  sub_100006DA8();
  sub_10002D730();
  v54 = sub_10002D2D0();
  a3[2] = v54;
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  sub_100006D74();
  sub_10002D730();
  v129 = sub_10002D300();
  a3[3] = v129;
  v55 = type metadata accessor for AppUsageResultEntity(0);
  a3[6] = 0;
  a3[7] = 0;
  v56 = *(v55 + 40);
  v117 = sub_10002D4E0();
  v118 = v56;
  sub_100001AC4(a3 + v56, 1, 1, v117);
  v102 = sub_10002DAE0();
  a3[4] = v102;
  a3[5] = v57;
  v101[1] = v57;
  sub_10002DAF0();
  v58 = [objc_opt_self() seconds];
  sub_100006B10();
  sub_10002D6A0();
  (*(v41 + 16))(v45, v47, v39);
  v126 = v54;
  sub_10002D280();
  v59 = *(v41 + 8);
  v122 = v47;
  v123 = v59;
  v130 = v41 + 8;
  v131 = v39;
  v59(v47, v39);
  v60 = v120;
  sub_100006C50(v120, v38, &qword_10003C240, &qword_10002F350);
  v61 = sub_10002DAA0();
  if (sub_100006E18(v38) == 1)
  {
    sub_100006BA4(v38, &qword_10003C240, &qword_10002F350);
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v62 = sub_10002DA90();
    v63 = v64;
    sub_100006D98();
    (*(v65 + 8))(v38, v61);
  }

  a3[6] = v62;
  a3[7] = v63;
  sub_100006C50(v60, v36, &qword_10003C240, &qword_10002F350);
  v66 = sub_100006E18(v36);

  v67 = v121;
  v119 = v62;
  if (v66 == 1)
  {
    sub_100006BA4(v36, &qword_10003C240, &qword_10002F350);
  }

  else
  {
    sub_10002DA60();
    v69 = v68;
    sub_100006D98();
    (*(v70 + 8))(v36, v61);
    if (v69 >> 60 != 15)
    {
      v78 = v124;
      sub_10002D4D0();
      v75 = v132;
      v73 = v127;
      v74 = v125;
      goto LABEL_13;
    }
  }

  v71 = v115;
  sub_100006C50(v60, v115, &qword_10003C240, &qword_10002F350);
  v72 = sub_100006E18(v71);
  v73 = v127;
  if (v72 == 1)
  {
    sub_100006BA4(v71, &qword_10003C240, &qword_10002F350);
    v74 = v125;
    sub_100001AC4(v67, 1, 1, v125);
    v75 = v132;
LABEL_10:
    sub_100006BA4(v67, &qword_10003C2F8, &qword_10002EA60);
    sub_10002DAE0();
    v78 = v124;
    sub_10002D4B0();
    goto LABEL_13;
  }

  sub_10002DA70();
  sub_100006D98();
  (*(v76 + 8))(v71, v61);
  v74 = v125;
  v77 = sub_1000040D4(v67, 1, v125);
  v75 = v132;
  if (v77 == 1)
  {
    goto LABEL_10;
  }

  v79 = v104;
  v80 = v101[0];
  (*(v104 + 32))(v101[0], v67, v74);
  (*(v79 + 16))(v103, v80, v74);
  v78 = v124;
  sub_10002D4C0();
  v81 = v80;
  v75 = v132;
  (*(v79 + 8))(v81, v74);
LABEL_13:
  sub_100001AC4(v78, 0, 1, v117);
  sub_100006B54(v78, a3 + v118, &qword_10003C1B8, &unk_10002EA50);
  v82 = sub_10002DAD0();
  sub_10002DAE0();
  if (v82)
  {
    v83 = v116;
    sub_10002D400();
    v84 = v112;
    sub_100006C50(v60, v112, &qword_10003C240, &qword_10002F350);
    v85 = v113;
    sub_1000036A4(v83, v84, v113);
    v86 = type metadata accessor for AppUsageAppEntity(0);
    sub_100001AC4(v85, 0, 1, v86);
    v87 = &qword_10003C3E8;
    v88 = "F ";
    sub_100006DF8(v85, &v135);
    sub_10002D280();
    v89 = v85;
  }

  else
  {
    sub_10002D760();

    if (sub_100006E18(v73) || (v91 = v104, v92 = v103, (*(v104 + 16))(v103, v73, v74), sub_10002D750(), v94 = v93, (*(v91 + 8))(v92, v74), !v94))
    {
      v133 = 0x2F2F3A70747468;
      v134 = 0xE700000000000000;
      v137._countAndFlagsBits = sub_10002DAE0();
      sub_10002DC90(v137);

      v90 = v114;
      sub_10002D760();

      sub_100006B54(v90, v73, &qword_10003C2F8, &qword_10002EA60);
    }

    else
    {

      v90 = v114;
    }

    v87 = &qword_10003C2F8;
    v88 = &qword_10002EA60;
    sub_100006C50(v73, v90, &qword_10003C2F8, &qword_10002EA60);
    sub_100006DF8(v90, &v136);
    sub_10002D280();
    sub_100006BA4(v90, &qword_10003C2F8, &qword_10002EA60);
    v89 = v73;
  }

  sub_100006BA4(v89, v87, v88);
  v133 = 0;
  v134 = 0xE000000000000000;
  if (v63)
  {
    sub_10002D730();
  }

  else
  {

    v95 = v116;
    sub_10002D400();
    v96 = v107;
    sub_10002D3E0();
    (*(v105 + 8))(v95, v106);
    sub_10002D4F0();
    (*(v108 + 8))(v96, v109);
  }

  v138._countAndFlagsBits = sub_10002DC60();
  sub_10002DC90(v138);

  v139._countAndFlagsBits = 10272;
  v139._object = 0xE200000000000000;
  sub_10002DC90(v139);
  if (qword_10003C0C8 != -1)
  {
    sub_100006D54(&qword_10003C0C8);
  }

  v97 = qword_10003C308;
  v98 = v122;
  sub_10002D270();
  sub_1000060D0();

  v123(v98, v131);
  sub_10002D730();
  v140._countAndFlagsBits = sub_10002DC60();
  sub_10002DC90(v140);

  v141._countAndFlagsBits = 41;
  v141._object = 0xE100000000000000;
  sub_10002DC90(v141);
  sub_10002D280();
  sub_100006BA4(v60, &qword_10003C240, &qword_10002F350);
  sub_10002DB00();
  sub_100006D2C();
  return (*(v99 + 8))(v75);
}

uint64_t sub_100005C44(uint64_t a1)
{
  v2 = sub_100006CA0(&qword_10003C4C8, type metadata accessor for AppUsageResultEntity, &unk_10002EA70);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_100005E08(uint64_t a1)
{
  v2 = sub_100006CA0(&qword_10003C4C8, type metadata accessor for AppUsageResultEntity, &unk_10002EA70);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_100005E84@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, qword_10003CBE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100005F70(uint64_t a1)
{
  v2 = sub_100006CA0(&qword_10003C310, type metadata accessor for AppUsageResultEntity, &unk_10002EAD0);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100006038(uint64_t a1)
{
  v2 = sub_100006CA0(&qword_10003C358, type metadata accessor for AppUsageResultEntity, &unk_10002EC80);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000060D0()
{
  [v0 setUnitsStyle:1];
  sub_100001A7C(&qword_10003C418, "> ");
  sub_10002D6B0();
  if (v1 >= 60.0)
  {
    sub_10002D6B0();
    if (v2 >= 3600.0)
    {
      v3 = 96;
    }

    else
    {
      v3 = 64;
    }

    [v0 setAllowedUnits:v3];
  }

  else
  {
    [v0 setAllowedUnits:128];
  }

  sub_10002D6B0();
  v4 = [v0 stringFromTimeInterval:?];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10002DC20();

    return v6;
  }

  else
  {
    sub_10002D6B0();
    sub_100006BFC();
    return sub_10002DBA0();
  }
}

uint64_t sub_1000061F4()
{
  v0 = sub_10002D8A0();
  v1 = sub_100002CD8(v0);
  __chkstk_darwin(v1);
  sub_100002C9C();
  sub_10002D890();
  type metadata accessor for AppUsageResultEntity(0);
  sub_100006CF0();
  sub_100006CA0(v2, v3, &unk_10002ECE0);
  return sub_10002D860();
}

uint64_t sub_1000062BC(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_10002DC50();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10000637C, 0, 0);
}

uint64_t sub_10000637C(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  sub_10002D270();
  sub_10002DC40();
  v5 = sub_10002DC30();
  v7 = v6;

  (*(v3 + 8))(v2, v4);
  if (v7 >> 60 == 15)
  {
    v5 = 0;
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = v7;
  }

  v9 = v1[1];

  return v9(v5, v8);
}

uint64_t sub_100006480(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
    v9 = a1 + *(a3 + 40);

    return sub_1000040D4(v9, a2, v8);
  }
}

void *sub_100006528(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
    v8 = v5 + *(a4 + 40);

    return sub_100001AC4(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000065B4(uint64_t a1)
{
  sub_1000067AC(319, &qword_10003C3E0, &qword_10003C3E8, "F ", sub_1000066F8);
  if (v1 <= 0x3F)
  {
    sub_1000067AC(319, &qword_10003C3F8, &qword_10003C2F8, &qword_10002EA60, sub_10000681C);
    if (v2 <= 0x3F)
    {
      sub_1000068D0(319);
      if (v3 <= 0x3F)
      {
        sub_100006974(319);
        if (v4 <= 0x3F)
        {
          sub_100006A24();
          if (v5 <= 0x3F)
          {
            sub_100006A74(319);
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

unint64_t sub_1000066F8()
{
  result = qword_10003C3F0;
  if (!qword_10003C3F0)
  {
    sub_100002A98(&qword_10003C3E8, "F ");
    sub_100006CA0(&qword_10003C210, type metadata accessor for AppUsageAppEntity, &unk_10002E968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C3F0);
  }

  return result;
}

void sub_1000067AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_100002A98(a3, a4);
    a5();
    v7 = sub_10002D330();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10000681C()
{
  result = qword_10003C400;
  if (!qword_10003C400)
  {
    sub_100002A98(&qword_10003C2F8, &qword_10002EA60);
    sub_100006CA0(&qword_10003C408, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C400);
  }

  return result;
}

void sub_1000068D0(uint64_t a1)
{
  if (!qword_10003C410)
  {
    sub_100002A98(&qword_10003C418, "> ");
    sub_100003CE8(&qword_10003C420, &qword_10003C418, "> ", &protocol conformance descriptor for Measurement<A>);
    v1 = sub_10002D330();
    if (!v2)
    {
      atomic_store(v1, &qword_10003C410);
    }
  }
}

void sub_100006974(uint64_t a1)
{
  if (!qword_10003C428)
  {
    sub_1000069D0();
    v1 = sub_10002D330();
    if (!v2)
    {
      atomic_store(v1, &qword_10003C428);
    }
  }
}

unint64_t sub_1000069D0()
{
  result = qword_10003C430;
  if (!qword_10003C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C430);
  }

  return result;
}

void sub_100006A24()
{
  if (!qword_10003C438)
  {
    v0 = sub_10002DD40();
    if (!v1)
    {
      atomic_store(v0, &qword_10003C438);
    }
  }
}

void sub_100006A74(uint64_t a1)
{
  if (!qword_10003C440)
  {
    sub_10002D4E0();
    v1 = sub_10002DD40();
    if (!v2)
    {
      atomic_store(v1, &qword_10003C440);
    }
  }
}

unint64_t sub_100006B10()
{
  result = qword_10003C4B0;
  if (!qword_10003C4B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C4B0);
  }

  return result;
}

uint64_t sub_100006B54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100006DD8(a1, a2, a3, a4);
  sub_100006D2C();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_100006BA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100001A7C(a2, a3);
  sub_100006D2C();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_100006BFC()
{
  result = qword_10003C4B8;
  if (!qword_10003C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4B8);
  }

  return result;
}

uint64_t sub_100006C50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100006DD8(a1, a2, a3, a4);
  sub_100006D2C();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_100006CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100006D54(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100006DD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100001A7C(a3, a4);
}

uint64_t sub_100006DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_100006C50(a1, v5, v2, v3);
}

uint64_t sub_100006E18(uint64_t a1)
{

  return sub_1000040D4(a1, 1, v1);
}

unint64_t sub_100006E34()
{
  result = qword_10003C4D0;
  if (!qword_10003C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4D0);
  }

  return result;
}

unint64_t sub_100006E8C()
{
  result = qword_10003C4D8;
  if (!qword_10003C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4D8);
  }

  return result;
}

uint64_t sub_100006F30()
{
  v0 = sub_10002D740();
  sub_100004480(v0, qword_10003CC00);
  sub_100004448(v0, qword_10003CC00);
  return sub_10002D730();
}

uint64_t sub_100006F94()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v1 = sub_100002CD8(v0);
  v2 = __chkstk_darwin(v1);
  __chkstk_darwin(v2);
  v3 = sub_10002D740();
  __chkstk_darwin(v3);
  sub_100002C9C();
  sub_10002D730();
  sub_100004588();
  sub_100001AC4(v4, v5, v6, v3);
  sub_100001A7C(&qword_10003C5A0, &qword_10002EF88);
  *(swift_allocObject() + 16) = xmmword_10002ED90;
  sub_10002D730();
  sub_10002D730();
  sub_10002D730();
  sub_10002D730();
  sub_10002D730();
  sub_10000C198();
  sub_100001AC4(v7, v8, v9, v3);
  sub_10002D420();
  sub_10002D410();
  v10 = sub_10000BFF4();
  return sub_100001AC4(v10, v11, v12, v13);
}

uint64_t sub_1000071E4()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_100001A7C(&qword_10003C5A8, &qword_10002EFB8);
  v2 = sub_10000B9BC();
  v3 = sub_100003CE8(&qword_10003C5B0, &qword_10003C5A8, &qword_10002EFB8, &protocol conformance descriptor for ParameterSummaryTupleCaseCondition<A, B, C>);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_1000072D4, 0, v1, v2, v3);
}

uint64_t sub_1000072D4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100001A7C(&qword_10003C5B8, &qword_10002EFC0);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = __chkstk_darwin(v1);
  v30 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v25 - v5;
  v6 = sub_100001A7C(&qword_10003C5C0, &qword_10002EFC8);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v28 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - v11;
  __chkstk_darwin(v10);
  v29 = v25 - v13;
  v38 = 6;
  v35 = sub_100001A7C(&qword_10003C5C8, &qword_10002EFD0);
  v25[3] = sub_10000B9BC();
  v14 = sub_10000BD24();
  v25[2] = sub_100003CE8(&qword_10003C5D8, &qword_10003C5C8, &qword_10002EFD0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_10002D670();
  v25[1] = sub_100003CE8(&qword_10003C5E0, &qword_10003C5C0, &qword_10002EFC8, &protocol conformance descriptor for ParameterSummaryCaseCondition<A, B, C>);
  sub_10002D640();
  v36 = *(v7 + 8);
  v26 = v12;
  v36(v12, v6);
  v27 = v7 + 8;
  v37 = 5;
  v15 = v28;
  v25[0] = v14;
  sub_10002D670();
  sub_10002D640();
  v36(v15, v6);
  v16 = v30;
  sub_10002D690();
  sub_100003CE8(&qword_10003C5E8, &qword_10003C5B8, &qword_10002EFC0, &protocol conformance descriptor for ParameterSummaryDefaultCaseCondition<A, B, C>);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  sub_10002D640();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  sub_10002D630();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

uint64_t sub_1000077A4@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_100001A7C(&qword_10003C5F0, &qword_10002EFD8);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100001A7C(&qword_10003C5F8, &qword_10002EFE0);
  __chkstk_darwin(v2);
  v3 = sub_100001A7C(&qword_10003C5C8, &qword_10002EFD0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  sub_10000B9BC();
  sub_10002D5A0();
  sub_10002D590();
  swift_getKeyPath();
  sub_100001A7C(&qword_10003C600, &qword_10002EFE8);
  sub_10002D580();

  sub_10002D590();
  swift_getKeyPath();
  sub_100001A7C(&qword_10003C610, &qword_10002F070);
  sub_10002D580();

  sub_10002D590();
  swift_getKeyPath();
  sub_10002D580();

  sub_10002D590();
  sub_10002D5B0();
  sub_10002D570();
  sub_100003CE8(&qword_10003C5D8, &qword_10003C5C8, &qword_10002EFD0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_10002D5E0();
  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_10002D5D0();
  return (v10)(v9, v3);
}

uint64_t sub_100007BC0@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_100001A7C(&qword_10003C5F0, &qword_10002EFD8);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100001A7C(&qword_10003C5F8, &qword_10002EFE0);
  __chkstk_darwin(v2);
  v3 = sub_100001A7C(&qword_10003C5C8, &qword_10002EFD0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  sub_10000B9BC();
  sub_10002D5A0();
  sub_10002D590();
  swift_getKeyPath();
  sub_100001A7C(&qword_10003C600, &qword_10002EFE8);
  sub_10002D580();

  sub_10002D590();
  swift_getKeyPath();
  sub_100001A7C(&qword_10003C610, &qword_10002F070);
  sub_10002D580();

  sub_10002D590();
  sub_10002D5B0();
  sub_10002D570();
  sub_100003CE8(&qword_10003C5D8, &qword_10003C5C8, &qword_10002EFD0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_10002D5E0();
  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_10002D5D0();
  return (v10)(v9, v3);
}

uint64_t sub_100007F08@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_100001A7C(&qword_10003C5F0, &qword_10002EFD8);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100001A7C(&qword_10003C5F8, &qword_10002EFE0);
  __chkstk_darwin(v2);
  v3 = sub_100001A7C(&qword_10003C5C8, &qword_10002EFD0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  sub_10000B9BC();
  sub_10002D5A0();
  sub_10002D590();
  swift_getKeyPath();
  sub_100001A7C(&qword_10003C600, &qword_10002EFE8);
  sub_10002D580();

  sub_10002D590();
  sub_10002D5B0();
  sub_10002D570();
  sub_100003CE8(&qword_10003C5D8, &qword_10003C5C8, &qword_10002EFD0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_10002D5E0();
  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_10002D5D0();
  return (v10)(v9, v3);
}

uint64_t sub_100008200()
{
  swift_getKeyPath();
  sub_10000B9BC();
  v0 = sub_10002D550();

  swift_getKeyPath();

  v1 = sub_10002D550();

  sub_100001A7C(&qword_10003C608, &qword_10002F040);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10002EDA0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;

  v3 = sub_10002D540();

  return v3;
}

uint64_t sub_1000082F4@<X0>(uint64_t *a1@<X8>)
{
  v110 = a1;
  v108 = sub_100001A7C(&qword_10003C508, &qword_10002EF08);
  v117 = *(v108 - 8);
  sub_10000457C();
  __chkstk_darwin(v1);
  v109 = &v100 - v2;
  v3 = sub_100001A7C(&qword_10003C510, &qword_10002EF10);
  sub_100002CD8(v3);
  sub_10000457C();
  __chkstk_darwin(v4);
  v106 = &v100 - v5;
  v113 = type metadata accessor for DataActionUtils.AppUsageDeviceCollectionProvider(0);
  sub_100006D2C();
  __chkstk_darwin(v6);
  sub_100002C9C();
  v105 = v8 - v7;
  v9 = sub_100001A7C(&qword_10003C518, &qword_10002EF18);
  sub_100002CD8(v9);
  sub_10000457C();
  __chkstk_darwin(v10);
  v104 = &v100 - v11;
  v111 = sub_10002D5C0();
  v12 = *(v111 - 8);
  __chkstk_darwin(v111);
  sub_100002C9C();
  v15 = v14 - v13;
  v16 = sub_100001A7C(&qword_10003C118, &unk_10002EF20);
  v17 = sub_100002CD8(v16);
  v18 = __chkstk_darwin(v17);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  sub_100002CD8(v21);
  sub_10000457C();
  __chkstk_darwin(v22);
  v24 = &v100 - v23;
  v25 = sub_10002D740();
  sub_100006D2C();
  __chkstk_darwin(v26);
  sub_100002C9C();
  v29 = v28 - v27;
  v107 = sub_100001A7C(&qword_10003C520, &qword_10002EF30);
  sub_10002D730();
  sub_100004588();
  v114 = v25;
  sub_100001AC4(v30, v31, v32, v25);
  v119 = 0;
  v33 = sub_10002D1F0();
  sub_100004588();
  sub_100001AC4(v34, v35, v36, v33);
  sub_100004588();
  sub_100001AC4(v37, v38, v39, v33);
  v103 = enum case for InputConnectionBehavior.never(_:);
  v40 = *(v12 + 104);
  v116 = v12 + 104;
  v112 = v40;
  v40(v15);
  sub_10000BA10();
  v41 = v29;
  v42 = v15;
  v107 = sub_10002D390();
  v101 = sub_100001A7C(&qword_10003C530, &qword_10002EF38);
  sub_10002D730();
  sub_10002D730();
  sub_10000C198();
  sub_100001AC4(v43, v44, v45, v25);
  type metadata accessor for DeviceActivityDeviceAppEntity(0);
  sub_100004588();
  sub_100001AC4(v46, v47, v48, v49);
  sub_100004588();
  v115 = v33;
  sub_100001AC4(v50, v51, v52, v33);
  v100 = v20;
  sub_100004588();
  sub_100001AC4(v53, v54, v55, v33);
  sub_10002D900();
  v56 = v106;
  sub_100004588();
  sub_100001AC4(v57, v58, v59, v60);
  sub_10001DDA0(v56);
  v102 = enum case for InputConnectionBehavior.default(_:);
  v61 = v111;
  v62 = v112;
  v112(v15);
  sub_10000BC44(&qword_10003C538, type metadata accessor for DataActionUtils.AppUsageDeviceCollectionProvider, &unk_10002F128);
  sub_10000BC44(&qword_10003C540, type metadata accessor for DeviceActivityDeviceAppEntity, &protocol conformance descriptor for DeviceActivityDeviceAppEntity);
  v106 = sub_10002D3A0();
  v113 = sub_100001A7C(&qword_10003C548, &qword_10002EF40);
  sub_10002D730();
  v63 = v24;
  sub_10002D730();
  sub_10000C198();
  v64 = v114;
  sub_100001AC4(v65, v66, v67, v114);
  v118 = 0;
  sub_100004588();
  v68 = v115;
  sub_100001AC4(v69, v70, v71, v115);
  sub_100004588();
  sub_100001AC4(v72, v73, v74, v68);
  v62(v42, v103, v61);
  sub_1000028D4();
  sub_10000C3C4();
  v75 = v42;
  v105 = sub_10002D390();
  v113 = sub_100001A7C(&qword_10003C550, &qword_10002EF48);
  sub_10000C514();
  v76 = v41;
  sub_10002D730();
  sub_10002D730();
  v77 = sub_10000BFF4();
  sub_100001AC4(v77, v78, v79, v64);
  v103 = enum case for IntentParameter.DateKind.dateTime<A>(_:);
  v80 = *(v117 + 104);
  v117 += 104;
  v101 = v80;
  v82 = v108;
  v81 = v109;
  v80(v109);
  sub_100004588();
  sub_100001AC4(v83, v84, v85, v115);
  v86 = v102;
  v87 = v112;
  (v112)(v75, v102, v61);
  v88 = sub_10000C3C4();
  v104 = sub_10000C528(v88, v89);
  sub_10000C1F4();
  sub_10002D730();
  v90 = sub_10000BFF4();
  sub_100001AC4(v90, v91, v92, v114);
  v101(v81, v103, v82);
  sub_100004588();
  sub_100001AC4(v93, v94, v95, v115);
  v87(v75, v86, v111);
  result = sub_10000C528(v76, v63);
  v97 = v110;
  v98 = v106;
  *v110 = v107;
  v97[1] = v98;
  v99 = v104;
  v97[2] = v105;
  v97[3] = v99;
  v97[4] = result;
  return result;
}

uint64_t sub_100008AE4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for DataActionUtils.AppDisplayInfoProvider(0);
  sub_100002CD8(v3);
  v2[5] = sub_10000C3DC();
  v4 = sub_100001A7C(&qword_10003C510, &qword_10002EF10);
  sub_100002CD8(v4);
  v2[6] = sub_10000C450();
  v2[7] = swift_task_alloc();
  v5 = sub_10002DB90();
  v2[8] = v5;
  sub_10000C028(v5);
  v2[9] = v6;
  v2[10] = sub_10000C3DC();
  v7 = sub_100001A7C(&qword_10003C558, &qword_10002EF58);
  sub_100002CD8(v7);
  v2[11] = sub_10000C3DC();
  v8 = sub_10002DA00();
  v2[12] = v8;
  sub_10000C028(v8);
  v2[13] = v9;
  v2[14] = sub_10000C3DC();
  v10 = type metadata accessor for DeviceActivityDeviceAppEntity(0);
  v2[15] = v10;
  sub_100002CD8(v10);
  v2[16] = sub_10000C3DC();
  v11 = sub_100001A7C(&qword_10003C560, &qword_10002EF60);
  sub_100002CD8(v11);
  v2[17] = sub_10000C450();
  v2[18] = swift_task_alloc();
  v12 = sub_10002D930();
  v2[19] = v12;
  sub_10000C028(v12);
  v2[20] = v13;
  v2[21] = sub_10000C3DC();
  v14 = sub_100001A7C(&qword_10003C518, &qword_10002EF18);
  sub_100002CD8(v14);
  v2[22] = sub_10000C450();
  v2[23] = swift_task_alloc();
  v15 = sub_100001A7C(&qword_10003C568, &qword_10002EF68);
  sub_100002CD8(v15);
  v2[24] = sub_10000C3DC();
  v16 = sub_10002D740();
  sub_100002CD8(v16);
  v2[25] = sub_10000C3DC();
  v17 = sub_100001A7C(&qword_10003C118, &unk_10002EF20);
  sub_100002CD8(v17);
  v2[26] = sub_10000C450();
  v2[27] = swift_task_alloc();
  v18 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  sub_100002CD8(v18);
  v2[28] = sub_10000C450();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v19 = sub_100001A7C(&qword_10003C578, &qword_10002EF78);
  sub_100002CD8(v19);
  v2[32] = sub_10000C3DC();
  v20 = sub_10002D6F0();
  v2[33] = v20;
  sub_10000C028(v20);
  v2[34] = v21;
  v2[35] = sub_10000C3DC();
  v22 = sub_10002D850();
  v2[36] = v22;
  sub_10000C028(v22);
  v2[37] = v23;
  v2[38] = sub_10000C450();
  v2[39] = swift_task_alloc();
  v24 = sub_10002D7E0();
  v2[40] = v24;
  sub_10000C028(v24);
  v2[41] = v25;
  v2[42] = sub_10000C450();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v26 = sub_10002D8C0();
  v2[50] = v26;
  sub_10000C028(v26);
  v2[51] = v27;
  v2[52] = sub_10000C3DC();

  return _swift_task_switch(sub_100008FD4, 0, 0);
}

uint64_t sub_100008FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  sub_10002D880();
  v39 = sub_10002D8B0();
  v40 = sub_10002DD00();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "AppUsageIntent query execution", v41, 2u);
  }

  v43 = *(v38 + 408);
  v42 = *(v38 + 416);
  v44 = *(v38 + 400);
  v46 = *(v38 + 256);
  v45 = *(v38 + 264);
  v47 = *(v38 + 32);

  (*(v43 + 8))(v42, v44);
  sub_10002D7C0();
  sub_10002D830();
  *(v38 + 424) = *v47;
  sub_10002D360();
  sub_10002A804();
  if (sub_1000040D4(v46, 1, v45) == 1)
  {
    sub_100006BA4(*(v38 + 256), &qword_10003C578, &qword_10002EF78);
  }

  else
  {
    v48 = *(v38 + 320);
    v50 = *(v38 + 272);
    v49 = *(v38 + 280);
    v51 = *(v38 + 264);
    v52 = *(v38 + 248);
    (*(v50 + 32))(v49, *(v38 + 256), v51);
    sub_10000C378();
    sub_10002D6E0();
    sub_10000C198();
    sub_100001AC4(v53, v54, v55, v48);
    v56 = sub_10000C1E8();
    sub_10000BC8C(v56, v57);
    sub_10002D370();
    sub_100006BA4(v52, &qword_10003C570, &qword_10002EF70);
    sub_10000C378();
    sub_10002D6C0();
    sub_10000C198();
    sub_100001AC4(v58, v59, v60, v48);
    v61 = sub_10000C1E8();
    sub_10000BC8C(v61, v62);
    sub_10002D370();
    sub_100006BA4(v52, &qword_10003C570, &qword_10002EF70);
    (*(v50 + 8))(v49, v51);
  }

  v63 = *(v38 + 320);
  v64 = *(v38 + 232);
  sub_10002D360();
  v65 = sub_10000C36C();
  if (sub_1000040D4(v65, v66, v63) == 1)
  {
    sub_100006BA4(*(v38 + 232), &qword_10003C570, &qword_10002EF70);
    *(v38 + 432) = sub_10002D380();
    sub_10000C514();
    sub_10002D730();
    sub_10002D200();
    sub_10002D1F0();
    v67 = sub_10000BFF4();
    sub_100001AC4(v67, v68, v69, v70);
    v71 = swift_task_alloc();
    *(v38 + 440) = v71;
    *v71 = v38;
    v71[1] = sub_10000996C;
LABEL_8:
    sub_10000C1A4();

    return IntentParameter.requestValue(_:)(v72);
  }

  sub_10000C384();
  v75 = *(v38 + 376);
  v74 = *(v38 + 384);
  v76 = *(v38 + 320);
  v77 = *(v38 + 328);
  v79 = *(v77 + 32);
  v78 = v77 + 32;
  (v79)(v75, *(v38 + 232), v76);
  (v79)(v74, v75, v76);
  v166 = v79;
  *(v38 + 456) = v79;
  sub_10002D360();
  v80 = TemporalOptions.rawValue.getter(*(v38 + 553));
  v82 = v80 == v64 && v81 == v63;
  if (v82)
  {

    goto LABEL_19;
  }

  v83 = sub_10000C548(v80);

  if (v83)
  {
LABEL_19:
    v83 = *(v38 + 384);
    v92 = *(v38 + 352);
    v93 = *(v38 + 320);
    v94 = *(v38 + 328);
    v95 = *(v38 + 296);
    v78 = *(v38 + 304);
    v96 = *(v38 + 288);
    a31 = v96;
    a32 = *(v38 + 360);
    sub_10002D830();
    sub_10002D7F0();
    v98 = *(v95 + 8);
    v64 = (v95 + 8);
    v97 = v98;
    v98(v78, v96);
    v99 = *(v94 + 8);
    v99(v83, v93);
    v100 = sub_10000C4F4();
    v166(v100);
    sub_10000C378();
    sub_10002AB58();
    sub_10002D830();
    sub_10002D7F0();
    v97(v78, v96);
    v101 = sub_10000C1E8();
    (v99)(v101);
    goto LABEL_20;
  }

  sub_10000C4A0(v84);
  v85 = sub_10000C36C();
  if (sub_1000040D4(v85, v86, v83) == 1)
  {
    sub_100006BA4(*(v38 + 224), &qword_10003C570, &qword_10002EF70);
    *(v38 + 464) = sub_10002D380();
    sub_10000C1F4();
    sub_10002D200();
    sub_10002D1F0();
    v87 = sub_10000BFF4();
    sub_100001AC4(v87, v88, v89, v90);
    v91 = swift_task_alloc();
    *(v38 + 472) = v91;
    *v91 = v38;
    sub_10000C1C0(v91);
    goto LABEL_8;
  }

  sub_10000C500();
  v92 = v135 + 32;
  v166(v83);
  v136 = sub_10000C3C4();
  v166(v136);
LABEL_20:
  sub_10000C414();
  sub_10000BFB0();
  v104 = sub_10000BC44(v102, v103, &protocol conformance descriptor for Date);
  v105 = sub_10000C2F0(v104);
  if (v105)
  {
    sub_10000C16C();
    sub_10000BF98();
    v108 = sub_10000BC44(v106, v107, &protocol conformance descriptor for DataActionError);
    v109 = sub_10000C3A4(v108);
    sub_10000C434(v109, v110);
    sub_10000C404();
    (*(v111 + 104))();
    swift_willThrow();
    v112 = sub_10000C3F4();
    v64(v112);
    (v64)(v78, v83);
    v113 = sub_10000C1E8();
    v114(v113);
    (v64)(a32, v83);
    sub_10000BF0C();

    sub_10000C354();
    sub_10000C1A4();

    return v116(v115, v116, v117, v118, v119, v120, v121, v122, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v166, a34, a35, a36, a37, a38);
  }

  else
  {
    sub_10000C244(v105);
    v123 = sub_10000C36C();
    if (sub_1000040D4(v123, v124, v92))
    {
      sub_100006BA4(*(v38 + 184), &qword_10003C518, &qword_10002EF18);
    }

    else
    {
      v125 = sub_10000BFC8();
      v126(v125);
      sub_100006BA4(v64, &qword_10003C518, &qword_10002EF18);
      sub_10002D910();
      v127 = sub_10000C124();
      v128(v127);
    }

    v129 = sub_10000C21C();
    sub_10000C0B8(v129);
    v130 = sub_10000C314();
    if (v82)
    {
      v131 = sub_100006BA4(v130, &qword_10003C518, &qword_10002EF18);
    }

    else
    {
      v83 = *(v38 + 120);
      v132 = sub_10000BB18(v130, *(v38 + 128));
      sub_10000C468(v132);
      if (*(v38 + 555))
      {
        sub_10000BE1C();
        v131 = sub_10000BB7C(v133, v134);
      }

      else
      {
        v137 = sub_10000C004();
        v138(v137);
        sub_10000BE1C();
        sub_10000BB7C(v64, v139);
        v140 = sub_10000BFF4();
        v131 = sub_10000C4C4(v140, v141, v142);
      }
    }

    sub_10000C484(v131);
    switch(*(v38 + 554))
    {
      case 3:
        v150 = sub_10000C134();
        v151(v150);
        break;
      default:
        v143 = sub_10000C058();
        v144(v143);
        sub_10000C198();
        sub_100001AC4(v145, v146, v147, v83);
        v148 = sub_10000C2DC();
        v149(v148);
        break;
    }

    if (!sub_10000C29C())
    {
      v152 = sub_10000C108();
      v153(v152);
      sub_10002DB30();
      v154 = sub_10000C340();
      v155(v154);
      v64 = *(v38 + 64);
    }

    v156 = sub_10002D900();
    if (!sub_10000C078(v156))
    {
      v157 = sub_10000C038();
      v158(v157);
      sub_10002DB60();
      v64 = v159;
      v160 = sub_10000C124();
      v161(v160);
    }

    *(v38 + 496) = v64;
    v162 = swift_task_alloc();
    *(v38 + 504) = v162;
    *v162 = v38;
    sub_10000BEC4(v162);
    sub_10000C1A4();

    return static AppUsageAction.computeAppUsage(queryService:user:deviceId:activityType:startTime:endTime:localDataOnly:)(v163);
  }
}

uint64_t sub_10000996C()
{
  v2 = *v1;
  sub_10000C3D0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 448) = v0;

  sub_100006BA4(*(v2 + 216), &qword_10003C118, &unk_10002EF20);

  sub_10000C424();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100009AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t (*a32)(uint64_t), uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  sub_10000C384();
  v42 = *(*(v40 + 328) + 32);
  (v42)(*(v40 + 384), *(v40 + 368), *(v40 + 320));
  *(v40 + 456) = v42;
  sub_10002D360();
  v43 = TemporalOptions.rawValue.getter(*(v40 + 553));
  v45 = v43 == v39 && v44 == v38;
  if (v45)
  {

    goto LABEL_11;
  }

  v46 = sub_10000C548(v43);

  if (v46)
  {
LABEL_11:
    v46 = *(v40 + 384);
    a32 = v42;
    a33 = *(v40 + 360);
    v57 = *(v40 + 352);
    v58 = *(v40 + 320);
    v59 = *(v40 + 328);
    v60 = *(v40 + 296);
    v41 = *(v40 + 304);
    v61 = *(v40 + 288);
    a31 = v61;
    sub_10002D830();
    sub_10002D7F0();
    v63 = *(v60 + 8);
    v39 = (v60 + 8);
    v62 = v63;
    v63(v41, v61);
    v64 = *(v59 + 8);
    v64(v46, v58);
    v65 = sub_10000C4F4();
    a32(v65);
    sub_10000C378();
    sub_10002AB58();
    sub_10002D830();
    sub_10002D7F0();
    v62(v41, v61);
    v66 = sub_10000C1E8();
    (v64)(v66);
    goto LABEL_12;
  }

  sub_10000C4A0(v47);
  v48 = sub_10000C36C();
  if (sub_1000040D4(v48, v49, v46) == 1)
  {
    sub_100006BA4(*(v40 + 224), &qword_10003C570, &qword_10002EF70);
    *(v40 + 464) = sub_10002D380();
    sub_10000C1F4();
    sub_10002D200();
    sub_10002D1F0();
    v50 = sub_10000BFF4();
    sub_100001AC4(v50, v51, v52, v53);
    v54 = swift_task_alloc();
    *(v40 + 472) = v54;
    *v54 = v40;
    sub_10000C1C0(v54);
    sub_10000C1A4();

    return IntentParameter.requestValue(_:)(v55);
  }

  sub_10000C500();
  v100 = v42;
  v57 = v101 + 32;
  v100(v46);
  v102 = sub_10000C3C4();
  v100(v102);
LABEL_12:
  sub_10000C414();
  sub_10000BFB0();
  v69 = sub_10000BC44(v67, v68, &protocol conformance descriptor for Date);
  v70 = sub_10000C2F0(v69);
  if (v70)
  {
    sub_10000C16C();
    sub_10000BF98();
    v73 = sub_10000BC44(v71, v72, &protocol conformance descriptor for DataActionError);
    v74 = sub_10000C3A4(v73);
    sub_10000C434(v74, v75);
    sub_10000C404();
    (*(v76 + 104))();
    swift_willThrow();
    v77 = sub_10000C3F4();
    v39(v77);
    (v39)(v41, v46);
    v78 = sub_10000C1E8();
    v79(v78);
    (v39)(a32, v46);
    sub_10000BF0C();

    sub_10000C354();
    sub_10000C1A4();

    return v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }

  else
  {
    sub_10000C244(v70);
    v88 = sub_10000C36C();
    if (sub_1000040D4(v88, v89, v57))
    {
      sub_100006BA4(*(v40 + 184), &qword_10003C518, &qword_10002EF18);
    }

    else
    {
      v90 = sub_10000BFC8();
      v91(v90);
      sub_100006BA4(v39, &qword_10003C518, &qword_10002EF18);
      sub_10002D910();
      v92 = sub_10000C124();
      v93(v92);
    }

    v94 = sub_10000C21C();
    sub_10000C0B8(v94);
    v95 = sub_10000C314();
    if (v45)
    {
      v96 = sub_100006BA4(v95, &qword_10003C518, &qword_10002EF18);
    }

    else
    {
      v46 = *(v40 + 120);
      v97 = sub_10000BB18(v95, *(v40 + 128));
      sub_10000C468(v97);
      if (*(v40 + 555))
      {
        sub_10000BE1C();
        v96 = sub_10000BB7C(v98, v99);
      }

      else
      {
        v103 = sub_10000C004();
        v104(v103);
        sub_10000BE1C();
        sub_10000BB7C(v39, v105);
        v106 = sub_10000BFF4();
        v96 = sub_10000C4C4(v106, v107, v108);
      }
    }

    sub_10000C484(v96);
    switch(*(v40 + 554))
    {
      case 3:
        v116 = sub_10000C134();
        v117(v116);
        break;
      default:
        v109 = sub_10000C058();
        v110(v109);
        sub_10000C198();
        sub_100001AC4(v111, v112, v113, v46);
        v114 = sub_10000C2DC();
        v115(v114);
        break;
    }

    if (!sub_10000C29C())
    {
      v118 = sub_10000C108();
      v119(v118);
      sub_10002DB30();
      v120 = sub_10000C340();
      v121(v120);
      v39 = *(v40 + 64);
    }

    v122 = sub_10002D900();
    if (!sub_10000C078(v122))
    {
      v123 = sub_10000C038();
      v124(v123);
      sub_10002DB60();
      v39 = v125;
      v126 = sub_10000C124();
      v127(v126);
    }

    *(v40 + 496) = v39;
    v128 = swift_task_alloc();
    *(v40 + 504) = v128;
    *v128 = v40;
    sub_10000BEC4(v128);
    sub_10000C1A4();

    return static AppUsageAction.computeAppUsage(queryService:user:deviceId:activityType:startTime:endTime:localDataOnly:)(v129);
  }
}

uint64_t sub_10000A184()
{
  v2 = *v1;
  sub_10000C3D0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 480) = v0;

  sub_100006BA4(*(v2 + 208), &qword_10003C118, &unk_10002EF20);

  sub_10000C424();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10000A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  (*(v40 + 456))(*(v40 + 360), *(v40 + 336), *(v40 + 320));
  sub_10000C414();
  sub_10000BFB0();
  v45 = sub_10000BC44(v43, v44, &protocol conformance descriptor for Date);
  v46 = sub_10000C2F0(v45);
  if (v46)
  {
    sub_10000C16C();
    sub_10000BF98();
    v49 = sub_10000BC44(v47, v48, &protocol conformance descriptor for DataActionError);
    v50 = sub_10000C3A4(v49);
    sub_10000C434(v50, v51);
    sub_10000C404();
    (*(v52 + 104))();
    swift_willThrow();
    v53 = sub_10000C3F4();
    v39(v53);
    (v39)(v42, v38);
    v54 = sub_10000C1E8();
    v55(v54);
    (v39)(a32, v38);
    sub_10000BF0C();

    sub_10000C354();
    sub_10000C1A4();

    return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }

  else
  {
    sub_10000C244(v46);
    v65 = sub_10000C36C();
    if (sub_1000040D4(v65, v66, v41))
    {
      sub_100006BA4(*(v40 + 184), &qword_10003C518, &qword_10002EF18);
    }

    else
    {
      v67 = sub_10000BFC8();
      v68(v67);
      sub_100006BA4(v39, &qword_10003C518, &qword_10002EF18);
      sub_10002D910();
      v69 = sub_10000C124();
      v70(v69);
    }

    v71 = sub_10000C21C();
    sub_10000C0B8(v71);
    v72 = sub_10000C314();
    if (v73)
    {
      v74 = sub_100006BA4(v72, &qword_10003C518, &qword_10002EF18);
    }

    else
    {
      v38 = *(v40 + 120);
      v75 = sub_10000BB18(v72, *(v40 + 128));
      sub_10000C468(v75);
      if (*(v40 + 555))
      {
        sub_10000BE1C();
        v74 = sub_10000BB7C(v76, v77);
      }

      else
      {
        v78 = sub_10000C004();
        v79(v78);
        sub_10000BE1C();
        sub_10000BB7C(v39, v80);
        v81 = sub_10000BFF4();
        v74 = sub_10000C4C4(v81, v82, v83);
      }
    }

    sub_10000C484(v74);
    switch(*(v40 + 554))
    {
      case 3:
        v91 = sub_10000C134();
        v92(v91);
        break;
      default:
        v84 = sub_10000C058();
        v85(v84);
        sub_10000C198();
        sub_100001AC4(v86, v87, v88, v38);
        v89 = sub_10000C2DC();
        v90(v89);
        break;
    }

    if (!sub_10000C29C())
    {
      v93 = sub_10000C108();
      v94(v93);
      sub_10002DB30();
      v95 = sub_10000C340();
      v96(v95);
      v39 = *(v40 + 64);
    }

    v97 = sub_10002D900();
    if (!sub_10000C078(v97))
    {
      v98 = sub_10000C038();
      v99(v98);
      sub_10002DB60();
      v39 = v100;
      v101 = sub_10000C124();
      v102(v101);
    }

    *(v40 + 496) = v39;
    v103 = swift_task_alloc();
    *(v40 + 504) = v103;
    *v103 = v40;
    sub_10000BEC4(v103);
    sub_10000C1A4();

    return static AppUsageAction.computeAppUsage(queryService:user:deviceId:activityType:startTime:endTime:localDataOnly:)(v104);
  }
}

uint64_t sub_10000A79C()
{
  v2 = *v1;
  sub_10000C3D0();
  *v4 = v3;
  v5 = *v1;
  sub_10000C3D0();
  *v6 = v5;
  *(v8 + 512) = v7;
  *(v8 + 520) = v0;

  sub_100006BA4(*(v2 + 56), &qword_10003C510, &qword_10002EF10);

  sub_10000C424();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10000A8F8()
{
  v1 = *(v0 + 48);
  sub_100004588();
  sub_100001AC4(v2, v3, v4, v5);
  sub_10000C690(v1);
  v6 = swift_task_alloc();
  *(v0 + 528) = v6;
  *v6 = v0;
  v6[1] = sub_10000A9B0;

  return sub_10000C694();
}

uint64_t sub_10000A9B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_10000C3D0();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 536) = v1;

  v7 = *(v4 + 40);
  if (v1)
  {
    sub_10000BB7C(v7, type metadata accessor for DataActionUtils.AppDisplayInfoProvider);

    v8 = sub_10000B3B4;
  }

  else
  {
    *(v5 + 544) = a1;
    sub_10000BB7C(v7, type metadata accessor for DataActionUtils.AppDisplayInfoProvider);

    v8 = sub_10000AB40;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000AB40()
{
  v16 = v0[49];
  v15 = v0[48];
  v1 = v0[41];
  v2 = v0[40];
  v14 = v0[39];
  v3 = v0[37];
  v12 = v0[45];
  v13 = v0[36];
  v10 = v0[24];
  v0[2] = v0[68];
  v11 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  sub_100001A7C(&qword_10003C588, &qword_10002EF80);
  sub_10000BA64();
  sub_10002D250();
  (*(v5 + 8))(v4, v6);
  sub_100006BA4(v10, &qword_10003C568, &qword_10002EF68);
  v7 = *(v1 + 8);
  v7(v12, v2);
  v7(v15, v2);
  (*(v3 + 8))(v14, v13);
  v7(v16, v2);

  sub_100006BA4(v11, &qword_10003C560, &qword_10002EF60);

  sub_10000C354();

  return v8();
}

uint64_t sub_10000AE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  (*(v38[37] + 8))(v38[39], v38[36]);
  v39 = sub_10000C3C4();
  v40(v39);
  sub_10000BE34(v38[56]);

  sub_10000C354();
  sub_10000C1A4();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10000B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  v39 = v38[39];
  v40 = v38[36];
  v41 = v38[37];
  v42 = *(v38[41] + 8);
  (v42)(v38[48], v38[40]);
  (*(v41 + 8))(v39, v40);
  v43 = sub_10000C3C4();
  v42(v43);
  sub_10000BE34(v38[60]);

  sub_10000C354();
  sub_10000C1A4();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10000B1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  v47 = sub_10000C26C();
  v48(v47);
  sub_100006BA4(v44, &qword_10003C568, &qword_10002EF68);
  v49 = *(v46 + 8);
  v49(v39, v41);
  v50 = sub_10000C4F4();
  (v49)(v50);
  (*(v38 + 8))(v42, v43);
  v49(a34, v41);
  sub_100006BA4(v45, &qword_10003C560, &qword_10002EF60);
  sub_10000BE34(*(v40 + 520));

  sub_10000C354();
  sub_10000C1A4();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10000B3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  v47 = sub_10000C26C();
  v48(v47);
  sub_100006BA4(v44, &qword_10003C568, &qword_10002EF68);
  v49 = *(v46 + 8);
  v49(v39, v41);
  v50 = sub_10000C4F4();
  (v49)(v50);
  (*(v38 + 8))(v42, v43);
  v49(a34, v41);
  sub_100006BA4(v45, &qword_10003C560, &qword_10002EF60);
  sub_10000BE34(*(v40 + 536));

  sub_10000C354();
  sub_10000C1A4();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10000B5AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10002D740();
  v3 = sub_100004448(v2, qword_10003CC00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000B670(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_10000B71C;

  return sub_100008AE4(a1);
}

uint64_t sub_10000B71C()
{
  v1 = *v0;
  sub_10000C3D0();
  *v2 = v1;

  sub_10000C354();

  return v3();
}

double sub_10000B808@<D0>(uint64_t a1@<X8>)
{
  sub_1000082F4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_10000B84C(uint64_t a1)
{
  v2 = sub_10000B9BC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_10000B888(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000B89C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000B8DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10000B9BC()
{
  result = qword_10003C500;
  if (!qword_10003C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C500);
  }

  return result;
}

unint64_t sub_10000BA10()
{
  result = qword_10003C528;
  if (!qword_10003C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C528);
  }

  return result;
}

unint64_t sub_10000BA64()
{
  result = qword_10003C590;
  if (!qword_10003C590)
  {
    sub_100002A98(&qword_10003C588, &qword_10002EF80);
    sub_10000BC44(&qword_10003C350, type metadata accessor for AppUsageResultEntity, &unk_10002EC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C590);
  }

  return result;
}

uint64_t sub_10000BB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityDeviceAppEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BB7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100006D2C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10000BBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C560, &qword_10002EF60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BC44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000BC8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BCFC()
{
  sub_10000C444();
  result = sub_1000072B0();
  *v0 = result;
  return result;
}

unint64_t sub_10000BD24()
{
  result = qword_10003C5D0;
  if (!qword_10003C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C5D0);
  }

  return result;
}

uint64_t sub_10000BD78()
{
  sub_10000C444();
  result = sub_100007B78();
  *v0 = result;
  return result;
}

uint64_t sub_10000BDA0()
{
  sub_10000C444();
  result = sub_100007B9C();
  *v0 = result;
  return result;
}

uint64_t sub_10000BDC8()
{
  sub_10000C444();
  result = sub_100007B30();
  *v0 = result;
  return result;
}

uint64_t sub_10000BDF0()
{
  sub_10000C444();
  result = sub_100007B54();
  *v0 = result;
  return result;
}

uint64_t sub_10000BE34@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v5 = v1[10];
  v4 = v1[11];
  *(v2 - 136) = v1[14];
  *(v2 - 128) = v4;
  v7 = v1[6];
  v6 = v1[7];
  *(v2 - 120) = v5;
  *(v2 - 112) = v6;
  v8 = v1[5];
  *(v2 - 104) = v7;
  *(v2 - 96) = v8;
}

uint64_t sub_10000BF0C()
{
  v3 = v0[10];
  *(v1 - 136) = v0[11];
  *(v1 - 128) = v3;
  v4 = v0[6];
  *(v1 - 120) = v0[7];
  *(v1 - 112) = v4;
  *(v1 - 104) = v0[5];
}

uint64_t sub_10000C078(uint64_t a1)
{
  *(v3 + 488) = a1;
  sub_100001AC4(v4, 1, 1, a1);
  return sub_1000040D4(v1, 1, v2);
}

uint64_t sub_10000C0B8(uint64_t a1)
{
  sub_100001AC4(v2, v1, 1, a1);
  sub_100001AC4(v3, 1, 1, v4);

  return sub_10002D360();
}

uint64_t sub_10000C134()
{
  v1 = v0[14];
  sub_100001AC4(v0[11], 1, 1, v0[12]);
  return v1;
}

uint64_t sub_10000C16C()
{
  *(v1 - 104) = *(v0 + 392);

  return sub_10002D8D0();
}

uint64_t sub_10000C1F4()
{

  return sub_10002D730();
}

uint64_t sub_10000C21C()
{

  return sub_10002D240();
}

uint64_t sub_10000C244(uint64_t a1)
{

  return sub_10002D360();
}

uint64_t sub_10000C29C()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 64);

  return sub_1000040D4(v2, 1, v3);
}

uint64_t sub_10000C2F0(uint64_t a1)
{

  return dispatch thunk of static Comparable.< infix(_:_:)(v1, v2, v3, a1);
}

uint64_t sub_10000C3A4(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_10000C3DC()
{

  return swift_task_alloc();
}

uint64_t sub_10000C450()
{

  return swift_task_alloc();
}

uint64_t sub_10000C468(uint64_t a1)
{

  return sub_10002D270();
}

uint64_t sub_10000C484(uint64_t a1)
{

  return sub_10002D360();
}

uint64_t sub_10000C4A0(uint64_t a1)
{

  return sub_10002D360();
}

uint64_t sub_10000C4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100001AC4(a1, a2, a3, v5);

  return sub_10000BBD4(v3, v4);
}

uint64_t sub_10000C528(uint64_t a1, uint64_t a2)
{

  return IntentParameter<>.init(title:description:kind:requestValueDialog:inputConnectionBehavior:)(a1, a2, v2, v4, v3);
}

uint64_t sub_10000C548(uint64_t a1)
{

  return sub_10002DE10();
}

uint64_t sub_10000C618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000C694()
{
  sub_10001DFE4();
  v1[21] = v2;
  v1[22] = v0;
  v3 = type metadata accessor for AppUsageResultEntity(0);
  sub_10000C028(v3);
  v1[23] = v4;
  v1[24] = sub_10000C450();
  v1[25] = swift_task_alloc();
  v5 = sub_100001A7C(&qword_10003C2F8, &qword_10002EA60);
  sub_100002CD8(v5);
  v1[26] = sub_10000C450();
  v1[27] = swift_task_alloc();
  v6 = sub_10002DAA0();
  v1[28] = v6;
  sub_10000C028(v6);
  v1[29] = v7;
  v1[30] = sub_10000C3DC();
  v8 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  v1[31] = v8;
  sub_100002CD8(v8);
  v1[32] = sub_10000C450();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v9 = sub_10002DB00();
  v1[35] = v9;
  sub_10000C028(v9);
  v1[36] = v10;
  v1[37] = sub_10000C450();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v11 = sub_10002D8C0();
  v1[40] = v11;
  sub_10000C028(v11);
  v1[41] = v12;
  v1[42] = sub_10000C450();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v13 = sub_10001DEBC();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10000C8D4()
{
  sub_10002D8E0();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 168);
    sub_10001B480((v0 + 56), v0 + 16);
    v2 = *(v1 + 16);
    *(v0 + 360) = v2;
    if (v2)
    {
      v3 = *(v0 + 288);
      v4 = *(v0 + 168);
      sub_100020348(0, v2, 0);
      v5 = *(v3 + 16);
      v3 += 16;
      v6 = v4 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
      v37 = *(v3 + 56);
      v38 = v5;
      do
      {
        v38(*(v0 + 312), v6, *(v0 + 280));
        v7 = sub_10002DAE0();
        v9 = v8;
        v10 = sub_10001E0A0();
        v11(v10);
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_100020348((v12 > 1), v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        v14 = &_swiftEmptyArrayStorage[2 * v13];
        v14[4] = v7;
        v14[5] = v9;
        v6 += v37;
        --v2;
      }

      while (v2);
    }

    v15 = sub_10000DF9C(_swiftEmptyArrayStorage);
    *(v0 + 368) = v15;
    sub_10002D880();

    v16 = sub_10002D8B0();
    v17 = sub_10002DD00();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = *(v15 + 16);

      _os_log_impl(&_mh_execute_header, v16, v17, "Fetching appInfo for %ld bundle identifiers", v18, 0xCu);
      sub_10001E144(v18);
    }

    else
    {
    }

    v31 = *(v0 + 352);
    v32 = *(v0 + 320);
    v33 = *(v0 + 328);
    v34 = *(v33 + 8);
    *(v0 + 376) = v34;
    *(v0 + 384) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v31, v32);
    sub_10001B498((v0 + 16), *(v0 + 40));
    v35 = swift_task_alloc();
    *(v0 + 392) = v35;
    *v35 = v0;
    v35[1] = sub_10000CDA0;
    v36 = sub_10001E2E0();

    return dispatch thunk of DeviceActivitySource.fetchAppInfo(for:)(v36);
  }

  else
  {
    sub_100006BA4(v0 + 56, &qword_10003C708, &qword_10002F2E8);
    sub_10002D880();
    v19 = sub_10002D8B0();
    sub_10002DD20();
    sub_10001E1F0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      sub_10001E338(&_mh_execute_header, v22, v23, "Screentime is not enabled.");
      sub_10001E144(v21);
    }

    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v26 = *(v0 + 320);

    (*(v25 + 8))(v24, v26);
    v27 = sub_10002D8D0();
    sub_10000C618(&qword_10003C598, &type metadata accessor for DataActionError, &protocol conformance descriptor for DataActionError);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, enum case for DataActionError.deviceActivityUnauthorized(_:), v27);
    swift_willThrow();

    sub_10000C354();

    return v29();
  }
}

uint64_t sub_10000CDA0()
{
  sub_10001DFE4();
  sub_10001E220();
  sub_10001E1A8();
  *v2 = v1;
  v3 = *v0;
  sub_10001DF00();
  *v4 = v3;
  *(v6 + 400) = v5;

  v7 = sub_10001DEBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10000D3BC()
{
  sub_10001DFE4();
  sub_10001E220();
  sub_10001E1A8();
  *v2 = v1;
  v1[15] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v5 = *v0;
  sub_10001DF00();
  *v6 = v5;

  v7 = sub_10001DEBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10000D9AC()
{
  sub_10001DFE4();
  sub_10001E220();
  sub_10001E1A8();
  *v2 = v1;
  v1[18] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v5 = *v0;
  sub_10001DF00();
  *v6 = v5;

  v7 = sub_10001DEBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10000DF9C(uint64_t a1)
{
  result = sub_10002DCF0();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_10001B8CC(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E05C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_10001B54C(a3, a4), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a1 + 56);
    v10 = sub_10002DAA0();
    (*(*(v10 - 8) + 16))(a2, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_10002DAA0();
    v11 = a2;
    v12 = 1;
  }

  return sub_100001AC4(v11, v12, 1, v13);
}

uint64_t sub_10000E120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001E094();
  v6 = sub_100001A7C(v4, v5);
  v7 = sub_100002CD8(v6);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = sub_10002D900();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001DA64();
  sub_10001E378(v9);
  if (v14)
  {
    sub_10002D8F0();
    sub_100006BA4(a1, &qword_10003C510, &qword_10002EF10);
    sub_10001E378(v9);
    if (!v14)
    {
      sub_100006BA4(v9, &qword_10003C510, &qword_10002EF10);
    }
  }

  else
  {
    sub_100006BA4(a1, &qword_10003C510, &qword_10002EF10);
    (*(v11 + 32))(v13, v9, v10);
  }

  return (*(v11 + 32))(a2, v13, v10);
}

uint64_t sub_10000E2E0()
{
  sub_10001DFE4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_10002D740();
  v1[4] = v3;
  sub_100002CD8(v3);
  v1[5] = sub_10000C3DC();
  v4 = sub_100001A7C(&qword_10003C710, &unk_10002F780);
  v1[6] = v4;
  sub_10000C028(v4);
  v1[7] = v5;
  v1[8] = sub_10000C3DC();
  v6 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  sub_100002CD8(v6);
  v1[9] = sub_10000C3DC();
  v7 = sub_10002D8C0();
  v1[10] = v7;
  sub_10000C028(v7);
  v1[11] = v8;
  v1[12] = sub_10000C3DC();
  v9 = sub_10002D720();
  v1[13] = v9;
  sub_10000C028(v9);
  v1[14] = v10;
  v1[15] = sub_10000C3DC();
  v11 = sub_10002D210();
  v1[16] = v11;
  sub_10000C028(v11);
  v1[17] = v12;
  v1[18] = sub_10000C450();
  v1[19] = swift_task_alloc();
  v13 = sub_10002D240();
  v1[20] = v13;
  sub_10000C028(v13);
  v1[21] = v14;
  v1[22] = sub_10000C450();
  v1[23] = swift_task_alloc();
  v15 = sub_100001A7C(&qword_10003C718, &qword_10002F300);
  sub_100002CD8(v15);
  v1[24] = sub_10000C3DC();
  v16 = type metadata accessor for DeviceActivityDeviceAppEntity(0);
  v1[25] = v16;
  sub_10000C028(v16);
  v1[26] = v17;
  v1[27] = sub_10000C450();
  v1[28] = swift_task_alloc();
  v18 = sub_10002DB90();
  v1[29] = v18;
  sub_10000C028(v18);
  v1[30] = v19;
  v1[31] = sub_10000C450();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v20 = sub_10002D930();
  v1[34] = v20;
  sub_10000C028(v20);
  v1[35] = v21;
  v1[36] = sub_10000C450();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v22 = sub_100001A7C(&qword_10003C720, &qword_10002F308);
  sub_100002CD8(v22);
  v1[39] = sub_10000C450();
  v1[40] = swift_task_alloc();
  v23 = sub_100001A7C(&qword_10003C510, &qword_10002EF10);
  sub_100002CD8(v23);
  v1[41] = sub_10000C3DC();
  v24 = sub_10001DEBC();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_10000E6D8()
{
  v197 = v0;
  v1 = v0[41];
  v2 = sub_10002D900();
  sub_100006D2C();
  v3 = sub_10001DF8C();
  v4(v3);
  sub_10000C198();
  sub_100001AC4(v5, v6, v7, v2);
  v8 = sub_10002DAC0();
  sub_100006BA4(v1, &qword_10003C510, &qword_10002EF10);
  v9 = v0[35];
  v10 = v0[30];
  v189 = v0;
  v11 = v0[21];
  v166 = v0[18];
  v12 = v0[17];
  v13 = v0[14];
  v14 = v0[11];
  v15 = sub_10000F7C8(v8);
  sub_100001A7C(&qword_10003C728, &qword_10002F310);
  v168 = sub_10002DBB0();
  v16 = 0;
  v17 = v15 + 8;
  v170 = v15;
  v18 = -1;
  v19 = -1 << *(v15 + 32);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v20 = v18 & v15[8];
  v21 = (63 - v19) >> 6;
  v188 = (v9 + 16);
  v185 = (v9 + 32);
  v190 = (v10 + 16);
  v194 = (v10 + 8);
  v22 = v189;
  v184 = (v11 + 8);
  v182 = (v12 + 16);
  v181 = enum case for IntentPerson.Name.displayName(_:);
  v176 = enum case for IntentPerson.Name.components(_:);
  v180 = (v12 + 8);
  v169 = v9;
  v177 = (v9 + 8);
  v175 = (v14 + 8);
  v167 = (v12 + 96);
  v164 = (v13 + 8);
  v165 = (v13 + 32);
  v178 = v21;
  v179 = v15 + 8;
  while (1)
  {
    if (v20)
    {
      v187 = v16;
      v23 = v16;
      goto LABEL_10;
    }

    do
    {
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v23 >= v21)
      {
        v187 = v16;
        sub_100001A7C(&qword_10003C730, &qword_10002F318);
        sub_10001E2D4();
        sub_100004588();
        sub_100001AC4(v99, v100, v101, v102);
        v26 = 0;
        goto LABEL_11;
      }

      v20 = v17[v23];
      ++v16;
    }

    while (!v20);
    v187 = v23;
LABEL_10:
    v24 = v22[39];
    v25 = __clz(__rbit64(v20));
    v26 = (v20 - 1) & v20;
    v27 = v25 | (v23 << 6);
    (*(v169 + 16))(v22[38], v170[6] + *(v169 + 72) * v27, v22[34]);
    v28 = *(v170[7] + 8 * v27);
    v29 = sub_100001A7C(&qword_10003C730, &qword_10002F318);
    v30 = *(v29 + 48);
    v31 = sub_10000C3C4();
    v32(v31);
    *(v24 + v30) = v28;
    sub_10000C198();
    sub_100001AC4(v33, v34, v35, v29);

LABEL_11:
    v36 = v22[40];
    sub_10001B4DC(v22[39], v36);
    v37 = sub_100001A7C(&qword_10003C730, &qword_10002F318);
    sub_10001E378(v36);
    if (v38)
    {
      break;
    }

    v186 = v26;
    v39 = *(v22[40] + *(v37 + 48));
    (*v185)(v22[37]);
    v40 = *(v39 + 16);
    if (v40)
    {
      v195 = _swiftEmptyArrayStorage;
      sub_100020388(0, v40, 0);
      v41 = v195;
      sub_10001E198();
      v43 = v39 + v42;
      v191 = *(v44 + 72);
      v45 = *(v44 + 16);
      do
      {
        v47 = v22[31];
        v46 = v22[32];
        v48 = v22;
        v51 = v22 + 28;
        v50 = v22[28];
        v49 = v51[1];
        v45(v46, v43, v49);
        v45(v47, v46, v49);
        DeviceActivityDeviceAppEntity.init(device:)(v47, v50);
        v52 = sub_10001E0A0();
        v53(v52);
        v195 = v41;
        v55 = *(v41 + 2);
        v54 = *(v41 + 3);
        if (v55 >= v54 >> 1)
        {
          v56 = sub_10001E208(v54);
          sub_100020388(v56, v57, v58);
          v41 = v195;
        }

        *(v41 + 2) = v55 + 1;
        sub_10001E198();
        sub_10001DFCC();
        sub_10001DB14();
        v43 += v191;
        --v40;
        v22 = v48;
      }

      while (v40);
    }

    else
    {

      v41 = _swiftEmptyArrayStorage;
    }

    sub_10002DB40();
    v59 = v22;
    v60 = *v188;
    v61 = sub_10000C3C4();
    v60(v61);
    sub_10001E2C8();
    sub_10002DB50();
    v62 = *(v41 + 2);

    v192 = v60;
    if (v62 > 1)
    {
      v63 = v59[32];
      v64 = v59[27];
      (*v190)(v63, v59[33], v59[29]);
      DeviceActivityDeviceAppEntity.init(device:)(v63, v64);
      sub_10001DFCC();
      sub_10001E2E0();
      sub_10001DB14();
      v65 = *(v41 + 2);
      if (!swift_isUniquelyReferenced_nonNull_native() || v65 >= *(v41 + 3) >> 1)
      {
        sub_10002309C();
        v41 = v66;
      }

      v59 = v189;
      sub_10001D6D4(0, 0, 1, v189[24]);
    }

    v67 = v59[19];
    v68 = v59[18];
    v69 = v59[16];
    sub_10002D910();
    sub_10002D230();
    v70 = *v184;
    v71 = sub_10001E2E0();
    v70(v71);
    (*v182)(v68, v67, v69);
    v72 = sub_10001E2C8();
    v74 = v73(v72);
    if (v74 == v181)
    {
      v103 = v189[18];
      (*v180)(v189[19], v189[16]);
      v104 = sub_10000C3C4();
      v105(v104);
      v106 = *v103;
      v107 = *(v166 + 8);
      goto LABEL_33;
    }

    v183 = v70;
    if (v74 == v176)
    {
      v108 = v189[18];
      v109 = v189[15];
      v110 = v189[13];
      (*v167)(v108, v189[16]);
      (*v165)(v109, v108, v110);
      v106 = sub_10002D710();
      v107 = v111;
      (*v164)(v109, v110);
      v112 = sub_10001E094();
      v113(v112);
      v70 = v183;
LABEL_33:
      sub_10002D910();
      v114 = sub_10002D220();
      v115 = sub_10001E094();
      v70(v115);
      if (v114)
      {

        v116 = 0x636976654420794DLL;
        v117 = 0xEA00000000007365;
      }

      else
      {
        v195 = 32;
        v196 = 0xE100000000000000;
        v198._countAndFlagsBits = v106;
        v198._object = v107;
        sub_10002DC90(v198);

        v199._countAndFlagsBits = 0x6369766544207327;
        v199._object = 0xEA00000000007365;
        sub_10002DC90(v199);
        v116 = v195;
        v117 = v196;
      }

      v20 = v186;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v195 = v168;
      result = sub_10001B54C(v116, v117);
      v121 = *(v168 + 16);
      v122 = (v120 & 1) == 0;
      v123 = v121 + v122;
      if (__OFADD__(v121, v122))
      {
        goto LABEL_67;
      }

      v124 = result;
      v125 = v120;
      sub_100001A7C(&qword_10003C748, &qword_10002F320);
      result = sub_10002DDC0(isUniquelyReferenced_nonNull_native, v123);
      v126 = v195;
      if (result)
      {
        result = sub_10001B54C(v116, v117);
        v22 = v189;
        if ((v125 & 1) != (v127 & 1))
        {
          sub_10001E31C();

          return sub_10002DE30();
        }

        v124 = result;
      }

      else
      {
        v22 = v189;
      }

      v168 = v126;
      if (v125)
      {
        *(v126[7] + 8 * v124) = v41;
      }

      else
      {
        v126[(v124 >> 6) + 8] |= 1 << v124;
        v128 = (v126[6] + 16 * v124);
        *v128 = v116;
        v128[1] = v117;
        *(v126[7] + 8 * v124) = v41;
        v129 = v126[2];
        v130 = __OFADD__(v129, 1);
        v131 = v129 + 1;
        if (v130)
        {
          goto LABEL_68;
        }

        v126[2] = v131;
      }

      (*v194)(v22[33], v22[29]);
      v132 = sub_10000C3C4();
      v133(v132);
      v21 = v178;
      v17 = v179;
      v16 = v187;
    }

    else
    {
      v75 = *v180;
      (*v180)(v189[19], v189[16]);
      v76 = sub_10001E094();
      v75(v76);

      sub_10002D880();
      v77 = sub_10001DF8C();
      v192(v77);
      v78 = sub_10002D8B0();
      v79 = sub_10002DD20();
      v80 = os_log_type_enabled(v78, v79);
      v82 = v189[36];
      v81 = v189[37];
      v83 = v189[33];
      v84 = v189[34];
      v85 = v189[29];
      if (v80)
      {
        v193 = v189[33];
        v86 = v189[22];
        v87 = v189[20];
        v173 = v189[10];
        v174 = v189[12];
        v172 = v189[29];
        v88 = swift_slowAlloc();
        v171 = v81;
        v89 = swift_slowAlloc();
        v195 = v89;
        *v88 = 136315138;
        sub_10002D910();
        sub_10000C618(&qword_10003C740, &type metadata accessor for IntentPerson, &protocol conformance descriptor for IntentPerson);
        v90 = v87;
        v91 = sub_10002DBC0();
        v93 = v92;
        (v183)(v86, v90);
        v94 = *v177;
        (*v177)(v82, v84);
        v95 = sub_1000237CC(v91, v93, &v195);

        *(v88 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v78, v79, "No username for %s, skipping section!", v88, 0xCu);
        sub_10001C6CC(v89);
        sub_10001E144(v89);
        sub_10001E144(v88);

        (*v175)(v174, v173);
        (*v194)(v193, v172);
        v94(v171, v84);
      }

      else
      {
        v96 = v189[12];
        v97 = v189[10];

        v98 = *v177;
        (*v177)(v82, v84);
        (*v175)(v96, v97);
        (*v194)(v83, v85);
        v98(v81, v84);
      }

      v21 = v178;
      v17 = v179;
      v20 = v186;
      v16 = v187;
      v22 = v189;
    }
  }

  if (*(v168 + 16) == 1)
  {

    v134 = sub_10000FBEC(v168);

    if (v134)
    {
      sub_100004588();
      sub_100001AC4(v135, v136, v137, v138);
      sub_10000C618(&qword_10003C738, type metadata accessor for DeviceActivityDeviceAppEntity, &protocol conformance descriptor for DeviceActivityDeviceAppEntity);
      sub_10000C618(&qword_10003C620, type metadata accessor for DeviceActivityDeviceAppEntity, &protocol conformance descriptor for DeviceActivityDeviceAppEntity);
      sub_10002D470();
      goto LABEL_59;
    }
  }

  v195 = sub_10001C610(v139);
  sub_10001C5A4(&v195);

  v140 = v195;
  v141 = *(v195 + 16);
  if (!v141)
  {
LABEL_58:

    sub_100004588();
    sub_100001AC4(v155, v156, v157, v158);
    sub_10001DFB4();
    sub_10000C618(v159, v160, &protocol conformance descriptor for DeviceActivityDeviceAppEntity);
    sub_10002D480();
LABEL_59:
    sub_10001DF28();

    sub_10000C354();
    sub_10001E31C();

    __asm { BRAA            X1, X16 }
  }

  v195 = _swiftEmptyArrayStorage;
  sub_100020368(0, v141, 0);
  v142 = v195;
  v143 = (v140 + 40);
  while (1)
  {
    v144 = *(v143 - 1);
    v145 = *v143;
    swift_bridgeObjectRetain_n();
    result = sub_10002D730();
    if (!*(v168 + 16))
    {
      break;
    }

    result = sub_10001B54C(v144, v145);
    if ((v146 & 1) == 0)
    {
      goto LABEL_66;
    }

    sub_10001DFB4();
    sub_10000C618(&qword_10003C620, v147, &protocol conformance descriptor for DeviceActivityDeviceAppEntity);

    sub_10002D440();

    v195 = v142;
    v149 = *(v142 + 2);
    v148 = *(v142 + 3);
    if (v149 >= v148 >> 1)
    {
      v152 = sub_10001E208(v148);
      sub_100020368(v152, v153, v154);
      v142 = v195;
    }

    *(v142 + 2) = v149 + 1;
    sub_10001E198();
    (*(v151 + 32))(&v142[v150 + *(v151 + 72) * v149]);
    v143 += 2;
    if (!--v141)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

void *sub_10000F7C8(uint64_t a1)
{
  v2 = sub_10002D930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10002DB90();
  v5 = __chkstk_darwin(v49);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v35 - v7;
  v8 = 0;
  v9 = &_swiftEmptyDictionarySingleton;
  v51 = &_swiftEmptyDictionarySingleton;
  v10 = *(a1 + 16);
  v45 = v11;
  v46 = v10;
  v44 = v11 + 16;
  v47 = (v11 + 32);
  v38 = v3 + 32;
  v39 = v3;
  v37 = (v3 + 8);
  v36 = xmmword_10002F0C0;
  v40 = v2;
  v41 = a1;
  while (1)
  {
    if (v46 == v8)
    {

      return v9;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v12 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v13 = *(v45 + 72);
    (*(v45 + 16))(v48, a1 + v12 + v13 * v8, v49);
    v14 = v50;
    sub_10002DB80();
    v16 = sub_10001B5C4(v14);
    v17 = v9[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v20 = v15;
    if (v9[3] < v19)
    {
      sub_10001C1CC(v19, 1);
      v9 = v51;
      v21 = sub_10001B5C4(v50);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      v16 = v21;
    }

    if (v20)
    {
      (*v37)(v50, v2);
      v23 = v9[7];
      v24 = *v47;
      (*v47)(v43, v48, v49);
      v25 = *(v23 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 8 * v16) = v25;
      v42 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100023178();
        v25 = v32;
        *(v23 + 8 * v16) = v32;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_100023178();
        v25 = v33;
        *(v23 + 8 * v16) = v33;
      }

      v2 = v40;
      *(v25 + 16) = v27 + 1;
      v42((v25 + v12 + v27 * v13), v43, v49);
      a1 = v41;
    }

    else
    {
      sub_100001A7C(&qword_10003C758, &qword_10002F330);
      v28 = swift_allocObject();
      *(v28 + 16) = v36;
      (*v47)((v28 + v12), v48, v49);
      v9[(v16 >> 6) + 8] |= 1 << v16;
      (*(v39 + 32))(v9[6] + *(v39 + 72) * v16, v50, v2);
      *(v9[7] + 8 * v16) = v28;
      v29 = v9[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_20;
      }

      v9[2] = v31;
    }

    ++v8;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_10002DE30();
  __break(1u);
  return result;
}

uint64_t sub_10000FBEC(uint64_t a1)
{
  result = sub_10001D9C8(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10001DA08(result, v3, 0, a1);
  }
}

uint64_t sub_10000FC50()
{
  sub_10001DFE4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_10002D8C0();
  v1[14] = v3;
  sub_10000C028(v3);
  v1[15] = v4;
  v1[16] = sub_10000C450();
  v1[17] = swift_task_alloc();
  v5 = sub_10002DB90();
  v1[18] = v5;
  sub_10000C028(v5);
  v1[19] = v6;
  v1[20] = sub_10000C450();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v7 = sub_100001A7C(&qword_10003C510, &qword_10002EF10);
  sub_100002CD8(v7);
  v1[23] = sub_10000C3DC();
  v8 = sub_10001DEBC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10000FD90()
{
  v1 = sub_10002D900();
  sub_100006D2C();
  v2 = sub_10000C3C4();
  v3(v2);
  sub_10000C198();
  sub_100001AC4(v4, v5, v6, v1);
  v7 = sub_10002DAC0();
  sub_100006BA4(*(v0 + 184), &qword_10003C510, &qword_10002EF10);
  sub_10002D8E0();
  if (!*(v0 + 80))
  {

    sub_100006BA4(v0 + 56, &qword_10003C708, &qword_10002F2E8);
LABEL_5:
    sub_10002D880();
    v10 = sub_10002D8B0();
    sub_10002DD20();
    sub_10001E1F0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      sub_10001E338(&_mh_execute_header, v13, v14, "Current device not found as the default value for device!");
      sub_10001E144(v12);
    }

    v15 = sub_10001E2E0();
    v16(v15);
    type metadata accessor for DeviceActivityDeviceAppEntity(0);
    sub_100004588();
    sub_100001AC4(v17, v18, v19, v20);
LABEL_8:

    sub_10000C354();

    return v21();
  }

  sub_10001B480((v0 + 56), v0 + 16);
  sub_10001B498((v0 + 16), *(v0 + 40));
  result = sub_10002DB10();
  v22 = v9;
  if (!v9)
  {
LABEL_3:

    sub_10001C6CC((v0 + 16));
    goto LABEL_5;
  }

  v23 = result;
  v24 = 0;
  v25 = *(v0 + 152);
  v40 = *(v7 + 16);
  v26 = (v25 + 8);
  while (1)
  {
    if (v40 == v24)
    {

      goto LABEL_3;
    }

    if (v24 >= *(v7 + 16))
    {
      break;
    }

    v27 = *(v25 + 16);
    (v27)(*(v0 + 168), v7 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v24, *(v0 + 144));
    if (sub_10002DB60() == v23 && v22 == v28)
    {

LABEL_23:

      v31 = *(v0 + 176);
      v32 = *(v0 + 160);
      v33 = *(v0 + 144);
      v34 = *(v0 + 96);
      (*(*(v0 + 152) + 32))(v31, *(v0 + 168), v33);
      v35 = sub_10001DF8C();
      v27(v35);
      DeviceActivityDeviceAppEntity.init(device:)(v32, v34);
      (*v26)(v31, v33);
      type metadata accessor for DeviceActivityDeviceAppEntity(0);
      sub_10000C198();
      sub_100001AC4(v36, v37, v38, v39);
      sub_10001C6CC((v0 + 16));
      goto LABEL_8;
    }

    v30 = sub_10002DE10();

    if (v30)
    {
      goto LABEL_23;
    }

    result = (*v26)(*(v0 + 168), *(v0 + 144));
    ++v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100010270()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010308;

  return sub_10000E2E0();
}

uint64_t sub_100010308()
{
  sub_10001DFE4();
  sub_10001E220();
  v1 = *v0;
  sub_10001DF00();
  *v2 = v1;

  sub_10000C354();

  return v3();
}

uint64_t sub_1000103E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010308;

  return sub_10000FC50();
}

unint64_t sub_100010488()
{
  result = qword_10003C638;
  if (!qword_10003C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C638);
  }

  return result;
}

uint64_t sub_100010510(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002A98(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010564()
{
  sub_10001DFE4();
  *(v0 + 16) = v1;
  v2 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  sub_100002CD8(v2);
  *(v0 + 24) = sub_10000C3DC();
  v3 = sub_10001DEBC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000105E8()
{
  sub_10001DFE4();
  sub_10002D740();
  sub_10001E2D4();
  sub_100004588();
  sub_100001AC4(v0, v1, v2, v3);
  sub_1000069D0();
  sub_10002D460();

  sub_10000C354();

  return v4();
}

uint64_t sub_100010694()
{
  v0 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_10002D740();
  __chkstk_darwin(v6);
  v7 = sub_100001A7C(&qword_10003C6E0, &qword_10002F2B0);
  v24 = *(v7 - 8);
  v8 = v24;
  v9 = __chkstk_darwin(v7);
  v23 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  v13 = sub_10002D4E0();
  sub_100001AC4(v2, 1, 1, v13);
  sub_1000069D0();
  sub_10002D450();
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  sub_100001AC4(v2, 1, 1, v13);
  v14 = v23;
  sub_10002D450();
  sub_100001A7C(&qword_10003C6E8, &qword_10002F2B8);
  v15 = *(v24 + 72);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10002F0D0;
  v18 = v17 + v16;
  v19 = *(v8 + 16);
  v19(v18, v12, v7);
  v19(v18 + v15, v14, v7);
  v20 = sub_10002D430();

  v21 = *(v8 + 8);
  v21(v14, v7);
  v21(v12, v7);
  return v20;
}

uint64_t sub_100010A54()
{
  v0 = sub_100001A7C(&qword_10003C6F0, &qword_10002F2C0);
  v100 = *(v0 - 8);
  v101 = v0 - 8;
  v104 = v100;
  v1 = __chkstk_darwin(v0);
  v110 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v109 = &v98 - v4;
  v5 = __chkstk_darwin(v3);
  v108 = &v98 - v6;
  v7 = __chkstk_darwin(v5);
  v99 = &v98 - v8;
  v9 = __chkstk_darwin(v7);
  v106 = &v98 - v10;
  v11 = __chkstk_darwin(v9);
  v102 = &v98 - v12;
  v13 = __chkstk_darwin(v11);
  v111 = &v98 - v14;
  v15 = __chkstk_darwin(v13);
  v112 = &v98 - v16;
  v17 = __chkstk_darwin(v15);
  v113 = &v98 - v18;
  v19 = __chkstk_darwin(v17);
  v114 = &v98 - v20;
  v21 = __chkstk_darwin(v19);
  v103 = &v98 - v22;
  v23 = __chkstk_darwin(v21);
  v105 = &v98 - v24;
  __chkstk_darwin(v23);
  v107 = &v98 - v25;
  v26 = objc_opt_self();
  v27 = [v26 localizedStringForLabel:CNLabelContactRelationMother];
  v28 = sub_10002DC20();
  v30 = v29;

  v115 = v28;
  v116 = v30;
  v31 = sub_1000069D0();
  sub_10002D1C0();

  v32 = [v26 localizedStringForLabel:CNLabelContactRelationFather];
  v33 = sub_10002DC20();
  v35 = v34;

  v115 = v33;
  v116 = v35;
  sub_10002D1C0();

  v36 = [v26 localizedStringForLabel:CNLabelContactRelationParent];
  v37 = sub_10002DC20();
  v39 = v38;

  v115 = v37;
  v116 = v39;
  sub_10002D1C0();

  v40 = [v26 localizedStringForLabel:CNLabelContactRelationBrother];
  v41 = sub_10002DC20();
  v43 = v42;

  v115 = v41;
  v116 = v43;
  sub_10002D1C0();

  v44 = [v26 localizedStringForLabel:CNLabelContactRelationSister];
  v45 = sub_10002DC20();
  v47 = v46;

  v115 = v45;
  v116 = v47;
  sub_10002D1C0();

  v48 = [v26 localizedStringForLabel:CNLabelContactRelationSon];
  v49 = sub_10002DC20();
  v51 = v50;

  v115 = v49;
  v116 = v51;
  v52 = v31;
  sub_10002D1C0();

  v53 = [v26 localizedStringForLabel:CNLabelContactRelationDaughter];
  v54 = sub_10002DC20();
  v56 = v55;

  v115 = v54;
  v116 = v56;
  sub_10002D1C0();

  v57 = [v26 localizedStringForLabel:CNLabelContactRelationChild];
  v58 = sub_10002DC20();
  v60 = v59;

  v115 = v58;
  v116 = v60;
  v61 = v102;
  sub_10002D1C0();

  v62 = [v26 localizedStringForLabel:CNLabelContactRelationFriend];
  v63 = sub_10002DC20();
  v65 = v64;

  v115 = v63;
  v116 = v65;
  sub_10002D1C0();

  v66 = [v26 localizedStringForLabel:CNLabelContactRelationSpouse];
  v67 = sub_10002DC20();
  v69 = v68;

  v115 = v67;
  v116 = v69;
  v70 = v99;
  sub_10002D1C0();

  v71 = [v26 localizedStringForLabel:CNLabelContactRelationPartner];
  v72 = sub_10002DC20();
  v74 = v73;

  v115 = v72;
  v116 = v74;
  sub_10002D1C0();

  v75 = [v26 localizedStringForLabel:CNLabelContactRelationAssistant];
  v76 = sub_10002DC20();
  v78 = v77;

  v115 = v76;
  v116 = v78;
  v98 = v52;
  sub_10002D1C0();

  v79 = [v26 localizedStringForLabel:CNLabelContactRelationManager];
  v80 = sub_10002DC20();
  v82 = v81;

  v115 = v80;
  v116 = v82;
  sub_10002D1C0();

  sub_100001A7C(&qword_10003C6F8, &qword_10002F2C8);
  v83 = *(v100 + 72);
  v84 = v104;
  v85 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_10002F0E0;
  v87 = v86 + v85;
  v88 = *(v84 + 16);
  v88(v86 + v85, v107, v0);
  v88(v87 + v83, v105, v0);
  v88(v87 + 2 * v83, v103, v0);
  v88(v87 + 3 * v83, v114, v0);
  v88(v87 + 4 * v83, v113, v0);
  v88(v87 + 5 * v83, v112, v0);
  v88(v87 + 6 * v83, v111, v0);
  v88(v87 + 7 * v83, v61, v0);
  v89 = v106;
  v88(v87 + 8 * v83, v106, v0);
  v90 = v70;
  v88(v87 + 9 * v83, v70, v0);
  v91 = v108;
  v88(v87 + 10 * v83, v108, v0);
  v92 = v109;
  v88(v87 + 11 * v83, v109, v0);
  v93 = v87 + 12 * v83;
  v94 = v110;
  v88(v93, v110, v0);
  v95 = sub_10002D1B0();

  v96 = *(v104 + 8);
  v96(v94, v0);
  v96(v92, v0);
  v96(v91, v0);
  v96(v90, v0);
  v96(v89, v0);
  v96(v102, v0);
  v96(v111, v0);
  v96(v112, v0);
  v96(v113, v0);
  v96(v114, v0);
  v96(v103, v0);
  v96(v105, v0);
  v96(v107, v0);
  return v95;
}

uint64_t sub_100011454()
{
  v0 = sub_100001A7C(&qword_10003C6F0, &qword_10002F2C0);
  v1313 = *(v0 - 8);
  v1314 = v0 - 8;
  v1317 = v1313;
  v1 = __chkstk_darwin(v0);
  v1324 = &v1313 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v1323 = &v1313 - v4;
  v5 = __chkstk_darwin(v3);
  v1322 = &v1313 - v6;
  v7 = __chkstk_darwin(v5);
  v1321 = &v1313 - v8;
  v9 = __chkstk_darwin(v7);
  v1316 = &v1313 - v10;
  v11 = __chkstk_darwin(v9);
  v1531 = &v1313 - v12;
  v13 = __chkstk_darwin(v11);
  v1530 = &v1313 - v14;
  v15 = __chkstk_darwin(v13);
  v1529 = &v1313 - v16;
  v17 = __chkstk_darwin(v15);
  v1528 = &v1313 - v18;
  v19 = __chkstk_darwin(v17);
  v1527 = &v1313 - v20;
  v21 = __chkstk_darwin(v19);
  v1526 = &v1313 - v22;
  v23 = __chkstk_darwin(v21);
  v1525 = &v1313 - v24;
  v25 = __chkstk_darwin(v23);
  v1524 = &v1313 - v26;
  v27 = __chkstk_darwin(v25);
  v1523 = &v1313 - v28;
  v29 = __chkstk_darwin(v27);
  v1522 = &v1313 - v30;
  v31 = __chkstk_darwin(v29);
  v1521 = &v1313 - v32;
  v33 = __chkstk_darwin(v31);
  v1520 = &v1313 - v34;
  v35 = __chkstk_darwin(v33);
  v1519 = &v1313 - v36;
  v37 = __chkstk_darwin(v35);
  v1518 = &v1313 - v38;
  v39 = __chkstk_darwin(v37);
  v1517 = &v1313 - v40;
  v41 = __chkstk_darwin(v39);
  v1516 = &v1313 - v42;
  v43 = __chkstk_darwin(v41);
  v1515 = &v1313 - v44;
  v45 = __chkstk_darwin(v43);
  v1514 = &v1313 - v46;
  v47 = __chkstk_darwin(v45);
  v1513 = &v1313 - v48;
  v49 = __chkstk_darwin(v47);
  v1512 = &v1313 - v50;
  v51 = __chkstk_darwin(v49);
  v1511 = &v1313 - v52;
  v53 = __chkstk_darwin(v51);
  v1510 = &v1313 - v54;
  v55 = __chkstk_darwin(v53);
  v1509 = &v1313 - v56;
  v57 = __chkstk_darwin(v55);
  v1508 = &v1313 - v58;
  v59 = __chkstk_darwin(v57);
  v1507 = &v1313 - v60;
  v61 = __chkstk_darwin(v59);
  v1506 = &v1313 - v62;
  v63 = __chkstk_darwin(v61);
  v1505 = &v1313 - v64;
  v65 = __chkstk_darwin(v63);
  v1504 = &v1313 - v66;
  v67 = __chkstk_darwin(v65);
  v1503 = &v1313 - v68;
  v69 = __chkstk_darwin(v67);
  v1502 = &v1313 - v70;
  v71 = __chkstk_darwin(v69);
  v1501 = &v1313 - v72;
  v73 = __chkstk_darwin(v71);
  v1500 = &v1313 - v74;
  v75 = __chkstk_darwin(v73);
  v1499 = &v1313 - v76;
  v77 = __chkstk_darwin(v75);
  v1498 = &v1313 - v78;
  v79 = __chkstk_darwin(v77);
  v1497 = &v1313 - v80;
  v81 = __chkstk_darwin(v79);
  v1496 = &v1313 - v82;
  v83 = __chkstk_darwin(v81);
  v1495 = &v1313 - v84;
  v85 = __chkstk_darwin(v83);
  v1494 = &v1313 - v86;
  v87 = __chkstk_darwin(v85);
  v1493 = &v1313 - v88;
  v89 = __chkstk_darwin(v87);
  v1492 = &v1313 - v90;
  v91 = __chkstk_darwin(v89);
  v1491 = &v1313 - v92;
  v93 = __chkstk_darwin(v91);
  v1490 = &v1313 - v94;
  v95 = __chkstk_darwin(v93);
  v1489 = &v1313 - v96;
  v97 = __chkstk_darwin(v95);
  v1488 = &v1313 - v98;
  v99 = __chkstk_darwin(v97);
  v1487 = &v1313 - v100;
  v101 = __chkstk_darwin(v99);
  v1486 = &v1313 - v102;
  v103 = __chkstk_darwin(v101);
  v1485 = &v1313 - v104;
  v105 = __chkstk_darwin(v103);
  v1484 = &v1313 - v106;
  v107 = __chkstk_darwin(v105);
  v1483 = &v1313 - v108;
  v109 = __chkstk_darwin(v107);
  v1482 = &v1313 - v110;
  v111 = __chkstk_darwin(v109);
  v1481 = &v1313 - v112;
  v113 = __chkstk_darwin(v111);
  v1480 = &v1313 - v114;
  v115 = __chkstk_darwin(v113);
  v1479 = &v1313 - v116;
  v117 = __chkstk_darwin(v115);
  v1478 = &v1313 - v118;
  v119 = __chkstk_darwin(v117);
  v1477 = &v1313 - v120;
  v121 = __chkstk_darwin(v119);
  v1476 = &v1313 - v122;
  v123 = __chkstk_darwin(v121);
  v1475 = &v1313 - v124;
  v125 = __chkstk_darwin(v123);
  v1474 = &v1313 - v126;
  v127 = __chkstk_darwin(v125);
  v1473 = &v1313 - v128;
  v129 = __chkstk_darwin(v127);
  v1472 = &v1313 - v130;
  v131 = __chkstk_darwin(v129);
  v1471 = &v1313 - v132;
  v133 = __chkstk_darwin(v131);
  v1470 = &v1313 - v134;
  v135 = __chkstk_darwin(v133);
  v1469 = &v1313 - v136;
  v137 = __chkstk_darwin(v135);
  v1468 = &v1313 - v138;
  v139 = __chkstk_darwin(v137);
  v1467 = &v1313 - v140;
  v141 = __chkstk_darwin(v139);
  v1466 = &v1313 - v142;
  v143 = __chkstk_darwin(v141);
  v1465 = &v1313 - v144;
  v145 = __chkstk_darwin(v143);
  v1464 = &v1313 - v146;
  v147 = __chkstk_darwin(v145);
  v1463 = &v1313 - v148;
  v149 = __chkstk_darwin(v147);
  v1462 = &v1313 - v150;
  v151 = __chkstk_darwin(v149);
  v1461 = &v1313 - v152;
  v153 = __chkstk_darwin(v151);
  v1460 = &v1313 - v154;
  v155 = __chkstk_darwin(v153);
  v1459 = &v1313 - v156;
  v157 = __chkstk_darwin(v155);
  v1458 = &v1313 - v158;
  v159 = __chkstk_darwin(v157);
  v1457 = &v1313 - v160;
  v161 = __chkstk_darwin(v159);
  v1456 = &v1313 - v162;
  v163 = __chkstk_darwin(v161);
  v1455 = &v1313 - v164;
  v165 = __chkstk_darwin(v163);
  v1454 = &v1313 - v166;
  v167 = __chkstk_darwin(v165);
  v1453 = &v1313 - v168;
  v169 = __chkstk_darwin(v167);
  v1452 = &v1313 - v170;
  v171 = __chkstk_darwin(v169);
  v1451 = &v1313 - v172;
  v173 = __chkstk_darwin(v171);
  v1450 = &v1313 - v174;
  v175 = __chkstk_darwin(v173);
  v1449 = &v1313 - v176;
  v177 = __chkstk_darwin(v175);
  v1448 = &v1313 - v178;
  v179 = __chkstk_darwin(v177);
  v1447 = &v1313 - v180;
  v181 = __chkstk_darwin(v179);
  v1446 = &v1313 - v182;
  v183 = __chkstk_darwin(v181);
  v1445 = &v1313 - v184;
  v185 = __chkstk_darwin(v183);
  v1444 = &v1313 - v186;
  v187 = __chkstk_darwin(v185);
  v1443 = &v1313 - v188;
  v189 = __chkstk_darwin(v187);
  v1442 = &v1313 - v190;
  v191 = __chkstk_darwin(v189);
  v1441 = &v1313 - v192;
  v193 = __chkstk_darwin(v191);
  v1440 = &v1313 - v194;
  v195 = __chkstk_darwin(v193);
  v1439 = &v1313 - v196;
  v197 = __chkstk_darwin(v195);
  v1438 = &v1313 - v198;
  v199 = __chkstk_darwin(v197);
  v1437 = &v1313 - v200;
  v201 = __chkstk_darwin(v199);
  v1436 = &v1313 - v202;
  v203 = __chkstk_darwin(v201);
  v1435 = &v1313 - v204;
  v205 = __chkstk_darwin(v203);
  v1434 = &v1313 - v206;
  v207 = __chkstk_darwin(v205);
  v1433 = &v1313 - v208;
  v209 = __chkstk_darwin(v207);
  v1432 = &v1313 - v210;
  v211 = __chkstk_darwin(v209);
  v1431 = &v1313 - v212;
  v213 = __chkstk_darwin(v211);
  v1430 = &v1313 - v214;
  v215 = __chkstk_darwin(v213);
  v1429 = &v1313 - v216;
  v217 = __chkstk_darwin(v215);
  v1428 = &v1313 - v218;
  v219 = __chkstk_darwin(v217);
  v1427 = &v1313 - v220;
  v221 = __chkstk_darwin(v219);
  v1426 = &v1313 - v222;
  v223 = __chkstk_darwin(v221);
  v1425 = &v1313 - v224;
  v225 = __chkstk_darwin(v223);
  v1315 = &v1313 - v226;
  v227 = __chkstk_darwin(v225);
  v1424 = &v1313 - v228;
  v229 = __chkstk_darwin(v227);
  v1423 = &v1313 - v230;
  v231 = __chkstk_darwin(v229);
  v1422 = &v1313 - v232;
  v233 = __chkstk_darwin(v231);
  v1326 = &v1313 - v234;
  v235 = __chkstk_darwin(v233);
  v1421 = &v1313 - v236;
  v237 = __chkstk_darwin(v235);
  v1420 = &v1313 - v238;
  v239 = __chkstk_darwin(v237);
  v1325 = &v1313 - v240;
  v241 = __chkstk_darwin(v239);
  v1419 = &v1313 - v242;
  v243 = __chkstk_darwin(v241);
  v1418 = &v1313 - v244;
  v245 = __chkstk_darwin(v243);
  v1328 = &v1313 - v246;
  v247 = __chkstk_darwin(v245);
  v1417 = &v1313 - v248;
  v249 = __chkstk_darwin(v247);
  v1416 = &v1313 - v250;
  v251 = __chkstk_darwin(v249);
  v1327 = &v1313 - v252;
  v253 = __chkstk_darwin(v251);
  v1415 = &v1313 - v254;
  v255 = __chkstk_darwin(v253);
  v1414 = &v1313 - v256;
  v257 = __chkstk_darwin(v255);
  v1330 = &v1313 - v258;
  v259 = __chkstk_darwin(v257);
  v1413 = &v1313 - v260;
  v261 = __chkstk_darwin(v259);
  v1412 = &v1313 - v262;
  v263 = __chkstk_darwin(v261);
  v1329 = &v1313 - v264;
  v265 = __chkstk_darwin(v263);
  v1411 = &v1313 - v266;
  v267 = __chkstk_darwin(v265);
  v1410 = &v1313 - v268;
  v269 = __chkstk_darwin(v267);
  v1332 = &v1313 - v270;
  v271 = __chkstk_darwin(v269);
  v1409 = &v1313 - v272;
  v273 = __chkstk_darwin(v271);
  v1408 = &v1313 - v274;
  v275 = __chkstk_darwin(v273);
  v1333 = &v1313 - v276;
  v277 = __chkstk_darwin(v275);
  v1407 = &v1313 - v278;
  v279 = __chkstk_darwin(v277);
  v1406 = &v1313 - v280;
  v281 = __chkstk_darwin(v279);
  v1331 = &v1313 - v282;
  v283 = __chkstk_darwin(v281);
  v1405 = &v1313 - v284;
  v285 = __chkstk_darwin(v283);
  v1404 = &v1313 - v286;
  v287 = __chkstk_darwin(v285);
  v1335 = &v1313 - v288;
  v289 = __chkstk_darwin(v287);
  v1403 = &v1313 - v290;
  v291 = __chkstk_darwin(v289);
  v1402 = &v1313 - v292;
  v293 = __chkstk_darwin(v291);
  v1336 = &v1313 - v294;
  v295 = __chkstk_darwin(v293);
  v1401 = &v1313 - v296;
  v297 = __chkstk_darwin(v295);
  v1400 = &v1313 - v298;
  v299 = __chkstk_darwin(v297);
  v1334 = &v1313 - v300;
  v301 = __chkstk_darwin(v299);
  v1399 = &v1313 - v302;
  v303 = __chkstk_darwin(v301);
  v1398 = &v1313 - v304;
  v305 = __chkstk_darwin(v303);
  v1338 = &v1313 - v306;
  v307 = __chkstk_darwin(v305);
  v1397 = &v1313 - v308;
  v309 = __chkstk_darwin(v307);
  v1339 = &v1313 - v310;
  v311 = __chkstk_darwin(v309);
  v1396 = &v1313 - v312;
  v313 = __chkstk_darwin(v311);
  v1337 = &v1313 - v314;
  v315 = __chkstk_darwin(v313);
  v1395 = &v1313 - v316;
  v317 = __chkstk_darwin(v315);
  v1341 = &v1313 - v318;
  v319 = __chkstk_darwin(v317);
  v1394 = &v1313 - v320;
  v321 = __chkstk_darwin(v319);
  v1342 = &v1313 - v322;
  v323 = __chkstk_darwin(v321);
  v1393 = &v1313 - v324;
  v325 = __chkstk_darwin(v323);
  v1343 = &v1313 - v326;
  v327 = __chkstk_darwin(v325);
  v1392 = &v1313 - v328;
  v329 = __chkstk_darwin(v327);
  v1340 = &v1313 - v330;
  v331 = __chkstk_darwin(v329);
  v1391 = &v1313 - v332;
  v333 = __chkstk_darwin(v331);
  v1345 = &v1313 - v334;
  v335 = __chkstk_darwin(v333);
  v1390 = &v1313 - v336;
  v337 = __chkstk_darwin(v335);
  v1346 = &v1313 - v338;
  v339 = __chkstk_darwin(v337);
  v1389 = &v1313 - v340;
  v341 = __chkstk_darwin(v339);
  v1347 = &v1313 - v342;
  v343 = __chkstk_darwin(v341);
  v1388 = &v1313 - v344;
  v345 = __chkstk_darwin(v343);
  v1344 = &v1313 - v346;
  v347 = __chkstk_darwin(v345);
  v1387 = &v1313 - v348;
  v349 = __chkstk_darwin(v347);
  v1349 = &v1313 - v350;
  v351 = __chkstk_darwin(v349);
  v1386 = &v1313 - v352;
  v353 = __chkstk_darwin(v351);
  v1350 = &v1313 - v354;
  v355 = __chkstk_darwin(v353);
  v1385 = &v1313 - v356;
  v357 = __chkstk_darwin(v355);
  v1351 = &v1313 - v358;
  v359 = __chkstk_darwin(v357);
  v1384 = &v1313 - v360;
  v361 = __chkstk_darwin(v359);
  v1348 = &v1313 - v362;
  v363 = __chkstk_darwin(v361);
  v1383 = &v1313 - v364;
  v365 = __chkstk_darwin(v363);
  v1353 = &v1313 - v366;
  v367 = __chkstk_darwin(v365);
  v1382 = &v1313 - v368;
  v369 = __chkstk_darwin(v367);
  v1354 = &v1313 - v370;
  v371 = __chkstk_darwin(v369);
  v1355 = &v1313 - v372;
  v373 = __chkstk_darwin(v371);
  v1356 = &v1313 - v374;
  v375 = __chkstk_darwin(v373);
  v1357 = &v1313 - v376;
  v377 = __chkstk_darwin(v375);
  v1358 = &v1313 - v378;
  v379 = __chkstk_darwin(v377);
  v1352 = &v1313 - v380;
  v381 = __chkstk_darwin(v379);
  v1360 = &v1313 - v382;
  v383 = __chkstk_darwin(v381);
  v1361 = &v1313 - v384;
  v385 = __chkstk_darwin(v383);
  v1362 = &v1313 - v386;
  v387 = __chkstk_darwin(v385);
  v1363 = &v1313 - v388;
  v389 = __chkstk_darwin(v387);
  v1364 = &v1313 - v390;
  v391 = __chkstk_darwin(v389);
  v1365 = &v1313 - v392;
  v393 = __chkstk_darwin(v391);
  v1366 = &v1313 - v394;
  v395 = __chkstk_darwin(v393);
  v1359 = &v1313 - v396;
  v397 = __chkstk_darwin(v395);
  v1368 = &v1313 - v398;
  v399 = __chkstk_darwin(v397);
  v1369 = &v1313 - v400;
  v401 = __chkstk_darwin(v399);
  v1370 = &v1313 - v402;
  v403 = __chkstk_darwin(v401);
  v1371 = &v1313 - v404;
  v405 = __chkstk_darwin(v403);
  v1372 = &v1313 - v406;
  v407 = __chkstk_darwin(v405);
  v1373 = &v1313 - v408;
  v409 = __chkstk_darwin(v407);
  v1374 = &v1313 - v410;
  v411 = __chkstk_darwin(v409);
  v1367 = &v1313 - v412;
  v413 = __chkstk_darwin(v411);
  v1375 = &v1313 - v414;
  v415 = __chkstk_darwin(v413);
  v1376 = &v1313 - v416;
  v417 = __chkstk_darwin(v415);
  v1377 = &v1313 - v418;
  v419 = __chkstk_darwin(v417);
  v1378 = &v1313 - v420;
  v421 = __chkstk_darwin(v419);
  v1379 = &v1313 - v422;
  v423 = __chkstk_darwin(v421);
  v1380 = &v1313 - v424;
  v425 = __chkstk_darwin(v423);
  v1381 = &v1313 - v426;
  v427 = __chkstk_darwin(v425);
  v1318 = &v1313 - v428;
  v429 = __chkstk_darwin(v427);
  v1319 = &v1313 - v430;
  __chkstk_darwin(v429);
  v1320 = &v1313 - v431;
  v432 = objc_opt_self();
  v433 = [v432 localizedStringForLabel:CNLabelContactRelationAssistant];
  v434 = sub_10002DC20();
  v436 = v435;

  v1532 = v434;
  v1533 = v436;
  sub_1000069D0();
  sub_10002D1C0();

  v437 = [v432 localizedStringForLabel:CNLabelContactRelationManager];
  v438 = sub_10002DC20();
  v440 = v439;

  v1532 = v438;
  v1533 = v440;
  sub_10002D1C0();

  v441 = [v432 localizedStringForLabel:CNLabelContactRelationColleague];
  v442 = sub_10002DC20();
  v444 = v443;

  v1532 = v442;
  v1533 = v444;
  sub_10002D1C0();

  v445 = [v432 localizedStringForLabel:CNLabelContactRelationTeacher];
  v446 = sub_10002DC20();
  v448 = v447;

  v1532 = v446;
  v1533 = v448;
  sub_10002D1C0();

  v449 = [v432 localizedStringForLabel:CNLabelContactRelationSibling];
  v450 = sub_10002DC20();
  v452 = v451;

  v1532 = v450;
  v1533 = v452;
  sub_10002D1C0();

  v453 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerSibling];
  v454 = sub_10002DC20();
  v456 = v455;

  v1532 = v454;
  v1533 = v456;
  sub_10002D1C0();

  v457 = [v432 localizedStringForLabel:CNLabelContactRelationElderSibling];
  v458 = sub_10002DC20();
  v460 = v459;

  v1532 = v458;
  v1533 = v460;
  sub_10002D1C0();

  v461 = [v432 localizedStringForLabel:CNLabelContactRelationSister];
  v462 = sub_10002DC20();
  v464 = v463;

  v1532 = v462;
  v1533 = v464;
  sub_10002D1C0();

  v465 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerSister];
  v466 = sub_10002DC20();
  v468 = v467;

  v1532 = v466;
  v1533 = v468;
  sub_10002D1C0();

  v469 = [v432 localizedStringForLabel:CNLabelContactRelationYoungestSister];
  v470 = sub_10002DC20();
  v472 = v471;

  v1532 = v470;
  v1533 = v472;
  sub_10002D1C0();

  v473 = [v432 localizedStringForLabel:CNLabelContactRelationElderSister];
  v474 = sub_10002DC20();
  v476 = v475;

  v1532 = v474;
  v1533 = v476;
  sub_10002D1C0();

  v477 = [v432 localizedStringForLabel:CNLabelContactRelationEldestSister];
  v478 = sub_10002DC20();
  v480 = v479;

  v1532 = v478;
  v1533 = v480;
  sub_10002D1C0();

  v481 = [v432 localizedStringForLabel:CNLabelContactRelationBrother];
  v482 = sub_10002DC20();
  v484 = v483;

  v1532 = v482;
  v1533 = v484;
  sub_10002D1C0();

  v485 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerBrother];
  v486 = sub_10002DC20();
  v488 = v487;

  v1532 = v486;
  v1533 = v488;
  sub_10002D1C0();

  v489 = [v432 localizedStringForLabel:CNLabelContactRelationYoungestBrother];
  v490 = sub_10002DC20();
  v492 = v491;

  v1532 = v490;
  v1533 = v492;
  sub_10002D1C0();

  v493 = [v432 localizedStringForLabel:CNLabelContactRelationElderBrother];
  v494 = sub_10002DC20();
  v496 = v495;

  v1532 = v494;
  v1533 = v496;
  sub_10002D1C0();

  v497 = [v432 localizedStringForLabel:CNLabelContactRelationEldestBrother];
  v498 = sub_10002DC20();
  v500 = v499;

  v1532 = v498;
  v1533 = v500;
  sub_10002D1C0();

  v501 = [v432 localizedStringForLabel:CNLabelContactRelationFriend];
  v502 = sub_10002DC20();
  v504 = v503;

  v1532 = v502;
  v1533 = v504;
  sub_10002D1C0();

  v505 = [v432 localizedStringForLabel:CNLabelContactRelationMaleFriend];
  v506 = sub_10002DC20();
  v508 = v507;

  v1532 = v506;
  v1533 = v508;
  sub_10002D1C0();

  v509 = [v432 localizedStringForLabel:CNLabelContactRelationFemaleFriend];
  v510 = sub_10002DC20();
  v512 = v511;

  v1532 = v510;
  v1533 = v512;
  sub_10002D1C0();

  v513 = [v432 localizedStringForLabel:CNLabelContactRelationSpouse];
  v514 = sub_10002DC20();
  v516 = v515;

  v1532 = v514;
  v1533 = v516;
  sub_10002D1C0();

  v517 = [v432 localizedStringForLabel:CNLabelContactRelationWife];
  v518 = sub_10002DC20();
  v520 = v519;

  v1532 = v518;
  v1533 = v520;
  sub_10002D1C0();

  v521 = [v432 localizedStringForLabel:CNLabelContactRelationHusband];
  v522 = sub_10002DC20();
  v524 = v523;

  v1532 = v522;
  v1533 = v524;
  sub_10002D1C0();

  v525 = [v432 localizedStringForLabel:CNLabelContactRelationPartner];
  v526 = sub_10002DC20();
  v528 = v527;

  v1532 = v526;
  v1533 = v528;
  sub_10002D1C0();

  v529 = [v432 localizedStringForLabel:CNLabelContactRelationMalePartner];
  v530 = sub_10002DC20();
  v532 = v531;

  v1532 = v530;
  v1533 = v532;
  sub_10002D1C0();

  v533 = [v432 localizedStringForLabel:CNLabelContactRelationFemalePartner];
  v534 = sub_10002DC20();
  v536 = v535;

  v1532 = v534;
  v1533 = v536;
  sub_10002D1C0();

  v537 = [v432 localizedStringForLabel:CNLabelContactRelationGirlfriendOrBoyfriend];
  v538 = sub_10002DC20();
  v540 = v539;

  v1532 = v538;
  v1533 = v540;
  sub_10002D1C0();

  v541 = [v432 localizedStringForLabel:CNLabelContactRelationGirlfriend];
  v542 = sub_10002DC20();
  v544 = v543;

  v1532 = v542;
  v1533 = v544;
  sub_10002D1C0();

  v545 = [v432 localizedStringForLabel:CNLabelContactRelationBoyfriend];
  v546 = sub_10002DC20();
  v548 = v547;

  v1532 = v546;
  v1533 = v548;
  sub_10002D1C0();

  v549 = [v432 localizedStringForLabel:CNLabelContactRelationParent];
  v550 = sub_10002DC20();
  v552 = v551;

  v1532 = v550;
  v1533 = v552;
  sub_10002D1C0();

  v553 = [v432 localizedStringForLabel:CNLabelContactRelationMother];
  v554 = sub_10002DC20();
  v556 = v555;

  v1532 = v554;
  v1533 = v556;
  sub_10002D1C0();

  v557 = [v432 localizedStringForLabel:CNLabelContactRelationFather];
  v558 = sub_10002DC20();
  v560 = v559;

  v1532 = v558;
  v1533 = v560;
  sub_10002D1C0();

  v561 = [v432 localizedStringForLabel:CNLabelContactRelationChild];
  v562 = sub_10002DC20();
  v564 = v563;

  v1532 = v562;
  v1533 = v564;
  sub_10002D1C0();

  v565 = [v432 localizedStringForLabel:CNLabelContactRelationDaughter];
  v566 = sub_10002DC20();
  v568 = v567;

  v1532 = v566;
  v1533 = v568;
  sub_10002D1C0();

  v569 = [v432 localizedStringForLabel:CNLabelContactRelationSon];
  v570 = sub_10002DC20();
  v572 = v571;

  v1532 = v570;
  v1533 = v572;
  sub_10002D1C0();

  v573 = [v432 localizedStringForLabel:CNLabelContactRelationGrandparent];
  v574 = sub_10002DC20();
  v576 = v575;

  v1532 = v574;
  v1533 = v576;
  sub_10002D1C0();

  v577 = [v432 localizedStringForLabel:CNLabelContactRelationGrandmother];
  v578 = sub_10002DC20();
  v580 = v579;

  v1532 = v578;
  v1533 = v580;
  sub_10002D1C0();

  v581 = [v432 localizedStringForLabel:CNLabelContactRelationGrandmotherMothersMother];
  v582 = sub_10002DC20();
  v584 = v583;

  v1532 = v582;
  v1533 = v584;
  sub_10002D1C0();

  v585 = [v432 localizedStringForLabel:CNLabelContactRelationGrandmotherFathersMother];
  v586 = sub_10002DC20();
  v588 = v587;

  v1532 = v586;
  v1533 = v588;
  sub_10002D1C0();

  v589 = [v432 localizedStringForLabel:CNLabelContactRelationGrandfather];
  v590 = sub_10002DC20();
  v592 = v591;

  v1532 = v590;
  v1533 = v592;
  sub_10002D1C0();

  v593 = [v432 localizedStringForLabel:CNLabelContactRelationGrandfatherMothersFather];
  v594 = sub_10002DC20();
  v596 = v595;

  v1532 = v594;
  v1533 = v596;
  sub_10002D1C0();

  v597 = [v432 localizedStringForLabel:CNLabelContactRelationGrandfatherFathersFather];
  v598 = sub_10002DC20();
  v600 = v599;

  v1532 = v598;
  v1533 = v600;
  sub_10002D1C0();

  v601 = [v432 localizedStringForLabel:CNLabelContactRelationGreatGrandparent];
  v602 = sub_10002DC20();
  v604 = v603;

  v1532 = v602;
  v1533 = v604;
  sub_10002D1C0();

  v605 = [v432 localizedStringForLabel:CNLabelContactRelationGreatGrandfather];
  v606 = sub_10002DC20();
  v608 = v607;

  v1532 = v606;
  v1533 = v608;
  sub_10002D1C0();

  v609 = [v432 localizedStringForLabel:CNLabelContactRelationGreatGrandmother];
  v610 = sub_10002DC20();
  v612 = v611;

  v1532 = v610;
  v1533 = v612;
  sub_10002D1C0();

  v613 = [v432 localizedStringForLabel:CNLabelContactRelationGrandchild];
  v614 = sub_10002DC20();
  v616 = v615;

  v1532 = v614;
  v1533 = v616;
  sub_10002D1C0();

  v617 = [v432 localizedStringForLabel:CNLabelContactRelationGranddaughter];
  v618 = sub_10002DC20();
  v620 = v619;

  v1532 = v618;
  v1533 = v620;
  sub_10002D1C0();

  v621 = [v432 localizedStringForLabel:CNLabelContactRelationGranddaughterDaughtersDaughter];
  v622 = sub_10002DC20();
  v624 = v623;

  v1532 = v622;
  v1533 = v624;
  sub_10002D1C0();

  v625 = [v432 localizedStringForLabel:CNLabelContactRelationGranddaughterSonsDaughter];
  v626 = sub_10002DC20();
  v628 = v627;

  v1532 = v626;
  v1533 = v628;
  sub_10002D1C0();

  v629 = [v432 localizedStringForLabel:CNLabelContactRelationGrandson];
  v630 = sub_10002DC20();
  v632 = v631;

  v1532 = v630;
  v1533 = v632;
  sub_10002D1C0();

  v633 = [v432 localizedStringForLabel:CNLabelContactRelationGrandsonDaughtersSon];
  v634 = sub_10002DC20();
  v636 = v635;

  v1532 = v634;
  v1533 = v636;
  sub_10002D1C0();

  v637 = [v432 localizedStringForLabel:CNLabelContactRelationGrandsonSonsSon];
  v638 = sub_10002DC20();
  v640 = v639;

  v1532 = v638;
  v1533 = v640;
  sub_10002D1C0();

  v641 = [v432 localizedStringForLabel:CNLabelContactRelationGreatGrandchild];
  v642 = sub_10002DC20();
  v644 = v643;

  v1532 = v642;
  v1533 = v644;
  sub_10002D1C0();

  v645 = [v432 localizedStringForLabel:CNLabelContactRelationGreatGrandson];
  v646 = sub_10002DC20();
  v648 = v647;

  v1532 = v646;
  v1533 = v648;
  sub_10002D1C0();

  v649 = [v432 localizedStringForLabel:CNLabelContactRelationGreatGranddaughter];
  v650 = sub_10002DC20();
  v652 = v651;

  v1532 = v650;
  v1533 = v652;
  sub_10002D1C0();

  v653 = [v432 localizedStringForLabel:CNLabelContactRelationParentInLaw];
  v654 = sub_10002DC20();
  v656 = v655;

  v1532 = v654;
  v1533 = v656;
  sub_10002D1C0();

  v657 = [v432 localizedStringForLabel:CNLabelContactRelationMotherInLaw];
  v658 = sub_10002DC20();
  v660 = v659;

  v1532 = v658;
  v1533 = v660;
  sub_10002D1C0();

  v661 = [v432 localizedStringForLabel:CNLabelContactRelationMotherInLawWifesMother];
  v662 = sub_10002DC20();
  v664 = v663;

  v1532 = v662;
  v1533 = v664;
  sub_10002D1C0();

  v665 = [v432 localizedStringForLabel:CNLabelContactRelationMotherInLawHusbandsMother];
  v666 = sub_10002DC20();
  v668 = v667;

  v1532 = v666;
  v1533 = v668;
  sub_10002D1C0();

  v669 = [v432 localizedStringForLabel:CNLabelContactRelationFatherInLaw];
  v670 = sub_10002DC20();
  v672 = v671;

  v1532 = v670;
  v1533 = v672;
  sub_10002D1C0();

  v673 = [v432 localizedStringForLabel:CNLabelContactRelationFatherInLawWifesFather];
  v674 = sub_10002DC20();
  v676 = v675;

  v1532 = v674;
  v1533 = v676;
  sub_10002D1C0();

  v677 = [v432 localizedStringForLabel:CNLabelContactRelationFatherInLawHusbandsFather];
  v678 = sub_10002DC20();
  v680 = v679;

  v1532 = v678;
  v1533 = v680;
  sub_10002D1C0();

  v681 = [v432 localizedStringForLabel:CNLabelContactRelationCoParentInLaw];
  v682 = sub_10002DC20();
  v684 = v683;

  v1532 = v682;
  v1533 = v684;
  sub_10002D1C0();

  v685 = [v432 localizedStringForLabel:CNLabelContactRelationCoMotherInLaw];
  v686 = sub_10002DC20();
  v688 = v687;

  v1532 = v686;
  v1533 = v688;
  sub_10002D1C0();

  v689 = [v432 localizedStringForLabel:CNLabelContactRelationCoFatherInLaw];
  v690 = sub_10002DC20();
  v692 = v691;

  v1532 = v690;
  v1533 = v692;
  sub_10002D1C0();

  v693 = [v432 localizedStringForLabel:CNLabelContactRelationSiblingInLaw];
  v694 = sub_10002DC20();
  v696 = v695;

  v1532 = v694;
  v1533 = v696;
  sub_10002D1C0();

  v697 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerSiblingInLaw];
  v698 = sub_10002DC20();
  v700 = v699;

  v1532 = v698;
  v1533 = v700;
  sub_10002D1C0();

  v701 = [v432 localizedStringForLabel:CNLabelContactRelationElderSiblingInLaw];
  v702 = sub_10002DC20();
  v704 = v703;

  v1532 = v702;
  v1533 = v704;
  sub_10002D1C0();

  v705 = [v432 localizedStringForLabel:CNLabelContactRelationSisterInLaw];
  v706 = sub_10002DC20();
  v708 = v707;

  v1532 = v706;
  v1533 = v708;
  sub_10002D1C0();

  v709 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerSisterInLaw];
  v710 = sub_10002DC20();
  v712 = v711;

  v1532 = v710;
  v1533 = v712;
  sub_10002D1C0();

  v713 = [v432 localizedStringForLabel:CNLabelContactRelationElderSisterInLaw];
  v714 = sub_10002DC20();
  v716 = v715;

  v1532 = v714;
  v1533 = v716;
  sub_10002D1C0();

  v717 = [v432 localizedStringForLabel:CNLabelContactRelationSisterInLawSpousesSister];
  v718 = sub_10002DC20();
  v720 = v719;

  v1532 = v718;
  v1533 = v720;
  sub_10002D1C0();

  v721 = [v432 localizedStringForLabel:CNLabelContactRelationSisterInLawWifesSister];
  v722 = sub_10002DC20();
  v724 = v723;

  v1532 = v722;
  v1533 = v724;
  sub_10002D1C0();

  v725 = [v432 localizedStringForLabel:CNLabelContactRelationSisterInLawHusbandsSister];
  v726 = sub_10002DC20();
  v728 = v727;

  v1532 = v726;
  v1533 = v728;
  sub_10002D1C0();

  v729 = [v432 localizedStringForLabel:CNLabelContactRelationSisterInLawBrothersWife];
  v730 = sub_10002DC20();
  v732 = v731;

  v1532 = v730;
  v1533 = v732;
  sub_10002D1C0();

  v733 = [v432 localizedStringForLabel:CNLabelContactRelationSisterInLawYoungerBrothersWife];
  v734 = sub_10002DC20();
  v736 = v735;

  v1532 = v734;
  v1533 = v736;
  sub_10002D1C0();

  v737 = [v432 localizedStringForLabel:CNLabelContactRelationSisterInLawElderBrothersWife];
  v738 = sub_10002DC20();
  v740 = v739;

  v1532 = v738;
  v1533 = v740;
  sub_10002D1C0();

  v741 = [v432 localizedStringForLabel:CNLabelContactRelationBrotherInLaw];
  v742 = sub_10002DC20();
  v744 = v743;

  v1532 = v742;
  v1533 = v744;
  sub_10002D1C0();

  v745 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerBrotherInLaw];
  v746 = sub_10002DC20();
  v748 = v747;

  v1532 = v746;
  v1533 = v748;
  sub_10002D1C0();

  v749 = [v432 localizedStringForLabel:CNLabelContactRelationElderBrotherInLaw];
  v750 = sub_10002DC20();
  v752 = v751;

  v1532 = v750;
  v1533 = v752;
  sub_10002D1C0();

  v753 = [v432 localizedStringForLabel:CNLabelContactRelationBrotherInLawSpousesBrother];
  v754 = sub_10002DC20();
  v756 = v755;

  v1532 = v754;
  v1533 = v756;
  sub_10002D1C0();

  v757 = [v432 localizedStringForLabel:CNLabelContactRelationBrotherInLawHusbandsBrother];
  v758 = sub_10002DC20();
  v760 = v759;

  v1532 = v758;
  v1533 = v760;
  sub_10002D1C0();

  v761 = [v432 localizedStringForLabel:CNLabelContactRelationBrotherInLawWifesBrother];
  v762 = sub_10002DC20();
  v764 = v763;

  v1532 = v762;
  v1533 = v764;
  sub_10002D1C0();

  v765 = [v432 localizedStringForLabel:CNLabelContactRelationBrotherInLawSistersHusband];
  v766 = sub_10002DC20();
  v768 = v767;

  v1532 = v766;
  v1533 = v768;
  sub_10002D1C0();

  v769 = [v432 localizedStringForLabel:CNLabelContactRelationBrotherInLawYoungerSistersHusband];
  v770 = sub_10002DC20();
  v772 = v771;

  v1532 = v770;
  v1533 = v772;
  sub_10002D1C0();

  v773 = [v432 localizedStringForLabel:CNLabelContactRelationBrotherInLawElderSistersHusband];
  v774 = sub_10002DC20();
  v776 = v775;

  v1532 = v774;
  v1533 = v776;
  sub_10002D1C0();

  v777 = [v432 localizedStringForLabel:CNLabelContactRelationSisterInLawWifesBrothersWife];
  v778 = sub_10002DC20();
  v780 = v779;

  v1532 = v778;
  v1533 = v780;
  sub_10002D1C0();

  v781 = [v432 localizedStringForLabel:CNLabelContactRelationSisterInLawHusbandsBrothersWife];
  v782 = sub_10002DC20();
  v784 = v783;

  v1532 = v782;
  v1533 = v784;
  sub_10002D1C0();

  v785 = [v432 localizedStringForLabel:CNLabelContactRelationBrotherInLawWifesSistersHusband];
  v786 = sub_10002DC20();
  v788 = v787;

  v1532 = v786;
  v1533 = v788;
  sub_10002D1C0();

  v789 = [v432 localizedStringForLabel:CNLabelContactRelationBrotherInLawHusbandsSistersHusband];
  v790 = sub_10002DC20();
  v792 = v791;

  v1532 = v790;
  v1533 = v792;
  sub_10002D1C0();

  v793 = [v432 localizedStringForLabel:CNLabelContactRelationCoSiblingInLaw];
  v794 = sub_10002DC20();
  v796 = v795;

  v1532 = v794;
  v1533 = v796;
  sub_10002D1C0();

  v797 = [v432 localizedStringForLabel:CNLabelContactRelationCoSisterInLaw];
  v798 = sub_10002DC20();
  v800 = v799;

  v1532 = v798;
  v1533 = v800;
  sub_10002D1C0();

  v801 = [v432 localizedStringForLabel:CNLabelContactRelationCoBrotherInLaw];
  v802 = sub_10002DC20();
  v804 = v803;

  v1532 = v802;
  v1533 = v804;
  sub_10002D1C0();

  v805 = [v432 localizedStringForLabel:CNLabelContactRelationChildInLaw];
  v806 = sub_10002DC20();
  v808 = v807;

  v1532 = v806;
  v1533 = v808;
  sub_10002D1C0();

  v809 = [v432 localizedStringForLabel:CNLabelContactRelationDaughterInLaw];
  v810 = sub_10002DC20();
  v812 = v811;

  v1532 = v810;
  v1533 = v812;
  sub_10002D1C0();

  v813 = [v432 localizedStringForLabel:CNLabelContactRelationSonInLaw];
  v814 = sub_10002DC20();
  v816 = v815;

  v1532 = v814;
  v1533 = v816;
  sub_10002D1C0();

  v817 = [v432 localizedStringForLabel:CNLabelContactRelationCousin];
  v818 = sub_10002DC20();
  v820 = v819;

  v1532 = v818;
  v1533 = v820;
  sub_10002D1C0();

  v821 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousin];
  v822 = sub_10002DC20();
  v824 = v823;

  v1532 = v822;
  v1533 = v824;
  sub_10002D1C0();

  v825 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousin];
  v826 = sub_10002DC20();
  v828 = v827;

  v1532 = v826;
  v1533 = v828;
  sub_10002D1C0();

  v829 = [v432 localizedStringForLabel:CNLabelContactRelationMaleCousin];
  v830 = sub_10002DC20();
  v832 = v831;

  v1532 = v830;
  v1533 = v832;
  sub_10002D1C0();

  v833 = [v432 localizedStringForLabel:CNLabelContactRelationFemaleCousin];
  v834 = sub_10002DC20();
  v836 = v835;

  v1532 = v834;
  v1533 = v836;
  sub_10002D1C0();

  v837 = [v432 localizedStringForLabel:CNLabelContactRelationCousinParentsSiblingsChild];
  v838 = sub_10002DC20();
  v840 = v839;

  v1532 = v838;
  v1533 = v840;
  sub_10002D1C0();

  v841 = [v432 localizedStringForLabel:CNLabelContactRelationCousinParentsSiblingsSon];
  v842 = sub_10002DC20();
  v844 = v843;

  v1532 = v842;
  v1533 = v844;
  sub_10002D1C0();

  v845 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousinParentsSiblingsSon];
  v846 = sub_10002DC20();
  v848 = v847;

  v1532 = v846;
  v1533 = v848;
  v849 = v1315;
  sub_10002D1C0();

  v850 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousinParentsSiblingsSon];
  v851 = sub_10002DC20();
  v853 = v852;

  v1532 = v851;
  v1533 = v853;
  sub_10002D1C0();

  v854 = [v432 localizedStringForLabel:CNLabelContactRelationCousinParentsSiblingsDaughter];
  v855 = sub_10002DC20();
  v857 = v856;

  v1532 = v855;
  v1533 = v857;
  sub_10002D1C0();

  v858 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousinParentsSiblingsDaughter];
  v859 = sub_10002DC20();
  v861 = v860;

  v1532 = v859;
  v1533 = v861;
  sub_10002D1C0();

  v862 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousinParentsSiblingsDaughter];
  v863 = sub_10002DC20();
  v865 = v864;

  v1532 = v863;
  v1533 = v865;
  sub_10002D1C0();

  v866 = [v432 localizedStringForLabel:CNLabelContactRelationCousinMothersSistersDaughter];
  v867 = sub_10002DC20();
  v869 = v868;

  v1532 = v867;
  v1533 = v869;
  sub_10002D1C0();

  v870 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousinMothersSistersDaughter];
  v871 = sub_10002DC20();
  v873 = v872;

  v1532 = v871;
  v1533 = v873;
  sub_10002D1C0();

  v874 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousinMothersSistersDaughter];
  v875 = sub_10002DC20();
  v877 = v876;

  v1532 = v875;
  v1533 = v877;
  sub_10002D1C0();

  v878 = [v432 localizedStringForLabel:CNLabelContactRelationCousinMothersSistersSon];
  v879 = sub_10002DC20();
  v881 = v880;

  v1532 = v879;
  v1533 = v881;
  sub_10002D1C0();

  v882 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousinMothersSistersSon];
  v883 = sub_10002DC20();
  v885 = v884;

  v1532 = v883;
  v1533 = v885;
  sub_10002D1C0();

  v886 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousinMothersSistersSon];
  v887 = sub_10002DC20();
  v889 = v888;

  v1532 = v887;
  v1533 = v889;
  sub_10002D1C0();

  v890 = [v432 localizedStringForLabel:CNLabelContactRelationCousinMothersBrothersDaughter];
  v891 = sub_10002DC20();
  v893 = v892;

  v1532 = v891;
  v1533 = v893;
  sub_10002D1C0();

  v894 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousinMothersBrothersDaughter];
  v895 = sub_10002DC20();
  v897 = v896;

  v1532 = v895;
  v1533 = v897;
  sub_10002D1C0();

  v898 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousinMothersBrothersDaughter];
  v899 = sub_10002DC20();
  v901 = v900;

  v1532 = v899;
  v1533 = v901;
  sub_10002D1C0();

  v902 = [v432 localizedStringForLabel:CNLabelContactRelationCousinMothersBrothersSon];
  v903 = sub_10002DC20();
  v905 = v904;

  v1532 = v903;
  v1533 = v905;
  sub_10002D1C0();

  v906 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousinMothersBrothersSon];
  v907 = sub_10002DC20();
  v909 = v908;

  v1532 = v907;
  v1533 = v909;
  sub_10002D1C0();

  v910 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousinMothersBrothersSon];
  v911 = sub_10002DC20();
  v913 = v912;

  v1532 = v911;
  v1533 = v913;
  sub_10002D1C0();

  v914 = [v432 localizedStringForLabel:CNLabelContactRelationCousinFathersSistersDaughter];
  v915 = sub_10002DC20();
  v917 = v916;

  v1532 = v915;
  v1533 = v917;
  sub_10002D1C0();

  v918 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousinFathersSistersDaughter];
  v919 = sub_10002DC20();
  v921 = v920;

  v1532 = v919;
  v1533 = v921;
  sub_10002D1C0();

  v922 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousinFathersSistersDaughter];
  v923 = sub_10002DC20();
  v925 = v924;

  v1532 = v923;
  v1533 = v925;
  sub_10002D1C0();

  v926 = [v432 localizedStringForLabel:CNLabelContactRelationCousinFathersSistersSon];
  v927 = sub_10002DC20();
  v929 = v928;

  v1532 = v927;
  v1533 = v929;
  sub_10002D1C0();

  v930 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousinFathersSistersSon];
  v931 = sub_10002DC20();
  v933 = v932;

  v1532 = v931;
  v1533 = v933;
  sub_10002D1C0();

  v934 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousinFathersSistersSon];
  v935 = sub_10002DC20();
  v937 = v936;

  v1532 = v935;
  v1533 = v937;
  sub_10002D1C0();

  v938 = [v432 localizedStringForLabel:CNLabelContactRelationCousinFathersBrothersDaughter];
  v939 = sub_10002DC20();
  v941 = v940;

  v1532 = v939;
  v1533 = v941;
  sub_10002D1C0();

  v942 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousinFathersBrothersDaughter];
  v943 = sub_10002DC20();
  v945 = v944;

  v1532 = v943;
  v1533 = v945;
  sub_10002D1C0();

  v946 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousinFathersBrothersDaughter];
  v947 = sub_10002DC20();
  v949 = v948;

  v1532 = v947;
  v1533 = v949;
  sub_10002D1C0();

  v950 = [v432 localizedStringForLabel:CNLabelContactRelationCousinFathersBrothersSon];
  v951 = sub_10002DC20();
  v953 = v952;

  v1532 = v951;
  v1533 = v953;
  sub_10002D1C0();

  v954 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousinFathersBrothersSon];
  v955 = sub_10002DC20();
  v957 = v956;

  v1532 = v955;
  v1533 = v957;
  sub_10002D1C0();

  v958 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousinFathersBrothersSon];
  v959 = sub_10002DC20();
  v961 = v960;

  v1532 = v959;
  v1533 = v961;
  sub_10002D1C0();

  v962 = [v432 localizedStringForLabel:CNLabelContactRelationCousinGrandparentsSiblingsChild];
  v963 = sub_10002DC20();
  v965 = v964;

  v1532 = v963;
  v1533 = v965;
  sub_10002D1C0();

  v966 = [v432 localizedStringForLabel:CNLabelContactRelationCousinGrandparentsSiblingsDaughter];
  v967 = sub_10002DC20();
  v969 = v968;

  v1532 = v967;
  v1533 = v969;
  sub_10002D1C0();

  v970 = [v432 localizedStringForLabel:CNLabelContactRelationCousinGrandparentsSiblingsSon];
  v971 = sub_10002DC20();
  v973 = v972;

  v1532 = v971;
  v1533 = v973;
  sub_10002D1C0();

  v974 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousinMothersSiblingsSonOrFathersSistersSon];
  v975 = sub_10002DC20();
  v977 = v976;

  v1532 = v975;
  v1533 = v977;
  sub_10002D1C0();

  v978 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousinMothersSiblingsSonOrFathersSistersSon];
  v979 = sub_10002DC20();
  v981 = v980;

  v1532 = v979;
  v1533 = v981;
  sub_10002D1C0();

  v982 = [v432 localizedStringForLabel:CNLabelContactRelationYoungerCousinMothersSiblingsDaughterOrFathersSistersDaughter];
  v983 = sub_10002DC20();
  v985 = v984;

  v1532 = v983;
  v1533 = v985;
  sub_10002D1C0();

  v986 = [v432 localizedStringForLabel:CNLabelContactRelationElderCousinMothersSiblingsDaughterOrFathersSistersDaughter];
  v987 = sub_10002DC20();
  v989 = v988;

  v1532 = v987;
  v1533 = v989;
  sub_10002D1C0();

  v990 = [v432 localizedStringForLabel:CNLabelContactRelationParentsSibling];
  v991 = sub_10002DC20();
  v993 = v992;

  v1532 = v991;
  v1533 = v993;
  sub_10002D1C0();

  v994 = [v432 localizedStringForLabel:CNLabelContactRelationParentsYoungerSibling];
  v995 = sub_10002DC20();
  v997 = v996;

  v1532 = v995;
  v1533 = v997;
  sub_10002D1C0();

  v998 = [v432 localizedStringForLabel:CNLabelContactRelationParentsElderSibling];
  v999 = sub_10002DC20();
  v1001 = v1000;

  v1532 = v999;
  v1533 = v1001;
  sub_10002D1C0();

  v1002 = [v432 localizedStringForLabel:CNLabelContactRelationParentsSiblingMothersSibling];
  v1003 = sub_10002DC20();
  v1005 = v1004;

  v1532 = v1003;
  v1533 = v1005;
  sub_10002D1C0();

  v1006 = [v432 localizedStringForLabel:CNLabelContactRelationParentsSiblingMothersYoungerSibling];
  v1007 = sub_10002DC20();
  v1009 = v1008;

  v1532 = v1007;
  v1533 = v1009;
  sub_10002D1C0();

  v1010 = [v432 localizedStringForLabel:CNLabelContactRelationParentsSiblingMothersElderSibling];
  v1011 = sub_10002DC20();
  v1013 = v1012;

  v1532 = v1011;
  v1533 = v1013;
  sub_10002D1C0();

  v1014 = [v432 localizedStringForLabel:CNLabelContactRelationParentsSiblingFathersSibling];
  v1015 = sub_10002DC20();
  v1017 = v1016;

  v1532 = v1015;
  v1533 = v1017;
  sub_10002D1C0();

  v1018 = [v432 localizedStringForLabel:CNLabelContactRelationParentsSiblingFathersYoungerSibling];
  v1019 = sub_10002DC20();
  v1021 = v1020;

  v1532 = v1019;
  v1533 = v1021;
  sub_10002D1C0();

  v1022 = [v432 localizedStringForLabel:CNLabelContactRelationParentsSiblingFathersElderSibling];
  v1023 = sub_10002DC20();
  v1025 = v1024;

  v1532 = v1023;
  v1533 = v1025;
  sub_10002D1C0();

  v1026 = [v432 localizedStringForLabel:CNLabelContactRelationAunt];
  v1027 = sub_10002DC20();
  v1029 = v1028;

  v1532 = v1027;
  v1533 = v1029;
  sub_10002D1C0();

  v1030 = [v432 localizedStringForLabel:CNLabelContactRelationAuntParentsSister];
  v1031 = sub_10002DC20();
  v1033 = v1032;

  v1532 = v1031;
  v1533 = v1033;
  sub_10002D1C0();

  v1034 = [v432 localizedStringForLabel:CNLabelContactRelationAuntParentsYoungerSister];
  v1035 = sub_10002DC20();
  v1037 = v1036;

  v1532 = v1035;
  v1533 = v1037;
  sub_10002D1C0();

  v1038 = [v432 localizedStringForLabel:CNLabelContactRelationAuntParentsElderSister];
  v1039 = sub_10002DC20();
  v1041 = v1040;

  v1532 = v1039;
  v1533 = v1041;
  sub_10002D1C0();

  v1042 = [v432 localizedStringForLabel:CNLabelContactRelationAuntFathersSister];
  v1043 = sub_10002DC20();
  v1045 = v1044;

  v1532 = v1043;
  v1533 = v1045;
  sub_10002D1C0();

  v1046 = [v432 localizedStringForLabel:CNLabelContactRelationAuntFathersYoungerSister];
  v1047 = sub_10002DC20();
  v1049 = v1048;

  v1532 = v1047;
  v1533 = v1049;
  sub_10002D1C0();

  v1050 = [v432 localizedStringForLabel:CNLabelContactRelationAuntFathersElderSister];
  v1051 = sub_10002DC20();
  v1053 = v1052;

  v1532 = v1051;
  v1533 = v1053;
  sub_10002D1C0();

  v1054 = [v432 localizedStringForLabel:CNLabelContactRelationAuntFathersBrothersWife];
  v1055 = sub_10002DC20();
  v1057 = v1056;

  v1532 = v1055;
  v1533 = v1057;
  sub_10002D1C0();

  v1058 = [v432 localizedStringForLabel:CNLabelContactRelationAuntFathersYoungerBrothersWife];
  v1059 = sub_10002DC20();
  v1061 = v1060;

  v1532 = v1059;
  v1533 = v1061;
  sub_10002D1C0();

  v1062 = [v432 localizedStringForLabel:CNLabelContactRelationAuntFathersElderBrothersWife];
  v1063 = sub_10002DC20();
  v1065 = v1064;

  v1532 = v1063;
  v1533 = v1065;
  sub_10002D1C0();

  v1066 = [v432 localizedStringForLabel:CNLabelContactRelationAuntMothersSister];
  v1067 = sub_10002DC20();
  v1069 = v1068;

  v1532 = v1067;
  v1533 = v1069;
  sub_10002D1C0();

  v1070 = [v432 localizedStringForLabel:CNLabelContactRelationAuntMothersYoungerSister];
  v1071 = sub_10002DC20();
  v1073 = v1072;

  v1532 = v1071;
  v1533 = v1073;
  sub_10002D1C0();

  v1074 = [v432 localizedStringForLabel:CNLabelContactRelationAuntMothersElderSister];
  v1075 = sub_10002DC20();
  v1077 = v1076;

  v1532 = v1075;
  v1533 = v1077;
  sub_10002D1C0();

  v1078 = [v432 localizedStringForLabel:CNLabelContactRelationAuntMothersBrothersWife];
  v1079 = sub_10002DC20();
  v1081 = v1080;

  v1532 = v1079;
  v1533 = v1081;
  sub_10002D1C0();

  v1082 = [v432 localizedStringForLabel:CNLabelContactRelationGrandaunt];
  v1083 = sub_10002DC20();
  v1085 = v1084;

  v1532 = v1083;
  v1533 = v1085;
  sub_10002D1C0();

  v1086 = [v432 localizedStringForLabel:CNLabelContactRelationUncle];
  v1087 = sub_10002DC20();
  v1089 = v1088;

  v1532 = v1087;
  v1533 = v1089;
  sub_10002D1C0();

  v1090 = [v432 localizedStringForLabel:CNLabelContactRelationUncleParentsBrother];
  v1091 = sub_10002DC20();
  v1093 = v1092;

  v1532 = v1091;
  v1533 = v1093;
  sub_10002D1C0();

  v1094 = [v432 localizedStringForLabel:CNLabelContactRelationUncleParentsYoungerBrother];
  v1095 = sub_10002DC20();
  v1097 = v1096;

  v1532 = v1095;
  v1533 = v1097;
  sub_10002D1C0();

  v1098 = [v432 localizedStringForLabel:CNLabelContactRelationUncleParentsElderBrother];
  v1099 = sub_10002DC20();
  v1101 = v1100;

  v1532 = v1099;
  v1533 = v1101;
  sub_10002D1C0();

  v1102 = [v432 localizedStringForLabel:CNLabelContactRelationUncleMothersBrother];
  v1103 = sub_10002DC20();
  v1105 = v1104;

  v1532 = v1103;
  v1533 = v1105;
  sub_10002D1C0();

  v1106 = [v432 localizedStringForLabel:CNLabelContactRelationUncleMothersYoungerBrother];
  v1107 = sub_10002DC20();
  v1109 = v1108;

  v1532 = v1107;
  v1533 = v1109;
  sub_10002D1C0();

  v1110 = [v432 localizedStringForLabel:CNLabelContactRelationUncleMothersElderBrother];
  v1111 = sub_10002DC20();
  v1113 = v1112;

  v1532 = v1111;
  v1533 = v1113;
  sub_10002D1C0();

  v1114 = [v432 localizedStringForLabel:CNLabelContactRelationUncleMothersSistersHusband];
  v1115 = sub_10002DC20();
  v1117 = v1116;

  v1532 = v1115;
  v1533 = v1117;
  sub_10002D1C0();

  v1118 = [v432 localizedStringForLabel:CNLabelContactRelationUncleFathersBrother];
  v1119 = sub_10002DC20();
  v1121 = v1120;

  v1532 = v1119;
  v1533 = v1121;
  sub_10002D1C0();

  v1122 = [v432 localizedStringForLabel:CNLabelContactRelationUncleFathersYoungerBrother];
  v1123 = sub_10002DC20();
  v1125 = v1124;

  v1532 = v1123;
  v1533 = v1125;
  sub_10002D1C0();

  v1126 = [v432 localizedStringForLabel:CNLabelContactRelationUncleFathersElderBrother];
  v1127 = sub_10002DC20();
  v1129 = v1128;

  v1532 = v1127;
  v1533 = v1129;
  sub_10002D1C0();

  v1130 = [v432 localizedStringForLabel:CNLabelContactRelationUncleFathersSistersHusband];
  v1131 = sub_10002DC20();
  v1133 = v1132;

  v1532 = v1131;
  v1533 = v1133;
  sub_10002D1C0();

  v1134 = [v432 localizedStringForLabel:CNLabelContactRelationUncleFathersYoungerSistersHusband];
  v1135 = sub_10002DC20();
  v1137 = v1136;

  v1532 = v1135;
  v1533 = v1137;
  sub_10002D1C0();

  v1138 = [v432 localizedStringForLabel:CNLabelContactRelationUncleFathersElderSistersHusband];
  v1139 = sub_10002DC20();
  v1141 = v1140;

  v1532 = v1139;
  v1533 = v1141;
  sub_10002D1C0();

  v1142 = [v432 localizedStringForLabel:CNLabelContactRelationGranduncle];
  v1143 = sub_10002DC20();
  v1145 = v1144;

  v1532 = v1143;
  v1533 = v1145;
  sub_10002D1C0();

  v1146 = [v432 localizedStringForLabel:CNLabelContactRelationSiblingsChild];
  v1147 = sub_10002DC20();
  v1149 = v1148;

  v1532 = v1147;
  v1533 = v1149;
  sub_10002D1C0();

  v1150 = [v432 localizedStringForLabel:CNLabelContactRelationNiece];
  v1151 = sub_10002DC20();
  v1153 = v1152;

  v1532 = v1151;
  v1533 = v1153;
  sub_10002D1C0();

  v1154 = [v432 localizedStringForLabel:CNLabelContactRelationNieceSistersDaughter];
  v1155 = sub_10002DC20();
  v1157 = v1156;

  v1532 = v1155;
  v1533 = v1157;
  sub_10002D1C0();

  v1158 = [v432 localizedStringForLabel:CNLabelContactRelationNieceBrothersDaughter];
  v1159 = sub_10002DC20();
  v1161 = v1160;

  v1532 = v1159;
  v1533 = v1161;
  sub_10002D1C0();

  v1162 = [v432 localizedStringForLabel:CNLabelContactRelationNieceSistersDaughterOrWifesSiblingsDaughter];
  v1163 = sub_10002DC20();
  v1165 = v1164;

  v1532 = v1163;
  v1533 = v1165;
  sub_10002D1C0();

  v1166 = [v432 localizedStringForLabel:CNLabelContactRelationNieceBrothersDaughterOrHusbandsSiblingsDaughter];
  v1167 = sub_10002DC20();
  v1169 = v1168;

  v1532 = v1167;
  v1533 = v1169;
  sub_10002D1C0();

  v1170 = [v432 localizedStringForLabel:CNLabelContactRelationNephew];
  v1171 = sub_10002DC20();
  v1173 = v1172;

  v1532 = v1171;
  v1533 = v1173;
  sub_10002D1C0();

  v1174 = [v432 localizedStringForLabel:CNLabelContactRelationNephewSistersSon];
  v1175 = sub_10002DC20();
  v1177 = v1176;

  v1532 = v1175;
  v1533 = v1177;
  sub_10002D1C0();

  v1178 = [v432 localizedStringForLabel:CNLabelContactRelationNephewBrothersSon];
  v1179 = sub_10002DC20();
  v1181 = v1180;

  v1532 = v1179;
  v1533 = v1181;
  sub_10002D1C0();

  v1182 = [v432 localizedStringForLabel:CNLabelContactRelationNephewBrothersSonOrHusbandsSiblingsSon];
  v1183 = sub_10002DC20();
  v1185 = v1184;

  v1532 = v1183;
  v1533 = v1185;
  sub_10002D1C0();

  v1186 = [v432 localizedStringForLabel:CNLabelContactRelationNephewSistersSonOrWifesSiblingsSon];
  v1187 = sub_10002DC20();
  v1189 = v1188;

  v1532 = v1187;
  v1533 = v1189;
  sub_10002D1C0();

  v1190 = [v432 localizedStringForLabel:CNLabelContactRelationGrandniece];
  v1191 = sub_10002DC20();
  v1193 = v1192;

  v1532 = v1191;
  v1533 = v1193;
  sub_10002D1C0();

  v1194 = [v432 localizedStringForLabel:CNLabelContactRelationGrandnieceSistersGranddaughter];
  v1195 = sub_10002DC20();
  v1197 = v1196;

  v1532 = v1195;
  v1533 = v1197;
  sub_10002D1C0();

  v1198 = [v432 localizedStringForLabel:CNLabelContactRelationGrandnieceBrothersGranddaughter];
  v1199 = sub_10002DC20();
  v1201 = v1200;

  v1532 = v1199;
  v1533 = v1201;
  sub_10002D1C0();

  v1202 = [v432 localizedStringForLabel:CNLabelContactRelationGrandnephew];
  v1203 = sub_10002DC20();
  v1205 = v1204;

  v1532 = v1203;
  v1533 = v1205;
  sub_10002D1C0();

  v1206 = [v432 localizedStringForLabel:CNLabelContactRelationGrandnephewSistersGrandson];
  v1207 = sub_10002DC20();
  v1209 = v1208;

  v1532 = v1207;
  v1533 = v1209;
  sub_10002D1C0();

  v1210 = [v432 localizedStringForLabel:CNLabelContactRelationGrandnephewBrothersGrandson];
  v1211 = sub_10002DC20();
  v1213 = v1212;

  v1532 = v1211;
  v1533 = v1213;
  sub_10002D1C0();

  v1214 = [v432 localizedStringForLabel:CNLabelContactRelationStepparent];
  v1215 = sub_10002DC20();
  v1217 = v1216;

  v1532 = v1215;
  v1533 = v1217;
  sub_10002D1C0();

  v1218 = [v432 localizedStringForLabel:CNLabelContactRelationStepfather];
  v1219 = sub_10002DC20();
  v1221 = v1220;

  v1532 = v1219;
  v1533 = v1221;
  sub_10002D1C0();

  v1222 = [v432 localizedStringForLabel:CNLabelContactRelationStepmother];
  v1223 = sub_10002DC20();
  v1225 = v1224;

  v1532 = v1223;
  v1533 = v1225;
  sub_10002D1C0();

  v1226 = [v432 localizedStringForLabel:CNLabelContactRelationStepchild];
  v1227 = sub_10002DC20();
  v1229 = v1228;

  v1532 = v1227;
  v1533 = v1229;
  sub_10002D1C0();

  v1230 = [v432 localizedStringForLabel:CNLabelContactRelationStepson];
  v1231 = sub_10002DC20();
  v1233 = v1232;

  v1532 = v1231;
  v1533 = v1233;
  sub_10002D1C0();

  v1234 = [v432 localizedStringForLabel:CNLabelContactRelationStepdaughter];
  v1235 = sub_10002DC20();
  v1237 = v1236;

  v1532 = v1235;
  v1533 = v1237;
  sub_10002D1C0();

  v1238 = [v432 localizedStringForLabel:CNLabelContactRelationStepbrother];
  v1239 = sub_10002DC20();
  v1241 = v1240;

  v1532 = v1239;
  v1533 = v1241;
  sub_10002D1C0();

  v1242 = [v432 localizedStringForLabel:CNLabelContactRelationStepsister];
  v1243 = sub_10002DC20();
  v1245 = v1244;

  v1532 = v1243;
  v1533 = v1245;
  sub_10002D1C0();

  v1246 = [v432 localizedStringForLabel:CNLabelContactRelationMotherInLawOrStepmother];
  v1247 = sub_10002DC20();
  v1249 = v1248;

  v1532 = v1247;
  v1533 = v1249;
  sub_10002D1C0();

  v1250 = [v432 localizedStringForLabel:CNLabelContactRelationFatherInLawOrStepfather];
  v1251 = sub_10002DC20();
  v1253 = v1252;

  v1532 = v1251;
  v1533 = v1253;
  sub_10002D1C0();

  v1254 = [v432 localizedStringForLabel:CNLabelContactRelationDaughterInLawOrStepdaughter];
  v1255 = sub_10002DC20();
  v1257 = v1256;

  v1532 = v1255;
  v1533 = v1257;
  sub_10002D1C0();

  v1258 = [v432 localizedStringForLabel:CNLabelContactRelationSonInLawOrStepson];
  v1259 = sub_10002DC20();
  v1261 = v1260;

  v1532 = v1259;
  v1533 = v1261;
  sub_10002D1C0();

  v1262 = [v432 localizedStringForLabel:CNLabelContactRelationCousinOrSiblingsChild];
  v1263 = sub_10002DC20();
  v1265 = v1264;

  v1532 = v1263;
  v1533 = v1265;
  sub_10002D1C0();

  v1266 = [v432 localizedStringForLabel:CNLabelContactRelationNieceOrCousin];
  v1267 = sub_10002DC20();
  v1269 = v1268;

  v1532 = v1267;
  v1533 = v1269;
  sub_10002D1C0();

  v1270 = [v432 localizedStringForLabel:CNLabelContactRelationNephewOrCousin];
  v1271 = sub_10002DC20();
  v1273 = v1272;

  v1532 = v1271;
  v1533 = v1273;
  sub_10002D1C0();

  v1274 = [v432 localizedStringForLabel:CNLabelContactRelationGrandchildOrSiblingsChild];
  v1275 = sub_10002DC20();
  v1277 = v1276;

  v1532 = v1275;
  v1533 = v1277;
  sub_10002D1C0();

  v1278 = [v432 localizedStringForLabel:CNLabelContactRelationGranddaughterOrNiece];
  v1279 = sub_10002DC20();
  v1281 = v1280;

  v1532 = v1279;
  v1533 = v1281;
  v1282 = v1316;
  sub_10002D1C0();

  v1283 = [v432 localizedStringForLabel:CNLabelContactRelationGrandsonOrNephew];
  v1284 = sub_10002DC20();
  v1286 = v1285;

  v1532 = v1284;
  v1533 = v1286;
  sub_10002D1C0();

  v1287 = [v432 localizedStringForLabel:CNLabelContactRelationGreatGrandchildOrSiblingsGrandchild];
  v1288 = sub_10002DC20();
  v1290 = v1289;

  v1532 = v1288;
  v1533 = v1290;
  sub_10002D1C0();

  v1291 = [v432 localizedStringForLabel:CNLabelContactRelationDaughterInLawOrSisterInLaw];
  v1292 = sub_10002DC20();
  v1294 = v1293;

  v1532 = v1292;
  v1533 = v1294;
  sub_10002D1C0();

  v1295 = [v432 localizedStringForLabel:CNLabelContactRelationSonInLawOrBrotherInLaw];
  v1296 = sub_10002DC20();
  v1298 = v1297;

  v1532 = v1296;
  v1533 = v1298;
  sub_10002D1C0();

  sub_100001A7C(&qword_10003C6F8, &qword_10002F2C8);
  v1299 = *(v1313 + 72);
  v1300 = v1317;
  v1301 = (*(v1317 + 80) + 32) & ~*(v1317 + 80);
  v1302 = swift_allocObject();
  v1314 = v1302;
  *(v1302 + 16) = xmmword_10002F0F0;
  v1303 = v1302 + v1301;
  v1304 = *(v1300 + 16);
  v1304(v1303, v1320, v0);
  v1304(v1303 + v1299, v1319, v0);
  v1304(v1303 + 2 * v1299, v1318, v0);
  v1304(v1303 + 3 * v1299, v1381, v0);
  v1304(v1303 + 4 * v1299, v1380, v0);
  v1304(v1303 + 5 * v1299, v1379, v0);
  v1304(v1303 + 6 * v1299, v1378, v0);
  v1304(v1303 + 7 * v1299, v1377, v0);
  v1304(v1303 + 8 * v1299, v1376, v0);
  v1304(v1303 + 9 * v1299, v1375, v0);
  v1304(v1303 + 10 * v1299, v1367, v0);
  v1304(v1303 + 11 * v1299, v1374, v0);
  v1304(v1303 + 12 * v1299, v1373, v0);
  v1304(v1303 + 13 * v1299, v1372, v0);
  v1304(v1303 + 14 * v1299, v1371, v0);
  v1304(v1303 + 15 * v1299, v1370, v0);
  v1304(v1303 + 16 * v1299, v1369, v0);
  v1304(v1303 + 17 * v1299, v1368, v0);
  v1304(v1303 + 18 * v1299, v1359, v0);
  v1304(v1303 + 19 * v1299, v1366, v0);
  v1304(v1303 + 20 * v1299, v1365, v0);
  v1304(v1303 + 21 * v1299, v1364, v0);
  v1304(v1303 + 22 * v1299, v1363, v0);
  v1304(v1303 + 23 * v1299, v1362, v0);
  v1304(v1303 + 24 * v1299, v1361, v0);
  v1304(v1303 + 25 * v1299, v1360, v0);
  v1304(v1303 + 26 * v1299, v1352, v0);
  v1304(v1303 + 27 * v1299, v1358, v0);
  v1304(v1303 + 28 * v1299, v1357, v0);
  v1304(v1303 + 29 * v1299, v1356, v0);
  v1304(v1303 + 30 * v1299, v1355, v0);
  v1304(v1303 + 31 * v1299, v1354, v0);
  v1304(v1303 + 32 * v1299, v1382, v0);
  v1304(v1303 + 33 * v1299, v1353, v0);
  v1304(v1303 + 34 * v1299, v1383, v0);
  v1304(v1303 + 35 * v1299, v1348, v0);
  v1304(v1303 + 36 * v1299, v1384, v0);
  v1304(v1303 + 37 * v1299, v1351, v0);
  v1304(v1303 + 38 * v1299, v1385, v0);
  v1304(v1303 + 39 * v1299, v1350, v0);
  v1304(v1303 + 40 * v1299, v1386, v0);
  v1304(v1303 + 41 * v1299, v1349, v0);
  v1304(v1303 + 42 * v1299, v1387, v0);
  v1304(v1303 + 43 * v1299, v1344, v0);
  v1304(v1303 + 44 * v1299, v1388, v0);
  v1304(v1303 + 45 * v1299, v1347, v0);
  v1304(v1303 + 46 * v1299, v1389, v0);
  v1304(v1303 + 47 * v1299, v1346, v0);
  v1304(v1303 + 48 * v1299, v1390, v0);
  v1304(v1303 + 49 * v1299, v1345, v0);
  v1304(v1303 + 50 * v1299, v1391, v0);
  v1304(v1303 + 51 * v1299, v1340, v0);
  v1304(v1303 + 52 * v1299, v1392, v0);
  v1304(v1303 + 53 * v1299, v1343, v0);
  v1304(v1303 + 54 * v1299, v1393, v0);
  v1304(v1303 + 55 * v1299, v1342, v0);
  v1304(v1303 + 56 * v1299, v1394, v0);
  v1304(v1303 + 57 * v1299, v1341, v0);
  v1304(v1303 + 58 * v1299, v1395, v0);
  v1304(v1303 + 59 * v1299, v1337, v0);
  v1304(v1303 + 60 * v1299, v1396, v0);
  v1304(v1303 + 61 * v1299, v1339, v0);
  v1304(v1303 + 62 * v1299, v1397, v0);
  v1304(v1303 + 63 * v1299, v1338, v0);
  v1304(v1303 + (v1299 << 6), v1398, v0);
  v1304(v1303 + 65 * v1299, v1399, v0);
  v1304(v1303 + 66 * v1299, v1334, v0);
  v1304(v1303 + 67 * v1299, v1400, v0);
  v1304(v1303 + 68 * v1299, v1401, v0);
  v1304(v1303 + 69 * v1299, v1336, v0);
  v1304(v1303 + 70 * v1299, v1402, v0);
  v1304(v1303 + 71 * v1299, v1403, v0);
  v1304(v1303 + 72 * v1299, v1335, v0);
  v1304(v1303 + 73 * v1299, v1404, v0);
  v1304(v1303 + 74 * v1299, v1405, v0);
  v1304(v1303 + 75 * v1299, v1331, v0);
  v1304(v1303 + 76 * v1299, v1406, v0);
  v1304(v1303 + 77 * v1299, v1407, v0);
  v1304(v1303 + 78 * v1299, v1333, v0);
  v1304(v1303 + 79 * v1299, v1408, v0);
  v1304(v1303 + 80 * v1299, v1409, v0);
  v1304(v1303 + 81 * v1299, v1332, v0);
  v1304(v1303 + 82 * v1299, v1410, v0);
  v1304(v1303 + 83 * v1299, v1411, v0);
  v1304(v1303 + 84 * v1299, v1329, v0);
  v1304(v1303 + 85 * v1299, v1412, v0);
  v1304(v1303 + 86 * v1299, v1413, v0);
  v1304(v1303 + 87 * v1299, v1330, v0);
  v1304(v1303 + 88 * v1299, v1414, v0);
  v1304(v1303 + 89 * v1299, v1415, v0);
  v1304(v1303 + 90 * v1299, v1327, v0);
  v1304(v1303 + 91 * v1299, v1416, v0);
  v1304(v1303 + 92 * v1299, v1417, v0);
  v1304(v1303 + 93 * v1299, v1328, v0);
  v1304(v1303 + 94 * v1299, v1418, v0);
  v1304(v1303 + 95 * v1299, v1419, v0);
  v1304(v1303 + 96 * v1299, v1325, v0);
  v1304(v1303 + 97 * v1299, v1420, v0);
  v1304(v1303 + 98 * v1299, v1421, v0);
  v1304(v1303 + 99 * v1299, v1326, v0);
  v1304(v1303 + 100 * v1299, v1422, v0);
  v1304(v1303 + 101 * v1299, v1423, v0);
  v1304(v1303 + 102 * v1299, v1424, v0);
  v1304(v1303 + 103 * v1299, v849, v0);
  v1304(v1303 + 104 * v1299, v1425, v0);
  v1304(v1303 + 105 * v1299, v1426, v0);
  v1304(v1303 + 106 * v1299, v1427, v0);
  v1304(v1303 + 107 * v1299, v1428, v0);
  v1304(v1303 + 108 * v1299, v1429, v0);
  v1304(v1303 + 109 * v1299, v1430, v0);
  v1304(v1303 + 110 * v1299, v1431, v0);
  v1304(v1303 + 111 * v1299, v1432, v0);
  v1304(v1303 + 112 * v1299, v1433, v0);
  v1304(v1303 + 113 * v1299, v1434, v0);
  v1304(v1303 + 114 * v1299, v1435, v0);
  v1304(v1303 + 115 * v1299, v1436, v0);
  v1304(v1303 + 116 * v1299, v1437, v0);
  v1304(v1303 + 117 * v1299, v1438, v0);
  v1304(v1303 + 118 * v1299, v1439, v0);
  v1304(v1303 + 119 * v1299, v1440, v0);
  v1304(v1303 + 120 * v1299, v1441, v0);
  v1304(v1303 + 121 * v1299, v1442, v0);
  v1304(v1303 + 122 * v1299, v1443, v0);
  v1304(v1303 + 123 * v1299, v1444, v0);
  v1304(v1303 + 124 * v1299, v1445, v0);
  v1304(v1303 + 125 * v1299, v1446, v0);
  v1304(v1303 + 126 * v1299, v1447, v0);
  v1304(v1303 + 127 * v1299, v1448, v0);
  v1304(v1303 + (v1299 << 7), v1449, v0);
  v1304(v1303 + 129 * v1299, v1450, v0);
  v1304(v1303 + 130 * v1299, v1451, v0);
  v1304(v1303 + 131 * v1299, v1452, v0);
  v1304(v1303 + 132 * v1299, v1453, v0);
  v1304(v1303 + 133 * v1299, v1454, v0);
  v1304(v1303 + 134 * v1299, v1455, v0);
  v1304(v1303 + 135 * v1299, v1456, v0);
  v1304(v1303 + 136 * v1299, v1457, v0);
  v1304(v1303 + 137 * v1299, v1458, v0);
  v1304(v1303 + 138 * v1299, v1459, v0);
  v1304(v1303 + 139 * v1299, v1460, v0);
  v1304(v1303 + 140 * v1299, v1461, v0);
  v1304(v1303 + 141 * v1299, v1462, v0);
  v1304(v1303 + 142 * v1299, v1463, v0);
  v1304(v1303 + 143 * v1299, v1464, v0);
  v1304(v1303 + 144 * v1299, v1465, v0);
  v1304(v1303 + 145 * v1299, v1466, v0);
  v1304(v1303 + 146 * v1299, v1467, v0);
  v1304(v1303 + 147 * v1299, v1468, v0);
  v1304(v1303 + 148 * v1299, v1469, v0);
  v1304(v1303 + 149 * v1299, v1470, v0);
  v1304(v1303 + 150 * v1299, v1471, v0);
  v1304(v1303 + 151 * v1299, v1472, v0);
  v1304(v1303 + 152 * v1299, v1473, v0);
  v1304(v1303 + 153 * v1299, v1474, v0);
  v1304(v1303 + 154 * v1299, v1475, v0);
  v1304(v1303 + 155 * v1299, v1476, v0);
  v1304(v1303 + 156 * v1299, v1477, v0);
  v1304(v1303 + 157 * v1299, v1478, v0);
  v1304(v1303 + 158 * v1299, v1479, v0);
  v1304(v1303 + 159 * v1299, v1480, v0);
  v1304(v1303 + 160 * v1299, v1481, v0);
  v1304(v1303 + 161 * v1299, v1482, v0);
  v1304(v1303 + 162 * v1299, v1483, v0);
  v1304(v1303 + 163 * v1299, v1484, v0);
  v1304(v1303 + 164 * v1299, v1485, v0);
  v1304(v1303 + 165 * v1299, v1486, v0);
  v1304(v1303 + 166 * v1299, v1487, v0);
  v1304(v1303 + 167 * v1299, v1488, v0);
  v1304(v1303 + 168 * v1299, v1489, v0);
  v1304(v1303 + 169 * v1299, v1490, v0);
  v1304(v1303 + 170 * v1299, v1491, v0);
  v1304(v1303 + 171 * v1299, v1492, v0);
  v1304(v1303 + 172 * v1299, v1493, v0);
  v1304(v1303 + 173 * v1299, v1494, v0);
  v1304(v1303 + 174 * v1299, v1495, v0);
  v1304(v1303 + 175 * v1299, v1496, v0);
  v1304(v1303 + 176 * v1299, v1497, v0);
  v1304(v1303 + 177 * v1299, v1498, v0);
  v1304(v1303 + 178 * v1299, v1499, v0);
  v1304(v1303 + 179 * v1299, v1500, v0);
  v1304(v1303 + 180 * v1299, v1501, v0);
  v1304(v1303 + 181 * v1299, v1502, v0);
  v1304(v1303 + 182 * v1299, v1503, v0);
  v1304(v1303 + 183 * v1299, v1504, v0);
  v1304(v1303 + 184 * v1299, v1505, v0);
  v1304(v1303 + 185 * v1299, v1506, v0);
  v1304(v1303 + 186 * v1299, v1507, v0);
  v1304(v1303 + 187 * v1299, v1508, v0);
  v1304(v1303 + 188 * v1299, v1509, v0);
  v1304(v1303 + 189 * v1299, v1510, v0);
  v1304(v1303 + 190 * v1299, v1511, v0);
  v1304(v1303 + 191 * v1299, v1512, v0);
  v1304(v1303 + 192 * v1299, v1513, v0);
  v1304(v1303 + 193 * v1299, v1514, v0);
  v1304(v1303 + 194 * v1299, v1515, v0);
  v1304(v1303 + 195 * v1299, v1516, v0);
  v1304(v1303 + 196 * v1299, v1517, v0);
  v1304(v1303 + 197 * v1299, v1518, v0);
  v1304(v1303 + 198 * v1299, v1519, v0);
  v1304(v1303 + 199 * v1299, v1520, v0);
  v1304(v1303 + 200 * v1299, v1521, v0);
  v1304(v1303 + 201 * v1299, v1522, v0);
  v1304(v1303 + 202 * v1299, v1523, v0);
  v1304(v1303 + 203 * v1299, v1524, v0);
  v1304(v1303 + 204 * v1299, v1525, v0);
  v1304(v1303 + 205 * v1299, v1526, v0);
  v1304(v1303 + 206 * v1299, v1527, v0);
  v1304(v1303 + 207 * v1299, v1528, v0);
  v1304(v1303 + 208 * v1299, v1529, v0);
  v1304(v1303 + 209 * v1299, v1530, v0);
  v1304(v1303 + 210 * v1299, v1531, v0);
  v1304(v1303 + 211 * v1299, v1282, v0);
  v1305 = v1321;
  v1304(v1303 + 212 * v1299, v1321, v0);
  v1306 = v1322;
  v1304(v1303 + 213 * v1299, v1322, v0);
  v1307 = v1323;
  v1304(v1303 + 214 * v1299, v1323, v0);
  v1308 = v1303 + 215 * v1299;
  v1309 = v1324;
  v1304(v1308, v1324, v0);
  v1310 = sub_10002D1B0();

  v1311 = *(v1317 + 8);
  v1311(v1309, v0);
  v1311(v1307, v0);
  v1311(v1306, v0);
  v1311(v1305, v0);
  v1311(v1316, v0);
  v1311(v1531, v0);
  v1311(v1530, v0);
  v1311(v1529, v0);
  v1311(v1528, v0);
  v1311(v1527, v0);
  v1311(v1526, v0);
  v1311(v1525, v0);
  v1311(v1524, v0);
  v1311(v1523, v0);
  v1311(v1522, v0);
  v1311(v1521, v0);
  v1311(v1520, v0);
  v1311(v1519, v0);
  v1311(v1518, v0);
  v1311(v1517, v0);
  v1311(v1516, v0);
  v1311(v1515, v0);
  v1311(v1514, v0);
  v1311(v1513, v0);
  v1311(v1512, v0);
  v1311(v1511, v0);
  v1311(v1510, v0);
  v1311(v1509, v0);
  v1311(v1508, v0);
  v1311(v1507, v0);
  v1311(v1506, v0);
  v1311(v1505, v0);
  v1311(v1504, v0);
  v1311(v1503, v0);
  v1311(v1502, v0);
  v1311(v1501, v0);
  v1311(v1500, v0);
  v1311(v1499, v0);
  v1311(v1498, v0);
  v1311(v1497, v0);
  v1311(v1496, v0);
  v1311(v1495, v0);
  v1311(v1494, v0);
  v1311(v1493, v0);
  v1311(v1492, v0);
  v1311(v1491, v0);
  v1311(v1490, v0);
  v1311(v1489, v0);
  v1311(v1488, v0);
  v1311(v1487, v0);
  v1311(v1486, v0);
  v1311(v1485, v0);
  v1311(v1484, v0);
  v1311(v1483, v0);
  v1311(v1482, v0);
  v1311(v1481, v0);
  v1311(v1480, v0);
  v1311(v1479, v0);
  v1311(v1478, v0);
  v1311(v1477, v0);
  v1311(v1476, v0);
  v1311(v1475, v0);
  v1311(v1474, v0);
  v1311(v1473, v0);
  v1311(v1472, v0);
  v1311(v1471, v0);
  v1311(v1470, v0);
  v1311(v1469, v0);
  v1311(v1468, v0);
  v1311(v1467, v0);
  v1311(v1466, v0);
  v1311(v1465, v0);
  v1311(v1464, v0);
  v1311(v1463, v0);
  v1311(v1462, v0);
  v1311(v1461, v0);
  v1311(v1460, v0);
  v1311(v1459, v0);
  v1311(v1458, v0);
  v1311(v1457, v0);
  v1311(v1456, v0);
  v1311(v1455, v0);
  v1311(v1454, v0);
  v1311(v1453, v0);
  v1311(v1452, v0);
  v1311(v1451, v0);
  v1311(v1450, v0);
  v1311(v1449, v0);
  v1311(v1448, v0);
  v1311(v1447, v0);
  v1311(v1446, v0);
  v1311(v1445, v0);
  v1311(v1444, v0);
  v1311(v1443, v0);
  v1311(v1442, v0);
  v1311(v1441, v0);
  v1311(v1440, v0);
  v1311(v1439, v0);
  v1311(v1438, v0);
  v1311(v1437, v0);
  v1311(v1436, v0);
  v1311(v1435, v0);
  v1311(v1434, v0);
  v1311(v1433, v0);
  v1311(v1432, v0);
  v1311(v1431, v0);
  v1311(v1430, v0);
  v1311(v1429, v0);
  v1311(v1428, v0);
  v1311(v1427, v0);
  v1311(v1426, v0);
  v1311(v1425, v0);
  v1311(v1315, v0);
  v1311(v1424, v0);
  v1311(v1423, v0);
  v1311(v1422, v0);
  v1311(v1326, v0);
  v1311(v1421, v0);
  v1311(v1420, v0);
  v1311(v1325, v0);
  v1311(v1419, v0);
  v1311(v1418, v0);
  v1311(v1328, v0);
  v1311(v1417, v0);
  v1311(v1416, v0);
  v1311(v1327, v0);
  v1311(v1415, v0);
  v1311(v1414, v0);
  v1311(v1330, v0);
  v1311(v1413, v0);
  v1311(v1412, v0);
  v1311(v1329, v0);
  v1311(v1411, v0);
  v1311(v1410, v0);
  v1311(v1332, v0);
  v1311(v1409, v0);
  v1311(v1408, v0);
  v1311(v1333, v0);
  v1311(v1407, v0);
  v1311(v1406, v0);
  v1311(v1331, v0);
  v1311(v1405, v0);
  v1311(v1404, v0);
  v1311(v1335, v0);
  v1311(v1403, v0);
  v1311(v1402, v0);
  v1311(v1336, v0);
  v1311(v1401, v0);
  v1311(v1400, v0);
  v1311(v1334, v0);
  v1311(v1399, v0);
  v1311(v1398, v0);
  v1311(v1338, v0);
  v1311(v1397, v0);
  v1311(v1339, v0);
  v1311(v1396, v0);
  v1311(v1337, v0);
  v1311(v1395, v0);
  v1311(v1341, v0);
  v1311(v1394, v0);
  v1311(v1342, v0);
  v1311(v1393, v0);
  v1311(v1343, v0);
  v1311(v1392, v0);
  v1311(v1340, v0);
  v1311(v1391, v0);
  v1311(v1345, v0);
  v1311(v1390, v0);
  v1311(v1346, v0);
  v1311(v1389, v0);
  v1311(v1347, v0);
  v1311(v1388, v0);
  v1311(v1344, v0);
  v1311(v1387, v0);
  v1311(v1349, v0);
  v1311(v1386, v0);
  v1311(v1350, v0);
  v1311(v1385, v0);
  v1311(v1351, v0);
  v1311(v1384, v0);
  v1311(v1348, v0);
  v1311(v1383, v0);
  v1311(v1353, v0);
  v1311(v1382, v0);
  v1311(v1354, v0);
  v1311(v1355, v0);
  v1311(v1356, v0);
  v1311(v1357, v0);
  v1311(v1358, v0);
  v1311(v1352, v0);
  v1311(v1360, v0);
  v1311(v1361, v0);
  v1311(v1362, v0);
  v1311(v1363, v0);
  v1311(v1364, v0);
  v1311(v1365, v0);
  v1311(v1366, v0);
  v1311(v1359, v0);
  v1311(v1368, v0);
  v1311(v1369, v0);
  v1311(v1370, v0);
  v1311(v1371, v0);
  v1311(v1372, v0);
  v1311(v1373, v0);
  v1311(v1374, v0);
  v1311(v1367, v0);
  v1311(v1375, v0);
  v1311(v1376, v0);
  v1311(v1377, v0);
  v1311(v1378, v0);
  v1311(v1379, v0);
  v1311(v1380, v0);
  v1311(v1381, v0);
  v1311(v1318, v0);
  v1311(v1319, v0);
  v1311(v1320, v0);
  return v1310;
}

uint64_t sub_10001AFE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001DD98;

  return sub_100010564();
}

uint64_t sub_10001B078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001DD98;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10001B150(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002D900();

  return sub_1000040D4(a1, a2, v4);
}

uint64_t sub_10001B1AC(uint64_t a1, uint64_t a2)
{
  sub_10002D900();
  v3 = sub_10001E2D4();

  return sub_100001AC4(v3, a2, a2, v4);
}

char *sub_10001B20C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_10001DDC4(a3, result);
  }

  return result;
}

void sub_10001B270(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  sub_10001E1FC();
  if (v9 < v8 || (a4(0), sub_100006D2C(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    v12 = sub_10001DECC();

    _swift_arrayInitWithTakeFrontToBack(v12);
  }

  else if (a3 != v5)
  {
    v11 = sub_10001DECC();

    _swift_arrayInitWithTakeBackToFront(v11);
  }
}

char *sub_10001B32C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return sub_10001DDC4(a3, result);
  }

  return result;
}

char *sub_10001B354(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_10001DDC4(a3, result);
  }

  return result;
}

void sub_10001B388(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_10001E1FC();
  if (v11 < v10 || (sub_100001A7C(a4, a5), sub_100006D2C(), v6 + *(v12 + 72) * v5 <= a3))
  {
    sub_100001A7C(a4, a5);
    v14 = sub_10001DECC();

    _swift_arrayInitWithTakeFrontToBack(v14);
  }

  else if (a3 != v6)
  {
    v13 = sub_10001DECC();

    _swift_arrayInitWithTakeBackToFront(v13);
  }
}

char *sub_10001B458(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_10001DDC4(a3, result);
  }

  return result;
}

uint64_t sub_10001B480(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_10001B498(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001B4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C720, &qword_10002F308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001B54C(uint64_t a1, uint64_t a2)
{
  sub_10002DE40();
  sub_10002DC80();
  v4 = sub_10002DE50();

  return sub_10001B65C(a1, a2, v4);
}

unint64_t sub_10001B5C4(uint64_t a1)
{
  sub_10002D930();
  sub_10000C618(&qword_10003C768, &type metadata accessor for DeviceUser, &protocol conformance descriptor for DeviceUser);
  v2 = sub_10002DBD0();

  return sub_10001B710(a1, v2);
}

unint64_t sub_10001B65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10002DE10() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10001B710(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_10002D930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_10000C618(&qword_10003C770, &type metadata accessor for DeviceUser, &protocol conformance descriptor for DeviceUser);
    v9 = sub_10002DC00();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

BOOL sub_10001B8CC(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_10002DE40();
  sub_10002DC80();
  v8 = sub_10002DE50();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_10002DE10() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_10001BC74(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_10001BA18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001A7C(&qword_10003C778, &qword_10002F358);
  result = sub_10002DD80();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_10001BDDC(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_10002DE40();
    sub_10002DC80();
    result = sub_10002DE50();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_10001BC74(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10001BA18(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10001BF98(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_10002DE40();
      sub_10002DC80();
      result = sub_10002DE50();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_10002DE10() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_10001BE40();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_10002DE20();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_10001BDDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10002F100;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_10001BE40()
{
  v1 = v0;
  sub_100001A7C(&qword_10003C778, &qword_10002F358);
  v2 = *v0;
  v3 = sub_10002DD70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10001BF98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001A7C(&qword_10003C778, &qword_10002F358);
  result = sub_10002DD80();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_10002DE40();

        sub_10002DC80();
        result = sub_10002DE50();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10001C1CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10002D930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100001A7C(&qword_10003C760, &qword_10002F338);
  v39 = v4;
  result = sub_10002DDE0();
  v11 = result;
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v11;
    return result;
  }

  v43 = v8;
  v35 = v2;
  v12 = 0;
  v13 = (v9 + 64);
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v9 + 64);
  v17 = (v14 + 63) >> 6;
  v36 = (v6 + 16);
  v37 = v9;
  v38 = v6;
  v40 = (v6 + 32);
  v18 = result + 64;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      sub_10001BDDC(0, (v33 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v12 << 6);
    v23 = *(v9 + 48);
    v42 = *(v38 + 72);
    v24 = v23 + v42 * v22;
    if (v39)
    {
      (*v40)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    else
    {
      (*v36)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    sub_10000C618(&qword_10003C768, &type metadata accessor for DeviceUser, &protocol conformance descriptor for DeviceUser);
    result = sub_10002DBD0();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = (*v40)(*(v11 + 48) + v42 * v28, v43, v5);
    *(*(v11 + 56) + 8 * v28) = v41;
    ++*(v11 + 16);
    v9 = v37;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v18 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

Swift::Int sub_10001C5A4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10001D9B4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10001C718(v5);
  *a1 = v2;
  return result;
}

void *sub_10001C610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_100023664(*(a1 + 16), 0);
  v4 = sub_10001D858(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_10001DA58(v5);
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10001C6CC(void *a1)
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

Swift::Int sub_10001C718(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10002DE00(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = sub_10002DCE0();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_10001C96C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10001C80C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10001C80C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 16 * a3);
    v6 = result - a3;
    while (2)
    {
      v19 = a3;
      v7 = (v4 + 16 * a3);
      v8 = *v7;
      v9 = v7[1];
      v17 = v6;
      v18 = v5;
      do
      {
        v10 = *(v5 - 2);
        if (v8 != 0x636976654420794DLL || v9 != 0xEA00000000007365)
        {
          v12 = *(v5 - 1);
          result = sub_10002DE10();
          if ((result & 1) == 0)
          {
            if (v10 == 0x636976654420794DLL && v12 == 0xEA00000000007365)
            {
              break;
            }

            result = sub_10002DE10();
            if (result)
            {
              break;
            }

            if (v8 == v10 && v9 == v12)
            {
              break;
            }

            result = sub_10002DE10();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v8 = *v5;
        v9 = v5[1];
        *v5 = *(v5 - 1);
        *(v5 - 1) = v9;
        *(v5 - 2) = v8;
        v5 -= 2;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v19 + 1;
      v5 = v18 + 2;
      v6 = v17 - 1;
      if (v19 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10001C96C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v118 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 < 1)
  {
    goto LABEL_142;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v109 = a4;
  do
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_59;
    }

    v105 = v5;
    v11 = (*a3 + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*a3 + 16 * v7);
    v15 = *v11 == 0x636976654420794DLL && v13 == 0xEA00000000007365;
    v114 = v6;
    if (!v15)
    {
      v16 = v7;
      v17 = *v14;
      v18 = v14[1];
      if (sub_10002DE10())
      {
        v19 = 1;
      }

      else
      {
        if (v17 != 0x636976654420794DLL || v18 != 0xEA00000000007365)
        {
          v9 = v16;
          if ((sub_10002DE10() & 1) != 0 || (v12 == v17 ? (v21 = v13 == v18) : (v21 = 0), v21))
          {
            v19 = 0;
          }

          else
          {
            v19 = sub_10002DE10();
          }

          goto LABEL_24;
        }

        v19 = 0;
      }

      v9 = v16;
LABEL_24:
      v6 = v114;
      goto LABEL_25;
    }

    v19 = 1;
LABEL_25:
    v10 = v9 + 2;
    v107 = v9;
    v22 = 16 * v9;
    v23 = v14 + 5;
    while (v10 < v6)
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      v26 = v24 == 0x636976654420794DLL && v25 == 0xEA00000000007365;
      if (v26 || (v27 = *(v23 - 3), v28 = *(v23 - 2), v29 = sub_10002DE10(), v6 = v114, (v29 & 1) != 0))
      {
        if ((v19 & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_47;
      }

      if (v27 != 0x636976654420794DLL || v28 != 0xEA00000000007365)
      {
        if ((sub_10002DE10() & 1) == 0 && (v24 != v27 || v25 != v28))
        {
          v32 = sub_10002DE10();
          v6 = v114;
          if ((v19 & 1) != (v32 & 1))
          {
            break;
          }

          goto LABEL_47;
        }

        v6 = v114;
      }

      if (v19)
      {
        goto LABEL_49;
      }

LABEL_47:
      ++v10;
      v23 += 2;
    }

    if ((v19 & 1) == 0)
    {
LABEL_57:
      a4 = v109;
      v5 = v105;
      goto LABEL_58;
    }

LABEL_49:
    v33 = v107;
    if (v10 < v107)
    {
      goto LABEL_165;
    }

    if (v107 >= v10)
    {
      a4 = v109;
      v5 = v105;
      v9 = v107;
    }

    else
    {
      v34 = 16 * v10;
      v35 = v10;
      v5 = v105;
      do
      {
        if (v33 != --v35)
        {
          v36 = *a3;
          if (!*a3)
          {
            goto LABEL_168;
          }

          v37 = (v36 + v22);
          v38 = v36 + v34;
          v39 = *v37;
          v40 = v37[1];
          *v37 = *(v38 - 16);
          *(v38 - 16) = v39;
          *(v38 - 8) = v40;
        }

        ++v33;
        v34 -= 16;
        v22 += 16;
      }

      while (v33 < v35);
      a4 = v109;
LABEL_58:
      v9 = v107;
    }

LABEL_59:
    v41 = a3[1];
    if (v10 < v41)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_162;
      }

      if (v10 - v9 < a4)
      {
        v42 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_163;
        }

        if (v42 >= v41)
        {
          v42 = a3[1];
        }

        if (v42 >= v9)
        {
          if (v10 != v42)
          {
            v104 = v8;
            v106 = v5;
            v43 = *a3;
            v44 = *a3 + 16 * v10;
            v108 = v9;
            v45 = v9 - v10;
            v111 = v42;
            do
            {
              v112 = v44;
              v115 = v10;
              v46 = (v43 + 16 * v10);
              v47 = *v46;
              v48 = v46[1];
              v49 = v45;
              v50 = v44;
              do
              {
                v51 = *(v50 - 2);
                if (v47 != 0x636976654420794DLL || v48 != 0xEA00000000007365)
                {
                  v53 = *(v50 - 1);
                  if ((sub_10002DE10() & 1) == 0)
                  {
                    v54 = v51 == 0x636976654420794DLL && v53 == 0xEA00000000007365;
                    if (v54 || (sub_10002DE10() & 1) != 0)
                    {
                      break;
                    }

                    v55 = v47 == v51 && v48 == v53;
                    if (v55 || (sub_10002DE10() & 1) == 0)
                    {
                      break;
                    }
                  }
                }

                if (!v43)
                {
                  goto LABEL_166;
                }

                v47 = *v50;
                v48 = v50[1];
                *v50 = *(v50 - 1);
                *(v50 - 1) = v48;
                *(v50 - 2) = v47;
                v50 -= 2;
              }

              while (!__CFADD__(v49++, 1));
              v10 = v115 + 1;
              v44 = v112 + 16;
              --v45;
            }

            while (v115 + 1 != v111);
            v10 = v111;
            v8 = v104;
            v5 = v106;
            v9 = v108;
          }

          goto LABEL_89;
        }

LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        return;
      }
    }

LABEL_89:
    if (v10 < v9)
    {
      goto LABEL_161;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100022FE4();
      v8 = v102;
    }

    v57 = v8[2];
    v58 = v57 + 1;
    if (v57 >= v8[3] >> 1)
    {
      sub_100022FE4();
      v8 = v103;
    }

    v8[2] = v58;
    v59 = v8 + 4;
    v60 = &v8[2 * v57 + 4];
    *v60 = v9;
    v60[1] = v10;
    v113 = *result;
    if (!*result)
    {
      goto LABEL_169;
    }

    v116 = v10;
    if (v57)
    {
      while (2)
      {
        v61 = v58 - 1;
        v62 = &v59[2 * v58 - 2];
        v63 = &v8[2 * v58];
        if (v58 >= 4)
        {
          v68 = &v59[2 * v58];
          v69 = *(v68 - 8);
          v70 = *(v68 - 7);
          v74 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          if (v74)
          {
            goto LABEL_149;
          }

          v73 = *(v68 - 6);
          v72 = *(v68 - 5);
          v74 = __OFSUB__(v72, v73);
          v66 = v72 - v73;
          v67 = v74;
          if (v74)
          {
            goto LABEL_150;
          }

          v75 = v63[1];
          v76 = v75 - *v63;
          if (__OFSUB__(v75, *v63))
          {
            goto LABEL_152;
          }

          v74 = __OFADD__(v66, v76);
          v77 = v66 + v76;
          if (v74)
          {
            goto LABEL_155;
          }

          if (v77 >= v71)
          {
            v91 = *v62;
            v90 = v62[1];
            v74 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v74)
            {
              goto LABEL_160;
            }

            if (v66 < v92)
            {
              v61 = v58 - 2;
            }
          }

          else
          {
LABEL_109:
            if (v67)
            {
              goto LABEL_151;
            }

            v79 = *v63;
            v78 = v63[1];
            v80 = __OFSUB__(v78, v79);
            v81 = v78 - v79;
            v82 = v80;
            if (v80)
            {
              goto LABEL_154;
            }

            v83 = v62[1];
            v84 = v83 - *v62;
            if (__OFSUB__(v83, *v62))
            {
              goto LABEL_157;
            }

            if (__OFADD__(v81, v84))
            {
              goto LABEL_159;
            }

            if (v81 + v84 < v66)
            {
              goto LABEL_124;
            }

            if (v66 < v84)
            {
              v61 = v58 - 2;
            }
          }
        }

        else
        {
          if (v58 == 3)
          {
            v64 = v8[4];
            v65 = v8[5];
            v74 = __OFSUB__(v65, v64);
            v66 = v65 - v64;
            v67 = v74;
            goto LABEL_109;
          }

          if (v58 < 2)
          {
            goto LABEL_153;
          }

          v86 = *v63;
          v85 = v63[1];
          v74 = __OFSUB__(v85, v86);
          v81 = v85 - v86;
          v82 = v74;
LABEL_124:
          if (v82)
          {
            goto LABEL_156;
          }

          v88 = *v62;
          v87 = v62[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_158;
          }

          if (v89 < v81)
          {
            break;
          }
        }

        if (v61 - 1 >= v58)
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*a3)
        {
          goto LABEL_167;
        }

        v93 = v8;
        v94 = &v59[2 * v61 - 2];
        v95 = *v94;
        v96 = v59;
        v97 = v61;
        v98 = &v59[2 * v61];
        v99 = v98[1];
        sub_10001D220((*a3 + 16 * *v94), (*a3 + 16 * *v98), (*a3 + 16 * v99), v113);
        if (v5)
        {
          goto LABEL_144;
        }

        if (v99 < v95)
        {
          goto LABEL_146;
        }

        v100 = v93[2];
        if (v97 > v100)
        {
          goto LABEL_147;
        }

        *v94 = v95;
        v94[1] = v99;
        if (v97 >= v100)
        {
          goto LABEL_148;
        }

        v101 = v97;
        v58 = v100 - 1;
        memmove(v98, v98 + 2, 16 * (v100 - 1 - v101));
        v8 = v93;
        v93[2] = v100 - 1;
        v59 = v96;
        if (v100 <= 2)
        {
          break;
        }

        continue;
      }
    }

    v7 = v116;
    v6 = a3[1];
    a4 = v109;
  }

  while (v116 < v6);
  v118 = v8;
LABEL_142:
  if (!*result)
  {
    goto LABEL_170;
  }

  sub_10001D0F4(&v118, *result, a3);
LABEL_144:
}

uint64_t sub_10001D0F4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_10001D5C0(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_10001D220((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_10001D220(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = __dst;
  v6 = __src;
  v7 = (__dst - __src) / 16;
  v8 = (a3 - __dst) / 16;
  v9 = a3;
  if (v7 < v8)
  {
    if (a4 != __src || &__src[16 * v7] <= a4)
    {
      memmove(a4, __src, 16 * v7);
      a3 = v9;
    }

    v11 = &v4[16 * v7];
    while (1)
    {
      if (v4 >= v11 || v5 >= a3)
      {
        v25 = v6;
        goto LABEL_66;
      }

      v13 = *v5;
      v14 = *(v5 + 1);
      v15 = *v5 == 0x636976654420794DLL && v14 == 0xEA00000000007365;
      if (v15)
      {
        break;
      }

      v17 = *v4;
      v16 = *(v4 + 1);
      v18 = sub_10002DE10();
      a3 = v9;
      if (v18)
      {
        break;
      }

      if (v17 != 0x636976654420794DLL || v16 != 0xEA00000000007365)
      {
        v21 = sub_10002DE10();
        a3 = v9;
        if ((v21 & 1) == 0 && (v13 != v17 || v14 != v16))
        {
          v23 = sub_10002DE10();
          a3 = v9;
          if (v23)
          {
            break;
          }
        }
      }

      v19 = v4;
      v15 = v6 == v4;
      v4 += 16;
      if (!v15)
      {
        goto LABEL_18;
      }

LABEL_19:
      v6 += 16;
    }

    v19 = v5;
    v15 = v6 == v5;
    v5 += 16;
    if (v15)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v6 = *v19;
    goto LABEL_19;
  }

  if (a4 != __dst || &__dst[16 * v8] <= a4)
  {
    memmove(a4, __dst, 16 * v8);
    a3 = v9;
  }

  v11 = &v4[16 * v8];
  v46 = v6;
LABEL_39:
  v25 = v5;
  v26 = a3 - 16;
  v45 = v5 - 16;
  while (v11 > v4 && v25 > v6)
  {
    v28 = v26;
    v29 = v4;
    v30 = v11;
    v31 = *(v11 - 2);
    v32 = *(v11 - 1);
    v11 -= 16;
    v33 = v31 == 0x636976654420794DLL && v32 == 0xEA00000000007365;
    if (v33 || (v34 = *(v25 - 2), v35 = *(v25 - 1), v36 = v25, v37 = sub_10002DE10(), v25 = v36, (v37 & 1) != 0) || (v34 == 0x636976654420794DLL ? (v38 = v35 == 0xEA00000000007365) : (v38 = 0), !v38 && (v39 = sub_10002DE10(), v25 = v36, (v39 & 1) == 0) && (v31 == v34 ? (v40 = v32 == v35) : (v40 = 0), !v40 && (v41 = sub_10002DE10(), v25 = v36, (v41 & 1) != 0))))
    {
      a3 = v28;
      v15 = v28 + 16 == v25;
      v4 = v29;
      v6 = v46;
      v5 = v45;
      v11 = v30;
      if (!v15)
      {
        *a3 = *v45;
      }

      goto LABEL_39;
    }

    if (v30 != v28 + 16)
    {
      *v28 = *v11;
    }

    v26 = v28 - 16;
    v4 = v29;
    v6 = v46;
  }

LABEL_66:
  v42 = (v11 - v4) / 16;
  if (v25 != v4 || v25 >= &v4[16 * v42])
  {
    memmove(v25, v4, 16 * v42);
  }

  return 1;
}

char *sub_10001D5D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A7C(&qword_10003C750, &qword_10002F328);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_10001D6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(type metadata accessor for DeviceActivityDeviceAppEntity(0) - 8);
  v11 = *(v10 + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v14 = v13 + v11 * a1;
  swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v14 + v11 * a3;
  if (v15)
  {
    v17 = *(v9 + 16);
    if (!__OFSUB__(v17, a2))
    {
      sub_10001B270(v13 + v11 * a2, v17 - a2, v14 + v11 * a3, type metadata accessor for DeviceActivityDeviceAppEntity);
      v18 = *(v9 + 16);
      v19 = __OFADD__(v18, v15);
      v20 = v18 + v15;
      if (!v19)
      {
        *(v9 + 16) = v20;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v11 * a3 < 1)
  {
LABEL_14:
    sub_100006BA4(a4, &qword_10003C718, &qword_10002F300);
    return;
  }

  v22 = 0;
  while ((v22 & 1) == 0)
  {
    sub_10001DABC();
    v14 += v11;
    v22 = 1;
    if (v14 >= v16)
    {
      goto LABEL_14;
    }
  }

LABEL_19:
  __break(1u);
}

void *sub_10001D858(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001DA08(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10001DA64()
{
  sub_10001E1FC();
  sub_100001A7C(v1, v2);
  sub_100006D2C();
  v3 = sub_10001DF8C();
  v4(v3);
  return v0;
}

uint64_t sub_10001DABC()
{
  sub_10001E1FC();
  v1(0);
  sub_100006D2C();
  v2 = sub_10001DF8C();
  v3(v2);
  return v0;
}

uint64_t sub_10001DB14()
{
  sub_10001E1FC();
  v1(0);
  sub_100006D2C();
  v2 = sub_10001DF8C();
  v3(v2);
  return v0;
}

uint64_t sub_10001DB6C(uint64_t a1)
{
  v2 = type metadata accessor for AppUsageResultEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001DBC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DC38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001DC4C(a1, a2);
  }

  return a1;
}

uint64_t sub_10001DC4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10001DCEC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001DD28(uint64_t a1)
{
  result = sub_10002D900();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001DDD4@<X0>(uint64_t a1@<X8>)
{
  v1[53] = a1;
  v1[54] = v2;
  v3 = v1[38];
  v1[55] = (v1[36] + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v3;
}

uint64_t sub_10001DEE0()
{

  return sub_10001DA64();
}