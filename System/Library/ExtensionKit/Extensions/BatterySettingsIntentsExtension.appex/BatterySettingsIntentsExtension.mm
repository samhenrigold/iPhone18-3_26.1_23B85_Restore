uint64_t sub_1000019F0()
{
  v0 = sub_100001B18(&qword_10003C320, &qword_100029B60);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001A7C();
  sub_1000290D4();
  return 0;
}

unint64_t sub_100001A7C()
{
  result = qword_10003C318;
  if (!qword_10003C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C318);
  }

  return result;
}

uint64_t sub_100001B18(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001B64()
{
  result = qword_10003C328;
  if (!qword_10003C328)
  {
    sub_100001BC8(&qword_10003C330, qword_100029B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C328);
  }

  return result;
}

uint64_t sub_100001BC8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001C14()
{
  result = qword_10003C358;
  if (!qword_10003C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C358);
  }

  return result;
}

unint64_t sub_100001C6C()
{
  result = qword_10003C360;
  if (!qword_10003C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C360);
  }

  return result;
}

unint64_t sub_100001CC0()
{
  result = qword_10003C368;
  if (!qword_10003C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C368);
  }

  return result;
}

uint64_t sub_100001D14(char a1)
{
  v1 = sub_100001B18(&qword_10003C468, &unk_10002A390);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_100028FF4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  sub_100028FD4();
  sub_100028FD4();
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100028DF4();
  v10 = sub_100028E04();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  sub_100001B18(&qword_10003C470, &qword_10002BE60);
  *(swift_allocObject() + 16) = xmmword_100029B80;
  sub_100028FD4();
  sub_100028FD4();
  return sub_100028E14();
}

uint64_t sub_100002060()
{
  v0 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100028FF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100028F84();
  sub_100004ED8(v5, qword_1000453E0);
  sub_100004EA0(v5, qword_1000453E0);
  sub_100028FD4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100028F74();
}

uint64_t sub_1000021D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004F68;

  return sub_10000446C(a1);
}

uint64_t sub_100002278(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100004F40;

  return sub_100004198();
}

uint64_t sub_10000231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000023DC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000023DC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1000024DC()
{
  result = qword_10003C370;
  if (!qword_10003C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C370);
  }

  return result;
}

uint64_t sub_100002530(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000025D4;

  return sub_10000471C();
}

uint64_t sub_1000025D4(uint64_t a1)
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

unint64_t sub_1000026EC()
{
  result = qword_10003C378;
  if (!qword_10003C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C378);
  }

  return result;
}

unint64_t sub_100002740()
{
  result = qword_10003C380;
  if (!qword_10003C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C380);
  }

  return result;
}

unint64_t sub_100002798()
{
  result = qword_10003C388;
  if (!qword_10003C388)
  {
    sub_100001BC8(&qword_10003C390, qword_100029C48);
    sub_100002740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C388);
  }

  return result;
}

uint64_t sub_10000281C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000024DC();
  *v5 = v2;
  v5[1] = sub_1000028D0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000028D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000029C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002A68;

  return sub_100004844();
}

uint64_t sub_100002A68(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_100002B84()
{
  result = qword_10003C398;
  if (!qword_10003C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C398);
  }

  return result;
}

uint64_t sub_100002BD8(uint64_t a1)
{
  v1 = sub_100001B18(&qword_10003C478, &qword_10002A3A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100001B18(&qword_10003C480, &qword_10002A3A8);
  __chkstk_darwin(v5);
  sub_100001CC0();
  sub_100028F24();
  v8._object = 0x800000010002F010;
  v8._countAndFlagsBits = 0xD000000000000051;
  sub_100028F14(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_100028F04();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100028F14(v9);
  return sub_100028F34();
}

uint64_t sub_100002D9C()
{
  v0 = qword_10003C338;

  return v0;
}

unint64_t sub_100002DD8()
{
  result = qword_10003C3A0;
  if (!qword_10003C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C3A0);
  }

  return result;
}

unint64_t sub_100002E30()
{
  result = qword_10003C3A8;
  if (!qword_10003C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C3A8);
  }

  return result;
}

unint64_t sub_100002E88()
{
  result = qword_10003C3B0;
  if (!qword_10003C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C3B0);
  }

  return result;
}

unint64_t sub_100002EE4()
{
  result = qword_10003C3B8;
  if (!qword_10003C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C3B8);
  }

  return result;
}

uint64_t sub_100002F38(uint64_t a1)
{
  sub_100004E4C();
  v2 = sub_100028EA4();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100002FA8()
{
  result = qword_10003C3C0;
  if (!qword_10003C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C3C0);
  }

  return result;
}

unint64_t sub_100003000()
{
  result = qword_10003C3C8;
  if (!qword_10003C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C3C8);
  }

  return result;
}

unint64_t sub_10000305C()
{
  result = qword_10003C3D0;
  if (!qword_10003C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C3D0);
  }

  return result;
}

unint64_t sub_1000030B4()
{
  result = qword_10003C3D8;
  if (!qword_10003C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C3D8);
  }

  return result;
}

uint64_t sub_100003194(uint64_t a1)
{
  v2 = sub_100001CC0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000031E4()
{
  result = qword_10003C3F0;
  if (!qword_10003C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C3F0);
  }

  return result;
}

uint64_t sub_100003240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000028D0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003304(uint64_t a1)
{
  v2 = sub_10000305C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100003350(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0x800000010002EC80;
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0;
  }

  if (*a2)
  {
    v6 = 0x800000010002EC80;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100029524();
  }

  return v8 & 1;
}

unint64_t sub_1000033F0()
{
  result = qword_10003C3F8;
  if (!qword_10003C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C3F8);
  }

  return result;
}

Swift::Int sub_100003444()
{
  sub_100029544();
  sub_1000293B4();

  return sub_100029564();
}

uint64_t sub_1000034BC(uint64_t a1)
{
  sub_1000293B4();
}

Swift::Int sub_100003520(uint64_t a1)
{
  sub_100029544();
  sub_1000293B4();

  return sub_100029564();
}

uint64_t sub_100003594@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100039538;
  v8._object = v3;
  v5 = sub_1000294F4(v4, v8);

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

void sub_1000035F4(unint64_t *a1@<X8>)
{
  v2 = 0x800000010002EC80;
  v3 = 0xD000000000000014;
  if (!*v1)
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_10000366C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001BC8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000036C4()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000036F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{

  v6._rawValue = &off_100039538;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_1000294F4(v6, v10);

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

unint64_t sub_100003768()
{
  result = qword_10003C410;
  if (!qword_10003C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C410);
  }

  return result;
}

uint64_t sub_1000037BC()
{
  v0 = sub_100028FF4();
  sub_100004ED8(v0, qword_1000453F8);
  sub_100004EA0(v0, qword_1000453F8);
  return sub_100028FD4();
}

void *sub_100003854@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100028BB4();
  *a1 = v3;
  return result;
}

uint64_t (*sub_1000038C8(uint64_t *a1))()
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
  *(v2 + 32) = sub_100028BA4();
  return sub_10000393C;
}

void sub_10000393C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003988()
{
  result = qword_10003C418;
  if (!qword_10003C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C418);
  }

  return result;
}

unint64_t sub_1000039DC()
{
  result = qword_10003C420;
  if (!qword_10003C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C420);
  }

  return result;
}

uint64_t sub_100003A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004DA4();
  v5 = sub_100004E4C();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100003AA0()
{
  v0 = qword_10003C348;

  return v0;
}

unint64_t sub_100003AE0()
{
  result = qword_10003C428;
  if (!qword_10003C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C428);
  }

  return result;
}

unint64_t sub_100003B38()
{
  result = qword_10003C430;
  if (!qword_10003C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C430);
  }

  return result;
}

uint64_t sub_100003C18@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100004EA0(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100003CE0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100004DA4();
  v7 = sub_100004DF8();
  v8 = sub_100004E4C();
  *v5 = v2;
  v5[1] = sub_100003DB4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100003DB4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100003EBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004A84();
  *a1 = result;
  return result;
}

