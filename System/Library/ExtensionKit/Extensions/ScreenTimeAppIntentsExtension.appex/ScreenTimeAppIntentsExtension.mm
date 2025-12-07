void sub_100001670(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v11 = 0;
  v5 = [objc_opt_self() fetchScreenTimeSettingsInContext:a1 error:&v11];
  if (v5)
  {
    v6 = v5;
    v7 = v11;
    v8 = [v6 screenTimeEnabled];

    *a2 = v8;
  }

  else
  {
    v9 = v11;
    v10 = sub_1000132BC();

    swift_willThrow();
    *a3 = v10;
  }
}

void sub_10000175C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

BOOL sub_1000017C4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100001828()
{
  v8 = 0;
  v0 = [objc_opt_self() sharedController];
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  *(v1 + 24) = &v7;
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = sub_1000019E8;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1000019F0;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000175C;
  aBlock[3] = &unk_10001D248;
  v4 = _Block_copy(aBlock);

  [v0 performBackgroundTaskAndWait:v4];

  _Block_release(v4);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    if (v7)
    {
      swift_willThrow();
    }

    else
    {
      v3 = v8;
    }

    return v3 & 1;
  }

  return result;
}

uint64_t sub_100001A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata accessor for STActivityMode()
{
  if (!qword_1000200C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000200C0);
    }
  }
}

uint64_t sub_100001A84()
{
  v0 = sub_100012F9C();
  sub_100001AE8(v0, qword_100020840);
  sub_100001B4C(v0, qword_100020840);
  return sub_100012F7C();
}

uint64_t *sub_100001AE8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100001B4C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001BB0@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_1000135BC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001F60(&qword_1000200C8, &unk_100014AA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_100001F60(&qword_1000200D0, &qword_100013D30);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  *v10 = sub_10001357C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_10001356C();
  sub_10001331C();
  v11 = sub_10001332C();
  result = (*(*(v11 - 8) + 48))(v7, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100001F60(&qword_1000200D8, &qword_100013D38);
    sub_1000135EC();
    sub_1000135AC();
    sub_100002378(&qword_1000200E0, &qword_1000200D0, &qword_100013D30, &protocol conformance descriptor for VStack<A>);
    sub_100001FF0();
    v13 = v20;
    sub_10001363C();
    (*(v2 + 8))(v4, v1);
    sub_100002048(v10);
    v14 = (v13 + *(sub_100001F60(&qword_1000200F0, &qword_100013D40) + 36));
    v15 = *(sub_100001F60(&qword_1000200F8, &qword_100013D48) + 28);
    v16 = enum case for ControlSize.large(_:);
    v17 = sub_10001353C();
    (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
    *v14 = swift_getKeyPath();
    LOBYTE(v16) = sub_1000135CC();
    result = sub_100001F60(&qword_100020100, &unk_100013D80);
    v18 = v13 + *(result + 36);
    *v18 = v16;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 1;
  }

  return result;
}

uint64_t sub_100001F60(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001FA8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001FF0()
{
  result = qword_1000200E8;
  if (!qword_1000200E8)
  {
    sub_1000135BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000200E8);
  }

  return result;
}

uint64_t sub_100002048(uint64_t a1)
{
  v2 = sub_100001F60(&qword_1000200D0, &qword_100013D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000020D4(uint64_t a1)
{
  v2 = sub_10001353C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10001355C();
}

unint64_t sub_1000021A4()
{
  result = qword_100020108;
  if (!qword_100020108)
  {
    sub_100001FA8(&qword_100020100, &unk_100013D80);
    sub_100002230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020108);
  }

  return result;
}

unint64_t sub_100002230()
{
  result = qword_100020110;
  if (!qword_100020110)
  {
    sub_100001FA8(&qword_1000200F0, &qword_100013D40);
    sub_100001FA8(&qword_1000200D0, &qword_100013D30);
    sub_1000135BC();
    sub_100002378(&qword_1000200E0, &qword_1000200D0, &qword_100013D30, &protocol conformance descriptor for VStack<A>);
    sub_100001FF0();
    swift_getOpaqueTypeConformance2();
    sub_100002378(&qword_100020118, &qword_1000200F8, &qword_100013D48, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020110);
  }

  return result;
}

uint64_t sub_100002378(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001FA8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000023C0()
{
  v0 = sub_100001F60(&qword_1000201C8, &qword_100014120);
  sub_100001AE8(v0, qword_100020858);
  sub_100001B4C(v0, qword_100020858);
  sub_100001F60(&qword_1000201D0, &qword_100014128);
  v1 = *(sub_100001F60(&qword_1000201D8, &unk_100014130) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100013D90;
  v5 = v4 + v3;
  *(v4 + v3) = 0;
  sub_100002B3C();
  sub_10001315C();
  *(v5 + v2) = 1;
  sub_10001315C();
  *(v5 + 2 * v2) = 2;
  sub_10001315C();
  *(v5 + 3 * v2) = 3;
  sub_10001315C();
  *(v5 + 4 * v2) = 4;
  sub_10001315C();
  *(v5 + 5 * v2) = 5;
  sub_10001315C();
  *(v5 + 6 * v2) = 6;
  sub_10001315C();
  *(v5 + 7 * v2) = 7;
  sub_10001315C();
  *(v5 + 8 * v2) = 8;
  sub_10001315C();
  sub_10000CC8C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_10001316C();
}

uint64_t sub_100002730()
{
  v0 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000132FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10001323C();
  sub_100001AE8(v5, qword_100020870);
  sub_100001B4C(v5, qword_100020870);
  sub_1000132CC();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10001322C();
}

unint64_t sub_1000028A4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1953460082;
    v6 = 0x74696D694C707061;
    if (a1 != 2)
    {
      v6 = 0xD000000000000013;
    }

    if (a1)
    {
      v5 = 0x6C41737961776C61;
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
    v1 = 0x656D69746E776F64;
    v2 = 0x69446E6565726373;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001DLL;
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

unint64_t sub_1000029F4()
{
  result = qword_100020120;
  if (!qword_100020120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020120);
  }

  return result;
}

Swift::Int sub_100002A48()
{
  v1 = *v0;
  sub_10001382C();
  sub_10000B6A0(v3, v1);
  return sub_10001384C();
}

Swift::Int sub_100002A98(uint64_t a1)
{
  v2 = *v1;
  sub_10001382C();
  sub_10000B6A0(v4, v2);
  return sub_10001384C();
}

unint64_t sub_100002ADC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100004A3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100002B0C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000028A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100002B3C()
{
  result = qword_100020128;
  if (!qword_100020128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020128);
  }

  return result;
}

unint64_t sub_100002B94()
{
  result = qword_100020130;
  if (!qword_100020130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020130);
  }

  return result;
}

uint64_t sub_100002BE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = sub_100001F60(&qword_1000201C8, &qword_100014120);
  v3 = sub_100001B4C(v2, qword_100020858);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100002CA0()
{
  result = qword_100020138;
  if (!qword_100020138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020138);
  }

  return result;
}

unint64_t sub_100002CF8()
{
  result = qword_100020140;
  if (!qword_100020140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020140);
  }

  return result;
}

unint64_t sub_100002D50()
{
  result = qword_100020148;
  if (!qword_100020148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020148);
  }

  return result;
}

uint64_t sub_100002DB0(uint64_t a1)
{
  sub_1000049E8();
  v2 = sub_10001308C();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100002E20()
{
  result = qword_100020150;
  if (!qword_100020150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020150);
  }

  return result;
}

unint64_t sub_100002E78()
{
  result = qword_100020158;
  if (!qword_100020158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020158);
  }

  return result;
}

unint64_t sub_100002ED0()
{
  result = qword_100020160;
  if (!qword_100020160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020160);
  }

  return result;
}

unint64_t sub_100002F28()
{
  result = qword_100020168;
  if (!qword_100020168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020168);
  }

  return result;
}

uint64_t sub_100002F80@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020068 != -1)
  {
    swift_once();
  }

  v2 = sub_10001323C();
  v3 = sub_100001B4C(v2, qword_100020870);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003078(uint64_t a1)
{
  v2 = sub_100002B3C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000030C8()
{
  result = qword_100020170;
  if (!qword_100020170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020170);
  }

  return result;
}

unint64_t sub_100003120()
{
  result = qword_100020178;
  if (!qword_100020178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020178);
  }

  return result;
}

unint64_t sub_100003178()
{
  result = qword_100020180;
  if (!qword_100020180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020180);
  }

  return result;
}

