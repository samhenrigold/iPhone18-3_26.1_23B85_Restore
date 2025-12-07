uint64_t sub_1004BBB70()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AE6A10, &qword_10082A160);
  __chkstk_darwin(v2 - 8);
  v4 = &v53[-v3];
  v5 = sub_10079F594();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_100796BB4();
  v9 = *(v68 - 8);
  __chkstk_darwin(v68);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100796BA4();
  v12 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_adornmentState;
  swift_beginAccess();
  v66 = *(v6 + 16);
  v66(v8, &v0[v12], v5);
  v13 = sub_10079F584();
  v67 = *(v6 + 8);
  v67(v8, v5);
  if (!v13)
  {
    goto LABEL_8;
  }

  v62 = v4;
  v64 = v13;
  v14 = v1;
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_8:
    sub_1004BD744(v11, v1);
    return (*(v9 + 8))(v11, v68);
  }

  v61 = v9;
  swift_getObjectType();
  v15 = sub_10079F9D4();
  swift_unknownObjectRelease();
  v63 = v14;
  v66(v8, &v14[v12], v5);
  v59 = v15;
  v16 = sub_10079F544();
  v67(v8, v5);
  v58 = sub_1004BB2C0(v16);
  v17 = sub_1004BB718(v16);
  v56 = 0;

  if (v17 >> 62)
  {
    v57 = sub_1007A38D4();
  }

  else
  {
    v57 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v11;

  v18 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_logger;
  v19 = v63;
  v65 = v63;
  v55 = v18;
  v20 = sub_10079ACC4();
  v21 = sub_1007A29A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    v23 = &v19[v12];
    v24 = v66;
    v66(v8, v23, v5);
    v54 = v21;
    v25 = sub_10079F554();
    v67(v8, v5);
    v26 = *(v25 + 16);
    v27 = v24;

    *(v22 + 4) = v26;
    v28 = v65;

    *(v22 + 12) = 2048;
    *(v22 + 14) = *(v28 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal);

    v19 = v63;
    _os_log_impl(&_mh_execute_header, v20, v54, "Processing %ld page(s) in ordinal: %ld", v22, 0x16u);
    v29 = v67;
  }

  else
  {

    v20 = v65;
    v27 = v66;
    v29 = v67;
  }

  v27(v8, &v19[v12], v5);
  v30 = v62;
  sub_10079F574();
  v29(v8, v5);
  v31 = sub_10079FD44();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_currentLocation;
  v33 = v65;
  swift_beginAccess();
  sub_1004BF690(v30, v33 + v32);
  swift_endAccess();
  v34 = v58;
  v69 = v58;
  sub_1001F1160(&qword_100AE6A18, &qword_10082AB18);
  sub_100005920(&unk_100AE6A20, &qword_100AE6A18, &qword_10082AB18, &protocol conformance descriptor for [A]);
  if (sub_1007A28A4())
  {
    v69 = _swiftEmptyArrayStorage;
    v35 = v65;

    v36 = sub_10079ACC4();
    v37 = sub_1007A2994();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134218240;
      if (v34 >> 62)
      {
        v39 = sub_1007A38D4();
      }

      else
      {
        v39 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v57;
      *(v38 + 4) = v39;

      *(v38 + 12) = 2048;
      *(v38 + 14) = *(v35 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal);

      _os_log_impl(&_mh_execute_header, v36, v37, "Adding %ld note glyphs in documentOrdinal:%ld", v38, 0x16u);
    }

    else
    {
      v40 = v57;

      v36 = v35;
    }

    v46 = v35;
    v47 = v64;
    sub_1004BF700(v34, v46, v47, &v69);

    v48 = v46;
    v49 = sub_10079ACC4();
    v50 = sub_1007A29A4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = *(v48 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal);

      _os_log_impl(&_mh_execute_header, v49, v50, "Updated accessibility annotations for ordinal: %ld", v51, 0xCu);
    }

    else
    {

      v49 = v48;
    }

    sub_1004BD874(v69, v40 != 0);

    v11 = v60;
    v44 = v60;
    v45 = v48;
  }

  else
  {
    v41 = v57 != 0;
    v42 = sub_1003BC194(v34);

    v43 = v65;
    sub_1004BD874(v42, v41);

    v11 = v60;
    v44 = v60;
    v45 = v43;
  }

  sub_1004BD744(v44, v45);
  v9 = v61;
  return (*(v9 + 8))(v11, v68);
}

uint64_t sub_1004BC368(_BYTE *a1, double a2)
{
  v3 = v2;
  v5 = sub_10079F594();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v16[-v10];
  v12 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_adornmentState;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v13(v11, v3 + v12, v5);
  swift_beginAccess();
  (*(v6 + 24))(v3 + v12, a1, v5);
  swift_endAccess();
  v13(v8, v3 + v12, v5);
  sub_1004BF820(&qword_100AF71D0, &type metadata accessor for BookContentAdornmentState, &protocol conformance descriptor for BookContentAdornmentState);
  LOBYTE(v12) = sub_1007A2124();
  v14 = *(v6 + 8);
  v14(v8, v5);
  if ((v12 & 1) == 0)
  {
    sub_1004BBB70();
  }

  v14(a1, v5);
  return (v14)(v11, v5);
}

void sub_1004BC578(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1004BBB70();
  }
}

void sub_1004BC5CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1004BC620();
  }
}

double sub_1004BC620()
{
  v1 = v0;
  v2 = sub_1007A1A24();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079F594();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F9D4();
    swift_unknownObjectRelease();
    v11 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_adornmentState;
    swift_beginAccess();
    (*(v7 + 16))(v9, v1 + v11, v6);
    v12 = sub_10079F544();
    (*(v7 + 8))(v9, v6);
    v13 = sub_1004BB718(v12);

    if (v13 >> 62)
    {
      v14 = sub_1007A38D4();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      *v5 = v14 != 0;
      (*(v3 + 104))(v5, enum case for ContentLoadingAccessibilityKeys.bookmarks(_:), v2);
      sub_10079F854();
      swift_unknownObjectRelease();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1004BC8F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007A1A24();
  v21 = *(v3 - 8);
  v22 = v3;
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BookReaderChromeState(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1001F1160(&unk_100AE6AA0, &unk_10082AB70);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  swift_beginAccess();
  sub_1001F1160(&qword_100AE3CD0, &qword_1008261E8);
  sub_10079B974();
  swift_endAccess();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  sub_100005920(&unk_100AE6AB0, &unk_100AE6AA0, &unk_10082AB70, &protocol conformance descriptor for Published<A>.Publisher);

  sub_10079BB04();

  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v9);

  v16 = *(v9 + *(v7 + 64));
  sub_100437D94(v9);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    *v5 = v16;
    v19 = v21;
    v18 = v22;
    (*(v21 + 104))(v5, enum case for ContentLoadingAccessibilityKeys.hasVisibleControls(_:), v22);
    sub_10079F854();
    swift_unknownObjectRelease();
    return (*(v19 + 8))(v5, v18);
  }

  return result;
}

void sub_1004BCCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1007A1A24();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BookReaderChromeState(0);
  __chkstk_darwin(v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v9);

    v12 = *(v9 + *(v7 + 56));
    sub_100437D94(v9);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      *v6 = v12;
      (*(v4 + 104))(v6, enum case for ContentLoadingAccessibilityKeys.hasVisibleControls(_:), v3);
      sub_10079F854();

      swift_unknownObjectRelease();
      (*(v4 + 8))(v6, v3);
    }

    else
    {
    }
  }
}