uint64_t sub_100003EE4(uint64_t a1)
{
  v2 = sub_100003988();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for PerfPowerServices(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PerfPowerServices(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1000040CC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 sf_inRetailKioskMode];

  byte_100045410 = v1;
}

id sub_100004160(uint64_t a1, void *a2, SEL *a3, _BYTE *a4)
{
  result = [objc_opt_self() *a3];
  *a4 = result;
  return result;
}

uint64_t sub_1000041B4()
{
  if (qword_10003C1D0 != -1)
  {
    swift_once();
  }

  if ((byte_100045410 & 1) == 0)
  {
    if (qword_10003C1E0 != -1)
    {
      swift_once();
    }

    if (byte_100045412 != 1)
    {
      v5 = _swiftEmptyArrayStorage[2];
      if (!v5)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    if (qword_10003C1D8 != -1)
    {
      swift_once();
    }

    if (byte_100045411)
    {
      sub_100020B0C(0, 1, 1);
      v2 = _swiftEmptyArrayStorage[2];
      v1 = _swiftEmptyArrayStorage[3];
      if (v2 >= v1 >> 1)
      {
        sub_100020B0C((v1 > 1), v2 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v2 + 1;
      *(&_swiftEmptyArrayStorage[4] + v2) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100020B0C(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v4 = _swiftEmptyArrayStorage[2];
      v3 = _swiftEmptyArrayStorage[3];
      if (v4 >= v3 >> 1)
      {
        sub_100020B0C((v3 > 1), v4 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      *(&_swiftEmptyArrayStorage[4] + v4) = 1;
    }
  }

  v5 = _swiftEmptyArrayStorage[2];
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_18:
  sub_100020AEC(0, v5, 0);
  v6 = _swiftEmptyArrayStorage[2];
  v7 = 32;
  do
  {
    v8 = *(_swiftEmptyArrayStorage + v7);
    v9 = _swiftEmptyArrayStorage[3];
    if (v6 >= v9 >> 1)
    {
      sub_100020AEC((v9 > 1), v6 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v6 + 1;
    *(&_swiftEmptyArrayStorage[4] + v6) = v8;
    ++v7;
    ++v6;
    --v5;
  }

  while (v5);
LABEL_24:

  v10 = *(v0 + 8);

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_10000448C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    if (qword_10003C1D0 != -1)
    {
      swift_once();
    }

    v4 = byte_100045410;
    v5 = &DarwinNotification;
    v6 = &unk_100045000;
    do
    {
      if ((v4 & 1) == 0)
      {
        v9 = *v3;
        if (qword_10003C1E0 != -1)
        {
          swift_once();
        }

        if (byte_100045412 == 1)
        {
          if (v5[6].base_prots != -1)
          {
            swift_once();
          }

          if (v6[1041] == 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100020B0C(0, _swiftEmptyArrayStorage[2] + 1, 1);
              v5 = &DarwinNotification;
            }

            v8 = _swiftEmptyArrayStorage[2];
            v7 = _swiftEmptyArrayStorage[3];
            if (v8 >= v7 >> 1)
            {
              sub_100020B0C((v7 > 1), v8 + 1, 1);
              v5 = &DarwinNotification;
            }

            _swiftEmptyArrayStorage[2] = v8 + 1;
            *(&_swiftEmptyArrayStorage[4] + v8) = v9;
            v6 = &unk_100045000;
          }
        }
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  v10 = _swiftEmptyArrayStorage[2];
  if (v10)
  {
    sub_100020AEC(0, v10, 0);
    v11 = _swiftEmptyArrayStorage[2];
    v12 = 32;
    do
    {
      v13 = *(_swiftEmptyArrayStorage + v12);
      v14 = _swiftEmptyArrayStorage[3];
      if (v11 >= v14 >> 1)
      {
        sub_100020AEC((v14 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *(&_swiftEmptyArrayStorage[4] + v11) = v13;
      ++v12;
      ++v11;
      --v10;
    }

    while (v10);
  }

  v15 = *(v17 + 8);

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_100004738()
{
  sub_100020AEC(0, 2, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_100020AEC((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    sub_100020AEC((v1 > 1), v5, 1);
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100004860()
{
  if (qword_10003C1D0 != -1)
  {
    swift_once();
  }

  if (byte_100045410)
  {
    goto LABEL_26;
  }

  if (qword_10003C1E0 != -1)
  {
    swift_once();
  }

  if (byte_100045412 != 1)
  {
LABEL_26:
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_18:
      v7 = LOBYTE(_swiftEmptyArrayStorage[4]);

      goto LABEL_21;
    }
  }

  else
  {
    if (qword_10003C1D8 != -1)
    {
      swift_once();
    }

    if (byte_100045411)
    {
      sub_100020B0C(0, 1, 1);
      v1 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      v3 = v1 + 1;
      if (v1 >= v2 >> 1)
      {
        v10 = _swiftEmptyArrayStorage[2];
        v12 = v1 + 1;
        sub_100020B0C((v2 > 1), v1 + 1, 1);
        v1 = v10;
        v3 = v12;
      }

      _swiftEmptyArrayStorage[2] = v3;
      *(&_swiftEmptyArrayStorage[4] + v1) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100020B0C(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v4 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      v6 = v4 + 1;
      if (v4 >= v5 >> 1)
      {
        v11 = _swiftEmptyArrayStorage[2];
        v13 = v4 + 1;
        sub_100020B0C((v5 > 1), v4 + 1, 1);
        v4 = v11;
        v6 = v13;
      }

      _swiftEmptyArrayStorage[2] = v6;
      *(&_swiftEmptyArrayStorage[4] + v4) = 1;
    }

    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_18;
    }
  }

  v7 = 2;
LABEL_21:
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_100004A84()
{
  v17 = sub_100028E94();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001B18(&qword_10003C438, &unk_10002AC40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100028FF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100001B18(&qword_10003C448, "Xm");
  sub_100028FD4();
  sub_100028FD4();
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = 2;
  v14 = sub_100028AD4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100001CC0();
  return sub_100028BF4();
}

unint64_t sub_100004DA4()
{
  result = qword_10003C450;
  if (!qword_10003C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C450);
  }

  return result;
}

unint64_t sub_100004DF8()
{
  result = qword_10003C458;
  if (!qword_10003C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C458);
  }

  return result;
}

unint64_t sub_100004E4C()
{
  result = qword_10003C460;
  if (!qword_10003C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C460);
  }

  return result;
}

uint64_t sub_100004EA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004ED8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100004F70()
{
  result = qword_10003C488;
  if (!qword_10003C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C488);
  }

  return result;
}

unint64_t sub_100004FC4()
{
  result = qword_10003C490;
  if (!qword_10003C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C490);
  }

  return result;
}

uint64_t sub_100005018()
{
  v0 = sub_100028FF4();
  sub_100004ED8(v0, qword_100045418);
  sub_100004EA0(v0, qword_100045418);
  return sub_100028FD4();
}

void *sub_10000507C@<X0>(void *a1@<X8>)
{
  result = sub_100028BB4();
  *a1 = v3;
  return result;
}

uint64_t sub_1000050B8(uint64_t *a1)
{

  sub_100028BC4();
}

void (*sub_100005100(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_100028BA4();
  return sub_100008DE8;
}

unint64_t sub_100005174()
{
  result = qword_10003C498;
  if (!qword_10003C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C498);
  }

  return result;
}

uint64_t sub_1000051C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008B30();
  v5 = sub_100008A60();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100005238()
{
  result = qword_10003C4A0;
  if (!qword_10003C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4A0);
  }

  return result;
}

unint64_t sub_100005290()
{
  result = qword_10003C4A8;
  if (!qword_10003C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4A8);
  }

  return result;
}

uint64_t sub_100005334(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100008B30();
  v7 = sub_100008B84();
  v8 = sub_100008A60();
  *v5 = v2;
  v5[1] = sub_100003DB4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100005408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008304();
  *a1 = result;
  return result;
}

uint64_t sub_100005430(uint64_t a1)
{
  v2 = sub_100005174();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100005470()
{
  result = qword_10003C4B0;
  if (!qword_10003C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4B0);
  }

  return result;
}

uint64_t sub_100005508()
{
  v0 = sub_100028F84();
  sub_100004ED8(v0, qword_100045430);
  sub_100004EA0(v0, qword_100045430);
  return sub_100028F64();
}

uint64_t sub_100005578@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_100001B18(&qword_10003C468, &unk_10002A390);
  __chkstk_darwin(v1 - 8);
  v3 = v15 - v2;
  v4 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = sub_100028FF4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v10 = __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = v15 - v11;
  if (qword_10003C1D8 != -1)
  {
    swift_once();
  }

  if (byte_100045411 == 1 && qword_10003C1E0 != -1)
  {
    swift_once();
  }

  sub_100028FD4();
  sub_100028FD4();
  (*(v8 + 16))(v6, v12, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100028DF4();
  v13 = sub_100028E04();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_100001B18(&qword_10003C470, &qword_10002BE60);
  *(swift_allocObject() + 16) = xmmword_100029B80;
  sub_100028FD4();
  sub_100028FD4();
  sub_100028E14();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_100005964()
{
  v0 = sub_100028FF4();
  sub_100004ED8(v0, qword_100045448);
  sub_100004EA0(v0, qword_100045448);
  return sub_100028FD4();
}

uint64_t sub_1000059C8()
{
  v0 = sub_100001B18(&qword_10003C5F0, &unk_10002ACD0);
  sub_100004ED8(v0, qword_100045460);
  v1 = sub_100004EA0(v0, qword_100045460);
  sub_100028D44();
  v2 = sub_100028D54();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100005A88()
{
  result = swift_getKeyPath();
  qword_100045478 = result;
  return result;
}

uint64_t sub_100005AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100001B18(&qword_10003C5C0, &unk_10002AC80);
  v3[10] = swift_task_alloc();
  sub_100001B18(&qword_10003C5C8, &qword_10002C760);
  v3[11] = swift_task_alloc();
  sub_100001B18(&qword_10003C5D0, &qword_10002AC90);
  v3[12] = swift_task_alloc();
  v4 = sub_100028AD4();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100001B18(&qword_10003C5D8, &qword_10002AC98);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100005CC8, 0, 0);
}

uint64_t sub_100005CC8()
{
  sub_100028BB4();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_100007068();
  *v1 = v0;
  v1[1] = sub_100005D98;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_100008DE4, 0, &type metadata for LowPowerModeToggleEntity, v2);
}

uint64_t sub_100005D98()
{

  return _swift_task_switch(sub_100005E94, 0, 0);
}

uint64_t sub_100005E94()
{
  sub_100028BB4();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_100028BB4();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10003C208 != -1)
  {
    swift_once();
  }

  v2 = qword_100045478;
  *(v0 + 176) = qword_100045478;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_10000366C(&qword_10003C5B0, &qword_10003C5B8, &qword_10002AC70, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100005FF4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_100005FF4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1000063B0;
  }

  else
  {
    v2 = sub_100006148;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100006148()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_100028BB4();
  v0[6] = v0[5];
  v6 = sub_100028F54();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100028F94();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100005470();
  sub_100007278();
  sub_100028A84();
  (*(v2 + 16))(v10, v1, v3);
  sub_100028AB4();
  sub_100028B04();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000063B0()
{
  (*(v0[17] + 8))(v0[19], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100006478()
{
  v0 = sub_100001B18(&qword_10003C5E0, &qword_10002ACA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10003C208 != -1)
  {
    swift_once();
  }

  sub_100028DB4();

  sub_100007278();
  sub_10000366C(&qword_10003C5E8, &qword_10003C5E0, &qword_10002ACA0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_100028DA4();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000065EC(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_100028BA4();
  return sub_100006660;
}

void *sub_100006664@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100028BB4();
  *a1 = v3;
  return result;
}

void (*sub_1000066D8(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_100028BA4();
  return sub_100008DE8;
}

uint64_t sub_10000674C()
{
  if (qword_10003C208 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000067AC()
{
  result = qword_10003C4C8;
  if (!qword_10003C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4C8);
  }

  return result;
}

unint64_t sub_100006804()
{
  result = qword_10003C4D0;
  if (!qword_10003C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4D0);
  }

  return result;
}

uint64_t sub_100006938@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C200 != -1)
  {
    swift_once();
  }

  v2 = sub_100001B18(&qword_10003C5F0, &unk_10002ACD0);
  v3 = sub_100004EA0(v2, qword_100045460);

  return sub_100008AC0(v3, a1);
}

uint64_t sub_1000069BC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008DD4;

  return sub_100005AE8(a1, v5, v4);
}

uint64_t sub_100006A68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000085FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100006AB0()
{
  result = qword_10003C4D8;
  if (!qword_10003C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4D8);
  }

  return result;
}

unint64_t sub_100006B08()
{
  result = qword_10003C4E0;
  if (!qword_10003C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4E0);
  }

  return result;
}

id sub_100006B7C()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result getPowerMode];

    *v3 = v4 == 1;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100006C54()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [result setPowerMode:*(v0 + 16) fromSource:kPMLPMSourceSettings];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100006CFC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100028FF4();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100006D8C, 0, 0);
}

uint64_t sub_100006D8C()
{
  v1 = *(v0 + 16);
  sub_100001B18(&qword_10003C4C0, qword_10002A570);
  sub_100028FD4();
  sub_10000366C(&qword_10003C5B0, &qword_10003C5B8, &qword_10002AC70, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_100028FC4();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100006EB4()
{
  result = qword_10003C4E8;
  if (!qword_10003C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4E8);
  }

  return result;
}

uint64_t sub_100006F08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100007588();
  *v4 = v2;
  v4[1] = sub_1000025D4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100006FBC()
{
  result = qword_10003C4F0;
  if (!qword_10003C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4F0);
  }

  return result;
}

unint64_t sub_100007014()
{
  result = qword_10003C4F8;
  if (!qword_10003C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4F8);
  }

  return result;
}

unint64_t sub_100007068()
{
  result = qword_10003C500;
  if (!qword_10003C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C500);
  }

  return result;
}

uint64_t sub_1000070BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100007588();
  *v5 = v2;
  v5[1] = sub_100004F68;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100007170(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100007588();
  *v4 = v2;
  v4[1] = sub_100004F40;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100007224()
{
  result = qword_10003C508;
  if (!qword_10003C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C508);
  }

  return result;
}

unint64_t sub_100007278()
{
  result = qword_10003C510;
  if (!qword_10003C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C510);
  }

  return result;
}

unint64_t sub_1000072D0()
{
  result = qword_10003C518;
  if (!qword_10003C518)
  {
    sub_100001BC8(&qword_10003C520, qword_10002A7D0);
    sub_100007278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C518);
  }

  return result;
}

uint64_t sub_100007354(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100006EB4();
  *v5 = v2;
  v5[1] = sub_1000028D0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100007408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008DD4;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1000074C4()
{
  result = qword_10003C528;
  if (!qword_10003C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C528);
  }

  return result;
}

unint64_t sub_10000751C()
{
  result = qword_10003C530;
  if (!qword_10003C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C530);
  }

  return result;
}

unint64_t sub_100007588()
{
  result = qword_10003C538;
  if (!qword_10003C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C538);
  }

  return result;
}

unint64_t sub_1000075E0()
{
  result = qword_10003C540;
  if (!qword_10003C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C540);
  }

  return result;
}

uint64_t sub_100007634(uint64_t a1)
{
  if (qword_10003C1D8 != -1)
  {
    swift_once();
  }

  v2 = 0xD00000000000004ALL;
  if (byte_100045411 != 1)
  {
    goto LABEL_8;
  }

  if (qword_10003C1E0 != -1)
  {
    swift_once();
  }

  if (byte_100045412 == 1)
  {
    v3 = "#LOW_POWER_MODE_IDENTIFIER";
    v2 = 0xD00000000000006ALL;
  }

  else
  {
LABEL_8:
    v3 = "Battery -> Power Mode";
  }

  v4 = sub_100007068();

  return _EntityURLRepresentation.init(_:)(v2, v3 | 0x8000000000000000, a1, v4);
}

unint64_t sub_100007734()
{
  result = qword_10003C548;
  if (!qword_10003C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C548);
  }

  return result;
}

unint64_t sub_10000778C()
{
  result = qword_10003C550;
  if (!qword_10003C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C550);
  }

  return result;
}

unint64_t sub_1000077E8()
{
  result = qword_10003C558;
  if (!qword_10003C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C558);
  }

  return result;
}

uint64_t sub_100007848@<X0>(uint64_t *a2@<X8>)
{
  sub_100006B08();
  result = sub_100028B24();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100007888(uint64_t a1)
{
  sub_100008A60();
  v2 = sub_100028EA4();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10000792C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100004EA0(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100007A18(uint64_t a1)
{
  v2 = sub_100007068();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007A68()
{
  result = qword_10003C570;
  if (!qword_10003C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C570);
  }

  return result;
}

uint64_t sub_100007AC0(uint64_t a1)
{
  v2 = sub_1000077E8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100007B1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007B28(uint64_t *a1, int a2)
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

uint64_t sub_100007B70(uint64_t result, int a2, int a3)
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

uint64_t sub_100007C64@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100001B18(&qword_10003C608, &qword_10002AD40);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100001B18(&qword_10003C610, &qword_10002AD48);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100001B18(&qword_10003C618, &qword_10002AD50);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v23 = &v23 - v10;
  v11 = sub_100001B18(&qword_10003C620, &qword_10002AD58);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  __chkstk_darwin(v11);
  v24 = &v23 - v13;
  swift_getKeyPath();
  sub_100001B18(&qword_10003C628, &qword_10002AD60);
  sub_100001B18(&qword_10003C630, &qword_10002AD68);
  sub_100006B08();
  sub_10000366C(&qword_10003C638, &qword_10003C628, &qword_10002AD60, &protocol conformance descriptor for Label<A, B>);
  sub_100008C04();
  sub_1000292E4();
  sub_100029104();
  v14 = sub_10000366C(&qword_10003C648, &qword_10003C608, &qword_10002AD40, &protocol conformance descriptor for ControlToggle<A>);
  sub_100029144();

  (*(v25 + 8))(v3, v1);
  sub_100029104();
  v33 = v1;
  v34 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v23;
  v17 = v26;
  sub_100029124();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_100029154();
  (*(v29 + 8))(v16, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_100029134();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_1000081A0()
{
  v0 = sub_100029104();

  return Label<>.init(_:systemImage:)(v0);
}

double sub_100008214@<D0>(uint64_t a2@<X8>)
{
  sub_100029104();
  sub_100029204();
  sub_100029164();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_100008304()
{
  v17[0] = sub_100028E94();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001B18(&qword_10003C438, &unk_10002AC40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_100028FF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100001B18(&qword_10003C598, &unk_10002AC50);
  sub_100028FD4();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_100028AD4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100007068();
  return sub_100028BF4();
}

uint64_t sub_1000085FC()
{
  v0 = sub_100001B18(&qword_10003C590, &qword_10002C720);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_100028E94();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001B18(&qword_10003C438, &unk_10002AC40);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_100028FF4();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100001B18(&qword_10003C598, &unk_10002AC50);
  sub_100028FD4();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_100028AD4();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_100007068();
  v23 = sub_100028BF4();
  sub_100001B18(&qword_10003C5A0, &qword_10002C730);
  sub_100028FD4();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_100029404();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100028C04();
  return v23;
}

unint64_t sub_100008A60()
{
  result = qword_10003C5A8;
  if (!qword_10003C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C5A8);
  }

  return result;
}

uint64_t sub_100008AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B18(&qword_10003C5F0, &unk_10002ACD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100008B30()
{
  result = qword_10003C5F8;
  if (!qword_10003C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C5F8);
  }

  return result;
}

unint64_t sub_100008B84()
{
  result = qword_10003C600;
  if (!qword_10003C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C600);
  }

  return result;
}

unint64_t sub_100008C04()
{
  result = qword_10003C640;
  if (!qword_10003C640)
  {
    sub_100001BC8(&qword_10003C630, &qword_10002AD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C640);
  }

  return result;
}

uint64_t sub_100008C80()
{
  sub_100001BC8(&qword_10003C620, &qword_10002AD58);
  sub_100001BC8(&qword_10003C618, &qword_10002AD50);
  sub_100001BC8(&qword_10003C610, &qword_10002AD48);
  sub_100001BC8(&qword_10003C608, &qword_10002AD40);
  sub_10000366C(&qword_10003C648, &qword_10003C608, &qword_10002AD40, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100008E18()
{
  result = qword_10003C650;
  if (!qword_10003C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C650);
  }

  return result;
}

Swift::Int sub_100008E84()
{
  v1 = *v0;
  sub_100029544();
  sub_100029554(v1);
  return sub_100029564();
}

Swift::Int sub_100008EF8(uint64_t a1)
{
  v2 = *v1;
  sub_100029544();
  sub_100029554(v2);
  return sub_100029564();
}

const char *sub_100008F50()
{
  if (*v0)
  {
    return "battery_health_details";
  }

  else
  {
    return "de_use_nlg_dialog";
  }
}

unint64_t sub_100008F84()
{
  result = qword_10003C678;
  if (!qword_10003C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C678);
  }

  return result;
}

unint64_t sub_100008FDC()
{
  result = qword_10003C680;
  if (!qword_10003C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C680);
  }

  return result;
}

unint64_t sub_100009030()
{
  result = qword_10003C688;
  if (!qword_10003C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C688);
  }

  return result;
}

void sub_100009084()
{
  v0 = PowerUISmartChargeClientSettings;
  v1 = objc_allocWithZone(PowerUISmartChargeClient);
  v2 = v0;
  v3 = [v1 initWithClientName:v2];

  qword_100045480 = v3;
}

void sub_1000090E8()
{
  v0 = [objc_allocWithZone(PowerUISmartChargeClient) initWithClientName:PowerUISmartChargeClientSettings];
  v1 = [v0 isMCLSupported];

  if (v1)
  {
    v3[3] = &type metadata for PerfPowerServices;
    v3[4] = sub_10000BC1C();
    LOBYTE(v3[0]) = 1;
    v2 = sub_100029074();
    sub_10000BC70(v3);
  }

  else
  {
    v2 = 0;
  }

  byte_100045488 = v2 & 1;
}

void sub_1000091BC(uint64_t a1, SEL *a2, unsigned __int8 *a3)
{
  if (qword_10003C210 != -1)
  {
    swift_once();
  }

  v5 = qword_100045480;
  v6 = [v5 *a2];

  *a3 = v6;
}

uint64_t sub_10000923C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = sub_100001B18(&qword_10003C468, &unk_10002A390);
  __chkstk_darwin(v3 - 8);
  v5 = v14 - v4;
  v6 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  v9 = sub_100028FF4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  if (a1)
  {
    sub_100028FD4();
    sub_100028FD4();
    if (a1 == 1)
    {
      v14[0] = "optimized battery charging mode";
    }

    else
    {
      v14[0] = "clean energy charging mode";
    }
  }

  else
  {
    sub_100028FD4();
    sub_100028FD4();
    v14[0] = "nd Charging Settings";
  }

  (*(v10 + 56))(v8, 0, 1, v9);
  sub_100028DF4();
  v12 = sub_100028E04();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  sub_100001B18(&qword_10003C470, &qword_10002BE60);
  *(swift_allocObject() + 16) = xmmword_100029B80;
  sub_100028FD4();
  sub_100028FD4();
  return sub_100028E14();
}

uint64_t sub_100009608()
{
  v0 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100028FF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100028F84();
  sub_100004ED8(v5, qword_100045490);
  sub_100004EA0(v5, qword_100045490);
  sub_100028FD4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100028F74();
}

uint64_t sub_100009778(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004F68;

  return sub_10000B0C4(a1);
}

uint64_t sub_100009820(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100004F40;

  return sub_10000ADBC();
}

unint64_t sub_1000098C4()
{
  result = qword_10003C690;
  if (!qword_10003C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C690);
  }

  return result;
}

uint64_t sub_100009918(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000025D4;

  return sub_10000B3D4();
}

unint64_t sub_1000099C0()
{
  result = qword_10003C698;
  if (!qword_10003C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C698);
  }

  return result;
}

