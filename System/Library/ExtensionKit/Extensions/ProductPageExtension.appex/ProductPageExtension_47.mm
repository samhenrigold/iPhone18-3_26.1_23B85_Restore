double sub_10054BA7C(double a1)
{
  v3 = [v1 subviews];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v4 = sub_1007701BC();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 setAlpha:a1];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

void sub_10054BBB8(uint64_t a1)
{
  v2 = qword_10095D018;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 32);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v7 = *v6;
      v6 += 2;
      v8 = v7;
      sub_10054BA7C(1.0);

      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    [*(a1 + qword_10095D020) setAlpha:1.0];
    v9 = *(a1 + qword_10095D010);
    v10[0] = 0x3FF0000000000000;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0x3FF0000000000000;
    v10[4] = 0;
    v10[5] = 0;
    [v9 setTransform:v10];
  }
}

void sub_10054BCAC(char *a1)
{
  v1 = *&a1[qword_10095D028];
  v3 = a1;

  v1(v2);
}

void sub_10054BD14(uint64_t a1, double a2, double a3)
{
  v7 = qword_10095D018;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *(v8 + 16);

  v10 = 0;
  v11 = 32;
  while (1)
  {
    if (v9 == v10)
    {
LABEL_5:

      return;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    ++v10;
    v12 = *(v8 + v11);
    [v12 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v13 = [v12 pointInside:a1 withEvent:?];

    v11 += 16;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_10054BE2C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = qword_10095D030;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  sub_10077149C();
LABEL_5:
  swift_endAccess();
  v9 = sub_10076B9FC();
  if (!v9)
  {
LABEL_10:

    return;
  }

  v10 = v9;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_10;
  }

  v12 = Strong;
  v13 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {

    sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
  }

  else
  {
    sub_100263BF0(v10, 1, v12, v6);

    (*(v14 + 8))(v6, v13);
  }
}

void sub_10054C05C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*(v2 + qword_10095D048) == 1)
  {
    v6 = qword_10095D050;
    v7 = *(v2 + qword_10095D050);
    if (!v7 || [v7 phase] == 3 || (v8 = *(v2 + v6)) != 0 && objc_msgSend(v8, "phase") == 4)
    {
      v9 = sub_1005EBD8C(a1);
      if (v9)
      {
        v10 = v9;
        [v9 locationInView:v2];
        sub_10054BD14(a2, v11, v12);
        v13 = v2 + qword_10095D058;
        *v13 = v14;
        *(v13 + 8) = v15 & 1;
        v16 = *(v2 + v6);
        *(v2 + v6) = v10;

        sub_100016F40(0, &qword_10094F760, UITouch_ptr);
        sub_10027D9C8();
        v17.super.isa = sub_10077038C().super.isa;
        objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v17.super.isa, a2, v18.receiver, v18.super_class, v2, ObjectType, v20.receiver, v20.super_class, v21.receiver, v21.super_class);
      }

      else
      {
        sub_100016F40(0, &qword_10094F760, UITouch_ptr);
        sub_10027D9C8();
        v17.super.isa = sub_10077038C().super.isa;
        objc_msgSendSuper2(&v20, "touchesBegan:withEvent:", v17.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class, v2, ObjectType, v21.receiver, v21.super_class);
      }
    }

    else
    {
      sub_100016F40(0, &qword_10094F760, UITouch_ptr);
      sub_10027D9C8();
      v17.super.isa = sub_10077038C().super.isa;
      objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v17.super.isa, a2, v2, ObjectType, v19.receiver, v19.super_class, v20.receiver, v20.super_class, v21.receiver, v21.super_class);
    }
  }

  else
  {
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v17.super.isa = sub_10077038C().super.isa;
    objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v17.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class, v20.receiver, v20.super_class, v2, ObjectType);
  }
}

void sub_10054C280(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*(v2 + qword_10095D048) != 1)
  {
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v11.super.isa = sub_10077038C().super.isa;
    objc_msgSendSuper2(&v14, "touchesEnded:withEvent:", v11.super.isa, a2, v12.receiver, v12.super_class, v13.receiver, v13.super_class, v2, ObjectType);
    goto LABEL_11;
  }

  v6 = qword_10095D050;
  v7 = *(v2 + qword_10095D050);
  if (!v7)
  {
LABEL_10:
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v11.super.isa = sub_10077038C().super.isa;
    objc_msgSendSuper2(&v13, "touchesEnded:withEvent:", v11.super.isa, a2, v12.receiver, v12.super_class, v2, ObjectType, v14.receiver, v14.super_class);
    goto LABEL_11;
  }

  v8 = v7;
  if ((sub_1006937A4(v8, a1) & 1) == 0)
  {

    goto LABEL_10;
  }

  v9 = *(v2 + v6);
  *(v2 + v6) = 0;

  v10 = v2 + qword_10095D058;
  if ((*(v2 + qword_10095D058 + 8) & 1) == 0 && (*(v2 + qword_1009A07C0) & 1) == 0)
  {
    sub_10054BE2C(*v10);
  }

  *v10 = 0;
  *(v10 + 8) = 1;
  sub_100016F40(0, &qword_10094F760, UITouch_ptr);
  sub_10027D9C8();
  v11.super.isa = sub_10077038C().super.isa;
  objc_msgSendSuper2(&v12, "touchesEnded:withEvent:", v11.super.isa, a2, v2, ObjectType, v13.receiver, v13.super_class, v14.receiver, v14.super_class);
LABEL_11:
}

double sub_10054C448(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100016F40(0, &qword_10094F760, UITouch_ptr);
  sub_10027D9C8();
  v8 = sub_10077039C();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void sub_10054C4F8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*(v2 + qword_10095D048) == 1)
  {
    v5 = *(v2 + qword_10095D050);
    *(v2 + qword_10095D050) = 0;

    v6 = v2 + qword_10095D058;
    *v6 = 0;
    *(v6 + 8) = 1;
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v7.super.isa = sub_10077038C().super.isa;
    objc_msgSendSuper2(&v8, "touchesCancelled:withEvent:", v7.super.isa, a2, v2, ObjectType, v9.receiver, v9.super_class);
  }

  else
  {
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v7.super.isa = sub_10077038C().super.isa;
    objc_msgSendSuper2(&v9, "touchesCancelled:withEvent:", v7.super.isa, a2, v8.receiver, v8.super_class, v2, ObjectType);
  }
}

unint64_t sub_10054C650()
{
  result = qword_10095D0B0;
  if (!qword_10095D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D0B0);
  }

  return result;
}

uint64_t sub_10054C6A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100959B68, &qword_1007AAD30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10054C714(void *a1, char a2, void *a3)
{
  v7 = sub_10076B96C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100959B68, &qword_1007AAD30);
  __chkstk_darwin(v11);
  v15 = v53 - v14;
  v58 = a1[2];
  if (!v58)
  {
    goto LABEL_22;
  }

  v53[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v57 = *(v13 + 72);
  v59 = a1;
  sub_100016E2C(a1 + v17, v53 - v14, &qword_100959B68, &qword_1007AAD30);
  v54 = v8;
  v60 = *(v8 + 32);
  v61 = v7;
  v60(v10, v15, v7);
  v56 = v16;
  v18 = v15[v16];
  v19 = *a3;
  v20 = sub_1006101C8(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_100247230(v25, a2 & 1);
    v20 = sub_1006101C8(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_1007716DC();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v29 = v18;
  v30 = v20;
  sub_10024C16C();
  v20 = v30;
  v18 = v29;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v64 = v28;
    swift_errorRetain();
    sub_10000A5D4(&qword_10095E8E0, &unk_1007AAD40);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v54 + 8))(v10, v61);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = v18;
  v32 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v33 = v32[6];
  v55 = *(v54 + 72);
  v34 = v20;
  v60((v33 + v55 * v20), v10, v61);
  *(v32[7] + v34) = v31;
  v35 = v32[2];
  v24 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (!v24)
  {
    v32[2] = v36;
    v37 = v59;
    if (v58 == 1)
    {
LABEL_22:

      return;
    }

    v38 = v59 + v57 + v17;
    v39 = 1;
    while (v39 < v37[2])
    {
      sub_100016E2C(v38, v15, &qword_100959B68, &qword_1007AAD30);
      v60(v10, v15, v61);
      v40 = v15[v56];
      v41 = *a3;
      v42 = sub_1006101C8(v10);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v24 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v24)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        sub_100247230(v46, 1);
        v42 = sub_1006101C8(v10);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v50 = v42;
      v60((v49[6] + v55 * v42), v10, v61);
      *(v49[7] + v50) = v40;
      v51 = v49[2];
      v24 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v39;
      v49[2] = v52;
      v38 += v57;
      v37 = v59;
      if (v58 == v39)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_10077145C(30);
  v65._object = 0x80000001007ED0F0;
  v65._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1007700CC(v65);
  sub_10077151C();
  v66._countAndFlagsBits = 39;
  v66._object = 0xE100000000000000;
  sub_1007700CC(v66);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10054CC60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10054CC98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10054CCD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10054CD18()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10054CD84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10054CDCC(uint64_t a1)
{
  v2 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10054CE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10054CE8C()
{
  v1 = (type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_10076B2DC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10054CF7C()
{
  v1 = *(type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_10054B5F4(v2, v3);
}

double sub_10054CFE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10054CFF8()
{
  v1 = sub_10076B2DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10054D08C(void *a1)
{
  v3 = *(sub_10076B2DC() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100549164(a1, v4);
}

uint64_t sub_10054D128()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10054D170()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10054D1B0()
{
  result = qword_10095D0D8;
  if (!qword_10095D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D0D8);
  }

  return result;
}

double sub_10054D204(uint64_t a1, void *a2)
{
  v4 = sub_10076443C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v10 = &v23[-v9 - 8];
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  if (qword_100941430 != -1)
  {
    swift_once();
  }

  if (sub_10077071C())
  {
    v11 = &xmmword_1009A2E90;
  }

  else
  {
    v11 = &xmmword_1009A2D20;
  }

  sub_10015E5E0(v11, v23);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v12 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v12 = qword_100944CA0;
  }

  bottom = UIEdgeInsetsZero.bottom;
  v14 = sub_10000A61C(v4, v12);
  (*(v5 + 16))(v7, v14, v4);
  (*(v5 + 32))(v10, v7, v4);
  if ((v26 & 1) == 0 && v24 == 0.0 && v25 == 0.0)
  {
    sub_1007643EC();
    v16 = v15;
    sub_1007643EC();
    v24 = v16;
    v25 = v17;
    v26 = 0;
  }

  v18 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v23, a2, 0.0);
  v20 = v19;
  (*(v5 + 8))(v10, v4, v18);
  sub_10015E58C(v23);
  return (ceil(bottom + UIEdgeInsetsZero.top + v20) + 8.0 + 8.0) * a1 + 12.0 + 12.0;
}

void sub_10054D4FC()
{
  v1 = qword_10095D000;
  v2 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  v3 = sub_10076B2DC();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = v0 + qword_1009A07B8;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = qword_10095D008;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v6 = qword_10095D010;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  *(v0 + qword_10095D018) = _swiftEmptyArrayStorage;
  v7 = qword_10095D020;
  *(v0 + v7) = [objc_opt_self() buttonWithType:0];
  v8 = (v0 + qword_10095D028);
  *v8 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v8[1] = 0;
  *(v0 + qword_10095D030) = _swiftEmptyArrayStorage;
  swift_weakInit();
  *(v0 + qword_10095D040) = _swiftEmptyArrayStorage;
  *(v0 + qword_10095D048) = 0;
  *(v0 + qword_10095D050) = 0;
  *(v0 + qword_1009A07C0) = 0;
  v9 = v0 + qword_10095D058;
  *v9 = 0;
  *(v9 + 8) = 1;
  sub_10077156C();
  __break(1u);
}

double sub_10054D6D8(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a2;
  v28 = a3;
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v26 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_10095D030;
  swift_beginAccess();
  v32 = a1;
  v11 = *(a1 + v10);
  if (v11 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v13 = qword_10095D018;

    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v14 = 0;
    v30 = v11 & 0xFFFFFFFFFFFFFF8;
    v31 = v11 & 0xC000000000000001;
    v29 = (v8 + 48);
    v23 = (v8 + 8);
    v24 = (v8 + 32);
    v15 = 32;
    v25 = v13;
    while (1)
    {
      if (v31)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v14 >= *(v30 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v11 + 8 * v14 + 32);
      }

      v16 = *(v32 + v13);
      if (v14 >= *(v16 + 16))
      {
        break;
      }

      v17 = *(v16 + v15);
      sub_10076BACC();
      if ((*v29)(v6, 1, v7) == 1)
      {

        sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
      }

      else
      {
        v18 = v7;
        v19 = v26;
        (*v24)(v26, v6, v18);
        v20 = v17;
        [v20 bounds];
        [v28 convertRect:v20 fromCoordinateSpace:?];
        sub_1007660EC();

        v21 = v19;
        v7 = v18;
        v13 = v25;
        (*v23)(v21, v7);
      }

      ++v14;

      v15 += 16;
      if (i == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return result;
}

uint64_t sub_10054DA24(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10076B2DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10054DAE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10076B2DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10054DB88(uint64_t a1)
{
  result = sub_10076B90C();
  if (v2 <= 0x3F)
  {
    result = sub_10076B2DC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_10054DC1C()
{
  v0[OBJC_IVAR____TtC20ProductPageExtension11ChevronView_shouldAnimate] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension11ChevronView_isAnimating] = 0;
  v1 = OBJC_IVAR____TtC20ProductPageExtension11ChevronView_chevronImageView;
  v2 = sub_1005A5DB8(0xD000000000000013, 0x80000001007D7B10, 0);
  v3 = [v2 imageWithRenderingMode:2];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  *&v0[v1] = v4;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ChevronView();
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10054DF9C();

  return v5;
}

id sub_10054DD38(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC20ProductPageExtension11ChevronView_shouldAnimate] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension11ChevronView_isAnimating] = 0;
  v9 = OBJC_IVAR____TtC20ProductPageExtension11ChevronView_chevronImageView;
  v10 = sub_1005A5DB8(0xD000000000000013, 0x80000001007D7B10, 0);
  v11 = [v10 imageWithRenderingMode:2];

  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];
  *&v4[v9] = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ChevronView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_10054DF9C();

  return v13;
}

id sub_10054DE74(void *a1)
{
  v1[OBJC_IVAR____TtC20ProductPageExtension11ChevronView_shouldAnimate] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension11ChevronView_isAnimating] = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension11ChevronView_chevronImageView;
  v4 = sub_1005A5DB8(0xD000000000000013, 0x80000001007D7B10, 0);
  v5 = [v4 imageWithRenderingMode:2];

  v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
  *&v1[v3] = v6;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ChevronView();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_10054DF9C();
  }

  return v8;
}

id sub_10054DF9C()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension11ChevronView_chevronImageView];
  if (qword_10093FFE0 != -1)
  {
    swift_once();
  }

  [v1 setTintColor:qword_10099EB08];
  v2 = [v1 layer];
  v3 = [v0 traitCollection];
  [v3 userInterfaceStyle];

  sub_10076FF9C();
  v4 = sub_10076FF6C();

  [v2 setCompositingFilter:v4];

  [v1 setContentMode:1];
  [v1 setAlpha:0.0];
  [v0 addSubview:v1];
  [v1 frame];

  return [v0 setFrame:{0.0, 0.0}];
}

void sub_10054E180()
{
  v1 = sub_1007604DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &aBlock - v7;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension11ChevronView_shouldAnimate) == 1)
  {
    v9 = OBJC_IVAR____TtC20ProductPageExtension11ChevronView_isAnimating;
    if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension11ChevronView_isAnimating) & 1) == 0)
    {
      v10 = [v0 window];
      if (v10)
      {

        *(v0 + v9) = 1;
        sub_10076049C();
        v11 = v0;
        sub_1007604BC();
        v13 = v12;
        v15 = v14;
        v16 = *(v2 + 8);
        v16(v8, v1);
        sub_10076049C();
        sub_1007604CC();
        v18 = v17;
        v20 = v19;
        v16(v4, v1);
        v21 = swift_allocObject();
        *(v21 + 16) = v0;
        v22 = objc_allocWithZone(UIViewPropertyAnimator);
        v48 = sub_10054EBE4;
        v49 = v21;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_10009AEDC;
        v47 = &unk_100899660;
        v23 = _Block_copy(&aBlock);
        v24 = v11;

        v25 = [v22 initWithDuration:v23 controlPoint1:1.06 controlPoint2:v13 animations:{v15, v18, v20}];
        _Block_release(v23);
        sub_1007604AC();
        sub_1007604BC();
        v27 = v26;
        v29 = v28;
        v16(v8, v1);
        sub_1007604AC();
        sub_1007604CC();
        v31 = v30;
        v33 = v32;
        v16(v4, v1);
        v34 = swift_allocObject();
        *(v34 + 16) = v24;
        v35 = objc_allocWithZone(UIViewPropertyAnimator);
        v48 = sub_10054EC20;
        v49 = v34;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_10009AEDC;
        v47 = &unk_1008996B0;
        v36 = _Block_copy(&aBlock);
        v37 = v24;

        v38 = [v35 initWithDuration:v36 controlPoint1:0.66 controlPoint2:v27 animations:{v29, v31, v33}];
        _Block_release(v36);
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        v48 = sub_10054EC44;
        v49 = v39;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_10017722C;
        v47 = &unk_100899700;
        v40 = _Block_copy(&aBlock);
        v41 = v38;

        [v25 addCompletion:v40];
        _Block_release(v40);
        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v48 = sub_10054EC8C;
        v49 = v42;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_10017722C;
        v47 = &unk_100899750;
        v43 = _Block_copy(&aBlock);

        [v41 addCompletion:v43];
        _Block_release(v43);
        [v25 startAnimation];
      }
    }
  }
}

id sub_10054E674(uint64_t a1, CGFloat a2, double a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension11ChevronView_chevronImageView);
  CGAffineTransformMakeTranslation(&v6, 0.0, a2);
  [v4 setTransform:&v6];
  return [v4 setAlpha:a3];
}

uint64_t sub_10054E6F8(uint64_t a1, uint64_t a2)
{
  v23 = sub_10076F08C();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F0EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension11ChevronView_chevronImageView);

    aBlock = 0x3FF0000000000000;
    v28 = 0;
    v29 = 0;
    v30 = 0x3FF0000000000000;
    v31 = 0;
    v32 = 0;
    [v17 setTransform:&aBlock];
  }

  sub_100085204();
  v18 = sub_10077068C();
  sub_10076F0DC();
  sub_10076F15C();
  v22 = *(v9 + 8);
  v22(v11, v8);
  v31 = sub_10054EC94;
  v32 = a2;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10009AEDC;
  v30 = &unk_100899778;
  v19 = _Block_copy(&aBlock);

  sub_10076F0AC();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  v20 = v23;
  sub_1007712CC();
  sub_10077064C();
  _Block_release(v19);

  (*(v26 + 8))(v4, v20);
  (*(v24 + 8))(v7, v25);
  return (v22)(v14, v8);
}

void sub_10054EAC0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC20ProductPageExtension11ChevronView_isAnimating] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_10054E180();
  }
}

id sub_10054EB44(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ChevronView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10054EBAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10054EC08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10054EC54()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10054ECC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_10054ECFC(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_10054ED54;
}

void sub_10054ED54(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1003C6E9C(v2);
  }

  else
  {
    sub_1003C6E9C(*a1);
  }
}

uint64_t sub_10054EDEC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10054EFC0(&qword_100955BD8, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007AAE10);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_10054EEA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_10054EFC0(&qword_100955BD8, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007AAE10);

  return a3(ObjectType, v4);
}

