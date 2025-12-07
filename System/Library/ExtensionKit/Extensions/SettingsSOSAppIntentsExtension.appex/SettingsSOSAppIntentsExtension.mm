uint64_t sub_1000012F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v4 = 47;
    }

    if (v2)
    {
      v3 = 0x8000000100007900;
    }

    else
    {
      v3 = 0xE100000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x8000000100007920;
    v4 = 0xD000000000000017;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x8000000100007940;
    }

    else
    {
      v3 = 0x8000000100007960;
    }

    v4 = 0xD000000000000013;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 47;
    }

    if (a2)
    {
      v5 = 0x8000000100007900;
    }

    else
    {
      v5 = 0xE100000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_32;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x8000000100007920;
    if (v4 != 0xD000000000000017)
    {
LABEL_32:
      v7 = sub_100006D3C();
      goto LABEL_33;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0x8000000100007940;
    }

    else
    {
      v5 = 0x8000000100007960;
    }

    if (v4 != 0xD000000000000013)
    {
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_32;
  }

  v7 = 1;
LABEL_33:

  return v7 & 1;
}

unint64_t sub_100001484()
{
  result = qword_100010050;
  if (!qword_100010050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010050);
  }

  return result;
}

Swift::Int sub_1000014D8()
{
  sub_100006D4C();
  sub_100006D1C();

  return sub_100006D5C();
}

uint64_t sub_1000015C0(uint64_t a1)
{
  sub_100006D1C();
}

Swift::Int sub_100001694(uint64_t a1)
{
  sub_100006D4C();
  sub_100006D1C();

  return sub_100006D5C();
}

unint64_t sub_100001778@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100004BE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000017A8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 47;
  v5 = 0x8000000100007920;
  v6 = 0xD000000000000017;
  v7 = 0x8000000100007940;
  if (v2 != 3)
  {
    v7 = 0x8000000100007960;
  }

  if (v2 != 2)
  {
    v6 = 0xD000000000000013;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x8000000100007900;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_100001890(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000018E8()
{
  v1 = 47;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

unint64_t sub_100001988@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100004BE0(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1000019D4()
{
  result = qword_100010068;
  if (!qword_100010068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010068);
  }

  return result;
}

unint64_t sub_100001A2C()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_100001A80()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

uint64_t sub_100001AD4()
{
  v0 = sub_100005940(&qword_100010138, &qword_100007720);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_100006C9C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006CDC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100006D0C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100006CAC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100006C5C();
  sub_100005ABC(v10, qword_1000101D8);
  sub_100005A84(v10, qword_1000101D8);
  sub_100006CFC();
  sub_100006CCC();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100006CBC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100006C4C();
}

uint64_t sub_100001DB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005B4C;

  return sub_100004E90(a1);
}

uint64_t sub_100001E5C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005B28;

  return sub_100004C2C();
}

uint64_t sub_100001F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100001FC0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100001FC0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1000020C0()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

uint64_t sub_100002114(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000021B8;

  return sub_1000052C8();
}

uint64_t sub_1000021B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_1000022D0()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

unint64_t sub_100002324()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

unint64_t sub_10000237C()
{
  result = qword_100010098;
  if (!qword_100010098)
  {
    sub_100001890(&qword_1000100A0, qword_100007108);
    sub_100002324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010098);
  }

  return result;
}

uint64_t sub_100002400(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000020C0();
  *v5 = v2;
  v5[1] = sub_1000024B4;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000024B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000025A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000264C;

  return sub_1000050F4();
}

uint64_t sub_10000264C(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_100002768()
{
  result = qword_1000100A8;
  if (!qword_1000100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A8);
  }

  return result;
}

