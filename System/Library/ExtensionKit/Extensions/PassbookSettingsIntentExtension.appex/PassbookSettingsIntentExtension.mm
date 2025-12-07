uint64_t sub_100001080()
{
  v0 = sub_100001828(&qword_10000C048, &qword_100004690);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_1000017D4();
  sub_10000427C();
  v13 = sub_10000420C();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_10000427C();
  v5 = sub_10000420C();
  v4(v3, v0);
  sub_10000427C();
  v6 = sub_10000420C();
  v4(v3, v0);
  sub_10000427C();
  v7 = sub_10000420C();
  v4(v3, v0);
  sub_10000427C();
  v8 = sub_10000420C();
  v4(v3, v0);
  sub_100001828(&qword_10000C050, qword_100004698);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000045A0;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = sub_1000041FC();

  return v10;
}

uint64_t sub_100001344()
{
  v0 = sub_10000426C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100001870();
  sub_1000041EC();

  sub_1000017D4();
  sub_10000425C();
  v4 = sub_10000424C();
  (*(v1 + 8))(v3, v0);
  sub_100001828(&qword_10000C038, &qword_100004680);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000045B0;
  *(v5 + 32) = v4;
  v6 = sub_10000423C();

  return v6;
}

void *sub_1000014B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000041BC();
  *a1 = v3;
  return result;
}

uint64_t sub_100001528()
{
  v0 = sub_10000422C();
  v1 = sub_10000422C();
  v2 = sub_10000422C();
  sub_100001828(&qword_10000C040, &qword_100004688);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000045C0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_10000421C();

  return v4;
}

uint64_t sub_100001600()
{
  v0 = sub_1000042AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_100002040();
  sub_1000017D4();
  sub_1000042BC();
  v4 = sub_10000429C();
  (*(v1 + 8))(v3, v0);
  sub_100001828(&qword_10000C028, "~\t");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000045B0;
  *(v5 + 32) = v4;
  v6 = sub_10000428C();

  return v6;
}

uint64_t sub_100001768()
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v1 = qword_10000C178;

  return _swift_bridgeObjectRetain(v1);
}

unint64_t sub_1000017D4()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_100001828(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001870()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_1000018C8()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100001920()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

uint64_t sub_1000019A8()
{
  v0 = sub_1000043BC();
  sub_1000024CC(v0, qword_10000C180);
  sub_100002494(v0, qword_10000C180);
  return sub_1000043AC();
}

void *sub_100001A0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000041BC();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100001A80(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000041AC();
  return sub_100001AF4;
}

void sub_100001AF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100001B48()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

uint64_t sub_100001B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002398();
  v5 = sub_100002440();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100001C2C()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100001C84()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

uint64_t sub_100001D28@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C008 != -1)
  {
    swift_once();
  }

  v2 = sub_1000043BC();
  v3 = sub_100002494(v2, qword_10000C180);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001DF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100002398();
  v7 = sub_1000023EC();
  v8 = sub_100002440();
  *v5 = v2;
  v5[1] = sub_100001EC4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100001EC4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100001FCC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100002040();
  *a2 = result;
  return result;
}

