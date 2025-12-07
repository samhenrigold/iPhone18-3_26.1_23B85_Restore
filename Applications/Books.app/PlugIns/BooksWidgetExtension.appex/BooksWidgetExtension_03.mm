Swift::Int sub_100054984(uint64_t a1)
{
  v2 = *v1;
  sub_1000816B8();
  sub_100054574(v2);
  sub_100081298();

  return sub_1000816F8();
}

unint64_t sub_1000549E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100055D98(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100054A14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100054574(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100054A44()
{
  result = qword_1000AECF0;
  if (!qword_1000AECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AECF0);
  }

  return result;
}

unint64_t sub_100054A9C()
{
  result = qword_1000AECF8;
  if (!qword_1000AECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AECF8);
  }

  return result;
}

uint64_t sub_100054AF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AC6E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100002840(&qword_1000AEDB0, &qword_100089990);
  v3 = sub_10000A480(v2, qword_1000B7FC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100054BA4()
{
  result = qword_1000AED00;
  if (!qword_1000AED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED00);
  }

  return result;
}

unint64_t sub_100054BFC()
{
  result = qword_1000AED08;
  if (!qword_1000AED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED08);
  }

  return result;
}

unint64_t sub_100054C54()
{
  result = qword_1000AED10;
  if (!qword_1000AED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED10);
  }

  return result;
}

uint64_t sub_100054CA8(uint64_t a1)
{
  sub_100055D44();
  v2 = sub_10007FEC8();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100054D18()
{
  result = qword_1000AED18;
  if (!qword_1000AED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED18);
  }

  return result;
}

unint64_t sub_100054D70()
{
  result = qword_1000AED20;
  if (!qword_1000AED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED20);
  }

  return result;
}

unint64_t sub_100054DCC()
{
  result = qword_1000AED28;
  if (!qword_1000AED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED28);
  }

  return result;
}

uint64_t sub_100054E84(uint64_t a1)
{
  v2 = sub_100054A44();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100054ED4()
{
  result = qword_1000AED30;
  if (!qword_1000AED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED30);
  }

  return result;
}

unint64_t sub_100054F2C()
{
  result = qword_1000AED38;
  if (!qword_1000AED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED38);
  }

  return result;
}

unint64_t sub_100054F84()
{
  result = qword_1000AED40;
  if (!qword_1000AED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED40);
  }

  return result;
}

uint64_t sub_100054FD8()
{
  if (qword_1000AC6D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100055034(uint64_t a1)
{
  v2 = sub_100054DCC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100055084()
{
  result = qword_1000AED48;
  if (!qword_1000AED48)
  {
    sub_100004FC8(&qword_1000AED50, &qword_100089700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED48);
  }

  return result;
}

unint64_t sub_1000550FC()
{
  result = qword_1000AED58;
  if (!qword_1000AED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED58);
  }

  return result;
}

uint64_t sub_100055154()
{
  v0 = sub_1000801F8();
  sub_10000A794(v0, qword_1000B7FD8);
  sub_10000A480(v0, qword_1000B7FD8);
  return sub_1000801D8();
}

void *sub_1000551B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007FCE8();
  *a1 = v3;
  return result;
}

uint64_t (*sub_10005522C(uint64_t *a1))()
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
  *(v2 + 32) = sub_10007FCD8();
  return sub_1000552A0;
}

void sub_1000552A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000552EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100055C9C();
  v5 = sub_100055D44();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10005535C()
{
  v0 = qword_1000AECD8;

  return v0;
}

unint64_t sub_10005539C()
{
  result = qword_1000AED60;
  if (!qword_1000AED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED60);
  }

  return result;
}

unint64_t sub_1000553F4()
{
  result = qword_1000AED68;
  if (!qword_1000AED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED68);
  }

  return result;
}

unint64_t sub_10005544C()
{
  result = qword_1000AED70;
  if (!qword_1000AED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED70);
  }

  return result;
}

uint64_t sub_10005554C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_10000A480(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000555F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100055C9C();
  v6 = sub_100055CF0();
  v7 = sub_100055D44();
  *v4 = v2;
  v4[1] = sub_1000556C4;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000556C4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000557CC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100055990();
  *a2 = result;
  return result;
}

uint64_t sub_1000557F4(uint64_t a1)
{
  v2 = sub_10004E7FC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for BooksSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BooksSettingsDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100055990()
{
  v17 = sub_100080078();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000801F8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100002840(&qword_1000AED78, &unk_100089968);
  sub_1000801D8();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 19;
  v14 = sub_10007FBF8();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100054A44();
  return sub_10007FD18();
}

unint64_t sub_100055C9C()
{
  result = qword_1000AED80;
  if (!qword_1000AED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED80);
  }

  return result;
}

unint64_t sub_100055CF0()
{
  result = qword_1000AED88;
  if (!qword_1000AED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED88);
  }

  return result;
}

unint64_t sub_100055D44()
{
  result = qword_1000AED90;
  if (!qword_1000AED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED90);
  }

  return result;
}

unint64_t sub_100055D98(uint64_t a1, uint64_t a2)
{
  v2 = sub_100081638();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100055E00()
{
  result = qword_1000AEDC8;
  if (!qword_1000AEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEDC8);
  }

  return result;
}

unint64_t sub_100055E58()
{
  result = qword_1000AEDD0;
  if (!qword_1000AEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEDD0);
  }

  return result;
}

uint64_t sub_100055F18()
{
  v0 = sub_1000801E8();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1000801F8();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100080478();
  v5 = *(v23 - 8);
  v6 = __chkstk_darwin(v23);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1000811C8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  v22 = v3;
  sub_10000A794(v3, qword_1000B7FF0);
  v21 = sub_10000A480(v3, qword_1000B7FF0);
  sub_100081158();
  sub_100080448();
  (*(v12 + 16))(v15, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v8, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100080208();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_1000562BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AC6F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000801F8();
  v3 = sub_10000A480(v2, qword_1000B7FF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100056368()
{
  result = qword_1000AEDD8;
  if (!qword_1000AEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEDD8);
  }

  return result;
}

uint64_t sub_1000563BC(uint64_t a1)
{
  v2 = sub_1000219C4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100056410()
{
  result = qword_1000AD378;
  if (!qword_1000AD378)
  {
    sub_100004FC8(&qword_1000AD380, &qword_1000872F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD378);
  }

  return result;
}

__n128 sub_100056490(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1000564C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100056514(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 136) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      return result;
    }

    *(a1 + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005659C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 112) & 0x301 | (a2 << 62);
  *(result + 16) &= 1uLL;
  *(result + 112) = v2;
  return result;
}

__n128 sub_1000565D0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000565EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100056634(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1000566C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100056708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100056778(char a1)
{
  v19 = *v1;
  v16 = v19;
  sub_10001EFDC(&v19, &v15);
  v3 = 0;
  v17 = sub_100056928(a1 & 1);
  v18 = v4;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = &v16 + 2 * v3 + 1;
  while (++v3 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10003EE4C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_10003EE4C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_2;
    }
  }

  sub_100002840(&qword_1000ACE48, &unk_100086040);
  swift_arrayDestroy();
  v15 = v5;
  sub_100002840(&qword_1000ACE50, &qword_1000881F0);
  sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0, &protocol conformance descriptor for [A]);
  v13 = sub_100081128();

  return v13;
}

uint64_t sub_100056928(int a1)
{
  v38 = a1;
  v2 = sub_1000811C8();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = __chkstk_darwin(v2);
  v44 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v45 = &v37[-v5];
  v39 = sub_100080248();
  v6 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100080478();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = __chkstk_darwin(v9);
  v40 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v41 = &v37[-v12];
  v13 = sub_100002840(&qword_1000AE678, &unk_100088608);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v37[-v18];
  v20 = sub_1000811A8();
  __chkstk_darwin(v20 - 8);
  v21 = 0;
  if ((*(v1 + 24) & 1) == 0)
  {
    v22 = *(v1 + 16);
    if (v22 != 0.0)
    {
      v23 = (v6 + 8);
      v24 = (v14 + 8);
      if (v38)
      {
        sub_100081198();
        v49._countAndFlagsBits = 0;
        v49._object = 0xE000000000000000;
        sub_100081188(v49);
        v48 = v22;
        v25 = v41;
        sub_100080438();
        sub_100039B5C();
        sub_100080218();
        sub_100080238();
        sub_100080228();
        (*v23)(v8, v39);
        v26 = *v24;
        (*v24)(v17, v13);
        sub_100005C98(&qword_1000AE688, &qword_1000AE678, &unk_100088608, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
        sub_1000057D0();
        sub_100081168();
        v26(v19, v13);
        v27 = v25;
        v28._countAndFlagsBits = 0;
        v28._object = 0xE000000000000000;
      }

      else
      {
        sub_100081198();
        v50._countAndFlagsBits = 0;
        v50._object = 0xE000000000000000;
        sub_100081188(v50);
        v48 = v22;
        v34 = v41;
        sub_100080438();
        sub_100039B5C();
        sub_100080218();
        sub_100080238();
        sub_100080228();
        (*v23)(v8, v39);
        v35 = *v24;
        (*v24)(v17, v13);
        sub_100005C98(&qword_1000AE688, &qword_1000AE678, &unk_100088608, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
        sub_1000057D0();
        sub_100081168();
        v35(v19, v13);
        v27 = v34;
        v28._countAndFlagsBits = 0x74656C706D6F6320;
        v28._object = 0xE900000000000065;
      }

      sub_100081188(v28);
      v29 = v45;
      sub_1000811B8();
      sub_100080448();
      v31 = v46;
      v30 = v47;
      (*(v46 + 16))(v44, v29, v47);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v33 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      sub_100080448();
      v21 = sub_100081258();
      (*(v42 + 8))(v27, v43);
      (*(v31 + 8))(v29, v30);
    }
  }

  return v21;
}

uint64_t sub_100057040()
{
  v1 = sub_100080478();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_1000811C8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = sub_1000811A8();
  __chkstk_darwin(v13 - 8);
  result = 0;
  if ((*(v0 + 16) & 1) == 0)
  {
    v20 = v1;
    v15 = *(v0 + 8);
    sub_100081198();
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_100081188(v22);
    v21 = v15;
    sub_100081178();
    v23._object = 0x8000000100084B80;
    v23._countAndFlagsBits = 0xD000000000000016;
    sub_100081188(v23);
    sub_1000811B8();
    sub_100080448();
    (*(v7 + 16))(v10, v12, v6);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_100080448();
    v18 = sub_100081258();
    (*(v2 + 8))(v5, v20);
    (*(v7 + 8))(v12, v6);
    return v18;
  }

  return result;
}

Swift::Int sub_100057370(uint64_t a1, char a2)
{
  sub_1000816B8();
  if (dword_100089EF0[a2])
  {
    v3 = dword_100089EF0[a2];
  }

  else
  {
    v3 = 0;
  }

  sub_1000816E8(v3);
  return sub_1000816F8();
}

uint64_t sub_1000573C8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 32;
  v22 = BDSCloudAssetTypeStoreAudiobook;
  while (1)
  {
    v5 = *(v3 + 48);
    v4 = *(v3 + 64);
    v6 = *(v3 + 80);
    v25 = *(v3 + 32);
    v26 = v5;
    v7 = *(v3 + 16);
    v24[0] = *v3;
    v24[1] = v7;
    v28 = v6;
    v27 = v4;
    v8 = v25;
    v9 = v5;
    v10 = sub_100081218();
    v12 = v11;
    if (v10 == sub_100081218() && v12 == v13)
    {
      sub_10000C328(v24, v23);
LABEL_8:

      goto LABEL_10;
    }

    v14 = sub_100081618();
    sub_10000C328(v24, v23);

    if ((v14 & 1) == 0)
    {
      if (!v9)
      {
        goto LABEL_3;
      }

      v16 = sub_100081218();
      v18 = v17;
      if (v16 == sub_100081218() && v18 == v19)
      {

        goto LABEL_8;
      }

      v20 = sub_100081618();

      if ((v20 & 1) == 0)
      {
LABEL_3:
        sub_10002B884(v24);
        goto LABEL_4;
      }
    }

LABEL_10:
    if (!*(v0 + 56))
    {
      goto LABEL_3;
    }

    if (*(v0 + 48) == v8)
    {
      break;
    }

    v15 = sub_100081618();
    sub_10002B884(v24);
    if (v15)
    {
      return 1;
    }

LABEL_4:
    v3 += 88;
    if (!--v2)
    {
      return 0;
    }
  }

  sub_10002B884(v24);
  return 1;
}

uint64_t sub_1000575D8()
{
  v1 = sub_100080478();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_1000811C8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = sub_1000811A8();
  __chkstk_darwin(v13 - 8);
  result = 0;
  if ((*(v0 + 16) & 1) == 0)
  {
    v20 = v1;
    v15 = *(v0 + 8);
    sub_100081198();
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_100081188(v22);
    v21 = v15;
    sub_100081178();
    v23._countAndFlagsBits = 0x206F74206E696D20;
    v23._object = 0xEC0000006C616F67;
    sub_100081188(v23);
    sub_1000811B8();
    sub_100080448();
    (*(v7 + 16))(v10, v12, v6);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_100080448();
    v18 = sub_100081258();
    (*(v2 + 8))(v5, v20);
    (*(v7 + 8))(v12, v6);
    return v18;
  }

  return result;
}

uint64_t sub_10005790C()
{
  v1 = sub_100080478();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = sub_1000811C8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = sub_1000811A8();
  __chkstk_darwin(v13 - 8);
  if (*(*(v0 + 32) + 16) && (*(v0 + 16) & 1) == 0)
  {
    v21 = v2;
    v16 = *(v0 + 8);
    sub_100081198();
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    sub_100081188(v23);
    v22 = v16;
    sub_100081178();
    v24._countAndFlagsBits = 0x206F74206E696D20;
    v24._object = 0xEC0000006C616F67;
    sub_100081188(v24);
    sub_1000811B8();
    sub_100080448();
    (*(v7 + 16))(v10, v12, v6);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_100080448();
    v19 = sub_100081258();
    (*(v21 + 8))(v5, v1);
    (*(v7 + 8))(v12, v6);
    return v19;
  }

  else
  {
    sub_100081448();
    sub_100019DAC();
    v14 = sub_1000814F8();
    sub_100080618();

    return 0;
  }
}

void sub_100057CD0()
{
  if (dword_100089EF0[*v0])
  {
    v1 = dword_100089EF0[*v0];
  }

  else
  {
    v1 = 0;
  }

  sub_1000816E8(v1);
}

uint64_t sub_100057D18@<X0>(float *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000586E0(*a1);
  *a2 = result;
  return result;
}

float sub_100057D44@<S0>(float *a1@<X8>)
{
  result = *&dword_100089EF0[*v1];
  *a1 = result;
  return result;
}

uint64_t sub_100057D5C()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 32;
  v22 = BDSCloudAssetTypeStoreAudiobook;
  while (1)
  {
    v5 = *(v3 + 48);
    v4 = *(v3 + 64);
    v6 = *(v3 + 80);
    v25 = *(v3 + 32);
    v26 = v5;
    v7 = *(v3 + 16);
    v24[0] = *v3;
    v24[1] = v7;
    v28 = v6;
    v27 = v4;
    v8 = v25;
    v9 = v5;
    v10 = sub_100081218();
    v12 = v11;
    if (v10 == sub_100081218() && v12 == v13)
    {
      sub_10000C328(v24, v23);
LABEL_8:

      goto LABEL_10;
    }

    v14 = sub_100081618();
    sub_10000C328(v24, v23);

    if ((v14 & 1) == 0)
    {
      if (!v9)
      {
        goto LABEL_3;
      }

      v16 = sub_100081218();
      v18 = v17;
      if (v16 == sub_100081218() && v18 == v19)
      {

        goto LABEL_8;
      }

      v20 = sub_100081618();

      if ((v20 & 1) == 0)
      {
LABEL_3:
        sub_10002B884(v24);
        goto LABEL_4;
      }
    }

LABEL_10:
    if (!*(v0 + 72))
    {
      goto LABEL_3;
    }

    if (*(v0 + 64) == v8)
    {
      break;
    }

    v15 = sub_100081618();
    sub_10002B884(v24);
    if (v15)
    {
      return 1;
    }

LABEL_4:
    v3 += 88;
    if (!--v2)
    {
      return 0;
    }
  }

  sub_10002B884(v24);
  return 1;
}

uint64_t sub_100057F6C()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  sub_100081158();
  sub_100080448();
  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v4, v6, v0);
  v16 = sub_100081268();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_1000581E8()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  sub_100081158();
  sub_100080448();
  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v4, v6, v0);
  v16 = sub_100081268();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_100058464()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  sub_100081158();
  sub_100080448();
  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v4, v6, v0);
  v16 = sub_100081268();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_1000586E0(float a1)
{
  if (a1 == 0.0)
  {
    return 0;
  }

  if (a1 == 0.25)
  {
    return 1;
  }

  if (a1 == 0.75)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  if (a1 == 0.5)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10005872C()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  sub_100081158();
  sub_100080448();
  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v4, v6, v0);
  v16 = sub_100081268();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

unint64_t sub_1000589BC()
{
  result = qword_1000AEDE0;
  if (!qword_1000AEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEDE0);
  }

  return result;
}

id sub_100058A10(uint64_t a1)
{
  v2 = sub_100081008();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080FF8();
  v6 = sub_100080FC8();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_1000AC648 != -1)
    {
      swift_once();
    }

    sub_100005554(qword_1000B7F10, qword_1000B7F28);
    v7 = *(v1 + 32);
    v8 = *(v1 + 40);
    result = sub_10003ABAC(v7, v8, 0);
    if (!result)
    {
      sub_10001F17C(qword_1000B7F10, v13);
      sub_100005554(v13, v13[3]);
      if (_UISolariumEnabled())
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = sub_10003ABAC(v7, v8, v10);
      sub_100019DF8(v13);
      return v11;
    }
  }

  else
  {
    if (qword_1000AC648 != -1)
    {
      swift_once();
    }

    sub_100005554(qword_1000B7F10, qword_1000B7F28);
    return sub_10003ABAC(*(v1 + 32), *(v1 + 40), 0);
  }

  return result;
}

uint64_t sub_100058C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(UIColor);
  v10[4] = a2;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000245E0;
  v10[3] = a3;
  v8 = _Block_copy(v10);
  [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  result = sub_100080E68();
  *a4 = result;
  return result;
}

