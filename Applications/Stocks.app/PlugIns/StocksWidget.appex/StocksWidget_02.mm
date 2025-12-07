uint64_t sub_10003BE44@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_1000DB760();
  __chkstk_darwin(v2 - 8);
  v50 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1000D9090();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v48 - v7;
  v49 = type metadata accessor for DetailTimelineEntry(0);
  v60 = *(v49 - 8);
  __chkstk_darwin(v49);
  v61 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  sub_10003D8D4(0);
  v13 = v12;
  v14 = *(v12 - 8);
  __chkstk_darwin(v12);
  v52 = (&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003F080(0, &qword_100116360, sub_10003D8D4, &type metadata accessor for Optional);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  sub_1000D9D10();
  sub_10003F0F8(&qword_1001152E8, type metadata accessor for DemoTimelineManager, &unk_1000E01D0);
  sub_1000D9D50();

  v48 = v1;
  v62 = sub_10003C84C();

  sub_10003DCE8(&v62);

  i = 0;
  v53 = v62;
  v23 = v62[2];
  v24 = (v14 + 56);
  v25 = (v14 + 48);
  v54 = (v4 + 8);
  v26 = (v4 + 40);
  v27 = _swiftEmptyArrayStorage;
  v59 = v18;
  v55 = v23;
  if (v23)
  {
    goto LABEL_3;
  }

LABEL_2:
  v28 = 1;
  for (i = v23; ; ++i)
  {
    (*v24)(v18, v28, 1, v13);
    sub_10003D9A4(v18, v21);
    if ((*v25)(v21, 1, v13) == 1)
    {
      break;
    }

    sub_10003DA38(&v21[*(v13 + 48)], v11, type metadata accessor for DetailTimelineEntry);
    v33 = v57;
    sub_1000D9080();
    v34 = v56;
    sub_1000D9000();
    v35 = v33;
    v36 = v58;
    (*v54)(v35, v58);
    (*v26)(v11, v34, v36);
    sub_10003D940(v11, v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_10007B704(0, v27[2] + 1, 1, v27);
    }

    v38 = v27[2];
    v37 = v27[3];
    if (v38 >= v37 >> 1)
    {
      v27 = sub_10007B704((v37 > 1), v38 + 1, 1, v27);
    }

    v27[2] = v38 + 1;
    sub_10003DA38(v61, v27 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v38, type metadata accessor for DetailTimelineEntry);
    sub_10003DAA0(v11);
    v18 = v59;
    v23 = v55;
    if (i == v55)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((i & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_17:
      __break(1u);

      __break(1u);
      return result;
    }

    if (i >= v53[2])
    {
      goto LABEL_17;
    }

    v29 = v53 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * i;
    v30 = *(v13 + 48);
    v31 = v52;
    *v52 = i;
    sub_10003D940(v29, v31 + v30);
    v32 = v31;
    v18 = v59;
    sub_10003DA38(v32, v59, sub_10003D8D4);
    v28 = 0;
  }

  v39 = sub_1000DA350();
  v40 = sub_1000DBDD0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v62 = v42;
    *v41 = 136315138;

    v43 = sub_1000DBB40();
    v45 = v44;

    v46 = sub_1000848C8(v43, v45, &v62);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "Returning entries:%s", v41, 0xCu);
    sub_100006D0C(v42);
  }

  sub_1000DB740();
  sub_10003F0F8(&qword_100115298, type metadata accessor for DetailTimelineEntry, &unk_1000E0AE4);
  sub_1000DB810();
}

void sub_10003C5AC(unint64_t a1@<X8>)
{
  sub_10003F080(0, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager____lazy_storage___demoDirectory;
  swift_beginAccess();
  sub_10003DBC0(v1 + v9, v8);
  v10 = sub_1000D8F30();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_10003DAFC(v8, &qword_100114D80, &type metadata accessor for URL);
    v12 = [objc_opt_self() defaultManager];
    v13 = [v12 URLsForDirectory:9 inDomains:1];

    v14 = sub_1000DBB10();
    if (*(v14 + 16))
    {
      v15 = *(v11 + 16);
      v15(a1, v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

      v15(v5, a1, v10);
      (*(v11 + 56))(v5, 0, 1, v10);
      swift_beginAccess();
      sub_10003DC54(v5, v1 + v9);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v11 + 32))(a1, v8, v10);
  }
}

void *sub_10003C84C()
{
  sub_10003F080(0, &qword_100116378, type metadata accessor for DetailTimelineEntry, &type metadata accessor for Optional);
  __chkstk_darwin(v1 - 8);
  v3 = &v86 - v2;
  v4 = type metadata accessor for DetailTimelineEntry(0);
  v88 = *(v4 - 8);
  __chkstk_darwin(v4);
  v89 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v93 = &v86 - v7;
  v100 = sub_1000DB9A0();
  v110 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D8F30();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v87 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v105 = &v86 - v13;
  __chkstk_darwin(v14);
  v112 = &v86 - v15;
  __chkstk_darwin(v16);
  v18 = &v86 - v17;
  __chkstk_darwin(v19);
  v21 = &v86 - v20;
  v109 = v0;
  sub_10003C5AC(v18);
  sub_1000D8EF0();
  v104 = v10;
  v22 = v10 + 8;
  v23 = *(v10 + 8);
  v23(v18, v9);
  v24 = [objc_opt_self() defaultManager];
  sub_1000D8EE0(v25);
  v27 = v26;
  v113 = 0;
  v28 = [v24 contentsOfDirectoryAtURL:v26 includingPropertiesForKeys:0 options:0 error:&v113];

  v29 = v113;
  if (!v28)
  {
    v79 = v113;
    sub_1000D8E60();

    swift_willThrow();
    v23(v21, v9);
LABEL_28:
    swift_errorRetain();
    v80 = sub_1000DA350();
    v81 = sub_1000DBDB0();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138543362;
      swift_errorRetain();
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v82 + 4) = v84;
      *v83 = v84;
      _os_log_impl(&_mh_execute_header, v80, v81, "WidgetDemo failed to decode entries. error=%{public}@", v82, 0xCu);
      sub_10003DAFC(v83, &qword_100114B48, sub_100006CC0);
    }

    else
    {
    }

    return _swiftEmptyArrayStorage;
  }

  v103 = v23;
  v108 = v22;
  v30 = sub_1000DBB10();
  v31 = v29;

  v32 = OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager_logger;

  v107 = v32;
  v33 = sub_1000DA350();
  v34 = sub_1000DBDD0();

  v35 = os_log_type_enabled(v33, v34);
  v94 = v3;
  v101 = v21;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v113 = v37;
    *v36 = 136315138;
    v38 = sub_1000DBB40();
    v40 = sub_1000848C8(v38, v39, &v113);
    v21 = v101;

    *(v36 + 4) = v40;
    v3 = v94;
    _os_log_impl(&_mh_execute_header, v33, v34, "Found Content:%s", v36, 0xCu);
    sub_100006D0C(v37);
  }

  v42 = v103;
  v43 = v105;
  v98 = *(v30 + 16);
  if (v98)
  {
    v91 = v4;
    v44 = 0;
    v111 = 0;
    v97 = v30 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v106 = v104 + 16;
    v96 = (v110 + 8);
    v90 = (v88 + 56);
    v95 = _swiftEmptyArrayStorage;
    *&v41 = 136315138;
    v92 = v41;
    while (1)
    {
      if (v44 >= *(v30 + 16))
      {
        __break(1u);
      }

      v45 = *(v104 + 72);
      v110 = v44;
      v46 = *(v104 + 16);
      v47 = v112;
      v46(v112, v97 + v45 * v44, v9);
      v102 = v46;
      v46(v43, v47, v9);
      v48 = sub_1000DA350();
      v49 = v43;
      v50 = sub_1000DBDD0();
      if (os_log_type_enabled(v48, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v113 = v52;
        *v51 = v92;
        sub_10003F0F8(&qword_100116388, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v53 = v30;
        v54 = sub_1000DC320();
        v56 = v55;
        v103(v49, v9);
        v42 = v103;
        v57 = v54;
        v30 = v53;
        v58 = sub_1000848C8(v57, v56, &v113);
        v21 = v101;

        *(v51 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v48, v50, "Found URL:%s", v51, 0xCu);
        sub_100006D0C(v52);
        v3 = v94;
      }

      else
      {

        v42(v49, v9);
      }

      sub_1000D8F10();
      v59 = v111;
      sub_1000DB8E0();
      if (v59)
      {
        break;
      }

      v111 = 0;

      v60 = v99;
      sub_1000DB990();
      v61 = sub_1000DB960();
      v63 = v62;

      (*v96)(v60, v100);
      if (v63 >> 60 == 15)
      {
        v42(v112, v9);
      }

      else
      {
        sub_1000D8D90();
        swift_allocObject();
        sub_1000D8D80();
        sub_10003F0F8(&qword_100116380, type metadata accessor for DetailTimelineEntry, &unk_1000E0ABC);
        v64 = v91;
        v65 = v111;
        sub_1000D8D70();
        if (v65)
        {

          sub_10003F0E4(v61, v63);

          v42(v112, v9);
          (*v90)(v3, 1, 1, v64);
          sub_10003DAFC(v3, &qword_100116378, type metadata accessor for DetailTimelineEntry);
          v111 = 0;
          v21 = v101;
        }

        else
        {
          v111 = 0;

          (*v90)(v3, 0, 1, v64);
          sub_10003DA38(v3, v93, type metadata accessor for DetailTimelineEntry);
          v66 = v87;
          v102(v87, v112, v9);
          v67 = sub_1000DA350();
          v68 = sub_1000DBDD0();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v113 = v102;
            *v69 = v92;
            sub_10003F0F8(&qword_100116388, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v70 = sub_1000DC320();
            v71 = v66;
            v73 = v72;
            v42(v71, v9);
            v74 = sub_1000848C8(v70, v73, &v113);

            *(v69 + 4) = v74;
            _os_log_impl(&_mh_execute_header, v67, v68, "Succeeded decoding:%s", v69, 0xCu);
            sub_100006D0C(v102);
          }

          else
          {

            v42(v66, v9);
          }

          v21 = v101;
          sub_10003D940(v93, v89);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v3 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v95 = sub_10007B704(0, v95[2] + 1, 1, v95);
          }

          v77 = v95[2];
          v76 = v95[3];
          if (v77 >= v76 >> 1)
          {
            v95 = sub_10007B704((v76 > 1), v77 + 1, 1, v95);
          }

          sub_10003F0E4(v61, v63);
          sub_10003DAA0(v93);
          v42(v112, v9);
          v78 = v95;
          v95[2] = v77 + 1;
          sub_10003DA38(v89, v78 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v77, type metadata accessor for DetailTimelineEntry);
        }
      }

      v44 = v110 + 1;
      v43 = v105;
      if (v98 == v110 + 1)
      {
        goto LABEL_26;
      }
    }

    v42(v112, v9);
    v42(v21, v9);

    goto LABEL_28;
  }

  v95 = _swiftEmptyArrayStorage;
LABEL_26:

  v42(v21, v9);
  return v95;
}

