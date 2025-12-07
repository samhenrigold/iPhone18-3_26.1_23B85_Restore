unint64_t sub_1000011CC()
{
  result = qword_100010058;
  if (!qword_100010058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010058);
  }

  return result;
}

unint64_t sub_100001224()
{
  result = qword_100010060;
  if (!qword_100010060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010060);
  }

  return result;
}

uint64_t sub_1000012AC()
{
  v0 = sub_100009B24();
  sub_100005D8C(v0, qword_100010230);
  sub_100005D54(v0, qword_100010230);
  return sub_100009AF4();
}

uint64_t sub_100001310()
{
  sub_1000089C4(0, &qword_100010140, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
  __chkstk_darwin(v0 - 8);
  v2 = v15 - v1;
  v15[0] = sub_100009B04();
  v3 = *(v15[0] - 8);
  __chkstk_darwin(v15[0]);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009B54();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100009BB4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100009B24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  sub_1000089C4(0, &qword_1000101C8, &type metadata accessor for IntentDescription, &type metadata accessor for Optional);
  v11 = v10;
  sub_100005D8C(v10, qword_100010248);
  v12 = sub_100005D54(v11, qword_100010248);
  sub_100009BA4();
  sub_100009B44();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v15[0]);
  sub_100009B34();
  (*(v9 + 56))(v2, 1, 1, v8);
  sub_1000099A4();
  v13 = sub_100009994();
  return (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
}

void *sub_100001688@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100009854();
  *a1 = v3;
  return result;
}

uint64_t (*sub_1000016FC(uint64_t *a1))()
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
  *(v2 + 32) = sub_100009844();
  return sub_100001770;
}

void sub_100001770(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000017C0()
{
  result = qword_100010068;
  if (!qword_100010068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010068);
  }

  return result;
}

uint64_t sub_100001814(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000891C();
  v5 = sub_100005DF0();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000018A4()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_1000018FC()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

unint64_t sub_100001954()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

uint64_t sub_100001A4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010030 != -1)
  {
    swift_once();
  }

  sub_1000089C4(0, &qword_1000101C8, &type metadata accessor for IntentDescription, &type metadata accessor for Optional);
  v3 = sub_100005D54(v2, qword_100010248);

  return sub_100008A28(v3, a1);
}

uint64_t sub_100001AF4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000891C();
  v6 = sub_100008970();
  v7 = sub_100005DF0();
  *v4 = v2;
  v4[1] = sub_100001BC0;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100001BC0()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100001CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005800();
  *a1 = result;
  return result;
}