id sub_100058D84(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 userInterfaceStyle];
  v10 = objc_allocWithZone(UIColor);
  if (v9 == 2)
  {
    v11 = a2;
    v12 = a2;
    v13 = a2;
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v13 = a5;
  }

  return [v10 initWithRed:v11 green:v12 blue:v13 alpha:1.0];
}

double sub_100058E1C@<D0>(uint64_t a1@<X8>)
{
  sub_100002840(&qword_1000AE6E0, &qword_100088640);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100085A40;
  if (qword_1000AC6F8 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = qword_1000AEDE8;
  v3 = qword_1000AC700;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v2 + 40) = qword_1000AEDF0;

  sub_100080F78();
  sub_100080F88();
  sub_100080F38();
  sub_100080818();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_100058F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100058F74()
{
  result = qword_1000AEDF8;
  if (!qword_1000AEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEDF8);
  }

  return result;
}

__n128 sub_100058FD0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_100059004(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005904C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000590E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002840(&qword_1000AEE08, &qword_10008A050);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = sub_100080A78();
  v11 = *(a1 + 144);
  *v9 = v10;
  *(v9 + 1) = v11;
  v9[16] = 0;
  v12 = sub_100002840(&qword_1000AEE10, &qword_10008A058);
  sub_100059238(a1, &v9[*(v12 + 44)]);
  sub_1000055FC(v9, v7, &qword_1000AEE08, &qword_10008A050);
  sub_1000055FC(v7, a2, &qword_1000AEE08, &qword_10008A050);
  v13 = a2 + *(sub_100002840(&qword_1000AEE18, &unk_10008A060) + 48);
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_100005B2C(v9, &qword_1000AEE08, &qword_10008A050);
  return sub_100005B2C(v7, &qword_1000AEE08, &qword_10008A050);
}

uint64_t sub_100059238@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_100002840(&qword_1000ADB80, &unk_100087C70);
  __chkstk_darwin(v3 - 8);
  v68 = &v61 - v4;
  v67 = sub_100002840(&qword_1000AEE20, &unk_10008A070);
  v5 = __chkstk_darwin(v67);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v66 = &v61 - v8;
  __chkstk_darwin(v7);
  v69 = &v61 - v9;
  v63 = sub_100080308();
  v10 = *(v63 - 8);
  __chkstk_darwin(v63);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BookCoverView(0);
  __chkstk_darwin(v13);
  v15 = (&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_100002840(&qword_1000ACE38, &qword_100086000);
  v16 = __chkstk_darwin(v62);
  v65 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v61 - v19;
  __chkstk_darwin(v18);
  v64 = &v61 - v21;
  v22 = a1[4];
  v23 = a1[6];
  v80 = a1[5];
  v81 = v23;
  v24 = a1[6];
  v82[0] = a1[7];
  v25 = a1[3];
  v77 = a1[2];
  v26 = a1[2];
  v27 = a1[3];
  v28 = a1[4];
  v78 = v25;
  v79 = v28;
  v29 = a1[1];
  v75 = *a1;
  v76 = v29;
  v85 = v22;
  v86 = v80;
  v87 = v24;
  *&v82[1] = *(a1 + 16);
  v88 = *(a1 + 112);
  v83 = v26;
  v84 = v27;
  sub_10000C328(&v83, v89);
  sub_1000256C0(&v83, v12);
  v90 = v85;
  v91 = v86;
  v92 = v87;
  v93 = v88;
  v89[0] = v83;
  v89[1] = v84;
  v30 = sub_1000112D4();
  if (*&v82[1])
  {
    if (*(v82 + 8) == v90)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_100081618();
    }
  }

  else
  {
    v31 = 0;
  }

  *v15 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v10 + 32))(v15 + v13[5], v12, v63);
  *(v15 + v13[6]) = v30 & 1;
  v32 = v15 + v13[7];
  v33 = v86;
  *(v32 + 2) = v85;
  *(v32 + 3) = v33;
  *(v32 + 4) = v87;
  v32[80] = v88;
  v34 = v84;
  *v32 = v83;
  *(v32 + 1) = v34;
  *(v15 + v13[8]) = v31 & 1;
  *(v15 + v13[9]) = 0;
  v35 = sub_100080C38();
  sub_100080798();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_10000C384(v15, v20);
  v44 = &v20[*(v62 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = v64;
  sub_10000C1E0(v20, v64, &qword_1000ACE38, &qword_100086000);
  sub_100002840(&qword_1000ADBA0, &unk_100087C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085A40;
  v47 = sub_100080BB8();
  *(inited + 32) = v47;
  v48 = sub_100080BD8();
  *(inited + 33) = v48;
  v49 = sub_100080BC8();
  sub_100080BC8();
  if (sub_100080BC8() != v47)
  {
    v49 = sub_100080BC8();
  }

  sub_100080BC8();
  if (sub_100080BC8() != v48)
  {
    v49 = sub_100080BC8();
  }

  v50 = v68;
  *v68 = v49;
  v51 = sub_100002840(&qword_1000ADBA8, &qword_10008A0B0);
  sub_1000598F8(a1, v50 + *(v51 + 44));
  sub_100080A68();
  sub_100080A18();
  sub_1000807E8();
  v52 = v66;
  sub_10000C1E0(v50, v66, &qword_1000ADB80, &unk_100087C70);
  v53 = (v52 + *(v67 + 36));
  v54 = v73;
  *v53 = v72;
  v53[1] = v54;
  v53[2] = v74;
  v55 = v69;
  sub_10000C1E0(v52, v69, &qword_1000AEE20, &unk_10008A070);
  v56 = v65;
  sub_1000055FC(v45, v65, &qword_1000ACE38, &qword_100086000);
  v57 = v70;
  sub_1000055FC(v55, v70, &qword_1000AEE20, &unk_10008A070);
  v58 = v71;
  sub_1000055FC(v56, v71, &qword_1000ACE38, &qword_100086000);
  v59 = sub_100002840(&qword_1000AEE28, &qword_10008A0B8);
  sub_1000055FC(v57, v58 + *(v59 + 48), &qword_1000AEE20, &unk_10008A070);
  sub_100005B2C(v55, &qword_1000AEE20, &unk_10008A070);
  sub_100005B2C(v45, &qword_1000ACE38, &qword_100086000);
  sub_100005B2C(v57, &qword_1000AEE20, &unk_10008A070);
  return sub_100005B2C(v56, &qword_1000ACE38, &qword_100086000);
}

uint64_t sub_1000598F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for LabelView(0);
  v4 = (v3 - 8);
  v5 = __chkstk_darwin(v3);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v35 - v7);
  v9 = sub_100002840(&qword_1000ADBB0, &unk_10008A0C0);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v35 - v14);
  v16 = *(a1 + 80);
  v39 = *(a1 + 64);
  v40 = v16;
  v41 = *(a1 + 96);
  v42 = *(a1 + 112);
  v17 = *(a1 + 48);
  v37 = *(a1 + 32);
  v38 = v17;
  v18 = sub_100056928(0);
  v20 = v19;
  v21 = *(a1 + 160);
  swift_retain_n();
  v22 = sub_100080B08();
  *v15 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v23 = (v15 + v4[7]);
  *v23 = v18;
  v23[1] = v20;
  *(v15 + v4[8]) = v21;
  v24 = v15 + v4[9];
  *v24 = v22;
  *(v24 + 1) = 0;
  *(v24 + 8) = 1;
  *(v15 + *(v10 + 44)) = 257;
  v25 = sub_100056928(1);
  v27 = v26;
  v28 = sub_100080B08();
  *v8 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v29 = (v8 + v4[7]);
  *v29 = v25;
  v29[1] = v27;
  *(v8 + v4[8]) = v21;
  v30 = v8 + v4[9];
  *v30 = v28;
  *(v30 + 1) = 0;
  *(v30 + 8) = 1;
  sub_1000055FC(v15, v13, &qword_1000ADBB0, &unk_10008A0C0);
  v31 = v35;
  sub_100030D6C(v8, v35);
  v32 = v36;
  sub_1000055FC(v13, v36, &qword_1000ADBB0, &unk_10008A0C0);
  v33 = sub_100002840(&qword_1000ADBB8, &qword_100087CB0);
  sub_100030D6C(v31, v32 + *(v33 + 48));
  sub_100030DD0(v8);
  sub_100005B2C(v15, &qword_1000ADBB0, &unk_10008A0C0);
  sub_100030DD0(v31);
  return sub_100005B2C(v13, &qword_1000ADBB0, &unk_10008A0C0);
}

uint64_t sub_100059BDC@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[9];
  v11[8] = v2[8];
  v11[9] = v4;
  v11[10] = v2[10];
  v5 = v2[5];
  v11[4] = v2[4];
  v11[5] = v5;
  v6 = v2[7];
  v11[6] = v2[6];
  v11[7] = v6;
  v7 = v2[1];
  v11[0] = *v2;
  v11[1] = v7;
  v8 = v2[3];
  v11[2] = v2[2];
  v11[3] = v8;
  *a2 = sub_100080A28();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v9 = sub_100002840(&qword_1000AEE00, &qword_10008A048);
  return sub_1000590E4(v11, a2 + *(v9 + 44));
}

uint64_t sub_100059C70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100059CB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100059D14()
{
  result = qword_1000AEE30;
  if (!qword_1000AEE30)
  {
    sub_100004FC8(&qword_1000AEE38, &unk_10008A108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEE30);
  }

  return result;
}

uint64_t sub_100059D78()
{
  v0 = [objc_opt_self() books];
  v1 = [v0 userDefaults];

  v2 = sub_1000811D8();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_100081548();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_100059EA4(v8);
  }

  return 0;
}

uint64_t sub_100059EA4(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD598, &qword_1000874B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100059F0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100059F68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100059FD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005A020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005A0BC()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  sub_100081158();
  sub_100080448();
  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v4, v6, v0);
  v16 = sub_100081268();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_10005A334@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v66 = a2;
  v3 = sub_100002840(&qword_1000AEE50, &qword_10008A248);
  __chkstk_darwin(v3 - 8);
  v5 = &v53[-v4];
  v6 = sub_100002840(&qword_1000AEE58, &qword_10008A250);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v64 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v12 = &v53[-v11];
  __chkstk_darwin(v10);
  v67 = &v53[-v13];
  v14 = sub_10005A0BC();
  v62 = v15;
  v63 = v14;
  v65 = *(a1 + 120);
  sub_100080A68();
  sub_100080A18();
  sub_1000807E8();
  v60 = v90;
  v61 = v88;
  v58 = v93;
  v59 = v92;
  v96 = v89;
  v95 = v91;
  v57 = sub_100080C38();
  sub_100080798();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v68 = v96;
  v24 = v95;
  v54 = v95;
  LOBYTE(v87[0]) = 0;
  *v5 = sub_100080A28();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v56 = *(sub_100002840(&qword_1000AEE60, &qword_10008A258) + 44);
  v94 = *(a1 + 32);
  v75[0] = v94;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  v26 = *(a1 + 144);
  v25[9] = *(a1 + 128);
  v25[10] = v26;
  v25[11] = *(a1 + 160);
  v27 = *(a1 + 80);
  v25[5] = *(a1 + 64);
  v25[6] = v27;
  v28 = *(a1 + 112);
  v25[7] = *(a1 + 96);
  v25[8] = v28;
  v29 = *(a1 + 16);
  v25[1] = *a1;
  v25[2] = v29;
  v30 = *(a1 + 48);
  v25[3] = *(a1 + 32);
  v25[4] = v30;
  sub_1000055FC(&v94, v87, &qword_1000ACDC8, &qword_100085FB0);
  sub_10002B9A0(a1, v87);
  sub_100002840(&qword_1000ACDC8, &qword_100085FB0);
  sub_100002840(&qword_1000AEE68, &qword_10008A290);
  sub_100005C98(&qword_1000ACDD8, &qword_1000ACDC8, &qword_100085FB0, &protocol conformance descriptor for [A]);
  sub_10005BC38();
  sub_100080F28();
  sub_100080F48();
  sub_1000808F8();
  sub_10000C1E0(v5, v12, &qword_1000AEE50, &qword_10008A248);
  v31 = &v12[*(v7 + 44)];
  v32 = v87[5];
  v31[4] = v87[4];
  v31[5] = v32;
  v31[6] = v87[6];
  v33 = v87[1];
  *v31 = v87[0];
  v31[1] = v33;
  v34 = v87[3];
  v31[2] = v87[2];
  v31[3] = v34;
  v35 = v67;
  sub_10000C1E0(v12, v67, &qword_1000AEE58, &qword_10008A250);
  v36 = v35;
  v37 = v64;
  sub_10005BDB8(v36, v64);
  v39 = v62;
  v38 = v63;
  *&v69 = v63;
  *(&v69 + 1) = v62;
  v41 = v60;
  v40 = v61;
  *&v70 = v61;
  BYTE8(v70) = v68;
  *&v71 = v60;
  BYTE8(v71) = v24;
  v42 = v58;
  v43 = v59;
  *&v72 = v59;
  *(&v72 + 1) = v58;
  v44 = v57;
  LOBYTE(v73) = v57;
  *(&v73 + 1) = v17;
  *&v74[0] = v19;
  *(&v74[0] + 1) = v21;
  *&v74[1] = v23;
  BYTE8(v74[1]) = 0;
  v45 = v70;
  v47 = v65;
  v46 = v66;
  *v66 = v69;
  v46[1] = v45;
  v48 = v71;
  v49 = v72;
  *(v46 + 89) = *(v74 + 9);
  v50 = v74[0];
  v46[4] = v73;
  v46[5] = v50;
  v46[2] = v48;
  v46[3] = v49;
  *(v46 + 14) = v47;
  *(v46 + 120) = 0;
  v51 = v46 + *(sub_100002840(&qword_1000AEE98, &unk_10008A2A8) + 64);
  sub_10005BDB8(v37, v51);
  sub_1000055FC(&v69, v75, &qword_1000ACE10, &qword_100086460);
  sub_10005BE28(v67);
  sub_10005BE28(v37);
  v75[0] = v38;
  v75[1] = v39;
  v75[2] = v40;
  v76 = v68;
  v77 = v41;
  v78 = v54;
  v79 = v43;
  v80 = v42;
  v81 = v44;
  v82 = v17;
  v83 = v19;
  v84 = v21;
  v85 = v23;
  v86 = 0;
  return sub_100005B2C(v75, &qword_1000ACE10, &qword_100086460);
}

uint64_t sub_10005A838@<X0>(__int128 *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v31 = sub_100080B68();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000AEE90, &qword_10008A2A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_100002840(&qword_1000AEE78, &qword_10008A298);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v32 = sub_100002840(&qword_1000AEEA0, &qword_10008A2B8);
  v14 = *(v32 - 8);
  __chkstk_darwin(v32);
  v16 = &v30 - v15;
  v17 = a1[3];
  v47 = a1[2];
  v48 = v17;
  v49 = a1[4];
  v50 = *(a1 + 80);
  v18 = a1[1];
  v45 = *a1;
  v46 = v18;
  *v10 = sub_100080A28();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = sub_100002840(&qword_1000AEEA8, &qword_10008A2C0);
  sub_10005AC30(a2, &v45, &v10[*(v19 + 44)]);
  sub_100080F48();
  sub_1000808F8();
  sub_10000C1E0(v10, v13, &qword_1000AEE90, &qword_10008A2A0);
  v20 = &v13[*(v11 + 36)];
  v21 = v43;
  *(v20 + 4) = v42;
  *(v20 + 5) = v21;
  *(v20 + 6) = v44;
  v22 = v39;
  *v20 = v38;
  *(v20 + 1) = v22;
  v23 = v41;
  *(v20 + 2) = v40;
  *(v20 + 3) = v23;
  v51 = v45;
  v52 = v46;
  v56 = v50;
  v54 = v48;
  v55 = v49;
  v53 = v47;
  if (sub_1000112D4())
  {
    sub_100080B58();
  }

  else
  {
    sub_100080B48();
  }

  v24 = sub_10005BD00();
  sub_100080E08();
  (*(v5 + 8))(v7, v31);
  sub_100005B2C(v13, &qword_1000AEE78, &qword_10008A298);
  if (sub_1000112D4())
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v25 = sub_100056778(1);
    v26 = v27;
  }

  v36 = v25;
  v37 = v26;
  v34 = v11;
  v35 = v24;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  v28 = v32;
  sub_100080DD8();

  return (*(v14 + 8))(v16, v28);
}

uint64_t sub_10005AC30@<X0>(double *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v5 = sub_100002840(&qword_1000AEEB0, &qword_10008A2C8);
  v79 = *(v5 - 8);
  v80 = v5;
  __chkstk_darwin(v5);
  v88 = &v77 - v6;
  v7 = sub_100002840(&qword_1000AEEB8, &unk_10008A2D0);
  v8 = __chkstk_darwin(v7 - 8);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v77 - v10;
  v85 = sub_100080308();
  v11 = *(v85 - 8);
  v12 = __chkstk_darwin(v85);
  v86 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v77 - v14;
  v16 = type metadata accessor for BookCoverView(0);
  __chkstk_darwin(v16);
  v18 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_100002840(&qword_1000ACE38, &qword_100086000);
  v19 = __chkstk_darwin(v84);
  v78 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v77 - v22;
  __chkstk_darwin(v21);
  v87 = &v77 - v24;
  v25 = *(a1 + 1);
  v100 = *a1;
  v101 = v25;
  v26 = *(a1 + 3);
  v102 = *(a1 + 2);
  v103 = v26;
  sub_1000253FC(a2, v15);
  v27 = a2[3];
  v96 = a2[2];
  v97 = v27;
  v98 = a2[4];
  v99 = *(a2 + 80);
  v28 = a2[1];
  v94 = *a2;
  v95 = v28;
  v29 = sub_1000112D4();
  if (*(&v103 + 1))
  {
    if (v103 == v96)
    {
      v30 = 1;
    }

    else
    {
      v30 = sub_100081618();
    }
  }

  else
  {
    v30 = 0;
  }

  *v18 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v11 + 32))(v18 + v16[5], v15, v85);
  *(v18 + v16[6]) = v29 & 1;
  v31 = v18 + v16[7];
  v32 = a2[3];
  *(v31 + 2) = a2[2];
  *(v31 + 3) = v32;
  *(v31 + 4) = a2[4];
  v31[80] = *(a2 + 80);
  v33 = a2[1];
  *v31 = *a2;
  *(v31 + 1) = v33;
  *(v18 + v16[8]) = v30 & 1;
  *(v18 + v16[9]) = 0;
  sub_10000C328(a2, v93);
  v34 = sub_100080C38();
  sub_100080798();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10000C384(v18, v23);
  v43 = &v23[*(v84 + 36)];
  *v43 = v34;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  sub_10000C1E0(v23, v87, &qword_1000ACE38, &qword_100086000);
  v44 = sub_1000253FC(a2, v86);
  __chkstk_darwin(v44);
  *(&v77 - 2) = a1;
  *(&v77 - 1) = a2;
  sub_100002840(&qword_1000AEEC0, &qword_10008A318);
  sub_10005BEA0();
  sub_100080CE8();
  v93[0] = v94;
  v90 = v94;
  sub_1000055FC(v93, v89, &qword_1000ACE48, &unk_100086040);
  v45 = 0;
  v91 = sub_100056928(0);
  v92 = v46;
  v47 = _swiftEmptyArrayStorage;