uint64_t sub_1000027BC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_100005940(&qword_100010160, &qword_100007730);
  __chkstk_darwin(v4 - 8);
  v6 = v50 - v5;
  v7 = sub_100005940(&qword_100010138, &qword_100007720);
  __chkstk_darwin(v7 - 8);
  v9 = v50 - v8;
  v60 = sub_100006C9C();
  v10 = *(v60 - 8);
  __chkstk_darwin(v60);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100006CDC();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100006D0C();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100006CAC();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v59 = a2;
  if (a1 <= 1u)
  {
    v57 = v19;
    v58 = v6;
    v56 = v50 - v18;
    if (a1)
    {
      sub_100006C8C();
      sub_100006CFC();
      v53 = "#EMERGENCY_CONTACTS";
      sub_100006CCC();
      LODWORD(v54) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v45 = *(v10 + 104);
      v46 = v60;
      v45(v12);
      sub_100006CBC();
      (*(v16 + 56))(v9, 0, 1, v15);
      v47 = v58;
      sub_100006B6C();
      v48 = sub_100006B7C();
      (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
      sub_100005940(&qword_100010168, &qword_100007738);
      *(swift_allocObject() + 16) = xmmword_100006F20;
      sub_100006CFC();
      sub_100006CCC();
      (v45)(v12, v54, v46);
    }

    else
    {
      sub_100006CFC();
      v53 = "#EMERGENCY_CONTACTS";
      sub_100006CCC();
      v51 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v54 = *(v10 + 104);
      v54(v12);
      sub_100006CBC();
      v25 = *(v16 + 56);
      v24 = v16 + 56;
      v55 = v9;
      v25(v9, 1, 1, v15);
      v26 = v58;
      sub_100006B6C();
      v27 = sub_100006B7C();
      (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
      sub_100005940(&qword_100010168, &qword_100007738);
      v52 = *(v24 + 16);
      v28 = (*(v24 + 24) + 32) & ~*(v24 + 24);
      v50[4] = 8 * v52;
      v29 = swift_allocObject();
      v50[5] = v29;
      *(v29 + 16) = xmmword_100006F30;
      v30 = v29 + v28;
      sub_100006CFC();
      sub_100006CCC();
      v31 = v51;
      v32 = v60;
      v33 = v54;
      (v54)(v12, v51, v60);
      sub_100006CBC();
      sub_100006CFC();
      sub_100006CCC();
      v34 = v31;
      v33(v12, v31, v32);
      sub_100006CBC();
      sub_100006CFC();
      sub_100006CCC();
      v33(v12, v31, v32);
      sub_100006CBC();
      sub_100006CFC();
      sub_100006CCC();
      v35 = v32;
      v36 = v54;
      (v54)(v12, v34, v32);
      sub_100006CBC();
      v37 = 4 * v52;
      sub_100006CFC();
      sub_100006CCC();
      v36(v12, v34, v35);
      v50[3] = v30;
      sub_100006CBC();
      v50[1] = v37 + v52;
      sub_100006CFC();
      sub_100006CCC();
      v38 = v34;
      v39 = v34;
      v40 = v60;
      v50[2] = v10 + 104;
      v41 = v54;
      (v54)(v12, v39, v60);
      sub_100006CBC();
      sub_100006CFC();
      sub_100006CCC();
      v41(v12, v38, v40);
      sub_100006CBC();
      sub_100006CFC();
      sub_100006CCC();
      v41(v12, v51, v40);
    }

    sub_100006CBC();
    sub_100006C8C();
  }

  else if (a1 == 2)
  {
    v56 = v50 - v18;
    sub_100006C8C();
    sub_100006CFC();
    sub_100006CCC();
    (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v60);
    sub_100006CBC();
    (*(v16 + 56))(v9, 0, 1, v15);
    sub_100006B6C();
    v42 = sub_100006B7C();
    (*(*(v42 - 8) + 56))(v6, 0, 1, v42);
    sub_100006C8C();
  }

  else
  {
    v57 = v19;
    v58 = v6;
    if (a1 == 3)
    {
      v56 = v50 - v18;
      sub_100006C8C();
      sub_100006CFC();
      sub_100006CCC();
      LODWORD(v54) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v20 = *(v10 + 104);
      v21 = v60;
      v20(v12);
      sub_100006CBC();
      (*(v16 + 56))(v9, 0, 1, v15);
      v55 = v9;
      v22 = v58;
      sub_100006B6C();
      v23 = sub_100006B7C();
      (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
      sub_100005940(&qword_100010168, &qword_100007738);
      *(swift_allocObject() + 16) = xmmword_100006F20;
      sub_100006CFC();
      sub_100006CCC();
      (v20)(v12, v54, v21);
      sub_100006CBC();
    }

    else
    {
      sub_100006C8C();
      sub_100006CFC();
      sub_100006CCC();
      (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v60);
      sub_100006CBC();
      (*(v16 + 56))(v9, 0, 1, v15);
      v43 = v58;
      sub_100006B6C();
      v44 = sub_100006B7C();
      (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    }

    sub_100006C8C();
  }

  return sub_100006B8C();
}

uint64_t sub_100003710(uint64_t a1)
{
  v1 = sub_100005940(&qword_100010170, &qword_100007740);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100005940(&qword_100010178, &qword_100007748);
  __chkstk_darwin(v5);
  sub_100001A80();
  sub_100006C0C();
  v8._object = 0x8000000100007DD0;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  sub_100006BFC(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_100006BEC();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100006BFC(v9);
  return sub_100006C1C();
}

uint64_t sub_1000038D4()
{
  v0 = qword_100010020;

  return v0;
}

unint64_t sub_10000390C()
{
  result = qword_1000100B0;
  if (!qword_1000100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B0);
  }

  return result;
}

unint64_t sub_100003964()
{
  result = qword_1000100B8;
  if (!qword_1000100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B8);
  }

  return result;
}

unint64_t sub_1000039BC()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

unint64_t sub_100003A18()
{
  result = qword_1000100C8;
  if (!qword_1000100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C8);
  }

  return result;
}

uint64_t sub_100003A6C(uint64_t a1)
{
  sub_100005A30();
  v2 = sub_100006BBC();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100003ADC()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

unint64_t sub_100003B34()
{
  result = qword_1000100D8;
  if (!qword_1000100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D8);
  }

  return result;
}

unint64_t sub_100003B90()
{
  result = qword_1000100E0;
  if (!qword_1000100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E0);
  }

  return result;
}