unint64_t sub_100009A14()
{
  result = qword_10003C6A0;
  if (!qword_10003C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C6A0);
  }

  return result;
}

unint64_t sub_100009A6C()
{
  result = qword_10003C6A8;
  if (!qword_10003C6A8)
  {
    sub_100001BC8(&qword_10003C6B0, qword_10002AED8);
    sub_100009A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C6A8);
  }

  return result;
}

uint64_t sub_100009AF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000098C4();
  *v5 = v2;
  v5[1] = sub_1000028D0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100009BA4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002A68;

  return sub_10000B544();
}

unint64_t sub_100009C50()
{
  result = qword_10003C6B8;
  if (!qword_10003C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C6B8);
  }

  return result;
}

uint64_t sub_100009CA4(uint64_t a1)
{
  v1 = sub_100001B18(&qword_10003C770, &qword_10002B630);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100001B18(&qword_10003C778, &qword_10002B638);
  __chkstk_darwin(v5);
  sub_100009030();
  sub_100028F24();
  v8._object = 0x800000010002F6A0;
  v8._countAndFlagsBits = 0xD000000000000046;
  sub_100028F14(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_100028F04();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100028F14(v9);
  return sub_100028F34();
}

uint64_t sub_100009E68()
{
  v0 = qword_10003C658;

  return v0;
}

unint64_t sub_100009EA4()
{
  result = qword_10003C6C0;
  if (!qword_10003C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C6C0);
  }

  return result;
}

unint64_t sub_100009EFC()
{
  result = qword_10003C6C8;
  if (!qword_10003C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C6C8);
  }

  return result;
}

unint64_t sub_100009F54()
{
  result = qword_10003C6D0;
  if (!qword_10003C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C6D0);
  }

  return result;
}

unint64_t sub_100009FB0()
{
  result = qword_10003C6D8;
  if (!qword_10003C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C6D8);
  }

  return result;
}

uint64_t sub_10000A004(uint64_t a1)
{
  sub_10000BBC8();
  v2 = sub_100028EA4();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10000A074()
{
  result = qword_10003C6E0;
  if (!qword_10003C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C6E0);
  }

  return result;
}

unint64_t sub_10000A0CC()
{
  result = qword_10003C6E8;
  if (!qword_10003C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C6E8);
  }

  return result;
}

unint64_t sub_10000A128()
{
  result = qword_10003C6F0;
  if (!qword_10003C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C6F0);
  }

  return result;
}

unint64_t sub_10000A180()
{
  result = qword_10003C6F8;
  if (!qword_10003C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C6F8);
  }

  return result;
}

uint64_t sub_10000A250(uint64_t a1)
{
  v2 = sub_100009030();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000A2A0()
{
  result = qword_10003C710;
  if (!qword_10003C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C710);
  }

  return result;
}

uint64_t sub_10000A2FC(uint64_t a1)
{
  v2 = sub_10000A128();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000A348(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x800000010002ECA0;
  if (v2 == 1)
  {
    v4 = 0x800000010002ECA0;
  }

  else
  {
    v4 = 0x800000010002ECC0;
  }

  if (*a1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = *a1;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  if (*a2 != 1)
  {
    v3 = 0x800000010002ECC0;
  }

  if (*a2)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = *a2;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100029524();
  }

  return v10 & 1;
}

unint64_t sub_10000A40C()
{
  result = qword_10003C718;
  if (!qword_10003C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C718);
  }

  return result;
}

Swift::Int sub_10000A460()
{
  sub_100029544();
  sub_1000293B4();

  return sub_100029564();
}

uint64_t sub_10000A4FC(uint64_t a1)
{
  sub_1000293B4();
}

Swift::Int sub_10000A584(uint64_t a1)
{
  sub_100029544();
  sub_1000293B4();

  return sub_100029564();
}

unint64_t sub_10000A61C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B7B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10000A64C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE000000000000000;
  v4 = 0x800000010002ECA0;
  if (v2 != 1)
  {
    v4 = 0x800000010002ECC0;
  }

  if (*v1)
  {
    v2 = 0xD000000000000015;
    v3 = v4;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10000A6F8()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_10000A74C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000B7B4(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10000A798()
{
  result = qword_10003C730;
  if (!qword_10003C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C730);
  }

  return result;
}

uint64_t sub_10000A7EC()
{
  v0 = sub_100028FF4();
  sub_100004ED8(v0, qword_1000454A8);
  sub_100004EA0(v0, qword_1000454A8);
  return sub_100028FD4();
}

void (*sub_10000A850(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100028BA4();
  return sub_10000393C;
}

unint64_t sub_10000A8C4()
{
  result = qword_10003C738;
  if (!qword_10003C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C738);
  }

  return result;
}

uint64_t sub_10000A918(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BB20();
  v5 = sub_10000BBC8();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000A984()
{
  v0 = qword_10003C668;

  return v0;
}

unint64_t sub_10000A9C0()
{
  result = qword_10003C740;
  if (!qword_10003C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C740);
  }

  return result;
}

unint64_t sub_10000AA18()
{
  result = qword_10003C748;
  if (!qword_10003C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C748);
  }

  return result;
}

uint64_t sub_10000AAF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000BB20();
  v7 = sub_10000BB74();
  v8 = sub_10000BBC8();
  *v5 = v2;
  v5[1] = sub_100003DB4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_10000ABC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000B800();
  *a1 = result;
  return result;
}

