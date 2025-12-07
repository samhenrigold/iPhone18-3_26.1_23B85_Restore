uint64_t sub_100001080(uint64_t a1)
{
  v2 = sub_100002708();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

uint64_t sub_1000010D0()
{
  v0 = sub_100003A38(&qword_10000C0B8, &qword_1000045F8);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100003E40();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100003E20();
  sub_100003BB4(v5, qword_10000CC50);
  sub_100003B7C(v5, qword_10000CC50);
  sub_100003E30();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100003E10();
}

uint64_t sub_100001238()
{
  v0 = sub_100003A38(&qword_10000C0E0, &qword_100004608);
  __chkstk_darwin(v0 - 8);
  v2 = v27 - v1;
  v3 = sub_100003A38(&qword_10000C0B8, &qword_1000045F8);
  __chkstk_darwin(v3 - 8);
  v5 = v27 - v4;
  v6 = sub_100003E40();
  v35 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003A38(&qword_10000C0E8, &qword_100004610);
  v10 = sub_100003A38(&qword_10000C0F0, &qword_100004618);
  v11 = *(v10 - 8);
  v37 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v33 = v13;
  *(v13 + 16) = xmmword_100004050;
  v14 = v13 + v12;
  v15 = v10;
  *(v13 + v12) = 0;
  sub_100003E30();
  sub_100003E30();
  v16 = *(v7 + 56);
  v36 = v7 + 56;
  v16(v5, 0, 1, v6);
  v17 = v16;
  v34 = "Open Font Settings";
  sub_100003D60();
  v38 = sub_100003D70();
  v18 = *(v38 - 8);
  v19 = *(v18 + 56);
  v39 = v18 + 56;
  v19(v2, 0, 1, v38);
  v31 = v19;
  v40 = v14;
  v27[1] = v9;
  sub_100003D80();
  v20 = v37;
  v30 = v15;
  v28 = *(v15 + 48);
  *(v14 + v37) = 1;
  sub_100003E30();
  v29 = "com.apple.graphic-icon.fonts";
  sub_100003E30();
  v21 = v35;
  v32 = v17;
  v17(v5, 0, 1, v35);
  sub_100003D60();
  v19(v2, 0, 1, v38);
  sub_100003D80();
  v27[2] = *(v15 + 48);
  v28 = 2 * v20;
  *(v40 + 2 * v20) = 2;
  sub_100003E30();
  sub_100003E30();
  v17(v5, 0, 1, v21);
  sub_100003D60();
  v22 = v38;
  v23 = v31;
  v31(v2, 0, 1, v38);
  sub_100003D80();
  v24 = (v40 + v28 + v37);
  v37 = *(v30 + 48);
  *v24 = 3;
  sub_100003E30();
  sub_100003E30();
  v32(v5, 0, 1, v35);
  sub_100003D60();
  v23(v2, 0, 1, v22);
  sub_100003D80();
  v25 = sub_100003314(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10000CC68 = v25;
  return result;
}

uint64_t sub_1000017D8()
{
  v0 = sub_100003A38(&qword_10000C100, &qword_100004628);
  sub_100003BB4(v0, qword_10000CC70);
  sub_100003B7C(v0, qword_10000CC70);
  sub_100003A38(&qword_10000C108, &qword_100004630);
  v1 = *(sub_100003A38(&qword_10000C110, &qword_100004638) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100004050;
  v5 = v4 + v3;
  *(v4 + v3) = 0;
  sub_1000027B8();
  sub_100003DA0();
  *(v5 + v2) = 1;
  sub_100003DA0();
  *(v5 + 2 * v2) = 2;
  sub_100003DA0();
  *(v5 + 3 * v2) = 3;
  sub_100003DA0();
  sub_1000034FC(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_100003DB0();
}

uint64_t sub_100001A34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1953460082;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000073;
    v4 = 0xE900000000000073;
    if (a1 == 2)
    {
      v6 = 0x746E6F4672657375;
    }

    else
    {
      v6 = 0x746E6F4665726F6DLL;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xEB0000000073746ELL;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6F466D6574737973;
    }

    else
    {
      v6 = 1953460082;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x746E6F4672657375;
  if (a2 != 2)
  {
    v9 = 0x746E6F4665726F6DLL;
  }

  if (a2)
  {
    v2 = 0x6F466D6574737973;
    v8 = 0xEB0000000073746ELL;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v9;
  }

  if (a2 <= 1u)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE900000000000073;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_100003E90();
  }

  return v12 & 1;
}

Swift::Int sub_100001B8C()
{
  sub_100003EA0();
  sub_100003E60();

  return sub_100003EB0();
}

uint64_t sub_100001C58(uint64_t a1)
{
  sub_100003E60();
}

Swift::Int sub_100001D10(uint64_t a1)
{
  sub_100003EA0();
  sub_100003E60();

  return sub_100003EB0();
}

unint64_t sub_100001DD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000036F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100001E08(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1953460082;
  v4 = 0x746E6F4672657375;
  if (*v1 != 2)
  {
    v4 = 0x746E6F4665726F6DLL;
  }

  if (*v1)
  {
    v3 = 0x6F466D6574737973;
    v2 = 0xEB0000000073746ELL;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE900000000000073;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_100001E90@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C140 != -1)
  {
    swift_once();
  }

  v2 = sub_100003A38(&qword_10000C100, &qword_100004628);
  v3 = sub_100003B7C(v2, qword_10000CC70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001F44(uint64_t a1)
{
  sub_100003B28();
  v2 = sub_100003D50();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100001FEC(uint64_t a1)
{
  v2 = sub_1000027B8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100002038()
{
  if (qword_10000C138 != -1)
  {
    swift_once();
  }

  v1 = qword_10000CC68;

  return _swift_bridgeObjectRetain(v1);
}

uint64_t sub_100002094(uint64_t a1)
{
  v2 = sub_100002A80();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000020F0()
{
  v0 = sub_100003E40();
  sub_100003BB4(v0, qword_10000CC88);
  sub_100003B7C(v0, qword_10000CC88);
  return sub_100003E30();
}

void *sub_100002154@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100003D20();
  *a1 = v3;
  return result;
}

uint64_t (*sub_1000021C8(uint64_t *a1))()
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
  *(v2 + 32) = sub_100003D10();
  return sub_10000223C;
}

void sub_10000223C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100002288(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003A80();
  v5 = sub_100003B28();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100002328@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100003B7C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000023F0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100003A80();
  v6 = sub_100003AD4();
  v7 = sub_100003B28();
  *v4 = v2;
  v4[1] = sub_1000024BC;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000024BC()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000025C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000373C();
  *a1 = result;
  return result;
}

uint64_t sub_1000025EC(uint64_t a1)
{
  v2 = sub_100002D14();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002684();
  sub_100003E50();
  return 0;
}

unint64_t sub_100002684()
{
  result = qword_10000C000;
  if (!qword_10000C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C000);
  }

  return result;
}

unint64_t sub_100002708()
{
  result = qword_10000C008;
  if (!qword_10000C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C008);
  }

  return result;
}

unint64_t sub_100002760()
{
  result = qword_10000C010;
  if (!qword_10000C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C010);
  }

  return result;
}

unint64_t sub_1000027B8()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_100002810()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

unint64_t sub_100002864()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

unint64_t sub_1000028BC()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_100002914()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_100002978()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_1000029D0()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_100002A28()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

unint64_t sub_100002A80()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100002B04()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100002B5C()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100002BB4()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100002C0C()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    sub_100002C70(&qword_10000C080, &qword_100004388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

uint64_t sub_100002C70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002CBC()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100002D14()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100002D70()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100002DC8()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_100002E20()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FontSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FontSettingsDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100003078(uint64_t a1)
{
  v1 = a1;
  sub_100003EA0();
  sub_100003E60();

  v2 = sub_100003EB0();

  return sub_10000316C(v1, v2);
}

unint64_t sub_10000316C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4) == 2 ? 0x746E6F4672657375 : 0x746E6F4665726F6DLL;
      v7 = *(*(v2 + 48) + v4) ? 0x6F466D6574737973 : 1953460082;
      v8 = *(*(v2 + 48) + v4) ? 0xEB0000000073746ELL : 0xE400000000000000;
      v9 = *(*(v2 + 48) + v4) <= 1u ? v7 : v6;
      v10 = *(*(v2 + 48) + v4) <= 1u ? v8 : 0xE900000000000073;
      v11 = v5 == 2 ? 0x746E6F4672657375 : 0x746E6F4665726F6DLL;
      v12 = v5 ? 0x6F466D6574737973 : 1953460082;
      v13 = v5 ? 0xEB0000000073746ELL : 0xE400000000000000;
      v14 = v5 <= 1 ? v12 : v11;
      v15 = v5 <= 1 ? v13 : 0xE900000000000073;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_100003E90();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
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

unint64_t sub_100003314(uint64_t a1)
{
  v2 = sub_100003A38(&qword_10000C0F0, &qword_100004618);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003A38(&qword_10000C0F8, &qword_100004620);
    v7 = sub_100003E70();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100003C18(v9, v5, &qword_10000C0F0, &qword_100004618);
      v11 = *v5;
      result = sub_100003078(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100003D90();
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

unint64_t sub_1000034FC(uint64_t a1)
{
  v2 = sub_100003A38(&qword_10000C110, &qword_100004638);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003A38(&qword_10000C118, &qword_100004640);
    v7 = sub_100003E70();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100003C18(v9, v5, &qword_10000C110, &qword_100004638);
      v11 = *v5;
      result = sub_100003078(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100003A38(&unk_10000C120, qword_100004648);
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

unint64_t sub_1000036F0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000085D8;
  v6._object = a2;
  v4 = sub_100003E80(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000373C()
{
  v17 = sub_100003DE0();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003A38(&qword_10000C0B0, &qword_1000045F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100003A38(&qword_10000C0B8, &qword_1000045F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100003E40();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100003A38(&qword_10000C0C0, &qword_100004600);
  sub_100003E30();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 4;
  v14 = sub_100003D00();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_1000027B8();
  return sub_100003D40();
}

uint64_t sub_100003A38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003A80()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_100003AD4()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

unint64_t sub_100003B28()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_100003B7C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003BB4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100003C18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003A38(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}