void sub_10003CB10(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007E528())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10007E468();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_10003CC10(void *a1, NSObject *a2, dispatch_group_t *a3, void *a4, void (*a5)(id))
{
  swift_beginAccess();
  v9 = a4;
  sub_10003A9D8(0, 0, v9, v10);
  swift_endAccess();
  if (a1)
  {
    isa = (*a3)[39].isa;
    v12 = a1;
    isa();
    a5(v12);
    dispatch_group_leave(a3[5]);
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v13 = sub_10007D5C8();
    sub_1000046BC(v13, qword_1000E4B28);

    swift_errorRetain();
    v14 = sub_10007D5A8();
    v15 = sub_10007E2A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136446466;
      v24[0] = v17;
      sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
      v18 = sub_10007E168();
      v20 = sub_100051190(v18, v19, v24);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      swift_errorRetain();
      sub_100015240(&qword_1000DE938, &qword_100082910);
      v21 = sub_10007E178();
      v23 = sub_100051190(v21, v22, v24);

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s: error: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    dispatch_group_leave(a3[5]);
  }
}

uint64_t sub_10003CEC4()
{
  sub_10003AAE8();

  return swift_deallocClassInstance();
}

BOOL sub_10003CF1C(uint64_t a1)
{
  sub_100026310(a1, v3, &qword_1000DE930, &unk_100083CC0);
  if (v3[3])
  {
    type metadata accessor for MapSnapshotter.Context(0);
    if (swift_dynamicCast())
    {
      if (sub_10007D3C8())
      {
        sub_10007DFF8();
        sub_100040A84(&qword_1000DF830, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
        sub_10007E1B8();
        sub_10007E1B8();

        return v3[0] == v2;
      }
    }
  }

  else
  {
    sub_1000256C0(v3, &qword_1000DE930, &unk_100083CC0);
  }

  return 0;
}

id sub_10003D234()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapSnapshotter.Context(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MapSnapshotter.Context(uint64_t a1)
{
  result = qword_1000DFCC8;
  if (!qword_1000DFCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003D36C(uint64_t a1)
{
  result = sub_10007D3E8();
  if (v2 <= 0x3F)
  {
    result = sub_10007DFF8();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_10003D438()
{
  result = [objc_opt_self() strongToWeakObjectsMapTable];
  qword_1000DFAE8 = result;
  return result;
}

id sub_10003D474(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v65 = sub_10007DFF8();
  v68 = *(v65 - 8);
  v3 = __chkstk_darwin(v65);
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v57 - v5;
  v7 = sub_100015240(&qword_1000DFD18, &unk_100083CF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v57 - v8;
  v10 = sub_10007D3E8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v57 - v15;
  __chkstk_darwin(v14);
  v67 = &v57 - v17;
  v18 = sub_10007DF48();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v21 = sub_10007E328();
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v22 = sub_10007DF68();
  (*(v19 + 8))(v21, v18);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  sub_100026310(a1, v9, &qword_1000DFD18, &unk_100083CF0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000256C0(v9, &qword_1000DFD18, &unk_100083CF0);
    return 0;
  }

  v23 = v11;
  v24 = v67;
  (*(v11 + 32))(v67, v9, v10);
  v61 = v6;
  v25 = *(v11 + 16);
  v25(v16, v24, v10);
  v63 = v16;
  v26 = v68;
  v9 = *(v68 + 16);
  v27 = v65;
  (v9)(v6, v66, v65);
  v28 = type metadata accessor for MapSnapshotter.Context(0);
  v29 = objc_allocWithZone(v28);
  v59 = v11 + 16;
  v60 = v25;
  v25(&v29[OBJC_IVAR____TtCC17GeneralMapsWidget14MapSnapshotterP33_D3522C9343D4C44065DB06BAD982882A7Context_identifier], v63, v10);
  v30 = v61;
  (v9)(&v29[OBJC_IVAR____TtCC17GeneralMapsWidget14MapSnapshotterP33_D3522C9343D4C44065DB06BAD982882A7Context_family], v61, v27);
  v71.receiver = v29;
  v71.super_class = v28;
  v22 = objc_msgSendSuper2(&v71, "init");
  v31 = *(v26 + 8);
  v18 = v27;
  v68 = v26 + 8;
  v61 = v31;
  v31(v30, v27);
  v21 = *(v23 + 8);
  v32 = v63;
  v63 = (v23 + 8);
  (v21)(v32, v10);
  if (qword_1000DE250 != -1)
  {
    goto LABEL_15;
  }

LABEL_5:
  v33 = [qword_1000DFAE8 objectForKey:v22];
  v34 = v64;
  if (!v33)
  {
    (v21)(v67, v10);

    return 0;
  }

  v57 = v22;
  v58 = v33;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v35 = sub_10007D5C8();
  sub_1000046BC(v35, qword_1000E4B28);
  (v9)(v34, v66, v18);
  v36 = v62;
  v37 = v67;
  (v60)(v62, v67, v10);
  v38 = sub_10007D5A8();
  v39 = sub_10007E298();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v60 = v21;
    v41 = v18;
    v42 = v40;
    v66 = swift_slowAlloc();
    v70 = v66;
    *v42 = 136446722;
    v69 = sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
    sub_100015240(&qword_1000DFCE0, &qword_100083CB8);
    v43 = sub_10007E168();
    v45 = sub_100051190(v43, v44, &v70);

    *(v42 + 4) = v45;
    v46 = v36;
    *(v42 + 12) = 2082;
    sub_100040A84(&qword_1000DFCE8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v47 = sub_10007E588();
    v49 = v48;
    v61(v34, v41);
    v50 = sub_100051190(v47, v49, &v70);

    *(v42 + 14) = v50;
    *(v42 + 22) = 2082;
    sub_100040A84(&qword_1000DFD20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v51 = sub_10007E588();
    v53 = v52;
    v54 = v60;
    (v60)(v46, v10);
    v55 = sub_100051190(v51, v53, &v70);

    *(v42 + 24) = v55;
    _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s: using existing snapshotter for %{public}s: %{public}s", v42, 0x20u);
    swift_arrayDestroy();

    (v54)(v67, v10);
  }

  else
  {

    (v21)(v36, v10);
    v61(v34, v18);
    (v21)(v37, v10);
  }

  return v58;
}

uint64_t sub_10003DC98(uint64_t a1, char *a2, uint64_t a3)
{
  v79 = a3;
  v5 = sub_10007DFF8();
  v76 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v78 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v64 - v8;
  v9 = sub_100015240(&qword_1000DFD18, &unk_100083CF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v64 - v10;
  v12 = sub_10007D3E8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v77 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v74 = &v64 - v17;
  __chkstk_darwin(v16);
  v80 = &v64 - v18;
  v19 = sub_10007DF48();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v22 = sub_10007E328();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_10007DF68();
  (*(v20 + 8))(v22, v19);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  sub_100026310(a2, v11, &qword_1000DFD18, &unk_100083CF0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000256C0(v11, &qword_1000DFD18, &unk_100083CF0);
  }

  v73 = a1;
  a2 = v80;
  (*(v13 + 32))(v80, v11, v12);
  if (qword_1000DE268 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v25 = sub_10007D5C8();
  sub_1000046BC(v25, qword_1000E4B28);
  v26 = v75;
  v27 = v76;
  v71 = v76[2];
  v72 = (v76 + 2);
  v71(v75, v79, v5);
  v28 = v74;
  v70 = *(v13 + 16);
  v70(v74, a2, v12);
  v29 = sub_10007D5A8();
  v30 = sub_10007E298();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v66 = v30;
    v32 = v26;
    v33 = v31;
    v67 = swift_slowAlloc();
    v82 = v67;
    *v33 = 136446722;
    v81 = sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
    sub_100015240(&qword_1000DFCE0, &qword_100083CB8);
    v34 = sub_10007E168();
    v65 = v29;
    v36 = v28;
    v37 = sub_100051190(v34, v35, &v82);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2082;
    sub_100040A84(&qword_1000DFCE8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v38 = sub_10007E588();
    v40 = v39;
    v41 = v27[1];
    v69 = (v27 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42 = v32;
    v43 = v12;
    v44 = v5;
    v76 = v41;
    (v41)(v42, v5);
    v45 = sub_100051190(v38, v40, &v82);

    *(v33 + 14) = v45;
    *(v33 + 22) = 2082;
    sub_100040A84(&qword_1000DFD20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v46 = sub_10007E588();
    v48 = v47;
    v49 = *(v13 + 8);
    v68 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74 = v49;
    (v49)(v36, v43);
    v50 = sub_100051190(v46, v48, &v82);
    a2 = v80;

    *(v33 + 24) = v50;
    v51 = v65;
    _os_log_impl(&_mh_execute_header, v65, v66, "%{public}s: storing snapshotter for %{public}s: %{public}s", v33, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v52 = *(v13 + 8);
    v68 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74 = v52;
    (v52)(v28, v12);
    v53 = v27[1];
    v69 = (v27 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43 = v12;
    v44 = v5;
    v76 = v53;
    (v53)(v26, v5);
  }

  v54 = v77;
  v55 = v43;
  v56 = v43;
  v57 = v70;
  v70(v77, a2, v55);
  v58 = v78;
  v59 = v71;
  v71(v78, v79, v44);
  v60 = type metadata accessor for MapSnapshotter.Context(0);
  v61 = objc_allocWithZone(v60);
  v57(&v61[OBJC_IVAR____TtCC17GeneralMapsWidget14MapSnapshotterP33_D3522C9343D4C44065DB06BAD982882A7Context_identifier], v54, v56);
  v59(&v61[OBJC_IVAR____TtCC17GeneralMapsWidget14MapSnapshotterP33_D3522C9343D4C44065DB06BAD982882A7Context_family], v58, v44);
  v83.receiver = v61;
  v83.super_class = v60;
  v62 = objc_msgSendSuper2(&v83, "init");
  (v76)(v58, v44);
  v63 = v74;
  (v74)(v54, v56);
  if (qword_1000DE250 != -1)
  {
    swift_once();
  }

  [qword_1000DFAE8 setObject:v73 forKey:v62];

  return v63(v80, v56);
}

uint64_t sub_10003E4A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007DF48();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v7 = sub_10007E328();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_10007DF68();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_1000DE250 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = [qword_1000DFAE8 keyEnumerator];
  v10 = [v9 allObjects];

  v11 = sub_10007E1D8();
  v12 = sub_10003A5AC(v11);

  if (v12)
  {
    __chkstk_darwin(result);
    *&v15[-16] = a1;
    v14 = sub_10003E7F0(sub_10003E7D0, &v15[-32], v12);
    __chkstk_darwin(v14);
    *&v15[-16] = v2;
    *&v15[-8] = a1;
    sub_10003CB10(sub_10003ECE0, &v15[-32], v14);
  }

  return result;
}

BOOL sub_10003E70C()
{
  sub_10007DFF8();
  sub_100040A84(&qword_1000DF830, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10007E1B8();
  sub_10007E1B8();
  return v2 == v1;
}

void *sub_10003E7F0(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007E528())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = sub_10007E468();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_10007E488();
        sub_10007E4B8();
        v4 = v15;
        sub_10007E4C8();
        sub_10007E498();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

id sub_10003E99C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007DFF8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v11 = sub_10007D5C8();
  sub_1000046BC(v11, qword_1000E4B28);
  (*(v7 + 16))(v9, a3, v6);
  v12 = sub_10007D5A8();
  v13 = sub_10007E2A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v10;
    v29 = v15;
    *v14 = 136446466;
    v28 = sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
    sub_100015240(&qword_1000DFCE0, &qword_100083CB8);
    v16 = sub_10007E168();
    v18 = sub_100051190(v16, v17, &v29);
    v27 = v3;
    v19 = v18;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    sub_100040A84(&qword_1000DFCE8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v20 = sub_10007E588();
    v22 = v21;
    (*(v7 + 8))(v9, v6);
    v23 = sub_100051190(v20, v22, &v29);

    *(v14 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: removing snapshotter for %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    v10 = v26;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  if (qword_1000DE250 != -1)
  {
    swift_once();
  }

  return [qword_1000DFAE8 removeObjectForKey:v10];
}

uint64_t sub_10003ECFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10003ED58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100015240(&qword_1000DEA28, &qword_1000829C0);
  v37 = v4;
  v8 = sub_10007E548();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        sub_100025500(v24, v38);
      }

      else
      {
        sub_10002549C(v24, v38);
      }

      sub_10007E5D8();
      sub_10007E5E8(v22);
      v25 = sub_10007E608();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      sub_100025500(v38, *(v9 + 56) + v23 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_10003F078(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100015240(&qword_1000DE958, &qword_100082920);
  v6 = sub_10007E548();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      v24 = sub_10007E388(*(v7 + 40));
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_10003F2E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100015240(&qword_1000DEB20, &unk_100083CD0);
  v6 = sub_10007E548();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v32 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      v22 = sub_10007E388(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v32;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_10003F554(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100015240(&qword_1000DEB28, &qword_100082AB0);
  v6 = sub_10007E548();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_100026378((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_100040ACC(v23, &v37);
        sub_10003ECFC(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_10007E418(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_100026378(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

unint64_t sub_10003F80C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007E408() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_10007E5D8();
      sub_10007E5E8(v9);
      result = sub_10007E608();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10003F9DC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007E408() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_10007E388(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_10003FB68(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100077B50(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100040210();
      goto LABEL_7;
    }

    sub_10003ED58(v13, a3 & 1);
    v20 = sub_100077B50(a2 & 1);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_10007E5B8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0) - 8) + 72) * v10;

    return sub_100040A20(a1, v18);
  }

LABEL_13:

  return sub_1000400FC(v10, a2 & 1, a1, v16);
}

id sub_10003FCB4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100077B00(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10003F078(v13, a3 & 1);
      v8 = sub_100077B00(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
        sub_10007E5B8();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10004041C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

void sub_10003FE2C(uint64_t a1, uint64_t a2, void *a3, char a4, __n128 a5)
{
  v6 = v5;
  v10 = *v5;
  v11 = sub_100077C00(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10003F2E0(v16, a4 & 1);
      v11 = sub_100077C00(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10002620C(0, &qword_1000DFD08, MKMapSnapshotter_ptr);
        sub_10007E5B8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10004057C();
      v11 = v19;
    }
  }

  v21 = *v6;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a3;
  v23 = (v21[7] + 16 * v11);
  *v23 = a1;
  v23[1] = a2;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;

  v26 = a3;
}

_OWORD *sub_10003FFB0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100077BBC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1000406F4();
      goto LABEL_7;
    }

    sub_10003F554(v13, a3 & 1);
    v19 = sub_100077BBC(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100040ACC(a2, v21);
      return sub_100040194(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_10007E5B8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1000250AC(v17);

  return sub_100026378(a1, v17);
}

uint64_t sub_1000400FC(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0);
  result = sub_100025500(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_100040194(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100026378(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void sub_100040210()
{
  v1 = v0;
  v2 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015240(&qword_1000DEA28, &qword_1000829C0);
  v5 = *v0;
  v6 = sub_10007E538();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_10002549C(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + v20) = v21;
        sub_100025500(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_10004041C()
{
  v1 = v0;
  sub_100015240(&qword_1000DE958, &qword_100082920);
  v2 = *v0;
  v3 = sub_10007E538();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_10004057C()
{
  v1 = v0;
  sub_100015240(&qword_1000DEB20, &unk_100083CD0);
  v2 = *v0;
  v3 = sub_10007E538();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000406F4()
{
  v1 = v0;
  sub_100015240(&qword_1000DEB28, &qword_100082AB0);
  v2 = *v0;
  v3 = sub_10007E538();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100040ACC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10003ECFC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_100026378(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_100040898(void *a1)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
  v2 = a1;
}

uint64_t sub_100040914()
{
  v1 = *(sub_10007D3B8() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_10003C624(v2, v3);
}

void sub_100040980()
{
  v1 = *(sub_100015240(&qword_1000DE928, &unk_100082900) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_10003C1C4(v2, v3, v4, v5);
}

uint64_t sub_100040A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040A84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100040B40()
{
  result = sub_10007DD58();
  qword_1000E4B00 = result;
  return result;
}

uint64_t sub_100040B7C()
{
  [v0 altitude];
  if ([v0 hasPitch])
  {
    [v0 altitude];
    [v0 pitch];
    v2 = sub_1000415EC(v1);
    cos(v2);
  }

  [v0 latitude];
  [v0 longitude];
  v3 = sub_1000415EC(30.0);
  tan(v3 * 0.5);

  return MKMapRectMakeWithRadialDistance();
}

uint64_t sub_100040C54()
{
  v1 = sub_10007E658();
  v24 = *(v1 - 8);
  v25 = v1;
  __chkstk_darwin(v1);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007E638();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10007E6B8();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007E6C8();
  v11 = *(v10 - 8);
  v19 = v10;
  v20 = v11;
  __chkstk_darwin(v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v0 expectedTime];
  v18[1] = (v14 * 0xDE0B6B3A7640000uLL) >> 64;
  v18[2] = 1000000000000000000 * v14;
  sub_100015240(&qword_1000DFD28, &qword_100083D18);
  sub_10007E698();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100083D00;
  sub_10007E668();
  sub_10007E678();
  sub_10007E688();
  sub_100041284(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10007E6A8();
  sub_10007E628();
  sub_10007E648();
  sub_10007D218();

  (*(v24 + 8))(v3, v25);
  (*(v22 + 8))(v6, v23);
  (*(v7 + 8))(v9, v21);
  sub_1000415A4(&qword_1000DFD30, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
  v16 = v19;
  sub_10007E6D8();
  (*(v20 + 8))(v13, v16);
  return v26;
}

void sub_100041084()
{
  MKDefaultCoordinateRegion();
  MKMapRectForCoordinateRegion();
  *&xmmword_1000E4B08 = v0;
  *(&xmmword_1000E4B08 + 1) = v1;
  qword_1000E4B18 = v2;
  unk_1000E4B20 = v3;
}

Swift::Int sub_100041124(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100015240(&unk_1000DFD50, &qword_100083D28);
    v3 = sub_10007E448();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_100040ACC(v6 + 40 * v4, v19);
      result = sub_10007E418(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_100040ACC(*(v3 + 48) + 40 * i, v18);
        v11 = sub_10007E428();
        result = sub_1000415FC(v18);
        if (v11)
        {
          sub_1000415FC(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_100041284(uint64_t a1)
{
  v2 = sub_10007E698();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100015240(&qword_1000DFD38, &qword_100083D20);
    v9 = sub_10007E448();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1000415A4(&qword_1000DFD40, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
      v16 = sub_10007E0F8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1000415A4(&qword_1000DFD48, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
          v23 = sub_10007E128();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000415A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100041650(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v58 = a5;
  v61 = a4;
  v62 = a3;
  v11 = sub_10007DFF8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 1;
  *(v7 + 104) = a2;
  *(v7 + 16) = xmmword_1000834F0;
  *(v7 + 32) = 0;
  v18 = a2;
  *(v7 + 40) = dispatch_group_create();
  *(v7 + 48) = 0;
  *(v7 + 56) = sub_100024EF0(_swiftEmptyArrayStorage);
  *(v7 + 64) = 0;
  *(v7 + 72) = _swiftEmptyArrayStorage;
  v19 = objc_allocWithZone(MKMapSnapshotOptions);

  v20 = [v19 init];
  v21 = *(v7 + 16);
  *(v7 + 16) = v20;

  v22 = *(v7 + 16);
  if (!v22)
  {
    __break(1u);
    goto LABEL_24;
  }

  v59 = v15;
  v60 = v18;
  [v22 _setShowsAppleLogo:0];
  v23 = *(v7 + 16);
  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v23;
  v25 = a1;
  sub_10007E0A8();
  [v24 setSize:?];

  v26 = *(v7 + 16);
  if (!v26)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_100015240(&qword_1000DF448, &unk_100083550);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100083500;
  v28 = objc_opt_self();
  v29 = v26;
  *(v27 + 32) = [v28 customFeatureAnnotationForMapItem:v62 styleAttributes:v61 suppressLabel:1];
  sub_100015240(&unk_1000DF450, &qword_100083560);
  isa = sub_10007E1C8().super.isa;

  [v29 _setCustomFeatureAnnotations:isa];

  v31 = *(v7 + 16);
  v32 = v31;

  if (!v31)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v32 _setSearchResultsType:1];

  v33 = v25;
  if (a6)
  {
    v34 = *(v7 + 16);
    if (v34)
    {
      v35 = v34;
      v36 = a6;
      v37 = [v36 destination];
      if (v37)
      {
        v38 = v37;
        [v37 coordinate];

        nullsub_1();
        CLLocationCoordinate2DFromGEOLocationCoordinate2D();
        sub_100041FEC(v33, v36);
        [v35 setMapRect:?];

        sub_10007E0B8();
        v39 = v59;
        (*(v12 + 104))(v59, enum case for WidgetFamily.systemSmall(_:), v11);
        sub_100042294();
        v40 = sub_10007E128();
        v41 = *(v12 + 8);
        v41(v39, v11);
        v41(v17, v11);
        if ((v40 & 1) == 0)
        {
          v42 = *(v7 + 16);
          if (!v42)
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          [v42 _setComposedRouteForRouteLine:v36];
        }

        v43 = *(v7 + 16);
        if (v43)
        {
          v44 = v43;
          [v44 setMapType:{objc_msgSend(v36, "mapType")}];

LABEL_21:
          v55 = sub_10007E0C8();
          (*(*(v55 - 8) + 8))(v33, v55);
          return;
        }

        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v45 = *(v7 + 16);
  if (!v45)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v46 = v62;
  v47 = v45;
  sub_10007E0A8();
  v50 = [objc_opt_self() cameraLookingAtMapItem:v46 forViewSize:1 allowPitch:{v48, v49}];

  [v47 setCamera:v50];
  v51 = *(v7 + 16);
  if (!v51)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v52 = v51;
  sub_100041DBC();
  [v52 _setEdgeInsets:?];

  if ((v58 & 0x100000000) != 0)
  {
    v56 = sub_10007E0C8();
    (*(*(v56 - 8) + 8))(v33, v56);

    return;
  }

  v53 = *(v7 + 16);
  if (v53)
  {
    if (v58 == 1)
    {
      v54 = 104;
    }

    else
    {
      v54 = 0;
    }

    [v53 setMapType:v54];

    goto LABEL_21;
  }

LABEL_33:
  __break(1u);
}

void sub_100041C34(void *a1)
{
  v2 = *(v1 + 104);
  if (v2 && *(v1 + 96) == 1)
  {
    v4 = v2;
    v5 = [a1 image];
    [v5 size];
    v7 = v6;
    v9 = v8;

    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = v7;
    v19.size.height = v9;
    v20 = CGRectInset(v19, -22.0, -22.0);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    [v4 coordinate];
    [a1 pointForCoordinate:?];
    v15 = v14;
    v17 = v16;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v18.x = v15;
    v18.y = v17;
    LODWORD(a1) = CGRectContainsPoint(v21, v18);

    if (a1)
    {
      *(v1 + 80) = v15;
      *(v1 + 88) = v17;
      *(v1 + 96) = 0;
    }
  }
}

uint64_t sub_100041D50()
{

  return swift_deallocClassInstance();
}

void sub_100041DBC()
{
  v0 = sub_10007DFF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E0B8();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v4 == enum case for WidgetFamily.systemMedium(_:))
    {
      sub_10007E0A8();
    }

    else if (v4 != enum case for WidgetFamily.systemLarge(_:))
    {
      sub_10007E518();
      __break(1u);
    }
  }
}

uint64_t sub_100041FEC(uint64_t a1, void *a2)
{
  v3 = sub_10007DFF8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E0B8();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for WidgetFamily.systemSmall(_:))
  {
    MKMapRectMakeWithRadialDistance();
  }

  else
  {
    if (v7 != enum case for WidgetFamily.systemMedium(_:) && v7 != enum case for WidgetFamily.systemLarge(_:))
    {
      result = sub_10007E518();
      __break(1u);
      return result;
    }

    v9 = [a2 boundingMapRegion];
    GEOMapRectForMapRegion();
  }

  sub_10007E0A8();
  sub_100041DBC();
  return _MKMapRectThatFits();
}

unint64_t sub_100042294()
{
  result = qword_1000DFF48;
  if (!qword_1000DFF48)
  {
    sub_10007DFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFF48);
  }

  return result;
}

uint64_t type metadata accessor for WidgetContentView(uint64_t a1)
{
  result = qword_1000DFFB0;
  if (!qword_1000DFFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100042360(uint64_t a1)
{
  sub_1000423CC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000423CC(uint64_t a1)
{
  if (!qword_1000DFFC0)
  {
    type metadata accessor for GeneralMapsTimelineEntry(255);
    v1 = sub_10007E3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DFFC0);
    }
  }
}

uint64_t sub_100042440@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v122 = sub_100015240(&qword_1000E0078, &qword_100083F58);
  __chkstk_darwin(v122);
  v2 = (&v90 - v1);
  v106 = sub_100015240(&qword_1000E0080, &qword_100083F60);
  __chkstk_darwin(v106);
  v97 = &v90 - v3;
  v4 = type metadata accessor for NavigationETAEntryContent(0);
  __chkstk_darwin(v4 - 8);
  v96 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100015240(&qword_1000E0088, &qword_100083F68);
  __chkstk_darwin(v104);
  v105 = &v90 - v6;
  v112 = sub_100015240(&qword_1000E0090, &qword_100083F70);
  __chkstk_darwin(v112);
  v107 = &v90 - v7;
  v103 = sub_100015240(&qword_1000E0098, &qword_100083F78);
  __chkstk_darwin(v103);
  v95 = &v90 - v8;
  v9 = type metadata accessor for CommuteWindowEntryContent(0);
  __chkstk_darwin(v9 - 8);
  v94 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100015240(&qword_1000E00A0, &qword_100083F80);
  __chkstk_darwin(v102);
  v93 = &v90 - v11;
  v12 = type metadata accessor for SuggestedDestinationEntryContent(0);
  __chkstk_darwin(v12 - 8);
  v92 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_100015240(&qword_1000E00A8, &qword_100083F88);
  __chkstk_darwin(v119);
  v120 = &v90 - v14;
  v108 = sub_100015240(&qword_1000E00B0, &qword_100083F90);
  __chkstk_darwin(v108);
  v110 = &v90 - v15;
  v99 = sub_100015240(&qword_1000E00B8, &qword_100083F98);
  __chkstk_darwin(v99);
  v100 = &v90 - v16;
  v109 = sub_100015240(&qword_1000E00C0, &qword_100083FA0);
  __chkstk_darwin(v109);
  v101 = &v90 - v17;
  v118 = sub_100015240(&qword_1000E00C8, &qword_100083FA8);
  __chkstk_darwin(v118);
  v111 = &v90 - v18;
  v114 = sub_10007D9F8();
  v19 = *(v114 - 8);
  v20 = __chkstk_darwin(v114);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v90 - v23;
  v117 = sub_10007DA18();
  v25 = *(v117 - 8);
  v26 = __chkstk_darwin(v117);
  v115 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v116 = &v90 - v28;
  v98 = sub_100015240(&qword_1000E00D0, &unk_100083FB0);
  __chkstk_darwin(v98);
  v91 = &v90 - v29;
  v30 = type metadata accessor for NearbyEntryContent(0);
  __chkstk_darwin(v30 - 8);
  v90 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100015240(&qword_1000DFF50, qword_100083D90);
  __chkstk_darwin(v32 - 8);
  v34 = &v90 - v33;
  v35 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v36 = __chkstk_darwin(v35 - 8);
  v38 = &v90 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v90 - v39;
  sub_100026310(v113, v34, &qword_1000DFF50, qword_100083D90);
  v41 = type metadata accessor for GeneralMapsTimelineEntry(0);
  if ((*(*(v41 - 8) + 48))(v34, 1, v41) != 1)
  {
    sub_100026310(&v34[*(v41 + 24)], v40, &qword_1000DE630, &unk_1000861F0);
    sub_10004515C(v34, type metadata accessor for GeneralMapsTimelineEntry);
    v43 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
    if ((*(*(v43 - 8) + 48))(v40, 1, v43) == 1)
    {
      goto LABEL_4;
    }

    v113 = v40;
    sub_100026310(v40, v38, &qword_1000DE630, &unk_1000861F0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v49 = (v19 + 16);
    v50 = (v19 + 8);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v79 = v96;
        sub_10004508C(v38, v96, type metadata accessor for NavigationETAEntryContent);
        v80 = v97;
        sub_1000450F4(v79, v97, type metadata accessor for NavigationETAEntryContent);
        KeyPath = swift_getKeyPath();
        *(v80 + *(type metadata accessor for NavigationETAWidgetView(0) + 20)) = KeyPath;
        sub_100015240(&qword_1000DEC20, &unk_100083720);
        swift_storeEnumTagMultiPayload();
        sub_10007D9E8();
        v82 = v114;
        (*v49)(v22, v24, v114);
        v83 = v116;
        sub_10007DA08();
        (*v50)(v24, v82);
        v84 = v117;
        (*(v25 + 16))(v115, v83, v117);
        sub_100045044(&qword_1000E00D8, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
        v85 = sub_10007D678();
        (*(v25 + 8))(v83, v84);
        v86 = v105;
        *(v80 + *(v106 + 36)) = v85;
        sub_100026310(v80, v86, &qword_1000E0080, &qword_100083F60);
        swift_storeEnumTagMultiPayload();
        sub_100044D8C();
        sub_100044E74();
        v87 = v107;
        sub_10007D9D8();
        sub_100026310(v87, v110, &qword_1000E0090, &qword_100083F70);
        swift_storeEnumTagMultiPayload();
        sub_100044AA4();
        sub_100044D00();
        v88 = v111;
        sub_10007D9D8();
        sub_1000256C0(v87, &qword_1000E0090, &qword_100083F70);
        sub_100026310(v88, v120, &qword_1000E00C8, &qword_100083FA8);
        swift_storeEnumTagMultiPayload();
        sub_100044A18();
        sub_100044F5C();
        sub_10007D9D8();
        sub_1000256C0(v88, &qword_1000E00C8, &qword_100083FA8);
        sub_1000256C0(v80, &qword_1000E0080, &qword_100083F60);
        v77 = type metadata accessor for NavigationETAEntryContent;
        v78 = v79;
        goto LABEL_13;
      }

      v51 = v94;
      sub_10004508C(v38, v94, type metadata accessor for CommuteWindowEntryContent);
      v61 = v95;
      sub_1000450F4(v51, v95, type metadata accessor for CommuteWindowEntryContent);
      v62 = swift_getKeyPath();
      *(v61 + *(type metadata accessor for CommuteWindowWidgetView(0) + 20)) = v62;
      sub_100015240(&qword_1000DEC20, &unk_100083720);
      swift_storeEnumTagMultiPayload();
      sub_10007D9E8();
      v63 = v114;
      (*v49)(v22, v24, v114);
      v64 = v116;
      sub_10007DA08();
      (*v50)(v24, v63);
      v65 = v117;
      (*(v25 + 16))(v115, v64, v117);
      sub_100045044(&qword_1000E00D8, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
      v66 = sub_10007D678();
      (*(v25 + 8))(v64, v65);
      *(v61 + *(v103 + 36)) = v66;
      sub_100026310(v61, v105, &qword_1000E0098, &qword_100083F78);
      swift_storeEnumTagMultiPayload();
      sub_100044D8C();
      sub_100044E74();
      v67 = v107;
      sub_10007D9D8();
      sub_100026310(v67, v110, &qword_1000E0090, &qword_100083F70);
      swift_storeEnumTagMultiPayload();
      sub_100044AA4();
      sub_100044D00();
      v68 = v111;
      sub_10007D9D8();
      sub_1000256C0(v67, &qword_1000E0090, &qword_100083F70);
      sub_100026310(v68, v120, &qword_1000E00C8, &qword_100083FA8);
      swift_storeEnumTagMultiPayload();
      sub_100044A18();
      sub_100044F5C();
      sub_10007D9D8();
      sub_1000256C0(v68, &qword_1000E00C8, &qword_100083FA8);
      sub_1000256C0(v61, &qword_1000E0098, &qword_100083F78);
      v60 = type metadata accessor for CommuteWindowEntryContent;
    }

    else if (EnumCaseMultiPayload)
    {
      v51 = v92;
      sub_10004508C(v38, v92, type metadata accessor for SuggestedDestinationEntryContent);
      v69 = v93;
      sub_1000450F4(v51, v93, type metadata accessor for SuggestedDestinationEntryContent);
      v70 = swift_getKeyPath();
      *(v69 + *(type metadata accessor for SuggestedDestinationWidgetView(0) + 20)) = v70;
      sub_100015240(&qword_1000DEC20, &unk_100083720);
      swift_storeEnumTagMultiPayload();
      sub_10007D9E8();
      v71 = v114;
      (*v49)(v22, v24, v114);
      v72 = v116;
      sub_10007DA08();
      (*v50)(v24, v71);
      v73 = v117;
      (*(v25 + 16))(v115, v72, v117);
      sub_100045044(&qword_1000E00D8, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
      v74 = sub_10007D678();
      (*(v25 + 8))(v72, v73);
      *(v69 + *(v102 + 36)) = v74;
      sub_100026310(v69, v100, &qword_1000E00A0, &qword_100083F80);
      swift_storeEnumTagMultiPayload();
      sub_100044B30();
      sub_100044C18();
      v75 = v101;
      sub_10007D9D8();
      sub_100026310(v75, v110, &qword_1000E00C0, &qword_100083FA0);
      swift_storeEnumTagMultiPayload();
      sub_100044AA4();
      sub_100044D00();
      v76 = v111;
      sub_10007D9D8();
      sub_1000256C0(v75, &qword_1000E00C0, &qword_100083FA0);
      sub_100026310(v76, v120, &qword_1000E00C8, &qword_100083FA8);
      swift_storeEnumTagMultiPayload();
      sub_100044A18();
      sub_100044F5C();
      sub_10007D9D8();
      sub_1000256C0(v76, &qword_1000E00C8, &qword_100083FA8);
      sub_1000256C0(v69, &qword_1000E00A0, &qword_100083F80);
      v60 = type metadata accessor for SuggestedDestinationEntryContent;
    }

    else
    {
      v51 = v90;
      sub_10004508C(v38, v90, type metadata accessor for NearbyEntryContent);
      v52 = v91;
      sub_1000450F4(v51, v91, type metadata accessor for NearbyEntryContent);
      v53 = swift_getKeyPath();
      *(v52 + *(type metadata accessor for NearbyWidgetView(0) + 20)) = v53;
      sub_100015240(&qword_1000DEC20, &unk_100083720);
      swift_storeEnumTagMultiPayload();
      sub_10007D9E8();
      v54 = v114;
      (*v49)(v22, v24, v114);
      v55 = v116;
      sub_10007DA08();
      (*v50)(v24, v54);
      v56 = v117;
      (*(v25 + 16))(v115, v55, v117);
      sub_100045044(&qword_1000E00D8, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
      v57 = sub_10007D678();
      (*(v25 + 8))(v55, v56);
      *(v52 + *(v98 + 36)) = v57;
      sub_100026310(v52, v100, &qword_1000E00D0, &unk_100083FB0);
      swift_storeEnumTagMultiPayload();
      sub_100044B30();
      sub_100044C18();
      v58 = v101;
      sub_10007D9D8();
      sub_100026310(v58, v110, &qword_1000E00C0, &qword_100083FA0);
      swift_storeEnumTagMultiPayload();
      sub_100044AA4();
      sub_100044D00();
      v59 = v111;
      sub_10007D9D8();
      sub_1000256C0(v58, &qword_1000E00C0, &qword_100083FA0);
      sub_100026310(v59, v120, &qword_1000E00C8, &qword_100083FA8);
      swift_storeEnumTagMultiPayload();
      sub_100044A18();
      sub_100044F5C();
      sub_10007D9D8();
      sub_1000256C0(v59, &qword_1000E00C8, &qword_100083FA8);
      sub_1000256C0(v52, &qword_1000E00D0, &unk_100083FB0);
      v60 = type metadata accessor for NearbyEntryContent;
    }

    v77 = v60;
    v78 = v51;
LABEL_13:
    sub_10004515C(v78, v77);
    v40 = v113;
    return sub_1000256C0(v40, &qword_1000DE630, &unk_1000861F0);
  }

  sub_1000256C0(v34, &qword_1000DFF50, qword_100083D90);
  v42 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
LABEL_4:
  *v2 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC20, &unk_100083720);
  swift_storeEnumTagMultiPayload();
  sub_10007D9E8();
  v44 = v114;
  (*(v19 + 16))(v22, v24, v114);
  v45 = v116;
  sub_10007DA08();
  (*(v19 + 8))(v24, v44);
  v46 = v117;
  (*(v25 + 16))(v115, v45, v117);
  sub_100045044(&qword_1000E00D8, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
  v47 = sub_10007D678();
  (*(v25 + 8))(v45, v46);
  *(v2 + *(v122 + 36)) = v47;
  sub_100026310(v2, v120, &qword_1000E0078, &qword_100083F58);
  swift_storeEnumTagMultiPayload();
  sub_100044A18();
  sub_100044F5C();
  sub_10007D9D8();
  sub_1000256C0(v2, &qword_1000E0078, &qword_100083F58);
  return sub_1000256C0(v40, &qword_1000DE630, &unk_1000861F0);
}

uint64_t sub_100043A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a1;
  v95 = sub_10007DA68();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10007D378();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v91 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10007D868();
  __chkstk_darwin(v92);
  v90 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100015240(&qword_1000E0000, &qword_100083E38);
  __chkstk_darwin(v6 - 8);
  v96 = sub_100015240(&qword_1000E0008, &qword_100083E40);
  __chkstk_darwin(v96);
  v8 = &v85 - v7;
  v9 = sub_100015240(&qword_1000E0010, &qword_100083E48);
  v100 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v98 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v97 = &v85 - v12;
  v13 = sub_100015240(&qword_1000DFF50, qword_100083D90);
  __chkstk_darwin(v13 - 8);
  v15 = &v85 - v14;
  v16 = sub_10007D3B8();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v85 - v22;
  __chkstk_darwin(v21);
  v25 = &v85 - v24;
  if (GEOConfigGetBOOL())
  {
    sub_100026310(v99, v15, &qword_1000DFF50, qword_100083D90);
    v26 = type metadata accessor for GeneralMapsTimelineEntry(0);
    if ((*(*(v26 - 8) + 48))(v15, 1, v26) != 1)
    {
      v85 = v8;
      v87 = v17;
      v99 = a2;
      v28 = *(v17 + 16);
      v28(v23, v15, v16);
      sub_10004515C(v15, type metadata accessor for GeneralMapsTimelineEntry);
      v29 = *(v17 + 32);
      v86 = v25;
      v29(v25, v23, v16);
      sub_10007D698();
      v28(v20, v25, v16);
      sub_100015240(&qword_1000E0018, &qword_100083E50);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100083D80;
      sub_10007D348();
      sub_10007D358();
      v88 = v9;
      sub_10007D328();
      sub_10007D338();
      sub_10007D368();
      sub_1000446F4(v30);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_10007D328();
      sub_10007D858();
      sub_100045044(&qword_1000E0020, &type metadata accessor for SystemFormatStyle.DateReference, &protocol conformance descriptor for SystemFormatStyle.DateReference);
      v31 = v16;
      v32 = sub_10007DBC8();
      v34 = v33;
      LOBYTE(v28) = v35;
      v36 = v93;
      sub_10007DA28();
      v37 = v85;
      v38 = v95;
      sub_10007DB98();
      sub_10002D9FC(v32, v34, v28 & 1);

      (*(v94 + 8))(v36, v38);
      v39 = sub_10007DB48();
      KeyPath = swift_getKeyPath();
      v41 = (v37 + *(sub_100015240(&qword_1000E0028, &qword_100083E88) + 36));
      *v41 = KeyPath;
      v41[1] = v39;
      v42 = sub_10007DD28();
      v43 = swift_getKeyPath();
      v44 = (v37 + *(sub_100015240(&qword_1000E0030, &qword_100083EC0) + 36));
      *v44 = v43;
      v44[1] = v42;
      v45 = swift_getKeyPath();
      v46 = v37 + *(sub_100015240(&qword_1000E0038, &qword_100083EF8) + 36);
      *v46 = v45;
      *(v46 + 8) = 2;
      v47 = swift_getKeyPath();
      v48 = v37 + *(sub_100015240(&qword_1000E0040, &qword_100083F30) + 36);
      *v48 = v47;
      *(v48 + 8) = 1;
      *(v48 + 16) = 0;
      LOBYTE(v47) = sub_10007DAB8();
      sub_10007D628();
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v57 = v37 + *(sub_100015240(&qword_1000E0048, &qword_100083F38) + 36);
      *v57 = v47;
      *(v57 + 8) = v50;
      *(v57 + 16) = v52;
      *(v57 + 24) = v54;
      *(v57 + 32) = v56;
      *(v57 + 40) = 0;
      sub_10007DD08();
      v58 = sub_10007DD38();

      v59 = (v37 + *(sub_100015240(&qword_1000E0050, &qword_100083F40) + 36));
      v60 = sub_100015240(&qword_1000E0058, &qword_100083F48);
      v61 = (v59 + *(v60 + 52));
      v62 = *(sub_10007D718() + 20);
      v63 = enum case for RoundedCornerStyle.continuous(_:);
      v64 = sub_10007D918();
      v65 = v61 + v62;
      v9 = v88;
      v66 = v63;
      a2 = v99;
      (*(*(v64 - 8) + 104))(v65, v66, v64);
      __asm { FMOV            V0.2D, #4.0 }

      *v61 = _Q0;
      *v59 = v58;
      *(v59 + *(v60 + 56)) = 256;
      LOBYTE(v60) = sub_10007DAC8();
      sub_10007D628();
      v72 = v37 + *(v96 + 36);
      *v72 = v60;
      *(v72 + 8) = v73;
      *(v72 + 16) = v74;
      *(v72 + 24) = v75;
      *(v72 + 32) = v76;
      *(v72 + 40) = 0;
      sub_10007DE88();
      sub_10007D728();
      (*(v87 + 8))(v86, v31);
      v77 = v98;
      sub_10002DB0C(v37, v98, &qword_1000E0008, &qword_100083E40);
      v78 = (v77 + *(v9 + 36));
      v79 = v106;
      v78[4] = v105;
      v78[5] = v79;
      v78[6] = v107;
      v80 = v102;
      *v78 = v101;
      v78[1] = v80;
      v81 = v104;
      v78[2] = v103;
      v78[3] = v81;
      v82 = v77;
      v83 = v97;
      sub_10002DB0C(v82, v97, &qword_1000E0010, &qword_100083E48);
      sub_10002DB0C(v83, a2, &qword_1000E0010, &qword_100083E48);
      v27 = 0;
      return (*(v100 + 56))(a2, v27, 1, v9);
    }

    sub_1000256C0(v15, &qword_1000DFF50, qword_100083D90);
  }

  v27 = 1;
  return (*(v100 + 56))(a2, v27, 1, v9);
}

uint64_t sub_10004450C@<X0>(uint64_t a1@<X8>)
{
  sub_100042440(a1);
  v3 = sub_10007DE78();
  v5 = v4;
  v6 = a1 + *(sub_100015240(&qword_1000DFFF0, &qword_100083E28) + 36);
  sub_100043A80(v1, v6);
  result = sub_100015240(&qword_1000DFFF8, &qword_100083E30);
  v8 = (v6 + *(result + 36));
  *v8 = v3;
  v8[1] = v5;
  return result;
}

uint64_t sub_10004458C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007D7D8();
  *a1 = result;
  return result;
}

uint64_t sub_1000445E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007D768();
  *a1 = result;
  return result;
}

uint64_t sub_10004463C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007D7B8();
  *a1 = result;
  return result;
}

uint64_t sub_100044690@<X0>(uint64_t a1@<X8>)
{
  result = sub_10007D818();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void *sub_1000446F4(uint64_t a1)
{
  v2 = sub_10007D378();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100015240(&qword_1000E0060, &qword_100083F50);
    v9 = sub_10007E448();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      sub_100045044(&qword_1000E0068, &type metadata accessor for Date.ComponentsFormatStyle.Field, &protocol conformance descriptor for Date.ComponentsFormatStyle.Field);
      v15 = sub_10007E0F8();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v17 * v13, v2);
          sub_100045044(&qword_1000E0070, &type metadata accessor for Date.ComponentsFormatStyle.Field, &protocol conformance descriptor for Date.ComponentsFormatStyle.Field);
          v23 = sub_10007E128();
          v24 = *v14;
          (*v14)(v6, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_100044A18()
{
  result = qword_1000E00E0;
  if (!qword_1000E00E0)
  {
    sub_100015288(&qword_1000E00C8, &qword_100083FA8);
    sub_100044AA4();
    sub_100044D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E00E0);
  }

  return result;
}

unint64_t sub_100044AA4()
{
  result = qword_1000E00E8;
  if (!qword_1000E00E8)
  {
    sub_100015288(&qword_1000E00C0, &qword_100083FA0);
    sub_100044B30();
    sub_100044C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E00E8);
  }

  return result;
}

unint64_t sub_100044B30()
{
  result = qword_1000E00F0;
  if (!qword_1000E00F0)
  {
    sub_100015288(&qword_1000E00D0, &unk_100083FB0);
    sub_100045044(&qword_1000E00F8, type metadata accessor for NearbyWidgetView, &unk_100082B54);
    sub_10002DDAC(&qword_1000E0100, &qword_1000E0108, &qword_100083FF8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E00F0);
  }

  return result;
}

unint64_t sub_100044C18()
{
  result = qword_1000E0110;
  if (!qword_1000E0110)
  {
    sub_100015288(&qword_1000E00A0, &qword_100083F80);
    sub_100045044(&qword_1000E0118, type metadata accessor for SuggestedDestinationWidgetView, &unk_100084C70);
    sub_10002DDAC(&qword_1000E0100, &qword_1000E0108, &qword_100083FF8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0110);
  }

  return result;
}

unint64_t sub_100044D00()
{
  result = qword_1000E0120;
  if (!qword_1000E0120)
  {
    sub_100015288(&qword_1000E0090, &qword_100083F70);
    sub_100044D8C();
    sub_100044E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0120);
  }

  return result;
}

unint64_t sub_100044D8C()
{
  result = qword_1000E0128;
  if (!qword_1000E0128)
  {
    sub_100015288(&qword_1000E0098, &qword_100083F78);
    sub_100045044(&qword_1000E0130, type metadata accessor for CommuteWindowWidgetView, &unk_100083628);
    sub_10002DDAC(&qword_1000E0100, &qword_1000E0108, &qword_100083FF8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0128);
  }

  return result;
}

unint64_t sub_100044E74()
{
  result = qword_1000E0138;
  if (!qword_1000E0138)
  {
    sub_100015288(&qword_1000E0080, &qword_100083F60);
    sub_100045044(&qword_1000E0140, type metadata accessor for NavigationETAWidgetView, &unk_100085068);
    sub_10002DDAC(&qword_1000E0100, &qword_1000E0108, &qword_100083FF8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0138);
  }

  return result;
}

unint64_t sub_100044F5C()
{
  result = qword_1000E0148;
  if (!qword_1000E0148)
  {
    sub_100015288(&qword_1000E0078, &qword_100083F58);
    sub_100045044(&qword_1000E0150, type metadata accessor for PlaceholderView, &unk_100084034);
    sub_10002DDAC(&qword_1000E0100, &qword_1000E0108, &qword_100083FF8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0148);
  }

  return result;
}

uint64_t sub_100045044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004508C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000450F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004515C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000451BC()
{
  result = qword_1000E0158;
  if (!qword_1000E0158)
  {
    sub_100015288(&qword_1000DFFF0, &qword_100083E28);
    sub_100045274();
    sub_10002DDAC(&qword_1000E0170, &qword_1000DFFF8, &qword_100083E30, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0158);
  }

  return result;
}

unint64_t sub_100045274()
{
  result = qword_1000E0160;
  if (!qword_1000E0160)
  {
    sub_100015288(&qword_1000E0168, &qword_100084000);
    sub_100044A18();
    sub_100044F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0160);
  }

  return result;
}

void sub_100045384(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v2 = sub_10007D5C8();
  sub_1000046BC(v2, qword_1000E4B28);
  v3 = sub_10007D5A8();
  v4 = sub_10007E298();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PlaceholderSmallWidgetView: body", v5, 2u);
  }

  *a1 = sub_1000491C4;
  a1[1] = 0;
}

uint64_t sub_100045474@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v22 = sub_10007DA88();
  v1 = *(v22 - 8);
  __chkstk_darwin(v22);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100015240(&qword_1000E0410, &qword_1000843E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  v8 = sub_100015240(&qword_1000E0418, &qword_1000843E8);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  v11 = sub_100015240(&qword_1000E0420, &qword_1000843F0);
  __chkstk_darwin(v11);
  v13 = (v21 - v12);
  *v13 = sub_10007DE88();
  v13[1] = v14;
  v15 = sub_1000491C8();
  if (v16)
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  else
  {
    v17 = v15;
    sub_10007D688();
    v23 = v17;
    v24 = 1;
    v25 = v18 * 0.25;
    sub_1000493B8();
    v26 = 0;
    v27 = 0;
    sub_10007DC58();
    (*(v5 + 32))(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
  }

  v19 = sub_100015240(&qword_1000E0428, &qword_1000843F8);
  sub_100008510(v10, v13 + *(v19 + 44));
  sub_10007DA78();
  sub_10007DE88();
  type metadata accessor for PlaceholderBackgroundView(0);
  sub_10002DDAC(&qword_1000E0430, &qword_1000E0420, &qword_1000843F0, &protocol conformance descriptor for ZStack<A>);
  sub_100048CE4(&qword_1000DF950, type metadata accessor for PlaceholderBackgroundView, &unk_100084548);
  sub_10007DCB8();
  (*(v1 + 8))(v3, v22);
  return sub_1000256C0(v13, &qword_1000E0420, &qword_1000843F0);
}

uint64_t sub_10004581C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100015240(&qword_1000E0458, &qword_100084460);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  *v8 = sub_10007D878();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_100015240(&qword_1000E0460, &qword_100084468);
  sub_100045978(&v8[*(v9 + 44)]);
  sub_100026310(v8, v6, &qword_1000E0458, &qword_100084460);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0x3FF0000000000000;
  v10 = sub_100015240(&qword_1000E0468, &qword_100084470);
  sub_100026310(v6, a2 + *(v10 + 48), &qword_1000E0458, &qword_100084460);
  sub_1000256C0(v8, &qword_1000E0458, &qword_100084460);
  return sub_1000256C0(v6, &qword_1000E0458, &qword_100084460);
}

uint64_t sub_100045978@<X0>(char *a2@<X8>)
{
  v3 = sub_100015240(&qword_1000E0470, &qword_100084478);
  __chkstk_darwin(v3);
  v5 = (&v20 - v4);
  v6 = sub_100015240(&qword_1000E0478, &qword_100084480);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  *v5 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v5 + *(v3 + 36)) = 0x4030000000000000;
  v13 = v5 + *(v3 + 40);
  *v13 = sub_10007D948();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v13[*(sub_100015240(&qword_1000E0480, &qword_100084488) + 44)];
  *v14 = sub_10007D878();
  *(v14 + 1) = 0x402E000000000000;
  v14[16] = 0;
  v15 = sub_100015240(&qword_1000E0488, &qword_100084490);
  sub_100045C4C(&v14[*(v15 + 44)]);
  sub_10002DDAC(&qword_1000E0490, &qword_1000E0470, &qword_100084478, &unk_100083B00);
  sub_10007DC58();
  sub_1000256C0(v5, &qword_1000E0470, &qword_100084478);
  v16 = *(v7 + 16);
  v16(v10, v12, v6);
  v16(a2, v10, v6);
  v17 = &a2[*(sub_100015240(&qword_1000E0498, &qword_100084498) + 48)];
  v18 = *(v7 + 8);
  v18(v12, v6);
  *v17 = 0;
  v17[8] = 1;
  *(v17 + 2) = 0x3FF0000000000000;
  return (v18)(v10, v6);
}

uint64_t sub_100045C4C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v25 = sub_10007DD98();
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007D638();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100015240(&qword_1000DF1F8, &qword_100084360);
  __chkstk_darwin(v26);
  v12 = &v24 - v11;
  v13 = sub_100015240(&qword_1000DF228, &qword_100084A50);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  sub_10002CA74(v10);
  sub_10002EE74(v10);
  (*(v8 + 8))(v10, v7);
  sub_10007DD78();
  v19 = v25;
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v25);
  sub_10007DDE8();

  (*(v4 + 8))(v6, v19);
  sub_10007DFA8();
  v20 = sub_10007DFC8();
  (*(*(v20 - 8) + 56))(v3, 0, 1, v20);
  sub_10007DDD8();

  sub_1000256C0(v3, &qword_1000DF1E8, &unk_100084A40);
  sub_10007DE88();
  sub_10007D668();
  v21 = &v12[*(v26 + 36)];
  v22 = v29;
  *v21 = v28;
  *(v21 + 1) = v22;
  *(v21 + 2) = v30;
  sub_10002DDF4();
  sub_10007DC78();
  sub_1000256C0(v12, &qword_1000DF1F8, &qword_100084360);
  sub_100026310(v18, v16, &qword_1000DF228, &qword_100084A50);
  sub_100026310(v16, v27, &qword_1000DF228, &qword_100084A50);
  sub_1000256C0(v18, &qword_1000DF228, &qword_100084A50);
  return sub_1000256C0(v16, &qword_1000DF228, &qword_100084A50);
}

uint64_t sub_100046094@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_10007DA88();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100015240(&qword_1000E0440, &qword_100084450);
  __chkstk_darwin(v5);
  v7 = v10 - v6;
  *v7 = sub_10007D948();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_100015240(&qword_1000E0448, &qword_100084458);
  sub_10004581C(&v7[*(v8 + 44)]);
  sub_10007DA78();
  sub_10007DE88();
  type metadata accessor for PlaceholderBackgroundView(0);
  sub_10002DDAC(&qword_1000E0450, &qword_1000E0440, &qword_100084450, &protocol conformance descriptor for VStack<A>);
  sub_100048CE4(&qword_1000DF950, type metadata accessor for PlaceholderBackgroundView, &unk_100084548);
  sub_10007DCB8();
  (*(v2 + 8))(v4, v1);
  return sub_1000256C0(v7, &qword_1000E0440, &qword_100084450);
}

uint64_t sub_1000462D8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100015240(&qword_1000E03C0, &qword_100084340);
  __chkstk_darwin(v3);
  v5 = (&v19 - v4);
  v6 = sub_100015240(&qword_1000E03C8, &qword_100084348);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  *v5 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v5 + *(v3 + 36)) = 0x4030000000000000;
  v13 = v5 + *(v3 + 40);
  *v13 = sub_10007D878();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_100015240(&qword_1000E03D0, &qword_100084350);
  sub_10004657C(&v13[*(v14 + 44)]);
  sub_10002DDAC(&qword_1000E03D8, &qword_1000E03C0, &qword_100084340, &unk_100083B00);
  sub_10007DC58();
  sub_1000256C0(v5, &qword_1000E03C0, &qword_100084340);
  v15 = *(v7 + 16);
  v15(v10, v12, v6);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0x3FF0000000000000;
  v16 = sub_100015240(&qword_1000E03E0, &qword_100084358);
  v15((a2 + *(v16 + 48)), v10, v6);
  v17 = *(v7 + 8);
  v17(v12, v6);
  return (v17)(v10, v6);
}

uint64_t sub_10004657C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_100015240(&qword_1000DEF70, &qword_100082F10);
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = __chkstk_darwin(v1);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v39 = &v37 - v4;
  v5 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = sub_10007DD98();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007D638();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100015240(&qword_1000DF1F8, &qword_100084360);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v19 = sub_100015240(&qword_1000DF228, &qword_100084A50);
  v20 = __chkstk_darwin(v19 - 8);
  v38 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v44 = &v37 - v22;
  sub_10002CA74(v15);
  sub_10002EE74(v15);
  (*(v13 + 8))(v15, v12);
  sub_10007DD78();
  (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
  sub_10007DDE8();

  (*(v9 + 8))(v11, v8);
  sub_10007DFA8();
  v23 = sub_10007DFC8();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  sub_10007DDD8();

  sub_1000256C0(v7, &qword_1000DF1E8, &unk_100084A40);
  sub_10007DE88();
  sub_10007D668();
  v24 = &v18[*(v16 + 36)];
  v25 = v46;
  *v24 = v45;
  *(v24 + 1) = v25;
  *(v24 + 2) = v47;
  sub_10002DDF4();
  v26 = v44;
  sub_10007DC78();
  sub_1000256C0(v18, &qword_1000DF1F8, &qword_100084360);
  sub_100015240(&qword_1000DEFB8, &qword_100082F60);
  sub_10002DDAC(&qword_1000DEFC0, &qword_1000DEFB8, &qword_100082F60, &protocol conformance descriptor for TupleView<A>);
  v27 = v39;
  sub_10007DE48();
  v28 = v38;
  sub_100026310(v26, v38, &qword_1000DF228, &qword_100084A50);
  v30 = v40;
  v29 = v41;
  v31 = *(v41 + 16);
  v32 = v42;
  v31(v40, v27, v42);
  v33 = v43;
  sub_100026310(v28, v43, &qword_1000DF228, &qword_100084A50);
  v34 = sub_100015240(&qword_1000E03E8, &qword_100084368);
  v31((v33 + *(v34 + 48)), v30, v32);
  v35 = *(v29 + 8);
  v35(v27, v32);
  sub_1000256C0(v44, &qword_1000DF228, &qword_100084A50);
  v35(v30, v32);
  return sub_1000256C0(v28, &qword_1000DF228, &qword_100084A50);
}

uint64_t sub_100046B78@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100046BD8@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_10007DA88();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100015240(&qword_1000E03A8, &qword_1000842F8);
  __chkstk_darwin(v5);
  v7 = v10 - v6;
  *v7 = sub_10007D948();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_100015240(&qword_1000E03B0, &qword_100084300);
  sub_1000462D8(&v7[*(v8 + 44)]);
  sub_10007DA78();
  sub_10007DE88();
  type metadata accessor for PlaceholderBackgroundView(0);
  sub_10002DDAC(&qword_1000E03B8, &qword_1000E03A8, &qword_1000842F8, &protocol conformance descriptor for VStack<A>);
  sub_100048CE4(&qword_1000DF950, type metadata accessor for PlaceholderBackgroundView, &unk_100084548);
  sub_10007DCB8();
  (*(v2 + 8))(v4, v1);
  return sub_1000256C0(v7, &qword_1000E03A8, &qword_1000842F8);
}

uint64_t sub_100046E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32[3] = a3;
  v32[4] = a4;
  v32[1] = a1;
  v32[2] = a2;
  v33 = a5;
  v5 = sub_100015240(&qword_1000DEFE8, &qword_100082F80);
  __chkstk_darwin(v5);
  v7 = (v32 - v6);
  v8 = sub_100015240(&qword_1000E03F8, &qword_100084380);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - v10;
  v12 = sub_100015240(&qword_1000E0400, &unk_100084388);
  v13 = __chkstk_darwin(v12 - 8);
  v32[0] = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v32 - v15;
  *v7 = sub_10007DE88();
  v7[1] = v17;
  v18 = sub_100015240(&qword_1000DEFF8, &qword_100082F90);
  sub_100047210(v7 + *(v18 + 44));
  v19 = sub_10002DDAC(&qword_1000DF000, &qword_1000DEFE8, &qword_100082F80, &protocol conformance descriptor for ZStack<A>);
  sub_10007DC58();
  sub_1000256C0(v7, &qword_1000DEFE8, &qword_100082F80);
  v38 = v5;
  v39 = v19;
  swift_getOpaqueTypeConformance2();
  sub_10007DC78();
  (*(v9 + 8))(v11, v8);
  v20 = sub_10007D958();
  LOBYTE(v38) = 0;
  sub_100047610(v35);
  *&v34[7] = v35[0];
  *&v34[23] = v35[1];
  *&v34[39] = v35[2];
  *&v34[55] = v35[3];
  LOBYTE(v11) = v38;
  v21 = v32[0];
  sub_100026310(v16, v32[0], &qword_1000E0400, &unk_100084388);
  v22 = v33;
  sub_100026310(v21, v33, &qword_1000E0400, &unk_100084388);
  v23 = sub_100015240(&qword_1000E0408, &unk_100084398);
  v24 = v22 + *(v23 + 48);
  v36[0] = v20;
  v36[1] = 0;
  v37[0] = v11;
  *&v37[1] = *v34;
  *&v37[17] = *&v34[16];
  *&v37[33] = *&v34[32];
  *&v37[49] = *&v34[48];
  v25 = *&v34[63];
  *&v37[64] = *&v34[63];
  v26 = *v37;
  *v24 = v20;
  *(v24 + 16) = v26;
  v27 = *&v37[16];
  v28 = *&v37[32];
  v29 = *&v37[48];
  *(v24 + 80) = v25;
  *(v24 + 48) = v28;
  *(v24 + 64) = v29;
  *(v24 + 32) = v27;
  v30 = v22 + *(v23 + 64);
  *v30 = 0;
  *(v30 + 8) = 0;
  sub_100026310(v36, &v38, &qword_1000DF010, &qword_100082FA0);
  sub_1000256C0(v16, &qword_1000E0400, &unk_100084388);
  v38 = v20;
  v39 = 0;
  v40 = v11;
  v42 = *&v34[16];
  v43 = *&v34[32];
  *v44 = *&v34[48];
  *&v44[15] = *&v34[63];
  v41 = *v34;
  sub_1000256C0(&v38, &qword_1000DF010, &qword_100082FA0);
  return sub_1000256C0(v21, &qword_1000E0400, &unk_100084388);
}

uint64_t sub_100047210@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_100015240(&qword_1000DF018, &qword_100082FA8);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - v2;
  v4 = sub_100015240(&qword_1000DF020, &qword_100082FB0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v10 = sub_100015240(&qword_1000DF028, &qword_100082FB8);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  sub_10007DE68();
  *&v15[*(sub_100015240(&qword_1000DF030, &qword_100082FC0) + 56)] = 256;
  sub_10007DE88();
  sub_10007D668();
  v16 = &v15[*(v11 + 44)];
  v17 = v37;
  *v16 = v36;
  *(v16 + 1) = v17;
  *(v16 + 2) = v38;
  v18 = sub_10007DD88();
  v19 = sub_10007DB08();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  v20 = sub_10007DB28();
  sub_1000256C0(v3, &qword_1000DF018, &qword_100082FA8);
  KeyPath = swift_getKeyPath();
  v33 = v18;
  v34 = KeyPath;
  v35 = v20;
  sub_10007DB18();
  sub_100015240(&qword_1000DF038, &qword_100082FF8);
  sub_10002DA1C();
  sub_10007DC48();

  v22 = v32;
  sub_100026310(v15, v32, &qword_1000DF028, &qword_100082FB8);
  v23 = *(v5 + 16);
  v24 = v30;
  v23(v30, v9, v4);
  v25 = v22;
  v26 = v31;
  sub_100026310(v25, v31, &qword_1000DF028, &qword_100082FB8);
  v27 = sub_100015240(&qword_1000DF058, &qword_100083008);
  v23((v26 + *(v27 + 48)), v24, v4);
  v28 = *(v5 + 8);
  v28(v9, v4);
  sub_1000256C0(v15, &qword_1000DF028, &qword_100082FB8);
  v28(v24, v4);
  return sub_1000256C0(v32, &qword_1000DF028, &qword_100082FB8);
}

uint64_t sub_100047610@<X0>(uint64_t a5@<X8>)
{
  sub_10002D9A8();

  v6 = sub_10007DBF8();
  v39 = v7;
  v40 = v6;
  v38 = v8;
  sub_10007DA38();
  v9 = sub_10007DBA8();
  v11 = v10;
  v13 = v12;
  sub_10007DB38();
  v14 = sub_10007DBB8();
  v16 = v15;
  v18 = v17;

  sub_10002D9FC(v9, v11, v13 & 1);

  sub_10007DB18();
  v19 = sub_10007DB88();
  v43 = v20;
  v44 = v19;
  v42 = v21;
  v45 = v22;
  sub_10002D9FC(v14, v16, v18 & 1);

  sub_10002D9FC(v40, v39, v38 & 1);

  v23 = sub_10007DBF8();
  v46 = v24;
  v47 = v23;
  LOBYTE(v9) = v25;
  sub_10007DA48();
  v26 = sub_10007DBA8();
  v28 = v27;
  v30 = v29;
  sub_10007DAF8();
  v31 = sub_10007DBB8();
  v33 = v32;
  v41 = v34;
  v36 = v35;

  sub_10002D9FC(v26, v28, v30 & 1);

  sub_10002D9FC(v47, v46, v9 & 1);

  *a5 = v44;
  *(a5 + 8) = v43;
  *(a5 + 16) = v42 & 1;
  *(a5 + 24) = v45;
  *(a5 + 32) = v31;
  *(a5 + 40) = v33;
  *(a5 + 48) = v41 & 1;
  *(a5 + 56) = v36;
  sub_10002DA0C(v44, v43, v42 & 1);

  sub_10002DA0C(v31, v33, v41 & 1);

  sub_10002D9FC(v31, v33, v41 & 1);

  sub_10002D9FC(v44, v43, v42 & 1);
}

uint64_t sub_100047928@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *a2 = sub_10007D878();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = sub_100015240(&qword_1000E03F0, &unk_100084370);
  return sub_100046E1C(v4, v5, v7, v6, a2 + *(v8 + 44));
}

uint64_t sub_1000479A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10007DF98();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  if (qword_1000DE258 != -1)
  {
    swift_once();
  }

  sub_100047CC0(&qword_1000DEF58, &qword_100083AB0, &type metadata accessor for WidgetRenderingMode, v8);
  sub_10007DF88();
  sub_10007DF78();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v9(v8, v2);
  result = sub_10007DD38();
  *a1 = result;
  return result;
}

uint64_t sub_100047B3C(uint64_t a1)
{
  if (qword_1000DE230 != -1)
  {
    swift_once();
  }

  v1 = qword_1000E4AE0;
  sub_10007DE88();
  sub_10007D668();
  *&v4[22] = v6;
  *&v4[38] = v7;
  *&v4[6] = v5;
  *&v3[10] = *v4;
  *v3 = v1;
  *&v3[8] = 256;
  *&v3[26] = *&v4[16];
  *&v3[42] = *&v4[32];
  *&v3[56] = *(&v7 + 1);

  sub_100015240(&qword_1000E0558, &qword_100084598);
  sub_1000496B4();
  sub_10007DC78();
  v8[0] = *v3;
  v8[1] = *&v3[16];
  v8[2] = *&v3[32];
  v8[3] = *&v3[48];
  return sub_1000256C0(v8, &qword_1000E0558, &qword_100084598);
}

uint64_t sub_100047CC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_10007D848();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100015240(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100026310(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_10007E2B8();
    v19 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100047EC4@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v43 = sub_100015240(&qword_1000E0208, &qword_100084088);
  __chkstk_darwin(v43);
  v45 = (&v41 - v1);
  v48 = sub_100015240(&qword_1000E0210, &qword_100084090);
  __chkstk_darwin(v48);
  v46 = &v41 - v2;
  v44 = type metadata accessor for PlaceholderLargeWidgetView(0);
  __chkstk_darwin(v44);
  v42 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for PlaceholderMediumWidgetView(0);
  __chkstk_darwin(v47);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_100015240(&qword_1000E0218, &qword_100084098);
  __chkstk_darwin(v52);
  v51 = &v41 - v6;
  v49 = sub_100015240(&qword_1000E0220, &qword_1000840A0);
  __chkstk_darwin(v49);
  v8 = &v41 - v7;
  v9 = sub_100015240(&qword_1000E0228, &qword_1000840A8);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v50 = sub_100015240(&qword_1000E0230, &qword_1000840B0);
  __chkstk_darwin(v50);
  v13 = &v41 - v12;
  v53 = sub_100015240(&qword_1000E0238, &unk_1000840B8);
  __chkstk_darwin(v53);
  v15 = &v41 - v14;
  v16 = sub_10007DFF8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100047CC0(&qword_1000DEC20, &unk_100083720, &type metadata accessor for WidgetFamily, v19);
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == enum case for WidgetFamily.systemSmall(_:))
  {
    swift_storeEnumTagMultiPayload();
    sub_100048C90();
    sub_100048CE4(&qword_1000E0260, type metadata accessor for PlaceholderMediumWidgetView, &unk_1000841B8);
    sub_10007D9D8();
    sub_100026310(v13, v8, &qword_1000E0230, &qword_1000840B0);
    swift_storeEnumTagMultiPayload();
    sub_100048BD4();
    sub_100048D2C();
    sub_10007D9D8();
    sub_1000256C0(v13, &qword_1000E0230, &qword_1000840B0);
    sub_100026310(v15, v51, &qword_1000E0238, &unk_1000840B8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_100048DE8();
    sub_10002D148();
LABEL_3:
    sub_10007D9D8();
    return sub_1000256C0(v15, &qword_1000E0238, &unk_1000840B8);
  }

  if (v20 == enum case for WidgetFamily.systemMedium(_:))
  {
    *v5 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    sub_100048E74(v5, v11, type metadata accessor for PlaceholderMediumWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100048C90();
    sub_100048CE4(&qword_1000E0260, type metadata accessor for PlaceholderMediumWidgetView, &unk_1000841B8);
    sub_10007D9D8();
    sub_100026310(v13, v8, &qword_1000E0230, &qword_1000840B0);
    swift_storeEnumTagMultiPayload();
    sub_100048BD4();
    sub_100048D2C();
    sub_10007D9D8();
    sub_1000256C0(v13, &qword_1000E0230, &qword_1000840B0);
    sub_100026310(v15, v51, &qword_1000E0238, &unk_1000840B8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_100048DE8();
    sub_10002D148();
    sub_10007D9D8();
    sub_1000256C0(v15, &qword_1000E0238, &unk_1000840B8);
    v22 = v5;
    v23 = type metadata accessor for PlaceholderMediumWidgetView;
  }

  else
  {
    if (v20 != enum case for WidgetFamily.systemLarge(_:))
    {
      v28 = v51;
      if (v20 == enum case for WidgetFamily.systemExtraLarge(_:) || v20 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v20 == enum case for WidgetFamily.accessoryCorner(_:) || v20 == enum case for WidgetFamily.accessoryCircular(_:) || v20 != enum case for WidgetFamily.accessoryRectangular(_:))
      {
        while (1)
        {
          sub_10007E518();
          __break(1u);
        }
      }

      if (qword_1000DE280 != -1)
      {
        swift_once();
      }

      v29 = qword_1000E4B68;
      v55._countAndFlagsBits = 0xD000000000000014;
      v39._countAndFlagsBits = 0x800000010008F6C0;
      v59._countAndFlagsBits = 0x686372616553;
      v55._object = 0x800000010008F6A0;
      v57.value._countAndFlagsBits = 0;
      v57.value._object = 0;
      v30.super.isa = qword_1000E4B68;
      v59._object = 0xE600000000000000;
      v31 = sub_10007D258(v55, v57, v30, v59, 0xD00000000000001FLL, v39);
      v33 = v32;
      v56._countAndFlagsBits = 0xD000000000000010;
      v40._countAndFlagsBits = 0x800000010008F700;
      v56._object = 0x800000010008F6E0;
      v58.value._countAndFlagsBits = 0;
      v58.value._object = 0;
      v34.super.isa = v29;
      v60._countAndFlagsBits = 1936744781;
      v60._object = 0xE400000000000000;
      v35 = sub_10007D258(v56, v58, v34, v60, 0xD000000000000019, v40);
      v36 = v45;
      *v45 = v31;
      v36[1] = v33;
      v36[2] = v35;
      v36[3] = v37;
      swift_storeEnumTagMultiPayload();
      sub_100048CE4(&qword_1000E0240, type metadata accessor for PlaceholderLargeWidgetView, &unk_1000842A8);
      sub_100048B80();
      v38 = v46;
      sub_10007D9D8();
      sub_100026310(v38, v8, &qword_1000E0210, &qword_100084090);
      swift_storeEnumTagMultiPayload();
      sub_100048BD4();
      sub_100048D2C();
      sub_10007D9D8();
      sub_1000256C0(v38, &qword_1000E0210, &qword_100084090);
      sub_100026310(v15, v28, &qword_1000E0238, &unk_1000840B8);
      swift_storeEnumTagMultiPayload();
      sub_100015240(&qword_1000DEC58, &unk_100082C50);
      sub_100048DE8();
      sub_10002D148();
      goto LABEL_3;
    }

    v24 = v8;
    KeyPath = swift_getKeyPath();
    v26 = v42;
    *v42 = KeyPath;
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    sub_100048E74(v26, v45, type metadata accessor for PlaceholderLargeWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100048CE4(&qword_1000E0240, type metadata accessor for PlaceholderLargeWidgetView, &unk_1000842A8);
    sub_100048B80();
    v27 = v46;
    sub_10007D9D8();
    sub_100026310(v27, v24, &qword_1000E0210, &qword_100084090);
    swift_storeEnumTagMultiPayload();
    sub_100048BD4();
    sub_100048D2C();
    sub_10007D9D8();
    sub_1000256C0(v27, &qword_1000E0210, &qword_100084090);
    sub_100026310(v15, v51, &qword_1000E0238, &unk_1000840B8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_100048DE8();
    sub_10002D148();
    sub_10007D9D8();
    sub_1000256C0(v15, &qword_1000E0238, &unk_1000840B8);
    v22 = v26;
    v23 = type metadata accessor for PlaceholderLargeWidgetView;
  }

  return sub_100048EDC(v22, v23);
}

unint64_t sub_100048B80()
{
  result = qword_1000E0248;
  if (!qword_1000E0248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0248);
  }

  return result;
}

unint64_t sub_100048BD4()
{
  result = qword_1000E0250;
  if (!qword_1000E0250)
  {
    sub_100015288(&qword_1000E0230, &qword_1000840B0);
    sub_100048C90();
    sub_100048CE4(&qword_1000E0260, type metadata accessor for PlaceholderMediumWidgetView, &unk_1000841B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0250);
  }

  return result;
}

unint64_t sub_100048C90()
{
  result = qword_1000E0258;
  if (!qword_1000E0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0258);
  }

  return result;
}

uint64_t sub_100048CE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100048D2C()
{
  result = qword_1000E0268;
  if (!qword_1000E0268)
  {
    sub_100015288(&qword_1000E0210, &qword_100084090);
    sub_100048CE4(&qword_1000E0240, type metadata accessor for PlaceholderLargeWidgetView, &unk_1000842A8);
    sub_100048B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0268);
  }

  return result;
}

unint64_t sub_100048DE8()
{
  result = qword_1000E0270;
  if (!qword_1000E0270)
  {
    sub_100015288(&qword_1000E0238, &unk_1000840B8);
    sub_100048BD4();
    sub_100048D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0270);
  }

  return result;
}

uint64_t sub_100048E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100048EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100048F3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100048F84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100048FFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_100049538(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1000490A8()
{
  result = qword_1000E0398;
  if (!qword_1000E0398)
  {
    sub_100015288(&qword_1000E03A0, &qword_1000841B0);
    sub_100048DE8();
    sub_10002D148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0398);
  }

  return result;
}

uint64_t sub_1000491C8()
{
  if (qword_1000DE278 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007D5F8();

  v0 = v11[1];
  v1 = v12;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v2 = sub_10007D5C8();
  sub_1000046BC(v2, qword_1000E4B28);
  v3 = sub_10007D5A8();
  v4 = sub_10007E298();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136446210;
    v12 = v1;
    sub_100015240(&qword_1000E0CD0, &qword_100084448);
    v7 = sub_10007E178();
    v9 = sub_100051190(v7, v8, v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "PlaceholderSmallWidgetView: locationAccuracyAuthorization %{public}s", v5, 0xCu);
    sub_1000250AC(v6);
  }

  return v0;
}

unint64_t sub_1000493B8()
{
  result = qword_1000E0438;
  if (!qword_1000E0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0438);
  }

  return result;
}

uint64_t sub_100049420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_100015240(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_1000494A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_100015240(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_100049538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007D648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10004959C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_100015288(a2, a3);
  type metadata accessor for PlaceholderBackgroundView(255);
  sub_10002DDAC(a4, a2, a3, &protocol conformance descriptor for VStack<A>);
  sub_100048CE4(&qword_1000DF950, type metadata accessor for PlaceholderBackgroundView, &unk_100084548);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000496B4()
{
  result = qword_1000E0560;
  if (!qword_1000E0560)
  {
    sub_100015288(&qword_1000E0558, &qword_100084598);
    sub_10002DDAC(&qword_1000E0568, &qword_1000E0570, &qword_1000845A0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0560);
  }

  return result;
}

unint64_t sub_10004976C()
{
  result = qword_1000E0578;
  if (!qword_1000E0578)
  {
    sub_100015288(&qword_1000E0580, &qword_1000845A8);
    sub_1000496B4();
    sub_100048CE4(&qword_1000DF218, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0578);
  }

  return result;
}

void sub_100049878(uint64_t a1)
{
  sub_10004999C();
  if (v1 <= 0x3F)
  {
    sub_100049A0C(319, &qword_1000E05F8, type metadata accessor for CommuteWindowDetailsString, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_10007D3B8();
      if (v3 <= 0x3F)
      {
        sub_100049A0C(319, &unk_1000E0600, type metadata accessor for CommuteWindowEntryContent.ResolvedContent, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10004999C()
{
  if (!qword_1000E05F0)
  {
    v0 = sub_10007E3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E05F0);
    }
  }
}

void sub_100049A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100049AB8(uint64_t a1)
{
  result = sub_10007D3E8();
  if (v2 <= 0x3F)
  {
    result = sub_10007D238();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100049B64(uint64_t a1)
{
  sub_10007E0C8();
  if (v1 <= 0x3F)
  {
    sub_10004999C();
    if (v2 <= 0x3F)
    {
      sub_100049A0C(319, &unk_1000E0740, &type metadata accessor for URL, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_100049C30(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  sub_1000301E4(*v2, v2[1]);
  return v3;
}

unint64_t sub_100049C70()
{
  result = qword_1000DFCF0;
  if (!qword_1000DFCF0)
  {
    sub_10007D3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFCF0);
  }

  return result;
}

uint64_t sub_100049CD8(char *a1, uint64_t a2, void (*a3)(id), char *a4)
{
  v93 = a2;
  v105 = a1;
  v7 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  __chkstk_darwin(v7 - 8);
  v99 = &v86 - v8;
  v97 = type metadata accessor for CommuteWindowEntryContent(0);
  __chkstk_darwin(v97);
  v98 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100015240(&qword_1000DE928, &unk_100082900);
  __chkstk_darwin(v10 - 8);
  v92 = &v86 - v11;
  v12 = sub_10007E0C8();
  v101 = *(v12 - 8);
  v102 = v12;
  v13 = __chkstk_darwin(v12);
  v90 = v14;
  v91 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v96 = &v86 - v15;
  v16 = type metadata accessor for CommuteWindowEntryContentResolver(0);
  v87 = *(v16 - 1);
  __chkstk_darwin(v16);
  v88 = v17;
  v94 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10007DFF8();
  v18 = *(v100 - 1);
  __chkstk_darwin(v100);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10007D288();
  v107 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v95 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v23;
  __chkstk_darwin(v22);
  v25 = &v86 - v24;
  v26 = v16;
  v27 = v16[7];
  v109 = v4;
  v28 = *(v4 + v27);
  if (v28 >> 62)
  {
    v29 = sub_10007E528();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = a3;
  v104 = a4;
  v108 = v21;
  v106 = v25;
  v89 = v28;
  if (v29)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v30 = sub_10007E468();
    }

    else
    {
      if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        swift_once();
        goto LABEL_23;
      }

      v30 = *(v28 + 32);
    }

    v31 = v30;
    v32 = [v30 transportType];
  }

  else
  {
    v32 = 4;
  }

  sub_100015240(&qword_1000E0860, &qword_1000846C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100083D00;
  v110 = sub_10007E158();
  v111 = v34;
  sub_10007E438();
  v35 = sub_100064420(v32);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v35;
  *(inited + 80) = v36;
  v110 = sub_10007E158();
  v111 = v37;
  sub_10007E438();
  *(inited + 168) = &type metadata for Int32;
  *(inited + 144) = 503;
  v110 = sub_10007E158();
  v111 = v38;
  sub_10007E438();
  *(inited + 240) = &type metadata for Int32;
  *(inited + 216) = 146;
  sub_100024DB4(inited);
  swift_setDeallocating();
  sub_100015240(&unk_1000DEB30, &qword_1000846D0);
  swift_arrayDestroy();
  v39 = objc_opt_self();
  sub_100015240(&qword_1000E0868, &qword_1000846D8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100082810;
  v41 = [v39 mapItemForCurrentLocation];
  v42 = sub_10002620C(0, &qword_1000E0810, MKMapItem_ptr);
  *(v40 + 56) = v42;
  *(v40 + 32) = v41;
  v43 = *(v109 + v16[5]);
  *(v40 + 88) = v42;
  *(v40 + 64) = v43;
  v16 = v43;
  isa = sub_10007E1C8().super.isa;

  v45 = sub_10007E0E8().super.isa;
  v46 = [v39 urlForMapItems:isa options:v45];

  if (!v46)
  {
    __break(1u);
    goto LABEL_31;
  }

  a4 = v106;
  sub_10007D278();

  v25 = v105;
  sub_10007E0B8();
  v47 = (*(v18 + 88))(v20, v100);
  if (v47 == enum case for WidgetFamily.systemSmall(_:))
  {
LABEL_17:
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v48 = sub_10007D5C8();
    sub_1000046BC(v48, qword_1000E4B28);
    v49 = sub_10007D5A8();
    v50 = sub_10007E288();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "CommuteWindowEntryContentResolver: skipping map snapshot (not supported for this family)", v51, 2u);
    }

    v52 = v98;
    sub_10004B054(v109, v98, type metadata accessor for CommuteWindowEntryContent);
    v53 = v52 + *(v97 + 40);
    sub_1000256C0(v53, &qword_1000DF810, &qword_1000838C0);
    (*(v101 + 16))(v53, v25, v102);
    v54 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
    v55 = *(v54 + 24);
    v57 = v107;
    v56 = v108;
    (*(v107 + 16))(v53 + v55, a4, v108);
    (*(v57 + 56))(v53 + v55, 0, 1, v56);
    *(v53 + *(v54 + 20)) = xmmword_1000845B0;
    (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    v58 = v99;
    sub_10004B054(v52, v99, type metadata accessor for CommuteWindowEntryContent);
    v59 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
    v103(v58);
    sub_1000256C0(v58, &qword_1000DE630, &unk_1000861F0);
    (*(v57 + 8))(a4, v56);
    return sub_10004AFF8(v52);
  }

  if (v47 != enum case for WidgetFamily.systemMedium(_:) && v47 != enum case for WidgetFamily.systemLarge(_:))
  {
    if (v47 != enum case for WidgetFamily.systemExtraLarge(_:) && v47 != enum case for WidgetFamily.accessoryCorner(_:) && v47 != enum case for WidgetFamily.accessoryCircular(_:) && v47 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      goto LABEL_17;
    }

    while (1)
    {
LABEL_31:
      sub_10007E518();
      __break(1u);
    }
  }

  if (qword_1000DE268 != -1)
  {
    goto LABEL_29;
  }

LABEL_23:
  v100 = v16;
  v61 = sub_10007D5C8();
  sub_1000046BC(v61, qword_1000E4B28);
  v62 = sub_10007D5A8();
  v63 = sub_10007E288();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "CommuteWindowEntryContentResolver: generating map snapshot (supported for this family)", v64, 2u);
  }

  v99 = *(v109 + v26[6]);
  sub_10004B054(v109, v94, type metadata accessor for CommuteWindowEntryContentResolver);
  v66 = v101;
  v65 = v102;
  v109 = *(v101 + 16);
  v109(v96, v25, v102);
  v67 = v107;
  (*(v107 + 16))(v95, a4, v108);
  v68 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v69 = (v88 + *(v66 + 80) + v68) & ~*(v66 + 80);
  v70 = (v90 + *(v67 + 80) + v69) & ~*(v67 + 80);
  v71 = (v86 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  sub_10004B0BC(v94, v72 + v68);
  (*(v66 + 32))(v72 + v69, v96, v65);
  v73 = v72 + v70;
  v74 = v108;
  (*(v67 + 32))(v73, v95, v108);
  v75 = (v72 + v71);
  v76 = v104;
  *v75 = v103;
  v75[1] = v76;
  v77 = v91;
  v109(v91, v105, v65);
  type metadata accessor for CommuteWindowSnapshotter();
  swift_allocObject();
  v78 = v99;
  v79 = v99;
  v80 = v100;

  v81 = v89;

  sub_1000306EC(v77, v80, v78, v81);

  v82 = sub_10007D3B8();
  v83 = *(v82 - 8);
  v84 = v92;
  (*(v83 + 16))(v92, v93, v82);
  (*(v83 + 56))(v84, 0, 1, v82);
  v85 = swift_allocObject();
  *(v85 + 16) = sub_10004B120;
  *(v85 + 24) = v72;

  sub_10003AB38(v84, sub_10004B290, v85);

  sub_1000256C0(v84, &qword_1000DE928, &unk_100082900);
  return (*(v107 + 8))(v106, v74);
}

uint64_t sub_10004AA6C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v29 = a7;
  v30 = a6;
  v28 = a5;
  v11 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = type metadata accessor for CommuteWindowEntryContent(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B054(a3, v17, type metadata accessor for CommuteWindowEntryContent);
  v18 = &v17[*(v15 + 48)];
  sub_1000256C0(v18, &qword_1000DF810, &qword_1000838C0);
  v19 = sub_10007E0C8();
  (*(*(v19 - 8) + 16))(v18, a4, v19);
  v20 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  v21 = *(v20 + 24);
  v22 = sub_10007D288();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v18 + v21, v28, v22);
  (*(v23 + 56))(v18 + v21, 0, 1, v22);
  v24 = (v18 + *(v20 + 20));
  *v24 = a1;
  v24[1] = a2;
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  sub_10004B054(v17, v13, type metadata accessor for CommuteWindowEntryContent);
  v25 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
  sub_1000301E4(a1, a2);
  v30(v13);
  sub_1000256C0(v13, &qword_1000DE630, &unk_1000861F0);
  return sub_10004AFF8(v17);
}

uint64_t sub_10004AD48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D3E8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10004ADBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10004AE74(uint64_t a1)
{
  type metadata accessor for CommuteWindowEntryContent(319);
  if (v1 <= 0x3F)
  {
    sub_10002620C(319, &qword_1000E0810, MKMapItem_ptr);
    if (v2 <= 0x3F)
    {
      sub_10004AF90(319, &qword_1000E0818, &qword_1000E0820, GEOFeatureStyleAttributes_ptr, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10004AF90(319, &unk_1000E0828, &qword_1000DE968, GEOComposedRoute_ptr, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10004AF90(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10002620C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10004AFF8(uint64_t a1)
{
  v2 = type metadata accessor for CommuteWindowEntryContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004B054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004B0BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommuteWindowEntryContentResolver(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004B120(void *a1, void *a2)
{
  v5 = *(type metadata accessor for CommuteWindowEntryContentResolver(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10007E0C8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_10007D288() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  return sub_10004AA6C(a1, a2, v2 + v6, v2 + v9, v2 + v12, v14, v15);
}

uint64_t sub_10004B298()
{
  v0 = sub_10007D5C8();
  sub_10004B320(v0, qword_1000E4B28);
  sub_1000046BC(v0, qword_1000E4B28);
  return sub_10007D5B8();
}

uint64_t *sub_10004B320(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t MapsSuggestionsCurrentLocationSource._delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MapsSuggestionsCurrentLocationSource._delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10004B4C4;
}

void sub_10004B4C4(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *sub_10004B5C4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v43 = a4;
  v42[1] = a3;
  v49 = a2;
  v50 = a1;
  v6 = sub_10007E318();
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10007E2F8();
  __chkstk_darwin(v45);
  v46 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007DED8();
  __chkstk_darwin(v9 - 8);
  v44 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100015240(&unk_1000E08A8, &unk_100084728);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v42 - v13;
  v15 = sub_100015240(&qword_1000E0888, &qword_1000846F0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v42 - v17;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___sourceRunning;
  LOBYTE(aBlock[0]) = 0;
  sub_10007D538();
  (*(v16 + 32))(&v5[v19], v18, v15);
  v20 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___currentPlaceEntry;
  aBlock[0] = 0;
  sub_100015240(&qword_1000E0878, &qword_1000846E0);
  sub_10007D538();
  (*(v12 + 32))(&v5[v20], v14, v11);
  v21 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__isDrivingCondition;
  v22 = objc_allocWithZone(sub_10007D588());
  *&v5[v21] = sub_10007D578();
  *&v5[OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__stopSourceCanKicker] = 0;
  if (v50)
  {
    swift_beginAccess();
    v23 = v50;
    swift_unknownObjectWeakAssign();
    *&v5[OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__requester] = v49;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v24 = sub_10007E138();

    v25 = type metadata accessor for MapsSuggestionsCurrentLocationSource(0);
    v52.receiver = v5;
    v52.super_class = v25;
    v26 = objc_msgSendSuper2(&v52, "initWithDelegate:name:", v23, v24);

    v43 = "ionSource with a nil delegate.";
    v27 = v26;
    GEOConfigGetDouble();
    v29 = v28;
    sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
    sub_10007DEC8();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10005287C();
    sub_100015240(&qword_1000E0970, &unk_100085FE0);
    sub_1000528D4();
    sub_10007E3F8();
    (*(v48 + 104))(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
    v30 = sub_10007E348();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = objc_allocWithZone(MapsSuggestionsCanKicker);

    v33 = sub_10007E138();
    aBlock[4] = sub_100052938;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C93D0;
    v34 = _Block_copy(aBlock);
    v35 = [v32 initWithName:v33 time:v30 queue:v34 block:v29];

    _Block_release(v34);

    v36 = *&v27[OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__stopSourceCanKicker];
    *&v27[OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__stopSourceCanKicker] = v35;

    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v37 = sub_10007D5C8();
    sub_1000046BC(v37, qword_1000E4B40);
    v38 = sub_10007D5A8();
    v39 = sub_10007E298();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Initialized CurrentLocationSource.", v40, 2u);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();

    return v27;
  }

  else
  {
    result = sub_10007E518();
    __break(1u);
  }

  return result;
}

void sub_10004BD04(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    sub_100015240(&qword_1000E0888, &qword_1000846F0);
    sub_10007D558();
    swift_endAccess();
  }

  if (qword_1000DE270 != -1)
  {
    swift_once();
  }

  v3 = sub_10007D5C8();
  sub_1000046BC(v3, qword_1000E4B40);
  v4 = sub_10007D5A8();
  v5 = sub_10007E298();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "CurrentLocationSource stopped.", v6, 2u);
  }
}

char *MapsSuggestionsCurrentLocationSource.init(from:name:)(void *a1, uint64_t a2, char *a3)
{
  v6 = [a1 oneSourceDelegate];
  result = [a1 oneNetworkRequester];
  if (result)
  {
    v8 = result;
    v9 = objc_allocWithZone(type metadata accessor for MapsSuggestionsCurrentLocationSource(0));
    v10 = sub_10004B5C4(v6, v8, a2, a3);
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MapsSuggestionsCurrentLocationSource(uint64_t a1)
{
  result = qword_1000E0900;
  if (!qword_1000E0900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MapsSuggestionsCurrentLocationSource.__allocating_init(from:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initFromResourceDepot:a1];
  swift_unknownObjectRelease();
  return v2;
}

id MapsSuggestionsCurrentLocationSource.init(from:)(uint64_t a1)
{
  v3 = sub_10007E138();
  v4 = [v1 initFromResourceDepot:a1 name:v3];

  swift_unknownObjectRelease();
  return v4;
}

Swift::Void __swiftcall MapsSuggestionsCurrentLocationSource.start()()
{
  v1 = v0;
  v2 = sub_100015240(&qword_1000E0880, &qword_1000846E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v38[-v3];
  v5 = sub_100015240(&qword_1000E0888, &qword_1000846F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38[-v7];
  v9 = sub_10007DF48();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v12 = sub_10007E328();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.notOnQueue(_:), v9);
  v13 = sub_10007DF68();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v14 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___sourceRunning;
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v14], v5);
  sub_10007D548();
  (*(v6 + 8))(v8, v5);
  if (v38[8])
  {
    if (qword_1000DE270 == -1)
    {
LABEL_4:
      v15 = sub_10007D5C8();
      sub_1000046BC(v15, qword_1000E4B40);
      v16 = sub_10007D5A8();
      v17 = sub_10007E298();
      if (!os_log_type_enabled(v16, v17))
      {
LABEL_17:

        return;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "CurrentLocationSource started already.";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);

      goto LABEL_17;
    }

LABEL_29:
    swift_once();
    goto LABEL_4;
  }

  if (!MapsFeature_IsEnabled_VisitedPlaces())
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v28 = sub_10007D5C8();
    sub_1000046BC(v28, qword_1000E4B40);
    v16 = sub_10007D5A8();
    v17 = sub_10007E298();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_17;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Tried to start CurrentLocationSource, but Current Location is disabled via feature flag. Returning.";
    goto LABEL_16;
  }

  v20 = [objc_opt_self() sharedInstance];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 isInBackground];

    if (v22)
    {
      v23 = [objc_opt_self() processInfo];
      v24 = [v23 processName];

      v25 = sub_10007E158();
      v27 = v26;

      if (v25 == 0xD000000000000011 && 0x80000001000846F0 == v27)
      {
      }

      else
      {
        v29 = sub_10007E598();

        if ((v29 & 1) == 0)
        {
          if (qword_1000DE270 != -1)
          {
            swift_once();
          }

          v37 = sub_10007D5C8();
          sub_1000046BC(v37, qword_1000E4B40);
          v16 = sub_10007D5A8();
          v17 = sub_10007E2C8();
          if (!os_log_type_enabled(v16, v17))
          {
            goto LABEL_17;
          }

          v18 = swift_slowAlloc();
          *v18 = 0;
          v19 = "Maps App is in background or the current process isn't Maps Widget. Returning.";
          goto LABEL_16;
        }
      }
    }

    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v30 = sub_10007D5C8();
    sub_1000046BC(v30, qword_1000E4B40);
    v31 = sub_10007D5A8();
    v32 = sub_10007E298();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Starting CurrentLocationSource", v33, 2u);
    }

    v38[39] = 1;
    swift_beginAccess();
    sub_10007D558();
    swift_endAccess();
    v34 = sub_10007E258();
    (*(*(v34 - 8) + 56))(v4, 1, 1, v34);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v1;
    v36 = v1;
    sub_10004CC98(0, 0, v4, &unk_100084700, v35);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004C8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = swift_task_alloc();
  *(v4 + 48) = v5;
  *v5 = v4;
  v5[1] = sub_10004C968;

  return sub_10004E858();
}

uint64_t sub_10004C968()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10004CA9C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10004CA9C()
{
  *(v0 + 64) = 0;
  swift_beginAccess();
  sub_100015240(&qword_1000E0888, &qword_1000846F0);
  sub_10007D558();
  swift_endAccess();
  if (qword_1000DE270 != -1)
  {
    swift_once();
  }

  v1 = sub_10007D5C8();
  sub_1000046BC(v1, qword_1000E4B40);
  swift_errorRetain();
  v2 = sub_10007D5A8();
  v3 = sub_10007E2A8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching place inferences: %@", v4, 0xCu);
    sub_1000256C0(v5, &qword_1000E0960, &qword_1000829D0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10004CC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100015240(&qword_1000E0880, &qword_1000846E8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10005269C(a3, v25 - v10);
  v12 = sub_10007E258();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000256C0(v11, &qword_1000E0880, &qword_1000846E8);
  }

  else
  {
    sub_10007E248();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10007E208();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10007E188() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000256C0(a3, &qword_1000E0880, &qword_1000846E8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000256C0(a3, &qword_1000E0880, &qword_1000846E8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall MapsSuggestionsCurrentLocationSource.stop()()
{
  v1 = v0;
  v2 = sub_100015240(&qword_1000E0888, &qword_1000846F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-v4];
  v6 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___sourceRunning;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  sub_10007D548();
  (*(v3 + 8))(v5, v2);
  if (v15[7] == 1)
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v7 = sub_10007D5C8();
    sub_1000046BC(v7, qword_1000E4B40);
    v8 = sub_10007D5A8();
    v9 = sub_10007E298();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Stop CurrentLocationSource called.", v10, 2u);
    }

    [*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__stopSourceCanKicker) kickCanBySameTime];
  }

  else
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v11 = sub_10007D5C8();
    sub_1000046BC(v11, qword_1000E4B40);
    v12 = sub_10007D5A8();
    v13 = sub_10007E298();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "CurrentLocationSource stopped already.", v14, 2u);
    }
  }
}

uint64_t sub_10004D2B8(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  swift_beginAccess();
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;

  *a3 = 1;
}

uint64_t sub_10004D32C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10004D3D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_10007D3B8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_10007DF48();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10004D4F4, 0, 0);
}

uint64_t sub_10004D4F4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v1 = sub_10007E328();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v4 = sub_10007DF68();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  BOOL = GEOConfigGetBOOL();
  if ((sub_10007D488() & 1) != 0 && !BOOL)
  {
    if (qword_1000DE270 == -1)
    {
LABEL_5:
      v6 = sub_10007D5C8();
      sub_1000046BC(v6, qword_1000E4B40);
      v7 = sub_10007D5A8();
      v8 = sub_10007E2C8();
      if (!os_log_type_enabled(v7, v8))
      {
LABEL_13:

        v14 = v0[1];

        return v14(0);
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "PlaceInference: Received a low confidence place inference. Not creating an entry.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

      goto LABEL_13;
    }

LABEL_30:
    swift_once();
    goto LABEL_5;
  }

  v11 = sub_10007D498();
  v0[11] = v11;
  v0[12] = v12;
  if (v12 >> 60 == 15)
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v13 = sub_10007D5C8();
    sub_1000046BC(v13, qword_1000E4B40);
    v7 = sub_10007D5A8();
    v8 = sub_10007E2C8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_13;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "PlaceInference: place.mapItemHandle is nil, not creating an entry.";
    goto LABEL_12;
  }

  v16 = v11;
  v17 = v12;
  sub_10007D4A8();
  v18 = objc_allocWithZone(MapsSuggestionsEntry);
  v19 = sub_10007E138();

  v20 = [v18 initWithType:25 title:v19];
  v0[13] = v20;

  if (!v20)
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v43 = sub_10007D5C8();
    sub_1000046BC(v43, qword_1000E4B40);
    v7 = sub_10007D5A8();
    v44 = sub_10007E2A8();
    if (os_log_type_enabled(v7, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v7, v44, "Entry: Could not create a new MSgEntry!", v45, 2u);
    }

    sub_100052288(v16, v17);
    goto LABEL_13;
  }

  v21 = v0[4];
  GEOConfigGetDouble();
  [v20 setWeight:?];
  v22 = MapsSuggestionsLocalizedYoureNearbyString();
  [v20 setUndecoratedSubtitle:v22];

  v23 = [v21 uniqueName];
  if (v23)
  {
    v31 = v23;
    v33 = v0[6];
    v32 = v0[7];
    v34 = v0[5];
    [v20 setOriginatingSourceName:v23];

    GEOConfigGetDouble();
    sub_10007D308();
    isa = sub_10007D2C8().super.isa;
    (*(v33 + 8))(v32, v34);
    [v20 setExpires:isa];

    [v20 setBoolean:sub_10007D488() & 1 forKey:@"MapsSuggestionsCurrentLocationOfInterestApproximatedKey"];
    sub_10007D478();
    v37 = [objc_allocWithZone(NSNumber) initWithDouble:v36];
    [v20 setNumber:v37 forKey:@"MapsSuggestionsLatitudeKey"];

    sub_10007D478();
    v39 = [objc_allocWithZone(NSNumber) initWithDouble:v38];
    [v20 setNumber:v39 forKey:@"MapsSuggestionsLongitudeKey"];

    v40 = sub_10007D498();
    if (v41 >> 60 == 15)
    {
      v42 = 0;
    }

    else
    {
      v46 = v40;
      v47 = v41;
      v42 = sub_10007D298().super.isa;
      sub_100052288(v46, v47);
    }

    v48 = v0[4];
    [v20 setData:v42 forKey:@"MapsSuggestionsMapItemHandleDataKey"];

    v49 = swift_task_alloc();
    v0[14] = v49;
    v49[2] = v48;
    v49[3] = v16;
    v49[4] = v17;
    v50 = swift_task_alloc();
    v0[15] = v50;
    v30 = sub_100015240(&qword_1000E0938, &qword_1000847F0);
    *v50 = v0;
    v50[1] = sub_10004DBA8;
    v28 = sub_10005229C;
    v23 = v0 + 2;
    v27 = 0x80000001000902B0;
    v24 = 0;
    v25 = 0;
    v26 = 0xD000000000000027;
    v29 = v49;
  }

  else
  {
    __break(1u);
  }

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_10004DBA8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10004E30C;
  }

  else
  {

    v2 = sub_10004DCC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004DCC4()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    result = sub_10007E528();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_10007E468();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
    swift_unknownObjectRetain();
  }

  v0[17] = v3;

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v0[18] = v4;
  if (v4)
  {
    v5 = v4;
    v0[19] = sub_1000522A8(v4);
    v0[20] = v6;
    swift_unknownObjectRetain();
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_10004DE90;

    return sub_100051A64(v5);
  }

  swift_unknownObjectRelease();
LABEL_13:
  v8 = v0[13];
  sub_100052288(v0[11], v0[12]);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_10004DE90(uint64_t a1, __int16 a2)
{
  *(*v2 + 176) = a2;

  return _swift_task_switch(sub_10004DF90, 0, 0);
}

uint64_t sub_10004DF90()
{
  v1 = *(v0 + 176);
  swift_unknownObjectRelease();
  v2 = *(v0 + 160);
  if ((v1 & 0x100) != 0)
  {

    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v10 = sub_10007D5C8();
    sub_1000046BC(v10, qword_1000E4B40);
    v11 = sub_10007D5A8();
    v12 = sub_10007E2C8();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = *(v0 + 88);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Current place not in supported categories. Aborting.", v17, 2u);
    }

    sub_100052288(v16, v14);

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  if (v2)
  {
    v3 = *(v0 + 104);

    v4 = [v3 title];
    v5 = sub_10007E158();
    v7 = v6;

    if (v5 == 0x656D614E6F4ELL && v7 == 0xE600000000000000)
    {
    }

    else
    {
      v9 = sub_10007E598();

      if ((v9 & 1) == 0)
      {

        goto LABEL_16;
      }
    }

    v18 = *(v0 + 104);
    v19 = sub_10007E138();

    [v18 setTitle:v19];
  }

LABEL_16:
  v20 = *(v0 + 144);
  swift_unknownObjectRetain();
  LOBYTE(v20) = sub_1000518E8(v20);
  swift_unknownObjectRelease();
  if ((v20 & 1) == 0)
  {
    [*(v0 + 104) setGeoMapItem:*(v0 + 144)];
    if (v2)
    {
      v25 = sub_10007E138();
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    v28 = *(v0 + 88);
    [v27 setString:v25 forKey:@"MapsSuggestionsCurrentLocationOfInterestIdentifier"];

    [v27 setString:@"MapsSuggestionsCurrentLocationOfInterestIdentifier" forKey:@"MapsSuggestionsPrimaryKey"];
    v29 = [objc_allocWithZone(NSNumber) initWithInteger:6];
    [v27 setNumber:v29 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];

    swift_unknownObjectRelease();
    sub_100052288(v28, v26);
    v24 = *(v0 + 104);
    goto LABEL_23;
  }

  v21 = *(v0 + 96);
  v22 = *(v0 + 104);
  v23 = *(v0 + 88);
  swift_unknownObjectRelease();

  sub_100052288(v23, v21);
LABEL_18:
  v24 = 0;
LABEL_23:

  v30 = *(v0 + 8);

  return v30(v24);
}

uint64_t sub_10004E30C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  sub_100052288(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

void sub_10004E3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100015240(&qword_1000E0948, &qword_100084800);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  v10 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__requester);
  isa = sub_10007D298().super.isa;
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_1000525C4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004E7B8;
  aBlock[3] = &unk_1000C9308;
  v14 = _Block_copy(aBlock);

  LODWORD(v10) = [v10 resolveMapItemHandleData:isa dropAnalyticsSessionID:1 completion:v14];
  _Block_release(v14);

  if (v10 != 1)
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v15 = sub_10007D5C8();
    sub_1000046BC(v15, qword_1000E4B40);
    v16 = sub_10007D5A8();
    v17 = sub_10007E2A8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Requester refused to hydrate a mapItem. Aborting.", v18, 2u);
    }
  }
}

uint64_t sub_10004E650(void *a1, void *a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v2 = sub_10007D5C8();
    sub_1000046BC(v2, qword_1000E4B40);
    v3 = sub_10007D5A8();
    v4 = sub_10007E2A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to hydrate a MapItem. Aborting.", v5, 2u);
    }

    sub_100015240(&qword_1000E0948, &qword_100084800);
    return sub_10007E218();
  }

  else
  {
    if (a1)
    {
    }

    sub_100015240(&qword_1000E0948, &qword_100084800);
    return sub_10007E228();
  }
}

uint64_t sub_10004E7B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100015240(&qword_1000E0950, &qword_100084808);
    v4 = sub_10007E1D8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_10004E858()
{
  v1[25] = v0;
  v2 = sub_100015240(&qword_1000E0888, &qword_1000846F0);
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v3 = sub_10007D528();
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  sub_100015240(&qword_1000E0920, &qword_1000847D0);
  v1[32] = swift_task_alloc();
  v4 = sub_100015240(&qword_1000E0928, &qword_1000847D8);
  v1[33] = v4;
  v1[34] = *(v4 - 8);
  v1[35] = swift_task_alloc();
  v5 = sub_100015240(&qword_1000E0930, &unk_1000847E0);
  v1[36] = v5;
  v1[37] = *(v5 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v6 = sub_10007DF48();
  v1[40] = v6;
  v1[41] = *(v6 - 8);
  v1[42] = swift_task_alloc();

  return _swift_task_switch(sub_10004EAF0, 0, 0);
}

uint64_t sub_10004EAF0()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v1 = sub_10007E328();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v4 = sub_10007DF68();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_1000DE270 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v5 = sub_10007D5C8();
  v0[43] = sub_1000046BC(v5, qword_1000E4B40);
  v6 = sub_10007D5A8();
  v7 = sub_10007E298();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting Place Inference calls.", v8, 2u);
  }

  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[36];
  v12 = v0[37];

  sub_10007D518();
  (*(v12 + 16))(v10, v9, v11);
  v0[44] = swift_getOpaqueTypeConformance2();
  sub_10007E268();
  v13 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__isDrivingCondition;
  v0[45] = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___sourceRunning;
  v0[46] = v13;
  v14 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__delegate;
  v0[47] = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___currentPlaceEntry;
  v0[48] = v14;
  swift_beginAccess();
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  v15 = swift_task_alloc();
  v0[49] = v15;
  *v15 = v0;
  v15[1] = sub_10004EDC4;
  v16 = v0[32];

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v16, 0, 0);
}

uint64_t sub_10004EDC4()
{

  if (!v0)
  {

    return _swift_task_switch(sub_10004EED4, 0, 0);
  }

  return result;
}

id sub_10004EED4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
LABEL_27:
    v44 = sub_10007D5A8();
    v45 = sub_10007E298();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Stopping Place Inference calls.", v46, 2u);
    }

    v47 = *(v0 + 312);
    v48 = *(v0 + 288);
    v49 = *(v0 + 296);

    (*(v49 + 8))(v47, v48);

    v50 = *(v0 + 8);

    return v50();
  }

  v4 = *(v0 + 360);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  (*(v3 + 32))(*(v0 + 248), v1, v2);
  (*(v6 + 16))(v5, v8 + v4, v7);
  sub_10007D548();
  (*(v6 + 8))(v5, v7);
  if (*(v0 + 424) != 1)
  {
    v17 = sub_10007D5A8();
    v18 = sub_10007E298();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 272);
    v20 = *(v0 + 280);
    v22 = *(v0 + 264);
    v24 = *(v0 + 240);
    v23 = *(v0 + 248);
    v25 = *(v0 + 232);
    if (v19)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Source stopped. Not creating any new entries.", v26, 2u);
    }

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
    goto LABEL_27;
  }

  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_36;
  }

  v10 = result;
  v11 = [result isInBackground];

  if (v11)
  {
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 processName];

    v14 = sub_10007E158();
    v16 = v15;

    if (v14 == 0xD000000000000011 && 0x80000001000846F0 == v16)
    {
    }

    else
    {
      v27 = sub_10007E598();

      if ((v27 & 1) == 0)
      {
        v41 = sub_10007D5A8();
        v42 = sub_10007E2C8();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Maps App is in background or the current process isn't Maps Widget. Stopping source.", v43, 2u);
        }

        v33 = *(v0 + 272);
        v53 = *(v0 + 280);
        v34 = *(v0 + 264);
        v36 = *(v0 + 240);
        v35 = *(v0 + 248);
        v37 = *(v0 + 232);

        *(v0 + 427) = 0;
        swift_beginAccess();
        sub_10007D558();
        goto LABEL_26;
      }
    }
  }

  if ((sub_100051D8C() & 1) == 0)
  {
    v38 = sub_10007D5A8();
    v39 = sub_10007E298();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Authorization error. Stopping source.", v40, 2u);
    }

    v33 = *(v0 + 272);
    v53 = *(v0 + 280);
    v34 = *(v0 + 264);
    v36 = *(v0 + 240);
    v35 = *(v0 + 248);
    v37 = *(v0 + 232);

    *(v0 + 425) = 0;
    swift_beginAccess();
    sub_10007D558();
    goto LABEL_26;
  }

  if ([*(*(v0 + 200) + *(v0 + 368)) isTrue])
  {
LABEL_17:
    v30 = sub_10007D5A8();
    v31 = sub_10007E298();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Is driving or navigating. Stopping source.", v32, 2u);
    }

    v33 = *(v0 + 272);
    v53 = *(v0 + 280);
    v34 = *(v0 + 264);
    v36 = *(v0 + 240);
    v35 = *(v0 + 248);
    v37 = *(v0 + 232);

    *(v0 + 426) = 0;
    swift_beginAccess();
    sub_10007D558();
LABEL_26:
    swift_endAccess();
    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v53, v34);
    goto LABEL_27;
  }

  result = [objc_opt_self() sharedService];
  if (!result)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v28 = result;
  v29 = [result isInNavigatingState];

  if (v29)
  {
    goto LABEL_17;
  }

  v51 = swift_task_alloc();
  *(v0 + 400) = v51;
  *v51 = v0;
  v51[1] = sub_10004F5E4;
  v52 = *(v0 + 248);

  return sub_10004D3D8(v52);
}

uint64_t sub_10004F5E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v4 = sub_10004FB7C;
  }

  else
  {
    v4 = sub_10004F6F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004F6F8()
{
  v31 = v0;
  v1 = v0[51];
  if (!v1)
  {
    v0[23] = 0;
    swift_beginAccess();
    sub_100015240(&unk_1000E08A8, &unk_100084728);
    sub_10007D558();
    swift_endAccess();
    v22 = sub_10007D5A8();
    v23 = sub_10007E298();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Entry: nil", v24, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_14;
    }

    v26 = Strong;
    v27 = v0[25];
    sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
    v18.super.isa = sub_10007E1C8().super.isa;
    v19 = [v27 uniqueName];
    if (v19)
    {
      v3 = v19;
      [v26 addOrUpdateSuggestionEntries:v18.super.isa source:v19];
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v19, v20, v21);
  }

  v0[24] = v1;
  swift_beginAccess();
  v2 = v1;
  sub_100015240(&unk_1000E08A8, &unk_100084728);
  sub_10007D558();
  swift_endAccess();
  v3 = v2;
  v4 = sub_10007D5A8();
  v5 = sub_10007E298();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = sub_10007E158();
    v11 = v10;

    v12 = sub_100051190(v9, v11, &v30);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Entry: %s", v6, 0xCu);
    sub_1000250AC(v7);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  v15 = v0[25];
  sub_100015240(&qword_1000DF448, &unk_100083550);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100083500;
  *(v16 + 32) = v3;
  sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
  v17 = v3;
  v18.super.isa = sub_10007E1C8().super.isa;

  v19 = [v15 uniqueName];
  if (!v19)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = v19;
  [v14 addOrUpdateSuggestionEntries:v18.super.isa source:v19];

LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:

LABEL_14:
  (*(v0[30] + 8))(v0[31], v0[29]);
  swift_getAssociatedConformanceWitness();
  v28 = swift_task_alloc();
  v0[49] = v28;
  *v28 = v0;
  v28[1] = sub_10004EDC4;
  v19 = v0[32];
  v20 = 0;
  v21 = 0;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v19, v20, v21);
}

uint64_t sub_10004FB7C()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

void MapsSuggestionsCurrentLocationSource.updateSuggestionEntries(handler:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v76 = a1;
  isa = sub_100015240(&unk_1000E08A8, &unk_100084728);
  v74 = *(isa - 1);
  __chkstk_darwin(isa);
  v6 = &v74 - v5;
  v7 = sub_100015240(&qword_1000E0888, &qword_1000846F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v74 - v9;
  v11 = sub_10007DF48();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v14 = sub_10007E328();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.notOnQueue(_:), v11);
  v15 = sub_10007DF68();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    goto LABEL_52;
  }

  if (qword_1000DE270 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v16 = sub_10007D5C8();
    sub_1000046BC(v16, qword_1000E4B40);
    v17 = sub_10007D5A8();
    v18 = sub_10007E298();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Updating CurrentLocationSource", v19, 2u);
    }

    if (!MapsFeature_IsEnabled_VisitedPlaces())
    {
      goto LABEL_16;
    }

    if (![objc_opt_self() isEnabled])
    {
      goto LABEL_21;
    }

    v20 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___sourceRunning;
    swift_beginAccess();
    (*(v8 + 16))(v10, &v3[v20], v7);
    sub_10007D548();
    (*(v8 + 8))(v10, v7);
    if (v78 != 1)
    {
      goto LABEL_26;
    }

    if ([*&v3[OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__isDrivingCondition] isTrue])
    {
      goto LABEL_11;
    }

    v21 = [objc_opt_self() sharedService];
    if (!v21)
    {
      goto LABEL_55;
    }

    v22 = v21;
    v23 = [v21 isInNavigatingState];

    if (v23)
    {
LABEL_11:
      v24 = sub_10007D5A8();
      v25 = sub_10007E2C8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "In driving or navigating. Returning.", v26, 2u);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_31;
      }

      v28 = Strong;
      sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
      isa = sub_10007E1C8().super.isa;
      v29 = [v3 uniqueName];
      if (!v29)
      {
        __break(1u);
LABEL_16:
        v30 = sub_10007D5A8();
        v31 = sub_10007E298();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "Current Location Suggestion is disabled via feature flag. Returning.", v32, 2u);
        }

        swift_beginAccess();
        v33 = swift_unknownObjectWeakLoadStrong();
        if (!v33)
        {
          goto LABEL_31;
        }

        v28 = v33;
        sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
        isa = sub_10007E1C8().super.isa;
        v29 = [v3 uniqueName];
        if (!v29)
        {
          __break(1u);
LABEL_21:
          v34 = sub_10007D5A8();
          v35 = sub_10007E298();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&_mh_execute_header, v34, v35, "Siri not enabled. Returning.", v36, 2u);
          }

          swift_beginAccess();
          v37 = swift_unknownObjectWeakLoadStrong();
          if (!v37)
          {
            goto LABEL_31;
          }

          v28 = v37;
          sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
          isa = sub_10007E1C8().super.isa;
          v29 = [v3 uniqueName];
          if (!v29)
          {
            __break(1u);
LABEL_26:
            v38 = sub_10007D5A8();
            v39 = sub_10007E298();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&_mh_execute_header, v38, v39, "Current Location Source has not been started yet. Returning.", v40, 2u);
            }

            swift_beginAccess();
            v41 = swift_unknownObjectWeakLoadStrong();
            if (!v41)
            {
              goto LABEL_31;
            }

            v28 = v41;
            sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
            isa = sub_10007E1C8().super.isa;
            v29 = [v3 uniqueName];
            if (!v29)
            {
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }
          }
        }
      }

LABEL_30:
      v42 = v29;
      [v28 addOrUpdateSuggestionEntries:isa source:{v29, v74, v75}];
      swift_unknownObjectRelease();

      goto LABEL_31;
    }

    v43 = [objc_opt_self() sharedInstance];
    if (!v43)
    {
      goto LABEL_56;
    }

    v44 = v43;
    v45 = [v43 isInBackground];

    if (!v45)
    {
      goto LABEL_40;
    }

    v46 = [objc_opt_self() processInfo];
    v47 = [v46 processName];

    v7 = sub_10007E158();
    v49 = v48;

    if (v7 == 0xD000000000000011 && 0x80000001000846F0 == v49)
    {
      break;
    }

    v50 = sub_10007E598();

    if (v50)
    {
      goto LABEL_40;
    }

    v70 = sub_10007D5A8();
    v71 = sub_10007E2C8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Maps App is in background or the current process isn't Maps Widget. Returning.", v72, 2u);
    }

    v8 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource__delegate;
    swift_beginAccess();
    v73 = swift_unknownObjectWeakLoadStrong();
    if (!v73)
    {
      goto LABEL_31;
    }

    v28 = v73;
    sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
    isa = sub_10007E1C8().super.isa;
    v29 = [v3 uniqueName];
    if (v29)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

LABEL_40:
  v51 = OBJC_IVAR____TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource___currentPlaceEntry;
  swift_beginAccess();
  v52 = v74;
  (*(v74 + 16))(v6, &v3[v51], isa);
  sub_10007D548();
  (*(v52 + 8))(v6, isa);
  if (v77[0])
  {
    v53 = v77[0];
    v54 = sub_10007D5A8();
    v55 = sub_10007E298();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v77[0] = v57;
      *v56 = 136315138;
      v58 = [v53 debugDescription];
      v59 = sub_10007E158();
      v61 = v60;

      v62 = sub_100051190(v59, v61, v77);

      *(v56 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "Returning %s.", v56, 0xCu);
      sub_1000250AC(v57);
    }

    swift_beginAccess();
    v63 = swift_unknownObjectWeakLoadStrong();
    if (v63)
    {
      v64 = v63;
      sub_100015240(&qword_1000DF448, &unk_100083550);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_100083500;
      *(v65 + 32) = v53;
      sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
      v66 = v53;
      v67.super.isa = sub_10007E1C8().super.isa;

      v68 = [v3 uniqueName];
      if (v68)
      {
        v69 = v68;
        [v64 addOrUpdateSuggestionEntries:v67.super.isa source:v68];
        swift_unknownObjectRelease();

        goto LABEL_46;
      }

LABEL_57:
      __break(1u);
      return;
    }

LABEL_46:
  }

LABEL_31:
  if (v76)
  {
    v76();
  }
}

uint64_t static MapsSuggestionsCurrentLocationSource.isEnabled()()
{
  result = GEOConfigGetBOOL();
  if (result)
  {
    return MapsSuggestionsIsLocationAllowedForBundleID();
  }

  return result;
}

id MapsSuggestionsCurrentLocationSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100050A74(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = sub_10007E138();

  v9 = [v7 *a4];
  swift_unknownObjectRelease();

  return v9;
}

id MapsSuggestionsCurrentLocationSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsCurrentLocationSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100050C98()
{
  v0 = sub_10007D5C8();
  sub_10004B320(v0, qword_1000E4B40);
  sub_1000046BC(v0, qword_1000E4B40);
  return sub_10007D5B8();
}

uint64_t sub_100050D18(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100050D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100050E18;

  return sub_10004C8D4(a1, v4, v5, v6);
}

uint64_t sub_100050E18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100050F0C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100051004;

  return v6(a1);
}

uint64_t sub_100051004()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

_BYTE **sub_1000510FC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100051134(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100051190(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100051190(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10005140C(v11, 0, 0, 1, a1, a2);
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
    sub_10003ECFC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000250AC(v11);
  return v7;
}

void sub_100051264(uint64_t a1)
{
  sub_100051358();
  if (v1 <= 0x3F)
  {
    sub_1000513A8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100051358()
{
  if (!qword_1000E0910)
  {
    v0 = sub_10007D568();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E0910);
    }
  }
}

void sub_1000513A8(uint64_t a1)
{
  if (!qword_1000E0918)
  {
    sub_100015288(&qword_1000E0878, &qword_1000846E0);
    v1 = sub_10007D568();
    if (!v2)
    {
      atomic_store(v1, &qword_1000E0918);
    }
  }
}

unint64_t sub_10005140C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100051518(a5, a6);
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
    result = sub_10007E478();
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

void *sub_100051518(uint64_t a1, unint64_t a2)
{
  v3 = sub_100051564(a1, a2);
  sub_100051694(&off_1000C7DB8);
  return v3;
}

void *sub_100051564(uint64_t a1, unint64_t a2)
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

  v6 = sub_100051780(v5, 0);
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

  result = sub_10007E478();
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
        v10 = sub_10007E1A8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100051780(v10, 0);
        result = sub_10007E458();
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

uint64_t sub_100051694(uint64_t result)
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

  result = sub_1000517F4(result, v11, 1, v3);
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

void *sub_100051780(uint64_t a1, uint64_t a2)
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

  sub_100015240(&qword_1000E0958, &qword_100084810);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000517F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015240(&qword_1000E0958, &qword_100084810);
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

uint64_t sub_1000518E8(void *a1)
{
  result = GEOConfigGetArray();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = sub_10007E1D8();

  v5 = sub_10003A698(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = v5[2];
  if (!v6)
  {
LABEL_15:

    return 0;
  }

  v7 = 0;
  v8 = (v5 + 5);
  while (v7 < v5[2])
  {
    v10 = *(v8 - 1);
    v9 = *v8;

    v11 = [a1 _bestAvailableCountryCode];
    if (v11)
    {
      v12 = v11;
      v13 = sub_10007E158();
      v15 = v14;

      if (v13 == v10 && v15 == v9)
      {

LABEL_18:

        return 1;
      }

      v17 = sub_10007E598();

      if (v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    ++v7;
    v8 += 2;
    if (v6 == v7)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100051A84()
{
  if (qword_1000DE210 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100051B54;
  v2 = *(v0 + 32);

  return GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)(0, v2);
}

uint64_t sub_100051B54(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100051C54, 0, 0);
}

uint64_t sub_100051C54()
{
  v0[2] = 0x726F707075736E75;
  v1 = v0[6];
  v0[3] = 0xEB00000000646574;
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 2;
  v3 = sub_10004D32C(sub_100052564, v2, v1);

  v4 = v0[6];
  if (v3)
  {

    v5 = 0;
    v6 = 0;
  }

  else if (v4[2])
  {
    v7 = v4[4];
    v8 = v4[5];

    v5 = sub_100015638(v7, v8);
    v6 = v9 & 1;
    if (v9)
    {
      v5 = 0;
    }
  }

  else
  {

    v5 = 0;
    v6 = 1;
  }

  v10 = v0[1];

  return v10(v5, v6 | ((v3 & 1) << 8));
}

uint64_t sub_100051D8C()
{
  v0 = sub_10007DF48();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v3 = sub_10007E328();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.notOnQueue(_:), v0);
  v4 = sub_10007DF68();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (sub_10007D4C8())
  {
    if (qword_1000DE270 == -1)
    {
LABEL_4:
      v5 = sub_10007D5C8();
      sub_1000046BC(v5, qword_1000E4B40);
      v6 = sub_10007D5A8();
      v7 = sub_10007E298();
      if (!os_log_type_enabled(v6, v7))
      {
LABEL_32:

        return 0;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "CLLivePlaceContext: Authorization Denied.";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);

      goto LABEL_32;
    }

LABEL_35:
    swift_once();
    goto LABEL_4;
  }

  if (sub_10007D4F8())
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v10 = sub_10007D5C8();
    sub_1000046BC(v10, qword_1000E4B40);
    v6 = sub_10007D5A8();
    v7 = sub_10007E298();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "CLLivePlaceContext: Authorization Denied Globally.";
    goto LABEL_31;
  }

  if (sub_10007D4E8())
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v11 = sub_10007D5C8();
    sub_1000046BC(v11, qword_1000E4B40);
    v6 = sub_10007D5A8();
    v7 = sub_10007E298();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "CLLivePlaceContext: Authorization Restricted.";
    goto LABEL_31;
  }

  if (sub_10007D4D8())
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v12 = sub_10007D5C8();
    sub_1000046BC(v12, qword_1000E4B40);
    v6 = sub_10007D5A8();
    v7 = sub_10007E298();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "CLLivePlaceContext: Service Session Required.";
    goto LABEL_31;
  }

  if (sub_10007D508())
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v13 = sub_10007D5C8();
    sub_1000046BC(v13, qword_1000E4B40);
    v6 = sub_10007D5A8();
    v7 = sub_10007E298();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "CLLivePlaceContext: Authorization Request in Progress.";
    goto LABEL_31;
  }

  if (sub_10007D4B8())
  {
    if (qword_1000DE270 != -1)
    {
      swift_once();
    }

    v14 = sub_10007D5C8();
    sub_1000046BC(v14, qword_1000E4B40);
    v6 = sub_10007D5A8();
    v7 = sub_10007E298();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "CLLivePlaceContext: Accuracy Limited.";
    goto LABEL_31;
  }

  return 1;
}

uint64_t sub_100052288(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005744(result, a2);
  }

  return result;
}

uint64_t sub_1000522A8(void *a1)
{
  v2 = sub_10007DF48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v5 = sub_10007E328();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.notOnQueue(_:), v2);
  v6 = sub_10007DF68();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = [a1 name];
    if (!v8 || (v9 = v8, v10 = sub_10007E158(), v12 = v11, v9, v13 = swift_allocObject(), *(v13 + 24) = 0, *(v13 + 16) = 0, v23[5] = v10, v23[6] = v12, sub_10002D9A8(), , sub_10007E3B8(), , , swift_beginAccess(), v14 = *(v13 + 16), v15 = *(v13 + 24), , , !v15) || (v16 = MapsSuggestionsMapItemShortAddress()) != 0 && (v17 = v16, v18 = sub_10007E158(), v20 = v19, v17, v23[3] = v18, v23[4] = v20, v23[1] = v14, v23[2] = v15, LOBYTE(v17) = sub_10007E3C8(), , (v17 & 1) != 0))
    {
      v21 = MapsSuggestionsMapItemShortAddress();
      if (v21)
      {
        v22 = v21;
        v14 = sub_10007E158();
      }

      else
      {

        return 0;
      }
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100052564(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10007E598() & 1;
  }
}

uint64_t sub_1000525C4(void *a1, void *a2)
{
  sub_100015240(&qword_1000E0948, &qword_100084800);

  return sub_10004E650(a1, a2);
}

double sub_100052650(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10005269C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E0880, &qword_1000846E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005270C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100052944;

  return sub_100050F0C(a1, v4);
}

uint64_t sub_1000527C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100050E18;

  return sub_100050F0C(a1, v4);
}

unint64_t sub_10005287C()
{
  result = qword_1000E0968;
  if (!qword_1000E0968)
  {
    sub_10007E2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0968);
  }

  return result;
}

unint64_t sub_1000528D4()
{
  result = qword_1000E0978;
  if (!qword_1000E0978)
  {
    sub_100015288(&qword_1000E0970, &unk_100085FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0978);
  }

  return result;
}

uint64_t sub_100052994(uint64_t a1)
{
  result = type metadata accessor for NavigationETAEntryContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100052A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E0B50, &qword_1000849D0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100015240(&qword_1000E0B58, &qword_1000849D8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  *v15 = sub_10007D878();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_100015240(&qword_1000E0B70, &qword_1000849F0);
  sub_100052C74(a1, &v15[*(v16 + 44)]);
  *v9 = sub_10007D878();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = sub_100015240(&qword_1000E0B78, &qword_1000849F8);
  sub_100052F4C(a1, &v9[*(v17 + 44)]);
  sub_100026310(v15, v13, &qword_1000E0B58, &qword_1000849D8);
  sub_100026310(v9, v7, &qword_1000E0B50, &qword_1000849D0);
  sub_100026310(v13, a2, &qword_1000E0B58, &qword_1000849D8);
  v18 = sub_100015240(&qword_1000E0C50, &qword_100084B00);
  sub_100026310(v7, a2 + *(v18 + 48), &qword_1000E0B50, &qword_1000849D0);
  sub_1000256C0(v9, &qword_1000E0B50, &qword_1000849D0);
  sub_1000256C0(v15, &qword_1000E0B58, &qword_1000849D8);
  sub_1000256C0(v7, &qword_1000E0B50, &qword_1000849D0);
  return sub_1000256C0(v13, &qword_1000E0B58, &qword_1000849D8);
}

uint64_t sub_100052C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_100015240(&qword_1000E0BA0, &qword_100084A20);
  v4 = __chkstk_darwin(v3 - 8);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v36 - v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v43 = v7;
  v44 = v8;
  sub_10002D9A8();

  v9 = sub_10007DBF8();
  v37 = v10;
  v38 = v9;
  v12 = v11;
  v39 = v13;
  LODWORD(v43) = sub_10007DA38();
  v14 = sub_10007DBA8();
  v16 = v15;
  v18 = v17;
  sub_10007DAF8();
  v19 = sub_10007DBB8();
  v21 = v20;
  v23 = v22;

  sub_10002D9FC(v14, v16, v18 & 1);

  sub_10007DB18();
  v24 = sub_10007DB88();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10002D9FC(v19, v21, v23 & 1);

  sub_10002D9FC(v38, v37, v12 & 1);

  v43 = v24;
  v44 = v26;
  v28 &= 1u;
  v45 = v28;
  v46 = v30;
  v31 = v40;
  sub_10007DC78();
  sub_10002D9FC(v24, v26, v28);

  v32 = v41;
  sub_100026310(v31, v41, &qword_1000E0BA0, &qword_100084A20);
  v33 = v42;
  sub_100026310(v32, v42, &qword_1000E0BA0, &qword_100084A20);
  v34 = v33 + *(sub_100015240(&qword_1000E0BA8, &qword_100084A28) + 48);
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_1000256C0(v31, &qword_1000E0BA0, &qword_100084A20);
  return sub_1000256C0(v32, &qword_1000E0BA0, &qword_100084A20);
}

uint64_t sub_100052F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_10007D8E8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100015240(&qword_1000E0B88, &qword_1000856F0);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  __chkstk_darwin(v4);
  v39 = &v35 - v6;
  v7 = sub_100015240(&qword_1000E0B90, &qword_100084A10);
  v8 = __chkstk_darwin(v7 - 8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v35 - v10;
  sub_10007D8D8();
  v49._countAndFlagsBits = 541152325;
  v49._object = 0xE400000000000000;
  sub_10007D8C8(v49);
  sub_10007D8B8(*(a1 + 40));
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_10007D8C8(v50);
  sub_10007D908();
  v11 = sub_10007DBD8();
  v36 = v12;
  v37 = v11;
  v14 = v13;
  v38 = v15;
  LODWORD(v45) = sub_10007DA58();
  v16 = sub_10007DBA8();
  v18 = v17;
  v20 = v19;
  sub_10007DB58();
  v21 = sub_10007DBB8();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_10002D9FC(v16, v18, v20 & 1);

  sub_10002D9FC(v37, v36, v14 & 1);

  v45 = v21;
  v46 = v23;
  v47 = v25 & 1;
  v48 = v27;
  v28 = v39;
  sub_10007DC08();
  sub_10002D9FC(v21, v23, v25 & 1);

  v45 = &type metadata for Text;
  v46 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v29 = v40;
  v30 = v42;
  sub_10007DC78();
  (*(v43 + 8))(v28, v30);
  v31 = v41;
  sub_100026310(v29, v41, &qword_1000E0B90, &qword_100084A10);
  v32 = v44;
  sub_100026310(v31, v44, &qword_1000E0B90, &qword_100084A10);
  v33 = v32 + *(sub_100015240(&qword_1000E0B98, &qword_100084A18) + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  sub_1000256C0(v29, &qword_1000E0B90, &qword_100084A10);
  return sub_1000256C0(v31, &qword_1000E0B90, &qword_100084A10);
}

uint64_t sub_100053348@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100026310(v2, &v14 - v9, &qword_1000DEC18, &qword_100082C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007D638();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100053548@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NavigationETAMediumLargePlatterContent(0);
  sub_100026310(v1 + *(v10 + 20), v9, &qword_1000DEC20, &unk_100083720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007DFF8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10005377C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E0B50, &qword_1000849D0);
  v5 = __chkstk_darwin(v4 - 8);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = sub_100015240(&qword_1000E0B58, &qword_1000849D8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = sub_100015240(&qword_1000E0B60, &qword_1000849E0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  *v20 = sub_10007D878();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = sub_100015240(&qword_1000E0B68, &qword_1000849E8);
  sub_100053BA0(a1, &v20[*(v21 + 44)]);
  sub_10007DE88();
  sub_10007D668();
  v35 = v40;
  v36 = v38;
  v33 = v43;
  v34 = v42;
  v46 = 1;
  v45 = v39;
  v44 = v41;
  *v14 = sub_10007D878();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v22 = sub_100015240(&qword_1000E0B70, &qword_1000849F0);
  sub_100054C28(a1, &v14[*(v22 + 44)]);
  *v8 = sub_10007D878();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = sub_100015240(&qword_1000E0B78, &qword_1000849F8);
  sub_100054F10(a1, &v8[*(v23 + 44)]);
  v32 = v18;
  sub_100026310(v20, v18, &qword_1000E0B60, &qword_1000849E0);
  v24 = v46;
  v30 = v45;
  v31 = v44;
  sub_100026310(v14, v12, &qword_1000E0B58, &qword_1000849D8);
  v25 = v37;
  sub_100026310(v8, v37, &qword_1000E0B50, &qword_1000849D0);
  sub_100026310(v18, a2, &qword_1000E0B60, &qword_1000849E0);
  v26 = sub_100015240(&qword_1000E0B80, &unk_100084A00);
  v27 = a2 + v26[12];
  *v27 = 0;
  *(v27 + 8) = v24;
  *(v27 + 16) = v36;
  *(v27 + 24) = v30;
  *(v27 + 32) = v35;
  *(v27 + 40) = v31;
  v28 = v33;
  *(v27 + 48) = v34;
  *(v27 + 56) = v28;
  sub_100026310(v12, a2 + v26[16], &qword_1000E0B58, &qword_1000849D8);
  sub_100026310(v25, a2 + v26[20], &qword_1000E0B50, &qword_1000849D0);
  sub_1000256C0(v8, &qword_1000E0B50, &qword_1000849D0);
  sub_1000256C0(v14, &qword_1000E0B58, &qword_1000849D8);
  sub_1000256C0(v20, &qword_1000E0B60, &qword_1000849E0);
  sub_1000256C0(v25, &qword_1000E0B50, &qword_1000849D0);
  sub_1000256C0(v12, &qword_1000E0B58, &qword_1000849D8);
  return sub_1000256C0(v32, &qword_1000E0B60, &qword_1000849E0);
}

uint64_t sub_100053BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E0BB0, &qword_100084A30);
  v80 = *(v4 - 8);
  v81 = v4;
  __chkstk_darwin(v4);
  v69 = (&v66 - v5);
  v6 = sub_100015240(&qword_1000E0BB8, &qword_100084A38);
  v7 = __chkstk_darwin(v6 - 8);
  v82 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v66 - v9;
  v11 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  __chkstk_darwin(v11 - 8);
  v74 = &v66 - v12;
  v13 = sub_10007DD98();
  v71 = *(v13 - 8);
  v72 = v13;
  __chkstk_darwin(v13);
  v70 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100015240(&qword_1000DF1F8, &qword_100084360);
  __chkstk_darwin(v75);
  v76 = &v66 - v15;
  v16 = sub_100015240(&qword_1000DF228, &qword_100084A50);
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v73 = &v66 - v17;
  v18 = sub_10007D638();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v66 - v23;
  v25 = sub_100015240(&qword_1000E0BC0, &qword_100084A58);
  v26 = __chkstk_darwin(v25 - 8);
  v79 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v66 - v28;
  v30 = a1;
  v31 = a1 + *(type metadata accessor for NavigationETAMediumLargePlatterContent(0) + 24);
  v32 = *v31;
  v33 = *v31 == 1;
  v68 = v30;
  if (v33)
  {
    v34 = 1;
  }

  else
  {
    v66 = v10;
    v67 = a2;
    v35 = *(v31 + 8);
    sub_100053348(v24);
    (*(v19 + 16))(v22, v24, v18);
    v36 = (*(v19 + 88))(v22, v18);
    if (v36 != enum case for ColorScheme.light(_:))
    {
      v32 = v35;
      if (v36 != enum case for ColorScheme.dark(_:))
      {
        result = sub_10007E518();
        __break(1u);
        return result;
      }
    }

    v37 = *(v19 + 8);
    v38 = v32;
    v37(v24, v18);
    if (v32)
    {
      v39 = v38;
      sub_10007DD78();
      v41 = v70;
      v40 = v71;
      v42 = v72;
      (*(v71 + 104))(v70, enum case for Image.ResizingMode.stretch(_:), v72);
      sub_10007DDE8();

      (*(v40 + 8))(v41, v42);
      v43 = v74;
      sub_10007DFA8();
      v44 = sub_10007DFC8();
      (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
      v45 = v76;
      sub_10007DDD8();

      sub_1000256C0(v43, &qword_1000DF1E8, &unk_100084A40);
      sub_10007DE88();
      sub_10007D668();
      v46 = (v45 + *(v75 + 36));
      v47 = v84;
      *v46 = v83;
      v46[1] = v47;
      v46[2] = v85;
      sub_10002DDF4();
      v48 = v73;
      sub_10007DC78();

      sub_1000256C0(v45, &qword_1000DF1F8, &qword_100084360);
      sub_10002DB0C(v48, v29, &qword_1000DF228, &qword_100084A50);
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    a2 = v67;
    v10 = v66;
  }

  v49 = v81;
  (*(v77 + 56))(v29, v34, 1, v78);
  v50 = 1;
  if (*(v31 + 56) == 1 && (*(v31 + 36) & 1) == 0 && !*(v31 + 32))
  {
    v51 = sub_10007D948();
    v52 = v69;
    *v69 = v51;
    *(v52 + 8) = 0;
    *(v52 + 16) = 1;
    v53 = sub_100015240(&qword_1000E0BD0, &unk_100084A68);
    sub_100054438(v52 + *(v53 + 44));
    v54 = sub_10007DAC8();
    sub_10007D628();
    v55 = v52 + *(v49 + 36);
    *v55 = v54;
    *(v55 + 8) = v56;
    *(v55 + 16) = v57;
    *(v55 + 24) = v58;
    *(v55 + 32) = v59;
    *(v55 + 40) = 0;
    sub_10002DB0C(v52, v10, &qword_1000E0BB0, &qword_100084A30);
    v50 = 0;
  }

  (*(v80 + 56))(v10, v50, 1, v49);
  v60 = v10;
  v61 = v79;
  sub_100026310(v29, v79, &qword_1000E0BC0, &qword_100084A58);
  v62 = v82;
  sub_100026310(v60, v82, &qword_1000E0BB8, &qword_100084A38);
  sub_100026310(v61, a2, &qword_1000E0BC0, &qword_100084A58);
  v63 = sub_100015240(&qword_1000E0BC8, &qword_100084A60);
  v64 = a2 + *(v63 + 48);
  *v64 = 0;
  *(v64 + 8) = 1;
  sub_100026310(v62, a2 + *(v63 + 64), &qword_1000E0BB8, &qword_100084A38);
  sub_1000256C0(v60, &qword_1000E0BB8, &qword_100084A38);
  sub_1000256C0(v29, &qword_1000E0BC0, &qword_100084A58);
  sub_1000256C0(v62, &qword_1000E0BB8, &qword_100084A38);
  return sub_1000256C0(v61, &qword_1000E0BC0, &qword_100084A58);
}

uint64_t sub_100054438@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_10007DFF8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007D288();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100015240(&qword_1000E0BD8, &qword_100084A78);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v27 = sub_100015240(&qword_1000E0BE0, &qword_100084A80);
  v10 = __chkstk_darwin(v27);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  sub_100053548(v4);
  sub_1000670E8(v4);
  (*(v2 + 8))(v4, v1);
  sub_100015240(&qword_1000E0BE8, &qword_100084A88);
  sub_100055970();
  sub_10007DB68();
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v15.super.isa = qword_1000E4B68;
  v25._countAndFlagsBits = 0x80000001000905C0;
  v33._countAndFlagsBits = 0x5445206572616853;
  v31._countAndFlagsBits = 0xD000000000000021;
  v31._object = 0x8000000100090590;
  v32.value._countAndFlagsBits = 0;
  v32.value._object = 0;
  v33._object = 0xE900000000000041;
  v29 = sub_10007D258(v31, v32, v15, v33, 0xD00000000000002FLL, v25);
  v30 = v16;
  sub_10002D9A8();
  v17 = sub_10007DBF8();
  v19 = v18;
  v21 = v20;
  sub_10002DDAC(&qword_1000E0C38, &qword_1000E0BD8, &qword_100084A78, &protocol conformance descriptor for Link<A>);
  sub_10007DC88();
  sub_10002D9FC(v17, v19, v21 & 1);

  (*(v7 + 8))(v9, v6);
  sub_10007D6C8();
  sub_1000256C0(v12, &qword_1000E0BE0, &qword_100084A80);
  sub_100026310(v14, v12, &qword_1000E0BE0, &qword_100084A80);
  v22 = v28;
  sub_100026310(v12, v28, &qword_1000E0BE0, &qword_100084A80);
  v23 = v22 + *(sub_100015240(&qword_1000E0C40, &unk_100084AB0) + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_1000256C0(v14, &qword_1000E0BE0, &qword_100084A80);
  return sub_1000256C0(v12, &qword_1000E0BE0, &qword_100084A80);
}

uint64_t sub_1000548AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007DD98();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100015240(&qword_1000DF1F0, &unk_1000831F0);
  __chkstk_darwin(v6 - 8);
  v8 = v29 - v7;
  sub_10007DD88();
  v9 = enum case for Image.TemplateRenderingMode.template(_:);
  v10 = sub_10007DDC8();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  sub_10007DDA8();

  sub_1000256C0(v8, &qword_1000DF1F0, &unk_1000831F0);
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v12 = sub_10007DDE8();

  (*(v3 + 8))(v5, v2);
  *&v29[0] = v12;
  sub_10007DC08();

  v13 = sub_10007DCF8();
  KeyPath = swift_getKeyPath();
  v15 = (a1 + *(sub_100015240(&qword_1000E0C20, &qword_100084AA0) + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = a1 + *(sub_100015240(&qword_1000E0C10, &qword_100084A98) + 36);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_10007DE88();
  sub_10007D668();
  v17 = (a1 + *(sub_100015240(&qword_1000E0C00, &qword_100084A90) + 36));
  v18 = v29[1];
  *v17 = v29[0];
  v17[1] = v18;
  v17[2] = v29[2];
  LOBYTE(v13) = sub_10007DAC8();
  sub_10007D628();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  result = sub_100015240(&qword_1000E0BE8, &qword_100084A88);
  v28 = a1 + *(result + 36);
  *v28 = v13;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_100054C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_100015240(&qword_1000E0BA0, &qword_100084A20);
  v4 = __chkstk_darwin(v3 - 8);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v36 - v6;
  v7 = a1 + *(type metadata accessor for NavigationETAMediumLargePlatterContent(0) + 24);
  v8 = *(v7 + 24);
  v43 = *(v7 + 16);
  v44 = v8;
  sub_10002D9A8();

  v9 = sub_10007DBF8();
  v37 = v10;
  v38 = v9;
  v12 = v11;
  v39 = v13;
  LODWORD(v43) = sub_10007DA38();
  v14 = sub_10007DBA8();
  v16 = v15;
  v18 = v17;
  sub_10007DAF8();
  v19 = sub_10007DBB8();
  v21 = v20;
  v23 = v22;

  sub_10002D9FC(v14, v16, v18 & 1);

  sub_10007DB18();
  v24 = sub_10007DB88();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10002D9FC(v19, v21, v23 & 1);

  sub_10002D9FC(v38, v37, v12 & 1);

  v43 = v24;
  v44 = v26;
  v28 &= 1u;
  v45 = v28;
  v46 = v30;
  v31 = v40;
  sub_10007DC78();
  sub_10002D9FC(v24, v26, v28);

  v32 = v41;
  sub_100026310(v31, v41, &qword_1000E0BA0, &qword_100084A20);
  v33 = v42;
  sub_100026310(v32, v42, &qword_1000E0BA0, &qword_100084A20);
  v34 = v33 + *(sub_100015240(&qword_1000E0BA8, &qword_100084A28) + 48);
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_1000256C0(v31, &qword_1000E0BA0, &qword_100084A20);
  return sub_1000256C0(v32, &qword_1000E0BA0, &qword_100084A20);
}

uint64_t sub_100054F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_10007D8E8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100015240(&qword_1000E0B88, &qword_1000856F0);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  __chkstk_darwin(v4);
  v39 = &v35 - v6;
  v7 = sub_100015240(&qword_1000E0B90, &qword_100084A10);
  v8 = __chkstk_darwin(v7 - 8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v35 - v10;
  sub_10007D8D8();
  v49._countAndFlagsBits = 541152325;
  v49._object = 0xE400000000000000;
  sub_10007D8C8(v49);
  v50 = *(a1 + *(type metadata accessor for NavigationETAMediumLargePlatterContent(0) + 24) + 40);
  sub_10007D8B8(v50);
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  sub_10007D8C8(v51);
  sub_10007D908();
  v11 = sub_10007DBD8();
  v36 = v12;
  v37 = v11;
  v14 = v13;
  v38 = v15;
  LODWORD(v45) = sub_10007DA58();
  v16 = sub_10007DBA8();
  v18 = v17;
  v20 = v19;
  sub_10007DB58();
  v21 = sub_10007DBB8();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_10002D9FC(v16, v18, v20 & 1);

  sub_10002D9FC(v37, v36, v14 & 1);

  v45 = v21;
  v46 = v23;
  v47 = v25 & 1;
  v48 = v27;
  v28 = v39;
  sub_10007DC08();
  sub_10002D9FC(v21, v23, v25 & 1);

  v45 = &type metadata for Text;
  v46 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v29 = v40;
  v30 = v42;
  sub_10007DC78();
  (*(v43 + 8))(v28, v30);
  v31 = v41;
  sub_100026310(v29, v41, &qword_1000E0B90, &qword_100084A10);
  v32 = v44;
  sub_100026310(v31, v44, &qword_1000E0B90, &qword_100084A10);
  v33 = v32 + *(sub_100015240(&qword_1000E0B98, &qword_100084A18) + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  sub_1000256C0(v29, &qword_1000E0B90, &qword_100084A10);
  return sub_1000256C0(v31, &qword_1000E0B90, &qword_100084A10);
}

uint64_t sub_100055348@<X0>(char a2@<W2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t a6@<X8>)
{
  *a6 = sub_10007D948();
  *(a6 + 8) = 0;
  *(a6 + 16) = a2;
  sub_100015240(a3, a4);
  return a5(v6);
}

uint64_t sub_1000553B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_10007E198(*(v1 + 40));
  type metadata accessor for NavigationETAAccessoryRectangularPlatterContent(0);
  sub_10002D9A8();

  v4 = sub_10007DBF8();
  v6 = v5;
  v8 = v7;
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v17 = v11 & 1;
  v12 = qword_1000DE280;

  if (v12 != -1)
  {
    swift_once();
  }

  v13.super.isa = qword_1000E4B68;
  v16._countAndFlagsBits = 0x8000000100090480;
  v18._countAndFlagsBits = 0x4024322540243125;
  v18._object = 0xE800000000000000;
  v19.value._countAndFlagsBits = 0;
  v19.value._object = 0;
  v20._countAndFlagsBits = 0x4024322540243125;
  v20._object = 0xE800000000000000;
  result = sub_10007D258(v18, v19, v13, v20, 0xD0000000000000ABLL, v16);
  *a1 = 0xD000000000000020;
  *(a1 + 8) = 0x8000000100090450;
  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *(a1 + 32) = 541152325;
  *(a1 + 40) = 0xE400000000000000;
  *(a1 + 48) = v4;
  *(a1 + 56) = v6;
  *(a1 + 64) = v17;
  *(a1 + 72) = v8;
  *(a1 + 80) = result;
  *(a1 + 88) = v15;
  return result;
}

void sub_10005557C(uint64_t a1)
{
  sub_100055658(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_100055658(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NavigationETAEntryContent(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100055658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007D648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000556C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationETAEntryContent(0);
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

uint64_t sub_100055794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NavigationETAEntryContent(0);
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

uint64_t sub_100055870(uint64_t a1)
{
  result = type metadata accessor for NavigationETAEntryContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000558E4()
{
  result = qword_1000E0B40;
  if (!qword_1000E0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B40);
  }

  return result;
}

unint64_t sub_100055970()
{
  result = qword_1000E0BF0;
  if (!qword_1000E0BF0)
  {
    sub_100015288(&qword_1000E0BE8, &qword_100084A88);
    sub_1000559FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0BF0);
  }

  return result;
}

unint64_t sub_1000559FC()
{
  result = qword_1000E0BF8;
  if (!qword_1000E0BF8)
  {
    sub_100015288(&qword_1000E0C00, &qword_100084A90);
    sub_100055A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0BF8);
  }

  return result;
}

unint64_t sub_100055A88()
{
  result = qword_1000E0C08;
  if (!qword_1000E0C08)
  {
    sub_100015288(&qword_1000E0C10, &qword_100084A98);
    sub_100055B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0C08);
  }

  return result;
}

unint64_t sub_100055B14()
{
  result = qword_1000E0C18;
  if (!qword_1000E0C18)
  {
    sub_100015288(&qword_1000E0C20, &qword_100084AA0);
    swift_getOpaqueTypeConformance2();
    sub_10002DDAC(&qword_1000E0C28, &qword_1000E0C30, &qword_100084AA8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0C18);
  }

  return result;
}

uint64_t sub_100055BFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007D5F8();

  return v1;
}

id sub_100055C74()
{
  result = [objc_allocWithZone(type metadata accessor for LocationAuthorizationMonitor(0)) init];
  qword_1000E4B58 = result;
  return result;
}

void sub_100055CA8()
{
  v1 = sub_10007DEB8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007DED8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  v10 = objc_opt_self();
  v11 = v0;
  if ([v10 isMainThread])
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v12 = sub_10007D5C8();
    sub_1000046BC(v12, qword_1000E4B28);
    v13 = sub_10007D5A8();
    v14 = sub_10007E298();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "LocationAuthorizationMonitor: startMonitoring (on main queue)", v15, 2u);
    }

    sub_100056104(v11);
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v23 = v2;
    v16 = sub_10007D5C8();
    sub_1000046BC(v16, qword_1000E4B28);
    v17 = sub_10007D5A8();
    v18 = sub_10007E2A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "LocationAuthorizationMonitor: startMonitoring (on NON-MAIN queue?!?)", v19, 2u);
    }

    sub_100056B3C();
    v20 = sub_10007E328();
    aBlock[4] = sub_100056B34;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C9420;
    v21 = _Block_copy(aBlock);

    sub_10007DEC8();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100002E64();
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    sub_10007E3F8();
    sub_10007E338();
    _Block_release(v21);

    (*(v23 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_100056104(uint64_t a1)
{
  v2 = sub_10007DF48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100056B3C();
  *v5 = sub_10007E328();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = sub_10007DF68();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = sub_10007E328();
    v8 = objc_allocWithZone(CLLocationManager);
    v9 = sub_10007E138();
    v10 = [v8 initWithEffectiveBundleIdentifier:v9 delegate:a1 onQueue:v7];

    v11 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_locationManager);
    *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_locationManager) = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005628C(void *a1)
{
  v2 = v1;
  v4 = [a1 authorizationStatus];
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v5 = sub_10007D5C8();
  sub_1000046BC(v5, qword_1000E4B28);
  v6 = sub_10007D5A8();
  v7 = sub_10007E2C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136446210;
    type metadata accessor for CLAuthorizationStatus(0);
    v10 = sub_10007E178();
    v12 = sub_100051190(v10, v11, &v27);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "LocationAuthorizationMonitor: authorization changed: %{public}s", v8, 0xCu);
    sub_1000250AC(v9);
  }

  if (v4 - 3 > 1)
  {
    v22 = sub_10007D5A8();
    v23 = sub_10007E298();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "LocationAuthorizationMonitor: not authorized", v24, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = 0;
    v28 = 1;
    v25 = v2;
  }

  else
  {
    v13 = [a1 accuracyAuthorization];
    v14 = sub_10007D5A8();
    v15 = sub_10007E298();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136446210;
      type metadata accessor for CLAccuracyAuthorization(0);
      v18 = sub_10007E178();
      v20 = sub_100051190(v18, v19, &v27);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "LocationAuthorizationMonitor: authorized with %{public}s", v16, 0xCu);
      sub_1000250AC(v17);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v13;
    v28 = 0;
    v21 = v2;
  }

  return sub_10007D608();
}

id sub_1000567B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationAuthorizationMonitor(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LocationAuthorizationMonitor(uint64_t a1)
{
  result = qword_1000E0CB8;
  if (!qword_1000E0CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000568D8(uint64_t a1)
{
  sub_10005697C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10005697C(uint64_t a1)
{
  if (!qword_1000E0CC8)
  {
    sub_100015288(&qword_1000E0CD0, &qword_100084448);
    v1 = sub_10007D618();
    if (!v2)
    {
      atomic_store(v1, &qword_1000E0CC8);
    }
  }
}

uint64_t sub_1000569EC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LocationAuthorizationMonitor(0);
  result = sub_10007D5D8();
  *a2 = result;
  return result;
}

void sub_100056A2C(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007D5F8();

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t sub_100056AB4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10007D608();
}

unint64_t sub_100056B3C()
{
  result = qword_1000E0890;
  if (!qword_1000E0890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E0890);
  }

  return result;
}

void sub_100056BD0(uint64_t a1)
{
  type metadata accessor for SuggestedDestinationEntryContent(319);
  if (v1 <= 0x3F)
  {
    sub_100056C54(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100056C54(uint64_t a1)
{
  if (!qword_1000DEBB0)
  {
    sub_10007DFF8();
    v1 = sub_10007D648();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DEBB0);
    }
  }
}

uint64_t sub_100056CC8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  __chkstk_darwin(v1 - 8);
  v39 = &v36 - v2;
  v3 = sub_100015240(&qword_1000E1030, &qword_100085510);
  __chkstk_darwin(v3 - 8);
  v44 = &v36 - v4;
  v5 = sub_10007DA88();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000E10A0, &qword_100085008);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v36 - v12);
  v14 = sub_100015240(&qword_1000E10A8, &qword_100085010);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  v17 = sub_100015240(&qword_1000E10B0, &qword_100085018);
  v37 = *(v17 - 8);
  v38 = v17;
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  *v16 = sub_10007D948();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v20 = &v16[*(sub_100015240(&qword_1000E10B8, &qword_100085020) + 44)];
  *v13 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v13 + *(v8 + 44)) = 0x4024000000000000;
  v21 = v13 + *(v8 + 48);
  v22 = v45;
  sub_100059128(v45, v21, type metadata accessor for SuggestedDestinationEntryContent);
  sub_100026310(v13, v11, &qword_1000E10A0, &qword_100085008);
  *v20 = 0;
  v20[8] = 1;
  *(v20 + 2) = 0x3FF0000000000000;
  v23 = sub_100015240(&qword_1000E10C0, qword_100085028);
  sub_100026310(v11, &v20[*(v23 + 48)], &qword_1000E10A0, &qword_100085008);
  sub_1000256C0(v13, &qword_1000E10A0, &qword_100085008);
  sub_1000256C0(v11, &qword_1000E10A0, &qword_100085008);
  v24 = v41;
  sub_10007DA78();
  v46 = v22;
  sub_10007DE88();
  v25 = sub_100015240(&qword_1000E1068, &qword_100084F40);
  v26 = sub_10002DDAC(&qword_1000E10C8, &qword_1000E10A8, &qword_100085010, &protocol conformance descriptor for VStack<A>);
  v27 = v14;
  v28 = sub_10002DDAC(&qword_1000E1078, &qword_1000E1068, &qword_100084F40, &unk_100083A08);
  v36 = v19;
  sub_10007DCB8();
  (*(v42 + 8))(v24, v43);
  sub_1000256C0(v16, &qword_1000E10A8, &qword_100085010);
  v29 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v30 = v44;
  sub_100026310(v45 + *(v29 + 40), v44, &qword_1000E1030, &qword_100085510);
  v31 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  result = (*(*(v31 - 8) + 48))(v30, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v33 = v39;
    sub_100026310(v30 + *(v31 + 28), v39, &qword_1000DEEE0, &qword_100082E30);
    sub_10005943C(v30, type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent);
    v47 = v27;
    v48 = v25;
    v49 = v26;
    v50 = v28;
    swift_getOpaqueTypeConformance2();
    v34 = v38;
    v35 = v36;
    sub_10007DC18();
    sub_1000256C0(v33, &qword_1000DEEE0, &qword_100082E30);
    return (*(v37 + 8))(v35, v34);
  }

  return result;
}

uint64_t sub_100057324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v3 = v2;
  v42 = a2;
  v4 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  __chkstk_darwin(v4 - 8);
  v41 = &v37 - v5;
  v6 = sub_100015240(&qword_1000E1030, &qword_100085510);
  __chkstk_darwin(v6 - 8);
  v47 = &v37 - v7;
  v8 = sub_10007DA88();
  v45 = *(v8 - 8);
  v46 = v8;
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100015240(&qword_1000E1038, &qword_100084F10);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v44 = sub_100015240(&qword_1000E1040, &qword_100084F18);
  __chkstk_darwin(v44);
  v18 = &v37 - v17;
  v19 = sub_100015240(&qword_1000E1048, &qword_100084F20);
  v39 = *(v19 - 8);
  v40 = v19;
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  *v18 = sub_10007D948();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v22 = &v18[*(sub_100015240(&qword_1000E1050, &qword_100084F28) + 44)];
  *v16 = sub_10007D878();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v23 = &v16[*(sub_100015240(&qword_1000E1058, &qword_100084F30) + 44)];
  v43 = v3;
  sub_1000578DC(v3, v23);
  sub_100026310(v16, v14, &qword_1000E1038, &qword_100084F10);
  *v22 = 0;
  v22[8] = 1;
  *(v22 + 2) = 0x3FF0000000000000;
  v24 = sub_100015240(&qword_1000E1060, &qword_100084F38);
  sub_100026310(v14, &v22[*(v24 + 48)], &qword_1000E1038, &qword_100084F10);
  sub_1000256C0(v16, &qword_1000E1038, &qword_100084F10);
  sub_1000256C0(v14, &qword_1000E1038, &qword_100084F10);
  sub_10007DA78();
  v49 = v3;
  sub_10007DE88();
  v25 = sub_100015240(&qword_1000E1068, &qword_100084F40);
  v26 = sub_10002DDAC(&qword_1000E1070, &qword_1000E1040, &qword_100084F18, &protocol conformance descriptor for VStack<A>);
  v27 = v44;
  v28 = sub_10002DDAC(&qword_1000E1078, &qword_1000E1068, &qword_100084F40, &unk_100083A08);
  v38 = v21;
  v48 = v25;
  sub_10007DCB8();
  (*(v45 + 8))(v10, v46);
  v29 = v18;
  v30 = v47;
  sub_1000256C0(v29, &qword_1000E1040, &qword_100084F18);
  v31 = type metadata accessor for SuggestedDestinationEntryContent(0);
  sub_100026310(v43 + *(v31 + 40), v30, &qword_1000E1030, &qword_100085510);
  v32 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  result = (*(*(v32 - 8) + 48))(v30, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = v41;
    sub_100026310(v30 + *(v32 + 28), v41, &qword_1000DEEE0, &qword_100082E30);
    sub_10005943C(v30, type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent);
    v50 = v27;
    v51 = v48;
    v52 = v26;
    v53 = v28;
    swift_getOpaqueTypeConformance2();
    v35 = v40;
    v36 = v38;
    sub_10007DC18();
    sub_1000256C0(v34, &qword_1000DEEE0, &qword_100082E30);
    return (*(v39 + 8))(v36, v35);
  }

  return result;
}

