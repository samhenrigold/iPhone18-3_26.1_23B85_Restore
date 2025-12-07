uint64_t sub_100075150@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v42 = sub_1000D1DBC();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006334(&qword_1001256E8, &qword_1000E7360);
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v41 = &v39 - v6;
  v45 = sub_100006334(&qword_1001256F0, &qword_1000E7368) - 8;
  __chkstk_darwin(v45);
  v44 = &v39 - v7;
  v46 = sub_100006334(&qword_1001256F8, &qword_1000E7370) - 8;
  __chkstk_darwin(v46);
  v39 = &v39 - v8;
  v50 = sub_100006334(&qword_100125700, &qword_1000E7378);
  __chkstk_darwin(v50);
  v49 = &v39 - v9;
  v10 = type metadata accessor for SportsWidgetPlayByPlayView(0);
  v11 = v1 + *(v10 + 20);
  v12 = *(v11 + 8);
  *&v52 = *v11;
  *(&v52 + 1) = v12;
  sub_10000F320();

  v13 = sub_1000D260C();
  v15 = v14;
  LOBYTE(v12) = v16;
  v18 = v17;
  v19 = *(v11 + 48);
  v40 = ~v19;
  v20 = (v19 & 1) == 0;
  KeyPath = swift_getKeyPath();
  *&v52 = v13;
  *(&v52 + 1) = v15;
  LOBYTE(v53) = v12 & 1;
  *(&v53 + 1) = v18;
  *&v54 = KeyPath;
  BYTE8(v54) = v20;
  sub_1000B2124(v4);
  (*(v43 + 8))(v4, v42);
  sub_100006334(&qword_100125708, &unk_1000E73B0);
  sub_100075FAC();
  v22 = v41;
  sub_1000D27BC();
  v23 = v13;
  v24 = v39;
  sub_10000F374(v23, v15, v12 & 1);

  v25 = v2 + *(v10 + 24);
  v26 = *(v25 + *(type metadata accessor for SportsWidgetPlayByPlayLayout(0) + 28));
  v27 = swift_getKeyPath();
  v28 = v44;
  (*(v47 + 32))(v44, v22, v48);
  v29 = (v28 + *(v45 + 44));
  *v29 = v27;
  v29[1] = v26;

  v30 = sub_1000D23CC();
  v31 = swift_getKeyPath();
  sub_10000F998(v28, v24, &qword_1001256F0, &qword_1000E7368);
  v32 = (v24 + *(v46 + 44));
  *v32 = v31;
  v32[1] = v30;
  if (v40)
  {
    sub_1000D2B5C();
  }

  else
  {
    sub_1000D2B6C();
  }

  sub_1000D1E2C();
  v33 = v49;
  sub_10000F998(v24, v49, &qword_1001256F8, &qword_1000E7370);
  v34 = (v33 + *(v50 + 36));
  v35 = v57;
  v34[4] = v56;
  v34[5] = v35;
  v34[6] = v58;
  v36 = v53;
  *v34 = v52;
  v34[1] = v36;
  v37 = v55;
  v34[2] = v54;
  v34[3] = v37;
  sub_100076074();
  sub_1000D262C();
  return sub_10000F938(v33, &qword_100125700, &qword_1000E7378);
}

uint64_t sub_1000756E8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v34 = a2;
  v33 = sub_1000D1DBC();
  v6 = *(v33 - 8);
  v7 = __chkstk_darwin(v33);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = a1 + *(type metadata accessor for SportsWidgetPlayByPlayView(0) + 24);
  v13 = type metadata accessor for SportsWidgetPlayByPlayLayout(0);
  v14 = *(v12 + v13[10]);
  v15 = *(v12 + v13[14]);
  sub_1000B2124(v11);
  LOBYTE(a1) = sub_1000D1D9C();
  v16 = *(v6 + 8);
  v17 = v11;
  v18 = v33;
  v16(v17, v33);
  v19 = 8.0;
  if (a1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 8.0;
  }

  sub_1000B2124(v9);
  v21 = sub_1000D1D9C();
  v16(v9, v18);
  if (v21)
  {
    v19 = 0.0;
  }

  v22 = *(v12 + v13[12]);
  sub_1000D1BEC();

  v23 = sub_1000D2B5C();
  *&v41 = v14;
  v24 = v34;
  BYTE8(v41) = v34;
  *(&v41 + 9) = v64[0];
  HIDWORD(v41) = *(v64 + 3);
  *&v42 = v15;
  *(&v42 + 1) = v19;
  v43 = v38;
  v44 = v39;
  v25 = v40;
  *&v45 = v40;
  *(&v45 + 1) = v22;
  LOWORD(v46) = 256;
  WORD3(v46) = v63;
  *(&v46 + 2) = v62;
  *(&v46 + 1) = v23;
  v47 = v26;
  *&v37[38] = v38;
  *&v37[22] = v42;
  *&v37[6] = v41;
  *&v37[102] = v26;
  *&v37[86] = v46;
  *&v37[70] = v45;
  *&v37[54] = v39;
  *a4 = v14;
  *(a4 + 8) = v24;
  *(a4 + 16) = v15;
  *(a4 + 24) = v20;
  *(a4 + 32) = v35;
  *(a4 + 40) = 256;
  v27 = *v37;
  v28 = *&v37[16];
  v29 = *&v37[48];
  *(a4 + 74) = *&v37[32];
  *(a4 + 58) = v28;
  *(a4 + 42) = v27;
  v30 = *&v37[64];
  v31 = *&v37[80];
  *(a4 + 136) = *&v37[94];
  *(a4 + 122) = v31;
  *(a4 + 106) = v30;
  *(a4 + 90) = v29;
  v48 = v14;
  v49 = v24;
  *&v50[3] = *(v64 + 3);
  *v50 = v64[0];
  v51 = v15;
  v52 = v19;
  v53 = v38;
  v54 = v39;
  v55 = v25;
  v56 = v22;
  v57 = 256;
  v59 = v63;
  v58 = v62;
  v60 = v23;
  v61 = v26;

  sub_10000F8D0(&v41, &v36, &qword_1001256E0, &qword_1000E7358);
  sub_10000F938(&v48, &qword_1001256E0, &qword_1000E7358);
}

double sub_100075A74@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  v17 = sub_1000D217C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Width = a7;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!a1)
  {
LABEL_5:
    v34.origin.x = a3;
    v34.origin.y = a4;
    v34.size.width = a5;
    v34.size.height = a6;
    Width = CGRectGetWidth(v34);
  }

LABEL_6:
  v30 = Width;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      goto LABEL_12;
    }
  }

  else if (!a1)
  {
    goto LABEL_12;
  }

  v29 = a8;
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  CGRectGetHeight(v35);
  if (a1 >= 3u)
  {
    v39.origin.x = a3;
    v39.origin.y = a4;
    v39.size.width = a5;
    v39.size.height = a6;
    v29 = CGRectGetMaxX(v39) - a7 - v29;
    v40.origin.x = a3;
    v40.origin.y = a4;
    v40.size.width = a5;
    v40.size.height = a6;
    CGRectGetMinY(v40);
    goto LABEL_17;
  }

  a8 = v29;
LABEL_12:
  v36.origin.x = a3;
  v36.origin.y = a4;
  v36.size.width = a5;
  v36.size.height = a6;
  v29 = CGRectGetMinX(v36) + a8;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  if (a1 != 2)
  {
    CGRectGetMinY(*&v22);
    if (!a1)
    {
      goto LABEL_15;
    }

LABEL_17:
    v41.origin.x = a3;
    v41.origin.y = a4;
    v41.size.width = a5;
    v41.size.height = a6;
    CGRectGetHeight(v41);
    goto LABEL_18;
  }

  CGRectGetMaxY(*&v22);
  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  CGRectGetWidth(v37);
LABEL_15:
  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  CGRectGetWidth(v38);
LABEL_18:
  (*(v18 + 104))(v20, enum case for RoundedCornerStyle.continuous(_:), v17);
  sub_1000D24EC();
  result = *&v31;
  v27 = v32;
  *a2 = v31;
  *(a2 + 16) = v27;
  *(a2 + 32) = v33;
  return result;
}

double sub_100075D48@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_100075A74(*(v5 + 8), v9, a2, a3, a4, a5, *v5, *(v5 + 16));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_100075D98(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1000D1B7C();
  return sub_10001B4F4;
}

uint64_t sub_100075E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100076580();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100075E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100076580();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100075EE8(uint64_t a1)
{
  v2 = sub_100076580();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_100075F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_1001256C0, &unk_1000E7330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100075FAC()
{
  result = qword_100125710;
  if (!qword_100125710)
  {
    sub_10000637C(&qword_100125708, &unk_1000E73B0);
    sub_10000FC38(&qword_1001224E8, &qword_1001224F0, &qword_1000E44D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125710);
  }

  return result;
}

unint64_t sub_100076074()
{
  result = qword_100125718;
  if (!qword_100125718)
  {
    sub_10000637C(&qword_100125700, &qword_1000E7378);
    sub_100076100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125718);
  }

  return result;
}

unint64_t sub_100076100()
{
  result = qword_100125720;
  if (!qword_100125720)
  {
    sub_10000637C(&qword_1001256F8, &qword_1000E7370);
    sub_1000761B8();
    sub_10000FC38(&qword_100124A00, &qword_100124A08, &qword_1000E4580, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125720);
  }

  return result;
}

unint64_t sub_1000761B8()
{
  result = qword_100125728;
  if (!qword_100125728)
  {
    sub_10000637C(&qword_1001256F0, &qword_1000E7368);
    sub_10000637C(&qword_100125708, &unk_1000E73B0);
    sub_100075FAC();
    swift_getOpaqueTypeConformance2();
    sub_10000FC38(&qword_1001251C0, &qword_1001251A8, &qword_1000E6300, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125728);
  }

  return result;
}

uint64_t sub_1000762AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 32))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000762F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_100076348()
{
  result = qword_100125730;
  if (!qword_100125730)
  {
    sub_10000637C(&qword_100125690, &qword_1000E7300);
    sub_1000763D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125730);
  }

  return result;
}

unint64_t sub_1000763D4()
{
  result = qword_100125738;
  if (!qword_100125738)
  {
    sub_10000637C(&qword_100125680, &qword_1000E72F0);
    sub_10000FC38(&qword_100125740, &qword_100125748, &qword_1000E7458, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125738);
  }

  return result;
}

unint64_t sub_1000764D4()
{
  result = qword_100125760;
  if (!qword_100125760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125760);
  }

  return result;
}

unint64_t sub_10007652C()
{
  result = qword_100125768;
  if (!qword_100125768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125768);
  }

  return result;
}

unint64_t sub_100076580()
{
  result = qword_100125770;
  if (!qword_100125770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125770);
  }

  return result;
}

id sub_1000765D4()
{
  result = [objc_allocWithZone(type metadata accessor for TVWidgetCache(0)) init];
  qword_10013C318 = result;
  return result;
}

