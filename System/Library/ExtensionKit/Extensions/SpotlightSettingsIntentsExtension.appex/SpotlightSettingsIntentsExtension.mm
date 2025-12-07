uint64_t sub_1000010D8()
{
  v0 = sub_1000017DC(&qword_10000C038, &qword_100005190);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_100001788();
  sub_100004CC8();
  v13 = sub_100004C58();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_100004CC8();
  v5 = sub_100004C58();
  v4(v3, v0);
  sub_100004CC8();
  v6 = sub_100004C58();
  v4(v3, v0);
  sub_100004CC8();
  v7 = sub_100004C58();
  v4(v3, v0);
  sub_100004CC8();
  v8 = sub_100004C58();
  v4(v3, v0);
  sub_1000017DC(&qword_10000C040, qword_100005198);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100005090;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = sub_100004C48();

  return v10;
}

uint64_t sub_100001398()
{
  v0 = sub_100004CB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100001824();
  sub_100004C38();

  sub_100001788();
  sub_100004CA8();
  v4 = sub_100004C98();
  (*(v1 + 8))(v3, v0);
  sub_1000017DC(&qword_10000C028, &qword_100005180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000050A0;
  *(v5 + 32) = v4;
  v6 = sub_100004C88();

  return v6;
}

uint64_t sub_100001550()
{
  v0 = sub_100004C78();
  v1 = sub_100004C78();
  sub_1000017DC(&qword_10000C030, &qword_100005188);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000050B0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100004C68();

  return v3;
}

uint64_t sub_100001604()
{
  v0 = sub_100004CF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_100003E04();
  sub_100001788();
  sub_100004D08();
  v4 = sub_100004CE8();
  (*(v1 + 8))(v3, v0);
  sub_1000017DC(&qword_10000C018, &qword_100005150);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000050A0;
  *(v5 + 32) = v4;
  v6 = sub_100004CD8();

  return v6;
}

unint64_t sub_100001788()
{
  result = qword_10000C010;
  if (!qword_10000C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C010);
  }

  return result;
}

uint64_t sub_1000017DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001824()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

unint64_t sub_1000018AC()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

Swift::Int sub_100001900()
{
  sub_100004EA8();
  sub_100004E88();
  return sub_100004EB8();
}

Swift::Int sub_100001964(uint64_t a1)
{
  sub_100004EA8();
  sub_100004E88();
  return sub_100004EB8();
}

uint64_t sub_1000019B0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008830;
  v7._object = v3;
  v5 = sub_100004E98(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100001A60(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100001ACC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v6._object = a2;
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_100008890;
  result = sub_100004E98(v4, v6);
  *a3 = result != 0;
  return result;
}

unint64_t sub_100001B0C()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

uint64_t sub_100001B60()
{
  v0 = sub_1000017DC(&qword_10000C130, &qword_1000059B0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_100004E08();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004E48();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100004E78();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100004E18();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100004DD8();
  sub_10000442C(v10, qword_10000D1A0);
  sub_1000043F4(v10, qword_10000D1A0);
  sub_100004E68();
  sub_100004E38();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100004E28();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100004DC8();
}

uint64_t sub_100001E48@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1000017DC(&qword_10000C158, &qword_1000059C0);
  __chkstk_darwin(v1 - 8);
  v22 = &v18 - v2;
  v3 = sub_1000017DC(&qword_10000C130, &qword_1000059B0);
  __chkstk_darwin(v3 - 8);
  v20 = &v18 - v4;
  v5 = sub_100004E08();
  v19 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004E48();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100004E78();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100004E18();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100004E68();
  sub_100004E38();
  v13 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v14 = *(v6 + 104);
  v14(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100004E28();
  (*(v12 + 56))(v20, 1, 1, v11);
  v15 = v22;
  sub_100004D18();
  v16 = sub_100004D28();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  sub_1000017DC(&qword_10000C160, &qword_1000059C8);
  *(swift_allocObject() + 16) = xmmword_1000050A0;
  sub_100004E68();
  sub_100004E38();
  v14(v8, v13, v19);
  sub_100004E28();
  return sub_100004D38();
}

uint64_t sub_100002290(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002334;

  return sub_100004868();
}

uint64_t sub_100002334(uint64_t a1)
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

unint64_t sub_10000244C()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_1000024A4()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_1000024F8()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100002550(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004960;

  return sub_1000045E4(a1);
}

uint64_t sub_1000025F8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100004940;

  return sub_100004490();
}

uint64_t sub_10000269C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000275C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10000275C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100002860()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_1000028B8()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    sub_100001A60(&qword_10000C0A0, qword_1000053A0);
    sub_100001824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

uint64_t sub_10000293C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100001B0C();
  *v5 = v2;
  v5[1] = sub_1000029F0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000029F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002AE4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002B88;

  return sub_100004788();
}