uint64_t sub_1000578DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v32 = sub_10007E0C8();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100015240(&qword_1000E1030, &qword_100085510);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_100015240(&qword_1000E1080, &qword_100084FB8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (&v31 - v11);
  v33 = sub_100015240(&qword_1000E1088, &qword_100084FC0);
  v13 = __chkstk_darwin(v33);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v31 - v17;
  __chkstk_darwin(v16);
  v20 = &v31 - v19;
  *v12 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v12 + *(v10 + 44)) = 0x4024000000000000;
  v21 = (v12 + *(v10 + 48));
  v22 = type metadata accessor for SuggestedDestinationMediumLargePlatterContent(0);
  sub_100059128(a1, v21 + *(v22 + 24), type metadata accessor for SuggestedDestinationEntryContent);
  *v21 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(v21 + *(v22 + 20)) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for SuggestedDestinationEntryContent(0);
  sub_100026310(a1 + *(v23 + 40), v8, &qword_1000E1030, &qword_100085510);
  v24 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  result = (*(*(v24 - 8) + 48))(v8, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v26 = v32;
    (*(v3 + 16))(v5, v8, v32);
    sub_10005943C(v8, type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent);
    sub_10007E0A8();
    (*(v3 + 8))(v5, v26);
    sub_10007DE88();
    sub_10007D668();
    sub_10002DB0C(v12, v18, &qword_1000E1080, &qword_100084FB8);
    v27 = &v18[*(v33 + 36)];
    v28 = v36;
    *v27 = v35;
    *(v27 + 1) = v28;
    *(v27 + 2) = v37;
    sub_10002DB0C(v18, v20, &qword_1000E1088, &qword_100084FC0);
    sub_100026310(v20, v15, &qword_1000E1088, &qword_100084FC0);
    v29 = v34;
    sub_100026310(v15, v34, &qword_1000E1088, &qword_100084FC0);
    v30 = v29 + *(sub_100015240(&qword_1000E1090, &qword_100085000) + 48);
    sub_1000256C0(v20, &qword_1000E1088, &qword_100084FC0);
    *v30 = 0;
    *(v30 + 8) = 1;
    return sub_1000256C0(v15, &qword_1000E1088, &qword_100084FC0);
  }

  return result;
}