uint64_t sub_10000ABF0(uint64_t a1)
{
  v2 = sub_10000A8C4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for BatteryUsageInformationQueryRangeType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BatteryUsageInformationQueryRangeType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000ADD8()
{
  v0 = 0;
  v1 = &DarwinNotification;
  do
  {
    v4 = *(&off_1000395B0 + v0 + 32);
    if (v4 >= 2)
    {
      if (qword_10003C218 == -1)
      {
        if (byte_100045488)
        {
          goto LABEL_5;
        }
      }

      else
      {
        swift_once();
        if (byte_100045488)
        {
          goto LABEL_5;
        }
      }

      v5 = &byte_100045489;
      if (qword_10003C220 != -1)
      {
        swift_once();
        if ((byte_100045489 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }

LABEL_15:
      if ((*v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }

    if (qword_10003C218 == -1)
    {
      if (byte_100045488)
      {
        goto LABEL_5;
      }
    }

    else
    {
      swift_once();
      if (byte_100045488)
      {
        goto LABEL_5;
      }
    }

    v5 = &byte_10004548A;
    if (v1[7].ivars == -1)
    {
      goto LABEL_15;
    }

    swift_once();
    if ((byte_10004548A & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100020B5C(0, _swiftEmptyArrayStorage[2] + 1, 1);
      v1 = &DarwinNotification;
    }

    v3 = _swiftEmptyArrayStorage[2];
    v2 = _swiftEmptyArrayStorage[3];
    if (v3 >= v2 >> 1)
    {
      sub_100020B5C((v2 > 1), v3 + 1, 1);
      v1 = &DarwinNotification;
    }

    _swiftEmptyArrayStorage[2] = v3 + 1;
    *(&_swiftEmptyArrayStorage[4] + v3) = v4;
LABEL_5:
    ++v0;
  }

  while (v0 != 3);
  v6 = _swiftEmptyArrayStorage[2];
  if (v6)
  {
    sub_100020B2C(0, v6, 0);
    v7 = _swiftEmptyArrayStorage[2];
    v8 = 32;
    do
    {
      v9 = *(_swiftEmptyArrayStorage + v8);
      v10 = _swiftEmptyArrayStorage[3];
      if (v7 >= v10 >> 1)
      {
        sub_100020B2C((v10 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      *(&_swiftEmptyArrayStorage[4] + v7) = v9;
      ++v8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  v11 = *(v13 + 8);

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_10000B0E4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    while (1)
    {
      v7 = *v3++;
      v6 = v7;
      if (v7 < 2)
      {
        break;
      }

      if (qword_10003C218 == -1)
      {
        if (byte_100045488)
        {
          goto LABEL_6;
        }
      }

      else
      {
        swift_once();
        if (byte_100045488)
        {
          goto LABEL_6;
        }
      }

      v8 = &byte_100045489;
      if (qword_10003C220 == -1)
      {
        goto LABEL_16;
      }

      swift_once();
      if (byte_100045489)
      {
LABEL_17:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100020B5C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        if (v5 >= v4 >> 1)
        {
          sub_100020B5C((v4 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v5 + 1;
        *(&_swiftEmptyArrayStorage[4] + v5) = v6;
      }

LABEL_6:
      if (!--v2)
      {
        goto LABEL_25;
      }
    }

    if (qword_10003C218 == -1)
    {
      if (byte_100045488)
      {
        goto LABEL_6;
      }
    }

    else
    {
      swift_once();
      if (byte_100045488)
      {
        goto LABEL_6;
      }
    }

    v8 = &byte_10004548A;
    if (qword_10003C228 != -1)
    {
      swift_once();
      if (byte_10004548A)
      {
        goto LABEL_17;
      }

      goto LABEL_6;
    }

LABEL_16:
    if (*v8)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

LABEL_25:
  v9 = _swiftEmptyArrayStorage[2];
  if (v9)
  {
    sub_100020B2C(0, v9, 0);
    v10 = _swiftEmptyArrayStorage[2];
    v11 = 32;
    do
    {
      v12 = *(_swiftEmptyArrayStorage + v11);
      v13 = _swiftEmptyArrayStorage[3];
      if (v10 >= v13 >> 1)
      {
        sub_100020B2C((v13 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v12;
      ++v11;
      ++v10;
      --v9;
    }

    while (v9);
  }

  v14 = *(v16 + 8);

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_10000B3F0()
{
  sub_100020B2C(0, 3, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_100020B2C((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_100020B2C((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  if (v3 < (v2 + 3))
  {
    sub_100020B2C((v1 > 1), v2 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 3;
  *(&_swiftEmptyArrayStorage[4] + v5) = 2;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000B560()
{
  for (i = 0; i != 3; ++i)
  {
    v3 = *(&off_1000395D8 + i + 32);
    if (v3 >= 2)
    {
      if (qword_10003C218 == -1)
      {
        if (byte_100045488)
        {
          continue;
        }
      }

      else
      {
        swift_once();
        if (byte_100045488)
        {
          continue;
        }
      }

      v4 = &byte_100045489;
      if (qword_10003C220 != -1)
      {
        swift_once();
        if ((byte_100045489 & 1) == 0)
        {
          continue;
        }

        goto LABEL_16;
      }

LABEL_15:
      if ((*v4 & 1) == 0)
      {
        continue;
      }

      goto LABEL_16;
    }

    if (qword_10003C218 == -1)
    {
      if (byte_100045488)
      {
        continue;
      }
    }

    else
    {
      swift_once();
      if (byte_100045488)
      {
        continue;
      }
    }

    v4 = &byte_10004548A;
    if (qword_10003C228 == -1)
    {
      goto LABEL_15;
    }

    swift_once();
    if ((byte_10004548A & 1) == 0)
    {
      continue;
    }

LABEL_16:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100020B5C(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v2 = _swiftEmptyArrayStorage[2];
    v1 = _swiftEmptyArrayStorage[3];
    if (v2 >= v1 >> 1)
    {
      sub_100020B5C((v1 > 1), v2 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v2 + 1;
    *(&_swiftEmptyArrayStorage[4] + v2) = v3;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v5 = LOBYTE(_swiftEmptyArrayStorage[4]);
  }

  else
  {
    v5 = 3;
  }

  v6 = *(v8 + 8);

  return v6(v5);
}

unint64_t sub_10000B7B4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100039600;
  v6._object = a2;
  v4 = sub_1000294F4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000B800()
{
  v17 = sub_100028E94();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001B18(&qword_10003C438, &unk_10002AC40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100028FF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100028FD4();
  sub_100028FD4();
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = 3;
  v14 = sub_100028AD4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100009030();
  return sub_100028BF4();
}

unint64_t sub_10000BB20()
{
  result = qword_10003C758;
  if (!qword_10003C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C758);
  }

  return result;
}

unint64_t sub_10000BB74()
{
  result = qword_10003C760;
  if (!qword_10003C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C760);
  }

  return result;
}

unint64_t sub_10000BBC8()
{
  result = qword_10003C768;
  if (!qword_10003C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C768);
  }

  return result;
}

unint64_t sub_10000BC1C()
{
  result = qword_10003C780;
  if (!qword_10003C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C780);
  }

  return result;
}

uint64_t sub_10000BC70(void *a1)
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

uint64_t sub_10000BCDC()
{
  v0 = sub_100029094();
  sub_100004ED8(v0, qword_1000454C0);
  sub_100004EA0(v0, qword_1000454C0);
  sub_10000BD68();
  sub_100029474();
  return sub_1000290A4();
}

unint64_t sub_10000BD68()
{
  result = qword_10003C788;
  if (!qword_10003C788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C788);
  }

  return result;
}

unint64_t sub_10000BDB8()
{
  result = qword_10003C7B0;
  if (!qword_10003C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C7B0);
  }

  return result;
}

unint64_t sub_10000BE10()
{
  result = qword_10003C7B8;
  if (!qword_10003C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C7B8);
  }

  return result;
}

unint64_t sub_10000BE64()
{
  result = qword_10003C7C0;
  if (!qword_10003C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C7C0);
  }

  return result;
}

void sub_10000BEB8()
{
  v0 = PowerUISmartChargeClientSettings;
  v1 = objc_allocWithZone(PowerUISmartChargeClient);
  v2 = v0;
  v3 = [v1 initWithClientName:v2];

  qword_1000454D8 = v3;
}

void sub_10000BF1C()
{
  v0 = [objc_allocWithZone(PowerUISmartChargeClient) initWithClientName:PowerUISmartChargeClientSettings];
  v1 = [v0 isMCLSupported];

  if (v1)
  {
    v3[3] = &type metadata for PerfPowerServices;
    v3[4] = sub_10000BC1C();
    LOBYTE(v3[0]) = 1;
    v2 = sub_100029074();
    sub_10000BC70(v3);
  }

  else
  {
    v2 = 0;
  }

  byte_1000454E0 = v2 & 1;
}

void sub_10000C004(uint64_t a1, SEL *a2, unsigned __int8 *a3)
{
  if (qword_10003C248 != -1)
  {
    swift_once();
  }

  v5 = qword_1000454D8;
  v6 = [v5 *a2];

  *a3 = v6;
}

uint64_t sub_10000C084(unsigned __int8 a1)
{
  v1 = sub_100001B18(&qword_10003C468, &unk_10002A390);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_100028FF4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  sub_100028FD4();
  sub_100028FD4();
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100028DF4();
  v10 = sub_100028E04();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  sub_100001B18(&qword_10003C470, &qword_10002BE60);
  *(swift_allocObject() + 16) = xmmword_100029B80;
  sub_100028FD4();
  sub_100028FD4();
  return sub_100028E14();
}

uint64_t sub_10000C718()
{
  v0 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100028FF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100028F84();
  sub_100004ED8(v5, qword_1000454E8);
  sub_100004EA0(v5, qword_1000454E8);
  sub_100028FD4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100028F74();
}

uint64_t sub_10000C888(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004F68;

  return sub_10000E264(a1);
}

uint64_t sub_10000C930(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100004F40;

  return sub_10000DEB0();
}

unint64_t sub_10000C9D4()
{
  result = qword_10003C7C8;
  if (!qword_10003C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C7C8);
  }

  return result;
}

uint64_t sub_10000CA28(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000025D4;

  return sub_10000E610();
}

unint64_t sub_10000CAD0()
{
  result = qword_10003C7D0;
  if (!qword_10003C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C7D0);
  }

  return result;
}

unint64_t sub_10000CB24()
{
  result = qword_10003C7D8;
  if (!qword_10003C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C7D8);
  }

  return result;
}

unint64_t sub_10000CB7C()
{
  result = qword_10003C7E0;
  if (!qword_10003C7E0)
  {
    sub_100001BC8(&qword_10003C7E8, qword_10002B718);
    sub_10000CB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C7E0);
  }

  return result;
}

uint64_t sub_10000CC00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000C9D4();
  *v5 = v2;
  v5[1] = sub_1000028D0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10000CCB4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002A68;

  return sub_10000E7C4();
}

unint64_t sub_10000CD60()
{
  result = qword_10003C7F0;
  if (!qword_10003C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C7F0);
  }

  return result;
}

uint64_t sub_10000CDB4(uint64_t a1)
{
  v1 = sub_100001B18(&qword_10003C8A8, &qword_10002BE68);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100001B18(&qword_10003C8B0, &qword_10002BE70);
  __chkstk_darwin(v5);
  sub_10000BE64();
  sub_100028F24();
  v8._object = 0x800000010002F7F0;
  v8._countAndFlagsBits = 0xD00000000000004DLL;
  sub_100028F14(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_100028F04();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100028F14(v9);
  return sub_100028F34();
}

uint64_t sub_10000CF78()
{
  v0 = qword_10003C790;

  return v0;
}

unint64_t sub_10000CFB4()
{
  result = qword_10003C7F8;
  if (!qword_10003C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C7F8);
  }

  return result;
}

unint64_t sub_10000D00C()
{
  result = qword_10003C800;
  if (!qword_10003C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C800);
  }

  return result;
}

unint64_t sub_10000D064()
{
  result = qword_10003C808;
  if (!qword_10003C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C808);
  }

  return result;
}

unint64_t sub_10000D0C0()
{
  result = qword_10003C810;
  if (!qword_10003C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C810);
  }

  return result;
}

uint64_t sub_10000D114(uint64_t a1)
{
  sub_10000EEF4();
  v2 = sub_100028EA4();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10000D184()
{
  result = qword_10003C818;
  if (!qword_10003C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C818);
  }

  return result;
}

unint64_t sub_10000D1DC()
{
  result = qword_10003C820;
  if (!qword_10003C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C820);
  }

  return result;
}

unint64_t sub_10000D238()
{
  result = qword_10003C828;
  if (!qword_10003C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C828);
  }

  return result;
}

unint64_t sub_10000D290()
{
  result = qword_10003C830;
  if (!qword_10003C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C830);
  }

  return result;
}

uint64_t sub_10000D360(uint64_t a1)
{
  v2 = sub_10000BE64();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000D3B0()
{
  result = qword_10003C848;
  if (!qword_10003C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C848);
  }

  return result;
}

uint64_t sub_10000D40C(uint64_t a1)
{
  v2 = sub_10000D238();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000D468()
{
  result = qword_10003C850;
  if (!qword_10003C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C850);
  }

  return result;
}

Swift::Int sub_10000D4BC()
{
  sub_100029544();
  sub_1000293B4();

  return sub_100029564();
}

uint64_t sub_10000D578(uint64_t a1)
{
  sub_1000293B4();
}

Swift::Int sub_10000D620(uint64_t a1)
{
  sub_100029544();
  sub_1000293B4();

  return sub_100029564();
}

unint64_t sub_10000D6D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000EAE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10000D708(unint64_t *a1@<X8>)
{
  v2 = 0xE000000000000000;
  v3 = 0xD000000000000015;
  v4 = 0x800000010002ECC0;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000020;
    v4 = 0x800000010002ECE0;
  }

  v5 = 0xD000000000000015;
  if (*v1)
  {
    v2 = 0x800000010002ECA0;
  }

  else
  {
    v5 = *v1;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10000D7D4()
{
  v1 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000020;
  }

  v2 = 0xD000000000000015;
  if (!*v0)
  {
    v2 = *v0;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10000D848@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000EAE0(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10000D894()
{
  result = qword_10003C868;
  if (!qword_10003C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C868);
  }

  return result;
}

uint64_t sub_10000D8E8()
{
  v0 = sub_100028FF4();
  sub_100004ED8(v0, qword_100045500);
  sub_100004EA0(v0, qword_100045500);
  return sub_100028FD4();
}

void (*sub_10000D94C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100028BA4();
  return sub_10000393C;
}

unint64_t sub_10000D9C0()
{
  result = qword_10003C870;
  if (!qword_10003C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C870);
  }

  return result;
}

uint64_t sub_10000DA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000EE4C();
  v5 = sub_10000EEF4();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000DA80()
{
  v0 = qword_10003C7A0;

  return v0;
}

unint64_t sub_10000DABC()
{
  result = qword_10003C878;
  if (!qword_10003C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C878);
  }

  return result;
}

unint64_t sub_10000DB14()
{
  result = qword_10003C880;
  if (!qword_10003C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C880);
  }

  return result;
}

uint64_t sub_10000DBF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000EE4C();
  v7 = sub_10000EEA0();
  v8 = sub_10000EEF4();
  *v5 = v2;
  v5[1] = sub_100003DB4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_10000DCC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000EB2C();
  *a1 = result;
  return result;
}

uint64_t sub_10000DCEC(uint64_t a1)
{
  v2 = sub_10000D9C0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000DD4C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10000DDE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_10000DECC()
{
  for (i = 0; i != 4; ++i)
  {
    v3 = *(&off_100039690 + i + 32);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber != 3)
    {
      if (v3 >= 2)
      {
        if (v3 == 2)
        {
          if (qword_10003C250 == -1)
          {
            if ((byte_1000454E0 & 1) == 0)
            {
              continue;
            }
          }

          else
          {
            swift_once();
            if ((byte_1000454E0 & 1) == 0)
            {
              continue;
            }
          }

          v7 = &byte_1000454E1;
          if (qword_10003C258 != -1)
          {
            swift_once();
            if ((byte_1000454E1 & 1) == 0)
            {
              continue;
            }

            goto LABEL_25;
          }
        }

        else
        {
          if (qword_10003C250 == -1)
          {
            if ((byte_1000454E0 & 1) == 0)
            {
              continue;
            }
          }

          else
          {
            swift_once();
            if ((byte_1000454E0 & 1) == 0)
            {
              continue;
            }
          }

          v7 = &byte_1000454E3;
          if (qword_10003C268 != -1)
          {
            swift_once();
            if ((byte_1000454E3 & 1) == 0)
            {
              continue;
            }

            goto LABEL_25;
          }
        }

LABEL_24:
        if ((*v7 & 1) == 0)
        {
          continue;
        }

        goto LABEL_25;
      }

      if (qword_10003C250 != -1)
      {
        swift_once();
      }

      if (byte_1000454E0 == 1)
      {
        v7 = &byte_1000454E2;
        if (qword_10003C260 != -1)
        {
          swift_once();
          if ((byte_1000454E2 & 1) == 0)
          {
            continue;
          }

LABEL_25:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100020BBC(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v2 = _swiftEmptyArrayStorage[2];
          v1 = _swiftEmptyArrayStorage[3];
          if (v2 >= v1 >> 1)
          {
            sub_100020BBC((v1 > 1), v2 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v2 + 1;
          *(&_swiftEmptyArrayStorage[4] + v2) = v3;
          continue;
        }

        goto LABEL_24;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage[2];
  if (v8)
  {
    sub_100020B8C(0, v8, 0);
    v9 = v15;
    v10 = _swiftEmptyArrayStorage[2];
    v11 = 32;
    do
    {
      v12 = *(_swiftEmptyArrayStorage + v11);
      v13 = _swiftEmptyArrayStorage[3];
      if (v10 >= v13 >> 1)
      {
        sub_100020B8C((v13 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v12;
      ++v11;
      ++v10;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = v15;
  }

  v14 = *(v9 + 8);

  return v14(_swiftEmptyArrayStorage);
}

id sub_10000E284()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    while (1)
    {
      v7 = *v3++;
      v6 = v7;
      result = MobileGestalt_get_current_device();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v9 = result;
      deviceClassNumber = MobileGestalt_get_deviceClassNumber();

      if (deviceClassNumber == 3)
      {
        goto LABEL_6;
      }

      if (v6 < 2)
      {
        break;
      }

      if (v6 == 2)
      {
        if (qword_10003C250 == -1)
        {
          if ((byte_1000454E0 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          swift_once();
          if ((byte_1000454E0 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v11 = &byte_1000454E1;
        if (qword_10003C258 != -1)
        {
          swift_once();
          if (byte_1000454E1)
          {
            goto LABEL_26;
          }

          goto LABEL_6;
        }

        goto LABEL_25;
      }

      if (qword_10003C250 == -1)
      {
        if ((byte_1000454E0 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        swift_once();
        if ((byte_1000454E0 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v11 = &byte_1000454E3;
      if (qword_10003C268 == -1)
      {
        goto LABEL_25;
      }

      swift_once();
      if (byte_1000454E3)
      {
LABEL_26:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100020BBC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        if (v5 >= v4 >> 1)
        {
          sub_100020BBC((v4 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v5 + 1;
        *(&_swiftEmptyArrayStorage[4] + v5) = v6;
      }

LABEL_6:
      if (!--v2)
      {
        goto LABEL_34;
      }
    }

    if (qword_10003C250 != -1)
    {
      swift_once();
    }

    if (byte_1000454E0 != 1)
    {
      goto LABEL_6;
    }

    v11 = &byte_1000454E2;
    if (qword_10003C260 != -1)
    {
      swift_once();
      if (byte_1000454E2)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

LABEL_25:
    if (*v11)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

LABEL_34:
  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    sub_100020B8C(0, v12, 0);
    v13 = _swiftEmptyArrayStorage[2];
    v14 = 32;
    do
    {
      v15 = *(_swiftEmptyArrayStorage + v14);
      v16 = _swiftEmptyArrayStorage[3];
      if (v13 >= v16 >> 1)
      {
        sub_100020B8C((v16 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      *(&_swiftEmptyArrayStorage[4] + v13) = v15;
      ++v14;
      ++v13;
      --v12;
    }

    while (v12);
  }

  v17 = *(v0 + 8);

  return v17(_swiftEmptyArrayStorage);
}

uint64_t sub_10000E62C()
{
  sub_100020B8C(0, 4, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_100020B8C((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_100020B8C((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_100020B8C((v1 > 1), v2 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 2;
  v7 = _swiftEmptyArrayStorage[3];
  if ((v2 + 4) > (v7 >> 1))
  {
    sub_100020B8C((v7 > 1), v2 + 4, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 4;
  *(&_swiftEmptyArrayStorage[4] + v6) = 3;
  v8 = *(v0 + 8);

  return v8();
}

id sub_10000E7E0()
{
  for (i = 0; i != 4; ++i)
  {
    v4 = *(&off_1000396B8 + i + 32);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber != 3)
    {
      if (v4 >= 2)
      {
        if (v4 == 2)
        {
          if (qword_10003C250 == -1)
          {
            if ((byte_1000454E0 & 1) == 0)
            {
              continue;
            }
          }

          else
          {
            swift_once();
            if ((byte_1000454E0 & 1) == 0)
            {
              continue;
            }
          }

          v8 = &byte_1000454E1;
          if (qword_10003C258 != -1)
          {
            swift_once();
            if ((byte_1000454E1 & 1) == 0)
            {
              continue;
            }

            goto LABEL_25;
          }
        }

        else
        {
          if (qword_10003C250 == -1)
          {
            if ((byte_1000454E0 & 1) == 0)
            {
              continue;
            }
          }

          else
          {
            swift_once();
            if ((byte_1000454E0 & 1) == 0)
            {
              continue;
            }
          }

          v8 = &byte_1000454E3;
          if (qword_10003C268 != -1)
          {
            swift_once();
            if ((byte_1000454E3 & 1) == 0)
            {
              continue;
            }

            goto LABEL_25;
          }
        }

LABEL_24:
        if ((*v8 & 1) == 0)
        {
          continue;
        }

        goto LABEL_25;
      }

      if (qword_10003C250 != -1)
      {
        swift_once();
      }

      if (byte_1000454E0 == 1)
      {
        v8 = &byte_1000454E2;
        if (qword_10003C260 != -1)
        {
          swift_once();
          if ((byte_1000454E2 & 1) == 0)
          {
            continue;
          }

LABEL_25:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100020BBC(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v3 = _swiftEmptyArrayStorage[2];
          v2 = _swiftEmptyArrayStorage[3];
          if (v3 >= v2 >> 1)
          {
            sub_100020BBC((v2 > 1), v3 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v3 + 1;
          *(&_swiftEmptyArrayStorage[4] + v3) = v4;
          continue;
        }

        goto LABEL_24;
      }
    }
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v9 = LOBYTE(_swiftEmptyArrayStorage[4]);
  }

  else
  {
    v9 = 4;
  }

  v10 = *(v0 + 8);

  return v10(v9);
}

unint64_t sub_10000EAE0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000396E0;
  v6._object = a2;
  v4 = sub_1000294F4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000EB2C()
{
  v17 = sub_100028E94();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001B18(&qword_10003C438, &unk_10002AC40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100028FF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100001B18(&qword_10003C888, &unk_10002BE50);
  sub_100028FD4();
  sub_100028FD4();
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = 4;
  v14 = sub_100028AD4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10000BE64();
  return sub_100028BF4();
}

unint64_t sub_10000EE4C()
{
  result = qword_10003C890;
  if (!qword_10003C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C890);
  }

  return result;
}

unint64_t sub_10000EEA0()
{
  result = qword_10003C898;
  if (!qword_10003C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C898);
  }

  return result;
}

unint64_t sub_10000EEF4()
{
  result = qword_10003C8A0;
  if (!qword_10003C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C8A0);
  }

  return result;
}

unint64_t sub_10000EF6C()
{
  result = qword_10003C8B8;
  if (!qword_10003C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C8B8);
  }

  return result;
}

unint64_t sub_10000EFC4()
{
  result = qword_10003C8C0;
  if (!qword_10003C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C8C0);
  }

  return result;
}

uint64_t sub_10000F018()
{
  v0 = sub_100028FF4();
  sub_100004ED8(v0, qword_100045518);
  sub_100004EA0(v0, qword_100045518);
  return sub_100028FD4();
}

void (*sub_10000F07C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100028BA4();
  return sub_100006660;
}

unint64_t sub_10000F0F0()
{
  result = qword_10003C8C8;
  if (!qword_10003C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C8C8);
  }

  return result;
}

uint64_t sub_10000F144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124B8();
  v5 = sub_100012458();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000F1B4()
{
  result = qword_10003C8D0;
  if (!qword_10003C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C8D0);
  }

  return result;
}

unint64_t sub_10000F20C()
{
  result = qword_10003C8D8;
  if (!qword_10003C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C8D8);
  }

  return result;
}

uint64_t sub_10000F2B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000124B8();
  v7 = sub_10001250C();
  v8 = sub_100012458();
  *v5 = v2;
  v5[1] = sub_100003DB4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_10000F384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100011CFC();
  *a1 = result;
  return result;
}

uint64_t sub_10000F3AC(uint64_t a1)
{
  v2 = sub_10000F0F0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000F3EC()
{
  result = qword_10003C8E0;
  if (!qword_10003C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C8E0);
  }

  return result;
}

uint64_t sub_10000F484()
{
  v0 = sub_100028F84();
  sub_100004ED8(v0, qword_100045530);
  sub_100004EA0(v0, qword_100045530);
  return sub_100028F64();
}

uint64_t sub_10000F4E8()
{
  v0 = sub_100001B18(&qword_10003C468, &unk_10002A390);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_100028FF4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  sub_100028FD4();
  sub_100028FD4();
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_100028DF4();
  v9 = sub_100028E04();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_100001B18(&qword_10003C470, &qword_10002BE60);
  *(swift_allocObject() + 16) = xmmword_10002BEA0;
  sub_100028FD4();
  sub_100028FD4();
  sub_100028FD4();
  return sub_100028E14();
}

uint64_t sub_10000F7D4()
{
  v0 = sub_100028FF4();
  sub_100004ED8(v0, qword_100045548);
  sub_100004EA0(v0, qword_100045548);
  return sub_100028FD4();
}

uint64_t sub_10000F838()
{
  v0 = sub_100001B18(&qword_10003C5F0, &unk_10002ACD0);
  sub_100004ED8(v0, qword_100045560);
  v1 = sub_100004EA0(v0, qword_100045560);
  sub_100028D44();
  v2 = sub_100028D54();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000F8F8()
{
  result = swift_getKeyPath();
  qword_100045578 = result;
  return result;
}

uint64_t sub_10000F920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100001B18(&qword_10003C5C0, &unk_10002AC80);
  v3[10] = swift_task_alloc();
  sub_100001B18(&qword_10003C5C8, &qword_10002C760);
  v3[11] = swift_task_alloc();
  sub_100001B18(&qword_10003C9E0, &qword_10002C768);
  v3[12] = swift_task_alloc();
  v4 = sub_100028AD4();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100001B18(&qword_10003C9E8, &qword_10002C770);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000FB00, 0, 0);
}

uint64_t sub_10000FB00()
{
  sub_100028BB4();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_100010DFC();
  *v1 = v0;
  v1[1] = sub_10000FBD0;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_10001258C, 0, &type metadata for BatteryPercentageToggleEntity, v2);
}

uint64_t sub_10000FBD0()
{

  return _swift_task_switch(sub_10000FCCC, 0, 0);
}

uint64_t sub_10000FCCC()
{
  sub_100028BB4();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_100028BB4();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10003C2A0 != -1)
  {
    swift_once();
  }

  v2 = qword_100045578;
  *(v0 + 176) = qword_100045578;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_10000366C(&qword_10003C9D0, &qword_10003C9D8, &qword_10002C748, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_10000FE2C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_10000FE2C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1000063B0;
  }

  else
  {
    v2 = sub_10000FF80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000FF80()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_100028BB4();
  v0[6] = v0[5];
  v6 = sub_100028F54();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100028F94();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_10000F3EC();
  sub_10001100C();
  sub_100028A84();
  (*(v2 + 16))(v10, v1, v3);
  sub_100028AB4();
  sub_100028B04();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000101EC()
{
  v0 = sub_100001B18(&qword_10003C9F0, &qword_10002C778);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10003C2A0 != -1)
  {
    swift_once();
  }

  sub_100028DB4();

  sub_10001100C();
  sub_10000366C(&qword_10003C9F8, &qword_10003C9F0, &qword_10002C778, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_100028DA4();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_100010360(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100028BA4();
  return sub_100008DE8;
}

void (*sub_1000103D4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100028BA4();
  return sub_100008DE8;
}

uint64_t sub_100010448()
{
  if (qword_10003C2A0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000104A8()
{
  result = qword_10003C8F8;
  if (!qword_10003C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C8F8);
  }

  return result;
}

unint64_t sub_100010500()
{
  result = qword_10003C900;
  if (!qword_10003C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C900);
  }

  return result;
}

uint64_t sub_10001062C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C298 != -1)
  {
    swift_once();
  }

  v2 = sub_100001B18(&qword_10003C5F0, &unk_10002ACD0);
  v3 = sub_100004EA0(v2, qword_100045560);

  return sub_100008AC0(v3, a1);
}

uint64_t sub_1000106B0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008DD4;

  return sub_10000F920(a1, v5, v4);
}

uint64_t sub_10001075C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100011FF4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000107A4()
{
  result = qword_10003C908;
  if (!qword_10003C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C908);
  }

  return result;
}

unint64_t sub_1000107FC()
{
  result = qword_10003C910;
  if (!qword_10003C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C910);
  }

  return result;
}

uint64_t sub_100010870()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_100029374();
  v3 = [v1 initWithSuiteName:v2];

  if (v3)
  {
    v4 = sub_100029374();
    v5 = [v3 BOOLForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  **(v0 + 16) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001099C()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_100029374();
  v3 = [v1 initWithSuiteName:v2];

  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = sub_100029374();
    [v3 setBool:v4 forKey:v5];
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100010A98(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100028FF4();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100010B28, 0, 0);
}

uint64_t sub_100010B28()
{
  v1 = *(v0 + 16);
  sub_100001B18(&qword_10003C8F0, qword_10002C050);
  sub_100028FD4();
  sub_10000366C(&qword_10003C9D0, &qword_10003C9D8, &qword_10002C748, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_100028FC4();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100010C48()
{
  result = qword_10003C918;
  if (!qword_10003C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C918);
  }

  return result;
}

uint64_t sub_100010C9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100011258();
  *v4 = v2;
  v4[1] = sub_1000025D4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100010D50()
{
  result = qword_10003C920;
  if (!qword_10003C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C920);
  }

  return result;
}

unint64_t sub_100010DA8()
{
  result = qword_10003C928;
  if (!qword_10003C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C928);
  }

  return result;
}

unint64_t sub_100010DFC()
{
  result = qword_10003C930;
  if (!qword_10003C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C930);
  }

  return result;
}

uint64_t sub_100010E50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100011258();
  *v5 = v2;
  v5[1] = sub_100004F68;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100010F04(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100011258();
  *v4 = v2;
  v4[1] = sub_100004F40;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100010FB8()
{
  result = qword_10003C938;
  if (!qword_10003C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C938);
  }

  return result;
}

unint64_t sub_10001100C()
{
  result = qword_10003C940;
  if (!qword_10003C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C940);
  }

  return result;
}

unint64_t sub_100011064()
{
  result = qword_10003C948;
  if (!qword_10003C948)
  {
    sub_100001BC8(&qword_10003C950, qword_10002C2B0);
    sub_10001100C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C948);
  }

  return result;
}

uint64_t sub_1000110E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100010C48();
  *v5 = v2;
  v5[1] = sub_1000028D0;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000111A0()
{
  result = qword_10003C958;
  if (!qword_10003C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C958);
  }

  return result;
}

unint64_t sub_1000111F8()
{
  result = qword_10003C960;
  if (!qword_10003C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C960);
  }

  return result;
}

unint64_t sub_100011258()
{
  result = qword_10003C968;
  if (!qword_10003C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C968);
  }

  return result;
}

unint64_t sub_1000112B0()
{
  result = qword_10003C970;
  if (!qword_10003C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C970);
  }

  return result;
}

uint64_t sub_100011304(uint64_t a1)
{
  v2 = sub_100010DFC();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004ELL, 0x800000010002F970, a1, v2);
}

unint64_t sub_10001136C()
{
  result = qword_10003C978;
  if (!qword_10003C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C978);
  }

  return result;
}

unint64_t sub_1000113C4()
{
  result = qword_10003C980;
  if (!qword_10003C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C980);
  }

  return result;
}

unint64_t sub_100011420()
{
  result = qword_10003C988;
  if (!qword_10003C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C988);
  }

  return result;
}

uint64_t sub_100011474@<X0>(uint64_t *a2@<X8>)
{
  sub_1000107FC();
  result = sub_100028B24();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000114B4(uint64_t a1)
{
  sub_100012458();
  v2 = sub_100028EA4();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10001159C(uint64_t a1)
{
  v2 = sub_100010DFC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000115EC()
{
  result = qword_10003C9A0;
  if (!qword_10003C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C9A0);
  }

  return result;
}

uint64_t sub_100011644(uint64_t a1)
{
  v2 = sub_100011420();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100011758@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100001B18(&qword_10003C608, &qword_10002AD40);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100001B18(&qword_10003C610, &qword_10002AD48);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100001B18(&qword_10003C618, &qword_10002AD50);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v23 = &v23 - v10;
  v11 = sub_100001B18(&qword_10003C620, &qword_10002AD58);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  __chkstk_darwin(v11);
  v24 = &v23 - v13;
  swift_getKeyPath();
  sub_100001B18(&qword_10003C628, &qword_10002AD60);
  sub_100001B18(&qword_10003C630, &qword_10002AD68);
  sub_1000107FC();
  sub_10000366C(&qword_10003C638, &qword_10003C628, &qword_10002AD60, &protocol conformance descriptor for Label<A, B>);
  sub_100008C04();
  sub_1000292E4();
  sub_100029104();
  v14 = sub_10000366C(&qword_10003C648, &qword_10003C608, &qword_10002AD40, &protocol conformance descriptor for ControlToggle<A>);
  sub_100029144();

  (*(v25 + 8))(v3, v1);
  sub_100029104();
  v33 = v1;
  v34 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v23;
  v17 = v26;
  sub_100029124();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_100029154();
  (*(v29 + 8))(v16, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_100029134();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_100011C8C()
{
  v0 = sub_100029104();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_100011CFC()
{
  v17[0] = sub_100028E94();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001B18(&qword_10003C438, &unk_10002AC40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_100028FF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100001B18(&qword_10003C9C0, &qword_10002C728);
  sub_100028FD4();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_100028AD4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100010DFC();
  return sub_100028BF4();
}

uint64_t sub_100011FF4()
{
  v0 = sub_100001B18(&qword_10003C590, &qword_10002C720);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_100028E94();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001B18(&qword_10003C438, &unk_10002AC40);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_100028FF4();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100001B18(&qword_10003C9C0, &qword_10002C728);
  sub_100028FD4();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_100028AD4();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_100010DFC();
  v23 = sub_100028BF4();
  sub_100001B18(&qword_10003C5A0, &qword_10002C730);
  sub_100028FD4();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_100029404();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100028C04();
  return v23;
}

unint64_t sub_100012458()
{
  result = qword_10003C9C8;
  if (!qword_10003C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C9C8);
  }

  return result;
}

unint64_t sub_1000124B8()
{
  result = qword_10003CA00;
  if (!qword_10003CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA00);
  }

  return result;
}

unint64_t sub_10001250C()
{
  result = qword_10003CA08;
  if (!qword_10003CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA08);
  }

  return result;
}

uint64_t DarwinNotification.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DarwinNotification.handler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_10001265C(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_10001265C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t DarwinNotification.handler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_1000126C0(v5, v6);
}

uint64_t sub_1000126C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t DarwinNotification.__allocating_init(check:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 32) = -1;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 40) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = sub_1000293A4();
  swift_beginAccess();
  notify_register_check((v5 + 32), (v4 + 32));
  swift_endAccess();

  sub_100012850();
  return v4;
}

uint64_t DarwinNotification.init(check:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = -1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_1000293A4();
  swift_beginAccess();
  notify_register_check((v3 + 32), (v2 + 32));
  swift_endAccess();

  sub_100012850();
  return v2;
}

uint64_t sub_100012850()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  swift_beginAccess();
  notify_get_state(v1, (v0 + 56));
  swift_endAccess();
  state64[0] = *(v0 + 56);
  result = notify_get_state(v1, state64);
  v3 = state64[0];
  if (*(v0 + 56) != state64[0])
  {
    *(v0 + 56) = state64[0];
    notify_set_state(*(v0 + 32), v3);
    v4 = sub_1000293A4();
    notify_post((v4 + 32));
  }

  return result;
}

uint64_t DarwinNotification.__allocating_init(dispatch:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 32) = -1;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 40) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_1000130A0;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100012B84;
  v12[3] = &unk_10003A118;
  v8 = _Block_copy(v12);

  v9 = a3;

  v10 = sub_1000293A4();

  swift_beginAccess();
  notify_register_dispatch((v10 + 32), (v6 + 32), v9, v8);
  swift_endAccess();

  _Block_release(v8);

  sub_100012850();
  return v6;
}

uint64_t DarwinNotification.init(dispatch:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100012F00(a1, a2, a3);

  return v4;
}

uint64_t sub_100012ADC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4)
    {
      v5 = *(v3 + 48);
      sub_10001265C(*(v3 + 40), v5);

      v4(v6);
      return sub_1000126C0(v4, v5);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100012B84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t DarwinNotification.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  swift_beginAccess();
  notify_get_state(v1, (v0 + 56));
  swift_endAccess();
  return *(v0 + 56);
}

uint64_t DarwinNotification.state.setter(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(v1 + 56) != a1)
  {
    *(v1 + 56) = a1;
    swift_beginAccess();
    notify_set_state(*(v1 + 32), a1);
    v4 = sub_1000293A4();
    notify_post((v4 + 32));
  }

  return result;
}

Swift::Void __swiftcall DarwinNotification.cancel()()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 != -1)
  {
    notify_cancel(v1);
    *(v0 + 32) = -1;
  }
}

uint64_t DarwinNotification.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 != -1)
  {
    notify_cancel(v1);
    *(v0 + 32) = -1;
  }

  sub_1000126C0(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t DarwinNotification.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 != -1)
  {
    notify_cancel(v1);
    *(v0 + 32) = -1;
  }

  sub_1000126C0(*(v0 + 40), *(v0 + 48));
  return swift_deallocClassInstance();
}

void (*DarwinNotification.state.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  v5 = *(v1 + 32);
  swift_beginAccess();
  notify_get_state(v5, (v1 + 56));
  swift_endAccess();
  *(v4 + 48) = *(v1 + 56);
  return sub_100012E8C;
}

void sub_100012E8C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (*(v3 + 56) != v2)
  {
    *(v3 + 56) = v2;
    notify_set_state(*(v3 + 32), v2);
    v4 = sub_1000293A4();
    notify_post((v4 + 32));
  }

  free(v1);
}

uint64_t sub_100012F00(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 32) = -1;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1000130EC;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100012B84;
  v10[3] = &unk_10003A140;
  v6 = _Block_copy(v10);

  v7 = a3;

  v8 = sub_1000293A4();

  swift_beginAccess();
  notify_register_dispatch((v8 + 32), (v3 + 32), v7, v6);
  swift_endAccess();

  _Block_release(v6);

  sub_100012850();
  return v3;
}

uint64_t sub_100013068()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000130A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000130F0()
{
  result = qword_10003CAE0;
  if (!qword_10003CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAE0);
  }

  return result;
}

uint64_t sub_10001318C()
{
  v0 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100028FF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100028F84();
  sub_100004ED8(v5, qword_100045580);
  sub_100004EA0(v5, qword_100045580);
  sub_100028FD4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100028F74();
}

uint64_t sub_1000132FC()
{
  v0 = sub_100001B18(&qword_10003CAF0, "BR");
  sub_100004ED8(v0, qword_100045598);
  sub_100004EA0(v0, qword_100045598);
  sub_100013BB0();
  return sub_100028E64();
}

uint64_t sub_100013380(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100028FF4();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100013410, 0, 0);
}

uint64_t sub_100013410()
{
  v1 = *(v0 + 16);
  sub_100001B18(&qword_10003CB58, &qword_10002CB40);
  sub_100028FD4();
  sub_10000366C(&qword_10003CB60, &qword_10003CB68, &unk_10002CB50, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_100028B74();
  *v1 = 0xD00000000000001CLL;
  v1[1] = 0x800000010002CAF0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100013538()
{
  v0 = qword_10003CAD0;

  return v0;
}

unint64_t sub_100013574()
{
  result = qword_10003CAF8;
  if (!qword_10003CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAF8);
  }

  return result;
}

unint64_t sub_1000135CC()
{
  result = qword_10003CB00;
  if (!qword_10003CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB00);
  }

  return result;
}

unint64_t sub_100013624()
{
  result = qword_10003CB08;
  if (!qword_10003CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB08);
  }

  return result;
}

uint64_t sub_1000136BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C2B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100001B18(&qword_10003CAF0, "BR");
  v3 = sub_100004EA0(v2, qword_100045598);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100013774()
{
  result = qword_10003CB18;
  if (!qword_10003CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB18);
  }

  return result;
}

unint64_t sub_1000137CC()
{
  result = qword_10003CB20;
  if (!qword_10003CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB20);
  }

  return result;
}

unint64_t sub_100013824()
{
  result = qword_10003CB28;
  if (!qword_10003CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB28);
  }

  return result;
}

unint64_t sub_10001387C()
{
  result = qword_10003CB30;
  if (!qword_10003CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB30);
  }

  return result;
}

uint64_t sub_1000138D0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000138DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C2A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100028F84();
  v3 = sub_100004EA0(v2, qword_100045580);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000139C8(uint64_t a1)
{
  v2 = sub_1000130F0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100013A18()
{
  result = qword_10003CB48;
  if (!qword_10003CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB48);
  }

  return result;
}

uint64_t sub_100013A6C(uint64_t a1)
{
  v2 = sub_100013BB0();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100013AB8(uint64_t a1)
{
  v2 = sub_10001387C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100013B04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100013B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100013B60(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100013BB0()
{
  result = qword_10003CB50;
  if (!qword_10003CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB50);
  }

  return result;
}

uint64_t sub_100013C04(uint64_t a1)
{
  *(v1 + 16) = a1;

  return _swift_task_switch(sub_100013C94, 0, 0);
}

uint64_t sub_100013C94()
{
  v1 = *(v0 + 16);
  *(v0 + 24) = 0;
  IOPSGetPercentRemaining();
  *v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100013D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_100001B18(&qword_10003CB70, &qword_10002CBF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_100001B18(&qword_10003CB78, &qword_10002CBF8);
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v49 = &v46 - v7;
  v47 = sub_100001B18(&qword_10003CB80, &qword_10002CC00);
  __chkstk_darwin(v47);
  v9 = &v46 - v8;
  v48 = sub_100001B18(&qword_10003CB88, &qword_10002CC08);
  __chkstk_darwin(v48);
  v11 = &v46 - v10;
  v50 = sub_100001B18(&qword_10003CB90, &qword_10002CC10);
  __chkstk_darwin(v50);
  v53 = &v46 - v12;
  *v9 = sub_100029114();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  sub_100001B18(&qword_10003CB98, &qword_10002CC18);
  v55 = a1;

  sub_100001B18(&qword_10003CBA0, &qword_10002CC20);
  sub_100001B18(&qword_10003CBA8, &qword_10002CC28);
  sub_10000366C(&qword_10003CBB0, &qword_10003CBA0, &qword_10002CC20, &protocol conformance descriptor for [A]);
  sub_10000366C(&qword_10003CBB8, &qword_10003CBA8, &qword_10002CC28, &protocol conformance descriptor for TupleView<A>);
  sub_1000146B4();
  sub_1000292C4();
  v13 = sub_1000292D4();
  v15 = v14;
  sub_100029024();
  v16 = sub_100029034();
  result = (*(*(v16 - 8) + 48))(v5, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = &v9[*(v47 + 36)];
    v19 = v49;
    sub_1000291D4();
    (*(v51 + 32))(v18, v19, v52);
    v20 = &v18[*(sub_100001B18(&qword_10003CBC8, &qword_10002CC30) + 36)];
    *v20 = v13;
    v20[1] = v15;
    v21 = sub_100029174();
    sub_100014708(v9, v11, &qword_10003CB80, &qword_10002CC00);
    v22 = &v11[*(v48 + 36)];
    *v22 = v21;
    *(v22 + 8) = 0u;
    *(v22 + 24) = 0u;
    v22[40] = 1;
    v23 = sub_100029184();
    sub_1000290B4();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = v53;
    sub_100014708(v11, v53, &qword_10003CB88, &qword_10002CC08);
    v33 = v32 + *(v50 + 36);
    *v33 = v23;
    *(v33 + 8) = v25;
    *(v33 + 16) = v27;
    *(v33 + 24) = v29;
    *(v33 + 32) = v31;
    *(v33 + 40) = 0;
    v34 = sub_100029194();
    sub_1000290B4();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v32;
    v44 = v54;
    sub_100014708(v43, v54, &qword_10003CB90, &qword_10002CC10);
    result = sub_100001B18(&qword_10003CBD0, &qword_10002CC38);
    v45 = v44 + *(result + 36);
    *v45 = v34;
    *(v45 + 8) = v36;
    *(v45 + 16) = v38;
    *(v45 + 24) = v40;
    *(v45 + 32) = v42;
    *(v45 + 40) = 0;
  }

  return result;
}

uint64_t sub_1000142C0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v3 = sub_1000292B4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v35 - v8;
  v9 = a1[1];
  *&v44 = *a1;
  v11 = a1[3];
  v10 = a1[4];
  v12 = a1[5];
  v13 = a1[7];
  v14 = a1[8];
  v50 = a1[6];
  v42 = v13;
  v41 = v14;
  sub_100014770(v13, v14);
  *(&v44 + 1) = v9;

  v43 = v10;

  sub_100001B18(&qword_10003CBD8, &qword_10002CC40);
  sub_10000366C(&qword_10003CBE0, &qword_10003CBD8, &qword_10002CC40, &protocol conformance descriptor for [A]);
  v39 = sub_100029324();
  v38 = v15;

  if (v12)
  {
    v16 = objc_opt_self();
    isa = sub_100029444().super.super.isa;
    v18 = [v16 localizedStringFromNumber:isa numberStyle:3];

    v19 = sub_100029384();
    v21 = v20;
  }

  else
  {
    v21 = 0xA300000000000000;
    v19 = 9732322;
  }

  v50 = v19;
  v51 = v21;
  v22 = sub_1000293E4();
  v36 = v22;
  v24 = v23;
  v25 = v40;
  sub_1000292A4();
  v26 = *(v4 + 16);
  v26(v7, v25, v3);
  *&v45 = v42;
  *(&v45 + 1) = v41;
  v46 = v44;
  v35 = v11;
  *&v47 = v11;
  *(&v47 + 1) = v43;
  v27 = v39;
  v28 = v38;
  *&v48 = v39;
  *(&v48 + 1) = v38;
  *&v49 = v22;
  *(&v49 + 1) = v24;
  v29 = v48;
  v30 = v37;
  *(v37 + 2) = v47;
  *(v30 + 3) = v29;
  *(v30 + 4) = v49;
  v31 = v46;
  *v30 = v45;
  *(v30 + 1) = v31;
  v32 = sub_100001B18(&qword_10003CBE8, &qword_10002CC48);
  v26(&v30[*(v32 + 48)], v7, v3);
  sub_1000147D8(&v45, &v50);
  v33 = *(v4 + 8);
  v33(v25, v3);
  v33(v7, v3);
  v50 = v42;
  v51 = v41;
  v52 = v44;
  v53 = v35;
  v54 = v43;
  v55 = v27;
  v56 = v28;
  v57 = v36;
  v58 = v24;
  return sub_100014810(&v50);
}

unint64_t sub_1000146B4()
{
  result = qword_10003CBC0;
  if (!qword_10003CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CBC0);
  }

  return result;
}

uint64_t sub_100014708(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B18(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100014770(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100014784(a1, a2);
  }

  return a1;
}

uint64_t sub_100014784(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100014840(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10001485C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_100014884(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000148A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000148E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000149C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100001BC8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100014A74()
{
  result = qword_10003CC08;
  if (!qword_10003CC08)
  {
    sub_100001BC8(&qword_10003CB80, &qword_10002CC00);
    sub_10000366C(&qword_10003CC10, &qword_10003CC18, "LP", &protocol conformance descriptor for VStack<A>);
    sub_10000366C(&qword_10003CC20, &qword_10003CBC8, &qword_10002CC30, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CC08);
  }

  return result;
}

uint64_t sub_100014B74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100029274();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014770(*a1, a1[1]);
  if (sub_100029264())
  {
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v59 = sub_100029284();

    (*(v5 + 8))(v7, v4);
    sub_1000292D4();
    sub_1000290E4();
    v101 = 1;
    v57 = v103;
    v58 = v102;
    v55 = v105;
    v56 = v104;
    v51 = v107;
    v53 = 1;
    v54 = v106;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v51 = 0;
    v53 = 0;
  }

  v50 = sub_100029114();
  LOBYTE(v93) = 0;
  sub_100015170(a1, v70);
  *&v69[7] = v70[0];
  *&v69[23] = v70[1];
  *&v69[39] = v70[2];
  *&v69[55] = v70[3];
  v52 = v93;
  v8 = a1[8];
  v9 = a1[9];
  v93 = v8;
  v94 = v9;
  sub_10001573C();

  v10 = sub_100029214();
  v12 = v11;
  v14 = v13;
  sub_1000291B4();
  v15 = sub_1000291F4();
  v46[1] = v17;
  v47 = v16;
  v19 = v18;

  sub_100015790(v10, v12, v14 & 1);

  sub_100029254();
  v20 = v47;
  v21 = sub_1000291E4();
  v48 = v22;
  v49 = v23;
  v25 = v24;

  sub_100015790(v15, v20, v19 & 1);

  v26 = sub_1000291A4();
  sub_1000290B4();
  v27 = v25 & 1;
  LOBYTE(v93) = v25 & 1;
  v71[0] = v59;
  v71[1] = 0;
  *&v72 = v53;
  *(&v72 + 1) = v58;
  *&v73 = v57;
  *(&v73 + 1) = v56;
  *&v74 = v55;
  *(&v74 + 1) = v54;
  v29 = v50;
  v28 = v51;
  v75 = v51;
  v65 = v74;
  v63 = v72;
  v64 = v73;
  v62 = v59;
  *&v76 = v50;
  *(&v76 + 1) = 0x4010000000000000;
  v77[0] = v52;
  *&v77[1] = *v69;
  *&v77[64] = *&v69[63];
  *&v77[49] = *&v69[48];
  *&v77[33] = *&v69[32];
  *&v77[17] = *&v69[16];
  *(&v66[1] + 8) = *v77;
  *(v66 + 8) = v76;
  *&v66[0] = v51;
  *(&v66[5] + 1) = *&v77[64];
  *(&v66[4] + 8) = *&v77[48];
  *(&v66[3] + 8) = *&v77[32];
  *(&v66[2] + 8) = *&v77[16];
  v61 = 1;
  *&v78 = v21;
  v30 = v48;
  v31 = v49;
  *(&v78 + 1) = v48;
  LOBYTE(v79) = v27;
  DWORD1(v79) = *&v68[3];
  *(&v79 + 1) = *v68;
  *(&v79 + 1) = v49;
  LOBYTE(v80) = v26;
  DWORD1(v80) = *&v67[3];
  *(&v80 + 1) = *v67;
  *(&v80 + 1) = v32;
  *&v81[0] = v33;
  *(&v81[0] + 1) = v34;
  *&v81[1] = v35;
  BYTE8(v81[1]) = 0;
  *(v60 + 7) = v78;
  v60[4] = *(v81 + 9);
  *(&v60[3] + 7) = v81[0];
  *(&v60[2] + 7) = v80;
  *(&v60[1] + 7) = v79;
  v36 = v72;
  *a2 = v59;
  *(a2 + 16) = v36;
  v37 = v64;
  v38 = v65;
  v39 = v66[1];
  v40 = v66[2];
  *(a2 + 64) = v66[0];
  *(a2 + 80) = v39;
  *(a2 + 32) = v37;
  *(a2 + 48) = v38;
  v41 = v66[3];
  v42 = v66[5];
  *(a2 + 128) = v66[4];
  *(a2 + 144) = v42;
  *(a2 + 96) = v40;
  *(a2 + 112) = v41;
  *(a2 + 160) = 0;
  *(a2 + 168) = 1;
  v43 = v60[0];
  *(a2 + 185) = v60[1];
  v44 = v60[3];
  *(a2 + 201) = v60[2];
  *(a2 + 217) = v44;
  *(a2 + 233) = v60[4];
  *(a2 + 169) = v43;
  v82[0] = v21;
  v82[1] = v30;
  v83 = v27;
  *v84 = *v68;
  *&v84[3] = *&v68[3];
  v85 = v31;
  v86 = v26;
  *&v87[3] = *&v67[3];
  *v87 = *v67;
  v88 = v32;
  v89 = v33;
  v90 = v34;
  v91 = v35;
  v92 = 0;
  sub_1000157A0(v71, &v93, &qword_10003CC38, &qword_10002CD98);
  sub_1000157A0(&v76, &v93, &qword_10003CC40, &qword_10002CDA0);
  sub_1000157A0(&v78, &v93, &qword_10003CC48, &qword_10002CDA8);
  sub_100015808(v82, &qword_10003CC48, &qword_10002CDA8);
  v93 = v29;
  v94 = 0x4010000000000000;
  v95 = v52;
  v97 = *&v69[16];
  v98 = *&v69[32];
  *v99 = *&v69[48];
  *&v99[15] = *&v69[63];
  v96 = *v69;
  sub_100015808(&v93, &qword_10003CC40, &qword_10002CDA0);
  v100[0] = v59;
  v100[1] = 0;
  v100[2] = v53;
  v100[3] = v58;
  v100[4] = v57;
  v100[5] = v56;
  v100[6] = v55;
  v100[7] = v54;
  v100[8] = v28;
  return sub_100015808(v100, &qword_10003CC38, &qword_10002CD98);
}

uint64_t sub_100015170@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001573C();

  v4 = sub_100029214();
  v6 = v5;
  v8 = v7;
  sub_1000291B4();
  v9 = sub_1000291F4();
  v11 = v10;
  v34 = v12;
  v35 = v13;

  sub_100015790(v4, v6, v8 & 1);

  if (*(a1 + 3) == __PAIR128__(0xE000000000000000, 0) || (sub_100029524() & 1) != 0)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {

    v18 = sub_100029214();
    v20 = v19;
    v22 = v21;
    sub_1000291C4();
    v23 = sub_1000291F4();
    v32 = v24;
    v33 = v23;
    v30 = v25;

    sub_100015790(v18, v20, v22 & 1);

    sub_100029254();
    v14 = sub_1000291E4();
    v15 = v26;
    v31 = v27;
    v17 = v28;

    sub_100015790(v33, v32, v30 & 1);

    v16 = v31 & 1;
    sub_100015868(v14, v15, v31 & 1);
  }

  sub_100015868(v9, v11, v34 & 1);

  sub_100015878(v14, v15, v16, v17);
  sub_1000158BC(v14, v15, v16, v17);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  sub_1000158BC(v14, v15, v16, v17);
  sub_100015790(v9, v11, v34 & 1);
}

double sub_100015408@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v34[2] = v1[2];
  v34[3] = v3;
  v34[4] = v1[4];
  v4 = v1[1];
  v34[0] = *v1;
  v34[1] = v4;
  v5 = sub_1000290F4();
  v33 = 0;
  sub_100014B74(v34, &v17);
  v47 = v29;
  v48 = v30;
  v49[0] = *v31;
  *(v49 + 9) = *&v31[9];
  v43 = v25;
  v44 = v26;
  v45 = v27;
  v46 = v28;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v42 = v24;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v50[12] = v29;
  v50[13] = v30;
  v51[0] = *v31;
  *(v51 + 9) = *&v31[9];
  v50[8] = v25;
  v50[9] = v26;
  v50[10] = v27;
  v50[11] = v28;
  v50[4] = v21;
  v50[5] = v22;
  v50[6] = v23;
  v50[7] = v24;
  v50[0] = v17;
  v50[1] = v18;
  v50[2] = v19;
  v50[3] = v20;
  sub_1000157A0(&v35, &v16, &qword_10003CC28, &qword_10002CD90);
  sub_100015808(v50, &qword_10003CC28, &qword_10002CD90);
  *(&v32[12] + 7) = v47;
  *(&v32[13] + 7) = v48;
  *(&v32[14] + 7) = v49[0];
  v32[15] = *(v49 + 9);
  *(&v32[8] + 7) = v43;
  *(&v32[9] + 7) = v44;
  *(&v32[10] + 7) = v45;
  *(&v32[11] + 7) = v46;
  *(&v32[4] + 7) = v39;
  *(&v32[5] + 7) = v40;
  *(&v32[6] + 7) = v41;
  *(&v32[7] + 7) = v42;
  *(v32 + 7) = v35;
  *(&v32[1] + 7) = v36;
  *(&v32[2] + 7) = v37;
  *(&v32[3] + 7) = v38;
  v6 = v32[13];
  *(a1 + 209) = v32[12];
  *(a1 + 225) = v6;
  v7 = v32[15];
  *(a1 + 241) = v32[14];
  *(a1 + 257) = v7;
  v8 = v32[9];
  *(a1 + 145) = v32[8];
  *(a1 + 161) = v8;
  v9 = v32[11];
  *(a1 + 177) = v32[10];
  *(a1 + 193) = v9;
  v10 = v32[5];
  *(a1 + 81) = v32[4];
  *(a1 + 97) = v10;
  v11 = v32[7];
  *(a1 + 113) = v32[6];
  *(a1 + 129) = v11;
  v12 = v32[1];
  *(a1 + 17) = v32[0];
  *(a1 + 33) = v12;
  result = *&v32[2];
  v14 = v32[3];
  *(a1 + 49) = v32[2];
  v15 = v33;
  *a1 = v5;
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = v15;
  *(a1 + 65) = v14;
  return result;
}

unint64_t sub_10001573C()
{
  result = qword_10003CC30;
  if (!qword_10003CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CC30);
  }

  return result;
}

uint64_t sub_100015790(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000157A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B18(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100015808(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001B18(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100015868(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100015878(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100015868(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000158BC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100015790(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100015954()
{
  result = qword_10003CC80;
  if (!qword_10003CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CC80);
  }

  return result;
}

unint64_t sub_1000159AC()
{
  result = qword_10003CC88;
  if (!qword_10003CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CC88);
  }

  return result;
}

unint64_t sub_100015A00()
{
  result = qword_10003CC90;
  if (!qword_10003CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CC90);
  }

  return result;
}

uint64_t sub_100015A54()
{
  v0 = sub_100001B18(&qword_10003C468, &unk_10002A390);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_100028FF4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  sub_100028FD4();
  sub_100028FD4();
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_100028DF4();
  v9 = sub_100028E04();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_100001B18(&qword_10003C470, &qword_10002BE60);
  *(swift_allocObject() + 16) = xmmword_100029B80;
  sub_100028FD4();
  sub_100028FD4();
  return sub_100028E14();
}

uint64_t sub_100015D00()
{
  v0 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100028FF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100028F84();
  sub_100004ED8(v5, qword_1000455B0);
  sub_100004EA0(v5, qword_1000455B0);
  sub_100028FD4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100028F74();
}

uint64_t sub_100015E70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004F68;

  return sub_100017484(a1);
}

uint64_t sub_100015F18(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100004F40;

  return sub_100017330();
}

unint64_t sub_100015FBC()
{
  result = qword_10003CC98;
  if (!qword_10003CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CC98);
  }

  return result;
}

uint64_t sub_100016010(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000025D4;

  return sub_100017628();
}

unint64_t sub_1000160B8()
{
  result = qword_10003CCA0;
  if (!qword_10003CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CCA0);
  }

  return result;
}

unint64_t sub_10001610C()
{
  result = qword_10003CCA8;
  if (!qword_10003CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CCA8);
  }

  return result;
}

unint64_t sub_100016164()
{
  result = qword_10003CCB0;
  if (!qword_10003CCB0)
  {
    sub_100001BC8(&qword_10003CCB8, qword_10002CE78);
    sub_10001610C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CCB0);
  }

  return result;
}

uint64_t sub_1000161E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100015FBC();
  *v5 = v2;
  v5[1] = sub_1000028D0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10001629C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100016340;

  return sub_100017700();
}

uint64_t sub_100016340(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1 & 1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_10001645C()
{
  result = qword_10003CCC0;
  if (!qword_10003CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CCC0);
  }

  return result;
}

uint64_t sub_1000164B0(uint64_t a1)
{
  v1 = sub_100001B18(&qword_10003CD78, &qword_10002D5B0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100001B18(&qword_10003CD80, &qword_10002D5B8);
  __chkstk_darwin(v5);
  sub_100015A00();
  sub_100028F24();
  v8._object = 0x800000010002FC80;
  v8._countAndFlagsBits = 0xD000000000000031;
  sub_100028F14(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_100028F04();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100028F14(v9);
  return sub_100028F34();
}

uint64_t sub_100016674()
{
  v0 = qword_10003CC60;

  return v0;
}

unint64_t sub_1000166AC()
{
  result = qword_10003CCC8;
  if (!qword_10003CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CCC8);
  }

  return result;
}

unint64_t sub_100016704()
{
  result = qword_10003CCD0;
  if (!qword_10003CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CCD0);
  }

  return result;
}

unint64_t sub_10001675C()
{
  result = qword_10003CCD8;
  if (!qword_10003CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CCD8);
  }

  return result;
}

unint64_t sub_1000167B8()
{
  result = qword_10003CCE0;
  if (!qword_10003CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CCE0);
  }

  return result;
}

