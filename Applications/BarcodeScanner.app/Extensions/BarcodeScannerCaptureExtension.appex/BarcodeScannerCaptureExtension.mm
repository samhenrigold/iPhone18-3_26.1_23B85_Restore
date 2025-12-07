id sub_100001498()
{
  sub_100003EE0();
  sub_100003ED0();
  v0 = objc_allocWithZone(BCSRootViewController);

  return [v0 init];
}

uint64_t sub_10000153C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001AE0();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000015A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001AE0();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100001620(uint64_t a1)
{
  sub_100001AE0();
  sub_100003FC0();
  __break(1u);
}

uint64_t sub_100001648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003F50();
  v5 = sub_100003FF0();
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t sub_10000169C()
{
  v0 = sub_1000018E8(&qword_10000C048, &qword_100004390);
  v1 = sub_100001930();

  return LockedCameraCaptureUIScene.init(content:)(sub_100001648, 0, v0, v1);
}

uint64_t sub_10000170C(uint64_t a1)
{
  v2 = sub_100001894();

  return LockedCameraCaptureExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000017B4();
  sub_100003EF0();
  return 0;
}

unint64_t sub_1000017B4()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_10000183C()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    sub_100003EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_100001894()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

uint64_t sub_1000018E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001930()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    sub_1000019BC(&qword_10000C048, &qword_100004390);
    sub_100001A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_1000019BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001A04()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100001A6C()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    sub_1000019BC(&qword_10000C068, &qword_1000043C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100001AE0()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100001B38()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100001B8C()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_100001BE0()
{
  v0 = sub_100003E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003EB0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100004020();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100003E80();
  sub_100003CBC(v6, qword_10000CC50);
  sub_100003C84(v6, qword_10000CC50);
  sub_100004010();
  sub_100003EA0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100003E90();
}

uint64_t sub_100001DD0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100003F40();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100004060();
  v1[6] = sub_100004050();
  v4 = sub_100004040();

  return _swift_task_switch(sub_100001EC4, v4, v3);
}

uint64_t sub_100001EC4()
{

  sub_100003F20();
  v1 = sub_100003F30();
  v2 = sub_100004070();
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

  sub_100003DA0();

  v8 = v0[1];

  return v8();
}

uint64_t (*sub_100002068(uint64_t *a1))()
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
  *(v2 + 32) = sub_100003DB0();
  return sub_1000020DC;
}

void sub_1000020DC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10000212C()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100002184()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100002220()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

uint64_t sub_1000022CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002364;

  return sub_100001DD0(a1);
}

uint64_t sub_100002364()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002458@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000034F0();
  *a1 = result;
  return result;
}

uint64_t sub_10000249C(uint64_t a1)
{
  v2 = sub_100002220();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000024D8()
{
  v0 = sub_1000018E8(&qword_10000C120, &qword_100004958);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_100003E70();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003EB0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100004020();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100003E80();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100003E60();
  sub_100003CBC(v10, qword_10000CC68);
  sub_100003C84(v10, qword_10000CC68);
  sub_100004010();
  sub_100003EA0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100003E90();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100003E50();
}

uint64_t sub_1000027C0()
{
  v0 = sub_1000018E8(&qword_10000C118, &qword_100004950);
  __chkstk_darwin(v0 - 8);
  v20 = &v18 - v1;
  v2 = sub_1000018E8(&qword_10000C120, &qword_100004958);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v19 = sub_100003E70();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003EB0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100004020();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100003E80();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_1000018E8(&qword_10000C128, &qword_100004960);
  v12 = *(sub_1000018E8(&qword_10000C130, &qword_100004968) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000044A0;
  sub_100004010();
  sub_100003EA0();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v19);
  sub_100003E90();
  (*(v11 + 56))(v4, 1, 1, v10);
  v15 = sub_100003DF0();
  (*(*(v15 - 8) + 56))(v20, 1, 1, v15);
  sub_100003E00();
  v16 = sub_1000039F4(v14);
  swift_setDeallocating();
  sub_100003BAC(v14 + v13);
  result = swift_deallocClassInstance();
  qword_10000CC80 = v16;
  return result;
}

unint64_t sub_100002BE4()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

Swift::Int sub_100002C38()
{
  sub_1000040A0();
  sub_100004030();
  return sub_1000040B0();
}

Swift::Int sub_100002C9C(uint64_t a1)
{
  sub_1000040A0();
  sub_100004030();
  return sub_1000040B0();
}

uint64_t sub_100002CE8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008810;
  v7._object = v3;
  v5 = sub_100004090(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100002D5C()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

unint64_t sub_100002DB4()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_100002E18()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_100002E70()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100002EC8()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_100002F20()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_100002FB0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100003C84(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_1000030CC()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_100003120(uint64_t a1)
{
  v2 = sub_1000030CC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003170()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

unint64_t sub_1000031C8()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

unint64_t sub_100003220()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

uint64_t sub_100003274()
{
  if (qword_10000C028 != -1)
  {
    swift_once();
  }

  v1 = qword_10000CC80;

  return _swift_bridgeObjectRetain(v1);
}

uint64_t sub_1000032D0(uint64_t a1)
{
  v2 = sub_100002F20();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
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

uint64_t sub_1000034A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000019BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000034F0()
{
  v0 = sub_100003E20();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000018E8(&qword_10000C140, &qword_100004978);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_1000018E8(&qword_10000C120, &qword_100004958);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_100003E70();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003EB0();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100004020();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100003E80();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21 = sub_1000018E8(&qword_10000C148, &qword_100004980);
  sub_100004010();
  sub_100003EA0();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_100003E90();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26[0] = 1;
  v18 = sub_100003D90();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_1000030CC();
  return sub_100003DE0();
}

uint64_t sub_100003990()
{
  sub_1000040A0();
  sub_100004030();
  v0 = sub_1000040B0();

  return sub_100003964(v0);
}

unint64_t sub_1000039F4(uint64_t a1)
{
  v2 = sub_1000018E8(&qword_10000C130, &qword_100004968);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000018E8(&qword_10000C138, &qword_100004970);
    v7 = sub_100004080();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_100003C14(v8, v5);
      result = sub_100003990();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_100003E10();
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

uint64_t sub_100003BAC(uint64_t a1)
{
  v2 = sub_1000018E8(&qword_10000C130, &qword_100004968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000018E8(&qword_10000C130, &qword_100004968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003C84(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003CBC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}