uint64_t sub_100057D98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E1068, &qword_100084F40);
  sub_100059128(a1, a2 + v4[10], type metadata accessor for SuggestedDestinationEntryContent);
  *a2 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[9]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v4[11]) = 2;
  return result;
}

uint64_t sub_100057EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SuggestedDestinationWidgetView(0);
  sub_100026310(v1 + *(v10 + 20), v9, &qword_1000DEC20, &unk_100083720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007DFF8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000580AC()
{
  v1 = v0;
  v2 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_100015240(&qword_1000E1030, &qword_100085510);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for SuggestedDestinationAccessoryRectangularPlatterContent(0);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100059128(v1, v10, type metadata accessor for SuggestedDestinationEntryContent);
  v11 = type metadata accessor for SuggestedDestinationEntryContent(0);
  sub_100026310(v1 + *(v11 + 40), v7, &qword_1000E1030, &qword_100085510);
  v12 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  result = (*(*(v12 - 8) + 48))(v7, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100026310(&v7[*(v12 + 28)], v4, &qword_1000DEEE0, &qword_100082E30);
    sub_10005943C(v7, type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent);
    sub_100059190(&qword_1000E1098, type metadata accessor for SuggestedDestinationAccessoryRectangularPlatterContent, &unk_1000854C0);
    sub_10007DC18();
    sub_1000256C0(v4, &qword_1000DEEE0, &qword_100082E30);
    return sub_10005943C(v10, type metadata accessor for SuggestedDestinationAccessoryRectangularPlatterContent);
  }

  return result;
}

uint64_t sub_10005831C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v47 = type metadata accessor for SuggestedDestinationAccessoryRectangularWidgetView(0);
  __chkstk_darwin(v47);
  v42 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100015240(&qword_1000E0D70, &qword_100084CC0);
  __chkstk_darwin(v44);
  v46 = &v40 - v3;
  v53 = sub_100015240(&qword_1000E0D78, &qword_100084CC8);
  __chkstk_darwin(v53);
  v48 = &v40 - v4;
  v45 = type metadata accessor for SuggestedDestinationLargeWidgetView(0);
  __chkstk_darwin(v45);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SuggestedDestinationMediumWidgetView(0);
  __chkstk_darwin(v51);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100015240(&qword_1000E0D80, &qword_100084CD0);
  __chkstk_darwin(v55);
  v52 = &v40 - v7;
  v50 = sub_100015240(&qword_1000E0D88, &qword_100084CD8);
  __chkstk_darwin(v50);
  v49 = &v40 - v8;
  v9 = sub_100015240(&qword_1000E0D90, &qword_100084CE0);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v54 = sub_100015240(&qword_1000E0D98, &qword_100084CE8);
  __chkstk_darwin(v54);
  v13 = &v40 - v12;
  v56 = sub_100015240(&qword_1000E0DA0, &unk_100084CF0);
  __chkstk_darwin(v56);
  v15 = &v40 - v14;
  v16 = type metadata accessor for SuggestedDestinationSmallWidgetView(0);
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10007DFF8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057EA4(v22);
  v23 = (*(v20 + 88))(v22, v19);
  if (v23 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100059128(v1, v18, type metadata accessor for SuggestedDestinationEntryContent);
    sub_100059128(v18, v11, type metadata accessor for SuggestedDestinationSmallWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100059190(&qword_1000E0DC0, type metadata accessor for SuggestedDestinationSmallWidgetView, &unk_100084E20);
    sub_100059190(&qword_1000E0DC8, type metadata accessor for SuggestedDestinationMediumWidgetView, &unk_100084DD0);
    sub_10007D9D8();
    sub_100026310(v13, v49, &qword_1000E0D98, &qword_100084CE8);
    swift_storeEnumTagMultiPayload();
    sub_1000591D8();
    sub_1000592C4();
    sub_10007D9D8();
    sub_1000256C0(v13, &qword_1000E0D98, &qword_100084CE8);
    sub_100026310(v15, v52, &qword_1000E0DA0, &unk_100084CF0);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_1000593B0();
    sub_10002D148();
    sub_10007D9D8();
    sub_1000256C0(v15, &qword_1000E0DA0, &unk_100084CF0);
    v24 = type metadata accessor for SuggestedDestinationSmallWidgetView;
  }

  else
  {
    v27 = v49;
    v40 = v15;
    v28 = v52;
    if (v23 == enum case for WidgetFamily.systemMedium(_:))
    {
      v29 = v13;
      v30 = v43;
      sub_100059128(v1, v43, type metadata accessor for SuggestedDestinationEntryContent);
      sub_100059128(v30, v11, type metadata accessor for SuggestedDestinationMediumWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_100059190(&qword_1000E0DC0, type metadata accessor for SuggestedDestinationSmallWidgetView, &unk_100084E20);
      sub_100059190(&qword_1000E0DC8, type metadata accessor for SuggestedDestinationMediumWidgetView, &unk_100084DD0);
      sub_10007D9D8();
      sub_100026310(v29, v27, &qword_1000E0D98, &qword_100084CE8);
      swift_storeEnumTagMultiPayload();
      sub_1000591D8();
      sub_1000592C4();
      v31 = v40;
      sub_10007D9D8();
      sub_1000256C0(v29, &qword_1000E0D98, &qword_100084CE8);
      sub_100026310(v31, v28, &qword_1000E0DA0, &unk_100084CF0);
      swift_storeEnumTagMultiPayload();
      sub_100015240(&qword_1000DEC58, &unk_100082C50);
      sub_1000593B0();
      sub_10002D148();
      sub_10007D9D8();
      sub_1000256C0(v31, &qword_1000E0DA0, &unk_100084CF0);
      v25 = type metadata accessor for SuggestedDestinationMediumWidgetView;
      v26 = v30;
      return sub_10005943C(v26, v25);
    }

    v32 = v52;
    if (v23 == enum case for WidgetFamily.systemLarge(_:))
    {
      v33 = v41;
      sub_100059128(v1, v41, type metadata accessor for SuggestedDestinationEntryContent);
      sub_100059128(v33, v46, type metadata accessor for SuggestedDestinationLargeWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_100059190(&qword_1000E0DA8, type metadata accessor for SuggestedDestinationLargeWidgetView, &unk_100084EC0);
      sub_100059190(&qword_1000E0DB0, type metadata accessor for SuggestedDestinationAccessoryRectangularWidgetView, &unk_100084E70);
      v34 = v48;
      sub_10007D9D8();
      sub_100026310(v34, v27, &qword_1000E0D78, &qword_100084CC8);
      swift_storeEnumTagMultiPayload();
      sub_1000591D8();
      sub_1000592C4();
      v35 = v40;
      sub_10007D9D8();
      sub_1000256C0(v34, &qword_1000E0D78, &qword_100084CC8);
      sub_100026310(v35, v32, &qword_1000E0DA0, &unk_100084CF0);
      swift_storeEnumTagMultiPayload();
      sub_100015240(&qword_1000DEC58, &unk_100082C50);
      sub_1000593B0();
      sub_10002D148();
      sub_10007D9D8();
      sub_1000256C0(v35, &qword_1000E0DA0, &unk_100084CF0);
      v25 = type metadata accessor for SuggestedDestinationLargeWidgetView;
      v26 = v33;
      return sub_10005943C(v26, v25);
    }

    v37 = v40;
    if (v23 == enum case for WidgetFamily.systemExtraLarge(_:) || v23 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v23 == enum case for WidgetFamily.accessoryCorner(_:) || v23 == enum case for WidgetFamily.accessoryCircular(_:) || v23 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      while (1)
      {
        sub_10007E518();
        __break(1u);
      }
    }

    v38 = v49;
    v18 = v42;
    sub_100059128(v1, v42, type metadata accessor for SuggestedDestinationEntryContent);
    sub_100059128(v18, v46, type metadata accessor for SuggestedDestinationAccessoryRectangularWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100059190(&qword_1000E0DA8, type metadata accessor for SuggestedDestinationLargeWidgetView, &unk_100084EC0);
    sub_100059190(&qword_1000E0DB0, type metadata accessor for SuggestedDestinationAccessoryRectangularWidgetView, &unk_100084E70);
    v39 = v48;
    sub_10007D9D8();
    sub_100026310(v39, v38, &qword_1000E0D78, &qword_100084CC8);
    swift_storeEnumTagMultiPayload();
    sub_1000591D8();
    sub_1000592C4();
    sub_10007D9D8();
    sub_1000256C0(v39, &qword_1000E0D78, &qword_100084CC8);
    sub_100026310(v37, v32, &qword_1000E0DA0, &unk_100084CF0);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_1000593B0();
    sub_10002D148();
    sub_10007D9D8();
    sub_1000256C0(v37, &qword_1000E0DA0, &unk_100084CF0);
    v24 = type metadata accessor for SuggestedDestinationAccessoryRectangularWidgetView;
  }

  v25 = v24;
  v26 = v18;
  return sub_10005943C(v26, v25);
}

uint64_t sub_100059128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100059190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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