uint64_t sub_100001CF0(uint64_t a1)
{
  v2 = sub_1000017C0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100001D2C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_1000089C4(0, &qword_100010150, &type metadata accessor for DisplayRepresentation.Image, &type metadata accessor for Optional);
  __chkstk_darwin(v4 - 8);
  v61 = &v54 - v5;
  sub_1000089C4(0, &qword_100010140, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v62 = &v54 - v7;
  v8 = sub_100009B04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009B54();
  __chkstk_darwin(v12 - 8);
  v13 = sub_100009BB4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100009B24();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v59 = v18;
  v60 = a2;
  v57 = &v54 - v19;
  v58 = v17;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_100009BA4();
      sub_100009B44();
      v33 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v34 = *(v9 + 104);
      v56 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v35 = v8;
      v34(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      sub_100009B34();
      sub_100009BA4();
      sub_100009B44();
      v34(v11, v33, v8);
      v36 = v34;
      v37 = v62;
      sub_100009B34();
      (*(v15 + 56))(v37, 0, 1, v58);
      v38 = v61;
      sub_1000099B4();
      v39 = sub_1000099C4();
      (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
      sub_1000089C4(0, &qword_100010158, &type metadata accessor for LocalizedStringResource, &type metadata accessor for _ContiguousArrayStorage);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_100009FD0;
      sub_100009BA4();
      sub_100009B44();
      v40 = v56;
      v34(v11, v56, v8);
      sub_100009B34();
      sub_100009BA4();
      sub_100009B44();
      v34(v11, v40, v8);
      sub_100009B34();
    }

    else
    {
      if (a1 == 3)
      {
        sub_100009BA4();
        sub_100009B44();
        v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
        v21 = *(v9 + 104);
        v22 = v8;
        v21(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
        sub_100009B34();
        sub_100009BA4();
        sub_100009B44();
        v23 = v20;
        v21(v11, v20, v22);
        v24 = v62;
        sub_100009B34();
        (*(v15 + 56))(v24, 0, 1, v58);
        v25 = v61;
        sub_1000099B4();
        v26 = sub_1000099C4();
        (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
        sub_1000089C4(0, &qword_100010158, &type metadata accessor for LocalizedStringResource, &type metadata accessor for _ContiguousArrayStorage);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_100009FD0;
        sub_100009BA4();
        sub_100009B44();
        v21(v11, v23, v22);
        sub_100009B34();
        sub_100009BA4();
        sub_100009B44();
        v21(v11, v23, v22);
        sub_100009B34();
        sub_100009BA4();
        sub_100009B44();
        v21(v11, v23, v22);
        goto LABEL_7;
      }

      sub_100009BA4();
      sub_100009B44();
      v41 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v42 = *(v9 + 104);
      v56 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v35 = v8;
      v42(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      sub_100009B34();
      sub_100009BA4();
      sub_100009B44();
      v42(v11, v41, v8);
      v36 = v42;
      v43 = v62;
      sub_100009B34();
      (*(v15 + 56))(v43, 0, 1, v58);
      v44 = v61;
      sub_1000099B4();
      v45 = sub_1000099C4();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      sub_1000089C4(0, &qword_100010158, &type metadata accessor for LocalizedStringResource, &type metadata accessor for _ContiguousArrayStorage);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_100009FD0;
      sub_100009BA4();
      sub_100009B44();
      v40 = v56;
      v42(v11, v56, v8);
      sub_100009B34();
      sub_100009BA4();
      sub_100009B44();
      v42(v11, v40, v8);
      sub_100009B34();
    }

    sub_100009BA4();
    sub_100009B44();
    v36(v11, v40, v35);
    goto LABEL_7;
  }

  sub_100009BA4();
  sub_100009B44();
  if (a1)
  {
    v46 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v47 = *(v9 + 104);
    v56 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v47(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
    v55 = v47;
    sub_100009B34();
    sub_100009BA4();
    sub_100009B44();
    v47(v11, v46, v8);
    v48 = v62;
    sub_100009B34();
    (*(v15 + 56))(v48, 0, 1, v58);
    v49 = v61;
    sub_1000099B4();
    v50 = sub_1000099C4();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    sub_1000089C4(0, &qword_100010158, &type metadata accessor for LocalizedStringResource, &type metadata accessor for _ContiguousArrayStorage);
    *(swift_allocObject() + 16) = xmmword_100009FE0;
    sub_100009BA4();
    sub_100009B44();
    v51 = v56;
    v52 = v55;
    v55(v11, v56, v8);
    sub_100009B34();
    sub_100009BA4();
    sub_100009B44();
    v52(v11, v51, v8);
  }

  else
  {
    v27 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v28 = *(v9 + 104);
    v29 = v8;
    v28(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
    sub_100009B34();
    sub_100009BA4();
    sub_100009B44();
    v28(v11, v27, v8);
    v30 = v62;
    sub_100009B34();
    (*(v15 + 56))(v30, 0, 1, v58);
    v31 = v61;
    sub_1000099B4();
    v32 = sub_1000099C4();
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    sub_100009BA4();
    sub_100009B44();
    v28(v11, v27, v29);
  }

LABEL_7:
  sub_100009B34();
  return sub_1000099E4();
}

uint64_t sub_100002EF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100006DE4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006CBC();
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100006C70();
    **(*(v4 + 64) + 40) = sub_100009BF4();

    return _swift_continuation_throwingResume(v4);
  }
}

unint64_t sub_100002FD8()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

uint64_t sub_10000302C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5F53454352554F53;
    }

    else
    {
      v3 = 1953460082;
    }

    if (v2)
    {
      v5 = 0xEC0000004D455449;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000013;
      v4 = "HEALTH_DETAILS_ITEM";
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v3 = 0xD000000000000013;
      v4 = "HEALTH_RECORDS_ITEM";
LABEL_12:
      v5 = (v4 - 32) | 0x8000000000000000;
      goto LABEL_14;
    }

    v3 = 0x5F4C41434944454DLL;
    v5 = 0xEF4D4554495F4449;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x5F53454352554F53;
    }

    else
    {
      v7 = 1953460082;
    }

    if (a2)
    {
      v8 = 0xEC0000004D455449;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 2)
  {
    v6 = "HEALTH_DETAILS_ITEM";
LABEL_27:
    v8 = (v6 - 32) | 0x8000000000000000;
    if (v3 != 0xD000000000000013)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 3)
  {
    v6 = "HEALTH_RECORDS_ITEM";
    goto LABEL_27;
  }

  v8 = 0xEF4D4554495F4449;
  if (v3 != 0x5F4C41434944454DLL)
  {
LABEL_32:
    v9 = sub_100009C84();
    goto LABEL_33;
  }

LABEL_30:
  if (v5 != v8)
  {
    goto LABEL_32;
  }

  v9 = 1;
LABEL_33:

  return v9 & 1;
}

Swift::Int sub_1000031E0()
{
  sub_100009CA4();
  sub_100009BD4();

  return sub_100009CB4();
}

uint64_t sub_1000032D8(uint64_t a1)
{
  sub_100009BD4();
}

Swift::Int sub_1000033BC(uint64_t a1)
{
  sub_100009CA4();
  sub_100009BD4();

  return sub_100009CB4();
}

unint64_t sub_1000034B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005EAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000034E0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1953460082;
  v5 = 0x800000010000A920;
  v6 = 0xD000000000000013;
  v7 = 0x800000010000A940;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0x5F4C41434944454DLL;
    v7 = 0xEF4D4554495F4449;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5F53454352554F53;
    v3 = 0xEC0000004D455449;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100003598()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    sub_100006E28(255, &qword_100010098, &type metadata for SettingsPane, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

unint64_t sub_100003624()
{
  v1 = *v0;
  v2 = 1953460082;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x5F4C41434944454DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5F53454352554F53;
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

unint64_t sub_1000036D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100005EAC(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100003720()
{
  result = qword_1000100A0;
  if (!qword_1000100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A0);
  }

  return result;
}

uint64_t sub_100003774()
{
  sub_1000089C4(0, &qword_100010140, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_100009B04();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009B54();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100009BB4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100009B24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100009AC4();
  sub_100005D8C(v10, qword_100010260);
  sub_100005D54(v10, qword_100010260);
  sub_100009BA4();
  sub_100009B44();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100009B34();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100009AB4();
}

uint64_t sub_100003A80()
{
  sub_100005E44(0, &qword_100010170, sub_100003FEC, &type metadata accessor for EntityURLRepresentation.StringInterpolation.Token);
  v1 = v0;
  v2 = *(v0 - 8);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  sub_100005E44(0, &qword_100010178, sub_100003FEC, &type metadata accessor for EntityURLRepresentation.StringInterpolation);
  __chkstk_darwin(v5);
  sub_100005E44(0, &qword_100010168, sub_100003FEC, &type metadata accessor for EntityURLRepresentation);
  v7 = v6;
  sub_100005D8C(v6, qword_100010278);
  sub_100005D54(v7, qword_100010278);
  sub_100003FEC();
  sub_100009A74();
  v10._object = 0x800000010000AFF0;
  v10._countAndFlagsBits = 0xD00000000000003FLL;
  sub_100009A64(v10);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_100009A54();
  (*(v2 + 8))(v4, v1);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_100009A64(v11);
  return sub_100009A84();
}

uint64_t sub_100003CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100003D84;

  return sub_100006E78(a2, a3);
}

uint64_t sub_100003D84(uint64_t a1)
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

uint64_t sub_100003E94(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100008AD0;

  return sub_100005EF8();
}

unint64_t sub_100003F40()
{
  result = qword_1000100A8;
  if (!qword_1000100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A8);
  }

  return result;
}

unint64_t sub_100003F98()
{
  result = qword_1000100B0;
  if (!qword_1000100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B0);
  }

  return result;
}

unint64_t sub_100003FEC()
{
  result = qword_1000100B8;
  if (!qword_1000100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B8);
  }

  return result;
}