uint64_t sub_10054EFC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10054F008@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_10054F064(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10054F130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10054FF04(&qword_100950CC0, type metadata accessor for PlaceholderCollectionViewCell, &unk_1007AAEC0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10054F1C8(uint64_t a1)
{
  v3 = sub_10076B6EC();
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin(v3);
  v81 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v75 - v6;
  v7 = sub_10076469C();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v9 - 8);
  v11 = &v75 - v10;
  v12 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v75 - v14;
  v16 = sub_10076B5BC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v77 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v75 - v20;
  __chkstk_darwin(v22);
  v85 = &v75 - v23;
  sub_1007600FC();
  sub_10054FF04(&qword_10095D1D0, &type metadata accessor for Placeholder, &protocol conformance descriptor for Placeholder);
  sub_10076332C();
  result = v86;
  if (!v86)
  {
    return result;
  }

  v76 = v1;

  swift_getKeyPath();
  v75 = a1;
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v13 + 8))(v15, v12);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    return sub_10041B638(v11);
  }

  v25 = v85;
  (*(v17 + 32))(v85, v11, v16);
  v26 = *(v17 + 16);
  v26(v21, v25, v16);
  v27 = (*(v17 + 88))(v21, v16);
  if (v27 == enum case for Shelf.ContentType.smallLockup(_:) || v27 == enum case for Shelf.ContentType.mediumLockup(_:) || v27 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    v33 = *&v76[OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_placeholderView];
    type metadata accessor for LockupPlaceholderView(0);
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = v34;
      v36 = v33;
    }

    else
    {
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v40 = v77;
    v26(v77, v25, v16);
    v41 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_contentType;
    swift_beginAccess();
    (*(v17 + 24))(&v35[v41], v40, v16);
    swift_endAccess();
    v28 = v35;
    [v28 setNeedsLayout];
    (*(v17 + 8))(v40, v16);
    v42 = v78;
    sub_1007632FC();
    v43 = v82;
    sub_10076465C();
    (*(v79 + 8))(v42, v80);
    v44 = v81;
    sub_10076B69C();
    sub_10054FF04(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v45 = v84;
    v46 = sub_10077124C();
    v47 = *(v83 + 8);
    v47(v44, v45);
    v47(v43, v45);
    v28[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder] = v46 & 1;
    [v28 setNeedsLayout];

    v32 = v76;
    goto LABEL_17;
  }

  if (v27 != enum case for Shelf.ContentType.videoCard(_:))
  {
    if (v27 == enum case for Shelf.ContentType.brick(_:))
    {
      v32 = v76;
      v37 = *&v76[OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_placeholderView];
      type metadata accessor for BrickPlaceholderView();
      v38 = swift_dynamicCastClass();
      if (v38)
      {
        v28 = v38;
        v39 = v37;
      }

      else
      {
        v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      }

      v58 = v78;
      sub_1007632FC();
      v59 = v82;
      sub_10076465C();
      (*(v79 + 8))(v58, v80);
      v60 = v81;
      sub_10076B6AC();
      sub_10054FF04(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      v61 = v84;
      v62 = sub_10077124C();
      v63 = *(v83 + 8);
      v63(v60, v61);
      v63(v59, v61);
      v28[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] = v62 & 1;
      [v28 setNeedsLayout];
      goto LABEL_17;
    }

    if (v27 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
      goto LABEL_24;
    }

    if (v27 == enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      type metadata accessor for TodayCardPlaceholderView();
    }

    else
    {
      if (v27 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v27 == enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        type metadata accessor for MixedMediaLockupPlaceholderView(0);
        v64 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v65 = v77;
        v26(v77, v25, v16);
        v66 = OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_contentType;
        swift_beginAccess();
        (*(v17 + 24))(&v64[v66], v65, v16);
        swift_endAccess();
        v28 = v64;
        [v28 setNeedsLayout];
        (*(v17 + 8))(v65, v16);
        v67 = v78;
        sub_1007632FC();
        v68 = v82;
        sub_10076465C();
        (*(v79 + 8))(v67, v80);
        v69 = v81;
        sub_10076B6AC();
        sub_10054FF04(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
        v70 = v84;
        LOBYTE(v66) = sub_10077124C();
        v71 = *(v83 + 8);
        v71(v69, v70);
        v71(v68, v70);
        v28[OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] = v66 & 1;
        [v28 setNeedsLayout];

        goto LABEL_9;
      }

      if (v27 != enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        v32 = v76;
        if (v27 == enum case for Shelf.ContentType.posterLockup(_:))
        {
          v28 = [objc_allocWithZone(UIView) init];
          v72 = [objc_opt_self() secondarySystemBackgroundColor];
          [v28 setBackgroundColor:v72];

          v73 = [v28 layer];
          [v73 setCornerRadius:20.0];

          v74 = [v28 layer];
          [v74 setCornerCurve:kCACornerCurveContinuous];

          goto LABEL_17;
        }

        if (v27 == enum case for Shelf.ContentType.appPromotion(_:))
        {
          type metadata accessor for AppEventPlaceholderView();
          goto LABEL_35;
        }

        if (v27 != enum case for Shelf.ContentType.tagBrick(_:))
        {
          (*(v17 + 8))(v21, v16);
          v28 = 0;
          v32 = v76;
          goto LABEL_18;
        }

LABEL_24:
        v32 = v76;
        v55 = *&v76[OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_placeholderView];
        type metadata accessor for CategoryBrickPlaceholderView();
        v56 = swift_dynamicCastClass();
        if (v56)
        {
          v28 = v56;
          v57 = v55;
          goto LABEL_17;
        }

LABEL_35:
        v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        goto LABEL_17;
      }

      type metadata accessor for TodayBrickPlaceholderView(0);
    }

    v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    goto LABEL_9;
  }

  v28 = [objc_allocWithZone(UIView) init];
  v29 = [objc_opt_self() secondarySystemBackgroundColor];
  [v28 setBackgroundColor:v29];

  v30 = [v28 layer];
  [v30 setCornerRadius:20.0];

  v31 = [v28 layer];
  [v31 setCornerCurve:kCACornerCurveContinuous];

LABEL_9:
  v32 = v76;
LABEL_17:
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
LABEL_18:
  v48 = OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_placeholderView;
  [*&v32[OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_placeholderView] removeFromSuperview];
  if (v28)
  {
    v49 = v28;
    v50 = [v32 contentView];
    [v50 addSubview:v49];

    v51 = *&v32[v48];
    *&v32[v48] = v49;
    v52 = v49;

    [v32 setNeedsLayout];
  }

  else
  {
    v53 = [objc_allocWithZone(UIView) init];
    v54 = *&v32[v48];
    *&v32[v48] = v53;
  }

  return (*(v17 + 8))(v85, v16);
}

uint64_t sub_10054FF04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10054FF4C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v7 = sub_10076D58C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10076D55C();
  sub_10076D56C();
  sub_10000A570(v6 + 88, v12);
  v13[3] = sub_10076E04C();
  v13[4] = &protocol witness table for Margins;
  sub_10000DB7C(v13);
  sub_10076E02C();
  sub_10076D56C();
  sub_10000CD74(v13);
  sub_10076E0EC();
  return (*(v8 + 8))(v10, v7);
}

void sub_100550120(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView);
  if (v4)
  {
    v5 = v4;
    sub_10076C66C();
  }

  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v6)
  {
    v7 = v6[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
    v6[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = a1 & 1;
    if (v7 != (a1 & 1))
    {
      v8 = v6;
      sub_1007214A0();
    }
  }
}

char *sub_1005501E0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_todayCard] = 0;
  v11 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView;
  *&v5[v11] = [objc_allocWithZone(_s20ProductPageExtension10HeaderViewCMa_0()) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer;
  type metadata accessor for TodayListCardLockupContainer();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView] = 0;
  v13 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_cardStyle;
  v14 = sub_10076C7EC();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v5[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton] = 0;
  v43[0] = sub_1000082CC;
  v43[1] = 0;
  v43[2] = sub_100733020;
  v43[3] = 0;
  v43[4] = sub_1007331DC;
  v43[5] = 0;
  v43[6] = sub_100733208;
  v43[7] = 0;
  v43[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v43[9] = 0;
  v43[10] = sub_10073304C;
  v43[11] = 0;
  v44 = 0x4000000000000000uLL;
  *v45 = 0;
  *&v45[8] = 0x4018000000000000;
  *&v45[16] = 0;
  v45[24] = 1;
  v15 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView] = sub_1001ED0D8(v43, &v44);
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupBlending:0];

  v18 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer;
  v19 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v20 = v16[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v21 = *&v16[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer];

  v22 = v21[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded];
  v21[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded] = v20;
  if (v20 != v22)
  {
    [v21 setNeedsLayout];
  }

  v23 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView;
  if (*(*(*&v16[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) == 1)
  {
    if (v16[v19])
    {
      v24 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v24 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v25 = v16[*v24] == 4;
  }

  else
  {
    v25 = 0;
  }

  [*&v16[v18] setHidden:v25];
  v26 = [*&v16[v18] layer];
  [v26 setZPosition:0.0];

  v27 = v16;
  v28 = [v27 contentView];
  [v28 addSubview:*&v16[v18]];

  v29 = [v27 backgroundView];
  if (v29)
  {
    v30 = v29;
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v31 = sub_100770D8C();
    [v30 setBackgroundColor:v31];
  }

  sub_10055074C();
  v32 = [v27 contentView];
  [v32 addSubview:*&v16[v23]];

  v33 = [v27 contentView];
  v34 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView;
  [v33 addSubview:*&v27[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView]];

  v35 = *&v27[v34];
  sub_100550978();
  v36 = &v35[qword_10094D6A0];
  *(v36 + 25) = *&v45[9];
  v37 = *v45;
  *v36 = v44;
  *(v36 + 1) = v37;
  [v35 setNeedsLayout];

  v38 = [v27 contentView];
  [v38 setClipsToBounds:1];

  sub_100550A3C();
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100783DD0;
  *(v39 + 32) = sub_10076E88C();
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v41[3] = ObjectType;
  v41[0] = v27;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v41);
  return v27;
}

uint64_t sub_10055074C()
{
  v1 = sub_10075FEEC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v7 = 0;
  }

  else
  {
    v8 = v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
    if (*(*(*&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) == 1 && v8 == 4)
    {
      v7 = -1;
    }

    else if (v8 == 6)
    {
      v10 = [v0 traitCollection];
      v11 = sub_10077070C();

      if (v11)
      {
        v7 = 10;
      }

      else
      {
        v7 = 5;
      }

      v6 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView;
    }

    else
    {
      v7 = 3;
    }
  }

  v12 = *&v0[v6];
  (*(v2 + 104))(v5, enum case for CornerStyle.continuous(_:), v1, v3);
  sub_10027608C(v5, v7, 20.0);
  if ((v7 & 0xC) != 0)
  {
    [v12 _setContinuousCornerRadius:20.0];
  }

  v13 = [v12 layer];
  [v13 setMaskedCorners:sub_1007704FC()];

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_100550978()
{
  if (*(*(*&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) == 1)
  {
    if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v1] == 6)
    {
      v2 = 1;
    }

    else
    {
      v3 = [v0 traitCollection];
      v4 = sub_10077071C();

      v2 = v4 ^ 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_100550A3C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10094A450, &unk_1007AB170);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10076C7EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  v15 = sub_100550978();
  v28 = v14;
  [v14 setHidden:(v15 & 1) == 0];
  v16 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_100016E2C(&v1[v16], v4, &qword_10094A450, &unk_1007AB170);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CFBC(v4, &qword_10094A450, &unk_1007AB170);
  }

  else
  {
    (*(v6 + 32))(v13, v4, v5);
    if ((sub_100550978() & 1) != 0 && v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_isMediaDark] == 1)
    {
      (*(v6 + 104))(v10, enum case for TodayCard.Style.dark(_:), v5);
    }

    else
    {
      (*(v6 + 16))(v10, v13, v5);
    }

    v17 = v27;
    v18 = sub_100550978();
    sub_1001EE35C(v10, v18 & 1);
    if ((sub_100550978() & 1) != 0 && (v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_isMediaDark] & 1) != 0 || (*(*&v28[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) & 1) == 0 && (!v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] ? (v19 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) : (v19 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory), v1[*v19] == 6))
    {
      (*(v6 + 104))(v17, enum case for TodayCard.Style.dark(_:), v5);
    }

    else
    {
      (*(v6 + 16))(v17, v13, v5);
    }

    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
    if (v20)
    {
      v21 = v20;
      if (sub_100550978())
      {
        v22 = 1;
      }

      else if (*(*&v28[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia))
      {
        v22 = 0;
      }

      else
      {
        if (v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
        {
          v23 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v23 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v22 = v1[*v23] == 6;
      }

      sub_1001EE35C(v17, v22);
    }

    v24 = *(v6 + 8);
    v24(v17, v5);
    v24(v10, v5);
    v24(v13, v5);
  }

  sub_10055074C();
  return [v1 setNeedsLayout];
}

void sub_100550EBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView);
  if (v1)
  {
    v2 = v1;
    sub_10076C66C();
  }

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled);
    v5 = v3[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
    v3[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = v4;
    if (v4 != v5)
    {
      v6 = v3;
      sub_1007214A0();
    }
  }
}

void sub_100550FA4(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v6, &unk_1009434A0, &unk_100787B90);
  swift_endAccess();
  v7 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  sub_100016E2C(v1 + v6, v5, &unk_1009434A0, &unk_100787B90);
  v8 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v9 = v7;
  sub_10003837C(v5, v7 + v8, &unk_1009434A0, &unk_100787B90);
  swift_endAccess();
}

void sub_1005510E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView] + qword_10094D6F0) = v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning];
  sub_1001EE26C();
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
  if (v3)
  {
    *(v3 + qword_10094D6F0) = v1[v2];
    sub_1001EE26C();
  }

  v4 = *(*&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  v5 = v1[v2];
  v4[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isTransitioning] = v5;
  *(*&v4[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView] + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning) = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *((swift_isaMask & *Strong) + 0xC8);
    v8 = Strong;
    v9 = v4;
    v7(v5);
  }

  v10 = [v1 contentView];
  [v10 setClipsToBounds:(v1[v2] & 1) == 0];
}

uint64_t sub_10055127C()
{
  if (*(*(*&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) != 1)
  {
    return 1;
  }

  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v1] == 6)
  {
    return 0;
  }

  v3 = [v0 traitCollection];
  v4 = sub_10077071C();

  return v4 & 1;
}

void sub_1005513D0(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setDragging:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isDragging) = objc_msgSendSuper2(&v8, "isDragging");
  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v5)
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v6 = v5;
    v6[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isDragging] = objc_msgSendSuper2(&v7, "isDragging");
  }
}

uint64_t sub_10055152C(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10075FEEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "_setContinuousCornerRadius:", a1);
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "_continuousCornerRadius");
  v10 = v9;
  (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
  sub_10027608C(v7, 3, v10);
  v11 = [v8 layer];
  [v11 setMaskedCorners:sub_1007704FC()];

  return (*(v5 + 8))(v7, v4);
}

void *sub_1005516C4()
{
  result = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_1005516FC(char a1)
{
  if (a1)
  {

    sub_10055177C();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_10055177C()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_10014CF98(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton] = v7;
  if (v4)
  {
    v5 = v7;
    [v4 removeFromSuperview];
  }

  else
  {
    v6 = v7;
  }

  [v1 setNeedsLayout];
}

uint64_t sub_100551884(void *a1)
{
  if (a1)
  {
    v3 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
    v4 = *&v3[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v8 = v4;
      v9 = sub_100770EEC();

      v5 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void (*sub_100551994(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100551A14;
}

void sub_100551A14(uint64_t a1, char a2)
{
  v3 = *a1;
  v10 = *(*(a1 + 8) + *(a1 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3;
    v6 = v10;
    sub_10056A2D0(Strong, v7);

    Strong = v5;
  }

  else
  {
    v8 = v10;
    sub_10056A2D0(Strong, v9);
  }
}

void sub_100551AE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D65C();
  v82 = *(v3 - 8);
  v83 = v3;
  __chkstk_darwin(v3);
  v81 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076D58C();
  v79 = *(v5 - 8);
  v80 = v5;
  __chkstk_darwin(v5);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v8 - 8);
  v10 = &v79 - v9;
  v11 = sub_10076C38C();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87.receiver = v1;
  v87.super_class = ObjectType;
  objc_msgSendSuper2(&v87, "layoutSubviews", v13);
  v16 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_100016E2C(&v1[v16], v10, &unk_1009434A0, &unk_100787B90);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v10, v11);
    if (v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v17 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v17 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v18 = v1[*v17];
    switch(v18)
    {
      case 7:
        sub_100553088(v15, v86);
        v34 = [v1 contentView];
        [v34 bounds];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;

        v43 = [v1 traitCollection];
        v44 = v81;
        sub_1006A93FC(v43, v36, v38, v40, v42);
        v45 = v83;
        sub_10076E0EC();

        (*(v82 + 8))(v44, v45);
        sub_10055F8AC(v86);
        (*(v12 + 8))(v15, v11);
        goto LABEL_17;
      case 6:
        sub_100552BF4(v15, v85);
        if (v85[13])
        {
          memcpy(v86, v85, sizeof(v86));
          v24 = [v1 contentView];
          [v24 bounds];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v33 = [v1 traitCollection];
          sub_100739AF8(v33, v26, v28, v30, v32);

          sub_10055F900(v86);
LABEL_16:
          (*(v12 + 8))(v15, v11);
          goto LABEL_17;
        }

        sub_10000CFBC(v85, &qword_10095D2D0, qword_1007AB1F8);
        sub_100553088(v15, v86);
        v58 = [v1 contentView];
        [v58 bounds];
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v66 = v65;

        v67 = [v1 traitCollection];
        v68 = v81;
        sub_1006A93FC(v67, v60, v62, v64, v66);
        v69 = v83;
        sub_10076E0EC();

        (*(v82 + 8))(v68, v69);
        break;
      case 4:
        sub_100552528(v15, v86);
        v19 = [v1 contentView];
        [v19 bounds];

        v20 = v15;
        v21 = v11;
        v22 = [v1 traitCollection];
        sub_10076D55C();
        sub_10076D56C();
        sub_10000A570(&v86[11], &v84);
        v85[3] = sub_10076E04C();
        v85[4] = &protocol witness table for Margins;
        sub_10000DB7C(v85);
        sub_10076E02C();
        sub_10076D56C();
        sub_10000CD74(v85);
        v23 = v80;
        sub_10076E0EC();

        (*(v79 + 8))(v7, v23);
        sub_10055F954(v86);
        (*(v12 + 8))(v20, v21);
        goto LABEL_17;
      default:
        sub_100553088(v15, v86);
        v46 = [v1 contentView];
        [v46 bounds];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;

        v55 = [v1 traitCollection];
        v56 = v81;
        sub_1006A93FC(v55, v48, v50, v52, v54);
        v57 = v83;
        sub_10076E0EC();

        (*(v82 + 8))(v56, v57);
        break;
    }

    sub_10055F8AC(v86);
    goto LABEL_16;
  }

  sub_10000CFBC(v10, &unk_1009434A0, &unk_100787B90);
LABEL_17:
  if (v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4 && v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] == 1 && v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory] == 5)
  {
    v70 = objc_opt_self();
    v71 = swift_allocObject();
    *(v71 + 16) = v1;
    v72 = swift_allocObject();
    v73 = sub_10055F880;
    *(v72 + 16) = sub_10055F880;
    *(v72 + 24) = v71;
    v86[4] = sub_1000349FC;
    v86[5] = v72;
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 1107296256;
    v86[2] = sub_1001C5148;
    v86[3] = &unk_100899B50;
    v74 = _Block_copy(v86);
    v75 = v1;

    [v70 performWithoutAnimation:v74];
    _Block_release(v74);
    LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

    if ((v70 & 1) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  v76 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v76)
  {
    [v76 layoutIfNeeded];
  }

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer] layoutIfNeeded];
  v73 = 0;
  v71 = 0;
LABEL_25:
  v77 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton];
  if (v77)
  {
    v78 = v77;
    [v1 bounds];
    [v78 setFrame:{CGRectGetMaxX(v88) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  sub_1000167E0(v73, v71);
}

id sub_100552528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v59 = &v57[-v10];
  v11 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v11 - 8);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v57[-v15];
  __chkstk_darwin(v17);
  v19 = &v57[-v18];
  __chkstk_darwin(v20);
  v22 = &v57[-v21];
  v23 = a1;
  if (v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
  {
    sub_10076C25C();
    v25 = v24;
  }

  else
  {
    v25 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  }

  v26 = v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v27 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v27 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v58 = v3[*v27];
  v62 = v3;
  v63 = [v3 traitCollection];
  v61 = v7;
  v28 = *(v7 + 16);
  v29 = (v7 + 56);
  v30 = (v7 + 48);
  if (v26 == 1)
  {
    v28(v22, v23, v6);
    (*v29)(v22, 0, 1, v6);
    sub_100016E2C(v22, v19, &unk_1009434A0, &unk_100787B90);
    if ((*v30)(v19, 1, v6) == 1)
    {
      sub_10000CFBC(v19, &unk_1009434A0, &unk_100787B90);
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v34 = v63;
    }

    else
    {
      v36 = v61;
      v37 = v59;
      (*(v61 + 32))(v59, v19, v6);
      sub_10076C31C();
      sub_10076C31C();
      v34 = v63;
      [v63 layoutDirection];
      sub_1007708DC();
      left = v38;
      bottom = v39;
      right = v40;
      (*(v36 + 8))(v37, v6);
    }

    v35 = v62;
    sub_10000CFBC(v22, &unk_1009434A0, &unk_100787B90);
    if ((sub_1007706EC() & 1) == 0)
    {
      if (qword_100941220 != -1)
      {
        swift_once();
      }

      v41 = sub_10076D9AC();
      sub_10000A61C(v41, qword_1009A23E0);
      sub_10076DEDC();
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007841E0;
      *(v42 + 32) = v34;
      v43 = v34;
      v44 = sub_10076DEEC();
      sub_10076D3EC();
      v25 = v45;
    }

    v46 = v25 + 20.0;
  }

  else
  {
    v28(v16, v23, v6);
    (*v29)(v16, 0, 1, v6);
    sub_100016E2C(v16, v13, &unk_1009434A0, &unk_100787B90);
    if ((*v30)(v13, 1, v6) == 1)
    {
      sub_10000CFBC(v13, &unk_1009434A0, &unk_100787B90);
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;

      v35 = v62;
    }

    else
    {
      v48 = v60;
      v47 = v61;
      (*(v61 + 32))(v60, v13, v6);
      v35 = v62;
      if (v58 != 4)
      {
        sub_10076C31C();
        sub_10076C31C();
      }

      v49 = v63;
      [v63 layoutDirection];
      sub_1007708DC();
      left = v50;
      right = v51;

      (*(v47 + 8))(v48, v6);
    }

    sub_10000CFBC(v16, &unk_1009434A0, &unk_100787B90);
    bottom = 20.0;
    v46 = 20.0;
  }

  v52 = sub_100550978();

  v53 = *&v35[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  *(a2 + 72) = _s20ProductPageExtension10HeaderViewCMa_0();
  *(a2 + 80) = sub_10055F9A8(&qword_10095D2D8, _s20ProductPageExtension10HeaderViewCMa_0, &unk_1007AB050);
  *(a2 + 48) = v53;
  v63 = *&v35[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
  *(a2 + 112) = type metadata accessor for TodayCardLabelsView(0);
  *(a2 + 120) = &protocol witness table for CustomLayoutView;
  *(a2 + 88) = v63;
  *a2 = v52 & 1;
  *(a2 + 8) = v46;
  *(a2 + 16) = left;
  *(a2 + 24) = bottom;
  *(a2 + 32) = right;
  *(a2 + 40) = 0x4030000000000000;
  v54 = v53;
  v55 = v63;

  return v55;
}

uint64_t sub_100552BF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v4 && (v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView]) != 0 && *&v2[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_todayCard])
  {
    v6 = result;
    if (v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
    {

      v7 = v4;
      v8 = v5;
      sub_10076C25C();
      v10 = v9;
    }

    else
    {
      v10 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];

      v11 = v4;
      v12 = v5;
    }

    v13 = [v3 traitCollection];
    v44 = sub_10055BFB8(v6, v13, v10);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [v3 traitCollection];
    v21 = sub_10055F9F0(v6, v20);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = sub_100550978();
    v29 = v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded];
    v43 = v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning];

    if (v29)
    {
      v30 = 272.0;
    }

    else
    {
      v30 = 177.0;
    }

    v68 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
    _s20ProductPageExtension10HeaderViewCMa_0();
    sub_10076D2DC();
    v66 = v5;
    v31 = type metadata accessor for TodayCardLabelsView(0);
    sub_10076D2DC();
    v32 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
    v63 = v31;
    v64 = &protocol witness table for CustomLayoutView;
    *&v62 = v32;
    v60 = type metadata accessor for TodayListCardLockupContainer();
    v61 = &protocol witness table for UIView;
    v33 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer];
    v58 = &protocol witness table for UIView;
    *&v59 = v4;
    v57 = v60;
    *&v56 = v33;
    v34 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v35 = *(*&v33[v34] + 16);
    if (*&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView])
    {
      *&v50 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView];
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v36 = v32;
      v37 = v33;
      sub_10076D2DC();
    }

    else
    {
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v38 = v32;
      v39 = v33;
    }

    v40 = v28 & 1;
    if (*&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView])
    {
      *&v47 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView];
      sub_10000A5D4(&qword_10095D2C8, &qword_1007AB1F0);
      sub_10076D2DC();
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
    }

    v41 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
    if (v41)
    {
      v46 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
      type metadata accessor for RiverTodayCardBackgroundView(0);
      v42 = v41;
      sub_10076D2DC();
    }

    else
    {

      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }

    *a2 = v29;
    *(a2 + 1) = v43;
    *(a2 + 2) = v40;
    *(a2 + 3) = v46;
    *(a2 + 7) = BYTE4(v46);
    *(a2 + 8) = v44;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;
    *(a2 + 32) = v19;
    *(a2 + 40) = v21;
    *(a2 + 48) = v23;
    *(a2 + 56) = v25;
    *(a2 + 64) = v27;
    *(a2 + 72) = v30;
    sub_100012498(&v67, a2 + 80);
    sub_100012498(&v65, a2 + 120);
    sub_100012498(&v62, a2 + 160);
    sub_100012498(&v59, a2 + 200);
    result = sub_100012498(&v56, a2 + 240);
    *(a2 + 280) = v35;
    *(a2 + 288) = v53;
    *(a2 + 304) = v54;
    *(a2 + 320) = v55;
    *(a2 + 328) = v50;
    *(a2 + 344) = v51;
    *(a2 + 360) = v52;
    *(a2 + 368) = v47;
    *(a2 + 384) = v48;
    *(a2 + 400) = v49;
  }

  else
  {
    *(a2 + 400) = 0;
    *(a2 + 368) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

id sub_100553088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v64 = &v62[-v10];
  v11 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v11 - 8);
  v13 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v66 = &v62[-v15];
  __chkstk_darwin(v16);
  v18 = &v62[-v17];
  __chkstk_darwin(v19);
  v21 = &v62[-v20];
  v22 = a1;
  if (v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
  {
    sub_10076C25C();
    v24 = v23;
  }

  else
  {
    v24 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  }

  v69 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v25 = v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v26 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v26 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v63 = v3[*v26];
  v27 = [v3 traitCollection];
  v67 = v7;
  v68 = v27;
  v28 = *(v7 + 16);
  v29 = (v7 + 56);
  v30 = (v7 + 48);
  if (v25 == 1)
  {
    v28(v21, v22, v6);
    (*v29)(v21, 0, 1, v6);
    sub_100016E2C(v21, v18, &unk_1009434A0, &unk_100787B90);
    if ((*v30)(v18, 1, v6) == 1)
    {
      sub_10000CFBC(v18, &unk_1009434A0, &unk_100787B90);
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v34 = v68;
    }

    else
    {
      v36 = v67;
      v37 = v64;
      (*(v67 + 32))(v64, v18, v6);
      sub_10076C31C();
      sub_10076C31C();
      v34 = v68;
      [v68 layoutDirection];
      sub_1007708DC();
      left = v38;
      bottom = v39;
      right = v40;
      (*(v36 + 8))(v37, v6);
    }

    sub_10000CFBC(v21, &unk_1009434A0, &unk_100787B90);
    if ((sub_1007706EC() & 1) == 0)
    {
      if (qword_100941220 != -1)
      {
        swift_once();
      }

      v41 = sub_10076D9AC();
      sub_10000A61C(v41, qword_1009A23E0);
      sub_10076DEDC();
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007841E0;
      *(v42 + 32) = v34;
      v43 = v34;
      v44 = sub_10076DEEC();
      sub_10076D3EC();
      v24 = v45;
    }

    v46 = v24 + 20.0;
  }

  else
  {
    v35 = v66;
    v28(v66, v22, v6);
    (*v29)(v35, 0, 1, v6);
    sub_100016E2C(v35, v13, &unk_1009434A0, &unk_100787B90);
    if ((*v30)(v13, 1, v6) == 1)
    {
      sub_10000CFBC(v13, &unk_1009434A0, &unk_100787B90);
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;
    }

    else
    {
      v47 = v67;
      v48 = v65;
      (*(v67 + 32))(v65, v13, v6);
      if (v63 != 4)
      {
        sub_10076C31C();
        sub_10076C31C();
      }

      v49 = v68;
      [v68 layoutDirection];
      sub_1007708DC();
      left = v50;
      right = v51;

      (*(v47 + 8))(v48, v6);
    }

    sub_10000CFBC(v35, &unk_1009434A0, &unk_100787B90);
    bottom = 20.0;
    v46 = 20.0;
  }

  v52 = sub_100550978();
  v53 = v3[v69];

  if (v53)
  {
    v54 = 272.0;
  }

  else
  {
    v54 = 177.0;
  }

  v55 = v52 & 1;
  v56 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  *(a2 + 88) = _s20ProductPageExtension10HeaderViewCMa_0();
  *(a2 + 96) = sub_10055F9A8(&qword_10095D2D8, _s20ProductPageExtension10HeaderViewCMa_0, &unk_1007AB050);
  *(a2 + 64) = v56;
  v57 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
  *(a2 + 128) = type metadata accessor for TodayCardLabelsView(0);
  *(a2 + 136) = &protocol witness table for CustomLayoutView;
  *(a2 + 104) = v57;
  v69 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer];
  *(a2 + 168) = type metadata accessor for TodayListCardLockupContainer();
  *(a2 + 176) = &protocol witness table for UIView;
  *(a2 + 144) = v69;
  *a2 = v53;
  *(a2 + 1) = v55;
  *(a2 + 8) = v46;
  *(a2 + 16) = left;
  *(a2 + 24) = bottom;
  *(a2 + 32) = right;
  *(a2 + 40) = 0x4030000000000000;
  *(a2 + 48) = v54;
  *(a2 + 56) = 0x405B800000000000;
  v58 = v56;
  v59 = v57;
  v60 = v69;

  return v60;
}

