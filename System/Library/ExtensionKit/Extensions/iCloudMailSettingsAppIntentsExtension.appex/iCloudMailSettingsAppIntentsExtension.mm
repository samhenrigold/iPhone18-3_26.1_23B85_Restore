uint64_t sub_1000013A8(uint64_t a1)
{
  v2 = sub_1000014FC();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001454();
  sub_100008D68();
  return 0;
}

unint64_t sub_100001454()
{
  result = qword_100010038;
  if (!qword_100010038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010038);
  }

  return result;
}

unint64_t sub_1000014FC()
{
  result = qword_100010040;
  if (!qword_100010040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010040);
  }

  return result;
}

unint64_t sub_100001564()
{
  result = qword_100010068;
  if (!qword_100010068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010068);
  }

  return result;
}

unint64_t sub_1000015BC()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_100001614()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

uint64_t sub_100001668@<X0>(uint64_t a2@<X8>)
{
  v24 = a2;
  v2 = sub_10000473C(&qword_100010178, &qword_100009900);
  __chkstk_darwin(v2 - 8);
  v23 = v22 - v3;
  v4 = sub_10000473C(&qword_100010150, &qword_1000098F0);
  __chkstk_darwin(v4 - 8);
  v27 = v22 - v5;
  v6 = sub_100008CF8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100008D38();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100008D88();
  __chkstk_darwin(v11 - 8);
  v22[0] = sub_100008D08();
  v12 = *(v22[0] - 8);
  v13 = __chkstk_darwin(v22[0]);
  v22[1] = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v26 = v22 - v15;
  v25 = "com.apple.Preferences";
  v7 += 13;
  sub_100008D78();
  sub_100008D28();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *v7;
  (*v7)(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_100008D18();
  sub_100008D78();
  sub_100008D28();
  v17(v9, v16, v6);
  v18 = v27;
  sub_100008D18();
  (*(v12 + 56))(v18, 0, 1, v22[0]);
  v19 = v23;
  sub_100008BB8();
  v20 = sub_100008BC8();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  sub_100008D78();
  sub_100008D28();
  v17(v9, v16, v6);
  sub_100008D18();
  return sub_100008BD8();
}

uint64_t sub_100001C9C()
{
  v0 = sub_10000473C(&qword_100010150, &qword_1000098F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_100008CF8();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100008D38();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100008D88();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100008D08();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100008CC8();
  sub_1000048B8(v10, qword_1000120F0);
  sub_100004880(v10, qword_1000120F0);
  sub_100008D78();
  sub_100008D28();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100008D18();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100008CB8();
}

uint64_t sub_100001F8C(uint64_t a1)
{
  v2 = sub_100003F6C(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100001FEC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000491C();
  *v5 = v2;
  v5[1] = sub_1000020A0;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v6);
}

uint64_t sub_1000020A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100002254;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100002254(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100002358()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

uint64_t sub_1000023AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002450;

  return sub_10000419C();
}

uint64_t sub_100002450(uint64_t a1)
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

unint64_t sub_100002568()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

unint64_t sub_1000025C0()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

unint64_t sub_100002618()
{
  result = qword_100010098;
  if (!qword_100010098)
  {
    sub_10000269C(&qword_1000100A0, qword_100009178);
    sub_1000025C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010098);
  }

  return result;
}

uint64_t sub_10000269C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000026E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100002358();
  *v5 = v2;
  v5[1] = sub_100004970;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100002798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000020A0;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100002858()
{
  result = qword_1000100A8;
  if (!qword_1000100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A8);
  }

  return result;
}

uint64_t sub_1000028AC(uint64_t a1)
{
  v1 = sub_10000473C(&qword_100010180, &qword_100009908);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000473C(&qword_100010188, &qword_100009910);
  __chkstk_darwin(v5);
  sub_100001614();
  sub_100008C78();
  v8._object = 0x800000010000A350;
  v8._countAndFlagsBits = 0xD000000000000063;
  sub_100008C68(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_100008C58();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100008C68(v9);
  return sub_100008C88();
}

uint64_t sub_100002A70()
{
  v0 = qword_100010048;

  return v0;
}

unint64_t sub_100002AAC()
{
  result = qword_1000100B0;
  if (!qword_1000100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B0);
  }

  return result;
}

unint64_t sub_100002B04()
{
  result = qword_1000100B8;
  if (!qword_1000100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B8);
  }

  return result;
}