unint64_t sub_100003BE8()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

uint64_t sub_100003CC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001890(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003D10(uint64_t a1)
{
  v2 = sub_100001A80();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003D60()
{
  result = qword_100010100;
  if (!qword_100010100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010100);
  }

  return result;
}

uint64_t sub_100003DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000024B4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003E80(uint64_t a1)
{
  v2 = sub_100003B90();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003ED0()
{
  result = qword_100010108;
  if (!qword_100010108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010108);
  }

  return result;
}

uint64_t sub_100003F28()
{
  v0 = sub_100006C9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100006CDC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100006D0C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100006CAC();
  sub_100005ABC(v6, qword_1000101F0);
  sub_100005A84(v6, qword_1000101F0);
  sub_100006CFC();
  sub_100006CCC();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100006CBC();
}

void *sub_10000414C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000069DC();
  *a1 = v3;
  return result;
}

uint64_t (*sub_1000041C0(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000069CC();
  return sub_100004234;
}

void sub_100004234(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100004280()
{
  result = qword_100010110;
  if (!qword_100010110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010110);
  }

  return result;
}

uint64_t sub_1000042D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005988();
  v5 = sub_100005A30();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100004344()
{
  v0 = qword_100010040;

  return v0;
}

unint64_t sub_100004384()
{
  result = qword_100010118;
  if (!qword_100010118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010118);
  }

  return result;
}

unint64_t sub_1000043DC()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

unint64_t sub_100004434()
{
  result = qword_100010128;
  if (!qword_100010128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010128);
  }

  return result;
}

uint64_t sub_100004510@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100005A84(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000045D8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100005988();
  v6 = sub_1000059DC();
  v7 = sub_100005A30();
  *v4 = v2;
  v4[1] = sub_1000046A4;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000046A4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000047AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000054C4();
  *a1 = result;
  return result;
}