id sub_1004BCED4()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_logger, v1, v3);
  v6 = v0;
  v7 = sub_10079ACC4();
  v8 = sub_1007A29A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v6 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal);

    _os_log_impl(&_mh_execute_header, v7, v8, "Dealloc for ordinal: %ld", v9, 0xCu);
  }

  else
  {

    v7 = v6;
  }

  (*(v2 + 8))(v5, v1);
  v10 = type metadata accessor for BookReaderAccessoryAccessibilityController(0);
  v12.receiver = v6;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t type metadata accessor for BookReaderAccessoryAccessibilityController(uint64_t a1)
{
  result = qword_100AE69E0;
  if (!qword_100AE69E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004BD2AC(uint64_t a1)
{
  sub_10079F594();
  if (v1 <= 0x3F)
  {
    sub_10079ACE4();
    if (v2 <= 0x3F)
    {
      sub_1004BD460(319, &unk_100AE69F0, &type metadata accessor for PageLocation);
      if (v3 <= 0x3F)
      {
        sub_1004BD460(319, &qword_100AF1E60, &type metadata accessor for BookThemeEntity);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1004BD460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007A3454();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1004BD4B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_adornmentState;
  swift_beginAccess();
  v4 = sub_10079F594();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void (*sub_1004BD540(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = sub_10079F594();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_adornmentState;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_1004BD698;
}

void sub_1004BD698(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v5 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    v8 = (*(v3 + 64))(*(v3 + 48), *(v3 + 56), v6, a3);
    sub_1004BC368(v5, v8);
    (*(v7 + 8))(v4, v6);
  }

  else
  {
    sub_1004BC368(*(v3 + 56), a3);
  }

  free(v4);
  free(v5);

  free(v3);
}

void sub_1004BD744(uint64_t a1, void *a2)
{
  sub_100796B34();
  v4 = v3;
  v5 = a2;
  oslog = sub_10079ACC4();
  v6 = sub_1007A29A4();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = *(v5 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal);

    *(v7 + 12) = 2048;
    *(v7 + 14) = round(v4 * -1000000.0) / 1000.0;
    _os_log_impl(&_mh_execute_header, oslog, v6, "#accessoryperf updateAccessibilityState for ordinal %ld took %fms", v7, 0x16u);

    v8 = oslog;
  }

  else
  {

    v8 = v5;
  }
}

uint64_t sub_1004BD874(uint64_t a1, int a2)
{
  v3 = v2;
  v160 = a2;
  v163 = a1;
  v4 = sub_10079F514();
  v158 = *(v4 - 8);
  __chkstk_darwin(v4);
  v145 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1001F1160(&qword_100AE6A68, &qword_10082AB48);
  __chkstk_darwin(v156);
  v159 = &v132 - v6;
  v7 = sub_1001F1160(&qword_100AE6A70, &qword_10082AB50);
  __chkstk_darwin(v7 - 8);
  v148 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v167 = &v132 - v10;
  __chkstk_darwin(v11);
  v157 = &v132 - v12;
  v13 = sub_1007A0EB4();
  v166 = *(v13 - 8);
  __chkstk_darwin(v13);
  v144 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1001F1160(&qword_100AE6A78, &qword_10082AB58);
  __chkstk_darwin(v154);
  v168 = &v132 - v15;
  v16 = sub_1001F1160(&unk_100AE6A80, &unk_10082AB60);
  __chkstk_darwin(v16 - 8);
  v147 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v164 = &v132 - v19;
  __chkstk_darwin(v20);
  v165 = &v132 - v21;
  v22 = sub_1001F1160(&unk_100AEB380, &qword_100815DD0);
  __chkstk_darwin(v22 - 8);
  v24 = &v132 - v23;
  v25 = sub_1007A0F74();
  v161 = *(v25 - 8);
  v162 = v25;
  __chkstk_darwin(v25);
  v146 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1007A1A24();
  v27 = *(v172 - 8);
  __chkstk_darwin(v172);
  v29 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v155 = (&v132 - v31);
  __chkstk_darwin(v32);
  v171 = (&v132 - v33);
  v34 = sub_1001F1160(&qword_100AE6A10, &qword_10082A160);
  __chkstk_darwin(v34 - 8);
  v143 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v142 = &v132 - v37;
  __chkstk_darwin(v38);
  v40 = &v132 - v39;
  v41 = sub_10079FD44();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v170 = &v132 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v3 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_bookContentAccessoryAccessibilityHandler;
  result = swift_unknownObjectWeakLoadStrong();
  v173 = result;
  if (!result)
  {
    return result;
  }

  v140 = v29;
  v141 = v4;
  v46 = *(v44 + 8);
  v47 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_currentLocation;
  swift_beginAccess();
  sub_1000077D8(v3 + v47, v40, &qword_100AE6A10, &qword_10082A160);
  v48 = *(v42 + 48);
  if (v48(v40, 1, v41) == 1)
  {
    swift_unknownObjectRelease();
    return sub_100007840(v40, &qword_100AE6A10, &qword_10082A160);
  }

  v133 = v48;
  v134 = v24;
  v135 = v13;
  v136 = v42;
  v49 = *(v42 + 32);
  v137 = v41;
  v49(v170, v40, v41);
  ObjectType = swift_getObjectType();
  v51 = *(v3 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal);
  v53 = v171;
  v52 = v172;
  *v171 = v163;
  v54 = *(v27 + 104);
  v151 = v27 + 104;
  v150 = v54;
  v54(v53, enum case for ContentLoadingAccessibilityKeys.annotations(_:), v52);

  v163 = v51;
  v152 = ObjectType;
  v169 = v46;
  sub_10079F854();
  v149 = *(v27 + 8);
  v153 = v27 + 8;
  v149(v53, v52);
  v55 = v3 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_paginatingService;
  Strong = swift_unknownObjectWeakLoadStrong();
  v139 = v55;
  if (!Strong || (swift_getObjectType(), v52 = v172, v57 = sub_10079F9D4(), swift_unknownObjectRelease(), !v57))
  {
    v63 = *(v161 + 56);
    LODWORD(v161) = 1;
    v58 = v134;
    v63(v134, 1, 1, v162);
    v57 = 0;
    v62 = v168;
    goto LABEL_9;
  }

  v58 = v134;
  sub_10079F3D4();

  v60 = v161;
  v59 = v162;
  v61 = (*(v161 + 48))(v58, 1, v162);
  v62 = v168;
  if (v61 == 1)
  {
    LODWORD(v161) = 0;
LABEL_9:
    v138 = v57;
    sub_100007840(v58, &unk_100AEB380, &qword_100815DD0);
    v64 = v141;
LABEL_10:
    v65 = v165;
    v66 = v171;
    *v171 = 0;
    v150(v66, enum case for ContentLoadingAccessibilityKeys.pageSpread(_:), v52);
    sub_10079F854();
    v149(v66, v52);
    v67 = v159;
    goto LABEL_11;
  }

  v117 = v146;
  (*(v60 + 32))(v146, v58, v59);
  v118 = *(sub_1007A0F54() + 16);

  v138 = v57;
  if (v118 < 2)
  {
    (*(v60 + 8))(v117, v59);
    LODWORD(v161) = 0;
    v64 = v141;
    goto LABEL_10;
  }

  v119 = v142;
  sub_1007A0F14();
  v120 = v137;
  v121 = v133;
  v122 = v133(v119, 1, v137);
  if (v122 == 1)
  {
    sub_100007840(v119, &qword_100AE6A10, &qword_10082A160);
    v123 = 0;
  }

  else
  {
    v123 = sub_10079FD14();
    (*(v136 + 8))(v119, v120);
  }

  v124 = v143;
  sub_1007A0F04();
  v125 = v121(v124, 1, v120);
  v126 = v125 == 1;
  if (v125 == 1)
  {
    sub_100007840(v124, &qword_100AE6A10, &qword_10082A160);
    v127 = 0;
  }

  else
  {
    v127 = sub_10079FD14();
    (*(v136 + 8))(v124, v120);
  }

  v64 = v141;
  v128 = v150;
  if (v122 != 1)
  {
    v126 = v125 != 1 && v123 == v127;
  }

  v131 = v171;
  v130 = v172;
  *v171 = !v126;
  v128(v131, enum case for ContentLoadingAccessibilityKeys.pageSpread(_:), v130);
  sub_10079F854();
  v149(v131, v130);
  (*(v161 + 8))(v146, v162);
  LODWORD(v161) = 0;
  v67 = v159;
  v62 = v168;
  v65 = v165;
LABEL_11:
  v68 = swift_unknownObjectWeakLoadStrong();
  v69 = v164;
  if (v68 && (swift_getObjectType(), sub_10079F9D4(), swift_unknownObjectRelease(), v70 = sub_10079F434(), , v70))
  {
    sub_1007A1244();

    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  v72 = v166;
  v73 = *(v166 + 56);
  v74 = v135;
  v73(v65, v71, 1, v135);
  (*(v72 + 104))(v69, enum case for DocumentPaginationMode.paginated(_:), v74);
  v73(v69, 0, 1, v74);
  v75 = *(v154 + 48);
  sub_1000077D8(v65, v62, &unk_100AE6A80, &unk_10082AB60);
  v76 = v74;
  sub_1000077D8(v69, v62 + v75, &unk_100AE6A80, &unk_10082AB60);
  v77 = v72;
  v78 = v65;
  v79 = *(v77 + 48);
  if (v79(v62, 1, v76) == 1)
  {
    sub_100007840(v69, &unk_100AE6A80, &unk_10082AB60);
    v62 = v168;
    sub_100007840(v78, &unk_100AE6A80, &unk_10082AB60);
    v80 = v79(v62 + v75, 1, v76);
    v81 = v172;
    v82 = v167;
    if (v80 == 1)
    {
      sub_100007840(v62, &unk_100AE6A80, &unk_10082AB60);
      v83 = 1;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v84 = v147;
  sub_1000077D8(v62, v147, &unk_100AE6A80, &unk_10082AB60);
  if (v79(v62 + v75, 1, v76) == 1)
  {
    sub_100007840(v164, &unk_100AE6A80, &unk_10082AB60);
    sub_100007840(v165, &unk_100AE6A80, &unk_10082AB60);
    (*(v166 + 8))(v84, v76);
    v81 = v172;
    v82 = v167;
LABEL_20:
    sub_100007840(v62, &qword_100AE6A78, &qword_10082AB58);
    v83 = 0;
    goto LABEL_22;
  }

  v85 = v84;
  v86 = v166;
  v87 = v144;
  (*(v166 + 32))(v144, v62 + v75, v76);
  sub_1004BF820(&qword_100AE6A98, &type metadata accessor for DocumentPaginationMode, &protocol conformance descriptor for DocumentPaginationMode);
  v88 = v62;
  v89 = v76;
  v83 = sub_1007A2124();
  v90 = *(v86 + 8);
  v90(v87, v89);
  sub_100007840(v164, &unk_100AE6A80, &unk_10082AB60);
  sub_100007840(v165, &unk_100AE6A80, &unk_10082AB60);
  v90(v85, v89);
  sub_100007840(v88, &unk_100AE6A80, &unk_10082AB60);
  v81 = v172;
  v82 = v167;
LABEL_22:
  v91 = v157;
  v92 = v158;
  v93 = v83 & 1;
  v94 = v155;
  *v155 = v93;
  v150(v94, enum case for ContentLoadingAccessibilityKeys.isPaginated(_:), v81);
  sub_10079F854();
  v149(v94, v81);
  if (v161)
  {
    v95 = 1;
  }

  else
  {

    sub_10079F3B4();

    v95 = 0;
  }

  v96 = *(v92 + 56);
  v96(v91, v95, 1, v64);
  (*(v92 + 104))(v82, enum case for BookNavigationDirection.rightToLeft(_:), v64);
  v96(v82, 0, 1, v64);
  v97 = *(v156 + 48);
  sub_1000077D8(v91, v67, &qword_100AE6A70, &qword_10082AB50);
  sub_1000077D8(v82, v67 + v97, &qword_100AE6A70, &qword_10082AB50);
  v98 = v82;
  v99 = *(v92 + 48);
  if (v99(v67, 1, v64) != 1)
  {
    v103 = v148;
    sub_1000077D8(v67, v148, &qword_100AE6A70, &qword_10082AB50);
    if (v99(v67 + v97, 1, v64) != 1)
    {
      v104 = v67 + v97;
      v105 = v145;
      (*(v92 + 32))(v145, v104, v64);
      sub_1004BF820(&qword_100AE6A90, &type metadata accessor for BookNavigationDirection, &protocol conformance descriptor for BookNavigationDirection);
      v106 = v103;
      v102 = sub_1007A2124();
      v107 = *(v92 + 8);
      v107(v105, v64);
      sub_100007840(v167, &qword_100AE6A70, &qword_10082AB50);
      sub_100007840(v91, &qword_100AE6A70, &qword_10082AB50);
      v107(v106, v64);
      sub_100007840(v67, &qword_100AE6A70, &qword_10082AB50);
      v101 = v172;
      goto LABEL_32;
    }

    sub_100007840(v167, &qword_100AE6A70, &qword_10082AB50);
    sub_100007840(v91, &qword_100AE6A70, &qword_10082AB50);
    (*(v92 + 8))(v103, v64);
    v101 = v172;
    goto LABEL_30;
  }

  sub_100007840(v98, &qword_100AE6A70, &qword_10082AB50);
  sub_100007840(v91, &qword_100AE6A70, &qword_10082AB50);
  v100 = v99(v67 + v97, 1, v64);
  v101 = v172;
  if (v100 != 1)
  {
LABEL_30:
    sub_100007840(v67, &qword_100AE6A68, &qword_10082AB48);
    v102 = 0;
    goto LABEL_32;
  }

  sub_100007840(v67, &qword_100AE6A70, &qword_10082AB50);
  v102 = 1;
LABEL_32:
  v108 = v102 & 1;
  v109 = v140;
  *v140 = v108;
  v110 = v150;
  v150(v109, enum case for ContentLoadingAccessibilityKeys.isRTL(_:), v101);
  sub_10079F854();
  v111 = v149;
  v149(v109, v101);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F9D4();
    swift_unknownObjectRelease();
    v112 = sub_10079F434();

    if (v112)
    {
      v113 = sub_1007A1234();

      v114 = (v113 & 1) == 0;
      v115 = v171;
      *v171 = v114;
      v110(v115, enum case for ContentLoadingAccessibilityKeys.isTextHorizontal(_:), v101);
      sub_10079F854();
      v111(v115, v101);
    }
  }

  v116 = v171;
  *v171 = v160 & 1;
  v110(v116, enum case for ContentLoadingAccessibilityKeys.bookmarks(_:), v101);
  sub_10079F854();

  swift_unknownObjectRelease();
  v111(v116, v101);
  return (*(v136 + 8))(v170, v137);
}

void sub_1004BECE8(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v73 = a3;
  v6 = sub_1001F1160(&unk_100AD6170, &qword_10083DEE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  v80 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
  v71 = *(v80 - 8);
  __chkstk_darwin(v80);
  v72 = &v62 - v9;
  v10 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  *&v82 = &v62 - v12;
  v13 = sub_1007A1054();
  v15 = v14;
  v81 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_23:

    v57 = sub_10079ACC4();
    v58 = sub_1007A29B4();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v83 = v60;
      *v59 = 136315138;
      v61 = sub_1000070F4(v13, v15, &v83);

      *(v59 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v57, v58, "Missing annotation detail entity for paginated highlight: %s, to send to web process plugin", v59, 0xCu);
      sub_1000074E0(v60);
    }

    else
    {
    }

    return;
  }

  v79 = v8;
  v17 = Strong;
  swift_getObjectType();
  v18 = sub_1007A08A4();
  if (!v18)
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v67 = v18;
  v66 = v17;

  v19 = sub_1007A1064();
  v20 = *(v19 + 16);
  if (!v20)
  {

    v21 = _swiftEmptyArrayStorage;
    v39 = _swiftEmptyArrayStorage[2];
    if (v39)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  v65 = a4;
  v85 = _swiftEmptyArrayStorage;
  sub_1003BD760(0, v20, 0);
  v21 = v85;
  v77 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_contentLayoutController;
  v23 = *(v11 + 16);
  v22 = v11 + 16;
  v76 = v23;
  v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
  v64 = v19;
  v25 = v19 + v24;
  v74 = (v71 + 6);
  v75 = *(v22 + 56);
  v70 = (v71 + 1);
  v78 = v22;
  v26 = (v22 - 8);
  v71 += 7;
  v69 = v10;
  v68 = v26;
  do
  {
    v27 = v82;
    v76(v82, v25, v10);
    if (!swift_weakLoadStrong())
    {
      (*v26)(v27, v10);
      v28 = v79;
      (*v71)(v79, 1, 1, v80);
      goto LABEL_9;
    }

    v28 = v79;
    sub_10079F744();

    v29 = v80;
    if ((*v74)(v28, 1, v80) == 1)
    {
      (*v26)(v27, v10);
LABEL_9:
      sub_100007840(v28, &unk_100AD6170, &qword_10083DEE0);
      v30 = 0uLL;
      v31 = 1;
      v32 = 0uLL;
      goto LABEL_11;
    }

    v33 = v72;
    sub_10079FEE4();
    v34 = *v70;
    (*v70)(v28, v29);
    sub_10079FEB4();
    v35 = v33;
    v10 = v69;
    v34(v35, v29);
    v26 = v68;
    (*v68)(v82, v10);
    v31 = 0;
    v30 = v83;
    v32 = v84;
LABEL_11:
    v85 = v21;
    v37 = v21[2];
    v36 = v21[3];
    if (v37 >= v36 >> 1)
    {
      v63 = v30;
      v62 = v32;
      sub_1003BD760((v36 > 1), v37 + 1, 1);
      v32 = v62;
      v30 = v63;
      v21 = v85;
    }

    v21[2] = v37 + 1;
    v38 = &v21[5 * v37];
    *(v38 + 2) = v30;
    *(v38 + 3) = v32;
    *(v38 + 64) = v31;
    v25 += v75;
    --v20;
  }

  while (v20);

  a4 = v65;
  v39 = v21[2];
  if (!v39)
  {
LABEL_28:

LABEL_29:
    swift_unknownObjectRelease();

    return;
  }

LABEL_15:
  v40 = *(v21 + 64);
  v41 = &v21[5 * v39 + 4];
  v42 = *(v41 - 40);
  v43 = *(v41 - 32);
  v44 = *(v41 - 24);
  v45 = *(v41 - 16);
  v46 = *(v41 - 8);

  if (v40 & 1) != 0 || (v46)
  {
    goto LABEL_29;
  }

  sub_1001F1160(&unk_100AE6A40, &unk_10082AB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = 0x696F507472617473;
  *(inited + 40) = 0xEA0000000000746ELL;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v48 = swift_allocObject();
  v82 = xmmword_100811360;
  *(v48 + 16) = xmmword_100811360;
  *(v48 + 32) = sub_100797BE4();
  *(v48 + 40) = sub_100797BE4();
  *&v83 = v48;
  sub_1001F1160(&qword_100AE6A50, &qword_10082AB30);
  *(inited + 48) = sub_1007A3B04();
  *(inited + 56) = 0x746E696F50646E65;
  *(inited + 64) = 0xE800000000000000;
  v49 = swift_allocObject();
  *(v49 + 16) = v82;
  v86.origin.x = v42;
  v86.origin.y = v43;
  v86.size.width = v44;
  v86.size.height = v45;
  CGRectGetMaxX(v86);
  *(v49 + 32) = sub_100797BE4();
  v87.origin.x = v42;
  v87.origin.y = v43;
  v87.size.width = v44;
  v87.size.height = v45;
  CGRectGetMaxY(v87);
  *(v49 + 40) = sub_100797BE4();
  *&v83 = v49;
  *(inited + 72) = sub_1007A3B04();
  *(inited + 80) = 1954047348;
  *(inited + 88) = 0xE400000000000000;
  *&v83 = sub_1007A1A44();
  *(&v83 + 1) = v50;
  *(inited + 96) = sub_1007A3B04();
  v51 = sub_1001EF0BC(inited);
  swift_setDeallocating();
  sub_1001F1160(&qword_100AE6A58, &qword_10082AB38);
  swift_arrayDestroy();
  *(&v84 + 1) = sub_1001F1160(&qword_100AE6A60, &qword_10082AB40);
  *&v83 = v51;
  v52 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v52;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v52 = sub_10066A640(0, *(v52 + 2) + 1, 1, v52);
    *a4 = v52;
  }

  v55 = *(v52 + 2);
  v54 = *(v52 + 3);
  if (v55 >= v54 >> 1)
  {
    *a4 = sub_10066A640((v54 > 1), v55 + 1, 1, v52);
  }

  swift_unknownObjectRelease();

  v56 = *a4;
  *(v56 + 2) = v55 + 1;
  sub_1000076D4(&v83, &v56[32 * v55 + 32]);
}

uint64_t sub_1004BF690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE6A10, &qword_10082A160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1004BF700(unint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v8 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v9 = sub_1007A3784();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v13 = v9;
      sub_1004BECE8(&v13, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v9 = *(a1 + 8 * v8 + 32);

    v10 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1004BF820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004BF938@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  sub_10000E3E8(a1, a1[3]);
  v11 = a2(0);
  result = sub_100798CC4();
  if (result)
  {
    v13 = result;
    a6[3] = v11;
    result = sub_100013664(a3, 255, a4, a5);
    a6[4] = result;
    *a6 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004BFCB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000E3E8(a1, a1[3]);
  sub_1001F1160(&qword_100AE6C30, &qword_10082AD18);
  result = sub_100798CC4();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for MescalSigner();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_100013664(&qword_100AE6D00, 255, type metadata accessor for MescalSigner, &unk_100818C50);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004BFD84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10000E3E8(a1, a1[3]);
  sub_10000A7C4(0, &qword_100AE6C38, JSACookieStorage_ptr);
  result = sub_100798CC4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  sub_10000E3E8(a1, a1[3]);
  type metadata accessor for ExperimentIDsCookieParser();
  result = sub_100798CC4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  sub_10000E3E8(a1, a1[3]);
  type metadata accessor for ExperimentIDsHeaderValueFormatter();
  result = sub_100798CC4();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for CookieStorageExperimentIDsHeaderValueProvider();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v7;
    a2[3] = v8;
    result = sub_100013664(&qword_100AE6CF8, 255, type metadata accessor for CookieStorageExperimentIDsHeaderValueProvider, &unk_10080FEC0);
    a2[4] = result;
    *a2 = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1004BFEDC(uint64_t a1, uint64_t *a2)
{
  if (qword_100AD1410 != -1)
  {
    swift_once();
  }

  sub_100013664(&qword_100AE6CE8, a2, type metadata accessor for BooksPersonalizationAssembly, &unk_10082ABF0);
  return sub_100797A84();
}

uint64_t sub_1004BFFB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE6CF0, &qword_10082AD68);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_100799B34();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E3E8(a1, a1[3]);
  sub_100798CD4();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    v12 = *(v8 + 32);
    v12(v10, v6, v7);
    sub_10000E3E8(a1, a1[3]);
    v19 = sub_10079A1D4();
    sub_1001F1160(&qword_100AE6BE0, &qword_10082ACD8);
    sub_1007A22E4();
    sub_100798CB4();

    v13 = v20;
    if (v20)
    {
      v14 = v19;
      v15 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v15 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        (*(v8 + 8))(v10, v7);
        *a2 = v14;
        a2[1] = v13;
        v16 = &enum case for EnvironmentType.url(_:);
LABEL_9:
        v17 = *v16;
        v18 = sub_10079A094();
        return (*(*(v18 - 8) + 104))(a2, v17, v18);
      }
    }

    v12(a2, v10, v7);
    v16 = &enum case for EnvironmentType.environment(_:);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C025C(uint64_t a1, uint64_t *a2)
{
  if (qword_100AD1418 != -1)
  {
    swift_once();
  }

  sub_100013664(&qword_100AE6CE8, a2, type metadata accessor for BooksPersonalizationAssembly, &unk_10082ABF0);
  return sub_100797A84();
}

uint64_t sub_1004C0330(uint64_t a1, uint64_t *a2)
{
  if (qword_100AD1420 != -1)
  {
    swift_once();
  }

  sub_100013664(&qword_100AE6CE8, a2, type metadata accessor for BooksPersonalizationAssembly, &unk_10082ABF0);
  return sub_100797A84();
}

uint64_t sub_1004C0590@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_10000E3E8(a1, a1[3]);
  v7 = a2(0);
  result = sub_100798CC4();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1004C0614()
{
  v0 = [objc_opt_self() sharedProvider];

  return v0;
}

uint64_t sub_1004C067C()
{
  type metadata accessor for ExperimentIDsCookieParser();

  return swift_allocObject();
}

void *sub_1004C06B0(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  sub_1001F1160(&qword_100AE6C28, &unk_10082AD08);
  result = sub_100798CC4();
  if (result)
  {
    v3 = result;
    sub_10000E3E8(a1, a1[3]);
    sub_1001F1160(&qword_100AE6CB0, &qword_10082AD58);
    result = sub_100798CD4();
    if (v12[3])
    {
      v4 = type metadata accessor for GenreRecommendationManager();
      v5 = objc_allocWithZone(v4);
      v6 = [objc_opt_self() standardUserDefaults];
      v7 = sub_100546A84(v6);
      *&v5[OBJC_IVAR____TtC5Books26GenreRecommendationManager_accountsProvider] = v3;
      sub_100009864(v12, &v5[OBJC_IVAR____TtC5Books26GenreRecommendationManager_service]);
      *&v5[OBJC_IVAR____TtC5Books26GenreRecommendationManager_defaults] = v6;
      sub_1001F1160(&qword_100AE6CB8, &qword_10082AD60);
      v8 = swift_allocObject();
      *(v8 + 28) = 0;
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *&v5[OBJC_IVAR____TtC5Books26GenreRecommendationManager_stateLock] = v8;
      v11.receiver = v5;
      v11.super_class = v4;
      swift_unknownObjectRetain();
      v9 = v6;
      v10 = objc_msgSendSuper2(&v11, "init");
      [v3 addObserver:v10 accountTypes:3];

      swift_unknownObjectRelease();
      sub_1000074E0(v12);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C0870()
{
  type metadata accessor for ExperimentIDsHeaderValueFormatter();

  return swift_allocObject();
}

uint64_t sub_1004C08A4(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  sub_10000A7C4(0, &qword_100AE6C40, BUBag_ptr);
  result = sub_100798CC4();
  if (result)
  {
    v2 = result;
    type metadata accessor for PaidStorefrontAccessRequirement();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C0924(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  sub_10000A7C4(0, &qword_100AE6C40, BUBag_ptr);
  result = sub_100798CC4();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C09F8(void *a1, uint64_t (*a2)(void))
{
  sub_10000E3E8(a1, a1[3]);
  sub_1001F1160(&qword_100AE6C28, &unk_10082AD08);
  result = sub_100798CC4();
  if (result)
  {
    v5 = result;
    sub_10000E3E8(a1, a1[3]);
    type metadata accessor for AMSEngagementService();
    result = sub_100798CC4();
    if (result)
    {
      v6 = result;
      a2(0);
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
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

id sub_1004C0AC0()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C0AFC(void *a1)
{
  v2 = sub_1001F1160(&qword_100AE6CA8, &qword_10082AD50);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  sub_10000E3E8(a1, a1[3]);
  v5 = sub_100798FE4();
  sub_100798CD4();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10000E3E8(a1, a1[3]);
    sub_1001F1160(&unk_100AEC7D0, &qword_10082AD30);
    result = sub_100798CC4();
    if (result)
    {
      v8 = result;
      type metadata accessor for MediaAPIMetadataService(0);
      v9 = swift_allocObject();
      (*(v6 + 32))(v9 + OBJC_IVAR____TtC5Books23MediaAPIMetadataService_catalogService, v4, v5);
      *(v9 + OBJC_IVAR____TtC5Books23MediaAPIMetadataService_libraryManagerResolver) = v8;
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C0CDC(void *a1, uint64_t (*a2)(void), void *a3)
{
  v6 = sub_1001F1160(&qword_100AE6CA8, &qword_10082AD50);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_10000E3E8(a1, a1[3]);
  v9 = sub_100798FE4();
  sub_100798CD4();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a2(0);
    v12 = swift_allocObject();
    (*(v10 + 32))(v12 + *a3, v8, v9);
    return v12;
  }

  return result;
}

uint64_t sub_1004C0E34(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  type metadata accessor for MediaAPIMetadataService(0);
  result = sub_100798CC4();
  if (result)
  {
    sub_100013664(&qword_100AE6C98, 255, type metadata accessor for MediaAPIMetadataService, &unk_100836E68);
    sub_100013664(&qword_100AE6CA0, 255, type metadata accessor for MediaAPIMetadataService, &unk_100836E30);
    sub_10079A004();
    swift_allocObject();

    return sub_100799FF4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1004C0F4C()
{
  v0 = [objc_opt_self() defaultBag];

  return v0;
}

uint64_t sub_1004C0FB4(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  v1 = type metadata accessor for PersonalizationConfigurationService(0);
  result = sub_100798CC4();
  if (result)
  {
    v3 = result;
    v6 = v1;
    v7 = sub_100013664(&qword_100AE6C88, 255, type metadata accessor for PersonalizationConfigurationService, &unk_100820FA0);
    *&v5 = v3;
    type metadata accessor for MergedPersonalizationConfigurationService();
    v4 = swift_allocObject();
    sub_1000077C0(&v5, v4 + 16);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1004C1084(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  sub_10079E784();
  result = sub_100798CC4();
  if (result)
  {
    v2 = result;
    type metadata accessor for PersonalizationConfigurationService(0);
    swift_allocObject();
    v3 = sub_1003BB3C4(v2);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C1158()
{
  type metadata accessor for EditionStringFlatteningService();

  return swift_allocObject();
}

uint64_t sub_1004C11CC(uint64_t a1, SEL *a2, uint64_t (*a3)(void))
{
  v5 = [objc_opt_self() sharedManager];
  v6 = [v5 *a2];

  a3(0);
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

uint64_t sub_1004C1250(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  sub_1001F1160(&unk_100AE6C70, &qword_10082AD28);
  result = sub_100798CC4();
  if (result)
  {
    v2 = result;
    type metadata accessor for EngagementCollectorEventStore(0);
    v3 = swift_allocObject();
    v4 = OBJC_IVAR____TtC5Books29EngagementCollectorEventStore____lazy_storage___iso8601DateFormatter;
    v5 = sub_100796AD4();
    (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
    *(v3 + 16) = v2;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C136C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  sub_10000E3E8(a1, a1[3]);
  sub_1001F1160(a2, a3);
  result = sub_100798CC4();
  if (result)
  {
    v8 = result;
    a4(0);
    result = swift_allocObject();
    *(result + 16) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C13FC(uint64_t a1, void *a2)
{
  v4 = sub_10079A534();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E3E8(a2, a2[3]);
  v8 = type metadata accessor for AccountAccessRequirement();
  result = sub_100798CC4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = result;
  v23 = v8;
  v24 = sub_100013664(&qword_100AE6C50, 255, type metadata accessor for AccountAccessRequirement, &unk_100812280);
  v22[0] = v10;
  v20 = *(v5 + 104);
  v20(v7, enum case for AccessRequirementUnsatisfiedReason.account(_:), v4);
  v19[1] = v10;

  sub_100799C24();
  v12 = *(v5 + 8);
  v11 = v5 + 8;
  v21 = v12;
  v12(v7, v4);
  sub_1000074E0(v22);
  sub_10000E3E8(a2, a2[3]);
  v13 = type metadata accessor for PaidStorefrontAccessRequirement();
  result = sub_100798CC4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v14 = result;
  v23 = v13;
  v24 = sub_100013664(&qword_100AE6C58, 255, type metadata accessor for PaidStorefrontAccessRequirement, &unk_100817C38);
  v22[0] = v14;
  v20(v7, enum case for AccessRequirementUnsatisfiedReason.paidStorefront(_:), v4);

  v19[2] = a1;
  sub_100799C24();
  v21(v7, v4);
  sub_1000074E0(v22);
  sub_10000E3E8(a2, a2[3]);
  v15 = type metadata accessor for UnderThirteenAccessRequirement();
  result = sub_100798CC4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = result;
  v23 = v15;
  v24 = sub_100013664(&qword_100AE6C60, 255, type metadata accessor for UnderThirteenAccessRequirement, &unk_100844770);
  v22[0] = v16;
  v20(v7, enum case for AccessRequirementUnsatisfiedReason.underThirteen(_:), v4);

  sub_100799C24();
  v19[0] = v11;
  v21(v7, v4);
  sub_1000074E0(v22);
  sub_10000E3E8(a2, a2[3]);
  v17 = type metadata accessor for UserPreferenceAccessRequirement();
  result = sub_100798CC4();
  if (result)
  {
    v18 = result;
    v23 = v17;
    v24 = sub_100013664(&qword_100AE6C68, 255, type metadata accessor for UserPreferenceAccessRequirement, &unk_100840230);
    v22[0] = v18;
    v20(v7, enum case for AccessRequirementUnsatisfiedReason.userPreference(_:), v4);

    sub_100799C24();

    v21(v7, v4);
    return sub_1000074E0(v22);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1004C1944(uint64_t result, double a2)
{
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v4 = *(v2 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_pageCount);
  v5 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v4 >= 40)
  {
    v4 = 40;
  }

  v6 = v4 * a2;
  if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_37;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v7 = (1.0 - a2) * v4;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = v6;
  v9 = v7;
  if (v3 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = result - 1;
  }

  if (v5 >= v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = v5;
  }

  v12 = __OFSUB__(v8, v10);
  v13 = v8 - v10;
  if (v12)
  {
    goto LABEL_43;
  }

  v12 = __OFSUB__(v9, v11);
  v14 = v9 - v11;
  if (v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v12 = __OFADD__(v10, v14);
  v15 = v10 + v14;
  if (v12)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v15 >= v3)
  {
    v15 = result - 1;
  }

  if (__OFADD__(v11, v13))
  {
    goto LABEL_46;
  }

  if (v11 + v13 >= v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = v11 + v13;
  }

  v17 = result - v15;
  if (__OFSUB__(result, v15))
  {
    goto LABEL_47;
  }

  v18 = result + v16;
  if (__OFADD__(result, v16))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v16 < v15)
  {
    v12 = __OFADD__(v17++, 1);
    if (!v12)
    {
LABEL_33:
      if (v18 >= v17)
      {
        v19 = (v2 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange);
        *v19 = v17;
        v19[1] = v18;
        *(v2 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerCurrentPage) = result;
        return result;
      }

      goto LABEL_49;
    }

    __break(1u);
  }

  v12 = __OFSUB__(v18--, 1);
  if (!v12)
  {
    goto LABEL_33;
  }

LABEL_50:
  __break(1u);
  return result;
}

void sub_1004C1AC8(double a1)
{
  v2 = vcvtq_f64_s64(*(v1 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange));
  if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v2, 1), v2))).u8[0])
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_10047DA80();
  sub_1007A2064();
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
  }
}

id ScrubberMarkerController.init()()
{
  *&v0[OBJC_IVAR____TtC5Books24ScrubberMarkerController_pageCount] = 1;
  *&v0[OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange] = vdupq_n_s64(1uLL);
  *&v0[OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerCurrentPage] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubberMarkerController();
  return objc_msgSendSuper2(&v2, "init");
}

id ScrubberMarkerController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubberMarkerController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004C1D14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v7 setUnitsStyle:a2];
  [v7 setAllowedUnits:a3];
  [v7 setMaximumUnitCount:2];
  result = [v7 setFormattingContext:5];
  *a4 = v7;
  return result;
}

uint64_t sub_1004C1DB0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v7);

  v2 = *&v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v7);

  v3 = *&v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v7);

  v4 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v7);

  v5 = sub_1004C20D8(a1 & 1, v2, v3, v4, *&v7);

  return v5;
}

void sub_1004C1F3C(unint64_t a1, uint64_t a2, double a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1007A38D4();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v6 - a2;
  if (v6 <= a2)
  {
    return;
  }

  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_29;
  }

  v9 = sub_1007A3784();
LABEL_8:
  v10 = *(v9 + 32);

  v11 = v10 - a3;
  v12 = a2 + 1;
  if (v6 <= a2 + 1)
  {
    return;
  }

  v13 = v6 - 1;
  if (!v8)
  {
    if (a2 < -1)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= v16)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    v15 = v11 + *(*(a1 + 8 * v12 + 32) + 32);
    if (v12 == v13)
    {
      return;
    }

    if (v12 < v13)
    {
      if (a2 + 2 >= v16 || v13 >= v16)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = *(sub_1007A3784() + 32);
  swift_unknownObjectRelease();
  v15 = v11 + v14;
  if (v12 != v13)
  {
    if (v12 >= v13)
    {
      goto LABEL_29;
    }

LABEL_19:
    v17 = v7 - 3;
    for (i = a2 + 6; ; ++i)
    {
      if (v8)
      {
        v19 = *(sub_1007A3784() + 32);
        swift_unknownObjectRelease();
        v15 = v15 + v19;
        if (!v17)
        {
          return;
        }
      }

      else
      {
        v15 = v15 + *(*(a1 + 8 * i) + 32);
        if (!v17)
        {
          return;
        }
      }

      --v17;
    }
  }
}

uint64_t sub_1004C20D8(int a1, unint64_t a2, uint64_t a3, double a4, float a5)
{
  v56 = a2;
  v57 = a3;
  v50 = a1;
  v7 = sub_100796CF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = sub_1007A21D4();
  v55 = *(v14 - 8);
  v15 = v55;
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  sub_1007A2154();
  sub_100796C94();
  v49 = *(v15 + 16);
  v49(v17, v20, v14);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = objc_opt_self();
  v48 = ObjCClassFromMetadata;
  v22 = [v47 bundleForClass:ObjCClassFromMetadata];
  v46 = *(v8 + 16);
  v46(v10, v13, v7);
  v51 = v17;
  v53 = v10;
  sub_1007A22D4(v17, 0, 0, v22, v10, "Format for time remaining in audiobook in the Toolbar.", 54, 2);
  v58 = v23;
  v24 = *(v8 + 8);
  v54 = v7;
  v52 = v8 + 8;
  v45 = v24;
  v24(v13, v7);
  v25 = *(v55 + 8);
  v25(v20, v14);
  sub_1004C1F3C(v56, v57, a4);
  v27 = v26;
  if (a5 > 0.0)
  {
    v27 = v26 / a5;
  }

  if (v27 < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v27;
  }

  if (v26 == -1.0)
  {
    goto LABEL_7;
  }

  if (v28 <= 0.0)
  {

    sub_1007A2154();
    sub_100796C94();
    v31 = v51;
    v44 = v14;
    v49(v51, v20, v14);
    v32 = [v47 bundleForClass:v48];
    v33 = v53;
    v34 = v54;
    v46(v53, v13, v54);
    v35 = sub_1007A22D4(v31, 0, 0, v32, v33, "Time remaining in audiobook when the audiobook is finished.", 59, 2);
    v45(v13, v34);
    v25(v20, v44);
    return v35;
  }

  else
  {
    if (v28 >= 60.0)
    {
      if (v50)
      {
        if (qword_100AD1750 != -1)
        {
          swift_once();
        }

        v30 = &qword_100AE6DC0;
      }

      else
      {
        if (qword_100AD1740 != -1)
        {
          swift_once();
        }

        v30 = &qword_100AE6DB0;
      }
    }

    else if (v50)
    {
      if (qword_100AD1758 != -1)
      {
        swift_once();
      }

      v30 = &qword_100AE6DC8;
    }

    else
    {
      if (qword_100AD1748 != -1)
      {
        swift_once();
      }

      v30 = &qword_100AE6DB8;
    }

    v36 = *v30;
    v37 = [v36 stringFromTimeInterval:v28];
    if (!v37)
    {

LABEL_7:

      return 0;
    }

    v38 = v37;
    v39 = sub_1007A2254();
    v41 = v40;

    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10080B690;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_10000E4C4();
    *(v42 + 32) = v39;
    *(v42 + 40) = v41;
    v43 = sub_1007A2284();

    return v43;
  }
}

uint64_t sub_1004C26AC(uint64_t a1)
{
  result = sub_1007A3454();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1004C2740(uint64_t a1)
{
  v2 = _swiftEmptyDictionarySingleton;
  v39 = _swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_10000AE20(*(a1 + 56) + 32 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_10000AE20(&v35, v28);
    if (v29)
    {
      sub_1000076D4(v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_1000076D4(v33, v30);
      v16 = v2[2];
      if (v2[3] <= v16)
      {

        sub_1003D4168(v16 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v17 = v31;
      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v18 = sub_1007A3C44();
      v19 = v2 + 8;
      v20 = -1 << *(v2 + 32);
      v21 = v18 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~v2[(v21 >> 6) + 8]) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = v19[v22];
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~v2[(v21 >> 6) + 8])) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(v2[6] + 16 * v23) = v17;
      sub_1000076D4(v30, v2[7] + 32 * v23);
      ++v2[2];
      v9 = v32;
    }

    else
    {

      sub_100007840(&v34, &qword_100ADA270, &qword_100817FB0);
      v9 = v28;
    }

    sub_100007840(v9, &unk_100AD5B40, &unk_100811300);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1004C2A0C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE6DD0);
  sub_100008B98(v0, qword_100AE6DD0);
  return sub_10079ACD4();
}

void sub_1004C2A8C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v46 = a1;
  v48 = sub_100796CF4();
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v11;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  sub_1007A2154();
  sub_100796C94();
  v45 = *(v9 + 16);
  v15 = v11;
  v16 = v8;
  v45(v15, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = ObjCClassFromMetadata;
  v43 = objc_opt_self();
  v18 = [v43 bundleForClass:ObjCClassFromMetadata];
  v42 = *(v2 + 16);
  v19 = v4;
  v37 = v4;
  v20 = v4;
  v21 = v48;
  v42(v20, v7, v48);
  sub_1007A22D4(v49, 0, 0, v18, v19, "Audiobook Unavailable Title", 27, 2);
  v22 = *(v2 + 8);
  v40 = v2 + 8;
  v41 = v22;
  v22(v7, v21);
  v23 = *(v9 + 8);
  v38 = v9 + 8;
  v39 = v23;
  v23(v14, v16);
  v24 = sub_1007A2214();

  v25 = sub_1007A2214();
  v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

  sub_1007A2154();
  sub_100796C94();
  v27 = v49;
  v28 = v16;
  v45(v49, v14, v16);
  v29 = [v43 bundleForClass:v44];
  v30 = v37;
  v31 = v48;
  v42(v37, v7, v48);
  sub_1007A22D4(v27, 0, 0, v29, v30, "The title of a standard alert's OK button", 41, 2);
  v41(v7, v31);
  v39(v14, v28);
  v32 = sub_1007A2214();

  v33 = [objc_opt_self() actionWithTitle:v32 style:0 handler:0];

  [v26 addAction:v33];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    [Strong presentViewController:v26 animated:1 completion:0];
  }
}

void sub_1004C2F10(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong presentViewController:a1 animated:a2 & 1 completion:0];
  }
}

uint64_t sub_1004C2F90()
{
  v1 = *(*v0 + 88);
  v2 = sub_1007A3454();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1004C3068(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001F1160(&qword_100AE6FE8, &unk_10082B080);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v19[-v7 - 8];
  v9 = sub_1007978B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100009864(a2, v19);

  sub_1007978A4();
  v13 = sub_10079C0E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v8, 1, 1, v13);
  (*(v14 + 104))(v5, enum case for DynamicTypeSize.accessibility3(_:), v13);
  v16 = v15(v5, 0, 1, v13);
  sub_1004C6A6C(v16);
  sub_10079D604();
  sub_100007840(v5, &qword_100AE6FE8, &unk_10082B080);
  sub_100007840(v8, &qword_100AE6FE8, &unk_10082B080);
  return (*(v10 + 8))(v12, v9);
}

id sub_1004C32E0()
{
  v0 = sub_100797304();
  if (v0)
  {
    v1 = v0;
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 windowManager];

    sub_1001F1160(&unk_100AE0AC0, &unk_100812C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    sub_1007A2254();
    sub_1007A36B4();
    *(inited + 96) = swift_getObjectType();
    *(inited + 72) = v1;
    swift_unknownObjectRetain();
    sub_100013740(inited);
    swift_setDeallocating();
    sub_100007840(inited + 32, &unk_100AD1E50, &unk_10080B810);
    isa = sub_1007A2024().super.isa;

    v6 = [v3 windowFromOptions:isa];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 windowManager];

    sub_100013740(_swiftEmptyArrayStorage);
    v9 = sub_1007A2024().super.isa;

    v6 = [v8 windowFromOptions:v9];
  }

  return v6;
}

id sub_1004C3510()
{
  v0 = sub_1004C32E0();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 rootViewController];
  if (v2)
  {
    v8 = &OBJC_PROTOCOL___BKRootViewControllerContaining;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      do
      {
        v2 = [v4 rootViewController];
        swift_unknownObjectRelease();
        v7 = &OBJC_PROTOCOL___BKRootViewControllerContaining;
        v4 = swift_dynamicCastObjCProtocolConditional();
      }

      while (v4);
    }
  }

  return v2;
}

uint64_t sub_1004C35EC()
{
  v0 = sub_1004C3510();
  if (!v0)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_10:
    sub_100007840(&v6, &unk_100AD5B40, &unk_100811300);
    return 0;
  }

  v1 = v0;
  v2 = [v0 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BSUILibraryCollectionUIProvider];

  if (v2)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_10;
  }

  sub_1001F1160(&qword_100AE6FE0, &qword_10082B078);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C36E0(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  sub_1007A26F4();
  v2[33] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[34] = v4;
  v2[35] = v3;

  return _swift_task_switch(sub_1004C3778, v4, v3);
}

uint64_t sub_1004C3778()
{
  v1 = *(v0[32] + 32);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR___BKEngagementManager_manager);
    v3 = sub_1007999E4();

    if (v3)
    {
      type metadata accessor for SessionDonor(0);
      v4 = swift_dynamicCastClass();
      if (v4 && (v4[OBJC_IVAR___BKSessionDonor_previewButtonUsed] & 1) == 0)
      {
        v4[OBJC_IVAR___BKSessionDonor_previewButtonUsed] = 1;
        [v4 propertyDidChange:v4 propertyConfiguration:*&v4[OBJC_IVAR___BKSessionDonor_previewButtonUsedConfig]];
      }

      swift_unknownObjectRelease();
    }
  }

  v5 = *(v0[32] + 24);
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1004C3940;
  v6 = swift_continuation_init();
  v0[25] = sub_1001F1160(&qword_100AE7EF0, &qword_10082AFE8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1003807B4;
  v0[21] = &unk_100A1F698;
  v0[22] = v6;
  [v5 requestPrimaryScene:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004C3940()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  return _swift_task_switch(sub_1004C3A48, v2, v1);
}

uint64_t sub_1004C3A48()
{
  v1 = v0[29];
  v0[36] = v1;
  v2 = [v1 newShowAssetTransaction];
  v0[37] = v2;
  v3 = sub_1004C4920(&protocolRef_BKBookPresenting_0, &qword_100AE6EE0, &unk_10082B008);
  if (v3)
  {
    v4 = v3;
    v5 = v0[31];
    swift_unknownObjectRetain();
    sub_100013740(_swiftEmptyArrayStorage);
    isa = sub_1007A2024().super.isa;

    [v4 showStoreAsset:v2 asset:v5 options:isa];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  v7 = [objc_opt_self() delegate];
  v8 = [v7 libraryAssetProvider];
  v0[38] = v8;

  v9 = [v8 collectionController];
  v0[39] = v9;
  sub_100799574();
  v10 = sub_1007A2214();
  v0[40] = v10;

  v11 = kBKCollectionDefaultIDSamples;
  v0[41] = kBKCollectionDefaultIDSamples;
  v0[10] = v0;
  v0[15] = v0 + 29;
  v0[11] = sub_1004C3CCC;
  v12 = swift_continuation_init();
  v0[25] = sub_1001F1160(&unk_100AE6E70, qword_10082AFF0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1005EB504;
  v0[21] = &unk_100A1F6C0;
  v0[22] = v12;
  [v9 addStoreID:v10 toCollectionID:v11 forceToTop:0 completion:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1004C3CCC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 336) = v2;
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);
  if (v2)
  {
    v5 = sub_1004C3F6C;
  }

  else
  {
    v5 = sub_1004C3DFC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004C3DFC()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);

  v3 = *(v0 + 232);
  swift_unknownObjectRelease();

  if (v3)
  {
    v4 = *(v0 + 288);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100AD1760 != -1)
    {
      swift_once();
    }

    v5 = sub_10079ACE4();
    sub_100008B98(v5, qword_100AE6DD0);
    v6 = sub_10079ACC4();
    v7 = sub_1007A29B4();
    v8 = os_log_type_enabled(v6, v7);
    v4 = *(v0 + 288);
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to add preview to samples", v9, 2u);
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1004C3F6C()
{
  v16 = v0;
  v1 = v0[41];
  v2 = v0[40];

  swift_willThrow();
  swift_unknownObjectRelease();

  if (qword_100AD1760 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AE6DD0);
  swift_errorRetain();
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[36];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1007A3B84();
    v12 = sub_1000070F4(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to add preview to samples: %s", v8, 0xCu);
    sub_1000074E0(v9);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  v13 = v0[1];

  return v13();
}

void sub_1004C4190(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v38 = a4;
  v39 = a3;
  v41 = sub_100796CF4();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v37 - v15;
  v17 = v4;
  v42 = sub_1004C35EC();
  if (v42)
  {
    isa = sub_1007A25D4().super.isa;
    sub_10023A724();
    v19 = sub_1007A25D4().super.isa;
    v20 = [v42 libraryCollectionListViewControllerWithAssetIDs:isa knownAssetTypes:v19 knownStoreAssetIDs:v39 containsSeriesContainer:v38 & 1];

    v37[1] = v17;
    Strong = swift_unknownObjectWeakLoadStrong();
    v22 = [Strong ba_analyticsTracker];

    [v20 ba_setOverrideParentAnalyticsTracker:v22];
    sub_1007A2154();
    sub_100796C94();
    (*(v11 + 16))(v13, v16, v10);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v25 = v40;
    v26 = v41;
    (*(v5 + 16))(v40, v9, v41);
    sub_1007A22D4(v13, 0, 0, v24, v25, "Add to Collection", 17, 2);
    (*(v5 + 8))(v9, v26);
    (*(v11 + 8))(v16, v10);
    v27 = sub_1007A2214();

    [v20 setTitle:v27];

    v28 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v20 action:"doneButtonPressed"];
    v29 = [v20 navigationItem];
    [v29 setRightBarButtonItem:v28 animated:0];

    v30 = [objc_allocWithZone(BSUINavigationController) initWithRootViewController:v20];
    [v30 setModalPresentationStyle:2];
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v32 = v31;
      [v31 presentViewController:v30 animated:1 completion:0];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100AD1760 != -1)
    {
      swift_once();
    }

    v33 = sub_10079ACE4();
    sub_100008B98(v33, qword_100AE6DD0);
    v42 = sub_10079ACC4();
    v34 = sub_1007A29B4();
    if (os_log_type_enabled(v42, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v42, v34, "Unable to find libraryCollectionPresenter to present the collection list", v35, 2u);
    }

    v36 = v42;
  }
}

double sub_1004C46BC()
{
  v0 = sub_1004C32E0();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  v2 = [v0 rootViewController];
  if (!v2)
  {

LABEL_10:
    v15 = 0u;
    v16 = 0u;
LABEL_11:
    sub_100007840(&v15, &unk_100AD5B40, &unk_100811300);
    return result;
  }

  v3 = v2;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v3 = [v5 rootViewController];
      swift_unknownObjectRelease();
      v5 = swift_dynamicCastObjCProtocolConditional();
    }

    while (v5);
  }

  v7 = [v3 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKStorePresenting];
  if (v7)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_11;
  }

  sub_1001F1160(&qword_100AE6EE8, &qword_10082B018);
  if (swift_dynamicCast())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_20;
    }

    v10 = Strong;
    v11 = [objc_opt_self() sceneControllerForViewController:Strong];

    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = [v11 newShowURLTransaction];
    if ([objc_opt_self() isOffline])
    {
      [v13 displayInternetReachabilityErrorAlert:1 transaction:v12];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_20:
      swift_unknownObjectRelease();
      return result;
    }

    [v13 displayBookUnavailableInStorefrontErrorWithTransaction:v12];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004C4920(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1004C3510();
  v7 = v6;
  if (!v6)
  {
    v15 = 0u;
    v16 = 0u;
LABEL_7:
    sub_100007840(&v15, &unk_100AD5B40, &unk_100811300);
    return 0;
  }

  v8 = v6;
  do
  {
    v9 = v8;

    v8 = [v8 presentedViewController];
    v10 = v8;
    v6 = v9;
  }

  while (v8);
  v11 = [v9 im_ancestorFlowControllerConformingToProtocol:*a1];

  if (v11)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_7;
  }

  sub_1001F1160(a2, a3);
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C4A70(uint64_t a1, uint64_t a2)
{
  v3[124] = v2;
  v3[123] = a2;
  v3[122] = a1;
  sub_1007A26F4();
  v3[125] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v3[126] = v5;
  v3[127] = v4;

  return _swift_task_switch(sub_1004C4B14, v5, v4);
}

uint64_t sub_1004C4B14()
{
  v93 = v0;
  aBlock = (v0 + 784);
  v1 = *(v0 + 992);
  v2 = *(v0 + 976);
  sub_10000E3E8(v2, v2[3]);
  v3 = sub_100797674();
  v5 = v4;
  v6 = *(v1 + 80);
  sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080B690;
  *(v7 + 32) = v3;
  *(v7 + 40) = v5;

  isa = sub_1007A25D4().super.isa;

  [v6 addProductProfileIDs:isa priority:6];

  v9 = *(v1 + 32);
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR___BKEngagementManager_manager);
    v11 = sub_1007999E4();

    if (v11)
    {
      type metadata accessor for SessionDonor(0);
      v12 = swift_dynamicCastClass();
      if (v12 && (v12[OBJC_IVAR___BKSessionDonor_sampleButtonUsed] & 1) == 0)
      {
        v12[OBJC_IVAR___BKSessionDonor_sampleButtonUsed] = 1;
        [v12 propertyDidChange:v12 propertyConfiguration:*&v12[OBJC_IVAR___BKSessionDonor_sampleButtonUsedConfig]];
      }

      swift_unknownObjectRelease();
    }
  }

  v13 = (v0 + 968);
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  sub_1003DD044(*(v0 + 992), v0 + 696);
  sub_1002B0670(v15, v0 + 872);
  v16 = swift_allocObject();
  *(v0 + 1024) = v16;
  sub_1003DDA00(v0 + 696, v16 + 16);
  sub_1001FF7C8((v0 + 872), (v16 + 104));
  *(v16 + 152) = v14;
  v17 = v14;
  swift_asyncLet_begin();
  v18 = sub_1004C5C20();
  *(v0 + 968) = v18;
  sub_10000E3E8(v15, v2[3]);
  v19 = sub_100797604();
  if (v19)
  {
    v20 = v19;
    v21 = sub_1004C4920(&protocolRef_BSUIItemPresenting, &qword_100AE6F68, &unk_10082B068);
    if (v21)
    {
      v22 = v21;
      if ([objc_opt_self() hasMultiWindowEnabled])
      {
        v23 = *(*(v0 + 992) + 24);
        v24 = sub_1007A2214();

        v25 = [v23 newBookSceneControllerProviderWithRequestAssetID:v24];

        v26 = [objc_opt_self() currentSceneController];
        if (v26)
        {
          v27 = [v26 newShowAssetTransactionWithTargetSceneDescriptor:v25];
          swift_unknownObjectRelease();
          v28 = sub_1007A2254();
          v30 = v29;
          v31 = [v20 title];
          if (v31)
          {
            aBlocka = v28;
            v32 = v31;
            v33 = sub_1007A2254();
            v35 = v34;

            *&v90 = v33;
            *(&v90 + 1) = v35;
            v91 = &type metadata for String;
            v36 = *v13;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v92 = v36;
            sub_1002F4E24(&v90, aBlocka, v30, isUniquelyReferenced_nonNull_native);

            v38 = v92;
            *v13 = v92;
          }

          else
          {
            sub_1002EEC98(v28, v30, aBlock);

            sub_100007840(aBlock, &unk_100AE6F50, &unk_100817F30);
            v38 = *v13;
          }

          v67 = sub_1007A2254();
          v69 = v68;
          ObjectType = swift_getObjectType();
          *&v90 = v27;
          v91 = ObjectType;
          swift_unknownObjectRetain();
          v71 = swift_isUniquelyReferenced_nonNull_native();
          v92 = v38;
          sub_1002F4E24(&v90, v67, v69, v71);

          v18 = v92;
        }

        else
        {
          v27 = 0;
        }

        v72 = v20;
        sub_1004C2740(v18);
        v74 = v73;

        sub_10058096C(v74);

        v75 = sub_1007A2024().super.isa;

        [v22 presentItem:v72 transaction:v27 host:0 source:0 options:v75];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_38;
      }

      v54 = [objc_opt_self() currentSceneController];
      if (v54)
      {
        v55 = *(v0 + 992);
        v56 = [v54 newShowAssetTransaction];
        swift_unknownObjectRelease();
        v57 = *(v55 + 24);
        v58 = swift_allocObject();
        v58[2] = v22;
        v58[3] = v20;
        v58[4] = v56;
        v58[5] = v18;
        *(v0 + 816) = sub_1004C6A60;
        *(v0 + 824) = v58;
        *(v0 + 784) = _NSConcreteStackBlock;
        *(v0 + 792) = 1107296256;
        *(v0 + 800) = sub_1003323D0;
        *(v0 + 808) = &unk_100A1F800;
        v59 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v60 = v20;
        swift_unknownObjectRetain();

        [v57 forceTransaction:v56 ontoPrimarySceneWithContinuation:v59];

        swift_unknownObjectRelease();
LABEL_22:
        _Block_release(v59);
        swift_unknownObjectRelease();
LABEL_38:

        return _swift_asyncLet_get_throwing(v0 + 16, v66);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if ([objc_opt_self() hasMultiWindowEnabled])
    {
      v39 = *(*(v0 + 992) + 24);
      v40 = sub_1007A2214();
      v41 = [v39 newBookSceneControllerProviderWithRequestAssetID:v40];

      v42 = [objc_opt_self() currentSceneController];
      if (v42)
      {
        v43 = *(v0 + 976);
        v44 = [v42 newShowAssetTransactionWithTargetSceneDescriptor:v41];
        swift_unknownObjectRelease();
        v45 = sub_1007A2254();
        v47 = v46;
        sub_10000E3E8(v43, v2[3]);
        v48 = sub_100797664();
        if (v49)
        {
          *&v90 = v48;
          *(&v90 + 1) = v49;
          v91 = &type metadata for String;
          v50 = *v13;
          v51 = swift_isUniquelyReferenced_nonNull_native();
          v92 = v50;
          sub_1002F4E24(&v90, v45, v47, v51);

          v52 = v92;
          *v13 = v92;
        }

        else
        {
          sub_1002EEC98(v45, v47, aBlock);

          sub_100007840(aBlock, &unk_100AE6F50, &unk_100817F30);
          v52 = *v13;
        }

        v76 = sub_1007A2254();
        v78 = v77;
        v79 = swift_getObjectType();
        *&v90 = v44;
        v91 = v79;
        swift_unknownObjectRetain();
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v92 = v52;
        sub_1002F4E24(&v90, v76, v78, v80);

        v18 = v92;
      }

      else
      {
        v44 = 0;
      }

      v81 = sub_1004C4920(&protocolRef_BKBookPresenting_0, &qword_100AE6EE0, &unk_10082B008);
      if (v81)
      {
        v82 = v81;
        v83 = sub_1007A2214();

        sub_1004C2740(v18);
        v85 = v84;

        sub_10058096C(v85);

        v86 = sub_1007A2024().super.isa;

        [v82 showAssetWithTransaction:v44 storeID:v83 options:v86];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      goto LABEL_38;
    }

    v61 = [objc_opt_self() currentSceneController];
    if (v61)
    {
      v62 = *(v0 + 992);
      v63 = [v61 newShowAssetTransaction];
      swift_unknownObjectRelease();
      v64 = *(v62 + 24);
      sub_1003DD044(v62, aBlock);
      v65 = swift_allocObject();
      sub_1003DDA00(aBlock, (v65 + 2));
      v65[13] = v63;
      v65[14] = v3;
      v65[15] = v5;
      v65[16] = v18;
      *(v0 + 952) = sub_1004C6A50;
      *(v0 + 960) = v65;
      *(v0 + 920) = _NSConcreteStackBlock;
      *(v0 + 928) = 1107296256;
      *(v0 + 936) = sub_1003323D0;
      *(v0 + 944) = &unk_100A1F7B0;
      v59 = _Block_copy((v0 + 920));
      swift_unknownObjectRetain();

      [v64 forceTransaction:v63 ontoPrimarySceneWithContinuation:v59];
      goto LABEL_22;
    }
  }

  return _swift_asyncLet_finish(v0 + 16, v53, sub_1004C5624, v0 + 656);
}

uint64_t sub_1004C5640()
{
  v1[129] = v0;
  if (v0)
  {
    v2 = sub_1004C571C;
  }

  else
  {
    v2 = sub_1004C5678;
  }

  return _swift_task_switch(v2, v1[126], v1[127]);
}

uint64_t sub_1004C56B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C5754()
{
  v15 = v0;

  if (qword_100AD1760 != -1)
  {
    swift_once();
  }

  v1 = v0[122];
  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AE6DD0);
  sub_1002B0670(v1, (v0 + 2));
  v3 = sub_10079ACC4();
  v4 = sub_1007A29B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    sub_10000E3E8(v0 + 2, v0[5]);
    v7 = sub_1007976A4();
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    sub_1000074E0(v0 + 2);
    v11 = sub_1000070F4(v9, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to download the sample with storeID %s", v5, 0xCu);
    sub_1000074E0(v6);
  }

  else
  {

    sub_1000074E0(v0 + 2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004C5958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  return _swift_task_switch(sub_1004C597C, 0, 0);
}

uint64_t sub_1004C597C()
{
  v1 = v0[7];
  v2 = sub_10000E3E8((v1 + 40), *(v1 + 64));
  v0[5] = &type metadata for ContextMenuPresentationContext;
  v0[6] = sub_1003DD65C();
  v3 = swift_allocObject();
  v0[2] = v3;
  sub_1003DD044(v1, v3 + 16);
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1004C5A80;
  v9 = v0[8];
  v8 = v0[9];

  return sub_1002B7D74(v9, (v0 + 2), v8, v4, v5, v6);
}

uint64_t sub_1004C5A80()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004C5BBC, 0, 0);
  }

  else
  {
    sub_1000074E0(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1004C5BBC()
{
  sub_1000074E0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1004C5C20()
{
  sub_1001F1160(&qword_100AE6F60, &unk_10082B030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = sub_1007A2254();
  *(inited + 40) = v1;
  v2 = sub_100797314();
  if (v3)
  {
    v4 = &type metadata for String;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v2;
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = sub_1007A2254();
  *(inited + 88) = v5;
  v6 = sub_100797324();
  if (v7)
  {
    v8 = &type metadata for String;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v6;
  *(inited + 104) = v7;
  *(inited + 120) = v8;
  *(inited + 128) = sub_1007A2254();
  *(inited + 136) = v9;
  v10 = sub_1007973B4();
  if (v11)
  {
    v12 = &type metadata for String;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v10;
  *(inited + 152) = v11;
  *(inited + 168) = v12;
  v13 = sub_1001EF0D0(inited);
  swift_setDeallocating();
  sub_1001F1160(&qword_100AD35C0, &qword_10080CB38);
  swift_arrayDestroy();
  return v13;
}

void sub_1004C5D74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004C2740(a4);
  sub_10058096C(v7);

  isa = sub_1007A2024().super.isa;

  [a1 presentItem:a2 transaction:a3 host:0 source:0 options:isa];
}

double sub_1004C5E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1004C4920(&protocolRef_BKBookPresenting_0, &qword_100AE6EE0, &unk_10082B008);
  if (v7)
  {
    v9 = v7;
    v10 = sub_1007A2214();
    sub_1004C2740(a5);
    sub_10058096C(v11);

    isa = sub_1007A2024().super.isa;

    [v9 showAssetWithTransaction:a2 storeID:v10 options:isa];

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004C5F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  sub_1007A26F4();
  v5[32] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[33] = v7;
  v5[34] = v6;

  return _swift_task_switch(sub_1004C5FFC, v7, v6);
}

uint64_t sub_1004C5FFC()
{
  v34 = v0;
  v1 = v0[31];
  if ([objc_opt_self() hasMultiWindowEnabled])
  {

    v2 = *(v1 + 24);
    v3 = sub_1007A2214();
    v4 = [v2 newBookSceneControllerProviderWithRequestAssetID:v3];

    v5 = [objc_opt_self() currentSceneController];
    if (v5)
    {
      v6 = [v5 newShowAssetTransactionWithTargetSceneDescriptor:v4];
      swift_unknownObjectRelease();
      v7 = sub_1004C5C20();
      if (v6)
      {
        v8 = v0[30];
        v9 = sub_1007A2254();
        v11 = v9;
        v12 = v10;
        if (v8)
        {
          v13 = v0[30];
          *&v31 = v0[29];
          *(&v31 + 1) = v13;
          v32 = &type metadata for String;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = v7;
          sub_1002F4E24(&v31, v11, v12, isUniquelyReferenced_nonNull_native);

          v15 = v33;
        }

        else
        {
          sub_1002EEC98(v9, v10, (v0 + 10));

          sub_100007840((v0 + 10), &unk_100AE6F50, &unk_100817F30);
          v15 = v7;
        }

        v18 = sub_1007A2254();
        v20 = v19;
        ObjectType = swift_getObjectType();
        *&v31 = v6;
        v32 = ObjectType;
        swift_unknownObjectRetain();
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v33 = v15;
        sub_1002F4E24(&v31, v18, v20, v22);

        v7 = v33;
      }
    }

    else
    {
      v7 = sub_1004C5C20();
      v6 = 0;
    }

    v23 = sub_1004C4920(&protocolRef_BKBookPresenting_0, &qword_100AE6EE0, &unk_10082B008);
    if (v23)
    {
      v24 = v23;
      v25 = sub_1007A2214();
      sub_1004C2740(v7);
      v27 = v26;

      sub_10058096C(v27);

      isa = sub_1007A2024().super.isa;

      [v24 showAssetWithTransaction:v6 assetID:v25 location:0 options:isa completion:0];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v29 = v0[1];

    return v29();
  }

  else
  {
    v16 = *(v1 + 24);
    v0[35] = v16;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1004C6420;
    v17 = swift_continuation_init();
    v0[17] = sub_1001F1160(&qword_100AE7EF0, &qword_10082AFE8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1003807B4;
    v0[13] = &unk_100A1F6E8;
    v0[14] = v17;
    [v16 requestPrimaryScene:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1004C6420()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return _swift_task_switch(sub_1004C6528, v2, v1);
}

uint64_t sub_1004C6528()
{
  v1 = v0[35];
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];

  v5 = v0[21];
  v6 = [v5 newShowAssetTransaction];
  sub_1003DD044(v2, (v0 + 10));
  v7 = swift_allocObject();
  sub_1003DDA00((v0 + 10), (v7 + 2));
  v7[13] = v6;
  v7[14] = v4;
  v7[15] = v3;
  v0[25] = sub_1004C6978;
  v0[26] = v7;
  v0[21] = _NSConcreteStackBlock;
  v0[22] = 1107296256;
  v0[23] = sub_1003323D0;
  v0[24] = &unk_100A1F738;
  v8 = _Block_copy(v0 + 21);
  swift_unknownObjectRetain();

  [v1 forceTransaction:v6 ontoPrimarySceneWithContinuation:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();

  v9 = v0[1];

  return v9();
}

double sub_1004C66A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1004C5C20();
  v6 = sub_1004C4920(&protocolRef_BKBookPresenting_0, &qword_100AE6EE0, &unk_10082B008);
  if (v6)
  {
    v7 = v6;
    v8 = sub_1007A2214();
    sub_1004C2740(v5);
    v10 = v9;

    sub_10058096C(v10);

    isa = sub_1007A2024().super.isa;

    [v7 showAssetWithTransaction:a2 assetID:v8 location:0 options:isa completion:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

void sub_1004C67EC(char a1, uint64_t a2)
{
  v3 = objc_opt_self();
  sub_1003DD65C();
  sub_100796EF4();
  isa = sub_1007A2024().super.isa;

  [v3 presentNoticeForNoSampleAvailable:a1 & 1 options:isa];
}

uint64_t sub_1004C68B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1004C68F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1004C6988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004C69A0(uint64_t a1)
{
  v4 = *(v1 + 152);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002812C;

  return sub_1004C5958(a1, v1 + 16, v1 + 104, v4);
}

unint64_t sub_1004C6A6C(double a1)
{
  result = qword_100AE6FF0;
  if (!qword_100AE6FF0)
  {
    sub_1007978B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6FF0);
  }

  return result;
}

uint64_t static Logger.sidebar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1768 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  v3 = sub_100008B98(v2, qword_100AE7000);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1004C6BB8(void *a1)
{
  v1 = a1;
  sub_1004C7684(&selRef_viewDidLoad);
}

id sub_1004C6C0C(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "viewWillAppear:", a1 & 1);
}

void sub_1004C6C54(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1004C6C0C(a3);
}

double sub_1004C6CA8(uint64_t a1)
{
  v2 = a1;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewWillDisappear:", v2 & 1);
  return sub_1004C6CFC(0, v2);
}

double sub_1004C6CFC(char a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = swift_isaMask & *v2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setEditing:animated:", a1 & 1, a2 & 1);
  (*(*(v6 + qword_100AE70A0 + 32) + 24))(*(v6 + qword_100AE70A0));
  sub_10079B8C4();

  return result;
}

void sub_1004C6E20(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1004C6CA8(a3);
}

void sub_1004C6E74(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  sub_1004C6CFC(a3, a4);
}

id sub_1004C6EFC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (sub_100796E94() & 1) != 0 || (sub_100796E94())
  {
    return 0;
  }

  sub_10000AE20(a2, v16);
  v7 = v17;
  if (v17)
  {
    v8 = sub_10000E3E8(v16, v17);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin(v8);
    v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_1007A3AA4();
    (*(v9 + 8))(v12, v7);
    sub_1000074E0(v16);
  }

  else
  {
    v13 = 0;
  }

  v15.receiver = v2;
  v15.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v15, "canPerformAction:withSender:", a1, v13);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1004C7094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = sub_1004C6EFC(a3, v10);

  sub_1000230BC(v10);
  return v8 & 1;
}

double sub_1004C711C()
{
  v1 = swift_isaMask & *v0;
  (*(*(*(v1 + qword_100AE70A0) - 8) + 8))(&v0[*(v1 + qword_100AE70A0 + 64)]);
  (*(*(*(v1 + qword_100AE70A0 + 16) - 8) + 8))(&v0[*((swift_isaMask & *v0) + qword_100AE70A0 + 72)]);
  (*(*(*(v1 + qword_100AE70A0 + 8) - 8) + 8))(&v0[*((swift_isaMask & *v0) + qword_100AE70A0 + 80)]);
  (*(*(*(v1 + qword_100AE70A0 + 24) - 8) + 8))(&v0[*((swift_isaMask & *v0) + qword_100AE70A0 + 88)]);

  return result;
}

double sub_1004C7388(char *a1)
{
  v2 = swift_isaMask & *a1;
  (*(*(*(v2 + qword_100AE70A0) - 8) + 8))(&a1[*(v2 + qword_100AE70A0 + 64)]);
  (*(*(*(v2 + qword_100AE70A0 + 16) - 8) + 8))(&a1[*((swift_isaMask & *a1) + qword_100AE70A0 + 72)]);
  (*(*(*(v2 + qword_100AE70A0 + 8) - 8) + 8))(&a1[*((swift_isaMask & *a1) + qword_100AE70A0 + 80)]);
  (*(*(*(v2 + qword_100AE70A0 + 24) - 8) + 8))(&a1[*((swift_isaMask & *a1) + qword_100AE70A0 + 88)]);

  return result;
}

id sub_1004C7684(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_1004C76C4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE7000);
  sub_100008B98(v0, qword_100AE7000);
  return sub_10079ACD4();
}

uint64_t sub_1004C7770(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_1004C790C()
{
  v1 = *((swift_isaMask & *v0) + qword_100AE70A0 + 96);
  *(v0 + v1) = [objc_allocWithZone(_UIScrollPocketCollectorInteraction) init];
  *(v0 + *((swift_isaMask & *v0) + qword_100AE70A0 + 104)) = &_swiftEmptySetSingleton;
  sub_1007A38A4();
  __break(1u);
}

double sub_1004C7A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __chkstk_darwin(a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_10079BE84();
  sub_10079D694();

  return result;
}

uint64_t sub_1004C7B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1004CEF3C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1004C7BE8(uint64_t a1, uint64_t a2)
{
  sub_1004C7CB8();
  sub_10079C834();
  return v3;
}

uint64_t sub_1004C7C28()
{
  sub_1004C7C64();
  sub_10079C834();
  return v1;
}

unint64_t sub_1004C7C64()
{
  result = qword_100AE7130;
  if (!qword_100AE7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7130);
  }

  return result;
}

unint64_t sub_1004C7CB8()
{
  result = qword_100AE7138;
  if (!qword_100AE7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7138);
  }

  return result;
}

uint64_t sub_1004C7D48(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1004C7D60(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1004C7D8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004C7DD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004C7E4C()
{
  result = qword_100AE7140;
  if (!qword_100AE7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7140);
  }

  return result;
}

uint64_t sub_1004C7EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1004C7E4C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1004C7F20()
{
  v10 = *(v0 + 136);
  v11 = *(v0 + 128);
  sub_1001F1160(&qword_100AE7148, &qword_10082B3D0);
  sub_10079DFF4();
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = swift_getKeyPath();
  type metadata accessor for ChromeStyle(0);
  sub_1004D0928(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
  v4 = sub_10079C484();
  v6 = v5;
  v7 = swift_getKeyPath();
  type metadata accessor for InfoBarViewModel(0);
  sub_1004D0928(&qword_100AD9B20, type metadata accessor for InfoBarViewModel, &unk_10082A690);
  v34 = 0;
  v31 = 0;
  v29 = 0;
  v27 = 0;
  *&v19 = KeyPath;
  WORD4(v19) = 0;
  *(&v19 + 10) = v32;
  HIWORD(v19) = v33;
  *&v20 = v2;
  BYTE8(v20) = 0;
  *(&v20 + 9) = *v30;
  HIDWORD(v20) = *&v30[3];
  *&v21 = v3;
  BYTE8(v21) = 0;
  HIDWORD(v21) = *&v28[3];
  *(&v21 + 9) = *v28;
  *&v22 = v4;
  *(&v22 + 1) = v6;
  *&v23 = v7;
  BYTE8(v23) = 0;
  HIDWORD(v23) = *&v26[3];
  *(&v23 + 9) = *v26;
  *&v24 = sub_10079C024();
  *(&v24 + 1) = v8;
  v25 = 0x4034000000000000;
  *&v12 = v11;
  *(&v12 + 1) = v10;
  sub_10079DFF4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v12);

  if (*(&v14 + 1) != 1)
  {
    sub_1004CEEF0(v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15);
  }

  sub_1004CEE6C();
  sub_10079D954();
  v16 = v23;
  v17 = v24;
  v18 = v25;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  return sub_1004CEEC0(&v12);
}

uint64_t sub_1004C81EC@<X0>(__int16 a1@<W4>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v19[0] = sub_10079CA64();
  v3 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = sub_1001F1160(&qword_100AE7578, &qword_10082BD10);
  __chkstk_darwin(v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v19 - v13;
  if ((sub_1007A2B24() & 1) == 0 || (a1 & 0x100) != 0)
  {
    sub_10079CA44();
  }

  else
  {
    sub_10079CA14();
  }

  sub_1001F1160(&qword_100AE7580, &qword_10082BD18);
  sub_100005920(&qword_100AE7588, &qword_100AE7580, &qword_10082BD18, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10079D794();
  v15 = *(v3 + 8);
  v16 = v8;
  v17 = v19[0];
  v15(v16, v19[0]);
  sub_10079CA14();
  sub_10079C134();
  v15(v5, v17);
  sub_100007840(v11, &qword_100AE7578, &qword_10082BD10);
  sub_1007A2AF4();
  sub_10079C294();
  return sub_100007840(v14, &qword_100AE7578, &qword_10082BD10);
}

uint64_t sub_1004C8460()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 8);
  result = *v0;
  v9 = *v0;
  if (HIBYTE(v10) != 1)
  {

    v6 = sub_1007A29C4();
    v7 = sub_10079D244();
    sub_10079AB44(v6, &_mh_execute_header, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v9, &qword_100AE74B8, &qword_10082BB08);
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  return result;
}

uint64_t sub_1004C85CC()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 24);
  v5 = *(v0 + 16);
  v10 = v5;
  if (v11 != 1)
  {

    v6 = sub_1007A29C4();
    v7 = sub_10079D244();
    sub_10079AB44(v6, &_mh_execute_header, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v10, qword_100AE74E0, &qword_10082BB30);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t sub_1004C872C()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 40);
  result = *(v0 + 32);
  v9 = result;
  if ((v10 & 1) == 0)
  {

    v6 = sub_1007A29C4();
    v7 = sub_10079D244();
    sub_10079AB44(v6, &_mh_execute_header, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v9, &qword_100AD55D0, &qword_10082BA80);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return result;
}

uint64_t sub_1004C8884()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 72);
  v5 = *(v0 + 64);
  v10 = v5;
  if (v11 != 1)
  {

    v6 = sub_1007A29C4();
    v7 = sub_10079D244();
    sub_10079AB44(v6, &_mh_execute_header, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v10, &qword_100AD55B8, &qword_100810328);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t sub_1004C89E4@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1004C81EC(v2 | *(v1 + 24), a1);
}

uint64_t sub_1004C8A18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v168 = a1;
  v154 = sub_1001F1160(&qword_100AE7178, &qword_10082B6A0);
  __chkstk_darwin(v154);
  v156 = (&v137 - v3);
  v167 = sub_1001F1160(&qword_100AE7180, &qword_10082B6A8);
  __chkstk_darwin(v167);
  v157 = &v137 - v4;
  v155 = sub_1001F1160(&qword_100AE7188, &qword_10082B6B0);
  __chkstk_darwin(v155);
  v6 = &v137 - v5;
  v164 = sub_1001F1160(&qword_100AE7190, &qword_10082B6B8);
  __chkstk_darwin(v164);
  v166 = &v137 - v7;
  v159 = sub_1001F1160(&qword_100AE7198, &qword_10082B6C0);
  __chkstk_darwin(v159);
  v160 = (&v137 - v8);
  v165 = sub_1001F1160(&qword_100AE71A0, &qword_10082B6C8);
  __chkstk_darwin(v165);
  v161 = &v137 - v9;
  v152 = sub_10079C894();
  v149 = *(v152 - 8);
  __chkstk_darwin(v152);
  v146 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10079C004();
  v12 = *(v11 - 8);
  v147 = v11;
  v148 = v12;
  __chkstk_darwin(v11);
  v14 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1001F1160(&qword_100AE71A8, &qword_10082B6D0);
  v151 = *(v153 - 8);
  __chkstk_darwin(v153);
  v16 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v150 = &v137 - v18;
  v19 = sub_1001F1160(&qword_100AE71B0, &qword_10082B6D8);
  __chkstk_darwin(v19);
  v21 = &v137 - v20;
  v139 = sub_1001F1160(&qword_100AE71B8, &qword_10082B6E0);
  __chkstk_darwin(v139);
  v140 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v162 = &v137 - v24;
  v25 = sub_1001F1160(&qword_100AE71C0, &qword_10082B6E8);
  __chkstk_darwin(v25 - 8);
  v163 = &v137 - v26;
  v141 = sub_1001F1160(&qword_100AE71C8, &qword_10082B6F0);
  __chkstk_darwin(v141);
  v143 = &v137 - v27;
  v158 = sub_1001F1160(&qword_100AE71D0, &qword_10082B6F8);
  __chkstk_darwin(v158);
  v142 = &v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v144 = &v137 - v30;
  v31 = *(v1 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  v145 = v31;
  sub_10079B9A4(v170);

  v32 = LOBYTE(v170[0]);
  if (sub_1004C85CC())
  {
    if (v32)
    {
      sub_1001F1160(&qword_100AE1820, &qword_1008228C0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_10080EFF0;
      v34 = sub_10079D254();
      *(v33 + 32) = v34;
      v35 = sub_10079D274();
      *(v33 + 33) = v35;
      v36 = sub_10079D264();
      sub_10079D264();
      if (sub_10079D264() != v34)
      {
        v36 = sub_10079D264();
      }

      sub_10079D264();
      if (sub_10079D264() != v35)
      {
        v36 = sub_10079D264();
      }

      sub_1004CA2B0(v2, v170);
      v175 = v170[2];
      v176 = v170[3];
      v173 = v170[0];
      v174 = v170[1];
      v178[2] = v170[2];
      v178[3] = v170[3];
      v178[4] = v170[4];
      v178[1] = v170[1];
      v177 = v170[4];
      v178[0] = v170[0];
      sub_1000077D8(&v173, v169, &qword_100AE72B0, &qword_10082B800);
      sub_100007840(v178, &qword_100AE72B0, &qword_10082B800);
      *&v179[23] = v174;
      *&v179[39] = v175;
      *&v179[55] = v176;
      *&v179[71] = v177;
      *&v179[7] = v173;
      sub_1004C8460();
      sub_10079E474();
      sub_10079C414();
      v37 = sub_1004CA1C8();
      KeyPath = swift_getKeyPath();
      v39 = swift_getKeyPath();
      v181 = 0;
      v180 = 0;
      LOBYTE(v170[0]) = v36;
      *(&v170[2] + 1) = *&v179[32];
      *(&v170[3] + 1) = *&v179[48];
      *(&v170[4] + 1) = *&v179[64];
      *(v170 + 1) = *v179;
      *(&v170[1] + 1) = *&v179[16];
      *(&v170[7] + 8) = v184;
      *(&v170[6] + 8) = v183;
      *(&v170[5] + 8) = v182;
      *(&v170[11] + 8) = v188;
      *(&v170[10] + 8) = v187;
      *(&v170[9] + 8) = v186;
      *(&v170[8] + 8) = v185;
      *&v170[5] = *&v179[79];
      *(&v170[12] + 1) = KeyPath;
      LOBYTE(v171) = 0;
      *(&v171 + 1) = v39;
      LOBYTE(v172) = 0;
      HIBYTE(v172) = v37 & 1;
      v40 = v170[1];
      v41 = v160;
      *v160 = v170[0];
      v41[1] = v40;
      v42 = v170[2];
      v43 = v170[3];
      v44 = v170[5];
      v41[4] = v170[4];
      v41[5] = v44;
      v41[2] = v42;
      v41[3] = v43;
      v45 = v170[6];
      v46 = v170[7];
      v47 = v170[9];
      v41[8] = v170[8];
      v41[9] = v47;
      v41[6] = v45;
      v41[7] = v46;
      v48 = v170[10];
      v49 = v170[11];
      v50 = v170[12];
      v51 = v171;
      *(v41 + 112) = v172;
      v41[12] = v50;
      v41[13] = v51;
      v41[10] = v48;
      v41[11] = v49;
      swift_storeEnumTagMultiPayload();
      sub_1000077D8(v170, v169, &qword_100AE7280, &qword_10082B7E0);
      sub_1001F1160(&qword_100AE7280, &qword_10082B7E0);
      sub_1004CF734();
      sub_1004CF878();
      v52 = v161;
      sub_10079CCA4();
      sub_1000077D8(v52, v166, &qword_100AE71A0, &qword_10082B6C8);
      swift_storeEnumTagMultiPayload();
      sub_1004CF6A8();
      sub_1004CF9BC();
      sub_10079CCA4();
      sub_100007840(v170, &qword_100AE7280, &qword_10082B7E0);
      v53 = v52;
      v54 = &qword_100AE71A0;
      v55 = &qword_10082B6C8;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4(v170);

      if (*(&v170[2] + 1) == 1)
      {
        v74 = sub_1004D0A5C;
        v75 = 0.0;
      }

      else
      {
        sub_1004CEEF0(*&v170[0], *(&v170[0] + 1), *&v170[1], *(&v170[1] + 1), v170[2], *(&v170[2] + 1), *&v170[3]);
        v74 = sub_1004CF1D4;
        v75 = 1.0;
      }

      v127 = swift_allocObject();
      v128 = *(v1 + 80);
      *(v127 + 80) = *(v1 + 64);
      *(v127 + 96) = v128;
      *(v127 + 112) = *(v1 + 96);
      v129 = *(v1 + 16);
      *(v127 + 16) = *v1;
      *(v127 + 32) = v129;
      v130 = *(v1 + 48);
      *(v127 + 48) = *(v1 + 32);
      *(v127 + 64) = v130;
      sub_1004CF1DC(v1, v170);
      v131 = sub_1004CA1C8();
      v132 = swift_getKeyPath();
      v133 = swift_getKeyPath();
      LOBYTE(v170[0]) = 0;
      v169[0] = 0;
      v134 = v156;
      *v156 = v74;
      v134[1] = v127;
      *(v134 + 2) = v75;
      v134[3] = v132;
      *(v134 + 32) = 0;
      v134[5] = v133;
      *(v134 + 48) = 0;
      *(v134 + 49) = v131 & 1;
      swift_storeEnumTagMultiPayload();

      sub_1001F1160(&qword_100AE71D8, &qword_10082B7A8);
      sub_1004CF214();
      sub_1004CF564();
      v135 = v157;
      sub_10079CCA4();
      sub_1000077D8(v135, v166, &qword_100AE7180, &qword_10082B6A8);
      swift_storeEnumTagMultiPayload();
      sub_1004CF6A8();
      sub_1004CF9BC();
      sub_10079CCA4();

      v53 = v135;
      v54 = &qword_100AE7180;
      v55 = &qword_10082B6A8;
    }
  }

  else
  {
    v138 = v16;
    if (v32)
    {
      *v163 = sub_10079D254();
      *v21 = sub_10079C8F4();
      *(v21 + 1) = 0;
      v21[16] = 0;
      v56 = sub_1001F1160(&qword_100AE72B8, &qword_10082B808);
      sub_1004CBA5C(v1, &v21[*(v56 + 44)]);
      v57 = swift_allocObject();
      v58 = *(v1 + 80);
      *(v57 + 80) = *(v1 + 64);
      *(v57 + 96) = v58;
      *(v57 + 112) = *(v1 + 96);
      v59 = *(v1 + 16);
      *(v57 + 16) = *v1;
      *(v57 + 32) = v59;
      v60 = *(v1 + 48);
      *(v57 + 48) = *(v1 + 32);
      *(v57 + 64) = v60;
      sub_1004CF1DC(v1, v170);
      sub_100005920(&qword_100AE7218, &qword_100AE71B0, &qword_10082B6D8, &protocol conformance descriptor for HStack<A>);
      sub_10079D764();

      sub_100007840(v21, &qword_100AE71B0, &qword_10082B6D8);
      sub_10079BFF4();
      v61 = v146;
      sub_10079C884();
      v62 = sub_1004D0928(&qword_100AE72C0, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
      v63 = sub_1004D0928(&qword_100AD7C28, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
      v64 = v150;
      v65 = v147;
      v66 = v152;
      sub_10079BC04();
      (*(v149 + 8))(v61, v66);
      (*(v148 + 8))(v14, v65);
      v67 = v151;
      v68 = v153;
      (*(v151 + 16))(v138, v64, v153);
      *&v170[0] = v65;
      *(&v170[0] + 1) = v66;
      *&v170[1] = v62;
      *(&v170[1] + 1) = v63;
      swift_getOpaqueTypeConformance2();
      v69 = sub_10079BE84();
      (*(v67 + 8))(v64, v68);
      v70 = sub_1001F1160(&qword_100AE7210, &unk_10082B7C0);
      v71 = v162;
      *(v162 + *(v70 + 36)) = v69;
      *(v71 + *(v139 + 36)) = 257;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4(v170);

      if (*(&v170[2] + 1) == 1)
      {
        v72 = sub_1004D0A60;
        v73 = 0.0;
      }

      else
      {
        sub_1004CEEF0(*&v170[0], *(&v170[0] + 1), *&v170[1], *(&v170[1] + 1), v170[2], *(&v170[2] + 1), *&v170[3]);
        v72 = sub_1004CFA50;
        v73 = 1.0;
      }

      v106 = swift_allocObject();
      v107 = *(v2 + 80);
      *(v106 + 80) = *(v2 + 64);
      *(v106 + 96) = v107;
      *(v106 + 112) = *(v2 + 96);
      v108 = *(v2 + 16);
      *(v106 + 16) = *v2;
      *(v106 + 32) = v108;
      v109 = *(v2 + 48);
      *(v106 + 48) = *(v2 + 32);
      *(v106 + 64) = v109;
      v110 = sub_1001F1160(&qword_100AE72C8, &qword_10082B848);
      v111 = &v163[*(v110 + 44)];
      sub_1004CF1DC(v2, v170);
      if (qword_100AD14A8 != -1)
      {
        swift_once();
      }

      v112 = *&qword_100B23168 * -0.5 + 23.0;
      v113 = v162;
      v114 = v140;
      sub_1000077D8(v162, v140, &qword_100AE71B8, &qword_10082B6E0);
      sub_1000077D8(v114, v111, &qword_100AE71B8, &qword_10082B6E0);
      v115 = v111 + *(sub_1001F1160(&qword_100AE72D0, &qword_10082B850) + 48);
      *v115 = v72;
      *(v115 + 8) = v106;
      *(v115 + 16) = 1;
      *(v115 + 24) = v73;
      *(v115 + 32) = 0;
      *(v115 + 40) = v112;

      sub_100007840(v113, &qword_100AE71B8, &qword_10082B6E0);

      sub_100007840(v114, &qword_100AE71B8, &qword_10082B6E0);
      sub_1004C8460();
      sub_10079E474();
      sub_10079C414();
      v116 = v143;
      sub_10020B3C8(v163, v143, &qword_100AE71C0, &qword_10082B6E8);
      v117 = (v116 + *(v141 + 36));
      v118 = v170[5];
      v117[4] = v170[4];
      v117[5] = v118;
      v117[6] = v170[6];
      v119 = v170[1];
      *v117 = v170[0];
      v117[1] = v119;
      v120 = v170[3];
      v117[2] = v170[2];
      v117[3] = v120;
      v121 = sub_1004CA1C8();
      v122 = swift_getKeyPath();
      v123 = swift_getKeyPath();
      v124 = v116;
      v125 = v142;
      sub_10020B3C8(v124, v142, &qword_100AE71C8, &qword_10082B6F0);
      v126 = v125 + *(v158 + 36);
      *v126 = v122;
      *(v126 + 8) = 0;
      *(v126 + 16) = v123;
      *(v126 + 24) = 0;
      *(v126 + 25) = v121 & 1;
      v101 = &qword_100AE71D0;
      v102 = &qword_10082B6F8;
      v92 = v144;
      sub_10020B3C8(v125, v144, &qword_100AE71D0, &qword_10082B6F8);
      sub_1000077D8(v92, v160, &qword_100AE71D0, &qword_10082B6F8);
      swift_storeEnumTagMultiPayload();
      sub_1001F1160(&qword_100AE7280, &qword_10082B7E0);
      sub_1004CF734();
      sub_1004CF878();
      v103 = v161;
      sub_10079CCA4();
      v104 = &qword_100AE71A0;
      v105 = &qword_10082B6C8;
      sub_1000077D8(v103, v166, &qword_100AE71A0, &qword_10082B6C8);
    }

    else
    {
      *v21 = sub_10079C8F4();
      *(v21 + 1) = 0;
      v21[16] = 0;
      v76 = sub_1001F1160(&qword_100AE72B8, &qword_10082B808);
      sub_1004CBA5C(v1, &v21[*(v76 + 44)]);
      v77 = swift_allocObject();
      v78 = *(v1 + 80);
      *(v77 + 80) = *(v1 + 64);
      *(v77 + 96) = v78;
      *(v77 + 112) = *(v1 + 96);
      v79 = *(v1 + 16);
      *(v77 + 16) = *v1;
      *(v77 + 32) = v79;
      v80 = *(v1 + 48);
      *(v77 + 48) = *(v1 + 32);
      *(v77 + 64) = v80;
      sub_1004CF1DC(v1, v170);
      sub_100005920(&qword_100AE7218, &qword_100AE71B0, &qword_10082B6D8, &protocol conformance descriptor for HStack<A>);
      v137 = v6;
      sub_10079D764();

      sub_100007840(v21, &qword_100AE71B0, &qword_10082B6D8);
      v81 = v14;
      sub_10079BFF4();
      v82 = v146;
      sub_10079C884();
      v83 = sub_1004D0928(&qword_100AE72C0, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
      v84 = sub_1004D0928(&qword_100AD7C28, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
      v85 = v150;
      v86 = v147;
      v87 = v152;
      sub_10079BC04();
      (*(v149 + 8))(v82, v87);
      (*(v148 + 8))(v81, v86);
      v88 = v151;
      v89 = v153;
      (*(v151 + 16))(v138, v85, v153);
      *&v170[0] = v86;
      *(&v170[0] + 1) = v87;
      *&v170[1] = v83;
      *(&v170[1] + 1) = v84;
      swift_getOpaqueTypeConformance2();
      v90 = sub_10079BE84();
      (*(v88 + 8))(v85, v89);
      v91 = sub_1001F1160(&qword_100AE7210, &unk_10082B7C0);
      v92 = v137;
      *&v137[*(v91 + 36)] = v90;
      v93 = swift_getKeyPath();
      v94 = (v92 + *(sub_1001F1160(&qword_100AE7200, &qword_10082B7B8) + 36));
      *v94 = v93;
      sub_1001F1160(&unk_100ADB740, &qword_100819F00);
      swift_storeEnumTagMultiPayload();
      *(v94 + *(type metadata accessor for ClipHorizontallyWithFadeout(0) + 20)) = 0x4034000000000000;
      sub_1004C8460();
      sub_10079E474();
      sub_10079BE54();
      v95 = (v92 + *(sub_1001F1160(&qword_100AE71F0, &qword_10082B7B0) + 36));
      v96 = v170[1];
      *v95 = v170[0];
      v95[1] = v96;
      v95[2] = v170[2];
      LOBYTE(v93) = sub_1004CA1C8();
      v97 = swift_getKeyPath();
      v98 = swift_getKeyPath();
      v99 = v156;
      v100 = v92 + *(v155 + 36);
      *v100 = v97;
      *(v100 + 8) = 0;
      *(v100 + 16) = v98;
      *(v100 + 24) = 0;
      *(v100 + 25) = v93 & 1;
      v101 = &qword_100AE7188;
      v102 = &qword_10082B6B0;
      sub_1000077D8(v92, v99, &qword_100AE7188, &qword_10082B6B0);
      swift_storeEnumTagMultiPayload();
      sub_1001F1160(&qword_100AE71D8, &qword_10082B7A8);
      sub_1004CF214();
      sub_1004CF564();
      v103 = v157;
      sub_10079CCA4();
      v104 = &qword_100AE7180;
      v105 = &qword_10082B6A8;
      sub_1000077D8(v103, v166, &qword_100AE7180, &qword_10082B6A8);
    }

    swift_storeEnumTagMultiPayload();
    sub_1004CF6A8();
    sub_1004CF9BC();
    sub_10079CCA4();
    sub_100007840(v103, v104, v105);
    v53 = v92;
    v54 = v101;
    v55 = v102;
  }

  return sub_100007840(v53, v54, v55);
}

uint64_t sub_1004CA1C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v8);

  v0 = v10;
  if (v10 == 1)
  {
    return 0;
  }

  v1 = v8[0];
  v2 = v8[1];
  v3 = v8[2];
  v4 = v8[3];
  v5 = v9;
  v6 = v11;
  sub_1000260E8(v10, v11);
  sub_1004CEEF0(v1, v2, v3, v4, v5, v0, v6);
  if (!v0)
  {
    return 0;
  }

  sub_100007020(v0, v6);
  return 1;
}

double sub_1004CA2B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v15);

  v4 = 0.0;
  if (v20 == 1)
  {
    v5 = 0.0;
  }

  else
  {
    sub_1004CEEF0(v15, v16, v17, v18, v19, v20, v21);
    v5 = 1.0;
  }

  v6 = swift_allocObject();
  v7 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(a1 + 96);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  v9 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004CF1DC(a1, &v15);
  sub_10079B9A4(&v15);

  if (v20 != 1)
  {
    sub_1004CEEF0(v15, v16, v17, v18, v19, v20, v21);
    v4 = 1.0;
  }

  v10 = swift_allocObject();
  v11 = *(a1 + 80);
  *(v10 + 80) = *(a1 + 64);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(a1 + 96);
  v12 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v12;
  v13 = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = v13;
  sub_1004CF1DC(a1, &v15);
  if (qword_100AD14A8 != -1)
  {
    swift_once();
  }

  result = *&qword_100B23168 * -0.5 + 23.0;
  *a2 = sub_1004D0A5C;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = 257;
  *(a2 + 32) = sub_1004D0A60;
  *(a2 + 40) = v10;
  *(a2 + 48) = 1;
  *(a2 + 56) = v4;
  *(a2 + 64) = 0;
  *(a2 + 72) = result;
  return result;
}

uint64_t sub_1004CA538@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v88 = a2;
  v89 = a1;
  v112 = a5;
  v108 = sub_10079C894();
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10079C004();
  v107 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1001F1160(&qword_100AE71A8, &qword_10082B6D0);
  v111 = *(v109 - 8);
  __chkstk_darwin(v109);
  v104 = &v76 - v9;
  v99 = sub_10079DD44();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10079C3D4();
  __chkstk_darwin(v87);
  v90 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  __chkstk_darwin(v13);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10079C2A4();
  v78 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v76 - v17;
  v19 = sub_10079C2A4();
  v79 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v76 - v20;
  v22 = sub_10079C2A4();
  v83 = *(v22 - 8);
  __chkstk_darwin(v22);
  v76 = &v76 - v23;
  sub_1001F1234(&qword_100AD97F8, &qword_100816BF0);
  v81 = sub_10079C2A4();
  v91 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v76 - v24;
  v85 = sub_10079C2A4();
  v92 = *(v85 - 8);
  __chkstk_darwin(v85);
  v80 = &v76 - v25;
  v86 = sub_10079C2A4();
  v93 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v76 - v26;
  v94 = sub_10079C2A4();
  v101 = *(v94 - 8);
  __chkstk_darwin(v94);
  v84 = &v76 - v27;
  sub_1001F1234(&qword_100AD7228, &qword_100813FB8);
  v100 = sub_10079C2A4();
  v102 = *(v100 - 8);
  __chkstk_darwin(v100);
  v95 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v29);
  v97 = &v76 - v31;
  v89(v30);
  sub_10079D284();
  sub_10079DBE4();
  (*(v12 + 8))(v15, a3);
  sub_10079E474();
  v131 = a4;
  v132 = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  sub_10079DB24();
  (*(v78 + 8))(v18, v16);
  v129 = WitnessTable;
  v130 = &protocol witness table for _FlexFrameLayout;
  v32 = swift_getWitnessTable();
  v33 = v76;
  sub_1003FB220(v19, v32, 1.0);
  (*(v79 + 8))(v21, v19);
  v34 = *(v87 + 20);
  v35 = enum case for RoundedCornerStyle.continuous(_:);
  v36 = sub_10079C9E4();
  v37 = v90;
  (*(*(v36 - 8) + 104))(&v90[v34], v35, v36);
  __asm { FMOV            V0.2D, #14.0 }

  *v37 = _Q0;
  v43 = v37;
  v44 = sub_10020AEE4();
  v127 = v32;
  v128 = v44;
  v45 = swift_getWitnessTable();
  sub_1004D0928(&qword_100AE4510, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v46 = v77;
  sub_10079DC74();
  sub_1002B6360(v43);
  (*(v83 + 8))(v33, v22);
  (*(v98 + 104))(v96, enum case for Color.RGBColorSpace.sRGBLinear(_:), v99);
  sub_10079DE84();
  v47 = sub_100005920(&unk_100AF6660, &qword_100AD97F8, &qword_100816BF0, &protocol conformance descriptor for _ClipEffect<A>);
  v125 = v45;
  v126 = v47;
  v48 = v81;
  v49 = swift_getWitnessTable();
  v50 = v80;
  sub_10079DB74();

  (*(v91 + 8))(v46, v48);
  sub_10079D2B4();
  v123 = v49;
  v124 = &protocol witness table for _ShadowEffect;
  v89 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v51 = v85;
  v52 = swift_getWitnessTable();
  v53 = v82;
  sub_10079DBE4();
  (*(v92 + 8))(v50, v51);
  sub_10079D2A4();
  v121 = v52;
  v122 = &protocol witness table for _PaddingLayout;
  v54 = v86;
  v55 = swift_getWitnessTable();
  v56 = v84;
  sub_10079DBE4();
  (*(v93 + 8))(v53, v54);
  v57 = v103;
  sub_10079BFF4();
  v58 = v105;
  sub_10079C884();
  v59 = sub_1004D0928(&qword_100AE72C0, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
  v60 = sub_1004D0928(&qword_100AD7C28, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v61 = v104;
  v62 = v106;
  v63 = v108;
  sub_10079BC04();
  (*(v110 + 8))(v58, v63);
  (*(v107 + 8))(v57, v62);
  v119 = v55;
  v120 = &protocol witness table for _PaddingLayout;
  v64 = v94;
  v65 = swift_getWitnessTable();
  v115 = v62;
  v116 = v63;
  v117 = v59;
  v118 = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v95;
  v68 = v109;
  v69 = sub_1004C7A78(v61, v64, v109, v65, OpaqueTypeConformance2);
  (*(v111 + 8))(v61, v68, v69);
  (*(v101 + 8))(v56, v64);
  v70 = sub_100005920(&qword_100AD7220, &qword_100AD7228, &qword_100813FB8, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v113 = v65;
  v114 = v70;
  v71 = v100;
  swift_getWitnessTable();
  v72 = v97;
  sub_10039232C();
  v73 = *(v102 + 8);
  v73(v67, v71);
  sub_10039232C();
  return (v73)(v72, v71);
}

uint64_t sub_1004CB438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v32 = sub_1001F1160(&qword_100AE71B0, &qword_10082B6D8);
  __chkstk_darwin(v32);
  v4 = &v31 - v3;
  v34 = sub_1001F1160(&qword_100AE74C0, &qword_10082BB10);
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v31 - v5;
  v7 = sub_1001F1160(&qword_100AE74C8, &qword_10082BB18);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_1001F1160(&qword_100AE74D0, &qword_10082BB20);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  *v4 = sub_10079C8F4();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v15 = sub_1001F1160(&qword_100AE72B8, &qword_10082B808);
  sub_1004CBA5C(a1, &v4[*(v15 + 44)]);
  v16 = swift_allocObject();
  v17 = *(a1 + 80);
  *(v16 + 80) = *(a1 + 64);
  *(v16 + 96) = v17;
  *(v16 + 112) = *(a1 + 96);
  v18 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v18;
  v19 = *(a1 + 48);
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 64) = v19;
  sub_1004CF1DC(a1, v36);
  sub_100005920(&qword_100AE7218, &qword_100AE71B0, &qword_10082B6D8, &protocol conformance descriptor for HStack<A>);
  sub_10079D764();

  sub_100007840(v4, &qword_100AE71B0, &qword_10082B6D8);
  sub_10079E474();
  sub_10079C414();
  (*(v33 + 32))(v10, v6, v34);
  v20 = &v10[*(v8 + 44)];
  v21 = v36[5];
  *(v20 + 4) = v36[4];
  *(v20 + 5) = v21;
  *(v20 + 6) = v36[6];
  v22 = v36[1];
  *v20 = v36[0];
  *(v20 + 1) = v22;
  v23 = v36[3];
  *(v20 + 2) = v36[2];
  *(v20 + 3) = v23;
  sub_10079E474();
  sub_10079BE54();
  sub_10020B3C8(v10, v14, &qword_100AE74C8, &qword_10082BB18);
  v24 = &v14[*(v12 + 44)];
  v25 = v36[8];
  *v24 = v36[7];
  *(v24 + 1) = v25;
  *(v24 + 2) = v36[9];
  KeyPath = swift_getKeyPath();
  v27 = sub_1001F1160(&qword_100AE74D8, &qword_10082BB28);
  v28 = v35;
  v29 = (v35 + *(v27 + 36));
  *v29 = KeyPath;
  sub_1001F1160(&unk_100ADB740, &qword_100819F00);
  swift_storeEnumTagMultiPayload();
  *(v29 + *(type metadata accessor for ClipHorizontallyWithFadeout(0) + 20)) = 0x4034000000000000;
  return sub_10020B3C8(v14, v28, &qword_100AE74D0, &qword_10082BB20);
}

uint64_t sub_1004CB87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE71B0, &qword_10082B6D8);
  __chkstk_darwin(v4);
  v6 = &v24[-v5 - 8];
  *v6 = sub_10079C8F4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_1001F1160(&qword_100AE72B8, &qword_10082B808);
  sub_1004CBA5C(a1, &v6[*(v7 + 44)]);
  v8 = swift_allocObject();
  v9 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(a1 + 96);
  v10 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  v11 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v11;
  sub_1004CF1DC(a1, v24);
  sub_100005920(&qword_100AE7218, &qword_100AE71B0, &qword_10082B6D8, &protocol conformance descriptor for HStack<A>);
  sub_10079D764();

  sub_100007840(v6, &qword_100AE71B0, &qword_10082B6D8);
  v12 = sub_10079D2F4();
  sub_10079BBA4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = sub_1001F1160(&qword_100AE72D8, &qword_10082B858);
  v22 = a2 + *(result + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_1004CBA5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v276 = a2;
  v250 = sub_1001F1160(&qword_100AE72E0, &qword_10082B860);
  __chkstk_darwin(v250);
  v252 = &v206 - v3;
  v275 = sub_1001F1160(&qword_100AE72E8, &qword_10082B868);
  __chkstk_darwin(v275);
  v253 = &v206 - v4;
  v251 = sub_1001F1160(&qword_100AE72F0, &qword_10082B870);
  __chkstk_darwin(v251);
  v234 = &v206 - v5;
  v6 = sub_1001F1160(&qword_100AE72F8, &qword_10082B878);
  v231 = *(v6 - 8);
  v232 = v6;
  __chkstk_darwin(v6);
  v228 = &v206 - v7;
  v8 = sub_1001F1160(&qword_100AE7300, &qword_10082B880);
  __chkstk_darwin(v8 - 8);
  v233 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v254 = &v206 - v11;
  v259 = sub_1001F1160(&qword_100AE7308, &qword_10082B888);
  __chkstk_darwin(v259);
  v244 = &v206 - v12;
  v257 = sub_1001F1160(&qword_100AE7310, &qword_10082B890);
  __chkstk_darwin(v257);
  v258 = &v206 - v13;
  *(&v271 + 1) = sub_1001F1160(&qword_100AE7318, &qword_10082B898);
  __chkstk_darwin(*(&v271 + 1));
  v260 = &v206 - v14;
  v218 = sub_10079D074();
  v216 = *(v218 - 8);
  __chkstk_darwin(v218);
  v211 = &v206 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_1001F1160(&qword_100AE7320, &qword_10082B8A0);
  __chkstk_darwin(v213);
  v210 = (&v206 - v16);
  v217 = sub_1001F1160(&qword_100AE7328, &qword_10082B8A8);
  v215 = *(v217 - 8);
  __chkstk_darwin(v217);
  v212 = &v206 - v17;
  v225 = sub_1001F1160(&qword_100AE7330, &qword_10082B8B0);
  __chkstk_darwin(v225);
  v214 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v219 = &v206 - v20;
  v246 = sub_1001F1160(&qword_100AE7338, &qword_10082B8B8);
  __chkstk_darwin(v246);
  v248 = &v206 - v21;
  v222 = sub_1001F1160(&qword_100AE7340, &qword_10082B8C0);
  __chkstk_darwin(v222);
  v224 = &v206 - v22;
  v247 = sub_1001F1160(&qword_100AE7348, &qword_10082B8C8);
  __chkstk_darwin(v247);
  v226 = &v206 - v23;
  v223 = sub_1001F1160(&qword_100AE7350, &qword_10082B8D0);
  __chkstk_darwin(v223);
  v25 = (&v206 - v24);
  v245 = sub_1001F1160(&qword_100AE7358, &qword_10082B8D8);
  __chkstk_darwin(v245);
  v221 = &v206 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v220 = &v206 - v28;
  __chkstk_darwin(v29);
  v262 = &v206 - v30;
  __chkstk_darwin(v31);
  v267 = &v206 - v32;
  v33 = sub_10079BC44();
  v238 = *(v33 - 8);
  v239 = v33;
  __chkstk_darwin(v33);
  v236 = &v206 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v237 = &v206 - v36;
  v256 = sub_1001F1160(&qword_100AE7360, &qword_10082B8E0);
  __chkstk_darwin(v256);
  v249 = &v206 - v37;
  v265 = sub_1001F1160(&qword_100AE7368, &qword_10082B8E8);
  __chkstk_darwin(v265);
  v243 = &v206 - v38;
  v273 = sub_1001F1160(&qword_100AE7370, &qword_10082B8F0);
  __chkstk_darwin(v273);
  v274 = &v206 - v39;
  v268 = sub_1001F1160(&qword_100AE7378, &qword_10082B8F8);
  __chkstk_darwin(v268);
  v270 = &v206 - v40;
  v263 = sub_1001F1160(&qword_100AE7380, &qword_10082B900);
  __chkstk_darwin(v263);
  v42 = &v206 - v41;
  v269 = sub_1001F1160(&qword_100AE7388, &qword_10082B908);
  __chkstk_darwin(v269);
  v264 = &v206 - v43;
  v272 = sub_1001F1160(&qword_100AE7390, &qword_10082B910);
  __chkstk_darwin(v272);
  *&v271 = &v206 - v44;
  v266 = sub_1001F1160(&qword_100AE7398, &qword_10082B918);
  __chkstk_darwin(v266);
  v230 = &v206 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v227 = &v206 - v47;
  __chkstk_darwin(v48);
  v242 = &v206 - v49;
  __chkstk_darwin(v50);
  v241 = &v206 - v51;
  __chkstk_darwin(v52);
  v261 = &v206 - v53;
  __chkstk_darwin(v54);
  v255 = &v206 - v55;
  __chkstk_darwin(v56);
  v58 = &v206 - v57;
  v59 = sub_1001F1160(&qword_100AE73A0, &qword_10082B920);
  __chkstk_darwin(v59);
  v61 = &v206 - v60;
  v62 = a1[11];
  swift_getKeyPath();
  swift_getKeyPath();
  v240 = v62;
  sub_10079B9A4(&v295);

  v63 = *(&v297 + 1);
  if (*(&v297 + 1) != 1)
  {
    v207 = v25;
    v229 = a1;
    v76 = v295;
    v77 = v296;
    v78 = v297;
    v79 = v298;
    sub_1002AEF10(v295, *(&v295 + 1), v296, *(&v296 + 1), v297);
    v235 = v76;
    v208 = v77;
    v209 = *(&v76 + 1);
    sub_1004CEEF0(v76, *(&v76 + 1), v77, *(&v77 + 1), v78, v63, v79);
    if (v78 <= 1u)
    {
      if (!v78)
      {
        v80 = v243;
        v81 = v235;
        v82 = v209;
        sub_1004CE3C0(v235, v209, v243);
        sub_100471118(v81, v82, v208, *(&v77 + 1), 0);
        v65 = &qword_100AE7368;
        v66 = &qword_10082B8E8;
        v61 = v80;
        sub_1000077D8(v80, v42, &qword_100AE7368, &qword_10082B8E8);
        goto LABEL_4;
      }

      v265 = *(&v77 + 1);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4(&v295);

      v106 = *(&v297 + 1);
      if (*(&v297 + 1) != 1)
      {
        v107 = v295;
        v109 = *(&v296 + 1);
        v108 = v296;
        v110 = v297;
        v111 = v298;
        v112 = v297;
        sub_1002AEF10(v295, *(&v295 + 1), v296, *(&v296 + 1), v297);
        sub_1004CEEF0(v107, *(&v107 + 1), v108, v109, v110, v106, v111);
        if (v112 == 1)
        {
          sub_100471118(v107, *(&v107 + 1), v108, v109, 1u);
          if (v108 != 2)
          {
            if ((v108 & 1) == 0)
            {

LABEL_45:
              i = v229;
              v172 = v229[6];
              if (!v172)
              {
                goto LABEL_52;
              }

              swift_getKeyPath();
              swift_getKeyPath();
              v173 = v172;
              v174 = v237;
              sub_10079B9A4(v237);

              v176 = v238;
              v175 = v239;
              v177 = v236;
              (*(v238 + 104))(v236, enum case for ColorScheme.light(_:), v239);
              sub_10079BC34();
              v178 = *(v176 + 8);
              v178(v177, v175);
              v178(v174, v175);
              v179 = sub_10079DE54();

              v180 = sub_10079DF24();
              KeyPath = swift_getKeyPath();
              v182 = v267;
              sub_1004CE700(32, 0xE100000000000000);
              v183 = v262;
              v184 = v235;
              v185 = v209;
              sub_1004CE700(v235, v209);
              sub_100471118(v184, v185, v208, v265, 1u);
              v186 = v220;
              sub_1000077D8(v182, v220, &qword_100AE7358, &qword_10082B8D8);
              v187 = v221;
              sub_1000077D8(v183, v221, &qword_100AE7358, &qword_10082B8D8);
              v188 = v207;
              *v207 = v180;
              *(v188 + 8) = KeyPath;
              *(v188 + 16) = v179;
              v189 = sub_1001F1160(&qword_100AE7490, &qword_10082BA08);
              sub_1000077D8(v186, v188 + *(v189 + 48), &qword_100AE7358, &qword_10082B8D8);
              sub_1000077D8(v187, v188 + *(v189 + 64), &qword_100AE7358, &qword_10082B8D8);
              swift_retain_n();
              swift_retain_n();
              swift_retain_n();
              sub_100007840(v187, &qword_100AE7358, &qword_10082B8D8);
              sub_100007840(v186, &qword_100AE7358, &qword_10082B8D8);

              sub_1000077D8(v188, v224, &qword_100AE7350, &qword_10082B8D0);
              swift_storeEnumTagMultiPayload();
              sub_100005920(&qword_100AE7420, &qword_100AE7350, &qword_10082B8D0, &protocol conformance descriptor for TupleView<A>);
              sub_1004D0240();
              v190 = v226;
              sub_10079CCA4();
              sub_1000077D8(v190, v248, &qword_100AE7348, &qword_10082B8C8);
              swift_storeEnumTagMultiPayload();
              sub_1004D0188();
              sub_1004D036C();
              v61 = v249;
              sub_10079CCA4();

              sub_100007840(v190, &qword_100AE7348, &qword_10082B8C8);
              sub_100007840(v188, &qword_100AE7350, &qword_10082B8D0);
              sub_100007840(v262, &qword_100AE7358, &qword_10082B8D8);
              v145 = v267;
              goto LABEL_37;
            }

            v113 = sub_1007A3AB4();

            if (v113)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          sub_100471118(v107, *(&v107 + 1), v108, v109, v110);
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4(&v295);

      v135 = *(&v297 + 1);
      v61 = v249;
      if (*(&v297 + 1) != 1)
      {
        v136 = v295;
        v138 = *(&v296 + 1);
        v137 = v296;
        v139 = v297;
        v140 = v298;
        v141 = v297;
        sub_1002AEF10(v295, *(&v295 + 1), v296, *(&v296 + 1), v297);
        sub_1004CEEF0(v136, *(&v136 + 1), v137, v138, v139, v135, v140);
        if (v141 == 1)
        {
          sub_100471118(v136, *(&v136 + 1), v137, v138, 1u);
          if (v137 != 2)
          {
            if (v137)
            {

LABEL_48:
              v192 = sub_10079C8F4();
              v193 = v210;
              *v210 = v192;
              *(v193 + 8) = 0;
              *(v193 + 16) = 0;
              v194 = sub_1001F1160(&qword_100AE7488, &qword_10082BA00);
              v195 = v235;
              v196 = v209;
              sub_1004CE908(v229, v235, v209, v193 + *(v194 + 44));
              v197 = v211;
              sub_10079D044();
              v198 = sub_100005920(&qword_100AE7430, &qword_100AE7320, &qword_10082B8A0, &protocol conformance descriptor for HStack<A>);
              v200 = v212;
              v199 = v213;
              sub_10079D9A4();
              (*(v216 + 8))(v197, v218);
              sub_100007840(v193, &qword_100AE7320, &qword_10082B8A0);
              v201 = v195;
              *&v295 = v195;
              *(&v295 + 1) = v196;
              *&v291 = v199;
              *(&v291 + 1) = v198;
              swift_getOpaqueTypeConformance2();
              sub_100206ECC();
              v202 = v214;
              v203 = v217;
              sub_10079D8E4();
              (*(v215 + 8))(v200, v203);
              sub_100471118(v201, v196, v208, v265, 1u);
              v204 = v219;
              sub_10079C284();
              sub_100007840(v202, &qword_100AE7330, &qword_10082B8B0);
              sub_1000077D8(v204, v224, &qword_100AE7330, &qword_10082B8B0);
              swift_storeEnumTagMultiPayload();
              sub_100005920(&qword_100AE7420, &qword_100AE7350, &qword_10082B8D0, &protocol conformance descriptor for TupleView<A>);
              sub_1004D0240();
              v205 = v226;
              sub_10079CCA4();
              sub_1000077D8(v205, v248, &qword_100AE7348, &qword_10082B8C8);
              swift_storeEnumTagMultiPayload();
              sub_1004D0188();
              sub_1004D036C();
              sub_10079CCA4();
              sub_100007840(v205, &qword_100AE7348, &qword_10082B8C8);
              sub_100007840(v204, &qword_100AE7330, &qword_10082B8B0);
              goto LABEL_38;
            }

            v191 = sub_1007A3AB4();

            if (v191)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          sub_100471118(v136, *(&v136 + 1), v137, v138, v139);
        }
      }

      v142 = v267;
      v143 = v235;
      v144 = v209;
      sub_1004CE700(v235, v209);
      sub_100471118(v143, v144, v208, v265, 1u);
      sub_1000077D8(v142, v248, &qword_100AE7358, &qword_10082B8D8);
      swift_storeEnumTagMultiPayload();
      sub_1004D0188();
      sub_1004D036C();
      sub_10079CCA4();
      v145 = v142;
LABEL_37:
      sub_100007840(v145, &qword_100AE7358, &qword_10082B8D8);
LABEL_38:
      v65 = &qword_100AE7360;
      v66 = &qword_10082B8E0;
      sub_1000077D8(v61, v258, &qword_100AE7360, &qword_10082B8E0);
      swift_storeEnumTagMultiPayload();
      sub_1004D00FC();
      sub_100005920(&qword_100AE7460, &qword_100AE7308, &qword_10082B888, &protocol conformance descriptor for TupleView<A>);
      v146 = v260;
      sub_10079CCA4();
      v68 = &qword_100AE7318;
      v69 = &qword_10082B898;
      sub_1000077D8(v146, v270, &qword_100AE7318, &qword_10082B898);
      swift_storeEnumTagMultiPayload();
      sub_1004CFD4C();
      sub_1004D0044();
      v70 = v271;
      sub_10079CCA4();
      v71 = v146;
      goto LABEL_5;
    }

    v265 = *(&v77 + 1);
    v83 = v229;
    v84 = v262;
    if (v78 == 2)
    {
      v85 = v229[6];
      v86 = v267;
      v87 = v209;
      v88 = v235;
      if (v85)
      {
        v89 = v85;
        v90 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
        v91 = v255;
        sub_1004CE080(v88, v87, v90, v255);

        v92 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();

        v93 = v261;
        sub_1004CE080(58, 0xE100000000000000, v92, v261);

        v94 = sub_10079DDC4();
        v95 = swift_getKeyPath();
        sub_10079E474();
        sub_10079BE54();
        *&v295 = v95;
        *(&v295 + 1) = v94;
        sub_1004CE700(v208, v265);

        v96 = v241;
        sub_1000077D8(v91, v241, &qword_100AE7398, &qword_10082B918);
        v97 = v242;
        sub_1000077D8(v93, v242, &qword_100AE7398, &qword_10082B918);
        v283 = v295;
        v284 = v296;
        v285 = v297;
        v286 = v298;
        sub_1000077D8(v86, v84, &qword_100AE7358, &qword_10082B8D8);
        v98 = v244;
        sub_1000077D8(v96, v244, &qword_100AE7398, &qword_10082B918);
        v99 = sub_1001F1160(&qword_100AE7480, &qword_10082B9F8);
        sub_1000077D8(v97, v98 + v99[12], &qword_100AE7398, &qword_10082B918);
        v100 = (v98 + v99[16]);
        v101 = v284;
        v287 = v283;
        v288 = v284;
        v102 = v285;
        v103 = v286;
        v289 = v285;
        v290 = v286;
        *v100 = v283;
        v100[1] = v101;
        v100[2] = v102;
        v100[3] = v103;
        sub_1000077D8(v84, v98 + v99[20], &qword_100AE7358, &qword_10082B8D8);
        sub_1000077D8(&v295, &v291, &qword_100AD4CA8, &qword_10080EEF0);
        sub_1000077D8(&v287, &v291, &qword_100AD4CA8, &qword_10080EEF0);
        sub_100007840(v84, &qword_100AE7358, &qword_10082B8D8);
        v291 = v283;
        v292 = v284;
        v293 = v285;
        v294 = v286;
        sub_100007840(&v291, &qword_100AD4CA8, &qword_10080EEF0);
        sub_100007840(v97, &qword_100AE7398, &qword_10082B918);
        sub_100007840(v96, &qword_100AE7398, &qword_10082B918);
        sub_1000077D8(v98, v258, &qword_100AE7308, &qword_10082B888);
        swift_storeEnumTagMultiPayload();
        sub_1004D00FC();
        sub_100005920(&qword_100AE7460, &qword_100AE7308, &qword_10082B888, &protocol conformance descriptor for TupleView<A>);
        v104 = v260;
        sub_10079CCA4();
        sub_1000077D8(v104, v270, &qword_100AE7318, &qword_10082B898);
        swift_storeEnumTagMultiPayload();
        sub_1004CFD4C();
        sub_1004D0044();
        v105 = v271;
        sub_10079CCA4();
        sub_100007840(v104, &qword_100AE7318, &qword_10082B898);
        sub_1000077D8(v105, v274, &qword_100AE7390, &qword_10082B910);
        swift_storeEnumTagMultiPayload();
        sub_1004CFCC0();
        sub_1004D0598();
        sub_10079CCA4();
        sub_100007840(&v295, &qword_100AD4CA8, &qword_10080EEF0);
        sub_100007840(v105, &qword_100AE7390, &qword_10082B910);
        sub_100007840(v98, &qword_100AE7308, &qword_10082B888);
        sub_100007840(v267, &qword_100AE7358, &qword_10082B8D8);
        sub_100007840(v261, &qword_100AE7398, &qword_10082B918);
        v72 = v255;
        v73 = &qword_100AE7398;
        v74 = &qword_10082B918;
        return sub_100007840(v72, v73, v74);
      }

      goto LABEL_50;
    }

    v114 = v267;
    v115 = v209;
    if (!v265)
    {
      v125 = v229[6];
      if (v125)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v126 = v125;
        v127 = v237;
        sub_10079B9A4(v237);

        v129 = v238;
        v128 = v239;
        v130 = v236;
        (*(v238 + 104))(v236, enum case for ColorScheme.light(_:), v239);
        v131 = sub_10079BC34();
        v132 = *(v129 + 8);
        v132(v130, v128);
        v132(v127, v128);
        if (v131)
        {
          v133 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
        }

        else
        {
          v133 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
        }

        v147 = v133;

        v148 = v230;
        sub_1004CE080(v235, v115, v147, v230);

        v65 = &qword_100AE7398;
        v66 = &qword_10082B918;
        sub_1000077D8(v148, v252, &qword_100AE7398, &qword_10082B918);
        swift_storeEnumTagMultiPayload();
        sub_100005920(&qword_100AE73A8, &qword_100AE72F0, &qword_10082B870, &protocol conformance descriptor for TupleView<A>);
        sub_1004CFA58();
        v149 = v253;
        sub_10079CCA4();
        sub_1000077D8(v149, v274, &qword_100AE72E8, &qword_10082B868);
        swift_storeEnumTagMultiPayload();
        sub_1004CFCC0();
        sub_1004D0598();
        sub_10079CCA4();
        sub_100007840(v149, &qword_100AE72E8, &qword_10082B868);
        v72 = v148;
        goto LABEL_6;
      }

      goto LABEL_50;
    }

    *&v295 = v235;
    *(&v295 + 1) = v209;
    sub_1002060B4();
    if (sub_1007A28A4())
    {
      v116 = v83[6];
      if (!v116)
      {
LABEL_50:
        for (i = v83[7]; ; i = i[7])
        {
LABEL_51:
          type metadata accessor for ChromeStyle(0);
          sub_1004D0928(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
          sub_10079C474();
          __break(1u);
LABEL_52:
          ;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v117 = v116;
      v118 = v237;
      *(&v271 + 1) = v117;
      sub_10079B9A4(v237);

      v120 = v238;
      v119 = v239;
      v121 = v236;
      (*(v238 + 104))(v236, enum case for ColorScheme.light(_:), v239);
      v122 = sub_10079BC34();
      v123 = *(v120 + 8);
      v123(v121, v119);
      v123(v118, v119);
      if (v122)
      {
        v124 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
      }

      else
      {
        v124 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
      }

      v150 = v124;

      v151 = v227;
      sub_1004CE080(v235, v115, v150, v227);

      v152 = sub_10079DDC4();
      *(&v271 + 1) = v152;
      v153 = swift_getKeyPath();
      *&v271 = v153;
      sub_10079E474();
      sub_10079BE54();
      sub_1004CE700(10649826, 0xA300000000000000);
      v270 = sub_10079DDC4();
      v154 = swift_getKeyPath();
      sub_10079E474();
      sub_10079BE54();
      v155 = v261;
      sub_1000077D8(v151, v261, &qword_100AE7398, &qword_10082B918);
      sub_1000077D8(v267, v84, &qword_100AE7358, &qword_10082B8D8);
      v156 = v228;
      sub_1000077D8(v155, v228, &qword_100AE7398, &qword_10082B918);
      v157 = sub_1001F1160(&qword_100AE7478, &unk_10082B9E8);
      v158 = (v156 + v157[12]);
      *&v283 = v153;
      *(&v283 + 1) = v152;
      v159 = v281;
      v285 = v281;
      v286 = v282;
      v160 = v280;
      v284 = v280;
      v161 = v282;
      *v158 = v283;
      v158[1] = v160;
      v158[2] = v159;
      v158[3] = v161;
      sub_1000077D8(v84, v156 + v157[16], &qword_100AE7358, &qword_10082B8D8);
      v162 = (v156 + v157[20]);
      *&v287 = v154;
      v163 = v270;
      *(&v287 + 1) = v270;
      v164 = v277;
      v165 = v278;
      v288 = v277;
      v289 = v278;
      v166 = v279;
      v290 = v279;
      *v162 = v287;
      v162[1] = v164;
      v162[2] = v165;
      v162[3] = v166;
      sub_1000077D8(&v283, &v295, &qword_100AD4CA8, &qword_10080EEF0);
      sub_1000077D8(&v287, &v295, &qword_100AD4CA8, &qword_10080EEF0);
      sub_100007840(v267, &qword_100AE7358, &qword_10082B8D8);
      sub_100007840(v151, &qword_100AE7398, &qword_10082B918);
      *&v291 = v154;
      *(&v291 + 1) = v163;
      v114 = v267;
      v292 = v277;
      v293 = v278;
      v294 = v279;
      sub_100007840(&v291, &qword_100AD4CA8, &qword_10080EEF0);
      sub_100007840(v262, &qword_100AE7358, &qword_10082B8D8);
      v295 = v271;
      v296 = v280;
      v297 = v281;
      v298 = v282;
      v84 = v262;
      sub_100007840(&v295, &qword_100AD4CA8, &qword_10080EEF0);
      sub_100007840(v155, &qword_100AE7398, &qword_10082B918);
      v134 = v254;
      sub_10020B3C8(v156, v254, &qword_100AE72F8, &qword_10082B878);
      (*(v231 + 56))(v134, 0, 1, v232);
    }

    else
    {

      v134 = v254;
      (*(v231 + 56))(v254, 1, 1, v232);
    }

    sub_1004CE700(v208, v265);

    v167 = v233;
    sub_1000077D8(v134, v233, &qword_100AE7300, &qword_10082B880);
    sub_1000077D8(v114, v84, &qword_100AE7358, &qword_10082B8D8);
    v168 = v234;
    sub_1000077D8(v167, v234, &qword_100AE7300, &qword_10082B880);
    v169 = sub_1001F1160(&qword_100AE7470, &qword_10082B9B0);
    sub_1000077D8(v84, v168 + *(v169 + 48), &qword_100AE7358, &qword_10082B8D8);
    sub_100007840(v84, &qword_100AE7358, &qword_10082B8D8);
    sub_100007840(v167, &qword_100AE7300, &qword_10082B880);
    sub_1000077D8(v168, v252, &qword_100AE72F0, &qword_10082B870);
    swift_storeEnumTagMultiPayload();
    sub_100005920(&qword_100AE73A8, &qword_100AE72F0, &qword_10082B870, &protocol conformance descriptor for TupleView<A>);
    sub_1004CFA58();
    v170 = v253;
    sub_10079CCA4();
    sub_1000077D8(v170, v274, &qword_100AE72E8, &qword_10082B868);
    swift_storeEnumTagMultiPayload();
    sub_1004CFCC0();
    sub_1004D0598();
    sub_10079CCA4();
    sub_100007840(v170, &qword_100AE72E8, &qword_10082B868);
    sub_100007840(v168, &qword_100AE72F0, &qword_10082B870);
    sub_100007840(v114, &qword_100AE7358, &qword_10082B8D8);
    v72 = v254;
    v73 = &qword_100AE7300;
    v74 = &qword_10082B880;
    return sub_100007840(v72, v73, v74);
  }

  if (!a1[6])
  {
    i = a1[7];
    goto LABEL_51;
  }

  v64 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  sub_1004CE080(32, 0xE100000000000000, v64, v58);

  sub_1004CFA58();
  sub_10079D784();
  sub_100007840(v58, &qword_100AE7398, &qword_10082B918);
  v65 = &qword_100AE73A0;
  v66 = &qword_10082B920;
  sub_1000077D8(v61, v42, &qword_100AE73A0, &qword_10082B920);
LABEL_4:
  swift_storeEnumTagMultiPayload();
  sub_1004CFDD8();
  sub_1004CFE94();
  v67 = v264;
  sub_10079CCA4();
  v68 = &qword_100AE7388;
  v69 = &qword_10082B908;
  sub_1000077D8(v67, v270, &qword_100AE7388, &qword_10082B908);
  swift_storeEnumTagMultiPayload();
  sub_1004CFD4C();
  sub_1004D0044();
  v70 = v271;
  sub_10079CCA4();
  v71 = v67;
LABEL_5:
  sub_100007840(v71, v68, v69);
  sub_1000077D8(v70, v274, &qword_100AE7390, &qword_10082B910);
  swift_storeEnumTagMultiPayload();
  sub_1004CFCC0();
  sub_1004D0598();
  sub_10079CCA4();
  sub_100007840(v70, &qword_100AE7390, &qword_10082B910);
  v72 = v61;
LABEL_6:
  v73 = v65;
  v74 = v66;
  return sub_100007840(v72, v73, v74);
}

uint64_t sub_1004CE080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v32 = a3;
  v34 = a4;
  v31 = sub_1001F1160(&qword_100AE74B0, &qword_10082BB00);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = &v28 - v8;
  v30 = sub_1001F1160(&qword_100AE73C0, &qword_10082B970);
  __chkstk_darwin(v30);
  v11 = &v28 - v10;
  *&v41[0] = a1;
  *(&v41[0] + 1) = a2;
  sub_100206ECC();

  v12 = sub_10079D5D4();
  v14 = v13;
  LOBYTE(a2) = v15;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = a2 & 1;
  v44 = a2 & 1;
  v43 = 0;
  v33 = v5;
  sub_1004C872C();
  if (sub_1007A2BB4())
  {
    v21 = sub_10079D4B4();
  }

  else
  {
    v21 = sub_10079D354();
  }

  v22 = v21;
  v23 = swift_getKeyPath();
  *&v35 = v12;
  *(&v35 + 1) = v14;
  LOBYTE(v36) = v20;
  *(&v36 + 1) = v17;
  *&v37 = KeyPath;
  *(&v37 + 1) = 2;
  LOBYTE(v38) = 0;
  *(&v38 + 1) = v19;
  LOBYTE(v39) = 1;
  *(&v39 + 1) = v23;
  v40 = v22;
  sub_1001F1160(&qword_100AE73C8, &qword_10082B978);
  sub_1004CFC08();
  sub_10079DAD4();
  v41[3] = v38;
  v41[4] = v39;
  v42 = v40;
  v41[0] = v35;
  v41[1] = v36;
  v41[2] = v37;
  sub_100007840(v41, &qword_100AE73C8, &qword_10082B978);
  v24 = swift_getKeyPath();
  (*(v29 + 32))(v11, v9, v31);
  v25 = &v11[*(v30 + 36)];
  v26 = v32;
  *v25 = v24;
  v25[1] = v26;

  sub_1004C8884();
  sub_1004CFB14();
  sub_10079D944();
  return sub_100007840(v11, &qword_100AE73C0, &qword_10082B970);
}

uint64_t sub_1004CE3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31 = a3;
  v29 = sub_1001F1160(&qword_100AE7498, &qword_10082BA10);
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v27 - v7;
  v9 = sub_1001F1160(&qword_100AE7400, &unk_10082B990);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  *&v37[0] = a1;
  *(&v37[0] + 1) = a2;
  sub_100206ECC();

  v12 = sub_10079D5D4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v30 = v4;
  sub_1004C872C();
  if (sub_1007A2BB4())
  {
    v20 = sub_10079D4B4();
  }

  else
  {
    v20 = sub_10079D354();
  }

  v21 = v20;
  v22 = swift_getKeyPath();
  v40 = v16 & 1;
  v39 = 0;
  *&v32 = v12;
  *(&v32 + 1) = v14;
  LOBYTE(v33) = v16 & 1;
  *(&v33 + 1) = v18;
  *&v34 = KeyPath;
  *(&v34 + 1) = 1;
  LOBYTE(v35) = 0;
  *(&v35 + 1) = v22;
  v36 = v21;
  sub_10079D3F4();
  sub_1001F1160(&qword_100ADF2C0, &qword_10081F498);
  sub_10039185C();
  sub_10079D664();
  v37[2] = v34;
  v37[3] = v35;
  v38 = v36;
  v37[0] = v32;
  v37[1] = v33;
  sub_100007840(v37, &qword_100ADF2C0, &qword_10081F498);
  if (*(v30 + 48))
  {
    v23 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    v24 = swift_getKeyPath();
    (*(v28 + 32))(v11, v8, v29);
    v25 = &v11[*(v9 + 36)];
    *v25 = v24;
    v25[1] = v23;
    sub_1004C8884();
    sub_1004CFF50();
    sub_10079D944();
    return sub_100007840(v11, &qword_100AE7400, &unk_10082B990);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1004D0928(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004CE700(uint64_t a1, uint64_t a2)
{
  *&v25[0] = a1;
  *(&v25[0] + 1) = a2;
  sub_100206ECC();

  v3 = sub_10079D5D4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = v7 & 1;
  v28 = v7 & 1;
  v27 = 0;
  if (*(v2 + 48))
  {
    v13 = v11;
    v14 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    v15 = swift_getKeyPath();
    sub_1004C872C();
    if (sub_1007A2BB4())
    {
      v16 = sub_10079D4B4();
    }

    else
    {
      v16 = sub_10079D354();
    }

    v17 = v16;
    *&v19 = v3;
    *(&v19 + 1) = v5;
    LOBYTE(v20) = v12;
    *(&v20 + 1) = v9;
    *&v21 = KeyPath;
    *(&v21 + 1) = 2;
    LOBYTE(v22) = 0;
    *(&v22 + 1) = v13;
    LOBYTE(v23) = 1;
    *(&v23 + 1) = v15;
    *&v24 = v14;
    *(&v24 + 1) = swift_getKeyPath();
    sub_1004C8884();
    sub_1001F1160(&qword_100AE7448, &qword_10082B9A0);
    sub_1004D0428();
    sub_10079D944();
    v25[4] = v23;
    v25[5] = v24;
    v26 = v17;
    v25[0] = v19;
    v25[1] = v20;
    v25[2] = v21;
    v25[3] = v22;
    return sub_100007840(v25, &qword_100AE7448, &qword_10082B9A0);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1004D0928(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004CE908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = sub_1001F1160(&qword_100AE74A0, &unk_10082BA88);
  __chkstk_darwin(v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v43 - v10);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_1001F1160(&qword_100AE7358, &qword_10082B8D8);
  __chkstk_darwin(v15 - 8);
  v44 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v43 = &v43 - v18;
  __chkstk_darwin(v19);
  v21 = &v43 - v20;
  __chkstk_darwin(v22);
  v24 = &v43 - v23;
  sub_1004CE700(a2, a3);
  v25 = v21;
  sub_1004CE700(32, 0xE100000000000000);
  if (*(a1 + 48))
  {
    v26 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    v27 = sub_10079DF24();
    KeyPath = swift_getKeyPath();
    v29 = (v11 + *(v7 + 36));
    v30 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
    v31 = enum case for Image.Scale.small(_:);
    v32 = sub_10079DF84();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    *v11 = v27;
    v11[1] = KeyPath;
    v11[2] = v26;
    sub_1004D0650(v11, v14);
    v33 = v24;
    v34 = v24;
    v35 = v43;
    sub_1000077D8(v34, v43, &qword_100AE7358, &qword_10082B8D8);
    v36 = v25;
    v37 = v25;
    v38 = v44;
    sub_1000077D8(v37, v44, &qword_100AE7358, &qword_10082B8D8);
    v39 = v46;
    sub_1000077D8(v14, v46, &qword_100AE74A0, &unk_10082BA88);
    v40 = v45;
    sub_1000077D8(v35, v45, &qword_100AE7358, &qword_10082B8D8);
    v41 = sub_1001F1160(&qword_100AE74A8, &qword_10082BAC8);
    sub_1000077D8(v38, v40 + *(v41 + 48), &qword_100AE7358, &qword_10082B8D8);
    sub_1000077D8(v39, v40 + *(v41 + 64), &qword_100AE74A0, &unk_10082BA88);
    sub_100007840(v14, &qword_100AE74A0, &unk_10082BA88);
    sub_100007840(v36, &qword_100AE7358, &qword_10082B8D8);
    sub_100007840(v33, &qword_100AE7358, &qword_10082B8D8);
    sub_100007840(v39, &qword_100AE74A0, &unk_10082BA88);
    sub_100007840(v38, &qword_100AE7358, &qword_10082B8D8);
    return sub_100007840(v35, &qword_100AE7358, &qword_10082B8D8);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1004D0928(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

void sub_1004CED3C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v9);

  v1 = v11;
  if (v11 != 1)
  {
    v2 = v9[0];
    v3 = v9[1];
    v4 = v9[2];
    v5 = v9[3];
    v6 = v10;
    v7 = v12;
    sub_1000260E8(v11, v12);
    v8 = sub_1004CEEF0(v2, v3, v4, v5, v6, v1, v7);
    if (v1)
    {
      v1(v8);
      sub_100007020(v1, v7);
    }
  }
}

unint64_t sub_1004CEE6C()
{
  result = qword_100AE7150;
  if (!qword_100AE7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7150);
  }

  return result;
}

uint64_t sub_1004CEEF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7)
{
  if (a6 != 1)
  {
    sub_100471118(result, a2, a3, a4, a5);

    return sub_100007020(a6, a7);
  }

  return result;
}

unint64_t sub_1004CEF3C()
{
  result = qword_100AE7158;
  if (!qword_100AE7158)
  {
    sub_1001F1234(&unk_100AE3F30, qword_100826870);
    sub_1004CEFC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7158);
  }

  return result;
}

unint64_t sub_1004CEFC0()
{
  result = qword_100AE7160;
  if (!qword_100AE7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7160);
  }

  return result;
}

__n128 sub_1004CF014(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1004CF040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004CF088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004CF0F0()
{
  result = qword_100AE7168;
  if (!qword_100AE7168)
  {
    sub_1001F1234(&qword_100AE7170, &qword_10082B648);
    sub_1004CEE6C();
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7168);
  }

  return result;
}

double sub_1004CF1C8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1004CF214()
{
  result = qword_100AE71E0;
  if (!qword_100AE71E0)
  {
    sub_1001F1234(&qword_100AE7188, &qword_10082B6B0);
    sub_1004CF2A0();
    sub_1004CF510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE71E0);
  }

  return result;
}

unint64_t sub_1004CF2A0()
{
  result = qword_100AE71E8;
  if (!qword_100AE71E8)
  {
    sub_1001F1234(&qword_100AE71F0, &qword_10082B7B0);
    sub_1004CF32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE71E8);
  }

  return result;
}

unint64_t sub_1004CF32C()
{
  result = qword_100AE71F8;
  if (!qword_100AE71F8)
  {
    sub_1001F1234(&qword_100AE7200, &qword_10082B7B8);
    sub_1004CF3E8();
    sub_1004D0928(&qword_100AE7220, type metadata accessor for ClipHorizontallyWithFadeout, &unk_10083FF3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE71F8);
  }

  return result;
}

unint64_t sub_1004CF3E8()
{
  result = qword_100AE7208;
  if (!qword_100AE7208)
  {
    sub_1001F1234(&qword_100AE7210, &unk_10082B7C0);
    sub_1001F1234(&qword_100AE71B0, &qword_10082B6D8);
    sub_100005920(&qword_100AE7218, &qword_100AE71B0, &qword_10082B6D8, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD7220, &qword_100AD7228, &qword_100813FB8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7208);
  }

  return result;
}

unint64_t sub_1004CF510()
{
  result = qword_100AE7228;
  if (!qword_100AE7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7228);
  }

  return result;
}

unint64_t sub_1004CF564()
{
  result = qword_100AE7230;
  if (!qword_100AE7230)
  {
    sub_1001F1234(&qword_100AE71D8, &qword_10082B7A8);
    sub_1004CF5F0();
    sub_1004CF510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7230);
  }

  return result;
}

unint64_t sub_1004CF5F0()
{
  result = qword_100AE7238;
  if (!qword_100AE7238)
  {
    sub_1001F1234(&qword_100AE7240, &qword_10082B7D0);
    sub_100005920(&qword_100AE7248, &qword_100AE7250, &qword_10082B7D8, &unk_10082BC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7238);
  }

  return result;
}

unint64_t sub_1004CF6A8()
{
  result = qword_100AE7258;
  if (!qword_100AE7258)
  {
    sub_1001F1234(&qword_100AE71A0, &qword_10082B6C8);
    sub_1004CF734();
    sub_1004CF878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7258);
  }

  return result;
}

unint64_t sub_1004CF734()
{
  result = qword_100AE7260;
  if (!qword_100AE7260)
  {
    sub_1001F1234(&qword_100AE71D0, &qword_10082B6F8);
    sub_1004CF7C0();
    sub_1004CF510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7260);
  }

  return result;
}

unint64_t sub_1004CF7C0()
{
  result = qword_100AE7268;
  if (!qword_100AE7268)
  {
    sub_1001F1234(&qword_100AE71C8, &qword_10082B6F0);
    sub_100005920(&qword_100AE7270, &qword_100AE71C0, &qword_10082B6E8, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7268);
  }

  return result;
}

unint64_t sub_1004CF878()
{
  result = qword_100AE7278;
  if (!qword_100AE7278)
  {
    sub_1001F1234(&qword_100AE7280, &qword_10082B7E0);
    sub_1004CF904();
    sub_1004CF510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7278);
  }

  return result;
}

unint64_t sub_1004CF904()
{
  result = qword_100AE7288;
  if (!qword_100AE7288)
  {
    sub_1001F1234(&qword_100AE7290, &qword_10082B7E8);
    sub_100005920(&qword_100AE7298, &qword_100AE72A0, &unk_10082B7F0, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7288);
  }

  return result;
}

unint64_t sub_1004CF9BC()
{
  result = qword_100AE72A8;
  if (!qword_100AE72A8)
  {
    sub_1001F1234(&qword_100AE7180, &qword_10082B6A8);
    sub_1004CF214();
    sub_1004CF564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE72A8);
  }

  return result;
}

unint64_t sub_1004CFA58()
{
  result = qword_100AE73B0;
  if (!qword_100AE73B0)
  {
    sub_1001F1234(&qword_100AE7398, &qword_10082B918);
    sub_1004CFB14();
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73B0);
  }

  return result;
}

unint64_t sub_1004CFB14()
{
  result = qword_100AE73B8;
  if (!qword_100AE73B8)
  {
    sub_1001F1234(&qword_100AE73C0, &qword_10082B970);
    sub_1001F1234(&qword_100AE73C8, &qword_10082B978);
    sub_1004CFC08();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73B8);
  }

  return result;
}

unint64_t sub_1004CFC08()
{
  result = qword_100AE73D0;
  if (!qword_100AE73D0)
  {
    sub_1001F1234(&qword_100AE73C8, &qword_10082B978);
    sub_100323FAC();
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0, &unk_10080B720, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73D0);
  }

  return result;
}

unint64_t sub_1004CFCC0()
{
  result = qword_100AE73D8;
  if (!qword_100AE73D8)
  {
    sub_1001F1234(&qword_100AE7390, &qword_10082B910);
    sub_1004CFD4C();
    sub_1004D0044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73D8);
  }

  return result;
}

unint64_t sub_1004CFD4C()
{
  result = qword_100AE73E0;
  if (!qword_100AE73E0)
  {
    sub_1001F1234(&qword_100AE7388, &qword_10082B908);
    sub_1004CFDD8();
    sub_1004CFE94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73E0);
  }

  return result;
}

unint64_t sub_1004CFDD8()
{
  result = qword_100AE73E8;
  if (!qword_100AE73E8)
  {
    sub_1001F1234(&qword_100AE73A0, &qword_10082B920);
    sub_1004CFA58();
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73E8);
  }

  return result;
}

unint64_t sub_1004CFE94()
{
  result = qword_100AE73F0;
  if (!qword_100AE73F0)
  {
    sub_1001F1234(&qword_100AE7368, &qword_10082B8E8);
    sub_1004CFF50();
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73F0);
  }

  return result;
}

unint64_t sub_1004CFF50()
{
  result = qword_100AE73F8;
  if (!qword_100AE73F8)
  {
    sub_1001F1234(&qword_100AE7400, &unk_10082B990);
    sub_1001F1234(&qword_100ADF2C0, &qword_10081F498);
    sub_10039185C();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73F8);
  }

  return result;
}

unint64_t sub_1004D0044()
{
  result = qword_100AE7408;
  if (!qword_100AE7408)
  {
    sub_1001F1234(&qword_100AE7318, &qword_10082B898);
    sub_1004D00FC();
    sub_100005920(&qword_100AE7460, &qword_100AE7308, &qword_10082B888, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7408);
  }

  return result;
}

unint64_t sub_1004D00FC()
{
  result = qword_100AE7410;
  if (!qword_100AE7410)
  {
    sub_1001F1234(&qword_100AE7360, &qword_10082B8E0);
    sub_1004D0188();
    sub_1004D036C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7410);
  }

  return result;
}

unint64_t sub_1004D0188()
{
  result = qword_100AE7418;
  if (!qword_100AE7418)
  {
    sub_1001F1234(&qword_100AE7348, &qword_10082B8C8);
    sub_100005920(&qword_100AE7420, &qword_100AE7350, &qword_10082B8D0, &protocol conformance descriptor for TupleView<A>);
    sub_1004D0240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7418);
  }

  return result;
}

unint64_t sub_1004D0240()
{
  result = qword_100AE7428;
  if (!qword_100AE7428)
  {
    sub_1001F1234(&qword_100AE7330, &qword_10082B8B0);
    sub_1001F1234(&qword_100AE7320, &qword_10082B8A0);
    sub_100005920(&qword_100AE7430, &qword_100AE7320, &qword_10082B8A0, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7428);
  }

  return result;
}

unint64_t sub_1004D036C()
{
  result = qword_100AE7438;
  if (!qword_100AE7438)
  {
    sub_1001F1234(&qword_100AE7358, &qword_10082B8D8);
    sub_1004D0428();
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7438);
  }

  return result;
}

unint64_t sub_1004D0428()
{
  result = qword_100AE7440;
  if (!qword_100AE7440)
  {
    sub_1001F1234(&qword_100AE7448, &qword_10082B9A0);
    sub_1004D04E0();
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0, &unk_10080B720, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7440);
  }

  return result;
}

unint64_t sub_1004D04E0()
{
  result = qword_100AE7450;
  if (!qword_100AE7450)
  {
    sub_1001F1234(&qword_100AE7458, &qword_10082B9A8);
    sub_100323FAC();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7450);
  }

  return result;
}