uint64_t sub_1000031D0(uint64_t a1)
{
  v2 = sub_100002F28();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003220()
{
  result = qword_100020188;
  if (!qword_100020188)
  {
    sub_100001FA8(&qword_100020190, &qword_100014080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenTimeDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenTimeDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100003408()
{
  v96 = sub_1000132DC();
  v104 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v69 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10001336C();
  __chkstk_darwin(v1 - 8);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000136FC();
  __chkstk_darwin(v4 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001F60(&qword_100020198, &unk_1000147E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v69 - v8;
  v10 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v10 - 8);
  v12 = &v69 - v11;
  v13 = sub_1000132FC();
  v89 = v13;
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v102 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v101 = &v69 - v17;
  sub_100001F60(&qword_1000201A8, &qword_100014108);
  v18 = sub_100001F60(&qword_1000201B0, &unk_100014110);
  v86 = v18;
  v19 = *(v18 - 8);
  v90 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v77 = 8 * v90;
  v21 = swift_allocObject();
  v74 = v21;
  *(v21 + 16) = xmmword_100013D90;
  v22 = (v21 + v20);
  *&v81 = *(v18 + 48);
  *v22 = 0;
  sub_1000132CC();
  v23 = *(v14 + 56);
  v14 += 56;
  v98 = v23;
  v23(v12, 1, 1, v13);
  v76 = "prefs:root=SCREEN_TIME";
  v83 = v9;
  sub_10001310C();
  v82 = sub_10001311C();
  v24 = *(v82 - 8);
  v85 = *(v24 + 56);
  v87 = v24 + 56;
  v85(v9, 0, 1, v82);
  v97 = sub_100001F60(&qword_1000201B8, &unk_1000147F0);
  v25 = *(v14 + 16);
  v26 = *(v14 + 24);
  v80 = v14;
  v91 = v26;
  v27 = (v26 + 32) & ~v26;
  v78 = v27 + 2 * v25;
  v88 = v25;
  v103 = v27;
  v28 = swift_allocObject();
  v79 = xmmword_100013DA0;
  *(v28 + 16) = xmmword_100013DA0;
  sub_1000132CC();
  v75 = 0xD000000000000014;
  sub_1000132CC();
  v100 = v6;
  sub_1000136AC();
  v93 = v3;
  sub_10001335C();
  v95 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v29 = *(v104 + 104);
  v104 += 104;
  v99 = v29;
  v30 = v96;
  v29(v94);
  sub_10001330C();
  v84 = v22;
  v31 = v83;
  sub_10001312C();
  v73 = &v22[v90];
  v32 = v86;
  *&v81 = *(v86 + 48);
  *v73 = 1;
  sub_1000132CC();
  v92 = v12;
  sub_1000132CC();
  v33 = v12;
  v34 = v89;
  v35 = v98;
  v98(v33, 0, 1, v89);
  sub_10001310C();
  v36 = v82;
  v85(v31, 0, 1, v82);
  *(swift_allocObject() + 16) = v79;
  sub_1000132CC();
  sub_1000132CC();
  sub_1000136AC();
  sub_10001335C();
  v99(v94, v95, v30);
  sub_10001330C();
  v37 = v92;
  v38 = v83;
  sub_10001312C();
  *&v81 = 2 * v90;
  v39 = v84;
  v71 = &v84[2 * v90];
  v72 = *(v32 + 48);
  *v71 = 2;
  sub_1000132CC();
  sub_1000132CC();
  v35(v37, 0, 1, v34);
  sub_10001310C();
  v40 = v38;
  v85(v38, 0, 1, v36);
  *(swift_allocObject() + 16) = v79;
  sub_1000132CC();
  v73 = 0xD00000000000001FLL;
  sub_1000132CC();
  sub_1000136AC();
  sub_10001335C();
  v41 = v95;
  v99(v94, v95, v96);
  sub_10001330C();
  v42 = v92;
  sub_10001312C();
  v71 = &v39[v81 + v90];
  v43 = v86;
  v72 = *(v86 + 48);
  *v71 = 3;
  sub_1000132CC();
  sub_1000132CC();
  v98(v42, 0, 1, v89);
  sub_10001310C();
  v44 = v85;
  v85(v40, 0, 1, v82);
  v45 = swift_allocObject();
  v81 = xmmword_100013DB0;
  *(v45 + 16) = xmmword_100013DB0;
  sub_1000132CC();
  sub_1000136AC();
  sub_10001335C();
  v46 = v99;
  v99(v94, v41, v96);
  sub_10001330C();
  v47 = v92;
  v48 = v83;
  sub_10001312C();
  v49 = v90;
  v72 = 4 * v90;
  v70 = &v84[4 * v90];
  v71 = *(v43 + 48);
  *v70 = 4;
  sub_1000132CC();
  sub_1000132CC();
  v98(v47, 0, 1, v89);
  sub_10001310C();
  v50 = v82;
  v44(v48, 0, 1, v82);
  *(swift_allocObject() + 16) = v81;
  sub_1000132CC();
  sub_1000136AC();
  sub_10001335C();
  v46(v94, v95, v96);
  sub_10001330C();
  v51 = v92;
  v52 = v83;
  sub_10001312C();
  v75 = *(v86 + 48);
  v84[v72 + v49] = 5;
  sub_1000132CC();
  sub_1000132CC();
  v53 = v89;
  v98(v51, 0, 1, v89);
  sub_10001310C();
  v54 = v50;
  v55 = v85;
  v85(v52, 0, 1, v54);
  *(swift_allocObject() + 16) = v81;
  sub_1000132CC();
  sub_1000136AC();
  sub_10001335C();
  v56 = v94;
  v57 = v96;
  v99(v94, v95, v96);
  sub_10001330C();
  v58 = v92;
  v59 = v83;
  sub_10001312C();
  v72 = &v84[6 * v90];
  v75 = *(v86 + 48);
  *v72 = 6;
  sub_1000132CC();
  sub_1000132CC();
  v98(v58, 0, 1, v53);
  sub_10001310C();
  v60 = v82;
  v55(v59, 0, 1, v82);
  *(swift_allocObject() + 16) = v81;
  sub_1000132CC();
  sub_1000136AC();
  sub_10001335C();
  v99(v56, v95, v57);
  sub_10001330C();
  v61 = v92;
  v62 = v83;
  sub_10001312C();
  v63 = v84;
  v75 = &v84[v77 - v90];
  v64 = v86;
  v90 = *(v86 + 48);
  *v75 = 7;
  sub_1000132CC();
  sub_1000132CC();
  v98(v61, 0, 1, v89);
  sub_10001310C();
  v85(v62, 0, 1, v60);
  *(swift_allocObject() + 16) = v79;
  sub_1000132CC();
  sub_1000132CC();
  sub_1000136AC();
  sub_10001335C();
  v65 = v94;
  v99(v94, v95, v96);
  sub_10001330C();
  v66 = v92;
  sub_10001312C();
  v90 = *(v64 + 48);
  v63[v77] = 8;
  sub_1000132CC();
  sub_1000132CC();
  v98(v66, 0, 1, v89);
  sub_10001310C();
  v85(v62, 0, 1, v82);
  *(swift_allocObject() + 16) = v81;
  sub_1000132CC();
  sub_1000136AC();
  sub_10001335C();
  v99(v65, v95, v96);
  sub_10001330C();
  sub_10001312C();
  v67 = sub_10000CE80(v74);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v67;
}

unint64_t sub_1000049E8()
{
  result = qword_1000201C0;
  if (!qword_1000201C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201C0);
  }

  return result;
}

unint64_t sub_100004A3C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CFE0;
  v6._object = a2;
  v4 = sub_1000137CC(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100004A94()
{
  result = qword_1000201F0;
  if (!qword_1000201F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201F0);
  }

  return result;
}

uint64_t sub_100004AE8()
{
  v0 = sub_1000132FC();
  sub_100001AE8(v0, qword_100020888);
  sub_100001B4C(v0, qword_100020888);
  return sub_1000132CC();
}

void *sub_100004B4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001304C();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100004BC0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10001303C();
  return sub_100004C34;
}

void sub_100004C34(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100004C84()
{
  result = qword_1000201F8;
  if (!qword_1000201F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201F8);
  }

  return result;
}

uint64_t sub_100004CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005684();
  v5 = sub_1000049E8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100004D44()
{
  v0 = qword_1000201E0;

  return v0;
}

unint64_t sub_100004D84()
{
  result = qword_100020200;
  if (!qword_100020200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020200);
  }

  return result;
}

unint64_t sub_100004DDC()
{
  result = qword_100020208;
  if (!qword_100020208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020208);
  }

  return result;
}

unint64_t sub_100004E34()
{
  result = qword_100020210;
  if (!qword_100020210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020210);
  }

  return result;
}

uint64_t sub_100004ED8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020070 != -1)
  {
    swift_once();
  }

  v2 = sub_1000132FC();
  v3 = sub_100001B4C(v2, qword_100020888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100004F80(uint64_t a1)
{
  v2 = sub_100005684();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_100004FD4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100005684();
  v6 = sub_1000056D8();
  v7 = sub_1000049E8();
  *v4 = v2;
  v4[1] = sub_1000050A0;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000050A0()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000051A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000521C();
  *a1 = result;
  return result;
}

uint64_t sub_1000051D0(uint64_t a1)
{
  v2 = sub_100004C84();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000521C()
{
  v0 = sub_1000131EC();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100001F60(&qword_100020218, &unk_100014370);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1000132DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001336C();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000136FC();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000132FC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21 = sub_100001F60(&qword_100020220, &qword_100014380);
  sub_1000136AC();
  sub_10001335C();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_10001330C();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26[0] = 9;
  v18 = sub_100012F9C();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_100002B3C();
  return sub_10001307C();
}

unint64_t sub_100005684()
{
  result = qword_100020228;
  if (!qword_100020228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020228);
  }

  return result;
}

unint64_t sub_1000056D8()
{
  result = qword_100020230;
  if (!qword_100020230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020230);
  }

  return result;
}

unint64_t sub_100005734()
{
  result = qword_100020288;
  if (!qword_100020288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020288);
  }

  return result;
}

unint64_t sub_10000578C()
{
  result = qword_100020290;
  if (!qword_100020290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020290);
  }

  return result;
}

uint64_t sub_100005830()
{
  v0 = sub_10001352C();
  sub_100001AE8(v0, qword_100020238);
  sub_100001B4C(v0, qword_100020238);
  return sub_10001351C();
}

uint64_t sub_1000058B0()
{
  v0 = sub_1000133AC();
  sub_100001AE8(v0, qword_100020250);
  sub_100001B4C(v0, qword_100020250);
  return sub_10001339C();
}

uint64_t sub_1000058FC()
{
  v0 = sub_1000132FC();
  sub_100001AE8(v0, qword_1000208A0);
  sub_100001B4C(v0, qword_1000208A0);
  return sub_1000132CC();
}

uint64_t sub_100005984(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_100012F9C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_10001340C();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_10001377C();
  v2[16] = sub_10001376C();
  v6 = sub_10001375C();
  v2[17] = v6;
  v2[18] = v5;

  return _swift_task_switch(sub_100005AD4, v6, v5);
}