uint64_t sub_1000047D4(uint64_t a1)
{
  v2 = sub_100004280();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100004858(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000048E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_1000049B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000049F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000049D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100004AEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000049F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005940(&qword_100010188, &qword_100007768);
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

char *sub_100004AEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005940(&qword_100010180, &qword_100007758);
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

unint64_t sub_100004BE0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C908;
  v6._object = a2;
  v4 = sub_100006D2C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100004C48()
{
  for (i = 0; i != 5; ++i)
  {
    v1 = *(&off_10000C9C8 + i + 32);
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (v1 == 3)
    {
      if (v3)
      {
        continue;
      }

      v4 = objc_opt_self();
      if (([v4 isCallWithVolumeLockHoldEnabled] & 1) == 0 && !objc_msgSend(v4, "isCallWithSideButtonPressesEnabled"))
      {
        continue;
      }
    }

    else if (v3)
    {
      continue;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000049D8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v6 = *(&_swiftEmptyArrayStorage + 2);
    v5 = *(&_swiftEmptyArrayStorage + 3);
    if (v6 >= v5 >> 1)
    {
      sub_1000049D8((v5 > 1), v6 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v6 + 1;
    *(&_swiftEmptyArrayStorage + v6 + 32) = v1;
  }

  v7 = *(&_swiftEmptyArrayStorage + 2);
  if (v7)
  {
    sub_1000049B8(0, v7, 0);
    v8 = *(&_swiftEmptyArrayStorage + 2);
    v9 = 32;
    do
    {
      v10 = *(&_swiftEmptyArrayStorage + v9);
      v11 = *(&_swiftEmptyArrayStorage + 3);
      if (v8 >= v11 >> 1)
      {
        sub_1000049B8((v11 > 1), v8 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v8 + 1;
      *(&_swiftEmptyArrayStorage + v8 + 32) = v10;
      ++v9;
      ++v8;
      --v7;
    }

    while (v7);
  }

  v12 = *(v14 + 8);

  return v12(&_swiftEmptyArrayStorage);
}

uint64_t sub_100004EB0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      v6 = [objc_opt_self() currentDevice];
      v7 = [v6 userInterfaceIdiom];

      if (v5 == 3)
      {
        if (!v7)
        {
          v8 = objc_opt_self();
          if (([v8 isCallWithVolumeLockHoldEnabled] & 1) != 0 || objc_msgSend(v8, "isCallWithSideButtonPressesEnabled"))
          {
LABEL_10:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000049D8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
            }

            v10 = *(&_swiftEmptyArrayStorage + 2);
            v9 = *(&_swiftEmptyArrayStorage + 3);
            if (v10 >= v9 >> 1)
            {
              sub_1000049D8((v9 > 1), v10 + 1, 1);
            }

            *(&_swiftEmptyArrayStorage + 2) = v10 + 1;
            *(&_swiftEmptyArrayStorage + v10 + 32) = v4;
          }
        }
      }

      else if (!v7)
      {
        goto LABEL_10;
      }

      --v2;
    }

    while (v2);
  }

  v11 = *(&_swiftEmptyArrayStorage + 2);
  if (v11)
  {
    sub_1000049B8(0, v11, 0);
    v12 = *(&_swiftEmptyArrayStorage + 2);
    v13 = 32;
    do
    {
      v14 = *(&_swiftEmptyArrayStorage + v13);
      v15 = *(&_swiftEmptyArrayStorage + 3);
      if (v12 >= v15 >> 1)
      {
        sub_1000049B8((v15 > 1), v12 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
      *(&_swiftEmptyArrayStorage + v12 + 32) = v14;
      ++v13;
      ++v12;
      --v11;
    }

    while (v11);
  }

  v16 = *(v18 + 8);

  return v16(&_swiftEmptyArrayStorage);
}

uint64_t sub_100005110()
{
  for (i = 0; i != 5; ++i)
  {
    v1 = *(&off_10000C9F0 + i + 32);
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (v1 == 3)
    {
      if (v3)
      {
        continue;
      }

      v4 = objc_opt_self();
      if (([v4 isCallWithVolumeLockHoldEnabled] & 1) == 0 && !objc_msgSend(v4, "isCallWithSideButtonPressesEnabled"))
      {
        continue;
      }
    }

    else if (v3)
    {
      continue;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000049D8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v6 = *(&_swiftEmptyArrayStorage + 2);
    v5 = *(&_swiftEmptyArrayStorage + 3);
    if (v6 >= v5 >> 1)
    {
      sub_1000049D8((v5 > 1), v6 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v6 + 1;
    *(&_swiftEmptyArrayStorage + v6 + 32) = v1;
  }

  if (*(&_swiftEmptyArrayStorage + 2))
  {
    v7 = *(&_swiftEmptyArrayStorage + 32);
  }

  else
  {
    v7 = 5;
  }

  v8 = *(v10 + 8);

  return v8(v7);
}

uint64_t sub_1000052E4()
{
  sub_1000049B8(0, 5, 0);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1000049B8((v1 > 1), v2 + 1, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v4;
  *(&_swiftEmptyArrayStorage + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_1000049B8((v1 > 1), v2 + 2, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v5;
  *(&_swiftEmptyArrayStorage + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_1000049B8((v1 > 1), v2 + 3, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v6;
  *(&_swiftEmptyArrayStorage + v5 + 32) = 2;
  v7 = *(&_swiftEmptyArrayStorage + 3);
  v8 = v7 >> 1;
  v9 = v2 + 4;
  if ((v7 >> 1) < (v2 + 4))
  {
    sub_1000049B8((v7 > 1), v2 + 4, 1);
    v7 = *(&_swiftEmptyArrayStorage + 3);
    v8 = v7 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v9;
  *(&_swiftEmptyArrayStorage + v6 + 32) = 3;
  if (v8 < (v2 + 5))
  {
    sub_1000049B8((v7 > 1), v2 + 5, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v2 + 5;
  *(&_swiftEmptyArrayStorage + v9 + 32) = 4;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000054C4()
{
  v0 = sub_100006C2C();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100005940(&qword_100010130, &qword_100007718);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v5;
  v6 = sub_100005940(&qword_100010138, &qword_100007720);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = sub_100006C9C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100006CDC();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100006D0C();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100006CAC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v20[1] = sub_100005940(&qword_100010140, &qword_100007728);
  sub_100006CFC();
  sub_100006CCC();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  sub_100006CBC();
  (*(v16 + 56))(v8, 1, 1, v15);
  v26[0] = 5;
  v17 = sub_1000069BC();
  v18 = *(*(v17 - 8) + 56);
  v18(v21, 1, 1, v17);
  v18(v22, 1, 1, v17);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_100001A80();
  return sub_1000069FC();
}

uint64_t sub_100005940(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005988()
{
  result = qword_100010148;
  if (!qword_100010148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010148);
  }

  return result;
}

unint64_t sub_1000059DC()
{
  result = qword_100010150;
  if (!qword_100010150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010150);
  }

  return result;
}

unint64_t sub_100005A30()
{
  result = qword_100010158;
  if (!qword_100010158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010158);
  }

  return result;
}

uint64_t sub_100005A84(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005ABC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100005B50()
{
  v0 = sub_100005940(&qword_1000101B0, &qword_100007858);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_100004280();
  sub_100006ADC();
  v4 = sub_100006A6C();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_100006ADC();
  v6 = sub_100006A6C();
  v5(v3, v0);
  sub_100006ADC();
  v7 = sub_100006A6C();
  v5(v3, v0);
  sub_100006ADC();
  v8 = sub_100006A6C();
  v5(v3, v0);
  sub_100005940(&qword_1000101C0, &qword_100007868);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100007790;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = sub_100006A5C();

  return v10;
}

uint64_t sub_100005DD0()
{
  v0 = sub_100006A8C();
  sub_100005940(&qword_100010198, &qword_100007818);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100006F20;
  *(v1 + 32) = v0;
  v2 = sub_100006A7C();

  return v2;
}

uint64_t sub_100005E5C()
{
  v0 = sub_100005940(&qword_1000101B0, &qword_100007858);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100005940(&qword_1000101B8, &qword_100007860);
  __chkstk_darwin(v4);
  sub_100004280();
  sub_100006B0C();
  v10._countAndFlagsBits = 0x206E65704FLL;
  v10._object = 0xE500000000000000;
  sub_100006AFC(v10);
  swift_getKeyPath();
  sub_100002324();
  sub_100006A4C();

  sub_100006AEC();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_100006AFC(v11);
  sub_100006B1C();
  v5 = sub_100006A6C();
  (*(v1 + 8))(v3, v0);
  sub_100005940(&qword_1000101C0, &qword_100007868);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100006F20;
  *(v6 + 32) = v5;
  v7 = sub_100006A5C();

  return v7;
}

uint64_t sub_1000060B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100006ACC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100002324();
  sub_100006A4C();

  sub_100004280();
  sub_100006ABC();
  v6 = sub_100006AAC();
  (*(v3 + 8))(v5, v2);
  sub_100005940(&qword_1000101A8, &qword_100007850);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100006F20;
  *(v7 + 32) = v6;
  v8 = sub_100006A9C();

  return v8;
}

uint64_t sub_10000621C()
{
  v0 = sub_100006A8C();
  v1 = sub_100006A8C();
  v2 = sub_100006A8C();
  v3 = sub_100006A8C();
  sub_100005940(&qword_100010198, &qword_100007818);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100007790;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_100006A7C();

  return v5;
}

uint64_t sub_100006310()
{
  v0 = sub_100006A8C();
  sub_100005940(&qword_100010198, &qword_100007818);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100006F20;
  *(v1 + 32) = v0;
  v2 = sub_100006A7C();

  return v2;
}

uint64_t sub_10000639C()
{
  v0 = sub_100006A3C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004280();
  sub_100006A2C();
  v4 = sub_100006A1C();
  (*(v1 + 8))(v3, v0);
  sub_100005940(&qword_100010190, ".\n");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100006F20;
  *(v5 + 32) = v4;
  v6 = sub_100006A0C();

  return v6;
}

uint64_t sub_1000064EC()
{
  v0 = sub_100006B4C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000054C4();
  sub_100004280();
  sub_100006B5C();
  v4 = sub_100006B3C();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v11 = sub_1000054C4();
  sub_100006B5C();
  v6 = sub_100006B3C();
  v5(v3, v0);
  sub_100005940(&qword_1000101A0, &qword_100007820);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000077A0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_100006B2C();

  return v8;
}

void *sub_1000066D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000069DC();
  *a1 = v3;
  return result;
}

uint64_t sub_100006748(uint64_t a1)
{
  v2 = sub_100006898();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000067F0();
  sub_100006CEC();
  return 0;
}

unint64_t sub_1000067F0()
{
  result = qword_1000101C8;
  if (!qword_1000101C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C8);
  }

  return result;
}

unint64_t sub_100006898()
{
  result = qword_1000101D0;
  if (!qword_1000101D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101D0);
  }

  return result;
}