LABEL_7:
  v48 = &v90 + 2 * v45 + 1;
  while (++v45 != 3)
  {
    v49 = v48 + 2;
    v50 = *v48;
    v48 += 2;
    if (v50)
    {
      v51 = *(v49 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_10003EE4C(0, *(v47 + 2) + 1, 1, v47);
      }

      v53 = *(v47 + 2);
      v52 = *(v47 + 3);
      if (v53 >= v52 >> 1)
      {
        v47 = sub_10003EE4C((v52 > 1), v53 + 1, 1, v47);
      }

      *(v47 + 2) = v53 + 1;
      v54 = &v47[16 * v53];
      *(v54 + 4) = v51;
      *(v54 + 5) = v50;
      goto LABEL_7;
    }
  }

  sub_100002840(&qword_1000ACE48, &unk_100086040);
  result = swift_arrayDestroy();
  v56 = 0;
  v57 = *(v47 + 2);
  v58 = _swiftEmptyArrayStorage;
LABEL_16:
  v59 = &v47[16 * v56 + 40];
  while (1)
  {
    if (v57 == v56)
    {

      v89[0] = v58;
      sub_100002840(&qword_1000ACE50, &qword_1000881F0);
      sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0, &protocol conformance descriptor for [A]);
      v66 = sub_100081128();
      v68 = v67;

      v89[0] = v66;
      v89[1] = v68;
      sub_100005C98(&qword_1000AEEE0, &qword_1000AEEB0, &qword_10008A2C8, &protocol conformance descriptor for Link<A>);
      sub_1000057D0();
      v69 = v80;
      v70 = v81;
      v71 = v88;
      sub_100080DD8();

      (*(v79 + 8))(v71, v69);
      v72 = v87;
      v73 = v78;
      sub_1000055FC(v87, v78, &qword_1000ACE38, &qword_100086000);
      v74 = v82;
      sub_1000055FC(v70, v82, &qword_1000AEEB8, &unk_10008A2D0);
      v75 = v83;
      sub_1000055FC(v73, v83, &qword_1000ACE38, &qword_100086000);
      v76 = sub_100002840(&qword_1000AEEE8, &qword_10008A328);
      sub_1000055FC(v74, v75 + *(v76 + 48), &qword_1000AEEB8, &unk_10008A2D0);
      sub_100005B2C(v70, &qword_1000AEEB8, &unk_10008A2D0);
      sub_100005B2C(v72, &qword_1000ACE38, &qword_100086000);
      sub_100005B2C(v74, &qword_1000AEEB8, &unk_10008A2D0);
      return sub_100005B2C(v73, &qword_1000ACE38, &qword_100086000);
    }

    if (v56 >= *(v47 + 2))
    {
      break;
    }

    ++v56;
    v61 = *(v59 - 1);
    v60 = *v59;
    v59 += 16;
    v62 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v62 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v89[0] = v58;
      if ((result & 1) == 0)
      {
        result = sub_100061B34(0, v58[2] + 1, 1);
        v58 = v89[0];
      }

      v64 = v58[2];
      v63 = v58[3];
      if (v64 >= v63 >> 1)
      {
        result = sub_100061B34((v63 > 1), v64 + 1, 1);
        v58 = v89[0];
      }

      v58[2] = v64 + 1;
      v65 = &v58[2 * v64];
      v65[4] = v61;
      v65[5] = v60;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_10005B4E8@<Q0>(double *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100002840(&qword_1000AEED8, &qword_10008A320);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  *v8 = sub_100080A78();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = sub_100002840(&qword_1000AEEF0, &qword_10008A330);
  sub_10005B64C(a1, a2, &v8[*(v9 + 44)]);
  sub_100080F58();
  sub_1000808F8();
  sub_10000C1E0(v8, a3, &qword_1000AEED8, &qword_10008A320);
  v10 = a3 + *(sub_100002840(&qword_1000AEEC0, &qword_10008A318) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_10005B64C@<X0>(double *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v55 = type metadata accessor for LabelView(0);
  v6 = __chkstk_darwin(v55);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (v53 - v9);
  if (*(*(a1 + 4) + 16) == 2)
  {
    v53[1] = a2;
    v54 = v8;
    v11 = a2[1];
    if (v11)
    {
      *&v70 = *a2;
      *(&v70 + 1) = v11;
      sub_1000057D0();

      v12 = sub_100080D28();
      v14 = v13;
      v16 = v15;
      *&v61 = a1[14];
      *&v60 = a1[21];
      *&v57 = sub_100080CF8();
      v18 = v17;
      v20 = v19;
      *&v56 = v21;
      sub_10000EF24(v12, v14, v16 & 1);

      sub_100080CA8();
      v22 = v57;
      *&v59 = sub_100080D18();
      *&v58 = v23;
      v25 = v24;
      *&v60 = v26;

      sub_10000EF24(v22, v18, v20 & 1);

      KeyPath = swift_getKeyPath();
      v65 = v25 & 1;
      v63 = 0;
      v62 = 0;
      *&v66 = v59;
      *(&v66 + 1) = v58;
      LOBYTE(v67) = v25 & 1;
      *(&v67 + 1) = v64[0];
      DWORD1(v67) = *(v64 + 3);
      *(&v67 + 1) = v60;
      *&v68 = KeyPath;
      *(&v68 + 1) = v61;
      v69[0] = 0;
      *&v69[33] = v79;
      *&v69[17] = v78;
      *&v69[1] = v77;
      v69[49] = 0;
    }

    else
    {
      LODWORD(v61) = sub_100080B08();
      sub_100080F48();
      sub_1000807E8();
      v29 = v77;
      v30 = BYTE8(v77);
      v31 = v78;
      v32 = BYTE8(v78);
      *&v60 = *(&v79 + 1);
      v33 = v79;
      v34 = sub_100080C08();
      sub_100080798();
      LOBYTE(v70) = v30;
      LOBYTE(v64[0]) = 1;
      LODWORD(v66) = v61;
      *(&v66 + 1) = v29;
      LOBYTE(v67) = v30;
      *(&v67 + 1) = v31;
      LOBYTE(v68) = v32;
      *(&v68 + 1) = v33;
      *v69 = v60;
      v69[8] = v34;
      *&v69[16] = v35;
      *&v69[24] = v36;
      *&v69[32] = v37;
      *&v69[40] = v38;
      *&v69[48] = 256;
    }

    sub_100002840(&qword_1000AEF08, &qword_10008A348);
    sub_100002840(&qword_1000AEF10, &qword_10008A350);
    sub_10005BF58();
    sub_10005C010();
    sub_100080AD8();
    v60 = v71;
    v61 = v70;
    v58 = v72;
    v59 = v73;
    v56 = v74;
    v57 = v75;
    v28 = v76;
    v8 = v54;
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
    v28 = -256;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
  }

  v39 = sub_100056928(1);
  v41 = v40;
  v42 = *(a1 + 10);
  v43 = *(a1 + 21);

  v44 = sub_100080B28();
  *v10 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v45 = v55;
  v46 = (v10 + *(v55 + 20));
  *v46 = v39;
  v46[1] = v41;
  *(v10 + *(v45 + 24)) = v43;
  v47 = v10 + *(v45 + 28);
  *v47 = v44;
  *(v47 + 1) = v42;
  *(v47 + 8) = 0;
  sub_100030D6C(v10, v8);
  v66 = v61;
  v67 = v60;
  *v69 = v59;
  v68 = v58;
  *&v69[16] = v56;
  *&v69[32] = v57;
  *&v69[48] = v28;
  *(a3 + 96) = v28;
  v48 = *&v69[32];
  *(a3 + 64) = *&v69[16];
  *(a3 + 80) = v48;
  v49 = v67;
  *a3 = v66;
  *(a3 + 16) = v49;
  v50 = *v69;
  *(a3 + 32) = v68;
  *(a3 + 48) = v50;
  v51 = sub_100002840(&qword_1000AEEF8, &qword_10008A338);
  sub_100030D6C(v8, a3 + *(v51 + 48));
  sub_1000055FC(&v66, &v70, &qword_1000AEF00, &qword_10008A340);
  sub_100030DD0(v10);
  sub_100030DD0(v8);
  v70 = v61;
  v71 = v60;
  v72 = v58;
  v73 = v59;
  v74 = v56;
  v75 = v57;
  v76 = v28;
  return sub_100005B2C(&v70, &qword_1000AEF00, &qword_10008A340);
}

uint64_t sub_10005BB2C@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[9];
  v12[8] = v2[8];
  v12[9] = v4;
  v12[10] = v2[10];
  v5 = v2[5];
  v12[4] = v2[4];
  v12[5] = v5;
  v6 = v2[7];
  v12[6] = v2[6];
  v12[7] = v6;
  v7 = v2[1];
  v12[0] = *v2;
  v12[1] = v7;
  v8 = v2[3];
  v12[2] = v2[2];
  v12[3] = v8;
  *a2 = sub_100080A28();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v9 = a2 + *(sub_100002840(&qword_1000AEE40, &qword_10008A238) + 44);
  *v9 = sub_100080A78();
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  v10 = sub_100002840(&qword_1000AEE48, &qword_10008A240);
  return sub_10005A334(v12, (v9 + *(v10 + 44)));
}

uint64_t sub_10005BBE0()
{

  return _swift_deallocObject(v0, 192, 7);
}

unint64_t sub_10005BC38()
{
  result = qword_1000AEE70;
  if (!qword_1000AEE70)
  {
    sub_100004FC8(&qword_1000AEE68, &qword_10008A290);
    sub_100004FC8(&qword_1000AEE78, &qword_10008A298);
    sub_10005BD00();
    swift_getOpaqueTypeConformance2();
    sub_1000249A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEE70);
  }

  return result;
}

unint64_t sub_10005BD00()
{
  result = qword_1000AEE80;
  if (!qword_1000AEE80)
  {
    sub_100004FC8(&qword_1000AEE78, &qword_10008A298);
    sub_100005C98(&qword_1000AEE88, &qword_1000AEE90, &qword_10008A2A0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEE80);
  }

  return result;
}

uint64_t sub_10005BDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AEE58, &qword_10008A250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005BE28(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AEE58, &qword_10008A250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10005BEA0()
{
  result = qword_1000AEEC8;
  if (!qword_1000AEEC8)
  {
    sub_100004FC8(&qword_1000AEEC0, &qword_10008A318);
    sub_100005C98(&qword_1000AEED0, &qword_1000AEED8, &qword_10008A320, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEEC8);
  }

  return result;
}

unint64_t sub_10005BF58()
{
  result = qword_1000AEF18;
  if (!qword_1000AEF18)
  {
    sub_100004FC8(&qword_1000AEF08, &qword_10008A348);
    sub_100005C98(&qword_1000AEF20, &qword_1000AEF28, &qword_10008A358, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF18);
  }

  return result;
}

unint64_t sub_10005C010()
{
  result = qword_1000AEF30;
  if (!qword_1000AEF30)
  {
    sub_100004FC8(&qword_1000AEF10, &qword_10008A350);
    sub_10005C09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF30);
  }

  return result;
}

unint64_t sub_10005C09C()
{
  result = qword_1000AEF38;
  if (!qword_1000AEF38)
  {
    sub_100004FC8(&qword_1000AEF40, &qword_10008A360);
    sub_10005C128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF38);
  }

  return result;
}

unint64_t sub_10005C128()
{
  result = qword_1000AEF48;
  if (!qword_1000AEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF48);
  }

  return result;
}

__n128 sub_10005C184(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10005C1A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005C1F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double WidgetReadingHistory.Day.progressForGoal.getter(uint64_t a1, uint64_t a2)
{
  if (a1 >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  return v2 / a2;
}

uint64_t WidgetReadingHistory.Day.minutesRemainingForGoal.getter(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = ceil((a2 - result) / 60.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.22337204e18)
  {
    return v2 & ~(v2 >> 63);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t WidgetReadingHistory.State.daysSinceLastReadDate.getter()
{
  v1 = sub_1000803D8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - v14;
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = *(v0 + 32);
  v19 = *(v18 + 16);
  if (v19)
  {
    v26 = v2;
    v27 = v1;
    v20 = v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    *&result = COERCE_DOUBLE(sub_100043DFC(v20, v12));
    if (v19 == 1)
    {
LABEL_3:
      sub_100043E60(v12, v15);
      sub_100043E60(v15, v17);
      sub_1000803B8();
      sub_100080348();
      v23 = v22;
      (*(v26 + 8))(v4, v27);
      sub_100043DA0(v17);
      *&result = v23 / 60.0 / 60.0 / 24.0;
    }

    else
    {
      v24 = 1;
      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        sub_100043DFC(v20 + *(v6 + 72) * v24, v9);
        if (sub_100080378())
        {
          sub_100043DA0(v12);
          *&result = COERCE_DOUBLE(sub_100043E60(v9, v12));
        }

        else
        {
          *&result = COERCE_DOUBLE(sub_100043DA0(v9));
        }

        ++v24;
        if (v25 == v19)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

id sub_10005C5EC()
{
  v0 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = [objc_opt_self() defaultManager];
  v4 = sub_1000811D8();
  v5 = [v3 URLForUbiquityContainerIdentifier:v4];

  if (v5)
  {
    sub_1000802C8();

    v6 = sub_100080308();
    (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  }

  else
  {
    v7 = sub_100080308();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  }

  sub_100005B2C(v2, &qword_1000AD3B0, &unk_100087320);
  return [objc_allocWithZone(BDSBookWidgetDataSource) init];
}

uint64_t sub_10005C784(uint64_t a1, uint64_t a2)
{
  v3[145] = v2;
  v3[144] = a2;
  v3[143] = a1;
  v4 = sub_100081038();
  v3[146] = v4;
  v3[147] = *(v4 - 8);
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  v3[150] = swift_task_alloc();

  return _swift_task_switch(sub_10005C864, 0, 0);
}

uint64_t sub_10005C864(uint64_t a1)
{
  v65 = v1;
  if (sub_100062184())
  {
    if (qword_1000AC710 != -1)
    {
      swift_once();
    }

    v2 = sub_1000806F8();
    *(v1 + 1208) = sub_10000A480(v2, qword_1000AEF68);
    v3 = sub_1000806D8();
    v4 = sub_100081468();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Reading Goals is on in Books settings. Fetching reading history data.", v5, 2u);
    }

    v6 = (v1 + 208);
    v7 = *(v1 + 1160);

    v8 = *(v7 + 24);
    *(v1 + 208) = v1;
    *(v1 + 248) = v1 + 1104;
    *(v1 + 216) = sub_10005D2C4;
    v9 = swift_continuation_init();
    *(v1 + 1016) = sub_100002840(&qword_1000AF160, &qword_10008A6B8);
    *(v1 + 992) = v9;
    *(v1 + 960) = _NSConcreteStackBlock;
    *(v1 + 968) = 1107296256;
    *(v1 + 976) = sub_10005F978;
    *(v1 + 984) = &unk_1000A8C88;
    [v8 bookWidgetReadingHistoryStateInfoWithCompletionHandler:v1 + 960];
    goto LABEL_22;
  }

  if (qword_1000AC710 != -1)
  {
    swift_once();
  }

  v10 = sub_1000806F8();
  sub_10000A480(v10, qword_1000AEF68);
  v11 = sub_1000806D8();
  v12 = sub_100081468();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reading Goals is off in Books settings. No reading history data was fetched.", v13, 2u);
  }

  *(v1 + 1216) = 0;
  *(v1 + 1024) = 0u;
  *(v1 + 1040) = 0u;
  *(v1 + 1056) = 0;
  if (qword_1000AC710 != -1)
  {
    swift_once();
  }

  *(v1 + 1224) = sub_10000A480(v10, qword_1000AEF68);
  v14 = sub_1000806D8();
  v15 = sub_100081468();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Fetching book data from the daemon.", v16, 2u);
  }

  v17 = *(v1 + 1200);
  v18 = *(v1 + 1176);
  v19 = *(v1 + 1168);
  v20 = *(v1 + 1152);

  v21 = *(v18 + 16);
  *(v1 + 1232) = v21;
  *(v1 + 1240) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v17, v20, v19);
  v22 = (*(v18 + 88))(v17, v19);
  if (v22 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_16;
  }

  if (v22 == enum case for WidgetFamily.systemMedium(_:))
  {
    v25 = v1 + 832;
    v6 = (v1 + 80);
    v26 = *(*(v1 + 1160) + 16);
    *(v1 + 80) = v1;
    *(v1 + 120) = v1 + 1128;
    *(v1 + 88) = sub_10005E090;
    v27 = swift_continuation_init();
    *(v1 + 888) = sub_100002840(&qword_1000AF158, &qword_10008A6A8);
    *(v1 + 864) = v27;
    *(v1 + 832) = _NSConcreteStackBlock;
    *(v1 + 840) = 1107296256;
    *(v1 + 848) = sub_10005FD04;
    *(v1 + 856) = &unk_1000A8C38;
LABEL_21:
    [v26 getBookWidgetDataWithLimit:3 completion:v25];
LABEL_22:
    v29 = v6;

    return _swift_continuation_await(v29);
  }

  if (v22 == enum case for WidgetFamily.systemLarge(_:))
  {
    v6 = (v1 + 16);
    v25 = v1 + 768;
    v26 = *(*(v1 + 1160) + 16);
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 1120;
    *(v1 + 24) = sub_10005E47C;
    v28 = swift_continuation_init();
    *(v1 + 824) = sub_100002840(&qword_1000AF158, &qword_10008A6A8);
    *(v1 + 800) = v28;
    *(v1 + 768) = _NSConcreteStackBlock;
    *(v1 + 776) = 1107296256;
    *(v1 + 784) = sub_10005FD04;
    *(v1 + 792) = &unk_1000A8C10;
    goto LABEL_21;
  }

  if (v22 == enum case for WidgetFamily.accessoryCorner(_:))
  {
LABEL_16:
    v6 = (v1 + 144);
    v23 = *(*(v1 + 1160) + 16);
    *(v1 + 144) = v1;
    *(v1 + 184) = v1 + 1136;
    *(v1 + 152) = sub_10005DCA4;
    v24 = swift_continuation_init();
    *(v1 + 952) = sub_100002840(&qword_1000AF158, &qword_10008A6A8);
    *(v1 + 928) = v24;
    *(v1 + 896) = _NSConcreteStackBlock;
    *(v1 + 904) = 1107296256;
    *(v1 + 912) = sub_10005FD04;
    *(v1 + 920) = &unk_1000A8C60;
    [v23 getBookWidgetDataWithLimit:1 completion:v1 + 896];
    goto LABEL_22;
  }

  v21(*(v1 + 1192), *(v1 + 1152), *(v1 + 1168));
  v30 = sub_1000806D8();
  v31 = sub_100081458();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v1 + 1192);
  v34 = *(v1 + 1176);
  v35 = *(v1 + 1168);
  if (v32)
  {
    v36 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = v63;
    *v36 = 136315138;
    sub_100063130();
    v62 = sub_100081608();
    v38 = v37;
    v39 = *(v34 + 8);
    v39(v33, v35);
    v40 = sub_10006150C(v62, v38, &v64);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "Widget family '%s' is not supported", v36, 0xCu);
    sub_100019DF8(v63);
  }

  else
  {

    v39 = *(v34 + 8);
    v39(v33, v35);
  }

  v39(*(v1 + 1200), *(v1 + 1168));
  if (_swiftEmptyArrayStorage >> 62)
  {
    v41 = sub_1000815B8();
    if (v41)
    {
      goto LABEL_31;
    }

LABEL_41:
    v43 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v41 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v41)
  {
    goto LABEL_41;
  }

LABEL_31:
  v64 = _swiftEmptyArrayStorage;
  v29 = sub_100061B14(0, v41 & ~(v41 >> 63), 0);
  if (v41 < 0)
  {
    __break(1u);
    return _swift_continuation_await(v29);
  }

  v42 = 0;
  v43 = v64;
  do
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v44 = sub_100081598();
    }

    else
    {
      v44 = _swiftEmptyArrayStorage[v42 + 4];
    }

    v45 = v44;
    sub_10005FDF4(v1 + 680);

    v64 = v43;
    v47 = v43[2];
    v46 = v43[3];
    if (v47 >= v46 >> 1)
    {
      sub_100061B14((v46 > 1), v47 + 1, 1);
      v43 = v64;
    }

    ++v42;
    v43[2] = v47 + 1;
    v48 = &v43[11 * v47];
    v49 = *(v1 + 696);
    *(v48 + 2) = *(v1 + 680);
    *(v48 + 3) = v49;
    v50 = *(v1 + 712);
    v51 = *(v1 + 728);
    v52 = *(v1 + 744);
    *(v48 + 112) = *(v1 + 760);
    *(v48 + 5) = v51;
    *(v48 + 6) = v52;
    *(v48 + 4) = v50;
  }

  while (v41 != v42);
LABEL_42:

  *(v1 + 1272) = v43;

  v53 = sub_1000806D8();
  v54 = sub_100081468();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v64 = v56;
    *v55 = 134218242;
    *(v55 + 4) = v43[2];

    *(v55 + 12) = 2080;
    v57 = sub_100081388();
    v59 = sub_10006150C(v57, v58, &v64);

    *(v55 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v53, v54, "Done fetching book data from the daemon. %ld bookInfos: %s.", v55, 0x16u);
    sub_100019DF8(v56);
  }

  else
  {
  }

  v60 = swift_task_alloc();
  *(v1 + 1280) = v60;
  *v60 = v1;
  v60[1] = sub_10005E868;

  return sub_100062420(v43);
}

