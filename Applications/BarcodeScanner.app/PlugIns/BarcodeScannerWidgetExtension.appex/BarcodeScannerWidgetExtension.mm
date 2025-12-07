unint64_t sub_100001448()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

unint64_t sub_10000149C()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

uint64_t sub_1000014F0()
{
  v0 = sub_1000047C4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004804();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000048E4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000047D4();
  sub_100003664(v6, qword_10000C170);
  sub_10000362C(v6, qword_10000C170);
  sub_1000048D4();
  sub_1000047F4();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000047E4();
}

uint64_t sub_1000016E0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100004834();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100004934();
  v1[6] = sub_100004924();
  v4 = sub_100004914();

  return _swift_task_switch(sub_1000017D4, v4, v3);
}

uint64_t sub_1000017D4()
{

  sub_100004814();
  v1 = sub_100004824();
  v2 = sub_100004944();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "BarcodeScannerIntent performed successfully", v3, 2u);
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  v7 = [objc_opt_self() defaultCenter];
  [v7 postNotificationName:BCSDidLaunchFromControlNotification object:0];

  sub_1000046F4();

  v8 = v0[1];

  return v8();
}

uint64_t (*sub_100001978(uint64_t *a1))()
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
  *(v2 + 32) = sub_100004704();
  return sub_1000019EC;
}

void sub_1000019EC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100001A3C()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_100001A94()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_100001B30()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t sub_100001BDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001C74;

  return sub_1000016E0(a1);
}

uint64_t sub_100001C74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001D68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002E98();
  *a1 = result;
  return result;
}

