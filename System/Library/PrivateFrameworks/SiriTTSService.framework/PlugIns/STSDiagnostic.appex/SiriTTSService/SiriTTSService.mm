uint64_t sub_100000ED0()
{
  v0 = sub_100005990();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002EE0(&qword_10000C200, &qword_100005F58);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1000059E0();
  sub_100003CB8(v7, qword_10000C270);
  sub_100003C2C(v7, qword_10000C270);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return sub_1000059C0();
}

char *sub_10000107C()
{
  v1 = v0;
  v2 = sub_100002EE0(&qword_10000C200, &qword_100005F58);
  v3 = __chkstk_darwin(v2 - 8);
  v78 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v84 = v73 - v5;
  v6 = sub_1000059E0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v83 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = v73 - v10;
  v11 = [objc_opt_self() defaultManager];
  sub_1000059B0(&STSDiagnosticExtension);
  v13 = v12;
  v85 = 0;
  v14 = [v11 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:0 options:0 error:&v85];

  v15 = v85;
  v77 = v6;
  if (v14)
  {
    v73[1] = 0;
    v16 = sub_100005AB0();
    v17 = v15;

    v18 = OBJC_IVAR____TtC13STSDiagnostic22STSDiagnosticExtension_logger;
    v19 = v1;
    v73[2] = v18;
    v20 = sub_100005A30();
    v21 = sub_100005B00();

    v22 = os_log_type_enabled(v20, v21);
    v73[3] = v1;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v85 = v82;
      *v23 = 136315394;
      sub_1000036E4();
      v24 = sub_100005B60();
      v26 = sub_10000313C(v24, v25, &v85);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = sub_100005AC0();
      v29 = sub_10000313C(v27, v28, &v85);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "#STS DE# content of path %s: %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    v30 = v6;
    v31 = v78;
    v32 = v76;
    v33 = &_swiftEmptyArrayStorage;
    v81 = *(v16 + 16);
    v74 = &_swiftEmptyArrayStorage;
    if (v81)
    {
      v34 = 0;
      v79 = v7 + 16;
      v80 = v16;
      v75 = (v7 + 8);
      v82 = (v7 + 32);
      while (v34 < *(v16 + 16))
      {
        v35 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v36 = v16 + v35;
        v37 = *(v7 + 72);
        (*(v7 + 16))(v32, v36 + v37 * v34, v30);
        sub_1000059A0();
        v86._countAndFlagsBits = 6709603;
        v86._object = 0xE300000000000000;
        v38 = sub_100005A80(v86);

        if (v38 || (sub_1000059A0(), v87._countAndFlagsBits = 0x6E6970736C696174, v87._object = 0xE800000000000000, v39 = sub_100005A80(v87), , v39))
        {
          v40 = *v82;
          (*v82)(v83, v32, v30);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85 = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000037A8(0, v33[2] + 1, 1);
            v32 = v76;
            v33 = v85;
          }

          v43 = v33[2];
          v42 = v33[3];
          if (v43 >= v42 >> 1)
          {
            sub_1000037A8((v42 > 1), v43 + 1, 1);
            v32 = v76;
            v33 = v85;
          }

          v33[2] = v43 + 1;
          v44 = v33 + v35 + v43 * v37;
          v30 = v77;
          v40(v44, v83, v77);
          v31 = v78;
        }

        else
        {
          (*v75)(v32, v30);
        }

        ++v34;
        v16 = v80;
        if (v81 == v34)
        {
          goto LABEL_16;
        }
      }

LABEL_35:
      __break(1u);
    }

LABEL_16:

    v45 = 0;
    v85 = &_swiftEmptyArrayStorage;
    v82 = (v7 + 56);
    v83 = (v7 + 16);
    v46 = v33[2];
    if (v46)
    {
      while (v45 < v33[2])
      {
        v59 = v84;
        (*(v7 + 16))(v84, v33 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v45, v30);
        (*(v7 + 56))(v59, 0, 1, v30);
        sub_1000037C8(v59, v31);
        if ((*(v7 + 48))(v31, 1, v30) == 1)
        {
          v57 = 0;
        }

        else
        {
          sub_1000059B0(v60);
          v57 = v56;
          (*(v7 + 8))(v31, v30);
        }

        v58 = [objc_allocWithZone(DEAttachmentItem) initWithPathURL:v57];

        sub_100003838(v84, &qword_10000C200, &qword_100005F58);
        ++v45;
        if (v58)
        {
          sub_100005A90();
          if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100005AD0();
            v30 = v77;
          }

          sub_100005AF0();
          v74 = v85;
          if (v46 == v45)
          {
            goto LABEL_17;
          }
        }

        else if (v46 == v45)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_17:

    v47 = v74;

    v48 = sub_100005A30();
    v49 = sub_100005B00();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v85 = v51;
      *v50 = 136315138;
      sub_100003898();
      v52 = sub_100005AC0();
      v54 = sub_10000313C(v52, v53, &v85);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "#STS DE# filtered %s", v50, 0xCu);
      sub_10000373C(v51);
    }

    v55 = sub_1000019F0(v47);
  }

  else
  {
    v61 = v85;
    sub_100005980();

    swift_willThrow();
    v62 = v1;
    swift_errorRetain();
    v63 = sub_100005A30();
    v64 = sub_100005B00();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v85 = v67;
      *v65 = 138412546;
      swift_errorRetain();
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 4) = v68;
      *v66 = v68;
      *(v65 + 12) = 2080;
      sub_1000036E4();
      v69 = sub_100005B60();
      v71 = sub_10000313C(v69, v70, &v85);

      *(v65 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v63, v64, "#STS DE# attachmentList error: %@ at %s", v65, 0x16u);
      sub_100003838(v66, &qword_10000C210, &qword_100005F60);

      sub_10000373C(v67);
    }

    return &_swiftEmptyArrayStorage;
  }

  return v55;
}