uint64_t sub_10005D2C4()
{

  return _swift_task_switch(sub_10005D3A4, 0, 0);
}

uint64_t sub_10005D3A4(uint64_t a1)
{
  v65 = v1;
  v2 = *(v1 + 1104);
  if (v2)
  {
    v3 = v2;
    sub_10005F9EC((v1 + 1064));
    v4 = *(v1 + 1064);
    v5 = *(v1 + 1072);
    v6 = *(v1 + 1080);
    v7 = *(v1 + 1088);
    v8 = *(v1 + 1096);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v9 = sub_1000806D8();
  v10 = sub_100081468();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Done fetching reading history data from the daemon.", v11, 2u);
  }

  *(v1 + 1216) = v8;
  *(v1 + 1024) = v4;
  *(v1 + 1032) = v5;
  *(v1 + 1040) = v6;
  *(v1 + 1048) = v7;
  *(v1 + 1056) = v8;
  if (qword_1000AC710 != -1)
  {
    swift_once();
  }

  v12 = sub_1000806F8();
  *(v1 + 1224) = sub_10000A480(v12, qword_1000AEF68);
  v13 = sub_1000806D8();
  v14 = sub_100081468();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Fetching book data from the daemon.", v15, 2u);
  }

  v16 = *(v1 + 1200);
  v17 = *(v1 + 1176);
  v18 = *(v1 + 1168);
  v19 = *(v1 + 1152);

  v20 = *(v17 + 16);
  *(v1 + 1232) = v20;
  *(v1 + 1240) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v16, v19, v18);
  v21 = (*(v17 + 88))(v16, v18);
  if (v21 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_11;
  }

  if (v21 == enum case for WidgetFamily.systemMedium(_:))
  {
    v25 = v1 + 832;
    v22 = (v1 + 80);
    v26 = *(*(v1 + 1160) + 16);
    *(v1 + 80) = v1;
    *(v1 + 120) = v1 + 1128;
    *(v1 + 88) = sub_10005E090;
    v27 = swift_continuation_init();
    *(v1 + 888) = sub_100002840(&qword_1000AF158, &qword_10008A6A8);
    *(v1 + 864) = v27;
    *(v1 + 832) = _NSConcreteStackBlock;
    *(v1 + 840) = 1107296256;
    *(v1 + 848) = sub_10005FD04;
    *(v1 + 856) = &unk_1000A8C38;
LABEL_16:
    [v26 getBookWidgetDataWithLimit:3 completion:v25];
LABEL_17:
    v29 = v22;

    return _swift_continuation_await(v29);
  }

  if (v21 == enum case for WidgetFamily.systemLarge(_:))
  {
    v22 = (v1 + 16);
    v25 = v1 + 768;
    v26 = *(*(v1 + 1160) + 16);
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 1120;
    *(v1 + 24) = sub_10005E47C;
    v28 = swift_continuation_init();
    *(v1 + 824) = sub_100002840(&qword_1000AF158, &qword_10008A6A8);
    *(v1 + 800) = v28;
    *(v1 + 768) = _NSConcreteStackBlock;
    *(v1 + 776) = 1107296256;
    *(v1 + 784) = sub_10005FD04;
    *(v1 + 792) = &unk_1000A8C10;
    goto LABEL_16;
  }

  if (v21 == enum case for WidgetFamily.accessoryCorner(_:))
  {
LABEL_11:
    v22 = (v1 + 144);
    v23 = *(*(v1 + 1160) + 16);
    *(v1 + 144) = v1;
    *(v1 + 184) = v1 + 1136;
    *(v1 + 152) = sub_10005DCA4;
    v24 = swift_continuation_init();
    *(v1 + 952) = sub_100002840(&qword_1000AF158, &qword_10008A6A8);
    *(v1 + 928) = v24;
    *(v1 + 896) = _NSConcreteStackBlock;
    *(v1 + 904) = 1107296256;
    *(v1 + 912) = sub_10005FD04;
    *(v1 + 920) = &unk_1000A8C60;
    [v23 getBookWidgetDataWithLimit:1 completion:v1 + 896];
    goto LABEL_17;
  }

  v20(*(v1 + 1192), *(v1 + 1152), *(v1 + 1168));
  v30 = sub_1000806D8();
  v31 = sub_100081458();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v1 + 1192);
  v34 = *(v1 + 1176);
  v35 = *(v1 + 1168);
  if (v32)
  {
    v36 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64[0] = v63;
    *v36 = 136315138;
    sub_100063130();
    v62 = sub_100081608();
    v38 = v37;
    v39 = *(v34 + 8);
    v39(v33, v35);
    v40 = sub_10006150C(v62, v38, v64);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "Widget family '%s' is not supported", v36, 0xCu);
    sub_100019DF8(v63);
  }

  else
  {

    v39 = *(v34 + 8);
    v39(v33, v35);
  }

  v39(*(v1 + 1200), *(v1 + 1168));
  if (_swiftEmptyArrayStorage >> 62)
  {
    v41 = sub_1000815B8();
    if (v41)
    {
      goto LABEL_26;
    }

LABEL_36:
    v43 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v41 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v41)
  {
    goto LABEL_36;
  }

LABEL_26:
  v64[0] = _swiftEmptyArrayStorage;
  v29 = sub_100061B14(0, v41 & ~(v41 >> 63), 0);
  if (v41 < 0)
  {
    __break(1u);
    return _swift_continuation_await(v29);
  }

  v42 = 0;
  v43 = v64[0];
  do
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v44 = sub_100081598();
    }

    else
    {
      v44 = _swiftEmptyArrayStorage[v42 + 4];
    }

    v45 = v44;
    sub_10005FDF4(v1 + 680);

    v64[0] = v43;
    v47 = v43[2];
    v46 = v43[3];
    if (v47 >= v46 >> 1)
    {
      sub_100061B14((v46 > 1), v47 + 1, 1);
      v43 = v64[0];
    }

    ++v42;
    v43[2] = v47 + 1;
    v48 = &v43[11 * v47];
    v49 = *(v1 + 696);
    *(v48 + 2) = *(v1 + 680);
    *(v48 + 3) = v49;
    v50 = *(v1 + 712);
    v51 = *(v1 + 728);
    v52 = *(v1 + 744);
    *(v48 + 112) = *(v1 + 760);
    *(v48 + 5) = v51;
    *(v48 + 6) = v52;
    *(v48 + 4) = v50;
  }

  while (v41 != v42);
LABEL_37:

  *(v1 + 1272) = v43;

  v53 = sub_1000806D8();
  v54 = sub_100081468();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v64[0] = v56;
    *v55 = 134218242;
    *(v55 + 4) = v43[2];

    *(v55 + 12) = 2080;
    v57 = sub_100081388();
    v59 = sub_10006150C(v57, v58, v64);

    *(v55 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v53, v54, "Done fetching book data from the daemon. %ld bookInfos: %s.", v55, 0x16u);
    sub_100019DF8(v56);
  }

  else
  {
  }

  v60 = swift_task_alloc();
  *(v1 + 1280) = v60;
  *v60 = v1;
  v60[1] = sub_10005E868;

  return sub_100062420(v43);
}

uint64_t sub_10005DCA4()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1248) = v1;
  if (v1)
  {
    v2 = sub_10005F4E4;
  }

  else
  {
    v2 = sub_10005DDB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

char *sub_10005DDB4()
{
  v25 = v0;
  v1 = *(v0 + 1136);
  if (v1 >> 62)
  {
    v2 = sub_1000815B8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v24 = _swiftEmptyArrayStorage;
  result = sub_100061B14(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = (v0 + 680);
  v6 = v24;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = sub_100081598();
    }

    else
    {
      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = v7;
    sub_10005FDF4(v5);

    v24 = v6;
    v10 = v6[2];
    v9 = v6[3];
    if (v10 >= v9 >> 1)
    {
      sub_100061B14((v9 > 1), v10 + 1, 1);
      v6 = v24;
    }

    ++v4;
    v6[2] = v10 + 1;
    v11 = &v6[11 * v10];
    v12 = *(v0 + 696);
    *(v11 + 2) = *v5;
    *(v11 + 3) = v12;
    v13 = *(v0 + 712);
    v14 = *(v0 + 728);
    v15 = *(v0 + 744);
    *(v11 + 112) = *(v0 + 760);
    *(v11 + 5) = v14;
    *(v11 + 6) = v15;
    *(v11 + 4) = v13;
  }

  while (v2 != v4);

LABEL_14:
  *(v0 + 1272) = v6;

  v16 = sub_1000806D8();
  v17 = sub_100081468();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 134218242;
    *(v18 + 4) = v6[2];

    *(v18 + 12) = 2080;
    v20 = sub_100081388();
    v22 = sub_10006150C(v20, v21, &v24);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Done fetching book data from the daemon. %ld bookInfos: %s.", v18, 0x16u);
    sub_100019DF8(v19);
  }

  else
  {
  }

  v23 = swift_task_alloc();
  *(v0 + 1280) = v23;
  *v23 = v0;
  v23[1] = sub_10005E868;

  return sub_100062420(v6);
}

uint64_t sub_10005E090()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1256) = v1;
  if (v1)
  {
    v2 = sub_10005EBBC;
  }

  else
  {
    v2 = sub_10005E1A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

char *sub_10005E1A0()
{
  v25 = v0;
  v1 = *(v0 + 1128);
  if (v1 >> 62)
  {
    v2 = sub_1000815B8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v24 = _swiftEmptyArrayStorage;
  result = sub_100061B14(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = (v0 + 680);
  v6 = v24;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = sub_100081598();
    }

    else
    {
      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = v7;
    sub_10005FDF4(v5);

    v24 = v6;
    v10 = v6[2];
    v9 = v6[3];
    if (v10 >= v9 >> 1)
    {
      sub_100061B14((v9 > 1), v10 + 1, 1);
      v6 = v24;
    }

    ++v4;
    v6[2] = v10 + 1;
    v11 = &v6[11 * v10];
    v12 = *(v0 + 696);
    *(v11 + 2) = *v5;
    *(v11 + 3) = v12;
    v13 = *(v0 + 712);
    v14 = *(v0 + 728);
    v15 = *(v0 + 744);
    *(v11 + 112) = *(v0 + 760);
    *(v11 + 5) = v14;
    *(v11 + 6) = v15;
    *(v11 + 4) = v13;
  }

  while (v2 != v4);

LABEL_14:
  *(v0 + 1272) = v6;

  v16 = sub_1000806D8();
  v17 = sub_100081468();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 134218242;
    *(v18 + 4) = v6[2];

    *(v18 + 12) = 2080;
    v20 = sub_100081388();
    v22 = sub_10006150C(v20, v21, &v24);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Done fetching book data from the daemon. %ld bookInfos: %s.", v18, 0x16u);
    sub_100019DF8(v19);
  }

  else
  {
  }

  v23 = swift_task_alloc();
  *(v0 + 1280) = v23;
  *v23 = v0;
  v23[1] = sub_10005E868;

  return sub_100062420(v6);
}

uint64_t sub_10005E47C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1264) = v1;
  if (v1)
  {
    v2 = sub_10005F050;
  }

  else
  {
    v2 = sub_10005E58C;
  }

  return _swift_task_switch(v2, 0, 0);
}

char *sub_10005E58C()
{
  v25 = v0;
  v1 = *(v0 + 1120);
  if (v1 >> 62)
  {
    v2 = sub_1000815B8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v24 = _swiftEmptyArrayStorage;
  result = sub_100061B14(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = (v0 + 680);
  v6 = v24;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = sub_100081598();
    }

    else
    {
      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = v7;
    sub_10005FDF4(v5);

    v24 = v6;
    v10 = v6[2];
    v9 = v6[3];
    if (v10 >= v9 >> 1)
    {
      sub_100061B14((v9 > 1), v10 + 1, 1);
      v6 = v24;
    }

    ++v4;
    v6[2] = v10 + 1;
    v11 = &v6[11 * v10];
    v12 = *(v0 + 696);
    *(v11 + 2) = *v5;
    *(v11 + 3) = v12;
    v13 = *(v0 + 712);
    v14 = *(v0 + 728);
    v15 = *(v0 + 744);
    *(v11 + 112) = *(v0 + 760);
    *(v11 + 5) = v14;
    *(v11 + 6) = v15;
    *(v11 + 4) = v13;
  }

  while (v2 != v4);

LABEL_14:
  *(v0 + 1272) = v6;

  v16 = sub_1000806D8();
  v17 = sub_100081468();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 134218242;
    *(v18 + 4) = v6[2];

    *(v18 + 12) = 2080;
    v20 = sub_100081388();
    v22 = sub_10006150C(v20, v21, &v24);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Done fetching book data from the daemon. %ld bookInfos: %s.", v18, 0x16u);
    sub_100019DF8(v19);
  }

  else
  {
  }

  v23 = swift_task_alloc();
  *(v0 + 1280) = v23;
  *v23 = v0;
  v23[1] = sub_10005E868;

  return sub_100062420(v6);
}

uint64_t sub_10005E868(uint64_t a1)
{
  *(*v1 + 1288) = a1;

  return _swift_task_switch(sub_10005E988, 0, 0);
}

uint64_t sub_10005E988()
{
  v26 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1152);
  v3 = sub_100059D78();
  sub_100043380(v2, (v0 + 1024), v1, v3, v4, (v0 + 272));

  sub_1000630C0(v0 + 272, v0 + 408);
  v5 = sub_1000806D8();
  v6 = sub_100081468();
  sub_100005B2C(v0 + 272, &qword_1000ACD70, &qword_100085E50);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    v9 = *(v0 + 384);
    *(v0 + 640) = *(v0 + 368);
    *(v0 + 656) = v9;
    *(v0 + 672) = *(v0 + 400);
    v10 = *(v0 + 320);
    *(v0 + 576) = *(v0 + 304);
    *(v0 + 592) = v10;
    v11 = *(v0 + 352);
    *(v0 + 608) = *(v0 + 336);
    *(v0 + 624) = v11;
    v12 = *(v0 + 288);
    *(v0 + 544) = *(v0 + 272);
    *(v0 + 560) = v12;
    sub_100002840(&qword_1000ACD70, &qword_100085E50);
    v13 = sub_100081508();
    v15 = sub_10006150C(v13, v14, &v25);

    *(v7 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Returning widget view model: %s.", v7, 0xCu);
    sub_100019DF8(v8);
  }

  v16 = *(v0 + 1144);
  v17 = *(v0 + 336);
  v19 = *(v0 + 288);
  v18 = *(v0 + 304);
  *(v16 + 48) = *(v0 + 320);
  *(v16 + 64) = v17;
  *(v16 + 16) = v19;
  *(v16 + 32) = v18;
  v21 = *(v0 + 368);
  v20 = *(v0 + 384);
  v22 = *(v0 + 352);
  *(v16 + 128) = *(v0 + 400);
  *(v16 + 96) = v21;
  *(v16 + 112) = v20;
  *(v16 + 80) = v22;
  *v16 = *(v0 + 272);

  v23 = *(v0 + 8);

  return v23();
}