uint64_t sub_100005AD4()
{
  v1 = [objc_allocWithZone(STPrivateServiceClient) init];
  v2 = sub_100001828();

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_100005D04;
    v4 = v0[15];
    v5 = v0[9];

    return sub_100006248(v4, v5);
  }

  else
  {

    v0[2] = sub_10000A260(0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000);
    v0[3] = v7;
    v0[4] = v8;
    if (qword_100020058 != -1)
    {
      swift_once();
    }

    sub_100001B4C(v0[10], qword_100020840);
    sub_1000090F0();
    sub_10000A798();
    sub_100012FBC();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100005D04()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1000061D0;
  }

  else
  {
    v5 = sub_100005E40;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100005E40()
{

  v1 = objc_opt_self();
  sub_1000133FC();
  v3 = [objc_allocWithZone(NSNumber) initWithDouble:fabs(v2)];
  v4 = [v1 localizedStringFromNumber:v3 numberStyle:3];

  v5 = sub_10001370C();
  v7 = v6;

  sub_1000133FC();
  if (v8 >= 0.05)
  {
    v10 = 0;
  }

  else
  {
    sub_1000133FC();
    if (v9 <= -0.05)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  v11 = sub_100006F68(v10);
  v13 = v12;
  if (qword_100020098 != -1)
  {
    swift_once();
  }

  v14 = qword_100020280;
  sub_1000133EC();
  v15 = [v14 stringFromTimeInterval:?];
  if (v15)
  {
    v16 = v15;
    v17 = v0[15];
    v37 = v0[14];
    v38 = v0[13];
    v34 = v0[12];
    v35 = v0[11];
    v36 = v0[10];
    v18 = v0[9];
    v19 = sub_10001370C();
    v21 = v20;

    v22 = sub_10000A260(v5, v7, v11, v13, v19, v21);
    v24 = v23;
    v26 = v25;
    sub_1000070FC(v22, v23, v25, v34);
    v0[5] = v22;
    v0[6] = v24;
    v0[7] = v26;
    v27 = swift_task_alloc();
    *(v27 + 16) = v17;
    *(v27 + 24) = v18;
    type metadata accessor for ScreenTimeUsageAppIntent.ScreenTimeUsageView(0);
    sub_1000090F0();
    sub_10000B190(&qword_100020370, type metadata accessor for ScreenTimeUsageAppIntent.ScreenTimeUsageView, &unk_1000149EC);
    sub_100012FCC();

    (*(v35 + 8))(v34, v36);

    (*(v37 + 8))(v17, v38);
  }

  else
  {
    v30 = v0[14];
    v29 = v0[15];
    v31 = v0[13];

    sub_10000A7EC();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    (*(v30 + 8))(v29, v31);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_1000061D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100006248(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_100001F60(&qword_1000203C8, &qword_1000148E0);
  v2[5] = swift_task_alloc();
  sub_100001F60(&qword_1000203D0, &qword_1000148E8);
  v2[6] = swift_task_alloc();
  v3 = sub_1000134EC();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_1000134DC();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_10001334C();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  sub_100001F60(&qword_1000203D8, &qword_1000148F0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v6 = sub_10001327C();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_100006504, 0, 0);
}

uint64_t sub_100006504()
{
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);
  v7 = sub_1000133AC();
  sub_100001B4C(v7, qword_100020250);
  sub_10001333C();
  sub_10001337C();
  v8 = *(v5 + 8);
  v8(v4, v6);
  v9 = *(v2 + 48);
  if (v9(v3, 1, v1) == 1)
  {
    sub_10000AB18(*(v0 + 152), &qword_1000203D8, &qword_1000148F0);
    sub_10000A7EC();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
LABEL_11:

    v25 = *(v0 + 8);

    return v25();
  }

  v32 = *(*(v0 + 168) + 32);
  v32(*(v0 + 192), *(v0 + 152), *(v0 + 160));
  sub_10001304C();
  v11 = *(v0 + 216);
  sub_10001333C();
  if (v11)
  {
    v12 = *(v0 + 128);
    v13 = *(v0 + 112);
    sub_10001337C();
    v8(v12, v13);
  }

  else
  {
    v14 = *(v0 + 168);
    v31 = *(v0 + 160);
    v15 = *(v0 + 144);
    v16 = *(v0 + 128);
    v30 = *(v0 + 112);
    sub_10001338C();
    v8(v16, v30);
    (*(v14 + 56))(v15, 0, 1, v31);
  }

  v17 = *(v0 + 160);
  v18 = *(v0 + 136);
  sub_10000AAA8(*(v0 + 144), v18);
  v19 = v9(v18, 1, v17);
  v20 = *(v0 + 192);
  if (v19 == 1)
  {
    v22 = *(v0 + 160);
    v21 = *(v0 + 168);
    v23 = *(v0 + 144);
    sub_10000AB18(*(v0 + 136), &qword_1000203D8, &qword_1000148F0);
    sub_10000A7EC();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
    sub_10000AB18(v23, &qword_1000203D8, &qword_1000148F0);
    (*(v21 + 8))(v20, v22);
    goto LABEL_11;
  }

  v32(*(v0 + 184), *(v0 + 136), *(v0 + 160));
  sub_1000134CC();
  sub_1000134AC();
  v27 = swift_task_alloc();
  *(v0 + 200) = v27;
  *v27 = v0;
  v27[1] = sub_1000069D8;
  v28 = *(v0 + 192);
  v29 = *(v0 + 80);

  return ModelProvider.addHourlyData(toDataModel:forDateInterval:userAltDSID:deviceIdentifier:)(v29, v28, 0, 0, 0, 0);
}

uint64_t sub_1000069D8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100006DE4;
  }

  else
  {
    v2 = sub_100006AEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100006AEC()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[15];
  v6 = v0[5];
  v23 = v0[14];
  (*(v0[8] + 16))(v0[9], v0[10], v0[7]);
  (*(v4 + 16))(v1, v2, v3);
  (*(v5 + 56))(v6, 1, 1, v23);
  sub_10001368C();
  sub_10000AB18(v6, &qword_1000203C8, &qword_1000148E0);
  sub_1000133DC();
  sub_1000133FC();
  if (v7 == 0.0)
  {
    if (qword_100020078 != -1)
    {
      swift_once();
    }

    v8 = sub_10001352C();
    sub_100001B4C(v8, qword_100020238);
    v9 = sub_10001350C();
    v10 = sub_10001378C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Activity usage delta reported as zero. This could be a calculation failure.", v11, 2u);
    }
  }

  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[18];
  v17 = v0[12];
  v18 = v0[13];
  v19 = v0[11];
  (*(v0[8] + 8))(v0[10], v0[7]);
  (*(v17 + 8))(v18, v19);
  v20 = *(v14 + 8);
  v20(v13, v15);
  sub_10000AB18(v16, &qword_1000203D8, &qword_1000148F0);
  v20(v12, v15);

  v21 = v0[1];

  return v21();
}

uint64_t sub_100006DE4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  (*(v0[8] + 8))(v0[10], v0[7]);
  (*(v7 + 8))(v6, v8);
  v9 = *(v4 + 8);
  v9(v1, v3);
  sub_10000AB18(v5, &qword_1000203D8, &qword_1000148F0);
  v9(v2, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100006F68(char a1)
{
  v2 = sub_10001336C();
  __chkstk_darwin(v2 - 8);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000136FC();
  __chkstk_darwin(v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_1000136AC();
    sub_10001335C();
    if (a1 == 1)
    {
      return sub_10001371C(v7, 0, 0, 0, v4, "As in 'Your Screen Time is down 42% this week'", 46, 2);
    }

    else
    {
      return sub_10001371C(v7, 0, 0, 0, v4, "As in 'Your Screen Time has not changed this week'", 50, 2);
    }
  }

  else
  {
    sub_1000136AC();
    sub_10001335C();
    return sub_10001371C(v7, 0, 0, 0, v4, "As in 'Your Screen Time is up 42% this week'", 44, 2);
  }
}

uint64_t sub_1000070FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = sub_100012F9C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000133CC();
  v17[3] = v13;
  v17[4] = sub_10000B190(&qword_100020378, &type metadata accessor for ScreenTimeFeatureFlags, &protocol conformance descriptor for ScreenTimeFeatureFlags);
  v14 = sub_10000A894(v17);
  (*(*(v13 - 8) + 104))(v14, enum case for ScreenTimeFeatureFlags.nlgDialogResponse(_:), v13);
  LOBYTE(v13) = sub_1000133BC();
  sub_10000A9FC(v17);
  if (v13)
  {
    return sub_10000746C();
  }

  sub_10001304C();
  if (v17[0])
  {
    sub_100007DC4(a1, a2, a3, v12);
  }

  else
  {
    sub_100007BF4();
  }

  return (*(v10 + 32))(a5, v12, v9);
}

double sub_1000072E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001340C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v15 - v9;
  v11 = *(v5 + 16);
  v11(v15 - v9, a1, v4);
  sub_10001304C();
  v12 = v16;
  v11(v8, v10, v4);
  sub_10001365C();
  (*(v5 + 8))(v10, v4);
  v13 = *(type metadata accessor for ScreenTimeUsageAppIntent.ScreenTimeUsageView(0) + 20);
  v15[1] = v12;
  type metadata accessor for STActivityMode();
  sub_10001365C();
  result = *&v16;
  *(a2 + v13) = v16;
  return result;
}

uint64_t sub_10000746C()
{
  v0 = sub_100001F60(&qword_100020380, &unk_100014810);
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-v1];
  v3 = sub_100001F60(&qword_100020388, &qword_100015570);
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-v4];
  v6 = sub_100001F60(&qword_100020390, &qword_100014820);
  __chkstk_darwin(v6 - 8);
  sub_10001304C();
  v7 = sub_10001321C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_10001324C();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_10000884C();
  sub_1000090F0();
  sub_100012F6C();
  return sub_100012F8C();
}