uint64_t sub_100004044(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008AF4;

  return sub_100007DDC(a1);
}

uint64_t sub_1000040EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100008AD0;

  return sub_1000060F4();
}

uint64_t sub_100004190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100004250;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100004250(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100004354()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

unint64_t sub_1000043A8()
{
  result = qword_1000100C8;
  if (!qword_1000100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C8);
  }

  return result;
}

unint64_t sub_100004400()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    sub_100006E28(255, &qword_1000100D8, &type metadata for HealthSettingsDeepLink, &type metadata accessor for Array);
    sub_1000043A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

uint64_t sub_10000449C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100003720();
  *v5 = v2;
  v5[1] = sub_100004550;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100004550()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000468C()
{
  result = qword_1000100E0;
  if (!qword_1000100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E0);
  }

  return result;
}

uint64_t sub_1000046E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010040 != -1)
  {
    swift_once();
  }

  sub_100005E44(0, &qword_100010168, sub_100003FEC, &type metadata accessor for EntityURLRepresentation);
  v3 = v2;
  v4 = sub_100005D54(v2, qword_100010278);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

unint64_t sub_1000047BC()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

unint64_t sub_100004814()
{
  result = qword_1000100F0;
  if (!qword_1000100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F0);
  }

  return result;
}

unint64_t sub_10000486C()
{
  result = qword_1000100F8;
  if (!qword_1000100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F8);
  }

  return result;
}

uint64_t sub_1000048C0(uint64_t a1)
{
  sub_100005DF0();
  v2 = sub_100009A24();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100004930()
{
  result = qword_100010100;
  if (!qword_100010100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010100);
  }

  return result;
}

unint64_t sub_100004988()
{
  result = qword_100010108;
  if (!qword_100010108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010108);
  }

  return result;
}

unint64_t sub_1000049E4()
{
  result = qword_100010110;
  if (!qword_100010110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010110);
  }

  return result;
}

unint64_t sub_100004A3C()
{
  result = qword_100010118;
  if (!qword_100010118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010118);
  }

  return result;
}