id sub_1000766DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWidgetCache(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TVWidgetCache(uint64_t a1)
{
  result = qword_1001257B0;
  if (!qword_1001257B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000767C8(uint64_t a1)
{
  sub_1000768CC(319, &qword_1001257C0, type metadata accessor for TVWidgetEntry);
  if (v1 <= 0x3F)
  {
    sub_1000768CC(319, &qword_100122F10, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000768CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000D385C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100076920()
{
  v1 = sub_100006334(&qword_100122E90, &qword_1000E3E80);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_1000D19FC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - v10;
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntryDate;
  swift_beginAccess();
  sub_10000F8D0(v0 + v14, v3, &qword_100122E90, &qword_1000E3E80);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v15 = sub_10000F938(v3, &qword_100122E90, &qword_1000E3E80);
  }

  else
  {
    (*(v5 + 32))(v13, v3, v4);
    sub_1000D19EC();
    sub_1000D19DC();
    v16 = sub_1000D199C();
    v17 = *(v5 + 8);
    v17(v8, v4);
    v18 = (v17)(v11, v4);
    if (v16)
    {
      result = sub_100002C80(v18);
      if (result)
      {
        v20 = result;
        v21 = sub_1000D37AC();
        sub_1000D1B2C("WidgetCache::valid cached widget entry", 38, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

        v17(v13, v4);
        return 1;
      }

      goto LABEL_11;
    }

    v15 = (v17)(v13, v4);
  }

  result = sub_100002C80(v15);
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = sub_1000D37AC();
  sub_1000D1B2C("WidgetCache::expired cached widget entry", 40, 2, &_mh_execute_header, v22, v23, _swiftEmptyArrayStorage);

  sub_1000770E0();
  return 0;
}

void sub_100076C3C(uint64_t a1)
{
  v3 = sub_100006334(&qword_100122E90, &qword_1000E3E80);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_100006334(&qword_1001257C8, &unk_1000EAB80);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = type metadata accessor for TVWidgetEntry(0);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(a1, 1, v12);
  v15 = v14;
  v16 = sub_100002C80(v14);
  v31 = v16;
  if (v15 == 1)
  {
    if (v16)
    {
      v17 = sub_1000D37AC();
      sub_1000D1B2C("WidgetCache::attempted to store nil widget entry, no-op", 55, 2, &_mh_execute_header, v31, v17, _swiftEmptyArrayStorage);
      v18 = v31;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v29 = v5;
  v30 = v1;
  if (!v16)
  {
    goto LABEL_12;
  }

  v19 = sub_1000D37AC();
  sub_1000D1B2C("WidgetCache::storing widget entry in cache", 42, 2, &_mh_execute_header, v31, v19, _swiftEmptyArrayStorage);

  sub_10000F8D0(a1, v11, &qword_1001257C8, &unk_1000EAB80);
  v20 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntry;
  v21 = v30;
  swift_beginAccess();
  sub_10007701C(v11, v21 + v20, &qword_1001257C8, &unk_1000EAB80);
  swift_endAccess();
  sub_10000F8D0(a1, v9, &qword_1001257C8, &unk_1000EAB80);
  if (v13(v9, 1, v12) == 1)
  {
    sub_10000F938(v9, &qword_1001257C8, &unk_1000EAB80);
    v22 = sub_1000D19FC();
    v23 = v29;
    (*(*(v22 - 8) + 56))(v29, 1, 1, v22);
  }

  else
  {
    v24 = sub_1000D19FC();
    v25 = *(v24 - 8);
    v23 = v29;
    (*(v25 + 16))(v29, v9, v24);
    sub_100077084(v9, v26);
    (*(v25 + 56))(v23, 0, 1, v24);
  }

  v27 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntryDate;
  v28 = v30;
  swift_beginAccess();
  sub_10007701C(v23, v28 + v27, &qword_100122E90, &qword_1000E3E80);
  swift_endAccess();
}

uint64_t sub_10007701C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006334(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100077084(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TVWidgetEntry(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1000770E0()
{
  v1 = sub_100006334(&qword_100122E90, &qword_1000E3E80);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_100006334(&qword_1001257C8, &unk_1000EAB80);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  result = sub_100002C80(v5);
  if (result)
  {
    v9 = result;
    v10 = sub_1000D37AC();
    sub_1000D1B2C("WidgetCache::purging cache", 26, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);

    v11 = type metadata accessor for TVWidgetEntry(0);
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntry;
    swift_beginAccess();
    sub_10007701C(v7, v0 + v12, &qword_1001257C8, &unk_1000EAB80);
    swift_endAccess();
    v13 = sub_1000D19FC();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    v14 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntryDate;
    swift_beginAccess();
    sub_10007701C(v3, v0 + v14, &qword_100122E90, &qword_1000E3E80);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1000772F0(double a1, double a2, double a3, double a4)
{
  v5 = sub_1000D329C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v4, v5);
  sub_100098FF4(v8);
  v10 = v9;
  sub_1000D325C();
  v11 = sub_1000D326C();
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_1000D325C();
  v13 = sub_1000D326C();
  v12(v8, v5);
  if (v13)
  {
    sub_1000D2B6C();
  }

  else
  {
    sub_1000D2B7C();
  }

  sub_1000D2B6C();
  sub_1000D2B2C();
  sub_1000D325C();
  v14 = sub_1000D326C();
  v12(v8, v5);
  if (v14)
  {
    sub_1000D2B6C();
  }

  else
  {
    sub_1000D2B7C();
  }

  v15 = 4.0;
  if (v11)
  {
    v15 = -4.0;
  }

  v16 = v10 - v15;
  sub_1000D2B7C();
  sub_1000D2B2C();
  return v16;
}

uint64_t sub_100077538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D329C();
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

uint64_t sub_10007760C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000D329C();
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

uint64_t type metadata accessor for TVWidgetHeaderViewLayout(uint64_t a1)
{
  result = qword_100125828;
  if (!qword_100125828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100077714(uint64_t a1)
{
  result = sub_1000D329C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000777AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D19FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100077888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000D19FC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for TVWidgetEntry(uint64_t a1)
{
  result = qword_1001258C0;
  if (!qword_1001258C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007798C(uint64_t a1)
{
  sub_1000D19FC();
  if (v1 <= 0x3F)
  {
    sub_100077A28(319);
    if (v2 <= 0x3F)
    {
      sub_100077A8C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100077A28(uint64_t a1)
{
  if (!qword_1001258D0)
  {
    sub_10000637C(&qword_1001258D8, &qword_1000E75E0);
    v1 = sub_1000D385C();
    if (!v2)
    {
      atomic_store(v1, &qword_1001258D0);
    }
  }
}

void sub_100077A8C()
{
  if (!qword_1001258E0)
  {
    v0 = sub_1000D385C();
    if (!v1)
    {
      atomic_store(v0, &qword_1001258E0);
    }
  }
}

uint64_t sub_100077B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for TVWidgetEntry(0) + 20));
  if (!v3)
  {
    goto LABEL_19;
  }

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_1000D397C();
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  v5 = 0;
  while ((v3 & 0xC000000000000001) != 0)
  {
    v6 = sub_1000D38FC();
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

LABEL_10:
    v8 = *(v6 + 74);
    if (v8 == 2 || (v8 & 1) == 0)
    {
    }

    else
    {
      sub_1000D391C();
      sub_1000D393C();
      sub_1000D394C();
      sub_1000D392C();
    }

    ++v5;
    if (v7 == v4)
    {
      goto LABEL_16;
    }
  }

  if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = *(v3 + 8 * v5 + 32);

  v7 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    sub_1000D397C();
  }

LABEL_19:
  sub_1000D33DC();
  v9 = sub_1000D33FC();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 0, 1, v9);
}

uint64_t sub_100077D08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000D19FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id sub_100077DA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v31 = a4;
  v28 = a2;
  v29 = a3;
  v5 = sub_1000D19FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = sub_1000D323C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_1000D344C();
  sub_10007C940(&qword_100125998, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v16 = sub_1000D39BC();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  v19 = sub_1000D19EC();
  result = sub_100002C80(v19);
  if (result)
  {
    v21 = result;
    sub_100006334(&qword_100122C50, &qword_1000E3F90);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000E0440;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100018744();
    *(v22 + 32) = v16;
    *(v22 + 40) = v18;

    v23 = sub_1000D37AC();
    sub_1000D1B2C("TVWidgetExtension::snapshot::[%{public}@] begin", 47, 2, &_mh_execute_header, v21, v23, v22);

    (*(v6 + 16))(v9, v11, v5);
    v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v16;
    *(v25 + 24) = v18;
    (*(v6 + 32))(v25 + v24, v9, v5);
    v26 = (v25 + ((v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    v27 = v29;
    *v26 = v28;
    v26[1] = v27;

    sub_1000782B4(v30, sub_10007CC28, v25, v31);

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000780DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v21 = a6;
  v9 = sub_1000D19FC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100002C80(v11);
  if (result)
  {
    v15 = result;
    sub_100006334(&qword_100122C50, &qword_1000E3F90);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000E2080;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100018744();
    *(v16 + 32) = a3;
    *(v16 + 40) = a4;

    sub_1000D19EC();
    sub_1000D196C();
    v18 = v17;
    (*(v10 + 8))(v13, v9);
    *(v16 + 96) = &type metadata for Double;
    *(v16 + 104) = &protocol witness table for Double;
    *(v16 + 72) = v18;
    v19 = sub_1000D37AC();
    sub_1000D1B2C("TVWidgetExtension::snapshot::[%{public}@] returning snapshot. elapsed:%{public}.5fs", 83, 2, &_mh_execute_header, v15, v19, v16);

    return v21(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000782B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v71 = a2;
  v72 = a1;
  *&v70 = sub_1000D346C();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000D2C2C();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000D2C4C();
  v62 = *(v10 - 8);
  v63 = v10;
  __chkstk_darwin(v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100006334(&qword_1001257C8, &unk_1000EAB80);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - v14;
  v16 = type metadata accessor for TVWidgetEntry(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v20 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v60 - v21;
  v66 = a4;
  sub_100079554(v15);
  v23 = (*(v17 + 48))(v15, 1, v16);
  v67 = a3;
  if (v23 == 1)
  {
    sub_10000F938(v15, &qword_1001257C8, &unk_1000EAB80);
  }

  else
  {
    sub_10007C724(v15, v22);
    sub_10007CB04(0, &qword_100124668, OS_dispatch_queue_ptr);
    v61 = sub_1000D37DC();
    sub_10007C788(v22, v20);
    v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v71;
    *(v25 + 24) = a3;
    sub_10007C724(v20, v25 + v24);
    v77 = sub_10007C8DC;
    v78 = v25;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_100079E60;
    v76 = &unk_10011B988;
    v26 = _Block_copy(&aBlock);

    sub_1000D2C3C();
    aBlock = _swiftEmptyArrayStorage;
    sub_10007C940(&qword_100124670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100006334(&qword_100124678, &unk_1000E7880);
    sub_10000FC38(&qword_100124680, &qword_100124678, &unk_1000E7880, &protocol conformance descriptor for [A]);
    v27 = v65;
    sub_1000D38AC();
    v28 = v61;
    sub_1000D37EC();
    _Block_release(v26);

    (*(v64 + 8))(v9, v27);
    (*(v62 + 8))(v12, v63);
    sub_100077084(v22, v29);
  }

  v30 = v69;
  (*(v68 + 16))(v69, v72, v70);
  v31 = objc_allocWithZone(type metadata accessor for TVWidgetFetchOperation(0));
  v32 = sub_10009973C(v30);
  v33 = sub_100002C80(v32);
  if (!v33)
  {
    goto LABEL_18;
  }

  v34 = v33;
  sub_100006334(&qword_100122C50, &qword_1000E3F90);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000E0440;
  v36 = v67;
  v37 = v71;
  if (*&v32[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8])
  {
    v38 = *&v32[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
    v39 = *&v32[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
  }

  else
  {
    v70 = xmmword_1000E0440;
    sub_10007CB04(0, &qword_100122C58, NSString_ptr);
    v40 = v32;
    v41 = sub_1000D381C("%p", v60);
    v42 = swift_allocObject();
    *(v42 + 16) = v70;
    *(v42 + 56) = type metadata accessor for TVWidgetAsyncOperation();
    *(v42 + 64) = sub_10007C940(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation, &protocol conformance descriptor for NSObject);
    *(v42 + 32) = v40;
    v43 = v40;
    v44 = sub_1000D382C();

    v38 = sub_1000D360C();
    v39 = v45;
  }

  *(v35 + 56) = &type metadata for String;
  *(v35 + 64) = sub_100018744();
  *(v35 + 32) = v38;
  *(v35 + 40) = v39;

  v46 = sub_1000D37AC();
  sub_1000D1B2C("TimeLineProvider::getWidgetEntry op:%{public}@", 46, 2, &_mh_execute_header, v34, v46, v35);

  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v32;
  v49 = v66;
  v48[4] = v66;
  v48[5] = v37;
  v48[6] = v36;
  v77 = sub_10007C6CC;
  v78 = v48;
  aBlock = _NSConcreteStackBlock;
  v74 = 1107296256;
  v75 = sub_100079E60;
  v76 = &unk_10011B938;
  v50 = _Block_copy(&aBlock);
  v51 = v32;

  v52 = v51;

  v53 = v49;
  sub_10007C714(sub_10007C6CC, v48);

  [v52 setCompletionBlock:v50];
  _Block_release(v50);

  if (sub_1000D345C())
  {
    sub_1000D320C();
  }

  else
  {
    sub_1000D321C();
  }

  v55 = (v54 + -3.0) * 1000.0;
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v55 > -9.22337204e18)
  {
    if (v55 < 9.22337204e18)
    {
      v56 = v55;
      v57 = swift_allocObject();
      v57[2] = v47;
      v57[3] = v52;
      v57[4] = v53;
      v57[5] = v37;
      v57[6] = v36;

      v58 = v52;

      v59 = v53;
      sub_1000B68E8(v58, v56, sub_10007C6E4, v57);

      return;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_100078B94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = a4;
  v30 = a2;
  v31 = a3;
  v5 = sub_1000D19FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = sub_1000D323C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_1000D344C();
  sub_10007C940(&qword_100125998, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v16 = sub_1000D39BC();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  v19 = sub_1000D19EC();
  result = sub_100002C80(v19);
  if (result)
  {
    v21 = result;
    sub_100006334(&qword_100122C50, &qword_1000E3F90);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000E0440;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100018744();
    *(v22 + 32) = v16;
    *(v22 + 40) = v18;

    v23 = sub_1000D37AC();
    sub_1000D1B2C("TVWidgetExtension::timeline::[%{public}@] begin", 47, 2, &_mh_execute_header, v21, v23, v22);

    (*(v6 + 16))(v9, v11, v5);
    v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v6 + 32))(v26 + v24, v9, v5);
    v27 = (v26 + v25);
    *v27 = v16;
    v27[1] = v18;
    v28 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
    v29 = v31;
    *v28 = v30;
    v28[1] = v29;

    sub_1000782B4(v32, sub_10007C5F8, v26, v33);

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100078EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v65 = a7;
  v66 = a6;
  v54 = a4;
  v55 = a5;
  v8 = sub_1000D33BC();
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100006334(&qword_1001259A8, &qword_1000E7890);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v60 = &v53 - v13;
  v14 = sub_1000D33FC();
  v67 = *(v14 - 8);
  v68 = v14;
  __chkstk_darwin(v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000D19FC();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = *(v18 + 16);
  v57 = &v53 - v23;
  v22();
  sub_1000D19EC();
  sub_1000D196C();
  v25 = v24;
  v26 = *(v18 + 8);
  v58 = v18 + 8;
  v59 = v17;
  v56 = v26;
  v26(v21, v17);
  v27 = type metadata accessor for TVWidgetEntry(0);
  v28 = *(v27 + 20);
  v61 = a1;
  v62 = v12;
  v29 = *(a1 + v28);
  v63 = v10;
  v64 = v11;
  v53 = v27;
  if (!v29)
  {
    goto LABEL_19;
  }

  if (v29 >> 62)
  {
LABEL_22:
    v30 = sub_1000D397C();
    if (!v30)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_19;
    }
  }

  v31 = 0;
  v69 = _swiftEmptyArrayStorage;
  while ((v29 & 0xC000000000000001) != 0)
  {
    v32 = sub_1000D38FC();
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_15;
    }

LABEL_10:
    v34 = *(v32 + 74);
    if (v34 == 2 || (v34 & 1) == 0)
    {
    }

    else
    {
      sub_1000D391C();
      sub_1000D393C();
      sub_1000D394C();
      sub_1000D392C();
    }

    ++v31;
    if (v33 == v30)
    {
      goto LABEL_16;
    }
  }

  if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v32 = *(v29 + 8 * v31 + 32);

  v33 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  if ((v69 & 0x8000000000000000) != 0 || (v69 & 0x4000000000000000) != 0)
  {
    sub_1000D397C();
  }

LABEL_19:
  sub_1000D33DC();
  sub_1000D33EC();
  v36 = v35;
  (*(v67 + 8))(v16, v68);
  sub_10007CB04(0, &qword_1001244F0, OS_os_log_ptr);
  v37 = sub_1000D383C();
  v38 = sub_1000D37AC();
  sub_1000D1B2C("TVWidgetExtension::timeline::returning timeline.", 48, 2, &_mh_execute_header, v37, v38, _swiftEmptyArrayStorage);

  result = sub_100002C80(v39);
  if (result)
  {
    v41 = result;
    sub_100006334(&qword_100122C50, &qword_1000E3F90);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1000E5A50;
    *(v42 + 56) = &type metadata for String;
    v43 = sub_100018744();
    *(v42 + 64) = v43;
    v44 = v55;
    *(v42 + 32) = v54;
    *(v42 + 40) = v44;

    v45 = v57;
    v46 = sub_1000D195C();
    *(v42 + 96) = &type metadata for String;
    *(v42 + 104) = v43;
    *(v42 + 72) = v46;
    *(v42 + 80) = v47;
    sub_1000D19BC();
    *(v42 + 136) = &type metadata for Double;
    *(v42 + 144) = &protocol witness table for Double;
    *(v42 + 112) = v48;
    *(v42 + 176) = &type metadata for Double;
    *(v42 + 184) = &protocol witness table for Double;
    *(v42 + 152) = v25;
    *(v42 + 216) = &type metadata for Float;
    *(v42 + 224) = &protocol witness table for Float;
    *(v42 + 192) = v36;
    v49 = sub_1000D37AC();
    sub_1000D1B2C("TVWidgetExtension::timeline::[%{public}@] refreshDate: %{public}@ (%{public}.0fs) elapsed:%{public}.5fs relevance:%.0f", 118, 2, &_mh_execute_header, v41, v49, v42);

    sub_100006334(&qword_1001259B0, qword_1000E7898);
    v50 = (*(*(v53 - 8) + 80) + 32) & ~*(*(v53 - 8) + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1000E0440;
    sub_10007C788(v61, v51 + v50);
    sub_1000D33AC();
    sub_10007C940(&qword_100125990, type metadata accessor for TVWidgetEntry, &unk_1000E75E8);
    v52 = v60;
    sub_1000D350C();
    v66(v52);
    (*(v62 + 8))(v52, v64);
    return v56(v45, v59);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100079554@<X0>(uint64_t a1@<X8>)
{
  v22[3] = &type metadata for TVWidgetFeature;
  v22[4] = sub_10007CA64();
  v2 = sub_1000D1A4C();
  sub_10007CAB8(v22);
  if (v2)
  {
    sub_1000D1B1C();
    sub_1000D1B0C();
    v3 = sub_1000D1AFC();

    if ((v3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1000D1A7C();
    v12 = sub_1000D1A5C();
    if (v12)
    {
      v13 = v12;
      v14 = objc_opt_self();
      v15 = sub_1000D35FC();
      LODWORD(v14) = [v14 acknowledgementNeededForPrivacyIdentifier:v15 account:v13];

      if (!v14)
      {

        v21 = type metadata accessor for TVWidgetEntry(0);
        return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
      }

      result = sub_100002C80(v16);
      if (!result)
      {
        goto LABEL_18;
      }

      v17 = result;
      v18 = sub_1000D37AC();
      sub_1000D1B2C("TimeLineProvider::contentPlaceholder - gdpr acceptance needed", 61, 2, &_mh_execute_header, v17, v18, _swiftEmptyArrayStorage);

      sub_1000D19EC();
    }

    else
    {
      result = sub_100002C80(0);
      if (!result)
      {
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v19 = result;
      v20 = sub_1000D37AC();
      sub_1000D1B2C("TimeLineProvider::contentPlaceholder - no account", 49, 2, &_mh_execute_header, v19, v20, _swiftEmptyArrayStorage);

      sub_1000D19EC();
    }

    v8 = type metadata accessor for TVWidgetEntry(0);
    v9 = v8;
    *(a1 + *(v8 + 20)) = 0;
    *(a1 + *(v8 + 24)) = 3;
    return (*(*(v8 - 8) + 56))(a1, 0, 1, v9);
  }

  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 isNetworkReachable];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  result = sub_100002C80(v4);
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = sub_1000D37AC();
  sub_1000D1B2C("TVWidgetExtension::contentPlaceholder - network not reachable", 61, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);

  sub_1000D19EC();
  v8 = type metadata accessor for TVWidgetEntry(0);
  v9 = v8;
  *(a1 + *(v8 + 20)) = 0;
  *(a1 + *(v8 + 24)) = 2;
  return (*(*(v8 - 8) + 56))(a1, 0, 1, v9);
}

uint64_t sub_100079834(void (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000D19FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D19EC();
  a1(a3, v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100079918(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000D2C2C();
  v25 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000D2C4C();
  v13 = *(v24 - 8);
  __chkstk_darwin(v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007CB04(0, &qword_100124668, OS_dispatch_queue_ptr);
  v23 = sub_1000D37DC();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_10007CA34;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100079E60;
  aBlock[3] = &unk_10011B9D8;
  v17 = _Block_copy(aBlock);

  v18 = a2;
  v19 = a3;

  sub_1000D2C3C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007C940(&qword_100124670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100006334(&qword_100124678, &unk_1000E7880);
  sub_10000FC38(&qword_100124680, &qword_100124678, &unk_1000E7880, &protocol conformance descriptor for [A]);
  sub_1000D38AC();
  v20 = v23;
  sub_1000D37EC();
  _Block_release(v17);

  (*(v25 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v24);
}

id sub_100079C38(uint64_t a1, char *a2, uint64_t a3, void (*a4)(char *, char *), uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v10 = swift_beginAccess();
    *(a1 + 16) = 1;
    result = sub_100002C80(v10);
    if (result)
    {
      v11 = result;
      sub_100006334(&qword_100122C50, &qword_1000E3F90);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1000E0440;
      if (*&a2[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8])
      {
        v13 = *&a2[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
        v14 = *&a2[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
      }

      else
      {
        *(&v21 + 1) = 2;
        sub_10007CB04(0, &qword_100122C58, NSString_ptr);
        v15 = sub_1000D381C("%p", 1);
        v16 = swift_allocObject();
        *(v16 + 16) = v21;
        *(v16 + 56) = type metadata accessor for TVWidgetAsyncOperation();
        *(v16 + 64) = sub_10007C940(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation, &protocol conformance descriptor for NSObject);
        *(v16 + 32) = a2;
        v17 = a2;
        v18 = sub_1000D382C();

        v13 = sub_1000D360C();
        v14 = v19;
      }

      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_100018744();
      *(v12 + 32) = v13;
      *(v12 + 40) = v14;

      v20 = sub_1000D37AC();
      sub_1000D1B2C("TimeLineProvider::getWidgetEntry completion handler for:[%{public}@]", 68, 2, &_mh_execute_header, v11, v20, v12);

      return sub_10007B3A8(a2, 0, a4, a5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100079E60(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100079EA4(uint64_t a1, char *a2, uint64_t a3, void (*a4)(char *, char *), uint64_t a5)
{
  v9 = sub_1000D2C7C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007CB04(0, &qword_100124668, OS_dispatch_queue_ptr);
  *v12 = sub_1000D37DC();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = sub_1000D2C9C();
  result = (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    return result;
  }

  v15 = swift_beginAccess();
  *(a1 + 16) = 1;
  result = sub_100002C80(v15);
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v16 = result;
  sub_100006334(&qword_100122C50, &qword_1000E3F90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000E0440;
  if (*&a2[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8])
  {
    v18 = *&a2[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
    v19 = *&a2[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
  }

  else
  {
    v26 = xmmword_1000E0440;
    sub_10007CB04(0, &qword_100122C58, NSString_ptr);
    v20 = sub_1000D381C("%p", v26);
    v21 = swift_allocObject();
    *(v21 + 16) = v26;
    *(v21 + 56) = type metadata accessor for TVWidgetAsyncOperation();
    *(v21 + 64) = sub_10007C940(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation, &protocol conformance descriptor for NSObject);
    *(v21 + 32) = a2;
    v22 = a2;
    v23 = sub_1000D382C();

    v18 = sub_1000D360C();
    v19 = v24;
  }

  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100018744();
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;

  v25 = sub_1000D37AC();
  sub_1000D1B2C("TimeLineProvider::getWidgetEntry time-out handler for:[%{public}@]", 66, 2, &_mh_execute_header, v16, v25, v17);

  return sub_10007B3A8(a2, 1, a4, a5);
}

uint64_t sub_10007A1BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000D323C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D344C();
  v6 = sub_100086C78(v5);
  (*(v3 + 8))(v5, v2);
  sub_1000D19EC();
  result = type metadata accessor for TVWidgetEntry(0);
  *(a1 + *(result + 20)) = v6;
  *(a1 + *(result + 24)) = 4;
  return result;
}

uint64_t sub_10007A2CC(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000119BC;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10007A380(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100013B8C;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10007A434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v61 = a1;
  LODWORD(v62) = a3;
  v58 = a2;
  v69 = a5;
  v5 = sub_100006334(&qword_100122248, &unk_1000E7690);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - v7;
  v9 = sub_100006334(&qword_100122240, &unk_1000DE9A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56 - v11;
  *&v70 = sub_100006334(&qword_100125918, &qword_1000E76A0);
  v59 = *(v70 - 8);
  __chkstk_darwin(v70);
  v14 = &v56 - v13;
  v71 = sub_100006334(&qword_100125920, &qword_1000E76A8);
  v63 = *(v71 - 8);
  __chkstk_darwin(v71);
  v57 = &v56 - v15;
  v16 = sub_100006334(&qword_100125928, &qword_1000E76B0);
  v17 = *(v16 - 8);
  v65 = v16;
  v66 = v17;
  __chkstk_darwin(v16);
  v72 = &v56 - v18;
  v19 = sub_100006334(&qword_100125930, &qword_1000E76B8);
  v20 = *(v19 - 8);
  v67 = v19;
  v68 = v20;
  __chkstk_darwin(v19);
  v64 = &v56 - v21;
  v22 = [objc_allocWithZone(NSOperationQueue) init];
  v23 = sub_1000D35FC();
  [v22 setName:v23];

  [v22 setMaxConcurrentOperationCount:1];
  [v22 setQualityOfService:25];
  v73 = v22;
  sub_100006334(&qword_100125938, &unk_1000E76C0);
  sub_10007B090();
  sub_10007B178();
  sub_1000D339C();
  v24 = sub_10000FC38(&qword_100122250, &qword_100122248, &unk_1000E7690, &protocol conformance descriptor for StaticConfiguration<A>);
  sub_1000D227C();
  (*(v6 + 8))(v8, v5);
  v73 = v5;
  v74 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000D226C();
  (*(v10 + 8))(v12, v9);

  v26 = sub_1000D25EC();
  v28 = v27;
  LOBYTE(v23) = v29;
  v73 = v9;
  v74 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v70;
  sub_1000D222C();
  sub_10000F374(v26, v28, v23 & 1);

  (*(v59 + 8))(v14, v31);
  v62 = sub_100006334(&qword_100125968, &qword_1000E76D0);
  v32 = sub_1000D323C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1000E5A60;
  v37 = v36 + v35;
  LODWORD(v61) = enum case for WidgetFamily.systemSmall(_:);
  v38 = *(v33 + 104);
  v38(v36 + v35);
  (v38)(v37 + v34, enum case for WidgetFamily.systemMedium(_:), v32);
  (v38)(v37 + 2 * v34, enum case for WidgetFamily.systemLarge(_:), v32);
  (v38)(v37 + 3 * v34, enum case for WidgetFamily.systemExtraLarge(_:), v32);
  v73 = v70;
  v74 = v30;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v71;
  v41 = v57;
  sub_1000D220C();

  (*(v63 + 8))(v41, v40);
  sub_100006334(&qword_100125970, &qword_1000E76D8);
  sub_1000D329C();
  v42 = swift_allocObject();
  v70 = xmmword_1000E0440;
  *(v42 + 16) = xmmword_1000E0440;
  sub_1000D327C();
  v43 = swift_allocObject();
  *(v43 + 16) = v70;
  (v38)(v43 + v35, v61, v32);
  v73 = v71;
  v74 = v39;
  v44 = swift_getOpaqueTypeConformance2();
  v46 = v64;
  v45 = v65;
  v47 = v72;
  sub_1000D221C();

  v48 = v47;
  v49 = v45;
  (*(v66 + 8))(v48, v45);
  sub_1000D215C();
  v50 = sub_1000D25EC();
  v52 = v51;
  LOBYTE(v28) = v53;
  v73 = v49;
  v74 = v44;
  swift_getOpaqueTypeConformance2();
  v54 = v67;
  sub_1000D21EC();
  sub_10000F374(v50, v52, v28 & 1);

  return (*(v68 + 8))(v46, v54);
}

uint64_t sub_10007ADF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TVWidgetEntry(0);
  v5 = *(a1 + *(v4 + 20));
  v6 = *(a1 + *(v4 + 24));

  sub_100099144(v21);
  KeyPath = swift_getKeyPath();
  v8 = type metadata accessor for TVWidgetView(0);
  *(a2 + v8[7]) = KeyPath;
  sub_100006334(&qword_100125978, &qword_1000E7710);
  swift_storeEnumTagMultiPayload();
  *a2 = v5;
  *(a2 + 8) = v6;
  v9 = v21[5];
  *(a2 + 80) = v21[4];
  *(a2 + 96) = v9;
  *(a2 + 112) = v21[6];
  v10 = v21[1];
  *(a2 + 16) = v21[0];
  *(a2 + 32) = v10;
  v11 = v21[3];
  *(a2 + 48) = v21[2];
  *(a2 + 64) = v11;
  v12 = a2 + v8[8];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v8[9];
  *(a2 + v13) = swift_getKeyPath();
  sub_100006334(&qword_100125980, &qword_1000E7770);
  swift_storeEnumTagMultiPayload();
  v14 = a2 + v8[10];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  v15 = swift_getKeyPath();
  v16 = (a2 + *(sub_100006334(&qword_100125938, &unk_1000E76C0) + 36));
  v17 = *(sub_100006334(&qword_100125958, &unk_1000EB320) + 28);
  v18 = enum case for ColorScheme.dark(_:);
  v19 = sub_1000D1BBC();
  result = (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = v15;
  return result;
}

void sub_10007AFC8(uint64_t a1@<X8>)
{
  v2 = sub_1000D215C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100002C80(v2);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1000D37AC();
    sub_1000D1B2C("TVWidgetExtension::TVWidget::init", 33, 2, &_mh_execute_header, v10, v11, _swiftEmptyArrayStorage);

    *a1 = v2;
    *(a1 + 8) = v4;
    *(a1 + 16) = v6 & 1;
    *(a1 + 24) = v8;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10007B090()
{
  result = qword_100125940;
  if (!qword_100125940)
  {
    sub_10000637C(&qword_100125938, &unk_1000E76C0);
    sub_10007C940(&qword_100125948, type metadata accessor for TVWidgetView, &unk_1000EBB88);
    sub_10000FC38(&qword_100125950, &qword_100125958, &unk_1000EB320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125940);
  }

  return result;
}

unint64_t sub_10007B178()
{
  result = qword_100125960;
  if (!qword_100125960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125960);
  }

  return result;
}

uint64_t sub_10007B1CC()
{
  sub_1000D204C();
  sub_10007C940(&qword_100125988, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_1000D20FC();
  return v1;
}

void *sub_10007B248@<X0>(_BYTE *a1@<X8>)
{
  sub_1000D204C();
  sub_10007C940(&qword_100125988, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_1000D20FC();
  *a1 = v3;
  return result;
}

uint64_t sub_10007B2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

id sub_10007B3A8(char *a1, char a2, void (*a3)(char *, char *), uint64_t a4)
{
  v123 = a4;
  v124 = a3;
  v5 = sub_100006334(&qword_1001257C8, &unk_1000EAB80);
  v6 = __chkstk_darwin(v5 - 8);
  v122 = v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v112 - v8;
  v10 = type metadata accessor for TVWidgetEntry(0);
  v126 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v121 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v112 - v13;
  v15 = sub_100006334(&qword_100122E90, &qword_1000E3E80);
  __chkstk_darwin(v15 - 8);
  v17 = v112 - v16;
  v18 = sub_1000D19FC();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v119 = v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v120 = v112 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = v112 - v25;
  __chkstk_darwin(v24);
  v28 = v112 - v27;
  sub_1000D19AC();
  v125 = v26;
  if (a1)
  {
    objc_sync_enter(a1);
    v29 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__suggestedRefreshDate;
    swift_beginAccess();
    sub_10000F8D0(&a1[v29], v17, &qword_100122E90, &qword_1000E3E80);
    objc_sync_exit(a1);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      (*(v19 + 32))(v26, v17, v18);
      goto LABEL_8;
    }
  }

  else
  {
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  (*(v19 + 16))(v26, v28, v18);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_10000F938(v17, &qword_100122E90, &qword_1000E3E80);
  }

  if (!a1)
  {
    v30 = v126;
    (*(v126 + 7))(v9, 1, 1, v10);
    goto LABEL_11;
  }

LABEL_8:
  v30 = v126;
  objc_sync_enter(a1);
  v31 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__widgetEntry;
  swift_beginAccess();
  sub_10000F8D0(&a1[v31], v9, &qword_1001257C8, &unk_1000EAB80);
  objc_sync_exit(a1);
  v32 = *(v30 + 6);
  if (v32(v9, 1, v10) != 1)
  {
    sub_10007C724(v9, v14);
    goto LABEL_14;
  }

LABEL_11:
  sub_1000D19EC();
  *&v14[*(v10 + 20)] = 0;
  v14[*(v10 + 24)] = 2;
  v32 = *(v30 + 6);
  if (v32(v9, 1, v10) != 1)
  {
    sub_10000F938(v9, &qword_1001257C8, &unk_1000EAB80);
  }

  if (!a1)
  {
    goto LABEL_33;
  }

LABEL_14:
  v33 = a1;
  objc_sync_enter(v33);
  v34 = *&v33[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__error];
  swift_errorRetain();
  objc_sync_exit(v33);
  if (!v34)
  {

LABEL_33:
    v58 = v125;
    v124(v14, v125);
    sub_100077084(v14, v59);
    v60 = *(v19 + 8);
    v60(v58, v18);
    return (v60)(v28, v18);
  }

  v118 = v28;
  v35 = sub_1000D187C();

  v36 = [v35 domain];
  v37 = sub_1000D360C();
  v39 = v38;

  if (v37 == sub_1000D360C() && v39 == v40)
  {
  }

  else
  {
    v41 = sub_1000D39CC();

    if ((v41 & 1) == 0)
    {

LABEL_32:
      v28 = v118;
      goto LABEL_33;
    }
  }

  v117 = v35;
  v42 = [v35 userInfo];
  v43 = sub_1000D351C();

  v44 = sub_1000D360C();
  if (!*(v43 + 16))
  {

LABEL_30:

LABEL_31:
    goto LABEL_32;
  }

  v116 = v33;
  v46 = sub_1000232F8(v44, v45);
  v48 = v47;

  if ((v48 & 1) == 0)
  {

    v33 = v116;
    goto LABEL_30;
  }

  sub_10007C988(*(v43 + 56) + 32 * v46, v128);

  v49 = swift_dynamicCast();
  if ((v49 & 1) == 0)
  {

    goto LABEL_31;
  }

  v28 = v118;
  v50 = v116;
  if (v127 != 500)
  {
LABEL_51:

    goto LABEL_33;
  }

  result = sub_100002C80(v49);
  if (!result)
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v52 = result;
  v53 = sub_100006334(&qword_100122C50, &qword_1000E3F90);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1000E0440;
  v54 = *&v50[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
  v112[1] = v53;
  v115 = xmmword_1000E0440;
  v112[0] = &v50[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
  if (v54)
  {
    v55 = *&v50[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
    v56 = v50;
    v57 = v54;
  }

  else
  {
    sub_10007CB04(0, &qword_100122C58, NSString_ptr);
    v61 = v50;
    v62 = v52;
    v63 = v61;
    v64 = sub_1000D381C("%p", v112[0]);
    v65 = swift_allocObject();
    *(v65 + 16) = v115;
    *(v65 + 56) = type metadata accessor for TVWidgetAsyncOperation();
    *(v65 + 64) = sub_10007C940(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation, &protocol conformance descriptor for NSObject);
    *(v65 + 32) = v63;
    v66 = v63;
    v67 = sub_1000D382C();

    v55 = sub_1000D360C();
    v57 = v68;

    v52 = v62;
  }

  v69 = v114;
  *(v114 + 56) = &type metadata for String;
  v113 = sub_100018744();
  v69[8] = v113;
  v69[4] = v55;
  v69[5] = v57;

  v70 = sub_1000D37AC();
  sub_1000D1B2C("finishOp::[%{public}@] handling 500 error", 41, 2, &_mh_execute_header, v52, v70, v69);

  if (qword_1001220C0 != -1)
  {
    swift_once();
  }

  v71 = qword_10013C318;
  v72 = sub_100076920();
  v73 = v72;
  result = sub_100002C80(v72);
  v74 = result;
  v28 = v118;
  if ((v73 & 1) == 0)
  {
    if (!result)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v87 = sub_1000D37AC();
    sub_1000D1B2C("WidgetCache::expired cached entry, returning nil", 48, 2, &_mh_execute_header, v74, v87, _swiftEmptyArrayStorage);

    v78 = v122;
    (*(v126 + 7))(v122, 1, 1, v10);
LABEL_46:
    v88 = sub_10000F938(v78, &qword_1001257C8, &unk_1000EAB80);
    result = sub_100002C80(v88);
    if (result)
    {
      v89 = result;
      v90 = swift_allocObject();
      *(v90 + 16) = v115;
      v91 = *(v112[0] + 1);
      if (v91)
      {
        v92 = *v112[0];

        v50 = v116;
      }

      else
      {
        sub_10007CB04(0, &qword_100122C58, NSString_ptr);
        v93 = sub_1000D381C("%p", v112[0]);
        v94 = swift_allocObject();
        *(v94 + 16) = v115;
        *(v94 + 56) = type metadata accessor for TVWidgetAsyncOperation();
        *(v94 + 64) = sub_10007C940(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation, &protocol conformance descriptor for NSObject);
        v50 = v116;
        *(v94 + 32) = v116;
        v95 = v50;
        v96 = sub_1000D382C();

        v92 = sub_1000D360C();
        v91 = v97;

        v28 = v118;
      }

      v98 = v113;
      *(v90 + 56) = &type metadata for String;
      *(v90 + 64) = v98;
      *(v90 + 32) = v92;
      *(v90 + 40) = v91;
      v99 = sub_1000D37AC();
      sub_1000D1B2C("finishOp::[%{public}@] cache is invalid, returning default error state", 70, 2, &_mh_execute_header, v89, v99, v90);

      goto LABEL_51;
    }

    goto LABEL_55;
  }

  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v75 = sub_1000D37AC();
  sub_1000D1B2C("WidgetCache::valid cached entry, returning the entry", 52, 2, &_mh_execute_header, v74, v75, _swiftEmptyArrayStorage);

  v76 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntry;
  swift_beginAccess();
  v77 = v71 + v76;
  v78 = v122;
  sub_10000F8D0(v77, v122, &qword_1001257C8, &unk_1000EAB80);
  v79 = v32(v78, 1, v10);
  v80 = v125;
  if (v79 == 1)
  {
    goto LABEL_46;
  }

  v81 = sub_10007C724(v78, v121);
  result = sub_100002C80(v81);
  if (result)
  {
    v82 = result;
    v83 = swift_allocObject();
    *(v83 + 16) = v115;
    v84 = *(v112[0] + 1);
    if (v84)
    {
      v85 = *v112[0];

      v86 = v116;
    }

    else
    {
      sub_10007CB04(0, &qword_100122C58, NSString_ptr);
      v100 = sub_1000D381C("%p", v112[0]);
      v101 = swift_allocObject();
      *(v101 + 16) = v115;
      *(v101 + 56) = type metadata accessor for TVWidgetAsyncOperation();
      *(v101 + 64) = sub_10007C940(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation, &protocol conformance descriptor for NSObject);
      v86 = v116;
      *(v101 + 32) = v116;
      v126 = v86;
      v102 = sub_1000D382C();

      v85 = sub_1000D360C();
      v84 = v103;

      v28 = v118;
    }

    v104 = v113;
    *(v83 + 56) = &type metadata for String;
    *(v83 + 64) = v104;
    *(v83 + 32) = v85;
    *(v83 + 40) = v84;
    v105 = sub_1000D37AC();
    sub_1000D1B2C("finishOp::[%{public}@] cache is valid, returning widget entry in cache", 70, 2, &_mh_execute_header, v82, v105, v83);

    sub_100077084(v14, v106);
    v107 = v121;
    sub_10007C788(v121, v14);
    v108 = v119;
    sub_1000D19EC();
    v109 = v120;
    sub_1000D19DC();

    v110 = *(v19 + 8);
    v110(v108, v18);
    sub_100077084(v107, v111);
    v110(v80, v18);
    (*(v19 + 32))(v80, v109, v18);
    goto LABEL_33;
  }

LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_10007C328()
{
  sub_10000637C(&qword_100125930, &qword_1000E76B8);
  sub_10000637C(&qword_100125928, &qword_1000E76B0);
  sub_10000637C(&qword_100125920, &qword_1000E76A8);
  sub_10000637C(&qword_100125918, &qword_1000E76A0);
  sub_10000637C(&qword_100122240, &unk_1000DE9A0);
  sub_10000637C(&qword_100122248, &unk_1000E7690);
  sub_10000FC38(&qword_100122250, &qword_100122248, &unk_1000E7690, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10007C544()
{
  v1 = sub_1000D19FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

id sub_10007C5F8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000D19FC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);
  v13 = *(v2 + v8 + 8);

  return sub_100078EDC(a1, a2, v2 + v6, v10, v11, v12, v13);
}

double sub_10007C6FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_10007C714(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10007C724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVWidgetEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007C788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVWidgetEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007C7EC()
{
  v1 = *(type metadata accessor for TVWidgetEntry(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1000D19FC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007C8DC()
{
  v1 = *(type metadata accessor for TVWidgetEntry(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100079834(v2, v3, v4);
}

uint64_t sub_10007C940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007C988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10007C9E4()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10007CA64()
{
  result = qword_1001259A0;
  if (!qword_1001259A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001259A0);
  }

  return result;
}

uint64_t sub_10007CAB8(void *a1)
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

uint64_t sub_10007CB04(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10007CB4C()
{
  v1 = sub_1000D19FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

id sub_10007CC28(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000D19FC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000780DC(a1, a2, v7, v8, v2 + v6, v9);
}

id sub_10007CCF4@<X0>(uint64_t a1@<X8>)
{
  v27 = sub_100006334(&qword_1001259C0, &qword_1000E7900);
  __chkstk_darwin(v27);
  v3 = v25 - v2;
  v4 = sub_100006334(&qword_1001259C8, &qword_1000E7908);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v25 - v9;
  v26 = sub_1000D215C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = sub_100002C80(v26);
  if (result)
  {
    v18 = result;
    v25[1] = a1;
    v19 = sub_1000D37AC();
    sub_1000D1B2C("TVWidgetExtension::TVWidget::init", 33, 2, &_mh_execute_header, v18, v19, _swiftEmptyArrayStorage);

    result = sub_100002D08(v20);
    if (result)
    {
      v21 = result;
      v22 = sub_1000D37AC();
      sub_1000D1B2C("TVWidgetExtension::SportsWidget::init", 37, 2, &_mh_execute_header, v21, v22, _swiftEmptyArrayStorage);

      sub_100006334(&qword_1001259D0, &qword_1000E7910);
      sub_1000D1BFC();
      v23 = *(v5 + 16);
      v23(v8, v10, v4);
      *v3 = v26;
      *(v3 + 1) = v12;
      v3[16] = v14 & 1;
      *(v3 + 3) = v16;
      v23(&v3[*(v27 + 64)], v8, v4);

      sub_1000D1BFC();
      v24 = *(v5 + 8);
      v24(v10, v4);
      v24(v8, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007CFCC()
{
  sub_100006334(&qword_1001259D0, &qword_1000E7910);

  return sub_1000D1BFC();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10007D054();
  sub_1000D1C7C();
  return 0;
}

unint64_t sub_10007D054()
{
  result = qword_1001259B8;
  if (!qword_1001259B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001259B8);
  }

  return result;
}

unint64_t sub_10007D0D8()
{
  result = qword_1001259D8;
  if (!qword_1001259D8)
  {
    sub_10000637C(&qword_1001259E0, &qword_1000E7918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001259D8);
  }

  return result;
}

uint64_t sub_10007D13C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10007D184(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TVWidgetFeature(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TVWidgetFeature(_WORD *result, int a2, int a3)
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

unint64_t sub_10007D2C4()
{
  result = qword_1001259E8;
  if (!qword_1001259E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001259E8);
  }

  return result;
}

Swift::Int sub_10007D318()
{
  sub_1000D3A4C();
  sub_1000D3A5C(0);
  return sub_1000D3A6C();
}

Swift::Int sub_10007D384(uint64_t a1)
{
  sub_1000D3A4C();
  sub_1000D3A5C(0);
  return sub_1000D3A6C();
}

unint64_t sub_10007D3F0()
{
  result = qword_100125A10;
  if (!qword_100125A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A10);
  }

  return result;
}

uint64_t sub_10007D488()
{
  v0 = sub_100006334(&qword_1001228C0, &unk_1000DFA00);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C320);
  sub_100006610(v10, qword_10013C320);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10007D774()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C338);
  sub_100006610(v0, qword_10013C338);
  return sub_1000D188C();
}

uint64_t sub_10007D7D8()
{
  v0 = sub_100006334(&qword_100122908, &unk_1000DFA70);
  sub_1000065AC(v0, qword_10013C350);
  v1 = sub_100006610(v0, qword_10013C350);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10007D898()
{
  result = swift_getKeyPath();
  qword_10013C368 = result;
  return result;
}

uint64_t sub_10007D8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_10007D8E4, 0, 0);
}

uint64_t sub_10007D8E4(uint64_t a1)
{
  sub_1000D154C();
  v2 = *(v1 + 24);
  *(v1 + 40) = *(v1 + 16);
  v3 = *(v1 + 32);
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  sub_1000D154C();
  *(v1 + 225) = *(v1 + 224);
  if (qword_1001220E0 != -1)
  {
    swift_once();
  }

  v4 = qword_10013C368;
  *(v1 + 152) = qword_10013C368;

  v5 = swift_task_alloc();
  *(v1 + 160) = v5;
  v6 = sub_10000FC38(&qword_100125B88, &qword_100125B90, &unk_1000E8180, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *(v1 + 168) = v6;
  *v5 = v1;
  v5[1] = sub_10007DA50;

  return AppEntity._setValue<A, B, C>(_:for:)(v1 + 225, v4, &type metadata for VideosPlaybackCellularQuality, v6);
}

uint64_t sub_10007DA50()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_10007DBC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007DBC0(uint64_t a1)
{
  sub_1000D154C();
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v1[23] = v3;
  v1[24] = v4;
  v1[11] = v2;
  v1[12] = v3;
  v1[13] = v4;
  v5 = qword_10013C368;
  v1[25] = qword_10013C368;

  v6 = swift_task_alloc();
  v1[26] = v6;
  *v6 = v1;
  v6[1] = sub_10007DCA4;
  v7 = v1[21];

  return AppEntity._value<A, B>(for:)(v1 + 226, v5, v7);
}

uint64_t sub_10007DCA4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_10007DE14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007DE14()
{
  *(v0 + 227) = *(v0 + 226);
  sub_10002CB10();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_10007DE9C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_10007DF10(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

double sub_10007DF84()
{
  if (qword_1001220E0 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_10007DFE4()
{
  result = qword_100125A28;
  if (!qword_100125A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A28);
  }

  return result;
}

unint64_t sub_10007E03C()
{
  result = qword_100125A30;
  if (!qword_100125A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A30);
  }

  return result;
}

uint64_t sub_10007E14C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001220D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908, &unk_1000DFA70);
  v3 = sub_100006610(v2, qword_10013C350);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_10007E1D0(uint64_t a1, __n128 a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100013B8C;

  return sub_10007D8C0(a1, v6, v5);
}

uint64_t sub_10007E27C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007FCD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10007E2C4()
{
  result = qword_100125A38;
  if (!qword_100125A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A38);
  }

  return result;
}

unint64_t sub_10007E31C()
{
  result = qword_100125A40;
  if (!qword_100125A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A40);
  }

  return result;
}

uint64_t sub_10007E390()
{
  **(v0 + 16) = sub_1000A34D8() & 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007E440()
{
  sub_1000A3C90(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007E4DC()
{
  v1 = *(v0 + 16);
  *v1 = sub_1000800D4();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_10007E54C()
{
  result = qword_100125A48;
  if (!qword_100125A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A48);
  }

  return result;
}

uint64_t sub_10007E5A0(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  v6 = sub_10007F208();
  *v5 = v3;
  v5[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10007E654()
{
  result = qword_100125A50;
  if (!qword_100125A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A50);
  }

  return result;
}

unint64_t sub_10007E6AC()
{
  result = qword_100125A58;
  if (!qword_100125A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A58);
  }

  return result;
}

unint64_t sub_10007E704()
{
  result = qword_100125A60;
  if (!qword_100125A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A60);
  }

  return result;
}

uint64_t sub_10007E758(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_10007F208();
  *v6 = v3;
  v6[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10007E80C(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  v6 = sub_10007F208();
  *v5 = v3;
  v5[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10007E8C0()
{
  result = qword_100125A68;
  if (!qword_100125A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A68);
  }

  return result;
}

unint64_t sub_10007E918()
{
  result = qword_100125A70;
  if (!qword_100125A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A70);
  }

  return result;
}

unint64_t sub_10007E970()
{
  result = qword_100125A78;
  if (!qword_100125A78)
  {
    sub_10000637C(&qword_100125A80, qword_1000E7CB0);
    sub_10007E918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A78);
  }

  return result;
}

uint64_t sub_10007E9F4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_10007E54C();
  *v6 = v3;
  v6[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10007EB1C(uint64_t a1)
{
  v2 = sub_10007F064();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_10007E704();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_10007EBC4(uint64_t a1)
{
  sub_10007EF90();
  v2 = sub_1000D169C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10007EC68(uint64_t a1)
{
  v2 = sub_10007E704();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10007ECB4(uint64_t a1)
{
  v2 = sub_10007E31C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10007ED00(uint64_t a1)
{
  v2 = sub_10007EDA8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10007ED50()
{
  result = qword_100125A98;
  if (!qword_100125A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A98);
  }

  return result;
}

unint64_t sub_10007EDA8()
{
  result = qword_100125AA0;
  if (!qword_100125AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125AA0);
  }

  return result;
}

unint64_t sub_10007EDFC()
{
  result = qword_100125AA8;
  if (!qword_100125AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125AA8);
  }

  return result;
}

unint64_t sub_10007EE54()
{
  result = qword_100125AB0;
  if (!qword_100125AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125AB0);
  }

  return result;
}

unint64_t sub_10007EEB0()
{
  result = qword_100125AB8;
  if (!qword_100125AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125AB8);
  }

  return result;
}

unint64_t sub_10007EF04(void *a1)
{
  a1[1] = sub_10007EF3C();
  a1[2] = sub_10007EF90();
  result = sub_10007E31C();
  a1[3] = result;
  return result;
}

unint64_t sub_10007EF3C()
{
  result = qword_100125B08;
  if (!qword_100125B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B08);
  }

  return result;
}

unint64_t sub_10007EF90()
{
  result = qword_100125B10;
  if (!qword_100125B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B10);
  }

  return result;
}

unint64_t sub_10007EFE8()
{
  result = qword_100125B18;
  if (!qword_100125B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B18);
  }

  return result;
}

unint64_t sub_10007F03C(uint64_t a1)
{
  result = sub_10007F064();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10007F064()
{
  result = qword_100125B50;
  if (!qword_100125B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B50);
  }

  return result;
}

unint64_t sub_10007F100()
{
  result = qword_100125B68;
  if (!qword_100125B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B68);
  }

  return result;
}

unint64_t sub_10007F158()
{
  result = qword_100125B70;
  if (!qword_100125B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B70);
  }

  return result;
}

unint64_t sub_10007F1B0()
{
  result = qword_100125B78;
  if (!qword_100125B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B78);
  }

  return result;
}

unint64_t sub_10007F208()
{
  result = qword_100125B80;
  if (!qword_100125B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B80);
  }

  return result;
}

uint64_t sub_10007F25C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960, &unk_1000DFB00);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v34 = v33 - v4;
  v5 = sub_100006334(&qword_100122968, &unk_1000E8260);
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  __chkstk_darwin(v5);
  v35 = v33 - v7;
  v8 = sub_100006334(&qword_100122970, &unk_1000DFB10);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v36 = v33 - v10;
  v11 = sub_100006334(&qword_100122978, &unk_1000E8270);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v37 = v33 - v13;
  strcpy(v47, "com.apple.tv.");
  HIWORD(v47[1]) = -4864;
  v14 = sub_100080474();
  v15 = *(v14 + 40);
  v54._countAndFlagsBits = (v15)(&type metadata for TVSettingsPlaybackCellularQualityWidget, v14);
  sub_1000D366C(v54);

  v33[3] = v47[0];
  v33[2] = v47[1];
  v33[1] = qword_1001259F0;
  swift_getKeyPath();

  sub_1000D32AC();
  sub_100006334(&qword_100122988, &unk_1000DFB20);
  sub_10002CABC();
  sub_10002CDD4();
  sub_10007E31C();
  sub_100013998();
  v16 = v34;
  sub_1000D32CC();
  v47[0] = v15();
  v47[1] = v17;
  v52 = 0x746567646957;
  v53 = 0xE600000000000000;
  v50 = 0x656C67676F54;
  v51 = 0xE600000000000000;
  v32 = sub_10000F320();
  v18 = sub_1000D387C();
  v20 = v19;

  v47[0] = v18;
  v47[1] = v20;
  v21 = sub_10000FC38(&qword_1001229A0, &qword_100122960, &unk_1000DFB00, &protocol conformance descriptor for ControlPicker<A>);
  v22 = v35;
  v23 = v38;
  sub_1000D223C();

  (*(v39 + 8))(v16, v23);
  v52 = qword_100125A00;
  v53 = off_100125A08;
  v47[0] = v23;
  v47[1] = &type metadata for String;
  v48 = v21;
  v49 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v36;
  v26 = v40;
  sub_1000D21FC();
  (*(v41 + 8))(v22, v26);
  v47[0] = v26;
  v47[1] = &type metadata for String;
  v48 = OpaqueTypeConformance2;
  v49 = v32;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = v42;
  sub_1000D224C();
  (*(v43 + 8))(v25, v29);
  v47[0] = v29;
  v47[1] = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  sub_1000D227C();
  return (*(v45 + 8))(v28, v30);
}

uint64_t sub_10007F8C8@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();

  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10007F93C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000D164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D18BC();
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v30 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v30 - v15;
  if (qword_100121FF8 != -1)
  {
    v29 = v14;
    result = swift_once();
    v14 = v29;
  }

  v17 = qword_10013C118;
  v18 = *(qword_10013C118 + 16);
  if (!v18)
  {
    v22 = 0;
    v24 = 0;
LABEL_8:
    v28 = 0;
    goto LABEL_9;
  }

  v31 = v14;

  v19 = sub_100025118();
  if ((v20 & 1) == 0)
  {

    v22 = 0;
    v24 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  (*(v3 + 16))(v5, *(v17 + 56) + *(v3 + 72) * v19, v2);

  sub_1000D160C();
  (*(v3 + 8))(v5, v2);
  v21 = v31;
  (*(v31 + 32))(v16, v12, v6);
  (*(v21 + 16))(v9, v16, v6);
  v22 = sub_1000D25FC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = (*(v21 + 8))(v16, v6);
  v18 = v26 & 1;
LABEL_9:
  *a1 = v22;
  a1[1] = v24;
  a1[2] = v18;
  a1[3] = v28;
  return result;
}

uint64_t sub_10007FC18(_BYTE *a1)
{
  sub_10000F320();
  sub_1000D260C();
  return sub_1000D334C();
}

uint64_t sub_10007FCD0()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8, &qword_1000E0320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0, &unk_1000DFA00);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_100125B98, &qword_1000E8190);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_10007E704();
  v22 = sub_1000D157C();
  sub_100006334(&qword_100125BA0, &qword_1000E8198);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_10002CABC();
  sub_1000D156C();
  return v22;
}

uint64_t sub_1000800D4()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsPlaybackCellularQualityEntity;
  sub_100006334(&qword_100122D88, &unk_1000E9360);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100125A20, qword_1000E7A50);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100125B88, &qword_100125B90, &unk_1000E8180, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10002CABC();
  sub_1000D178C();
  return v7;
}

double sub_1000803C0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 16);

  return result;
}

unint64_t sub_1000803F8(uint64_t a1)
{
  result = sub_100080420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100080420()
{
  result = qword_100125BF0;
  if (!qword_100125BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125BF0);
  }

  return result;
}

unint64_t sub_100080474()
{
  result = qword_100125BF8;
  if (!qword_100125BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125BF8);
  }

  return result;
}

uint64_t sub_1000804C8()
{
  sub_10000637C(&qword_100122978, &unk_1000E8270);
  sub_10000637C(&qword_100122970, &unk_1000DFB10);
  sub_10000637C(&qword_100122968, &unk_1000E8260);
  sub_10000637C(&qword_100122960, &unk_1000DFB00);
  sub_10000FC38(&qword_1001229A0, &qword_100122960, &unk_1000DFB00, &protocol conformance descriptor for ControlPicker<A>);
  sub_10000F320();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100080654()
{
  result = qword_100125C00;
  if (!qword_100125C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C00);
  }

  return result;
}

uint64_t sub_1000806EC()
{
  v0 = sub_100006334(&qword_1001228C0, &unk_1000DFA00);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C370);
  sub_100006610(v10, qword_10013C370);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_1000809DC()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C388);
  sub_100006610(v0, qword_10013C388);
  return sub_1000D188C();
}

uint64_t sub_100080A40()
{
  v0 = sub_100006334(&qword_100122908, &unk_1000DFA70);
  sub_1000065AC(v0, qword_10013C3A0);
  v1 = sub_100006610(v0, qword_10013C3A0);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100080B00()
{
  result = swift_getKeyPath();
  qword_10013C3B8 = result;
  return result;
}

uint64_t sub_100080B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_100080B4C, 0, 0);
}

uint64_t sub_100080B4C(uint64_t a1)
{
  sub_1000D154C();
  v2 = *(v1 + 24);
  *(v1 + 40) = *(v1 + 16);
  v3 = *(v1 + 32);
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  sub_1000D154C();
  *(v1 + 225) = *(v1 + 224);
  if (qword_100122100 != -1)
  {
    swift_once();
  }

  v4 = qword_10013C3B8;
  *(v1 + 152) = qword_10013C3B8;

  v5 = swift_task_alloc();
  *(v1 + 160) = v5;
  v6 = sub_10000FC38(&qword_100125D78, &qword_100125D80, &unk_1000E89B0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *(v1 + 168) = v6;
  *v5 = v1;
  v5[1] = sub_100080CB8;

  return AppEntity._setValue<A, B, C>(_:for:)(v1 + 225, v4, &type metadata for VideosPlaybackWiFiQuality, v6);
}

uint64_t sub_100080CB8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_100080E28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100080E28(uint64_t a1)
{
  sub_1000D154C();
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v1[23] = v3;
  v1[24] = v4;
  v1[11] = v2;
  v1[12] = v3;
  v1[13] = v4;
  v5 = qword_10013C3B8;
  v1[25] = qword_10013C3B8;

  v6 = swift_task_alloc();
  v1[26] = v6;
  *v6 = v1;
  v6[1] = sub_100080F0C;
  v7 = v1[21];

  return AppEntity._value<A, B>(for:)(v1 + 226, v5, v7);
}

uint64_t sub_100080F0C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_10008107C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008107C()
{
  *(v0 + 227) = *(v0 + 226);
  sub_10002D048();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_100081104(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_100081178(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

double sub_1000811EC()
{
  if (qword_100122100 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_10008124C()
{
  result = qword_100125C18;
  if (!qword_100125C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C18);
  }

  return result;
}

unint64_t sub_1000812A4()
{
  result = qword_100125C20;
  if (!qword_100125C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C20);
  }

  return result;
}

uint64_t sub_1000813B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001220F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908, &unk_1000DFA70);
  v3 = sub_100006610(v2, qword_10013C3A0);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_100081438(uint64_t a1, __n128 a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100013B8C;

  return sub_100080B28(a1, v6, v5);
}

uint64_t sub_1000814E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000830A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10008152C()
{
  result = qword_100125C28;
  if (!qword_100125C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C28);
  }

  return result;
}

unint64_t sub_100081584()
{
  result = qword_100125C30;
  if (!qword_100125C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C30);
  }

  return result;
}

uint64_t sub_1000815F8()
{
  **(v0 + 16) = sub_1000A3528() & 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000816A8()
{
  sub_1000A3CE0(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100081744()
{
  v1 = *(v0 + 16);
  *v1 = sub_1000834A8();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1000817B4()
{
  result = qword_100125C38;
  if (!qword_100125C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C38);
  }

  return result;
}

uint64_t sub_100081808(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  v6 = sub_100082470();
  *v5 = v3;
  v5[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000818BC()
{
  result = qword_100125C40;
  if (!qword_100125C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C40);
  }

  return result;
}

unint64_t sub_100081914()
{
  result = qword_100125C48;
  if (!qword_100125C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C48);
  }

  return result;
}

unint64_t sub_10008196C()
{
  result = qword_100125C50;
  if (!qword_100125C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C50);
  }

  return result;
}

uint64_t sub_1000819C0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_100082470();
  *v6 = v3;
  v6[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100081A74(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  v6 = sub_100082470();
  *v5 = v3;
  v5[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100081B28()
{
  result = qword_100125C58;
  if (!qword_100125C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C58);
  }

  return result;
}

unint64_t sub_100081B80()
{
  result = qword_100125C60;
  if (!qword_100125C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C60);
  }

  return result;
}

unint64_t sub_100081BD8()
{
  result = qword_100125C68;
  if (!qword_100125C68)
  {
    sub_10000637C(&qword_100125C70, qword_1000E84E0);
    sub_100081B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C68);
  }

  return result;
}

uint64_t sub_100081C5C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_1000817B4();
  *v6 = v3;
  v6[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100081D84(uint64_t a1)
{
  v2 = sub_1000822CC();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_10008196C();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_100081E2C(uint64_t a1)
{
  sub_1000821F8();
  v2 = sub_1000D169C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100081ED0(uint64_t a1)
{
  v2 = sub_10008196C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100081F1C(uint64_t a1)
{
  v2 = sub_100081584();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100081F68(uint64_t a1)
{
  v2 = sub_100082010();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100081FB8()
{
  result = qword_100125C88;
  if (!qword_100125C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C88);
  }

  return result;
}

unint64_t sub_100082010()
{
  result = qword_100125C90;
  if (!qword_100125C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C90);
  }

  return result;
}

unint64_t sub_100082064()
{
  result = qword_100125C98;
  if (!qword_100125C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C98);
  }

  return result;
}

unint64_t sub_1000820BC()
{
  result = qword_100125CA0;
  if (!qword_100125CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125CA0);
  }

  return result;
}

unint64_t sub_100082118()
{
  result = qword_100125CA8;
  if (!qword_100125CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125CA8);
  }

  return result;
}

unint64_t sub_10008216C(void *a1)
{
  a1[1] = sub_1000821A4();
  a1[2] = sub_1000821F8();
  result = sub_100081584();
  a1[3] = result;
  return result;
}

unint64_t sub_1000821A4()
{
  result = qword_100125CF8;
  if (!qword_100125CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125CF8);
  }

  return result;
}

unint64_t sub_1000821F8()
{
  result = qword_100125D00;
  if (!qword_100125D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D00);
  }

  return result;
}

unint64_t sub_100082250()
{
  result = qword_100125D08;
  if (!qword_100125D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D08);
  }

  return result;
}

unint64_t sub_1000822A4(uint64_t a1)
{
  result = sub_1000822CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000822CC()
{
  result = qword_100125D40;
  if (!qword_100125D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D40);
  }

  return result;
}

unint64_t sub_100082368()
{
  result = qword_100125D58;
  if (!qword_100125D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D58);
  }

  return result;
}

unint64_t sub_1000823C0()
{
  result = qword_100125D60;
  if (!qword_100125D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D60);
  }

  return result;
}

unint64_t sub_100082418()
{
  result = qword_100125D68;
  if (!qword_100125D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D68);
  }

  return result;
}

unint64_t sub_100082470()
{
  result = qword_100125D70;
  if (!qword_100125D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D70);
  }

  return result;
}

void sub_1000824C4()
{
  sub_1000D38DC(20);
  v0 = WLKIsRegulatedSKU();
  v1 = v0 == 0;
  if (v0)
  {
    v2._countAndFlagsBits = 1312902231;
  }

  else
  {
    v2._countAndFlagsBits = 0x69462D6957;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1000D366C(v2);

  v4._object = 0x80000001000DBBD0;
  v4._countAndFlagsBits = 0xD000000000000012;
  sub_1000D366C(v4);
  qword_10013C3C0 = 0;
  *algn_10013C3C8 = 0xE000000000000000;
}

void sub_100082574()
{
  sub_1000D38DC(35);

  v0 = WLKIsRegulatedSKU();
  v1 = v0 == 0;
  if (v0)
  {
    v2._countAndFlagsBits = 1312902231;
  }

  else
  {
    v2._countAndFlagsBits = 0x69462D6957;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1000D366C(v2);

  v4._object = 0x80000001000DBBB0;
  v4._countAndFlagsBits = 0xD000000000000016;
  sub_1000D366C(v4);
  qword_10013C3D0 = 0x742065736F6F6843;
  *algn_10013C3D8 = 0xEB00000000206568;
}

uint64_t sub_100082644@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960, &unk_1000DFB00);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = v25 - v3;
  v36 = sub_100006334(&qword_100122968, &unk_1000E8260);
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v27 = v25 - v4;
  v38 = sub_100006334(&qword_100122970, &unk_1000DFB10);
  v34 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = v25 - v5;
  v37 = sub_100006334(&qword_100122978, &unk_1000E8270);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = v25 - v6;
  strcpy(v40, "com.apple.tv.");
  HIWORD(v40[1]) = -4864;
  v7 = sub_10008384C();
  v26 = *(v7 + 40);
  v47._countAndFlagsBits = (v26)(&type metadata for TVSettingsPlaybackWifiQualityWidget, v7);
  sub_1000D366C(v47);

  v25[2] = v40[0];
  v25[1] = v40[1];
  if (qword_100122108 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();

  sub_1000D32AC();
  sub_100006334(&qword_100122988, &unk_1000DFB20);
  sub_10002CFF4();
  sub_10002D39C();
  sub_100081584();
  sub_100013998();
  v8 = v28;
  sub_1000D32CC();
  v40[0] = v26();
  v40[1] = v9;
  v45 = 0x746567646957;
  v46 = 0xE600000000000000;
  v43 = 0x656C67676F54;
  v44 = 0xE600000000000000;
  v10 = sub_10000F320();
  v11 = sub_1000D387C();
  v13 = v12;

  v40[0] = v11;
  v40[1] = v13;
  v14 = sub_10000FC38(&qword_1001229A0, &qword_100122960, &unk_1000DFB00, &protocol conformance descriptor for ControlPicker<A>);
  v15 = v27;
  v16 = v30;
  sub_1000D223C();

  (*(v29 + 8))(v8, v16);
  if (qword_100122110 != -1)
  {
    swift_once();
  }

  v45 = qword_10013C3D0;
  v46 = *algn_10013C3D8;
  v40[0] = v16;
  v40[1] = &type metadata for String;
  v41 = v14;
  v42 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v31;
  v19 = v36;
  sub_1000D21FC();
  (*(v33 + 8))(v15, v19);
  v40[0] = v19;
  v40[1] = &type metadata for String;
  v41 = OpaqueTypeConformance2;
  v42 = v10;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = v32;
  v22 = v38;
  sub_1000D224C();
  (*(v34 + 8))(v18, v22);
  v40[0] = v22;
  v40[1] = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v37;
  sub_1000D227C();
  return (*(v35 + 8))(v21, v23);
}

uint64_t sub_100082D20@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122108 != -1)
  {
    swift_once();
  }

  sub_10000F320();

  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100082DC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000D164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D18BC();
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v30 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v30 - v15;
  if (qword_100121FE8 != -1)
  {
    v29 = v14;
    result = swift_once();
    v14 = v29;
  }

  v17 = qword_10013C0F8;
  v18 = *(qword_10013C0F8 + 16);
  if (!v18)
  {
    v22 = 0;
    v24 = 0;
LABEL_8:
    v28 = 0;
    goto LABEL_9;
  }

  v31 = v14;

  v19 = sub_100025118();
  if ((v20 & 1) == 0)
  {

    v22 = 0;
    v24 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  (*(v3 + 16))(v5, *(v17 + 56) + *(v3 + 72) * v19, v2);

  sub_1000D160C();
  (*(v3 + 8))(v5, v2);
  v21 = v31;
  (*(v31 + 32))(v16, v12, v6);
  (*(v21 + 16))(v9, v16, v6);
  v22 = sub_1000D25FC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = (*(v21 + 8))(v16, v6);
  v18 = v26 & 1;
LABEL_9:
  *a1 = v22;
  a1[1] = v24;
  a1[2] = v18;
  a1[3] = v28;
  return result;
}

uint64_t sub_1000830A4()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8, &qword_1000E0320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0, &unk_1000DFA00);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_100125D88, &qword_1000E89C0);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_10008196C();
  v22 = sub_1000D157C();
  sub_100006334(&qword_100125D90, &qword_1000E89C8);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_10002CFF4();
  sub_1000D156C();
  return v22;
}

uint64_t sub_1000834A8()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsPlaybackWifiQualityEntity;
  sub_100006334(&qword_100122D80, &unk_1000E0740);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100125C10, qword_1000E8280);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100125D78, &qword_100125D80, &unk_1000E89B0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10002CFF4();
  sub_1000D178C();
  return v7;
}

double sub_100083798@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 16);

  return result;
}

unint64_t sub_1000837D0(uint64_t a1)
{
  result = sub_1000837F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000837F8()
{
  result = qword_100125DE0;
  if (!qword_100125DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125DE0);
  }

  return result;
}

unint64_t sub_10008384C()
{
  result = qword_100125DE8;
  if (!qword_100125DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125DE8);
  }

  return result;
}

unint64_t sub_1000838B4()
{
  result = qword_100125E10;
  if (!qword_100125E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E10);
  }

  return result;
}

uint64_t sub_10008394C()
{
  v0 = sub_100006334(&qword_1001228C0, &unk_1000DFA00);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C3E0);
  sub_100006610(v10, qword_10013C3E0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_100083C38()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C3F8);
  sub_100006610(v0, qword_10013C3F8);
  return sub_1000D188C();
}

uint64_t sub_100083C9C()
{
  v0 = sub_100006334(&qword_100122908, &unk_1000DFA70);
  sub_1000065AC(v0, qword_10013C410);
  v1 = sub_100006610(v0, qword_10013C410);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100083D5C()
{
  result = swift_getKeyPath();
  qword_10013C428 = result;
  return result;
}

uint64_t sub_100083D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_100083DA8, 0, 0);
}

uint64_t sub_100083DA8(uint64_t a1)
{
  sub_1000D154C();
  v2 = *(v1 + 24);
  *(v1 + 40) = *(v1 + 16);
  v3 = *(v1 + 32);
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  sub_1000D154C();
  *(v1 + 225) = *(v1 + 224);
  if (qword_100122130 != -1)
  {
    swift_once();
  }

  v4 = qword_10013C428;
  *(v1 + 152) = qword_10013C428;

  v5 = swift_task_alloc();
  *(v1 + 160) = v5;
  v6 = sub_10000FC38(&qword_100125F88, &qword_100125F90, &unk_1000E91B0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *(v1 + 168) = v6;
  *v5 = v1;
  v5[1] = sub_100083F14;

  return AppEntity._setValue<A, B, C>(_:for:)(v1 + 225, v4, &type metadata for VideosDownloadCellularQuality, v6);
}

uint64_t sub_100083F14()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_100084084;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100084084(uint64_t a1)
{
  sub_1000D154C();
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v1[23] = v3;
  v1[24] = v4;
  v1[11] = v2;
  v1[12] = v3;
  v1[13] = v4;
  v5 = qword_10013C428;
  v1[25] = qword_10013C428;

  v6 = swift_task_alloc();
  v1[26] = v6;
  *v6 = v1;
  v6[1] = sub_100084168;
  v7 = v1[21];

  return AppEntity._value<A, B>(for:)(v1 + 226, v5, v7);
}

uint64_t sub_100084168()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_1000842D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000842D8()
{
  *(v0 + 227) = *(v0 + 226);
  sub_100048468();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_100084360(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_1000843D4(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

double sub_100084448()
{
  if (qword_100122130 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_1000844A8()
{
  result = qword_100125E28;
  if (!qword_100125E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E28);
  }

  return result;
}

unint64_t sub_100084500()
{
  result = qword_100125E30;
  if (!qword_100125E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E30);
  }

  return result;
}

uint64_t sub_100084610@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122128 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908, &unk_1000DFA70);
  v3 = sub_100006610(v2, qword_10013C410);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_100084694(uint64_t a1, __n128 a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100013B8C;

  return sub_100083D84(a1, v6, v5);
}

uint64_t sub_100084740@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008618C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100084788()
{
  result = qword_100125E38;
  if (!qword_100125E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E38);
  }

  return result;
}

unint64_t sub_1000847E0()
{
  result = qword_100125E40;
  if (!qword_100125E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E40);
  }

  return result;
}

uint64_t sub_100084854()
{
  **(v0 + 16) = sub_1000A3578() & 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100084904()
{
  sub_1000A4000(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000849A0()
{
  v1 = *(v0 + 16);
  *v1 = sub_100086590();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_100084A10()
{
  result = qword_100125E48;
  if (!qword_100125E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E48);
  }

  return result;
}

uint64_t sub_100084A64(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  v6 = sub_1000856CC();
  *v5 = v3;
  v5[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100084B18()
{
  result = qword_100125E50;
  if (!qword_100125E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E50);
  }

  return result;
}

unint64_t sub_100084B70()
{
  result = qword_100125E58;
  if (!qword_100125E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E58);
  }

  return result;
}

unint64_t sub_100084BC8()
{
  result = qword_100125E60;
  if (!qword_100125E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E60);
  }

  return result;
}

uint64_t sub_100084C1C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_1000856CC();
  *v6 = v3;
  v6[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100084CD0(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  v6 = sub_1000856CC();
  *v5 = v3;
  v5[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100084D84()
{
  result = qword_100125E68;
  if (!qword_100125E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E68);
  }

  return result;
}

unint64_t sub_100084DDC()
{
  result = qword_100125E70;
  if (!qword_100125E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E70);
  }

  return result;
}

unint64_t sub_100084E34()
{
  result = qword_100125E78;
  if (!qword_100125E78)
  {
    sub_10000637C(&qword_100125E80, qword_1000E8CE0);
    sub_100084DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E78);
  }

  return result;
}

uint64_t sub_100084EB8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_100084A10();
  *v6 = v3;
  v6[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100084FE0(uint64_t a1)
{
  v2 = sub_100085528();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_100084BC8();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_100085088(uint64_t a1)
{
  sub_100085454();
  v2 = sub_1000D169C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10008512C(uint64_t a1)
{
  v2 = sub_100084BC8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100085178(uint64_t a1)
{
  v2 = sub_1000847E0();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_1000851C4(uint64_t a1)
{
  v2 = sub_10008526C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100085214()
{
  result = qword_100125E98;
  if (!qword_100125E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E98);
  }

  return result;
}

unint64_t sub_10008526C()
{
  result = qword_100125EA0;
  if (!qword_100125EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125EA0);
  }

  return result;
}

unint64_t sub_1000852C0()
{
  result = qword_100125EA8;
  if (!qword_100125EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125EA8);
  }

  return result;
}

unint64_t sub_100085318()
{
  result = qword_100125EB0;
  if (!qword_100125EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125EB0);
  }

  return result;
}

unint64_t sub_100085374()
{
  result = qword_100125EB8;
  if (!qword_100125EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125EB8);
  }

  return result;
}

unint64_t sub_1000853C8(void *a1)
{
  a1[1] = sub_100085400();
  a1[2] = sub_100085454();
  result = sub_1000847E0();
  a1[3] = result;
  return result;
}

unint64_t sub_100085400()
{
  result = qword_100125F08;
  if (!qword_100125F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F08);
  }

  return result;
}

unint64_t sub_100085454()
{
  result = qword_100125F10;
  if (!qword_100125F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F10);
  }

  return result;
}

unint64_t sub_1000854AC()
{
  result = qword_100125F18;
  if (!qword_100125F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F18);
  }

  return result;
}

unint64_t sub_100085500(uint64_t a1)
{
  result = sub_100085528();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100085528()
{
  result = qword_100125F50;
  if (!qword_100125F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F50);
  }

  return result;
}

unint64_t sub_1000855C4()
{
  result = qword_100125F68;
  if (!qword_100125F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F68);
  }

  return result;
}

unint64_t sub_10008561C()
{
  result = qword_100125F70;
  if (!qword_100125F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F70);
  }

  return result;
}

unint64_t sub_100085674()
{
  result = qword_100125F78;
  if (!qword_100125F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F78);
  }

  return result;
}

unint64_t sub_1000856CC()
{
  result = qword_100125F80;
  if (!qword_100125F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F80);
  }

  return result;
}

uint64_t sub_100085720@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960, &unk_1000DFB00);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v34 = v33 - v4;
  v5 = sub_100006334(&qword_100122968, &unk_1000E8260);
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  __chkstk_darwin(v5);
  v35 = v33 - v7;
  v8 = sub_100006334(&qword_100122970, &unk_1000DFB10);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v36 = v33 - v10;
  v11 = sub_100006334(&qword_100122978, &unk_1000E8270);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v37 = v33 - v13;
  strcpy(v47, "com.apple.tv.");
  HIWORD(v47[1]) = -4864;
  v14 = sub_100086930();
  v15 = *(v14 + 40);
  v54._countAndFlagsBits = (v15)(&type metadata for TVSettingsDownloadCellularQualityWidget, v14);
  sub_1000D366C(v54);

  v33[3] = v47[0];
  v33[2] = v47[1];
  v33[1] = qword_100125DF0;
  swift_getKeyPath();

  sub_1000D32AC();
  sub_100006334(&qword_100122988, &unk_1000DFB20);
  sub_100048414();
  sub_10004872C();
  sub_1000847E0();
  sub_100013998();
  v16 = v34;
  sub_1000D32CC();
  v47[0] = v15();
  v47[1] = v17;
  v52 = 0x746567646957;
  v53 = 0xE600000000000000;
  v50 = 0x656C67676F54;
  v51 = 0xE600000000000000;
  v32 = sub_10000F320();
  v18 = sub_1000D387C();
  v20 = v19;

  v47[0] = v18;
  v47[1] = v20;
  v21 = sub_10000FC38(&qword_1001229A0, &qword_100122960, &unk_1000DFB00, &protocol conformance descriptor for ControlPicker<A>);
  v22 = v35;
  v23 = v38;
  sub_1000D223C();

  (*(v39 + 8))(v16, v23);
  v52 = qword_100125E00;
  v53 = off_100125E08;
  v47[0] = v23;
  v47[1] = &type metadata for String;
  v48 = v21;
  v49 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v36;
  v26 = v40;
  sub_1000D21FC();
  (*(v41 + 8))(v22, v26);
  v47[0] = v26;
  v47[1] = &type metadata for String;
  v48 = OpaqueTypeConformance2;
  v49 = v32;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = v42;
  sub_1000D224C();
  (*(v43 + 8))(v25, v29);
  v47[0] = v29;
  v47[1] = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  sub_1000D227C();
  return (*(v45 + 8))(v28, v30);
}

uint64_t sub_100085D8C@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();

  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100085E00@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000D164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D18BC();
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v30 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v30 - v15;
  if (qword_100122050 != -1)
  {
    v29 = v14;
    result = swift_once();
    v14 = v29;
  }

  v17 = qword_10013C1D8;
  v18 = *(qword_10013C1D8 + 16);
  if (!v18)
  {
    v22 = 0;
    v24 = 0;
LABEL_8:
    v28 = 0;
    goto LABEL_9;
  }

  v31 = v14;

  v19 = sub_10002511C();
  if ((v20 & 1) == 0)
  {

    v22 = 0;
    v24 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  (*(v3 + 16))(v5, *(v17 + 56) + *(v3 + 72) * v19, v2);

  sub_1000D160C();
  (*(v3 + 8))(v5, v2);
  v21 = v31;
  (*(v31 + 32))(v16, v12, v6);
  (*(v21 + 16))(v9, v16, v6);
  v22 = sub_1000D25FC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = (*(v21 + 8))(v16, v6);
  v18 = v26 & 1;
LABEL_9:
  *a1 = v22;
  a1[1] = v24;
  a1[2] = v18;
  a1[3] = v28;
  return result;
}

uint64_t sub_1000860DC(_BYTE *a1)
{
  sub_10000F320();
  sub_1000D260C();
  return sub_1000D334C();
}

uint64_t sub_10008618C()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8, &qword_1000E0320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0, &unk_1000DFA00);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_100125F98, &qword_1000E91C0);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_100084BC8();
  v22 = sub_1000D157C();
  sub_100006334(&qword_100125FA0, &qword_1000E91C8);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_100048414();
  sub_1000D156C();
  return v22;
}

uint64_t sub_100086590()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsDownloadCellularQualityEntity;
  sub_100006334(&qword_100122D78, &unk_1000E6160);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100125E20, qword_1000E8A80);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100125F88, &qword_100125F90, &unk_1000E91B0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100048414();
  sub_1000D178C();
  return v7;
}

double sub_10008687C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 16);

  return result;
}

unint64_t sub_1000868B4(uint64_t a1)
{
  result = sub_1000868DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000868DC()
{
  result = qword_100125FF0;
  if (!qword_100125FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125FF0);
  }

  return result;
}

unint64_t sub_100086930()
{
  result = qword_100125FF8;
  if (!qword_100125FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125FF8);
  }

  return result;
}

Class sub_100086994()
{
  sub_100086A14();
  v1._object = 0x80000001000DBDE0;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  result = sub_1000D380C(v1).super.isa;
  qword_10013C430 = result;
  return result;
}

unint64_t sub_100086A14()
{
  result = qword_100126098;
  if (!qword_100126098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100126098);
  }

  return result;
}

uint64_t sub_100086A60(unsigned __int8 a1, uint64_t a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (qword_100122138 != -1)
      {
        swift_once();
      }

      v3 = qword_10013C430;
      v14 = xmmword_1000E9290;
      v4 = xmmword_1000E92A0;
    }

    else
    {
      if (qword_100122138 != -1)
      {
        swift_once();
      }

      v3 = qword_10013C430;
      v14 = xmmword_1000E9290;
      v4 = xmmword_1000E92B0;
    }

    v13 = v4;
    v10 = v3;
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    v3 = 0;
    v13 = xmmword_1000E92A0;
    v14 = xmmword_1000E9290;
LABEL_15:
    v16._countAndFlagsBits = sub_1000D39BC();
    sub_1000D366C(v16);

    v15[0] = a2;
    v17._countAndFlagsBits = sub_1000D39BC();
    sub_1000D366C(v17);

    v8 = *(&v14 + 1);
    v9 = v14;
    v6 = *(&v13 + 1);
    v7 = v13;
    goto LABEL_16;
  }

  if (qword_100122138 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C430;
  v5 = qword_10013C430;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_16:
  v15[0] = v3;
  v15[1] = v9;
  v15[2] = v8;
  v15[3] = v7;
  v15[4] = v6;
  type metadata accessor for TVWidgetContentViewModel(0);
  swift_allocObject();
  v11 = sub_100089F08(v15);

  return v11;
}

void *sub_100086C78(uint64_t a1)
{
  v2 = sub_1000D323C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100086A60(0, 0);
    sub_1000D36AC();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();
    sub_100086A60(3u, 0);
    sub_1000D36AC();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();
    sub_100086A60(3u, 1);
    sub_1000D36AC();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();
    v7 = 3;
LABEL_9:
    v8 = 2;
    goto LABEL_14;
  }

  if (v6 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_100086A60(0, 0);
    sub_1000D36AC();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();
    v7 = 0;
    v8 = 1;
    goto LABEL_14;
  }

  if (v6 == enum case for WidgetFamily.systemLarge(_:))
  {
    sub_100086A60(2u, 0);
    sub_1000D36AC();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();
    sub_100086A60(1u, 1);
    sub_1000D36AC();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();
    v7 = 1;
    goto LABEL_9;
  }

  if (v6 != enum case for WidgetFamily.systemExtraLarge(_:))
  {
    (*(v3 + 8))(v5, v2);
    return _swiftEmptyArrayStorage;
  }

  sub_100086A60(2u, 0);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  sub_100086A60(1u, 1);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  sub_100086A60(1u, 2);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  sub_100086A60(1u, 3);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  sub_100086A60(1u, 4);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  sub_100086A60(1u, 5);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  v7 = 1;
  v8 = 6;
LABEL_14:
  sub_100086A60(v7, v8);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  return v11;
}

id sub_100087254()
{
  type metadata accessor for TVSettingsDataProxy();
  v0 = swift_allocObject();
  result = [objc_opt_self() sharedPreferences];
  *(v0 + 16) = result;
  qword_10013C438 = v0;
  return result;
}

unint64_t sub_1000872B0(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
    case 5:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000022;
      break;
    case 8:
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD000000000000026;
      break;
    case 11:
      result = 0xD000000000000024;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 17:
      result = 0xD00000000000001FLL;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    case 19:
      result = 0xD000000000000020;
      break;
    case 20:
      result = 0x6165707041707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100087560()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000875BC()
{
  sub_100006334(&qword_100126168, &qword_1000E9348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E5A70;
  sub_100006334(&qword_100122B38, &unk_1000E9350);
  *(inited + 32) = sub_1000D361C();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  sub_100006334(&qword_100122D80, &unk_1000E0740);
  *(inited + 56) = sub_1000D361C();
  *(inited + 64) = v2;
  *(inited + 72) = 3;
  sub_100006334(&qword_100122D88, &unk_1000E9360);
  *(inited + 80) = sub_1000D361C();
  *(inited + 88) = v3;
  *(inited + 96) = 2;
  sub_100006334(&qword_100122D98, &unk_1000E6150);
  *(inited + 104) = sub_1000D361C();
  *(inited + 112) = v4;
  *(inited + 120) = 4;
  sub_100006334(&qword_100122D68, &unk_1000E9370);
  *(inited + 128) = sub_1000D361C();
  *(inited + 136) = v5;
  *(inited + 144) = 5;
  sub_100006334(&qword_100122D78, &unk_1000E6160);
  *(inited + 152) = sub_1000D361C();
  *(inited + 160) = v6;
  *(inited + 168) = 6;
  sub_100006334(&qword_100122DA0, &unk_1000E0760);
  *(inited + 176) = sub_1000D361C();
  *(inited + 184) = v7;
  *(inited + 192) = 10;
  sub_100006334(&qword_1001228C8, &unk_1000E0780);
  *(inited + 200) = sub_1000D361C();
  *(inited + 208) = v8;
  *(inited + 216) = 7;
  sub_100006334(&qword_100122DB0, &unk_1000E0770);
  *(inited + 224) = sub_1000D361C();
  *(inited + 232) = v9;
  *(inited + 240) = 13;
  sub_100006334(&qword_100122D90, &unk_1000E0750);
  *(inited + 248) = sub_1000D361C();
  *(inited + 256) = v10;
  *(inited + 264) = 12;
  sub_100006334(&qword_100122D58, &unk_1000E6170);
  *(inited + 272) = sub_1000D361C();
  *(inited + 280) = v11;
  *(inited + 288) = 16;
  sub_100006334(&qword_100122D60, &unk_1000E0720);
  *(inited + 296) = sub_1000D361C();
  *(inited + 304) = v12;
  *(inited + 312) = 15;
  sub_100006334(&qword_100122DA8, &unk_1000E9380);
  *(inited + 320) = sub_1000D361C();
  *(inited + 328) = v13;
  *(inited + 336) = 19;
  sub_100006334(&qword_100122D70, &unk_1000E0730);
  *(inited + 344) = sub_1000D361C();
  *(inited + 352) = v14;
  *(inited + 360) = 20;
  v15 = sub_100024078(inited);
  swift_setDeallocating();
  sub_100006334(&qword_100126170, &unk_1000E9390);
  result = swift_arrayDestroy();
  off_1001260A0 = v15;
  return result;
}

uint64_t sub_10008796C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000872B0(*a1);
  v5 = v4;
  if (v3 == sub_1000872B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000D39CC();
  }

  return v8 & 1;
}

Swift::Int sub_1000879F4()
{
  v1 = *v0;
  sub_1000D3A4C();
  sub_1000872B0(v1);
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_100087A58(uint64_t a1)
{
  sub_1000872B0(*v1);
  sub_1000D364C();
}

Swift::Int sub_100087AAC(uint64_t a1)
{
  v2 = *v1;
  sub_1000D3A4C();
  sub_1000872B0(v2);
  sub_1000D364C();

  return sub_1000D3A6C();
}

unint64_t sub_100087B0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100087D88(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100087B3C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000872B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for TVPreferencesStoreKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVPreferencesStoreKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100087CCC()
{
  result = qword_100126178;
  if (!qword_100126178)
  {
    sub_10000637C(&qword_100126180, qword_1000E93B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126178);
  }

  return result;
}

unint64_t sub_100087D34()
{
  result = qword_100126188;
  if (!qword_100126188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126188);
  }

  return result;
}

unint64_t sub_100087D88(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000D39EC();

  if (v2 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v2;
  }
}

double sub_100087DDC(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v3 = sub_1000D323C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 104);
  v7(v6, enum case for WidgetFamily.systemLarge(_:), v3);
  sub_10001BB48();
  sub_1000D369C();
  sub_1000D369C();
  v8 = *(v4 + 8);
  v8(v6, v3);
  result = 18.0;
  if (v14 != v13 && (*(v2 + 72) & 1) == 0)
  {
    (v7)(v6, enum case for WidgetFamily.systemSmall(_:), v3, 18.0);
    sub_1000D369C();
    sub_1000D369C();
    v8(v6, v3);
    if (v14 == v13 || (v7(v6, enum case for WidgetFamily.systemMedium(_:), v3), sub_1000D369C(), sub_1000D369C(), v8(v6, v3), result = 0.0, v14 == v13))
    {
      v10 = sub_10001AC58();
      v11 = sub_1000D37FC();

      result = 14.0;
      if (v11)
      {
        return 17.0;
      }
    }
  }

  return result;
}

uint64_t sub_100088034@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000D286C();
  v3 = sub_1000D287C();
  v4 = sub_1000D249C();
  sub_1000D249C();
  v5 = sub_1000D24CC();

  result = CTFontHasExuberatedLineHeight();
  *a1 = v2;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = result;
  return result;
}

__n128 sub_1000880CC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000880F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_100088138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008819C()
{
  v0 = sub_1000D1DBC();
  sub_1000065AC(v0, qword_10013C440);
  v1 = sub_100006610(v0, qword_10013C440);
  v2 = enum case for DynamicTypeSize.xxxLarge(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

__n128 sub_100088234(uint64_t a1, uint64_t a2)
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

uint64_t sub_100088250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100088298(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

double sub_1000882FC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v40 = a3;
  v10 = sub_1000D1DDC();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000D1DBC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v41 = &v38 - v18;
  v43 = 0;
  v44 = 0xE000000000000000;
  if (a2)
  {
    v45._countAndFlagsBits = a1;
    v45._object = a2;
    sub_1000D366C(v45);
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    sub_1000D366C(v46);
  }

  v47._countAndFlagsBits = 0x38383A383838;
  v47._object = 0xE600000000000000;
  sub_1000D366C(v47);
  if (a4)
  {
    v42._countAndFlagsBits = 32;
    v42._object = 0xE100000000000000;
    v48._countAndFlagsBits = v40;
    v48._object = a4;
    sub_1000D366C(v48);
    sub_1000D366C(v42);
  }

  v40 = v10;
  if (qword_100121F40 != -1)
  {
    swift_once();
  }

  v19 = sub_100006610(v13, qword_10013BF68);
  sub_100043508();
  v20 = sub_1000D354C();
  v21 = *(v14 + 16);
  if (v20)
  {
    v22 = v19;
  }

  else
  {
    v22 = a5;
  }

  v21(v17, v22, v13);
  if (qword_100122150 != -1)
  {
    swift_once();
  }

  v23 = sub_100006610(v13, qword_10013C440);
  v24 = sub_1000D353C();
  v25 = v41;
  if (v24)
  {
    v21(v41, v23, v13);
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    (*(v14 + 32))(v41, v17, v13);
  }

  v26 = v39;
  v27 = sub_10001AC58();
  v28 = v40;
  (*(v26 + 16))(v12, v38, v40);
  v29 = (*(v26 + 88))(v12, v28);
  if (v29 != enum case for LegibilityWeight.regular(_:) && v29 != enum case for LegibilityWeight.bold(_:))
  {
    (*(v26 + 8))(v12, v28);
  }

  v30 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v27];
  v31 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:v30];
  v32 = objc_opt_self();
  [v31 pointSize];
  v33 = [v32 monospacedDigitSystemFontOfSize:? weight:?];

  v34 = v33;
  sub_1000D368C();
  v36 = v35;

  (*(v14 + 8))(v25, v13);
  return v36;
}

unint64_t sub_100088808()
{
  result = qword_100126190;
  if (!qword_100126190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126190);
  }

  return result;
}

uint64_t sub_10008885C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v6 = sub_1000889BC();
    v7 = v2;
    v8._countAndFlagsBits = 45;
    v8._object = 0xE100000000000000;
    sub_1000D366C(v8);
    if (*(v0 + 24))
    {
      v3._countAndFlagsBits = 1702195828;
    }

    else
    {
      v3._countAndFlagsBits = 0x65736C6166;
    }

    if (*(v0 + 24))
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }

    v3._object = v4;
    sub_1000D366C(v3);

    v1 = v6;
    *(v0 + 32) = v6;
    *(v0 + 40) = v7;
  }

  return v1;
}

uint64_t sub_10008892C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100088990@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008885C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000889BC()
{
  v1 = (v0 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel____lazy_storage___id);
  if (*(v0 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel____lazy_storage___id + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_100088A38(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_100088A38(uint64_t a1)
{
  v2 = sub_1000D191C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006334(&qword_100122DB8, qword_1000E0790);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = *(a1 + 73);
  v10 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_actionURL;
  swift_beginAccess();
  sub_10000F8D0(a1 + v10, v8, &qword_100122DB8, qword_1000E0790);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_10000F938(v8, &qword_100122DB8, qword_1000E0790);
    v11 = *(a1 + 24);
    if (!v11)
    {
      return 0xD00000000000001ELL;
    }

    v12 = *(a1 + 40);
    if (!v12)
    {
      return 0xD00000000000001ELL;
    }

    v13 = *(a1 + 32);
    v21 = *(a1 + 16);
    v22 = v11;

    v23._countAndFlagsBits = 45;
    v23._object = 0xE100000000000000;
    sub_1000D366C(v23);
    v24._countAndFlagsBits = v13;
    v24._object = v12;
    sub_1000D366C(v24);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_10000F938(v8, &qword_100122DB8, qword_1000E0790);
    v15 = sub_1000D18EC();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v21 = v15;
    v22 = v17;
  }

  v25._countAndFlagsBits = 45;
  v25._object = 0xE100000000000000;
  sub_1000D366C(v25);
  if (v9)
  {
    v18._countAndFlagsBits = 1702195828;
  }

  else
  {
    v18._countAndFlagsBits = 0x65736C6166;
  }

  if (v9)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v18._object = v19;
  sub_1000D366C(v18);

  return v21;
}

uint64_t sub_100088CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000D181C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  v11 = sub_100006334(&qword_100126500, &qword_1000E98A8);
  __chkstk_darwin(v11 - 8);
  v13 = v28 - v12;
  v14 = sub_1000D186C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D184C();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000F938(v13, &qword_100126500, &qword_1000E98A8);
    v18 = sub_1000D191C();
    v19 = *(v18 - 8);
    (*(v19 + 16))(a2, a1, v18);
    return (*(v19 + 56))(a2, 0, 1, v18);
  }

  else
  {
    v28[0] = v8;
    v28[1] = a2;
    (*(v15 + 32))(v17, v13, v14);
    v21 = sub_1000D182C();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = _swiftEmptyArrayStorage;
    }

    v23 = [objc_opt_self() mainBundle];
    v24 = [v23 bundleIdentifier];

    if (v24)
    {
      sub_1000D360C();
    }

    sub_1000D180C();

    v25 = v28[0];
    (*(v5 + 16))(v28[0], v10, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_100089D30(0, v22[2] + 1, 1, v22);
    }

    v27 = v22[2];
    v26 = v22[3];
    if (v27 >= v26 >> 1)
    {
      v22 = sub_100089D30((v26 > 1), v27 + 1, 1, v22);
    }

    v22[2] = v27 + 1;
    (*(v5 + 32))(v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, v25, v4);
    sub_1000D183C();
    sub_1000D185C();
    (*(v5 + 8))(v10, v4);
    return (*(v15 + 8))(v17, v14);
  }
}

id sub_100089104()
{
  v1 = v0;
  v2 = sub_100006334(&qword_1001264F8, &qword_1000EAB90);
  __chkstk_darwin(v2 - 8);
  v70 = &v64 - v3;
  v4 = sub_100006334(&qword_100122E90, &qword_1000E3E80);
  v5 = __chkstk_darwin(v4 - 8);
  v69 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v71 = &v64 - v8;
  __chkstk_darwin(v7);
  v10 = &v64 - v9;
  v11 = sub_1000D19FC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v64 - v17;
  __chkstk_darwin(v16);
  v20 = &v64 - v19;
  v21 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate;
  swift_beginAccess();
  v22 = v12;
  sub_10000F8D0(v1 + v21, v10, &qword_100122E90, &qword_1000E3E80);
  v23 = *(v12 + 48);
  if (v23(v10, 1, v11) == 1)
  {
    return sub_10000F938(v10, &qword_100122E90, &qword_1000E3E80);
  }

  v66 = v23;
  (*(v22 + 32))(v20, v10, v11);
  sub_1000D19EC();
  sub_1000D19DC();
  v26 = (v22 + 8);
  v25 = *(v22 + 8);
  v25(v15, v11);
  v27 = v22;
  v28 = sub_1000D199C();
  v25(v18, v11);
  v64 = v18;
  v65 = v27;
  v67 = v25;
  if (v28)
  {
    *(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_isExpiring) = 1;
    sub_1000D19EC();
    sub_1000D19DC();
    v25(v15, v11);
    v29 = sub_1000D199C();
    v25(v18, v11);
    if (v29)
    {
      v30 = v65;
      v31 = v71;
      (*(v65 + 16))(v71, v20, v11);
      (*(v30 + 56))(v31, 0, 1, v11);
      v32 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate;
      swift_beginAccess();
      v33 = v1 + v32;
      v34 = v31;
    }

    else
    {
      v38 = v71;
      sub_1000D19DC();
      (*(v65 + 56))(v38, 0, 1, v11);
      v39 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate;
      swift_beginAccess();
      v33 = v1 + v39;
      v34 = v38;
    }

    sub_10007701C(v34, v33, &qword_100122E90, &qword_1000E3E80);
    v37 = swift_endAccess();
  }

  else
  {
    v35 = v71;
    sub_1000D19DC();
    (*(v27 + 56))(v35, 0, 1, v11);
    v36 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate;
    swift_beginAccess();
    sub_10007701C(v35, v1 + v36, &qword_100122E90, &qword_1000E3E80);
    v37 = swift_endAccess();
  }

  v71 = v26;
  v68 = v20;
  result = sub_100002C80(v37);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v40 = result;
  sub_100006334(&qword_100122C50, &qword_1000E3F90);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000E3AA0;
  v43 = *(v1 + 16);
  v42 = *(v1 + 24);
  *(v41 + 56) = &type metadata for String;
  v44 = sub_100018744();
  *(v41 + 64) = v44;
  if (v42)
  {
    v45 = v43;
  }

  else
  {
    v45 = 7104878;
  }

  v46 = 0xE300000000000000;
  if (v42)
  {
    v46 = v42;
  }

  *(v41 + 32) = v45;
  *(v41 + 40) = v46;
  v47 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate;
  swift_beginAccess();
  v48 = v1 + v47;
  v49 = v69;
  sub_10000F8D0(v48, v69, &qword_100122E90, &qword_1000E3E80);
  if (v66(v49, 1, v11))
  {

    sub_10000F938(v49, &qword_100122E90, &qword_1000E3E80);
    v50 = (v41 + 72);
    *(v41 + 96) = &type metadata for String;
    *(v41 + 104) = v44;
    v51 = v70;
    v52 = v67;
  }

  else
  {
    v54 = v64;
    (*(v65 + 16))(v64, v49, v11);

    sub_10000F938(v49, &qword_100122E90, &qword_1000E3E80);
    v51 = v70;
    sub_1000D1A1C();
    v55 = sub_1000D1A2C();
    (*(*(v55 - 8) + 56))(v51, 0, 1, v55);
    v56 = sub_1000D194C();
    v53 = v57;
    sub_10000F938(v51, &qword_1001264F8, &qword_1000EAB90);
    v52 = v67;
    v67(v54, v11);
    v50 = (v41 + 72);
    *(v41 + 96) = &type metadata for String;
    *(v41 + 104) = v44;
    if (v53)
    {
      *v50 = v56;
      goto LABEL_20;
    }
  }

  *v50 = 7104878;
  v53 = 0xE300000000000000;
LABEL_20:
  *(v41 + 80) = v53;
  sub_1000D1A1C();
  v58 = sub_1000D1A2C();
  (*(*(v58 - 8) + 56))(v51, 0, 1, v58);
  v59 = v68;
  v60 = sub_1000D194C();
  v62 = v61;
  sub_10000F938(v51, &qword_1001264F8, &qword_1000EAB90);
  *(v41 + 136) = &type metadata for String;
  *(v41 + 144) = v44;
  *(v41 + 112) = v60;
  *(v41 + 120) = v62;
  v63 = sub_1000D37AC();
  sub_1000D1B2C("TVWidgetContentViewModel::computeRefreshDate:: title: %@, refreshDate: %@, rentalExpirationDate: %@", 99, 2, &_mh_execute_header, v40, v63, v41);

  return v52(v59, v11);
}

uint64_t sub_1000898E0(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((a1 & 1) != 0 && a3 >> 60 != 15)
  {
    v8 = objc_allocWithZone(UIImage);
    sub_10003C490(a2, a3);
    sub_10003C490(a2, a3);
    isa = sub_1000D192C().super.isa;
    v10 = [v8 initWithData:isa];

    sub_10003C3F4(a2, a3);
    if (v10)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      sub_10003C3F4(a2, a3);
      if (Strong)
      {
        v12 = *(Strong + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image);
        *(Strong + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image) = v10;
      }

      else
      {
      }
    }

    else
    {
      sub_10003C3F4(a2, a3);
    }
  }

  return a5();
}

void *sub_100089A10()
{

  sub_10000F938(v0 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_actionURL, &qword_100122DB8, qword_1000E0790);
  sub_10000F938(v0 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate, &qword_100122E90, &qword_1000E3E80);

  sub_10000F938(v0 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate, &qword_100122E90, &qword_1000E3E80);

  sub_10000F938(v0 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_imageUrl, &qword_100122DB8, qword_1000E0790);

  return v0;
}

uint64_t sub_100089B10()
{
  sub_100089A10();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWidgetContentViewModel(uint64_t a1)
{
  result = qword_100126298;
  if (!qword_100126298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100089BBC(uint64_t a1)
{
  sub_100019A48(319, &qword_100122E28, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    sub_100019A48(319, &qword_100122F10, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100089D04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000889BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_100089D30(void *result, int64_t a2, char a3, void *a4)
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

  sub_100006334(&qword_100126508, &unk_1000E98B0);
  v10 = *(sub_1000D181C() - 8);
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
  v15 = *(sub_1000D181C() - 8);
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

uint64_t sub_100089F08(uint64_t *a1)
{
  *(v1 + 64) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 72) = 1;
  *(v1 + 73) = 514;
  v3 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_actionURL;
  v4 = sub_1000D191C();
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v6 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate;
  v7 = sub_1000D19FC();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image;
  *(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image) = 0;
  *(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_isExpiring) = 0;
  v8(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate, 1, 1, v7);
  v10 = (v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_cropCode);
  *v10 = 0;
  v10[1] = 0;
  v5(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_imageUrl, 1, 1, v4);
  v11 = (v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel____lazy_storage___id);
  *v11 = 0;
  v11[1] = 0;
  v12 = *(a1 + 1);
  v17 = *(a1 + 3);
  v13 = v17;
  v18 = v12;
  *(v1 + 16) = v12;
  *(v1 + 32) = v13;
  v16 = *a1;
  *(v1 + v9) = v16;
  sub_10000F8D0(&v18, v15, &qword_1001264E8, &unk_1000EC920);
  sub_10000F8D0(&v17, v15, &qword_1001264E8, &unk_1000EC920);
  sub_10000F8D0(&v16, v15, &qword_1001264F0, &qword_1000E98A0);
  return v1;
}

uint64_t sub_10008A0FC(void *a1)
{
  v3 = sub_100006334(&qword_100122E90, &qword_1000E3E80);
  __chkstk_darwin(v3 - 8);
  v62 = &v55 - v4;
  v5 = sub_1000D191C();
  v55 = *(v5 - 8);
  v6 = v55;
  __chkstk_darwin(v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006334(&qword_100122DB8, qword_1000E0790);
  __chkstk_darwin(v9 - 8);
  v57 = &v55 - v10;
  *(v1 + 64) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 72) = 1;
  *(v1 + 73) = 514;
  v56 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_actionURL;
  v11 = *(v6 + 56);
  v11(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_actionURL, 1, 1, v5);
  v12 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate;
  v13 = sub_1000D19FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v61 = v12;
  v15(v1 + v12, 1, 1, v13);
  v63 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image;
  *(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image) = 0;
  *(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_isExpiring) = 0;
  v59 = v15;
  v60 = v13;
  v58 = v16;
  v15(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate, 1, 1, v13);
  v17 = (v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_cropCode);
  *v17 = 0;
  v17[1] = 0;
  v11(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_imageUrl, 1, 1, v5);
  v18 = (v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel____lazy_storage___id);
  *v18 = 0;
  v18[1] = 0;
  v19 = [a1 title];
  v20 = sub_1000D360C();
  v22 = v21;

  *(v1 + 16) = v20;
  *(v1 + 24) = v22;

  v23 = [a1 subtitleComposed];
  v24 = sub_1000D360C();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = &selRef_subtitleComposed;
  }

  else
  {
    v28 = &selRef_subtitle;
  }

  v29 = [a1 *v28];
  v30 = sub_1000D360C();
  v32 = v31;

  *(v1 + 32) = v30;
  *(v1 + 40) = v32;

  v33 = [a1 imageURLTemplate];
  v34 = sub_1000D360C();
  v36 = v35;

  *(v1 + 48) = v34;
  *(v1 + 56) = v36;

  [a1 imageAspectRatio];
  *(v1 + 64) = v37;
  *(v1 + 72) = 0;
  v38 = [a1 actionURL];
  sub_1000D18FC();

  v39 = v57;
  sub_100088CD8(v8, v57);
  (*(v55 + 8))(v8, v5);
  v40 = v56;
  swift_beginAccess();
  sub_10007701C(v39, v1 + v40, &qword_100122DB8, qword_1000E0790);
  swift_endAccess();
  *(v1 + 73) = [a1 isLiveEvent];
  v41 = [a1 rentalExpirationDate];
  v42 = v62;
  if (v41)
  {
    v43 = v41;
    sub_1000D19CC();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v59(v42, v44, 1, v60);
  v45 = v61;
  swift_beginAccess();
  sub_10007701C(v42, v1 + v45, &qword_100122E90, &qword_1000E3E80);
  swift_endAccess();
  *(v1 + 74) = [a1 isNewEpisode];
  v46 = [a1 cropCode];
  if (v46)
  {
    v47 = v46;
    v48 = sub_1000D360C();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  *v17 = v48;
  v17[1] = v50;

  if (qword_100122138 != -1)
  {
    swift_once();
  }

  v51 = qword_10013C430;
  v52 = *(v1 + v63);
  *(v1 + v63) = qword_10013C430;
  v53 = v51;

  sub_100089104();
  return v1;
}

id sub_10008A688(void *a1, CGFloat a2, CGFloat a3)
{
  UIGraphicsBeginImageContextWithOptions(*&a2, 0, 0.0);
  [a1 setFill];
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = a2;
  v11.size.height = a3;
  UIRectFill(v11);
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v6)
  {
    v7 = [(UIImage *)v6 CGImage];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCGImage:v7];

      return v9;
    }
  }

  return 0;
}

unint64_t sub_10008A76C()
{
  result = qword_100126530;
  if (!qword_100126530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126530);
  }

  return result;
}

uint64_t sub_10008A804()
{
  v0 = sub_100006334(&qword_1001228C0, &unk_1000DFA00);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C488);
  sub_100006610(v10, qword_10013C488);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10008AAEC()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C4A0);
  sub_100006610(v0, qword_10013C4A0);
  return sub_1000D188C();
}

uint64_t sub_10008AB50()
{
  v0 = sub_100006334(&qword_100122908, &unk_1000DFA70);
  sub_1000065AC(v0, qword_10013C4B8);
  v1 = sub_100006610(v0, qword_10013C4B8);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10008AC10()
{
  result = swift_getKeyPath();
  qword_10013C4D0 = result;
  return result;
}

uint64_t sub_10008AC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_10008AC5C, 0, 0);
}

uint64_t sub_10008AC5C(uint64_t a1)
{
  sub_1000D154C();
  v1[5] = v1[2];
  v2 = v1[3];
  v3 = v1[4];
  v1[17] = v2;
  v1[18] = v3;
  v1[6] = v2;
  v1[7] = v3;
  sub_1000D154C();
  if (qword_100122170 != -1)
  {
    swift_once();
  }

  v4 = qword_10013C4D0;
  v1[19] = qword_10013C4D0;

  v5 = swift_task_alloc();
  v1[20] = v5;
  v6 = sub_10000FC38(&qword_1001266A8, &qword_1001266B0, &unk_1000E9FE0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v1[21] = v6;
  *v5 = v1;
  v5[1] = sub_10008ADBC;

  return AppEntity._setValue<A, B, C>(_:for:)(v1 + 28, v4, &type metadata for TVSettingsAppAppearance, v6);
}

uint64_t sub_10008ADBC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_10008AF2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008AF2C(uint64_t a1)
{
  sub_1000D154C();
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v1[23] = v3;
  v1[24] = v4;
  v1[11] = v2;
  v1[12] = v3;
  v1[13] = v4;
  v5 = qword_10013C4D0;
  v1[25] = qword_10013C4D0;

  v6 = swift_task_alloc();
  v1[26] = v6;
  *v6 = v1;
  v6[1] = sub_10008B010;
  v7 = v1[21];

  return AppEntity._value<A, B>(for:)(v1 + 225, v5, v7);
}

uint64_t sub_10008B010()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_10008B180;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008B180()
{
  *(v0 + 226) = *(v0 + 225);
  sub_100046508();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_10008B208(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_10008B27C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

double sub_10008B2F0()
{
  if (qword_100122170 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_10008B350()
{
  result = qword_100126548;
  if (!qword_100126548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126548);
  }

  return result;
}

unint64_t sub_10008B3A8()
{
  result = qword_100126550;
  if (!qword_100126550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126550);
  }

  return result;
}

uint64_t sub_10008B4B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122168 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908, &unk_1000DFA70);
  v3 = sub_100006610(v2, qword_10013C4B8);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_10008B53C(uint64_t a1, __n128 a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100013B8C;

  return sub_10008AC38(a1, v6, v5);
}

uint64_t sub_10008B5E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008D104();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10008B630()
{
  result = qword_100126558;
  if (!qword_100126558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126558);
  }

  return result;
}

unint64_t sub_10008B688()
{
  result = qword_100126560;
  if (!qword_100126560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126560);
  }

  return result;
}

uint64_t sub_10008B6FC()
{
  **(v0 + 16) = sub_1000A35C8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008B7A8()
{
  sub_1000A4050(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008B844()
{
  v1 = *(v0 + 16);
  *v1 = sub_10008D508();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_10008B8B0()
{
  result = qword_100126568;
  if (!qword_100126568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126568);
  }

  return result;
}

uint64_t sub_10008B904(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  v6 = sub_10008C624();
  *v5 = v3;
  v5[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10008B9B8()
{
  result = qword_100126570;
  if (!qword_100126570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126570);
  }

  return result;
}

unint64_t sub_10008BA10()
{
  result = qword_100126578;
  if (!qword_100126578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126578);
  }

  return result;
}

unint64_t sub_10008BA64()
{
  result = qword_100126580;
  if (!qword_100126580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126580);
  }

  return result;
}

uint64_t sub_10008BAB8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_10008C624();
  *v6 = v3;
  v6[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10008BB6C(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  v6 = sub_10008C624();
  *v5 = v3;
  v5[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10008BC20()
{
  result = qword_100126588;
  if (!qword_100126588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126588);
  }

  return result;
}

unint64_t sub_10008BC74()
{
  result = qword_100126590;
  if (!qword_100126590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126590);
  }

  return result;
}

unint64_t sub_10008BCCC()
{
  result = qword_100126598;
  if (!qword_100126598)
  {
    sub_10000637C(&qword_1001265A0, qword_1000E9B20);
    sub_10008BC74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126598);
  }

  return result;
}

uint64_t sub_10008BD50(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_10008B8B0();
  *v6 = v3;
  v6[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10008BE04(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100013B8C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10008BF2C(uint64_t a1)
{
  v2 = sub_10008C47C();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_10008BA64();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_10008BFD4(uint64_t a1)
{
  sub_10008C3A8();
  v2 = sub_1000D169C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10008C078(uint64_t a1)
{
  v2 = sub_10008BA64();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10008C0C4(uint64_t a1)
{
  v2 = sub_10008B688();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10008C110(uint64_t a1)
{
  v2 = sub_10008C1B8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10008C160()
{
  result = qword_1001265B8;
  if (!qword_1001265B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001265B8);
  }

  return result;
}

unint64_t sub_10008C1B8()
{
  result = qword_1001265C0;
  if (!qword_1001265C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001265C0);
  }

  return result;
}

unint64_t sub_10008C20C()
{
  result = qword_1001265C8;
  if (!qword_1001265C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001265C8);
  }

  return result;
}

unint64_t sub_10008C264()
{
  result = qword_1001265D0;
  if (!qword_1001265D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001265D0);
  }

  return result;
}

unint64_t sub_10008C2C8()
{
  result = qword_1001265D8;
  if (!qword_1001265D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001265D8);
  }

  return result;
}

unint64_t sub_10008C31C(void *a1)
{
  a1[1] = sub_10008C354();
  a1[2] = sub_10008C3A8();
  result = sub_10008B688();
  a1[3] = result;
  return result;
}

unint64_t sub_10008C354()
{
  result = qword_100126628;
  if (!qword_100126628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126628);
  }

  return result;
}

unint64_t sub_10008C3A8()
{
  result = qword_100126630;
  if (!qword_100126630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126630);
  }

  return result;
}

unint64_t sub_10008C400()
{
  result = qword_100126638;
  if (!qword_100126638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126638);
  }

  return result;
}

unint64_t sub_10008C454(uint64_t a1)
{
  result = sub_10008C47C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008C47C()
{
  result = qword_100126670;
  if (!qword_100126670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126670);
  }

  return result;
}

unint64_t sub_10008C518()
{
  result = qword_100126688;
  if (!qword_100126688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126688);
  }

  return result;
}

unint64_t sub_10008C570()
{
  result = qword_100126690;
  if (!qword_100126690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126690);
  }

  return result;
}

unint64_t sub_10008C5C8()
{
  result = qword_100126698;
  if (!qword_100126698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126698);
  }

  return result;
}

unint64_t sub_10008C624()
{
  result = qword_1001266A0;
  if (!qword_1001266A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001266A0);
  }

  return result;
}

uint64_t sub_10008C678@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960, &unk_1000DFB00);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v34 = v33 - v4;
  v5 = sub_100006334(&qword_100122968, &unk_1000E8260);
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  __chkstk_darwin(v5);
  v35 = v33 - v7;
  v8 = sub_100006334(&qword_100122970, &unk_1000DFB10);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v36 = v33 - v10;
  v11 = sub_100006334(&qword_100122978, &unk_1000E8270);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v37 = v33 - v13;
  strcpy(v47, "com.apple.tv.");
  HIWORD(v47[1]) = -4864;
  v14 = sub_10008D8A4();
  v15 = *(v14 + 40);
  v54._countAndFlagsBits = (v15)(&type metadata for TVSettingsAppAppearanceWidget, v14);
  sub_1000D366C(v54);

  v33[3] = v47[0];
  v33[2] = v47[1];
  v33[1] = aAppAppearance[0];
  swift_getKeyPath();

  sub_1000D32AC();
  sub_100006334(&qword_100122988, &unk_1000DFB20);
  sub_1000464B4();
  sub_100046808();
  sub_10008B688();
  sub_100013998();
  v16 = v34;
  sub_1000D32CC();
  v47[0] = v15();
  v47[1] = v17;
  v52 = 0x746567646957;
  v53 = 0xE600000000000000;
  v50 = 0x656C67676F54;
  v51 = 0xE600000000000000;
  v32 = sub_10000F320();
  v18 = sub_1000D387C();
  v20 = v19;

  v47[0] = v18;
  v47[1] = v20;
  v21 = sub_10000FC38(&qword_1001229A0, &qword_100122960, &unk_1000DFB00, &protocol conformance descriptor for ControlPicker<A>);
  v22 = v35;
  v23 = v38;
  sub_1000D223C();

  (*(v39 + 8))(v16, v23);
  v52 = qword_100126520;
  v53 = off_100126528;
  v47[0] = v23;
  v47[1] = &type metadata for String;
  v48 = v21;
  v49 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v36;
  v26 = v40;
  sub_1000D21FC();
  (*(v41 + 8))(v22, v26);
  v47[0] = v26;
  v47[1] = &type metadata for String;
  v48 = OpaqueTypeConformance2;
  v49 = v32;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = v42;
  sub_1000D224C();
  (*(v43 + 8))(v25, v29);
  v47[0] = v29;
  v47[1] = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  sub_1000D227C();
  return (*(v45 + 8))(v28, v30);
}

uint64_t sub_10008CCE4@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();

  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10008CD58@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000D164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D18BC();
  v9 = __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v33 - v17;
  v19 = *a1;
  if (qword_100122030 != -1)
  {
    v32 = v16;
    result = swift_once();
    v16 = v32;
  }

  v20 = qword_10013C198;
  v21 = *(qword_10013C198 + 16);
  if (!v21)
  {
    v25 = 0;
    v27 = 0;
LABEL_8:
    v31 = 0;
    goto LABEL_9;
  }

  v34 = v16;

  v22 = sub_100023520(v19);
  if ((v23 & 1) == 0)
  {

    v25 = 0;
    v27 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  (*(v5 + 16))(v7, *(v20 + 56) + *(v5 + 72) * v22, v4);

  sub_1000D160C();
  (*(v5 + 8))(v7, v4);
  v24 = v34;
  (*(v34 + 32))(v18, v14, v8);
  (*(v24 + 16))(v11, v18, v8);
  v25 = sub_1000D25FC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = (*(v24 + 8))(v18, v8);
  v21 = v29 & 1;
LABEL_9:
  *a2 = v25;
  a2[1] = v27;
  a2[2] = v21;
  a2[3] = v31;
  return result;
}

uint64_t sub_10008D034(_BYTE *a1)
{
  sub_10000F320();
  sub_1000D260C();
  return sub_1000D334C();
}

uint64_t sub_10008D104()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8, &qword_1000E0320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0, &unk_1000DFA00);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_1001266B8, &qword_1000E9FF0);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_10008BA64();
  v22 = sub_1000D157C();
  sub_100006334(&qword_1001266C0, &qword_1000E9FF8);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = 3;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_1000464B4();
  sub_1000D156C();
  return v22;
}

uint64_t sub_10008D508()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsAppAppearanceEntity;
  sub_100006334(&qword_100122D70, &unk_1000E0730);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100126540, qword_1000E98C0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_1001266A8, &qword_1001266B0, &unk_1000E9FE0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_1000464B4();
  sub_1000D178C();
  return v7;
}