unint64_t sub_1004D0598()
{
  result = qword_100AE7468;
  if (!qword_100AE7468)
  {
    sub_1001F1234(&qword_100AE72E8, &qword_10082B868);
    sub_100005920(&qword_100AE73A8, &qword_100AE72F0, &qword_10082B870, &protocol conformance descriptor for TupleView<A>);
    sub_1004CFA58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7468);
  }

  return result;
}

uint64_t sub_1004D0650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE74A0, &unk_10082BA88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004D06C0()
{
  sub_1004CF1C8(*(v0 + 16), *(v0 + 24), *(v0 + 25));
  sub_10002AEBC(*(v0 + 32), *(v0 + 40));
  sub_10002AEBC(*(v0 + 48), *(v0 + 56));

  sub_10002AEBC(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

__n128 sub_1004D0734(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1004D0748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004D0790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004D07E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1004D083C()
{
  result = qword_100AE7568;
  if (!qword_100AE7568)
  {
    sub_1001F1234(&qword_100AE7570, &qword_10082BC68);
    sub_1004CF6A8();
    sub_1004CF9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7568);
  }

  return result;
}

uint64_t sub_1004D0928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004D0970()
{
  result = qword_100AE7590;
  if (!qword_100AE7590)
  {
    sub_1001F1234(&qword_100AE7578, &qword_10082BD10);
    sub_100005920(&qword_100AE7588, &qword_100AE7580, &qword_10082BD18, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7590);
  }

  return result;
}

uint64_t sub_1004D0A68@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v70 = *v1;
  v2 = sub_1001F1160(&qword_100AE0898, &unk_10082BDE0);
  __chkstk_darwin(v2 - 8);
  v79 = &v63 - v3;
  v4 = sub_1001F1160(&qword_100AE08A0, &unk_100821030);
  __chkstk_darwin(v4 - 8);
  v78 = &v63 - v5;
  v6 = sub_1001F1160(&qword_100AE08A8, &unk_10082BDF0);
  __chkstk_darwin(v6 - 8);
  v77 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v63 - v9;
  v10 = sub_1001F1160(&qword_100AE08B0, &unk_100821040);
  __chkstk_darwin(v10 - 8);
  v75 = &v63 - v11;
  v12 = sub_1001F1160(&qword_100AE08B8, &unk_10082BE00);
  __chkstk_darwin(v12 - 8);
  v74 = &v63 - v13;
  v14 = sub_100799F74();
  v68 = *(v14 - 8);
  v69 = v14;
  __chkstk_darwin(v14);
  v64 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001F1160(&qword_100AE08C0, &unk_100821050);
  __chkstk_darwin(v16 - 8);
  v73 = &v63 - v17;
  v18 = sub_1001F1160(&qword_100AE08C8, &unk_10082BE10);
  __chkstk_darwin(v18 - 8);
  v81 = &v63 - v19;
  v66 = sub_100799DC4();
  v20 = *(v66 - 8);
  __chkstk_darwin(v66);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1001F1160(&qword_100AE08D0, &unk_100821060);
  __chkstk_darwin(v23 - 8);
  v25 = &v63 - v24;
  v26 = sub_1001F1160(&qword_100AE08D8, &unk_10082BE20);
  __chkstk_darwin(v26 - 8);
  v28 = &v63 - v27;
  v29 = sub_100799E74();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1001F1160(&qword_100AE08E0, &qword_100821070);
  __chkstk_darwin(v33 - 8);
  v35 = &v63 - v34;
  sub_100799E94();
  sub_1004D18A4();
  (*(v30 + 8))(v32, v29);
  v36 = *(v30 + 56);
  v67 = v35;
  v36(v35, 0, 1, v29);
  sub_100799ED4();
  v37 = sub_100799EB4();
  v38 = *(*(v37 - 8) + 56);
  v71 = v28;
  v38(v28, 0, 1, v37);
  sub_100799DD4();
  sub_1004D1BE8(v25);
  v39 = v22;
  v40 = v66;
  (*(v20 + 8))(v39, v66);
  v41 = *(v20 + 56);
  v72 = v25;
  v41(v25, 0, 1, v40);
  v42 = v81;
  sub_100799F24();
  v43 = sub_100799F14();
  v44 = v64;
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v45 = sub_100799F94();
  v46 = sub_100799EC4();
  sub_100799F84();
  if (qword_100AD1428 != -1)
  {
    swift_once();
  }

  sub_1004D2AE4();
  sub_100797A84();
  v65 = v46;
  v66 = v45;
  if (v82 > 1u)
  {
    v47 = v73;
    v49 = v68;
    v48 = v69;
    if (v82 == 2)
    {
      (*(v68 + 8))(v44, v69);
      v50 = &enum case for Configuration.MediaTypeMethod.allJoint(_:);
    }

    else if (v82 == 3)
    {
      (*(v68 + 8))(v44, v69);
      v50 = &enum case for Configuration.MediaTypeMethod.allDisjoint(_:);
    }

    else
    {
      (*(v68 + 8))(v44, v69);
      v50 = &enum case for Configuration.MediaTypeMethod.interestBased(_:);
    }

    goto LABEL_12;
  }

  v47 = v73;
  v49 = v68;
  v48 = v69;
  if (v82)
  {
    (*(v68 + 8))(v44, v69);
    v50 = &enum case for Configuration.MediaTypeMethod.singleJoint(_:);
LABEL_12:
    (*(v49 + 104))(v47, *v50, v48);
    goto LABEL_13;
  }

  (*(v68 + 32))(v73, v44, v69);
LABEL_13:
  (*(v49 + 56))(v47, 0, 1, v48);
  v51 = v74;
  sub_100799EF4();
  v52 = sub_100799EE4();
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  v53 = v75;
  sub_100799EA4();
  v54 = sub_100799F54();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  v55 = v76;
  sub_100799F04();
  v56 = sub_100799F34();
  v57 = *(*(v56 - 8) + 56);
  v57(v55, 0, 1, v56);
  v58 = v77;
  sub_100799F44();
  v57(v58, 0, 1, v56);
  v59 = sub_100799F64();
  (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
  v60 = v79;
  sub_100799DE4();
  v61 = sub_10079A2D4();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  return sub_100799E84();
}

uint64_t sub_1004D14B0(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_100799FB4();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[5] = v4;
  v2[6] = v5;

  return _swift_task_switch(sub_1004D1574, 0, 0);
}

uint64_t sub_1004D1574()
{
  v1 = v0[6];
  v2 = v1[5];
  v3 = v1[6];
  sub_10000E3E8(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1004D1634;
  v5 = v0[5];

  return dispatch thunk of ConfigurationServiceType.fetchConfiguration()(v5, v2, v3);
}

uint64_t sub_1004D1634()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1004D17E0;
  }

  else
  {
    v2 = sub_1004D1748;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004D1748()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  sub_1004D0A68(v0[2]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004D17E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D18A4()
{
  v0 = sub_1001F1160(&qword_100AE7690, &qword_10082BE80);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1001F1160(&qword_100AE7698, &qword_10082BE88);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_100799E44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100AD1430 != -1)
  {
    swift_once();
  }

  sub_1004D2AE4();
  sub_100797A84();
  if (v14 > 2u)
  {
    if (v14 == 3)
    {
      v10 = &enum case for Configuration.GenreRecommendationConfiguration.Source.bookHistory(_:);
    }

    else if (v14 == 4)
    {
      v10 = &enum case for Configuration.GenreRecommendationConfiguration.Source.onDevicePersonalization(_:);
    }

    else
    {
      v10 = &enum case for Configuration.GenreRecommendationConfiguration.Source.tabi(_:);
    }

    goto LABEL_14;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      v10 = &enum case for Configuration.GenreRecommendationConfiguration.Source.appleMediaDiscovery(_:);
    }

    else
    {
      v10 = &enum case for Configuration.GenreRecommendationConfiguration.Source.appleMediaDiscoveryAndBookHistory(_:);
    }

LABEL_14:
    (*(v7 + 104))(v9, *v10, v6);
    goto LABEL_15;
  }

  sub_100799E64();
LABEL_15:
  (*(v7 + 16))(v5, v9, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_100799E34();
  sub_100799E24();
  sub_100799DF4();
  v11 = sub_100799E14();
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  sub_100799E04();
  sub_100799E54();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1004D1BE8@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v1 = sub_1001F1160(&qword_100AE7640, &qword_10082BE30);
  __chkstk_darwin(v1 - 8);
  v116 = &v91 - v2;
  v3 = sub_1001F1160(&qword_100AE7648, &qword_10082BE38);
  __chkstk_darwin(v3 - 8);
  v115 = &v91 - v4;
  v5 = sub_1001F1160(&qword_100AE7650, &qword_10082BE40);
  __chkstk_darwin(v5 - 8);
  v114 = &v91 - v6;
  v7 = sub_1001F1160(&qword_100AE7658, &qword_10082BE48);
  __chkstk_darwin(v7 - 8);
  v113 = &v91 - v8;
  v9 = sub_1001F1160(&qword_100AE7660, &qword_10082BE50);
  __chkstk_darwin(v9 - 8);
  v133 = &v91 - v10;
  v11 = sub_1001F1160(&qword_100AE7668, &qword_10082BE58);
  __chkstk_darwin(v11 - 8);
  v131 = &v91 - v12;
  v13 = sub_1001F1160(&qword_100AE7670, &qword_10082BE60);
  __chkstk_darwin(v13 - 8);
  v128 = &v91 - v14;
  v15 = sub_1001F1160(&qword_100AE7678, &qword_10082BE68);
  __chkstk_darwin(v15 - 8);
  v126 = &v91 - v16;
  v112 = sub_100799CD4();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v132 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100799C34();
  v19 = *(v18 - 8);
  v129 = v18;
  v130 = v19;
  __chkstk_darwin(v18);
  v104 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v91 - v22;
  v139 = sub_100799CB4();
  v127 = *(v139 - 8);
  __chkstk_darwin(v139);
  v101 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v121 = &v91 - v25;
  v138 = sub_100799C54();
  v125 = *(v138 - 8);
  __chkstk_darwin(v138);
  v98 = (&v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v119 = &v91 - v28;
  v137 = sub_100799D24();
  v123 = *(v137 - 8);
  __chkstk_darwin(v137);
  v97 = (&v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v118 = &v91 - v31;
  v135 = sub_100799D44();
  v120 = *(v135 - 8);
  __chkstk_darwin(v135);
  v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v136 = &v91 - v35;
  v134 = sub_100799DA4();
  v94 = *(v134 - 8);
  v36 = v94;
  __chkstk_darwin(v134);
  v38 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v91 - v40;
  v122 = &v91 - v40;
  v42 = sub_100799D74();
  v93 = *(v42 - 8);
  v43 = v93;
  __chkstk_darwin(v42);
  v45 = &v91 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = &v91 - v47;
  v124 = &v91 - v47;
  sub_100799D04();
  sub_1004D2B38(v48);
  v49 = *(v43 + 8);
  v108 = v43 + 8;
  v109 = v49;
  v49(v45, v42);
  sub_100799D14();
  sub_1004D2F00(v41);
  v50 = *(v36 + 8);
  v105 = v36 + 8;
  v106 = v50;
  v50(v38, v134);
  sub_100799C64();
  sub_1004D3708(v33, &Configuration.CollectionsConfiguration.BooksYouMightLikeConfiguration.source.getter, &enum case for CollectionType.booksYouMightLike(_:), &Configuration.CollectionsConfiguration.BooksYouMightLikeConfiguration.rescorer.getter, &Configuration.CollectionsConfiguration.BooksYouMightLikeConfiguration.init(source:rescorer:), v136);
  v51 = *(v120 + 8);
  v102 = v120 + 8;
  v103 = v51;
  v51(v33, v135);
  v52 = v97;
  sub_100799D34();
  v53 = v118;
  sub_1004D3708(v52, &Configuration.CollectionsConfiguration.ForYouConfiguration.source.getter, &enum case for CollectionType.forYou(_:), &Configuration.CollectionsConfiguration.ForYouConfiguration.rescorer.getter, &Configuration.CollectionsConfiguration.ForYouConfiguration.init(source:rescorer:), v118);
  v54 = *(v123 + 8);
  v99 = v123 + 8;
  v100 = v54;
  v54(v52, v137);
  v55 = v98;
  sub_100799C74();
  v56 = v119;
  sub_1004D3708(v55, &Configuration.CollectionsConfiguration.MangaYouMightLikeConfiguration.source.getter, &enum case for CollectionType.mangaYouMightLike(_:), &Configuration.CollectionsConfiguration.MangaYouMightLikeConfiguration.rescorer.getter, &Configuration.CollectionsConfiguration.MangaYouMightLikeConfiguration.init(source:rescorer:), v119);
  v57 = *(v125 + 8);
  v96 = v125 + 8;
  v97 = v57;
  v57(v55, v138);
  v58 = v101;
  sub_100799CC4();
  v59 = v121;
  sub_1004D3224(v58, v121);
  v60 = *(v127 + 8);
  v95 = v127 + 8;
  v98 = v60;
  v60(v58, v139);
  v61 = v104;
  sub_100799C44();
  v62 = v107;
  sub_1004D3708(v61, &Configuration.CollectionsConfiguration.SuggestionsConfiguration.source.getter, &enum case for CollectionType.suggestions(_:), &Configuration.CollectionsConfiguration.SuggestionsConfiguration.rescorer.getter, &Configuration.CollectionsConfiguration.SuggestionsConfiguration.init(source:rescorer:), v107);
  v110 = *(v130 + 8);
  v110(v61, v129);
  sub_100799CE4();
  v63 = v93;
  v64 = *(v93 + 16);
  v65 = v126;
  v92 = v42;
  v64(v126, v124, v42);
  (*(v63 + 56))(v65, 0, 1, v42);
  v66 = v94;
  v67 = v128;
  v68 = v134;
  (*(v94 + 16))(v128, v122, v134);
  (*(v66 + 56))(v67, 0, 1, v68);
  v69 = v120;
  v70 = v131;
  v71 = v135;
  (*(v120 + 16))(v131, v136, v135);
  (*(v69 + 56))(v70, 0, 1, v71);
  v72 = v123;
  v73 = v133;
  v74 = v137;
  (*(v123 + 16))(v133, v53, v137);
  (*(v72 + 56))(v73, 0, 1, v74);
  v75 = v125;
  v76 = v113;
  v77 = v138;
  (*(v125 + 16))(v113, v56, v138);
  (*(v75 + 56))(v76, 0, 1, v77);
  v78 = v127;
  v79 = v114;
  v80 = v139;
  (*(v127 + 16))(v114, v59, v139);
  (*(v78 + 56))(v79, 0, 1, v80);
  v81 = v130;
  v82 = v115;
  v83 = v62;
  v84 = v62;
  v85 = v129;
  (*(v130 + 16))(v115, v83, v129);
  (*(v81 + 56))(v82, 0, 1, v85);
  v86 = v111;
  v87 = v116;
  v88 = v132;
  v89 = v112;
  (*(v111 + 16))(v116, v132, v112);
  (*(v86 + 56))(v87, 0, 1, v89);
  sub_100799CF4();
  (*(v86 + 8))(v88, v89);
  v110(v84, v85);
  v98(v121, v139);
  v97(v119, v138);
  v100(v118, v137);
  v103(v136, v135);
  v106(v122, v134);
  return v109(v124, v92);
}

unint64_t sub_1004D2AE4()
{
  result = qword_100AE7638;
  if (!qword_100AE7638)
  {
    type metadata accessor for MergedPersonalizationConfigurationService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7638);
  }

  return result;
}

uint64_t sub_1004D2B38@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = *v1;
  v2 = sub_10079A024();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10079A874();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AE7680, &qword_10082BE70);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_1001F1160(&qword_100AE7688, &qword_10082BE78);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_100799DB4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_100799D64();
  (*(v3 + 104))(v5, enum case for CollectionType.booksBySuggestedAuthors(_:), v2);
  sub_10031E344(v5);
  sub_1004D2AE4();
  sub_100797A84();

  (*(v3 + 8))(v5, v2);
  if (v22 > 1u)
  {
    v16 = v20;
    if (v22 == 2)
    {
      (*(v6 + 8))(v8, v20);
      v17 = &enum case for Scorer.identity(_:);
    }

    else
    {
      (*(v6 + 8))(v8, v20);
      v17 = &enum case for Scorer.tabi(_:);
    }

    goto LABEL_8;
  }

  if (v22)
  {
    v16 = v20;
    (*(v6 + 8))(v8, v20);
    v17 = &enum case for Scorer.appleMediaDiscovery(_:);
LABEL_8:
    (*(v6 + 104))(v11, *v17, v16);
    goto LABEL_9;
  }

  v16 = v20;
  (*(v6 + 32))(v11, v8, v20);
LABEL_9:
  (*(v6 + 56))(v11, 0, 1, v16);
  return sub_100799D54();
}

uint64_t sub_1004D2F00@<X0>(uint64_t a1@<X8>)
{
  v15[1] = *v1;
  v15[2] = a1;
  v2 = sub_10079A024();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079A874();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AE7680, &qword_10082BE70);
  __chkstk_darwin(v10 - 8);
  v12 = v15 - v11;
  sub_100799D84();
  (*(v3 + 104))(v5, enum case for CollectionType.books(_:), v2);
  sub_10031E344(v5);
  sub_1004D2AE4();
  sub_100797A84();

  (*(v3 + 8))(v5, v2);
  if (v16 > 1u)
  {
    if (v16 == 2)
    {
      (*(v7 + 8))(v9, v6);
      v13 = &enum case for Scorer.identity(_:);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v13 = &enum case for Scorer.tabi(_:);
    }

    goto LABEL_8;
  }

  if (v16)
  {
    (*(v7 + 8))(v9, v6);
    v13 = &enum case for Scorer.appleMediaDiscovery(_:);
LABEL_8:
    (*(v7 + 104))(v12, *v13, v6);
    goto LABEL_9;
  }

  (*(v7 + 32))(v12, v9, v6);
LABEL_9:
  (*(v7 + 56))(v12, 0, 1, v6);
  return sub_100799D94();
}

uint64_t sub_1004D3224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v41 = a2;
  v37 = *v2;
  v3 = sub_10079A874();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AE7680, &qword_10082BE70);
  __chkstk_darwin(v5 - 8);
  v38 = &v30 - v6;
  v7 = sub_10079A024();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v34 = sub_100799DB4();
  v13 = *(v34 - 8);
  __chkstk_darwin(v34);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001F1160(&qword_100AE7688, &qword_10082BE78);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - v17;
  sub_100799C94();
  v19 = enum case for CollectionType.moreFromYourAuthors(_:);
  v31 = *(v8 + 104);
  v31(v12, enum case for CollectionType.moreFromYourAuthors(_:), v7);
  sub_1004D3BEC(v15, v18);
  v20 = *(v8 + 8);
  v20(v12, v7);
  v21 = v34;
  (*(v13 + 8))(v15, v34);
  v22 = *(v13 + 56);
  v33 = v18;
  v22(v18, 0, 1, v21);
  v23 = v36;
  sub_100799CA4();
  v24 = v35;
  v31(v35, v19, v7);
  sub_10031E344(v24);
  sub_1004D2AE4();
  sub_100797A84();

  v20(v24, v7);
  if (v42 > 1u)
  {
    v25 = v39;
    v27 = v40;
    if (v42 == 2)
    {
      (*(v39 + 8))(v23, v40);
      v28 = &enum case for Scorer.identity(_:);
    }

    else
    {
      (*(v39 + 8))(v23, v40);
      v28 = &enum case for Scorer.tabi(_:);
    }

    goto LABEL_8;
  }

  if (v42)
  {
    v25 = v39;
    v27 = v40;
    (*(v39 + 8))(v23, v40);
    v28 = &enum case for Scorer.appleMediaDiscovery(_:);
LABEL_8:
    v26 = v38;
    (*(v25 + 104))(v38, *v28, v27);
    goto LABEL_9;
  }

  v26 = v38;
  v25 = v39;
  v27 = v40;
  (*(v39 + 32))(v38, v23, v40);