double sub_100553800()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&qword_10094A450, &unk_1007AB170);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v22[-v5];
  v23.receiver = v1;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "prepareForReuse", v4);
  v7 = *(*&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  sub_1002767A0();

  sub_100279CAC();
  v8 = sub_10076C7EC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_10003837C(v6, &v1[v9], &qword_10094A450, &unk_1007AB170);
  swift_endAccess();
  v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton] = 0;
  if (v10)
  {
    [v10 removeFromSuperview];
  }

  sub_100553A5C();
  v12 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView];
  if (v13)
  {
    v14 = v13;
    v15 = sub_10076C63C();

    swift_beginAccess();
    *(v15 + 32) = _swiftEmptyArrayStorage;

    v16 = *&v1[v12];
    if (v16)
    {
      v17 = v16;
      sub_10076C6CC();
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
  if (v18)
  {
    v19 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
    swift_beginAccess();
    v20 = *&v18[v19];
    *&v18[v19] = _swiftEmptyArrayStorage;
    v21 = v18;
    sub_100720B00(v20);
  }

  return result;
}

void sub_100553A5C()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v0 + *v1) == 6)
  {
    if (*(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) != 1)
    {
      return;
    }

    v2 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *(v0 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v0 + v2) = 0;

    v17 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView;
    v18 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView);
    if (v18)
    {
      [v18 removeFromSuperview];
      v16 = *(v0 + v17);
    }

    else
    {
      v16 = 0;
    }

    *(v0 + v17) = 0;
  }

  else
  {
    v5 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer;
    v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v0 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v5) = 0;

    v8 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView;
    v9 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v0 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v0 + v8) = 0;

    v11 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
    v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView);
    if (v12)
    {
      [v12 removeFromSuperview];
      v13 = *(v0 + v11);
    }

    else
    {
      v13 = 0;
    }

    *(v0 + v11) = 0;

    v14 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView;
    v15 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView);
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *(v0 + v14);
    }

    else
    {
      v16 = 0;
    }

    *(v0 + v14) = 0;
  }

  v19 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v19)
  {

    [v19 setHidden:1];
  }
}

id sub_100553C80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075FEEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003DFB08();
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
  v8 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v9 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v9 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10 = v0[*v9];
  v11 = sub_100342B64;
  v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v14 = sub_1007333BC;
  v52 = v4;
  v53 = v3;
  v51 = ObjectType;
  if (v10 != 6)
  {
    if (v10 == 4)
    {
      v11 = sub_100342B64;
      v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v14 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    else
    {
      v11 = sub_10073304C;
      v12 = sub_100733208;
      v13 = sub_1007331DC;
      v14 = sub_100733020;
    }
  }

  v15 = &v7[qword_10094D6E0];
  *v15 = sub_1000082CC;
  v15[1] = 0;
  v15[2] = v14;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = 0;
  v15[6] = v12;
  v15[7] = 0;
  v15[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v15[9] = 0;
  v15[10] = v11;
  v15[11] = 0;

  sub_1001EDE3C();
  sub_100550978();
  v16 = &v7[qword_10094D6A0];
  *v16 = 0x4000000000000000;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0x4018000000000000;
  *(v16 + 4) = 0;
  v16[40] = 1;
  [v7 setNeedsLayout];
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  v18 = *&v17[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView];
  v19 = v0[v8];
  v20 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded;
  v18[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded] = v19;
  v21 = *&v18[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
  v21[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded] = v19;
  v22 = v18;
  [v21 setNeedsLayout];
  *(*&v22[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView] + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded) = v18[v20];
  sub_10056970C();

  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer];
  v24 = v1[v8];
  v25 = v23[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded];
  v23[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded] = v24;
  if (v24 != v25)
  {
    [v23 setNeedsLayout];
  }

  v26 = 20.0;
  if (v1[v8])
  {
    v26 = 0.0;
  }

  v27 = v51;
  v55.receiver = v1;
  v55.super_class = v51;
  objc_msgSendSuper2(&v55, "_setContinuousCornerRadius:", v26);
  v54.receiver = v1;
  v54.super_class = v27;
  objc_msgSendSuper2(&v54, "_continuousCornerRadius");
  v29 = v28;
  v31 = v52;
  v30 = v53;
  (*(v52 + 104))(v6, enum case for CornerStyle.continuous(_:), v53);
  sub_10027608C(v6, 3, v29);
  v32 = [v17 layer];
  [v32 setMaskedCorners:sub_1007704FC()];

  (*(v31 + 8))(v6, v30);
  v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v33)
  {
    v34 = v1[v8];
    v35 = v33[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded];
    v33[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded] = v34;
    if (v34 != v35)
    {
      [v33 setNeedsLayout];
    }
  }

  v36 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView;
  v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
  if (v37)
  {
    v38 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v1[v8])
    {
      v38 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v39 = v1[*v38];
    v40 = sub_100342B64;
    v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v43 = sub_1007333BC;
    if (v39 != 6)
    {
      if (v39 == 4)
      {
        v40 = sub_100342B64;
        v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v43 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      }

      else
      {
        v40 = sub_10073304C;
        v41 = sub_100733208;
        v42 = sub_1007331DC;
        v43 = sub_100733020;
      }
    }

    v44 = &v37[qword_10094D6E0];
    *v44 = sub_1000082CC;
    v44[1] = 0;
    v44[2] = v43;
    v44[3] = 0;
    v44[4] = v42;
    v44[5] = 0;
    v44[6] = v41;
    v44[7] = 0;
    v44[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v44[9] = 0;
    v44[10] = v40;
    v44[11] = 0;
    v45 = v37;

    sub_1001EDE3C();

    v46 = *&v1[v36];
    if (v46)
    {
      v47 = v46;
      sub_100550978();
      v48 = &v47[qword_10094D6A0];
      *v48 = 0x4000000000000000;
      *(v48 + 1) = 0;
      *(v48 + 2) = 0;
      *(v48 + 3) = 0x4018000000000000;
      *(v48 + 4) = 0;
      v48[40] = 1;
      [v47 setNeedsLayout];
    }
  }

  sub_1005543AC();
  sub_10033B118();
  return [v1 setNeedsLayout];
}

void sub_1005543AC()
{
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning) & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (*(v0 + *v2) == 6)
    {
      v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) ^ 1u;
    }

    else
    {
      v3 = 0;
    }

    [*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView) setHidden:v3];
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView);
    if (v4)
    {
      if (*(v0 + v1))
      {
        v5 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v5 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v5) == 6)
      {
        v6 = *(v0 + v1);
      }

      else
      {
        v6 = 1;
      }

      [v4 setHidden:v6];
    }

    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView);
    if (v7)
    {
      if (*(v0 + v1))
      {
        v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v8) == 6)
      {
        v9 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia);
      }

      else
      {
        v9 = 1;
      }

      [v7 setHidden:v9 & 1];
    }

    v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v10)
    {
      if (*(v0 + v1))
      {
        v11 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v11 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v11) == 6)
      {
        v12 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia);
      }

      else
      {
        v12 = 1;
      }

      [v10 setHidden:v12 & 1];
    }

    if (*(v0 + v1))
    {
      v13 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v14 = *(v0 + *v13);
    if (v14 == 6)
    {
      v15 = *(v0 + v1) ^ 1u;
    }

    else
    {
      v15 = (v14 == 4) & *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia);
    }

    [*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer) setHidden:v15];
    v16 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v16)
    {
      if (*(v0 + v1))
      {
        v17 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v17 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v17) == 6)
      {
        v18 = *(v0 + v1);
      }

      else
      {
        v18 = 1;
      }

      [v16 setHidden:v18];
    }

    v19 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView);
    v20 = (sub_100550978() & 1) == 0;

    [v19 setHidden:v20];
  }
}

id sub_100554624(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
  v5 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v2[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v6 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(v4 + qword_10094D6A8) = v2[*v6];
  sub_1001EDB98();
  v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
  if (v7)
  {
    if (v2[v5])
    {
      v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v7[qword_10094D6A8] = v2[*v8];
    v9 = v7;
    sub_1001EDB98();
  }

  v10 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  if (v2[v5])
  {
    v11 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_sizeCategory] = v2[*v11];
  v12 = v10;
  sub_100275DD8();

  if (v2[v5])
  {
    v14 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v14 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_100554780(v2[*v14], v3, v13);

  return [v2 setNeedsLayout];
}

void sub_100554780(unsigned __int8 a1, unsigned __int8 a2, __n128 a3)
{
  v4 = a1;
  v5 = a2;
  v6 = sub_100762CAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v54[-1] - v11;
  if (v4 == 7)
  {
    if (v5 == 7)
    {
      return;
    }
  }

  else if (v5 != 7)
  {
    switch(v4)
    {
      case 6:
        if (v5 == 6)
        {
          return;
        }

        break;
      case 5:
        if (v5 == 5)
        {
          return;
        }

        break;
      case 4:
        if (v5 == 4)
        {
          return;
        }

        break;
      default:
        if ((v5 - 7) <= 0xFFFFFFFC && v4 == v5)
        {
          return;
        }

        break;
    }
  }

  if (v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 6)
  {
    sub_100762C0C();
    sub_100762C4C();
    sub_100762C8C();
    v13 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView;
    v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
    v53 = v7;
    if (v14)
    {
      [v14 setHidden:0];
    }

    else
    {
      (*(v7 + 16))(v9, v12, v6);
      v15 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView(0));
      v16 = sub_100720100(v9);
      [v16 setClipsToBounds:1];
      [v3 bounds];
      CGRectGetWidth(v58);
      [v3 bounds];
      CGRectGetHeight(v59);
      [v16 bounds];
      [v16 setBounds:?];
      [v16 _setContinuousCornerRadius:20.0];
      v17 = [v16 layer];

      v18 = [v3 traitCollection];
      v19 = sub_10077070C();

      if (v19)
      {
        v20 = 10;
      }

      else
      {
        v20 = 5;
      }

      [v17 setMaskedCorners:{v20, v53}];

      v21 = *&v3[v13];
      *&v3[v13] = v16;
      v22 = v16;

      v23 = [v3 contentView];
      [v23 addSubview:v22];
    }

    v24 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView;
    if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView])
    {
      v25 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
      if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView])
      {
        v26 = [objc_allocWithZone(UIView) init];
        [v26 setClipsToBounds:1];
        v27 = *&v3[v24];
        *&v3[v24] = v26;
        v28 = v26;

        v29 = [v3 contentView];
        [v29 addSubview:v28];

        type metadata accessor for RiverCardDataSource();
        v30 = swift_allocObject();
        *(v30 + 32) = _swiftEmptyArrayStorage;
        *(v30 + 16) = xmmword_1007AAF70;
        *(v30 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
        (*(v53 + 16))(v9, v12, v6);
        v31 = objc_allocWithZone(sub_10000A5D4(&qword_10095D2C8, &qword_1007AB1F0));

        v32 = sub_10076C62C();
        [v32 setClipsToBounds:0];
        v33 = *&v3[v25];
        *&v3[v25] = v32;
        v34 = v32;

        [v28 addSubview:v34];
      }
    }

    v35 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer;
    if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer])
    {
      type metadata accessor for TodayListCardLockupContainer();
      v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v37 = v36;
      v38 = v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded];
      v39 = v36[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded];
      v36[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded] = v38;
      if (v38 != v39)
      {
        [v36 setNeedsLayout];
      }

      v40 = v37;
      v41 = [v40 layer];
      [v41 setZPosition:0.0];

      [v40 setClipsToBounds:1];
      v42 = *&v3[v35];
      *&v3[v35] = v40;
      v43 = v40;

      v44 = [v3 contentView];
      [v44 addSubview:v43];
    }

    v45 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView;
    if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView])
    {
      v54[0] = sub_1000082CC;
      v54[1] = 0;
      v54[2] = sub_1007333BC;
      v54[3] = 0;
      v54[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v54[5] = 0;
      v54[6] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v54[7] = 0;
      v54[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v54[9] = 0;
      v54[10] = sub_100342B64;
      v54[11] = 0;
      v55 = 0x4000000000000000uLL;
      *v56 = 0;
      *&v56[8] = 0x4018000000000000;
      *&v56[16] = 0;
      v56[24] = 1;
      v46 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
      v47 = sub_1001ED0D8(v54, &v55);
      sub_100550978();
      v48 = &v47[qword_10094D6A0];
      *(v48 + 25) = *&v56[9];
      v49 = *v56;
      *v48 = v55;
      *(v48 + 1) = v49;
      [v47 setNeedsLayout];
      v47[qword_10094D6A8] = v4;
      sub_1001EDB98();
      v50 = *&v3[v45];
      *&v3[v45] = v47;
      v51 = v47;

      v52 = [v3 contentView];
      [v52 addSubview:v51];
    }

    [v3 setNeedsLayout];
    (*(v53 + 8))(v12, v6);
  }

  else
  {

    sub_100553A5C();
  }
}

void sub_100554EF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  swift_weakAssign();
  v4 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_1000167E0(v5, v6);
  type metadata accessor for TodayListCardLockupContainer();
  sub_10055F9A8(&qword_10095D2C0, type metadata accessor for TodayListCardLockupContainer, &unk_100798590);
  sub_10076A03C();
  v7 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v7)
  {
    v8 = v7;
    sub_10076A03C();
  }
}

void sub_100555028(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10076611C();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000167E0(v4, v5);
  type metadata accessor for TodayListCardLockupContainer();
  sub_10055F9A8(&qword_10095D2C0, type metadata accessor for TodayListCardLockupContainer, &unk_100798590);
  sub_10076A02C();
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v6)
  {
    v7 = v6;
    sub_10076A02C();
  }
}