uint64_t sub_100001FF4(uint64_t a1)
{
  v2 = sub_1000017D4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100002040()
{
  v17 = sub_10000433C();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001828(&qword_10000C080, "8\b");
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100001828(&qword_10000C088, "8\b");
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000043BC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100001828(&qword_10000C090, &unk_1000048E0);
  sub_1000043AC();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 2;
  v14 = sub_10000419C();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100002344();
  return sub_1000041DC();
}

unint64_t sub_100002344()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100002398()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_1000023EC()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

unint64_t sub_100002440()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100002494(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000024CC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100002538(uint64_t a1)
{
  v2 = sub_10000268C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000025E4();
  sub_1000043CC();
  return 0;
}

unint64_t sub_1000025E4()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_10000268C()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t sub_1000026F0()
{
  v0 = sub_100001828(&qword_10000C150, &qword_100004CE0);
  sub_1000024CC(v0, qword_10000C198);
  sub_100002494(v0, qword_10000C198);
  sub_100001828(&qword_10000C158, &qword_100004CE8);
  v1 = *(sub_100001828(&qword_10000C160, &qword_100004CF0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100004980;
  v5 = (v4 + v3);
  *v5 = 0;
  sub_100002344();
  sub_10000431C();
  v5[v2] = 1;
  sub_10000431C();
  sub_10000371C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_10000432C();
}

uint64_t sub_1000028CC()
{
  v0 = sub_100001828(&qword_10000C088, "8\b");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000043BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10000439C();
  sub_1000024CC(v5, qword_10000C1B0);
  sub_100002494(v5, qword_10000C1B0);
  sub_1000043AC();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10000438C();
}

uint64_t sub_100002A3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64726143646461;
  }

  else
  {
    v3 = 1953460082;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64726143646461;
  }

  else
  {
    v5 = 1953460082;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000440C();
  }

  return v8 & 1;
}

unint64_t sub_100002AE0()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

Swift::Int sub_100002B34()
{
  sub_10000441C();
  sub_1000043DC();

  return sub_10000442C();
}

uint64_t sub_100002BB0(uint64_t a1)
{
  sub_1000043DC();
}

Swift::Int sub_100002C18(uint64_t a1)
{
  sub_10000441C();
  sub_1000043DC();

  return sub_10000442C();
}

uint64_t sub_100002C90@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008720;
  v8._object = v3;
  v5 = sub_1000043FC(v4, v8);

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

void sub_100002CF0(uint64_t *a1@<X8>)
{
  v2 = 1953460082;
  if (*v1)
  {
    v2 = 0x64726143646461;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100002D30()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_100002D84@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_100001828(&qword_10000C150, &qword_100004CE0);
  v3 = sub_100002494(v2, qword_10000C198);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100002E3C()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

unint64_t sub_100002E94()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

uint64_t sub_100002EF4(uint64_t a1)
{
  sub_100002440();
  v2 = sub_10000430C();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100002F64()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

unint64_t sub_100002FBC()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

unint64_t sub_100003014()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

uint64_t sub_10000306C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C018 != -1)
  {
    swift_once();
  }

  v2 = sub_10000439C();
  v3 = sub_100002494(v2, qword_10000C1B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003168(uint64_t a1)
{
  v2 = sub_100002344();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000031B8()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

unint64_t sub_100003210()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

unint64_t sub_100003268()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

uint64_t sub_1000032C0(uint64_t a1)
{
  v2 = sub_100003014();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003310()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    sub_100003374(&qword_10000C120, &qword_100004C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

uint64_t sub_100003374(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WalletDeepLinks(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WalletDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100003540(char a1)
{
  sub_10000441C();
  sub_1000043DC();

  v2 = sub_10000442C();

  return sub_1000035E0(a1 & 1, v2);
}

unint64_t sub_1000035E0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x64726143646461;
    }

    else
    {
      v6 = 1953460082;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x64726143646461 : 1953460082;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_10000440C();

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

unint64_t sub_10000371C(uint64_t a1)
{
  v2 = sub_100001828(&qword_10000C160, &qword_100004CF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001828(&qword_10000C168, &qword_100004CF8);
    v7 = sub_1000043EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000408C(v9, v5, &qword_10000C160, &qword_100004CF0);
      v11 = *v5;
      result = sub_100003540(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100001828(&qword_10000C170, &unk_100004D00);
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

unint64_t sub_100003910(uint64_t a1)
{
  v2 = sub_100001828(&qword_10000C138, &qword_100004CC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001828(&qword_10000C148, &qword_100004CD8);
    v7 = sub_1000043EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000408C(v9, v5, &qword_10000C138, &qword_100004CC8);
      v11 = *v5;
      result = sub_100003540(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000042FC();
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

unint64_t sub_100003AF8()
{
  v0 = sub_100001828(&qword_10000C128, &unk_100004CB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_100001828(&qword_10000C088, "8\b");
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v20 = &v19 - v4;
  v6 = sub_1000043BC();
  v29 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v22 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001828(&qword_10000C130, &qword_100004CC0);
  v9 = sub_100001828(&qword_10000C138, &qword_100004CC8);
  v27 = v9;
  v10 = *(v9 - 8);
  v30 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100004980;
  v31 = v12;
  v32 = v12 + v11;
  v26 = *(v9 + 48);
  *(v12 + v11) = 0;
  sub_1000043AC();
  v28 = *(v7 + 56);
  v28(v5, 1, 1, v6);
  sub_1000042CC();
  v24 = sub_1000042DC();
  v13 = *(v24 - 8);
  v23 = *(v13 + 56);
  v25 = v13 + 56;
  v23(v2, 0, 1, v24);
  v21 = sub_100001828(&qword_10000C140, &qword_100004CD0);
  *(swift_allocObject() + 16) = xmmword_100004990;
  sub_1000043AC();
  sub_1000043AC();
  sub_1000043AC();
  sub_1000043AC();
  sub_1000043AC();
  sub_1000043AC();
  sub_1000043AC();
  sub_1000043AC();
  v14 = v32;
  v15 = v20;
  sub_1000042EC();
  v16 = (v14 + v30);
  v30 = *(v27 + 48);
  *v16 = 1;
  sub_1000043AC();
  sub_1000043AC();
  v28(v15, 0, 1, v29);
  sub_1000042CC();
  v23(v2, 0, 1, v24);
  *(swift_allocObject() + 16) = xmmword_1000045B0;
  sub_1000043AC();
  sub_1000042EC();
  v17 = sub_100003910(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v17;
}

uint64_t sub_10000408C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001828(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}