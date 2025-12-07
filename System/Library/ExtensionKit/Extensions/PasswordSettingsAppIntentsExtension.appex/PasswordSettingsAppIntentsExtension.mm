uint64_t sub_100001080(uint64_t a1)
{
  v2 = sub_1000011D4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000112C();
  sub_100004978();
  return 0;
}

unint64_t sub_10000112C()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_1000011D4()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_100001238()
{
  v0 = sub_100001A00(&qword_10000C058, &qword_100005618);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_1000019AC();
  sub_100004828();
  v4 = sub_1000047B8();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_100004828();
  v6 = sub_1000047B8();
  v5(v3, v0);
  sub_100004828();
  v7 = sub_1000047B8();
  v5(v3, v0);
  sub_100001A00(&qword_10000C060, &unk_100005620);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100005540;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_1000047A8();

  return v9;
}

uint64_t sub_100001450()
{
  v0 = sub_100004818();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100001ABC();
  sub_100004798();

  sub_1000019AC();
  sub_100004808();
  v4 = sub_1000047F8();
  (*(v1 + 8))(v3, v0);
  sub_100001A00(&qword_10000C050, &qword_100005610);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100005550;
  *(v5 + 32) = v4;
  v6 = sub_1000047E8();

  return v6;
}

uint64_t sub_1000015C0()
{
  v0 = sub_1000047D8();
  sub_100001A00(&qword_10000C038, &qword_1000055D8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100005550;
  *(v1 + 32) = v0;
  v2 = sub_1000047C8();

  return v2;
}

uint64_t sub_100001644()
{
  v0 = sub_1000047D8();
  v1 = sub_1000047D8();
  sub_100001A00(&qword_10000C038, &qword_1000055D8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100005560;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_1000047C8();

  return v3;
}

uint64_t sub_1000016F4()
{
  v0 = sub_100004858();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_100003598();
  sub_1000019AC();
  sub_100004868();
  v4 = sub_100004848();
  (*(v1 + 8))(v3, v0);
  sub_100001A00(&qword_10000C040, &qword_1000055E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100005550;
  *(v5 + 32) = v4;
  v6 = sub_100004838();

  return v6;
}

uint64_t sub_10000185C()
{
  v0 = sub_100004788();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000019AC();
  sub_100004778();
  v4 = sub_100004768();
  (*(v1 + 8))(v3, v0);
  sub_100001A00(&qword_10000C030, &qword_1000055D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100005550;
  *(v5 + 32) = v4;
  v6 = sub_100004758();

  return v6;
}

unint64_t sub_1000019AC()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

uint64_t sub_100001A00(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100001A48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100004728();
  *a1 = v3;
  return result;
}

unint64_t sub_100001ABC()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t sub_100001B44()
{
  v0 = sub_100001A00(&qword_10000C150, &qword_100005BB0);
  sub_1000039D0(v0, qword_10000CD90);
  sub_100003998(v0, qword_10000CD90);
  sub_100001A00(&qword_10000C158, &qword_100005BB8);
  v1 = *(sub_100001A00(&qword_10000C160, &qword_100005BC0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100005630;
  v5 = v4 + v3;
  *(v4 + v3) = 0;
  sub_1000023AC();
  sub_1000048C8();
  *(v5 + v2) = 1;
  sub_1000048C8();
  *(v5 + 2 * v2) = 2;
  sub_1000048C8();
  *(v5 + 3 * v2) = 3;
  sub_1000048C8();
  sub_100003A34(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_1000048D8();
}

uint64_t sub_100001D94()
{
  v0 = sub_100001A00(&qword_10000C100, &qword_100005B78);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100004968();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100004948();
  sub_1000039D0(v5, qword_10000CDA8);
  sub_100003998(v5, qword_10000CDA8);
  sub_100004958();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100004938();
}

unint64_t sub_100001F14()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

uint64_t sub_100001F68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (v2 == 2)
    {
      v4 = 0x8000000100004B30;
    }

    else
    {
      v4 = 0x8000000100004B50;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6C6C69466F747561;
    }

    else
    {
      v3 = 1953460082;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000018;
    }

    else
    {
      v7 = 0xD000000000000016;
    }

    if (a2 == 2)
    {
      v6 = 0x8000000100004B30;
    }

    else
    {
      v6 = 0x8000000100004B50;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6C6C69466F747561;
    }

    else
    {
      v5 = 1953460082;
    }

    if (a2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_1000049B8();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

Swift::Int sub_1000020B4()
{
  sub_1000049C8();
  sub_100004988();

  return sub_1000049D8();
}

uint64_t sub_10000217C(uint64_t a1)
{
  sub_100004988();
}

Swift::Int sub_100002230(uint64_t a1)
{
  sub_1000049C8();
  sub_100004988();

  return sub_1000049D8();
}

unint64_t sub_1000022F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000045FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100002324(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1953460082;
  v4 = 0x8000000100004B30;
  v5 = 0xD000000000000018;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x8000000100004B50;
  }

  if (*v1)
  {
    v3 = 0x6C6C69466F747561;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1000023AC()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100002404()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

uint64_t sub_100002458@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_100001A00(&qword_10000C150, &qword_100005BB0);
  v3 = sub_100003998(v2, qword_10000CD90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000250C()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_100002564()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_1000025BC()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

uint64_t sub_10000261C(uint64_t a1)
{
  sub_100003944();
  v2 = sub_100004878();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10000268C()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_1000026E4()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_100002740()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_1000027FC(uint64_t a1)
{
  v2 = sub_1000023AC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000284C()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_1000028A4()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_1000028FC()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t sub_100002954(uint64_t a1)
{
  v2 = sub_100002740();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000029A4()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    sub_100002A08(&qword_10000C0D0, &qword_100005900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t sub_100002A08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002A64()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_100002ABC()
{
  v0 = sub_100004968();
  sub_1000039D0(v0, qword_10000CDC0);
  sub_100003998(v0, qword_10000CDC0);
  return sub_100004958();
}

void *sub_100002B20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100004728();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100002B94(uint64_t *a1))()
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
  *(v2 + 32) = sub_100004718();
  return sub_100002C08;
}

void sub_100002C08(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100002C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000389C();
  v5 = sub_100003944();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100002CD0()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

unint64_t sub_100002D28()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

unint64_t sub_100002D80()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

uint64_t sub_100002E80@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100003998(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100002F48(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000389C();
  v6 = sub_1000038F0();
  v7 = sub_100003944();
  *v4 = v2;
  v4[1] = sub_100003014;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100003014()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_10000311C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100003598();
  *a2 = result;
  return result;
}

uint64_t sub_100003144(uint64_t a1)
{
  v2 = sub_1000019AC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for PasswordSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PasswordSettingsDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100003300(uint64_t a1)
{
  v1 = a1;
  sub_1000049C8();
  sub_100004988();

  v2 = sub_1000049D8();

  return sub_1000033F0(v1, v2);
}

unint64_t sub_1000033F0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = 0xD000000000000018;
      v8 = v6 == 2 ? 0xD000000000000018 : 0xD000000000000016;
      v9 = v6 == 2 ? 0x8000000100004B30 : 0x8000000100004B50;
      v10 = *(*(v2 + 48) + v4) ? 0x6C6C69466F747561 : 1953460082;
      v11 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xE400000000000000;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = *(*(v2 + 48) + v4) <= 1u ? v11 : v9;
      if (v5 == 2)
      {
        v14 = 0x8000000100004B30;
      }

      else
      {
        v7 = 0xD000000000000016;
        v14 = 0x8000000100004B50;
      }

      v15 = v5 ? 0x6C6C69466F747561 : 1953460082;
      v16 = v5 ? 0xE800000000000000 : 0xE400000000000000;
      v17 = v5 <= 1 ? v15 : v7;
      v18 = v5 <= 1 ? v16 : v14;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = sub_1000049B8();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
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

uint64_t sub_100003598()
{
  v17 = sub_100004908();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001A00(&qword_10000C0F8, &qword_100005B70);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100001A00(&qword_10000C100, &qword_100005B78);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100004968();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100001A00(&qword_10000C108, &qword_100005B80);
  sub_100004958();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 4;
  v14 = sub_100004708();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_1000023AC();
  return sub_100004748();
}

unint64_t sub_10000389C()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_1000038F0()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

unint64_t sub_100003944()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

uint64_t sub_100003998(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000039D0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100003A34(uint64_t a1)
{
  v2 = sub_100001A00(&qword_10000C160, &qword_100005BC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001A00(&qword_10000C168, &qword_100005BC8);
    v7 = sub_100004998();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100004594(v9, v5, &qword_10000C160, &qword_100005BC0);
      v11 = *v5;
      result = sub_100003300(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100001A00(&unk_10000C170, &unk_100005BD0);
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

unint64_t sub_100003C28(uint64_t a1)
{
  v2 = sub_100001A00(&qword_10000C138, &qword_100005B98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001A00(&qword_10000C148, &qword_100005BA8);
    v7 = sub_100004998();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100004594(v9, v5, &qword_10000C138, &qword_100005B98);
      v11 = *v5;
      result = sub_100003300(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000048B8();
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

unint64_t sub_100003E10()
{
  v0 = sub_100001A00(&qword_10000C128, &qword_100005B88);
  __chkstk_darwin(v0 - 8);
  v2 = v33 - v1;
  v3 = sub_100001A00(&qword_10000C100, &qword_100005B78);
  __chkstk_darwin(v3 - 8);
  v5 = v33 - v4;
  v6 = sub_100004968();
  v35 = v6;
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v44 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v33 - v10;
  sub_100001A00(&qword_10000C130, &qword_100005B90);
  v12 = sub_100001A00(&qword_10000C138, &qword_100005B98);
  v46 = v12;
  v13 = *(v12 - 8);
  v47 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v40 = v15;
  *(v15 + 16) = xmmword_100005630;
  v49 = *(v12 + 48);
  *(v15 + v14) = 0;
  v16 = v15 + v14;
  sub_100004958();
  sub_100004958();
  v17 = *(v7 + 56);
  v7 += 56;
  v48 = v17;
  v17(v5, 0, 1, v6);
  v45 = "Open Password Settings";
  sub_100004888();
  v42 = sub_100004898();
  v18 = *(v42 - 8);
  v52 = *(v18 + 56);
  v43 = v18 + 56;
  v52(v2, 0, 1, v42);
  v19 = sub_100001A00(&qword_10000C140, &qword_100005BA0);
  v20 = *(v7 + 16);
  v38 = *(v7 + 24);
  v39 = v19;
  v50 = v7;
  v36 = v20;
  v37 = (v38 + 32) & ~v38;
  *(swift_allocObject() + 16) = xmmword_100005560;
  sub_100004958();
  sub_100004958();
  sub_100004958();
  v51 = v16;
  v41 = v11;
  sub_1000048A8();
  v21 = v46;
  v22 = v47;
  v34 = *(v46 + 48);
  *(v16 + v47) = 1;
  sub_100004958();
  v49 = "AutoFill Passwords and Passkeys";
  v23 = v5;
  sub_100004958();
  v24 = v5;
  v25 = v35;
  v48(v24, 0, 1, v35);
  sub_100004888();
  v26 = v42;
  v52(v2, 0, 1, v42);
  sub_100004958();
  sub_1000048A8();
  v33[1] = *(v21 + 48);
  v34 = 2 * v22;
  *(v51 + 2 * v22) = 2;
  sub_100004958();
  sub_100004958();
  v27 = v48;
  v48(v23, 0, 1, v25);
  sub_100004888();
  v28 = v26;
  v29 = v52;
  v52(v2, 0, 1, v28);
  *(swift_allocObject() + 16) = xmmword_100005550;
  sub_100004958();
  sub_100004958();
  sub_1000048A8();
  v30 = (v51 + v34 + v47);
  v47 = *(v46 + 48);
  *v30 = 3;
  sub_100004958();
  sub_100004958();
  v27(v23, 0, 1, v25);
  sub_100004888();
  v29(v2, 0, 1, v42);
  sub_100004958();
  sub_1000048A8();
  v31 = sub_100003C28(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v31;
}

uint64_t sub_100004594(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001A00(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000045FC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008740;
  v6._object = a2;
  v4 = sub_1000049A8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}