LABEL_9:
  (*(v25 + 56))(v26, 0, 1, v27);
  return sub_100799C84();
}

uint64_t sub_1004D3708@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, unsigned int *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t (*a5)(char *, char *)@<X4>, uint64_t a6@<X8>)
{
  v49 = a5;
  v39[1] = a1;
  v48 = a6;
  v9 = *v6;
  v43 = a4;
  v44 = v9;
  v10 = sub_10079A874();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v42 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&qword_100AE7680, &qword_10082BE70);
  __chkstk_darwin(v12 - 8);
  v45 = v39 - v13;
  v14 = sub_10079A024();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v39 - v18;
  v40 = sub_100799DB4();
  v20 = *(v40 - 8);
  __chkstk_darwin(v40);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1001F1160(&qword_100AE7688, &qword_10082BE78);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = v39 - v25;
  a2(v24);
  v27 = *a3;
  v28 = *(v15 + 104);
  v28(v19, v27, v14);
  sub_1004D3BEC(v22, v26);
  v29 = *(v15 + 8);
  v29(v19, v14);
  v30 = v40;
  (*(v20 + 8))(v22, v40);
  v31 = (*(v20 + 56))(v26, 0, 1, v30);
  v32 = v42;
  v43(v31);
  v33 = v41;
  v28(v41, v27, v14);
  sub_10031E344(v33);
  sub_1004D2AE4();
  sub_100797A84();

  v29(v33, v14);
  if (v50 > 1u)
  {
    v34 = v46;
    v36 = v47;
    if (v50 == 2)
    {
      (*(v46 + 8))(v32, v47);
      v37 = &enum case for Scorer.identity(_:);
    }

    else
    {
      (*(v46 + 8))(v32, v47);
      v37 = &enum case for Scorer.tabi(_:);
    }

    goto LABEL_8;
  }

  if (v50)
  {
    v34 = v46;
    v36 = v47;
    (*(v46 + 8))(v32, v47);
    v37 = &enum case for Scorer.appleMediaDiscovery(_:);
LABEL_8:
    v35 = v45;
    (*(v34 + 104))(v45, *v37, v36);
    goto LABEL_9;
  }

  v35 = v45;
  v34 = v46;
  v36 = v47;
  (*(v46 + 32))(v45, v32, v47);