uint64_t sub_10001680C(uint64_t a1)
{
  sub_100017BA8();
  v2 = sub_100028EA4();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10001687C()
{
  result = qword_10003CCE8;
  if (!qword_10003CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CCE8);
  }

  return result;
}

unint64_t sub_1000168D4()
{
  result = qword_10003CCF0;
  if (!qword_10003CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CCF0);
  }

  return result;
}

unint64_t sub_100016930()
{
  result = qword_10003CCF8;
  if (!qword_10003CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CCF8);
  }

  return result;
}

unint64_t sub_100016988()
{
  result = qword_10003CD00;
  if (!qword_10003CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD00);
  }

  return result;
}

uint64_t sub_100016A58(uint64_t a1)
{
  v2 = sub_100015A00();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100016AA8()
{
  result = qword_10003CD18;
  if (!qword_10003CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD18);
  }

  return result;
}

uint64_t sub_100016B00(uint64_t a1)
{
  v2 = sub_100016930();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100016B50()
{
  result = qword_10003CD20;
  if (!qword_10003CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD20);
  }

  return result;
}

Swift::Int sub_100016BA4()
{
  sub_100029544();
  sub_1000293B4();
  return sub_100029564();
}

Swift::Int sub_100016BF8(uint64_t a1)
{
  sub_100029544();
  sub_1000293B4();
  return sub_100029564();
}