char *sub_10005EBBC()
{
  v38 = v0;
  swift_willThrow();
  (*(v0 + 1232))(*(v0 + 1184), *(v0 + 1152), *(v0 + 1168));
  swift_errorRetain();
  v1 = sub_1000806D8();
  v2 = sub_100081448();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1176);
  v6 = *(v0 + 1168);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37[0] = v36;
    *v7 = 136315394;
    sub_100063130();
    v8 = sub_100081608();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
    v11 = sub_10006150C(v8, v10, v37);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2112;
    v12 = sub_1000801B8();
    *(v7 + 14) = v12;
    *v35 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch book data from BookWidgetDataSource for widget family '%s', error: %@", v7, 0x16u);
    sub_100005B2C(v35, &qword_1000AD570, &qword_10008A6B0);

    sub_100019DF8(v36);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v13 = sub_1000815B8();
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_16:
    v17 = _swiftEmptyArrayStorage;

    goto LABEL_17;
  }

  v13 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_6:
  v37[0] = _swiftEmptyArrayStorage;
  result = sub_100061B14(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
    return result;
  }

  v15 = 0;
  v16 = (v0 + 680);
  v17 = v37[0];
  do
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v18 = sub_100081598();
    }

    else
    {
      v18 = _swiftEmptyArrayStorage[v15 + 4];
    }

    v19 = v18;
    sub_10005FDF4(v16);

    v37[0] = v17;
    v21 = v17[2];
    v20 = v17[3];
    if (v21 >= v20 >> 1)
    {
      sub_100061B14((v20 > 1), v21 + 1, 1);
      v17 = v37[0];
    }

    ++v15;
    v17[2] = v21 + 1;
    v22 = &v17[11 * v21];
    v23 = *(v0 + 696);
    *(v22 + 2) = *v16;
    *(v22 + 3) = v23;
    v24 = *(v0 + 712);
    v25 = *(v0 + 728);
    v26 = *(v0 + 744);
    *(v22 + 112) = *(v0 + 760);
    *(v22 + 5) = v25;
    *(v22 + 6) = v26;
    *(v22 + 4) = v24;
  }

  while (v13 != v15);

LABEL_17:
  *(v0 + 1272) = v17;

  v27 = sub_1000806D8();
  v28 = sub_100081468();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37[0] = v30;
    *v29 = 134218242;
    *(v29 + 4) = v17[2];

    *(v29 + 12) = 2080;
    v31 = sub_100081388();
    v33 = sub_10006150C(v31, v32, v37);

    *(v29 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "Done fetching book data from the daemon. %ld bookInfos: %s.", v29, 0x16u);
    sub_100019DF8(v30);
  }

  else
  {
  }

  v34 = swift_task_alloc();
  *(v0 + 1280) = v34;
  *v34 = v0;
  v34[1] = sub_10005E868;

  return sub_100062420(v17);
}

char *sub_10005F050()
{
  v38 = v0;
  swift_willThrow();
  (*(v0 + 1232))(*(v0 + 1184), *(v0 + 1152), *(v0 + 1168));
  swift_errorRetain();
  v1 = sub_1000806D8();
  v2 = sub_100081448();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1176);
  v6 = *(v0 + 1168);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37[0] = v36;
    *v7 = 136315394;
    sub_100063130();
    v8 = sub_100081608();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
    v11 = sub_10006150C(v8, v10, v37);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2112;
    v12 = sub_1000801B8();
    *(v7 + 14) = v12;
    *v35 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch book data from BookWidgetDataSource for widget family '%s', error: %@", v7, 0x16u);
    sub_100005B2C(v35, &qword_1000AD570, &qword_10008A6B0);

    sub_100019DF8(v36);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v13 = sub_1000815B8();
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_16:
    v17 = _swiftEmptyArrayStorage;

    goto LABEL_17;
  }

  v13 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_6:
  v37[0] = _swiftEmptyArrayStorage;
  result = sub_100061B14(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
    return result;
  }

  v15 = 0;
  v16 = (v0 + 680);
  v17 = v37[0];
  do
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v18 = sub_100081598();
    }

    else
    {
      v18 = _swiftEmptyArrayStorage[v15 + 4];
    }

    v19 = v18;
    sub_10005FDF4(v16);

    v37[0] = v17;
    v21 = v17[2];
    v20 = v17[3];
    if (v21 >= v20 >> 1)
    {
      sub_100061B14((v20 > 1), v21 + 1, 1);
      v17 = v37[0];
    }

    ++v15;
    v17[2] = v21 + 1;
    v22 = &v17[11 * v21];
    v23 = *(v0 + 696);
    *(v22 + 2) = *v16;
    *(v22 + 3) = v23;
    v24 = *(v0 + 712);
    v25 = *(v0 + 728);
    v26 = *(v0 + 744);
    *(v22 + 112) = *(v0 + 760);
    *(v22 + 5) = v25;
    *(v22 + 6) = v26;
    *(v22 + 4) = v24;
  }

  while (v13 != v15);

LABEL_17:
  *(v0 + 1272) = v17;

  v27 = sub_1000806D8();
  v28 = sub_100081468();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37[0] = v30;
    *v29 = 134218242;
    *(v29 + 4) = v17[2];

    *(v29 + 12) = 2080;
    v31 = sub_100081388();
    v33 = sub_10006150C(v31, v32, v37);

    *(v29 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "Done fetching book data from the daemon. %ld bookInfos: %s.", v29, 0x16u);
    sub_100019DF8(v30);
  }

  else
  {
  }

  v34 = swift_task_alloc();
  *(v0 + 1280) = v34;
  *v34 = v0;
  v34[1] = sub_10005E868;

  return sub_100062420(v17);
}

char *sub_10005F4E4()
{
  v38 = v0;
  swift_willThrow();
  (*(v0 + 1232))(*(v0 + 1184), *(v0 + 1152), *(v0 + 1168));
  swift_errorRetain();
  v1 = sub_1000806D8();
  v2 = sub_100081448();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1176);
  v6 = *(v0 + 1168);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37[0] = v36;
    *v7 = 136315394;
    sub_100063130();
    v8 = sub_100081608();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
    v11 = sub_10006150C(v8, v10, v37);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2112;
    v12 = sub_1000801B8();
    *(v7 + 14) = v12;
    *v35 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch book data from BookWidgetDataSource for widget family '%s', error: %@", v7, 0x16u);
    sub_100005B2C(v35, &qword_1000AD570, &qword_10008A6B0);

    sub_100019DF8(v36);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v13 = sub_1000815B8();
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_16:
    v17 = _swiftEmptyArrayStorage;

    goto LABEL_17;
  }

  v13 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_6:
  v37[0] = _swiftEmptyArrayStorage;
  result = sub_100061B14(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
    return result;
  }

  v15 = 0;
  v16 = (v0 + 680);
  v17 = v37[0];
  do
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v18 = sub_100081598();
    }

    else
    {
      v18 = _swiftEmptyArrayStorage[v15 + 4];
    }

    v19 = v18;
    sub_10005FDF4(v16);

    v37[0] = v17;
    v21 = v17[2];
    v20 = v17[3];
    if (v21 >= v20 >> 1)
    {
      sub_100061B14((v20 > 1), v21 + 1, 1);
      v17 = v37[0];
    }

    ++v15;
    v17[2] = v21 + 1;
    v22 = &v17[11 * v21];
    v23 = *(v0 + 696);
    *(v22 + 2) = *v16;
    *(v22 + 3) = v23;
    v24 = *(v0 + 712);
    v25 = *(v0 + 728);
    v26 = *(v0 + 744);
    *(v22 + 112) = *(v0 + 760);
    *(v22 + 5) = v25;
    *(v22 + 6) = v26;
    *(v22 + 4) = v24;
  }

  while (v13 != v15);

LABEL_17:
  *(v0 + 1272) = v17;

  v27 = sub_1000806D8();
  v28 = sub_100081468();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37[0] = v30;
    *v29 = 134218242;
    *(v29 + 4) = v17[2];

    *(v29 + 12) = 2080;
    v31 = sub_100081388();
    v33 = sub_10006150C(v31, v32, v37);

    *(v29 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "Done fetching book data from the daemon. %ld bookInfos: %s.", v29, 0x16u);
    sub_100019DF8(v30);
  }

  else
  {
  }

  v34 = swift_task_alloc();
  *(v0 + 1280) = v34;
  *v34 = v0;
  v34[1] = sub_10005E868;

  return sub_100062420(v17);
}

uint64_t sub_10005F978(uint64_t a1, void *a2, char a3)
{
  v5 = sub_100005554((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  *(v7 + 8) = a3;
  v8 = a2;

  return _swift_continuation_resume(v6);
}

uint64_t sub_10005F9EC@<X0>(char *a1@<X8>)
{
  v4 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 currentStreak];
  v8 = [v1 today];
  v9 = [v8 readingTime];
  v10 = [v8 goal];
  LODWORD(v11) = [v8 isStreakDay];

  v12 = [v1 readingHistory];
  sub_10001F1E0(0, &qword_1000AF168, BDSReadingHistoryDayEntryInfo_ptr);
  v13 = sub_100081378();

  if (v13 >> 62)
  {
    goto LABEL_18;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = v11;
  if (v14)
  {
    while (1)
    {
      v29 = _swiftEmptyArrayStorage;
      v28 = v14;
      result = sub_100061AF4(0, v14 & ~(v14 >> 63), 0);
      if (v28 < 0)
      {
        break;
      }

      v20 = v10;
      v21 = v9;
      v22 = v7;
      v23 = a1;
      v10 = 0;
      v11 = v29;
      v25 = v13 & 0xFFFFFFFFFFFFFF8;
      v26 = v13 & 0xC000000000000001;
      while (1)
      {
        a1 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v26)
        {
          v16 = sub_100081598();
        }

        else
        {
          if (v10 >= *(v25 + 16))
          {
            goto LABEL_17;
          }

          v16 = *(v13 + 8 * v10 + 32);
        }

        v17 = v16;
        sub_100061108(v6);
        if (v2)
        {
        }

        v7 = v13;

        v29 = v11;
        v9 = v11[2];
        v18 = v11[3];
        if (v9 >= v18 >> 1)
        {
          sub_100061AF4((v18 > 1), v9 + 1, 1);
          v11 = v29;
        }

        v11[2] = v9 + 1;
        sub_100043E60(v6, v11 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v9);
        ++v10;
        if (a1 == v28)
        {

          v7 = v22;
          a1 = v23;
          v10 = v20;
          v9 = v21;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v14 = sub_1000815B8();
      v24 = v11;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    v11 = _swiftEmptyArrayStorage;
LABEL_20:
    *a1 = v7;
    *(a1 + 1) = v9;
    *(a1 + 2) = v10;
    a1[24] = v24;
    *(a1 + 4) = v11;
  }

  return result;
}

uint64_t sub_10005FD04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100005554((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002840(&qword_1000AD580, &qword_1000874A0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10001F1E0(0, &qword_1000AF178, BDSBookWidgetData_ptr);
    **(*(v4 + 64) + 40) = sub_100081378();

    return _swift_continuation_throwingResume(v4);
  }
}

id sub_10005FDF4@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 readingProgress];
  if (v3)
  {
    v6 = v3;
    sub_1000813F8();

    v4 = 0.0;
    v5 = 0.0;
    if (0.0 > 1.0)
    {
      v4 = 1.0;
    }
  }

  v7 = [v1 title];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100081218();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [v1 assetID];
  v13 = sub_100081218();
  v15 = v14;

  v16 = [v1 cloudAssetType];
  v31 = [v1 libraryAssetType];
  v17 = [v1 coverURL];
  if (v17)
  {
    v18 = v17;
    v19 = sub_100081218();
    v27 = v20;
    v29 = v19;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  result = [v1 pageProgressionDirection];
  if (result)
  {
    v22 = result;
    v23 = sub_100081218();
    v25 = v24;

    if (v23 == 7107698 && v25 == 0xE300000000000000)
    {

      v26 = 1;
    }

    else
    {
      v26 = sub_100081618();
    }
  }

  else
  {
    v26 = 0;
  }

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = v13;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v31;
  *(a1 + 64) = v30;
  *(a1 + 72) = v28;
  *(a1 + 80) = v26 & 1;
  return result;
}

uint64_t sub_100060034()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Int ConnectorStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_1000816B8();
  sub_1000816C8(a1);
  return sub_1000816F8();
}

uint64_t sub_100060158(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t WidgetReadingHistory.DayEntry.date.setter(uint64_t a1)
{
  v3 = sub_1000803D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WidgetReadingHistory.DayEntry.day.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v8 = v3 + *(result + 20);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  return result;
}

uint64_t static WidgetReadingHistory.DayEntry.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_100080398() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for WidgetReadingHistory.DayEntry(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = *(a1 + v4 + 16);
  v8 = (a2 + v4);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v13 = v5 == v9 && v6 == v10;
  return v13 & (v7 ^ v11 ^ 1u);
}

uint64_t sub_100060320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100080398() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = (a2 + v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v15 = v7 == v11 && v8 == v12;
  return v15 & (v9 ^ v13 ^ 1u);
}

BOOL static WidgetReadingHistory.Streak.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_100080398() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WidgetReadingHistory.Streak(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t WidgetReadingHistory.State.today.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

uint64_t WidgetReadingHistory.State.readingHistory.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t static WidgetReadingHistory.State.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && (*(a1 + 8) == *(a2 + 8) ? (v2 = *(a1 + 16) == *(a2 + 16)) : (v2 = 0), v2 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0))
  {
    return sub_10006051C(*(a1 + 32), *(a2 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006051C(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v4 = __chkstk_darwin(v29);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v9 = &v27 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
LABEL_17:
    v25 = 0;
    return v25 & 1;
  }

  if (v10 && a1 != a2)
  {
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = a1 + v11;
    v13 = a2 + v11;
    v28 = *(v7 + 72);
    while (1)
    {
      sub_100043DFC(v12, v9);
      sub_100043DFC(v13, v6);
      if ((sub_100080398() & 1) == 0)
      {
        break;
      }

      v14 = v29;
      v15 = &v9[*(v29 + 20)];
      v16 = *v15;
      v17 = *(v15 + 1);
      v30 = v15[16];
      sub_100043DA0(v9);
      v18 = &v6[*(v14 + 20)];
      v19 = *v18;
      v20 = *(v18 + 1);
      v21 = v18[16];
      sub_100043DA0(v6);
      v23 = v16 != v19 || v17 != v20;
      v24 = v23 | v30 ^ v21;
      if ((v24 & 1) == 0)
      {
        v13 += v28;
        v12 += v28;
        if (--v10)
        {
          continue;
        }
      }

      v25 = v24 ^ 1;
      return v25 & 1;
    }

    sub_100043DA0(v6);
    sub_100043DA0(v9);
    goto LABEL_17;
  }

  v25 = 1;
  return v25 & 1;
}

unint64_t sub_100060704()
{
  result = qword_1000AEF80;
  if (!qword_1000AEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF80);
  }

  return result;
}

uint64_t sub_100060758(uint64_t a1, uint64_t a2)
{
  v3 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v3 || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return sub_10006051C(*(a1 + 32), *(a2 + 32));
  }
}

uint64_t getEnumTagSinglePayload for ConnectorStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConnectorStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_100060910(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100060924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_10006096C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000609C8(uint64_t *a1, int a2)
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

uint64_t sub_100060A10(uint64_t result, int a2, int a3)
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

uint64_t initializeBufferWithCopyOfBuffer for PlatterStyle(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PlatterStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlatterStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100060AC0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100060ADC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for WidgetReadingHistory.Day(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WidgetReadingHistory.Day(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetReadingHistory.Day(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100060BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000803D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100060CD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000803D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = a2 + 1;
  }

  return result;
}

uint64_t sub_100060DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000803D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100060E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000803D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100060EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1000803D8();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100060F18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100060F60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100060FC8()
{
  v0 = sub_100080548();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  sub_100080488();
  isa = sub_1000804C8().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setCalendar:isa];

  v6 = sub_1000811D8();
  [v4 setDateFormat:v6];

  qword_1000AEF60 = v4;
}

uint64_t sub_100061108@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000803D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000AC708 != -1)
  {
    swift_once();
  }

  v8 = qword_1000AEF60;
  v9 = [v2 date];
  if (!v9)
  {
    sub_100081218();
    v9 = sub_1000811D8();
  }

  v10 = [v8 dateFromString:v9];

  if (v10)
  {
    sub_1000803A8();

    (*(v5 + 16))(a1, v7, v4);
    v11 = [v2 day];
    v12 = [v11 readingTime];
    v13 = [v11 goal];
    v14 = [v11 isStreakDay];

    (*(v5 + 8))(v7, v4);
    result = type metadata accessor for WidgetReadingHistory.DayEntry(0);
    v16 = a1 + *(result + 20);
    *v16 = v12;
    *(v16 + 8) = v13;
    *(v16 + 16) = v14;
  }

  else
  {
    if (qword_1000AC710 != -1)
    {
      swift_once();
    }

    v17 = sub_1000806F8();
    sub_10000A480(v17, qword_1000AEF68);
    v18 = v2;
    v19 = sub_1000806D8();
    v20 = sub_100081448();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      v23 = [v18 date];
      v24 = sub_100081218();
      v26 = v25;

      v27 = sub_10006150C(v24, v26, &v29);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "Can't widgify BDSReadingHistoryDayEntryInfo due to invalid date string: '%s'", v21, 0xCu);
      sub_100019DF8(v22);
    }

    sub_1000631A0();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10006148C()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000AEF68);
  sub_10000A480(v0, qword_1000AEF68);
  return sub_1000806E8();
}

unint64_t sub_10006150C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000615D8(v11, 0, 0, 1, a1, a2);
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
    sub_10001F05C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100019DF8(v11);
  return v7;
}

unint64_t sub_1000615D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000616E4(a5, a6);
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
    result = sub_1000815A8();
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

void *sub_1000616E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100061730(a1, a2);
  sub_100061860(&off_1000A6928);
  return v3;
}