uint64_t sub_1000076F0()
{
  v0 = sub_100001F60(&qword_100020398, &qword_100014828);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  swift_getKeyPath();
  sub_1000088FC();
  sub_10000A924();
  sub_1000130CC();

  sub_1000090F0();
  sub_100002378(&qword_1000203A8, &qword_100020398, &qword_100014828, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_10001309C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10000787C()
{
  v0 = sub_100001F60(&qword_1000203B0, &qword_100014858);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  swift_getKeyPath();
  sub_10000884C();
  sub_1000130FC();

  sub_100002378(&qword_1000203B8, &qword_1000203B0, &qword_100014858, &protocol conformance descriptor for _NLGRepresentationIntent<A>);
  sub_1000130EC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000079D0()
{
  v0 = sub_100001F60(&qword_100020398, &qword_100014828);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  swift_getKeyPath();
  sub_1000088FC();
  sub_10000A924();
  sub_1000130CC();

  swift_getKeyPath();
  sub_1000130CC();

  sub_1000090F0();
  sub_100002378(&qword_1000203A8, &qword_100020398, &qword_100014828, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000130BC();
  v7 = *(v1 + 8);
  v7(v4, v0);
  return (v7)(v6, v0);
}

uint64_t sub_100007BF4()
{
  v0 = sub_1000136EC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000132FC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1000136DC();
  v10._object = 0x8000000100016A70;
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1000136CC(v10);
  sub_100012FDC();
  sub_1000136BC(v9);

  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  sub_1000136CC(v11);
  sub_1000132EC();
  (*(v2 + 16))(v5, v7, v1);
  sub_100012FAC();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_100007DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36[2] = a3;
  v36[4] = a1;
  v6 = sub_1000136EC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10001336C();
  __chkstk_darwin(v7 - 8);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000136FC();
  __chkstk_darwin(v10 - 8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000132FC();
  v13 = *(v37 - 8);
  v14 = __chkstk_darwin(v37);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v36 - v17;
  v36[3] = a2;
  sub_100012FDC();
  countAndFlagsBits = v39._countAndFlagsBits;
  object = v39._object;
  sub_1000136AC();
  sub_10001335C();
  if (sub_10001371C(v12, 0, 0, 0, v9, "As in 'Your Screen Time is up 42% this week'", 44, 2) == countAndFlagsBits && v21 == object)
  {

LABEL_8:

    sub_1000136DC();
    v40._countAndFlagsBits = 0xD000000000000017;
    v40._object = 0x8000000100016BE0;
    sub_1000136CC(v40);
    sub_100012FDC();
    sub_1000136BC(v39);

    v41._object = 0x8000000100016BC0;
    v41._countAndFlagsBits = 0xD000000000000010;
    sub_1000136CC(v41);
    sub_1000132EC();
    goto LABEL_9;
  }

  v36[1] = a4;
  v23 = sub_1000137DC();

  if (v23)
  {
    goto LABEL_8;
  }

  sub_1000136AC();
  sub_10001335C();
  if (sub_10001371C(v12, 0, 0, 0, v9, "As in 'Your Screen Time is down 42% this week'", 46, 2) == countAndFlagsBits && v26 == object)
  {

LABEL_14:

    sub_1000136DC();
    v42._countAndFlagsBits = 0xD000000000000019;
    v42._object = 0x8000000100016BA0;
    sub_1000136CC(v42);
    sub_100012FDC();
    sub_1000136BC(v39);

    v43._object = 0x8000000100016BC0;
    v43._countAndFlagsBits = 0xD000000000000010;
    sub_1000136CC(v43);
    sub_1000132EC();
    goto LABEL_9;
  }

  v27 = sub_1000137DC();

  if (v27)
  {
    goto LABEL_14;
  }

  sub_1000136AC();
  sub_10001335C();
  if (sub_10001371C(v12, 0, 0, 0, v9, "As in 'Your Screen Time has not changed this week'", 50, 2) == countAndFlagsBits && v28 == object)
  {
  }

  else
  {
    v29 = sub_1000137DC();

    if ((v29 & 1) == 0)
    {
      if (qword_100020078 != -1)
      {
        swift_once();
      }

      v30 = sub_10001352C();
      sub_100001B4C(v30, qword_100020238);

      v31 = sub_10001350C();
      v32 = sub_10001378C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v38 = v34;
        *v33 = 136315138;
        sub_100012FDC();
        v35 = sub_100009CB8(v39._countAndFlagsBits, v39._object, &v38);

        *(v33 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v31, v32, "Unable to detect usage trend for value [%s].", v33, 0xCu);
        sub_10000A9FC(v34);
      }
    }
  }

  sub_1000132CC();
LABEL_9:
  v24 = v37;
  (*(v13 + 16))(v16, v18, v37);
  sub_100012FAC();
  return (*(v13 + 8))(v18, v24);
}

uint64_t sub_100008444@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020088 != -1)
  {
    swift_once();
  }

  v2 = sub_1000132FC();
  v3 = sub_100001B4C(v2, qword_1000208A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000084F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_100001F60(&qword_1000203E0, &qword_1000148F8);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100001F60(&qword_1000203E8, &qword_100014900);
  __chkstk_darwin(v3);
  sub_1000131AC();
  v5._object = 0x8000000100016C20;
  v5._countAndFlagsBits = 0xD000000000000012;
  sub_10001319C(v5);
  swift_getKeyPath();
  sub_100001F60(&qword_1000203F0, &qword_100014908);
  sub_10001318C();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10001319C(v6);
  sub_1000131BC();
  return sub_10001317C();
}

uint64_t sub_10000868C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000872C;

  return sub_100005984(a1, v4);
}

uint64_t sub_10000872C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100008820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000A3FC();
  *a1 = result;
  return result;
}

unint64_t sub_10000884C()
{
  result = qword_100020298;
  if (!qword_100020298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020298);
  }

  return result;
}

uint64_t sub_1000088BC(uint64_t a1)
{
  v2 = sub_10000884C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000088FC()
{
  result = qword_1000202A0;
  if (!qword_1000202A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202A0);
  }

  return result;
}

uint64_t sub_100008950(char a1)
{
  v1 = sub_10001336C();
  __chkstk_darwin(v1 - 8);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1000136FC();
  __chkstk_darwin(v4 - 8);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000136AC();
  sub_10001335C();
  return sub_10001371C(v6, 0, 0, 0, v3, 0, 0, 256);
}

Swift::Int sub_100008AAC()
{
  v1 = *v0;
  sub_10001382C();
  sub_10001383C(v1);
  return sub_10001384C();
}

Swift::Int sub_100008B20(uint64_t a1)
{
  v2 = *v1;
  sub_10001382C();
  sub_10001383C(v2);
  return sub_10001384C();
}

uint64_t sub_100008B88()
{
  v0 = sub_100001F60(&qword_100020198, &unk_1000147E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1000132FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_1000132CC();
  sub_1000132CC();
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = sub_10001311C();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_100001F60(&qword_1000201B8, &unk_1000147F0);
  *(swift_allocObject() + 16) = xmmword_1000143A0;
  sub_1000132CC();
  sub_1000132CC();
  sub_1000132CC();
  sub_1000132CC();
  return sub_10001313C();
}

uint64_t sub_100008E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000A260(0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000);
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_100008EA0()
{
  result = qword_1000202A8;
  if (!qword_1000202A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202A8);
  }

  return result;
}

unint64_t sub_100008EF8()
{
  result = qword_1000202B0;
  if (!qword_1000202B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202B0);
  }

  return result;
}

unint64_t sub_100008F50()
{
  result = qword_1000202B8;
  if (!qword_1000202B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202B8);
  }

  return result;
}

uint64_t sub_100008FF4(uint64_t a1)
{
  v2 = sub_100009744();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

unint64_t sub_100009044()
{
  result = qword_1000202D0;
  if (!qword_1000202D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202D0);
  }

  return result;
}

unint64_t sub_10000909C()
{
  result = qword_1000202D8;
  if (!qword_1000202D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202D8);
  }

  return result;
}

unint64_t sub_1000090F0()
{
  result = qword_1000202E0;
  if (!qword_1000202E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202E0);
  }

  return result;
}

unint64_t sub_100009148()
{
  result = qword_1000202E8;
  if (!qword_1000202E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202E8);
  }

  return result;
}

uint64_t sub_1000091E4(uint64_t a1)
{
  v2 = sub_100009744();

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_100009230()
{
  v0 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1000132FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_1000132CC();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10001322C();
}

uint64_t sub_1000093C0(uint64_t a1)
{
  v2 = sub_1000088FC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100009410()
{
  result = qword_100020308;
  if (!qword_100020308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020308);
  }

  return result;
}

uint64_t sub_100009468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000872C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000952C(uint64_t a1)
{
  v2 = sub_100009148();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100009578(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000958C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000095D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100009744()
{
  result = qword_100020340;
  if (!qword_100020340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020340);
  }

  return result;
}

uint64_t sub_100009798()
{
  v0 = sub_100001F60(&qword_1000200C8, &unk_100014AA0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10001332C();
  sub_100001AE8(v3, qword_100020268);
  v4 = sub_100001B4C(v3, qword_100020268);
  sub_10001331C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000098C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001332C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001F60(&qword_1000203C8, &qword_1000148E0);
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  v10 = sub_100001F60(&qword_1000203D0, &qword_1000148E8);
  __chkstk_darwin(v10 - 8);
  v11 = sub_10001340C();
  __chkstk_darwin(v11 - 8);
  sub_100001F60(&qword_1000203F8, &unk_100014910);
  sub_10001366C();
  v22[1] = *(v1 + *(type metadata accessor for ScreenTimeUsageAppIntent.ScreenTimeUsageView(0) + 20));
  sub_100001F60(&qword_1000204A8, &qword_100014A80);
  sub_10001366C();
  v12 = sub_10001334C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_10001368C();
  sub_10000AB18(v9, &qword_1000203C8, &qword_1000148E0);
  sub_10001341C();
  v13 = sub_1000135CC();
  v14 = a1 + *(sub_100001F60(&qword_1000204B0, &qword_100014A88) + 36);
  *v14 = v13;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 1;
  v15 = sub_10001369C();
  v17 = v16;
  v18 = *(sub_100001F60(&qword_1000204B8, &unk_100014A90) + 36);
  if (qword_100020090 != -1)
  {
    swift_once();
  }

  v19 = sub_100001B4C(v3, qword_100020268);
  (*(v4 + 16))(v6, v19, v3);
  sub_1000135DC();
  result = sub_100001F60(&qword_1000204C0, &unk_1000157E0);
  v21 = (a1 + v18 + *(result + 36));
  *v21 = v15;
  v21[1] = v17;
  return result;
}

id sub_100009C54()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setAllowedUnits:96];
  result = [v0 setUnitsStyle:1];
  qword_100020280 = v0;
  return result;
}

unint64_t sub_100009CB8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009D84(v11, 0, 0, 1, a1, a2);
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
    sub_10000AA48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000A9FC(v11);
  return v7;
}

unint64_t sub_100009D84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100009E90(a5, a6);
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
    result = sub_1000137AC();
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

char *sub_100009E90(uint64_t a1, unint64_t a2)
{
  v3 = sub_100009EDC(a1, a2);
  sub_10000A00C(&off_10001D108);
  return v3;
}

char *sub_100009EDC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000A0F8(v5, 0);
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

  result = sub_1000137AC();
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
        v10 = sub_10001373C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000A0F8(v10, 0);
        result = sub_10001379C();
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

uint64_t sub_10000A00C(uint64_t result)
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

  result = sub_10000A16C(result, v11, 1, v3);
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

void *sub_10000A0F8(uint64_t a1, uint64_t a2)
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

  sub_100001F60(&qword_1000203C0, &qword_1000148D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000A16C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F60(&qword_1000203C0, &qword_1000148D8);
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

uint64_t sub_10000A260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1000132FC();
  __chkstk_darwin(v6 - 8);
  sub_100001F60(&qword_100020348, &qword_100015530);
  sub_1000132CC();
  v7 = sub_10001301C();

  sub_1000132CC();
  sub_10001301C();

  sub_1000132CC();
  sub_10001301C();

  sub_100012FEC();
  sub_100012FEC();
  sub_100012FEC();

  return v7;
}

uint64_t sub_10000A3FC()
{
  v17 = sub_1000131EC();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001F60(&qword_100020218, &unk_100014370);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000132FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100001F60(&qword_100020350, &qword_100015550);
  sub_1000132CC();
  sub_1000132CC();
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = 1;
  sub_100012F7C();
  v14 = sub_100012F9C();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 0, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10000A744();
  return sub_10001307C();
}

unint64_t sub_10000A744()
{
  result = qword_100020358;
  if (!qword_100020358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020358);
  }

  return result;
}

unint64_t sub_10000A798()
{
  result = qword_100020360;
  if (!qword_100020360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020360);
  }

  return result;
}