uint64_t sub_100016C3C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100039788;
  v7._object = v3;
  v5 = sub_1000294F4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

Swift::Int sub_100016CFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v6._object = a2;
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_1000397E8;
  result = sub_1000294F4(v4, v6);
  *a3 = result != 0;
  return result;
}

unint64_t sub_100016D40()
{
  result = qword_10003CD38;
  if (!qword_10003CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD38);
  }

  return result;
}

uint64_t sub_100016D98()
{
  v0 = sub_100028FF4();
  sub_100004ED8(v0, qword_1000455C8);
  sub_100004EA0(v0, qword_1000455C8);
  return sub_100028FD4();
}

void (*sub_100016E44(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100028BA4();
  return sub_10000393C;
}

unint64_t sub_100016EB8()
{
  result = qword_10003CD40;
  if (!qword_10003CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD40);
  }

  return result;
}

uint64_t sub_100016F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017B00();
  v5 = sub_100017BA8();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100016F78()
{
  v0 = qword_10003CC70;

  return v0;
}

unint64_t sub_100016FB4()
{
  result = qword_10003CD48;
  if (!qword_10003CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD48);
  }

  return result;
}

unint64_t sub_10001700C()
{
  result = qword_10003CD50;
  if (!qword_10003CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD50);
  }

  return result;
}