uint64_t sub_100002B88(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1 & 1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_100002CA8()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_100002CFC(uint64_t a1)
{
  v2 = sub_1000024F8();

  return EntityURLRepresentation.init(stringLiteral:)(0xD00000000000002FLL, 0x8000000100005C90, a1, v2);
}

unint64_t sub_100002D60()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_100002DB8()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_100002E10()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100002E6C()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t sub_100002EC0(uint64_t a1)
{
  sub_1000043A0();
  v2 = sub_100004D68();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100002F30()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

unint64_t sub_100002F88()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

unint64_t sub_100002FE4()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

unint64_t sub_10000303C()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

uint64_t sub_100003110(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001A60(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003158(uint64_t a1)
{
  v2 = sub_1000024F8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000031A8()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

uint64_t sub_100003200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000029F0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000032C4(uint64_t a1)
{
  v2 = sub_100002FE4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003314()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_10000336C()
{
  v0 = sub_100004E08();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004E48();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100004E78();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100004E18();
  sub_10000442C(v6, qword_10000D1B8);
  sub_1000043F4(v6, qword_10000D1B8);
  sub_100004E68();
  sub_100004E38();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100004E28();
}

uint64_t (*sub_1000035A0(uint64_t *a1))()
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
  *(v2 + 32) = sub_100004BF8();
  return sub_100003614;
}

void sub_100003614(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100003660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042F8();
  v5 = sub_1000043A0();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000036D0()
{
  v0 = qword_10000C048;

  return v0;
}

unint64_t sub_100003710()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_100003768()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

unint64_t sub_1000037C0()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

uint64_t sub_10000389C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_1000043F4(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_10000395C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1000042F8();
  v6 = sub_10000434C();
  v7 = sub_1000043A0();
  *v4 = v2;
  v4[1] = sub_100003A28;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100003A28()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100003B30@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100003E04();
  *a2 = result;
  return result;
}

uint64_t sub_100003B58(uint64_t a1)
{
  v2 = sub_100001788();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for SpotlightSettingsDynamicDestination(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SpotlightSettingsDynamicDestination(_WORD *result, int a2, int a3)
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

char *sub_100003CB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100003D18(a1, a2, a3, *v3, &qword_10000C170, &qword_1000059E8);
  *v3 = result;
  return result;
}

char *sub_100003CE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100003D18(a1, a2, a3, *v3, &qword_10000C168, &qword_1000059D8);
  *v3 = result;
  return result;
}

char *sub_100003D18(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000017DC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_100003E04()
{
  v0 = sub_100004DA8();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000017DC(&qword_10000C128, &qword_1000059A8);
  v3 = __chkstk_darwin(v2 - 8);
  v26 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = &v21 - v5;
  v6 = sub_1000017DC(&qword_10000C130, &qword_1000059B0);
  __chkstk_darwin(v6 - 8);
  v24 = &v21 - v7;
  v8 = sub_100004E08();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004E48();
  __chkstk_darwin(v12 - 8);
  v13 = sub_100004E78();
  __chkstk_darwin(v13 - 8);
  v22 = sub_100004E18();
  v14 = *(v22 - 8);
  __chkstk_darwin(v22);
  v23 = sub_1000017DC(&qword_10000C138, &qword_1000059B8);
  sub_100004E68();
  sub_100004E38();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v9 + 104);
  v16(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_100004E28();
  sub_100004E68();
  sub_100004E38();
  v16(v11, v15, v8);
  v17 = v24;
  sub_100004E28();
  (*(v14 + 56))(v17, 0, 1, v22);
  v30[0] = 1;
  v18 = sub_100004BE8();
  v19 = *(*(v18 - 8) + 56);
  v19(v25, 1, 1, v18);
  v19(v26, 1, 1, v18);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_1000024F8();
  return sub_100004C28();
}

unint64_t sub_1000042F8()
{
  result = qword_10000C140;
  if (!qword_10000C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C140);
  }

  return result;
}

unint64_t sub_10000434C()
{
  result = qword_10000C148;
  if (!qword_10000C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C148);
  }

  return result;
}

unint64_t sub_1000043A0()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}

uint64_t sub_1000043F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000442C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000044AC()
{
  sub_100003CE8(0, 1, 1);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100003CE8((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  sub_100003CB8(0, v3, 0);
  v4 = _swiftEmptyArrayStorage[2];
  do
  {
    v5 = _swiftEmptyArrayStorage[3];
    v6 = v4 + 1;
    if (v4 >= v5 >> 1)
    {
      sub_100003CB8((v5 > 1), v4 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v6;
    v4 = v6;
    --v3;
  }

  while (v3);

  v7 = *(v0 + 8);

  return v7(_swiftEmptyArrayStorage);
}

uint64_t sub_100004604()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100003CE8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v3 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      v4 = v3 + 1;
      if (v3 >= v2 >> 1)
      {
        sub_100003CE8((v2 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage[2];
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  sub_100003CB8(0, v4, 0);
  v5 = _swiftEmptyArrayStorage[2];
  do
  {
    v6 = _swiftEmptyArrayStorage[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      sub_100003CB8((v6 > 1), v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v7;
    v5 = v7;
    --v4;
  }

  while (v4);
LABEL_13:

  v8 = *(v0 + 8);

  return v8(_swiftEmptyArrayStorage);
}

uint64_t sub_1000047A4()
{
  sub_100003CE8(0, 1, 1);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100003CE8((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_100004884()
{
  sub_100003CB8(0, 1, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100003CB8((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100004964(uint64_t a1)
{
  v2 = sub_100004AB4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100004A0C();
  sub_100004E58();
  return 0;
}

unint64_t sub_100004A0C()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C178);
  }

  return result;
}

unint64_t sub_100004AB4()
{
  result = qword_10000C180;
  if (!qword_10000C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C180);
  }

  return result;
}