uint64_t sub_100004AD8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100005D54(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_100004B84()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    sub_100005E44(255, &qword_100010128, sub_1000043A8, &type metadata accessor for EmptyResolverSpecification);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

uint64_t sub_100004C0C(uint64_t a1)
{
  v2 = sub_100003FEC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100004C5C()
{
  result = qword_100010130;
  if (!qword_100010130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010130);
  }

  return result;
}

uint64_t sub_100004CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100004550;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100004D7C(uint64_t a1)
{
  v2 = sub_1000049E4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100004E0C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100004EA0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100004F70()
{
  v0 = sub_100009B94();
  sub_100005D8C(v0, qword_100010290);
  sub_100005D54(v0, qword_100010290);
  return sub_100009B84();
}

char *sub_100004FF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006E28(0, &qword_1000101A8, &type metadata for HealthSettingsDeepLink, &type metadata accessor for _ContiguousArrayStorage);
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

unint64_t sub_1000050FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000051C8(v11, 0, 0, 1, a1, a2);
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
    sub_100006D30(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006D94(v11);
  return v7;
}

unint64_t sub_1000051C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000052D4(a5, a6);
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
    result = sub_100009C54();
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

char *sub_1000052D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005320(a1, a2);
  sub_100005450(&off_10000CA60);
  return v3;
}

char *sub_100005320(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000553C(v5, 0);
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

  result = sub_100009C54();
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
        v10 = sub_100009BE4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000553C(v10, 0);
        result = sub_100009C44();
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

uint64_t sub_100005450(uint64_t result)
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

  result = sub_1000055C8(result, v11, 1, v3);
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

void *sub_10000553C(uint64_t a1, uint64_t a2)
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

  sub_100006E28(0, &qword_1000101A0, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000055C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006E28(0, &qword_1000101A0, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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

char *sub_1000056D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000056F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000056F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006E28(0, &qword_1000101A8, &type metadata for HealthSettingsDeepLink, &type metadata accessor for _ContiguousArrayStorage);
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

uint64_t sub_100005800()
{
  v0 = sub_100009A94();
  v29 = *(v0 - 8);
  v30 = v0;
  __chkstk_darwin(v0);
  v28 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089C4(0, &qword_100010138, &type metadata accessor for IntentDialog, &type metadata accessor for Optional);
  v3 = __chkstk_darwin(v2 - 8);
  v27 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v26 = &v22 - v5;
  sub_1000089C4(0, &qword_100010140, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v25 = &v22 - v7;
  v8 = sub_100009B04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009B54();
  __chkstk_darwin(v12 - 8);
  v13 = sub_100009BB4();
  __chkstk_darwin(v13 - 8);
  v23 = sub_100009B24();
  v14 = *(v23 - 8);
  __chkstk_darwin(v23);
  sub_100005E44(0, &qword_100010148, sub_1000043A8, &type metadata accessor for IntentParameter);
  v24 = v15;
  sub_100009BA4();
  sub_100009B44();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_100009B34();
  sub_100009BA4();
  sub_100009B44();
  v17(v11, v16, v8);
  v18 = v25;
  sub_100009B34();
  (*(v14 + 56))(v18, 0, 1, v23);
  v31[0] = 5;
  v19 = sub_100009834();
  v20 = *(*(v19 - 8) + 56);
  v20(v26, 1, 1, v19);
  v20(v27, 1, 1, v19);
  (*(v29 + 104))(v28, enum case for InputConnectionBehavior.default(_:), v30);
  sub_100003FEC();
  return sub_100009874();
}

uint64_t sub_100005D54(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005D8C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100005DF0()
{
  result = qword_100010160;
  if (!qword_100010160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010160);
  }

  return result;
}

void sub_100005E44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v7 = a3();
    v8 = a4(a1, &type metadata for HealthSettingsDeepLink, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100005EAC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000CA88;
  v6._object = a2;
  v4 = sub_100009C74(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100005F14()
{
  sub_1000056D4(0, 5, 0);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1000056D4((v1 > 1), v2 + 1, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v4;
  *(&_swiftEmptyArrayStorage + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_1000056D4((v1 > 1), v2 + 2, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v5;
  *(&_swiftEmptyArrayStorage + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_1000056D4((v1 > 1), v2 + 3, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v6;
  *(&_swiftEmptyArrayStorage + v5 + 32) = 2;
  v7 = *(&_swiftEmptyArrayStorage + 3);
  v8 = v7 >> 1;
  v9 = v2 + 4;
  if ((v7 >> 1) < (v2 + 4))
  {
    sub_1000056D4((v7 > 1), v2 + 4, 1);
    v7 = *(&_swiftEmptyArrayStorage + 3);
    v8 = v7 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v9;
  *(&_swiftEmptyArrayStorage + v6 + 32) = 3;
  if (v8 < (v2 + 5))
  {
    sub_1000056D4((v7 > 1), v2 + 5, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v2 + 5;
  *(&_swiftEmptyArrayStorage + v9 + 32) = 4;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100006110()
{
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  while (1)
  {
    *(v0 + 184) = v1;
    *(v0 + 192) = v2;
    v4 = *(&off_10000CB48 + v1 + 32);
    *(v0 + 216) = v4;
    if (v4 < 3)
    {
LABEL_5:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2 = *(v0 + 192);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = sub_100004FF0(0, *(v2 + 2) + 1, 1, *(v0 + 192));
      }

      v7 = *(v2 + 2);
      v6 = *(v2 + 3);
      if (v7 >= v6 >> 1)
      {
        v2 = sub_100004FF0((v6 > 1), v7 + 1, 1, v2);
      }

      v3 = *(v0 + 216);
      *(v2 + 2) = v7 + 1;
      v2[v7 + 32] = v3;
      goto LABEL_3;
    }

    if (v4 != 4)
    {
      break;
    }

    v8 = v2;
    v9 = [objc_opt_self() shared];
    v10 = [v9 isMedicalIDAvailable];

    v2 = v8;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_3:
    v1 = *(v0 + 184) + 1;
    if (*(v0 + 184) == 4)
    {
      v11 = *(v0 + 8);

      return v11(v2);
    }
  }

  v13 = [objc_allocWithZone(HKHealthStore) init];
  v14 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v13];
  *(v0 + 200) = v14;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_1000063B0;
  v15 = swift_continuation_init();
  sub_100006BD0(0);
  *(v0 + 136) = v16;
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100002EF8;
  *(v0 + 104) = &unk_10000CCF0;
  *(v0 + 112) = v15;
  [v14 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1000063B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_100006794;
  }

  else
  {
    v2 = sub_1000064C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000064C0()
{
  v1 = *(v0 + 168);
  if (v1 >> 62)
  {
    v2 = sub_100009C64();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    goto LABEL_11;
  }

  v3 = *(v0 + 192);
  while (1)
  {
    v4 = *(v0 + 184) + 1;
    if (*(v0 + 184) == 4)
    {
      break;
    }

    *(v0 + 184) = v4;
    *(v0 + 192) = v3;
    v5 = *(&off_10000CB48 + v4 + 32);
    *(v0 + 216) = v5;
    if (v5 == 4)
    {
      v6 = [objc_opt_self() shared];
      v7 = [v6 isMedicalIDAvailable];

      if (v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v5 >= 3)
      {
        v14 = [objc_allocWithZone(HKHealthStore) init];
        v15 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v14];
        *(v0 + 200) = v15;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1000063B0;
        v16 = swift_continuation_init();
        sub_100006BD0(0);
        *(v0 + 136) = v17;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CCF0;
        *(v0 + 112) = v16;
        [v15 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3 = *(v0 + 192);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = sub_100004FF0(0, *(v3 + 2) + 1, 1, *(v0 + 192));
      }

      v10 = *(v3 + 2);
      v9 = *(v3 + 3);
      if (v10 >= v9 >> 1)
      {
        v3 = sub_100004FF0((v9 > 1), v10 + 1, 1, v3);
      }

      v11 = *(v0 + 216);
      *(v3 + 2) = v10 + 1;
      v3[v10 + 32] = v11;
    }
  }

  v12 = *(v0 + 8);

  return v12(v3);
}

uint64_t sub_100006794()
{
  v25 = v0;
  v1 = *(v0 + 200);
  swift_willThrow();

  if (qword_100010048 != -1)
  {
    swift_once();
  }

  v2 = sub_100009B94();
  sub_100005D54(v2, qword_100010290);
  swift_errorRetain();
  v3 = sub_100009B74();
  v4 = sub_100009C24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000050FC(0x73676E6974746553, 0xEC000000656E6150, v24);
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v6 = sub_100009C94();
    v8 = sub_1000050FC(v6, v7, v24);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed to fetch CHR accounts: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = *(v0 + 192);
  while (1)
  {
    v10 = *(v0 + 184) + 1;
    if (*(v0 + 184) == 4)
    {
      break;
    }

    *(v0 + 184) = v10;
    *(v0 + 192) = v9;
    v11 = *(&off_10000CB48 + v10 + 32);
    *(v0 + 216) = v11;
    if (v11 == 4)
    {
      v12 = [objc_opt_self() shared];
      v13 = [v12 isMedicalIDAvailable];

      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v11 >= 3)
      {
        v20 = [objc_allocWithZone(HKHealthStore) init];
        v21 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v20];
        *(v0 + 200) = v21;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1000063B0;
        v22 = swift_continuation_init();
        sub_100006BD0(0);
        *(v0 + 136) = v23;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CCF0;
        *(v0 + 112) = v22;
        [v21 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_12:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v0 + 192);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_100004FF0(0, *(v9 + 2) + 1, 1, *(v0 + 192));
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_100004FF0((v15 > 1), v16 + 1, 1, v9);
      }

      v17 = *(v0 + 216);
      *(v9 + 2) = v16 + 1;
      v9[v16 + 32] = v17;
    }
  }

  v18 = *(v0 + 8);

  return v18(v9);
}

void sub_100006BD0(uint64_t a1)
{
  if (!qword_100010180)
  {
    sub_1000089C4(255, &qword_100010188, sub_100006C70, &type metadata accessor for Array);
    sub_100006CBC();
    v1 = sub_100009C14();
    if (!v2)
    {
      atomic_store(v1, &qword_100010180);
    }
  }
}

unint64_t sub_100006C70()
{
  result = qword_100010190;
  if (!qword_100010190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010190);
  }

  return result;
}

unint64_t sub_100006CBC()
{
  result = qword_100010198;
  if (!qword_100010198)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100010198);
  }

  return result;
}

uint64_t sub_100006D30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006D94(void *a1)
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

void *sub_100006DE4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100006E28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100006E78(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  sub_100009B54();
  v2[29] = swift_task_alloc();
  v3 = sub_1000099F4();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v4 = sub_100009B24();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return _swift_task_switch(sub_100006FCC, 0, 0);
}

uint64_t sub_100006FCC()
{
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  while (1)
  {
    *(v0 + 296) = v1;
    *(v0 + 304) = v2;
    v4 = *(&off_10000CB70 + v1 + 32);
    *(v0 + 328) = v4;
    if (v4 < 3)
    {
      goto LABEL_5;
    }

    if (v4 != 4)
    {
      break;
    }

    v17 = [objc_opt_self() shared];
    v18 = [v17 isMedicalIDAvailable];

    if (v18)
    {
      LOBYTE(v4) = *(v0 + 328);
LABEL_5:
      v6 = *(v0 + 280);
      v5 = *(v0 + 288);
      v7 = *(v0 + 264);
      v8 = *(v0 + 272);
      v10 = *(v0 + 248);
      v9 = *(v0 + 256);
      v11 = *(v0 + 240);
      v12 = *(v0 + 216);
      v25 = *(v0 + 224);
      sub_100001D2C(v4, v9);
      sub_1000099D4();
      (*(v10 + 8))(v9, v11);
      sub_100009B44();
      sub_100009B14();
      (*(v8 + 16))(v6, v5, v7);
      *(v0 + 168) = sub_100009BC4();
      *(v0 + 176) = v13;
      *(v0 + 184) = v12;
      *(v0 + 192) = v25;
      sub_1000088C8();
      LOBYTE(v11) = sub_100009C34();
      (*(v8 + 8))(v5, v7);

      v2 = *(v0 + 304);
      if (v11)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v2 = *(v0 + 304);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = sub_100004FF0(0, *(v2 + 2) + 1, 1, *(v0 + 304));
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_100004FF0((v15 > 1), v16 + 1, 1, v2);
        }

        v3 = *(v0 + 328);
        *(v2 + 2) = v16 + 1;
        v2[v16 + 32] = v3;
      }
    }

    v1 = *(v0 + 296) + 1;
    if (*(v0 + 296) == 4)
    {

      v19 = *(v0 + 8);

      return v19(v2);
    }
  }

  v21 = [objc_allocWithZone(HKHealthStore) init];
  v22 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v21];
  *(v0 + 312) = v22;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 200;
  *(v0 + 24) = sub_100007378;
  v23 = swift_continuation_init();
  sub_100006BD0(0);
  *(v0 + 136) = v24;
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100002EF8;
  *(v0 + 104) = &unk_10000CD40;
  *(v0 + 112) = v23;
  [v22 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100007378()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_100007880;
  }

  else
  {
    v2 = sub_100007488;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100007488()
{
  v1 = *(v0 + 200);
  if (v1 >> 62)
  {
    v2 = sub_100009C64();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    goto LABEL_11;
  }

  v3 = *(v0 + 304);
  while (1)
  {
    v4 = *(v0 + 296) + 1;
    if (*(v0 + 296) == 4)
    {
      break;
    }

    *(v0 + 296) = v4;
    *(v0 + 304) = v3;
    v5 = *(&off_10000CB70 + v4 + 32);
    *(v0 + 328) = v5;
    if (v5 == 4)
    {
      v6 = [objc_opt_self() shared];
      v7 = [v6 isMedicalIDAvailable];

      if (v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v5 >= 3)
      {
        v23 = [objc_allocWithZone(HKHealthStore) init];
        v24 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v23];
        *(v0 + 312) = v24;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 200;
        *(v0 + 24) = sub_100007378;
        v25 = swift_continuation_init();
        sub_100006BD0(0);
        *(v0 + 136) = v26;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CD40;
        *(v0 + 112) = v25;
        [v24 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_11:
      v9 = *(v0 + 280);
      v8 = *(v0 + 288);
      v11 = *(v0 + 264);
      v10 = *(v0 + 272);
      v13 = *(v0 + 248);
      v12 = *(v0 + 256);
      v14 = *(v0 + 240);
      v15 = *(v0 + 216);
      v27 = *(v0 + 224);
      sub_100001D2C(*(v0 + 328), v12);
      sub_1000099D4();
      (*(v13 + 8))(v12, v14);
      sub_100009B44();
      sub_100009B14();
      (*(v10 + 16))(v9, v8, v11);
      *(v0 + 168) = sub_100009BC4();
      *(v0 + 176) = v16;
      *(v0 + 184) = v15;
      *(v0 + 192) = v27;
      sub_1000088C8();
      LOBYTE(v14) = sub_100009C34();
      (*(v10 + 8))(v8, v11);

      v3 = *(v0 + 304);
      if (v14)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3 = *(v0 + 304);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = sub_100004FF0(0, *(v3 + 2) + 1, 1, *(v0 + 304));
        }

        v19 = *(v3 + 2);
        v18 = *(v3 + 3);
        if (v19 >= v18 >> 1)
        {
          v3 = sub_100004FF0((v18 > 1), v19 + 1, 1, v3);
        }

        v20 = *(v0 + 328);
        *(v3 + 2) = v19 + 1;
        v3[v19 + 32] = v20;
      }
    }
  }

  v21 = *(v0 + 8);

  return v21(v3);
}

uint64_t sub_100007880()
{
  v37 = v0;
  v1 = *(v0 + 312);
  swift_willThrow();

  if (qword_100010048 != -1)
  {
    swift_once();
  }

  v2 = sub_100009B94();
  sub_100005D54(v2, qword_100010290);
  swift_errorRetain();
  v3 = sub_100009B74();
  v4 = sub_100009C24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000050FC(0x73676E6974746553, 0xEC000000656E6150, v36);
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v6 = sub_100009C94();
    v8 = sub_1000050FC(v6, v7, v36);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed to fetch CHR accounts: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = *(v0 + 304);
  v10 = &selRef_shared;
  v11 = &selRef_shared;
  while (1)
  {
    v12 = *(v0 + 296) + 1;
    if (*(v0 + 296) == 4)
    {
      break;
    }

    *(v0 + 296) = v12;
    *(v0 + 304) = v9;
    v13 = *(&off_10000CB70 + v12 + 32);
    *(v0 + 328) = v13;
    if (v13 == 4)
    {
      v14 = [objc_opt_self() *v10];
      v15 = [v14 v11[1]];

      if (v15)
      {
        LOBYTE(v13) = *(v0 + 328);
        goto LABEL_12;
      }
    }

    else
    {
      if (v13 >= 3)
      {
        v31 = [objc_allocWithZone(HKHealthStore) init];
        v32 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v31];
        *(v0 + 312) = v32;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 200;
        *(v0 + 24) = sub_100007378;
        v33 = swift_continuation_init();
        sub_100006BD0(0);
        *(v0 + 136) = v34;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CD40;
        *(v0 + 112) = v33;
        [v32 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_12:
      v17 = *(v0 + 280);
      v16 = *(v0 + 288);
      v18 = *(v0 + 264);
      v19 = *(v0 + 272);
      v20 = *(v0 + 248);
      v21 = *(v0 + 256);
      v22 = *(v0 + 240);
      v23 = *(v0 + 216);
      v35 = *(v0 + 224);
      sub_100001D2C(v13, v21);
      sub_1000099D4();
      (*(v20 + 8))(v21, v22);
      sub_100009B44();
      sub_100009B14();
      (*(v19 + 16))(v17, v16, v18);
      *(v0 + 168) = sub_100009BC4();
      *(v0 + 176) = v24;
      *(v0 + 184) = v23;
      *(v0 + 192) = v35;
      sub_1000088C8();
      LOBYTE(v22) = sub_100009C34();
      (*(v19 + 8))(v16, v18);

      v9 = *(v0 + 304);
      v10 = &selRef_shared;
      v11 = &selRef_shared;
      if (v22)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v9 = *(v0 + 304);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = sub_100004FF0(0, *(v9 + 2) + 1, 1, *(v0 + 304));
        }

        v27 = *(v9 + 2);
        v26 = *(v9 + 3);
        if (v27 >= v26 >> 1)
        {
          v9 = sub_100004FF0((v26 > 1), v27 + 1, 1, v9);
        }

        v28 = *(v0 + 328);
        *(v9 + 2) = v27 + 1;
        v9[v27 + 32] = v28;
      }
    }
  }

  v29 = *(v0 + 8);

  return v29(v9);
}

uint64_t sub_100007DFC()
{
  v1 = *(*(v0 + 184) + 16);
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = &_swiftEmptyArrayStorage;
    while (1)
    {
      *(v0 + 200) = v2;
      *(v0 + 208) = v3;
      v5 = *(*(v0 + 184) + v2 + 32);
      *(v0 + 232) = v5;
      if (v5 < 3)
      {
        goto LABEL_6;
      }

      if (v5 != 4)
      {
        v14 = [objc_allocWithZone(HKHealthStore) init];
        v15 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v14];
        *(v0 + 216) = v15;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1000080B0;
        v16 = swift_continuation_init();
        sub_100006BD0(0);
        *(v0 + 136) = v17;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CD18;
        *(v0 + 112) = v16;
        [v15 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

      v9 = v3;
      v10 = [objc_opt_self() shared];
      v11 = [v10 isMedicalIDAvailable];

      v3 = v9;
      if (v11)
      {
LABEL_6:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3 = *(v0 + 208);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = sub_100004FF0(0, *(v3 + 2) + 1, 1, *(v0 + 208));
        }

        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          v3 = sub_100004FF0((v7 > 1), v8 + 1, 1, v3);
        }

        v4 = *(v0 + 232);
        *(v3 + 2) = v8 + 1;
        v3[v8 + 32] = v4;
      }

      v2 = *(v0 + 200) + 1;
      if (v2 == *(v0 + 192))
      {
        goto LABEL_14;
      }
    }
  }

  v3 = &_swiftEmptyArrayStorage;
LABEL_14:
  v12 = *(v0 + 8);

  return v12(v3);
}

uint64_t sub_1000080B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_100008490;
  }

  else
  {
    v2 = sub_1000081C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000081C0()
{
  v1 = *(v0 + 168);
  if (v1 >> 62)
  {
    v2 = sub_100009C64();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    goto LABEL_11;
  }

  v3 = *(v0 + 208);
  while (1)
  {
    v4 = *(v0 + 200) + 1;
    if (v4 == *(v0 + 192))
    {
      break;
    }

    *(v0 + 200) = v4;
    *(v0 + 208) = v3;
    v5 = *(*(v0 + 184) + v4 + 32);
    *(v0 + 232) = v5;
    if (v5 == 4)
    {
      v6 = [objc_opt_self() shared];
      v7 = [v6 isMedicalIDAvailable];

      if (v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v5 >= 3)
      {
        v14 = [objc_allocWithZone(HKHealthStore) init];
        v15 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v14];
        *(v0 + 216) = v15;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1000080B0;
        v16 = swift_continuation_init();
        sub_100006BD0(0);
        *(v0 + 136) = v17;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CD18;
        *(v0 + 112) = v16;
        [v15 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3 = *(v0 + 208);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = sub_100004FF0(0, *(v3 + 2) + 1, 1, *(v0 + 208));
      }

      v10 = *(v3 + 2);
      v9 = *(v3 + 3);
      if (v10 >= v9 >> 1)
      {
        v3 = sub_100004FF0((v9 > 1), v10 + 1, 1, v3);
      }

      v11 = *(v0 + 232);
      *(v3 + 2) = v10 + 1;
      v3[v10 + 32] = v11;
    }
  }

  v12 = *(v0 + 8);

  return v12(v3);
}

uint64_t sub_100008490()
{
  v25 = v0;
  v1 = *(v0 + 216);
  swift_willThrow();

  if (qword_100010048 != -1)
  {
    swift_once();
  }

  v2 = sub_100009B94();
  sub_100005D54(v2, qword_100010290);
  swift_errorRetain();
  v3 = sub_100009B74();
  v4 = sub_100009C24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000050FC(0x73676E6974746553, 0xEC000000656E6150, v24);
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v6 = sub_100009C94();
    v8 = sub_1000050FC(v6, v7, v24);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed to fetch CHR accounts: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = *(v0 + 208);
  while (1)
  {
    v10 = *(v0 + 200) + 1;
    if (v10 == *(v0 + 192))
    {
      break;
    }

    *(v0 + 200) = v10;
    *(v0 + 208) = v9;
    v11 = *(*(v0 + 184) + v10 + 32);
    *(v0 + 232) = v11;
    if (v11 == 4)
    {
      v12 = [objc_opt_self() shared];
      v13 = [v12 isMedicalIDAvailable];

      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v11 >= 3)
      {
        v20 = [objc_allocWithZone(HKHealthStore) init];
        v21 = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v20];
        *(v0 + 216) = v21;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1000080B0;
        v22 = swift_continuation_init();
        sub_100006BD0(0);
        *(v0 + 136) = v23;
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002EF8;
        *(v0 + 104) = &unk_10000CD18;
        *(v0 + 112) = v22;
        [v21 fetchClinicalConnectedAccountsWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_12:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v0 + 208);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_100004FF0(0, *(v9 + 2) + 1, 1, *(v0 + 208));
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_100004FF0((v15 > 1), v16 + 1, 1, v9);
      }

      v17 = *(v0 + 232);
      *(v9 + 2) = v16 + 1;
      v9[v16 + 32] = v17;
    }
  }

  v18 = *(v0 + 8);

  return v18(v9);
}

unint64_t sub_1000088C8()
{
  result = qword_1000101B0;
  if (!qword_1000101B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101B0);
  }

  return result;
}

unint64_t sub_10000891C()
{
  result = qword_1000101B8;
  if (!qword_1000101B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101B8);
  }

  return result;
}

unint64_t sub_100008970()
{
  result = qword_1000101C0;
  if (!qword_1000101C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C0);
  }

  return result;
}

void sub_1000089C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100008A28(uint64_t a1, uint64_t a2)
{
  sub_1000089C4(0, &qword_1000101C8, &type metadata accessor for IntentDescription, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008AF8(uint64_t a1)
{
  v2 = sub_100008C48();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100008BA0();
  sub_100009B64();
  return 0;
}

unint64_t sub_100008BA0()
{
  result = qword_1000101D0;
  if (!qword_1000101D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101D0);
  }

  return result;
}

unint64_t sub_100008C48()
{
  result = qword_1000101D8;
  if (!qword_1000101D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101D8);
  }

  return result;
}

uint64_t sub_100008CAC(uint64_t a1)
{
  v12[1] = a1;
  sub_1000096AC(0, &qword_100010210, &type metadata accessor for _AssistantIntent.Phrase);
  v14 = v1;
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - v3;
  sub_1000096AC(0, &qword_100010218, &type metadata accessor for _AssistantIntent.Phrase.StringInterpolation);
  __chkstk_darwin(v5);
  sub_1000017C0();
  sub_100009934();
  v15._countAndFlagsBits = 0x206E65704FLL;
  v15._object = 0xE500000000000000;
  sub_100009924(v15);
  swift_getKeyPath();
  sub_1000043A8();
  sub_100009884();

  sub_100009914();

  v16._countAndFlagsBits = 0x74746553206E6920;
  v16._object = 0xEC00000073676E69;
  sub_100009924(v16);
  sub_100009944();
  v13 = sub_1000098A4();
  v6 = *(v2 + 8);
  v7 = v14;
  v6(v4, v14);
  sub_100009934();
  v17._countAndFlagsBits = 0x20656D20776F6853;
  v17._object = 0xEB0000000020796DLL;
  sub_100009924(v17);
  swift_getKeyPath();
  sub_100009884();

  sub_100009914();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_100009924(v18);
  sub_100009944();
  v8 = sub_1000098A4();
  v6(v4, v7);
  sub_100009550(0, &qword_100010220, sub_100009710, &type metadata accessor for _ContiguousArrayStorage);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100009FD0;
  *(v9 + 32) = v13;
  *(v9 + 40) = v8;
  v10 = sub_100009894();

  return v10;
}

uint64_t sub_100009034()
{
  v0 = sub_100009904();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000043A8();
  sub_100009884();

  sub_1000017C0();
  sub_1000098F4();
  v4 = sub_1000098E4();
  (*(v1 + 8))(v3, v0);
  sub_100009550(0, &qword_1000101F0, sub_100009628, &type metadata accessor for _ContiguousArrayStorage);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100009FE0;
  *(v5 + 32) = v4;
  v6 = sub_1000098D4();

  return v6;
}

uint64_t sub_1000091C8()
{
  v0 = sub_1000098C4();
  v1 = sub_1000098C4();
  v2 = sub_1000098C4();
  v3 = sub_1000098C4();
  v4 = sub_1000098C4();
  sub_100009550(0, &qword_100010200, sub_10000965C, &type metadata accessor for _ContiguousArrayStorage);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10000A880;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1000098B4();

  return v6;
}

uint64_t sub_100009324()
{
  v0 = sub_100009974();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_100005800();
  sub_1000017C0();
  sub_100009984();
  v4 = sub_100009964();
  (*(v1 + 8))(v3, v0);
  sub_100009550(0, &qword_1000101E0, sub_10000951C, &type metadata accessor for _ContiguousArrayStorage);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100009FE0;
  *(v5 + 32) = v4;
  v6 = sub_100009954();

  return v6;
}

uint64_t sub_1000094B0()
{
  if (qword_100010050 != -1)
  {
    swift_once();
  }
}

void sub_100009550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_1000095B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100009854();
  *a1 = v3;
  return result;
}

void sub_10000965C()
{
  if (!qword_100010208)
  {
    v0 = sub_100009C04();
    if (!v1)
    {
      atomic_store(v0, &qword_100010208);
    }
  }
}

void sub_1000096AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000017C0();
    v7 = a3(a1, &type metadata for OpenHealthSettingsIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100009710(uint64_t a1)
{
  if (!qword_100010228)
  {
    sub_1000096AC(255, &qword_100010210, &type metadata accessor for _AssistantIntent.Phrase);
    v1 = sub_100009C04();
    if (!v2)
    {
      atomic_store(v1, &qword_100010228);
    }
  }
}