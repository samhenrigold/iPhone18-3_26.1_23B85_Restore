uint64_t sub_100001570()
{
  v0 = sub_1000077A0();
  sub_100006E60(v0, qword_1000102E8);
  sub_100006D34(v0, qword_1000102E8);
  return sub_100007790();
}

uint64_t sub_100001610()
{
  v1 = v0[6];
  v2 = sub_100006C30(&_swiftEmptyArrayStorage);
  sub_1000071D8(0, &qword_100010230, NSNumber_ptr);
  isa = sub_100007950(5242880).super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000051C4(isa, 0x6953676F4C78616DLL, 0xEA0000000000657ALL, isUniquelyReferenced_nonNull_native);
  v5 = sub_100007950(2).super.super.isa;
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000051C4(v5, 0x746F687370616E73, 0xEC00000065707954, v6);
  v0[7] = v2;
  v0[8] = *(v1 + OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_manager);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_100001788;

  return DockCoreManager.connectedDockAccessory()();
}

uint64_t sub_100001788(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {

    v4 = sub_100001C78;
  }

  else
  {
    v4 = sub_1000018A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000018A4()
{
  v1 = v0[10];
  if (v1)
  {
    if (qword_1000102E0 != -1)
    {
      swift_once();
    }

    v2 = sub_1000077A0();
    sub_100006D34(v2, qword_1000102E8);
    v3 = v1;
    v4 = sub_100007780();
    v5 = sub_100007930();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = sub_100007770();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Got accessory %@, attempting to pull diagnostics...", v6, 0xCu);
      sub_1000073A0(v7, &qword_100010238, &qword_100007FE0);
    }

    v9 = sub_100007770();
    v0[12] = v9;
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_100001ABC;
    v11 = v0[7];

    return DockCoreManager.getAccessoryDiagnostics(info:options:)(v9, v11);
  }

  else
  {

    v12 = v0[1];

    return v12(0, 0);
  }
}

uint64_t sub_100001ABC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_100001E3C;
  }

  else
  {
    v8 = v6[12];

    v6[15] = a2;
    v6[16] = a1;
    v7 = sub_100001C00;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100001C00()
{
  v1 = *(v0 + 120);

  if (v1)
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_100001C78()
{
  v12 = v0;
  if (qword_1000102E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000077A0();
  sub_100006D34(v1, qword_1000102E8);
  swift_errorRetain();
  v2 = sub_100007780();
  v3 = sub_100007920();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_100007A70();
    v8 = sub_100004900(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to capture diagnostic snapshot: %s", v4, 0xCu);
    sub_100006D6C(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0, 0);
}

uint64_t sub_100001E3C()
{
  v14 = v0;
  v1 = v0[12];
  v2 = v0[10];

  if (qword_1000102E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1000077A0();
  sub_100006D34(v3, qword_1000102E8);
  swift_errorRetain();
  v4 = sub_100007780();
  v5 = sub_100007920();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_100007A70();
    v10 = sub_100004900(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to capture diagnostic snapshot: %s", v6, 0xCu);
    sub_100006D6C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11(0, 0);
}

char *sub_100002018()
{
  v1 = v0;
  v2 = sub_1000077B0();
  v130 = *(v2 - 8);
  v131 = v2;
  __chkstk_darwin(v2);
  v127 = (&v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1000077D0();
  v128 = *(v4 - 8);
  v129 = v4;
  v5 = __chkstk_darwin(v4);
  v125 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v126 = &v124 - v7;
  v8 = sub_100006DB8(&qword_100010250, &qword_100007FF8);
  __chkstk_darwin(v8 - 8);
  v10 = &v124 - v9;
  v11 = sub_1000076A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100006DB8(&qword_100010258, &qword_100008000);
  __chkstk_darwin(v15 - 8);
  v17 = &v124 - v16;
  v18 = sub_100007700();
  v19 = __chkstk_darwin(v18);
  v21 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v124 - v22;
  v134 = v25;
  v135 = v24;
  (*(v25 + 56))(v17, 1, 1);
  (*(v12 + 104))(v14, enum case for URL.DirectoryHint.inferFromPath(_:), v11);
  sub_1000076E0();
  v26 = OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_attachments;
  swift_beginAccess();
  v132 = v26;
  *&v1[v26] = &_swiftEmptyArrayStorage;

  v27 = objc_opt_self();
  v28 = [v27 defaultManager];
  sub_1000076D0(1);
  v29 = sub_1000077F0();

  v30 = [v28 fileExistsAtPath:v29];

  v133 = v23;
  if (!v30)
  {
    if (qword_1000102E0 != -1)
    {
      swift_once();
    }

    v48 = sub_1000077A0();
    sub_100006D34(v48, qword_1000102E8);
    v36 = v134;
    v45 = v135;
    (*(v134 + 16))(v21, v133, v135);
    v49 = sub_100007780();
    v50 = sub_100007920();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v137[0] = v52;
      *v51 = 136315138;
      v53 = sub_1000076D0(1);
      v55 = v54;
      (*(v134 + 8))(v21, v135);
      v56 = sub_100004900(v53, v55, v137);
      v36 = v134;

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "No log directory in temporary file path: %s", v51, 0xCu);
      sub_100006D6C(v52);

      v45 = v135;
    }

    else
    {

      (v36[1])(v21, v45);
    }

    goto LABEL_46;
  }

  v31 = [v27 defaultManager];
  sub_1000076B0(v32);
  v34 = v33;
  sub_100006DB8(&qword_100010260, &qword_100008018);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100007FB0;
  v36 = NSURLIsRegularFileKey;
  *(v35 + 32) = NSURLIsRegularFileKey;
  *(v35 + 40) = NSURLIsReadableKey;
  type metadata accessor for URLResourceKey();
  v37 = NSURLIsRegularFileKey;
  v38 = NSURLIsReadableKey;
  isa = sub_100007880().super.isa;

  v137[0] = 0;
  v40 = [v31 contentsOfDirectoryAtURL:v34 includingPropertiesForKeys:isa options:21 error:v137];

  v41 = v137[0];
  if (!v40)
  {
    v57 = v137[0];
    sub_100007690();

    swift_willThrow();
    v36 = v134;
    if (qword_1000102E0 == -1)
    {
LABEL_14:
      v58 = sub_1000077A0();
      sub_100006D34(v58, qword_1000102E8);
      swift_errorRetain();
      v59 = sub_100007780();
      v60 = sub_100007920();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v137[0] = v62;
        *v61 = 136315138;
        swift_getErrorValue();
        v63 = sub_100007A70();
        v65 = sub_100004900(v63, v64, v137);

        *(v61 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v59, v60, "Unable to load contents of log directory: %s", v61, 0xCu);
        sub_100006D6C(v62);
      }

      else
      {
      }

      v45 = v135;
      goto LABEL_46;
    }

LABEL_70:
    swift_once();
    goto LABEL_14;
  }

  v42 = sub_100007890();
  v43 = v41;

  __chkstk_darwin(v44);
  *(&v124 - 2) = v23;
  v45 = sub_100003248(sub_1000070DC, (&v124 - 4), v42);

  v46 = v45[2];
  if (!v46)
  {
LABEL_7:
    v47 = v45[2];
    goto LABEL_20;
  }

  v47 = 0;
  while (v45[v47 + 4])
  {
    if (v46 == ++v47)
    {
      goto LABEL_7;
    }
  }

  if (__OFADD__(v47, 1))
  {
    __break(1u);
LABEL_73:
    __break(1u);
  }

  if (v47 + 1 != v46)
  {
    v114 = v47 + 5;
    do
    {
      v36 = (v114 - 4);
      if (v114 - 4 >= v46)
      {
        goto LABEL_62;
      }

      v116 = v45[v114];
      if (v116)
      {
        if (v36 != v47)
        {
          if (v47 >= v46)
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v117 = v45[v47 + 4];
          v118 = v116;
          v119 = v117;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_100006C1C(v45);
          }

          v120 = &v45[v47];
          v121 = v120[4];
          v120[4] = v116;

          if (v36 >= v45[2])
          {
            goto LABEL_65;
          }

          v122 = v45[v114];
          v45[v114] = v117;

          v46 = v45[2];
        }

        ++v47;
      }

      v115 = v114 - 3;
      ++v114;
    }

    while (v115 != v46);
  }

  if (v46 < v47)
  {
    __break(1u);
    goto LABEL_69;
  }

  if (v47 < 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_20:
  if (__OFADD__(v46, v47 - v46))
  {
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
    goto LABEL_25;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v136 = v45;
  if (!isUniquelyReferenced_nonNull_native || v47 > v45[3] >> 1)
  {
    v45 = sub_100007980();
    v136 = v45;
  }

  sub_100007108(v47, v46, 0);
  v67 = v45[2];
  v47 = (v45 + 4);
  v137[0] = v45 + 4;
  v137[1] = v67;
  sub_10000581C(v137);
  v136 = v45;
  if (qword_1000102E0 != -1)
  {
    goto LABEL_67;
  }

LABEL_25:
  v68 = sub_1000077A0();
  sub_100006D34(v68, qword_1000102E8);
  v69 = sub_100007780();
  v70 = sub_100007930();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134217984;
    *(v71 + 4) = v45[2];
    _os_log_impl(&_mh_execute_header, v69, v70, "Found %ld file(s)", v71, 0xCu);
  }

  v72 = v45[2];
  if (v72 > 5)
  {
    sub_100005560(v45, v47, 0, 0xBuLL);
    v74 = v73;
    v72 = v73[2];
    if (v72)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  v74 = v45;
  if (!v72)
  {
LABEL_35:

    v77 = &_swiftEmptyArrayStorage;
LABEL_36:
    v78 = v132;
    swift_beginAccess();
    sub_100003514(v77);
    swift_endAccess();
    v79 = v1;
    v80 = sub_100007780();
    v81 = sub_100007930();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 134217984;
      v83 = *&v1[v78];
      if (v83 >> 62)
      {
        v123 = v82;
        v84 = sub_1000079F0();
        v82 = v123;
      }

      else
      {
        v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v82 + 4) = v84;
      v85 = v82;

      _os_log_impl(&_mh_execute_header, v80, v81, "Using %ld attachments(s)", v85, 0xCu);
    }

    else
    {

      v80 = v79;
    }

    v86 = v79;
    v87 = sub_100007780();
    v88 = sub_100007910();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v137[0] = v90;
      *v89 = 136315138;
      sub_1000071D8(0, &qword_100010268, DEAttachmentItem_ptr);

      v91 = sub_1000078A0();
      v93 = v92;

      v94 = sub_100004900(v91, v93, v137);

      *(v89 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v87, v88, "%s", v89, 0xCu);
      sub_100006D6C(v90);
    }

    v36 = v134;
    v45 = v135;
LABEL_46:
    v96 = v130;
    v95 = v131;
    v97 = v129;
    dispatch_group_enter(*&v1[OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_group]);
    v98 = sub_100007900();
    (*(*(v98 - 8) + 56))(v10, 1, 1, v98);
    v99 = swift_allocObject();
    v99[2] = 0;
    v99[3] = 0;
    v99[4] = v1;
    v100 = v1;
    sub_100003AF8(0, 0, v10, &unk_100008010, v99);

    v101 = v125;
    sub_1000077C0();
    v102 = v127;
    *v127 = 60;
    (*(v96 + 104))(v102, enum case for DispatchTimeInterval.seconds(_:), v95);
    v103 = v126;
    sub_1000077E0();
    (*(v96 + 8))(v102, v95);
    v104 = *(v128 + 8);
    v104(v101, v97);
    sub_100007940();
    v104(v103, v97);
    if (qword_1000102E0 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_29:
  v137[0] = &_swiftEmptyArrayStorage;
  sub_1000079C0();
  v36 = 0;
  while (v36 < v74[2])
  {
    v75 = v74[v36 + 4];
    if (!v75)
    {
      goto LABEL_73;
    }

    v36 = (v36 + 1);
    v76 = v75;
    sub_1000079A0();
    sub_1000079D0();
    sub_1000079E0();
    sub_1000079B0();
    if (v72 == v36)
    {

      v77 = v137[0];
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  swift_once();
LABEL_47:
  v105 = sub_1000077A0();
  sub_100006D34(v105, qword_1000102E8);
  v106 = sub_100007780();
  v107 = sub_100007930();
  v108 = os_log_type_enabled(v106, v107);
  v109 = v133;
  if (v108)
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&_mh_execute_header, v106, v107, "Done collecting diagnostics!", v110, 2u);
  }

  v112 = sub_100003DE8(v111);

  (v36[1])(v109, v45);
  return v112;
}

uint64_t sub_100003018@<X0>(void *a1@<X8>)
{
  v2 = sub_1000076A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007700();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_1000076D0(1);
  v15[1] = v10;
  (*(v3 + 104))(v5, enum case for URL.DirectoryHint.notDirectory(_:), v2);
  sub_1000072CC();
  sub_1000076F0();
  (*(v3 + 8))(v5, v2);

  sub_1000076D0(1);
  v11 = objc_allocWithZone(DEAttachmentItem);
  v12 = sub_1000077F0();

  v13 = [v11 initWithPath:v12];

  result = (*(v7 + 8))(v9, v6);
  *a1 = v13;
  return result;
}

void *sub_100003248(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = &_swiftEmptyArrayStorage;
    sub_1000079C0();
    v9 = *(sub_100007700() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1000079A0();
      sub_1000079D0();
      sub_1000079E0();
      sub_1000079B0();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10000338C(id *a1, void **a2)
{
  v4 = sub_100007730();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  if (!*a1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = *a2;
  v12 = [*a1 modificationDate];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v13 = v12;
  sub_100007710();

  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = [v11 modificationDate];
  if (v14)
  {
    v15 = v14;
    sub_100007710();

    sub_100007720();
    v16 = *(v5 + 8);
    v16(v8, v4);
    v16(v10, v4);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_100003514(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1000079F0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1000079F0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10000564C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100006A04(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100003604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_100007700();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[12] = v6;
  *v6 = v4;
  v6[1] = sub_1000036F4;

  return sub_1000015F0();
}

uint64_t sub_1000036F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = a2;
  v3[13] = a2;

  return _swift_task_switch(sub_1000037FC, 0, 0);
}

void sub_1000037FC()
{
  v23 = v0;
  if (v0[13])
  {
    v1 = objc_allocWithZone(DEAttachmentItem);
    v2 = sub_1000077F0();

    v3 = [v1 initWithPath:v2];

    if (v3)
    {
      if (qword_1000102E0 != -1)
      {
        swift_once();
      }

      v4 = sub_1000077A0();
      sub_100006D34(v4, qword_1000102E8);
      v5 = v3;
      v6 = sub_100007780();
      v7 = sub_100007930();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = v21;
        *v8 = 136315138;
        v9 = [v5 path];

        if (!v9)
        {
          __break(1u);
          return;
        }

        v10 = v0[10];
        v11 = v0[11];
        v12 = v0[9];
        sub_1000076C0();

        v13 = sub_1000076D0(1);
        v15 = v14;
        (*(v10 + 8))(v11, v12);
        v16 = sub_100004900(v13, v15, &v22);

        *(v8 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v6, v7, "attaching diagnostic snapshot: %s", v8, 0xCu);
        sub_100006D6C(v21);
      }

      else
      {
      }

      v17 = v0[8];
      v18 = OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_attachments;
      swift_beginAccess();
      v19 = v5;
      sub_100007870();
      if (*((*(v17 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000078B0();
      }

      sub_1000078D0();
      swift_endAccess();
    }
  }

  dispatch_group_leave(*(v0[8] + OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_group));

  v20 = v0[1];

  v20();
}

uint64_t sub_100003AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100006DB8(&qword_100010250, &qword_100007FF8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100007330(a3, v25 - v10);
  v12 = sub_100007900();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000073A0(v11, &qword_100010250, &qword_100007FF8);
  }

  else
  {
    sub_1000078F0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000078E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100007830() + 32;
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

      sub_1000073A0(a3, &qword_100010250, &qword_100007FF8);

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

  sub_1000073A0(a3, &qword_100010250, &qword_100007FF8);
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

char *sub_100003DE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1000079F0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_1000056EC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100007970();
        sub_1000071D8(0, &qword_100010268, DEAttachmentItem_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000056EC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100007320(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1000071D8(0, &qword_100010268, DEAttachmentItem_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1000056EC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100007320(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_10000417C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DockKitExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004238(uint64_t a1, id *a2)
{
  result = sub_100007800();
  *a2 = 0;
  return result;
}

uint64_t sub_1000042B0(uint64_t a1, id *a2)
{
  v3 = sub_100007810();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004330@<X0>(uint64_t *a1@<X8>)
{
  sub_100007820();
  v2 = sub_1000077F0();

  *a1 = v2;
  return result;
}

uint64_t sub_100004374@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000077F0();

  *a2 = v3;
  return result;
}

uint64_t sub_1000043BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007820();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000043E8(uint64_t a1)
{
  v2 = sub_100007644(&qword_1000102C8, &unk_100008188);
  v3 = sub_100007644(&unk_1000102D0, &unk_100008128);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004480()
{
  sub_100007820();
  v0 = sub_100007860();

  return v0;
}

uint64_t sub_1000044BC(uint64_t a1)
{
  sub_100007820();
  sub_100007840();
}

Swift::Int sub_100004510(uint64_t a1)
{
  sub_100007820();
  sub_100007A80();
  sub_100007840();
  v1 = sub_100007A90();

  return v1;
}

uint64_t sub_100004584(void *a1, uint64_t *a2)
{
  v2 = sub_100007820();
  v4 = v3;
  if (v2 == sub_100007820() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100007A50();
  }

  return v7 & 1;
}

uint64_t sub_10000460C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100004704;

  return v6(a1);
}

uint64_t sub_100004704()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_1000047FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006DB8(&qword_100010290, &qword_100008038);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100004900(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000049CC(v11, 0, 0, 1, a1, a2);
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
    sub_100006E00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006D6C(v11);
  return v7;
}

unint64_t sub_1000049CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004AD8(a5, a6);
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
    result = sub_100007990();
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

char *sub_100004AD8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004B24(a1, a2);
  sub_100004C54(&off_10000C698);
  return v3;
}

char *sub_100004B24(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100004D40(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100007990();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100007850();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004D40(v10, 0);
        result = sub_100007960();
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

uint64_t sub_100004C54(uint64_t result)
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

  result = sub_100004DB4(result, v11, 1, v3);
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

void *sub_100004D40(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100006DB8(&qword_100010240, &qword_100007FE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004DB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006DB8(&qword_100010240, &qword_100007FE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100004EA8(uint64_t a1, uint64_t a2)
{
  sub_100007A80();
  sub_100007840();
  v4 = sub_100007A90();

  return sub_10000533C(a1, a2, v4);
}

uint64_t sub_100004F20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100006DB8(&qword_100010248, &qword_100007FF0);
  v35 = v4;
  result = sub_100007A10();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100007A80();
      sub_100007840();
      result = sub_100007A90();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000051C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100004EA8(a2, a3);
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
      sub_100004F20(v16, a4 & 1);
      v11 = sub_100004EA8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_100007A60();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1000053F4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_10000533C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100007A50())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_1000053F4()
{
  v1 = v0;
  sub_100006DB8(&qword_100010248, &qword_100007FF0);
  v2 = *v0;
  v3 = sub_100007A00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

  return result;
}

void sub_100005560(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100006DB8(&qword_100010280, &qword_100008028);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100006DB8(&qword_100010288, &qword_100008030);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10000564C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1000079F0();
LABEL_9:
  result = sub_100007980();
  *v2 = result;
  return result;
}

char *sub_1000056EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000570C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000570C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006DB8(&qword_1000102A0, &qword_100008040);
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
    v10 = &_swiftEmptyArrayStorage;
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

void sub_10000581C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100007A40(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100006DB8(&qword_100010280, &qword_100008028);
        v5 = sub_1000078C0();
        *(v5 + 2) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100005B80(v7, v8, a1, v4);
      *(v6 + 2) = 0;

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
    sub_100005924(0, v2, 1, a1);
  }
}

void sub_100005924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = sub_100007730();
  v8 = __chkstk_darwin(v43);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v45 = &v36 - v11;
  v37 = a2;
  if (a3 != a2)
  {
    v12 = *a4;
    v41 = (v10 + 8);
    v44 = v12;
    v13 = v12 + 8 * a3 - 8;
    v14 = a1 - a3;
    v15 = &DockKitExtension;
LABEL_5:
    v39 = v13;
    v40 = a3;
    v16 = *(v44 + 8 * a3);
    v38 = v14;
    v17 = v14;
    while (v16)
    {
      v18 = *v13;
      v19 = *v13;
      v20 = v16;
      v21 = [v20 *&v15[3].flags];
      if (!v21)
      {
        goto LABEL_18;
      }

      v22 = v21;
      sub_100007710();

      if (!v18)
      {
        goto LABEL_17;
      }

      v23 = [v19 *&v15[3].flags];
      if (!v23)
      {
        __break(1u);
        break;
      }

      v24 = v23;
      v25 = v42;
      sub_100007710();

      v26 = v17;
      v27 = v45;
      v28 = sub_100007720();
      v29 = *v41;
      v30 = v25;
      v31 = v43;
      (*v41)(v30, v43);
      v32 = v27;
      v33 = v26;
      v15 = &DockKitExtension;
      v29(v32, v31);

      if (v28 == 1)
      {
        if (!v44)
        {
          goto LABEL_19;
        }

        v34 = *v13;
        v16 = *(v13 + 8);
        *v13 = v16;
        *(v13 + 8) = v34;
        v13 -= 8;
        v35 = __CFADD__(v33, 1);
        v17 = v33 + 1;
        if (!v35)
        {
          continue;
        }
      }

      a3 = v40 + 1;
      v13 = v39 + 8;
      v14 = v38 - 1;
      if (v40 + 1 == v37)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }
}

void sub_100005B80(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v120 = a1;
  v131 = sub_100007730();
  v9 = __chkstk_darwin(v131);
  v128 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v133 = &v116 - v12;
  v13 = __chkstk_darwin(v11);
  v124 = &v116 - v14;
  __chkstk_darwin(v13);
  v126 = a3;
  v127 = &v116 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = &_swiftEmptyArrayStorage;
LABEL_102:
    v5 = *v120;
    if (!*v120)
    {
      goto LABEL_150;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v136 = v19;
      v111 = *(v19 + 16);
      if (v111 >= 2)
      {
        while (*v126)
        {
          v112 = *(v19 + 16 * v111);
          v113 = v19;
          v114 = *(v19 + 16 * (v111 - 1) + 32);
          v19 = *(v19 + 16 * (v111 - 1) + 40);
          sub_100006440((*v126 + 8 * v112), (*v126 + 8 * v114), (*v126 + 8 * v19), v5);
          if (v6)
          {
            goto LABEL_112;
          }

          if (v19 < v112)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_1000069F0(v113);
          }

          if (v111 - 2 >= *(v113 + 2))
          {
            goto LABEL_130;
          }

          v115 = &v113[16 * v111];
          *v115 = v112;
          *(v115 + 1) = v19;
          v136 = v113;
          sub_100006964(v111 - 1);
          v19 = v136;
          v111 = *(v136 + 16);
          if (v111 <= 1)
          {
            goto LABEL_112;
          }
        }

        goto LABEL_148;
      }

LABEL_112:

      return;
    }

LABEL_136:
    v19 = sub_1000069F0(v19);
    goto LABEL_104;
  }

  v117 = a4;
  v18 = 0;
  v130 = (v15 + 8);
  v19 = &_swiftEmptyArrayStorage;
LABEL_3:
  v20 = v18++;
  v125 = v20;
  if (v18 < v17)
  {
    v21 = *v126;
    v5 = *(*v126 + 8 * v18);
    v134 = *(*v126 + 8 * v20);
    v135 = v5;
    v22 = v20;
    v23 = v134;
    v24 = v5;
    sub_10000338C(&v135, &v134);
    LODWORD(v129) = v25;
    if (v6)
    {

      return;
    }

    v118 = v19;
    v119 = 0;

    v26 = v22 + 2;
    v27 = (v21 + 8 * v22 + 16);
    v20 = v22;
    v123 = v17;
    while (v17 != v26)
    {
      v28 = *v27;
      if (!*v27)
      {
        goto LABEL_143;
      }

      v29 = *(v27 - 1);
      v30 = v29;
      v31 = v28;
      v32 = [v31 modificationDate];
      if (!v32)
      {
        goto LABEL_145;
      }

      v33 = v32;
      sub_100007710();

      if (!v29)
      {
        goto LABEL_144;
      }

      v34 = [v30 modificationDate];
      if (!v34)
      {
        goto LABEL_142;
      }

      v35 = v34;
      v36 = v124;
      sub_100007710();

      v37 = v127;
      v132 = sub_100007720();
      v38 = v131;
      v5 = *v130;
      (*v130)(v36, v131);
      (v5)(v37, v38);

      ++v26;
      ++v27;
      v20 = v125;
      v17 = v123;
      if (((v129 ^ (v132 != 1)) & 1) == 0)
      {
        v17 = v26 - 1;
        break;
      }
    }

    v19 = v118;
    v6 = v119;
    if (v129)
    {
      if (v17 < v20)
      {
        goto LABEL_135;
      }

      if (v20 < v17)
      {
        v39 = v17 - 1;
        v40 = v20;
        do
        {
          if (v40 != v39)
          {
            v43 = *v126;
            if (!*v126)
            {
              goto LABEL_147;
            }

            v41 = *(v43 + 8 * v40);
            *(v43 + 8 * v40) = *(v43 + 8 * v39);
            *(v43 + 8 * v39) = v41;
          }
        }

        while (++v40 < v39--);
      }
    }

    v18 = v17;
  }

  v44 = v126[1];
  if (v18 >= v44)
  {
    goto LABEL_46;
  }

  if (__OFSUB__(v18, v20))
  {
    goto LABEL_132;
  }

  if (v18 - v20 >= v117)
  {
    goto LABEL_46;
  }

  if (__OFADD__(v20, v117))
  {
    goto LABEL_133;
  }

  if (v20 + v117 >= v44)
  {
    v45 = v126[1];
  }

  else
  {
    v45 = v20 + v117;
  }

  if (v45 < v20)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v18 == v45)
  {
    goto LABEL_46;
  }

  v118 = v19;
  v119 = v6;
  v129 = *v126;
  v46 = v129 + 8 * v18 - 8;
  v47 = v20 - v18;
LABEL_35:
  v122 = v46;
  v123 = v18;
  v48 = *(v129 + 8 * v18);
  v121 = v47;
  v49 = v47;
  while (1)
  {
    if (!v48)
    {
      goto LABEL_140;
    }

    v50 = *v46;
    v5 = *v46;
    v51 = v48;
    v52 = [v51 modificationDate];
    if (!v52)
    {
      goto LABEL_139;
    }

    v53 = v52;
    sub_100007710();

    if (!v50)
    {
      goto LABEL_138;
    }

    v54 = [v5 modificationDate];
    if (!v54)
    {
      break;
    }

    v55 = v54;
    v56 = v128;
    sub_100007710();

    v57 = v133;
    v132 = sub_100007720();
    v58 = *v130;
    v59 = v56;
    v60 = v131;
    (*v130)(v59, v131);
    (v58)(v57, v60);

    if (v132 != 1)
    {
      goto LABEL_34;
    }

    if (!v129)
    {
      goto LABEL_141;
    }

    v61 = *v46;
    v48 = *(v46 + 8);
    *v46 = v48;
    *(v46 + 8) = v61;
    v46 -= 8;
    if (__CFADD__(v49++, 1))
    {
LABEL_34:
      v18 = v123 + 1;
      v46 = v122 + 8;
      v47 = v121 - 1;
      if (v123 + 1 != v45)
      {
        goto LABEL_35;
      }

      v18 = v45;
      v19 = v118;
      v6 = v119;
      v20 = v125;
LABEL_46:
      if (v18 < v20)
      {
        goto LABEL_131;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1000047FC(0, *(v19 + 16) + 1, 1, v19);
      }

      v63 = v19;
      v64 = *(v19 + 16);
      v65 = v63;
      v66 = *(v63 + 24);
      v67 = v64 + 1;
      if (v64 >= v66 >> 1)
      {
        v65 = sub_1000047FC((v66 > 1), v64 + 1, 1, v65);
      }

      *(v65 + 2) = v67;
      v68 = &v65[16 * v64];
      *(v68 + 4) = v125;
      *(v68 + 5) = v18;
      v5 = *v120;
      if (!*v120)
      {
        goto LABEL_149;
      }

      if (v64)
      {
        v19 = v65;
        while (1)
        {
          v69 = v67 - 1;
          if (v67 >= 4)
          {
            break;
          }

          if (v67 == 3)
          {
            v70 = *(v19 + 32);
            v71 = *(v19 + 40);
            v80 = __OFSUB__(v71, v70);
            v72 = v71 - v70;
            v73 = v80;
LABEL_67:
            if (v73)
            {
              goto LABEL_120;
            }

            v86 = (v19 + 16 * v67);
            v88 = *v86;
            v87 = v86[1];
            v89 = __OFSUB__(v87, v88);
            v90 = v87 - v88;
            v91 = v89;
            if (v89)
            {
              goto LABEL_123;
            }

            v92 = (v19 + 32 + 16 * v69);
            v94 = *v92;
            v93 = v92[1];
            v80 = __OFSUB__(v93, v94);
            v95 = v93 - v94;
            if (v80)
            {
              goto LABEL_126;
            }

            if (__OFADD__(v90, v95))
            {
              goto LABEL_127;
            }

            if (v90 + v95 >= v72)
            {
              if (v72 < v95)
              {
                v69 = v67 - 2;
              }

              goto LABEL_88;
            }

            goto LABEL_81;
          }

          v96 = (v19 + 16 * v67);
          v98 = *v96;
          v97 = v96[1];
          v80 = __OFSUB__(v97, v98);
          v90 = v97 - v98;
          v91 = v80;
LABEL_81:
          if (v91)
          {
            goto LABEL_122;
          }

          v99 = v19 + 16 * v69;
          v101 = *(v99 + 32);
          v100 = *(v99 + 40);
          v80 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v80)
          {
            goto LABEL_125;
          }

          if (v102 < v90)
          {
            goto LABEL_98;
          }

LABEL_88:
          v107 = v19;
          v19 = v69 - 1;
          if (v69 - 1 >= v67)
          {
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
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
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
            goto LABEL_134;
          }

          if (!*v126)
          {
            goto LABEL_146;
          }

          v108 = *&v107[16 * v19 + 32];
          v109 = *&v107[16 * v69 + 40];
          sub_100006440((*v126 + 8 * v108), (*v126 + 8 * *&v107[16 * v69 + 32]), (*v126 + 8 * v109), v5);
          if (v6)
          {
            goto LABEL_112;
          }

          if (v109 < v108)
          {
            goto LABEL_116;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_1000069F0(v107);
          }

          if (v19 >= *(v107 + 2))
          {
            goto LABEL_117;
          }

          v110 = &v107[16 * v19];
          *(v110 + 4) = v108;
          *(v110 + 5) = v109;
          v136 = v107;
          sub_100006964(v69);
          v19 = v136;
          v67 = *(v136 + 16);
          if (v67 <= 1)
          {
            goto LABEL_98;
          }
        }

        v74 = v19 + 32 + 16 * v67;
        v75 = *(v74 - 64);
        v76 = *(v74 - 56);
        v80 = __OFSUB__(v76, v75);
        v77 = v76 - v75;
        if (v80)
        {
          goto LABEL_118;
        }

        v79 = *(v74 - 48);
        v78 = *(v74 - 40);
        v80 = __OFSUB__(v78, v79);
        v72 = v78 - v79;
        v73 = v80;
        if (v80)
        {
          goto LABEL_119;
        }

        v81 = (v19 + 16 * v67);
        v83 = *v81;
        v82 = v81[1];
        v80 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v80)
        {
          goto LABEL_121;
        }

        v80 = __OFADD__(v72, v84);
        v85 = v72 + v84;
        if (v80)
        {
          goto LABEL_124;
        }

        if (v85 >= v77)
        {
          v103 = (v19 + 32 + 16 * v69);
          v105 = *v103;
          v104 = v103[1];
          v80 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v80)
          {
            goto LABEL_128;
          }

          if (v72 < v106)
          {
            v69 = v67 - 2;
          }

          goto LABEL_88;
        }

        goto LABEL_67;
      }

      v19 = v65;
LABEL_98:
      v17 = v126[1];
      if (v18 >= v17)
      {
        goto LABEL_102;
      }

      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

void sub_100006440(id *a1, id *a2, void **a3, id *a4)
{
  v62 = sub_100007730();
  v8 = *(v62 - 8);
  v9 = __chkstk_darwin(v62);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v64 = &v58 - v12;
  v13 = __chkstk_darwin(v11);
  v59 = &v58 - v14;
  __chkstk_darwin(v13);
  v63 = &v58 - v15;
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v18 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 3;
  v66 = a4;
  if (v17 < v18 >> 3)
  {
    v20 = a4;
    if (a4 != a1 || &a1[v17] <= a4)
    {
      memmove(a4, a1, 8 * v17);
      v20 = v66;
    }

    v67 = &v20[v17];
    if (a2 - a1 >= 8)
    {
      v21 = a2;
      if (a2 < a3)
      {
        v64 = (v8 + 8);
        v65 = a3;
        v22 = &DockKitExtension;
        v23 = v63;
        while (1)
        {
          v61 = v21;
          v24 = *v21;
          if (!*v21)
          {
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          v66 = v20;
          v25 = *v20;
          v26 = *v20;
          v27 = v24;
          v28 = [v27 *&v22[3].flags];
          if (!v28)
          {
            goto LABEL_52;
          }

          v29 = v28;
          sub_100007710();

          if (!v25)
          {
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v30 = a1;
          v31 = [v26 *&v22[3].flags];
          if (!v31)
          {
            goto LABEL_50;
          }

          v32 = v31;
          v33 = v59;
          sub_100007710();

          v34 = sub_100007720();
          v35 = *v64;
          v36 = v62;
          (*v64)(v33, v62);
          v35(v23, v36);

          if (v34 != 1)
          {
            break;
          }

          v37 = v61;
          v21 = v61 + 1;
          v38 = v30;
          v20 = v66;
          if (v30 != v61)
          {
            goto LABEL_20;
          }

LABEL_21:
          a1 = v38 + 1;
          v22 = &DockKitExtension;
          if (v20 >= v67 || v21 >= v65)
          {
            goto LABEL_23;
          }
        }

        v37 = v66;
        v20 = v66 + 1;
        v38 = v30;
        v21 = v61;
        if (v30 == v66)
        {
          goto LABEL_21;
        }

LABEL_20:
        *v38 = *v37;
        goto LABEL_21;
      }
    }

LABEL_23:
    a2 = a1;
    goto LABEL_45;
  }

  v20 = a4;
  if (a4 != a2 || &a2[v19] <= a4)
  {
    memmove(a4, a2, 8 * v19);
    v20 = v66;
  }

  v67 = &v20[v19];
  if (a3 - a2 < 8 || a2 <= a1)
  {
LABEL_45:
    if (a2 != v20 || a2 >= (v20 + ((v67 - v20 + (v67 - v20 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, v20, 8 * (v67 - v20));
    }

    return;
  }

  v59 = (v8 + 8);
  v39 = &DockKitExtension;
LABEL_30:
  v61 = a2;
  v40 = a2 - 1;
  v41 = a3 - 1;
  v42 = v67;
  while (1)
  {
    v65 = v41;
    v44 = *--v42;
    v43 = v44;
    if (!v44)
    {
      break;
    }

    v45 = *v40;
    v46 = *v40;
    v47 = v43;
    v48 = [v47 *&v39[3].flags];
    if (!v48)
    {
      goto LABEL_56;
    }

    v49 = v48;
    sub_100007710();

    if (!v45)
    {
      goto LABEL_53;
    }

    v50 = [v46 *&v39[3].flags];
    if (!v50)
    {
LABEL_54:
      __break(1u);
      break;
    }

    v51 = v50;
    v52 = v60;
    sub_100007710();

    v53 = v64;
    v63 = sub_100007720();
    v54 = *v59;
    v55 = v52;
    v56 = v62;
    (*v59)(v55, v62);
    v54(v53, v56);

    if (v63 == 1)
    {
      a3 = v65;
      v20 = v66;
      if (v65 + 1 != v61)
      {
        *v65 = *v40;
      }

      v39 = &DockKitExtension;
      if (v67 <= v20 || (a2 = v40, v40 <= a1))
      {
        a2 = v40;
        goto LABEL_45;
      }

      goto LABEL_30;
    }

    v57 = v65;
    v20 = v66;
    if (v65 + 1 != v67)
    {
      *v65 = *v42;
    }

    v41 = v57 - 1;
    v67 = v42;
    v39 = &DockKitExtension;
    if (v42 <= v20)
    {
      v67 = v42;
      a2 = v61;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_100006964(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000069F0(v3);
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

uint64_t sub_100006A04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000079F0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000079F0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100007220();
          for (i = 0; i != v6; ++i)
          {
            sub_100006DB8(&qword_100010270, &qword_100008020);
            v9 = sub_100006B94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000071D8(0, &qword_100010268, DEAttachmentItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100006B94(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100007970();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100006C14;
  }

  __break(1u);
  return result;
}

unint64_t sub_100006C30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006DB8(&qword_100010248, &qword_100007FF0);
    v3 = sub_100007A20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100004EA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_100006D34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006D6C(void *a1)
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

uint64_t sub_100006DB8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006E00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100006E60(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100006EC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006F04()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006F98;

  return sub_100003604(v3, v4, v5, v2);
}

uint64_t sub_100006F98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_1000102A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000102A8);
    }
  }
}

unint64_t sub_100007108(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_100006DB8(&qword_100010280, &qword_100008028);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000071D8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100007220()
{
  result = qword_100010278;
  if (!qword_100010278)
  {
    sub_100007284(&qword_100010270, &qword_100008020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010278);
  }

  return result;
}

uint64_t sub_100007284(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000072CC()
{
  result = qword_100010298;
  if (!qword_100010298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010298);
  }

  return result;
}

_OWORD *sub_100007320(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100007330(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006DB8(&qword_100010250, &qword_100007FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000073A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006DB8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007400(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000768C;

  return sub_10000460C(a1, v4);
}

uint64_t sub_1000074B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000074F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006F98;

  return sub_10000460C(a1, v4);
}

uint64_t sub_100007644(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}