double sub_10008D7F0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 16);

  return result;
}

unint64_t sub_10008D828(uint64_t a1)
{
  result = sub_10008D850();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008D850()
{
  result = qword_100126710;
  if (!qword_100126710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126710);
  }

  return result;
}

unint64_t sub_10008D8A4()
{
  result = qword_100126718;
  if (!qword_100126718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126718);
  }

  return result;
}

unint64_t sub_10008D90C()
{
  result = qword_100126720;
  if (!qword_100126720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126720);
  }

  return result;
}

uint64_t sub_10008D9A4()
{
  v0 = sub_100006334(&qword_1001228C0, &unk_1000DFA00);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C4D8);
  sub_100006610(v10, qword_10013C4D8);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10008DC94()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C4F0);
  sub_100006610(v0, qword_10013C4F0);
  return sub_1000D188C();
}

uint64_t sub_10008DCF8()
{
  v0 = sub_100006334(&qword_100122908, &unk_1000DFA70);
  sub_1000065AC(v0, qword_10013C508);
  v1 = sub_100006610(v0, qword_10013C508);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10008DDB8()
{
  result = swift_getKeyPath();
  qword_10013C520 = result;
  return result;
}

uint64_t sub_10008DDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_10008DE04, 0, 0);
}

uint64_t sub_10008DE04(uint64_t a1)
{
  sub_1000D154C();
  v2 = *(v1 + 24);
  *(v1 + 40) = *(v1 + 16);
  v3 = *(v1 + 32);
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  sub_1000D154C();
  *(v1 + 225) = *(v1 + 224);
  if (qword_100122190 != -1)
  {
    swift_once();
  }

  v4 = qword_10013C520;
  *(v1 + 152) = qword_10013C520;

  v5 = swift_task_alloc();
  *(v1 + 160) = v5;
  v6 = sub_10000FC38(&qword_100126898, &qword_1001268A0, &unk_1000EA7E0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *(v1 + 168) = v6;
  *v5 = v1;
  v5[1] = sub_10008DF70;

  return AppEntity._setValue<A, B, C>(_:for:)(v1 + 225, v4, &type metadata for VideosDownloadWiFiQuality, v6);
}

uint64_t sub_10008DF70()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_10008E0E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008E0E0(uint64_t a1)
{
  sub_1000D154C();
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v1[23] = v3;
  v1[24] = v4;
  v1[11] = v2;
  v1[12] = v3;
  v1[13] = v4;
  v5 = qword_10013C520;
  v1[25] = qword_10013C520;

  v6 = swift_task_alloc();
  v1[26] = v6;
  *v6 = v1;
  v6[1] = sub_10008E1C4;
  v7 = v1[21];

  return AppEntity._value<A, B>(for:)(v1 + 226, v5, v7);
}

uint64_t sub_10008E1C4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_10008E334;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008E334()
{
  *(v0 + 227) = *(v0 + 226);
  sub_1000489A0();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_10008E3BC(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_10008E430(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

double sub_10008E4A4()
{
  if (qword_100122190 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_10008E504()
{
  result = qword_100126738;
  if (!qword_100126738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126738);
  }

  return result;
}

unint64_t sub_10008E55C()
{
  result = qword_100126740;
  if (!qword_100126740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126740);
  }

  return result;
}

uint64_t sub_10008E66C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122188 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908, &unk_1000DFA70);
  v3 = sub_100006610(v2, qword_10013C508);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_10008E6F0(uint64_t a1, __n128 a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100013B8C;

  return sub_10008DDE0(a1, v6, v5);
}

uint64_t sub_10008E79C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009035C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10008E7E4()
{
  result = qword_100126748;
  if (!qword_100126748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126748);
  }

  return result;
}

unint64_t sub_10008E83C()
{
  result = qword_100126750;
  if (!qword_100126750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126750);
  }

  return result;
}

uint64_t sub_10008E8B0()
{
  **(v0 + 16) = sub_1000A37A8() & 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008E960()
{
  sub_1000A4318(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008E9FC()
{
  v1 = *(v0 + 16);
  *v1 = sub_100090760();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_10008EA6C()
{
  result = qword_100126758;
  if (!qword_100126758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126758);
  }

  return result;
}

uint64_t sub_10008EAC0(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  v6 = sub_10008F728();
  *v5 = v3;
  v5[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10008EB74()
{
  result = qword_100126760;
  if (!qword_100126760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126760);
  }

  return result;
}

unint64_t sub_10008EBCC()
{
  result = qword_100126768;
  if (!qword_100126768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126768);
  }

  return result;
}

unint64_t sub_10008EC24()
{
  result = qword_100126770;
  if (!qword_100126770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126770);
  }

  return result;
}

uint64_t sub_10008EC78(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_10008F728();
  *v6 = v3;
  v6[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10008ED2C(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  v6 = sub_10008F728();
  *v5 = v3;
  v5[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10008EDE0()
{
  result = qword_100126778;
  if (!qword_100126778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126778);
  }

  return result;
}

unint64_t sub_10008EE38()
{
  result = qword_100126780;
  if (!qword_100126780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126780);
  }

  return result;
}

unint64_t sub_10008EE90()
{
  result = qword_100126788;
  if (!qword_100126788)
  {
    sub_10000637C(&qword_100126790, qword_1000EA310);
    sub_10008EE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126788);
  }

  return result;
}

uint64_t sub_10008EF14(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_10008EA6C();
  *v6 = v3;
  v6[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10008F03C(uint64_t a1)
{
  v2 = sub_10008F584();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_10008EC24();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_10008F0E4(uint64_t a1)
{
  sub_10008F4B0();
  v2 = sub_1000D169C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10008F188(uint64_t a1)
{
  v2 = sub_10008EC24();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10008F1D4(uint64_t a1)
{
  v2 = sub_10008E83C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10008F220(uint64_t a1)
{
  v2 = sub_10008F2C8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10008F270()
{
  result = qword_1001267A8;
  if (!qword_1001267A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001267A8);
  }

  return result;
}

unint64_t sub_10008F2C8()
{
  result = qword_1001267B0;
  if (!qword_1001267B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001267B0);
  }

  return result;
}

unint64_t sub_10008F31C()
{
  result = qword_1001267B8;
  if (!qword_1001267B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001267B8);
  }

  return result;
}

unint64_t sub_10008F374()
{
  result = qword_1001267C0;
  if (!qword_1001267C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001267C0);
  }

  return result;
}

unint64_t sub_10008F3D0()
{
  result = qword_1001267C8;
  if (!qword_1001267C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001267C8);
  }

  return result;
}

unint64_t sub_10008F424(void *a1)
{
  a1[1] = sub_10008F45C();
  a1[2] = sub_10008F4B0();
  result = sub_10008E83C();
  a1[3] = result;
  return result;
}

unint64_t sub_10008F45C()
{
  result = qword_100126818;
  if (!qword_100126818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126818);
  }

  return result;
}

unint64_t sub_10008F4B0()
{
  result = qword_100126820;
  if (!qword_100126820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126820);
  }

  return result;
}

unint64_t sub_10008F508()
{
  result = qword_100126828;
  if (!qword_100126828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126828);
  }

  return result;
}

unint64_t sub_10008F55C(uint64_t a1)
{
  result = sub_10008F584();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008F584()
{
  result = qword_100126860;
  if (!qword_100126860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126860);
  }

  return result;
}

unint64_t sub_10008F620()
{
  result = qword_100126878;
  if (!qword_100126878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126878);
  }

  return result;
}

unint64_t sub_10008F678()
{
  result = qword_100126880;
  if (!qword_100126880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126880);
  }

  return result;
}

unint64_t sub_10008F6D0()
{
  result = qword_100126888;
  if (!qword_100126888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126888);
  }

  return result;
}