void *sub_100061730(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10006194C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000815A8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000812B8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10006194C(v10, 0);
        result = sub_100081578();
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

uint64_t sub_100061860(uint64_t result)
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

  result = sub_1000619C0(result, v11, 1, v3);
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

void *sub_10006194C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100002840(&qword_1000AF180, &qword_10008A6D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000619C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000AF180, &qword_10008A6D0);
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

char *sub_100061AB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100061B54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100061AD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100061C60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100061AF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100061D7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100061B14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100061F54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100061B34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100062078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100061B54(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000AF190, &qword_10008A6E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100061C60(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000AF188, &qword_10008A6D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100061D7C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002840(&qword_1000AE910, &unk_10008A6C0);
  v10 = *(type metadata accessor for WidgetReadingHistory.DayEntry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WidgetReadingHistory.DayEntry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100061F54(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000AF198, &unk_10008A6E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100062078(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000ACB30, &qword_100085BE0);
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

uint64_t sub_100062184()
{
  v0 = [objc_opt_self() books];
  v1 = [v0 userDefaults];

  v2 = sub_1000811D8();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_100081548();
    swift_unknownObjectRelease();
    sub_100005B2C(&v14, &qword_1000AD598, &qword_1000874B0);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    sub_100005B2C(&v14, &qword_1000AD598, &qword_1000874B0);
    v4 = sub_1000811D8();
    v5 = [v1 objectForKey:v4];

    if (!v5)
    {
      v14 = 0u;
      v15 = 0u;
      sub_100005B2C(&v14, &qword_1000AD598, &qword_1000874B0);
      v12 = sub_1000811D8();
      v11 = 1;
      [v1 setBool:1 forKey:v12];
      goto LABEL_6;
    }

    sub_100081548();
    swift_unknownObjectRelease();
    sub_100005B2C(&v14, &qword_1000AD598, &qword_1000874B0);
    v6 = sub_1000811D8();
    v7 = [v1 BOOLForKey:v6];

    v8 = sub_1000811D8();
    [v1 removeObjectForKey:v8];

    v9 = sub_1000811D8();
    [v1 setBool:v7 forKey:v9];
  }

  v10 = sub_1000811D8();
  v11 = [v1 BOOLForKey:v10];
  v12 = v1;
  v1 = v10;
LABEL_6:

  return v11;
}

uint64_t sub_100062440()
{
  v23 = v0;
  v1 = *(v0 + 544);
  v2 = *(v1 + 16);
  *(v0 + 552) = v2;
  if (v2)
  {
    *(v0 + 568) = _swiftEmptyArrayStorage;
    *(v0 + 560) = 0;
    v3 = *(v1 + 48);
    *(v0 + 16) = *(v1 + 32);
    *(v0 + 32) = v3;
    v4 = *(v1 + 64);
    v5 = *(v1 + 80);
    v6 = *(v1 + 96);
    *(v0 + 96) = *(v1 + 112);
    *(v0 + 64) = v5;
    *(v0 + 80) = v6;
    *(v0 + 48) = v4;
    v7 = *(v1 + 32);
    *(v0 + 120) = *(v1 + 48);
    *(v0 + 104) = v7;
    v8 = *(v1 + 64);
    v9 = *(v1 + 80);
    v10 = *(v1 + 96);
    *(v0 + 184) = *(v1 + 112);
    *(v0 + 168) = v10;
    *(v0 + 152) = v9;
    *(v0 + 136) = v8;
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    *(v0 + 576) = v12;
    *(v0 + 584) = v11;
    sub_1000631F4(v0 + 16, v0 + 192);
    if (qword_1000AC710 != -1)
    {
      swift_once();
    }

    v13 = sub_1000806F8();
    *(v0 + 592) = sub_10000A480(v13, qword_1000AEF68);
    sub_1000631F4(v0 + 16, v0 + 280);
    v14 = sub_1000806D8();
    v15 = sub_100081468();
    sub_100063250(v0 + 16);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;

      v18 = sub_10006150C(v12, v11, &v22);

      *(v16 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "About to process raw cover for %s", v16, 0xCu);
      sub_100019DF8(v17);
    }

    v19 = swift_task_alloc();
    *(v0 + 600) = v19;
    *v19 = v0;
    v19[1] = sub_1000626EC;

    return sub_10001D5A8(v0 + 16);
  }

  else
  {
    v21 = *(v0 + 8);

    return v21(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000626EC()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_100062C5C;
  }

  else
  {
    v2 = sub_100062800;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100062800()
{
  v43 = v0;
  sub_1000631F4(v0 + 16, v0 + 456);
  v1 = sub_1000806D8();
  v2 = sub_100081468();
  sub_100063250(v0 + 16);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 584);
    v4 = *(v0 + 576);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v42 = v6;
    *v5 = 136315138;

    v7 = sub_10006150C(v4, v3, &v42);

    *(v5 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Done processing raw cover for %s", v5, 0xCu);
    sub_100019DF8(v6);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 568);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_10003EF58(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_10003EF58((v10 > 1), v11 + 1, 1, v9);
  }

  v12 = *(v0 + 552);
  v13 = *(v0 + 560) + 1;
  v14 = *(v0 + 152);
  *(v0 + 400) = *(v0 + 136);
  *(v0 + 416) = v14;
  *(v0 + 432) = *(v0 + 168);
  *(v0 + 448) = *(v0 + 184);
  v15 = *(v0 + 120);
  *(v0 + 368) = *(v0 + 104);
  *(v0 + 384) = v15;
  *(v9 + 2) = v11 + 1;
  v16 = &v9[88 * v11];
  v17 = *(v0 + 384);
  *(v16 + 2) = *(v0 + 368);
  *(v16 + 3) = v17;
  v18 = *(v0 + 400);
  v19 = *(v0 + 416);
  v20 = *(v0 + 432);
  v16[112] = *(v0 + 448);
  *(v16 + 5) = v19;
  *(v16 + 6) = v20;
  *(v16 + 4) = v18;
  if (v13 == v12)
  {
    v21 = *(v0 + 8);

    return v21(v9);
  }

  else
  {
    v23 = *(v0 + 560);
    *(v0 + 568) = v9;
    *(v0 + 560) = v23 + 1;
    v24 = *(v0 + 544) + 88 * v23;
    v25 = *(v24 + 136);
    *(v0 + 16) = *(v24 + 120);
    *(v0 + 32) = v25;
    v26 = *(v24 + 168);
    v27 = *(v24 + 184);
    v28 = *(v24 + 152);
    *(v0 + 96) = *(v24 + 200);
    *(v0 + 64) = v26;
    *(v0 + 80) = v27;
    *(v0 + 48) = v28;
    v29 = *(v24 + 120);
    *(v0 + 120) = *(v24 + 136);
    *(v0 + 104) = v29;
    v30 = *(v24 + 152);
    v31 = *(v24 + 168);
    v32 = *(v24 + 184);
    *(v0 + 184) = *(v24 + 200);
    *(v0 + 168) = v32;
    *(v0 + 152) = v31;
    *(v0 + 136) = v30;
    v34 = *(v0 + 48);
    v33 = *(v0 + 56);
    *(v0 + 576) = v34;
    *(v0 + 584) = v33;
    sub_1000631F4(v0 + 16, v0 + 192);
    if (qword_1000AC710 != -1)
    {
      swift_once();
    }

    v35 = sub_1000806F8();
    *(v0 + 592) = sub_10000A480(v35, qword_1000AEF68);
    sub_1000631F4(v0 + 16, v0 + 280);
    v36 = sub_1000806D8();
    v37 = sub_100081468();
    sub_100063250(v0 + 16);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v38 = 136315138;

      v40 = sub_10006150C(v34, v33, &v42);

      *(v38 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "About to process raw cover for %s", v38, 0xCu);
      sub_100019DF8(v39);
    }

    v41 = swift_task_alloc();
    *(v0 + 600) = v41;
    *v41 = v0;
    v41[1] = sub_1000626EC;

    return sub_10001D5A8(v0 + 16);
  }
}

uint64_t sub_100062C5C()
{
  v41 = v0;
  swift_errorRetain();
  v1 = sub_1000806D8();
  v2 = sub_100081448();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_1000801B8();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch raw cover, error: %@", v3, 0xCu);
    sub_100005B2C(v4, &qword_1000AD570, &qword_10008A6B0);
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 568);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10003EF58(0, *(v7 + 2) + 1, 1, v7);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_10003EF58((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 552);
  v11 = *(v0 + 560) + 1;
  v12 = *(v0 + 152);
  *(v0 + 400) = *(v0 + 136);
  *(v0 + 416) = v12;
  *(v0 + 432) = *(v0 + 168);
  *(v0 + 448) = *(v0 + 184);
  v13 = *(v0 + 120);
  *(v0 + 368) = *(v0 + 104);
  *(v0 + 384) = v13;
  *(v7 + 2) = v9 + 1;
  v14 = &v7[88 * v9];
  v15 = *(v0 + 384);
  *(v14 + 2) = *(v0 + 368);
  *(v14 + 3) = v15;
  v16 = *(v0 + 400);
  v17 = *(v0 + 416);
  v18 = *(v0 + 432);
  v14[112] = *(v0 + 448);
  *(v14 + 5) = v17;
  *(v14 + 6) = v18;
  *(v14 + 4) = v16;
  if (v11 == v10)
  {
    v19 = *(v0 + 8);

    return v19(v7);
  }

  else
  {
    v21 = *(v0 + 560);
    *(v0 + 568) = v7;
    *(v0 + 560) = v21 + 1;
    v22 = *(v0 + 544) + 88 * v21;
    v23 = *(v22 + 136);
    *(v0 + 16) = *(v22 + 120);
    *(v0 + 32) = v23;
    v24 = *(v22 + 168);
    v25 = *(v22 + 184);
    v26 = *(v22 + 152);
    *(v0 + 96) = *(v22 + 200);
    *(v0 + 64) = v24;
    *(v0 + 80) = v25;
    *(v0 + 48) = v26;
    v27 = *(v22 + 120);
    *(v0 + 120) = *(v22 + 136);
    *(v0 + 104) = v27;
    v28 = *(v22 + 152);
    v29 = *(v22 + 168);
    v30 = *(v22 + 184);
    *(v0 + 184) = *(v22 + 200);
    *(v0 + 168) = v30;
    *(v0 + 152) = v29;
    *(v0 + 136) = v28;
    v32 = *(v0 + 48);
    v31 = *(v0 + 56);
    *(v0 + 576) = v32;
    *(v0 + 584) = v31;
    sub_1000631F4(v0 + 16, v0 + 192);
    if (qword_1000AC710 != -1)
    {
      swift_once();
    }

    v33 = sub_1000806F8();
    *(v0 + 592) = sub_10000A480(v33, qword_1000AEF68);
    sub_1000631F4(v0 + 16, v0 + 280);
    v34 = sub_1000806D8();
    v35 = sub_100081468();
    sub_100063250(v0 + 16);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40 = v37;
      *v36 = 136315138;

      v38 = sub_10006150C(v32, v31, &v40);

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "About to process raw cover for %s", v36, 0xCu);
      sub_100019DF8(v37);
    }

    v39 = swift_task_alloc();
    *(v0 + 600) = v39;
    *v39 = v0;
    v39[1] = sub_1000626EC;

    return sub_10001D5A8(v0 + 16);
  }
}

uint64_t sub_1000630C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ACD70, &qword_100085E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100063130()
{
  result = qword_1000ADB10;
  if (!qword_1000ADB10)
  {
    sub_100081038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADB10);
  }

  return result;
}

unint64_t sub_1000631A0()
{
  result = qword_1000AF170;
  if (!qword_1000AF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF170);
  }

  return result;
}

unint64_t sub_1000632B8()
{
  result = qword_1000AF1A0;
  if (!qword_1000AF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1A0);
  }

  return result;
}

double sub_100063354@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(sub_100002840(&qword_1000AF1A8, &qword_10008A838) + 36);
  v5 = enum case for BlendMode.plusLighter(_:);
  v6 = sub_100080F68();
  (*(*(v6 - 8) + 104))(a1 + v4, v5, v6);
  *a1 = v3;
  *(a1 + 4) = 256;
  *(a1 + *(sub_100002840(&qword_1000AF1B0, &qword_10008A840) + 36)) = 0x3FB47AE147AE147BLL;
  v7 = (a1 + *(sub_100002840(&qword_1000AF1B8, &qword_10008A848) + 36));
  v8 = *(sub_1000808E8() + 20);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  v10 = sub_100080A38();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  __asm { FMOV            V0.2D, #2.0 }

  *v7 = _Q0;
  *&v7[*(sub_100002840(&qword_1000AD7F0, &qword_10008A850) + 36)] = 256;
  v16 = (a1 + *(sub_100002840(&qword_1000AF1C0, &unk_10008A858) + 36));
  v17 = *(sub_100002840(&qword_1000ACA80, &qword_100085B40) + 28);
  v18 = enum case for ColorScheme.dark(_:);
  v19 = sub_1000807B8();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  sub_100080F48();
  sub_1000807E8();
  v20 = (a1 + *(sub_100002840(&qword_1000AF1C8, &qword_10008A898) + 36));
  *v20 = v22;
  v20[1] = v23;
  result = *&v24;
  v20[2] = v24;
  return result;
}

unint64_t sub_1000635A4()
{
  result = qword_1000AF1D0;
  if (!qword_1000AF1D0)
  {
    sub_100004FC8(&qword_1000AF1C8, &qword_10008A898);
    sub_100063630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1D0);
  }

  return result;
}

unint64_t sub_100063630()
{
  result = qword_1000AF1D8;
  if (!qword_1000AF1D8)
  {
    sub_100004FC8(&qword_1000AF1C0, &unk_10008A858);
    sub_1000636E8();
    sub_100005C98(&qword_1000ADC50, &qword_1000ACA80, &qword_100085B40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1D8);
  }

  return result;
}

unint64_t sub_1000636E8()
{
  result = qword_1000AF1E0;
  if (!qword_1000AF1E0)
  {
    sub_100004FC8(&qword_1000AF1B8, &qword_10008A848);
    sub_1000637A0();
    sub_100005C98(&qword_1000AF208, &qword_1000AD7F0, &qword_10008A850, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1E0);
  }

  return result;
}

unint64_t sub_1000637A0()
{
  result = qword_1000AF1E8;
  if (!qword_1000AF1E8)
  {
    sub_100004FC8(&qword_1000AF1B0, &qword_10008A840);
    sub_10006382C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1E8);
  }

  return result;
}

unint64_t sub_10006382C()
{
  result = qword_1000AF1F0;
  if (!qword_1000AF1F0)
  {
    sub_100004FC8(&qword_1000AF1A8, &qword_10008A838);
    sub_100005C98(&qword_1000AF1F8, &qword_1000AF200, &unk_10008A8A0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1F0);
  }

  return result;
}

uint64_t sub_100063918()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1000801E8();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100080478();
  v5 = *(v25 - 8);
  v6 = __chkstk_darwin(v25);
  v22 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v10 = sub_1000811C8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v17 = sub_1000801F8();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_1000800F8();
  sub_10000A794(v18, qword_1000B8008);
  v21[1] = sub_10000A480(v18, qword_1000B8008);
  sub_100081158();
  sub_100080448();
  (*(v11 + 16))(v14, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100080208();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_1000800E8();
}

uint64_t sub_100063D2C()
{
  v0 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  __chkstk_darwin(v0 - 8);
  v59 = &v36 - v1;
  v2 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v2 - 8);
  v56 = &v36 - v3;
  v58 = sub_1000801E8();
  v63 = *(v58 - 8);
  __chkstk_darwin(v58);
  v52 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_100080478();
  v62 = *(v54 - 8);
  v5 = __chkstk_darwin(v54);
  v53 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = sub_1000811C8();
  v60 = *(v9 - 8);
  v10 = v60;
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v57 = sub_1000801F8();
  v61 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002840(&qword_1000AF470, &qword_10008B290);
  v17 = sub_100002840(&qword_1000AF478, &qword_10008B298);
  v55 = v17;
  v18 = *(v17 - 8);
  v48 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v49 = v20;
  *(v20 + 16) = xmmword_100085A40;
  v51 = v20 + v19;
  v45 = *(v17 + 48);
  *(v20 + v19) = 0;
  sub_100081158();
  sub_100080448();
  v47 = *(v10 + 16);
  v36 = v13;
  v21 = v9;
  v47(v13, v15, v9);
  v22 = v62;
  v46 = *(v62 + 16);
  v23 = v54;
  v46(v53, v8, v54);
  v44 = type metadata accessor for BundleFinder();
  v24 = v52;
  *v52 = v44;
  v42 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v25 = *(v63 + 104);
  v63 += 104;
  v43 = v25;
  v25(v24);
  sub_100080208();
  v26 = *(v22 + 8);
  v62 = v22 + 8;
  v41 = v26;
  v26(v8, v23);
  v27 = *(v60 + 8);
  v60 += 8;
  v40 = v27;
  v27(v15, v21);
  v28 = *(v61 + 56);
  v61 += 56;
  v39 = v28;
  v28(v56, 1, 1, v57);
  v29 = sub_10007FF18();
  v30 = *(v29 - 8);
  v37 = *(v30 + 56);
  v38 = v30 + 56;
  v37(v59, 1, 1, v29);
  v31 = v51;
  sub_10007FF48();
  v45 = (v31 + v48);
  v48 = *(v55 + 48);
  *v45 = 1;
  sub_100081158();
  sub_100080448();
  v47(v36, v15, v21);
  v32 = v54;
  v46(v53, v8, v54);
  v33 = v52;
  *v52 = v44;
  v43(v33, v42, v58);
  sub_100080208();
  v41(v8, v32);
  v40(v15, v21);
  v39(v56, 1, 1, v57);
  v37(v59, 1, 1, v29);
  sub_10007FF48();
  v34 = sub_100068140(v49);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000B8020 = v34;
  return result;
}

uint64_t sub_1000644D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7468676972;
  }

  else
  {
    v3 = 1952867692;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7468676972;
  }

  else
  {
    v5 = 1952867692;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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
    v8 = sub_100081618();
  }

  return v8 & 1;
}

unint64_t sub_100064570()
{
  result = qword_1000AF220;
  if (!qword_1000AF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF220);
  }

  return result;
}

Swift::Int sub_1000645C4()
{
  sub_1000816B8();
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_10006463C(uint64_t a1)
{
  sub_100081298();
}

Swift::Int sub_1000646A0(uint64_t a1)
{
  sub_1000816B8();
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_100064714@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000A6DA0;
  v8._object = v3;
  v5 = sub_1000815F8(v4, v8);

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

void sub_100064774(uint64_t *a1@<X8>)
{
  v2 = 1952867692;
  if (*v1)
  {
    v2 = 0x7468676972;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000647AC()
{
  result = qword_1000AF228;
  if (!qword_1000AF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF228);
  }

  return result;
}

unint64_t sub_100064804()
{
  result = qword_1000AF230;
  if (!qword_1000AF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF230);
  }

  return result;
}

unint64_t sub_10006485C()
{
  result = qword_1000AF238;
  if (!qword_1000AF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF238);
  }

  return result;
}

unint64_t sub_1000648B4()
{
  result = qword_1000AF240;
  if (!qword_1000AF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF240);
  }

  return result;
}