unint64_t sub_10000A7EC()
{
  result = qword_100020368;
  if (!qword_100020368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020368);
  }

  return result;
}

uint64_t type metadata accessor for ScreenTimeUsageAppIntent.ScreenTimeUsageView(uint64_t a1)
{
  result = qword_100020458;
  if (!qword_100020458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_10000A894(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000A8F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012FFC();
  *a1 = result;
  return result;
}

unint64_t sub_10000A924()
{
  result = qword_1000203A0;
  if (!qword_1000203A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203A0);
  }

  return result;
}

uint64_t sub_10000A978@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001306C();
  *a1 = result;
  return result;
}

uint64_t sub_10000A9A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012FFC();
  *a1 = result;
  return result;
}

uint64_t sub_10000A9D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012FFC();
  *a1 = result;
  return result;
}

uint64_t sub_10000A9FC(void *a1)
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

uint64_t sub_10000AA48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000AAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F60(&qword_1000203D8, &qword_1000148F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AB18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001F60(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000AB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001F60(&qword_1000203F8, &unk_100014910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_10000AC78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001F60(&qword_1000203F8, &unk_100014910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_10000AD40(uint64_t a1)
{
  sub_10000ADFC(319, &qword_100020468, &type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  if (v1 <= 0x3F)
  {
    sub_10000ADFC(319, &unk_100020470, type metadata accessor for STActivityMode);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000ADFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10001367C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScreenTimeUsageAppIntent.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScreenTimeUsageAppIntent.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000AFA8()
{
  result = qword_1000204A0;
  if (!qword_1000204A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000204A0);
  }

  return result;
}

unint64_t sub_10000B01C()
{
  result = qword_1000204C8;
  if (!qword_1000204C8)
  {
    sub_100001FA8(&qword_1000204B8, &unk_100014A90);
    sub_10000B0D4();
    sub_100002378(&qword_1000204E0, &qword_1000204C0, &unk_1000157E0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000204C8);
  }

  return result;
}

unint64_t sub_10000B0D4()
{
  result = qword_1000204D0;
  if (!qword_1000204D0)
  {
    sub_100001FA8(&qword_1000204B0, &qword_100014A88);
    sub_10000B190(&qword_1000204D8, &type metadata accessor for ScreenTimeUsageAppIntentView, &protocol conformance descriptor for ScreenTimeUsageAppIntentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000204D0);
  }

  return result;
}

uint64_t sub_10000B190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000B1E4(uint64_t a1)
{
  v2 = sub_10000B334();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000B28C();
  sub_1000134FC();
  return 0;
}

unint64_t sub_10000B28C()
{
  result = qword_1000204E8;
  if (!qword_1000204E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000204E8);
  }

  return result;
}

unint64_t sub_10000B334()
{
  result = qword_1000204F0;
  if (!qword_1000204F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000204F0);
  }

  return result;
}

uint64_t sub_10000B398(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0x74696D694C707061;
    v13 = 0xE900000000000073;
    if (a1 != 2)
    {
      v12 = 0xD000000000000013;
      v13 = 0x8000000100015810;
    }

    v14 = 0x6C41737961776C61;
    if (a1)
    {
      v11 = 0xED00006465776F6CLL;
    }

    else
    {
      v14 = 1953460082;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x656D69746E776F64;
    v5 = 0x69446E6565726373;
    v6 = 0xEE0065636E617473;
    if (a1 != 7)
    {
      v5 = 0xD00000000000001BLL;
      v6 = 0x8000000100015890;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xD000000000000013;
    v8 = 0x8000000100015830;
    if (a1 != 4)
    {
      v7 = 0xD00000000000001DLL;
      v8 = 0x8000000100015850;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xED00006465776F6CLL;
        if (v9 != 0x6C41737961776C61)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        if (v9 != 1953460082)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 2)
    {
      v15 = 0xE900000000000073;
      if (v9 != 0x74696D694C707061)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = "communicationLimits";
LABEL_45:
    v15 = (v16 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000013)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x656D69746E776F64)
      {
        goto LABEL_52;
      }
    }

    else if (a2 == 7)
    {
      v15 = 0xEE0065636E617473;
      if (v9 != 0x69446E6565726373)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0x8000000100015890;
      if (v9 != 0xD00000000000001BLL)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v16 = "communicationSafety";
    goto LABEL_45;
  }

  v15 = 0x8000000100015850;
  if (v9 != 0xD00000000000001DLL)
  {
LABEL_52:
    v17 = sub_1000137DC();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_10000B6A0(uint64_t a1, unsigned __int8 a2)
{
  sub_10001372C();
}

uint64_t sub_10000B814()
{
  v0 = sub_100001F60(&qword_100020198, &unk_1000147E0);
  __chkstk_darwin(v0 - 8);
  v2 = v24 - v1;
  v3 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v3 - 8);
  v5 = v24 - v4;
  v6 = sub_1000132FC();
  v29 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100001F60(&qword_100020560, &qword_100014E10);
  v8 = sub_100001F60(&qword_100020568, &unk_100014E18);
  v33 = v8;
  v9 = *(v8 - 8);
  v30 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v32 = xmmword_100013DA0;
  v31 = v11;
  *(v11 + 16) = xmmword_100013DA0;
  v12 = v11 + v10;
  v27 = *(v8 + 48);
  *(v11 + v10) = 0;
  sub_1000132CC();
  v24[0] = v5;
  sub_1000132CC();
  v13 = *(v7 + 56);
  v7 += 56;
  v28 = v13;
  v13(v5, 0, 1, v6);
  v14 = sub_10001311C();
  v15 = *(v14 - 8);
  v25 = *(v15 + 56);
  v26 = v15 + 56;
  v16 = v2;
  v25(v2, 1, 1, v14);
  v17 = sub_100001F60(&qword_1000201B8, &unk_1000147F0);
  v18 = *(v7 + 16);
  v24[1] = ((*(v7 + 24) + 32) & ~*(v7 + 24)) + 2 * v18;
  v24[2] = v17;
  v24[3] = v18;
  *(swift_allocObject() + 16) = v32;
  sub_1000132CC();
  sub_1000132CC();
  v24[4] = v12;
  v19 = v24[0];
  v20 = v16;
  sub_10001313C();
  v21 = (v12 + v30);
  v30 = *(v33 + 48);
  *v21 = 1;
  sub_1000132CC();
  sub_1000132CC();
  v28(v19, 0, 1, v29);
  v25(v20, 1, 1, v14);
  *(swift_allocObject() + 16) = v32;
  sub_1000132CC();
  sub_1000132CC();
  sub_10001313C();
  v22 = sub_10000D068(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000208B8 = v22;
  return result;
}

uint64_t sub_10000BCC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1801807223;
  }

  else
  {
    v3 = 7954788;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1801807223;
  }

  else
  {
    v5 = 7954788;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000137DC();
  }

  return v8 & 1;
}

unint64_t sub_10000BD5C()
{
  result = qword_1000204F8;
  if (!qword_1000204F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000204F8);
  }

  return result;
}

Swift::Int sub_10000BDB0()
{
  sub_10001382C();
  sub_10001372C();

  return sub_10001384C();
}

uint64_t sub_10000BE24(uint64_t a1)
{
  sub_10001372C();
}

Swift::Int sub_10000BE84(uint64_t a1)
{
  sub_10001382C();
  sub_10001372C();

  return sub_10001384C();
}

uint64_t sub_10000BEF4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10001D158;
  v8._object = v3;
  v5 = sub_1000137CC(v4, v8);

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

void sub_10000BF54(uint64_t *a1@<X8>)
{
  v2 = 7954788;
  if (*v1)
  {
    v2 = 1801807223;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10000BF88()
{
  result = qword_100020500;
  if (!qword_100020500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020500);
  }

  return result;
}

unint64_t sub_10000BFE0()
{
  result = qword_100020508;
  if (!qword_100020508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020508);
  }

  return result;
}

unint64_t sub_10000C038()
{
  result = qword_100020510;
  if (!qword_100020510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020510);
  }

  return result;
}

unint64_t sub_10000C090()
{
  result = qword_100020518;
  if (!qword_100020518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020518);
  }

  return result;
}

unint64_t sub_10000C0E8()
{
  result = qword_100020520;
  if (!qword_100020520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020520);
  }

  return result;
}

unint64_t sub_10000C140()
{
  result = qword_100020528;
  if (!qword_100020528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020528);
  }

  return result;
}

unint64_t sub_10000C198()
{
  result = qword_100020530;
  if (!qword_100020530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020530);
  }

  return result;
}

uint64_t sub_10000C1EC()
{
  v0 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1000132FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_1000132CC();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10001322C();
}

uint64_t sub_10000C388(uint64_t a1)
{
  v2 = sub_10000A744();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000C3D8()
{
  result = qword_100020538;
  if (!qword_100020538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020538);
  }

  return result;
}

unint64_t sub_10000C430()
{
  result = qword_100020540;
  if (!qword_100020540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020540);
  }

  return result;
}

unint64_t sub_10000C488()
{
  result = qword_100020548;
  if (!qword_100020548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020548);
  }

  return result;
}