uint64_t sub_100001DB0(uint64_t a1)
{
  v2 = sub_100001B30();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100001DEC()
{
  v0 = sub_100002E50(&qword_10000C0D0, &qword_100005038);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000047C4();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004804();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000048E4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000047D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000047B4();
  sub_100003664(v10, qword_10000C188);
  sub_10000362C(v10, qword_10000C188);
  sub_1000048D4();
  sub_1000047F4();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000047E4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000047A4();
}

uint64_t sub_1000020D4()
{
  v0 = sub_100002E50(&qword_10000C0C8, &qword_100005030);
  __chkstk_darwin(v0 - 8);
  v20 = &v18 - v1;
  v2 = sub_100002E50(&qword_10000C0D0, &qword_100005038);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v19 = sub_1000047C4();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004804();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000048E4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000047D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_100002E50(&qword_10000C0D8, &qword_100005040);
  v12 = *(sub_100002E50(&qword_10000C0E0, &qword_100005048) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100004B60;
  sub_1000048D4();
  sub_1000047F4();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v19);
  sub_1000047E4();
  (*(v11 + 56))(v4, 1, 1, v10);
  v15 = sub_100004744();
  (*(*(v15 - 8) + 56))(v20, 1, 1, v15);
  sub_100004754();
  v16 = sub_10000339C(v14);
  swift_setDeallocating();
  sub_100003554(v14 + v13);
  result = swift_deallocClassInstance();
  qword_10000C1A0 = v16;
  return result;
}

unint64_t sub_1000024F8()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

Swift::Int sub_10000254C()
{
  sub_100004974();
  sub_100004904();
  return sub_100004984();
}

Swift::Int sub_1000025B0(uint64_t a1)
{
  sub_100004974();
  sub_100004904();
  return sub_100004984();
}

uint64_t sub_1000025FC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000087B0;
  v7._object = v3;
  v5 = sub_100004964(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100002670()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_1000026C8()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_10000272C()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100002784()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_1000027DC()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100002834()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_1000028C4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000362C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_1000029E0()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100002A34(uint64_t a1)
{
  v2 = sub_1000029E0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100002A84()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100002ADC()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100002B34()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_100002B88()
{
  if (qword_10000C020 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100002BE4(uint64_t a1)
{
  v2 = sub_100002834();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100002C74(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchCodeScannerAppEnum(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LaunchCodeScannerAppEnum(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100002E08(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002C74(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002E50(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002E98()
{
  v0 = sub_100004774();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100002E50(&qword_10000C0F0, &qword_100005058);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_100002E50(&qword_10000C0D0, &qword_100005038);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1000047C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004804();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000048E4();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000047D4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21 = sub_100002E50(&qword_10000C0F8, &qword_100005060);
  sub_1000048D4();
  sub_1000047F4();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_1000047E4();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26[0] = 1;
  v18 = sub_1000046E4();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_1000029E0();
  return sub_100004734();
}

uint64_t sub_100003338()
{
  sub_100004974();
  sub_100004904();
  v0 = sub_100004984();

  return sub_10000330C(v0);
}

unint64_t sub_10000339C(uint64_t a1)
{
  v2 = sub_100002E50(&qword_10000C0E0, &qword_100005048);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002E50(&qword_10000C0E8, &qword_100005050);
    v7 = sub_100004954();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1000035BC(v8, v5);
      result = sub_100003338();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_100004764();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
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

uint64_t sub_100003554(uint64_t a1)
{
  v2 = sub_100002E50(&qword_10000C0E0, &qword_100005048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000035BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002E50(&qword_10000C0E0, &qword_100005048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000362C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003664(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000036D8()
{
  v0 = sub_100004804();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000048E4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100002E50(&qword_10000C108, &unk_1000050E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - v4;
  sub_1000048D4();
  sub_1000047F4();
  v8[1] = sub_1000048F4();
  v8[2] = v6;
  sub_100003988();
  sub_100004864();
  sub_1000039DC();
  sub_100004854();
  return (*(v3 + 8))(v5, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003908();
  sub_100004844();
  return 0;
}

unint64_t sub_100003908()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

unint64_t sub_100003988()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_1000039DC()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    sub_100002C74(&qword_10000C108, &unk_1000050E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

uint64_t sub_100003A40()
{
  sub_100002C74(&qword_10000C108, &unk_1000050E0);
  sub_1000039DC();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_100003AA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003AB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100003AF8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100003B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_1000047C4();
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  __chkstk_darwin(v5);
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004804();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000048E4();
  __chkstk_darwin(v9 - 8);
  v42 = sub_1000047D4();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100002E50(&qword_10000C120, &qword_100005168);
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v12 = &v32 - v11;
  v13 = sub_100002E50(&qword_10000C128, &qword_100005170);
  v14 = *(v13 - 8);
  v43 = v13;
  v44 = v14;
  __chkstk_darwin(v13);
  v35 = &v32 - v15;
  v16 = sub_100002E50(&qword_10000C130, &qword_100005178);
  v17 = *(v16 - 8);
  v45 = v16;
  v46 = v17;
  __chkstk_darwin(v16);
  v38 = &v32 - v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  sub_100002E50(&qword_10000C138, &qword_100005180);
  sub_100002E08(&qword_10000C140, &qword_10000C138, &qword_100005180, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_1000048C4();
  sub_1000048D4();
  sub_1000047F4();
  v34 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v49 + 104);
  v49 += 104;
  v33 = v20;
  v21 = v41;
  v20(v41);
  v22 = v36;
  sub_1000047E4();
  v23 = sub_100002E08(&qword_10000C148, &qword_10000C120, &qword_100005168, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v24 = v37;
  sub_100004884();
  v40 = *(v40 + 8);
  v25 = v42;
  (v40)(v22, v42);
  (*(v39 + 8))(v12, v24);
  sub_1000048D4();
  sub_1000047F4();
  v33(v21, v34, v48);
  sub_1000047E4();
  v50 = v24;
  v51 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v38;
  v28 = v43;
  v29 = v35;
  sub_100004874();
  (v40)(v22, v25);
  (*(v44 + 8))(v29, v28);
  v50 = v28;
  v51 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v45;
  sub_100004894();
  return (*(v46 + 8))(v27, v30);
}

uint64_t sub_1000041E4(uint64_t a1, uint64_t a2)
{
  sub_100002E98();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_100002E50(&qword_10000C150, &qword_100005188);
  sub_100002E08(&qword_10000C158, &qword_10000C150, &qword_100005188, &protocol conformance descriptor for Label<A, B>);
  sub_1000044C0();
  return sub_1000048B4();
}

uint64_t sub_1000042D8(uint64_t a1, uint64_t a2)
{
  sub_100004514();

  return sub_1000048A4();
}

uint64_t sub_100004350@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100004804();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000048E4();
  __chkstk_darwin(v3 - 8);
  sub_1000048D4();
  sub_1000047F4();
  result = sub_1000048F4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100004478()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000044C0()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

unint64_t sub_100004514()
{
  result = qword_10000C168;
  if (!qword_10000C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C168);
  }

  return result;
}

uint64_t sub_100004568()
{
  sub_100002C74(&qword_10000C130, &qword_100005178);
  sub_100002C74(&qword_10000C128, &qword_100005170);
  sub_100002C74(&qword_10000C120, &qword_100005168);
  sub_100002E08(&qword_10000C148, &qword_10000C120, &qword_100005168, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}