char *sub_1000019F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100005B40();
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
  result = sub_100003788(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100005B20();
        sub_100003898();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100003788((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1000058BC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100003898();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100003788((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1000058BC(v12, &v3[4 * v11 + 4]);
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

id sub_100001C2C()
{
  v1 = v0;
  v2 = sub_100002EE0(&qword_10000C200, &qword_100005F58);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v82 = v71 - v6;
  v7 = sub_1000059E0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v80 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75 = v71 - v11;
  v12 = [objc_opt_self() defaultManager];
  v13 = OBJC_IVAR____TtC13STSDiagnostic22STSDiagnosticExtension_cachePath;
  sub_1000059B0(&STSDiagnosticExtension);
  v15 = v14;
  v83 = 0;
  v16 = [v12 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:0 error:&v83];

  v17 = v83;
  if (v16)
  {
    v81 = v13;
    v71[1] = 0;
    v18 = sub_100005AB0();
    v19 = v17;

    v20 = OBJC_IVAR____TtC13STSDiagnostic22STSDiagnosticExtension_logger;
    v21 = v1;
    v71[2] = v20;
    v22 = sub_100005A30();
    v23 = sub_100005B00();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v83 = v79;
      *v24 = 136315394;
      sub_1000036E4();
      v25 = sub_100005B60();
      v27 = sub_10000313C(v25, v26, &v83);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = sub_100005AC0();
      v30 = sub_10000313C(v28, v29, &v83);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "#STS DE# content of path %s: %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    v31 = v75;
    v71[3] = v1;
    v32 = *(v18 + 16);
    v33 = &_swiftEmptyArrayStorage;
    v74 = v5;
    v79 = v32;
    v72 = &_swiftEmptyArrayStorage;
    if (v32)
    {
      v34 = 0;
      v73 = (v8 + 8);
      v76 = (v8 + 32);
      v77 = v8 + 16;
      v81 = v7;
      v78 = v18;
      while (v34 < *(v18 + 16))
      {
        v35 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v36 = v18 + v35;
        v37 = *(v8 + 72);
        (*(v8 + 16))(v31, v36 + v37 * v34, v7);
        sub_1000059A0();
        v84._countAndFlagsBits = 7235938;
        v84._object = 0xE300000000000000;
        v38 = sub_100005A80(v84);

        if (v38)
        {
          v39 = v31;
          v40 = *v76;
          (*v76)(v80, v39, v7);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000037A8(0, *(v33 + 2) + 1, 1);
            v33 = v83;
          }

          v43 = *(v33 + 2);
          v42 = *(v33 + 3);
          if (v43 >= v42 >> 1)
          {
            sub_1000037A8((v42 > 1), v43 + 1, 1);
            v33 = v83;
          }

          *(v33 + 2) = v43 + 1;
          v40(&v33[v35 + v43 * v37], v80, v81);
          v5 = v74;
          v31 = v75;
        }

        else
        {
          (*v73)(v31, v7);
        }

        ++v34;
        v18 = v78;
        v7 = v81;
        if (v79 == v34)
        {
          goto LABEL_15;
        }
      }

LABEL_34:
      __break(1u);
    }

LABEL_15:

    v44 = 0;
    v83 = &_swiftEmptyArrayStorage;
    v80 = (v8 + 56);
    v81 = v8 + 16;
    v45 = *(v33 + 2);
    if (v45)
    {
      while (v44 < *(v33 + 2))
      {
        v57 = v82;
        (*(v8 + 16))(v82, &v33[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v44], v7);
        (*(v8 + 56))(v57, 0, 1, v7);
        sub_1000037C8(v57, v5);
        if ((*(v8 + 48))(v5, 1, v7) == 1)
        {
          v55 = 0;
        }

        else
        {
          sub_1000059B0(v58);
          v55 = v54;
          (*(v8 + 8))(v5, v7);
        }

        v56 = [objc_allocWithZone(DEAttachmentItem) initWithPathURL:v55];

        sub_100003838(v82, &qword_10000C200, &qword_100005F58);
        ++v44;
        if (v56)
        {
          sub_100005A90();
          if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100005AD0();
            v5 = v74;
          }

          sub_100005AF0();
          v72 = v83;
          if (v45 == v44)
          {
            goto LABEL_16;
          }
        }

        else if (v45 == v44)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_16:

    v46 = v72;

    v47 = sub_100005A30();
    v48 = sub_100005B00();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v83 = v50;
      *v49 = 136315138;
      sub_100003898();
      v51 = sub_100005AC0();
      v53 = sub_10000313C(v51, v52, &v83);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "#STS DE# filtered %s", v49, 0xCu);
      sub_10000373C(v50);
    }
  }

  else
  {
    v59 = v83;
    sub_100005980();

    swift_willThrow();
    v60 = v1;
    swift_errorRetain();
    v61 = sub_100005A30();
    v62 = sub_100005B00();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v83 = v65;
      *v63 = 138412546;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 4) = v66;
      *v64 = v66;
      *(v63 + 12) = 2080;
      sub_1000036E4();
      v67 = sub_100005B60();
      v69 = sub_10000313C(v67, v68, &v83);

      *(v63 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v61, v62, "#STS DE# attachmentList error: %@ at %s", v63, 0x16u);
      sub_100003838(v64, &qword_10000C210, &qword_100005F60);

      sub_10000373C(v65);
    }

    return &_swiftEmptyArrayStorage;
  }

  return v46;
}

uint64_t sub_10000254C(void *a1, void *a2)
{
  v4 = sub_100002EE0(&qword_10000C248, &qword_100005F88);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v37 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v37 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v37 - v18;
  __chkstk_darwin(v17);
  v21 = &v37 - v20;
  sub_1000058CC(a1, a1[3]);
  v22 = sub_100005B70();
  result = [v22 respondsToSelector:"modificationDate"];
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v38 = v10;
  v24 = [v22 modificationDate];
  if (v24)
  {
    v25 = v24;
    sub_100005A00();

    v26 = sub_100005A10();
    (*(*(v26 - 8) + 56))(v16, 0, 1, v26);
  }

  else
  {
    v26 = sub_100005A10();
    (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  }

  sub_100005910(v16, v19);
  sub_100005910(v19, v21);
  sub_100005A10();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  result = v28(v21, 1, v26);
  if (result == 1)
  {
    goto LABEL_13;
  }

  sub_1000058CC(a2, a2[3]);
  v29 = sub_100005B70();
  result = [v29 respondsToSelector:"modificationDate"];
  if ((result & 1) == 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = [v29 modificationDate];
  if (v30)
  {
    v31 = v30;
    sub_100005A00();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  (*(v27 + 56))(v7, v32, 1, v26);
  v33 = v7;
  v34 = v38;
  sub_100005910(v33, v38);
  sub_100005910(v34, v13);
  result = v28(v13, 1, v26);
  if (result != 1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v35 = sub_1000059F0();
    v36 = *(v27 + 8);
    v36(v13, v26);
    v36(v21, v26);
    return v35 & 1;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1000029A8()
{
  v1 = sub_100005990();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A40();
  if (qword_10000C258 != -1)
  {
    swift_once();
  }

  v5 = sub_1000059E0();
  sub_100003C2C(v5, qword_10000C270);
  v6 = enum case for URL.DirectoryHint.isDirectory(_:);
  v13 = *(v2 + 104);
  v13(v4, enum case for URL.DirectoryHint.isDirectory(_:), v1);
  sub_100003C64();
  sub_1000059D0();
  v7 = *(v2 + 8);
  v7(v4, v1);
  v12 = OBJC_IVAR____TtC13STSDiagnostic22STSDiagnosticExtension_cachePath;
  sub_100002EE0(&qword_10000C238, &qword_100005F78);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100005F20;
  *(v8 + 32) = 0x7972617262694CLL;
  *(v8 + 40) = 0xE700000000000000;
  *(v8 + 48) = 0x736568636143;
  *(v8 + 56) = 0xE600000000000000;
  *(v8 + 64) = 0x53545469726953;
  *(v8 + 72) = 0xE700000000000000;
  *(v8 + 80) = 0x65646F4D534E4E42;
  *(v8 + 88) = 0xEA0000000000736CLL;
  *(v8 + 96) = sub_100005A20();
  *(v8 + 104) = v9;
  v13(v4, v6, v1);
  sub_1000059D0();

  v7(v4, v1);
  v10 = type metadata accessor for STSDiagnosticExtension(0);
  v14.receiver = v0;
  v14.super_class = v10;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_100002CA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STSDiagnosticExtension(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for STSDiagnosticExtension(uint64_t a1)
{
  result = qword_10000C260;
  if (!qword_10000C260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002E14(uint64_t a1, uint64_t a2)
{
  result = sub_100005A50();
  if (v3 <= 0x3F)
  {
    result = sub_1000059E0();
    if (v4 <= 0x3F)
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

uint64_t sub_100002EE0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_100002F28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EE0(&qword_10000C240, &qword_100005F80);
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

char *sub_100003038(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EE0(&qword_10000C250, &unk_100005F90);
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

unint64_t sub_10000313C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003208(v11, 0, 0, 1, a1, a2);
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
    sub_100003BD0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000373C(v11);
  return v7;
}

unint64_t sub_100003208(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003314(a5, a6);
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
    result = sub_100005B30();
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

char *sub_100003314(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003360(a1, a2);
  sub_100003490(&off_100008370);
  return v3;
}

char *sub_100003360(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000357C(v5, 0);
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

  result = sub_100005B30();
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
        v10 = sub_100005A70();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000357C(v10, 0);
        result = sub_100005B10();
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

uint64_t sub_100003490(uint64_t result)
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

  result = sub_1000035F0(result, v11, 1, v3);
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

void *sub_10000357C(uint64_t a1, uint64_t a2)
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

  sub_100002EE0(&qword_10000C228, &qword_100005F70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000035F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EE0(&qword_10000C228, &qword_100005F70);
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

unint64_t sub_1000036E4()
{
  result = qword_10000C208;
  if (!qword_10000C208)
  {
    sub_1000059E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C208);
  }

  return result;
}

uint64_t sub_10000373C(void *a1)
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

char *sub_100003788(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000038E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000037A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000039F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000037C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002EE0(&qword_10000C200, &qword_100005F58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003838(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002EE0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003898()
{
  result = qword_10000C218;
  if (!qword_10000C218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C218);
  }

  return result;
}

char *sub_1000038E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EE0(&qword_10000C240, &qword_100005F80);
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

void *sub_1000039F4(void *result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002EE0(&qword_10000C220, &qword_100005F68);
  v10 = *(sub_1000059E0() - 8);
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
  v15 = *(sub_1000059E0() - 8);
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

uint64_t sub_100003BD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003C2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100003C64()
{
  result = qword_10000C230;
  if (!qword_10000C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C230);
  }

  return result;
}

uint64_t *sub_100003CB8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

Swift::Int sub_100003D1C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100005600(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100003E80(v5);
  *a1 = v2;
  return result;
}

char *sub_100003D88(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100002F28(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Int sub_100003E80(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100005B50(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_100005AE0();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1000043FC(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100003F7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100003F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100002EE0(&qword_10000C248, &qword_100005F88);
  v9 = __chkstk_darwin(v8 - 8);
  v10 = __chkstk_darwin(v9);
  v61 = &v53[-v11];
  v12 = __chkstk_darwin(v10);
  v13 = __chkstk_darwin(v12);
  v15 = &v53[-v14];
  v16 = __chkstk_darwin(v13);
  v62 = &v53[-v17];
  result = __chkstk_darwin(v16);
  v70 = &v53[-v21];
  v54 = a2;
  if (a3 != a2)
  {
    v22 = v19;
    v58 = *a4;
    v59 = v15;
    v23 = (v58 + 32 * a3);
    v24 = a1 - a3;
    v25 = &STSDiagnosticExtension;
    v60 = v20;
LABEL_5:
    v56 = v23;
    v57 = a3;
    v55 = v24;
    v26 = v24;
    while (1)
    {
      sub_100003BD0(v23, v68);
      sub_100003BD0((v23 - 2), v67);
      sub_1000058CC(v68, v69);
      v27 = sub_100005B70();
      result = [v27 respondsToSelector:*&v25[3].flags];
      if ((result & 1) == 0)
      {
        break;
      }

      v28 = v22;
      v29 = *&v25[3].flags;
      v64 = v27;
      v30 = [v27 v29];
      v65 = v23;
      v66 = v26;
      v63 = v23 - 2;
      if (v30)
      {
        v31 = v30;
        sub_100005A00();

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      v33 = sub_100005A10();
      v34 = *(v33 - 8);
      v35 = v34[7];
      v35(v15, v32, 1, v33);
      v36 = v62;
      sub_100005910(v15, v62);
      v37 = v70;
      sub_100005910(v36, v70);
      v38 = v34[6];
      result = v38(v37, 1, v33);
      if (result == 1)
      {
        goto LABEL_22;
      }

      sub_1000058CC(v67, v67[3]);
      v39 = sub_100005B70();
      result = [v39 respondsToSelector:"modificationDate"];
      if ((result & 1) == 0)
      {
        goto LABEL_24;
      }

      v40 = [v39 modificationDate];
      if (v40)
      {
        v41 = v40;
        sub_100005A00();

        v42 = 0;
      }

      else
      {
        v42 = 1;
      }

      v35(v28, v42, 1, v33);
      v43 = v61;
      sub_100005910(v28, v61);
      v44 = v60;
      sub_100005910(v43, v60);
      result = v38(v44, 1, v33);
      if (result == 1)
      {
        goto LABEL_23;
      }

      v22 = v28;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v45 = v70;
      v46 = sub_1000059F0();
      v47 = v34[1];
      v47(v44, v33);
      v47(v45, v33);
      sub_10000373C(v67);
      result = sub_10000373C(v68);
      v15 = v59;
      v25 = &STSDiagnosticExtension;
      v49 = v65;
      v48 = v66;
      if (v46)
      {
        if (!v58)
        {
          goto LABEL_25;
        }

        sub_1000058BC(v65, v68);
        v50 = v63;
        v51 = v63[1];
        *v49 = *v63;
        v49[1] = v51;
        result = sub_1000058BC(v68, v50);
        v23 = v50;
        v52 = __CFADD__(v48, 1);
        v26 = v48 + 1;
        if (!v52)
        {
          continue;
        }
      }

      a3 = v57 + 1;
      v23 = v56 + 2;
      v24 = v55 - 1;
      if (v57 + 1 == v54)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000043FC(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v153 = a4;
  v152 = a1;
  v6 = sub_100002EE0(&qword_10000C248, &qword_100005F88);
  v7 = __chkstk_darwin(v6 - 8);
  v8 = __chkstk_darwin(v7);
  v171 = &v152 - v9;
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v152 - v12;
  v14 = __chkstk_darwin(v11);
  v172 = &v152 - v15;
  v16 = __chkstk_darwin(v14);
  v178 = &v152 - v17;
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  v161 = &v152 - v20;
  v21 = __chkstk_darwin(v19);
  v160 = &v152 - v22;
  v23 = __chkstk_darwin(v21);
  v163 = &v152 - v24;
  v25 = __chkstk_darwin(v23);
  v162 = &v152 - v26;
  result = __chkstk_darwin(v25);
  v165 = &v152 - v31;
  v164 = a3;
  v32 = a3[1];
  if (v32 >= 1)
  {
    v159 = v30;
    v33 = 0;
    v34 = &_swiftEmptyArrayStorage;
    v35 = &STSDiagnosticExtension;
    v169 = v29;
    v170 = v28;
    v173 = v13;
    while (1)
    {
      v156 = v34;
      v154 = v33;
      if (v33 + 1 >= v32)
      {
        v37 = v33 + 1;
        v61 = v153;
      }

      else
      {
        v166 = v32;
        a3 = *v164;
        sub_100003BD0(*v164 + 32 * (v33 + 1), &v181);
        sub_100003BD0(&a3[4 * v33], v179);
        LODWORD(v174) = sub_10000254C(&v181, v179);
        if (v167)
        {
          sub_10000373C(v179);
          sub_10000373C(&v181);
        }

        sub_10000373C(v179);
        result = sub_10000373C(&v181);
        v36 = (v33 + 2);
        v168 = (32 * v33);
        v4 = &a3[4 * v33 + 8];
        while (1)
        {
          v37 = v166;
          if (v166 == v36)
          {
            break;
          }

          sub_100003BD0(v4, &v181);
          sub_100003BD0(v4 - 32, v179);
          sub_1000058CC(&v181, v182);
          v38 = sub_100005B70();
          result = [v38 respondsToSelector:*&v35[3].flags];
          if ((result & 1) == 0)
          {
            goto LABEL_154;
          }

          v39 = [v38 *&v35[3].flags];
          v40 = v163;
          v176 = v4;
          v177 = v36;
          v175 = v38;
          if (v39)
          {
            v41 = v39;
            sub_100005A00();

            v42 = 0;
          }

          else
          {
            v42 = 1;
          }

          v43 = sub_100005A10();
          v44 = *(v43 - 8);
          v45 = v44[7];
          v45(v40, v42, 1, v43);
          v46 = v40;
          v47 = v162;
          sub_100005910(v46, v162);
          v48 = v47;
          v49 = v165;
          sub_100005910(v48, v165);
          v50 = v44[6];
          result = v50(v49, 1, v43);
          if (result == 1)
          {
            goto LABEL_155;
          }

          sub_1000058CC(v179, v180);
          v51 = sub_100005B70();
          result = [v51 respondsToSelector:"modificationDate"];
          if ((result & 1) == 0)
          {
            goto LABEL_156;
          }

          v52 = [v51 modificationDate];
          if (v52)
          {
            v53 = v159;
            v54 = v52;
            sub_100005A00();

            v55 = 0;
          }

          else
          {
            v55 = 1;
            v53 = v159;
          }

          v45(v53, v55, 1, v43);
          v56 = v53;
          v57 = v161;
          sub_100005910(v56, v161);
          v58 = v160;
          sub_100005910(v57, v160);
          result = v50(v58, 1, v43);
          if (result == 1)
          {
            goto LABEL_157;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v59 = v165;
          a3 = (sub_1000059F0() & 1);
          v60 = v44[1];
          v60(v58, v43);
          v60(v59, v43);
          sub_10000373C(v179);
          result = sub_10000373C(&v181);
          v36 = v177 + 1;
          v4 = (v176 + 4);
          v13 = v173;
          v35 = &STSDiagnosticExtension;
          if ((v174 & 1) != a3)
          {
            v37 = v177;
            break;
          }
        }

        v61 = v153;
        if (v174)
        {
          v62 = v154;
          if (v37 < v154)
          {
            goto LABEL_147;
          }

          if (v154 < v37)
          {
            v63 = 32 * v37 - 32;
            v64 = v37;
            v65 = v168;
            do
            {
              if (v62 != --v64)
              {
                v66 = v65;
                v67 = *v164;
                if (!*v164)
                {
                  goto LABEL_159;
                }

                v68 = v37;
                v69 = v66;
                a3 = (v66 + v67);
                v4 = v67 + v63;
                sub_1000058BC((v66 + v67), &v181);
                v70 = *(v4 + 16);
                *a3 = *v4;
                *(a3 + 1) = v70;
                result = sub_1000058BC(&v181, v4);
                v65 = v69;
                v61 = v153;
                v37 = v68;
              }

              ++v62;
              v63 -= 32;
              v65 += 4;
            }

            while (v62 < v64);
          }
        }
      }

      v71 = v164[1];
      if (v37 >= v71)
      {
        goto LABEL_39;
      }

      if (__OFSUB__(v37, v154))
      {
        goto LABEL_144;
      }

      if (v37 - v154 >= v61)
      {
LABEL_39:
        v33 = v37;
LABEL_40:
        v73 = v154;
      }

      else
      {
        if (__OFADD__(v154, v61))
        {
          goto LABEL_145;
        }

        if (v154 + v61 >= v71)
        {
          v72 = v164[1];
        }

        else
        {
          v72 = v154 + v61;
        }

        if (v72 < v154)
        {
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          result = sub_1000055EC(v4);
          goto LABEL_117;
        }

        v73 = v154;
        if (v37 != v72)
        {
          v168 = *v164;
          v121 = &v168[4 * v37];
          v122 = (v154 - v37);
          v155 = v72;
LABEL_95:
          v166 = v37;
          v157 = v122;
          a3 = v122;
          v158 = v121;
          while (1)
          {
            sub_100003BD0(v121, &v181);
            sub_100003BD0((v121 - 4), v179);
            sub_1000058CC(&v181, v182);
            v123 = sub_100005B70();
            result = [v123 respondsToSelector:*&v35[3].flags];
            if ((result & 1) == 0)
            {
              break;
            }

            v124 = [v123 *&v35[3].flags];
            v175 = v121;
            v176 = a3;
            v174 = v121 - 4;
            v177 = v123;
            if (v124)
            {
              v125 = v124;
              sub_100005A00();

              v126 = 0;
            }

            else
            {
              v126 = 1;
            }

            v127 = sub_100005A10();
            v128 = *(v127 - 8);
            v129 = v128[7];
            v129(v13, v126, 1, v127);
            v130 = v172;
            sub_100005910(v13, v172);
            v131 = v130;
            v132 = v178;
            sub_100005910(v131, v178);
            v133 = v128[6];
            result = v133(v132, 1, v127);
            if (result == 1)
            {
              goto LABEL_151;
            }

            sub_1000058CC(v179, v180);
            v134 = sub_100005B70();
            result = [v134 respondsToSelector:*&v35[3].flags];
            if ((result & 1) == 0)
            {
              goto LABEL_152;
            }

            v135 = [v134 *&v35[3].flags];
            if (v135)
            {
              v136 = v135;
              v137 = v170;
              sub_100005A00();

              v138 = 0;
            }

            else
            {
              v138 = 1;
              v137 = v170;
            }

            v129(v137, v138, 1, v127);
            v139 = v137;
            v140 = v171;
            sub_100005910(v139, v171);
            v141 = v169;
            sub_100005910(v140, v169);
            result = v133(v141, 1, v127);
            v35 = &STSDiagnosticExtension;
            if (result == 1)
            {
              goto LABEL_150;
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v142 = v178;
            v4 = sub_1000059F0();
            v143 = v128[1];
            a3 = v128 + 1;
            v143(v141, v127);
            v143(v142, v127);
            sub_10000373C(v179);
            result = sub_10000373C(&v181);
            if ((v4 & 1) == 0)
            {
              v13 = v173;
LABEL_94:
              v37 = v166 + 1;
              v121 = v158 + 4;
              v122 = (v157 - 1);
              v33 = v155;
              if (v166 + 1 == v155)
              {
                goto LABEL_40;
              }

              goto LABEL_95;
            }

            v13 = v173;
            v144 = v176;
            if (!v168)
            {
              goto LABEL_153;
            }

            v4 = v175;
            sub_1000058BC(v175, &v181);
            v121 = v174;
            v145 = *(v174 + 1);
            *v4 = *v174;
            *(v4 + 16) = v145;
            sub_1000058BC(&v181, v121);
            v146 = __CFADD__(v144, 1);
            a3 = (v144 + 1);
            if (v146)
            {
              goto LABEL_94;
            }
          }

          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        v33 = v37;
      }

      if (v33 < v73)
      {
        goto LABEL_143;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v34 = v156;
      }

      else
      {
        result = sub_100003038(0, *(v156 + 2) + 1, 1, v156);
        v34 = result;
      }

      v75 = *(v34 + 2);
      v74 = *(v34 + 3);
      v4 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        result = sub_100003038((v74 > 1), v75 + 1, 1, v34);
        v34 = result;
      }

      *(v34 + 2) = v4;
      v76 = &v34[16 * v75];
      *(v76 + 4) = v154;
      *(v76 + 5) = v33;
      a3 = *v152;
      if (!*v152)
      {
        goto LABEL_161;
      }

      if (v75)
      {
        while (1)
        {
          v77 = v4 - 1;
          if (v4 >= 4)
          {
            break;
          }

          if (v4 == 3)
          {
            v78 = *(v34 + 4);
            v79 = *(v34 + 5);
            v88 = __OFSUB__(v79, v78);
            v80 = v79 - v78;
            v81 = v88;
LABEL_61:
            if (v81)
            {
              goto LABEL_132;
            }

            v94 = &v34[16 * v4];
            v96 = *v94;
            v95 = *(v94 + 1);
            v97 = __OFSUB__(v95, v96);
            v98 = v95 - v96;
            v99 = v97;
            if (v97)
            {
              goto LABEL_135;
            }

            v100 = &v34[16 * v77 + 32];
            v102 = *v100;
            v101 = *(v100 + 1);
            v88 = __OFSUB__(v101, v102);
            v103 = v101 - v102;
            if (v88)
            {
              goto LABEL_138;
            }

            if (__OFADD__(v98, v103))
            {
              goto LABEL_139;
            }

            if (v98 + v103 >= v80)
            {
              if (v80 < v103)
              {
                v77 = v4 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v104 = &v34[16 * v4];
          v106 = *v104;
          v105 = *(v104 + 1);
          v88 = __OFSUB__(v105, v106);
          v98 = v105 - v106;
          v99 = v88;
LABEL_75:
          if (v99)
          {
            goto LABEL_134;
          }

          v107 = &v34[16 * v77];
          v109 = *(v107 + 4);
          v108 = *(v107 + 5);
          v88 = __OFSUB__(v108, v109);
          v110 = v108 - v109;
          if (v88)
          {
            goto LABEL_137;
          }

          if (v110 < v98)
          {
            goto LABEL_3;
          }

LABEL_82:
          v115 = v77 - 1;
          if (v77 - 1 >= v4)
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
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
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
            goto LABEL_146;
          }

          if (!*v164)
          {
            goto LABEL_158;
          }

          v116 = v34;
          v4 = *&v34[16 * v115 + 32];
          v117 = *&v34[16 * v77 + 40];
          v118 = v167;
          sub_100005220((*v164 + 32 * v4), (*v164 + 32 * *&v34[16 * v77 + 32]), (*v164 + 32 * v117), a3);
          v167 = v118;
          if (v118)
          {
          }

          if (v117 < v4)
          {
            goto LABEL_128;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v119 = v116;
          }

          else
          {
            v119 = sub_1000055EC(v116);
          }

          v35 = &STSDiagnosticExtension;
          if (v115 >= *(v119 + 2))
          {
            goto LABEL_129;
          }

          v120 = &v119[16 * v115];
          *(v120 + 4) = v4;
          *(v120 + 5) = v117;
          v183 = v119;
          result = sub_100005560(v77);
          v34 = v183;
          v4 = *(v183 + 16);
          if (v4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v82 = &v34[16 * v4 + 32];
        v83 = *(v82 - 64);
        v84 = *(v82 - 56);
        v88 = __OFSUB__(v84, v83);
        v85 = v84 - v83;
        if (v88)
        {
          goto LABEL_130;
        }

        v87 = *(v82 - 48);
        v86 = *(v82 - 40);
        v88 = __OFSUB__(v86, v87);
        v80 = v86 - v87;
        v81 = v88;
        if (v88)
        {
          goto LABEL_131;
        }

        v89 = &v34[16 * v4];
        v91 = *v89;
        v90 = *(v89 + 1);
        v88 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v88)
        {
          goto LABEL_133;
        }

        v88 = __OFADD__(v80, v92);
        v93 = v80 + v92;
        if (v88)
        {
          goto LABEL_136;
        }

        if (v93 >= v85)
        {
          v111 = &v34[16 * v77 + 32];
          v113 = *v111;
          v112 = *(v111 + 1);
          v88 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v88)
          {
            goto LABEL_140;
          }

          if (v80 < v114)
          {
            v77 = v4 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_3:
      v32 = v164[1];
      if (v33 >= v32)
      {
        goto LABEL_114;
      }
    }
  }

  v34 = &_swiftEmptyArrayStorage;
LABEL_114:
  a3 = *v152;
  if (*v152)
  {
    v4 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_148;
    }

    result = v4;
LABEL_117:
    v183 = result;
    v4 = *(result + 16);
    if (v4 < 2)
    {
    }

    while (*v164)
    {
      v147 = *(result + 16 * v4);
      v148 = result;
      v149 = *(result + 16 * (v4 - 1) + 40);
      v150 = v167;
      sub_100005220((*v164 + 32 * v147), (*v164 + 32 * *(result + 16 * (v4 - 1) + 32)), (*v164 + 32 * v149), a3);
      v167 = v150;
      if (v150)
      {
      }

      if (v149 < v147)
      {
        goto LABEL_141;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = sub_1000055EC(v148);
      }

      if (v4 - 2 >= *(v148 + 2))
      {
        goto LABEL_142;
      }

      v151 = &v148[16 * v4];
      *v151 = v147;
      *(v151 + 1) = v149;
      v183 = v148;
      sub_100005560(v4 - 1);
      result = v183;
      v4 = *(v183 + 16);
      if (v4 <= 1)
      {
      }
    }

LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100005220(char *__dst, char *__src, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 5;
  v12 = a3 - __src;
  v13 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 5;
  if (v11 >= v13 >> 5)
  {
    if (a4 != __src || &__src[32 * v14] <= a4)
    {
      memmove(a4, __src, 32 * v14);
    }

    v15 = (v5 + 32 * v14);
    if (v12 >= 32 && v7 > v8)
    {
      v22 = -v5;
      v39 = -v5;
      while (1)
      {
        v21 = v7 - 32;
        v23 = v15 - 2;
        v24 = v15 + v22;
        v6 -= 32;
        while (1)
        {
          sub_100003BD0(v23, v38);
          sub_100003BD0((v7 - 32), v37);
          v27 = sub_10000254C(v38, v37);
          if (v4)
          {
            sub_10000373C(v37);
            sub_10000373C(v38);
            if (v24 >= 0)
            {
              v34 = v24;
            }

            else
            {
              v34 = v24 + 31;
            }

            if (v7 >= v5 && v7 < v5 + (v34 & 0xFFFFFFFFFFFFFFE0) && v7 == v5)
            {
              return 1;
            }

            v32 = 32 * (v34 >> 5);
            v33 = v7;
            goto LABEL_59;
          }

          v28 = v27;
          sub_10000373C(v37);
          sub_10000373C(v38);
          if (v28)
          {
            break;
          }

          if (v6 + 32 != (v23 + 2))
          {
            v29 = v23[1];
            *v6 = *v23;
            *(v6 + 1) = v29;
          }

          v25 = v23 - 2;
          v24 -= 32;
          v6 -= 32;
          v26 = v23 > v5;
          v23 -= 2;
          if (!v26)
          {
            v15 = v25 + 2;
            goto LABEL_52;
          }
        }

        if (v6 + 32 != v7)
        {
          v30 = *(v7 - 1);
          *v6 = *v21;
          *(v6 + 1) = v30;
        }

        v15 = v23 + 2;
        v22 = v39;
        if ((v23 + 2) > v5)
        {
          v7 -= 32;
          if (v21 > v8)
          {
            continue;
          }
        }

        v15 = v23 + 2;
        goto LABEL_53;
      }
    }

LABEL_52:
    v21 = v7;
LABEL_53:
    v35 = v15 - v5 + 31;
    if ((v15 - v5) >= 0)
    {
      v35 = v15 - v5;
    }

    if (v21 >= v5 && v21 < v5 + (v35 & 0xFFFFFFFFFFFFFFE0) && v21 == v5)
    {
      return 1;
    }

    v32 = 32 * (v35 >> 5);
    v33 = v21;
LABEL_59:
    memmove(v33, v5, v32);
    return 1;
  }

  if (a4 != __dst || &__dst[32 * v11] <= a4)
  {
    memmove(a4, __dst, 32 * v11);
  }

  v15 = (v5 + 32 * v11);
  if (v9 < 32 || v7 >= v6)
  {
LABEL_20:
    v21 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    sub_100003BD0(v7, v38);
    sub_100003BD0(v5, v37);
    v16 = sub_10000254C(v38, v37);
    if (v4)
    {
      break;
    }

    v17 = v16;
    sub_10000373C(v37);
    sub_10000373C(v38);
    if ((v17 & 1) == 0)
    {
      v18 = v5;
      v19 = v8 == v5;
      v5 += 32;
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_17:
      v20 = v18[1];
      *v8 = *v18;
      *(v8 + 1) = v20;
      goto LABEL_18;
    }

    v18 = v7;
    v19 = v8 == v7;
    v7 += 32;
    if (!v19)
    {
      goto LABEL_17;
    }

LABEL_18:
    v8 += 32;
    if (v5 >= v15 || v7 >= v6)
    {
      goto LABEL_20;
    }
  }

  sub_10000373C(v37);
  sub_10000373C(v38);
  v31 = v15 - v5 + 31;
  if ((v15 - v5) >= 0)
  {
    v31 = v15 - v5;
  }

  if (v8 < v5 || v8 >= v5 + (v31 & 0xFFFFFFFFFFFFFFE0) || v8 != v5)
  {
    v32 = 32 * (v31 >> 5);
    v33 = v8;
    goto LABEL_59;
  }

  return 1;
}

uint64_t sub_100005560(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000055EC(v3);
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

char *sub_100005614()
{
  v1 = [v0 attachmentList];
  if (v1)
  {
    v2 = v1;
    v3 = sub_100005AB0();

    v22 = v3;

    sub_100003D1C(&v22);

    v4 = v22;

    v5 = sub_100005A30();
    v6 = sub_100005B00();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136315138;
      v9 = sub_100005AC0();
      v11 = sub_10000313C(v9, v10, &v22);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "#STS DE# Attaching: %s", v7, 0xCu);
      sub_10000373C(v8);
    }

    v12 = sub_100001C2C();
    v13 = sub_100005A30();
    v14 = sub_100005B00();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      sub_100003898();
      v17 = sub_100005AC0();
      v19 = sub_10000313C(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "#STS DE# Attaching: %s", v15, 0xCu);
      sub_10000373C(v16);
    }

    v20 = sub_1000019F0(v12);

    v22 = v4;
    sub_100003D88(v20);
    return v22;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

_OWORD *sub_1000058BC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_1000058CC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005910(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002EE0(&qword_10000C248, &qword_100005F88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}