uint64_t sub_10000C4DC()
{
  if (qword_1000200A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10000C538(uint64_t a1)
{
  v2 = sub_10000C198();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000C588()
{
  result = qword_100020550;
  if (!qword_100020550)
  {
    sub_100001FA8(&qword_100020558, &qword_100014D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020550);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryRange(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for QueryRange(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000C758(uint64_t a1)
{
  v1 = a1;
  sub_10001382C();
  sub_10000B6A0(v4, v1);
  v2 = sub_10001384C();

  return sub_10000C85C(v1, v2);
}

unint64_t sub_10000C7C4(char a1)
{
  sub_10001382C();
  sub_10001372C();

  v2 = sub_10001384C();

  return sub_10000CB60(a1 & 1, v2);
}

unint64_t sub_10000C85C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      if (v6 <= 3)
      {
        if (v6 == 2)
        {
          v9 = 0x74696D694C707061;
        }

        else
        {
          v9 = 0xD000000000000013;
        }

        if (v6 == 2)
        {
          v10 = 0xE900000000000073;
        }

        else
        {
          v10 = 0x8000000100015810;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0x6C41737961776C61;
        }

        else
        {
          v11 = 1953460082;
        }

        if (*(*(v27 + 48) + v4))
        {
          v12 = 0xED00006465776F6CLL;
        }

        else
        {
          v12 = 0xE400000000000000;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        if (v6 == 4)
        {
          v7 = 0xD000000000000013;
          v8 = 0x8000000100015830;
        }

        else
        {
          v7 = 0xD00000000000001DLL;
          v8 = 0x8000000100015850;
        }
      }

      else if (v6 == 6)
      {
        v8 = 0xE800000000000000;
        v7 = 0x656D69746E776F64;
      }

      else if (v6 == 7)
      {
        v7 = 0x69446E6565726373;
        v8 = 0xEE0065636E617473;
      }

      else
      {
        v7 = 0xD00000000000001BLL;
        v8 = 0x8000000100015890;
      }

      v13 = 0xD00000000000001BLL;
      if (v5 == 7)
      {
        v13 = 0x69446E6565726373;
      }

      v14 = 0xEE0065636E617473;
      v15 = 0x8000000100015850;
      if (v5 != 7)
      {
        v14 = 0x8000000100015890;
      }

      if (v5 == 6)
      {
        v13 = 0x656D69746E776F64;
        v14 = 0xE800000000000000;
      }

      v16 = 0xD00000000000001DLL;
      if (v5 == 4)
      {
        v16 = 0xD000000000000013;
        v15 = 0x8000000100015830;
      }

      if (v5 <= 5)
      {
        v13 = v16;
        v14 = v15;
      }

      if (v5 == 2)
      {
        v17 = 0x74696D694C707061;
      }

      else
      {
        v17 = 0xD000000000000013;
      }

      if (v5 == 2)
      {
        v18 = 0xE900000000000073;
      }

      else
      {
        v18 = 0x8000000100015810;
      }

      if (v5)
      {
        v19 = 0x6C41737961776C61;
      }

      else
      {
        v19 = 1953460082;
      }

      if (v5)
      {
        v20 = 0xED00006465776F6CLL;
      }

      else
      {
        v20 = 0xE400000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v7 == v21 && v8 == v22)
      {
        break;
      }

      v23 = sub_1000137DC();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10000CB60(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 1801807223;
    }

    else
    {
      v6 = 7954788;
    }

    if (a1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 1801807223 : 7954788;
      v9 = *(*(v2 + 48) + v4) ? 0xE400000000000000 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1000137DC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10000CC8C(uint64_t a1)
{
  v2 = sub_100001F60(&qword_1000201D8, &unk_100014130);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001F60(&qword_100020580, &qword_100014E48);
    v7 = sub_1000137BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000D250(v9, v5, &qword_1000201D8, &unk_100014130);
      v11 = *v5;
      result = sub_10000C758(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100001F60(&qword_100020588, qword_100014E50);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10000CE80(uint64_t a1)
{
  v2 = sub_100001F60(&qword_1000201B0, &unk_100014110);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001F60(&qword_100020578, &unk_100014E38);
    v7 = sub_1000137BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000D250(v9, v5, &qword_1000201B0, &unk_100014110);
      v11 = *v5;
      result = sub_10000C758(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10001314C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10000D068(uint64_t a1)
{
  v2 = sub_100001F60(&qword_100020568, &unk_100014E18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001F60(&qword_100020570, &unk_100014E28);
    v7 = sub_1000137BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000D250(v9, v5, &qword_100020568, &unk_100014E18);
      v11 = *v5;
      result = sub_10000C7C4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10001314C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_10000D250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001F60(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000D2C4()
{
  result = qword_1000205C0;
  if (!qword_1000205C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205C0);
  }

  return result;
}

unint64_t sub_10000D31C()
{
  result = qword_1000205C8;
  if (!qword_1000205C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205C8);
  }

  return result;
}

uint64_t sub_10000D3C0()
{
  v0 = sub_1000133AC();
  sub_100001AE8(v0, qword_100020590);
  sub_100001B4C(v0, qword_100020590);
  return sub_10001339C();
}

uint64_t sub_10000D40C()
{
  v0 = sub_1000132FC();
  sub_100001AE8(v0, qword_1000208C0);
  sub_100001B4C(v0, qword_1000208C0);
  return sub_1000132CC();
}

uint64_t sub_10000D470(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_100012F9C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_10001347C();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_10001377C();
  v2[16] = sub_10001376C();
  v6 = sub_10001375C();
  v2[17] = v6;
  v2[18] = v5;

  return _swift_task_switch(sub_10000D5C0, v6, v5);
}

uint64_t sub_10000D5C0()
{
  v1 = [objc_allocWithZone(STPrivateServiceClient) init];
  v2 = sub_100001828();

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_10000D7F0;
    v4 = v0[15];
    v5 = v0[9];

    return sub_10000DB00(v4, v5);
  }

  else
  {

    v0[2] = sub_1000119E8(0, 0, 0, 0, 0, 0);
    v0[3] = v7;
    v0[4] = v8;
    if (qword_100020058 != -1)
    {
      swift_once();
    }

    sub_100001B4C(v0[10], qword_100020840);
    sub_10001009C();
    sub_10000A798();
    sub_100012FBC();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10000D7F0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1000061D0;
  }

  else
  {
    v5 = sub_10000D92C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000D92C()
{
  v1 = v0[15];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v16 = v0[10];
  v17 = v0[13];

  v6 = sub_10001343C();
  v7 = sub_100011C68(v6);
  v9 = v8;
  v11 = v10;
  v12 = sub_10001343C();
  sub_10000E684(v12, v3);

  v0[5] = v7;
  v0[6] = v9;
  v0[7] = v11;
  v13 = swift_task_alloc();
  *(v13 + 16) = v1;
  *(v13 + 24) = v5;
  type metadata accessor for ScreenTimeNotificationsAppIntent.ScreenTimeNotificationsView(0);
  sub_10001009C();
  sub_100012C04(&qword_1000206F8, type metadata accessor for ScreenTimeNotificationsAppIntent.ScreenTimeNotificationsView, &unk_10001577C);
  sub_100012FCC();

  (*(v4 + 8))(v3, v16);

  (*(v2 + 8))(v1, v17);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10000DB00(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000134EC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_1000134DC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_10001334C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  sub_100001F60(&qword_1000203D8, &qword_1000148F0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = sub_10001327C();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000DD48, 0, 0);
}

uint64_t sub_10000DD48()
{
  if (qword_1000200A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = sub_1000133AC();
  sub_100001B4C(v7, qword_100020590);
  sub_10001333C();
  sub_10001337C();
  v8 = *(v5 + 8);
  v8(v4, v6);
  v9 = *(v2 + 48);
  if (v9(v3, 1, v1) == 1)
  {
    sub_10000AB18(*(v0 + 128), &qword_1000203D8, &qword_1000148F0);
    sub_100012850();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
LABEL_11:

    v25 = *(v0 + 8);

    return v25();
  }

  v32 = *(*(v0 + 144) + 32);
  v32(*(v0 + 168), *(v0 + 128), *(v0 + 136));
  sub_10001304C();
  v11 = *(v0 + 192);
  sub_10001333C();
  if (v11)
  {
    v12 = *(v0 + 104);
    v13 = *(v0 + 88);
    sub_10001337C();
    v8(v12, v13);
  }

  else
  {
    v14 = *(v0 + 144);
    v31 = *(v0 + 136);
    v15 = *(v0 + 120);
    v16 = *(v0 + 104);
    v30 = *(v0 + 88);
    sub_10001338C();
    v8(v16, v30);
    (*(v14 + 56))(v15, 0, 1, v31);
  }

  v17 = *(v0 + 136);
  v18 = *(v0 + 112);
  sub_10000D250(*(v0 + 120), v18, &qword_1000203D8, &qword_1000148F0);
  v19 = v9(v18, 1, v17);
  v20 = *(v0 + 168);
  if (v19 == 1)
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 120);
    sub_10000AB18(*(v0 + 112), &qword_1000203D8, &qword_1000148F0);
    sub_100012850();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    sub_10000AB18(v23, &qword_1000203D8, &qword_1000148F0);
    (*(v21 + 8))(v20, v22);
    goto LABEL_11;
  }

  v32(*(v0 + 160), *(v0 + 112), *(v0 + 136));
  sub_1000134CC();
  sub_1000134AC();
  v27 = swift_task_alloc();
  *(v0 + 176) = v27;
  *v27 = v0;
  v27[1] = sub_10000E210;
  v28 = *(v0 + 168);
  v29 = *(v0 + 56);

  return ModelProvider.addHourlyData(toDataModel:forDateInterval:userAltDSID:deviceIdentifier:)(v29, v28, 0, 0, 0, 0);
}

uint64_t sub_10000E210()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10000E518;
  }

  else
  {
    v2 = sub_10000E324;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000E324()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v11 = v0[17];
  v15 = v0[21];
  v4 = v0[9];
  v13 = v0[10];
  v14 = v0[15];
  v5 = v0[7];
  v12 = v0[8];
  v6 = v0[5];
  v7 = v0[4];
  (*(v6 + 16))(v0[6], v5, v7);
  sub_10001304C();
  (*(v3 + 16))(v2, v1, v11);
  sub_10001342C();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v13, v12);
  v8 = *(v3 + 8);
  v8(v1, v11);
  sub_10000AB18(v14, &qword_1000203D8, &qword_1000148F0);
  v8(v15, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000E518()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  (*(v0[5] + 8))(v0[7], v0[4]);
  (*(v7 + 8))(v6, v8);
  v9 = *(v4 + 8);
  v9(v1, v3);
  sub_10000AB18(v5, &qword_1000203D8, &qword_1000148F0);
  v9(v2, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000E684@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_100012F9C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001F60(&qword_100020380, &unk_100014810);
  __chkstk_darwin(v9 - 8);
  v11 = &v22[-1] - v10;
  v12 = sub_100001F60(&qword_100020388, &qword_100015570);
  __chkstk_darwin(v12 - 8);
  v14 = &v22[-1] - v13;
  v15 = sub_100001F60(&qword_100020700, &qword_100015578);
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000133CC();
  v22[3] = v16;
  v22[4] = sub_100012C04(&qword_100020378, &type metadata accessor for ScreenTimeFeatureFlags, &protocol conformance descriptor for ScreenTimeFeatureFlags);
  v17 = sub_10000A894(v22);
  (*(*(v16 - 8) + 104))(v17, enum case for ScreenTimeFeatureFlags.nlgDialogResponse(_:), v16);
  LOBYTE(v16) = sub_1000133BC();
  sub_10000A9FC(v22);
  if (v16)
  {
    v18 = sub_10001321C();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    v19 = sub_10001324C();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
    sub_10000F980();
    sub_10001009C();
    sub_100012F6C();
    return sub_100012F8C();
  }

  else
  {
    sub_10001304C();
    if (v22[0])
    {
      sub_10000F1C8(a1);
    }

    else
    {
      sub_10000EF3C(a1);
    }

    return (*(v6 + 32))(a3, v8, v5);
  }
}

double sub_10000EA30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001347C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v15 - v9;
  v11 = *(v5 + 16);
  v11(v15 - v9, a1, v4);
  sub_10001304C();
  v12 = v16;
  v11(v8, v10, v4);
  sub_10001365C();
  (*(v5 + 8))(v10, v4);
  v13 = *(type metadata accessor for ScreenTimeNotificationsAppIntent.ScreenTimeNotificationsView(0) + 20);
  v15[1] = v12;
  type metadata accessor for STActivityMode();
  sub_10001365C();
  result = *&v16;
  *(a2 + v13) = v16;
  return result;
}

uint64_t sub_10000EBB4()
{
  v0 = sub_100001F60(&qword_100020718, &qword_100015600);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  swift_getKeyPath();
  sub_10000F980();
  sub_1000130FC();

  sub_100002378(&qword_100020720, &qword_100020718, &qword_100015600, &protocol conformance descriptor for _NLGRepresentationIntent<A>);
  sub_1000130EC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10000ED08()
{
  v0 = sub_100001F60(&qword_100020708, &qword_100015580);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v12 - v6;
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  swift_getKeyPath();
  sub_10000FA14();
  sub_1000130DC();

  swift_getKeyPath();
  sub_1000130DC();

  swift_getKeyPath();
  sub_1000130DC();

  sub_10001009C();
  sub_100002378(&qword_100020710, &qword_100020708, &qword_100015580, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000130AC();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v7, v0);
  return (v10)(v9, v0);
}

uint64_t sub_10000EF3C(uint64_t a1)
{
  v2 = sub_1000136EC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000132FC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = *(a1 + 16);
  if (v10 == 1)
  {
    sub_10001346C();
    sub_1000136DC();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    sub_1000136CC(v14);
    v15._countAndFlagsBits = sub_10001344C();
    sub_1000136BC(v15);

    v11._object = 0x8000000100016F40;
    v11._countAndFlagsBits = 0xD000000000000027;
LABEL_6:
    sub_1000136CC(v11);
    sub_1000132EC();
    goto LABEL_7;
  }

  if (v10)
  {
    sub_1000136DC();
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_1000136CC(v16);
    v17._countAndFlagsBits = sub_10000F454(a1);
    sub_1000136BC(v17);

    v11._countAndFlagsBits = 0xD000000000000028;
    v11._object = 0x8000000100016F10;
    goto LABEL_6;
  }

  sub_1000132CC();
LABEL_7:
  (*(v4 + 16))(v7, v9, v3);
  sub_100012FAC();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_10000F1C8(uint64_t a1)
{
  v2 = sub_1000136EC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000132FC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = *(a1 + 16);
  if (v10 == 1)
  {
    sub_10001346C();
    sub_1000136DC();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    sub_1000136CC(v14);
    v15._countAndFlagsBits = sub_10001344C();
    sub_1000136BC(v15);

    v11._object = 0x8000000100016FD0;
    v11._countAndFlagsBits = 0xD00000000000002BLL;
LABEL_6:
    sub_1000136CC(v11);
    sub_1000132EC();
    goto LABEL_7;
  }

  if (v10)
  {
    sub_1000136DC();
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_1000136CC(v16);
    v17._countAndFlagsBits = sub_10000F454(a1);
    sub_1000136BC(v17);

    v11._countAndFlagsBits = 0xD00000000000002CLL;
    v11._object = 0x8000000100016FA0;
    goto LABEL_6;
  }

  sub_1000132CC();
LABEL_7:
  (*(v4 + 16))(v7, v9, v3);
  sub_100012FAC();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_10000F454(uint64_t a1)
{
  v27 = sub_10001346C();
  v2 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v28 = &_swiftEmptyArrayStorage;
    sub_10001170C(0, v5, 0);
    v6 = v28;
    v8 = *(v2 + 16);
    v7 = v2 + 16;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v25 = *(v7 + 56);
    v26 = v8;
    v24 = (v7 - 8);
    do
    {
      v10 = v27;
      v11 = v7;
      v26(v4, v9, v27);
      v12 = sub_10001344C();
      v14 = v13;
      (*v24)(v4, v10);
      v28 = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        sub_10001170C((v15 > 1), v16 + 1, 1);
        v6 = v28;
      }

      v6[2] = v16 + 1;
      v17 = &v6[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v9 += v25;
      --v5;
      v7 = v11;
    }

    while (v5);
  }

  v18 = objc_opt_self();
  isa = sub_10001374C().super.isa;

  v20 = [v18 localizedStringByJoiningStrings:isa];

  v21 = sub_10001370C();
  return v21;
}

uint64_t sub_10000F674@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000200B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000132FC();
  v3 = sub_100001B4C(v2, qword_1000208C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000F71C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100001F60(&qword_100020740, &qword_100015648);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100001F60(&qword_100020748, &qword_100015650);
  __chkstk_darwin(v3);
  sub_1000131AC();
  v5._object = 0x8000000100017040;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10001319C(v5);
  swift_getKeyPath();
  sub_100001F60(&qword_100020750, &qword_100015658);
  sub_10001318C();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10001319C(v6);
  sub_1000131BC();
  return sub_10001317C();
}

uint64_t sub_10000F8B4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000872C;

  return sub_10000D470(a1, v4);
}

uint64_t sub_10000F954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012394();
  *a1 = result;
  return result;
}

unint64_t sub_10000F980()
{
  result = qword_1000205D0;
  if (!qword_1000205D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205D0);
  }

  return result;
}

uint64_t sub_10000F9D4(uint64_t a1)
{
  v2 = sub_10000F980();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000FA14()
{
  result = qword_1000205D8;
  if (!qword_1000205D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205D8);
  }

  return result;
}

uint64_t sub_10000FA68(char a1)
{
  v1 = sub_10001336C();
  __chkstk_darwin(v1 - 8);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1000136FC();
  __chkstk_darwin(v4 - 8);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000136AC();
  sub_10001335C();
  return sub_10001371C(v6, 0, 0, 0, v3, 0, 0, 256);
}

uint64_t sub_10000FBA0()
{
  v0 = sub_100001F60(&qword_100020198, &unk_1000147E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1000132FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_1000132CC();
  sub_1000132CC();
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = sub_10001311C();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_100001F60(&qword_1000201B8, &unk_1000147F0);
  *(swift_allocObject() + 16) = xmmword_100013DB0;
  sub_1000132CC();
  return sub_10001313C();
}

uint64_t sub_10000FE10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000119E8(0, 0, 0, 0, 0, 0);
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_10000FE58()
{
  result = qword_1000205E0;
  if (!qword_1000205E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205E0);
  }

  return result;
}

unint64_t sub_10000FEB0()
{
  result = qword_1000205E8;
  if (!qword_1000205E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205E8);
  }

  return result;
}

unint64_t sub_10000FF08()
{
  result = qword_1000205F0;
  if (!qword_1000205F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205F0);
  }

  return result;
}

uint64_t sub_10000FFA0(uint64_t a1)
{
  v2 = sub_100011994();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

unint64_t sub_10000FFF0()
{
  result = qword_100020608;
  if (!qword_100020608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020608);
  }

  return result;
}

unint64_t sub_100010048()
{
  result = qword_100020610;
  if (!qword_100020610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020610);
  }

  return result;
}

unint64_t sub_10001009C()
{
  result = qword_100020618;
  if (!qword_100020618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020618);
  }

  return result;
}

unint64_t sub_1000100F4()
{
  result = qword_100020620;
  if (!qword_100020620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020620);
  }

  return result;
}

uint64_t sub_100010148(uint64_t a1)
{
  v2 = sub_100011994();

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_100010194()
{
  v0 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1000132FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_1000132CC();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10001322C();
}

uint64_t sub_100010324(uint64_t a1)
{
  v2 = sub_10000FA14();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100010374()
{
  result = qword_100020638;
  if (!qword_100020638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020638);
  }

  return result;
}

uint64_t sub_1000103CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100012E60;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100010490(uint64_t a1)
{
  v2 = sub_1000100F4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000104E0()
{
  result = qword_100020640;
  if (!qword_100020640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020640);
  }

  return result;
}

uint64_t sub_100010534()
{
  v0 = sub_100001F60(&qword_100020198, &unk_1000147E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1000132FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_1000132CC();
  sub_1000132CC();
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = sub_10001311C();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_100001F60(&qword_1000201B8, &unk_1000147F0);
  *(swift_allocObject() + 16) = xmmword_100013DA0;
  sub_1000132CC();
  sub_1000132CC();
  return sub_10001313C();
}

uint64_t sub_1000107B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100011838(0, 0xE000000000000000, 0);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000107E8()
{
  result = qword_100020648;
  if (!qword_100020648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020648);
  }

  return result;
}

unint64_t sub_100010840()
{
  result = qword_100020650;
  if (!qword_100020650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020650);
  }

  return result;
}

unint64_t sub_100010898()
{
  result = qword_100020658;
  if (!qword_100020658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020658);
  }

  return result;
}

uint64_t sub_100010930(uint64_t a1)
{
  v2 = sub_100010FB4();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

unint64_t sub_100010980()
{
  result = qword_100020670;
  if (!qword_100020670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020670);
  }

  return result;
}

unint64_t sub_1000109D8()
{
  result = qword_100020678;
  if (!qword_100020678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020678);
  }

  return result;
}

unint64_t sub_100010A2C()
{
  result = qword_100020680;
  if (!qword_100020680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020680);
  }

  return result;
}

unint64_t sub_100010A84()
{
  result = qword_100020688;
  if (!qword_100020688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020688);
  }

  return result;
}

uint64_t sub_100010B20(uint64_t a1)
{
  v2 = sub_100010FB4();

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_100010B6C()
{
  v0 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1000132FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_1000132CC();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10001322C();
}

uint64_t sub_100010CF0(uint64_t a1)
{
  v2 = sub_1000104E0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100010D40()
{
  result = qword_1000206A0;
  if (!qword_1000206A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206A0);
  }

  return result;
}

uint64_t sub_100010D98(uint64_t a1)
{
  v2 = sub_100010A84();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100010DE4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100010DF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100010E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100010FB4()
{
  result = qword_1000206D8;
  if (!qword_1000206D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206D8);
  }

  return result;
}

uint64_t sub_100011008()
{
  v0 = sub_100001F60(&qword_1000200C8, &unk_100014AA0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10001332C();
  sub_100001AE8(v3, qword_1000205A8);
  v4 = sub_100001B4C(v3, qword_1000205A8);
  sub_10001331C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100011138@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28[1] = a1;
  v3 = sub_10001349C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = sub_100001F60(&qword_100020810, &unk_1000157F0);
  __chkstk_darwin(v28[0]);
  v8 = v28 - v7;
  v9 = sub_10001347C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001F60(&qword_100020758, &qword_100015668);
  sub_10001366C();
  v13 = sub_10001343C();
  (*(v10 + 8))(v12, v9);
  v14 = *(v13 + 16);

  if (v14)
  {
    sub_10001366C();
    v29 = *(v2 + *(type metadata accessor for ScreenTimeNotificationsAppIntent.ScreenTimeNotificationsView(0) + 20));
    sub_100001F60(&qword_1000204A8, &qword_100014A80);
    sub_10001366C();
    sub_10001348C();
    (*(v4 + 16))(v8, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_100012C04(&qword_100020818, &type metadata accessor for ScreenTimeNotificationsAppIntentView, &protocol conformance descriptor for ScreenTimeNotificationsAppIntentView);
    sub_10001358C();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_10001356C();
    v16 = sub_10001360C();
    v18 = v17;
    v20 = v19;
    LODWORD(v29) = sub_10001359C();
    v21 = sub_1000135FC();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_100012C4C(v16, v18, v20 & 1);

    *v8 = v21;
    *(v8 + 1) = v23;
    v8[16] = v25 & 1;
    *(v8 + 3) = v27;
    swift_storeEnumTagMultiPayload();
    sub_100012C04(&qword_100020818, &type metadata accessor for ScreenTimeNotificationsAppIntentView, &protocol conformance descriptor for ScreenTimeNotificationsAppIntentView);
    return sub_10001358C();
  }
}

uint64_t sub_10001153C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001332C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011138(a1);
  v6 = sub_1000135CC();
  v7 = a1 + *(sub_100001F60(&qword_100020800, &qword_1000157D0) + 36);
  *v7 = v6;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 1;
  v8 = sub_10001369C();
  v10 = v9;
  v11 = *(sub_100001F60(&qword_100020808, &qword_1000157D8) + 36);
  if (qword_1000200B8 != -1)
  {
    swift_once();
  }

  v12 = sub_100001B4C(v2, qword_1000205A8);
  (*(v3 + 16))(v5, v12, v2);
  sub_1000135DC();
  result = sub_100001F60(&qword_1000204C0, &unk_1000157E0);
  v14 = (a1 + v11 + *(result + 36));
  *v14 = v8;
  v14[1] = v10;
  return result;
}

char *sub_10001170C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001172C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001172C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F60(&qword_100020728, &qword_100015630);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100011838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000132FC();
  __chkstk_darwin(v3 - 8);
  sub_100001F60(&qword_100020348, &qword_100015530);
  sub_1000132CC();
  v4 = sub_10001301C();
  sub_100001F60(&qword_1000206E0, &qword_100015538);

  sub_1000132CC();
  sub_10001302C();

  sub_100012FEC();
  sub_100012FEC();

  return v4;
}

unint64_t sub_100011994()
{
  result = qword_1000206E8;
  if (!qword_1000206E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206E8);
  }

  return result;
}

uint64_t sub_1000119E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1000132FC();
  __chkstk_darwin(v10 - 8);
  sub_100001F60(&qword_1000206F0, &unk_100015540);
  sub_1000132CC();
  sub_1000104E0();
  v11 = sub_10001300C();

  sub_1000132CC();
  sub_10001300C();

  sub_1000132CC();
  sub_10001300C();

  sub_100011BE8(a1, a2);
  sub_100012FEC();
  sub_100011BE8(a3, a4);
  sub_100012FEC();
  sub_100011BE8(a5, a6);
  sub_100012FEC();
  sub_100011C28(a3, a4);
  sub_100011C28(a1, a2);
  sub_100011C28(a5, a6);

  return v11;
}

uint64_t sub_100011BE8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100011C28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100011C68(uint64_t a1)
{
  v2 = sub_10001346C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v71 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v72 = &v70 - v7;
  __chkstk_darwin(v6);
  v9 = &v70 - v8;
  v10 = sub_100001F60(&qword_100020730, &unk_100015638);
  v11 = __chkstk_darwin(v10 - 8);
  v75 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v76 = &v70 - v14;
  v15 = __chkstk_darwin(v13);
  v77 = &v70 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v70 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v70 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v70 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v70 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v70 - v30;
  __chkstk_darwin(v29);
  v33 = &v70 - v32;
  v81 = *(a1 + 16);
  v78 = a1;
  if (v81)
  {
    (*(v3 + 16))(v31, a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
    v34 = *(v3 + 56);
    v35 = v31;
    v36 = 0;
  }

  else
  {
    v34 = *(v3 + 56);
    v35 = v31;
    v36 = 1;
  }

  v80 = v34;
  v34(v35, v36, 1, v2);
  sub_1000127E0(v31, v33);
  sub_10000D250(v33, v28, &qword_100020730, &unk_100015638);
  v79 = *(v3 + 48);
  if (v79(v28, 1, v2) == 1)
  {
    sub_10000AB18(v33, &qword_100020730, &unk_100015638);
    result = sub_10000AB18(v28, &qword_100020730, &unk_100015638);
    v38 = 0;
    v39 = 0;
  }

  else
  {
    (*(v3 + 32))(v9, v28, v2);
    v40 = sub_10001344C();
    v42 = v41;
    v43 = sub_10001345C();
    v38 = sub_100011838(v40, v42, v43);
    v39 = v44;
    (*(v3 + 8))(v9, v2);
    result = sub_10000AB18(v33, &qword_100020730, &unk_100015638);
  }

  v45 = v78;
  v74 = v38;
  if (v81 <= 1)
  {
    v46 = 1;
  }

  else
  {
    if (*(v78 + 16) < 2uLL)
    {
      __break(1u);
      goto LABEL_23;
    }

    (*(v3 + 16))(v22, v78 + *(v3 + 72) + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
    v46 = 0;
  }

  v80(v22, v46, 1, v2);
  sub_1000127E0(v22, v25);
  sub_10000D250(v25, v19, &qword_100020730, &unk_100015638);
  v47 = v79(v19, 1, v2);
  v73 = v39;
  if (v47 == 1)
  {
    sub_10000AB18(v25, &qword_100020730, &unk_100015638);
    result = sub_10000AB18(v19, &qword_100020730, &unk_100015638);
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v50 = v72;
    (*(v3 + 32))(v72, v19, v2);
    v51 = sub_10001344C();
    v52 = v45;
    v54 = v53;
    v55 = sub_10001345C();
    v56 = v54;
    v45 = v52;
    v48 = sub_100011838(v51, v56, v55);
    v49 = v57;
    (*(v3 + 8))(v50, v2);
    result = sub_10000AB18(v25, &qword_100020730, &unk_100015638);
  }

  v59 = v76;
  v58 = v77;
  if (v81 <= 2)
  {
    v60 = 1;
    goto LABEL_18;
  }

  if (*(v45 + 16) < 3uLL)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  (*(v3 + 16))(v76, v45 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 2 * *(v3 + 72), v2);
  v60 = 0;
LABEL_18:

  v80(v59, v60, 1, v2);
  sub_1000127E0(v59, v58);
  v61 = v75;
  sub_10000D250(v58, v75, &qword_100020730, &unk_100015638);
  if (v79(v61, 1, v2) == 1)
  {
    sub_10000AB18(v58, &qword_100020730, &unk_100015638);
    sub_10000AB18(v61, &qword_100020730, &unk_100015638);
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v64 = v71;
    (*(v3 + 32))(v71, v61, v2);
    v65 = sub_10001344C();
    v67 = v66;
    v68 = sub_10001345C();
    v62 = sub_100011838(v65, v67, v68);
    v63 = v69;
    (*(v3 + 8))(v64, v2);
    sub_10000AB18(v58, &qword_100020730, &unk_100015638);
  }

  return sub_1000119E8(v74, v73, v48, v49, v62, v63);
}

uint64_t sub_100012394()
{
  v17 = sub_1000131EC();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001F60(&qword_100020218, &unk_100014370);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100001F60(&qword_1000201A0, &qword_100014100);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000132FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100001F60(&qword_100020350, &qword_100015550);
  sub_1000132CC();
  sub_1000132CC();
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = 1;
  sub_100012F7C();
  v14 = sub_100012F9C();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 0, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10000A744();
  return sub_10001307C();
}

uint64_t type metadata accessor for ScreenTimeNotificationsAppIntent.ScreenTimeNotificationsView(uint64_t a1)
{
  result = qword_1000207B8;
  if (!qword_1000207B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012730@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012FFC();
  *a1 = result;
  return result;
}

uint64_t sub_10001275C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012FFC();
  *a1 = result;
  return result;
}

uint64_t sub_100012788@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012FFC();
  *a1 = result;
  return result;
}

uint64_t sub_1000127B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001306C();
  *a1 = result;
  return result;
}

uint64_t sub_1000127E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F60(&qword_100020730, &unk_100015638);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100012850()
{
  result = qword_100020738;
  if (!qword_100020738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020738);
  }

  return result;
}

uint64_t sub_1000128C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001F60(&qword_100020758, &qword_100015668);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_1000129B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001F60(&qword_100020758, &qword_100015668);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_100012A7C(uint64_t a1)
{
  sub_100012B38(319, &unk_1000207C8, &type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  if (v1 <= 0x3F)
  {
    sub_100012B38(319, &unk_100020470, type metadata accessor for STActivityMode);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100012B38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10001367C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100012B94()
{
  result = qword_1000207F8;
  if (!qword_1000207F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207F8);
  }

  return result;
}

uint64_t sub_100012C04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100012C4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100012C60()
{
  result = qword_100020820;
  if (!qword_100020820)
  {
    sub_100001FA8(&qword_100020808, &qword_1000157D8);
    sub_100012D18();
    sub_100002378(&qword_1000204E0, &qword_1000204C0, &unk_1000157E0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020820);
  }

  return result;
}

unint64_t sub_100012D18()
{
  result = qword_100020828;
  if (!qword_100020828)
  {
    sub_100001FA8(&qword_100020800, &qword_1000157D0);
    sub_100012DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020828);
  }

  return result;
}

unint64_t sub_100012DA4()
{
  result = qword_100020830;
  if (!qword_100020830)
  {
    sub_100001FA8(&qword_100020838, &unk_100015800);
    sub_100012C04(&qword_100020818, &type metadata accessor for ScreenTimeNotificationsAppIntentView, &protocol conformance descriptor for ScreenTimeNotificationsAppIntentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020830);
  }

  return result;
}