LABEL_9:
  (*(v34 + 56))(v35, 0, 1, v36);
  return v49(v26, v35);
}

uint64_t sub_1004D3BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_10031DEE8())
  {
    sub_1004D2AE4();
    sub_100797A84();

    if (v11 > 2u)
    {
      if (v11 == 3)
      {
        v4 = &enum case for Configuration.CollectionsConfiguration.Source.mediaAPI(_:);
      }

      else if (v11 == 4)
      {
        v4 = &enum case for Configuration.CollectionsConfiguration.Source.bookHistoryThenAppleMediaDiscovery(_:);
      }

      else
      {
        v4 = &enum case for Configuration.CollectionsConfiguration.Source.tabi(_:);
      }
    }

    else
    {
      if (!v11)
      {
        v8 = sub_100799DB4();
        return (*(*(v8 - 8) + 16))(a2, a1, v8);
      }

      if (v11 == 1)
      {
        v4 = &enum case for Configuration.CollectionsConfiguration.Source.appleMediaDiscovery(_:);
      }

      else
      {
        v4 = &enum case for Configuration.CollectionsConfiguration.Source.bookHistory(_:);
      }
    }

    v9 = *v4;
    v10 = sub_100799DB4();
    return (*(*(v10 - 8) + 104))(a2, v9, v10);
  }

  else
  {
    v5 = sub_100799DB4();
    v6 = *(*(v5 - 8) + 16);

    return v6(a2, a1, v5);
  }
}