unint64_t sub_100002B5C()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

unint64_t sub_100002BB4()
{
  result = qword_1000100C8;
  if (!qword_1000100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C8);
  }

  return result;
}

uint64_t sub_100002C08(uint64_t a1)
{
  sub_10000482C();
  v2 = sub_100008C28();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100002C78()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

unint64_t sub_100002CD0()
{
  result = qword_1000100D8;
  if (!qword_1000100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D8);
  }

  return result;
}

unint64_t sub_100002D28()
{
  result = qword_1000100E0;
  if (!qword_1000100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E0);
  }

  return result;
}

unint64_t sub_100002D80()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

uint64_t sub_100002E5C(uint64_t a1)
{
  v2 = sub_100001614();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100002EAC()
{
  result = qword_100010100;
  if (!qword_100010100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010100);
  }

  return result;
}

uint64_t sub_100002F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100004970;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100002FCC(uint64_t a1)
{
  v2 = sub_100002D28();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100003018(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x65636552646E6573;
  }

  if (v2)
  {
    v4 = 0xEB00000000657669;
  }

  else
  {
    v4 = 0x800000010000A160;
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x65636552646E6573;
  }

  if (*a2)
  {
    v6 = 0x800000010000A160;
  }

  else
  {
    v6 = 0xEB00000000657669;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008DB8();
  }

  return v8 & 1;
}

unint64_t sub_1000030D0()
{
  result = qword_100010108;
  if (!qword_100010108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010108);
  }

  return result;
}

Swift::Int sub_100003124()
{
  sub_100008DC8();
  sub_100008D98();

  return sub_100008DD8();
}

uint64_t sub_1000031B4(uint64_t a1)
{
  sub_100008D98();
}

Swift::Int sub_100003230(uint64_t a1)
{
  sub_100008DC8();
  sub_100008D98();

  return sub_100008DD8();
}

uint64_t sub_1000032BC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10000C898;
  v8._object = v3;
  v5 = sub_100008DA8(v4, v8);

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

void sub_10000331C(unint64_t *a1@<X8>)
{
  v2 = 0x800000010000A160;
  v3 = 0x65636552646E6573;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xEB00000000657669;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1000033AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000269C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003404()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_100003444@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{

  v6._rawValue = &off_10000C898;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_100008DA8(v6, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

unint64_t sub_1000034B8()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

uint64_t sub_10000350C()
{
  v0 = sub_100008CF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100008D38();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100008D88();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100008D08();
  sub_1000048B8(v6, qword_100012108);
  sub_100004880(v6, qword_100012108);
  sub_100008D78();
  sub_100008D28();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100008D18();
}

void *sub_1000036FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100008B88();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100003770(uint64_t *a1))()
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
  *(v2 + 32) = sub_100008B78();
  return sub_1000037E4;
}

void sub_1000037E4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003830()
{
  result = qword_100010128;
  if (!qword_100010128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010128);
  }

  return result;
}

uint64_t sub_100003884(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004784();
  v5 = sub_10000482C();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000038F4()
{
  v0 = qword_100010058;

  return v0;
}

unint64_t sub_100003934()
{
  result = qword_100010130;
  if (!qword_100010130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010130);
  }

  return result;
}

unint64_t sub_10000398C()
{
  result = qword_100010138;
  if (!qword_100010138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010138);
  }

  return result;
}

unint64_t sub_1000039E4()
{
  result = qword_100010140;
  if (!qword_100010140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010140);
  }

  return result;
}

