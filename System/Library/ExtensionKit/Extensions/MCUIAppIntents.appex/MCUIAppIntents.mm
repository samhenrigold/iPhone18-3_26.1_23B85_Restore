uint64_t sub_100001080(uint64_t a1)
{
  v2 = sub_1000011D4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000112C();
  sub_100004298();
  return 0;
}

unint64_t sub_10000112C()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

unint64_t sub_1000011D4()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

uint64_t sub_100001238()
{
  v0 = sub_100003C78(&qword_10000C118, &qword_1000050E8);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100004288();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100004268();
  sub_100003E3C(v5, qword_10000CD98);
  sub_100003E04(v5, qword_10000CD98);
  sub_100004278();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100004258();
}

uint64_t sub_1000013A8()
{
  v0 = sub_100003C78(&qword_10000C140, &qword_1000050F8);
  __chkstk_darwin(v0 - 8);
  v2 = v16 - v1;
  v3 = sub_100003C78(&qword_10000C118, &qword_1000050E8);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - v4;
  v6 = sub_100004288();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v16[1] = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  sub_100003C78(&qword_10000C148, &qword_100005100);
  v10 = *(sub_100003C78(&qword_10000C150, &qword_100005108) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100004AC0;
  sub_100004278();
  sub_100004278();
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1000041A8();
  v13 = sub_1000041B8();
  (*(*(v13 - 8) + 56))(v2, 0, 1, v13);
  sub_100003C78(&qword_10000C158, &qword_100005110);
  *(swift_allocObject() + 16) = xmmword_100004AD0;
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_1000041C8();
  v14 = sub_1000035CC(v12);
  swift_setDeallocating();
  sub_100003EA0(v12 + v11, &qword_10000C150, &qword_100005108);
  result = swift_deallocClassInstance();
  qword_10000CDB0 = v14;
  return result;
}

uint64_t sub_1000018E4()
{
  v0 = sub_100003C78(&qword_10000C168, &qword_100005120);
  sub_100003E3C(v0, qword_10000CDB8);
  sub_100003E04(v0, qword_10000CDB8);
  sub_100003C78(&qword_10000C170, &qword_100005128);
  v1 = *(sub_100003C78(&qword_10000C178, &qword_100005130) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100004AC0;
  sub_100001BE0();
  sub_1000041E8();
  sub_100003798(v3);
  swift_setDeallocating();
  sub_100003EA0(v3 + v2, &qword_10000C178, &qword_100005130);
  swift_deallocClassInstance();
  return sub_1000041F8();
}

unint64_t sub_100001A7C()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

Swift::Int sub_100001AD0()
{
  sub_1000042D8();
  sub_1000042A8();
  return sub_1000042E8();
}

Swift::Int sub_100001B2C(uint64_t a1)
{
  sub_1000042D8();
  sub_1000042A8();
  return sub_1000042E8();
}

uint64_t sub_100001B74@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000086F8;
  v7._object = v3;
  v5 = sub_1000042C8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100001BE0()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_100001C38()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_100001C8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_100003C78(&qword_10000C168, &qword_100005120);
  v3 = sub_100003E04(v2, qword_10000CDB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100001D44()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100001D9C()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100001DF4()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

uint64_t sub_100001E54(uint64_t a1)
{
  sub_100003DB0();
  v2 = sub_100004198();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100001EC4()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100001F1C()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100001F74()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_100001FCC()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100002088(uint64_t a1)
{
  v2 = sub_100001BE0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000020D8()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100002130()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100002188()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_1000021DC()
{
  if (qword_10000C008 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100002238(uint64_t a1)
{
  v2 = sub_100001FCC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100002288()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    sub_1000022EC(&qword_10000C0B0, &qword_100004DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_1000022EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002348()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_10000239C()
{
  v0 = sub_100004288();
  sub_100003E3C(v0, qword_10000CDD0);
  sub_100003E04(v0, qword_10000CDD0);
  return sub_100004278();
}

uint64_t (*sub_10000246C(uint64_t *a1))()
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
  *(v2 + 32) = sub_100004028();
  return sub_1000024E0;
}

void sub_1000024E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10000252C()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t sub_100002580(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003D08();
  v5 = sub_100003DB0();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000025F0()
{
  v0 = qword_10000C030;

  return v0;
}

unint64_t sub_100002630()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_100002688()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

unint64_t sub_1000026E0()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_1000027E0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100003E04(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000028A0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100003D08();
  v6 = sub_100003D5C();
  v7 = sub_100003DB0();
  *v4 = v2;
  v4[1] = sub_10000296C;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000296C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100002A74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003974();
  *a1 = result;
  return result;
}

uint64_t sub_100002A9C(uint64_t a1)
{
  v2 = sub_10000252C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100002AD8(uint64_t a1)
{
  v30 = a1;
  v1 = sub_100003C78(&qword_10000C0F8, &qword_1000050C8);
  v2 = *(v1 - 8);
  v31 = v1;
  v32 = v2;
  __chkstk_darwin(v1);
  v4 = &v20[-v3];
  v24 = sub_100004078();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100003C78(&qword_10000C100, &qword_1000050D0);
  __chkstk_darwin(v8);
  sub_10000252C();
  sub_100004138();
  v33._countAndFlagsBits = 0x206E65704FLL;
  v33._object = 0xE500000000000000;
  sub_100004128(v33);
  swift_getKeyPath();
  v29 = sub_100001F74();
  sub_100004068();

  sub_100004118();

  v34._countAndFlagsBits = 544106784;
  v34._object = 0xE400000000000000;
  sub_100004128(v34);
  v9 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v28 = *(v5 + 104);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v10 = v24;
  v28(v7, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v24);
  sub_100004108();
  v11 = *(v5 + 8);
  v26 = v5 + 8;
  v27 = v11;
  v11(v7, v10);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_100004128(v35);
  sub_100004148();
  v23 = sub_100004098();
  v12 = *(v32 + 8);
  v32 += 8;
  v25 = v12;
  v12(v4, v31);
  sub_100004138();
  v36._countAndFlagsBits = 0x206F74206F47;
  v36._object = 0xE600000000000000;
  sub_100004128(v36);
  swift_getKeyPath();
  sub_100004068();

  sub_100004118();

  v37._countAndFlagsBits = 544106784;
  v37._object = 0xE400000000000000;
  sub_100004128(v37);
  v13 = v9;
  v14 = v24;
  v28(v7, v13, v24);
  sub_100004108();
  v27(v7, v14);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_100004128(v38);
  sub_100004148();
  v22 = sub_100004098();
  v25(v4, v31);
  sub_100004138();
  v39._countAndFlagsBits = 0x20656D20776F6853;
  v39._object = 0xE800000000000000;
  sub_100004128(v39);
  swift_getKeyPath();
  sub_100004068();

  sub_100004118();

  v40._countAndFlagsBits = 544106784;
  v40._object = 0xE400000000000000;
  sub_100004128(v40);
  v28(v7, v21, v14);
  sub_100004108();
  v27(v7, v14);
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_100004128(v41);
  sub_100004148();
  v15 = sub_100004098();
  v25(v4, v31);
  sub_100003C78(&qword_10000C108, &qword_1000050D8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100004AE0;
  v17 = v22;
  *(v16 + 32) = v23;
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  v18 = sub_100004088();

  return v18;
}

uint64_t sub_100003064()
{
  v0 = sub_1000040F8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100001F74();
  sub_100004068();

  sub_10000252C();
  sub_1000040E8();
  v4 = sub_1000040D8();
  (*(v1 + 8))(v3, v0);
  sub_100003C78(&qword_10000C0E8, &qword_1000050B8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100004AC0;
  *(v5 + 32) = v4;
  v6 = sub_1000040C8();

  return v6;
}

uint64_t sub_1000031D4()
{
  v0 = sub_1000040B8();
  v1 = sub_1000040B8();
  v2 = sub_1000040B8();
  v3 = sub_1000040B8();
  sub_100003C78(&qword_10000C0F0, &qword_1000050C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100004AF0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1000040A8();

  return v5;
}

uint64_t sub_1000032C8()
{
  v0 = sub_100004178();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_100003974();
  sub_10000252C();
  sub_100004188();
  v4 = sub_100004168();
  (*(v1 + 8))(v3, v0);
  sub_100003C78(&qword_10000C0E0, &qword_100005088);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100004AC0;
  *(v5 + 32) = v4;
  v6 = sub_100004158();

  return v6;
}

uint64_t getEnumTagSinglePayload for MCUIStaticDeepLinks(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MCUIStaticDeepLinks(_WORD *result, int a2, int a3)
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

uint64_t sub_10000356C()
{
  sub_1000042D8();
  sub_1000042A8();
  v0 = sub_1000042E8();

  return sub_100003540(v0);
}

unint64_t sub_1000035CC(uint64_t a1)
{
  v2 = sub_100003C78(&qword_10000C150, &qword_100005108);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003C78(&qword_10000C160, &qword_100005118);
    v7 = sub_1000042B8();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_100003F00(v8, v5, &qword_10000C150, &qword_100005108);
      result = sub_10000356C();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_1000041D8();
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

unint64_t sub_100003798(uint64_t a1)
{
  v2 = sub_100003C78(&qword_10000C178, &qword_100005130);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003C78(&qword_10000C180, &qword_100005138);
    v7 = sub_1000042B8();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_100003F00(v8, v5, &qword_10000C178, &qword_100005130);
      result = sub_10000356C();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_100003C78(&qword_10000C188, &qword_100005140);
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

uint64_t sub_100003974()
{
  v17 = sub_100004228();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003C78(&qword_10000C110, &qword_1000050E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100003C78(&qword_10000C118, &qword_1000050E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100004288();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100003C78(&qword_10000C120, &qword_1000050F0);
  sub_100004278();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 1;
  v14 = sub_100004018();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100001BE0();
  return sub_100004058();
}

uint64_t sub_100003C78(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003D08()
{
  result = qword_10000C128;
  if (!qword_10000C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C128);
  }

  return result;
}

unint64_t sub_100003D5C()
{
  result = qword_10000C130;
  if (!qword_10000C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C130);
  }

  return result;
}

unint64_t sub_100003DB0()
{
  result = qword_10000C138;
  if (!qword_10000C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C138);
  }

  return result;
}

uint64_t sub_100003E04(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003E3C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100003EA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003C78(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003F00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003C78(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}