BOOL static ScrubberState.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        return 1;
      }
    }

    else if (a4 == 2 && !a3)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return a1 == a3;
  }

  return 0;
}

uint64_t static ScrubberState.makePaged(oldState:currentPageNumber:)(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return a3;
  }

  return result;
}

uint64_t ScrubberState.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      return 0x72657470616863;
    }

    else
    {
      return 1701602409;
    }
  }

  else
  {
    sub_1007A3744(19);

    v3._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v3);

    return 0xD000000000000011;
  }
}

BOOL sub_1004D3F10(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return *a1 == v2;
    }

    return 0;
  }

  if (*(a1 + 8) != 1)
  {
    return v3 == 2 && v2 == 0;
  }

  return v3 == 1;
}

uint64_t sub_1004D3F70(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1004D3F8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004D3FD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004D4018(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t UIViewController.lifeCyclePublisher.getter()
{
  v0 = sub_1001F1160(&qword_100AE76A0, qword_10082BFB0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  swift_getKeyPath();
  sub_1007968C4();

  sub_1004D4188();
  v4 = sub_10079BA14();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_1004D4154@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bc_currentLifeCycleState];
  *a2 = result;
  return result;
}

unint64_t sub_1004D4188()
{
  result = qword_100AE76A8;
  if (!qword_100AE76A8)
  {
    sub_1001F1234(&qword_100AE76A0, qword_10082BFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE76A8);
  }

  return result;
}

id UIViewController.sessionHost.getter()
{
  if ([v0 im_ancestorConformingToProtocol:&OBJC_PROTOCOL___BASessionHostProviding])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    sub_1001F1160(&qword_100AE76B8, &qword_10082C018);
    if (swift_dynamicCast())
    {
      v1 = [v7 analyticsSessionHost];
      swift_unknownObjectRelease();
      return v1;
    }
  }

  else
  {
    sub_1000230BC(v10);
  }

  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100B22F80);
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
  }

  return 0;
}