uint64_t sub_1000170E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100017B00();
  v7 = sub_100017B54();
  v8 = sub_100017BA8();
  *v5 = v2;
  v5[1] = sub_100003DB4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_1000171BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000177DC();
  *a1 = result;
  return result;
}

uint64_t sub_1000171E4(uint64_t a1)
{
  v2 = sub_100016EB8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for BatteryDynamicDestination(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BatteryDynamicDestination(_WORD *result, int a2, int a3)
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

uint64_t sub_10001734C()
{
  sub_100020C1C(0, 1, 1);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100020C1C((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  sub_100020BEC(0, v3, 0);
  v4 = _swiftEmptyArrayStorage[2];
  do
  {
    v5 = _swiftEmptyArrayStorage[3];
    v6 = v4 + 1;
    if (v4 >= v5 >> 1)
    {
      sub_100020BEC((v5 > 1), v4 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v6;
    v4 = v6;
    --v3;
  }

  while (v3);

  v7 = *(v0 + 8);

  return v7(_swiftEmptyArrayStorage);
}

uint64_t sub_1000174A4()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100020C1C(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v3 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      v4 = v3 + 1;
      if (v3 >= v2 >> 1)
      {
        sub_100020C1C((v2 > 1), v3 + 1, 1);
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

  sub_100020BEC(0, v4, 0);
  v5 = _swiftEmptyArrayStorage[2];
  do
  {
    v6 = _swiftEmptyArrayStorage[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      sub_100020BEC((v6 > 1), v5 + 1, 1);
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

uint64_t sub_100017644()
{
  sub_100020BEC(0, 1, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100020BEC((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001771C()
{
  sub_100020C1C(0, 1, 1);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100020C1C((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_1000177DC()
{
  v17 = sub_100028E94();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001B18(&qword_10003C438, &unk_10002AC40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100028FF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100001B18(&qword_10003CD58, &qword_10002D5A8);
  sub_100028FD4();
  sub_100028FD4();
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = 1;
  v14 = sub_100028AD4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100015A00();
  return sub_100028BF4();
}

unint64_t sub_100017B00()
{
  result = qword_10003CD60;
  if (!qword_10003CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD60);
  }

  return result;
}

unint64_t sub_100017B54()
{
  result = qword_10003CD68;
  if (!qword_10003CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD68);
  }

  return result;
}

unint64_t sub_100017BA8()
{
  result = qword_10003CD70;
  if (!qword_10003CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD70);
  }

  return result;
}

uint64_t sub_100017C14()
{
  v0 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100028FF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100028F84();
  sub_100004ED8(v5, static BatteryUsageInformationQueryRangeType.typeDisplayRepresentation);
  sub_100004EA0(v5, static BatteryUsageInformationQueryRangeType.typeDisplayRepresentation);
  sub_100028FD4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100028F74();
}

uint64_t BatteryUsageInformationQueryRangeType.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10003C2C8 != -1)
  {
    swift_once();
  }

  v0 = sub_100028F84();

  return sub_100004EA0(v0, static BatteryUsageInformationQueryRangeType.typeDisplayRepresentation);
}

uint64_t static BatteryUsageInformationQueryRangeType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100028F84();
  v3 = sub_100004EA0(v2, static BatteryUsageInformationQueryRangeType.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static BatteryUsageInformationQueryRangeType.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_10003C2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100028F84();
  v3 = sub_100004EA0(v2, static BatteryUsageInformationQueryRangeType.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static BatteryUsageInformationQueryRangeType.typeDisplayRepresentation.modify(uint64_t a1))()
{
  if (qword_10003C2C8 != -1)
  {
    swift_once();
  }

  v1 = sub_100028F84();
  sub_100004EA0(v1, static BatteryUsageInformationQueryRangeType.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100018030()
{
  v0 = sub_100001B18(&qword_10003C468, &unk_10002A390);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_100028FF4();
  v21 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100001B18(&qword_10003CFB0, &qword_10002DFD8);
  v24 = sub_100001B18(&qword_10003CFB8, &qword_10002DFE0);
  v8 = *(*(v24 - 8) + 72);
  v9 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
  v25 = 2 * v8;
  v10 = swift_allocObject();
  v26 = v10;
  *(v10 + 16) = xmmword_10002D5E0;
  *(v10 + v9) = 0;
  v11 = v10 + v9;
  sub_100028FD4();
  v12 = *(v7 + 56);
  v22 = v7 + 56;
  v23 = v12;
  v13 = v5;
  v12(v5, 1, 1, v6);
  v28 = sub_100028E04();
  v14 = *(v28 - 8);
  v27 = *(v14 + 56);
  v29 = v14 + 56;
  v27(v2, 1, 1, v28);
  sub_100028E34();
  *(v11 + v8) = 1;
  sub_100028FD4();
  v15 = v5;
  v16 = v21;
  v17 = v23;
  v23(v15, 1, 1, v21);
  v27(v2, 1, 1, v28);
  sub_100028E34();
  *(v11 + v25) = 2;
  sub_100028FD4();
  v17(v13, 1, 1, v16);
  v27(v2, 1, 1, v28);
  sub_100028E34();
  v18 = sub_10001BBF4(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static BatteryUsageInformationQueryRangeType.caseDisplayRepresentations = v18;
  return result;
}

uint64_t *BatteryUsageInformationQueryRangeType.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_10003C2D0 != -1)
  {
    swift_once();
  }

  return &static BatteryUsageInformationQueryRangeType.caseDisplayRepresentations;
}

uint64_t static BatteryUsageInformationQueryRangeType.caseDisplayRepresentations.getter()
{
  if (qword_10003C2D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static BatteryUsageInformationQueryRangeType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_10003C2D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static BatteryUsageInformationQueryRangeType.caseDisplayRepresentations = a1;
}

uint64_t (*static BatteryUsageInformationQueryRangeType.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_10003C2D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t BatteryUsageInformationQueryRangeType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 7827310;
  }

  if (a1 == 1)
  {
    return 0x7961646F74;
  }

  return 1801807223;
}

uint64_t sub_100018668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7961646F74;
  if (v2 != 1)
  {
    v4 = 1801807223;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7827310;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7961646F74;
  if (*a2 != 1)
  {
    v8 = 1801807223;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7827310;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100029524();
  }

  return v11 & 1;
}

Swift::Int sub_10001874C()
{
  sub_100029544();
  sub_1000293B4();

  return sub_100029564();
}

uint64_t sub_1000187DC(uint64_t a1)
{
  sub_1000293B4();
}

Swift::Int sub_100018858(uint64_t a1)
{
  sub_100029544();
  sub_1000293B4();

  return sub_100029564();
}

unint64_t sub_1000188E4@<X0>(Swift::String *a1@<X0>, BatterySettingsIntentsExtension::BatteryUsageInformationQueryRangeType_optional *a2@<X8>)
{
  result = _s31BatterySettingsIntentsExtension0A30UsageInformationQueryRangeTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_100018914(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7961646F74;
  if (v2 != 1)
  {
    v5 = 1801807223;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7827310;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100018960(uint64_t a1)
{
  v2 = sub_10001C10C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000189AC(uint64_t a1)
{
  v2 = sub_10001C08C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100018A08()
{
  v0 = sub_100001B18(&qword_10003C468, &unk_10002A390);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  v6 = sub_100028FF4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  sub_100028B44();
  sub_100018D34(v11[1]);

  sub_100028FD4();
  sub_100028FD4();
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_100028DF4();
  v9 = sub_100028E04();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_100001B18(&qword_10003C470, &qword_10002BE60);
  *(swift_allocObject() + 16) = xmmword_10002D5E0;
  sub_100028FD4();
  sub_100028FD4();
  sub_100028FD4();
  sub_100028FD4();
  return sub_100028E14();
}

uint64_t sub_100018D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 40;
    v3 = _swiftEmptyArrayStorage;
    do
    {

      sub_1000294C4(31);

      sub_100028B44();
      sub_1000293C4(v9);

      v10._countAndFlagsBits = 0x203A6B6E6172202CLL;
      v10._object = 0xE800000000000000;
      sub_1000293C4(v10);
      sub_100028B44();
      v11._countAndFlagsBits = sub_100029514();
      sub_1000293C4(v11);

      v12._countAndFlagsBits = 125;
      v12._object = 0xE100000000000000;
      sub_1000293C4(v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10001AEAC(0, *(v3 + 2) + 1, 1, v3);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_10001AEAC((v4 > 1), v5 + 1, 1, v3);
      }

      *(v3 + 2) = v5 + 1;
      v6 = &v3[16 * v5];
      *(v6 + 4) = 0xD000000000000012;
      *(v6 + 5) = 0x80000001000300F0;
      v2 += 16;
      --v1;
    }

    while (v1);
  }

  sub_100001B18(&qword_10003CBD8, &qword_10002CC40);
  sub_10000366C(&qword_10003CBE0, &qword_10003CBD8, &qword_10002CC40, &protocol conformance descriptor for [A]);
  v7 = sub_100029324();

  return v7;
}

uint64_t sub_100018F78@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100028FF4();
  __chkstk_darwin(v2 - 8);
  sub_100001B18(&qword_10003CF68, &qword_10002DF98);
  sub_100028FD4();
  sub_10001C6B4();
  result = sub_100028B64();
  *a1 = result;
  return result;
}

uint64_t sub_100019038(uint64_t a1)
{
  v2 = sub_10001D834();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_100019084(uint64_t a1)
{
  v2 = sub_10001D834();

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_1000190D0()
{
  v0 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_100028FF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_100028FD4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100028F74();
}

uint64_t sub_100019218(uint64_t a1)
{
  v2 = sub_10001C2B0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001926C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100008DD4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100019330(uint64_t a1)
{
  v2 = sub_10001C568();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001937C()
{
  v0 = sub_100001B18(&qword_10003C468, &unk_10002A390);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_100028FF4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = sub_100029364();
  __chkstk_darwin(v8 - 8);
  sub_100029354();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100029344(v12);
  sub_100028B44();
  sub_100029334(v11);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_100029344(v13);
  sub_100028FE4();
  sub_100028FD4();
  (*(v7 + 56))(v5, 0, 1, v6);
  v9 = sub_100028E04();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_100001B18(&qword_10003C470, &qword_10002BE60);
  *(swift_allocObject() + 16) = xmmword_10002D5E0;
  sub_100028FD4();
  sub_100028FD4();
  sub_100028FD4();
  return sub_100028E24();
}

uint64_t sub_1000196E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D024(0, 0xE000000000000000, 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100019714(uint64_t a1)
{
  v2 = sub_10001D7E0();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_100019760(uint64_t a1)
{
  v2 = sub_10001D7E0();

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_1000197AC()
{
  v0 = sub_100001B18(&qword_10003C440, "vm");
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_100028FF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_100028FD4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100028F74();
}

uint64_t sub_1000198F4(uint64_t a1)
{
  v2 = sub_10001C6B4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100019948(uint64_t a1)
{
  v2 = sub_10001C960();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100019994()
{
  v0 = sub_100028FF4();
  sub_100004ED8(v0, qword_100045600);
  sub_100004EA0(v0, qword_100045600);
  return sub_100028FD4();
}

uint64_t sub_1000199F8(uint64_t a1, uint64_t a2)
{
  v2[32] = a1;
  v2[33] = a2;
  sub_100001B18(&qword_10003C5C0, &unk_10002AC80);
  v2[34] = swift_task_alloc();
  sub_100001B18(&qword_10003C5C8, &qword_10002C760);
  v2[35] = swift_task_alloc();
  sub_100001B18(&qword_10003CF10, &unk_10002DF30);
  v2[36] = swift_task_alloc();
  v3 = sub_100028AD4();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_100019B60, 0, 0);
}

uint64_t sub_100019B60()
{
  v26 = v0;
  v1 = sub_100029454();
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_1000294C4(65);
  v28._object = 0x800000010002FD10;
  v28._countAndFlagsBits = 0x100000000000003FLL;
  sub_1000293C4(v28);
  sub_100028BB4();
  sub_100001B18(&qword_10003CF18, &qword_10002EAB0);
  v29._countAndFlagsBits = sub_100029394();
  sub_1000293C4(v29);

  if (qword_10003C240 != -1)
  {
    swift_once();
  }

  v2 = sub_100029094();
  *(v0 + 320) = sub_100004EA0(v2, qword_1000454C0);

  v3 = sub_100029084();

  if (os_log_type_enabled(v3, v1))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25[0] = v5;
    *v4 = 136446210;
    v6 = sub_10001B1E4(0, 0xE000000000000000, v25);

    *(v4 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v3, v1, "%{public}s", v4, 0xCu);
    sub_10000BC70(v5);
  }

  else
  {
  }

  sub_100028BB4();
  v7 = *(v0 + 353) > 1u && *(v0 + 353) == 2;
  v8 = PLRunBUIQueryWithRangeType();
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = v8;
  v10 = sub_100029304();

  if (!v10)
  {
    goto LABEL_28;
  }

  *(v0 + 192) = 0x776F646B61657242;
  *(v0 + 200) = 0xE90000000000006ELL;
  sub_1000294A4();
  if (!*(v10 + 16) || (v11 = sub_10001B8B8(v0 + 56), (v12 & 1) == 0))
  {

    sub_10001D638(v0 + 56);
LABEL_28:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_29;
  }

  sub_10001D5DC(*(v10 + 56) + 32 * v11, v0 + 96);
  sub_10001D638(v0 + 56);

  if (!*(v0 + 120))
  {
LABEL_29:
    sub_10001D488(v0 + 96);
LABEL_30:

    goto LABEL_31;
  }

  sub_100001B18(&qword_10003CF48, &qword_10002DF58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v13 = *(v0 + 248);
  v14 = 0xD00000000000001CLL;
  if (v7)
  {
    v15 = "PLBatteryUIAppArrayKey";
  }

  else
  {
    v14 = 0xD00000000000001BLL;
    v15 = "Calling perform with parameter ";
  }

  if (!v13)
  {
    goto LABEL_30;
  }

  if (!*(v13 + 16))
  {

    goto LABEL_30;
  }

  v16 = sub_10001B840(v14, v15 | 0x8000000000000000);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_10001D5DC(*(v13 + 56) + 32 * v16, v0 + 128);

  sub_100001B18(&qword_10003CF48, &qword_10002DF58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v19 = *(v0 + 240);
  if (!v19)
  {
    goto LABEL_31;
  }

  if (!*(v19 + 16))
  {
    goto LABEL_30;
  }

  v20 = sub_10001B840(0xD000000000000016, 0x800000010002FDA0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_10001D5DC(*(v19 + 56) + 32 * v20, v0 + 160);

  sub_100001B18(&qword_10003CF40, &qword_10002DF50);
  if (swift_dynamicCast())
  {
    v22 = *(v0 + 232);
    goto LABEL_32;
  }

LABEL_31:
  v22 = _swiftEmptyArrayStorage;
LABEL_32:
  *(v0 + 328) = v22;
  v23 = swift_task_alloc();
  *(v0 + 336) = v23;
  *v23 = v0;
  v23[1] = sub_10001A084;

  return sub_10002659C(v22, 3);
}

uint64_t sub_10001A084(uint64_t a1)
{
  *(*v1 + 344) = a1;

  return _swift_task_switch(sub_10001A1A4, 0, 0);
}

uint64_t sub_10001A1A4()
{
  v25 = v0;
  v1 = v0;

  v3 = sub_10001CD0C(v2);

  v1[5] = &type metadata for PerfPowerServices;
  v4 = sub_10000BC1C();
  *(v1 + 16) = 0;
  v1[6] = v4;
  v5 = sub_100029074();
  sub_10000BC70(v1 + 2);
  if (v5)
  {
    v6 = v1[35];
    v7 = v1[34];
    v8 = sub_100028F54();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = sub_100028F94();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_100001B18(&qword_10003CF28, &qword_10002DF48);
    sub_10001CBAC();
    sub_10001D4FC();
    sub_100028A94();
    sub_100028AC4();
  }

  else
  {
    sub_100028BB4();
    sub_10001A930();
  }

  v10 = sub_100029454();
  sub_1000294C4(44);

  v23 = 0x100000000000002ALL;
  v24 = 0x800000010002FD70;
  v1[26] = v3;

  v27._countAndFlagsBits = sub_100029394();
  sub_1000293C4(v27);

  v12 = v23;
  v11 = v24;

  v13 = sub_100029084();

  if (os_log_type_enabled(v13, v10))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = sub_10001B1E4(v12, v11, &v23);

    *(v14 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v13, v10, "%{public}s", v14, 0xCu);
    sub_10000BC70(v15);
  }

  else
  {
  }

  v17 = v1[43];
  v19 = v1[38];
  v18 = v1[39];
  v22 = v1[37];
  sub_100028B44();
  v1[28] = v1[27];
  *(swift_task_alloc() + 16) = v17;
  sub_100001B18(&qword_10003CF28, &qword_10002DF48);
  sub_10001D4FC();
  sub_10001D580();
  sub_100028AF4();

  (*(v19 + 8))(v18, v22);

  v20 = v1[1];

  return v20();
}

uint64_t sub_10001A620()
{
  v0 = sub_100001B18(&qword_10003CF50, &qword_10002DF60);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  swift_getKeyPath();
  sub_10001CBAC();
  sub_100028DE4();

  sub_10000366C(&qword_10003CF58, &qword_10003CF50, &qword_10002DF60, &protocol conformance descriptor for _NLGRepresentationIntent<A>);
  sub_100028DD4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10001A774(uint64_t a1)
{
  sub_100028B44();
  sub_10001A828(v2);

  sub_100001B18(&qword_10003CF28, &qword_10002DF48);
  sub_10001D4FC();
  sub_100028DC4();

  sub_100028D94();
}

void *sub_10001A828(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = _swiftEmptyArrayStorage;
    sub_100020C6C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      v12 = v2;
      v5 = v2[2];
      v6 = v2[3];

      if (v5 >= v6 >> 1)
      {
        sub_100020C6C((v6 > 1), v5 + 1, 1);
        v2 = v12;
      }

      v10 = &type metadata for BatteryUsageInformationAppEntry;
      v11 = sub_10001C6B4();
      v9 = v8;
      v2[2] = v5 + 1;
      sub_10001D6E8(&v9, &v2[5 * v5 + 4]);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10001A930()
{
  v0 = sub_100028FF4();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  sub_100028BB4();
  if (v13 > 1u)
  {
    if (v13 != 2)
    {
      goto LABEL_6;
    }
  }

  else if (!v13)
  {
    goto LABEL_13;
  }

  v7 = sub_100029524();

  if (v7)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_100028BB4();
  if (v12 <= 1u)
  {
    if (v12)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_10:
    v8 = sub_100029524();

    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v12 == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_100028BB4();
  if (v11 > 1u)
  {
    if (v11 != 2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  sub_100029524();

LABEL_14:
  sub_100028FD4();
  (*(v1 + 16))(v4, v6, v0);
  sub_100028AE4();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_10001ABF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C2D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100028FF4();
  v3 = sub_100004EA0(v2, qword_100045600);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10001AC9C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000028D0;

  return sub_1000199F8(a1, v4);
}

uint64_t sub_10001AD3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D164();
  *a1 = result;
  return result;
}

uint64_t sub_10001AD64(uint64_t a1)
{
  v2 = sub_10001CBAC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

char *sub_10001ADA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B18(&qword_10003CF80, &unk_10002DFB0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10001AEAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B18(&qword_10003CFA0, &qword_10002DFD0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10001AFB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B18(&qword_10003CF88, &qword_10002EB30);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}