unint64_t sub_10008F728()
{
  result = qword_100126890;
  if (!qword_100126890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126890);
  }

  return result;
}

void sub_10008F77C()
{
  sub_1000D38DC(19);
  v0 = WLKIsRegulatedSKU();
  v1 = v0 == 0;
  if (v0)
  {
    v2._countAndFlagsBits = 1312902231;
  }

  else
  {
    v2._countAndFlagsBits = 0x69462D6957;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1000D366C(v2);

  v4._object = 0x80000001000DC280;
  v4._countAndFlagsBits = 0xD000000000000011;
  sub_1000D366C(v4);
  qword_10013C528 = 0;
  unk_10013C530 = 0xE000000000000000;
}

void sub_10008F82C()
{
  sub_1000D38DC(35);

  v0 = WLKIsRegulatedSKU();
  v1 = v0 == 0;
  if (v0)
  {
    v2._countAndFlagsBits = 1312902231;
  }

  else
  {
    v2._countAndFlagsBits = 0x69462D6957;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1000D366C(v2);

  v4._object = 0x80000001000DC260;
  v4._countAndFlagsBits = 0xD000000000000016;
  sub_1000D366C(v4);
  qword_10013C538 = 0x742065736F6F6843;
  unk_10013C540 = 0xEB00000000206568;
}

uint64_t sub_10008F8FC@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960, &unk_1000DFB00);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = v25 - v3;
  v36 = sub_100006334(&qword_100122968, &unk_1000E8260);
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v27 = v25 - v4;
  v38 = sub_100006334(&qword_100122970, &unk_1000DFB10);
  v34 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = v25 - v5;
  v37 = sub_100006334(&qword_100122978, &unk_1000E8270);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = v25 - v6;
  strcpy(v40, "com.apple.tv.");
  HIWORD(v40[1]) = -4864;
  v7 = sub_100090B04();
  v26 = *(v7 + 40);
  v47._countAndFlagsBits = (v26)(&type metadata for TVSettingsDownloadWifiQualityWidget, v7);
  sub_1000D366C(v47);

  v25[2] = v40[0];
  v25[1] = v40[1];
  if (qword_100122198 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();

  sub_1000D32AC();
  sub_100006334(&qword_100122988, &unk_1000DFB20);
  sub_10004894C();
  sub_100048CA0();
  sub_10008E83C();
  sub_100013998();
  v8 = v28;
  sub_1000D32CC();
  v40[0] = v26();
  v40[1] = v9;
  v45 = 0x746567646957;
  v46 = 0xE600000000000000;
  v43 = 0x656C67676F54;
  v44 = 0xE600000000000000;
  v10 = sub_10000F320();
  v11 = sub_1000D387C();
  v13 = v12;

  v40[0] = v11;
  v40[1] = v13;
  v14 = sub_10000FC38(&qword_1001229A0, &qword_100122960, &unk_1000DFB00, &protocol conformance descriptor for ControlPicker<A>);
  v15 = v27;
  v16 = v30;
  sub_1000D223C();

  (*(v29 + 8))(v8, v16);
  if (qword_1001221A0 != -1)
  {
    swift_once();
  }

  v45 = qword_10013C538;
  v46 = unk_10013C540;
  v40[0] = v16;
  v40[1] = &type metadata for String;
  v41 = v14;
  v42 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v31;
  v19 = v36;
  sub_1000D21FC();
  (*(v33 + 8))(v15, v19);
  v40[0] = v19;
  v40[1] = &type metadata for String;
  v41 = OpaqueTypeConformance2;
  v42 = v10;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = v32;
  v22 = v38;
  sub_1000D224C();
  (*(v34 + 8))(v18, v22);
  v40[0] = v22;
  v40[1] = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v37;
  sub_1000D227C();
  return (*(v35 + 8))(v21, v23);
}

uint64_t sub_10008FFD8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122198 != -1)
  {
    swift_once();
  }

  sub_10000F320();

  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10009007C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000D164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D18BC();
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v30 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v30 - v15;
  if (qword_100122040 != -1)
  {
    v29 = v14;
    result = swift_once();
    v14 = v29;
  }

  v17 = qword_10013C1B8;
  v18 = *(qword_10013C1B8 + 16);
  if (!v18)
  {
    v22 = 0;
    v24 = 0;
LABEL_8:
    v28 = 0;
    goto LABEL_9;
  }

  v31 = v14;

  v19 = sub_10002511C();
  if ((v20 & 1) == 0)
  {

    v22 = 0;
    v24 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  (*(v3 + 16))(v5, *(v17 + 56) + *(v3 + 72) * v19, v2);

  sub_1000D160C();
  (*(v3 + 8))(v5, v2);
  v21 = v31;
  (*(v31 + 32))(v16, v12, v6);
  (*(v21 + 16))(v9, v16, v6);
  v22 = sub_1000D25FC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = (*(v21 + 8))(v16, v6);
  v18 = v26 & 1;
LABEL_9:
  *a1 = v22;
  a1[1] = v24;
  a1[2] = v18;
  a1[3] = v28;
  return result;
}

uint64_t sub_10009035C()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8, &qword_1000E0320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0, &unk_1000DFA00);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_1001268A8, &qword_1000EA7F0);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_10008EC24();
  v22 = sub_1000D157C();
  sub_100006334(&qword_1001268B0, &qword_1000EA7F8);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_10004894C();
  sub_1000D156C();
  return v22;
}

uint64_t sub_100090760()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsDownloadWifiQualityEntity;
  sub_100006334(&qword_100122D68, &unk_1000E9370);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100126730, qword_1000EA0B0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100126898, &qword_1001268A0, &unk_1000EA7E0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10004894C();
  sub_1000D178C();
  return v7;
}

double sub_100090A50@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 16);

  return result;
}

unint64_t sub_100090A88(uint64_t a1)
{
  result = sub_100090AB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100090AB0()
{
  result = qword_100126900;
  if (!qword_100126900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126900);
  }

  return result;
}

unint64_t sub_100090B04()
{
  result = qword_100126908;
  if (!qword_100126908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126908);
  }

  return result;
}