uint64_t _s9LifeCycleOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9LifeCycleOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t type metadata accessor for AnalyticsEvent.ReadingEvent(uint64_t a1)
{
  result = qword_100AE7730;
  if (!qword_100AE7730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004D443C(uint64_t a1)
{
  result = sub_1007983A4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrubberPageViewState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ScrubberPageViewState(uint64_t result, int a2, int a3)
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

uint64_t sub_1004D44EC(uint64_t a1)
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

uint64_t sub_1004D4508(uint64_t result, int a2)
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

uint64_t type metadata accessor for REScrubberView(uint64_t a1)
{
  result = qword_100AE77D0;
  if (!qword_100AE77D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004D45AC(uint64_t a1)
{
  sub_100247C8C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for REActionMenuState(319);
    if (v2 <= 0x3F)
    {
      sub_100324D54(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          sub_10024BB84(319, &qword_100AE77E0, &type metadata for ScrubberPageViewState);
          if (v5 <= 0x3F)
          {
            sub_10024BB84(319, &unk_100AE77E8, &type metadata for RESliderView.PressState);
            if (v6 <= 0x3F)
            {
              sub_10024BB84(319, &qword_100AD6F30, &type metadata for CGFloat);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

BOOL sub_1004D4704(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1004D475C()
{
  v1 = sub_10079F514();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v11 - v6;
  sub_10000E3E8((*(v0 + 16) + 80), *(*(v0 + 16) + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F9D4();
    sub_10079F3B4();

    (*(v2 + 104))(v4, enum case for BookNavigationDirection.rightToLeft(_:), v1);
    sub_1004E0E88(&qword_100AE0CC8, &type metadata accessor for BookNavigationDirection, &protocol conformance descriptor for BookNavigationDirection);
    sub_1007A2574();
    sub_1007A2574();
    if (v11[2] == v11[0] && v11[3] == v11[1])
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_1007A3AB4();
    }

    swift_unknownObjectRelease();
    v9 = *(v2 + 8);
    v9(v4, v1);
    v9(v7, v1);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1004D4988()
{
  v1 = sub_10079BC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    sub_10079B9A4(v7);

    v10 = enum case for ColorScheme.light(_:);
    v17 = *(v2 + 104);
    v17(v4, enum case for ColorScheme.light(_:), v1);
    v18 = sub_10079BC34();
    v11 = *(v2 + 8);
    v11(v4, v1);
    v11(v7, v1);
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v9;
    sub_10079B9A4(v7);

    v17(v4, v10, v1);
    v13 = sub_10079BC34();
    v11(v4, v1);
    v11(v7, v1);
    if (v18)
    {
      if ((v13 & 1) == 0)
      {
LABEL_4:
        v14 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
LABEL_7:
        v15 = v14;

        return v15;
      }
    }

    else if (v13)
    {
      goto LABEL_4;
    }

    v14 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    goto LABEL_7;
  }

  type metadata accessor for ChromeStyle(0);
  sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_1004D4C44()
{
  v1 = sub_10079BC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    sub_10079B9A4(v7);

    (*(v2 + 104))(v4, enum case for ColorScheme.light(_:), v1);
    v10 = sub_10079BC34();
    v11 = *(v2 + 8);
    v11(v4, v1);
    v11(v7, v1);
    if (v10)
    {
      v12 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v12 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v13 = v12;

    return v13;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

void sub_1004D4E40(unsigned __int8 a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = sub_1007A1C54();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1007A1CA4();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REScrubberView(0);
  v40 = *(v13 - 8);
  v14 = *(v40 + 64);
  __chkstk_darwin(v13);
  if ((a1 - 1) > 1u)
  {
    v19 = 0;
    v16 = 0;
    v18 = 2;
    goto LABEL_5;
  }

  v15 = *(a2 + 16);
  swift_getKeyPath();
  aBlock = v15;
  sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (*(v15 + 280))
  {
    v16 = REActionMenuState.makeChapterScrubbingState()();
    v18 = v17;

    sub_100337314(v16, v18);
    v19 = 0;
LABEL_5:
    v20 = 1;
    goto LABEL_6;
  }

  swift_getKeyPath();
  aBlock = v15;
  sub_100797A14();

  v16 = *(v15 + 272);
  v18 = *(v15 + 280);
  v34 = a2 + *(v13 + 44);
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = *(v34 + 16);
  aBlock = v35;
  LOBYTE(v48) = v36;
  v49 = v37;
  sub_100337314(v16, v18);
  sub_100337314(v16, v18);
  sub_1001F1160(&qword_100AE7B30, &qword_10082C788);
  sub_10079DFF4();
  v19 = v53;
  v20 = v54;
LABEL_6:
  REActionMenuState.scrubberChanged(state:event:)(v16, v18, a1, a3, a4, a5);
  sub_100342F4C(v16, v18);
  v21 = a2 + *(v13 + 44);
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  aBlock = v22;
  LOBYTE(v48) = v23;
  v49 = v24;
  sub_1001F1160(&qword_100AE7B30, &qword_10082C788);
  sub_10079DFF4();
  if (v54 == 1)
  {
    if (v20)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v53 == v19)
  {
    v25 = v20;
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
LABEL_13:
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v39 = sub_1007A2D74();
    sub_1004E0B04(a2, &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for REScrubberView);
    v26 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v27 = swift_allocObject();
    sub_1004E0B6C(&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for REScrubberView);
    v28 = v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v28 = v19;
    *(v28 + 8) = v20;
    v51 = sub_1004E0DEC;
    v52 = v27;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_1003323D0;
    v50 = &unk_100A202B0;
    v29 = _Block_copy(&aBlock);

    v30 = v41;
    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_1004E0E88(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
    v31 = v43;
    v32 = v46;
    sub_1007A3594();
    v33 = v39;
    sub_1007A2D94();
    _Block_release(v29);

    (*(v45 + 8))(v31, v32);
    (*(v42 + 8))(v30, v44);
  }

LABEL_14:
  sub_1004D54DC();
  sub_100342F4C(v16, v18);
}

double sub_1004D544C(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for REScrubberView(0);
  sub_1001F1160(&qword_100AE7B30, &qword_10082C788);
  sub_10079E004();
  return result;
}

double sub_1004D54DC()
{
  if (sub_1004D9CB0())
  {
    sub_100009864(*(v0 + 16) + 80, &aBlock);
    sub_10000E3E8(&aBlock, v30);
    sub_100341270(0, 255, 0, 1);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v3 = sub_10079F964();
      v5 = v4;
      swift_unknownObjectRelease();
      sub_1000074E0(&aBlock);
      v6 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
      v2 = v6;
      v7 = *(v6 + 2);
      v8 = *(v6 + 3);
      v9 = v7 + 1;
      if (v7 >= v8 >> 1)
      {
        v25 = *(v6 + 2);
        v26 = sub_10000B3D8((v8 > 1), v7 + 1, 1, v6);
        v7 = v25;
        v2 = v26;
      }

      *(v2 + 2) = v9;
      v10 = &v2[16 * v7];
      *(v10 + 4) = v3;
      *(v10 + 5) = v5;
    }

    else
    {
      sub_1000074E0(&aBlock);
      v2 = _swiftEmptyArrayStorage;
    }

    v11 = sub_1004DEE6C();
    v13 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10000B3D8(0, *(v2 + 2) + 1, 1, v2);
    }

    v15 = *(v2 + 2);
    v14 = *(v2 + 3);
    if (v15 >= v14 >> 1)
    {
      v2 = sub_10000B3D8((v14 > 1), v15 + 1, 1, v2);
    }

    *(v2 + 2) = v15 + 1;
    v16 = &v2[16 * v15];
    *(v16 + 4) = v11;
    *(v16 + 5) = v13;
    aBlock = v2;
    sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
    sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
    v17 = sub_1007A20B4();
    v19 = v18;

    aBlock = v17;
    v28 = v19;
    sub_1002060B4();
    if (sub_1007A28A4())
    {
      if (qword_100AE7770)
      {
        [qword_100AE7770 invalidate];
      }

      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = v17;
      *(v21 + 24) = v19;
      v31 = sub_1004E0E80;
      v32 = v21;
      aBlock = _NSConcreteStackBlock;
      v28 = 1107296256;
      v29 = sub_100201C54;
      v30 = &unk_100A20300;
      v22 = _Block_copy(&aBlock);

      v23 = [v20 scheduledTimerWithTimeInterval:0 repeats:v22 block:0.5];
      _Block_release(v22);
      v24 = qword_100AE7770;
      qword_100AE7770 = v23;
    }

    else
    {
    }
  }

  return result;
}

void sub_1004D5828(uint64_t a1@<X8>)
{
  v329 = a1;
  v328 = sub_10079CF24();
  v327 = *(v328 - 1);
  __chkstk_darwin(v328);
  v326 = &v285[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v346 = sub_100796CF4();
  v357 = *(v346 - 8);
  __chkstk_darwin(v346);
  v356 = &v285[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v337 = &v285[-v5];
  v345 = sub_1007A21D4();
  v355 = *(v345 - 8);
  __chkstk_darwin(v345);
  v351 = &v285[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v352 = &v285[-v8];
  v349 = sub_10079D074();
  v348 = *(v349 - 8);
  __chkstk_darwin(v349);
  v347 = &v285[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v307 = sub_10079CCC4();
  v306 = *(v307 - 8);
  __chkstk_darwin(v307);
  v305 = &v285[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1001F1160(&qword_100AE7848, &qword_10082C258);
  __chkstk_darwin(v11 - 8);
  v350 = &v285[-v12];
  v301 = sub_1001F1160(&qword_100AE7850, &qword_10082C260);
  __chkstk_darwin(v301);
  v302 = &v285[-v13];
  v303 = sub_1001F1160(&qword_100AE7858, &qword_10082C268);
  __chkstk_darwin(v303);
  v304 = &v285[-v14];
  v310 = sub_1001F1160(&qword_100AE7860, &qword_10082C270);
  v309 = *(v310 - 8);
  __chkstk_darwin(v310);
  v353 = &v285[-v15];
  v308 = sub_1001F1160(&qword_100AE7868, &qword_10082C278);
  __chkstk_darwin(v308);
  v311 = &v285[-v16];
  v314 = sub_1001F1160(&qword_100AE7870, &qword_10082C280);
  __chkstk_darwin(v314);
  v312 = &v285[-v17];
  v316 = sub_1001F1160(&qword_100AE7878, &qword_10082C288);
  v315 = *(v316 - 8);
  __chkstk_darwin(v316);
  v313 = &v285[-v18];
  v317 = sub_1001F1160(&qword_100AE7880, &qword_10082C290);
  __chkstk_darwin(v317);
  v339 = &v285[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v340 = &v285[-v21];
  v341 = sub_1001F1160(&qword_100AE7888, &qword_10082C298);
  __chkstk_darwin(v341);
  v342 = &v285[-v22];
  v319 = sub_1001F1160(&qword_100AE7890, &qword_10082C2A0);
  __chkstk_darwin(v319);
  v331 = &v285[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v318 = &v285[-v25];
  __chkstk_darwin(v26);
  v333 = &v285[-v27];
  v320 = sub_1001F1160(&qword_100AE7898, &qword_10082C2A8);
  __chkstk_darwin(v320);
  v335 = &v285[-v28];
  v323 = sub_1001F1160(&qword_100AE78A0, &qword_10082C2B0);
  __chkstk_darwin(v323);
  v325 = &v285[-v29];
  v30 = sub_1001F1160(&qword_100AE78A8, &qword_10082C2B8);
  __chkstk_darwin(v30 - 8);
  v322 = &v285[-v31];
  v321 = sub_1001F1160(&qword_100AE78B0, &unk_10082C2C0);
  __chkstk_darwin(v321);
  v324 = &v285[-v32];
  v300 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v300);
  v299 = &v285[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v298 = &v285[-v35];
  v297 = type metadata accessor for RESliderView(0);
  __chkstk_darwin(v297);
  v336 = &v285[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v334 = type metadata accessor for REScrubberView(0);
  v37 = *(v334 - 1);
  v38 = *(v37 + 64);
  __chkstk_darwin(v334);
  v332 = &v285[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v41 = &v285[-v40];
  sub_1004E0B04(v1, &v285[-v40], type metadata accessor for REScrubberView);
  sub_1007A26F4();
  v42 = sub_1007A26E4();
  v43 = *(v37 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = &protocol witness table for MainActor;
  sub_1004E0B6C(v41, v44 + ((v43 + 32) & ~v43), type metadata accessor for REScrubberView);
  v45 = sub_1007A26E4();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = &protocol witness table for MainActor;
  sub_10079E204();
  v295 = *(&v367 + 1);
  v296 = v367;
  v294 = v368[0];
  v47 = v338;
  sub_1004E0B04(v338, v41, type metadata accessor for REScrubberView);
  v48 = (v43 + 16) & ~v43;
  v344 = v38;
  v358 = v43;
  v49 = swift_allocObject();
  v354 = v41;
  sub_1004E0B6C(v41, v49 + v48, type metadata accessor for REScrubberView);
  v50 = *(v47 + 16);
  swift_getKeyPath();
  v51 = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *&v367 = v50;
  v52 = sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (!*(v50 + 280))
  {
    v54 = *(v50 + 144);
    v55 = *(v54 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerCurrentPage);
    v56 = *(v54 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange);
    if (__OFSUB__(v55, v56))
    {
      __break(1u);
    }

    else
    {
      v57 = *(v54 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange + 8);
      v58 = __OFSUB__(v57, v56);
      v59 = v57 - v56;
      if (!v58)
      {
        v58 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (!v58)
        {
          v53 = (v55 - v56) / v60;
          goto LABEL_7;
        }

LABEL_35:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  swift_getKeyPath();
  *&v367 = v50;
  sub_100797A14();

  swift_beginAccess();
  v53 = *(v50 + 320);
LABEL_7:
  sub_10000E3E8((v50 + 80), *(v50 + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v61 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v288 = v61 == 2;
  }

  else
  {
    v288 = 0;
  }

  v287 = sub_1004D475C();
  swift_getKeyPath();
  *&v367 = v50;
  v293 = v51;
  v292 = v52;
  sub_100797A14();

  v62 = *(v50 + 304);
  v330 = v50;
  v63 = v334;
  v64 = *(v47 + v334[7]);
  v65 = *(v47 + v334[8]);
  v66 = (v47 + v334[12]);
  v67 = *v66;
  v68 = *(v66 + 1);
  v291 = v67;
  LOBYTE(v364) = v67;
  v290 = v68;
  v365 = v68;
  v289 = sub_1001F1160(&qword_100AE78B8, &qword_10082C348);
  sub_10079E014();
  v69 = v367;
  v286 = v368[0];
  v70 = v354;
  sub_1004E0B04(v47, v354, type metadata accessor for REScrubberView);
  v71 = swift_allocObject();
  v343 = v48;
  sub_1004E0B6C(v70, v71 + v48, type metadata accessor for REScrubberView);
  type metadata accessor for ChromeStyle(0);
  sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);

  v72 = sub_10079C484();
  v74 = v73;
  v75 = v47;
  v76 = v49;
  v77 = [objc_opt_self() sharedApplication];
  v78 = [v77 userInterfaceLayoutDirection];

  v79 = v336;
  *v336 = v72;
  *(v79 + 1) = v74;
  v79[2] = v53;
  *(v79 + 24) = 1;
  *(v79 + 25) = v288;
  *(v79 + 26) = v287 & 1;
  *(v79 + 27) = v78 == 1;
  *(v79 + 4) = v62;
  v79[5] = v64;
  *(v79 + 6) = v65;
  v80 = v295;
  *(v79 + 7) = v296;
  *(v79 + 8) = v80;
  *(v79 + 72) = v294;
  *(v79 + 5) = v69;
  *(v79 + 96) = v286;
  *(v79 + 13) = sub_1004DCFD0;
  *(v79 + 14) = v71;
  *(v79 + 15) = sub_1004DCF70;
  *(v79 + 16) = v76;
  v296 = v76;
  v81 = v297;
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  sub_1007A33F4();
  v82 = v79 + v81[18];
  LOBYTE(v364) = 0;
  sub_10079BD84();
  v83 = *(&v367 + 1);
  v84 = *v368;
  *v82 = v367;
  *(v82 + 1) = v83;
  *(v82 + 1) = v84;
  v85 = v79 + v81[19];
  type metadata accessor for CGPoint(0);
  v364 = 0;
  v365 = 0;
  sub_10079BD84();
  v86 = *v368;
  v87 = *&v368[8];
  *v85 = v367;
  *(v85 + 2) = v86;
  *(v85 + 24) = v87;
  v88 = (v79 + v81[20]);
  v364 = 0;
  sub_10079DFE4();
  v89 = *(&v367 + 1);
  *v88 = v367;
  v88[1] = v89;
  v90 = v79 + v81[21];
  v364 = 0;
  v365 = 0;
  v366 = 1;
  sub_1001F1160(&qword_100ADC650, &qword_10082C350);
  sub_10079DFE4();
  v91 = v368[0];
  v92 = *&v368[8];
  *v90 = v367;
  v90[16] = v91;
  *(v90 + 3) = v92;
  v93 = sub_100796BB4();
  v94 = v298;
  (*(*(v93 - 8) + 56))(v298, 1, 1, v93);
  sub_1000077D8(v94, v299, &unk_100ADB5C0, &unk_100816880);
  sub_10079DFE4();
  sub_100007840(v94, &unk_100ADB5C0, &unk_100816880);
  v95 = v79 + v81[23];
  LOBYTE(v364) = 0;
  sub_10079DFE4();
  v96 = *(&v367 + 1);
  *v95 = v367;
  *(v95 + 1) = v96;
  v97 = v63[15];
  v98 = v330;
  LODWORD(v95) = *(v75 + v97);
  v99 = sub_1004D475C() & 1;
  v100 = REActionMenuState.scrubberStartingPosition()();
  if (v95 == v99)
  {
    v102 = v348;
    v103 = v311;
    v104 = v307;
  }

  else
  {
    sub_10000E3E8((v98 + 80), *(v98 + 104));
    Strong = swift_unknownObjectWeakLoadStrong();
    v102 = v348;
    v103 = v311;
    v104 = v307;
    if (!Strong || (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v105 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v105 != 2))
    {
      v100 = 1.0 - v100;
    }
  }

  v348 = sub_1004D839C();
  v106 = sub_10079E474();
  v107 = v350;
  *v350 = v106;
  *(v107 + 1) = v108;
  v109 = sub_1001F1160(&qword_100AE78C0, &qword_10082C358);
  sub_1004D8804(v75, v79, &v107[*(v109 + 44)], v64 * v100 - v64 * 0.5, 2.0 - v64 * 0.5, v64 * 0.5 + -4.0, 2.0);
  sub_10000E3E8((v98 + 80), *(v98 + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v110 = v343;
  sub_10079E474();
  sub_10079BE54();
  v111 = v302;
  sub_10020B3C8(v350, v302, &qword_100AE7848, &qword_10082C258);
  v112 = &v111[*(v301 + 36)];
  v113 = *v368;
  *v112 = v367;
  v112[1] = v113;
  v112[2] = *&v368[16];
  v114 = v354;
  sub_1004E0B04(v75, v354, type metadata accessor for REScrubberView);
  v115 = swift_allocObject();
  sub_1004E0B6C(v114, v115 + v110, type metadata accessor for REScrubberView);
  v116 = v111;
  v117 = v304;
  sub_10020B3C8(v116, v304, &qword_100AE7850, &qword_10082C260);
  v118 = &v117[*(v303 + 36)];
  *v118 = sub_1004DFC94;
  v118[1] = v115;
  v119 = v305;
  sub_10079C454();
  sub_1004DFCBC();
  sub_1004E0E88(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  sub_10079D6F4();
  (*(v306 + 8))(v119, v104);
  sub_100007840(v117, &qword_100AE7858, &qword_10082C268);
  sub_10000E3E8((v98 + 80), *(v98 + 104));
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v120 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v120 == 2))
  {
    v121 = sub_10079E494();
  }

  else
  {
    v121 = sub_10079E464();
  }

  v123 = v121;
  v124 = v122;
  sub_10000E3E8((v98 + 80), *(v98 + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v125 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v126 = v125 != 2;
  }

  else
  {
    v126 = 1;
  }

  v127 = v354;
  sub_1004E0B04(v75, v354, type metadata accessor for REScrubberView);
  v128 = swift_allocObject();
  sub_1004E0B6C(v127, v128 + v110, type metadata accessor for REScrubberView);
  (*(v309 + 32))(v103, v353, v310);
  v129 = v103 + *(v308 + 36);
  *v129 = v126;
  *(v129 + 8) = 0x4030000000000000;
  *(v129 + 16) = 0;
  *(v129 + 24) = sub_1004DFE2C;
  *(v129 + 32) = v128;
  *(v129 + 40) = v123;
  *(v129 + 48) = v124;
  LOBYTE(v364) = v291;
  v365 = v290;
  sub_10079DFF4();
  if (v362[0])
  {
    v130 = v349;
    v131 = v347;
    v132 = v342;
    v133 = v339;
    if (v362[0] == 1)
    {
      v135 = 0.96;
    }

    else
    {
      v135 = 1.03;
    }

    if (UIAccessibilityIsReduceMotionEnabled())
    {
      v134 = 1.0;
    }

    else
    {
      v134 = v135;
    }
  }

  else
  {
    v134 = 0.99;
    v130 = v349;
    v131 = v347;
    v132 = v342;
    v133 = v339;
  }

  sub_10079E634();
  v137 = v136;
  v139 = v138;
  v140 = v312;
  sub_10020B3C8(v103, v312, &qword_100AE7868, &qword_10082C278);
  v141 = v314;
  v142 = &v140[*(v314 + 36)];
  *v142 = v134;
  v142[1] = v134;
  *(v142 + 2) = v137;
  *(v142 + 3) = v139;
  sub_10079D054();
  v143 = sub_1004DFE44();
  v144 = v313;
  sub_10079D9A4();
  (v102)[1](v131, v130);
  sub_100007840(v140, &qword_100AE7870, &qword_10082C280);
  v364 = v141;
  v365 = v143;
  swift_getOpaqueTypeConformance2();
  v145 = v316;
  sub_10079DA04();
  (*(v315 + 8))(v144, v145);
  v364 = v348;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
  v146 = sub_1007A20B4();
  v148 = v147;

  v364 = v146;
  v365 = v148;
  v149 = sub_100206ECC();
  v150 = v340;
  v353 = v149;
  sub_10079C1C4();

  sub_100007840(v133, &qword_100AE7880, &qword_10082C290);
  v151 = sub_1004D9E38();
  v153 = v152;
  sub_10020B3C8(v150, v132, &qword_100AE7880, &qword_10082C290);
  v154 = (v132 + *(v341 + 36));
  *v154 = v151;
  v154[1] = v153;
  v364 = sub_1004DA7A8();
  v365 = v155;
  sub_1004E0014();
  sub_10079D894();

  sub_100007840(v132, &qword_100AE7888, &qword_10082C298);
  sub_1001F1160(&qword_100AE7928, &qword_10082C378);
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_10081E180;
  v157 = v352;
  sub_1007A2154();
  v158 = v337;
  sub_100796C94();
  v159 = v355;
  v160 = *(v355 + 16);
  v340 = (v355 + 16);
  v339 = v160;
  v161 = v351;
  v162 = v345;
  (v160)(v351, v157, v345);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v349 = ObjCClassFromMetadata;
  v348 = objc_opt_self();
  v164 = [v348 bundleForClass:ObjCClassFromMetadata];
  v165 = v357;
  v342 = *(v357 + 16);
  v347 = (v357 + 16);
  v166 = v356;
  v167 = v346;
  (v342)(v356, v158, v346);
  v168 = sub_1007A22D4(v161, 0, 0, v164, v166, "AX Label 1 for Scrubber", 23, 2);
  v170 = v169;
  v171 = *(v165 + 8);
  v357 = v165 + 8;
  v341 = v171;
  v171(v158, v167);
  v172 = *(v159 + 8);
  v355 = v159 + 8;
  v350 = v172;
  (v172)(v157, v162);
  v364 = v168;
  v365 = v170;
  *(v156 + 32) = sub_10079D5D4();
  *(v156 + 40) = v173;
  *(v156 + 48) = v174 & 1;
  *(v156 + 56) = v175;
  v176 = v157;
  sub_1007A2154();
  sub_100796C94();
  (v339)(v161, v157, v162);
  v177 = [v348 bundleForClass:v349];
  v178 = v356;
  v179 = v342;
  (v342)(v356, v158, v167);
  v180 = sub_1007A22D4(v161, 0, 0, v177, v178, "AX Label 2 for Scrubber", 23, 2);
  v182 = v181;
  v183 = v158;
  v184 = v158;
  v185 = v167;
  (v341)(v183, v167);
  (v350)(v176, v162);
  v364 = v180;
  v365 = v182;
  *(v156 + 64) = sub_10079D5D4();
  *(v156 + 72) = v186;
  *(v156 + 80) = v187 & 1;
  *(v156 + 88) = v188;
  sub_1007A2154();
  sub_100796C94();
  v189 = v351;
  v190 = v162;
  v191 = v339;
  (v339)(v351, v176, v190);
  v192 = [v348 bundleForClass:v349];
  v193 = v356;
  v179(v356, v184, v185);
  v194 = sub_1007A22D4(v189, 0, 0, v192, v193, "AX Label 3 for Scrubber", 23, 2);
  v196 = v195;
  v197 = v184;
  v198 = v341;
  (v341)(v184, v185);
  v199 = v352;
  v200 = v345;
  (v350)(v352, v345);
  v364 = v194;
  v365 = v196;
  *(v156 + 96) = sub_10079D5D4();
  *(v156 + 104) = v201;
  *(v156 + 112) = v202 & 1;
  *(v156 + 120) = v203;
  sub_1007A2154();
  sub_100796C94();
  v204 = v351;
  v191(v351, v199, v200);
  v205 = [v348 bundleForClass:v349];
  v206 = v356;
  v207 = v346;
  (v342)(v356, v197, v346);
  v208 = sub_1007A22D4(v204, 0, 0, v205, v206, "AX Label 4 for Scrubber", 23, 2);
  v210 = v209;
  v198(v197, v207);
  v211 = v345;
  (v350)(v199, v345);
  v364 = v208;
  v365 = v210;
  *(v156 + 128) = sub_10079D5D4();
  *(v156 + 136) = v212;
  *(v156 + 144) = v213 & 1;
  *(v156 + 152) = v214;
  swift_getKeyPath();
  v364 = v330;
  sub_100797A14();

  sub_10079B904();
  *(v156 + 160) = sub_10079D5D4();
  *(v156 + 168) = v215;
  *(v156 + 176) = v216 & 1;
  *(v156 + 184) = v217;
  v218 = v318;
  v219 = v331;
  sub_10079C254();

  sub_100007840(v219, &qword_100AE7890, &qword_10082C2A0);
  v220 = v326;
  sub_10079CF14();
  sub_10079C214();

  (*(v327 + 8))(v220, v328);
  sub_100007840(v218, &qword_100AE7890, &qword_10082C2A0);
  v331 = type metadata accessor for REScrubberView;
  v221 = v338;
  v222 = v354;
  sub_1004E0B04(v338, v354, type metadata accessor for REScrubberView);
  v223 = v343;
  v330 = swift_allocObject();
  v328 = type metadata accessor for REScrubberView;
  sub_1004E0B6C(v222, v330 + v223, type metadata accessor for REScrubberView);
  v224 = v352;
  sub_1007A2154();
  v225 = v337;
  sub_100796C94();
  v226 = v351;
  (v339)(v351, v224, v211);
  v227 = [v348 bundleForClass:v349];
  v228 = v356;
  v229 = v346;
  (v342)(v356, v225, v346);
  v230 = sub_1007A22D4(v226, 0, 0, v227, v228, "Accessibility name for a custom action that scrubs the book progress scrubber to the previous chapter", 101, 2);
  v232 = v231;
  (v341)(v225, v229);
  (v350)(v224, v211);
  v233 = v332;
  v234 = v331;
  sub_1004E0B04(v221, v332, v331);
  v235 = swift_allocObject();
  v236 = v233;
  v237 = v328;
  sub_1004E0B6C(v236, v235 + v223, v328);
  v364 = v230;
  v365 = v232;
  v238 = sub_10079D5D4();
  v240 = v239;
  v242 = v241;
  v361 = v243 & 1;
  v244 = v335;
  sub_10020B3C8(v333, v335, &qword_100AE7890, &qword_10082C2A0);
  v245 = &v244[*(v320 + 36)];
  v246 = v330;
  *v245 = sub_1004E01EC;
  *(v245 + 1) = v246;
  *(v245 + 2) = v238;
  *(v245 + 3) = v240;
  v245[32] = v361;
  *(v245 + 33) = *v360;
  *(v245 + 9) = *&v360[3];
  *(v245 + 5) = v242;
  *(v245 + 6) = sub_1004E01F4;
  *(v245 + 7) = v235;
  v247 = v354;
  v248 = v234;
  sub_1004E0B04(v221, v354, v234);
  v249 = v343;
  v333 = swift_allocObject();
  v250 = v237;
  sub_1004E0B6C(v247, &v333[v249], v237);
  v251 = v352;
  sub_1007A2154();
  v252 = v337;
  sub_100796C94();
  v253 = v351;
  v254 = v345;
  (v339)(v351, v251, v345);
  v255 = [v348 bundleForClass:v349];
  v256 = v356;
  v257 = v346;
  (v342)(v356, v252, v346);
  v258 = sub_1007A22D4(v253, 0, 0, v255, v256, "Accessibility name for a custom action that scrubs the book progress scrubber to the next chapter", 97, 2);
  v260 = v259;
  (v341)(v252, v257);
  (v350)(v352, v254);
  v261 = v338;
  v262 = v332;
  sub_1004E0B04(v338, v332, v248);
  v263 = v343;
  v264 = swift_allocObject();
  sub_1004E0B6C(v262, v264 + v263, v250);
  v364 = v258;
  v365 = v260;
  v265 = sub_10079D5D4();
  v267 = v266;
  v269 = v268;
  v363 = v270 & 1;
  v271 = v325;
  sub_10020B3C8(v335, v325, &qword_100AE7898, &qword_10082C2A8);
  v272 = &v271[*(v323 + 36)];
  v273 = v333;
  *v272 = sub_1004E0260;
  *(v272 + 1) = v273;
  *(v272 + 2) = v265;
  *(v272 + 3) = v267;
  v272[32] = v363;
  *(v272 + 33) = *v362;
  *(v272 + 9) = *&v362[3];
  *(v272 + 5) = v269;
  *(v272 + 6) = sub_1004E02D0;
  *(v272 + 7) = v264;
  v274 = v354;
  sub_1004E0B04(v261, v354, v331);
  v275 = swift_allocObject();
  sub_1004E0B6C(v274, v275 + v263, v250);
  sub_1004E0348();
  v276 = v322;
  sub_10079DA84();

  sub_100007840(v271, &qword_100AE78A0, &qword_10082C2B0);
  KeyPath = swift_getKeyPath();
  v278 = v324;
  sub_10020B3C8(v276, v324, &qword_100AE78A8, &qword_10082C2B8);
  v279 = &v278[*(v321 + 36)];
  *v279 = KeyPath;
  v279[8] = 0;
  v280 = *(v261 + v334[9]);
  v359[0] = 0;
  sub_10079DFE4();
  LOBYTE(v271) = v364;
  v281 = v365;
  v282 = v278;
  v283 = v329;
  sub_10020B3C8(v282, v329, &qword_100AE78B0, &unk_10082C2C0);
  v284 = v283 + *(sub_1001F1160(&qword_100AE7948, &qword_10082C3D8) + 36);
  *v284 = v280;
  *(v284 + 8) = v271;
  *(v284 + 16) = v281;
  sub_100330328(v336);
}

void sub_1004D81A0(uint64_t a1@<X2>, char *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_getKeyPath();
  sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  v4 = *(v3 + 256);
  if (v4 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {
    v5 = 3;
  }

  else
  {
    swift_getKeyPath();
    sub_100797A14();

    swift_beginAccess();
    if (*(v3 + 352) == 1)
    {
      swift_getKeyPath();
      sub_100797A14();

      if (*(v3 + 280))
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
}