uint64_t sub_10003D5E0()
{
  v1 = OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager_logger;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10003DAFC(v0 + OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager____lazy_storage___demoDirectory, &qword_100114D80, &type metadata accessor for URL);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DemoTimelineManager(uint64_t a1)
{
  result = qword_1001162C0;
  if (!qword_1001162C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003D710(uint64_t a1)
{
  sub_1000DA370();
  if (v1 <= 0x3F)
  {
    sub_10003F080(319, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003D8D4(uint64_t a1)
{
  if (!qword_100116358)
  {
    type metadata accessor for DetailTimelineEntry(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100116358);
    }
  }
}

uint64_t sub_10003D940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D9A4(uint64_t a1, uint64_t a2)
{
  sub_10003F080(0, &qword_100116360, sub_10003D8D4, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003DAA0(uint64_t a1)
{
  v2 = type metadata accessor for DetailTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003DAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_10003F080(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10003DB6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10003DBC0(uint64_t a1, uint64_t a2)
{
  sub_10003F080(0, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DC54(uint64_t a1, uint64_t a2)
{
  sub_10003F080(0, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10003DCE8(uint64_t *a1)
{
  v2 = *(type metadata accessor for DetailTimelineEntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10003F06C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10003DD90(v5);
  *a1 = v3;
}

void sub_10003DD90(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1000DC310(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DetailTimelineEntry(0);
        v6 = sub_1000DBB80();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for DetailTimelineEntry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10003E0CC(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10003DEBC(0, v2, 1, a1);
  }
}

void sub_10003DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = type metadata accessor for DetailTimelineEntry(0);
  __chkstk_darwin(v32);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v26 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v22;
    v29 = v21;
    while (1)
    {
      sub_10003D940(v22, v16);
      sub_10003D940(v19, v12);
      v23 = sub_1000D9060();
      sub_10003DAA0(v12);
      sub_10003DAA0(v16);
      if (v23 != -1)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v21 = v29 - 1;
        v22 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_10003DA38(v22, v9, type metadata accessor for DetailTimelineEntry);
      swift_arrayInitWithTakeFrontToBack();
      sub_10003DA38(v9, v19, type metadata accessor for DetailTimelineEntry);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10003E0CC(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v115 = type metadata accessor for DetailTimelineEntry(0);
  v110 = *(v115 - 8);
  __chkstk_darwin(v115);
  v105 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v114 = &v100 - v11;
  __chkstk_darwin(v12);
  v14 = &v100 - v13;
  __chkstk_darwin(v15);
  v17 = &v100 - v16;
  v112 = a3;
  v18 = a3[1];
  if (v18 >= 1)
  {
    v102 = a4;
    v19 = 0;
    v20 = _swiftEmptyArrayStorage;
    while (1)
    {
      v21 = v19;
      v22 = v19 + 1;
      if (v22 >= v18)
      {
        v32 = v22;
      }

      else
      {
        v113 = v18;
        v23 = *v112;
        v108 = v23;
        v24 = *(v110 + 72);
        v5 = v23 + v24 * v22;
        sub_10003D940(v5, v17);
        sub_10003D940(v23 + v24 * v21, v14);
        v109 = sub_1000D9060();
        sub_10003DAA0(v14);
        sub_10003DAA0(v17);
        v103 = v21;
        v25 = v21 + 2;
        v111 = v24;
        v26 = v108 + v24 * (v21 + 2);
        while (v113 != v25)
        {
          v27 = v6;
          v28 = v20;
          v29 = v109 == -1;
          sub_10003D940(v26, v17);
          sub_10003D940(v5, v14);
          v30 = sub_1000D9060();
          sub_10003DAA0(v14);
          sub_10003DAA0(v17);
          v31 = v29 ^ (v30 != -1);
          v20 = v28;
          v6 = v27;
          ++v25;
          v26 += v111;
          v5 += v111;
          if ((v31 & 1) == 0)
          {
            v32 = v25 - 1;
            goto LABEL_11;
          }
        }

        v32 = v113;
LABEL_11:
        v21 = v103;
        if (v109 == -1)
        {
          if (v32 < v103)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            return;
          }

          if (v103 < v32)
          {
            v100 = v20;
            v101 = v6;
            v33 = v111 * (v32 - 1);
            v5 = v32 * v111;
            v113 = v32;
            v34 = v103;
            v35 = v103 * v111;
            do
            {
              if (v34 != --v32)
              {
                v36 = *v112;
                if (!*v112)
                {
                  goto LABEL_131;
                }

                sub_10003DA38(v36 + v35, v105, type metadata accessor for DetailTimelineEntry);
                if (v35 < v33 || v36 + v35 >= (v36 + v5))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v35 != v33)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_10003DA38(v105, v36 + v33, type metadata accessor for DetailTimelineEntry);
              }

              ++v34;
              v33 -= v111;
              v5 -= v111;
              v35 += v111;
            }

            while (v34 < v32);
            v20 = v100;
            v6 = v101;
            v21 = v103;
            v32 = v113;
          }
        }
      }

      v37 = v112[1];
      if (v32 >= v37)
      {
        goto LABEL_34;
      }

      if (__OFSUB__(v32, v21))
      {
        goto LABEL_123;
      }

      if (v32 - v21 >= v102)
      {
        goto LABEL_34;
      }

      if (__OFADD__(v21, v102))
      {
        goto LABEL_124;
      }

      if (v21 + v102 >= v37)
      {
        v5 = v112[1];
      }

      else
      {
        v5 = v21 + v102;
      }

      if (v5 < v21)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (v32 == v5)
      {
LABEL_34:
        v5 = v32;
        if (v32 < v21)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v100 = v20;
        v101 = v6;
        v84 = *v112;
        v85 = *(v110 + 72);
        v86 = *v112 + v85 * (v32 - 1);
        v87 = -v85;
        v103 = v21;
        v88 = v21 - v32;
        v106 = v85;
        v107 = v5;
        v89 = v84 + v32 * v85;
        do
        {
          v113 = v32;
          v108 = v89;
          v109 = v88;
          v90 = v89;
          v91 = v88;
          v111 = v86;
          v92 = v86;
          do
          {
            sub_10003D940(v90, v17);
            sub_10003D940(v92, v14);
            v93 = sub_1000D9060();
            sub_10003DAA0(v14);
            sub_10003DAA0(v17);
            if (v93 != -1)
            {
              break;
            }

            if (!v84)
            {
              goto LABEL_128;
            }

            v94 = v114;
            sub_10003DA38(v90, v114, type metadata accessor for DetailTimelineEntry);
            swift_arrayInitWithTakeFrontToBack();
            sub_10003DA38(v94, v92, type metadata accessor for DetailTimelineEntry);
            v92 += v87;
            v90 += v87;
          }

          while (!__CFADD__(v91++, 1));
          v32 = v113 + 1;
          v5 = v107;
          v86 = v111 + v106;
          v88 = v109 - 1;
          v89 = v108 + v106;
        }

        while (v113 + 1 != v107);
        v20 = v100;
        v6 = v101;
        v21 = v103;
        if (v107 < v103)
        {
          goto LABEL_122;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10007B738(0, *(v20 + 2) + 1, 1, v20);
      }

      v39 = *(v20 + 2);
      v38 = *(v20 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v20 = sub_10007B738((v38 > 1), v39 + 1, 1, v20);
      }

      *(v20 + 2) = v40;
      v41 = &v20[16 * v39];
      *(v41 + 4) = v21;
      *(v41 + 5) = v5;
      v42 = *v104;
      if (!*v104)
      {
        goto LABEL_132;
      }

      v107 = v5;
      if (v39)
      {
        while (1)
        {
          v5 = v40 - 1;
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v43 = *(v20 + 4);
            v44 = *(v20 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_54:
            if (v46)
            {
              goto LABEL_111;
            }

            v59 = &v20[16 * v40];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_114;
            }

            v65 = &v20[16 * v5 + 32];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_118;
            }

            if (v63 + v68 >= v45)
            {
              if (v45 < v68)
              {
                v5 = v40 - 2;
              }

              goto LABEL_75;
            }

            goto LABEL_68;
          }

          v69 = &v20[16 * v40];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_68:
          if (v64)
          {
            goto LABEL_113;
          }

          v72 = &v20[16 * v5];
          v74 = *(v72 + 4);
          v73 = *(v72 + 5);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_116;
          }

          if (v75 < v63)
          {
            goto LABEL_3;
          }

LABEL_75:
          v80 = v5 - 1;
          if (v5 - 1 >= v40)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*v112)
          {
            goto LABEL_129;
          }

          v81 = *&v20[16 * v80 + 32];
          v82 = *&v20[16 * v5 + 40];
          sub_10003E95C(*v112 + *(v110 + 72) * v81, *v112 + *(v110 + 72) * *&v20[16 * v5 + 32], *v112 + *(v110 + 72) * v82, v42);
          if (v6)
          {
            goto LABEL_105;
          }

          if (v82 < v81)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_10003EE4C(v20);
          }

          if (v80 >= *(v20 + 2))
          {
            goto LABEL_108;
          }

          v83 = &v20[16 * v80];
          *(v83 + 4) = v81;
          *(v83 + 5) = v82;
          v116 = v20;
          sub_10003EDC0(v5);
          v20 = v116;
          v40 = *(v116 + 2);
          if (v40 <= 1)
          {
            goto LABEL_3;
          }
        }

        v47 = &v20[16 * v40 + 32];
        v48 = *(v47 - 64);
        v49 = *(v47 - 56);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_109;
        }

        v52 = *(v47 - 48);
        v51 = *(v47 - 40);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_110;
        }

        v54 = &v20[16 * v40];
        v56 = *v54;
        v55 = *(v54 + 1);
        v53 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v53)
        {
          goto LABEL_112;
        }

        v53 = __OFADD__(v45, v57);
        v58 = v45 + v57;
        if (v53)
        {
          goto LABEL_115;
        }

        if (v58 >= v50)
        {
          v76 = &v20[16 * v5 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v53 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v53)
          {
            goto LABEL_119;
          }

          if (v45 < v79)
          {
            v5 = v40 - 2;
          }

          goto LABEL_75;
        }

        goto LABEL_54;
      }

LABEL_3:
      v18 = v112[1];
      v19 = v107;
      if (v107 >= v18)
      {
        goto LABEL_95;
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_95:
  v5 = *v104;
  if (!*v104)
  {
    goto LABEL_133;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_126:
    v20 = sub_10003EE4C(v20);
  }

  v116 = v20;
  v96 = *(v20 + 2);
  if (v96 >= 2)
  {
    while (*v112)
    {
      v97 = *&v20[16 * v96];
      v98 = *&v20[16 * v96 + 24];
      sub_10003E95C(*v112 + *(v110 + 72) * v97, *v112 + *(v110 + 72) * *&v20[16 * v96 + 16], *v112 + *(v110 + 72) * v98, v5);
      if (v6)
      {
        goto LABEL_105;
      }

      if (v98 < v97)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10003EE4C(v20);
      }

      if (v96 - 2 >= *(v20 + 2))
      {
        goto LABEL_121;
      }

      v99 = &v20[16 * v96];
      *v99 = v97;
      *(v99 + 1) = v98;
      v116 = v20;
      sub_10003EDC0(v96 - 1);
      v20 = v116;
      v96 = *(v116 + 2);
      if (v96 <= 1)
      {
        goto LABEL_105;
      }
    }

    goto LABEL_130;
  }

LABEL_105:
}

void sub_10003E95C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v39 = a3;
  v38 = type metadata accessor for DetailTimelineEntry(0);
  __chkstk_darwin(v38);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v39 - a2;
  if (v39 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v42 = a1;
  v41 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33[1] = v4;
    v22 = a4 + v18;
    if (v18 < 1)
    {
      v25 = a4 + v18;
    }

    else
    {
      v23 = -v14;
      v24 = a4 + v18;
      v25 = v22;
      v35 = v9;
      v36 = v23;
      while (2)
      {
        while (1)
        {
          v33[0] = v25;
          v26 = a2 + v23;
          v37 = a2;
          while (1)
          {
            v28 = v39;
            if (a2 <= a1)
            {
              v42 = a2;
              v40 = v33[0];
              goto LABEL_60;
            }

            v34 = v25;
            v39 += v23;
            v29 = v24 + v23;
            sub_10003D940(v29, v12);
            a2 = v26;
            v30 = v26;
            v31 = v35;
            sub_10003D940(v30, v35);
            v32 = sub_1000D9060();
            sub_10003DAA0(v31);
            sub_10003DAA0(v12);
            if (v32 == -1)
            {
              break;
            }

            v25 = v29;
            if (v28 < v24 || v39 >= v24)
            {
              swift_arrayInitWithTakeFrontToBack();
              v26 = a2;
            }

            else
            {
              v26 = a2;
              if (v28 != v24)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v24 = v29;
            v27 = v29 > a4;
            v23 = v36;
            a2 = v37;
            if (!v27)
            {
              goto LABEL_58;
            }
          }

          if (v28 < v37 || v39 >= v37)
          {
            break;
          }

          v25 = v34;
          v23 = v36;
          if (v28 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v24 <= a4)
          {
            goto LABEL_58;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v25 = v34;
        v23 = v36;
        if (v24 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v42 = a2;
    v40 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v40 = a4 + v17;
    if (v17 >= 1 && a2 < v39)
    {
      do
      {
        sub_10003D940(a2, v12);
        sub_10003D940(a4, v9);
        v21 = sub_1000D9060();
        sub_10003DAA0(v9);
        sub_10003DAA0(v12);
        if (v21 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v41 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v42 = a1;
      }

      while (a4 < v19 && a2 < v39);
    }
  }

LABEL_60:
  sub_10003EE60(&v42, &v41, &v40);
}

uint64_t sub_10003EDC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003EE4C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10003EE60(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for DetailTimelineEntry(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10003EF44(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003F080(0, &qword_100116370, sub_100028708, &type metadata accessor for _ContiguousArrayStorage);
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

void sub_10003F080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10003F0E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003DB6C(result, a2);
  }

  return result;
}

uint64_t sub_10003F0F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003F154(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  sub_10003F338(0, &qword_100116390, sub_10003F304, &qword_1001163A0, sub_10003F304);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = sub_1000D9690();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[7];
    goto LABEL_11;
  }

  sub_100023660(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

void sub_10003F338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100044610(a4, a5, &protocol conformance descriptor for [A]);
    v8 = sub_1000DA220();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10003F3CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10003F444(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  sub_10003F338(0, &qword_100116390, sub_10003F304, &qword_1001163A0, sub_10003F304);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000D9690();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_100023660(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

void sub_10003F608(uint64_t a1)
{
  sub_100043588(319, &qword_100115C60, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10003F338(319, &qword_100116390, sub_10003F304, &qword_1001163A0, sub_10003F304);
    if (v2 <= 0x3F)
    {
      sub_1000D9690();
      if (v3 <= 0x3F)
      {
        sub_100023660(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10003F734@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v95 = a2;
  v5 = sub_1000D9690();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v88 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v90 = &v85 - v8;
  sub_10003F3CC(0, &qword_100116450, sub_100040538, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v89 = &v85 - v13;
  __chkstk_darwin(v14);
  v16 = &v85 - v15;
  __chkstk_darwin(v17);
  v19 = &v85 - v18;
  sub_10003F338(0, &qword_100116390, sub_10003F304, &qword_1001163A0, sub_10003F304);
  v91 = *(v20 - 8);
  v92 = v20;
  __chkstk_darwin(v20);
  v86 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v87 = &v85 - v23;
  __chkstk_darwin(v24);
  v26 = &v85 - v25;
  __chkstk_darwin(v27);
  v29 = &v85 - v28;
  v30 = sub_1000DB720();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v31 + 16);
  v85 = a1;
  v35(v34, a1, v30, v32);
  v36 = (*(v31 + 88))(v34, v30);
  if (v36 == enum case for WidgetFamily.systemSmall(_:))
  {
    v96 = xmmword_1000E0210;
    sub_1000435D8(0, &qword_100115500, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
    sub_1000405C8();
    sub_1000DA240();
    sub_100040538(0);
    v38 = v37;
    v39 = *(v37 - 8);
    v40 = (*(v39 + 48))(v19, 1, v37);
    if (v40 != 1)
    {
      v41 = v95 & 1;
      __chkstk_darwin(v40);
      type metadata accessor for TickerCellViewModel(0);
      sub_1000DA1D0();
      (*(v39 + 8))(v19, v38);
      v42 = type metadata accessor for WatchlistOverviewContentViewModel(0);
      (*(v93 + 104))(&a3[v42[7]], enum case for PriceChangeDisplay.currency(_:), v94);
      v43 = v42[11];
      sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
      (*(*(v44 - 8) + 56))(&a3[v43], 1, 1, v44);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = (*(v91 + 32))(&a3[v42[5]], v29, v92);
      a3[v42[6]] = v41;
      *&a3[v42[8]] = 3;
      *&a3[v42[9]] = 1;
      a3[v42[10]] = v41;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  if (v36 == enum case for WidgetFamily.systemMedium(_:))
  {
    v46 = v95;
    v47 = 3;
    if (v95)
    {
      v47 = 4;
    }

    *&v96 = 0;
    *(&v96 + 1) = v47;
    sub_1000435D8(0, &qword_100115500, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
    sub_1000405C8();
    sub_1000DA240();
    sub_100040538(0);
    v49 = v48;
    v50 = *(v48 - 8);
    v51 = (*(v50 + 48))(v16, 1, v48);
    if (v51 == 1)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __chkstk_darwin(v51);
    v95 = v46 & 1;
    if (v46)
    {
      v52 = 1;
    }

    else
    {
      v52 = 2;
    }

    if (v46)
    {
      v53 = 2;
    }

    else
    {
      v53 = 1;
    }

    v89 = v53;
    if (v46)
    {
      v54 = 2;
    }

    else
    {
      v54 = 3;
    }

    type metadata accessor for TickerCellViewModel(0);
    sub_1000DA1D0();
    (*(v50 + 8))(v16, v49);
    v56 = v93;
    v55 = v94;
    v57 = v90;
    (*(v93 + 104))(v90, enum case for PriceChangeDisplay.currency(_:), v94);
    v58 = type metadata accessor for WatchlistOverviewContentViewModel(0);
    v59 = v58[11];
    sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
    (*(*(v60 - 8) + 56))(&a3[v59], 1, 1, v60);
    *a3 = 0;
    *(a3 + 1) = 0;
    (*(v91 + 32))(&a3[v58[5]], v26, v92);
    a3[v58[6]] = v52;
    result = (*(v56 + 32))(&a3[v58[7]], v57, v55);
    *&a3[v58[8]] = v54;
    *&a3[v58[9]] = v89;
    goto LABEL_29;
  }

  v61 = v95;
  if (v36 == enum case for WidgetFamily.systemLarge(_:))
  {
    v62 = 6;
    if (v95)
    {
      v62 = 12;
    }

    *&v96 = 0;
    *(&v96 + 1) = v62;
    sub_1000435D8(0, &qword_100115500, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
    sub_1000405C8();
    v63 = v89;
    sub_1000DA240();
    sub_100040538(0);
    v65 = v64;
    v66 = *(v64 - 8);
    v67 = (*(v66 + 48))(v63, 1, v64);
    if (v67 == 1)
    {
      goto LABEL_37;
    }

    __chkstk_darwin(v67);
    v95 = v61 & 1;
    if (v61)
    {
      v68 = 1;
    }

    else
    {
      v68 = 2;
    }

    if (v61)
    {
      v69 = 2;
    }

    else
    {
      v69 = 1;
    }

    type metadata accessor for TickerCellViewModel(0);
    v70 = v87;
    sub_1000DA1D0();
    (*(v66 + 8))(v63, v65);
    v72 = v93;
    v71 = v94;
    v73 = v88;
    (*(v93 + 104))(v88, enum case for PriceChangeDisplay.currency(_:), v94);
    v58 = type metadata accessor for WatchlistOverviewContentViewModel(0);
    v74 = v58[11];
    sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
    (*(*(v75 - 8) + 56))(&a3[v74], 1, 1, v75);
    *a3 = 0;
    *(a3 + 1) = 0;
    (*(v91 + 32))(&a3[v58[5]], v70, v92);
    a3[v58[6]] = v68;
    result = (*(v72 + 32))(&a3[v58[7]], v73, v71);
    *&a3[v58[8]] = 6;
    *&a3[v58[9]] = v69;
LABEL_29:
    v76 = v58[10];
    v77 = v95;
    goto LABEL_33;
  }

  if (v36 != enum case for WidgetFamily.accessoryRectangular(_:))
  {
LABEL_39:
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_1000DBF50(65);
    v97._object = 0x80000001000E8850;
    v97._countAndFlagsBits = 0xD00000000000003DLL;
    sub_1000DBA00(v97);
    sub_100044610(&qword_100115310, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v98._countAndFlagsBits = sub_1000DC320();
    sub_1000DBA00(v98);

    v99._countAndFlagsBits = 11815;
    v99._object = 0xE200000000000000;
    sub_1000DBA00(v99);
    result = sub_1000DC0D0();
    __break(1u);
    return result;
  }

  v96 = xmmword_1000E0210;
  sub_1000435D8(0, &qword_100115500, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
  sub_1000405C8();
  sub_1000DA240();
  sub_100040538(0);
  v79 = v78;
  v80 = *(v78 - 8);
  if ((*(v80 + 48))(v11, 1, v78) == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  type metadata accessor for TickerCellViewModel(0);
  v81 = v86;
  sub_1000DA1D0();
  (*(v80 + 8))(v11, v79);
  v82 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  (*(v93 + 104))(&a3[v82[7]], enum case for PriceChangeDisplay.currency(_:), v94);
  v83 = v82[11];
  sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
  (*(*(v84 - 8) + 56))(&a3[v83], 1, 1, v84);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = (*(v91 + 32))(&a3[v82[5]], v81, v92);
  a3[v82[6]] = 3;
  *&a3[v82[8]] = 3;
  *&a3[v82[9]] = 1;
  v76 = v82[10];
  v77 = v61 & 1;
LABEL_33:
  a3[v76] = v77;
  return result;
}

void sub_100040538(uint64_t a1)
{
  if (!qword_100116458)
  {
    sub_1000435D8(255, &qword_100115500, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
    sub_1000405C8();
    v1 = sub_1000DA220();
    if (!v2)
    {
      atomic_store(v1, &qword_100116458);
    }
  }
}

unint64_t sub_1000405C8()
{
  result = qword_100116460;
  if (!qword_100116460)
  {
    sub_1000435D8(255, &qword_100115500, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
    sub_1000287E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116460);
  }

  return result;
}

uint64_t sub_1000406E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10003F3CC(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for WatchlistOverviewContentViewModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

void sub_100040844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_10003F3CC(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = type metadata accessor for WatchlistOverviewContentViewModel(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    v12(v13, a2, a2, v11);
  }
}

void sub_1000409B8(uint64_t a1)
{
  sub_10003F3CC(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100043588(319, &unk_100115860, &type metadata for Bool, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100043588(319, &unk_1001164D0, &type metadata for EdgeInsets, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        type metadata accessor for WatchlistOverviewContentViewModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100040B00@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v107 = a2;
  sub_100043A34(0, &qword_1001165C0, sub_100043AC4);
  v111 = v3;
  v114 = *(v3 - 8);
  __chkstk_darwin(v3);
  v110 = (&v88 - v4);
  sub_100023660(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
  v9 = v8;
  v115 = *(v8 - 8);
  __chkstk_darwin(v8);
  v109 = &v88 - v10;
  sub_1000439C0(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v88 - v15;
  sub_10004362C(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v88 - v21;
  v23 = sub_1000DAC10();
  v104 = *(v23 - 8);
  v105 = v23;
  __chkstk_darwin(v23);
  v103 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for WatchlistOverviewContentView(0);
  v26 = a1;
  v27 = (a1 + *(v25 + 28));
  v28 = v27[1];
  v112 = v13;
  v113 = v9;
  v102 = v25;
  v108 = v27;
  if (v28)
  {
    v29 = v25;
    v98 = v7;
    v100 = v22;
    v101 = v16;
    v106 = v19;
    *&v182 = *v27;
    *(&v182 + 1) = v28;
    sub_100017740();

    v30 = sub_1000DB170();
    v95 = v31;
    v96 = v30;
    v33 = v32;
    v97 = v34;
    KeyPath = swift_getKeyPath();
    v35 = v33 & 1;
    LOBYTE(v163) = v33 & 1;
    LOBYTE(v150) = 0;
    v92 = swift_getKeyPath();
    LOBYTE(v182) = 0;
    v93 = sub_1000DADD0();
    sub_1000DB040();
    sub_1000DAFC0();
    v91 = sub_1000DB010();

    v90 = swift_getKeyPath();
    v36 = *(v29 + 24);
    v99 = v26;
    v37 = v26 + v36;
    v39 = *v37;
    v38 = *(v37 + 8);
    v41 = *(v37 + 16);
    v40 = *(v37 + 24);
    if (*(v37 + 32))
    {
      v129 = *v37;
      v130 = v38;
      v131 = v41;
      v132 = v40;
    }

    else
    {

      sub_1000DBDC0();
      v43 = sub_1000DAED0();
      sub_1000DA330();

      v44 = v103;
      sub_1000DAC00();
      swift_getAtKeyPath();
      sub_100043FF4(v39, v38, v41, v40, 0);
      (*(v104 + 8))(v44, v105);
      v39 = v129;
    }

    v45 = swift_getKeyPath();
    v46 = swift_allocObject();
    *(v46 + 16) = v39;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0;
    *(v46 + 40) = 0;
    sub_1000DB600();
    sub_1000DA7A0();
    v47 = v176;
    v48 = v177;
    v49 = v178;
    v50 = v179;
    v88 = v181;
    v89 = v180;
    v118 = 1;
    v117 = v177;
    v116 = v179;
    *&v119 = v96;
    *(&v119 + 1) = v95;
    LOBYTE(v120) = v35;
    *(&v120 + 1) = *v136;
    DWORD1(v120) = *&v136[3];
    *(&v120 + 1) = v97;
    *&v121 = 0;
    *(&v121 + 1) = KeyPath;
    v122 = 0;
    v123 = 0;
    *&v124 = 0;
    BYTE8(v124) = 0;
    HIDWORD(v124) = *&v135[3];
    *(&v124 + 9) = *v135;
    *&v125 = v92;
    *(&v125 + 1) = 1;
    LOBYTE(v126) = 0;
    BYTE3(v126) = v134;
    *(&v126 + 1) = v133;
    DWORD1(v126) = v93;
    *(&v126 + 1) = v90;
    *&v127 = v91;
    *(&v127 + 1) = v45;
    *&v128 = sub_10002B5D4;
    *(&v128 + 1) = v46;
    v139 = v121;
    v140 = 0u;
    v137 = v119;
    v138 = v120;
    v144 = v127;
    v145 = v128;
    v142 = v125;
    v143 = v126;
    v141 = v124;
    *&v150 = v96;
    *(&v150 + 1) = v95;
    LOBYTE(v151) = v35;
    *(&v151 + 1) = *v136;
    DWORD1(v151) = *&v136[3];
    *(&v151 + 1) = v97;
    *&v152 = 0;
    *(&v152 + 1) = KeyPath;
    v153 = 0uLL;
    *&v154 = 0;
    BYTE8(v154) = 0;
    *(&v154 + 9) = *v135;
    HIDWORD(v154) = *&v135[3];
    *&v155 = v92;
    *(&v155 + 1) = 1;
    LOBYTE(v156) = 0;
    *(&v156 + 1) = v133;
    BYTE3(v156) = v134;
    DWORD1(v156) = v93;
    *(&v156 + 1) = v90;
    *&v157 = v91;
    *(&v157 + 1) = v45;
    *&v158 = sub_10002B5D4;
    *(&v158 + 1) = v46;
    sub_10004451C(&v119, &v182, sub_10004333C);
    sub_100044398(&v150, sub_10004333C);
    v169 = v143;
    v170 = v144;
    v171 = v145;
    v165 = v139;
    v166 = v140;
    v167 = v141;
    v168 = v142;
    v163 = v137;
    v164 = v138;
    *&v172 = 0;
    BYTE8(v172) = 1;
    *&v173 = v47;
    BYTE8(v173) = v48;
    *&v174 = v49;
    BYTE8(v174) = v50;
    *&v175 = v89;
    *(&v175 + 1) = v88;
    nullsub_1();
    v192 = v173;
    v193 = v174;
    v194 = v175;
    v188 = v169;
    v189 = v170;
    v191 = v172;
    v190 = v171;
    v184 = v165;
    v185 = v166;
    v187 = v168;
    v186 = v167;
    v183 = v164;
    v182 = v163;
    v22 = v100;
    v16 = v101;
    v19 = v106;
    v9 = v113;
    v42 = v114;
    v7 = v98;
    v26 = v99;
  }

  else
  {
    sub_100043EE8(&v182);
    v42 = v114;
  }

  *v22 = sub_1000DAD00();
  *(v22 + 1) = 0;
  v22[16] = 0;
  sub_100043F0C(0, &qword_100116610, sub_1000436FC);
  sub_100041750(v26, &v22[*(v51 + 44)]);
  v52 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  sub_10004451C(v108 + *(v52 + 44), v7, sub_100023660);
  v53 = v115;
  if ((*(v115 + 48))(v7, 1, v9) == 1)
  {
    sub_100044398(v7, sub_100023660);
    (*(v42 + 56))(v16, 1, 1, v111);
    v54 = v112;
  }

  else
  {
    v55 = v109;
    (*(v53 + 32))(v109, v7, v9);
    v56 = sub_1000DB600();
    v57 = v110;
    *v110 = v56;
    v57[1] = v58;
    sub_100043F70(0);
    sub_100042728(v26, v55, v57 + *(v59 + 44));
    v60 = v26 + *(v102 + 24);
    v61 = *(v60 + 16);
    if ((*(v60 + 32) & 1) == 0)
    {
      v63 = *v60;
      v62 = *(v60 + 8);
      v106 = v19;
      v64 = *(v60 + 24);

      sub_1000DBDC0();
      v65 = sub_1000DAED0();
      sub_1000DA330();

      v42 = v114;
      v66 = v103;
      sub_1000DAC00();
      swift_getAtKeyPath();
      v19 = v106;
      sub_100043FF4(v63, v62, v61, v64, 0);
      (*(v104 + 8))(v66, v105);
      v61 = v164;
    }

    v54 = v112;
    v67 = swift_getKeyPath();
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    *(v68 + 32) = v61;
    *(v68 + 40) = 0;
    v69 = v110;
    v70 = v111;
    v71 = (v110 + *(v111 + 36));
    *v71 = v67;
    v71[1] = sub_10002B050;
    v71[2] = v68;
    sub_100044018(v69, v16);
    (*(v42 + 56))(v16, 0, 1, v70);
    (*(v115 + 8))(v109, v113);
  }

  v147 = v192;
  v148 = v193;
  v149 = v194;
  v143 = v188;
  v144 = v189;
  v145 = v190;
  v146 = v191;
  v139 = v184;
  v140 = v185;
  v141 = v186;
  v142 = v187;
  v137 = v182;
  v138 = v183;
  sub_10004451C(v22, v19, sub_10004362C);
  sub_10004451C(v16, v54, sub_1000439C0);
  v72 = v148;
  v160 = v147;
  v161 = v148;
  v73 = v149;
  v162 = v149;
  v74 = v143;
  v75 = v144;
  v156 = v143;
  v157 = v144;
  v77 = v145;
  v76 = v146;
  v158 = v145;
  v159 = v146;
  v78 = v139;
  v79 = v140;
  v152 = v139;
  v153 = v140;
  v81 = v141;
  v80 = v142;
  v154 = v141;
  v155 = v142;
  v83 = v137;
  v82 = v138;
  v150 = v137;
  v151 = v138;
  v84 = v107;
  v107[10] = v147;
  v84[11] = v72;
  v84[12] = v73;
  v84[6] = v74;
  v84[7] = v75;
  v84[8] = v77;
  v84[9] = v76;
  v84[2] = v78;
  v84[3] = v79;
  v84[4] = v81;
  v84[5] = v80;
  *v84 = v83;
  v84[1] = v82;
  sub_1000431B0(0);
  v86 = v85;
  sub_10004451C(v19, v84 + *(v85 + 48), sub_10004362C);
  sub_10004451C(v54, v84 + *(v86 + 64), sub_1000439C0);
  sub_10004451C(&v150, &v163, sub_100043238);
  sub_100044398(v16, sub_1000439C0);
  sub_100044398(v22, sub_10004362C);
  sub_100044398(v54, sub_1000439C0);
  sub_100044398(v19, sub_10004362C);
  v174 = v148;
  v175 = v149;
  v169 = v143;
  v170 = v144;
  v172 = v146;
  v173 = v147;
  v171 = v145;
  v165 = v139;
  v166 = v140;
  v167 = v141;
  v168 = v142;
  v163 = v137;
  v164 = v138;
  return sub_100044398(&v163, sub_100043238);
}

uint64_t sub_100041750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = sub_1000DB720();
  v102 = *(v3 - 8);
  v103 = v3;
  __chkstk_darwin(v3);
  v99 = (&v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v101 = (&v97 - v6);
  __chkstk_darwin(v7);
  v98 = (&v97 - v8);
  __chkstk_darwin(v9);
  v100 = (&v97 - v10);
  sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
  *&v120 = v11;
  *&v121 = *(v11 - 8);
  __chkstk_darwin(v11);
  v104 = &v97 - v12;
  sub_100023660(0);
  __chkstk_darwin(v13 - 8);
  *&v115 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v112 = &v97 - v16;
  v17 = sub_1000DAC10();
  v107 = *(v17 - 8);
  v108 = v17;
  __chkstk_darwin(v17);
  v106 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003F338(0, &qword_100116390, sub_10003F304, &qword_1001163A0, sub_10003F304);
  v20 = v19;
  v21 = *(v19 - 8);
  __chkstk_darwin(v19);
  v23 = &v97 - v22;
  sub_1000437C0(0);
  v25 = v24;
  __chkstk_darwin(v24);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000437A0(0);
  v114 = v28;
  __chkstk_darwin(v28);
  v117 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v113 = &v97 - v31;
  __chkstk_darwin(v32);
  v116 = &v97 - v33;
  v34 = type metadata accessor for WatchlistOverviewContentView(0);
  v35 = a1 + *(v34 + 28);
  v36 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  v37 = *(v21 + 16);
  v38 = v35 + v36[5];
  v111 = v20;
  v37(v23, v38, v20);
  v39 = *(v35 + v36[8]);
  v109 = *(v35 + v36[9]);
  v110 = v39;
  v105 = v34;
  v40 = *(v34 + 20);
  *&v119 = a1;
  v41 = a1 + v40;
  v42 = *v41;
  if (*(v41 + 8) != 1)
  {

    sub_1000DBDC0();
    v45 = sub_1000DAED0();
    sub_1000DA330();

    v46 = v106;
    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_10002F3F0(v42, 0);
    (*(v107 + 8))(v46, v108);
    if ((v128 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v44 = *(v35 + v36[6]);
    v43 = v44 != 3;
    goto LABEL_6;
  }

  if (v42)
  {
    goto LABEL_5;
  }

LABEL_3:
  v43 = 0;
  v44 = *(v35 + v36[6]);
LABEL_6:
  v47 = v44 != 3;
  (*(v21 + 32))(v27, v23, v111);
  v48 = 0;
  v49 = v110;
  *&v27[v25[13]] = v109;
  *&v27[v25[14]] = v49;
  *&v27[v25[15]] = 0x4038000000000000;
  v27[v25[16]] = v43;
  v27[v25[17]] = v47;
  v50 = &v27[v25[18]];
  *v50 = sub_10004267C;
  v50[1] = 0;
  v51 = v120;
  if (!*(v35 + 8))
  {
    v52 = v119 + *(v105 + 24);
    v48 = *v52;
    if ((*(v52 + 32) & 1) == 0)
    {
      v53 = *(v52 + 16);
      v111 = *(v52 + 8);
      v54 = *(v52 + 24);
      v55 = v48;

      sub_1000DBDC0();
      v56 = sub_1000DAED0();
      v57 = v106;
      sub_1000DA330();

      v51 = v120;
      sub_1000DAC00();
      swift_getAtKeyPath();
      sub_100043FF4(v55, v111, v53, v54, 0);
      (*(v107 + 8))(v57, v108);
      v48 = v128;
    }
  }

  v111 = v48;
  v58 = v36[11];
  v59 = v112;
  sub_10004451C(v35 + v58, v112, sub_100023660);
  v60 = *(v121 + 48);
  v61 = v60(v59, 1, v51);
  sub_100044398(v59, sub_100023660);
  if (v61 == 1)
  {
    v62 = v119 + *(v105 + 24);
    v63 = *(v62 + 16);
    if ((*(v62 + 32) & 1) == 0)
    {
      v64 = *v62;
      v112 = *(v62 + 8);
      v110 = *(v62 + 24);

      sub_1000DBDC0();
      v65 = sub_1000DAED0();
      sub_1000DA330();

      v51 = v120;
      v66 = v106;
      sub_1000DAC00();
      swift_getAtKeyPath();
      sub_100043FF4(v64, v112, v63, v110, 0);
      (*(v107 + 8))(v66, v108);
      v63 = v129;
    }
  }

  else
  {
    v63 = 0;
  }

  KeyPath = swift_getKeyPath();
  v68 = swift_allocObject();
  *(v68 + 16) = v111;
  *(v68 + 24) = 0;
  *(v68 + 32) = v63;
  *(v68 + 40) = 0;
  v69 = v113;
  sub_100044330(v27, v113, sub_1000437C0);
  v70 = (v69 + *(v114 + 36));
  *v70 = KeyPath;
  v70[1] = sub_10002B5D4;
  v70[2] = v68;
  v71 = v116;
  sub_100044330(v69, v116, sub_1000437A0);
  v72 = v115;
  sub_10004451C(v35 + v58, v115, sub_100023660);
  if (v60(v72, 1, v51) == 1)
  {
    sub_100044398(v72, sub_100023660);
LABEL_16:
    v120 = 0u;
    v121 = 0u;
    v76 = -256;
    v119 = 0u;
    v115 = 0u;
LABEL_25:
    v89 = v117;
    sub_10004451C(v71, v117, sub_1000437A0);
    v90 = v118;
    sub_10004451C(v89, v118, sub_1000437A0);
    sub_100043730(0);
    v92 = v90 + *(v91 + 48);
    v93 = v120;
    *v92 = v121;
    *(v92 + 16) = v93;
    v94 = v115;
    *(v92 + 32) = v119;
    *(v92 + 48) = v94;
    *(v92 + 64) = v76;
    sub_100044398(v71, sub_1000437A0);
    return sub_100044398(v89, sub_1000437A0);
  }

  v73 = v121;
  v74 = v104;
  (*(v121 + 32))(v104, v72, v51);
  v75 = sub_1000DA1A0();
  (*(v73 + 8))(v74, v51);
  if (v75)
  {
    goto LABEL_16;
  }

  v77 = v100;
  sub_10004C4D4(v100);
  v79 = v102;
  v78 = v103;
  v80 = (*(v102 + 88))(v77, v103);
  if (v80 == enum case for WidgetFamily.systemSmall(_:) || (v81 = v80, v80 == enum case for WidgetFamily.systemMedium(_:)))
  {
    v85 = v98;
    sub_10004C4D4(v98);
    v86 = v101;
    (*(v79 + 104))(v101, enum case for WidgetFamily.systemLarge(_:), v78);
    sub_100044610(&qword_100116638, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_1000DBAD0();
    sub_1000DBAD0();
    v87 = *(v79 + 8);
    v87(v86, v78);
    v87(v85, v78);
    v88 = 0x4020000000000000;
    if (v128 == v122)
    {
      v88 = 0x4030000000000000;
    }

    v142 = 0;
    v136 = 0;
    *&v128 = v88;
    BYTE8(v128) = 0;
    LOBYTE(v132) = 0;
    sub_1000435D8(0, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    sub_1000443F8();
    sub_1000DAD90();
    v124 = v139;
    v125 = v140;
    v126 = v141;
    v122 = v137;
    v123 = v138;
    LOBYTE(v143) = 0;
    goto LABEL_24;
  }

  if (v80 == enum case for WidgetFamily.systemLarge(_:))
  {
    v82 = v99;
    sub_10004C4D4(v99);
    v83 = v101;
    (*(v79 + 104))(v101, v81, v78);
    sub_100044610(&qword_100116638, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_1000DBAD0();
    sub_1000DBAD0();
    v84 = *(v79 + 8);
    v84(v83, v78);
    v84(v82, v78);
    sub_1000DB600();
    sub_1000DA7A0();
    v135 = 1;
    v134 = v144;
    v133 = v146;
    v136 = 1;
    *&v128 = 0;
    BYTE8(v128) = 1;
    *&v129 = v143;
    BYTE8(v129) = v144;
    *&v130 = v145;
    BYTE8(v130) = v146;
    v131 = v147;
    LOBYTE(v132) = 1;
    sub_1000435D8(0, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    sub_1000443F8();
    sub_1000DAD90();
    v124 = v139;
    v125 = v140;
    v126 = v141;
    v122 = v137;
    v123 = v138;
    v142 = 0;
LABEL_24:
    v127 = 0;
    sub_100043934(0);
    sub_10004449C();
    sub_1000DAD90();
    v120 = v129;
    v121 = v128;
    v115 = v131;
    v119 = v130;
    v76 = v132;
    goto LABEL_25;
  }

  *&v128 = 0;
  *(&v128 + 1) = 0xE000000000000000;
  sub_1000DBF50(59);
  v148._object = 0x80000001000E88C0;
  v148._countAndFlagsBits = 0xD000000000000037;
  sub_1000DBA00(v148);
  v96 = v101;
  sub_10004C4D4(v101);
  sub_100044610(&qword_100115310, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v149._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v149);

  (*(v79 + 8))(v96, v78);
  v150._countAndFlagsBits = 11815;
  v150._object = 0xE200000000000000;
  sub_1000DBA00(v150);
  result = sub_1000DC0D0();
  __break(1u);
  return result;
}

uint64_t sub_10004267C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004451C(a1, a2, type metadata accessor for TickerCellViewModel);
  v3 = *(type metadata accessor for TickerCellView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_10003F3CC(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100042728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v53 = a3;
  sub_1000440A8(0, &qword_100116620, type metadata accessor for HeadlinesList, &type metadata accessor for _ConditionalContent.Storage);
  v46 = v4;
  __chkstk_darwin(v4);
  v47 = v41 - v5;
  sub_1000440A8(0, &qword_1001165E0, type metadata accessor for HeadlinesList, &type metadata accessor for _ConditionalContent);
  v54 = v6;
  __chkstk_darwin(v6);
  v48 = v41 - v7;
  v52 = type metadata accessor for HeadlinesList(0);
  __chkstk_darwin(v52);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100043B44(0, &qword_100116628, &type metadata accessor for _ConditionalContent.Storage);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = v41 - v11;
  sub_100043C00(0, &qword_100116630, &type metadata accessor for _ConditionalContent.Storage);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  sub_100043C00(0, &qword_1001165D8, &type metadata accessor for _ConditionalContent);
  v55 = v15;
  __chkstk_darwin(v15);
  v17 = v41 - v16;
  v18 = type metadata accessor for HeadlineView(0);
  __chkstk_darwin(v18);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000DB720();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v43 = (v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = v41 - v25;
  v45 = a1;
  sub_10004C4D4((v41 - v25));
  v44 = v22;
  v27 = (*(v22 + 88))(v26, v21);
  if (v27 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
    sub_1000DA1F0();
    v28 = *(v18 + 20);
    *&v20[v28] = swift_getKeyPath();
    sub_10003F3CC(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
    swift_storeEnumTagMultiPayload();
    sub_10004451C(v20, v14, type metadata accessor for HeadlineView);
    swift_storeEnumTagMultiPayload();
    sub_100044610(&qword_1001165F8, type metadata accessor for HeadlineView, &unk_1000E4BC8);
    sub_100044610(&qword_100116600, type metadata accessor for HeadlinesList, &unk_1000E3974);
    sub_1000DAD90();
    sub_100044234(v17, v49);
    swift_storeEnumTagMultiPayload();
    sub_100043D0C();
    sub_100043E08();
    sub_1000DAD90();
    sub_1000442B4(v17);
    v29 = type metadata accessor for HeadlineView;
    v30 = v20;
    return sub_100044398(v30, v29);
  }

  v41[1] = v18;
  v42 = v17;
  v31 = v50;
  v32 = v9;
  v33 = v52;
  v34 = v49;
  if (v27 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
    (*(*(v35 - 8) + 16))(v32, v31, v35);
    *(v32 + *(v33 + 20)) = 1;
    *(v32 + *(v33 + 24)) = 0x4028000000000000;
    sub_10004451C(v32, v14, type metadata accessor for HeadlinesList);
    swift_storeEnumTagMultiPayload();
    sub_100044610(&qword_1001165F8, type metadata accessor for HeadlineView, &unk_1000E4BC8);
    sub_100044610(&qword_100116600, type metadata accessor for HeadlinesList, &unk_1000E3974);
    v36 = v42;
    sub_1000DAD90();
    sub_100044234(v36, v34);
    swift_storeEnumTagMultiPayload();
    sub_100043D0C();
    sub_100043E08();
    sub_1000DAD90();
    sub_1000442B4(v36);
LABEL_7:
    v29 = type metadata accessor for HeadlinesList;
    v30 = v32;
    return sub_100044398(v30, v29);
  }

  if (v27 == enum case for WidgetFamily.systemLarge(_:))
  {
    sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
    (*(*(v37 - 8) + 16))(v32, v31, v37);
    *(v32 + *(v33 + 20)) = 3;
    *(v32 + *(v33 + 24)) = 0x4028000000000000;
    sub_10004451C(v32, v47, type metadata accessor for HeadlinesList);
    swift_storeEnumTagMultiPayload();
    sub_100044610(&qword_100116600, type metadata accessor for HeadlinesList, &unk_1000E3974);
    v38 = v48;
    sub_1000DAD90();
    sub_100044114(v38, v34);
    swift_storeEnumTagMultiPayload();
    sub_100043D0C();
    sub_100043E08();
    sub_1000DAD90();
    sub_1000441A8(v38);
    goto LABEL_7;
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  sub_1000DBF50(51);
  v58._object = 0x80000001000E8890;
  v58._countAndFlagsBits = 0xD00000000000002FLL;
  sub_1000DBA00(v58);
  v40 = v43;
  sub_10004C4D4(v43);
  sub_100044610(&qword_100115310, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v59._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v59);

  (*(v44 + 8))(v40, v21);
  v60._countAndFlagsBits = 11815;
  v60._object = 0xE200000000000000;
  sub_1000DBA00(v60);
  result = sub_1000DC0D0();
  __break(1u);
  return result;
}

uint64_t sub_10004311C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1000DAD10();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_100043F0C(0, &qword_100116508, sub_10004317C);
  return sub_100040B00(v2, (a2 + *(v4 + 44)));
}

void sub_1000431B0(uint64_t a1)
{
  if (!qword_100116518)
  {
    sub_100043238(255);
    sub_10004362C(255);
    sub_1000439C0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100116518);
    }
  }
}

void sub_1000432A0(uint64_t a1)
{
  if (!qword_100116530)
  {
    sub_10004333C(255);
    sub_1000435D8(255, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100116530);
    }
  }
}

void sub_10004335C(uint64_t a1)
{
  if (!qword_100116540)
  {
    sub_1000433DC(255);
    sub_10004351C(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100116540);
    }
  }
}

void sub_1000433DC(uint64_t a1)
{
  if (!qword_100116548)
  {
    sub_100043470(255);
    sub_1000435D8(255, &qword_100115B90, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle, &type metadata accessor for _ForegroundStyleModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100116548);
    }
  }
}

void sub_100043470(uint64_t a1)
{
  if (!qword_100116550)
  {
    sub_1000435D8(255, &qword_100115EC0, &type metadata for Text, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for ModifiedContent);
    sub_10004351C(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100116550);
    }
  }
}

void sub_10004351C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_100043588(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100043588(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000435D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_100043668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100044610(a4, a5, &protocol conformance descriptor for TupleView<A>);
    v8 = sub_1000DB540();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100043730(uint64_t a1)
{
  if (!qword_100116570)
  {
    sub_1000437A0(255);
    sub_1000438AC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100116570);
    }
  }
}

void sub_1000437C0(uint64_t a1)
{
  if (!qword_100116580)
  {
    v4[0] = type metadata accessor for TickerCellViewModel(255);
    v4[1] = type metadata accessor for TickerCellView(255);
    v4[2] = sub_100044610(&qword_100116588, type metadata accessor for TickerCellViewModel, &unk_1000E2DD4);
    v4[3] = sub_100044610(&qword_100116590, type metadata accessor for TickerCellView, &unk_1000E2EAC);
    v2 = type metadata accessor for TickerGrid(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_100116580);
    }
  }
}

void sub_1000438AC(uint64_t a1)
{
  if (!qword_100116598)
  {
    sub_1000440A8(255, &qword_1001165A0, sub_100043934, &type metadata accessor for _ConditionalContent);
    v1 = sub_1000DBE80();
    if (!v2)
    {
      atomic_store(v1, &qword_100116598);
    }
  }
}

void sub_100043934(uint64_t a1)
{
  if (!qword_1001165A8)
  {
    sub_1000435D8(255, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    v1 = sub_1000DADA0();
    if (!v2)
    {
      atomic_store(v1, &qword_1001165A8);
    }
  }
}

void sub_1000439C0(uint64_t a1)
{
  if (!qword_1001165B8)
  {
    sub_100043A34(255, &qword_1001165C0, sub_100043AC4);
    v1 = sub_1000DBE80();
    if (!v2)
    {
      atomic_store(v1, &qword_1001165B8);
    }
  }
}

void sub_100043A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100043588(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100043AC4(uint64_t a1)
{
  if (!qword_1001165C8)
  {
    sub_100043B44(255, &qword_1001165D0, &type metadata accessor for _ConditionalContent);
    sub_100043C70();
    v1 = sub_1000DB550();
    if (!v2)
    {
      atomic_store(v1, &qword_1001165C8);
    }
  }
}

void sub_100043B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_100043C00(255, &qword_1001165D8, &type metadata accessor for _ConditionalContent);
    v7 = v6;
    sub_1000440A8(255, &qword_1001165E0, type metadata accessor for HeadlinesList, &type metadata accessor for _ConditionalContent);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100043C00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HeadlineView(255);
    v7 = type metadata accessor for HeadlinesList(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100043C70()
{
  result = qword_1001165E8;
  if (!qword_1001165E8)
  {
    sub_100043B44(255, &qword_1001165D0, &type metadata accessor for _ConditionalContent);
    sub_100043D0C();
    sub_100043E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001165E8);
  }

  return result;
}

unint64_t sub_100043D0C()
{
  result = qword_1001165F0;
  if (!qword_1001165F0)
  {
    sub_100043C00(255, &qword_1001165D8, &type metadata accessor for _ConditionalContent);
    sub_100044610(&qword_1001165F8, type metadata accessor for HeadlineView, &unk_1000E4BC8);
    sub_100044610(&qword_100116600, type metadata accessor for HeadlinesList, &unk_1000E3974);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001165F0);
  }

  return result;
}

unint64_t sub_100043E08()
{
  result = qword_100116608;
  if (!qword_100116608)
  {
    sub_1000440A8(255, &qword_1001165E0, type metadata accessor for HeadlinesList, &type metadata accessor for _ConditionalContent);
    sub_100044610(&qword_100116600, type metadata accessor for HeadlinesList, &unk_1000E3974);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116608);
  }

  return result;
}

double sub_100043EE8(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_100043F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DA800();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100043F70(uint64_t a1)
{
  if (!qword_100116618)
  {
    sub_100043B44(255, &qword_1001165D0, &type metadata accessor for _ConditionalContent);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_100116618);
    }
  }
}

uint64_t sub_100043FF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

uint64_t sub_100044018(uint64_t a1, uint64_t a2)
{
  sub_100043A34(0, &qword_1001165C0, sub_100043AC4);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000440A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, &type metadata for Never);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100044114(uint64_t a1, uint64_t a2)
{
  sub_1000440A8(0, &qword_1001165E0, type metadata accessor for HeadlinesList, &type metadata accessor for _ConditionalContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000441A8(uint64_t a1)
{
  sub_1000440A8(0, &qword_1001165E0, type metadata accessor for HeadlinesList, &type metadata accessor for _ConditionalContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100044234(uint64_t a1, uint64_t a2)
{
  sub_100043C00(0, &qword_1001165D8, &type metadata accessor for _ConditionalContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000442B4(uint64_t a1)
{
  sub_100043C00(0, &qword_1001165D8, &type metadata accessor for _ConditionalContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100044330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100044398(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000443F8()
{
  result = qword_100116640;
  if (!qword_100116640)
  {
    sub_1000435D8(255, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116640);
  }

  return result;
}

unint64_t sub_10004449C()
{
  result = qword_100116648;
  if (!qword_100116648)
  {
    sub_100043934(255);
    sub_1000443F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116648);
  }

  return result;
}

uint64_t sub_10004451C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100044610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_100045778(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100044780(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_100045778(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for LineTicker(uint64_t a1)
{
  result = qword_1001166C8;
  if (!qword_1001166C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000448A0(uint64_t a1)
{
  sub_100044994(319, &unk_1001156D8, &type metadata for ValueChangeTrend);
  if (v1 <= 0x3F)
  {
    sub_100044994(319, &qword_1001156D0, &type metadata for StockPrice);
    if (v2 <= 0x3F)
    {
      sub_100045778(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100044994(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000DBE80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000449FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000DAE60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100045354(0);
  __chkstk_darwin(v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v10 = sub_1000DAC50();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_100045588(0);
  sub_100044C2C(v1, &v10[*(v11 + 44)]);
  sub_1000DAE30();
  sub_100045620();
  sub_1000DB2A0();
  (*(v5 + 8))(v7, v4);
  sub_1000458AC(v10, sub_100045354);
  v13 = *(v1 + 8);
  v12 = *(v1 + 16);
  v15 = *(v2 + 24);
  v14 = *(v2 + 32);
  v16 = *(v2 + 40);
  v17 = *(v2 + 48);
  v18 = *(v2 + 56);
  v19 = *(v2 + 64);
  LOBYTE(v2) = *v2;
  sub_100045678(0, &qword_100116748, sub_1000456E4, &type metadata for AccessibilitySimpleTicker, &type metadata accessor for ModifiedContent);
  v21 = a1 + *(v20 + 36);
  *v21 = v2;
  *(v21 + 1) = *v24;
  *(v21 + 4) = *&v24[3];
  *(v21 + 8) = v13;
  *(v21 + 16) = v12;
  *(v21 + 24) = v15;
  *(v21 + 32) = v14;
  *(v21 + 40) = v16;
  *(v21 + 48) = v17;
  *(v21 + 56) = v18;
  *(v21 + 64) = v19;

  return sub_10002B054(v16, v17, v18, v19);
}

uint64_t sub_100044C2C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_1000DB030();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000DB720();
  v69 = *(v5 - 8);
  v70 = v5;
  __chkstk_darwin(v5);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = (&v62 - v8);
  v71 = type metadata accessor for StockPriceView(0);
  __chkstk_darwin(v71);
  v10 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100045460(0);
  v73 = v11;
  __chkstk_darwin(v11);
  v76 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = &v62 - v14;
  __chkstk_darwin(v15);
  v75 = &v62 - v16;
  v17 = type metadata accessor for SymbolTrendView(0);
  v18 = (v17 - 8);
  __chkstk_darwin(v17);
  v74 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v62 - v21;
  v23 = *a1;
  v25 = *(a1 + 1);
  v24 = *(a1 + 2);
  v26 = *(a1 + 3);
  v65 = *(a1 + 4);
  v27 = v65;
  KeyPath = swift_getKeyPath();
  *v22 = v23;
  *(v22 + 1) = v25;
  *(v22 + 2) = v24;
  *(v22 + 3) = v26;
  *(v22 + 4) = v27;
  v29 = v18[8];
  *&v22[v29] = swift_getKeyPath();
  sub_100045778(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  v68 = v30;
  swift_storeEnumTagMultiPayload();
  v31 = v18[9];
  *&v22[v31] = swift_getKeyPath();
  v32 = v66;
  sub_100045778(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v33 = &v22[v18[10]];
  *v33 = KeyPath;
  v33[8] = 0;
  v35 = *(a1 + 5);
  v34 = *(a1 + 6);
  v37 = *(a1 + 7);
  v36 = *(a1 + 8);
  type metadata accessor for LineTicker(0);

  sub_10002B054(v35, v34, v37, v36);
  v38 = v69;
  v39 = v67;
  sub_10004C4D4(v67);
  v40 = v70;
  (*(v38 + 32))(v32, v39, v70);
  v41 = (*(v38 + 88))(v32, v40);
  if (v41 == enum case for WidgetFamily.accessoryCircular(_:) || v41 == enum case for WidgetFamily.accessoryRectangular(_:) || v41 == enum case for WidgetFamily.accessoryInline(_:))
  {
    v48 = sub_1000DAF70();
  }

  else
  {
    (*(v38 + 8))(v32, v40);
    sub_1000DB080();
    sub_1000DAF80();

    v70 = v36;
    v42 = v37;
    v43 = v34;
    v44 = v35;
    v45 = v62;
    v46 = v63;
    v47 = v64;
    (*(v63 + 104))(v62, enum case for Font.Leading.tight(_:), v64);
    v48 = sub_1000DB060();

    (*(v46 + 8))(v45, v47);
    v35 = v44;
    v34 = v43;
    v37 = v42;
    v36 = v70;
  }

  v49 = swift_getKeyPath();
  *v10 = v35;
  v10[1] = v34;
  v10[2] = v37;
  v10[3] = v36;
  v10[4] = v48;
  v50 = v71;
  v51 = *(v71 + 24);
  *(v10 + v51) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v52 = v10 + *(v50 + 28);
  *v52 = v49;
  v52[8] = 0;
  v53 = *(v50 + 32);
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  sub_100002540();
  swift_allocObject();

  *(v10 + v53) = sub_1000D9DD0();
  v54 = v72;
  sub_1000457DC(v10, v72, type metadata accessor for StockPriceView);
  *(v54 + *(v73 + 36)) = 0x3FF0000000000000;
  v55 = v75;
  sub_1000457DC(v54, v75, sub_100045460);
  v56 = v74;
  sub_100045844(v22, v74, type metadata accessor for SymbolTrendView);
  v57 = v76;
  sub_100045844(v55, v76, sub_100045460);
  v58 = v77;
  sub_100045844(v56, v77, type metadata accessor for SymbolTrendView);
  sub_1000453E8(0);
  v60 = v58 + *(v59 + 48);
  *v60 = 0x4020000000000000;
  *(v60 + 8) = 0;
  sub_100045844(v57, v58 + *(v59 + 64), sub_100045460);
  sub_1000458AC(v55, sub_100045460);
  sub_1000458AC(v22, type metadata accessor for SymbolTrendView);
  sub_1000458AC(v57, sub_100045460);
  return sub_1000458AC(v56, type metadata accessor for SymbolTrendView);
}

void sub_100045354(uint64_t a1)
{
  if (!qword_100116708)
  {
    sub_100045778(255, &qword_100116710, sub_1000453E8, &type metadata accessor for TupleView);
    sub_100045500();
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100116708);
    }
  }
}

void sub_1000453E8(uint64_t a1)
{
  if (!qword_100116718)
  {
    type metadata accessor for SymbolTrendView(255);
    sub_100045460(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100116718);
    }
  }
}

void sub_100045460(uint64_t a1)
{
  if (!qword_100116720)
  {
    type metadata accessor for StockPriceView(255);
    sub_100045678(255, &qword_100116728, &type metadata accessor for LayoutPriorityTraitKey, &protocol witness table for LayoutPriorityTraitKey, &type metadata accessor for _TraitWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100116720);
    }
  }
}

unint64_t sub_100045500()
{
  result = qword_100116730;
  if (!qword_100116730)
  {
    sub_100045778(255, &qword_100116710, sub_1000453E8, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116730);
  }

  return result;
}

void sub_100045588(uint64_t a1)
{
  if (!qword_100116738)
  {
    sub_100045778(255, &qword_100116710, sub_1000453E8, &type metadata accessor for TupleView);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_100116738);
    }
  }
}

unint64_t sub_100045620()
{
  result = qword_100116740;
  if (!qword_100116740)
  {
    sub_100045354(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116740);
  }

  return result;
}

void sub_100045678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1000456E4(uint64_t a1)
{
  if (!qword_100116750)
  {
    sub_100045354(255);
    sub_100045620();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116750);
    }
  }
}

void sub_100045778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000457DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100045844(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000458AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100045910()
{
  result = qword_100116760;
  if (!qword_100116760)
  {
    sub_100045678(255, &qword_100116748, sub_1000456E4, &type metadata for AccessibilitySimpleTicker, &type metadata accessor for ModifiedContent);
    sub_100045354(255);
    sub_100045620();
    swift_getOpaqueTypeConformance2();
    sub_1000459F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116760);
  }

  return result;
}

unint64_t sub_1000459F8()
{
  result = qword_100116768;
  if (!qword_100116768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116768);
  }

  return result;
}

uint64_t sub_100045A4C(uint64_t a1, char a2, char a3)
{
  v7 = sub_1000D91C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
    return 0;
  }

  v11 = *(v3 + 16);
  sub_1000D9170();
  isa = sub_1000D9130().super.isa;
  (*(v8 + 8))(v10, v7);
  v13 = [v11 formattedCount:a1 withLocale:isa longform:a2 & 1 compactDisplay:a3 & 1];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_1000DB950();

  return v14;
}

uint64_t sub_100045B9C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100045BF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116990, &protocol descriptor for WatchlistManagerType, 1);
  result = sub_1000D9F00();
  if (!v19)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116998, &protocol descriptor for WatchlistDeprecationServiceType, 1);
  result = sub_1000D9F00();
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116978, &protocol descriptor for StockPriceDataManagerType, 1);
  result = sub_1000D9F00();
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100115330, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1000D9F00();
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &unk_1001169A0, &protocol descriptor for WatchlistSortingServiceType, 1);
  result = sub_1000D9F00();
  if (!v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = type metadata accessor for WatchlistViewModelService(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC12StocksWidget25WatchlistViewModelService_logger;
  if (qword_100114090 != -1)
  {
    swift_once();
  }

  v8 = sub_1000DA370();
  v9 = sub_100015294(v8, qword_100128DD8);
  (*(*(v8 - 8) + 16))(v6 + v7, v9, v8);
  sub_100023738(&v18, v6 + 16);
  sub_100023738(&v16, v6 + 56);
  sub_100023738(&v14, v6 + 96);
  sub_100023738(&v12, v6 + 136);
  result = sub_100023738(&v10, v6 + 176);
  a2[3] = v5;
  a2[4] = &off_100108FE8;
  *a2 = v6;
  return result;
}

uint64_t sub_100045EAC()
{
  type metadata accessor for DemoTimelineManager(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager_logger;
  if (qword_1001140B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000DA370();
  v3 = sub_100015294(v2, qword_100128E38);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = (v0 + OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager_stocksSuiteKey);
  *v4 = 0xD00000000000001CLL;
  v4[1] = 0x80000001000E8980;
  v5 = OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager____lazy_storage___demoDirectory;
  v6 = sub_1000D8F30();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  return v0;
}

uint64_t sub_100045FE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NoopStocksIntentHandler();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  a1[3] = v2;
  result = sub_100048180(&qword_100116988, type metadata accessor for NoopStocksIntentHandler, &unk_1000E2B00);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_10004606C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100115330, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1000D9F00();
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116978, &protocol descriptor for StockPriceDataManagerType, 1);
  result = sub_1000D9F00();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116980, &protocol descriptor for StockMetadataManagerType, 1);
  result = sub_1000D9F00();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = type metadata accessor for TodayViewModelService(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC12StocksWidget21TodayViewModelService_logger;
  if (qword_100114090 != -1)
  {
    swift_once();
  }

  v8 = sub_1000DA370();
  v9 = sub_100015294(v8, qword_100128DD8);
  (*(*(v8 - 8) + 16))(v6 + v7, v9, v8);
  sub_100023738(&v14, v6 + 16);
  sub_100023738(&v12, v6 + 56);
  result = sub_100023738(&v10, v6 + 96);
  a2[3] = v5;
  a2[4] = &off_10010BFC8;
  *a2 = v6;
  return result;
}

uint64_t sub_100046268@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100115330, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1000D9F00();
  if (v7)
  {
    v4 = type metadata accessor for ReloadPolicyProvider();
    v5 = swift_allocObject();
    result = sub_100023738(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_10010CB08;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004631C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116968, &protocol descriptor for StockFeedServiceType, 1);
  result = sub_1000D9F00();
  if (!v26)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116970, &protocol descriptor for NewsUserProfileProviderType, 0);
  result = sub_1000D9F00();
  v5 = v23;
  if (!v23)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v24;
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116950, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1000D9F00();
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100115330, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1000D9F00();
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_100006C7C(v19, v20);
  swift_getKeyPath();
  v7 = sub_1000D98E0();

  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_1001168E0, &protocol descriptor for MandatoryHeadlineServiceType, 0);
  result = sub_1000D9F00();
  v8 = v17;
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v18;
  sub_100006C7C(a1, a1[3]);
  result = sub_1000D9F00();
  if (!v16)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v10 = type metadata accessor for HeadlineViewModelService(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_logger;
  if (qword_100114090 != -1)
  {
    swift_once();
  }

  v13 = sub_1000DA370();
  v14 = sub_100015294(v13, qword_100128DD8);
  (*(*(v13 - 8) + 16))(v11 + v12, v14, v13);
  sub_100023738(&v25, v11 + 16);
  *(v11 + 56) = v5;
  *(v11 + 64) = v6;
  sub_100023738(&v21, v11 + 72);
  *(v11 + 112) = v7;
  *(v11 + 120) = v8;
  *(v11 + 128) = v9;
  sub_100023738(&v15, v11 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager);
  result = sub_100006D0C(v19);
  a2[3] = v10;
  a2[4] = &off_100109088;
  *a2 = v11;
  return result;
}

void *sub_100046674@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for QuoteDetailItemFactory();
  swift_allocObject();
  result = sub_1000967A4();
  a1[3] = v2;
  a1[4] = &off_10010B9D0;
  *a1 = result;
  return result;
}

uint64_t sub_1000466CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000480FC(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C7C(a1, a1[3]);
  v7 = sub_1000D91C0();
  sub_1000D9F00();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = &type metadata for SystemTheme;
    v15 = &off_10010ADA8;
    v10 = type metadata accessor for BaseStyler(0);
    v11 = swift_allocObject();
    (*(v8 + 16))(v11 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_locale, v6, v7);
    sub_1000A5D40(&v13, 0, 2u, (v11 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme));
    (*(v8 + 8))(v6, v7);
    result = sub_100023738(&v13, v11 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_systemTheme);
    a2[3] = v10;
    a2[4] = &off_100109B50;
    *a2 = v11;
  }

  return result;
}

uint64_t sub_10004688C()
{
  v0 = sub_1000DA0F0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D91C0();
  sub_1000DA070();
  (*(v1 + 104))(v3, enum case for Scope.singleton(_:), v0);
  sub_1000D9EA0();

  return (*(v1 + 8))(v3, v0);
}

char *sub_1000469BC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116950, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1000D9F00();
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_1001168E0, &protocol descriptor for MandatoryHeadlineServiceType, 0);
  result = sub_1000D9EE0();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_100006C7C(a1, a1[3]);
  result = sub_1000D9EE0();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  type metadata accessor for MandatoryHeadlineService(0);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC12StocksWidget24MandatoryHeadlineService_logger;
  if (qword_100114090 != -1)
  {
    swift_once();
  }

  v7 = sub_1000DA370();
  v8 = sub_100015294(v7, qword_100128DD8);
  (*(*(v7 - 8) + 16))(v5 + v6, v8, v7);
  sub_100023738(&v13, v5 + 112);
  *(v5 + 152) = v11;
  *(v5 + 160) = v12;
  *(v5 + 168) = v9;
  *(v5 + 176) = v10;
  result = sub_100048180(&qword_100116958, type metadata accessor for MandatoryHeadlineService, &unk_1000E2D68);
  *a2 = v5;
  a2[1] = result;
  return result;
}

uint64_t sub_100046C00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116940, &protocol descriptor for TopStoriesServiceType, 1);
  result = sub_1000D9F00();
  if (v9)
  {
    type metadata accessor for TopStoriesMandatoryHeadlineService(0);
    v4 = swift_allocObject();
    swift_defaultActor_initialize();
    v5 = OBJC_IVAR____TtC12StocksWidget34TopStoriesMandatoryHeadlineService_logger;
    if (qword_100114090 != -1)
    {
      swift_once();
    }

    v6 = sub_1000DA370();
    v7 = sub_100015294(v6, qword_100128DD8);
    (*(*(v6 - 8) + 16))(v4 + v5, v7, v6);
    sub_100023738(&v8, v4 + 112);
    result = sub_100048180(&qword_100116948, type metadata accessor for TopStoriesMandatoryHeadlineService, &unk_1000E2D10);
    *a2 = v4;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100046D60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_1001168E8, &protocol descriptor for WidgetSectionConfigRecordServiceType, 0);
  result = sub_1000D9F00();
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v15;
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116928, &protocol descriptor for NewsHeadlineServiceType, 1);
  result = sub_1000D9F00();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116930, &protocol descriptor for FeedLookupServiceType, 1);
  result = sub_1000D9F00();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  type metadata accessor for WidgetConfigMandatoryHeadlineService(0);
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC12StocksWidget36WidgetConfigMandatoryHeadlineService_logger;
  if (qword_100114090 != -1)
  {
    swift_once();
  }

  v8 = sub_1000DA370();
  v9 = sub_100015294(v8, qword_100128DD8);
  (*(*(v8 - 8) + 16))(v6 + v7, v9, v8);
  *(v6 + 112) = v14;
  *(v6 + 120) = v5;
  sub_100023738(&v12, v6 + 128);
  sub_100023738(&v10, v6 + 168);
  result = sub_100048180(&qword_100116938, type metadata accessor for WidgetConfigMandatoryHeadlineService, &unk_1000E2CB8);
  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_100046F88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100006C7C(a1, a1[3]);
  sub_100033DC0(0, &qword_1001168F8, &protocolRef_FCJSONRecordTreeSourceType);
  result = sub_1000D9ED0();
  if (result)
  {
    v5 = result;
    sub_100006C7C(a1, a1[3]);
    sub_1000481C8(0, &qword_100115330, &protocol descriptor for AppConfigurationManagerType, 1);
    result = sub_1000D9F00();
    if (v8)
    {
      type metadata accessor for WidgetSectionConfigRecordService();
      v6 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v6 + 112) = v5;
      sub_100023738(&v7, v6 + 120);
      result = sub_100048180(&qword_100116920, type metadata accessor for WidgetSectionConfigRecordService, &unk_1000E2678);
      *a2 = v6;
      a2[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000470D4(void *a1)
{
  sub_100006C7C(a1, a1[3]);
  sub_100033DC0(0, &qword_100116908, &protocolRef_FCContentContext);
  result = sub_1000D9EF0();
  if (result)
  {
    v3 = result;
    sub_100006C7C(a1, a1[3]);
    sub_10004805C();
    result = sub_1000D9ED0();
    if (result)
    {
      v4 = result;
      v5 = [v3 recordSourceWithSchema:result];
      swift_unknownObjectRelease();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000471C8(void *a1)
{
  sub_100006C7C(a1, a1[3]);
  sub_100033DC0(0, &qword_100116908, &protocolRef_FCContentContext);
  result = sub_1000D9EF0();
  if (result)
  {
    v3 = result;
    sub_100006C7C(a1, a1[3]);
    sub_100033DC0(0, &qword_1001168F0, &protocolRef_FCJSONRecordSourceType);
    result = sub_1000D9ED0();
    if (result)
    {
      v4 = result;
      sub_1000480A8();
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1000E04C0;
      *(v5 + 32) = v4;
      swift_unknownObjectRetain();
      isa = sub_1000DBB00().super.isa;

      v7 = [v3 recordTreeSourceWithRecordSources:isa];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100047320()
{
  v0 = objc_allocWithZone(FCJSONRecordSourceSchema);
  v1 = sub_1000DB910();
  v2 = sub_1000DB910();
  isa = sub_1000DBB00().super.isa;
  v4 = sub_1000DBB00().super.isa;
  v5 = [v0 initWithRecordType:v1 recordIDPrefix:v2 keys:isa localizableKeys:v4];

  return v5;
}

uint64_t sub_1000473F8()
{
  type metadata accessor for WidgetTerminationService();
  swift_allocObject();
  return sub_1000BC34C();
}

uint64_t sub_100047430(uint64_t a1, void *a2)
{
  sub_100006C7C(a2, a2[3]);
  type metadata accessor for WidgetTerminationService();
  result = sub_1000D9EF0();
  if (result)
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000474D0(uint64_t a1)
{
  v2 = sub_1000D9F10();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DA0F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9F40();
  v22 = sub_1000481C8(0, &qword_1001168A8, &protocol descriptor for WatchlistViewModelServiceType, 1);
  sub_1000DA070();

  v8 = enum case for Scope.singleton(_:);
  v9 = *(v5 + 104);
  v9(v7, enum case for Scope.singleton(_:), v4);
  sub_1000D9EA0();

  v10 = *(v5 + 8);
  v10(v7, v4);
  sub_1000D9F40();
  type metadata accessor for DemoTimelineManager(0);
  sub_1000DA060();

  v9(v7, v8, v4);
  sub_1000D9EA0();

  v10(v7, v4);
  sub_1000D9F40();
  sub_1000481C8(0, &unk_1001168B0, &protocol descriptor for StocksIntentHandlerType, 1);
  sub_1000DA070();

  v9(v7, v8, v4);
  sub_1000D9EA0();

  v10(v7, v4);
  sub_1000D9F40();
  sub_1000481C8(0, &qword_100115328, &protocol descriptor for TodayViewModelServiceType, 1);
  sub_1000DA070();

  v9(v7, v8, v4);
  sub_1000D9EA0();

  v10(v7, v4);
  sub_1000D9F40();
  sub_1000481C8(0, &unk_1001168C0, &protocol descriptor for ReloadPolicyProviderType, 1);
  sub_1000DA070();

  v28 = v8;
  v9(v7, v8, v4);
  v26 = v5 + 104;
  sub_1000D9EA0();

  v10(v7, v4);
  sub_1000D9F40();
  sub_1000481C8(0, &qword_100115348, &protocol descriptor for HeadlineViewModelServiceType, 1);
  sub_1000DA070();

  sub_1000D9F40();
  sub_1000481C8(0, &unk_1001168D0, &protocol descriptor for QuoteDetailItemFactoryType, 1);
  sub_1000DA070();

  v9(v7, v8, v4);
  sub_1000D9EA0();

  v10(v7, v4);
  sub_1000D9F40();
  sub_1000481C8(0, &qword_1001159E0, &protocol descriptor for BaseStylerType, 1);
  sub_1000DA070();

  v27 = a1;
  sub_1000D9F50();
  sub_1000DA050();

  sub_1000D9F50();
  sub_1000481C8(0, &qword_1001168E0, &protocol descriptor for MandatoryHeadlineServiceType, 0);
  sub_1000DA070();

  v11 = v28;
  v9(v7, v28, v4);
  sub_1000D9EA0();

  v10(v7, v4);
  sub_1000D9F50();
  sub_1000DA070();

  v9(v7, v11, v4);
  sub_1000D9EA0();

  v10(v7, v4);
  sub_1000D9F50();
  sub_1000DA070();

  v12 = v28;
  v9(v7, v28, v4);
  sub_1000D9EA0();

  v20[1] = v5 + 8;
  v10(v7, v4);
  sub_1000D9F50();
  sub_1000481C8(0, &qword_1001168E8, &protocol descriptor for WidgetSectionConfigRecordServiceType, 0);
  sub_1000DA070();

  v9(v7, v12, v4);
  v21 = v9;
  sub_1000D9EA0();

  v10(v7, v4);
  sub_1000D9F50();
  sub_100033DC0(0, &qword_1001168F0, &protocolRef_FCJSONRecordSourceType);
  v20[2] = "et20StocksWidgetAssembly";
  sub_1000DA060();

  v13 = v28;
  v9(v7, v28, v4);
  sub_1000D9EA0();

  v10(v7, v4);
  sub_1000D9F40();
  sub_100033DC0(0, &qword_1001168F8, &protocolRef_FCJSONRecordTreeSourceType);
  sub_1000DA060();

  v14 = v13;
  v15 = v21;
  v21(v7, v14, v4);
  sub_1000D9EA0();

  v10(v7, v4);
  sub_1000D9F50();
  sub_10004805C();
  sub_1000DA060();

  sub_1000D9F50();
  type metadata accessor for WidgetTerminationService();
  sub_1000DA060();

  v15(v7, v28, v4);
  sub_1000D9EA0();

  v10(v7, v4);
  sub_1000D9F60();
  sub_100006C7C(v29, v29[3]);
  v17 = v23;
  v16 = v24;
  v18 = v25;
  (*(v24 + 104))(v23, enum case for CallbackScope.any(_:), v25);
  sub_1000DA090();
  (*(v16 + 8))(v17, v18);
  return sub_100006D0C(v29);
}

unint64_t sub_10004805C()
{
  result = qword_100116900;
  if (!qword_100116900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100116900);
  }

  return result;
}

void sub_1000480A8()
{
  if (!qword_100116910)
  {
    v0 = sub_1000DC330();
    if (!v1)
    {
      atomic_store(v0, &qword_100116910);
    }
  }
}

void sub_1000480FC(uint64_t a1)
{
  if (!qword_100116960)
  {
    sub_1000D91C0();
    v1 = sub_1000DBE80();
    if (!v2)
    {
      atomic_store(v1, &qword_100116960);
    }
  }
}

uint64_t sub_100048180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000481C8(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_100048224()
{
  type metadata accessor for UnitNumberFormatter();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(SCICUNumberFormatter) init];
  *(v0 + 16) = result;
  qword_100128E70 = v0;
  return result;
}

uint64_t StockType.shouldShowCurrencySymbol.getter()
{
  v1 = v0;
  v2 = sub_1000D9C40();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for StockType.unknown(_:) || v7 == enum case for StockType.currency(_:) || v7 == enum case for StockType.cryptocurrency(_:) || v7 == enum case for StockType.equity(_:) || v7 == enum case for StockType.etf(_:) || v7 == enum case for StockType.futures(_:))
  {
    return 1;
  }

  if (v7 != enum case for StockType.index(_:))
  {
    if (v7 != enum case for StockType.mutualFund(_:))
    {
      (*(v3 + 8))(v6, v2);
    }

    return 1;
  }

  return 0;
}

uint64_t sub_100048410(void *a1)
{
  sub_100049894(0, &qword_100116A88, &type metadata accessor for KeyedEncodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  sub_100006C7C(a1, a1[3]);
  sub_100049780();
  sub_1000DC480();
  v9[15] = 0;
  sub_1000DC280();
  if (!v1)
  {
    v9[14] = 1;
    sub_1000DC280();
    v9[13] = 2;
    sub_1000DC280();
    v9[12] = 3;
    sub_1000DC270();
    v9[11] = 4;
    sub_1000DC2B0();
    type metadata accessor for PriceViewModel(0);
    v9[10] = 5;
    sub_1000D9480();
    sub_1000498F8(&qword_100116A90, &type metadata accessor for ExchangeStatus, &protocol conformance descriptor for ExchangeStatus);
    sub_1000DC2F0();
    v9[9] = 6;
    sub_1000D9C40();
    sub_1000498F8(&qword_100116A98, &type metadata accessor for StockType, &protocol conformance descriptor for StockType);
    sub_1000DC2F0();
    v9[8] = 7;
    sub_1000D91C0();
    sub_1000498F8(&qword_100116AA0, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
    sub_1000DC2F0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100048754@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v46 = sub_1000D91C0();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D9C40();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000D9480();
  v50 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049894(0, &qword_100116A60, &type metadata accessor for KeyedDecodingContainer);
  v53 = v10;
  v49 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for PriceViewModel(0);
  __chkstk_darwin(v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v55 = a1;
  sub_100006C7C(a1, v16);
  sub_100049780();
  v52 = v12;
  v17 = v54;
  sub_1000DC470();
  if (v17)
  {
    return sub_100006D0C(v55);
  }

  v18 = v9;
  v19 = v49;
  v20 = v50;
  v54 = v13;
  v21 = v51;
  v63 = 0;
  v22 = v15;
  *v15 = sub_1000DC1B0();
  v15[8] = v23 & 1;
  v62 = 1;
  *(v15 + 2) = sub_1000DC1B0();
  v15[24] = v25 & 1;
  v61 = 2;
  *(v15 + 4) = sub_1000DC1B0();
  v15[40] = v26 & 1;
  v60 = 3;
  *(v15 + 6) = sub_1000DC1A0();
  *(v15 + 7) = v27;
  v59 = 4;
  v28 = sub_1000DC1E0();
  v42 = 0;
  *(v15 + 8) = v28;
  *(v15 + 9) = v29;
  v58 = 5;
  sub_1000498F8(&qword_100116A70, &type metadata accessor for ExchangeStatus, &protocol conformance descriptor for ExchangeStatus);
  v30 = v18;
  v31 = v42;
  v32 = v42;
  sub_1000DC220();
  v43 = v32;
  if (v32)
  {
    (*(v19 + 8))(v52, v53);
    v33 = 0;
  }

  else
  {
    (*(v20 + 32))(&v22[v54[9]], v30, v7);
    v57 = 6;
    sub_1000498F8(&qword_100116A78, &type metadata accessor for StockType, &protocol conformance descriptor for StockType);
    v34 = v22;
    v35 = v48;
    v36 = v43;
    sub_1000DC220();
    v43 = v36;
    if (!v36)
    {
      (*(v47 + 32))(v34 + v54[10], v6, v35);
      v56 = 7;
      sub_1000498F8(&qword_100116A80, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
      v39 = v45;
      v40 = v46;
      v41 = v43;
      sub_1000DC220();
      v43 = v41;
      if (!v41)
      {
        (*(v19 + 8))(v52, v53);
        (*(v44 + 32))(v34 + v54[11], v39, v40);
        sub_1000497D4(v34, v21);
        sub_100006D0C(v55);
        return sub_100049838(v34);
      }

      (*(v19 + 8))(v52, v53);
      sub_100006D0C(v55);

      v38 = 1;
      v22 = v34;
      v37 = v54;
      goto LABEL_13;
    }

    (*(v19 + 8))(v52, v53);
    v33 = 1;
    v22 = v34;
    v31 = v42;
  }

  sub_100006D0C(v55);

  v37 = v54;
  if (v31)
  {
    if (!v33)
    {
      return result;
    }
  }

  else
  {

    if ((v33 & 1) == 0)
    {
      return result;
    }
  }

  v38 = 0;
LABEL_13:
  result = (*(v20 + 8))(&v22[v37[9]], v7);
  if (v38)
  {
    return (*(v47 + 8))(&v22[v37[10]], v48);
  }

  return result;
}

uint64_t sub_100048E30()
{
  v1 = *v0;
  v2 = 0x6563697270;
  v3 = 0x7079546B636F7473;
  if (v1 != 6)
  {
    v3 = 0x656C61636F6CLL;
  }

  v4 = 0x6B6361626C6C6166;
  if (v1 != 4)
  {
    v4 = 0x65676E6168637865;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 != 2)
  {
    v5 = 0x79636E6572727563;
  }

  if (*v0)
  {
    v2 = 0x6168436563697270;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100048F50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100049B98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100048F84(uint64_t a1)
{
  v2 = sub_100049780();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100048FC0(uint64_t a1)
{
  v2 = sub_100049780();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100049030()
{
  v1 = v0;
  v2 = sub_1000D9690();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for PriceChangeDisplay.currency(_:) || v7 == enum case for PriceChangeDisplay.percentage(_:))
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v19._countAndFlagsBits = 0x80000001000E89F0;
    v12._countAndFlagsBits = 0x65676E616863;
    v11 = 0xD00000000000002FLL;
    v12._object = 0xE600000000000000;
    v13.value._countAndFlagsBits = 0;
    v13.value._object = 0;
    v14.super.isa = v10;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
  }

  else
  {
    if (v7 != enum case for PriceChangeDisplay.marketCapitalization(_:))
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    type metadata accessor for Localized();
    v16 = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass:v16];
    v19._countAndFlagsBits = 0x80000001000E89C0;
    v12._countAndFlagsBits = 0x632074656B72616DLL;
    v12._object = 0xEA00000000007061;
    v13.value._countAndFlagsBits = 0;
    v13.value._object = 0;
    v14.super.isa = v10;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v11 = 0xD00000000000002DLL;
  }

  v17 = sub_1000D8E50(v12, v13, v14, v15, v11, v19);

  return v17;
}

uint64_t sub_100049288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  v7 = (v5 | v6) == 0;
  if (!v5 || !v6)
  {
    return v7;
  }

  if (*(a1 + 48) == *(a2 + 48) && v5 == v6)
  {
    return 1;
  }

  return sub_1000DC360();
}

uint64_t sub_100049350(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000D9480();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000D9C40();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = sub_1000D91C0();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_1000494D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
    return result;
  }

  v8 = sub_1000D9480();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000D9C40();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_1000D91C0();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for PriceViewModel(uint64_t a1)
{
  result = qword_100116A08;
  if (!qword_100116A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049688(uint64_t a1)
{
  sub_100044994(319, &qword_100116A18, &type metadata for Double);
  if (v1 <= 0x3F)
  {
    sub_100044994(319, &qword_100115C60, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_1000D9480();
      if (v3 <= 0x3F)
      {
        sub_1000D9C40();
        if (v4 <= 0x3F)
        {
          sub_1000D91C0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100049780()
{
  result = qword_100116A68;
  if (!qword_100116A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116A68);
  }

  return result;
}

uint64_t sub_1000497D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriceViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049838(uint64_t a1)
{
  v2 = type metadata accessor for PriceViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100049894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100049780();
    v7 = a3(a1, &type metadata for PriceViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000498F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PriceViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PriceViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100049A94()
{
  result = qword_100116AA8;
  if (!qword_100116AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116AA8);
  }

  return result;
}

unint64_t sub_100049AEC()
{
  result = qword_100116AB0;
  if (!qword_100116AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116AB0);
  }

  return result;
}

unint64_t sub_100049B44()
{
  result = qword_100116AB8;
  if (!qword_100116AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116AB8);
  }

  return result;
}

uint64_t sub_100049B98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000E89A0 == a2 || (sub_1000DC360() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1000DC360() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000074786554 || (sub_1000DC360() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEE00737574617453 || (sub_1000DC360() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7079546B636F7473 && a2 == 0xE900000000000065 || (sub_1000DC360() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100049E98(uint64_t a1)
{
  v2 = sub_1000DA6B0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1000DAA30();
}

void sub_100049F84(void *a1@<X8>)
{
  sub_1000DABD0();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_100049FB4@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = type metadata accessor for DetailTimelineProvider(0);
  __chkstk_darwin(v1);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A83C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A974(0);
  v48 = v9;
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004AA28(0);
  v50 = v12;
  v46 = *(v12 - 8);
  __chkstk_darwin(v12);
  v52 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004AB14(0);
  v49 = v14;
  v47 = *(v14 - 8);
  __chkstk_darwin(v14);
  v45 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9970();
  if (qword_1001140A0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000DA370();
  v17 = sub_100015294(v16, qword_100128E08);
  (*(*(v16 - 8) + 16))(v3, v17, v16);
  type metadata accessor for DetailWidgetView(0);
  sub_10004CED0(&qword_100116AC8, type metadata accessor for DetailWidgetView, &unk_1000E07C4);
  sub_10004CED0(&qword_100116AF0, type metadata accessor for DetailTimelineProvider, &unk_1000DF388);
  sub_1000DB770();
  sub_1000DACD0();
  v18 = sub_1000DB160();
  v20 = v19;
  v22 = v21;
  v23 = sub_10004CED0(&qword_100116AD8, sub_10004A83C, &protocol conformance descriptor for AppIntentConfiguration<A, B>);
  sub_1000DAD50();
  sub_100017794(v18, v20, v22 & 1);

  (*(v6 + 8))(v8, v5);
  sub_1000DACD0();
  v24 = sub_1000DB160();
  v26 = v25;
  v28 = v27;
  v53 = v5;
  v54 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v48;
  sub_1000DAD30();
  sub_100017794(v24, v26, v28 & 1);

  (*(v44 + 8))(v11, v30);
  sub_10004AC8C(0, &qword_100115AB8, &type metadata accessor for WidgetFamily, &type metadata accessor for _ContiguousArrayStorage);
  v31 = sub_1000DB720();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000E06E0;
  v36 = v35 + v34;
  v37 = *(v32 + 104);
  v37(v36, enum case for WidgetFamily.systemSmall(_:), v31);
  v37(v36 + v33, enum case for WidgetFamily.systemMedium(_:), v31);
  v37(v36 + 2 * v33, enum case for WidgetFamily.systemLarge(_:), v31);
  v37(v36 + 3 * v33, enum case for WidgetFamily.accessoryInline(_:), v31);
  v37(v36 + 4 * v33, enum case for WidgetFamily.accessoryRectangular(_:), v31);
  v37(v36 + 5 * v33, enum case for WidgetFamily.accessoryCircular(_:), v31);
  v53 = v30;
  v54 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v45;
  v40 = v50;
  v41 = v52;
  sub_1000DAD40();

  (*(v46 + 8))(v41, v40);
  v53 = v40;
  v54 = v38;
  swift_getOpaqueTypeConformance2();
  v42 = v49;
  sub_1000DAD60();
  return (*(v47 + 8))(v39, v42);
}

uint64_t sub_10004A79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004D2D0(a1, a2, type metadata accessor for DetailTimelineEntry);
  v3 = type metadata accessor for DetailWidgetView(0);
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_10004AC58(0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 24);
  result = swift_getKeyPath();
  *v5 = result;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  return result;
}

void sub_10004A83C(uint64_t a1)
{
  if (!qword_100116AC0)
  {
    sub_1000D9970();
    type metadata accessor for DetailWidgetView(255);
    sub_10004CED0(&qword_1001152A0, &type metadata accessor for SymbolWidgetConfigurationIntent, &protocol conformance descriptor for SymbolWidgetConfigurationIntent);
    sub_10004CED0(&qword_100116AC8, type metadata accessor for DetailWidgetView, &unk_1000E07C4);
    v1 = sub_1000DB780();
    if (!v2)
    {
      atomic_store(v1, &qword_100116AC0);
    }
  }
}

uint64_t type metadata accessor for DetailWidgetView(uint64_t a1)
{
  result = qword_100116B50;
  if (!qword_100116B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A974(uint64_t a1)
{
  if (!qword_100116AD0)
  {
    sub_10004A83C(255);
    sub_10004CED0(&qword_100116AD8, sub_10004A83C, &protocol conformance descriptor for AppIntentConfiguration<A, B>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116AD0);
    }
  }
}

void sub_10004AA28(uint64_t a1)
{
  if (!qword_100116AE0)
  {
    sub_10004A974(255);
    sub_10004A83C(255);
    sub_10004CED0(&qword_100116AD8, sub_10004A83C, &protocol conformance descriptor for AppIntentConfiguration<A, B>);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116AE0);
    }
  }
}

void sub_10004AB14(uint64_t a1)
{
  if (!qword_100116AE8)
  {
    sub_10004AA28(255);
    sub_10004A974(255);
    sub_10004A83C(255);
    sub_10004CED0(&qword_100116AD8, sub_10004A83C, &protocol conformance descriptor for AppIntentConfiguration<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116AE8);
    }
  }
}

void sub_10004AC8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10004ACF0(void *a1@<X8>)
{
  sub_1000DABD0();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_10004AD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetailTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    sub_10004AC8C(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 32);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

void sub_10004AE84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DetailTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_10004AC8C(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 32) = -a2;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

void sub_10004AFC0(uint64_t a1)
{
  type metadata accessor for DetailTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_10004AC8C(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10004C3DC(319, &unk_1001164D0, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10004B0A8()
{
  sub_10004AB14(255);
  sub_10004AA28(255);
  sub_10004A974(255);
  sub_10004A83C(255);
  sub_10004CED0(&qword_100116AD8, sub_10004A83C, &protocol conformance descriptor for AppIntentConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004B1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v61 = sub_1000DAC10();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1000DA980();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DetailContentViewModel(0);
  __chkstk_darwin(v64);
  v73 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DetailContentView(0);
  __chkstk_darwin(v65);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C328(0);
  v71 = v8;
  v70 = *(v8 - 8);
  __chkstk_darwin(v8);
  v74 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C2A4(0);
  v79 = v10;
  __chkstk_darwin(v10);
  v69 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v59 - v13;
  sub_10004C6B0(0, &qword_100116BD8, sub_10004C1F0, sub_10004C2A4, &type metadata accessor for _ConditionalContent.Storage);
  v76 = v14;
  __chkstk_darwin(v14);
  v78 = &v59 - v15;
  v81 = type metadata accessor for DetailTimelineEntry(0);
  __chkstk_darwin(v81);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DetailComplicationContentView(0);
  __chkstk_darwin(v75);
  v19 = (&v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C1F0(0);
  v77 = v20;
  v63 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000DB720();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = (&v59 - v28);
  v62 = type metadata accessor for DetailWidgetView(0);
  sub_10004CFD8(sub_10004AC58, sub_10002F35C, &type metadata accessor for WidgetFamily, v29);
  (*(v24 + 32))(v26, v29, v23);
  v30 = (*(v24 + 88))(v26, v23);
  if (v30 == enum case for WidgetFamily.accessoryCircular(_:) || v30 == enum case for WidgetFamily.accessoryRectangular(_:) || v30 == enum case for WidgetFamily.accessoryInline(_:))
  {
    sub_10004D2D0(a1, v17, type metadata accessor for DetailTimelineEntry);
    if (qword_1001141A8 != -1)
    {
      swift_once();
    }

    sub_100006E20(qword_100128FD8, &v84);
    sub_100006C7C(&v84, v87);
    sub_10002F2F8();
    result = sub_1000D9F00();
    if (v83)
    {
      *v19 = swift_getKeyPath();
      sub_10004AC58(0);
      swift_storeEnumTagMultiPayload();
      v38 = v75;
      v39 = *(v75 + 20);
      *(v19 + v39) = swift_getKeyPath();
      sub_10004C9C4(0);
      swift_storeEnumTagMultiPayload();
      sub_10004C9F8(v17, v19 + *(v38 + 24), type metadata accessor for DetailTimelineEntry);
      sub_100023738(&v82, v19 + *(v38 + 28));
      sub_100006D0C(&v84);
      v40 = sub_10004CED0(&qword_100116BB0, type metadata accessor for DetailComplicationContentView, &unk_1000E77A0);
      sub_1000DB200();
      sub_10004CA60(v19, type metadata accessor for DetailComplicationContentView);
      v41 = v63;
      v42 = v77;
      (*(v63 + 16))(v78, v22, v77);
      swift_storeEnumTagMultiPayload();
      v84 = v38;
      v85 = v40;
      swift_getOpaqueTypeConformance2();
      sub_10004C814();
      sub_1000DAD90();
      return (*(v41 + 8))(v22, v42);
    }

    __break(1u);
    goto LABEL_18;
  }

  (*(v24 + 8))(v26, v23);
  v31 = v81;
  v32 = v73;
  sub_10004D2D0(a1 + *(v81 + 20), v73, type metadata accessor for DetailContentViewModel);
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(qword_100128FD8, &v84);
  sub_100006C7C(&v84, v87);
  sub_10002F2F8();
  result = sub_1000D9F00();
  if (!v83)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  KeyPath = swift_getKeyPath();
  v35 = v65;
  *&v7[*(v65 + 24)] = KeyPath;
  sub_10004AC58(0);
  swift_storeEnumTagMultiPayload();
  sub_10004C9F8(v32, v7, type metadata accessor for DetailContentViewModel);
  sub_100023738(&v82, &v7[*(v35 + 20)]);
  sub_100006D0C(&v84);
  v36 = v68;
  v37 = v66;
  if (*(a1 + *(v31 + 32)) == 1)
  {
    sub_1000DA970();
  }

  else
  {
    v84 = _swiftEmptyArrayStorage;
    sub_10004CED0(&qword_100115C40, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    sub_1000326FC(0);
    sub_10004CED0(&qword_100115C50, sub_1000326FC, &protocol conformance descriptor for [A]);
    sub_1000DBEE0();
  }

  sub_10004CED0(&qword_100116BC8, type metadata accessor for DetailContentView, &unk_1000E417C);
  sub_1000DB2F0();
  (*(v67 + 8))(v37, v36);
  sub_10004CA60(v7, type metadata accessor for DetailContentView);
  v43 = a1 + *(v62 + 24);
  v44 = *v43;
  v45 = *(v43 + 16);
  if (*(v43 + 32) != 1)
  {
    v46 = *(v43 + 8);
    v47 = *(v43 + 24);

    sub_1000DBDC0();
    v48 = sub_1000DAED0();
    sub_1000DA330();

    v49 = v59;
    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_100043FF4(v44, v46, v45, v47, 0);
    v50 = *(v60 + 8);
    v51 = v61;
    v50(v49, v61);
    v81 = v84;

    sub_1000DBDC0();
    v52 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_100043FF4(v44, v46, v45, v47, 0);
    v50(v49, v51);
    v45 = v86;
    v44 = v81;
  }

  v53 = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = v44;
  *(v54 + 24) = 0;
  *(v54 + 32) = v45;
  *(v54 + 40) = 0;
  v55 = v69;
  (*(v70 + 32))(v69, v74, v71);
  v56 = (v55 + *(v79 + 36));
  *v56 = v53;
  v56[1] = sub_10002B518;
  v56[2] = v54;
  v57 = v72;
  sub_10004C74C(v55, v72);
  sub_10004C7B0(v57, v78);
  swift_storeEnumTagMultiPayload();
  v58 = sub_10004CED0(&qword_100116BB0, type metadata accessor for DetailComplicationContentView, &unk_1000E77A0);
  v84 = v75;
  v85 = v58;
  swift_getOpaqueTypeConformance2();
  sub_10004C814();
  sub_1000DAD90();
  return sub_10004C968(v57);
}

uint64_t sub_10004BF78@<X0>(uint64_t a1@<X8>)
{
  sub_10004B1E4(v1, a1);
  KeyPath = swift_getKeyPath();
  sub_10004C10C(0);
  v5 = (a1 + *(v4 + 36));
  sub_100031EB0(0);
  v7 = *(v6 + 28);
  v8 = enum case for ColorScheme.dark(_:);
  v9 = sub_1000DA6B0();
  (*(*(v9 - 8) + 104))(v5 + v7, v8, v9);
  *v5 = KeyPath;
  v10 = *(type metadata accessor for DetailTimelineEntry(0) + 28);
  v11 = swift_getKeyPath();
  sub_10004C6B0(0, &qword_100116BD0, sub_10004C10C, sub_100031DD4, &type metadata accessor for ModifiedContent);
  v13 = (a1 + *(v12 + 36));
  sub_100031DD4(0);
  v15 = *(v14 + 28);
  v16 = sub_1000D9690();
  result = (*(*(v16 - 8) + 16))(v13 + v15, v1 + v10, v16);
  *v13 = v11;
  return result;
}

void sub_10004C154(uint64_t a1)
{
  if (!qword_100116B98)
  {
    sub_10004C6B0(255, &qword_100116BA0, sub_10004C1F0, sub_10004C2A4, &type metadata accessor for _ConditionalContent);
    v1 = sub_1000DB3A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100116B98);
    }
  }
}

void sub_10004C1F0(uint64_t a1)
{
  if (!qword_100116BA8)
  {
    type metadata accessor for DetailComplicationContentView(255);
    sub_10004CED0(&qword_100116BB0, type metadata accessor for DetailComplicationContentView, &unk_1000E77A0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116BA8);
    }
  }
}

void sub_10004C2A4(uint64_t a1)
{
  if (!qword_100116BB8)
  {
    sub_10004C328(255);
    sub_10004C3DC(255, &qword_100115740, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100116BB8);
    }
  }
}

void sub_10004C328(uint64_t a1)
{
  if (!qword_100116BC0)
  {
    type metadata accessor for DetailContentView(255);
    sub_10004CED0(&qword_100116BC8, type metadata accessor for DetailContentView, &unk_1000E417C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116BC0);
    }
  }
}

void sub_10004C3DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for EdgeInsets);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_10004C430@<D0>(_OWORD *a1@<X8>)
{
  sub_10004CAC0();
  sub_1000DAC20();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_10004C554()
{
  v1 = sub_1000DAC10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[32] == 1)
  {
    return *v0;
  }

  sub_1000DBDC0();
  v6 = sub_1000DAED0();
  sub_1000DA330();

  sub_1000DAC00();
  swift_getAtKeyPath();
  sub_10004CB14(v0);
  (*(v2 + 8))(v4, v1);
  return v7;
}

void sub_10004C6B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_10004C74C(uint64_t a1, uint64_t a2)
{
  sub_10004C2A4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004C7B0(uint64_t a1, uint64_t a2)
{
  sub_10004C2A4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004C814()
{
  result = qword_100116BE0;
  if (!qword_100116BE0)
  {
    sub_10004C2A4(255);
    type metadata accessor for DetailContentView(255);
    sub_10004CED0(&qword_100116BC8, type metadata accessor for DetailContentView, &unk_1000E417C);
    swift_getOpaqueTypeConformance2();
    sub_10004C8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BE0);
  }

  return result;
}

unint64_t sub_10004C8F4()
{
  result = qword_100116BE8;
  if (!qword_100116BE8)
  {
    sub_10004C3DC(255, &qword_100115740, &type metadata accessor for _EnvironmentKeyTransformModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BE8);
  }

  return result;
}

uint64_t sub_10004C968(uint64_t a1)
{
  sub_10004C2A4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004C9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004CA60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10004CAC0()
{
  result = qword_100116BF0;
  if (!qword_100116BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BF0);
  }

  return result;
}

uint64_t sub_10004CB14(uint64_t a1)
{
  sub_10004C3DC(0, &unk_1001164D0, &type metadata accessor for Environment);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004CB90()
{
  result = qword_100116BF8;
  if (!qword_100116BF8)
  {
    sub_10004C6B0(255, &qword_100116BD0, sub_10004C10C, sub_100031DD4, &type metadata accessor for ModifiedContent);
    sub_10004CC84();
    sub_10004CED0(&qword_100115C18, sub_100031DD4, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BF8);
  }

  return result;
}

unint64_t sub_10004CC84()
{
  result = qword_100116C00;
  if (!qword_100116C00)
  {
    sub_10004C10C(255);
    sub_10004CD34();
    sub_10004CED0(&qword_100115C20, sub_100031EB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C00);
  }

  return result;
}

unint64_t sub_10004CD34()
{
  result = qword_100116C08;
  if (!qword_100116C08)
  {
    sub_10004C154(255);
    sub_10004CDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C08);
  }

  return result;
}

unint64_t sub_10004CDAC()
{
  result = qword_100116C10;
  if (!qword_100116C10)
  {
    sub_10004C6B0(255, &qword_100116BA0, sub_10004C1F0, sub_10004C2A4, &type metadata accessor for _ConditionalContent);
    type metadata accessor for DetailComplicationContentView(255);
    sub_10004CED0(&qword_100116BB0, type metadata accessor for DetailComplicationContentView, &unk_1000E77A0);
    swift_getOpaqueTypeConformance2();
    sub_10004C814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C10);
  }

  return result;
}

uint64_t sub_10004CED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004CFD8@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(uint64_t, char *, __n128)@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_1000DAC10();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1)(0, v12);
  v16 = __chkstk_darwin(v15);
  v18 = &v22 - v17;
  a2(v8, &v22 - v17, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    sub_1000DBDC0();
    v21 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10004D2D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004D34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreparedSparkline(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_100057D8C(0, &qword_100116C88, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10004D4B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PreparedSparkline(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    sub_100057D8C(0, &qword_100116C88, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 44);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

void sub_10004D630(uint64_t a1)
{
  type metadata accessor for PreparedSparkline(319);
  if (v1 <= 0x3F)
  {
    sub_100057D8C(319, &qword_100116C88, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10004D750()
{
  result = qword_100116D48;
  if (!qword_100116D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116D48);
  }

  return result;
}

uint64_t sub_10004D7C0()
{
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(qword_100128FD8, v3);
  sub_100006C7C(v3, v3[3]);
  sub_10002F2F8();
  result = sub_1000D9F00();
  if (v2)
  {
    sub_100023738(&v1, qword_100116C20);
    return sub_100006D0C(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004D880@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v127 = a1;
  v126 = type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable(0);
  __chkstk_darwin(v126);
  v125 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DAE60();
  v123 = *(v4 - 8);
  v124 = v4;
  __chkstk_darwin(v4);
  v122 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for SparklineView(0);
  v115 = *(v130 - 8);
  __chkstk_darwin(v130);
  v117 = v6;
  v118 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052B50(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052B84(0);
  v11 = *(v10 - 8);
  v128 = v10;
  v129 = v11;
  __chkstk_darwin(v10);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053D0C(0);
  v98 = v14;
  v97 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053EE4(0);
  v101 = v17;
  v100 = *(v17 - 8);
  __chkstk_darwin(v17);
  v99 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000540D0(0);
  v105 = v19;
  v103 = *(v19 - 8);
  __chkstk_darwin(v19);
  v102 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100054AC8(0);
  v108 = v21;
  v106 = *(v21 - 8);
  __chkstk_darwin(v21);
  v104 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100054F20();
  v111 = v23;
  v110 = *(v23 - 8);
  __chkstk_darwin(v23);
  v107 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000552EC(0);
  v112 = v25;
  __chkstk_darwin(v25);
  v109 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100055368(0);
  v120 = v27;
  v116 = *(v27 - 8);
  __chkstk_darwin(v27);
  v113 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100055700(0);
  v121 = v29;
  v119 = *(v29 - 8);
  __chkstk_darwin(v29);
  v114 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v2;
  sub_1000575B8(0, &qword_100116D60, sub_100052C2C, sub_100052D68, &type metadata accessor for BuilderConditional);
  sub_100053B68();
  sub_1000DA540();
  v31 = type metadata accessor for PreparedSparkline(0);
  v32 = sub_1000DA660();
  v33 = *(v32 - 8);
  v34 = v9;
  v94 = *(v33 + 56);
  v93 = v33 + 56;
  v94(v9, 1, 1, v32);
  sub_100053DE0(0);
  v36 = v35;
  v37 = sub_1000581F8(&qword_100116E60, sub_100052B84, &protocol conformance descriptor for Chart<A>);
  v38 = sub_100053E74();
  v39 = v16;
  v40 = v128;
  v95 = v36;
  sub_1000DB1C0();
  v96 = v34;
  sub_100058104(v34, sub_100052B50);
  result = (v129[1])(v13, v40);
  if (*(v2 + *(v130 + 32)) != 1 || (v42 = v2 + *(v31 + 32), (*(v42 + 8) & 1) != 0))
  {
    v43 = (v2 + *(v31 + 28));
    v44 = *v43;
    v45 = v43[1];
LABEL_9:
    v136 = v44;
    v137 = v45;
    v47 = v2;
    v48 = v96;
    v94(v96, 1, 1, v32);
    sub_100057714(0, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    v50 = v49;
    v132 = v40;
    v133 = v95;
    v134 = v37;
    v135 = v38;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v52 = sub_100054034();
    v53 = v99;
    v54 = v98;
    sub_1000DB1D0();
    sub_100058104(v48, sub_100052B50);
    v55 = (*(v97 + 8))(v39, v54);
    v129 = &v93;
    __chkstk_darwin(v55);
    *(&v93 - 2) = v47;
    v56 = v47;
    sub_1000542B4(0);
    v58 = v57;
    v132 = v54;
    v133 = v50;
    v134 = OpaqueTypeConformance2;
    v135 = v52;
    v59 = swift_getOpaqueTypeConformance2();
    v60 = sub_100054E7C(&qword_100116F10, sub_1000542B4, sub_100054A94, &protocol conformance descriptor for <A> A?);
    v61 = v102;
    v62 = v101;
    sub_1000DB180();
    v63 = (*(v100 + 8))(v53, v62);
    __chkstk_darwin(v63);
    *(&v93 - 2) = v56;
    sub_100054D34(0);
    v65 = v64;
    v132 = v62;
    v133 = v58;
    v134 = v59;
    v135 = v60;
    v66 = swift_getOpaqueTypeConformance2();
    v67 = sub_100054E7C(&qword_100116F38, sub_100054D34, sub_100054EEC, &protocol conformance descriptor for <A> A?);
    v68 = v104;
    v69 = v105;
    sub_1000DB1A0();
    (*(v103 + 8))(v61, v69);
    v70 = v118;
    sub_100057AC8(v56, v118, type metadata accessor for SparklineView);
    v71 = (*(v115 + 80) + 16) & ~*(v115 + 80);
    v72 = swift_allocObject();
    sub_100057C94(v70, v72 + v71, type metadata accessor for SparklineView);
    sub_1000551DC(0);
    v132 = v69;
    v133 = v65;
    v134 = v66;
    v135 = v67;
    swift_getOpaqueTypeConformance2();
    sub_10005523C();
    v73 = v107;
    v74 = v108;
    sub_1000DB1E0();

    (*(v106 + 8))(v68, v74);
    KeyPath = swift_getKeyPath();
    v76 = v112;
    v77 = v109;
    v78 = &v109[*(v112 + 36)];
    sub_100055334(0);
    v80 = *(v79 + 28);
    v81 = enum case for LayoutDirection.leftToRight(_:);
    v82 = sub_1000DA910();
    (*(*(v82 - 8) + 104))(v78 + v80, v81, v82);
    *v78 = KeyPath;
    (*(v110 + 32))(v77, v73, v111);
    v83 = v122;
    sub_1000DAE30();
    v84 = sub_1000553EC();
    v85 = v113;
    sub_1000DB2A0();
    (*(v123 + 8))(v83, v124);
    sub_100057768(v77, sub_1000552EC);
    v86 = v125;
    sub_100057AC8(v56, v125, type metadata accessor for PreparedSparkline);
    v132 = v76;
    v133 = v84;
    v87 = swift_getOpaqueTypeConformance2();
    v88 = sub_1000581F8(&qword_100116F98, type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable, &unk_1000E0A48);
    v89 = v114;
    v90 = v120;
    v91 = v126;
    sub_1000DB2D0();
    sub_100058104(v86, type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable);
    (*(v116 + 8))(v85, v90);
    v132 = v90;
    v133 = v91;
    v134 = v87;
    v135 = v88;
    swift_getOpaqueTypeConformance2();
    v92 = v121;
    sub_1000DB1F0();
    return (*(v119 + 8))(v89, v92);
  }

  v45 = *v42;
  v46 = (v2 + *(v31 + 28));
  v44 = *v46;
  if (v45 < *v46)
  {
    v44 = v45;
  }

  if (v45 <= v46[1])
  {
    v45 = v46[1];
  }

  if (v44 <= v45)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004E7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100052D68(0);
  v5 = v4;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052C2C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + *(type metadata accessor for SparklineView(0) + 40));
  v20[4] = a1;
  sub_100052E30(0);
  sub_10005376C();
  sub_1000DA530();
  if (v14)
  {
    (*(v6 + 32))(a2, v8, v5);
  }

  else
  {
    sub_100053A80(0);
    v20[1] = v15;
    sub_1000581F8(&qword_100116E38, sub_100052D68, &protocol conformance descriptor for Plot<A>);
    sub_100053B34(255);
    v17 = v16;
    v18 = sub_1000581F8(&qword_100116E30, sub_100053B34, &protocol conformance descriptor for PlaceholderContentView<A>);
    v20[6] = v17;
    v20[7] = v18;
    swift_getOpaqueTypeConformance2();
    sub_1000DA3C0();
    (*(v6 + 8))(v8, v5);
    (*(v11 + 32))(a2, v13, v10);
  }

  sub_1000575B8(0, &qword_100116FE0, sub_100052C2C, sub_100052D68, &type metadata accessor for BuilderConditional.Storage);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004EB08()
{
  sub_100053B34(0);
  sub_1000581F8(&qword_100116E30, sub_100053B34, &protocol conformance descriptor for PlaceholderContentView<A>);
  return sub_1000DB1F0();
}

uint64_t sub_10004EB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_1000DA400();
  __chkstk_darwin(v3 - 8);
  v70 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SparklineView(0);
  v6 = *(v5 - 8);
  v78 = v5 - 8;
  v67 = v6;
  __chkstk_darwin(v5 - 8);
  v68 = v7;
  v69 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000570C0(0);
  __chkstk_darwin(v8 - 8);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000DA430();
  __chkstk_darwin(v10 - 8);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000DA480();
  __chkstk_darwin(v12 - 8);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000542E8(0);
  v80 = v14;
  v74 = *(v14 - 8);
  __chkstk_darwin(v14);
  v64 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000DA980();
  v17 = *(v16 - 8);
  v76 = v16;
  v77 = v17;
  __chkstk_darwin(v16);
  v75 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v73 = &v56 - v20;
  v21 = sub_1000D92D0();
  v71 = *(v21 - 8);
  v72 = v21;
  __chkstk_darwin(v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000D9280();
  v61 = *(v24 - 8);
  v62 = v24;
  __chkstk_darwin(v24);
  sub_100053DE0(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000D9270();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000DA5F0();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v36 = &v56 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v29;
  v37 = *(v29 + 104);
  v58 = enum case for Calendar.Component.hour(_:);
  v60 = v28;
  v57 = v37;
  v37(v31, v34);
  v38 = type metadata accessor for PreparedSparkline(0);
  sub_100057AC8(a1 + *(v38 + 20), v27, sub_100053DE0);
  sub_1000D9250();
  (*(v71 + 16))(v23, a1 + *(v38 + 24), v72);
  v39 = v74;
  sub_1000D9260();
  v40 = 1;
  v72 = v31;
  sub_1000DA5E0();
  v41 = sub_1000DA5D0();
  (*(v33 + 8))(v36, v32);
  v71 = *(v41 + 16);

  v42 = v73;
  sub_10004CF18(v73);
  v43 = v75;
  sub_1000DA970();
  sub_1000581F8(&qword_100115C40, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  v44 = v76;
  LOBYTE(v41) = sub_1000DBED0();
  v45 = *(v77 + 8);
  v45(v43, v44);
  v45(v42, v44);
  v46 = v79;
  if ((v41 & 1) == 0)
  {
    if (*(*a1 + 16))
    {
      v47 = v71 / 3;
      sub_1000DA460();
      v48 = v72;
      v49 = v60;
      v57(v72, v58, v60);
      v50 = v63;
      (*(v61 + 56))(v63, 1, 1, v62);
      sub_1000DA410();
      sub_100058104(v50, sub_1000570C0);
      (*(v59 + 8))(v48, v49);
      v51 = v69;
      sub_100057AC8(a1, v69, type metadata accessor for SparklineView);
      v52 = (*(v67 + 80) + 24) & ~*(v67 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = v47;
      sub_100057C94(v51, v53 + v52, type metadata accessor for SparklineView);
      sub_1000DA3F0();
      sub_100054330(0);
      sub_1000547B4();
      v54 = v64;
      sub_1000DA630();
      (*(v39 + 32))(v46, v54, v80);
      v40 = 0;
    }

    else
    {
      v40 = 1;
    }
  }

  return (*(v39 + 56))(v46, v40, 1, v80);
}

uint64_t sub_10004F430@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v176 = a3;
  v169 = a4;
  sub_1000573DC(0);
  v168 = v6;
  __chkstk_darwin(v6);
  v167 = v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005744C(0);
  v159 = v8;
  __chkstk_darwin(v8);
  v158 = v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100054454(0);
  v166 = v10;
  v165 = *(v10 - 8);
  __chkstk_darwin(v10);
  v160 = v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000DA5A0();
  __chkstk_darwin(v12 - 8);
  v137 = v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1000DA5C0();
  v154 = *(v156 - 8);
  __chkstk_darwin(v156);
  v153 = v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005471C(0, &qword_100116EE8, &type metadata accessor for AxisTick, &protocol witness table for AxisTick);
  v155 = v15;
  v157 = *(v15 - 8);
  __chkstk_darwin(v15);
  v175 = v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v174 = v128 - v18;
  v19 = sub_1000DA4E0();
  __chkstk_darwin(v19 - 8);
  v132 = v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000DA520();
  __chkstk_darwin(v21 - 8);
  v147 = v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057714(0, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
  v130 = v23;
  v134 = *(v23 - 8);
  __chkstk_darwin(v23);
  v129 = v128 - v24;
  sub_1000545E8(0);
  v150 = v25;
  v149 = *(v25 - 8);
  __chkstk_darwin(v25);
  v148 = v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000544EC(0);
  v152 = v27;
  v151 = *(v27 - 8);
  __chkstk_darwin(v27);
  v173 = v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v172 = v128 - v30;
  v146 = sub_1000D8FB0();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v142 = v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1000D8FC0();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000D8EC0();
  __chkstk_darwin(v33 - 8);
  v140 = v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000D91C0();
  __chkstk_darwin(v35 - 8);
  v139 = v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1000D92D0();
  v135 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000D9280();
  __chkstk_darwin(v38 - 8);
  v128[1] = v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057D8C(0, &qword_100116FC8, &type metadata accessor for Date.FormatStyle.TimeStyle, &type metadata accessor for Optional);
  __chkstk_darwin(v40 - 8);
  v128[0] = v128 - v41;
  sub_100057D8C(0, &qword_100116FD0, &type metadata accessor for Date.FormatStyle.DateStyle, &type metadata accessor for Optional);
  __chkstk_darwin(v42 - 8);
  v44 = v128 - v43;
  v171 = sub_1000D8FD0();
  v131 = *(v171 - 8);
  __chkstk_darwin(v171);
  v133 = v128 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v170 = v128 - v47;
  sub_100054420(0);
  __chkstk_darwin(v48 - 8);
  v164 = v128 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v163 = v128 - v51;
  v52 = sub_1000DA390();
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = v128 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005471C(0, &qword_100116EB0, &type metadata accessor for AxisGridLine, &protocol witness table for AxisGridLine);
  v57 = v56;
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v60 = v128 - v59;
  sub_1000543A4(0);
  __chkstk_darwin(v61 - 8);
  v161 = v128 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v177 = v128 - v64;
  v162 = a1;
  v65 = sub_1000DA650();
  v66 = a2 / 2;
  if (a2 / 2 == -1)
  {
    goto LABEL_6;
  }

  if (v66)
  {
    v65 %= v66;
  }

  if (!v65)
  {
LABEL_6:
    v67 = type metadata accessor for SparklineView(0);
    v68 = v176;
    v69 = v176 + *(v67 + 56);
    v71 = *(v69 + 16);
    v70 = *(v69 + 24);
    v72 = *(v69 + 32);
    v183 = *v69;
    v184 = v71;
    v185 = v70;
    v186 = v72;

    sub_1000DA380();
    *&v179 = *(v68 + *(v67 + 60));
    sub_1000DA570();
    (*(v53 + 8))(v55, v52);
    v73 = v177;
    (*(v58 + 32))(v177, v60, v57);
    (*(v58 + 56))(v73, 0, 1, v57);
  }

  else
  {
    (*(v58 + 56))(v177, 1, 1, v57);
  }

  v74 = sub_1000DA650();
  if (a2 == -1)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    v74 %= a2;
  }

  if (!v74)
  {
LABEL_12:
    v77 = sub_1000D8F60();
    (*(*(v77 - 8) + 56))(v44, 1, 1, v77);
    v78 = sub_1000D8F50();
    (*(*(v78 - 8) + 56))(v128[0], 1, 1, v78);
    sub_1000D9250();
    v79 = *(type metadata accessor for PreparedSparkline(0) + 24);
    v80 = *(v135 + 16);
    v81 = v176;
    v82 = v136;
    v83 = v138;
    v80(v136, v176 + v79, v138);
    sub_1000D9260();
    v80(v82, v81 + v79, v83);
    sub_1000D9140();
    sub_1000D8EB0();
    v84 = v133;
    sub_1000D8F70();
    v85 = v142;
    sub_1000D8FA0();
    v86 = v141;
    sub_1000D8F90();
    (*(v145 + 8))(v85, v146);
    v87 = v170;
    sub_1000D8F80();
    (*(v143 + 8))(v86, v144);
    v88 = v131;
    v89 = *(v131 + 8);
    v146 = v131 + 8;
    v162 = v89;
    v90 = v171;
    v89(v84, v171);
    (*(v88 + 16))(v84, v87, v90);
    sub_1000DA510();
    sub_1000DA4D0();
    sub_1000581F8(&qword_100116FD8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    v91 = v129;
    sub_1000DA440();
    v92 = type metadata accessor for SparklineView(0);
    v93 = sub_100054698();
    v94 = v148;
    v95 = v130;
    sub_1000DA580();
    (*(v134 + 8))(v91, v95);
    v178 = *(v81 + v92[13]);
    *&v179 = v95;
    *(&v179 + 1) = v93;
    swift_getOpaqueTypeConformance2();
    v96 = v154;
    v97 = v172;
    v98 = v150;
    sub_1000DA570();
    (*(v149 + 8))(v94, v98);
    sub_1000DA590();
    v99 = v81 + v92[14];
    v101 = *(v99 + 16);
    v100 = *(v99 + 24);
    v102 = *(v99 + 32);
    v179 = *v99;
    v180 = v101;
    v181 = v100;
    v182 = v102;

    v103 = v153;
    sub_1000DA5B0();
    v178 = *(v81 + v92[15]);
    v104 = v174;
    v105 = v156;
    sub_1000DA570();
    (*(v96 + 8))(v103, v105);
    v106 = v151;
    v107 = *(v151 + 16);
    v108 = v173;
    v109 = v152;
    v107(v173, v97, v152);
    v110 = v157;
    v111 = *(v157 + 16);
    v112 = v155;
    v111(v175, v104, v155);
    v113 = v158;
    v107(v158, v108, v109);
    v114 = v159;
    v115 = *(v159 + 48);
    v116 = v175;
    v111(&v113[v115], v175, v112);
    v117 = v160;
    (*(v106 + 32))(v160, v113, v109);
    (*(v110 + 32))(v117 + *(v114 + 48), &v113[v115], v112);
    v118 = *(v110 + 8);
    v118(v174, v112);
    v119 = *(v106 + 8);
    v119(v172, v109);
    v162(v170, v171);
    v118(v116, v112);
    v119(v173, v109);
    v76 = v163;
    sub_100057548(v117, v163, sub_100054454);
    v75 = 0;
  }

  else
  {
    v75 = 1;
    v76 = v163;
  }

  (*(v165 + 56))(v76, v75, 1, v166);
  v120 = v177;
  v121 = v161;
  sub_1000574E0(v177, v161, sub_1000543A4);
  v122 = v164;
  sub_1000574E0(v76, v164, sub_100054420);
  sub_100054880();
  v123 = v167;
  sub_1000574E0(v121, v167, sub_1000543A4);
  sub_100054E7C(&qword_100116F00, sub_100054420, sub_10005493C, &protocol conformance descriptor for <A> A?);
  v124 = v168;
  v125 = *(v168 + 48);
  sub_1000574E0(v122, v123 + v125, sub_100054420);
  v126 = v169;
  sub_100057548(v123, v169, sub_1000543A4);
  sub_100057548(v123 + v125, v126 + *(v124 + 48), sub_100054420);
  sub_100057768(v76, sub_100054420);
  sub_100057768(v120, sub_1000543A4);
  sub_100057768(v122, sub_100054420);
  return sub_100057768(v121, sub_1000543A4);
}

uint64_t sub_1000508CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1000DA400();
  __chkstk_darwin(v3 - 8);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SparklineView(0);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v7 = sub_1000DA430();
  __chkstk_darwin(v7 - 8);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000DA480();
  __chkstk_darwin(v9 - 8);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100054D68(0);
  v44 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000DA980();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  sub_10004CF18((&v38 - v19));
  sub_1000DA970();
  sub_1000581F8(&qword_100115C40, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  v21 = sub_1000DBED0();
  v22 = *(v15 + 8);
  v22(v17, v14);
  v22(v20, v14);
  if ((v21 & 1) != 0 || !*(*a1 + 16))
  {
    v36 = 1;
    v34 = v44;
    v35 = v45;
  }

  else
  {
    sub_1000DA470();
    v46 = 0;
    sub_100056D08();
    sub_1000DA420();
    sub_100057AC8(a1, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SparklineView);
    v23 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v24 = swift_allocObject();
    sub_100057C94(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for SparklineView);
    sub_1000DA3F0();
    sub_1000544EC(0);
    sub_1000545E8(255);
    v26 = v25;
    sub_100057714(255, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
    v28 = v27;
    v29 = sub_100054698();
    v46 = v28;
    v47 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v26;
    v47 = &type metadata for Color;
    v48 = OpaqueTypeConformance2;
    v49 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v31 = v40;
    sub_1000DA630();
    v33 = v44;
    v32 = v45;
    (*(v12 + 32))(v45, v31, v44);
    v34 = v33;
    v35 = v32;
    v36 = 0;
  }

  return (*(v12 + 56))(v35, v36, 1, v34);
}

uint64_t sub_100050E04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18[0] = a2;
  v3 = sub_1000DA4E0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000DA520();
  __chkstk_darwin(v4 - 8);
  sub_100057714(0, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  sub_1000545E8(0);
  v11 = v10;
  v12 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = xmmword_1000DFDC0;
  v23 = 0xA300000000000000;
  sub_1000DA510();
  sub_1000DA4D0();
  sub_10005706C();
  sub_1000DA440();
  v15 = type metadata accessor for SparklineView(0);
  v16 = sub_100054698();
  sub_1000DA580();
  (*(v7 + 8))(v9, v6);
  v18[1] = *(a1 + *(v15 + 52));
  v19 = v6;
  v20 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1000DA570();
  return (*(v12 + 8))(v14, v11);
}

void sub_100051148(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1000DAF10();
  type metadata accessor for SparklineView(0);
  sub_1000DA690();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1000DA490();
  (*(*(v14 - 8) + 16))(a3, a1, v14);
  sub_1000551DC(0);
  v16 = a3 + *(v15 + 36);
  *v16 = v5;
  *(v16 + 8) = v7;
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  *(v16 + 40) = 0;
}

uint64_t sub_100051218(uint64_t a1)
{
  v2 = sub_1000DA910();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1000DAA90();
}

uint64_t sub_1000512E0()
{
  v1 = v0;
  v2 = sub_1000DA980();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  type metadata accessor for SparklineView(0);
  sub_10004CF18(v8);
  sub_1000DA970();
  sub_1000581F8(&qword_100115C40, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  v9 = sub_1000DBED0();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if ((v9 & 1) != 0 || !*(*v1 + 16))
  {
    if (qword_1001140C8 != -1)
    {
      swift_once();
    }

    v13 = qword_100116C38;
    v14 = unk_100116C40;
    sub_100006C7C(qword_100116C20, qword_100116C38);
    (*(*(v14 + 16) + 440))(v13);
  }

  else if (*(v1 + *(type metadata accessor for PreparedSparkline(0) + 36)))
  {
    if (qword_1001140C8 != -1)
    {
      swift_once();
    }

    v11 = qword_100116C38;
    v12 = unk_100116C40;
    sub_100006C7C(qword_100116C20, qword_100116C38);
    (*(v12 + 64))(v11, v12);
  }

  else
  {
    if (qword_1001140C8 != -1)
    {
      swift_once();
    }

    v16 = qword_100116C38;
    v17 = unk_100116C40;
    sub_100006C7C(qword_100116C20, qword_100116C38);
    (*(v17 + 56))(v16, v17);
  }

  return sub_1000DB390();
}

uint64_t sub_10005159C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100053670(0);
  v111 = v4;
  v110 = *(v4 - 8);
  __chkstk_darwin(v4);
  v108 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053594(0);
  v114 = v6;
  v113 = *(v6 - 8);
  __chkstk_darwin(v6);
  v109 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053480(0);
  v9 = v8;
  v116 = *(v8 - 8);
  __chkstk_darwin(v8);
  v115 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v112 = &v100 - v12;
  sub_10005763C(0);
  __chkstk_darwin(v13 - 8);
  v104 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v136 = &v100 - v16;
  __chkstk_darwin(v17);
  v122 = &v100 - v18;
  sub_1000576A4(0);
  __chkstk_darwin(v19 - 8);
  v135 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v121 = &v100 - v22;
  sub_100053350(0);
  v126 = v23;
  v124 = *(v23 - 8);
  __chkstk_darwin(v23);
  v123 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053288(0);
  v130 = v25;
  v128 = *(v25 - 8);
  __chkstk_darwin(v25);
  v125 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053174(0);
  v131 = v27;
  v129 = *(v27 - 8);
  __chkstk_darwin(v27);
  v127 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053030(0);
  v107 = v29;
  v106 = *(v29 - 8);
  __chkstk_darwin(v29);
  v105 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v137 = &v100 - v32;
  sub_100057714(0, &qword_100116FF8, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for PlottableValue);
  __chkstk_darwin(v33 - 8);
  v34 = sub_1000DA620();
  v101 = *(v34 - 8);
  __chkstk_darwin(v34);
  v36 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052FAC(0);
  v119 = v37;
  v103 = *(v37 - 8);
  __chkstk_darwin(v37);
  v39 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052EE4(0);
  v41 = v40;
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v102 = &v100 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052EB0(0);
  __chkstk_darwin(v44 - 8);
  v134 = &v100 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v138 = &v100 - v47;
  v133 = type metadata accessor for PreparedSparkline(0);
  v48 = (a1 + *(v133 + 32));
  v132 = *v48;
  v120 = *(v48 + 8);
  v118 = a2;
  v117 = v9;
  if (v120)
  {
    goto LABEL_2;
  }

  v49 = v132;
  result = type metadata accessor for SparklineView(0);
  v51 = result;
  v52 = (a1 + *(v133 + 28));
  v53 = *v52;
  if (*(a1 + *(result + 32)))
  {
    if (v53 > v49)
    {
      v53 = v49;
    }

    v54 = v52[1];
    if (v54 < v49)
    {
      v54 = v49;
    }

    if (v53 > v54)
    {
      goto LABEL_23;
    }

    if (v53 > v49)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v54 = v52[1];
    if (v53 > v49)
    {
      goto LABEL_2;
    }
  }

  if (v54 >= v49)
  {
    sub_1000DACD0();
    *&v147 = v132;
    sub_1000DA450();

    sub_1000DA610();
    v55 = a1 + *(v51 + 24);
    v56 = *(v55 + 1);
    v147 = *v55;
    v148 = v56;
    v149 = *(v55 + 4);
    sub_1000DA3E0();
    (*(v101 + 8))(v36, v34);
    sub_1000512E0();
    v57 = sub_1000DB350();

    v139 = v57;
    *&v144 = v34;
    *(&v144 + 1) = &protocol witness table for RuleMark;
    swift_getOpaqueTypeConformance2();
    v58 = v102;
    v59 = v119;
    sub_1000DA3B0();

    (*(v103 + 8))(v39, v59);
    v60 = v138;
    (*(v42 + 32))(v138, v58, v41);
    (*(v42 + 56))(v60, 0, 1, v41);
    goto LABEL_14;
  }

LABEL_2:
  (*(v42 + 56))(v138, 1, 1, v41);
LABEL_14:
  v119 = *a1;
  *&v144 = v119;

  sub_1000DACD0();
  swift_getKeyPath();
  sub_1000DA4B0();

  sub_1000DACD0();
  swift_getKeyPath();
  sub_1000DA4B0();

  sub_100053418(0);
  v62 = v61;
  v63 = sub_1000D9090();
  v64 = sub_1000581F8(&qword_100116DC8, sub_100053418, &protocol conformance descriptor for [A]);
  v65 = v123;
  v122 = v62;
  v121 = v63;
  v103 = v64;
  sub_1000DA600();
  v66 = type metadata accessor for SparklineView(0);
  v67 = a1 + v66[5];
  v146 = *(v67 + 4);
  v68 = *(v67 + 1);
  v144 = *v67;
  v145 = v68;
  v69 = sub_100054E7C(&qword_100116DD0, sub_100053350, sub_10005344C, &protocol conformance descriptor for <A> LinePlot<A>);
  v70 = v125;
  v71 = v126;
  sub_1000DA3E0();
  (*(v124 + 8))(v65, v71);
  v143 = sub_1000512E0();
  v139 = v71;
  v140 = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = v127;
  v74 = v130;
  sub_1000DA3B0();

  (*(v128 + 8))(v70, v74);
  v75 = a1 + v66[9];
  v76 = *v75;
  LODWORD(v70) = v75[8];
  v139 = v74;
  v140 = &type metadata for Color;
  v141 = OpaqueTypeConformance2;
  v142 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v130 = v76;
  LODWORD(v128) = v70;
  v77 = v131;
  sub_1000DA3D0();
  (*(v129 + 8))(v73, v77);
  v139 = v119;

  sub_1000DACD0();
  swift_getKeyPath();
  sub_1000DA4B0();

  sub_1000DACD0();
  swift_getKeyPath();
  sub_1000DA4B0();

  result = sub_1000DACD0();
  if (v120 & 1 | ((*(a1 + v66[8]) & 1) == 0))
  {
    v78 = *(a1 + *(v133 + 28));
LABEL_21:
    v143 = *&v78;
    type metadata accessor for PreparedSparkline.Entry(0);
    sub_1000DA4A0();

    v81 = v108;
    sub_1000DA560();
    sub_100024A74(0, &qword_100117000, &type metadata for Color);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1000E08A0;
    sub_1000512E0();
    v83 = sub_1000DB350();

    *(v82 + 32) = v83;
    sub_1000512E0();
    v84 = sub_1000DB350();

    *(v82 + 40) = v84;
    v139 = sub_1000DB5B0();
    v85 = sub_100054E7C(&qword_100116E00, sub_100053670, sub_100053738, &protocol conformance descriptor for <A> AreaPlot<A>);
    v86 = v109;
    v87 = v111;
    sub_1000DA3B0();

    (*(v110 + 8))(v81, v87);
    v139 = v87;
    v140 = &type metadata for Gradient;
    v141 = v85;
    v142 = &protocol witness table for Gradient;
    swift_getOpaqueTypeConformance2();
    v88 = v112;
    v89 = v114;
    sub_1000DA3D0();
    (*(v113 + 8))(v86, v89);
    v90 = v134;
    sub_1000574E0(v138, v134, sub_100052EB0);
    v139 = v90;
    v91 = v106;
    v92 = v105;
    v93 = v137;
    v94 = v107;
    (*(v106 + 16))(v105, v137, v107);
    v140 = v92;
    v95 = v116;
    v96 = v115;
    v97 = v117;
    (*(v116 + 16))(v115, v88, v117);
    v141 = v96;
    sub_1000528A8(&v139, v118);
    v98 = *(v95 + 8);
    v98(v88, v97);
    v99 = *(v91 + 8);
    v99(v93, v94);
    sub_100057768(v138, sub_100052EB0);
    v98(v96, v97);
    v99(v92, v94);
    return sub_100057768(v134, sub_100052EB0);
  }

  v79 = v132;
  v80 = (a1 + *(v133 + 28));
  v78 = *v80;
  if (*v80 > v132)
  {
    v78 = v132;
  }

  if (v80[1] >= v132)
  {
    v79 = v80[1];
  }

  if (v78 <= v79)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000528A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000577C8(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052EB0(0);
  sub_100053994();
  sub_1000574E0(*a1, v7, sub_100052EB0);
  sub_100053030(0);
  v9 = v8;
  sub_100053174(255);
  sub_100053288(255);
  sub_100053350(255);
  sub_100054E7C(&qword_100116DD0, sub_100053350, sub_10005344C, &protocol conformance descriptor for <A> LinePlot<A>);
  v10 = *(v5 + 56);
  v11 = *(v9 - 8);
  (*(v11 + 16))(&v7[v10], a1[1], v9);
  sub_100053480(0);
  v13 = v12;
  sub_100053594(255);
  sub_100053670(255);
  sub_100054E7C(&qword_100116E00, sub_100053670, sub_100053738, &protocol conformance descriptor for <A> AreaPlot<A>);
  v14 = *(v5 + 72);
  v15 = a1[2];
  v16 = *(v13 - 8);
  (*(v16 + 16))(&v7[v14], v15, v13);
  sub_100057548(v7, a2, sub_100052EB0);
  (*(v11 + 32))(a2 + *(v5 + 56), &v7[v10], v9);
  return (*(v16 + 32))(a2 + *(v5 + 72), &v7[v14], v13);
}

void sub_100052B84(uint64_t a1)
{
  if (!qword_100116D58)
  {
    sub_1000575B8(255, &qword_100116D60, sub_100052C2C, sub_100052D68, &type metadata accessor for BuilderConditional);
    sub_100053B68();
    v1 = sub_1000DA550();
    if (!v2)
    {
      atomic_store(v1, &qword_100116D58);
    }
  }
}

void sub_100052C2C(uint64_t a1)
{
  if (!qword_100116D68)
  {
    sub_100052D68(255);
    sub_100053A80(255);
    sub_1000581F8(&qword_100116E38, sub_100052D68, &protocol conformance descriptor for Plot<A>);
    sub_100053B34(255);
    sub_1000581F8(&qword_100116E30, sub_100053B34, &protocol conformance descriptor for PlaceholderContentView<A>);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116D68);
    }
  }
}

void sub_100052DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_100052E30(uint64_t a1)
{
  if (!qword_100116D78)
  {
    sub_100052EB0(255);
    sub_100053030(255);
    sub_100053480(255);
    v1 = sub_1000DA3A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100116D78);
    }
  }
}

void sub_100052EE4(uint64_t a1)
{
  if (!qword_100116D88)
  {
    sub_100052FAC(255);
    sub_1000DA620();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116D88);
    }
  }
}

void sub_100052FAC(uint64_t a1)
{
  if (!qword_100116D90)
  {
    sub_1000DA620();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116D90);
    }
  }
}

void sub_100053030(uint64_t a1)
{
  if (!qword_100116D98)
  {
    sub_100053174(255);
    sub_100053288(255);
    sub_100053350(255);
    sub_100054E7C(&qword_100116DD0, sub_100053350, sub_10005344C, &protocol conformance descriptor for <A> LinePlot<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116D98);
    }
  }
}

void sub_100053174(uint64_t a1)
{
  if (!qword_100116DA0)
  {
    sub_100053288(255);
    sub_100053350(255);
    sub_100054E7C(&qword_100116DD0, sub_100053350, sub_10005344C, &protocol conformance descriptor for <A> LinePlot<A>);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116DA0);
    }
  }
}

void sub_100053288(uint64_t a1)
{
  if (!qword_100116DA8)
  {
    sub_100053350(255);
    sub_100054E7C(&qword_100116DD0, sub_100053350, sub_10005344C, &protocol conformance descriptor for <A> LinePlot<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116DA8);
    }
  }
}

void sub_100053384(uint64_t a1)
{
  if (!qword_100116DB8)
  {
    sub_100053418(255);
    sub_1000581F8(&qword_100116DC8, sub_100053418, &protocol conformance descriptor for [A]);
    v1 = sub_1000DA500();
    if (!v2)
    {
      atomic_store(v1, &qword_100116DB8);
    }
  }
}

void sub_100053480(uint64_t a1)
{
  if (!qword_100116DE0)
  {
    sub_100053594(255);
    sub_100053670(255);
    sub_100054E7C(&qword_100116E00, sub_100053670, sub_100053738, &protocol conformance descriptor for <A> AreaPlot<A>);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116DE0);
    }
  }
}

void sub_100053594(uint64_t a1)
{
  if (!qword_100116DE8)
  {
    sub_100053670(255);
    sub_100054E7C(&qword_100116E00, sub_100053670, sub_100053738, &protocol conformance descriptor for <A> AreaPlot<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116DE8);
    }
  }
}

void sub_1000536A4(uint64_t a1)
{
  if (!qword_100116DF8)
  {
    sub_100053418(255);
    sub_1000581F8(&qword_100116DC8, sub_100053418, &protocol conformance descriptor for [A]);
    v1 = sub_1000DA4F0();
    if (!v2)
    {
      atomic_store(v1, &qword_100116DF8);
    }
  }
}

unint64_t sub_10005376C()
{
  result = qword_100116E10;
  if (!qword_100116E10)
  {
    sub_100052E30(255);
    sub_100053994();
    sub_100053174(255);
    sub_100053288(255);
    sub_100053350(255);
    sub_100054E7C(&qword_100116DD0, sub_100053350, sub_10005344C, &protocol conformance descriptor for <A> LinePlot<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100053594(255);
    sub_100053670(255);
    sub_100054E7C(&qword_100116E00, sub_100053670, sub_100053738, &protocol conformance descriptor for <A> AreaPlot<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116E10);
  }

  return result;
}

unint64_t sub_100053994()
{
  result = qword_100116E18;
  if (!qword_100116E18)
  {
    sub_100052EB0(255);
    sub_100052FAC(255);
    sub_1000DA620();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116E18);
  }

  return result;
}

void sub_100053A80(uint64_t a1)
{
  if (!qword_100116E20)
  {
    sub_100053B34(255);
    sub_1000581F8(&qword_100116E30, sub_100053B34, &protocol conformance descriptor for PlaceholderContentView<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116E20);
    }
  }
}

unint64_t sub_100053B68()
{
  result = qword_100116E40;
  if (!qword_100116E40)
  {
    sub_1000575B8(255, &qword_100116D60, sub_100052C2C, sub_100052D68, &type metadata accessor for BuilderConditional);
    sub_100052D68(255);
    sub_100053A80(255);
    sub_1000581F8(&qword_100116E38, sub_100052D68, &protocol conformance descriptor for Plot<A>);
    sub_100053B34(255);
    sub_1000581F8(&qword_100116E30, sub_100053B34, &protocol conformance descriptor for PlaceholderContentView<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116E40);
  }

  return result;
}

void sub_100053D0C(uint64_t a1)
{
  if (!qword_100116E48)
  {
    sub_100052B84(255);
    sub_100053DE0(255);
    sub_1000581F8(&qword_100116E60, sub_100052B84, &protocol conformance descriptor for Chart<A>);
    sub_100053E74();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116E48);
    }
  }
}

void sub_100053DE0(uint64_t a1)
{
  if (!qword_100116E50)
  {
    sub_1000D9090();
    sub_1000581F8(&qword_100116E58, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v1 = sub_1000DB8C0();
    if (!v2)
    {
      atomic_store(v1, &qword_100116E50);
    }
  }
}

unint64_t sub_100053E74()
{
  result = qword_100116E68;
  if (!qword_100116E68)
  {
    sub_100053DE0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116E68);
  }

  return result;
}

void sub_100053EE4(uint64_t a1)
{
  if (!qword_100116E70)
  {
    sub_100053D0C(255);
    sub_100057714(255, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    sub_100052B84(255);
    sub_100053DE0(255);
    sub_1000581F8(&qword_100116E60, sub_100052B84, &protocol conformance descriptor for Chart<A>);
    sub_100053E74();
    swift_getOpaqueTypeConformance2();
    sub_100054034();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116E70);
    }
  }
}

unint64_t sub_100054034()
{
  result = qword_100116E80;
  if (!qword_100116E80)
  {
    sub_100057714(255, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116E80);
  }

  return result;
}

void sub_1000540D0(uint64_t a1)
{
  if (!qword_100116E88)
  {
    sub_100053EE4(255);
    sub_1000542B4(255);
    sub_100053D0C(255);
    sub_100057714(255, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    sub_100052B84(255);
    sub_100053DE0(255);
    sub_1000581F8(&qword_100116E60, sub_100052B84, &protocol conformance descriptor for Chart<A>);
    sub_100053E74();
    swift_getOpaqueTypeConformance2();
    sub_100054034();
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F10, sub_1000542B4, sub_100054A94, &protocol conformance descriptor for <A> A?);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116E88);
    }
  }
}

void sub_100054330(uint64_t a1)
{
  if (!qword_100116EA0)
  {
    sub_1000543A4(255);
    sub_100054420(255);
    v1 = sub_1000DA3A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100116EA0);
    }
  }
}

void sub_1000543A4(uint64_t a1)
{
  if (!qword_100116EA8)
  {
    sub_10005471C(255, &qword_100116EB0, &type metadata accessor for AxisGridLine, &protocol witness table for AxisGridLine);
    v1 = sub_1000DBE80();
    if (!v2)
    {
      atomic_store(v1, &qword_100116EA8);
    }
  }
}

void sub_100054454(uint64_t a1)
{
  if (!qword_100116EC0)
  {
    sub_1000544EC(255);
    sub_10005471C(255, &qword_100116EE8, &type metadata accessor for AxisTick, &protocol witness table for AxisTick);
    v1 = sub_1000DA3A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100116EC0);
    }
  }
}

void sub_1000544EC(uint64_t a1)
{
  if (!qword_100116EC8)
  {
    sub_1000545E8(255);
    sub_100057714(255, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
    sub_100054698();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116EC8);
    }
  }
}

void sub_1000545E8(uint64_t a1)
{
  if (!qword_100116ED0)
  {
    sub_100057714(255, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
    sub_100054698();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116ED0);
    }
  }
}

unint64_t sub_100054698()
{
  result = qword_100116EE0;
  if (!qword_100116EE0)
  {
    sub_100057714(255, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116EE0);
  }

  return result;
}

void sub_10005471C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1000547B4()
{
  result = qword_100116EF0;
  if (!qword_100116EF0)
  {
    sub_100054330(255);
    sub_100054880();
    sub_100054E7C(&qword_100116F00, sub_100054420, sub_10005493C, &protocol conformance descriptor for <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116EF0);
  }

  return result;
}

unint64_t sub_100054880()
{
  result = qword_100116EF8;
  if (!qword_100116EF8)
  {
    sub_1000543A4(255);
    sub_1000DA390();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116EF8);
  }

  return result;
}

unint64_t sub_10005493C()
{
  result = qword_100116F08;
  if (!qword_100116F08)
  {
    sub_100054454(255);
    sub_1000545E8(255);
    sub_100057714(255, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
    sub_100054698();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000DA5C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116F08);
  }

  return result;
}

void sub_100054AC8(uint64_t a1)
{
  if (!qword_100116F20)
  {
    sub_1000540D0(255);
    sub_100054D34(255);
    sub_100053EE4(255);
    sub_1000542B4(255);
    sub_100053D0C(255);
    sub_100057714(255, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    sub_100052B84(255);
    sub_100053DE0(255);
    sub_1000581F8(&qword_100116E60, sub_100052B84, &protocol conformance descriptor for Chart<A>);
    sub_100053E74();
    swift_getOpaqueTypeConformance2();
    sub_100054034();
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F10, sub_1000542B4, sub_100054A94, &protocol conformance descriptor for <A> A?);
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F38, sub_100054D34, sub_100054EEC, &protocol conformance descriptor for <A> A?);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116F20);
    }
  }
}

void sub_100054D68(uint64_t a1)
{
  if (!qword_100116F30)
  {
    sub_1000544EC(255);
    sub_1000545E8(255);
    sub_100057714(255, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
    sub_100054698();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1000DA640();
    if (!v2)
    {
      atomic_store(v1, &qword_100116F30);
    }
  }
}

uint64_t sub_100054E7C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100054F20()
{
  if (!qword_100116F48)
  {
    sub_100054AC8(255);
    sub_1000551DC(255);
    sub_1000540D0(255);
    sub_100054D34(255);
    sub_100053EE4(255);
    sub_1000542B4(255);
    sub_100053D0C(255);
    sub_100057714(255, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    sub_100052B84(255);
    sub_100053DE0(255);
    sub_1000581F8(&qword_100116E60, sub_100052B84, &protocol conformance descriptor for Chart<A>);
    sub_100053E74();
    swift_getOpaqueTypeConformance2();
    sub_100054034();
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F10, sub_1000542B4, sub_100054A94, &protocol conformance descriptor for <A> A?);
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F38, sub_100054D34, sub_100054EEC, &protocol conformance descriptor for <A> A?);
    swift_getOpaqueTypeConformance2();
    sub_10005523C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116F48);
    }
  }
}

void sub_1000551DC(uint64_t a1)
{
  if (!qword_100116F50)
  {
    sub_1000DA490();
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100116F50);
    }
  }
}

unint64_t sub_10005523C()
{
  result = qword_100116F58;
  if (!qword_100116F58)
  {
    sub_1000551DC(255);
    sub_1000581F8(&qword_100116F60, &type metadata accessor for ChartPlotContent, &protocol conformance descriptor for ChartPlotContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116F58);
  }

  return result;
}

void sub_100055368(uint64_t a1)
{
  if (!qword_100116F78)
  {
    sub_1000552EC(255);
    sub_1000553EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116F78);
    }
  }
}

unint64_t sub_1000553EC()
{
  result = qword_100116F80;
  if (!qword_100116F80)
  {
    sub_1000552EC(255);
    sub_100054AC8(255);
    sub_1000551DC(255);
    sub_1000540D0(255);
    sub_100054D34(255);
    sub_100053EE4(255);
    sub_1000542B4(255);
    sub_100053D0C(255);
    sub_100057714(255, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    sub_100052B84(255);
    sub_100053DE0(255);
    sub_1000581F8(&qword_100116E60, sub_100052B84, &protocol conformance descriptor for Chart<A>);
    sub_100053E74();
    swift_getOpaqueTypeConformance2();
    sub_100054034();
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F10, sub_1000542B4, sub_100054A94, &protocol conformance descriptor for <A> A?);
    swift_getOpaqueTypeConformance2();
    sub_100054E7C(&qword_100116F38, sub_100054D34, sub_100054EEC, &protocol conformance descriptor for <A> A?);
    swift_getOpaqueTypeConformance2();
    sub_10005523C();
    swift_getOpaqueTypeConformance2();
    sub_1000581F8(&qword_100116F88, sub_100055334, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116F80);
  }

  return result;
}

void sub_100055700(uint64_t a1)
{
  if (!qword_100116F90)
  {
    sub_100055368(255);
    type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable(255);
    sub_1000552EC(255);
    sub_1000553EC();
    swift_getOpaqueTypeConformance2();
    sub_1000581F8(&qword_100116F98, type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable, &unk_1000E0A48);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116F90);
    }
  }
}

id sub_100055860()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setDateStyle:0];
  result = [v0 setTimeStyle:1];
  qword_100116C48 = v0;
  return result;
}

id sub_1000558C4()
{
  v0 = sub_1000D91C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  sub_1000D9170();
  isa = sub_1000D9130().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  result = [v4 setMaximumFractionDigits:4];
  qword_100116C50 = v4;
  return result;
}

void sub_1000559E4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6._countAndFlagsBits = 0x80000001000E8BB0;
  v7._countAndFlagsBits = 0x7250206B636F7453;
  v7._object = 0xEB00000000656369;
  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v2.super.isa = v1;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v3 = sub_1000D8E50(v7, v8, v2, v9, 0xD00000000000002BLL, v6);
  v5 = v4;

  qword_100116C58 = v3;
  unk_100116C60 = v5;
}

void sub_100055AB0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6._countAndFlagsBits = 0x80000001000E8B70;
  v7._countAndFlagsBits = 1701669204;
  v7._object = 0xE400000000000000;
  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v2.super.isa = v1;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v3 = sub_1000D8E50(v7, v8, v2, v9, 0xD000000000000039, v6);
  v5 = v4;

  qword_100116C68 = v3;
  unk_100116C70 = v5;
}

void sub_100055B6C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6._countAndFlagsBits = 0x80000001000E8B30;
  v7._countAndFlagsBits = 0x6563697250;
  v7._object = 0xE500000000000000;
  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v2.super.isa = v1;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v3 = sub_1000D8E50(v7, v8, v2, v9, 0xD000000000000039, v6);
  v5 = v4;

  qword_100116C78 = v3;
  unk_100116C80 = v5;
}

uint64_t sub_100055C2C()
{
  v1 = type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v14[0] = sub_100033ED8(0, &qword_1001170A0, AXChartDescriptor_ptr);
  if (qword_1001140E0 != -1)
  {
    swift_once();
  }

  sub_100033ED8(0, &qword_1001170A8, AXNumericDataAxisDescriptor_ptr);
  v4 = qword_1001140E8;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_100056018();
  sub_100057AC8(v0, v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_100057C94(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable);
  sub_1000DBE30();
  if (qword_1001140F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for PreparedSparkline(0);

  sub_1000DBE30();
  sub_100024A74(0, &qword_100116910, &type metadata for Swift.AnyObject + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000E04C0;
  __chkstk_darwin(v7);
  v14[-2] = v0;
  sub_100017F48(sub_100057D6C, &v14[-4], v8);
  v9 = objc_allocWithZone(AXDataSeriesDescriptor);
  v10 = sub_1000DB910();
  sub_100033ED8(0, &qword_1001170B0, AXDataPoint_ptr);
  isa = sub_1000DBB00().super.isa;

  v12 = [v9 initWithName:v10 isContinuous:1 dataPoints:{isa, v14[0]}];

  *(v7 + 32) = v12;
  return sub_1000DBDE0();
}

char *sub_100056018()
{
  v0 = sub_1000D9210();
  v60 = *(v0 - 8);
  v61 = v0;
  __chkstk_darwin(v0);
  v59 = v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1000D9220();
  v58 = *(v67 - 8);
  __chkstk_darwin(v67);
  v57 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000D91F0();
  v56 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023750(0);
  __chkstk_darwin(v4 - 8);
  v69 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1000D9090();
  v6 = *(v71 - 8);
  __chkstk_darwin(v71);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = v52 - v10;
  __chkstk_darwin(v11);
  v13 = v52 - v12;
  v68 = sub_1000D9280();
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000D8E40();
  v63 = *(v16 - 8);
  v64 = v16;
  __chkstk_darwin(v16);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() currentCalendar];
  sub_1000D9230();

  sub_100057D8C(0, &qword_1001170B8, &type metadata accessor for Calendar.Component, &type metadata accessor for _ContiguousArrayStorage);
  v20 = sub_1000D9270();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000DDD30;
  (*(v21 + 104))(v23 + v22, enum case for Calendar.Component.hour(_:), v20);
  sub_100057DF0(v23);
  swift_setDeallocating();
  (*(v21 + 8))(v23 + v22, v20);
  v24 = v71;
  swift_deallocClassInstance();
  sub_1000D9050();
  sub_1000D9200();

  v55 = v6;
  v26 = *(v6 + 8);
  v25 = v6 + 8;
  v53 = v13;
  v72 = v26;
  v26(v13, v24);
  v27 = *(v70 + 8);
  v70 += 8;
  v27(v15, v68);
  v28 = sub_1000D8E30();
  LOBYTE(v20) = v29;
  (*(v63 + 8))(v18, v64);
  if (v20)
  {
    return _swiftEmptyArrayStorage;
  }

  v52[1] = v25;
  v63 = v28;
  v54 = v15;
  sub_1000D9250();
  type metadata accessor for PreparedSparkline(0);
  v30 = v56;
  (*(v56 + 104))(v65, enum case for Calendar.MatchingPolicy.nextTime(_:), v66);
  v64 = v27;
  v31 = v57;
  v32 = v58;
  (*(v58 + 104))(v57, enum case for Calendar.RepeatedTimePolicy.first(_:), v67);
  v33 = v59;
  v34 = v60;
  v35 = v61;
  (*(v60 + 104))(v59, enum case for Calendar.SearchDirection.forward(_:), v61);
  sub_1000D9240();
  (*(v34 + 8))(v33, v35);
  (*(v32 + 8))(v31, v67);
  (*(v30 + 8))(v65, v66);
  v64(v54, v68);
  v36 = v55;
  if ((*(v55 + 48))(v69, 1, v24) == 1)
  {
    sub_100058104(v69, sub_100023750);
    return _swiftEmptyArrayStorage;
  }

  v38 = *(v36 + 32);
  v39 = v62;
  v38(v62, v69, v24);
  (*(v36 + 16))(v8, v39, v24);
  sub_100053DE0(0);
  sub_1000D8FF0();
  v37 = _swiftEmptyArrayStorage;
  if (v40 <= 0.0)
  {
    v43 = v53;
    do
    {
      sub_1000D8FF0();
      v46 = v45;
      sub_1000D8FF0();
      v48 = v46 / v47;
      if (v48 >= 0.0 && v48 <= 1.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_10007BAF0(0, *(v37 + 2) + 1, 1, v37);
        }

        v51 = *(v37 + 2);
        v50 = *(v37 + 3);
        if (v51 >= v50 >> 1)
        {
          v37 = sub_10007BAF0((v50 > 1), v51 + 1, 1, v37);
        }

        *(v37 + 2) = v51 + 1;
        *&v37[8 * v51 + 32] = v48;
        v24 = v71;
      }

      sub_1000DBC80();
      sub_1000D9000();
      v72(v8, v24);
      v38(v8, v43, v24);
      sub_1000D8FF0();
    }

    while (v44 <= 0.0);
  }

  v41 = v72;
  v72(v8, v24);
  v41(v62, v24);
  return v37;
}

uint64_t sub_1000568F0(uint64_t a1, double a2)
{
  v3 = sub_1000D9090();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  if (qword_1001140D0 != -1)
  {
    swift_once();
  }

  v10 = qword_100116C48;
  v11 = type metadata accessor for PreparedSparkline(0);
  v12 = v10;
  isa = sub_1000D92A0().super.isa;
  [v12 setTimeZone:isa];

  v14 = qword_100116C48;
  v15 = a1 + *(v11 + 20);
  sub_100053DE0(0);
  v16 = v14;
  sub_1000D8FF0();
  (*(v4 + 16))(v6, v15, v3);
  sub_1000D8FE0();
  v17 = sub_1000D9010().super.isa;
  (*(v4 + 8))(v9, v3);
  v18 = [v16 stringFromDate:v17];

  v19 = sub_1000DB950();
  return v19;
}

uint64_t sub_100056B18(double a1)
{
  if (qword_1001140D8 != -1)
  {
    swift_once();
  }

  v2 = qword_100116C50;
  v3 = objc_allocWithZone(NSNumber);
  v4 = v2;
  v5 = [v3 initWithDouble:a1];
  v6 = [v4 stringFromNumber:v5];

  if (v6)
  {
    v7 = sub_1000DB950();
  }

  else
  {
    sub_1000DBC70();
    return 0;
  }

  return v7;
}

Class sub_100056C2C@<X0>(uint64_t a1@<X0>, Class *a3@<X8>)
{
  sub_100033ED8(0, &qword_1001170B0, AXDataPoint_ptr);
  type metadata accessor for PreparedSparkline(0);
  sub_1000D8FF0();
  v6 = v5;
  sub_100053DE0(0);
  sub_1000D8FF0();
  v8 = v6 / v7;
  *&v12 = *(a1 + *(type metadata accessor for PreparedSparkline.Entry(0) + 20));
  v9._rawValue = _swiftEmptyArrayStorage;
  *(&v12 + 1) = 0;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  result = sub_1000DBD90(v8, v12, v9, v13, v10).super.isa;
  *a3 = result;
  return result;
}

unint64_t sub_100056D08()
{
  result = qword_100116FA0;
  if (!qword_100116FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116FA0);
  }

  return result;
}

uint64_t sub_100056D5C()
{
  v1 = type metadata accessor for SparklineView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for PreparedSparkline(0);
  v4 = v2 + *(v3 + 20);
  v5 = sub_1000D9090();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  sub_100053DE0(0);
  v6(v4 + *(v7 + 36), v5);
  v8 = *(v3 + 24);
  v9 = sub_1000D92D0();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);

  v10 = *(v1 + 44);
  sub_100057D8C(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000DA980();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100056FD8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SparklineView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10005706C()
{
  result = qword_100116FA8;
  if (!qword_100116FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116FA8);
  }

  return result;
}

uint64_t sub_1000570F4()
{
  v1 = type metadata accessor for SparklineView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for PreparedSparkline(0);
  v4 = v2 + *(v3 + 20);
  v5 = sub_1000D9090();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  sub_100053DE0(0);
  v6(v4 + *(v7 + 36), v5);
  v8 = *(v3 + 24);
  v9 = sub_1000D92D0();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);

  v10 = *(v1 + 44);
  sub_100057D8C(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000DA980();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100057358@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SparklineView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10004F430(a1, v6, v7, a2);
}

void sub_1000573DC(uint64_t a1)
{
  if (!qword_100116FB8)
  {
    sub_1000543A4(255);
    sub_100054420(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100116FB8);
    }
  }
}

void sub_10005744C(uint64_t a1)
{
  if (!qword_100116FC0)
  {
    sub_1000544EC(255);
    sub_10005471C(255, &qword_100116EE8, &type metadata accessor for AxisTick, &protocol witness table for AxisTick);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100116FC0);
    }
  }
}

uint64_t sub_1000574E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100057548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000575B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_10005763C(uint64_t a1)
{
  if (!qword_100116FE8)
  {
    type metadata accessor for PreparedSparkline.Entry(255);
    v1 = sub_1000DA4C0();
    if (!v2)
    {
      atomic_store(v1, &qword_100116FE8);
    }
  }
}

void sub_1000576A4(uint64_t a1)
{
  if (!qword_100116FF0)
  {
    type metadata accessor for PreparedSparkline.Entry(255);
    sub_1000D9090();
    v1 = sub_1000DA4C0();
    if (!v2)
    {
      atomic_store(v1, &qword_100116FF0);
    }
  }
}

void sub_100057714(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_100057768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000577C8(uint64_t a1)
{
  if (!qword_100117008)
  {
    sub_100052EB0(255);
    sub_100053030(255);
    sub_100053480(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100117008);
    }
  }
}

uint64_t sub_100057864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedSparkline(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000578E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedSparkline(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100057954(uint64_t a1)
{
  result = type metadata accessor for PreparedSparkline(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000579C0()
{
  sub_100055700(255);
  sub_100055368(255);
  type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable(255);
  sub_1000552EC(255);
  sub_1000553EC();
  swift_getOpaqueTypeConformance2();
  sub_1000581F8(&qword_100116F98, type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable, &unk_1000E0A48);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100057AC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100057B30()
{
  v1 = *(type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = type metadata accessor for PreparedSparkline(0);
  v4 = v2 + *(v3 + 20);
  v5 = sub_1000D9090();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  sub_100053DE0(0);
  v6(v4 + *(v7 + 36), v5);
  v8 = *(v3 + 24);
  v9 = sub_1000D92D0();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_100057C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100057CFC(double a1)
{
  v3 = *(type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000568F0(v4, a1);
}

void sub_100057D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_100057DF0(uint64_t a1)
{
  v2 = sub_1000D9270();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100058164(0);
    v9 = sub_1000DBF20();
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
      sub_1000581F8(&qword_1001170C8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_1000DB870();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1000581F8(&qword_1001170D0, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_1000DB8D0();
          v24 = *v15;
          (*v15)(v5, v2);
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

  return _swiftEmptySetSingleton;
}

uint64_t sub_100058104(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100058164(uint64_t a1)
{
  if (!qword_1001170C0)
  {
    sub_1000D9270();
    sub_1000581F8(&qword_1001170C8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
    v1 = sub_1000DBF30();
    if (!v2)
    {
      atomic_store(v1, &qword_1001170C0);
    }
  }
}

uint64_t sub_1000581F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005825C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000D9090();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for DetailContentViewModel(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      sub_100059ECC(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = sub_1000D9690();
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[8]);
          if (v17 >= 2)
          {
            return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100058438(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000D9090();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for DetailContentViewModel(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_100059ECC(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1000D9690();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2 + 1;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for DetailTimelineEntry(uint64_t a1)
{
  result = qword_100117130;
  if (!qword_100117130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100058638(uint64_t a1)
{
  sub_1000D9090();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailContentViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_100059ECC(319, &qword_100114B58, &type metadata accessor for WidgetQuote);
      if (v3 <= 0x3F)
      {
        sub_1000D9690();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100058718@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v5 = sub_1000DB720();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v30 = type metadata accessor for DetailContentViewModel(0);
  v12 = __chkstk_darwin(v30);
  v31 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = enum case for WidgetFamily.accessoryRectangular(_:);
  (*(v6 + 104))(v11, enum case for WidgetFamily.accessoryRectangular(_:), v5, v12);
  sub_10005A24C(&qword_100116638, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_1000DBAD0();
  sub_1000DBAD0();
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v34 == v33)
  {
    if (qword_100114128 != -1)
    {
      swift_once();
    }

    v16 = sub_100015294(v30, qword_100128EE0);
    v17 = v31;
    sub_10005A180(v16, v31, type metadata accessor for DetailContentViewModel);
  }

  else
  {
    (*(v6 + 16))(v8, a1, v5);
    v18 = (*(v6 + 88))(v8, v5);
    v20 = v18 == enum case for WidgetFamily.accessoryCircular(_:) || v18 == v14 || v18 == enum case for WidgetFamily.accessoryInline(_:);
    v21 = v20;
    if (!v20)
    {
      v15(v8, v5);
    }

    v17 = v31;
    sub_10006467C(v21, v31);
  }

  v22 = type metadata accessor for DetailTimelineEntry(0);
  sub_10005A180(v17, a3 + v22[5], type metadata accessor for DetailContentViewModel);
  v23 = v22[6];
  v24 = sub_1000D9450();
  (*(*(v24 - 8) + 56))(a3 + v23, 1, 1, v24);
  v25 = v22[7];
  v26 = enum case for PriceChangeDisplay.currency(_:);
  v27 = sub_1000D9690();
  (*(*(v27 - 8) + 104))(a3 + v25, v26, v27);
  sub_1000D9080();
  result = sub_100059FE8(v17, type metadata accessor for DetailContentViewModel);
  *(a3 + v22[8]) = 1;
  *(a3 + v22[9]) = v32 & 1;
  return result;
}

uint64_t sub_100058AF0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_1000D9480();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100059E4C(0);
  v6 = v5;
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100059ECC(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  sub_100059ECC(0, &qword_100117180, &type metadata accessor for ExchangeStatus);
  __chkstk_darwin(v12 - 8);
  v37 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  v35 = type metadata accessor for DetailTimelineEntry(0);
  v36 = v1;
  sub_100059F20(v1 + *(v35 + 24), v11, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v20 = sub_1000D9450();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v11, 1, v20) == 1)
  {
    sub_100059F8C(v11, &qword_100114B58, &type metadata accessor for WidgetQuote);
    v22 = 1;
  }

  else
  {
    sub_1000D93F0();
    (*(v21 + 8))(v11, v20);
    v22 = 0;
  }

  v23 = *(v3 + 56);
  v23(v19, v22, 1, v2);
  (*(v3 + 104))(v16, enum case for ExchangeStatus.open(_:), v2);
  v23(v16, 0, 1, v2);
  v24 = *(v6 + 48);
  sub_100059F20(v19, v8, &qword_100117180, &type metadata accessor for ExchangeStatus);
  sub_100059F20(v16, &v8[v24], &qword_100117180, &type metadata accessor for ExchangeStatus);
  v25 = *(v3 + 48);
  if (v25(v8, 1, v2) != 1)
  {
    v26 = v37;
    sub_100059F20(v8, v37, &qword_100117180, &type metadata accessor for ExchangeStatus);
    if (v25(&v8[v24], 1, v2) != 1)
    {
      v27 = &v8[v24];
      v28 = v34;
      (*(v3 + 32))(v34, v27, v2);
      sub_10005A24C(&qword_100117188, &type metadata accessor for ExchangeStatus, &protocol conformance descriptor for ExchangeStatus);
      sub_1000DB8D0();
      v29 = *(v3 + 8);
      v29(v28, v2);
      sub_100059F8C(v16, &qword_100117180, &type metadata accessor for ExchangeStatus);
      sub_100059F8C(v19, &qword_100117180, &type metadata accessor for ExchangeStatus);
      v29(v26, v2);
      sub_100059F8C(v8, &qword_100117180, &type metadata accessor for ExchangeStatus);
      goto LABEL_11;
    }

    sub_100059F8C(v16, &qword_100117180, &type metadata accessor for ExchangeStatus);
    sub_100059F8C(v19, &qword_100117180, &type metadata accessor for ExchangeStatus);
    (*(v3 + 8))(v26, v2);
    goto LABEL_9;
  }

  sub_100059F8C(v16, &qword_100117180, &type metadata accessor for ExchangeStatus);
  sub_100059F8C(v19, &qword_100117180, &type metadata accessor for ExchangeStatus);
  if (v25(&v8[v24], 1, v2) != 1)
  {
LABEL_9:
    sub_100059FE8(v8, sub_100059E4C);
    goto LABEL_11;
  }

  sub_100059F8C(v8, &qword_100117180, &type metadata accessor for ExchangeStatus);
LABEL_11:
  v30 = v38;
  sub_1000DB790();
  v31 = sub_1000DB7A0();
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

uint64_t sub_10005915C(void *a1)
{
  sub_10005A1E8(0, &qword_1001171C0, &type metadata accessor for KeyedEncodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  sub_100006C7C(a1, a1[3]);
  sub_10005A048();
  sub_1000DC480();
  v9[15] = 0;
  sub_1000D9090();
  sub_10005A24C(&qword_1001171C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1000DC2F0();
  if (!v1)
  {
    type metadata accessor for DetailTimelineEntry(0);
    v9[14] = 1;
    type metadata accessor for DetailContentViewModel(0);
    sub_10005A24C(&qword_1001171D0, type metadata accessor for DetailContentViewModel, &unk_1000E3FF8);
    sub_1000DC2F0();
    v9[13] = 2;
    sub_1000D9450();
    sub_10005A24C(&qword_1001171D8, &type metadata accessor for WidgetQuote, &protocol conformance descriptor for WidgetQuote);
    sub_1000DC2A0();
    v9[12] = 3;
    sub_1000D9690();
    sub_10005A24C(&qword_1001171E0, &type metadata accessor for PriceChangeDisplay, &protocol conformance descriptor for PriceChangeDisplay);
    sub_1000DC2F0();
    v9[11] = 4;
    sub_1000DC2C0();
    v9[10] = 5;
    sub_1000DC2C0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000594B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v39 = sub_1000D9690();
  v32 = *(v39 - 8);
  __chkstk_darwin(v39);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100059ECC(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for DetailContentViewModel(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000D9090();
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005A1E8(0, &qword_100117190, &type metadata accessor for KeyedDecodingContainer);
  v33 = v13;
  v30 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v37 = type metadata accessor for DetailTimelineEntry(0);
  __chkstk_darwin(v37);
  v35 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9080();
  v17 = a1[3];
  v38 = a1;
  sub_100006C7C(a1, v17);
  sub_10005A048();
  v31 = v15;
  v18 = v34;
  sub_1000DC470();
  if (v18)
  {
    v19 = v10;
    v20 = v36;
    v21 = v35;
    sub_100006D0C(v38);
    return (*(v20 + 8))(v21, v19);
  }

  else
  {
    v34 = v7;
    v45 = 0;
    sub_10005A24C(&qword_1001171A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000DC220();
    v23 = v35;
    (*(v36 + 40))(v35, v12, v10);
    v44 = 1;
    sub_10005A24C(&qword_1001171A8, type metadata accessor for DetailContentViewModel, &unk_1000E4020);
    sub_1000DC220();
    v24 = v37;
    sub_10005A09C(v9, v23 + *(v37 + 20));
    sub_1000D9450();
    v43 = 2;
    sub_10005A24C(&qword_1001171B0, &type metadata accessor for WidgetQuote, &protocol conformance descriptor for WidgetQuote);
    sub_1000DC1D0();
    sub_10005A100(v6, v23 + v24[6]);
    v42 = 3;
    sub_10005A24C(&qword_1001171B8, &type metadata accessor for PriceChangeDisplay, &protocol conformance descriptor for PriceChangeDisplay);
    v25 = v29;
    v26 = v39;
    sub_1000DC220();
    (*(v32 + 32))(v23 + v24[7], v25, v26);
    v41 = 4;
    v27 = v31;
    *(v23 + v24[8]) = sub_1000DC1F0() & 1;
    v40 = 5;
    LOBYTE(v25) = sub_1000DC1F0();
    (*(v30 + 8))(v27, v33);
    *(v23 + v24[9]) = v25 & 1;
    sub_10005A180(v23, v28, type metadata accessor for DetailTimelineEntry);
    sub_100006D0C(v38);
    return sub_100059FE8(v23, type metadata accessor for DetailTimelineEntry);
  }
}