void sub_100555168(unint64_t a1, unsigned int a2, uint64_t a3, void *a4, __n128 a5)
{
  v6 = v5;
  v152 = a4;
  v160 = a1;
  v146 = sub_10076637C();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v153 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076C7EC();
  v156 = *(v10 - 8);
  v157 = v10;
  __chkstk_darwin(v10);
  v154 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_100766EBC();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v158 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v149 = &v131 - v14;
  v15 = sub_10000A5D4(&qword_10094A450, &unk_1007AB170);
  __chkstk_darwin(v15 - 8);
  v17 = &v131 - v16;
  v18 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v18 - 8);
  v20 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v131 - v22;
  v24 = sub_10076C38C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v144 = a3;
  v26(v23, a3, v24);
  (*(v25 + 56))(v23, 0, 1, v24);
  v27 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003837C(v23, &v5[v27], &unk_1009434A0, &unk_100787B90);
  swift_endAccess();
  v28 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  v155 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  v29 = *&v155[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView];
  sub_100016E2C(&v5[v27], v20, &unk_1009434A0, &unk_100787B90);
  v30 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v31 = v29;
  sub_10003837C(v20, v29 + v30, &unk_1009434A0, &unk_100787B90);
  swift_endAccess();

  v159 = a2;
  sub_1003DC6B0(a2);
  v32 = [v5 backgroundView];
  if (v32)
  {
    v33 = v32;
    v34 = sub_10076C70C();
    if (!v34)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v34 = sub_100770D8C();
    }

    v35 = v34;
    [v33 setBackgroundColor:v34];
  }

  *&v6[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_todayCard] = v160;

  v36 = sub_10076C7FC();
  sub_10076472C();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {

    *(*&v155[v28] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) = 0;
    sub_1005543AC();
    return;
  }

  v38 = v37;
  v142 = v36;
  sub_10076C80C();
  (*(v156 + 56))(v17, 0, 1, v157);
  v39 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_10003837C(v17, &v6[v39], &qword_10094A450, &unk_1007AB170);
  swift_endAccess();
  v40 = sub_1007646DC();
  v41 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_isMediaDark;
  v6[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_isMediaDark] = v40 & 1;
  v141 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v42 = v6[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v170 = sub_10076C7FC();
  sub_100761BFC();
  sub_10000A5D4(&qword_100945700, &qword_100787BA0);
  v43 = swift_dynamicCast();
  v148 = v38;
  if (v43)
  {
    v147 = v41;
    sub_100012498(&v167, &aBlock);
    sub_10000CF78(&aBlock, v164);
    v44 = [v6 traitCollection];
    v45 = sub_1007684EC();

    if (v45)
    {
      sub_10000CF78(&aBlock, v164);
      v46 = sub_1007684CC();
      if (v46)
      {
        sub_10055C378(v45, v46, v159, v144, v152);

        if (qword_10093F708 != -1)
        {
          swift_once();
        }

        v47 = qword_10099CED0;
        v48 = *algn_10099CED8;
        v49 = sub_1007646DC();
        v50 = v149;
        sub_10076C77C();
        v51 = sub_100766E9C();
        (*(v150 + 8))(v50, v151);
        sub_10055BB38(v47, v48, v49 & 1, v51 & 1);

        sub_10000CD74(&aBlock);
        v41 = v147;
        goto LABEL_29;
      }
    }

    sub_10000CD74(&aBlock);
    v41 = v147;
  }

  else
  {
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
    sub_10000CFBC(&v167, &qword_1009456F8, &unk_1007AB1E0);
  }

  v170 = sub_10076C7FC();
  if (!swift_dynamicCast())
  {
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
    sub_10000CFBC(&v167, &qword_1009456F8, &unk_1007AB1E0);
LABEL_28:
    *(*&v155[v28] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) = 0;
    goto LABEL_29;
  }

  sub_100012498(&v167, &aBlock);
  sub_10000CF78(&aBlock, v164);
  v52 = [v6 traitCollection];
  v53 = sub_1007684FC();

  if (!v53)
  {
LABEL_27:
    sub_10000CD74(&aBlock);
    goto LABEL_28;
  }

  sub_10000CF78(&aBlock, v164);
  v54 = sub_1007684CC();
  if (!v54)
  {

    goto LABEL_27;
  }

  v55 = v41;
  if (v42 == 7)
  {
    v56 = v159;
  }

  else
  {
    v56 = v42;
  }

  sub_10055E0F8(v53, v54, v56, v144, v152);

  if (qword_10093F700 != -1)
  {
    swift_once();
  }

  v57 = qword_10099CEC0;
  v58 = *algn_10099CEC8;
  v59 = sub_1007646DC();
  v60 = v149;
  sub_10076C77C();
  v61 = sub_100766E9C();
  (*(v150 + 8))(v60, v151);
  sub_10055BB38(v57, v58, v59 & 1, v61 & 1);

  sub_10000CD74(&aBlock);
  v41 = v55;
LABEL_29:
  v62 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
  if ((sub_100550978() & 1) != 0 && *(v41 + v6) == 1)
  {
    (*(v156 + 104))(v154, enum case for TodayCard.Style.dark(_:), v157);
  }

  else
  {
    sub_10076C80C();
  }

  v63 = sub_10076C82C();
  v65 = v64;
  v143 = sub_10076C81C();
  v147 = v66;
  v67 = sub_10076C6EC();
  v149 = v68;
  sub_10076C75C();
  v69 = sub_1007646FC();
  v155 = v70;
  sub_10076C77C();
  v71 = v159;
  v72 = sub_1007333BC;
  v134 = v69;
  v133 = v67;
  if (v159 == 6)
  {
    v135 = sub_1000082CC;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v137 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v138 = sub_100342B64;
  }

  else if (v159 == 4)
  {
    v138 = sub_100342B64;
    v137 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v72 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v135 = sub_1000082CC;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v138 = sub_10073304C;
    v137 = sub_100733208;
    v136 = sub_1007331DC;
    v72 = sub_100733020;
    v135 = sub_1000082CC;
  }

  v139 = sub_100550978();
  v62[qword_10094D6D8] = 0;
  v73 = *&v62[qword_10094D6C0];
  *(v73 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v74 = *&v62[qword_10094D6B8];
  v140 = v65;
  sub_1001E44C4(v63, v65);
  v75 = sub_100766EAC();
  v76 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v77 = *&v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v71 != 4 || (v75 & 1) != 0)
  {
    v78 = [v77 text];
    if (v78)
    {
      v79 = v78;
      sub_10076FF9C();
    }

    v80 = sub_10077002C();
    v81 = v80 & 1;

    if (v81 == [*&v74[v76] isHidden] || (v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v74[v76] setHidden:v81];
    }

    else
    {
      if ((v80 & 1) == 0)
      {
        [*&v74[v76] setAlpha:0.0];
        v131 = objc_opt_self();
        [v131 inheritedAnimationDuration];
        v83 = v82;
        v84 = swift_allocObject();
        *(v84 + 16) = v74;
        v165 = sub_100138CF0;
        v166 = v84;
        aBlock = _NSConcreteStackBlock;
        v162 = 1107296256;
        v163 = sub_10009AEDC;
        v164 = &unk_1008998F8;
        v132 = _Block_copy(&aBlock);
        v85 = v74;

        v86 = swift_allocObject();
        *(v86 + 16) = v85;
        v165 = sub_100138CFC;
        v166 = v86;
        aBlock = _NSConcreteStackBlock;
        v162 = 1107296256;
        v163 = sub_1000513F0;
        v164 = &unk_100899948;
        v87 = _Block_copy(&aBlock);
        v88 = v85;

        v89 = v132;
        [v131 animateWithDuration:0 delay:v132 options:v87 animations:v83 completion:0.0];
        _Block_release(v87);
        _Block_release(v89);
      }

      [*&v74[v76] setHidden:v80 & 1];
      v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v74 setNeedsLayout];
    }
  }

  else if (([v77 isHidden] & 1) != 0 || (v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*&v74[v76] setHidden:1];
  }

  else
  {
    [*&v74[v76] setHidden:1];
    v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v74 setNeedsLayout];
  }

  v90 = &v62[qword_10094D6E0];
  *v90 = v135;
  v90[1] = 0;
  v90[2] = v72;
  v90[3] = 0;
  v90[4] = v136;
  v90[5] = 0;
  v90[6] = v137;
  v90[7] = 0;
  v90[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v90[9] = 0;
  v90[10] = v138;
  v90[11] = 0;

  sub_1001EDE3C();
  v91 = v155;
  if (v147)
  {
    if (v159 == 4)
    {
      sub_1001EFAF8();
    }

    else
    {
      sub_1001EFB1C();
    }

    v92 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
    v93 = *(v73 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    v94 = objc_allocWithZone(NSAttributedString);
    v95 = v93;
    v96 = sub_10076FF6C();
    type metadata accessor for Key(0);
    sub_10055F9A8(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
    isa = sub_10076FE3C().super.isa;

    v98 = [v94 initWithString:v96 attributes:isa];

    [v95 setAttributedText:v98];
    [*(v73 + v92) setAdjustsFontSizeToFitWidth:0];
    [*(v73 + v92) setMinimumScaleFactor:0.0];
    [*(v73 + v92) setAttributedText:0];
    if (v149 && v62[qword_10094D6B0] == 4)
    {
      v91 = v155;
      if (v159 == 4)
      {
        v99 = v143;
        v100 = v147;
        v101 = v133;
        v102 = v149;
      }

      else
      {
        v99 = v133;
        v100 = v149;
        v101 = v143;
        v102 = v147;
      }

      sub_1001E45BC(v99, v100, v101, v102);
    }

    else
    {
      sub_1001E44C4(v143, v147);
      v91 = v155;
    }
  }

  v103 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v104 = *(v73 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v105 = [v104 text];
  if (v105)
  {
    v106 = v148;
    v107 = &off_100911000;
  }

  else
  {
    v105 = [*(v73 + v103) attributedText];
    v107 = &off_100911000;
    if (!v105)
    {
      v108 = 1;
      v106 = v148;
      goto LABEL_68;
    }

    v106 = v148;
  }

  v108 = 0;
LABEL_68:
  v109 = v159;
  [v104 setHidden:v108];

  [v62 v107[194]];
  v110 = *&v62[qword_10094D6C8];
  [v110 setImage:0];
  [v110 setHidden:1];
  if (v109 != 4 && (sub_100766E8C() & 1) == 0 && v91)
  {
    v111 = v106;
    v112 = HIBYTE(v91) & 0xF;
    if ((v91 & 0x2000000000000000) == 0)
    {
      v112 = v134 & 0xFFFFFFFFFFFFLL;
    }

    v113 = v112 == 0;
    v114 = *&v62[qword_10094D6D0];
    v115 = &v114[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v116 = *&v114[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    goto LABEL_76;
  }

  v114 = *&v62[qword_10094D6D0];
  v115 = &v114[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  v116 = *&v114[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v91)
  {
    v111 = v106;
    v113 = 1;
LABEL_76:
    v117 = v116;
    v91 = sub_10076FF6C();
    v106 = v111;
    goto LABEL_78;
  }

  v117 = v116;
  v113 = 1;
LABEL_78:
  [v117 setText:v91];

  if (v113 == [*v115 isHidden] || (v114[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v115 setHidden:v113];
  }

  else
  {
    if (!v113)
    {
      [*v115 setAlpha:0.0];
      v118 = objc_opt_self();
      [v118 inheritedAnimationDuration];
      v120 = v119;
      v121 = swift_allocObject();
      *(v121 + 16) = v114;
      v165 = sub_100138AA8;
      v166 = v121;
      aBlock = _NSConcreteStackBlock;
      v162 = 1107296256;
      v163 = sub_10009AEDC;
      v164 = &unk_100899858;
      v122 = _Block_copy(&aBlock);
      v123 = v114;

      v124 = swift_allocObject();
      *(v124 + 16) = v123;
      v165 = sub_100138AC8;
      v166 = v124;
      aBlock = _NSConcreteStackBlock;
      v162 = 1107296256;
      v163 = sub_1000513F0;
      v164 = &unk_1008998A8;
      v125 = _Block_copy(&aBlock);
      v126 = v123;
      v106 = v148;

      [v118 animateWithDuration:0 delay:v122 options:v125 animations:v120 completion:0.0];
      _Block_release(v125);
      _Block_release(v122);
    }

    [*v115 setHidden:v113];
    v114[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v114 setNeedsLayout];
  }

  v127 = v154;
  sub_1001EE35C(v154, v139 & 1);
  [v62 setNeedsLayout];

  (*(v150 + 8))(v158, v151);
  (*(v145 + 8))(v153, v146);
  sub_100550978();
  v128 = &v62[qword_10094D6A0];
  *v128 = 0x4000000000000000;
  *(v128 + 1) = 0;
  *(v128 + 2) = 0;
  *(v128 + 3) = 0x4018000000000000;
  *(v128 + 4) = 0;
  v128[40] = 1;
  [v62 setNeedsLayout];
  (*(v156 + 8))(v127, v157);
  v129 = sub_10076471C();
  sub_100760C4C();
  sub_10076F64C();
  v130 = v152;
  sub_10076FC1C();
  sub_10027C09C(v129, aBlock, v130);

  if (v6[v141] == 6)
  {
    sub_1005568DC(v160, v106, v159, v144, v130);
  }

  sub_10055074C();
  sub_100553A5C();
  sub_1005543AC();
  sub_100550A3C();
  sub_100557E64();
  [v6 setNeedsLayout];
}

void sub_1005568DC(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v135 = a5;
  v149 = a3;
  v148 = a1;
  v139 = sub_100766EBC();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v150 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10076637C();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C7EC();
  v144 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView);
  v140 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  v15 = *(*(v142 + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia);
  v16 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
  v17 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView);
  v146 = a2;
  v147 = v5;
  v145 = v14;
  v143 = v10;
  if (v15)
  {
    if (v17)
    {
      v18 = v17;
      v19 = sub_10076C63C();

      swift_beginAccess();
      *(v19 + 32) = _swiftEmptyArrayStorage;
    }

    v20 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
      swift_beginAccess();
      v22 = *&v20[v21];
      *&v20[v21] = _swiftEmptyArrayStorage;
      v23 = v20;
      sub_100720B00(v22);
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v17)
  {
    v24 = v17;
    v25 = sub_10076C63C();

    v26 = sub_10076471C();
    swift_beginAccess();
    *(v25 + 32) = v26;

    v27 = *(v6 + v16);
    if (v27)
    {
      v28 = v27;
      v29 = sub_10076C63C();

      sub_100760C4C();
      sub_10076F64C();
      sub_10076FC1C();
      *(v29 + 16) = aBlock;
    }
  }

  v30 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (!v30)
  {
    goto LABEL_36;
  }

  v23 = v30;
  v31 = sub_10076471C();
  v32 = v31;
  aBlock = _swiftEmptyArrayStorage;
  v33 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
LABEL_32:
    v34 = sub_10077158C();
    if (v34)
    {
      goto LABEL_12;
    }

LABEL_33:
    v134 = _swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_33;
  }

LABEL_12:
  v35 = 0;
  v134 = _swiftEmptyArrayStorage;
  v141 = v11;
  do
  {
    v11 = v35;
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v11 >= *(v33 + 16))
        {
          goto LABEL_31;
        }

        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      if (sub_10076BB9C())
      {
        break;
      }

LABEL_15:
      ++v11;
      if (v35 == v34)
      {
        v11 = v141;
        goto LABEL_34;
      }
    }

    v36 = sub_10076BE1C();

    if (!v36)
    {
      goto LABEL_15;
    }

    sub_10077019C();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    v134 = aBlock;
    v11 = v141;
  }

  while (v35 != v34);
LABEL_34:

  v37 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v38 = *&v23[v37];
  *&v23[v37] = v134;
  sub_100720B00(v38);
  v6 = v147;
  v14 = v145;
LABEL_35:

LABEL_36:
  v39 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView);
  if (!v39)
  {
    goto LABEL_97;
  }

  v40 = *(*&v140[v142] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) == 1;
  v141 = v11;
  if (v40)
  {
    if (*(v6 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_isMediaDark))
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (*(v6 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v42 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v42 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v6 + *v42) != 6)
  {
LABEL_40:
    v41 = v39;
    sub_10076C80C();
    goto LABEL_46;
  }

LABEL_45:
  (*(v144 + 104))(v14, enum case for TodayCard.Style.dark(_:), v11, v12);
  v43 = v39;
LABEL_46:
  v44 = sub_10076C82C();
  v46 = v45;
  v134 = sub_10076C81C();
  v140 = v47;
  v127 = sub_10076C6EC();
  v142 = v48;
  sub_10076C75C();
  v49 = sub_1007646FC();
  v148 = v50;
  sub_10076C77C();
  v51 = v149;
  v52 = sub_1007333BC;
  v128 = v49;
  if (v149 == 6)
  {
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v132 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v133 = sub_100342B64;
  }

  else if (v149 == 4)
  {
    v133 = sub_100342B64;
    v132 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v133 = sub_10073304C;
    v132 = sub_100733208;
    v131 = sub_1007331DC;
    v52 = sub_100733020;
  }

  v129 = sub_100550978();
  v39[qword_10094D6D8] = 0;
  v53 = *&v39[qword_10094D6C0];
  *(v53 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v54 = *&v39[qword_10094D6B8];
  v130 = v46;
  sub_1001E44C4(v44, v46);
  v55 = sub_100766EAC();
  v56 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v57 = *&v54[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v51 != 4 || (v55 & 1) != 0)
  {
    v58 = [v57 text];
    if (v58)
    {
      v59 = v58;
      sub_10076FF9C();
    }

    v60 = sub_10077002C();
    v61 = v60 & 1;

    if (v61 == [*&v54[v56] isHidden] || (v54[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v54[v56] setHidden:v61];
    }

    else
    {
      if ((v60 & 1) == 0)
      {
        [*&v54[v56] setAlpha:0.0];
        v126 = objc_opt_self();
        [v126 inheritedAnimationDuration];
        v63 = v62;
        v64 = swift_allocObject();
        *(v64 + 16) = v54;
        v155 = sub_100138CF0;
        v156 = v64;
        aBlock = _NSConcreteStackBlock;
        v152 = 1107296256;
        v153 = sub_10009AEDC;
        v154 = &unk_100899A88;
        v125 = _Block_copy(&aBlock);
        v65 = v54;

        v66 = swift_allocObject();
        *(v66 + 16) = v65;
        v155 = sub_100138CFC;
        v156 = v66;
        aBlock = _NSConcreteStackBlock;
        v152 = 1107296256;
        v153 = sub_1000513F0;
        v154 = &unk_100899AD8;
        v67 = _Block_copy(&aBlock);
        v68 = v65;

        v69 = v125;
        [v126 animateWithDuration:0 delay:v125 options:v67 animations:v63 completion:0.0];
        _Block_release(v67);
        _Block_release(v69);
      }

      [*&v54[v56] setHidden:v60 & 1];
      v54[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_64:
      [v54 setNeedsLayout];
    }
  }

  else
  {
    if ([v57 isHidden] & 1) == 0 && (v54[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning])
    {
      [*&v54[v56] setHidden:1];
      v54[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      goto LABEL_64;
    }

    [*&v54[v56] setHidden:1];
  }

  v70 = &v39[qword_10094D6E0];
  *v70 = sub_1000082CC;
  v70[1] = 0;
  v70[2] = v52;
  v70[3] = 0;
  v70[4] = v131;
  v70[5] = 0;
  v70[6] = v132;
  v70[7] = 0;
  v70[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v70[9] = 0;
  v70[10] = v133;
  v70[11] = 0;

  sub_1001EDE3C();
  v11 = v148;
  if (v140)
  {
    if (v149 == 4)
    {
      sub_1001EFAF8();
    }

    else
    {
      sub_1001EFB1C();
    }

    v71 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
    v72 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    v73 = objc_allocWithZone(NSAttributedString);
    v74 = v72;
    v75 = sub_10076FF6C();
    type metadata accessor for Key(0);
    sub_10055F9A8(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
    isa = sub_10076FE3C().super.isa;

    v77 = [v73 initWithString:v75 attributes:isa];

    [v74 setAttributedText:v77];
    [*(v53 + v71) setAdjustsFontSizeToFitWidth:0];
    [*(v53 + v71) setMinimumScaleFactor:0.0];
    [*(v53 + v71) setAttributedText:0];
    if (v142 && v39[qword_10094D6B0] == 4)
    {
      v11 = v148;
      if (v149 == 4)
      {
        v78 = v134;
        v79 = v140;
        v80 = v127;
        v81 = v142;
      }

      else
      {
        v78 = v127;
        v79 = v142;
        v80 = v134;
        v81 = v140;
      }

      sub_1001E45BC(v78, v79, v80, v81);
    }

    else
    {
      sub_1001E44C4(v134, v140);
      v11 = v148;
    }
  }

  v82 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v83 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v84 = [v83 text];
  if (v84 || (v84 = [*(v53 + v82) attributedText]) != 0)
  {
    v6 = v147;

    v85 = 0;
  }

  else
  {
    v85 = 1;
    v6 = v147;
  }

  v86 = v149;
  [v83 setHidden:v85];

  [v39 setNeedsLayout];
  v87 = *&v39[qword_10094D6C8];
  [v87 setImage:0];
  [v87 setHidden:1];
  if (v86 == 4 || (sub_100766E8C() & 1) != 0 || !v11)
  {
    v90 = *&v39[qword_10094D6D0];
    v91 = &v90[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    if (v11)
    {
      v89 = 1;
      goto LABEL_88;
    }

    v93 = v92;
    v89 = 1;
  }

  else
  {
    v88 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v88 = v128 & 0xFFFFFFFFFFFFLL;
    }

    v89 = v88 == 0;
    v90 = *&v39[qword_10094D6D0];
    v91 = &v90[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
LABEL_88:
    v93 = v92;
    v11 = sub_10076FF6C();
  }

  [v93 setText:v11];

  v94 = [*v91 isHidden];
  v95 = v145;
  if (v89 == v94 || (v90[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v91 setHidden:v89];
  }

  else
  {
    if (!v89)
    {
      [*v91 setAlpha:0.0];
      v96 = objc_opt_self();
      [v96 inheritedAnimationDuration];
      v98 = v97;
      v99 = swift_allocObject();
      *(v99 + 16) = v90;
      v155 = sub_100138CF0;
      v156 = v99;
      aBlock = _NSConcreteStackBlock;
      v152 = 1107296256;
      v153 = sub_10009AEDC;
      v154 = &unk_1008999E8;
      v11 = _Block_copy(&aBlock);
      v100 = v90;

      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      v155 = sub_100138CFC;
      v156 = v101;
      aBlock = _NSConcreteStackBlock;
      v152 = 1107296256;
      v6 = v147;
      v153 = sub_1000513F0;
      v154 = &unk_100899A38;
      v102 = _Block_copy(&aBlock);
      v103 = v100;
      v95 = v145;

      [v96 animateWithDuration:0 delay:v11 options:v102 animations:v98 completion:0.0];
      _Block_release(v102);
      _Block_release(v11);
    }

    [*v91 setHidden:v89];
    v90[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v90 setNeedsLayout];
  }

  v104 = v141;
  sub_1001EE35C(v95, v129 & 1);
  [v39 setNeedsLayout];

  (*(v138 + 8))(v150, v139);
  (*(v136 + 8))(v143, v137);
  sub_100550978();
  v105 = &v39[qword_10094D6A0];
  *v105 = 0x4000000000000000;
  *(v105 + 1) = 0;
  *(v105 + 2) = 0;
  *(v105 + 3) = 0x4018000000000000;
  *(v105 + 4) = 0;
  v105[40] = 1;
  [v39 setNeedsLayout];

  (*(v144 + 8))(v95, v104);
LABEL_97:
  if (*(v6 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    return;
  }

  v106 = sub_10076471C();
  v107 = v106;
  v108 = v106 >> 62;
  if (v106 >> 62)
  {
    if (v106 < 0)
    {
      v111 = v106;
    }

    else
    {
      v111 = v106 & 0xFFFFFFFFFFFFFF8;
    }

    v112 = sub_10077158C();
    if (sub_10077158C() < 0)
    {
      __break(1u);
      goto LABEL_134;
    }

    if (v112 >= 6)
    {
      v123 = 6;
    }

    else
    {
      v123 = v112;
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      v110 = v123;
    }

    else
    {
      v110 = 6;
    }

    if (sub_10077158C() < v110)
    {
      goto LABEL_143;
    }

LABEL_103:
    if ((v107 & 0xC000000000000001) != 0 && v110)
    {
      sub_10076BC0C();

      sub_10077147C(0);
      if (v110 != 1)
      {
        sub_10077147C(1);
        if (v110 != 2)
        {
          sub_10077147C(2);
          if (v110 != 3)
          {
            sub_10077147C(3);
            if (v110 != 4)
            {
              sub_10077147C(4);
              if (v110 != 5)
              {
                sub_10077147C(5);
              }
            }
          }
        }
      }
    }

    else
    {
    }

    if (v108)
    {
      v111 = sub_10077159C();
      v11 = v113;
      v39 = v114;
      v112 = v115;

      if (v112)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v39 = 0;
      v111 = v107 & 0xFFFFFFFFFFFFFF8;
      v11 = (v107 & 0xFFFFFFFFFFFFFF8) + 32;
      v112 = (2 * v110) | 1;
      if (v112)
      {
LABEL_117:
        sub_10077169C();
        swift_unknownObjectRetain_n();
        v118 = swift_dynamicCastClass();
        if (!v118)
        {
          swift_unknownObjectRelease();
          v118 = _swiftEmptyArrayStorage;
        }

        v119 = v118[2];

        if (!__OFSUB__(v112 >> 1, v39))
        {
          if (v119 == (v112 >> 1) - v39)
          {
            v117 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v117)
            {
              goto LABEL_124;
            }

            v117 = _swiftEmptyArrayStorage;
LABEL_123:
            swift_unknownObjectRelease();
LABEL_124:
            v120 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
            if (v120)
            {
              sub_100760C4C();
              sub_10076F64C();
              v121 = v120;
              v122 = v135;
              sub_10076FC1C();
              sub_10027C09C(v117, aBlock, v122);
            }

            else
            {
            }

            return;
          }

          goto LABEL_135;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        swift_unknownObjectRelease_n();
      }
    }

    sub_1002348D4(v111, v11, v39, v112);
    v117 = v116;
    goto LABEL_123;
  }

  v109 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v109 >= 6)
  {
    v110 = 6;
  }

  else
  {
    v110 = v109;
  }

  if (v109 >= v110)
  {
    goto LABEL_103;
  }

LABEL_143:
  __break(1u);
}

void sub_100557E64()
{
  sub_1003DC268();
  v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if ((v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0 && v0[*v1] == 6 && (v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView]) != 0)
  {
    v3 = v2;
    v4 = [v0 contentView];
    sub_1001EEC4C();
    if (v5)
    {
      v7 = sub_10076FF6C();
    }

    else
    {
      v7 = 0;
    }

    [v4 setAccessibilityLabel:v7];
  }

  else
  {
    v4 = [v0 contentView];
    sub_1001EEC4C();
    if (v6)
    {
      v7 = sub_10076FF6C();
    }

    else
    {
      v7 = 0;
    }

    [v4 setAccessibilityLabel:v7];
  }
}

void sub_100557FC0(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  v18 = &qword_10095D000;
  v57 = a3;
  if ((a3 & 1) == 0)
  {
    v19 = swift_getObjectType();
    (*(a2 + 112))(v19, a2);
    v20 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    v56 = ObjectType;
    sub_10003837C(v17, &v4[v20], &unk_1009434A0, &unk_100787B90);
    swift_endAccess();
    v21 = *(*&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
    sub_100016E2C(&v4[v20], v14, &unk_1009434A0, &unk_100787B90);
    v22 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    v23 = v21;
    v24 = v21 + v22;
    v18 = &qword_10095D000;
    sub_10003837C(v14, v24, &unk_1009434A0, &unk_100787B90);
    swift_endAccess();

    v4[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(v19, a2);
    sub_10055C1D0();
    v25 = (*(a2 + 136))(v19, a2);
    sub_1003DC6B0(v25);
  }

  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    *&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_todayCard] = *(v26 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_todayCard);
    v56 = a1;

    v28 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView;
    v29 = v18[78];
    v55 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
    v30 = *&v55[v29];
    v31 = *(*&v27[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + v29);
    v32 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100016E2C(&v4[v32], v11, &unk_1009434A0, &unk_100787B90);
    v33 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (v4[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v33 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    v34 = v4[*v33];
    v35 = v30;
    v36 = v31;
    v37 = v57;
    sub_100276360(v36, v57 & 1, v11, v34);

    sub_10000CFBC(v11, &unk_1009434A0, &unk_100787B90);
    if (v37)
    {
      sub_100558524(v27);
    }

    else
    {
      v38 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView];
      if (v38)
      {
        v39 = v38;
        sub_10076C66C();
      }

      swift_unknownObjectWeakAssign();
      v40 = *&v27[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
      sub_1001EFCF0(v40);

      v41 = *&v27[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer];
      sub_10027C14C(v41);

      [*&v27[v28] frame];
      v42 = v55;
      [v55 setFrame:?];
      [v42 setHidden:{objc_msgSend(*&v27[v28], "isHidden")}];
      v43 = *(*&v27[v28] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView);
      v44 = *&v43[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_style];
      v45 = *&v43[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_style + 8];
      v46 = *&v43[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] == 2;

      sub_10055BB38(v44, v45, v46, [v43 isHidden] ^ 1);

      [v42 setNeedsLayout];
      v47 = *&v27[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
      if (v47)
      {
        v48 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
        if (v48)
        {
          v49 = v47;
          v50 = v48;
          sub_1001EFCF0(v49);
        }
      }

      v51 = *&v27[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
      if (v51)
      {
        v52 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
        if (v52)
        {
          v53 = v51;
          v54 = v52;
          sub_10027C14C(v53);
        }
      }

      sub_100557E64();
    }

    [v4 setNeedsLayout];
  }
}

char *sub_100558524(char *result)
{
  if ((*(*(*&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) & 1) == 0)
  {
    v2 = v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (v1[*v2] == 6)
    {
      v3 = result;
      v4 = [v1 contentView];
      v5 = [v3 contentView];
      v6 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView;
      v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
      v8 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView;
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView;
      }

      v9 = *&v1[v8];
      if (v9)
      {
        [v9 removeFromSuperview];
      }

      if (v7)
      {
        v10 = *&v1[v8];
        *&v1[v8] = v7;
        v11 = v7;

        if (v4)
        {
          [v4 addSubview:v11];
        }
      }

      if (v9)
      {
        v12 = *&v3[v6];
        *&v3[v6] = v9;
        v13 = v9;

        if (!v5)
        {
          v5 = v4;
LABEL_19:

          v15 = [v1 contentView];
          v64 = v3;
          v65 = [v3 contentView];
          v16 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView;
          v17 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView];
          v18 = v15;
          v19 = v17;
          [v19 removeFromSuperview];
          v20 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView;
          v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView];
          v22 = v21;
          [v22 removeFromSuperview];
          if (v17)
          {
            v23 = *&v1[v20];
            *&v1[v20] = v17;
            v24 = v1;
            v25 = v16;
            v26 = v19;

            v27 = v26;
            v16 = v25;
            [v18 addSubview:v27];
          }

          if (v21)
          {
            v28 = *&v64[v16];
            *&v64[v16] = v21;
            v29 = v64;
            v30 = v22;

            [v65 addSubview:v30];
          }

          v31 = *&v1[v20];
          v66 = v16;
          v32 = *&v64[v16];
          v33 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
          v34 = *&v64[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView];
          if (v34)
          {
            v35 = v31;
            v36 = v34;
            v37 = v32;
            [v36 removeFromSuperview];
            v38 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
            v39 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView];
            if (!v39)
            {
LABEL_26:
              if (v34)
              {
                v40 = *&v1[v38];
                *&v1[v38] = v34;
                v41 = v1;
                v42 = v34;

                if (v31)
                {
                  [v31 addSubview:v42];
                }
              }

              if (v39)
              {
                v43 = *&v64[v33];
                *&v64[v33] = v39;
                v44 = v64;
                v45 = v39;

                if (!v32)
                {
                  goto LABEL_33;
                }

                v46 = v45;
                [v32 addSubview:v46];
              }

              v45 = v32;
LABEL_33:

              v47 = [v1 contentView];
              v48 = *&v64[v66];
              v49 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView;
              v50 = *&v64[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
              if (v50)
              {
                v51 = v48;
                [v50 removeFromSuperview];
                v52 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView;
                v53 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
                if (!v53)
                {
LABEL_36:
                  if (v50)
                  {
                    v54 = *&v1[v52];
                    *&v1[v52] = v50;
                    v55 = v1;
                    v56 = v50;

                    if (v47)
                    {
                      [v47 addSubview:v56];
                    }
                  }

                  if (v53)
                  {
                    v57 = *&v64[v49];
                    *&v64[v49] = v53;
                    v58 = v64;
                    v59 = v53;

                    if (!v48)
                    {

                      goto LABEL_48;
                    }

                    v60 = v59;
                    [v48 addSubview:v60];
                  }

                  v47 = v48;
LABEL_48:

                  [v64 setNeedsLayout];

                  return [v1 setNeedsLayout];
                }
              }

              else
              {
                v63 = v48;
                v52 = v49;
                v53 = *&v1[v49];
                if (!v53)
                {
                  goto LABEL_36;
                }
              }

              [v53 removeFromSuperview];
              goto LABEL_36;
            }
          }

          else
          {
            v61 = v31;
            v62 = v32;
            v38 = v33;
            v39 = *&v1[v33];
            if (!v39)
            {
              goto LABEL_26;
            }
          }

          [v39 removeFromSuperview];
          goto LABEL_26;
        }

        v14 = v13;
        [v5 addSubview:v14];
      }

      v13 = v4;
      goto LABEL_19;
    }
  }

  return result;
}

void sub_100558B1C(void (*a1)(void), int a2, char a3, void *a4, void *a5, void (*a6)(char *, char *, uint64_t), __n128 a7)
{
  v177 = a6;
  v187 = a5;
  v185 = a4;
  LODWORD(v186) = a2;
  v9 = sub_10076D7FC();
  v184 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v160 - v13);
  __chkstk_darwin(v15);
  v183 = &v160 - v16;
  __chkstk_darwin(v17);
  v180 = &v160 - v18;
  __chkstk_darwin(v19);
  v179 = (&v160 - v20);
  __chkstk_darwin(v21);
  v174 = &v160 - v22;
  __chkstk_darwin(v23);
  v182 = &v160 - v24;
  v25 = sub_100766EBC();
  v175 = *(v25 - 8);
  v176 = v25;
  __chkstk_darwin(v25);
  v181 = &v160 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10076C38C();
  v178 = *(v27 - 8);
  __chkstk_darwin(v27);
  v171 = (&v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v29 - 8);
  v172 = &v160 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v173 = &v160 - v32;
  v33 = sub_10000A5D4(&unk_10094FD50, &unk_100788D10);
  __chkstk_darwin(v33 - 8);
  v35 = &v160 - v34;
  v36 = sub_100770BFC();
  __chkstk_darwin(v36);
  v39 = &v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v168 = v37;
    v169 = a1;
    v40 = sub_10076C7FC();
    v41 = sub_10076472C();
    v42 = swift_dynamicCastClass();
    if (v42)
    {
      v160 = v27;
      v162 = v14;
      v164 = v11;
      v170 = v9;
      v167 = v40;
      v189[0] = v42;
      v43 = v42;
      v44 = sub_1007684EC();
      v163 = v43;
      v189[0] = v43;
      v161 = v41;
      v165 = sub_1007684FC();
      v166 = v44;
      v45 = (v44 | v165) != 0;
      if (v177)
      {
        v46 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v47 = sub_100770BDC();
        v48 = *(v47 - 8);
        (*(v48 + 104))(v35, v46, v47);
        (*(v48 + 56))(v35, 0, 1, v47);
        sub_100770BEC();
        sub_10000CFBC(v35, &unk_10094FD50, &unk_100788D10);
        sub_100770BBC();
        v50 = v49;
        (*(v168 + 8))(v39, v36);
        v51 = v186;
        v52 = v185;
      }

      else
      {
        v52 = v185;
        sub_10076C25C();
        v50 = v56;
        v51 = v186;
      }

      v57 = v178;
      if (v45)
      {
        v58 = v187;
      }

      else
      {
        if (v51 == 6)
        {
          sub_10055BFB8(v52, v187, v50);
          left = v59;
          right = v61;
        }

        else
        {
          v63 = v173;
          v64 = v160;
          v178[2](v173, v52, v160);
          (v57[7])(v63, 0, 1, v64);
          v65 = v63;
          v66 = v172;
          sub_100016E2C(v65, v172, &unk_1009434A0, &unk_100787B90);
          if ((v57[6])(v66, 1, v64) == 1)
          {
            sub_10000CFBC(v66, &unk_1009434A0, &unk_100787B90);
            left = UIEdgeInsetsZero.left;
            right = UIEdgeInsetsZero.right;
            v67 = v187;
          }

          else
          {
            v68 = v171;
            (v57)[4](v171, v66, v64);
            sub_10076C31C();
            sub_10076C31C();
            v67 = v187;
            [v187 layoutDirection];
            sub_1007708DC();
            left = v69;
            right = v70;
            (v57[1])(v68, v64);
          }

          sub_10000CFBC(v173, &unk_1009434A0, &unk_100787B90);
          if ((sub_1007706EC() & 1) == 0)
          {
            if (qword_100941220 != -1)
            {
              swift_once();
            }

            v71 = sub_10076D9AC();
            sub_10000A61C(v71, qword_1009A23E0);
            sub_10076DEDC();
            sub_10000A5D4(&unk_100942870, &qword_100784460);
            v72 = swift_allocObject();
            *(v72 + 16) = xmmword_1007841E0;
            *(v72 + 32) = v67;
            v73 = v67;
            v74 = sub_10076DEEC();
            sub_10076D3EC();

            v51 = v186;
          }
        }

        sub_10076C22C();
        v76 = v75;
        sub_10076C82C();
        v78 = v77;
        v79 = sub_10076C81C();
        v185 = v80;
        sub_10076C7FC();
        if (swift_dynamicCastClass())
        {
          v81 = sub_1007646FC();
          v83 = v82;
        }

        else
        {

          v81 = 0;
          v83 = 0;
        }

        v84 = sub_100342B64;
        v85 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v86 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v87 = sub_1007333BC;
        v161 = v81;
        v168 = v79;
        if (v51 != 6)
        {
          if (v51 == 4)
          {
            v84 = sub_100342B64;
            v85 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
            v87 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
            v86 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
          }

          else
          {
            v84 = sub_10073304C;
            v85 = sub_100733208;
            v86 = sub_1007331DC;
            v87 = sub_100733020;
          }
        }

        v201[0] = sub_1000082CC;
        v201[1] = 0;
        v201[2] = v87;
        v201[3] = 0;
        v201[4] = v86;
        v201[5] = 0;
        v171 = v85;
        v201[6] = v85;
        v201[7] = 0;
        v201[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v201[9] = 0;
        v169 = v84;
        v201[10] = v84;
        v201[11] = 0;
        v88 = sub_10076C77C();
        __chkstk_darwin(v88);
        *(&v160 - 2) = v201;
        v89 = v187;
        v90 = sub_10077073C();
        v91 = [v89 preferredContentSizeCategory];
        sub_1000082CC();

        sub_10076D7EC();
        if (qword_10093FA50 != -1)
        {
          swift_once();
        }

        v92 = qword_10094D648;
        v178 = objc_opt_self();
        v172 = v90;
        v93 = [v178 preferredFontDescriptorWithTextStyle:v92 compatibleWithTraitCollection:v90];
        v94 = [v93 fontDescriptorWithSymbolicTraits:2];
        v95 = objc_opt_self();
        if (v94)
        {
          v96 = [v95 fontWithDescriptor:v94 size:0.0];

          v93 = v94;
        }

        else
        {
          v96 = [v95 fontWithDescriptor:v93 size:0.0];
        }

        v186 = v83;

        v97 = v174;
        v98 = v179;
        sub_10076D7DC();

        v99 = *(v184 + 8);
        v100 = v170;
        v99(v98, v170);
        sub_10076D7AC();
        v99(v97, v100);
        v101 = sub_1000FC220(_swiftEmptyArrayStorage);
        if (qword_10093FA58 != -1)
        {
          swift_once();
        }

        v102 = qword_10094D650;
        v179 = type metadata accessor for TodayTransitioningLabelView();
        objc_allocWithZone(v179);
        v103 = sub_1001E2CBC(v101, v102);
        v104 = *&v103[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
        v105 = v180;
        v173 = v78;
        v106 = v104;
        if (v78)
        {
          v107 = sub_10076FF6C();
        }

        else
        {
          v107 = 0;
        }

        [v104 setText:v107];

        v174 = v103;
        v108 = *(v184 + 16);
        v109 = v170;
        v184 += 16;
        v177 = v108;
        v108(v105, v182, v170);
        sub_100770E8C();
        if (qword_10093FA60 != -1)
        {
          swift_once();
        }

        v110 = qword_10094D658;
        v111 = [v187 preferredContentSizeCategory];
        v169();

        __chkstk_darwin(v112);
        *(&v160 - 2) = v201;
        v113 = sub_10077073C();
        v114 = v162;
        sub_10076D7EC();
        v169 = v113;
        v115 = [v178 preferredFontDescriptorWithTextStyle:v110 compatibleWithTraitCollection:v113];
        v116 = objc_opt_self();
        v117 = [v116 fontWithDescriptor:v115 size:0.0];

        sub_10076D7DC();
        v99(v114, v109);
        sub_10076D7AC();
        v99(v105, v109);
        v118 = sub_1000FC220(_swiftEmptyArrayStorage);
        if (qword_10093FA68 != -1)
        {
          swift_once();
        }

        v119 = qword_10094D660;
        v120 = objc_allocWithZone(v179);
        v121 = sub_1001E2CBC(v118, v119);
        v122 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
        v123 = *&v121[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
        v124 = v185;
        if (v185)
        {
          v125 = v123;
          v124 = sub_10076FF6C();
        }

        else
        {
          v126 = v123;
        }

        [v123 setText:v124];

        v168 = v122;
        v127 = v180;
        v128 = v170;
        v177(v180, v183, v170);
        v129 = sub_100770E8C();
        __chkstk_darwin(v129);
        *(&v160 - 2) = v201;
        v130 = v187;
        v131 = sub_10077073C();
        v132 = v162;
        sub_10076D7EC();
        if (qword_10093FA78 != -1)
        {
          swift_once();
        }

        v133 = v76 - left;
        v134 = v178;
        v178 = v131;
        v135 = [v134 preferredFontDescriptorWithTextStyle:qword_10094D670 compatibleWithTraitCollection:v131];
        v136 = [v116 fontWithDescriptor:v135 size:0.0];

        sub_10076D7DC();
        v99(v132, v128);
        v137 = [v130 preferredContentSizeCategory];
        v171();

        sub_10076D7AC();
        v99(v127, v128);
        v138 = sub_1000FC220(_swiftEmptyArrayStorage);
        if (qword_10093FA80 != -1)
        {
          swift_once();
        }

        v139 = v133 - right;
        v140 = qword_10094D678;
        v141 = objc_allocWithZone(v179);
        v142 = sub_1001E2CBC(v138, v140);
        v143 = *&v142[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
        v144 = sub_100766E8C();
        v145 = 0;
        v146 = v168;
        if ((v144 & 1) == 0 && v186)
        {
          v145 = sub_10076FF6C();
        }

        [v143 setText:v145];

        v147 = v164;
        v148 = v170;
        v177(v180, v164, v170);
        sub_100770E8C();
        v149 = *&v121[v146];
        v194 = sub_1007626BC();
        v195 = &protocol witness table for UILabel;
        v192 = v121;
        v193 = v149;
        v196 = 0u;
        v197 = 0u;
        v198 = 0;
        v199 = v142;
        v189[0] = 0x4000000000000000;
        v189[1] = 0;
        v189[2] = 0;
        v189[3] = 0x4018000000000000;
        v189[4] = 0;
        v190 = 1;
        v191 = v174;
        v200 = 0;
        v150 = v149;
        v151.n128_f64[0] = v139;
        v58 = v187;
        sub_10020707C(v187, v188, v151, 1.79769313e308);
        sub_10000CF78(v188, v188[3]);
        sub_10076E0FC();

        v99(v147, v148);
        v99(v183, v148);
        v99(v182, v148);
        (*(v175 + 8))(v181, v176);
        sub_10055F634(v189);
        sub_10000CD74(v188);
      }

      v152 = sub_10076471C();
      if (v152 >> 62)
      {
        v153 = sub_10077158C();
      }

      else
      {
        v153 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      type metadata accessor for TodayListCardLockupContainer();
      sub_10027B748(v153, v58);
      if ((sub_1007706EC() & 1) == 0)
      {
        if (qword_100941220 != -1)
        {
          swift_once();
        }

        v154 = sub_10076D9AC();
        sub_10000A61C(v154, qword_1009A23E0);
        sub_10076DEDC();
        sub_10000A5D4(&unk_100942870, &qword_100784460);
        v155 = swift_allocObject();
        *(v155 + 16) = xmmword_1007841E0;
        *(v155 + 32) = v58;
        v156 = v58;
        v157 = sub_10076DEEC();
        sub_10076D3EC();
      }

      v158 = [v58 preferredContentSizeCategory];
      sub_10077085C();

      sub_1007704EC();
      v159 = [v58 preferredContentSizeCategory];
      sub_10077085C();

      sub_1007704EC();
    }

    else
    {
    }
  }

  else
  {
    v53 = v186;
    v54 = v185;
    v55 = v187;

    sub_1005DE768(v53, v54, v55);
  }
}

void sub_10055A038()
{
  sub_1001ECBA4();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView);
  if (v1)
  {
    v2 = v1;
    sub_1001ECBA4();
  }
}

void sub_10055A0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v4 = sub_10076BF9C();
  __chkstk_darwin(v4 - 8);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076BD9C();
  __chkstk_darwin(v7 - 8);
  v77 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076BFFC();
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v76 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100952D60, &qword_10079C098);
  __chkstk_darwin(v11 - 8);
  v72 = v59 - v12;
  v80 = sub_10076BEDC();
  v75 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = v59 - v15;
  v16 = sub_10077164C();
  v69 = *(v16 - 8);
  __chkstk_darwin(v16);
  v67 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100766D4C();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076A75C();
  v65 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v59 - v24;
  v26 = sub_10076C38C();
  v70 = *(v26 - 8);
  v71 = v26;
  __chkstk_darwin(v26);
  v79 = v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C84C();
  sub_10055F9A8(&qword_100947150, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_10076332C();
  if (v83)
  {
    v62 = v9;
    v63 = v6;
    v28 = sub_10076C7FC();

    sub_10076472C();
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v30 = v29;
      v60 = v16;
      v64 = v28;
      v31 = sub_10076471C();
      v61 = a2;
      sub_10027CE2C(v31);

      type metadata accessor for TodayCardGridTracker();
      sub_10076F64C();
      sub_10076FC1C();
      v32 = v83;
      sub_1003B1704();
      LODWORD(v81) = v33;
      v83 = v30;
      swift_getKeyPath();
      sub_10076338C();

      v34 = v82;
      v35 = sub_1007684DC();

      if (v35)
      {
        v59[2] = v32;
        if (sub_10076470C())
        {
          v59[1] = v35;
          swift_getKeyPath();
          sub_10076338C();

          swift_getKeyPath();
          sub_10076338C();

          v59[0] = v83;
          v36 = v81;
          v37.n128_f64[0] = sub_1005B1CD8(v81);
          v38 = v65;
          v39 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
          v40 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
          if (v36 != 6)
          {
            v40 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
          }

          if (v36 != 4)
          {
            v39 = v40;
          }

          (*(v65 + 104))(v22, *v39, v20, v37);
          (*(v38 + 32))(v25, v22, v20);
          v41 = sub_1007701CC();

          (*(v38 + 8))(v25, v20);
          sub_10076A73C();
          if (v42)
          {
            sub_10076BEFC();
          }

          v43 = v80;
          v44 = v74;
          v45 = v75;
          v46 = v72;
          sub_10076A74C();
          sub_100766D1C();
          sub_100770ACC();
          sub_100770A8C();
          v47 = v69;
          v48 = v67;
          v49 = v60;
          (*(v69 + 104))(v67, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v60);
          sub_100770AAC();
          (*(v47 + 8))(v48, v49);
          (*(v66 + 8))(v19, v68);
          sub_10076A72C();
          v50 = *(v45 + 48);
          v51 = v50(v46, 1, v43);
          v81 = v41;
          if (v51 == 1)
          {
            sub_10076BEEC();
            v52 = v50(v46, 1, v43);
            v53 = v43;
            if (v52 != 1)
            {
              sub_10000CFBC(v46, &qword_100952D60, &qword_10079C098);
            }
          }

          else
          {
            (*(v45 + 32))(v44, v46, v43);
            v53 = v43;
          }

          v54 = v76;
          sub_10076BDAC();
          sub_10076C01C();
          v55 = v59[0];
          [v59[0] displayScale];
          (*(v45 + 16))(v73, v44, v53);
          sub_10076BFDC();
          sub_10076BFEC();
          sub_100764B3C();
          swift_allocObject();
          v56 = sub_100764B1C();

          (*(v78 + 8))(v54, v62);
          (*(v45 + 8))(v44, v80);
          (*(v70 + 8))(v79, v71);
          sub_10000A5D4(&unk_100942870, &qword_100784460);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_1007841E0;
          *(v57 + 32) = v56;

          v58._rawValue = v57;
          sub_100760BAC(v58);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_10055AB60(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  sub_100276A68(a1, a3);
}

void sub_10055ABDC()
{
  v0 = sub_10076688C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007668CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[qword_1009602F0];
    if (v9)
    {
      v14 = Strong;
      v10 = v9;
      [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
      v11 = [v10 isMuted];
      [v14 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
      (*(v5 + 104))(v7, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v4);
      v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      if (!v11)
      {
        v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
      }

      (*(v1 + 104))(v3, *v12, v0);
      sub_1005EFAB8(v7, v3);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }
  }
}

char *sub_10055AF3C()
{
  v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if ((v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0 && v0[*v1] == 6 && (v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer]) != 0)
  {
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007841E0;
    v4 = v2;
    *(inited + 32) = [v0 contentView];
    v5 = [v4 subviews];
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v6 = sub_1007701BC();

    sub_1000F9270(v6);
    v7 = sub_10016E820(inited);
  }

  else
  {
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_1007841E0;
    *(v8 + 32) = [v0 contentView];
    v9 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer] subviews];
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v10 = sub_1007701BC();

    sub_1000F9270(v10);
    v7 = sub_10016E820(v8);
  }

  return v7;
}

void sub_10055B1E4()
{

  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_cardStyle, &qword_10094A450, &unk_1007AB170);
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton);
}

uint64_t type metadata accessor for ListTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_10095D258;
  if (!qword_10095D258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10055B424(uint64_t a1)
{
  sub_10055B4F0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10055B4F0(uint64_t a1)
{
  if (!qword_10095D268)
  {
    sub_10076C7EC();
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_10095D268);
    }
  }
}

void sub_10055B548(void *a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v4 = v3;
  sub_10056A2D0(Strong, v5);
}

uint64_t (*sub_10055B5F0(uint64_t **a1))()
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
  v2[4] = sub_100551994(v2);
  return sub_100019A4C;
}

uint64_t sub_10055B664()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10055F9A8(&qword_10095D2B8, type metadata accessor for ListTodayCardCollectionViewCell, &unk_1007AB11C);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10055B6D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10055F9A8(&qword_10095D2B8, type metadata accessor for ListTodayCardCollectionViewCell, &unk_1007AB11C);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10055B764(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_10055F9A8(&qword_10095D2B8, type metadata accessor for ListTodayCardCollectionViewCell, &unk_1007AB11C);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

char *sub_10055B824()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  type metadata accessor for StoryCardMediaView(0);
  *&v1[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView;
  v4 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *&v1[v3] = sub_1000E4B54(&off_100882C28);
  v9.receiver = v1;
  v9.super_class = _s20ProductPageExtension10HeaderViewCMa_0();
  v5 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = *&v5[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView];
  v7 = v5;
  [v7 addSubview:v6];
  [v7 addSubview:*&v7[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView]];
  [v7 setClipsToBounds:1];

  return v7;
}

void sub_10055BA04()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = _s20ProductPageExtension10HeaderViewCMa_0();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView];
  [v1 bounds];
  [v2 setFrame:?];
  sub_10055BC68();
  v3 = [v1 traitCollection];
  v4 = sub_10077070C();

  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView];
  v6 = 0.174532925;
  if (v4)
  {
    v6 = -0.174532925;
  }

  v7 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle);
  *(v5 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle) = v6;
  if (v6 != v7)
  {
    sub_1000E53E0();
  }
}

id sub_10055BB38(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView);

  sub_1000E5778(a1, a2);
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v9[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] = v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView;
  v13 = *&v9[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView];

  sub_100016F40(0, &qword_1009492C0, UIVisualEffect_ptr);
  isa = sub_1007701AC().super.isa;

  [v13 setBackgroundEffects:isa];

  [*&v9[v12] setOverrideUserInterfaceStyle:*&v9[v11]];

  return [v9 setHidden:(a4 & 1) == 0];
}

void sub_10055BC68()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView];
  [v2 frame];
  v3 = CGRectGetHeight(v9) * 0.5 * 0.176326981;
  [v2 frame];
  v4 = ceil(v3 + CGRectGetHeight(v10));
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView];
  [v2 frame];
  MinX = CGRectGetMinX(v11);
  [v2 frame];
  v7 = CGRectGetHeight(v12) + -145.0;
  if (v7 < 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  [v1 bounds];
  [v5 setFrame:{MinX, v8, CGRectGetWidth(v13), v4}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientStartY] = v3 / v4;
  sub_1000E53E0();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientEndY] = (v3 + 145.0) / v4;
  sub_1000E53E0();
}

id sub_10055BDDC()
{
  v2.receiver = v0;
  v2.super_class = _s20ProductPageExtension10HeaderViewCMa_0();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10055BE88(uint64_t a1)
{
  result = sub_10055F9A8(&unk_100956340, type metadata accessor for ListTodayCardCollectionViewCell, &unk_1007A178C);
  *(a1 + 8) = result;
  return result;
}

double sub_10055BFB8(uint64_t a1, void *a2, double a3)
{
  v6 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1003DF334(v8, a2);
  sub_10000CFBC(v8, &unk_1009434A0, &unk_100787B90);
  if ((sub_1007706EC() & 1) == 0)
  {
    if (qword_100941220 != -1)
    {
      swift_once();
    }

    v11 = sub_10076D9AC();
    sub_10000A61C(v11, qword_1009A23E0);
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007841E0;
    *(v12 + 32) = a2;
    v13 = a2;
    v14 = sub_10076DEEC();
    sub_10076D3EC();
    a3 = v15;
  }

  return a3 + 20.0;
}

id sub_10055C1D0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
  v5 = v1[v2];
  *(v4 + qword_10094D6B0) = v5;
  if (v5 == 7)
  {
    v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = 7;
    v8 = &qword_10094D6B0;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory;
    *(*(v4 + qword_10094D6B8) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10094D6C0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10094D6D0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
    if (!v9)
    {
      goto LABEL_9;
    }

    *(v9 + qword_10094D6B0) = v5;
    *(*(v9 + qword_10094D6B8) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v9 + qword_10094D6C0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    v6 = *(v9 + qword_10094D6D0);
    v7 = v5;
  }

  *(v6 + *v8) = v7;
LABEL_9:
  v10 = *(*&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  v10[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory] = v5;
  v11 = v10;
  sub_100275F40();

  return [v1 setNeedsLayout];
}

uint64_t sub_10055C378(char *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v192 = a5;
  v225 = a4;
  v226 = a3;
  v228 = a2;
  v6 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v6 - 8);
  v185 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v187 = &v184 - v9;
  v10 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v10 - 8);
  v190 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v189 = &v184 - v13;
  v230 = sub_10075DB7C();
  v229 = *(v230 - 8);
  __chkstk_darwin(v230);
  v186 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_10000A5D4(&unk_100964140, &unk_1007869B0);
  __chkstk_darwin(v219);
  v231 = &v184 - v15;
  v16 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v16 - 8);
  v188 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v191 = &v184 - v19;
  __chkstk_darwin(v20);
  v220 = &v184 - v21;
  __chkstk_darwin(v22);
  v227 = &v184 - v23;
  v24 = sub_10076BF9C();
  __chkstk_darwin(v24 - 8);
  v218 = &v184 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10076BD9C();
  __chkstk_darwin(v26 - 8);
  v214 = &v184 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_10076BFFC();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v215 = &v184 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000A5D4(&qword_100952D60, &qword_10079C098);
  __chkstk_darwin(v29 - 8);
  v211 = &v184 - v30;
  v31 = sub_10076BEDC();
  v234 = *(v31 - 1);
  v235 = v31;
  __chkstk_darwin(v31);
  v212 = &v184 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v213 = &v184 - v34;
  v210 = sub_10077164C();
  v209 = *(v210 - 8);
  __chkstk_darwin(v210);
  v207 = &v184 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_100766D4C();
  v206 = *(v208 - 8);
  __chkstk_darwin(v208);
  v205 = &v184 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_10076A75C();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v201 = &v184 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v202 = &v184 - v39;
  v40 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v40 - 8);
  v200 = &v184 - v41;
  v197 = sub_10076121C();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v199 = &v184 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_10076481C();
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v239 = &v184 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10000A5D4(&qword_100952D68, &qword_10079E940);
  __chkstk_darwin(v44 - 8);
  v195 = &v184 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v193 = &v184 - v47;
  v48 = sub_1007611EC();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v198 = &v184 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v233 = &v184 - v52;
  __chkstk_darwin(v53);
  v194 = &v184 - v54;
  __chkstk_darwin(v55);
  v57 = &v184 - v56;
  __chkstk_darwin(v58);
  v238 = &v184 - v59;
  __chkstk_darwin(v60);
  v62 = &v184 - v61;
  __chkstk_darwin(v63);
  v65 = &v184 - v64;
  __chkstk_darwin(v66);
  v68 = &v184 - v67;
  __chkstk_darwin(v69);
  v71 = &v184 - v70;
  v241 = a1;
  sub_10076B7EC();
  sub_1007611BC();
  v232 = *(v49 + 16);
  v232(v62, v71, v48);
  sub_10055F9A8(&unk_1009603F0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  sub_10077125C();
  v72 = sub_10077127C();
  v237 = v71;
  if (v72)
  {
    v73 = *(v49 + 8);
    v73(v65, v48);
    v236 = v73;
    v73(v68, v48);
    v74 = 1;
    v75 = v193;
  }

  else
  {
    sub_10077128C();
    v236 = *(v49 + 8);
    v236(v68, v48);
    v75 = v193;
    (*(v49 + 32))(v193, v65, v48);
    v74 = 0;
  }

  v76 = *(v49 + 56);
  v76(v75, v74, 1, v48);
  sub_10000CFBC(v75, &qword_100952D68, &qword_10079E940);
  v77 = v238;
  sub_10076B82C();
  sub_1007611BC();
  v232(v62, v77, v48);
  v78 = v194;
  sub_10077125C();
  v79 = sub_10077127C();
  v221 = v49;
  if (v79)
  {
    v80 = v236;
    v236(v78, v48);
    v80(v57, v48);
    v81 = 1;
    v82 = v235;
    v83 = v195;
  }

  else
  {
    sub_10077128C();
    v236(v57, v48);
    v83 = v195;
    (*(v49 + 32))(v195, v78, v48);
    v81 = 0;
    v82 = v235;
  }

  v76(v83, v81, 1, v48);
  sub_10000CFBC(v83, &qword_100952D68, &qword_10079E940);
  (*(v196 + 104))(v199, enum case for VideoFillMode.scaleAspectFill(_:), v197);
  sub_10076B84C();
  sub_10076BEFC();
  v84 = v200;
  sub_10076D3AC();

  v85 = sub_10076D39C();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  v86 = v232;
  v232(v233, v237, v48);
  v86(v198, v77, v48);
  sub_10076B7FC();
  v87 = v240;
  sub_10076B7DC();
  sub_10076B83C();
  sub_1007647FC();
  sub_10076B84C();
  v88 = [v87 traitCollection];
  v89 = v226;
  v90.n128_f64[0] = sub_1005B1CD8(v226);
  v91 = v203;
  v92 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v93 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v89 != 6)
  {
    v93 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v89 != 4)
  {
    v92 = v93;
  }

  v94 = v201;
  v95 = v204;
  (*(v203 + 104))(v201, *v92, v204, v90);
  v96 = v202;
  (*(v91 + 32))(v202, v94, v95);
  v97 = sub_1007701CC();
  (*(v91 + 8))(v96, v95);
  sub_10076A73C();
  v224 = v48;
  if (v98)
  {
    sub_10076BEFC();
  }

  v99 = v211;
  v100 = v205;
  sub_10076A74C();
  sub_100766D1C();
  sub_100770ACC();
  sub_100770A8C();
  v101 = v209;
  v102 = v207;
  v103 = v210;
  (*(v209 + 104))(v207, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v210);
  sub_100770AAC();
  (*(v101 + 8))(v102, v103);
  (*(v206 + 8))(v100, v208);
  sub_10076A72C();
  v104 = v234;
  v105 = *(v234 + 48);
  v106 = v105(v99, 1, v82);
  v232 = v97;
  v107 = v88;
  if (v106 == 1)
  {
    v108 = v213;
    sub_10076BEEC();
    v109 = v108;
    v110 = v82;
    if (v105(v99, 1, v82) != 1)
    {
      sub_10000CFBC(v99, &qword_100952D60, &qword_10079C098);
    }
  }

  else
  {
    v109 = v213;
    (*(v104 + 32))(v213, v99, v82);
    v110 = v82;
  }

  v111 = v215;
  sub_10076BDAC();
  sub_10076C01C();
  [v107 displayScale];
  v112 = v234;
  (*(v234 + 16))(v212, v109, v110);
  sub_10076BFDC();
  sub_10076BFEC();
  sub_100764B3C();
  swift_allocObject();
  v233 = sub_100764B1C();

  (*(v216 + 8))(v111, v217);
  (*(v112 + 8))(v109, v235);
  v113 = *&v240[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  v234 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  v232 = v113;
  v114 = *(v113 + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  v115 = v227;
  sub_10076B85C();
  v116 = v229;
  v117 = *(v229 + 56);
  v118 = 1;
  v119 = v230;
  v117(v115, 0, 1, v230);
  v235 = v114;
  v218 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v121 = Strong;
    v122 = v220;
    (*(v116 + 16))(v220, Strong + qword_1009A2520, v119);

    v118 = 0;
  }

  else
  {
    v122 = v220;
  }

  v117(v122, v118, 1, v119);
  v123 = *(v219 + 48);
  v124 = v231;
  sub_100016E2C(v115, v231, &unk_1009435D0, &qword_100785850);
  v125 = v124;
  sub_100016E2C(v122, v124 + v123, &unk_1009435D0, &qword_100785850);
  v126 = *(v116 + 48);
  if (v126(v125, 1, v119) == 1)
  {
    sub_10000CFBC(v122, &unk_1009435D0, &qword_100785850);
    v127 = v231;
    sub_10000CFBC(v115, &unk_1009435D0, &qword_100785850);
    v128 = v126(v127 + v123, 1, v119);
    v129 = v224;
    if (v128 == 1)
    {
      sub_10000CFBC(v127, &unk_1009435D0, &qword_100785850);
      v130 = v232;
      goto LABEL_42;
    }
  }

  else
  {
    v131 = v191;
    sub_100016E2C(v125, v191, &unk_1009435D0, &qword_100785850);
    if (v126(v125 + v123, 1, v119) != 1)
    {
      v139 = v229;
      v140 = v125 + v123;
      v141 = v186;
      (*(v229 + 32))(v186, v140, v119);
      sub_10055F9A8(&qword_100944C38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v142 = v125;
      v143 = sub_10076FF1C();
      v144 = *(v139 + 8);
      v144(v141, v119);
      sub_10000CFBC(v122, &unk_1009435D0, &qword_100785850);
      sub_10000CFBC(v227, &unk_1009435D0, &qword_100785850);
      v144(v191, v119);
      sub_10000CFBC(v142, &unk_1009435D0, &qword_100785850);
      v129 = v224;
      v130 = v232;
      if (v143)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    }

    sub_10000CFBC(v122, &unk_1009435D0, &qword_100785850);
    v127 = v231;
    sub_10000CFBC(v115, &unk_1009435D0, &qword_100785850);
    (*(v229 + 8))(v131, v119);
    v129 = v224;
  }

  sub_10000CFBC(v127, &unk_100964140, &unk_1007869B0);
  v130 = v232;
LABEL_26:
  v132 = v130;
  sub_100762F0C();
  v232 = sub_10076F64C();
  sub_10076FC1C();
  v133 = v242;
  sub_10076B7CC();
  v134 = v188;
  sub_10076B85C();
  v117(v134, 0, 1, v230);
  v135 = v189;
  sub_10076B81C();
  v136 = v190;
  sub_10076B80C();
  v137 = type metadata accessor for TodayCardVideoView(0);
  sub_10055F9A8(&qword_10094F540, type metadata accessor for TodayCardVideoView, &unk_1007AF120);
  v231 = v137;
  v138 = sub_100762EEC();
  sub_10000CFBC(v136, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v135, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v134, &unk_1009435D0, &qword_100785850);
  sub_10000CFBC(&v242, &qword_100943310, &unk_100784150);
  if (!v138)
  {
LABEL_31:

    v130 = v132;
    goto LABEL_42;
  }

  v230 = v133;
  if (*(v138 + qword_10099F2A0))
  {

    goto LABEL_31;
  }

  v145 = v235;
  *(v138 + qword_10099F298) = v235[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory];
  sub_10039DEFC();
  swift_unknownObjectWeakAssign();
  v146 = v218;
  v147 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v148 = v138;
  sub_10056A2D0(v147, v149);

  v150 = *&v146[v145];
  sub_10076B84C();
  sub_10076BEFC();
  v152 = v151;
  v154 = v153;

  v155 = sub_10076C38C();
  v156 = *(v155 - 8);
  v157 = v187;
  (*(v156 + 16))(v187, v225, v155);
  (*(v156 + 56))(v157, 0, 1, v155);
  v158 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_videoView;
  v159 = swift_unknownObjectWeakLoadStrong();
  v229 = v158;
  v241 = v148;
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(v159, v160);

  v161 = &v150[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize];
  *v161 = v152;
  *(v161 + 1) = v154;
  v161[16] = 0;
  v162 = swift_unknownObjectWeakLoadStrong();
  v130 = v132;
  if (v162)
  {
    v163 = v162;
    (*((swift_isaMask & *v162) + 0xE8))(v152, v154, 0);
  }

  v164 = v228;
  *&v150[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics] = v228;

  v165 = swift_unknownObjectWeakLoadStrong();
  if (v165)
  {
    v166 = v165;
    v167 = *((swift_isaMask & *v165) + 0xD0);
    swift_bridgeObjectRetain_n();
    v167(v164);
  }

  else
  {
  }

  v168 = v187;
  v169 = v185;
  sub_100016E2C(v187, v185, &unk_1009434A0, &unk_100787B90);
  sub_1005697E4(v169);
  v170 = v226;
  v150[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory] = v226;
  v171 = swift_unknownObjectWeakLoadStrong();
  if (v171)
  {
    v172 = v171;
    (*((swift_isaMask & *v171) + 0x118))(v170);
  }

  v173 = swift_unknownObjectWeakLoadStrong();
  if (v173)
  {
    v174 = v173;
    v175 = swift_unknownObjectWeakLoadStrong();
    (*((swift_isaMask & *v174) + 0x150))(v175, *v161, *(v161 + 1), v161[16], v228, v168, v170);
  }

  [v150 setNeedsLayout];
  v176 = v241;

  sub_10000CFBC(v168, &unk_1009434A0, &unk_100787B90);
  sub_100760C4C();
  sub_10076FC1C();
  sub_10055F9A8(&qword_10094F550, type metadata accessor for TodayCardVideoView, &unk_1007B40F8);
  sub_100760B8C();
  v177 = v235;
  [*&v218[v235] setHidden:0];
  [*&v177[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView] setHidden:1];

  v177[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia] = 1;
  v129 = v224;
LABEL_42:

  v178 = *&v130[v234];
  v178[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory] = v240[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v179 = v178;
  sub_100275F40();

  v180 = swift_unknownObjectWeakLoadStrong();
  if (v180)
  {
    *(v180 + qword_1009602C8 + 8) = &off_1008997A0;
    v181 = v180;
    swift_unknownObjectWeakAssign();
  }

  sub_10033B118();

  (*(v222 + 8))(v239, v223);
  v182 = v236;
  v236(v238, v129);
  return v182(v237, v129);
}

void sub_10055E0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v147 = a5;
  v155 = a4;
  v156 = a2;
  v140 = a1;
  LODWORD(v136) = a3;
  v8 = sub_10000A5D4(&qword_10094B040, qword_100790DE0);
  __chkstk_darwin(v8 - 8);
  v123 = &v118 - v9;
  v153 = sub_10076C38C();
  v151 = *(v153 - 8);
  __chkstk_darwin(v153);
  v121 = v10;
  v129 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10075DDBC();
  v131 = *(v150 - 8);
  __chkstk_darwin(v150);
  v128 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v11;
  __chkstk_darwin(v12);
  v130 = &v118 - v13;
  v124 = sub_10000A5D4(&unk_100952D70, &unk_10079C0A0);
  __chkstk_darwin(v124);
  v125 = &v118 - v14;
  v15 = sub_10000A5D4(&qword_100943190, qword_100798490);
  __chkstk_darwin(v15 - 8);
  v122 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v119 = &v118 - v18;
  __chkstk_darwin(v19);
  v126 = &v118 - v20;
  __chkstk_darwin(v21);
  v127 = &v118 - v22;
  v23 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v23 - 8);
  v146 = &v118 - v24;
  v25 = sub_10076BF9C();
  __chkstk_darwin(v25 - 8);
  v145 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_10076BD9C();
  v149 = *(v132 - 8);
  __chkstk_darwin(v132);
  v148 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10076BFFC();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000A5D4(&qword_100952D60, &qword_10079C098);
  __chkstk_darwin(v29 - 8);
  v135 = &v118 - v30;
  v141 = sub_10076BEDC();
  v139 = *(v141 - 8);
  __chkstk_darwin(v141);
  v137 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v138 = &v118 - v33;
  v134 = sub_10077164C();
  v34 = *(v134 - 8);
  __chkstk_darwin(v134);
  v36 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_100766D4C();
  v37 = *(v133 - 8);
  __chkstk_darwin(v133);
  v39 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10076A75C();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = __chkstk_darwin(v44).n128_u64[0];
  v47 = &v118 - v46;
  v154 = v6;
  v48 = [v6 traitCollection];
  v152 = a3;
  v49.n128_f64[0] = sub_1005B1CD8(a3);
  v50 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v51 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v136 != 6)
  {
    v51 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v136 != 4)
  {
    v50 = v51;
  }

  (*(v41 + 104))(v43, *v50, v40, v49);
  (*(v41 + 32))(v47, v43, v40);
  v52 = sub_1007701CC();
  (*(v41 + 8))(v47, v40);
  sub_10076A73C();
  if (v53)
  {
    sub_10076BEFC();
  }

  sub_10076A74C();
  sub_100766D1C();
  sub_100770ACC();
  sub_100770A8C();
  v54 = v134;
  (*(v34 + 104))(v36, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v134);
  sub_100770AAC();
  (*(v34 + 8))(v36, v54);
  (*(v37 + 8))(v39, v133);
  v55 = v135;
  sub_10076A72C();
  v56 = v139;
  v57 = *(v139 + 48);
  v58 = v141;
  v59 = v57(v55, 1, v141);
  v136 = v52;
  if (v59 == 1)
  {
    v60 = v138;
    sub_10076BEEC();
    if (v57(v55, 1, v58) != 1)
    {
      sub_10000CFBC(v55, &qword_100952D60, &qword_10079C098);
    }
  }

  else
  {
    v60 = v138;
    (*(v56 + 32))(v138, v55, v58);
  }

  v61 = v142;
  sub_10076BDAC();
  sub_10076C01C();
  [v48 displayScale];
  v62 = v48;
  (*(v56 + 16))(v137, v60, v58);
  sub_10076BFDC();
  sub_10076BFEC();
  sub_100764B3C();
  swift_allocObject();
  v63 = sub_100764B1C();

  (*(v143 + 8))(v61, v144);
  (*(v56 + 8))(v60, v58);
  v145 = *&v154[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  v144 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  v64 = *&v145[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView];
  sub_100760C4C();
  sub_10076F64C();
  v65 = v64;
  sub_10076FC1C();
  v66 = v157;
  v143 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(Strong, v68);

  v147 = v65;
  v142 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView;
  v69 = *&v65[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
  sub_100764ADC();
  v71 = v70;
  v73 = v72;
  v74 = [*(v69 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView) image];
  v75 = v151;
  v76 = v146;
  v77 = v153;
  v138 = *(v151 + 16);
  (v138)(v146, v155, v153);
  (*(v75 + 56))(v76, 0, 1, v77);
  sub_1003955EC(v74, v71, v73, 0, v156, v76, v152);

  v78 = v76;
  v79 = v69;
  sub_10000CFBC(v78, &unk_1009434A0, &unk_100787B90);
  v80 = *(v69 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded);
  v140 = v63;
  v141 = v66;
  v139 = v69;
  if (v80)
  {
    v81 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v82 = v127;
    sub_100016E2C(v69 + v81, v127, &qword_100943190, qword_100798490);
    v83 = v126;
    sub_100764B2C();
    v84 = v149;
    v85 = v132;
    (*(v149 + 56))(v83, 0, 1, v132);
    v86 = *(v124 + 48);
    v87 = v125;
    sub_100016E2C(v82, v125, &qword_100943190, qword_100798490);
    sub_100016E2C(v83, v87 + v86, &qword_100943190, qword_100798490);
    v88 = v82;
    v89 = *(v84 + 48);
    if (v89(v87, 1, v85) == 1)
    {
      sub_10000CFBC(v83, &qword_100943190, qword_100798490);
      sub_10000CFBC(v88, &qword_100943190, qword_100798490);
      if (v89(v87 + v86, 1, v85) == 1)
      {
        sub_10000CFBC(v87, &qword_100943190, qword_100798490);
        goto LABEL_20;
      }
    }

    else
    {
      v90 = v119;
      sub_100016E2C(v87, v119, &qword_100943190, qword_100798490);
      if (v89(v87 + v86, 1, v85) != 1)
      {
        v114 = v148;
        v115 = v149;
        (*(v149 + 32))(v148, v87 + v86, v85);
        sub_10055F9A8(&qword_100943198, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
        v116 = sub_10076FF1C();
        v117 = *(v115 + 8);
        v117(v114, v85);
        sub_10000CFBC(v126, &qword_100943190, qword_100798490);
        sub_10000CFBC(v127, &qword_100943190, qword_100798490);
        v117(v90, v85);
        sub_10000CFBC(v87, &qword_100943190, qword_100798490);
        v79 = v139;
        if (v116)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      sub_10000CFBC(v126, &qword_100943190, qword_100798490);
      sub_10000CFBC(v127, &qword_100943190, qword_100798490);
      (*(v149 + 8))(v90, v85);
    }

    sub_10000CFBC(v87, &unk_100952D70, &unk_10079C0A0);
    v79 = v139;
  }

LABEL_18:
  if ((*(v79 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v91 = v130;
    sub_10075DDAC();
    v92 = v131;
    v93 = *(v131 + 16);
    v94 = v128;
    v95 = v150;
    v93(v128, v91, v150);
    sub_10055F9A8(&qword_10094F558, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_10077140C();
    v148 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v93(v94, v91, v95);
    (v138)(v129, v155, v153);
    v96 = (*(v92 + 80) + 24) & ~*(v92 + 80);
    v97 = (v120 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = (v97 + 23) & 0xFFFFFFFFFFFFFFF8;
    v99 = v151;
    v100 = (*(v151 + 80) + v98 + 8) & ~*(v151 + 80);
    v101 = v100 + v121;
    v102 = swift_allocObject();
    *(v102 + 16) = v148;
    v103 = *(v92 + 32);
    v103(v102 + v96, v128, v150);
    v104 = (v102 + v97);
    *v104 = v71;
    v104[1] = v73;
    *(v102 + v98) = v156;
    (*(v99 + 32))(v102 + v100, v129, v153);
    *(v102 + v101) = v152;

    sub_100760B7C();

    sub_10000CFBC(&v157, &qword_100943310, &unk_100784150);

    v105 = v122;
    sub_100764B2C();
    (*(v149 + 56))(v105, 0, 1, v132);
    v106 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    v107 = v139;
    swift_beginAccess();
    sub_10003837C(v105, v107 + v106, &qword_100943190, qword_100798490);
    swift_endAccess();
    v108 = v123;
    v109 = v150;
    v103(v123, v130, v150);
    (*(v131 + 56))(v108, 0, 1, v109);
    v110 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_10003837C(v108, v107 + v110, &qword_10094B040, qword_100790DE0);
    swift_endAccess();
  }

LABEL_20:
  v111 = v147;
  [*&v142[v147] setHidden:0];
  [*&v111[v143] setHidden:1];

  v111[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia] = 1;

  v112 = *&v145[v144];
  v112[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory] = v154[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v113 = v112;
  sub_100275F40();
}

_BYTE *sub_10055F53C()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  v2 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  result = *(v1 + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  if (result[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia] != 1)
  {
    return v0;
  }

  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v4] != 6)
  {
    v5 = [v0 traitCollection];
    v6 = v0;
    v7 = sub_10077071C();

    result = v6;
    if ((v7 & 1) == 0)
    {
      return *(v1 + v2);
    }
  }

  return result;
}

uint64_t sub_10055F688()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10055F6C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10055F6D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10055F710()
{
  v1 = sub_10075DDBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

uint64_t sub_10055F9A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10055F9F0(uint64_t a1, void *a2)
{
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v16 - v13;
  (*(v5 + 16))(&v16 - v13, a1, v4, v12);
  (*(v5 + 56))(v14, 0, 1, v4);
  sub_100016E2C(v14, v10, &unk_1009434A0, &unk_100787B90);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10000CFBC(v10, &unk_1009434A0, &unk_100787B90);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_10076C31C();
    sub_10076C31C();
    [a2 layoutDirection];
    sub_1007708DC();
    (*(v5 + 8))(v7, v4);
  }

  sub_10000CFBC(v14, &unk_1009434A0, &unk_100787B90);
  return 20.0;
}

uint64_t sub_10055FCFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10075E11C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10055FDBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10075E11C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ComponentOverflowData(uint64_t a1)
{
  result = qword_10095D338;
  if (!qword_10095D338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10055FEAC(uint64_t a1)
{
  result = sub_10003F040();
  if (v2 <= 0x3F)
  {
    result = sub_10075E11C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

char *sub_10055FF30(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_placeholderView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_placeholderView]];

  return v13;
}

uint64_t type metadata accessor for PlaceholderCollectionViewCell(uint64_t a1)
{
  result = qword_10095D398;
  if (!qword_10095D398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100560310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v45 = a2;
  v47 = a1;
  v46 = sub_10076511C();
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(ASReportAConcernConfiguration) init];
  v55._countAndFlagsBits = 0xD000000000000014;
  v55._object = 0x80000001007ED430;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_1007622EC(v55, v64);
  v15 = sub_10076FF6C();

  [v14 setTitle:v15];

  v56._countAndFlagsBits = 0xD000000000000013;
  v56._object = 0x80000001007ED450;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  sub_1007622EC(v56, v65);
  v16 = sub_10076FF6C();

  [v14 setBackTitle:v16];

  v57._object = 0x80000001007ED470;
  v57._countAndFlagsBits = 0xD000000000000015;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_1007622EC(v57, v66);
  v17 = sub_10076FF6C();

  [v14 setCancelTitle:v17];

  v58._object = 0x80000001007ED490;
  v58._countAndFlagsBits = 0xD000000000000015;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  sub_1007622EC(v58, v67);
  v18 = sub_10076FF6C();

  [v14 setSubmitTitle:v18];

  if (a5)
  {
    v59._countAndFlagsBits = 0xD00000000000002ALL;
    v59._object = 0x80000001007ED550;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    sub_1007622EC(v59, v68);
    v19 = sub_10076FF6C();

    [v14 setSelectReasonTitle:v19];

    if (a3)
    {
      v20 = sub_10076FF6C();
    }

    else
    {
      v20 = 0;
    }

    v26 = v47;
    [v14 setReportConcernExplanation:v20];

    v63._countAndFlagsBits = 0xD000000000000025;
    v63._object = 0x80000001007ED580;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    sub_1007622EC(v63, v72);
    v27 = sub_10076FF6C();

    [v14 setPrivacyNote:v27];

    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a6;
    v53 = sub_100561E04;
    v54 = v28;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1005615E0;
    v52 = &unk_100899BF0;
    v25 = _Block_copy(&aBlock);
  }

  else
  {

    v60._countAndFlagsBits = 0xD00000000000001BLL;
    v60._object = 0x80000001007ED4B0;
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    sub_1007622EC(v60, v69);
    v21 = sub_10076FF6C();

    [v14 setSelectReasonTitle:v21];

    v61._countAndFlagsBits = 0xD00000000000001ELL;
    v61._object = 0x80000001007ED4D0;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    sub_1007622EC(v61, v70);
    v22 = sub_10076FF6C();

    [v14 setSelectReasonSubtitle:v22];

    v62._countAndFlagsBits = 0xD000000000000016;
    v62._object = 0x80000001007ED4F0;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    sub_1007622EC(v62, v71);
    v23 = sub_10076FF6C();

    [v14 setPrivacyNote:v23];

    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a6;
    v53 = sub_100561D98;
    v54 = v24;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1005615E0;
    v52 = &unk_100899BA0;
    v25 = _Block_copy(&aBlock);

    v26 = v47;
  }

  [v14 setCompletion:v25];
  _Block_release(v25);
  v29 = *(v26 + 16);
  if (v29)
  {
    v42 = v14;
    v43 = v7;
    v44 = a4;
    v45 = a6;
    aBlock = _swiftEmptyArrayStorage;
    sub_1007714EC();
    v30 = v48 + 16;
    v48 = *(v48 + 16);
    v31 = v26 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v32 = *(v30 + 56);
    v33 = v46;
    do
    {
      (v48)(v13, v31, v33);
      v34 = [objc_allocWithZone(ASReportAConcernReason) init];
      sub_1007650FC();
      v35 = sub_10076FF6C();

      [v34 setReasonID:v35];

      sub_10076510C();
      v36 = sub_10076FF6C();

      [v34 setName:v36];

      sub_1007650EC();
      v37 = sub_10076FF6C();

      [v34 setUppercaseName:v37];

      (*(v30 - 8))(v13, v33);
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      v31 += v32;
      --v29;
    }

    while (v29);

    v14 = v42;
  }

  else
  {
  }

  sub_100561DB8();
  isa = sub_1007701AC().super.isa;

  [v14 setReasons:isa];

  v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:v14];
  [v39 setModalPresentationStyle:2];

  return v39;
}

double sub_100560A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  *&v51 = a4;
  v52 = a2;
  v53 = a3;
  v9 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v9 - 8);
  v50 = &v49 - v10;
  v11 = sub_10076F4FC();
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076FFEC();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10076810C();
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_100562288(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  v17 = v16;
  sub_1007680FC();
  v57 = a6;
  v18 = sub_10076418C();
  v63 = v18;
  if (a5)
  {
    if (v18)
    {
      v19 = sub_10056150C(v62, 0x74726F706572, 0xE600000000000000);
      if (*v20)
      {
        sub_10000A5D4(&qword_10095D3B0, &qword_1007AB2D0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100783DD0;
        sub_10000A5D4(&unk_100954470, &qword_10079DCB8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100784500;
        *(inited + 32) = 1684957547;
        v23 = v52;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = v23;
        *(inited + 56) = v53;
        *(inited + 64) = 0x746E656D6D6F63;
        v24 = v51;
        *(inited + 72) = 0xE700000000000000;
        *(inited + 80) = v24;
        *(inited + 88) = a5;

        v25 = sub_1000FD520(inited);
        swift_setDeallocating();
        sub_10000A5D4(&qword_100961DD0, &qword_10079DCC0);
        swift_arrayDestroy();
        *(v21 + 32) = v25;
        v61 = sub_10000A5D4(&qword_10095D3B8, &qword_1007AB2D8);
        v60[0] = v21;
        sub_100098694(v60, 0x736E7265636E6F63, 0xE800000000000000);
      }

      (v19)(v62, 0);
    }
  }

  else if (v18)
  {
    v26 = sub_10056150C(v62, 0x74726F706572, 0xE600000000000000);
    if (*v27)
    {
      sub_10000A5D4(&qword_10095D3B0, &qword_1007AB2D0);
      v28 = swift_allocObject();
      v51 = xmmword_100783DD0;
      *(v28 + 16) = xmmword_100783DD0;
      sub_10000A5D4(&unk_100954470, &qword_10079DCB8);
      v29 = swift_initStackObject();
      *(v29 + 16) = v51;
      *(v29 + 32) = 1684957547;
      v30 = v52;
      *(v29 + 40) = 0xE400000000000000;
      *(v29 + 48) = v30;
      *(v29 + 56) = v53;

      v31 = sub_1000FD520(v29);
      swift_setDeallocating();
      sub_10000CFBC(v29 + 32, &qword_100961DD0, &qword_10079DCC0);
      *(v28 + 32) = v31;
      v61 = sub_10000A5D4(&qword_10095D3B8, &qword_1007AB2D8);
      v60[0] = v28;
      sub_100098694(v60, 0x736E7265636E6F63, 0xE800000000000000);
    }

    (v26)(v62, 0);
  }

  v32 = objc_opt_self();
  v62[0] = v63;
  sub_10000A5D4(&unk_10095D3C0, qword_1007AB2E0);
  v33 = sub_10077119C();
  v62[0] = 0;
  v34 = [v32 dataWithJSONObject:v33 options:0 error:v62];
  swift_unknownObjectRelease();
  v35 = v62[0];
  if (v34)
  {
    v36 = sub_10075DB9C();
    v38 = v37;

    sub_10076FFDC();
    sub_10076FFBC();
    if (v39)
    {
      v40 = v54;
      sub_10076F4DC();
      v44 = sub_10076415C();
      (*(v55 + 8))(v40, v56);

      v45 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      v46 = v49;
      v47 = v50;
      sub_10076F5AC();
      v48 = *(v45 - 8);
      if ((*(v48 + 48))(v47, 1, v45) == 1)
      {
        (*(v58 + 8))(v17, v59);
        sub_100316100(v36, v38);

        sub_10000CFBC(v47, &unk_100943200, &unk_100785840);
      }

      else
      {
        sub_100264100(v44, 1, v46, v47);

        sub_100316100(v36, v38);

        (*(v58 + 8))(v17, v59);
        (*(v48 + 8))(v47, v45);
      }

      goto LABEL_18;
    }

    sub_100316100(v36, v38);
  }

  else
  {
    v41 = v35;
    sub_10075DA4C();

    swift_willThrow();
  }

  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v42 = sub_10076FD4C();
  sub_10000A61C(v42, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBEC();

  (*(v58 + 8))(v17, v59);
LABEL_18:

  return result;
}

uint64_t (*sub_10056150C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100561F3C(v6, a2, a3);
  return sub_100561594;
}

void sub_100561594(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

double sub_1005615E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  sub_10076FF9C();
  if (a4)
  {
    sub_10076FF9C();
  }

  v7 = a2;
  v6();

  return result;
}

uint64_t sub_10056169C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a4;
  v49 = a5;
  v50 = a2;
  v51 = a3;
  v9 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v9 - 8);
  v45 = &v39 - v10;
  v11 = sub_10076F4FC();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076608C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076810C();
  v46 = *(v17 - 8);
  v47 = v17;
  __chkstk_darwin(v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_100562288(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  v52 = v19;
  sub_1007680FC();
  v44 = a6;
  v20 = sub_10076417C();
  v21 = *(v20 + 16);
  if (v21)
  {
    v40 = a7;
    v24 = *(v14 + 16);
    v23 = v14 + 16;
    v22 = v24;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v39 = v20;
    v26 = v20 + v25;
    v27 = *(v23 + 56);
    v24(v16, v20 + v25, v13);
    while (sub_10076604C() != 0x64657463656C6573 || v28 != 0xEE006E6F73616552)
    {
      v29 = sub_10077167C();

      if (v29)
      {
        goto LABEL_4;
      }

      if (v49)
      {
        if (sub_10076604C() == 0x74616E616C707865 && v30 == 0xEB000000006E6F69)
        {
          break;
        }

        v31 = sub_10077167C();

        if (v31)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      (*(v23 - 8))(v16, v13);
      v26 += v27;
      if (!--v21)
      {

        a7 = v40;
        goto LABEL_17;
      }

      v22(v16, v26, v13);
    }

LABEL_4:
    sub_1007680EC();
    goto LABEL_5;
  }

LABEL_17:
  v32 = v41;
  sub_10076F4DC();
  v33 = sub_10076415C();
  v34 = v45;
  v35 = v33;
  (*(v42 + 8))(v32, v43);
  v36 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v34, 1, v36) == 1)
  {

    sub_10000CFBC(v34, &unk_100943200, &unk_100785840);
  }

  else
  {
    sub_100264100(v35, 1, a7, v34);

    (*(v37 + 8))(v34, v36);
  }

  return (*(v46 + 8))(v52, v47);
}

double sub_100561DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100561DB8()
{
  result = qword_10095D3A8;
  if (!qword_10095D3A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10095D3A8);
  }

  return result;
}

unint64_t sub_100561E0C(uint64_t a1, uint64_t a2)
{
  sub_10077175C();
  sub_10077008C();
  v4 = sub_1007717AC();

  return sub_100561E84(a1, a2, v4);
}

unint64_t sub_100561E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10077167C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_100561F3C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100562254(v7);
  v7[9] = sub_100562048(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100561FE8;
}

void sub_100561FE8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100562048(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100561E0C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10024D714();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100249340(v18, a4 & 1);
    v13 = sub_100561E0C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1007716DC();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1005621A0;
}

void sub_1005621A0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_10024BAB8(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1000B8AFC(*(v7 + 48) + 16 * v6);
    sub_1001E1F10(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_100562254(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10056227C;
}

unint64_t sub_100562288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100948BC8, &qword_1007B7590);
    v3 = sub_1007715DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_100562398(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100561E0C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000CD64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100562398(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100948BD0, &unk_10078B5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100562414(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v123 = a1;
  v3 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v3 - 8);
  v115 = v106 - v4;
  v5 = sub_10000A5D4(&qword_10095D440, &unk_100797450);
  __chkstk_darwin(v5 - 8);
  v7 = v106 - v6;
  v8 = sub_100760EFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v122 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = v106 - v12;
  __chkstk_darwin(v13);
  v116 = v106 - v14;
  __chkstk_darwin(v15);
  v117 = v106 - v16;
  __chkstk_darwin(v17);
  v119 = v106 - v18;
  v19 = sub_10000A5D4(&qword_10094B168, &qword_100791000);
  __chkstk_darwin(v19 - 8);
  v113 = v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v106 - v22;
  __chkstk_darwin(v24);
  v26 = v106 - v25;
  __chkstk_darwin(v27);
  v29 = v106 - v28;
  __chkstk_darwin(v30);
  v120 = v106 - v31;
  v121 = OBJC_IVAR____TtC20ProductPageExtension29TabChangeActionImplementation_rootTabBarController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v33 = [Strong tabBar];

  v34 = [v33 items];
  if (!v34)
  {
    goto LABEL_12;
  }

  v109 = v7;
  sub_100016F40(0, &unk_100960200, UITabBarItem_ptr);
  v35 = sub_1007701BC();

  if ((sub_1007701EC() & 1) == 0)
  {

LABEL_12:
    sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
    v45 = v122;
    sub_10076222C();
    v46 = sub_100760EEC();
    v48 = v47;
    (*(v9 + 8))(v45, v8);
    sub_100563D70();
    swift_allocError();
    *v49 = v46;
    v49[1] = v48;
    return sub_10076FC7C();
  }

  v36 = *(v9 + 56);
  v111 = v8;
  v36(v120, 1, 1, v8);
  v37 = swift_unknownObjectUnownedLoadStrong();
  v38 = [v37 selectedIndex];

  v112 = v9;
  v110 = v35;
  v107 = v35 >> 62;
  if (v35 >> 62)
  {
    v39 = sub_10077158C();
  }

  else
  {
    v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = swift_unknownObjectUnownedLoadStrong();
  v41 = [v40 selectedIndex];

  if (v38 < v39)
  {
    v42 = v112;
    if ((v110 & 0xC000000000000001) == 0)
    {
      v43 = v120;
      if ((v41 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v41 < *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v44 = *(v110 + 8 * v41 + 32);
LABEL_10:
        [v44 tag];

        sub_100760ECC();
        v41 = v111;
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_61;
    }

    v44 = sub_10077149C();
    v43 = v120;
    goto LABEL_10;
  }

  sub_100760ECC();
  v29 = v26;
  v41 = v111;
  v42 = v112;
  v43 = v120;
LABEL_15:
  sub_10000CFBC(v43, &qword_10094B168, &qword_100791000);
  sub_100564124(v29, v43);
  sub_10017E160(v43, v23);
  v39 = *(v42 + 48);
  if (v39(v23, 1, v41) == 1)
  {

    sub_10000CFBC(v23, &qword_10094B168, &qword_100791000);
    sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
    v51 = v122;
    sub_10076222C();
    v52 = sub_100760EEC();
    v54 = v53;
    (*(v42 + 8))(v51, v41);
    sub_100563D70();
    swift_allocError();
    *v55 = v52;
    v55[1] = v54;
    v56 = sub_10076FC7C();
    sub_10000CFBC(v43, &qword_10094B168, &qword_100791000);
    return v56;
  }

  v108 = v2;
  v57 = *(v42 + 32);
  v58 = v119;
  v106[1] = v42 + 32;
  v106[0] = v57;
  v57(v119, v23, v41);
  v59 = v116;
  sub_10076222C();
  v60 = (*(v42 + 88))(v59, v41);
  if (v60 == enum case for NavigationTab.infer(_:))
  {
    v61 = v122;
    v116 = *(v42 + 104);
    (v116)(v122, enum case for NavigationTab.search(_:), v41);
    v62 = sub_100760EBC();
    v63 = v41;
    v64 = *(v42 + 8);
    v64(v61, v41);
    if ((v62 & 1) == 0)
    {
      v61 = v122;
      (v116)(v122, enum case for NavigationTab.loading(_:), v41);
      v62 = sub_100760EBC();
      v64(v61, v41);
      if ((v62 & 1) == 0)
      {
        v70 = v114;
        (v116)(v114, enum case for NavigationTab.selected(_:), v41);
        v42 = v117;
        v67 = v118;
        v72 = v106[0];
LABEL_34:
        v72(v42, v70, v41);
        v66 = v112;
        goto LABEL_35;
      }
    }

    v42 = v117;
    if (v107)
    {
      v62 = v110;
      result = sub_10077158C();
      v65 = v62;
    }

    else
    {
      v65 = v110;
      result = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v111;
    v2 = v113;
    if (result)
    {
      if ((v65 & 0xC000000000000001) == 0)
      {
        if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_64;
        }

        v68 = *(v65 + 32);
        goto LABEL_31;
      }

LABEL_62:
      v68 = sub_10077149C();
LABEL_31:
      v69 = v68;
      [v68 tag];
      sub_100760ECC();

      result = (v39)(v2, 1, v41);
      if (result == 1)
      {
LABEL_67:
        __break(1u);
        return result;
      }

      v70 = v114;
      v71 = v2;
      v72 = v106[0];
      (v106[0])(v114, v71, v41);
      v67 = v118;
      goto LABEL_34;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v60 == enum case for NavigationTab.selected(_:))
  {
    v66 = v112;
    v42 = v117;
    (*(v112 + 16))(v117, v58, v41);
  }

  else
  {
    v42 = v117;
    sub_10076222C();
    v66 = v112;
    (*(v112 + 8))(v59, v41);
  }

  v67 = v118;
LABEL_35:
  sub_100761FAC();
  sub_100761F8C();
  sub_100760EAC();
  sub_100761EFC();

  v73 = [objc_opt_self() standardUserDefaults];
  v63 = *(v66 + 16);
  v63(v122, v42, v41);
  v74 = v109;
  sub_10075F2CC();
  sub_10072EB44(v74);

  sub_10075F45C();
  sub_10076F63C();
  v75 = aBlock[0];
  if (aBlock[0])
  {
    sub_10075F43C();
  }

  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v116 = sub_10076FCEC();
  v76 = swift_unknownObjectUnownedLoadStrong();
  v61 = [v76 presentedViewController];

  if (!v61)
  {
    goto LABEL_40;
  }

  if ([v61 isBeingDismissed])
  {

LABEL_40:
    v77 = sub_10076224C();
    v78 = sub_10076223C();
    sub_1005633BC(v42, v110, v77 & 1, v78, v67);

    v79 = v116;
    sub_10076FC4C();

    v80 = v111;
    v81 = *(v112 + 8);
    v81(v42, v111);
    v81(v119, v80);
    sub_10000CFBC(v120, &qword_10094B168, &qword_100791000);
    return v79;
  }

  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  v64 = aBlock[0];
  type metadata accessor for ArticleContainerViewController();
  v62 = swift_dynamicCastClass();
  result = sub_10076223C();
  if (!(result >> 62))
  {
    v82 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_43;
  }

LABEL_64:
  v105 = result;
  v82 = sub_10077158C();
  result = v105;
LABEL_43:
  v83 = v111;
  v84 = v115;
  if (!v82)
  {

    goto LABEL_51;
  }

  v114 = v62;
  if ((result & 0xC000000000000001) != 0)
  {
    v85 = v64;
    sub_10077149C();
    goto LABEL_47;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_67;
  }

  v85 = v64;

LABEL_47:

  sub_10075F63C();
  if (swift_dynamicCastClass())
  {
    sub_10075F61C();

    v83 = v111;
    v64 = v85;
    v62 = v114;
    goto LABEL_52;
  }

  v83 = v111;
  v64 = v85;
  v62 = v114;
LABEL_51:
  v86 = sub_10075DB7C();
  (*(*(v86 - 8) + 56))(v84, 1, 1, v86);
LABEL_52:
  v87 = sub_1007690EC();
  if (v62 && (v87 & 1) != 0)
  {
    v88 = sub_10076224C();
    v89 = sub_10076223C();
    sub_1005633BC(v42, v110, v88 & 1, v89, v118);

    sub_10076FC4C();

    v90 = v42;
    v91 = v112;
  }

  else
  {
    v114 = swift_unknownObjectUnownedLoadStrong();
    v92 = v122;
    v63(v122, v42, v83);
    v91 = v112;
    v93 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v121 = v64;
    v94 = (v10 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
    v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
    v97 = swift_allocObject();
    v98 = v83;
    v99 = v97;
    v100 = v108;
    *(v97 + 16) = v108;
    (v106[0])(v97 + v93, v92, v98);
    *(v99 + v94) = v110;
    *(v99 + v95) = v123;
    *(v99 + v96) = v118;
    *(v99 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8)) = v116;
    aBlock[4] = sub_1005642AC;
    aBlock[5] = v99;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100899C40;
    v101 = _Block_copy(aBlock);
    v102 = v100;
    v83 = v111;

    v90 = v117;

    v103 = v114;
    [v114 dismissViewControllerAnimated:1 completion:v101];
    _Block_release(v101);
  }

  sub_10000CFBC(v115, &unk_1009435D0, &qword_100785850);
  v104 = *(v91 + 8);
  v104(v90, v83);
  v104(v119, v83);
  sub_10000CFBC(v120, &qword_10094B168, &qword_100791000);
  return v116;
}

double sub_10056331C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10076224C();
  v10 = sub_10076223C();
  sub_1005633BC(a2, a3, v9 & 1, v10, a5);

  sub_10076FC4C();

  return result;
}

uint64_t sub_1005633BC(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v54 = a3;
  v10 = sub_10076F4FC();
  __chkstk_darwin(v10 - 8);
  v55 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10000A5D4(&qword_10095D410, &qword_1007AB3B0);
  __chkstk_darwin(v72);
  v13 = v53 - v12;
  v14 = sub_10000A5D4(&qword_10094B168, &qword_100791000);
  __chkstk_darwin(v14 - 8);
  v65 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = v53 - v17;
  __chkstk_darwin(v18);
  v66 = v53 - v19;
  v20 = sub_100760EFC();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, enum case for NavigationTab.loading(_:), v20, v22);
  v73 = a1;
  v25 = sub_100760EBC();
  v26 = *(v21 + 8);
  v61 = v24;
  v63 = v26;
  v64 = v21 + 8;
  v26(v24, v20);
  v53[1] = OBJC_IVAR____TtC20ProductPageExtension29TabChangeActionImplementation_rootTabBarController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v28 = Strong;
  v56 = a4;
  v57 = a5;
  v60 = v5;
  if (v25)
  {
    v29 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension29TabChangeActionImplementation_loadingNavigationController);
    [Strong setTransientViewController:v29 animated:0];

    sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
    v30.super.isa = sub_1007701AC().super.isa;
    [v29 setViewControllers:v30.super.isa];
    goto LABEL_3;
  }

  [Strong setTransientViewController:0 animated:0];

  v74 = a2;
  if (a2 >> 62)
  {
LABEL_26:
    v31 = sub_10077158C();
    v32 = v66;
    if (!v31)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v31 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v66;
    if (!v31)
    {
      goto LABEL_27;
    }
  }

  v33 = 0;
  v70 = v74 & 0xFFFFFFFFFFFFFF8;
  v71 = v74 & 0xC000000000000001;
  v68 = (v21 + 56);
  v69 = (v21 + 16);
  v34 = (v21 + 48);
  v58 = (v21 + 48);
  v59 = (v21 + 32);
  v67 = v31;
  while (v71)
  {
    v36 = sub_10077149C();
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_20;
    }

LABEL_13:
    v75 = v36;
    [v36 tag];
    sub_100760ECC();
    v38 = v76;
    (*v69)(v76, v73, v20);
    (*v68)(v38, 0, 1, v20);
    v21 = *(v72 + 48);
    sub_10017E160(v32, v13);
    sub_10017E160(v38, &v13[v21]);
    v39 = *v34;
    if ((*v34)(v13, 1, v20) == 1)
    {
      sub_10000CFBC(v76, &qword_10094B168, &qword_100791000);
      sub_10000CFBC(v32, &qword_10094B168, &qword_100791000);
      v35 = v39(&v13[v21], 1, v20);
      v24 = v75;
      if (v35 == 1)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v40 = v65;
    sub_10017E160(v13, v65);
    if (v39(&v13[v21], 1, v20) == 1)
    {
      sub_10000CFBC(v76, &qword_10094B168, &qword_100791000);
      v21 = v66;
      sub_10000CFBC(v66, &qword_10094B168, &qword_100791000);
      v41 = v40;
      v32 = v21;
      v63(v41, v20);
      v24 = v75;
LABEL_8:
      sub_10000CFBC(v13, &qword_10095D410, &qword_1007AB3B0);
      goto LABEL_9;
    }

    v42 = v61;
    (*v59)(v61, &v13[v21], v20);
    sub_100564088(&unk_10095D420, &type metadata accessor for NavigationTab, &protocol conformance descriptor for NavigationTab);
    v62 = sub_10076FF1C();
    v21 = v63;
    v63(v42, v20);
    sub_10000CFBC(v76, &qword_10094B168, &qword_100791000);
    v43 = v66;
    sub_10000CFBC(v66, &qword_10094B168, &qword_100791000);
    v44 = v40;
    v32 = v43;
    (v21)(v44, v20);
    v34 = v58;
    sub_10000CFBC(v13, &qword_10094B168, &qword_100791000);
    v24 = v75;
    if (v62)
    {
      goto LABEL_22;
    }

LABEL_9:

    ++v33;
    if (v37 == v67)
    {
      goto LABEL_27;
    }
  }

  if (v33 >= *(v70 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v36 = *(v74 + 8 * v33 + 32);
  v37 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  sub_10000CFBC(v13, &qword_10094B168, &qword_100791000);
LABEL_22:
  v45 = swift_unknownObjectUnownedLoadStrong();
  [v45 setSelectedIndex:v33];

  v30.super.isa = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for StoreTabBarController();
  if (swift_dynamicCastClass())
  {
    sub_10017BA08(v33);

    v30.super.isa = v24;
  }

  else
  {
  }

LABEL_3:

LABEL_27:
  v46 = swift_unknownObjectUnownedLoadStrong();
  v47 = [v46 selectedViewController];

  if (v47)
  {
    if (v54)
    {
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
      }
    }

    sub_10076F4DC();
    sub_10076167C();
    swift_allocObject();
    v49 = sub_10076165C();
    v50 = sub_100563DF4(v49, 1, v57, sub_10026426C);

    return v50;
  }

  else
  {
    sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
    sub_100563D70();
    swift_allocError();
    *v52 = 0;
    v52[1] = 0;
    return sub_10076FC7C();
  }
}

id sub_100563C5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabChangeActionImplementation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100563D70()
{
  result = qword_10095D418;
  if (!qword_10095D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D418);
  }

  return result;
}

uint64_t sub_100563DF4(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t, char *))
{
  v8 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_10076F5AC();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000CFBC(v10, &unk_100943200, &unk_100785840);
    sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
    sub_1005640D0();
    swift_allocError();
    *v15 = 1;
    return sub_10076FC7C();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = a4(a1, a2 & 1, a3, v14);
    (*(v12 + 8))(v14, v11);
    return v17;
  }
}

uint64_t sub_100564088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005640D0()
{
  result = qword_10095D430;
  if (!qword_10095D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D430);
  }

  return result;
}

uint64_t sub_100564124(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094B168, &qword_100791000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100564194(__n128 a1)
{
  v2 = sub_100760EFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (((((((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

double sub_1005642AC(__n128 a1)
{
  v2 = *(sub_100760EFC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v4);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10056331C(v7, v1 + v3, v8, v9, v10, v11);
}

double sub_100564360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100564378(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005643C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_10056441C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100564434(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_100564464(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100784500;
  v4 = [a1 colorWithAlphaComponent:0.0];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [a1 CGColor];
  *(v3 + 88) = v7;
  *(v3 + 64) = v8;
  isa = sub_1007701AC().super.isa;

  [v2 setColors:isa];

  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100785D70;
  sub_1001E2870();
  *(v10 + 32) = sub_100770ECC(0);
  *(v10 + 40) = sub_100770EBC(0.8);
  v11 = sub_1007701AC().super.isa;

  [v2 setLocations:v11];

  [v2 setStartPoint:{0.0, 0.5}];
  [v2 setEndPoint:{1.0, 0.5}];
  return v2;
}

id sub_100564640(void *a1, char a2)
{
  v4 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100784500;
  v6 = 0.0;
  v7 = [a1 colorWithAlphaComponent:0.0];
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  v10 = v9;
  *(v5 + 56) = v9;
  *(v5 + 32) = v8;
  v11 = [a1 CGColor];
  *(v5 + 88) = v10;
  *(v5 + 64) = v11;
  isa = sub_1007701AC().super.isa;

  [v4 setColors:isa];

  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100785D70;
  sub_1001E2870();
  *(v13 + 32) = sub_100770ECC(0);
  *(v13 + 40) = sub_100770EBC(0.8);
  v14 = sub_1007701AC().super.isa;

  [v4 setLocations:v14];

  if (a2)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  if ((a2 & 1) == 0)
  {
    v6 = 1.0;
  }

  [v4 setStartPoint:{v15, 0.5}];
  [v4 setEndPoint:{v6, 0.5}];
  return v4;
}

char *sub_100564840(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentView] = 0;
  sub_1000AE584(a1, &v1[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_layoutMetrics]);
  v3 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentScrollView] = v3;
  sub_10000A570(a1 + 80, v18);
  sub_10000A570(a1 + 40, &v19);
  sub_10000A570(a1 + 120, &v20);
  v4 = type metadata accessor for OnboardingTrayView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension18OnboardingTrayView_itemViewLayoutItems] = _swiftEmptyArrayStorage;
  sub_1005652F4(v18, &v5[OBJC_IVAR____TtC20ProductPageExtension18OnboardingTrayView_layoutMetrics]);
  v17.receiver = v5;
  v17.super_class = v4;
  v6 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_100565350(v18);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayView] = v6;
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayBackgroundView] = v10;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for OnboardingPageView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v12 = OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentScrollView;
  [*&v11[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentScrollView] setContentInsetAdjustmentBehavior:2];
  [*&v11[v12] setShowsVerticalScrollIndicator:0];
  [*&v11[v12] setShowsHorizontalScrollIndicator:0];
  [v11 addSubview:*&v11[v12]];
  v13 = OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayBackgroundView;
  [v11 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayBackgroundView]];
  v14 = [*&v11[v13] contentView];
  [v14 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayView]];

  sub_1000AE628(a1);
  return v11;
}

id sub_100564B28()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for OnboardingPageView();
  objc_msgSendSuper2(&v37, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayView];
  v2 = [v1 isHidden];
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if ((v2 & 1) == 0)
  {
    sub_10076422C();
    [v1 measurementsWithFitting:v0 in:{v8, v9}];
    v6 = v10;
    v7 = v11;
    sub_10076422C();
    v4 = floor(CGRectGetMidX(v38) + v6 * -0.5);
    sub_10076422C();
    MaxY = CGRectGetMaxY(v39);
    v5 = MaxY - v7;
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayBackgroundView] setFrame:{v4, MaxY - v7, v6, v7}];
    [v1 setFrame:{0.0, 0.0, v6, v7}];
  }

  [v0 bounds];
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentScrollView];
  [v13 setFrame:?];
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentView];
  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    rect = v5;
    v17 = v14;
    sub_10076422C();
    MinX = CGRectGetMinX(v40);
    sub_10076422C();
    MinY = CGRectGetMinY(v41);
    sub_10076422C();
    Width = CGRectGetWidth(v42);
    v34 = v4;
    v35 = v6;
    if (v2)
    {
      sub_10076422C();
      Height = CGRectGetHeight(v43);
    }

    else
    {
      v44.origin.x = v4;
      v44.origin.y = rect;
      v44.size.width = v6;
      v44.size.height = v7;
      Height = CGRectGetMinY(v44);
    }

    v22 = Height;
    [v17 measurementsWithFitting:v0 in:{Width, Height}];
    v15 = v23;
    v16 = v24;
    v45.origin.x = MinX;
    v45.origin.y = MinY;
    v45.size.width = Width;
    v45.size.height = v22;
    v25 = floor(CGRectGetMidX(v45) + v15 * -0.5);
    v46.origin.x = MinX;
    v46.origin.y = MinY;
    v46.size.width = Width;
    v46.size.height = v22;
    v26 = CGRectGetMinY(v46);
    sub_10076422C();
    sub_100770A4C();
    [v17 setFrame:?];
    if ((v2 & 1) != 0 || (v47.origin.x = v25, v47.origin.y = v26, v47.size.width = v15, v47.size.height = v16, v27 = CGRectGetMaxY(v47), v48.origin.x = v34, v48.size.width = v35, v48.origin.y = rect, v48.size.height = v7, CGRectGetMinY(v48) > v27))
    {
      [*&v0[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayBackgroundView] setEffect:0];
      v3 = 0.0;
    }

    else
    {
      v49.origin.x = v34;
      v49.origin.y = rect;
      v49.size.width = v35;
      v49.size.height = v7;
      v33 = CGRectGetHeight(v49);
      v50.origin.x = v25;
      v50.origin.y = v26;
      v50.size.width = v15;
      v50.size.height = v16;
      v28 = CGRectGetMaxY(v50);
      v51.origin.x = v34;
      v51.origin.y = rect;
      v51.size.width = v35;
      v51.size.height = v7;
      v29 = v28 - CGRectGetMinY(v51);
      if (v29 >= v33)
      {
        v3 = v33;
      }

      else
      {
        v3 = v29;
      }

      v30 = *&v0[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayBackgroundView];
      v31 = [objc_opt_self() effectWithStyle:4];
      [v30 setEffect:v31];
    }
  }

  [v13 setContentSize:{v15, v16, *&v33}];
  [v13 setContentInset:{0.0, 0.0, v3, 0.0}];
  return [v13 setContentOffset:{0.0, 0.0}];
}

id sub_100564F50(void *a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for OnboardingPageView();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077071C();

  if (!a1 || ((sub_10077071C() ^ v5) & 1) != 0)
  {
    return [v2 setNeedsLayout];
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_10076FF9C();
  v12 = v11;
  if (v10 == sub_10076FF9C() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_10077167C();

    if ((v14 & 1) == 0)
    {
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_100565160()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingPageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100565234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_10056527C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100565424()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  v23.receiver = v0;
  v23.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v5 = sub_100770D2C();
    [v4 setBackgroundColor:v5];

    sub_100566734(&qword_10095D500, v6, type metadata accessor for PurchasesLoadingViewController, &unk_1007AB538);
    swift_unknownObjectRetain();
    sub_10076455C();
    sub_100760C9C();
    sub_10076DE3C();
    v7 = objc_allocWithZone(sub_10076DE6C());
    v8 = sub_10076DE5C();
    v9 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController;
    v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController];
    sub_10076857C();

    v11 = *&v1[v9];
    *&v1[v9] = v8;
    v12 = v8;

    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v24 = v16;
      v25 = v18;
      v26 = v20;
      v27 = v22;
      v28 = 0;
      sub_10076856C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1005656FC(uint64_t a1)
{
  v44.receiver = v1;
  v44.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v44, "viewDidLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        [v5 setFrame:{v9, v11, v13, v15}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_familyPurchases];
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v16;
  v18 = [v17 view];
  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v1 view];
  if (!v20)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  [v20 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v19 setFrame:{v23, v25, v27, v29}];
LABEL_9:
  v30 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_loggedInUserPurchases];
  if (!v30)
  {
    return;
  }

  v31 = v30;
  v32 = [v31 view];
  if (!v32)
  {
    goto LABEL_18;
  }

  v33 = v32;
  v34 = [v1 view];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v35 = v34;
  [v34 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  [v33 setFrame:{v37, v39, v41, v43}];
}