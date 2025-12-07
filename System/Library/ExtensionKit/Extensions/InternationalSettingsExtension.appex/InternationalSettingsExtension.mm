uint64_t sub_1000010D8()
{
  v0 = sub_100003E3C(&qword_10000C098, &qword_100005930);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10000509C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10000506C();
  sub_100003EBC(v5, qword_10000C148);
  sub_100003E84(v5, qword_10000C148);
  sub_10000507C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10000505C();
}

uint64_t sub_100001248()
{
  v0 = sub_100003E3C(&qword_10000C0C8, &qword_100005640);
  sub_100003EBC(v0, qword_10000C160);
  sub_100003E84(v0, qword_10000C160);
  sub_100003E3C(&qword_10000C0D0, &qword_100005648);
  v1 = *(sub_100003E3C(&qword_10000C0D8, &qword_100005650) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000052B0;
  v5 = v4 + v3;
  *(v4 + v3) = 0;
  sub_1000019F8();
  sub_100004FEC();
  *(v5 + v2) = 1;
  sub_100004FEC();
  *(v5 + 2 * v2) = 2;
  sub_100004FEC();
  *(v5 + 3 * v2) = 3;
  sub_100004FEC();
  *(v5 + 4 * v2) = 4;
  sub_100004FEC();
  *(v5 + 5 * v2) = 5;
  sub_100004FEC();
  *(v5 + 6 * v2) = 6;
  sub_100004FEC();
  *(v5 + 7 * v2) = 7;
  sub_100004FEC();
  *(v5 + 8 * v2) = 8;
  sub_100004FEC();
  *(v5 + 9 * v2) = 9;
  sub_100004FEC();
  *(v5 + 10 * v2) = 10;
  sub_100004FEC();
  sub_100003F74(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_100004FFC();
}

unint64_t sub_10000161C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1953460082;
    v7 = 0x75676E614C646461;
    v8 = 0x6E6F69676572;
    if (a1 != 3)
    {
      v8 = 0x7261646E656C6163;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6D726F4665746164;
    v2 = 0x6F467265626D756ELL;
    if (a1 != 9)
    {
      v2 = 0x747865546576696CLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x74617265706D6574;
    v4 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0x7961447473726966;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000017A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10000161C(*a1);
  v5 = v4;
  if (v3 == sub_10000161C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000513C();
  }

  return v8 & 1;
}

unint64_t sub_10000182C()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

Swift::Int sub_100001880()
{
  v1 = *v0;
  sub_10000514C();
  sub_10000161C(v1);
  sub_10000510C();

  return sub_10000515C();
}

uint64_t sub_1000018E4(uint64_t a1)
{
  sub_10000161C(*v1);
  sub_10000510C();
}

Swift::Int sub_100001938(uint64_t a1)
{
  v2 = *v1;
  sub_10000514C();
  sub_10000161C(v2);
  sub_10000510C();

  return sub_10000515C();
}

unint64_t sub_100001998@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000041D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000019C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000161C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000019F8()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

unint64_t sub_100001A50()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

uint64_t sub_100001AA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C008 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E3C(&qword_10000C0C8, &qword_100005640);
  v3 = sub_100003E84(v2, qword_10000C160);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100001B5C()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_100001BB4()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_100001C0C()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

uint64_t sub_100001C6C(uint64_t a1)
{
  sub_100003F20();
  v2 = sub_100004F9C();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100001CDC()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_100001D34()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

unint64_t sub_100001D8C()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100001DE4()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

uint64_t sub_100001E3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_10000506C();
  v3 = sub_100003E84(v2, qword_10000C148);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001F34(uint64_t a1)
{
  v2 = sub_1000019F8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100001F84()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100001FDC()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100002034()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

uint64_t sub_10000208C(uint64_t a1)
{
  v2 = sub_100001DE4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000020DC()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    sub_100002140(&qword_10000C088, &qword_100005590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_100002140(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternationalSettingsDeepLink(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternationalSettingsDeepLink(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000230C(uint64_t a1)
{
  v1 = a1;
  sub_10000514C();
  sub_10000161C(v1);
  sub_10000510C();

  v2 = sub_10000515C();

  return sub_100002394(v1, v2);
}

unint64_t sub_100002394(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v26 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v28 + 48) + v4);
      if (v6 <= 4)
      {
        if (v6 == 3)
        {
          v9 = 0x6E6F69676572;
        }

        else
        {
          v9 = 0x7261646E656C6163;
        }

        if (v6 == 3)
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE800000000000000;
        }

        if (v6 == 2)
        {
          v9 = 0x75676E614C646461;
          v10 = 0xEB00000000656761;
        }

        v11 = *(*(v28 + 48) + v4) ? 0xD000000000000012 : 1953460082;
        v12 = *(*(v28 + 48) + v4) ? 0x8000000100005940 : 0xE400000000000000;
        v7 = *(*(v28 + 48) + v4) <= 1u ? v11 : v9;
        v8 = *(*(v28 + 48) + v4) <= 1u ? v12 : v10;
      }

      else if (*(*(v28 + 48) + v4) > 7u)
      {
        if (v6 == 8)
        {
          v7 = 0x6D726F4665746164;
          v8 = 0xEA00000000007461;
        }

        else if (v6 == 9)
        {
          v7 = 0x6F467265626D756ELL;
          v8 = 0xEC00000074616D72;
        }

        else
        {
          v8 = 0xE800000000000000;
          v7 = 0x747865546576696CLL;
        }
      }

      else if (v6 == 5)
      {
        v8 = 0xEB00000000657275;
        v7 = 0x74617265706D6574;
      }

      else if (v6 == 6)
      {
        v7 = 0xD000000000000011;
        v8 = 0x8000000100005980;
      }

      else
      {
        v7 = 0x7961447473726966;
        v8 = 0xEE006B656557664FLL;
      }

      v13 = 0x747865546576696CLL;
      if (v5 == 9)
      {
        v13 = 0x6F467265626D756ELL;
      }

      v14 = 0xEC00000074616D72;
      if (v5 != 9)
      {
        v14 = 0xE800000000000000;
      }

      if (v5 == 8)
      {
        v13 = 0x6D726F4665746164;
        v14 = 0xEA00000000007461;
      }

      v15 = 0xEB00000000657275;
      v16 = 0x7961447473726966;
      if (v5 == 6)
      {
        v16 = 0xD000000000000011;
      }

      v17 = 0xEE006B656557664FLL;
      if (v5 == 6)
      {
        v17 = 0x8000000100005980;
      }

      if (v5 == 5)
      {
        v16 = 0x74617265706D6574;
      }

      else
      {
        v15 = v17;
      }

      if (v5 <= 7)
      {
        v13 = v16;
        v14 = v15;
      }

      if (v5 == 3)
      {
        v18 = 0x6E6F69676572;
      }

      else
      {
        v18 = 0x7261646E656C6163;
      }

      if (v5 == 3)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      if (v5 == 2)
      {
        v18 = 0x75676E614C646461;
        v19 = 0xEB00000000656761;
      }

      if (v5)
      {
        v20 = 0xD000000000000012;
      }

      else
      {
        v20 = 1953460082;
      }

      if (v5)
      {
        v21 = 0x8000000100005940;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      if (v5 <= 1)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = v5 <= 4 ? v18 : v13;
      v23 = v5 <= 4 ? v19 : v14;
      if (v7 == v22 && v8 == v23)
      {
        break;
      }

      v24 = sub_10000513C();

      if ((v24 & 1) == 0)
      {
        v4 = (v4 + 1) & v26;
        if ((*(v27 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100002724(uint64_t a1)
{
  v2 = sub_100003E3C(&qword_10000C0A8, &qword_100005628);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003E3C(&qword_10000C0B8, &qword_100005638);
    v7 = sub_10000511C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100004168(v9, v5, &qword_10000C0A8, &qword_100005628);
      v11 = *v5;
      result = sub_10000230C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100004FDC();
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

unint64_t sub_10000290C()
{
  v77 = sub_10000508C();
  v94 = *(v77 - 8);
  __chkstk_darwin(v77);
  v90 = &v68 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1000050CC();
  __chkstk_darwin(v1 - 8);
  v76 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000050FC();
  __chkstk_darwin(v3 - 8);
  v84 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003E3C(&qword_10000C090, &unk_100005610);
  __chkstk_darwin(v5 - 8);
  v7 = &v68 - v6;
  v8 = sub_100003E3C(&qword_10000C098, &qword_100005930);
  __chkstk_darwin(v8 - 8);
  v10 = &v68 - v9;
  v11 = sub_10000509C();
  v87 = v11;
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v93 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v68 - v15;
  sub_100003E3C(&qword_10000C0A0, &qword_100005620);
  v17 = sub_100003E3C(&qword_10000C0A8, &qword_100005628);
  v92 = v17;
  v18 = *(v17 - 8);
  v88 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v71 = v20;
  *(v20 + 16) = xmmword_1000052B0;
  v21 = v20 + v19;
  v86 = *(v17 + 48);
  *(v20 + v19) = 0;
  v70 = 0xD000000000000011;
  sub_10000507C();
  sub_10000507C();
  v22 = *(v12 + 56);
  v85 = v12 + 56;
  v82 = v22;
  v22(v10, 0, 1, v11);
  v81 = "Language & Region";
  sub_100004FAC();
  v75 = sub_100004FBC();
  v23 = *(v75 - 8);
  v78 = *(v23 + 56);
  v80 = v23 + 56;
  v78(v7, 0, 1, v75);
  sub_1000050EC();
  sub_1000050BC();
  v79 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v83 = *(v94 + 104);
  v94 += 104;
  v24 = v77;
  v83(v90);
  sub_1000050AC();
  v91 = v21;
  v89 = v16;
  sub_100004FCC();
  v72 = *(v92 + 48);
  *(v21 + v88) = 1;
  sub_10000507C();
  v86 = "Preferred Languages";
  v74 = v10;
  sub_10000507C();
  v25 = v82;
  v82(v10, 0, 1, v87);
  sub_100004FAC();
  v26 = v7;
  v27 = v75;
  v28 = v78;
  v78(v7, 0, 1, v75);
  sub_1000050EC();
  sub_1000050BC();
  (v83)(v90, v79, v24);
  sub_1000050AC();
  v29 = v74;
  sub_100004FCC();
  v30 = v88;
  v72 = 2 * v88;
  v68 = v91 + 2 * v88;
  v31 = v92;
  v69 = *(v92 + 48);
  *v68 = 2;
  sub_10000507C();
  sub_10000507C();
  v25(v29, 0, 1, v87);
  sub_100004FAC();
  v28(v26, 0, 1, v27);
  sub_1000050EC();
  sub_1000050BC();
  v32 = v79;
  (v83)(v90, v79, v77);
  sub_1000050AC();
  v33 = v74;
  sub_100004FCC();
  v34 = v91;
  v69 = v91 + v72 + v30;
  v72 = *(v31 + 48);
  *v69 = 3;
  sub_10000507C();
  sub_10000507C();
  v35 = v33;
  v36 = v33;
  v37 = v87;
  v38 = v82;
  v82(v35, 0, 1, v87);
  v73 = v26;
  sub_100004FAC();
  v78(v26, 0, 1, v75);
  sub_1000050EC();
  sub_1000050BC();
  v39 = v77;
  (v83)(v90, v32, v77);
  sub_1000050AC();
  v40 = v73;
  sub_100004FCC();
  v69 = 4 * v88;
  v68 = *(v92 + 48);
  *(v34 + v69) = 4;
  sub_10000507C();
  sub_10000507C();
  v38(v36, 0, 1, v37);
  sub_100004FAC();
  v41 = v75;
  v42 = v78;
  v78(v40, 0, 1, v75);
  v72 = "anguage & Region Settings pane";
  sub_1000050EC();
  sub_1000050BC();
  (v83)(v90, v79, v39);
  sub_1000050AC();
  v43 = v74;
  sub_100004FCC();
  v68 = v91 + v69 + v88;
  v69 = *(v92 + 48);
  *v68 = 5;
  sub_10000507C();
  sub_10000507C();
  v82(v43, 0, 1, v87);
  sub_100004FAC();
  v42(v40, 0, 1, v41);
  sub_100003E3C(&qword_10000C0B0, &qword_100005630);
  *(swift_allocObject() + 16) = xmmword_1000052C0;
  sub_10000507C();
  sub_10000507C();
  sub_1000050EC();
  sub_1000050BC();
  v44 = v79;
  v45 = v77;
  v46 = v83;
  (v83)(v90, v79, v77);
  sub_1000050AC();
  v47 = v43;
  v48 = v73;
  sub_100004FCC();
  v69 = v91 + 6 * v88;
  v72 = *(v92 + 48);
  *v69 = 6;
  sub_10000507C();
  sub_10000507C();
  v82(v47, 0, 1, v87);
  sub_100004FAC();
  v49 = v75;
  v50 = v78;
  v78(v48, 0, 1, v75);
  sub_1000050EC();
  sub_1000050BC();
  v46(v90, v44, v45);
  sub_1000050AC();
  v51 = v74;
  v52 = v73;
  sub_100004FCC();
  v72 = 8 * v88;
  v68 = v91 + 7 * v88;
  v69 = *(v92 + 48);
  *v68 = 7;
  sub_10000507C();
  sub_10000507C();
  v53 = v51;
  v54 = v87;
  v82(v53, 0, 1, v87);
  sub_100004FAC();
  v50(v52, 0, 1, v49);
  sub_1000050EC();
  sub_1000050BC();
  v55 = v77;
  (v83)(v90, v79, v77);
  sub_1000050AC();
  v56 = v74;
  sub_100004FCC();
  v69 = v91 + v72;
  v70 = *(v92 + 48);
  *v69 = 8;
  sub_10000507C();
  sub_10000507C();
  v57 = v82;
  v82(v56, 0, 1, v54);
  v58 = v52;
  sub_100004FAC();
  v59 = v75;
  v78(v52, 0, 1, v75);
  sub_1000050EC();
  sub_1000050BC();
  v60 = v90;
  v61 = v79;
  v62 = v83;
  (v83)(v90, v79, v55);
  v63 = v60;
  sub_1000050AC();
  v64 = v74;
  sub_100004FCC();
  v70 = v91 + v72 + v88;
  v72 = *(v92 + 48);
  *v70 = 9;
  sub_10000507C();
  sub_10000507C();
  v57(v64, 0, 1, v87);
  sub_100004FAC();
  v78(v58, 0, 1, v59);
  sub_1000050EC();
  sub_1000050BC();
  v65 = v77;
  v62(v63, v61, v77);
  sub_1000050AC();
  sub_100004FCC();
  *(v91 + 10 * v88) = 10;
  sub_10000507C();
  sub_10000507C();
  v82(v64, 0, 1, v87);
  sub_100004FAC();
  v78(v58, 0, 1, v75);
  sub_1000050EC();
  sub_1000050BC();
  (v83)(v63, v79, v65);
  sub_1000050AC();
  sub_100004FCC();
  v66 = sub_100002724(v71);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v66;
}

uint64_t sub_100003E3C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003E84(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003EBC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100003F20()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100003F74(uint64_t a1)
{
  v2 = sub_100003E3C(&qword_10000C0D8, &qword_100005650);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003E3C(&qword_10000C0E0, &qword_100005658);
    v7 = sub_10000511C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100004168(v9, v5, &qword_10000C0D8, &qword_100005650);
      v11 = *v5;
      result = sub_10000230C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100003E3C(&qword_10000C0E8, &unk_100005660);
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

uint64_t sub_100004168(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003E3C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000041D0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008650;
  v6._object = a2;
  v4 = sub_10000512C(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100004224(uint64_t a1)
{
  v2 = sub_100004374();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000042CC();
  sub_1000050DC();
  return 0;
}

unint64_t sub_1000042CC()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

unint64_t sub_100004374()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

unint64_t sub_1000043DC()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

uint64_t sub_100004430()
{
  v0 = sub_10000509C();
  sub_100003EBC(v0, qword_10000C178);
  sub_100003E84(v0, qword_10000C178);
  return sub_10000507C();
}

void *sub_100004494@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100004F6C();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100004508(uint64_t *a1))()
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
  *(v2 + 32) = sub_100004F5C();
  return sub_10000457C;
}

void sub_10000457C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000045C8()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_10000461C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E00();
  v5 = sub_100003F20();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100004698()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_1000046F0()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

unint64_t sub_100004748()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

uint64_t sub_1000047EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_10000509C();
  v3 = sub_100003E84(v2, qword_10000C178);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000048B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100004E00();
  v6 = sub_100004E54();
  v7 = sub_100003F20();
  *v4 = v2;
  v4[1] = sub_100004980;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100004980()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100004A88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004AFC();
  *a1 = result;
  return result;
}

uint64_t sub_100004AB0(uint64_t a1)
{
  v2 = sub_1000045C8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100004AFC()
{
  v17 = sub_10000502C();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003E3C(&qword_10000C128, &qword_100005928);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100003E3C(&qword_10000C098, &qword_100005930);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_10000509C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100003E3C(&qword_10000C130, qword_100005938);
  sub_10000507C();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 11;
  v14 = sub_100004F4C();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_1000019F8();
  return sub_100004F8C();
}

unint64_t sub_100004E00()
{
  result = qword_10000C138;
  if (!qword_10000C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C138);
  }

  return result;
}

unint64_t sub_100004E54()
{
  result = qword_10000C140;
  if (!qword_10000C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C140);
  }

  return result;
}