unint64_t sub_10006490C()
{
  result = qword_1000AF248;
  if (!qword_1000AF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF248);
  }

  return result;
}

unint64_t sub_100064968()
{
  result = qword_1000AF250;
  if (!qword_1000AF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF250);
  }

  return result;
}

unint64_t sub_100064A20()
{
  result = qword_1000AF258;
  if (!qword_1000AF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF258);
  }

  return result;
}

uint64_t sub_100064A74(uint64_t a1)
{
  v2 = sub_100064A20();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100064AC4()
{
  result = qword_1000AF260;
  if (!qword_1000AF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF260);
  }

  return result;
}

unint64_t sub_100064B1C()
{
  result = qword_1000AF268;
  if (!qword_1000AF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF268);
  }

  return result;
}

unint64_t sub_100064B74()
{
  result = qword_1000AF270;
  if (!qword_1000AF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF270);
  }

  return result;
}

uint64_t sub_100064BC8()
{
  if (qword_1000AC720 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100064C24(uint64_t a1)
{
  v2 = sub_100064968();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100064D0C()
{
  v0 = sub_1000800F8();
  sub_10000A794(v0, qword_1000B8028);
  sub_10000A480(v0, qword_1000B8028);
  return sub_1000800D8();
}

uint64_t sub_100064D70()
{
  v0 = sub_1000801F8();
  sub_10000A794(v0, qword_1000B8040);
  sub_10000A480(v0, qword_1000B8040);
  return sub_1000801D8();
}

uint64_t sub_100064DD4()
{
  v0 = sub_100002840(&qword_1000AF468, &qword_10008B288);
  sub_10000A794(v0, qword_1000B8058);
  v1 = sub_10000A480(v0, qword_1000B8058);
  sub_10007FE78();
  v2 = sub_10007FE88();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100064E94()
{
  result = swift_getKeyPath();
  qword_1000B8070 = result;
  return result;
}

uint64_t sub_100064EBC()
{
  type metadata accessor for MenuOnLeftEntity(0);
}

uint64_t sub_100064EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100002840(&qword_1000AF438, &qword_10008B238);
  v3[5] = swift_task_alloc();
  sub_100002840(&qword_1000AF440, &qword_10008B240);
  v3[6] = swift_task_alloc();
  sub_100002840(&qword_1000AF448, &qword_10008B248);
  v3[7] = swift_task_alloc();
  v4 = sub_10007FBF8();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for MenuOnLeftEntity(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_100002840(&qword_1000AF450, &qword_10008B250);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10006510C, 0, 0);
}

uint64_t sub_10006510C()
{
  sub_10007FCE8();
  v1 = swift_task_alloc();
  v0[18] = v1;
  v2 = sub_10006719C(&qword_1000AF2D0, &unk_10008AEDC);
  *v1 = v0;
  v1[1] = sub_1000651F4;
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v4, sub_100068AF4, 0, v5, v2);
}

uint64_t sub_1000651F4()
{

  return _swift_task_switch(sub_1000652F0, 0, 0);
}

uint64_t sub_1000652F0()
{
  sub_10007FCE8();
  sub_10007FCE8();
  *(v0 + 177) = *(v0 + 176);
  if (qword_1000AC740 != -1)
  {
    swift_once();
  }

  v1 = qword_1000B8070;
  *(v0 + 152) = qword_1000B8070;

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  v3 = sub_100005C98(&qword_1000AF418, &qword_1000AF3B8, &qword_10008B188, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v2 = v0;
  v2[1] = sub_100065440;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v1, &type metadata for BooksMenuAnchor, v3);
}

uint64_t sub_100065440()
{
  v2 = *(*v1 + 96);
  *(*v1 + 168) = v0;

  sub_1000689EC(v2);

  if (v0)
  {
    v3 = sub_10006581C;
  }

  else
  {
    v3 = sub_100065594;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100065594()
{
  v12 = v0[17];
  v2 = v0[14];
  v1 = v0[15];
  v10 = v0[16];
  v11 = v0[13];
  v3 = v0[10];
  v14 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v13 = v0[9];
  sub_10007FCE8();
  v6 = sub_1000800C8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100080108();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_10004E850();
  sub_10006719C(&qword_1000AF2E0, &unk_10008B090);
  sub_10007FBC8();
  (*(v1 + 16))(v10, v12, v2);
  sub_10007FBE8();
  sub_10007FC18();
  (*(v13 + 8))(v3, v14);
  sub_1000689EC(v11);
  (*(v1 + 8))(v12, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10006581C()
{
  (*(v0[15] + 8))(v0[17], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100065900()
{
  v0 = sub_100002840(&qword_1000AF458, &qword_10008B258);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_1000AC740 != -1)
  {
    swift_once();
  }

  sub_10007FEE8();

  type metadata accessor for MenuOnLeftEntity(0);
  sub_10006719C(&qword_1000AF2E0, &unk_10008B090);
  sub_100005C98(&qword_1000AF460, &qword_1000AF458, &qword_10008B258, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_10007FED8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100065ABC(uint64_t a1)
{
  v2 = type metadata accessor for MenuOnLeftEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_100068A90(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007FCF8();
  return sub_1000689EC(a1);
}

void (*sub_100065B4C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_10007FCD8();
  return sub_100065BC0;
}

void *sub_100065BC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007FCE8();
  *a1 = v3;
  return result;
}

void (*sub_100065C38(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_10007FCD8();
  return sub_100068B00;
}

uint64_t sub_100065CAC()
{
  if (qword_1000AC740 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100065D28()
{
  result = qword_1000AF298;
  if (!qword_1000AF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF298);
  }

  return result;
}

unint64_t sub_100065D80()
{
  result = qword_1000AF2A0;
  if (!qword_1000AF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2A0);
  }

  return result;
}

uint64_t sub_100065EB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AC738 != -1)
  {
    swift_once();
  }

  v2 = sub_100002840(&qword_1000AF468, &qword_10008B288);
  v3 = sub_10000A480(v2, qword_1000B8058);
  return sub_1000055FC(v3, a1, &qword_1000AF468, &qword_10008B288);
}

uint64_t sub_100065F48(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000AB6C;

  return sub_100064EF0(a1, v5, v4);
}

uint64_t sub_100065FF4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100068540();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10006603C()
{
  result = qword_1000AF2A8;
  if (!qword_1000AF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2A8);
  }

  return result;
}

uint64_t type metadata accessor for MenuOnLeftEntity(uint64_t a1)
{
  result = qword_1000AF3A0;
  if (!qword_1000AF3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100066130()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() bu_groupUserDefaults];
  v3 = [v2 BKMenuOnLeft];

  *v1 = v3 ^ 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000661D8(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000AB6C;

  return sub_100066274(a1, v4);
}

uint64_t sub_100066294()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() bu_groupUserDefaults];
  if (v1)
  {
    v3 = sub_100081618();
  }

  else
  {
    v3 = 1;
  }

  [v2 setBKMenuOnLeft:v3 & 1];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10006637C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000801F8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  __chkstk_darwin(v10);
  sub_1000801D8();
  sub_1000801D8();
  (*(v9 + 56))(v7, 0, 1, v8);
  v11 = sub_10007FF18();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_100002840(&qword_1000AEDA8, &qword_10008B1F0);
  *(swift_allocObject() + 16) = xmmword_100085C00;
  sub_1000801D8();
  sub_1000801D8();
  sub_10007FF28();
  v12 = type metadata accessor for MenuOnLeftEntity(0);
  v13 = (a1 + *(v12 + 20));
  *v13 = 0xD000000000000015;
  v13[1] = 0x8000000100085040;
  v14 = *(v12 + 24);
  sub_100002840(&qword_1000AF290, &qword_10008AB80);
  sub_1000801D8();
  sub_100005C98(&qword_1000AF418, &qword_1000AF3B8, &qword_10008B188, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100064A20();
  result = sub_100080168();
  *(a1 + v14) = result;
  return result;
}

uint64_t sub_100066748()
{
  sub_10006637C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1000667B0()
{
  result = qword_1000AF2B8;
  if (!qword_1000AF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2B8);
  }

  return result;
}

uint64_t sub_100066804(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100066F48();
  *v4 = v2;
  v4[1] = sub_1000668B4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_1000668B4(uint64_t a1)
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

unint64_t sub_1000669CC()
{
  result = qword_1000AF2C0;
  if (!qword_1000AF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2C0);
  }

  return result;
}

unint64_t sub_100066A24()
{
  result = qword_1000AF2C8;
  if (!qword_1000AF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2C8);
  }

  return result;
}

uint64_t sub_100066AAC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100066F48();
  *v5 = v2;
  v5[1] = sub_100068B20;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100066B60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100066F48();
  *v4 = v2;
  v4[1] = sub_100068AF8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100066C14()
{
  result = qword_1000AF2D8;
  if (!qword_1000AF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2D8);
  }

  return result;
}

unint64_t sub_100066CA0()
{
  result = qword_1000AF2E8;
  if (!qword_1000AF2E8)
  {
    sub_100004FC8(&qword_1000AF2F0, qword_10008AE20);
    sub_10006719C(&qword_1000AF2E0, &unk_10008B090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2E8);
  }

  return result;
}

uint64_t sub_100066D40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000667B0();
  *v5 = v2;
  v5[1] = sub_1000074F4;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100066DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000074F4;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100066F48()
{
  result = qword_1000AF310;
  if (!qword_1000AF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF310);
  }

  return result;
}

uint64_t sub_100066F9C()
{
  v0 = qword_1000AF210;

  return v0;
}

uint64_t sub_100067070@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_100067100(uint64_t a1)
{
  v2 = sub_10006719C(&qword_1000AF2D0, &unk_10008AEDC);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10006719C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MenuOnLeftEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000671E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007FF58();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100067248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000AB6C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10006730C(uint64_t a1)
{
  v2 = sub_10006719C(&qword_1000AF328, &unk_10008B0F0);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100067398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007FF58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10006746C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007FF58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100067528(uint64_t a1)
{
  sub_10007FF58();
  if (v1 <= 0x3F)
  {
    sub_1000675B4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000675B4(uint64_t a1)
{
  if (!qword_1000AF3B0)
  {
    type metadata accessor for MenuOnLeftEntity(255);
    sub_100004FC8(&qword_1000AF3B8, &qword_10008B188);
    sub_10006719C(&qword_1000AF2D0, &unk_10008AEDC);
    sub_100005C98(&qword_1000AF3C0, &qword_1000AF3B8, &qword_10008B188, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    sub_1000676B0();
    v1 = sub_100080188();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AF3B0);
    }
  }
}

unint64_t sub_1000676B0()
{
  result = qword_1000AF3C8;
  if (!qword_1000AF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3C8);
  }

  return result;
}

unint64_t sub_1000677AC(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD490, &qword_10008B2F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002840(&qword_1000AF4B0, &qword_10008B2F8);
    v7 = sub_1000815D8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v9, v5, &qword_1000AD490, &qword_10008B2F0);
      v11 = *v5;
      result = sub_10004400C();
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10007FF58();
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

unint64_t sub_100067994(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD3D8, &qword_100087340);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002840(&qword_1000AF4A8, &qword_10008B2E8);
    v7 = sub_1000815D8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v9, v5, &qword_1000AD3D8, &qword_100087340);
      v11 = *v5;
      result = sub_10003F450(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10007FF58();
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

unint64_t sub_100067B7C(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AEB10, &qword_1000891C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002840(&qword_1000AF4A0, &unk_10008B2D8);
    v7 = sub_1000815D8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v9, v5, &qword_1000AEB10, &qword_1000891C0);
      v11 = *v5;
      result = sub_10004400C();
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10007FF58();
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

unint64_t sub_100067D64(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AEDA0, &unk_100089980);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002840(&qword_1000AF488, &unk_10008B2B0);
    v7 = sub_1000815D8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v9, v5, &qword_1000AEDA0, &unk_100089980);
      v11 = *v5;
      result = sub_10003F590(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10007FF58();
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

unint64_t sub_100067F4C(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AEDC0, qword_1000899A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002840(&qword_1000AF490, &qword_10008B2C0);
    v7 = sub_1000815D8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v9, v5, &qword_1000AEDC0, qword_1000899A0);
      v11 = *v5;
      result = sub_10003F590(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100002840(&qword_1000AF498, &unk_10008B2C8);
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

unint64_t sub_100068140(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AF478, &qword_10008B298);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002840(&qword_1000AF480, &unk_10008B2A0);
    v7 = sub_1000815D8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v9, v5, &qword_1000AF478, &qword_10008B298);
      v11 = *v5;
      result = sub_10003F618(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10007FF58();
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

unint64_t sub_100068328(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002840(&qword_1000AF4C0, &qword_10008B308);
    v3 = sub_1000815D8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10003F6B4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_10006843C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002840(&qword_1000AF4B8, &qword_10008B300);
    v3 = sub_1000815D8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003F6B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_100068540()
{
  v31 = sub_100080078();
  v0 = *(v31 - 8);
  __chkstk_darwin(v31);
  v2 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v24 - v7;
  v9 = sub_100002840(&qword_1000AF420, &qword_10008B218);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  v24[0] = v24 - v10;
  v12 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v12 - 8);
  v14 = v24 - v13;
  v27 = v24 - v13;
  v15 = sub_1000801F8();
  v30 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v28 = sub_100002840(&qword_1000AF428, &qword_10008B220);
  sub_1000801D8();
  v29 = *(v16 + 56);
  v29(v14, 1, 1, v15);
  v17 = type metadata accessor for MenuOnLeftEntity(0);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_10007FBF8();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v20 = v6;
  v19(v6, 1, 1, v18);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v21 = *(v0 + 104);
  v24[1] = v0 + 104;
  v25 = v21;
  v21(v2);
  sub_10006719C(&qword_1000AF2D0, &unk_10008AEDC);
  v22 = v27;
  v28 = sub_10007FD28();
  sub_100002840(&qword_1000AF430, &qword_10008B228);
  sub_1000801D8();
  v29(v22, 1, 1, v30);
  v32 = 2;
  v19(v8, 1, 1, v18);
  v19(v20, 1, 1, v18);
  v25(v2, v26, v31);
  sub_100064A20();
  sub_10007FD18();
  return v28;
}

uint64_t sub_1000689EC(uint64_t a1)
{
  v2 = type metadata accessor for MenuOnLeftEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100068A48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for MenuOnLeftEntity(0) + 24));
}

uint64_t sub_100068A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuOnLeftEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100068C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for LargeWidgetView(uint64_t a1)
{
  result = qword_1000AF520;
  if (!qword_1000AF520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100068D2C(uint64_t a1)
{
  sub_100002A24(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100068DDC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1000807B8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000AF560, &qword_10008B430);
  __chkstk_darwin(v9 - 8);
  v11 = (v21 - v10);
  *v11 = sub_100080F48();
  v11[1] = v12;
  v13 = sub_100002840(&qword_1000AF568, &qword_10008B438);
  sub_100069004(a2, v11 + *(v13 + 44));
  v14 = (a2 + *(type metadata accessor for LargeWidgetView(0) + 20));
  v15 = v14[3];
  v21[2] = v14[2];
  v21[3] = v15;
  v21[4] = v14[4];
  v16 = v14[1];
  v21[0] = *v14;
  v21[1] = v16;
  if (sub_100057D5C())
  {
    (*(v6 + 104))(v8, enum case for ColorScheme.light(_:), v5);
  }

  else
  {
    sub_100005180(v8);
  }

  KeyPath = swift_getKeyPath();
  v18 = (a3 + *(sub_100002840(&qword_1000AF570, &qword_10008B470) + 36));
  v19 = sub_100002840(&qword_1000ACA80, &qword_100085B40);
  (*(v6 + 32))(v18 + *(v19 + 28), v8, v5);
  *v18 = KeyPath;
  return sub_10000C1E0(v11, a3, &qword_1000AF560, &qword_10008B430);
}

uint64_t sub_100069004@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a3;
  v4 = type metadata accessor for LogoView(0);
  v5 = __chkstk_darwin(v4 - 8);
  v57 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v43 - v7;
  v55 = sub_100080B88();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_100002840(&qword_1000AF578, &qword_10008B478);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v49 = sub_100002840(&qword_1000AF580, &qword_10008B480);
  v52 = *(v49 - 8);
  __chkstk_darwin(v49);
  v16 = &v43 - v15;
  v53 = sub_100002840(&qword_1000AF588, &qword_10008B488);
  v50 = *(v53 - 8);
  v17 = __chkstk_darwin(v53);
  v51 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v47 = &v43 - v19;
  sub_1000807F8();
  *v14 = sub_100080A68();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v20 = &v14[*(sub_100002840(&qword_1000AF590, &unk_10008B490) + 44)];
  v44 = a2;
  sub_10006970C(a2, v20);
  v21 = (a2 + *(type metadata accessor for LargeWidgetView(0) + 20));
  v22 = v21[3];
  v67 = v21[2];
  v68 = v22;
  v69 = v21[4];
  v23 = v21[1];
  v65 = *v21;
  v66 = v23;
  sub_100029988(v11);
  v24 = sub_100080308();
  v25 = *(v24 - 8);
  v45 = *(v25 + 56);
  v46 = v25 + 56;
  v45(v11, 0, 1, v24);
  v26 = sub_100005C98(&qword_1000AF598, &qword_1000AF578, &qword_10008B478, &protocol conformance descriptor for VStack<A>);
  sub_100080D58();
  sub_100005B2C(v11, &qword_1000AD3B0, &unk_100087320);
  sub_100005B2C(v14, &qword_1000AF578, &qword_10008B478);
  v27 = v48;
  sub_100080B78();
  v59 = v44;
  sub_100080F48();
  sub_100002840(&qword_1000ACA68, &qword_100085B00);
  *&v60 = v12;
  *(&v60 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  sub_1000050CC();
  v28 = v47;
  v29 = v49;
  sub_100080DF8();
  (*(v54 + 8))(v27, v55);
  (*(v52 + 8))(v16, v29);
  v30 = v21[3];
  v62 = v21[2];
  v63 = v30;
  v64 = v21[4];
  v31 = *v21;
  v61 = v21[1];
  v60 = v31;
  v32 = v56;
  sub_100029988(v56);
  v45(v32, 0, 1, v24);
  v33 = v50;
  v34 = *(v50 + 16);
  v35 = v51;
  v36 = v28;
  v37 = v53;
  v34(v51, v28, v53);
  v38 = v57;
  sub_10006B9B4(v32, v57, type metadata accessor for LogoView);
  v39 = v58;
  v34(v58, v35, v37);
  v40 = sub_100002840(&qword_1000AF5A0, &unk_10008B4A0);
  sub_10006B9B4(v38, &v39[*(v40 + 48)], type metadata accessor for LogoView);
  sub_10006C1CC(v32, type metadata accessor for LogoView);
  v41 = *(v33 + 8);
  v41(v36, v37);
  sub_10006C1CC(v38, type metadata accessor for LogoView);
  return (v41)(v35, v37);
}

uint64_t sub_10006970C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v74 = a2;
  v66 = type metadata accessor for TodayReadingGoalView(0);
  __chkstk_darwin(v66);
  v5 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = sub_100002840(&qword_1000AF5A8, &qword_10008B4E8);
  v6 = __chkstk_darwin(v70);
  v73 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v71 = &v64[-v9];
  __chkstk_darwin(v8);
  v72 = &v64[-v10];
  v65 = sub_100080B88();
  v11 = *(v65 - 8);
  __chkstk_darwin(v65);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100002840(&qword_1000AF5B0, &qword_10008B4F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v64[-v15];
  v17 = sub_100002840(&qword_1000AF5B8, &qword_10008B4F8);
  __chkstk_darwin(v17);
  v19 = &v64[-v18];
  v20 = sub_100002840(&qword_1000AF5C0, &qword_10008B500);
  v68 = *(v20 - 8);
  v69 = v20;
  v21 = __chkstk_darwin(v20);
  v67 = &v64[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v75 = &v64[-v23];
  *v16 = sub_100080A28();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v24 = sub_100002840(&qword_1000AF5C8, &qword_10008B508);
  sub_100069F60(a1, &v16[*(v24 + 44)]);
  sub_1000807F8();
  sub_100080F48();
  sub_1000808F8();
  sub_10000C1E0(v16, v19, &qword_1000AF5B0, &qword_10008B4F0);
  v25 = &v19[*(v17 + 36)];
  v26 = v85;
  v25[4] = v84;
  v25[5] = v26;
  v25[6] = v86;
  v27 = v81;
  *v25 = v80;
  v25[1] = v27;
  v28 = v83;
  v25[2] = v82;
  v25[3] = v28;
  sub_100080B78();
  sub_100080F48();
  sub_10006BA1C();
  sub_10002B1F8();
  sub_100080DF8();
  (*(v11 + 8))(v13, v65);
  sub_100005B2C(v19, &qword_1000AF5B8, &qword_10008B4F8);
  v29 = type metadata accessor for LargeWidgetView(0);
  v30 = *(v29 + 20);
  v65 = *(a1 + *(v29 + 24));
  v31 = *(a1 + v30 + 48);
  v77 = *(a1 + v30 + 32);
  v78 = v31;
  v79 = *(a1 + v30 + 64);
  v32 = v79;
  v33 = *(a1 + v30 + 16);
  v76[0] = *(a1 + v30);
  v34 = v76[0];
  v76[1] = v33;
  v5[2] = v77;
  v5[3] = v31;
  v5[4] = v32;
  *v5 = v34;
  v5[1] = v33;
  v35 = v5 + *(v66 + 20);
  *v35 = 0x4062C00000000000;
  v36 = type metadata accessor for TodayReadingGoalView.ViewConfiguration(0);
  v37 = v36[5];
  v38 = enum case for ColorScheme.dark(_:);
  v39 = sub_1000807B8();
  (*(*(v39 - 8) + 104))(&v35[v37], v38, v39);
  *&v35[v36[6]] = 0x4040000000000000;
  v40 = v36[7];
  v41 = enum case for BlendMode.plusLighter(_:);
  v42 = sub_100080F68();
  (*(*(v42 - 8) + 104))(&v35[v40], v41, v42);
  v43 = v36[8];
  sub_10006BAD4(v76, v87);
  *&v35[v43] = sub_100080CC8();
  v44 = v36[9];
  sub_100080C88();
  *&v35[v44] = v45;
  v46 = v36[10];
  *&v35[v46] = sub_100080B28();
  v47 = &v35[v36[11]];
  *v47 = 0x69662E656D616C66;
  *(v47 + 1) = 0xEA00000000006C6CLL;
  *&v35[v36[12]] = 0x4020000000000000;
  sub_100080F48();
  sub_1000808F8();
  v48 = v71;
  sub_10006BB30(v5, v71, type metadata accessor for TodayReadingGoalView);
  v49 = &v48[*(v70 + 36)];
  v50 = v87[5];
  v49[4] = v87[4];
  v49[5] = v50;
  v49[6] = v87[6];
  v51 = v87[1];
  *v49 = v87[0];
  v49[1] = v51;
  v52 = v87[3];
  v49[2] = v87[2];
  v49[3] = v52;
  v53 = v72;
  sub_10006BB98(v48, v72);
  v55 = v67;
  v54 = v68;
  v56 = *(v68 + 16);
  v57 = v69;
  v56(v67, v75, v69);
  v58 = v73;
  sub_1000055FC(v53, v73, &qword_1000AF5A8, &qword_10008B4E8);
  v59 = v74;
  v56(v74, v55, v57);
  v60 = sub_100002840(&qword_1000AF5E0, &qword_10008B510);
  v61 = &v59[*(v60 + 48)];
  *v61 = v65;
  v61[8] = 0;
  sub_1000055FC(v58, &v59[*(v60 + 64)], &qword_1000AF5A8, &qword_10008B4E8);
  sub_100005B2C(v53, &qword_1000AF5A8, &qword_10008B4E8);
  v62 = *(v54 + 8);
  v62(v75, v57);
  sub_100005B2C(v58, &qword_1000AF5A8, &qword_10008B4E8);
  return (v62)(v55, v57);
}

uint64_t sub_100069F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = sub_100080A58();
  v118 = *(v3 - 8);
  v119 = v3;
  __chkstk_darwin(v3);
  v116 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100080B68();
  v109 = *(v5 - 8);
  v110 = v5;
  __chkstk_darwin(v5);
  v108 = v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for LargeEmptyStateView(0);
  __chkstk_darwin(v125);
  v8 = (v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100002840(&qword_1000AF5E8, &qword_10008B518);
  v113 = *(v9 - 8);
  v114 = v9;
  __chkstk_darwin(v9);
  v111 = v101 - v10;
  v123 = sub_100002840(&qword_1000AF5F0, &qword_10008B520);
  v11 = __chkstk_darwin(v123);
  v112 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v115 = v101 - v14;
  __chkstk_darwin(v13);
  v117 = v101 - v15;
  v121 = sub_100002840(&qword_1000AF5F8, &qword_10008B528);
  __chkstk_darwin(v121);
  v122 = v101 - v16;
  v17 = sub_100002840(&qword_1000AF600, &qword_10008B530);
  __chkstk_darwin(v17);
  v124 = v101 - v18;
  v19 = sub_100080308();
  __chkstk_darwin(v19 - 8);
  v21 = v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100002840(&qword_1000AF608, &qword_10008B538);
  v103 = *(v22 - 8);
  v104 = v22;
  __chkstk_darwin(v22);
  v24 = v101 - v23;
  v106 = sub_100002840(&qword_1000AF610, &qword_10008B540);
  __chkstk_darwin(v106);
  v102 = v101 - v25;
  v105 = sub_100002840(&qword_1000AF618, &qword_10008B548);
  __chkstk_darwin(v105);
  v27 = (v101 - v26);
  v120 = sub_100002840(&qword_1000AF620, &qword_10008B550);
  __chkstk_darwin(v120);
  v107 = v101 - v28;
  v29 = sub_100002840(&qword_1000AF628, &qword_10008B558);
  __chkstk_darwin(v29);
  v31 = v101 - v30;
  result = type metadata accessor for LargeWidgetView(0);
  v33 = a1;
  v34 = (a1 + *(result + 20));
  v35 = *(v34 + 6);
  v36 = *(v35 + 16);
  if (v36 >= 3)
  {
    v44 = v34[3];
    v164 = v34[2];
    v165 = v44;
    v166 = v34[4];
    v45 = v34[1];
    v162 = *v34;
    v163 = v45;
    sub_10006BAD4(&v162, &v127);
    v46 = sub_100080CB8();
    v169 = v164;
    v170 = v165;
    v167 = v162;
    v168 = v163;
    v171 = v166;
    v172 = xmmword_10008B320;
    v173 = xmmword_10008B330;
    *v174 = v46;
    *&v174[8] = xmmword_10008B340;
    *&v174[24] = 0x4020000000000000;
    v129 = v164;
    v130 = v165;
    v134 = *v174;
    v135 = *&v174[16];
    v131 = v166;
    v132 = xmmword_10008B320;
    v133 = xmmword_10008B330;
    v127 = v162;
    v128 = v163;
    sub_10006BC08(&v127);
    v148 = v133;
    v149 = v134;
    v150 = v135;
    v151 = v136;
    v144 = v129;
    v145 = v130;
    v146 = v131;
    v147 = v132;
    v142 = v127;
    v143 = v128;
    sub_1000103A4(&v167, &v152);
    sub_10006BC10();
    sub_10006BC64();
    sub_100080AD8();
    v47 = v159;
    *(v31 + 6) = v158;
    *(v31 + 7) = v47;
    *(v31 + 8) = v160;
    v31[144] = v161;
    v48 = v155;
    *(v31 + 2) = v154;
    *(v31 + 3) = v48;
    v49 = v157;
    *(v31 + 4) = v156;
    *(v31 + 5) = v49;
    v50 = v153;
    *v31 = v152;
    *(v31 + 1) = v50;
    swift_storeEnumTagMultiPayload();
    sub_100002840(&qword_1000AF640, &qword_10008B560);
    sub_10006BCB8();
    sub_10006BD44();
    sub_100080AD8();
    return sub_10006C0FC(&v167);
  }

  else
  {
    v101[1] = v29;
    v101[2] = v17;
    if (v36 == 2)
    {
      v37 = v34[3];
      v164 = v34[2];
      v165 = v37;
      v166 = v34[4];
      v38 = v34[1];
      v162 = *v34;
      v163 = v38;
      sub_10006BAD4(&v162, &v127);
      v39 = sub_100080CB8();
      v169 = v164;
      v170 = v165;
      v167 = v162;
      v168 = v163;
      v171 = v166;
      v172 = xmmword_10008B350;
      v173 = xmmword_10008B330;
      *v174 = 0x4020000000000000;
      *&v174[8] = v39;
      *&v174[16] = xmmword_100087AD0;
      v129 = v164;
      v130 = v165;
      v134 = *v174;
      v135 = xmmword_100087AD0;
      v131 = v166;
      v132 = xmmword_10008B350;
      v133 = xmmword_10008B330;
      v127 = v162;
      v128 = v163;
      sub_10006C22C(&v127);
      v148 = v133;
      v149 = v134;
      v150 = v135;
      v151 = v136;
      v144 = v129;
      v145 = v130;
      v146 = v131;
      v147 = v132;
      v142 = v127;
      v143 = v128;
      sub_10000BFF8(&v167, &v152);
      sub_10006BC10();
      sub_10006BC64();
      sub_100080AD8();
      v40 = v159;
      *(v31 + 6) = v158;
      *(v31 + 7) = v40;
      *(v31 + 8) = v160;
      v31[144] = v161;
      v41 = v155;
      *(v31 + 2) = v154;
      *(v31 + 3) = v41;
      v42 = v157;
      *(v31 + 4) = v156;
      *(v31 + 5) = v42;
      v43 = v153;
      *v31 = v152;
      *(v31 + 1) = v43;
      swift_storeEnumTagMultiPayload();
      sub_100002840(&qword_1000AF640, &qword_10008B560);
      sub_10006BCB8();
      sub_10006BD44();
      sub_100080AD8();
      return sub_10006C238(&v167);
    }

    else if (v36)
    {
      if (*(v35 + 64) == 0xD000000000000023 && 0x8000000100082090 == *(v35 + 72) || (sub_100081618() & 1) != 0)
      {
        v51 = sub_10005872C();
        v53 = v52;
        v54 = sub_100005CE0(v51);
        *v8 = v51;
        v8[1] = v53;
        v8[2] = v54;
        v8[3] = v55;
        v56 = v8 + *(v125 + 24);
        v57 = sub_100080C48();
        sub_100080C88();
        v59 = v58;
        v60 = sub_100080B18();
        sub_100080E48();
        v61 = sub_100080E58();

        v62 = enum case for ColorScheme.dark(_:);
        v63 = sub_1000807B8();
        (*(*(v63 - 8) + 104))(v56, v62, v63);
        v64 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
        v65 = v64[5];
        v66 = enum case for BlendMode.plusLighter(_:);
        v67 = sub_100080F68();
        (*(*(v67 - 8) + 104))(&v56[v65], v66, v67);
        *&v56[v64[6]] = v57;
        *&v56[v64[7]] = v59;
        *&v56[v64[8]] = v60;
        *&v56[v64[9]] = v61;
        *&v56[v64[10]] = 0x3FE570A3D70A3D71;
        *&v56[v64[11]] = 0x4018000000000000;
        *&v56[v64[12]] = 0x4030000000000000;
        v68 = v108;
        sub_100080B48();
        v69 = sub_10006C0B4(&qword_1000AF680, type metadata accessor for LargeEmptyStateView, &unk_100087A04);
        v70 = v111;
        v71 = v125;
        sub_100080E08();
        (*(v109 + 8))(v68, v110);
        sub_10006C1CC(v8, type metadata accessor for LargeEmptyStateView);
        sub_100002840(&qword_1000ACB30, &qword_100085BE0);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_100085A40;
        v73 = sub_10005872C();
        *(v72 + 32) = v73;
        *(v72 + 40) = v74;
        *(v72 + 48) = sub_100005CE0(v73);
        *(v72 + 56) = v75;
        *&v127 = v72;
        sub_100002840(&qword_1000ACE50, &qword_1000881F0);
        sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0, &protocol conformance descriptor for [A]);
        v76 = sub_100081128();
        v78 = v77;

        *&v127 = v76;
        *(&v127 + 1) = v78;
        *&v152 = v71;
        *(&v152 + 1) = v69;
        swift_getOpaqueTypeConformance2();
        sub_1000057D0();
        v79 = v112;
        v80 = v114;
        sub_100080DD8();

        (*(v113 + 8))(v70, v80);
        v81 = v116;
        sub_100080A48();
        v82 = v115;
        sub_100080898();
        (*(v118 + 8))(v81, v119);
        v83 = sub_100005B2C(v79, &qword_1000AF5F0, &qword_10008B520);
        sub_100005CE4(v83);
        v84 = v117;
        sub_1000808A8();

        sub_100005B2C(v82, &qword_1000AF5F0, &qword_10008B520);
        sub_1000055FC(v84, v122, &qword_1000AF5F0, &qword_10008B520);
        swift_storeEnumTagMultiPayload();
        sub_10006BDD0();
        sub_10006BF98();
        v85 = v124;
        sub_100080AD8();
        sub_1000055FC(v85, v31, &qword_1000AF600, &qword_10008B530);
        swift_storeEnumTagMultiPayload();
        sub_100002840(&qword_1000AF640, &qword_10008B560);
        sub_10006BCB8();
        sub_10006BD44();
        sub_100080AD8();
        sub_100005B2C(v85, &qword_1000AF600, &qword_10008B530);
        return sub_100005B2C(v84, &qword_1000AF5F0, &qword_10008B520);
      }

      else
      {
        v86 = *(v35 + 80);
        v129 = *(v35 + 64);
        v130 = v86;
        v131 = *(v35 + 96);
        LOBYTE(v132) = *(v35 + 112);
        v87 = *(v35 + 48);
        v127 = *(v35 + 32);
        v128 = v87;
        sub_10000C328(&v127, &v152);
        LOBYTE(v172) = v132;
        v170 = v130;
        v171 = v131;
        v168 = v128;
        v169 = v129;
        v167 = v127;
        v144 = v129;
        v145 = v130;
        v146 = v131;
        LOBYTE(v147) = v132;
        v142 = v127;
        v143 = v128;
        v152 = v127;
        v153 = v128;
        LOBYTE(v157) = v132;
        v155 = v130;
        v156 = v131;
        v154 = v129;
        if (sub_1000112D4())
        {
          sub_10006B0AC(&v127);
          v88 = v140;
          v27[12] = v139;
          v27[13] = v88;
          v27[14] = v141;
          v89 = v136;
          v27[8] = v135;
          v27[9] = v89;
          v90 = v138;
          v27[10] = v137;
          v27[11] = v90;
          v91 = v132;
          v27[4] = v131;
          v27[5] = v91;
          v92 = v134;
          v27[6] = v133;
          v27[7] = v92;
          v93 = v128;
          *v27 = v127;
          v27[1] = v93;
          v94 = v130;
          v27[2] = v129;
          v27[3] = v94;
          swift_storeEnumTagMultiPayload();
          sub_10006BE5C();
          sub_10006BEB0();
          v95 = v107;
          sub_100080AD8();
        }

        else
        {
          v96 = sub_10006B27C(v21);
          __chkstk_darwin(v96);
          v101[-2] = v33;
          sub_10006BE5C();
          sub_100080CE8();
          *&v127 = sub_100056778(0);
          *(&v127 + 1) = v97;
          sub_100005C98(&qword_1000AF670, &qword_1000AF608, &qword_10008B538, &protocol conformance descriptor for Link<A>);
          sub_1000057D0();
          v98 = v102;
          v99 = v104;
          sub_100080DD8();

          (*(v103 + 8))(v24, v99);
          sub_1000055FC(v98, v27, &qword_1000AF610, &qword_10008B540);
          swift_storeEnumTagMultiPayload();
          sub_10006BEB0();
          v95 = v107;
          sub_100080AD8();
          sub_100005B2C(v98, &qword_1000AF610, &qword_10008B540);
        }

        sub_1000055FC(v95, v122, &qword_1000AF620, &qword_10008B550);
        swift_storeEnumTagMultiPayload();
        sub_10006BDD0();
        sub_10006BF98();
        v100 = v124;
        sub_100080AD8();
        sub_1000055FC(v100, v31, &qword_1000AF600, &qword_10008B530);
        swift_storeEnumTagMultiPayload();
        sub_100002840(&qword_1000AF640, &qword_10008B560);
        sub_10006BCB8();
        sub_10006BD44();
        sub_100080AD8();
        sub_10002B884(&v167);
        sub_100005B2C(v100, &qword_1000AF600, &qword_10008B530);
        return sub_100005B2C(v95, &qword_1000AF620, &qword_10008B550);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}