uint64_t sub_100003AC0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100004880(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100003B88(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100004784();
  v6 = sub_1000047D8();
  v7 = sub_10000482C();
  *v4 = v2;
  v4[1] = sub_100003C54;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100003C54()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100003D5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000042C4();
  *a1 = result;
  return result;
}

uint64_t sub_100003D84(uint64_t a1)
{
  v2 = sub_100003830();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100003E0C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100003E9C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_100003F6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = ACAccountDataclassCalendars;
    v4 = &_s13MCCFoundation29iCloudMailSettingsFeatureFlagO9isEnabledSbvg_ptr;
    do
    {
      v5 = *v2;
      v6 = [objc_allocWithZone(v4[93]) init];
      v7 = [v6 aa_primaryAppleAccount];
      v8 = v7;
      if (v5)
      {
        if (v7)
        {
          v9 = [v7 propertiesForDataclass:v3];
          if (v9)
          {
            goto LABEL_8;
          }

LABEL_15:

          goto LABEL_4;
        }
      }

      else if (v7)
      {
        v9 = [v7 propertiesForDataclass:v3];
        if (v9)
        {
LABEL_8:

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100007AAC(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v11 = _swiftEmptyArrayStorage[2];
          v10 = _swiftEmptyArrayStorage[3];
          if (v11 >= v10 >> 1)
          {
            sub_100007AAC((v10 > 1), v11 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v11 + 1;
          *(&_swiftEmptyArrayStorage[4] + v11) = v5;
          v4 = &_s13MCCFoundation29iCloudMailSettingsFeatureFlagO9isEnabledSbvg_ptr;
          goto LABEL_4;
        }

        goto LABEL_15;
      }

LABEL_4:
      ++v2;
      --v1;
    }

    while (v1);
  }

  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    sub_100007A8C(0, v12, 0);
    v13 = _swiftEmptyArrayStorage[2];
    v14 = 32;
    do
    {
      v15 = *(_swiftEmptyArrayStorage + v14);
      v16 = _swiftEmptyArrayStorage[3];
      if (v13 >= v16 >> 1)
      {
        sub_100007A8C((v16 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      *(&_swiftEmptyArrayStorage[4] + v13) = v15;
      ++v14;
      ++v13;
      --v12;
    }

    while (v12);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000041B8()
{
  sub_100007A8C(0, 2, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_100007A8C((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    sub_100007A8C((v1 > 1), v5, 1);
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000042C4()
{
  v0 = sub_100008C98();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000473C(&qword_100010148, &qword_1000098E8);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v5;
  v6 = sub_10000473C(&qword_100010150, &qword_1000098F0);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = sub_100008CF8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100008D38();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100008D88();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100008D08();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v20[1] = sub_10000473C(&qword_100010158, &qword_1000098F8);
  sub_100008D78();
  sub_100008D28();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  sub_100008D18();
  (*(v16 + 56))(v8, 1, 1, v15);
  v26[0] = 2;
  v17 = sub_100008B68();
  v18 = *(*(v17 - 8) + 56);
  v18(v21, 1, 1, v17);
  v18(v22, 1, 1, v17);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_100001614();
  return sub_100008BA8();
}

uint64_t sub_10000473C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004784()
{
  result = qword_100010160;
  if (!qword_100010160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010160);
  }

  return result;
}

unint64_t sub_1000047D8()
{
  result = qword_100010168;
  if (!qword_100010168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010168);
  }

  return result;
}

unint64_t sub_10000482C()
{
  result = qword_100010170;
  if (!qword_100010170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010170);
  }

  return result;
}

uint64_t sub_100004880(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000048B8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10000491C()
{
  result = qword_100010190;
  if (!qword_100010190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010190);
  }

  return result;
}

unint64_t sub_10000499C()
{
  result = qword_1000101B8;
  if (!qword_1000101B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101B8);
  }

  return result;
}

unint64_t sub_1000049F4()
{
  result = qword_1000101C0;
  if (!qword_1000101C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C0);
  }

  return result;
}

unint64_t sub_100004A4C()
{
  result = qword_1000101C8;
  if (!qword_1000101C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C8);
  }

  return result;
}

uint64_t sub_100004AA0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_10000473C(&qword_100010178, &qword_100009900);
  __chkstk_darwin(v3 - 8);
  v65 = &v56 - v4;
  v5 = sub_10000473C(&qword_100010150, &qword_1000098F0);
  __chkstk_darwin(v5 - 8);
  v64 = &v56 - v6;
  v7 = sub_100008CF8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100008D38();
  __chkstk_darwin(v11 - 8);
  v12 = sub_100008D88();
  __chkstk_darwin(v12 - 8);
  v62 = sub_100008D08();
  v13 = *(v62 - 8);
  v14 = __chkstk_darwin(v62);
  v63 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v60 = &v56 - v16;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      v59 = v7;
      sub_100008D78();
      sub_100008D28();
      v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      if (a1 == 5)
      {
        v30 = *(v8 + 104);
        v30(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
        v19 = v30;
        sub_100008D18();
        sub_100008D78();
        sub_100008D28();
        v20 = v59;
        v30(v10, v17, v59);
      }

      else
      {
        v54 = *(v8 + 104);
        v54(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
        v19 = v54;
        sub_100008D18();
        sub_100008D78();
        sub_100008D28();
        v20 = v59;
        v54(v10, v17, v59);
      }

LABEL_14:
      v31 = v64;
      sub_100008D18();
      (*(v13 + 56))(v31, 0, 1, v62);
      v32 = v65;
      sub_100008BB8();
      v33 = sub_100008BC8();
      (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
      goto LABEL_21;
    }

    if (a1 == 7)
    {
      sub_100008D78();
      sub_100008D28();
      LODWORD(v58) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v38 = *(v8 + 104);
      v38(v10);
      sub_100008D18();
      sub_100008D78();
      sub_100008D28();
      v39 = v58;
      (v38)(v10, v58, v7);
      v40 = v64;
      sub_100008D18();
      (*(v13 + 56))(v40, 0, 1, v62);
      v41 = v65;
      sub_100008BB8();
      v42 = sub_100008BC8();
      (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
      sub_100008D78();
      sub_100008D28();
      (v38)(v10, v39, v7);
    }

    else
    {
      if (a1 == 8)
      {
        sub_100008D78();
        sub_100008D28();
        v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
        v21 = *(v8 + 104);
        v59 = v7;
        v21(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
        v19 = v21;
        sub_100008D18();
        sub_100008D78();
        sub_100008D28();
        v20 = v59;
        v21(v10, v17, v59);
        v22 = v64;
        sub_100008D18();
        (*(v13 + 56))(v22, 0, 1, v62);
        v23 = v65;
        sub_100008BB8();
        v24 = sub_100008BC8();
        (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
LABEL_21:
        sub_100008D78();
        sub_100008D28();
        v19(v10, v17, v20);
        goto LABEL_22;
      }

      sub_100008D78();
      v58 = "SERVER_SIDE_RULES";
      sub_100008D28();
      v44 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v56 = *(v8 + 104);
      v57 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v56(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
      v46 = v64;
      v45 = v65;
      sub_100008D18();
      sub_100008D78();
      sub_100008D28();
      v47 = v44;
      v48 = v56;
      v56(v10, v47, v7);
      sub_100008D18();
      (*(v13 + 56))(v46, 0, 1, v62);
      sub_100008BB8();
      v49 = sub_100008BC8();
      (*(*(v49 - 8) + 56))(v45, 0, 1, v49);
      sub_100008D78();
      sub_100008D28();
      v48(v10, v57, v7);
    }
  }

  else
  {
    if (a1 > 1u)
    {
      v59 = v7;
      if (a1 == 2)
      {
        sub_100008D78();
        sub_100008D28();
        v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
        v34 = *(v8 + 104);
        v34(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
        v19 = v34;
        sub_100008D18();
        sub_100008D78();
        sub_100008D28();
        v20 = v59;
        v34(v10, v17, v59);
        v35 = v64;
        sub_100008D18();
        (*(v13 + 56))(v35, 0, 1, v62);
        v36 = v65;
        sub_100008BB8();
        v37 = sub_100008BC8();
        (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
        goto LABEL_21;
      }

      sub_100008D78();
      sub_100008D28();
      v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      if (a1 == 3)
      {
        v18 = *(v8 + 104);
        v18(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
        v19 = v18;
        sub_100008D18();
        sub_100008D78();
        sub_100008D28();
        v20 = v59;
        v18(v10, v17, v59);
      }

      else
      {
        v43 = *(v8 + 104);
        v43(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
        v19 = v43;
        sub_100008D18();
        sub_100008D78();
        sub_100008D28();
        v20 = v59;
        v43(v10, v17, v59);
      }

      goto LABEL_14;
    }

    if (a1)
    {
      sub_100008D78();
      sub_100008D28();
      v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v50 = *(v8 + 104);
      v59 = v7;
      v50(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
      v19 = v50;
      sub_100008D18();
      sub_100008D78();
      sub_100008D28();
      v20 = v59;
      v50(v10, v17, v59);
      v51 = v64;
      sub_100008D18();
      (*(v13 + 56))(v51, 0, 1, v62);
      v52 = v65;
      sub_100008BB8();
      v53 = sub_100008BC8();
      (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
      goto LABEL_21;
    }

    sub_100008D78();
    sub_100008D28();
    v25 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v26 = *(v8 + 104);
    v26(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
    v58 = "ataclass.Calendars/";
    sub_100008D18();
    sub_100008D78();
    sub_100008D28();
    v26(v10, v25, v7);
    v27 = v64;
    sub_100008D18();
    (*(v13 + 56))(v27, 0, 1, v62);
    v28 = v65;
    sub_100008BB8();
    v29 = sub_100008BC8();
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    sub_100008D78();
    sub_100008D28();
    v26(v10, v25, v7);
  }

LABEL_22:
  sub_100008D18();
  return sub_100008BD8();
}

uint64_t sub_100005F2C()
{
  v0 = sub_10000473C(&qword_100010150, &qword_1000098F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_100008CF8();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100008D38();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100008D88();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100008D08();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100008CC8();
  sub_1000048B8(v10, qword_100012120);
  sub_100004880(v10, qword_100012120);
  sub_100008D78();
  sub_100008D28();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100008D18();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100008CB8();
}

uint64_t sub_100006218(uint64_t a1)
{
  v2 = sub_100007EDC(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100006278(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100008A44();
  *v5 = v2;
  v5[1] = sub_1000020A0;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v6);
}

unint64_t sub_100006330()
{
  result = qword_1000101D0;
  if (!qword_1000101D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101D0);
  }

  return result;
}

uint64_t sub_100006384(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002450;

  return sub_100008360();
}

unint64_t sub_10000642C()
{
  result = qword_1000101D8;
  if (!qword_1000101D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101D8);
  }

  return result;
}

unint64_t sub_100006484()
{
  result = qword_1000101E0;
  if (!qword_1000101E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101E0);
  }

  return result;
}

unint64_t sub_1000064DC()
{
  result = qword_1000101E8;
  if (!qword_1000101E8)
  {
    sub_10000269C(&qword_1000101F0, qword_1000099E8);
    sub_100006484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101E8);
  }

  return result;
}

uint64_t sub_100006560(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100006330();
  *v5 = v2;
  v5[1] = sub_100004970;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100006618()
{
  result = qword_1000101F8;
  if (!qword_1000101F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101F8);
  }

  return result;
}

uint64_t sub_10000666C(uint64_t a1)
{
  v1 = sub_10000473C(&qword_1000102B0, &qword_10000A138);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000473C(&qword_1000102B8, &qword_10000A140);
  __chkstk_darwin(v5);
  sub_100004A4C();
  sub_100008C78();
  v8._object = 0x800000010000A630;
  v8._countAndFlagsBits = 0xD00000000000005ELL;
  sub_100008C68(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_100008C58();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100008C68(v9);
  return sub_100008C88();
}

uint64_t sub_100006830()
{
  v0 = qword_100010198;

  return v0;
}

unint64_t sub_10000686C()
{
  result = qword_100010200;
  if (!qword_100010200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010200);
  }

  return result;
}

unint64_t sub_1000068C4()
{
  result = qword_100010208;
  if (!qword_100010208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010208);
  }

  return result;
}

unint64_t sub_10000691C()
{
  result = qword_100010210;
  if (!qword_100010210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010210);
  }

  return result;
}

unint64_t sub_100006974()
{
  result = qword_100010218;
  if (!qword_100010218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010218);
  }

  return result;
}

uint64_t sub_1000069C8(uint64_t a1)
{
  sub_1000089EC();
  v2 = sub_100008C28();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100006A38()
{
  result = qword_100010220;
  if (!qword_100010220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010220);
  }

  return result;
}

unint64_t sub_100006A90()
{
  result = qword_100010228;
  if (!qword_100010228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010228);
  }

  return result;
}

unint64_t sub_100006AE8()
{
  result = qword_100010230;
  if (!qword_100010230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010230);
  }

  return result;
}

unint64_t sub_100006B40()
{
  result = qword_100010238;
  if (!qword_100010238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010238);
  }

  return result;
}

uint64_t sub_100006C10(uint64_t a1)
{
  v2 = sub_100004A4C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100006C60()
{
  result = qword_100010250;
  if (!qword_100010250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010250);
  }

  return result;
}

uint64_t sub_100006CBC(uint64_t a1)
{
  v2 = sub_100006AE8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100006D08(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x504D495F4C49414DLL;
    v6 = 0xD000000000000013;
    if (a1 == 8)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 0x454D494D5F53;
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
    v1 = 0x5F544C5541464544;
    v2 = 0x5045525F4F545541;
    v3 = 0xD000000000000011;
    if (a1 != 3)
    {
      v3 = 0x524F465F4C49414DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x53455341494C41;
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

unint64_t sub_100006E74(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6F706D496C69616DLL;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0x61656C436C69616DLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0x454D494D73;
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
    v1 = 0x45746C7561666564;
    v2 = 0x6C7065526F747561;
    v3 = 0x6953726576726573;
    if (a1 != 3)
    {
      v3 = 0x77726F466C69616DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x73657361696C61;
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

uint64_t sub_100006FE8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100006E74(*a1);
  v5 = v4;
  if (v3 == sub_100006E74(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008DB8();
  }

  return v8 & 1;
}

unint64_t sub_100007074()
{
  result = qword_100010258;
  if (!qword_100010258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010258);
  }

  return result;
}

Swift::Int sub_1000070C8()
{
  v1 = *v0;
  sub_100008DC8();
  sub_100006E74(v1);
  sub_100008D98();

  return sub_100008DD8();
}

uint64_t sub_10000712C(uint64_t a1)
{
  sub_100006E74(*v1);
  sub_100008D98();
}

Swift::Int sub_100007180(uint64_t a1)
{
  v2 = *v1;
  sub_100008DC8();
  sub_100006E74(v2);
  sub_100008D98();

  return sub_100008DD8();
}

unint64_t sub_1000071E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100008480(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100007210@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100006E74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100007298@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100008480(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1000072E4()
{
  result = qword_100010270;
  if (!qword_100010270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010270);
  }

  return result;
}

uint64_t sub_100007338()
{
  v0 = sub_100008CF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100008D38();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100008D88();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100008D08();
  sub_1000048B8(v6, qword_100012138);
  sub_100004880(v6, qword_100012138);
  sub_100008D78();
  sub_100008D28();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100008D18();
}

void (*sub_100007528(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100008B78();
  return sub_1000037E4;
}

unint64_t sub_10000759C()
{
  result = qword_100010278;
  if (!qword_100010278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010278);
  }

  return result;
}

uint64_t sub_1000075F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008944();
  v5 = sub_1000089EC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000765C()
{
  v0 = qword_1000101A8;

  return v0;
}

unint64_t sub_100007698()
{
  result = qword_100010280;
  if (!qword_100010280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010280);
  }

  return result;
}

unint64_t sub_1000076F0()
{
  result = qword_100010288;
  if (!qword_100010288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010288);
  }

  return result;
}

uint64_t sub_1000077CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100008944();
  v6 = sub_100008998();
  v7 = sub_1000089EC();
  *v4 = v2;
  v4[1] = sub_100003C54;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100007898@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000084CC();
  *a1 = result;
  return result;
}

uint64_t sub_1000078C0(uint64_t a1)
{
  v2 = sub_10000759C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000792C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000079BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_100007A8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007B0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007AAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007C00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007ACC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007CF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007AEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007DE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007B0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000473C(&qword_1000102D8, &qword_10000A160);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100007C00(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000473C(&unk_1000102E0, &qword_10000A168);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100007CF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000473C(&qword_1000102C0, &qword_10000A150);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100007DE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000473C(&qword_1000102D0, &qword_10000A158);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t *sub_100007EDC(uint64_t a1)
{
  v43 = sub_100008D58();
  __chkstk_darwin(v43);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = (a1 + 32);
    v41 = enum case for iCloudMailSettingsFeatureFlag.customEmailDomain(_:);
    v8 = (v2 + 104);
    v9 = (v2 + 8);
    v40 = enum case for iCloudMailSettingsFeatureFlag.mailImport(_:);
    v39 = enum case for iCloudMailSettingsFeatureFlag.endToEndEncryption(_:);
    v38 = enum case for iCloudMailSettingsFeatureFlag.mailboxBehavior(_:);
    v37 = enum case for iCloudMailSettingsFeatureFlag.mailForwarding(_:);
    v36 = enum case for iCloudMailSettingsFeatureFlag.rules(_:);
    v35 = enum case for iCloudMailSettingsFeatureFlag.autoReply(_:);
    v34 = enum case for iCloudMailSettingsFeatureFlag.alias(_:);
    v42 = ACAccountDataclassMail;
    HIDWORD(v33) = enum case for iCloudMailSettingsFeatureFlag.mailAppMailCleanup(_:);
    do
    {
      v11 = *v7++;
      v10 = v11;
      if (v11 > 4)
      {
        if (v10 <= 6)
        {
          v12 = *v8;
          v13 = v4;
          if (v10 == 5)
          {
            v14 = v38;
          }

          else
          {
            v14 = v39;
          }
        }

        else if (v10 == 7)
        {
          v12 = *v8;
          v13 = v4;
          v14 = v40;
        }

        else if (v10 == 8)
        {
          v12 = *v8;
          v13 = v4;
          v14 = v41;
        }

        else
        {
          v15 = [objc_allocWithZone(ACAccountStore) init];
          v19 = [v15 aa_primaryAppleAccount];
          if (!v19)
          {
            goto LABEL_3;
          }

          v17 = v19;
          v20 = [v19 propertiesForDataclass:v42];
          if (!v20)
          {
            goto LABEL_34;
          }

          v12 = *v8;
          v13 = v4;
          v14 = HIDWORD(v33);
        }
      }

      else if (v10 <= 1)
      {
        if (!v10)
        {
          v15 = [objc_allocWithZone(ACAccountStore) init];
          v16 = [v15 aa_primaryAppleAccount];
          if (v16)
          {
            v17 = v16;
            v18 = [v16 propertiesForDataclass:v42];
            if (v18)
            {

LABEL_29:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v44 = v6;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_100007AEC(0, v6[2] + 1, 1);
                v6 = v44;
              }

              v25 = v6[2];
              v24 = v6[3];
              if (v25 >= v24 >> 1)
              {
                sub_100007AEC((v24 > 1), v25 + 1, 1);
                v6 = v44;
              }

              v6[2] = v25 + 1;
              *(v6 + v25 + 32) = v10;
              goto LABEL_4;
            }

LABEL_34:

            goto LABEL_4;
          }

LABEL_3:

          goto LABEL_4;
        }

        v12 = *v8;
        v13 = v4;
        v14 = v34;
      }

      else if (v10 == 2)
      {
        v12 = *v8;
        v13 = v4;
        v14 = v35;
      }

      else
      {
        v12 = *v8;
        v13 = v4;
        if (v10 == 3)
        {
          v14 = v36;
        }

        else
        {
          v14 = v37;
        }
      }

      v21 = v43;
      v12(v13, v14, v43);
      v22 = sub_100008D48();
      (*v9)(v4, v21);
      if (v22)
      {
        goto LABEL_29;
      }

LABEL_4:
      --v5;
    }

    while (v5);
  }

  v26 = v6[2];
  if (v26)
  {
    v44 = _swiftEmptyArrayStorage;
    sub_100007ACC(0, v26, 0);
    v27 = v44;
    v28 = v44[2];
    v29 = 32;
    do
    {
      v30 = *(v6 + v29);
      v44 = v27;
      v31 = v27[3];
      if (v28 >= v31 >> 1)
      {
        sub_100007ACC((v31 > 1), v28 + 1, 1);
        v27 = v44;
      }

      v27[2] = v28 + 1;
      *(v27 + v28 + 32) = v30;
      ++v29;
      ++v28;
      --v26;
    }

    while (v26);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v27;
}

uint64_t sub_10000837C()
{
  sub_100007ACC(0, 10, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_10000C910 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100007ACC((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 10);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_100008480(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C940;
  v6._object = a2;
  v4 = sub_100008DA8(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000084CC()
{
  v0 = sub_100008C98();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000473C(&qword_100010148, &qword_1000098E8);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v5;
  v6 = sub_10000473C(&qword_100010150, &qword_1000098F0);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = sub_100008CF8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100008D38();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100008D88();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100008D08();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v20[1] = sub_10000473C(&qword_100010290, &unk_10000A128);
  sub_100008D78();
  sub_100008D28();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  sub_100008D18();
  (*(v16 + 56))(v8, 1, 1, v15);
  v26[0] = 10;
  v17 = sub_100008B68();
  v18 = *(*(v17 - 8) + 56);
  v18(v21, 1, 1, v17);
  v18(v22, 1, 1, v17);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_100004A4C();
  return sub_100008BA8();
}

unint64_t sub_100008944()
{
  result = qword_100010298;
  if (!qword_100010298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010298);
  }

  return result;
}

unint64_t sub_100008998()
{
  result = qword_1000102A0;
  if (!qword_1000102A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102A0);
  }

  return result;
}

unint64_t sub_1000089EC()
{
  result = qword_1000102A8;
  if (!qword_1000102A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102A8);
  }

  return result;
}

unint64_t sub_100008A44()
{
  result = qword_1000102C8;
  if (!qword_1000102C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102C8);
  }

  return result;
}