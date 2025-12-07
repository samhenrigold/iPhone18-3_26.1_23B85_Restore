uint64_t sub_1000015A8(uint64_t a1, const char *a2)
{
  v4 = sub_100079530();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100079BA0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003F214();
  (*(v9 + 16))(v11, v12, v8);
  (*(v5 + 16))(v7, a1, v4);
  v13 = sub_100079B80();
  v14 = sub_10007A180();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = a2;
    v16 = v15;
    v23 = swift_slowAlloc();
    v25 = v23;
    *v16 = 136446210;
    sub_100009AA4(&unk_10009DE10, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v17 = sub_10007A6D0();
    v22 = v8;
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v20 = sub_100006B00(v17, v19, &v25);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, v24, v16, 0xCu);
    sub_1000070A8(v23);

    return (*(v9 + 8))(v11, v22);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_10000189C(uint64_t a1)
{
  v1 = sub_100079BA0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003F214();
  (*(v2 + 16))(v4, v5, v1);
  swift_errorRetain();
  v6 = sub_100079B80();
  v7 = sub_10007A180();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_10007A6D0();
    v12 = sub_100006B00(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "unable to access transparency log (UNKNOWN): %{public}s", v8, 0xCu);
    sub_1000070A8(v9);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100001AF4()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6BB0);
  sub_1000070F4(v0, qword_1000A6BB0);
  return sub_100079B90();
}

uint64_t sub_100001B74@<X0>(uint64_t a1@<X8>)
{
  v145 = a1;
  v2 = sub_10000712C(&qword_10009E008, &qword_10007E1F0);
  __chkstk_darwin(v2 - 8);
  v141 = &v135 - v3;
  v140 = sub_100079750();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v144 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_100079A00();
  v143 = *(v142 - 8);
  v5 = __chkstk_darwin(v142);
  v137 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v138 = &v135 - v7;
  v8 = sub_10000712C(&qword_10009DFB0, &qword_10007BA50);
  v9 = __chkstk_darwin(v8 - 8);
  v146 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v148 = &v135 - v11;
  v12 = sub_1000798B0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v136 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v149 = &v135 - v17;
  v18 = __chkstk_darwin(v16);
  v157 = &v135 - v19;
  v20 = __chkstk_darwin(v18);
  v151 = &v135 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v135 - v23;
  __chkstk_darwin(v22);
  v26 = &v135 - v25;
  v152 = objc_opt_self();
  v27 = [v152 defaultManager];
  v28 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_rootLogsURL;
  swift_beginAccess();
  v162 = v13[2];
  v162(v26, v1 + v28, v12);
  sub_100079800(v29);
  v31 = v30;
  v158 = v13;
  v32 = v13[1];
  v161 = v13 + 1;
  v160 = v32;
  v32(v26, v12);
  type metadata accessor for URLResourceKey();
  isa = sub_100079FE0().super.isa;
  v163[0] = 0;
  v34 = [v27 contentsOfDirectoryAtURL:v31 includingPropertiesForKeys:isa options:0 error:v163];

  v35 = v163[0];
  if (!v34)
  {
    v50 = v163[0];
    sub_1000797A0();

    return swift_willThrow();
  }

  v36 = sub_100079FF0();
  v37 = v35;

  v38 = *(v36 + 16);
  v153 = v12;
  v150 = v13 + 2;
  v156 = v38;
  if (v38)
  {
    v39 = 0;
    *&v155 = "yyyy-MM-dd-HH-mm-ss";
    v154 = (v158 + 4);
    v159 = _swiftEmptyArrayStorage;
    while (v39 < *(v36 + 16))
    {
      v40 = (*(v158 + 80) + 32) & ~*(v158 + 80);
      v13 = v158[9];
      v162(v24, v36 + v40 + v13 * v39, v12);
      v41 = sub_1000797E0();
      v43 = sub_100002E08(0xD00000000000001ALL, v155 | 0x8000000000000000, v41, v42);

      if (v43)
      {
        v44 = *v154;
        (*v154)(v157, v24, v12);
        v45 = v159;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v163[0] = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100009190(0, v45[2] + 1, 1);
          v45 = v163[0];
        }

        v48 = v45[2];
        v47 = v45[3];
        if (v48 >= v47 >> 1)
        {
          sub_100009190((v47 > 1), v48 + 1, 1);
          v45 = v163[0];
        }

        v45[2] = v48 + 1;
        v159 = v45;
        v49 = v45 + v40 + v48 * v13;
        v12 = v153;
        v44(v49, v157, v153);
      }

      else
      {
        v160(v24, v12);
      }

      if (v156 == ++v39)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_54:
    v159 = sub_100009388(v159);
    goto LABEL_16;
  }

  v159 = _swiftEmptyArrayStorage;
LABEL_15:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_16:
  v52 = v158;
  v53 = v147;
  v54 = v159;
  v55 = v159[2];
  v163[0] = v159 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
  v56 = v163[0];
  v163[1] = v55;
  sub_10000797C(v163);
  v57 = v53;
  v58 = sub_100002F64(1uLL, v54);
  v62 = ((v61 >> 1) - v60);
  v147 = v56;
  v154 = v58;
  if (v61 >> 1 == v60)
  {
  }

  else
  {
    if ((v61 >> 1) <= v60)
    {
      __break(1u);
LABEL_56:
      swift_once();
      goto LABEL_42;
    }

    v69 = v59;
    v70 = v60;
    v71 = v52[9];

    v72 = v69 + v70 * v71;
    *&v73 = 136446210;
    v155 = v73;
    do
    {
      v75 = v151;
      v162(v151, v72, v12);
      v76 = [v152 defaultManager];
      sub_100079800(v77);
      v79 = v78;
      v160(v75, v12);
      v163[0] = 0;
      LODWORD(v75) = [v76 removeItemAtURL:v79 error:v163];

      if (v75)
      {
        v74 = v163[0];
      }

      else
      {
        v80 = v163[0];
        sub_1000797A0();

        swift_willThrow();
        if (qword_1000A03E0 != -1)
        {
          swift_once();
        }

        v57 = 0;
        v81 = sub_100079BA0();
        sub_1000070F4(v81, qword_1000A6BB0);
        swift_errorRetain();
        v82 = sub_100079B80();
        v83 = sub_10007A170();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v157 = 0;
          v85 = v84;
          v156 = swift_slowAlloc();
          v163[0] = v156;
          *v85 = v155;
          swift_getErrorValue();
          v86 = sub_10007A6D0();
          v88 = v71;
          v89 = sub_100006B00(v86, v87, v163);

          *(v85 + 4) = v89;
          v71 = v88;
          _os_log_impl(&_mh_execute_header, v82, v83, "failed to erase old log: %{public}s", v85, 0xCu);
          sub_1000070A8(v156);

          v57 = v157;
        }

        else
        {
        }

        v12 = v153;
      }

      v72 += v71;
      --v62;
    }

    while (v62);
  }

  swift_unknownObjectRelease();
  v63 = v159[2];
  if (v63)
  {
    v64 = v158;
    v65 = v148;
    v162(v148, &v147[v158[9] * (v63 - 1)], v12);
    v66 = 0;
    v67 = v12;
    v62 = v149;
    v68 = v146;
  }

  else
  {
    v66 = 1;
    v65 = v148;
    v67 = v12;
    v62 = v149;
    v68 = v146;
    v64 = v158;
  }

  v13 = v64[7];
  (v13)(v65, v66, 1, v67);
  sub_10000939C(v65, v68, &qword_10009DFB0, &qword_10007BA50);
  if ((v64[6])(v68, 1, v67) == 1)
  {
    v90 = &qword_10009DFB0;
    v91 = &qword_10007BA50;
    v92 = v68;
LABEL_34:
    sub_1000096C4(v92, v90, v91);
    return sub_100009404(v65, v145);
  }

  (v64[4])(v62, v68, v67);
  sub_10000712C(&qword_10009E010, &unk_10007BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007B7C0;
  *(inited + 32) = NSURLCreationDateKey;
  v94 = NSURLCreationDateKey;
  sub_100009474(inited);
  swift_setDeallocating();
  sub_100009668(inited + 32);
  v95 = v144;
  sub_1000797C0();
  if (v57)
  {

    v160(v62, v67);
    return sub_1000096C4(v65, &qword_10009DFB0, &qword_10007BA50);
  }

  v96 = v141;
  sub_100079700();
  (*(v139 + 8))(v95, v140);
  v97 = v143;
  v98 = v142;
  if ((*(v143 + 48))(v96, 1, v142) == 1)
  {
    v160(v62, v153);
    v90 = &qword_10009E008;
    v91 = &qword_10007E1F0;
    v92 = v96;
    goto LABEL_34;
  }

  v99 = v138;
  (*(v97 + 32))(v138, v96, v98);
  v100 = v137;
  sub_1000799C0();
  sub_1000799E0();
  v102 = v101;
  v104 = *(v97 + 8);
  v103 = v97 + 8;
  v105 = v100;
  v56 = v104;
  (v104)(v105, v98);
  if (v102 <= 604800.0)
  {
    (v56)(v99, v98);
    v160(v62, v153);
    return sub_100009404(v65, v145);
  }

  v143 = v103;
  if (qword_1000A03E0 != -1)
  {
    goto LABEL_56;
  }

LABEL_42:
  v159 = v56;
  v106 = sub_100079BA0();
  v107 = sub_1000070F4(v106, qword_1000A6BB0);
  v108 = v136;
  v109 = v153;
  v162(v136, v62, v153);
  v162 = v107;
  v110 = sub_100079B80();
  v111 = sub_10007A150();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = v108;
    v113 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v163[0] = v158;
    *v113 = 136446210;
    v114 = sub_1000797E0();
    v157 = v57;
    v116 = v115;
    v160(v112, v109);
    v117 = sub_100006B00(v114, v116, v163);

    *(v113 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v110, v111, "aging out log file: %{public}s", v113, 0xCu);
    sub_1000070A8(v158);
  }

  else
  {

    v160(v108, v109);
  }

  v118 = v148;
  v119 = [v152 defaultManager];
  v120 = v149;
  sub_100079800(&v164);
  v122 = v121;
  v163[0] = 0;
  v123 = [v119 removeItemAtURL:v121 error:v163];

  if (v123)
  {
    v124 = v163[0];
    (v159)(v138, v142);
    v125 = v153;
    v160(v120, v153);
    sub_1000096C4(v118, &qword_10009DFB0, &qword_10007BA50);
  }

  else
  {
    v126 = v163[0];
    sub_1000797A0();

    swift_willThrow();
    v157 = 0;
    swift_errorRetain();
    v127 = sub_100079B80();
    v128 = sub_10007A170();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v163[0] = v130;
      *v129 = 136446210;
      swift_getErrorValue();
      v131 = sub_10007A6D0();
      v133 = sub_100006B00(v131, v132, v163);

      *(v129 + 4) = v133;
      _os_log_impl(&_mh_execute_header, v127, v128, "failed to erase old log: %{public}s", v129, 0xCu);
      sub_1000070A8(v130);

      (v159)(v138, v142);
      v125 = v153;
      v160(v149, v153);
      v134 = v148;
    }

    else
    {

      (v159)(v138, v142);
      v125 = v153;
      v160(v149, v153);
      v134 = v118;
    }

    sub_1000096C4(v134, &qword_10009DFB0, &qword_10007BA50);
  }

  return (v13)(v145, 1, 1, v125);
}

uint64_t sub_100002E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_100079F30();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_100079F30();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_10007A610();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_100079F30();
      v7 = v9;
    }

    while (v9);
  }

  sub_100079F30();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

unint64_t sub_100002F64(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    sub_1000798B0();
    return a2;
  }

  return result;
}

uint64_t sub_100002FF8(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000030A0;

  return sub_1000031A0(a1);
}

uint64_t sub_1000030A0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000031A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000031C0, 0, 0);
}

uint64_t sub_1000031C0()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_writeInternalEvents) = 2;
  *(v2 + OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_fileDeletionSource) = 0;
  v3 = [objc_opt_self() fileHandleWithNullDevice];
  *(v2 + OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_activeFile) = v3;
  v4 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_rootLogsURL;
  v5 = sub_1000798B0();
  v0[4] = v5;
  v6 = *(v5 - 8);
  v0[5] = v6;
  (*(v6 + 16))(v2 + v4, v1, v5);

  return _swift_task_switch(sub_1000032D8, v2, 0);
}

uint64_t sub_1000032D8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  sub_1000033B8();
  (*(v2 + 8))(v3, v1);
  v4 = v0[1];
  v5 = v0[3];

  return v4(v5);
}

void sub_1000033B8()
{
  v1 = sub_100079520();
  v87 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v76 - v5;
  v7 = sub_100079530();
  v88 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v83 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v86 = v76 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = v76 - v13;
  v15 = __chkstk_darwin(v12);
  v85 = v76 - v16;
  v17 = __chkstk_darwin(v15);
  v84 = v76 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = v76 - v20;
  __chkstk_darwin(v19);
  v23 = v76 - v22;
  sub_100003F98();
  if (v0)
  {
    v91 = v0;
    swift_errorRetain();
    sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    if (swift_dynamicCast())
    {
      v78 = v14;
      v24 = v88 + 16;
      v81 = *(v88 + 16);
      v81(v21, v23, v7);
      v79 = sub_100009AA4(&qword_10009DE28, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
      sub_100079790();
      sub_100079510();
      v25 = sub_100009AA4(&qword_10009DE30, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      v80 = v23;
      v26 = v25;
      sub_100079FC0();
      sub_100079FC0();
      v82 = v7;
      v27 = v87[1];
      v27(v4, v1);
      v27(v6, v1);
      if (v90 == v89)
      {
        v28 = v81;
        v29 = v82;

        if (qword_1000A03E0 != -1)
        {
          swift_once();
        }

        v30 = sub_100079BA0();
        sub_1000070F4(v30, qword_1000A6BB0);
        v31 = v84;
        v28(v84, v21, v29);
        v32 = sub_100079B80();
        v33 = sub_10007A190();
        v34 = os_log_type_enabled(v32, v33);
        v35 = v88;
        if (v34)
        {
          v36 = v31;
          v37 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          *v37 = 138412290;
          sub_1000794D0();
          v38 = _swift_stdlib_bridgeErrorToNSError();
          v39 = *(v35 + 8);
          v39(v36, v29);
          *(v37 + 4) = v38;
          v40 = v87;
          *v87 = v38;
          _os_log_impl(&_mh_execute_header, v32, v33, "transparency log - no write permission. %@", v37, 0xCu);
          sub_1000096C4(v40, &qword_10009DE20, &unk_10007B800);
        }

        else
        {

          v39 = *(v35 + 8);
          v39(v31, v29);
        }

        sub_1000015A8(v21, "unable to access transparency log (PERM): %{public}s");
        sub_1000794D0();
        swift_willThrow();
        v39(v21, v29);
        v39(v80, v29);
LABEL_30:

        return;
      }

      v41 = *(v88 + 8);
      v42 = v21;
      v43 = v82;
      v87 = (v88 + 8);
      v84 = v41;
      (v41)(v42, v82);
      v76[1] = v26;
      v77 = v27;
      v44 = v85;
      v76[0] = v24;
      v81(v85, v80, v43);
      v45 = v77;
      sub_100079790();
      sub_100079500();
      sub_100079FC0();
      sub_100079FC0();
      v45(v4, v1);
      v45(v6, v1);
      v46 = v81;
      if (v90 == v89)
      {
        v47 = v44;
        v48 = v84;
        v49 = v82;

        if (qword_1000A03E0 != -1)
        {
          swift_once();
        }

        v50 = sub_100079BA0();
        sub_1000070F4(v50, qword_1000A6BB0);
        v51 = v78;
        v52 = v44;
        v46(v78, v44, v49);
        v53 = sub_100079B80();
        v54 = sub_10007A190();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          sub_1000794D0();
          v57 = _swift_stdlib_bridgeErrorToNSError();
          v48(v51, v49);
          *(v55 + 4) = v57;
          *v56 = v57;
          _os_log_impl(&_mh_execute_header, v53, v54, "transparency log - no space. %@", v55, 0xCu);
          sub_1000096C4(v56, &qword_10009DE20, &unk_10007B800);

          v52 = v47;
        }

        else
        {

          v48(v51, v49);
        }

        v69 = v80;
        sub_1000015A8(v52, "unable to write transparency log (OOS): %{public}s");
        sub_1000794D0();
        swift_willThrow();
        v48(v52, v49);
        v48(v69, v49);
        goto LABEL_30;
      }

      v58 = v82;
      (v84)(v44, v82);
      (*(v88 + 32))(v86, v80, v58);
      sub_100079790();
      sub_1000794F0();
      sub_100079FC0();
      sub_100079FC0();
      v45(v4, v1);
      v45(v6, v1);
      if (v90 == v89)
      {
        v59 = v84;
        v60 = v82;

        if (qword_1000A03E0 != -1)
        {
          swift_once();
        }

        v61 = sub_100079BA0();
        sub_1000070F4(v61, qword_1000A6BB0);
        v62 = v83;
        v63 = v86;
        v81(v83, v86, v60);
        v64 = sub_100079B80();
        v65 = sub_10007A190();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *v66 = 138412290;
          sub_1000794D0();
          v68 = _swift_stdlib_bridgeErrorToNSError();
          v59(v62, v60);
          *(v66 + 4) = v68;
          *v67 = v68;
          _os_log_impl(&_mh_execute_header, v64, v65, "transparency log - unknown write error. %@", v66, 0xCu);
          sub_1000096C4(v67, &qword_10009DE20, &unk_10007B800);
        }

        else
        {

          v59(v62, v60);
        }

        sub_1000015A8(v63, "unable to access storebag cache (WRITE-UNKNOWN): %{public}s");
        sub_1000794D0();
        swift_willThrow();
        v59(v63, v60);
        goto LABEL_30;
      }

      (v84)(v86, v82);
    }

    if (qword_1000A03E0 != -1)
    {
      swift_once();
    }

    v70 = sub_100079BA0();
    sub_1000070F4(v70, qword_1000A6BB0);
    swift_errorRetain();
    v71 = sub_100079B80();
    v72 = sub_10007A190();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      swift_errorRetain();
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 4) = v75;
      *v74 = v75;
      _os_log_impl(&_mh_execute_header, v71, v72, "transparency log - unexpected error. %@", v73, 0xCu);
      sub_1000096C4(v74, &qword_10009DE20, &unk_10007B800);
    }

    sub_10000189C(v0);
    swift_willThrow();
  }
}

void sub_100003F98()
{
  v1 = v0;
  v114 = sub_100079C80();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100079CC0();
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10007A220();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100079A00();
  v118 = *(v5 - 8);
  v119 = v5;
  __chkstk_darwin(v5);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000712C(&qword_10009DFB0, &qword_10007BA50);
  __chkstk_darwin(v8 - 8);
  v10 = &v102 - v9;
  v11 = sub_1000798B0();
  v12 = *(v11 - 8);
  v122 = v11;
  v123 = v12;
  v13 = __chkstk_darwin(v11);
  v105 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v115 = &v102 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v102 - v18;
  v20 = __chkstk_darwin(v17);
  v120 = &v102 - v21;
  v22 = __chkstk_darwin(v20);
  v116 = &v102 - v23;
  v24 = __chkstk_darwin(v22);
  v104 = &v102 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v102 - v27;
  __chkstk_darwin(v26);
  v30 = &v102 - v29;
  v31 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_activeFile;
  swift_beginAccess();
  v117 = v31;
  v32 = *(v1 + v31);
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 fileHandleWithNullDevice];
  v121 = sub_100007670(0, &qword_10009DFB8, NSFileHandle_ptr);
  LOBYTE(v31) = sub_10007A2A0();

  if ((v31 & 1) == 0)
  {
    if (qword_1000A03E0 != -1)
    {
      swift_once();
    }

    v36 = sub_100079BA0();
    sub_1000070F4(v36, qword_1000A6BB0);
    v37 = sub_100079B80();
    v38 = sub_10007A190();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "witnessed log vanish - refeshing", v39, 2u);
    }
  }

  v40 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_fileDeletionSource;
  swift_beginAccess();
  if (*(v1 + v40))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10007A250();
    swift_unknownObjectRelease();
    *(v1 + v40) = 0;
    swift_unknownObjectRelease();
  }

  v41 = v130;
  sub_100001B74(v10);
  if (!v41)
  {
    v103 = v40;
    v130 = 0;
    v43 = v122;
    v42 = v123;
    if ((v123[6])(v10, 1, v122) == 1)
    {
      sub_1000096C4(v10, &qword_10009DFB0, &qword_10007BA50);
      v44 = [objc_allocWithZone(NSDateFormatter) init];
      v45 = sub_100079DF0();
      [v44 setDateFormat:v45];

      sub_1000799C0();
      isa = sub_100079980().super.isa;
      (*(v118 + 8))(v7, v119);
      v47 = [v44 stringFromDate:isa];

      v48 = sub_100079E20();
      v50 = v49;

      v51 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_rootLogsURL;
      swift_beginAccess();
      v119 = v123[2];
      v119(v19, v1 + v51, v43);
      aBlock = 0;
      v125 = 0xE000000000000000;
      sub_10007A3B0(32);

      aBlock = 0xD00000000000001ALL;
      v125 = 0x8000000100082390;
      v131._countAndFlagsBits = v48;
      v131._object = v50;
      sub_100079F00(v131);

      v132._countAndFlagsBits = 1954051118;
      v132._object = 0xE400000000000000;
      sub_100079F00(v132);
      v52 = v120;
      sub_100079820();
      v53 = v123;

      v54 = v19;
      v55 = v53[1];
      v55(v54, v43);
      v56 = v130;
      sub_100079940();
      if (v56)
      {
        v55(v52, v43);

        return;
      }

      v61 = v116;
      (v53[4])(v116, v52, v43);
      v62 = v115;
      v63 = v119;
      v119(v115, v61, v43);
      v64 = sub_100004F30(v62);
      v130 = 0;
      v68 = v63;
      v69 = *(v1 + v117);
      *(v1 + v117) = v64;

      if (qword_1000A03E0 != -1)
      {
        swift_once();
      }

      v70 = sub_100079BA0();
      sub_1000070F4(v70, qword_1000A6BB0);
      v71 = v105;
      v68(v105, v61, v43);
      v72 = sub_100079B80();
      v73 = sub_10007A150();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = v71;
        v123 = swift_slowAlloc();
        aBlock = v123;
        *v74 = 136446210;
        v121 = sub_100079870();
        v77 = v76;
        v55(v75, v43);
        v78 = sub_100006B00(v121, v77, &aBlock);

        *(v74 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v72, v73, "created new log file at %{public}s", v74, 0xCu);
        sub_1000070A8(v123);

        v79 = v116;
      }

      else
      {

        v55(v71, v43);
        v79 = v61;
      }

      v55(v79, v43);
      v65 = v117;
    }

    else
    {
      (v42[4])(v30, v10, v43);
      v57 = v42[2];
      v57(v28, v30, v43);
      v58 = v130;
      v59 = sub_100004F30(v28);
      v60 = v43;
      if (v58)
      {
        (v42[1])(v30, v43);
        return;
      }

      v65 = v117;
      v66 = *(v1 + v117);
      *(v1 + v117) = v59;
      v67 = v59;

      sub_10007A140();
      v130 = 0;

      if (qword_1000A03E0 != -1)
      {
        swift_once();
      }

      v80 = sub_100079BA0();
      sub_1000070F4(v80, qword_1000A6BB0);
      v81 = v104;
      v57(v104, v30, v60);
      v82 = sub_100079B80();
      v83 = sub_10007A150();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = v81;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        aBlock = v86;
        *v85 = 136446210;
        v121 = sub_100079870();
        v87 = v60;
        v89 = v88;
        v123 = v123[1];
        (v123)(v84, v87);
        v90 = sub_100006B00(v121, v89, &aBlock);

        *(v85 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v82, v83, "opened log file at %{public}s", v85, 0xCu);
        sub_1000070A8(v86);
        v65 = v117;

        (v123)(v30, v122);
      }

      else
      {

        v91 = v123[1];
        v91(v81, v60);
        v91(v30, v60);
      }
    }

    sub_100007670(0, &qword_10009DFC0, OS_dispatch_source_ptr);
    [*(v1 + v65) fileDescriptor];
    sub_10000712C(&qword_10009DFC8, &qword_10007BA58);
    v92 = v107;
    v93 = swift_allocObject();
    *(v93 + 1) = xmmword_10007B7D0;
    sub_10007A210();
    sub_10007A200();
    aBlock = v93;
    sub_100009AA4(&qword_10009DFD0, &type metadata accessor for OS_dispatch_source.FileSystemEvent, &protocol conformance descriptor for OS_dispatch_source.FileSystemEvent);
    sub_10000712C(&qword_10009DFD8, &qword_10007BA60);
    sub_100007710(&qword_10009DFE0, &qword_10009DFD8, &qword_10007BA60);
    v94 = v106;
    v95 = v108;
    sub_10007A2E0();
    v96 = sub_10007A230();
    (*(v92 + 8))(v94, v95);
    v97 = v103;
    *(v1 + v103) = v96;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    v98 = swift_allocObject();
    swift_weakInit();
    v128 = sub_1000076F0;
    v129 = v98;
    aBlock = _NSConcreteStackBlock;
    v125 = 1107296256;
    v126 = sub_1000054F0;
    v127 = &unk_100095C58;
    v99 = _Block_copy(&aBlock);

    v100 = v109;
    sub_100079CB0();
    v101 = v111;
    sub_100005534();
    sub_10007A240();
    _Block_release(v99);
    swift_unknownObjectRelease();
    (*(v113 + 8))(v101, v114);
    (*(v110 + 8))(v100, v112);

    if (*(v1 + v97))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_10007A260();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100004F30(uint64_t a1)
{
  sub_100079800(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_1000798B0();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_1000797A0();

    swift_willThrow();
    v10 = sub_1000798B0();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_100005088(uint64_t a1)
{
  v1 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_10007A0A0();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_100005244(0, 0, v3, &unk_10007BA80, v7);
  }

  return result;
}

uint64_t sub_1000051C8()
{
  sub_1000033B8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000939C(a3, v22 - v9, &qword_10009E000, &qword_10007BA70);
  v11 = sub_10007A0A0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000096C4(v10, &qword_10009E000, &qword_10007BA70);
  }

  else
  {
    sub_10007A090();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10007A050();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100079EA0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000096C4(a3, &qword_10009E000, &qword_10007BA70);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000096C4(a3, &qword_10009E000, &qword_10007BA70);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000054F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100005534()
{
  sub_100079C80();
  sub_100009AA4(&qword_10009DFE8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000712C(&qword_10009DFF0, &qword_10007BA68);
  sub_100007710(&qword_10009DFF8, &qword_10009DFF0, &qword_10007BA68);
  return sub_10007A2E0();
}

uint64_t sub_10000560C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35[2] = a3;
  v35[3] = a4;
  v36._countAndFlagsBits = a1;
  v36._object = a2;
  v4 = sub_100079E70();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100079A00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_10007A3B0(27);

  v39 = 40;
  v40 = 0xE100000000000000;
  sub_1000799C0();
  v12 = sub_100079960();
  v14 = v13;
  v15 = v8;
  v16 = v4;
  (*(v9 + 8))(v11, v15);
  v43._countAndFlagsBits = v12;
  v43._object = v14;
  sub_100079F00(v43);

  v44._countAndFlagsBits = 5972009;
  v44._object = 0xE300000000000000;
  sub_100079F00(v44);
  sub_100079F00(v36);
  v45._object = 0x80000001000822A0;
  v45._countAndFlagsBits = 0xD000000000000013;
  sub_100079F00(v45);
  sub_100079E60();
  v17 = sub_100079E30();
  v19 = v18;
  v20 = *(v5 + 8);
  v20(v7, v16);
  if (v19 >> 60 == 15)
  {

    sub_100007174();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v41 = v17;
    v42 = v19;
    sub_100079950();
    sub_100079E60();
    v22 = sub_100079E30();
    v24 = v23;
    result = (v20)(v7, v16);
    if (v24 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {

      sub_100079950();
      sub_1000071C8(v22, v24);
      v25 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_activeFile;
      v26 = v35[1];
      swift_beginAccess();
      v27 = *(v26 + v25);
      v29 = v41;
      v28 = v42;
      v37 = v41;
      v38 = v42;
      v30 = v27;
      sub_100007230(v29, v28);
      sub_100007284();
      v31 = v35[0];
      sub_10007A130();
      if (v31)
      {

        sub_1000071DC(v37, v38);
      }

      else
      {
        sub_1000071DC(v37, v38);

        v32 = *(v26 + v25);
        v37 = 0;
        if ([v32 synchronizeAndReturnError:&v37])
        {
          v33 = v37;
        }

        else
        {
          v34 = v37;
          sub_1000797A0();

          swift_willThrow();
        }
      }

      return sub_1000071DC(v29, v28);
    }
  }

  return result;
}

_BYTE *sub_1000059F4(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v51._countAndFlagsBits = a1;
  v51._object = a2;
  v7 = sub_1000795E0();
  v49 = *(v7 - 8);
  __chkstk_darwin(v7);
  v8 = sub_100079E70();
  v9 = *(v8 - 8);
  v52 = v8;
  v53 = v9;
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100079A00();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10003F2A0();
  result = swift_beginAccess();
  if (*v16 == 1)
  {
    result = sub_10003F484();
    if (*result == 1)
    {
      v47 = v5;
      v48 = v6;
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_10007A3B0(25);

      v56 = 40;
      v57 = 0xE100000000000000;
      sub_1000799C0();
      v18 = sub_100079960();
      v20 = v19;
      (*(v13 + 8))(v15, v12);
      v60._countAndFlagsBits = v18;
      v60._object = v20;
      sub_100079F00(v60);

      v61._countAndFlagsBits = 5972009;
      v61._object = 0xE300000000000000;
      sub_100079F00(v61);
      sub_100079F00(v51);
      v62._object = 0x80000001000822C0;
      v62._countAndFlagsBits = 0xD000000000000011;
      sub_100079F00(v62);
      sub_100079E60();
      v21 = sub_100079E30();
      v23 = v22;
      v24 = v53 + 8;
      v25 = *(v53 + 8);
      v25(v11, v52);
      if (v23 >> 60 == 15)
      {

        sub_100007174();
        swift_allocError();
        return swift_willThrow();
      }

      else
      {
        v51._object = v25;
        v53 = v24;
        v58 = v21;
        v59 = v23;
        sub_100079620();
        swift_allocObject();
        v26 = sub_100079610();
        sub_10000712C(&qword_10009DE48, &unk_10007C100);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_10007B7C0;
        sub_1000795D0();
        v56 = v27;
        sub_100009AA4(&qword_10009DE50, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
        sub_10000712C(&qword_10009DE58, &qword_10007B810);
        v28 = v26;
        sub_100007710(&qword_10009DE60, &qword_10009DE58, &qword_10007B810);
        sub_10007A2E0();
        sub_1000795F0();
        v56 = v50;
        sub_100007320();

        v29 = v48;
        v30 = sub_100079600();
        if (v29)
        {

          return sub_1000071DC(v58, v59);
        }

        else
        {
          v32 = v30;
          v33 = v31;
          v51._countAndFlagsBits = v28;

          sub_100079950();
          sub_100079E60();
          v34 = sub_100079E30();
          v36 = v35;
          result = (v51._object)(v11, v52);
          if (v36 >> 60 == 15)
          {
            __break(1u);
          }

          else
          {

            sub_100079950();
            sub_1000071C8(v34, v36);
            v37 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_activeFile;
            v38 = v47;
            swift_beginAccess();
            v39 = *(v38 + v37);
            v41 = v58;
            v40 = v59;
            v54 = v58;
            v55 = v59;
            v42 = v39;
            sub_100007230(v41, v40);
            sub_100007284();
            sub_10007A130();
            sub_1000071DC(v54, v55);

            v43 = *(v47 + v37);
            v54 = 0;
            if ([v43 synchronizeAndReturnError:&v54])
            {
              v44 = v54;
              sub_1000071DC(v41, v40);
              sub_1000071DC(v32, v33);
            }

            else
            {
              v45 = v54;
              sub_1000797A0();

              swift_willThrow();
              sub_1000071DC(v32, v33);

              return sub_1000071DC(v41, v40);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000605C()
{
  v1 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_rootLogsURL;
  v2 = sub_1000798B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_100006100()
{
  sub_10007A730();
  sub_10007A740(0);
  return sub_10007A760();
}

Swift::Int sub_100006144(uint64_t a1)
{
  sub_10007A730();
  sub_10007A740(0);
  return sub_10007A760();
}

uint64_t sub_100006198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10007A610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100006234(uint64_t a1)
{
  v2 = sub_100007560();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006270(uint64_t a1)
{
  v2 = sub_100007560();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000062AC(void *a1, uint64_t a2)
{
  v4 = sub_10000712C(&unk_10009DF90, &unk_10007BA40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000751C(a1, a1[3]);
  sub_100007560();
  sub_10007A7C0();
  v9[1] = a2;
  sub_10000712C(&unk_10009EB50, &unk_10007D3B0);
  sub_1000075B4();
  sub_10007A5C0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10000642C(uint64_t a1, id *a2)
{
  result = sub_100079E00();
  *a2 = 0;
  return result;
}

uint64_t sub_1000064A4(uint64_t a1, id *a2)
{
  v3 = sub_100079E10();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100006524@<X0>(uint64_t *a2@<X8>)
{
  sub_100079E20();
  v3 = sub_100079DF0();

  *a2 = v3;
  return result;
}

uint64_t sub_100006568()
{
  sub_100079E20();
  v0 = sub_100079F60();

  return v0;
}

uint64_t sub_1000065A4(uint64_t a1)
{
  sub_100079E20();
  sub_100079EC0();
}

Swift::Int sub_1000065F8(uint64_t a1)
{
  sub_100079E20();
  sub_10007A730();
  sub_100079EC0();
  v1 = sub_10007A760();

  return v1;
}

uint64_t sub_10000666C(void *a1, uint64_t *a2)
{
  v2 = sub_100079E20();
  v4 = v3;
  if (v2 == sub_100079E20() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10007A610();
  }

  return v7 & 1;
}

uint64_t sub_1000066F4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100079DF0();

  *a2 = v3;
  return result;
}

uint64_t sub_10000673C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100079E20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100006768(uint64_t a1)
{
  v2 = sub_100009AA4(&unk_10009F090, type metadata accessor for URLResourceKey, &unk_10007BFE8);
  v3 = sub_100009AA4(&unk_10009E060, type metadata accessor for URLResourceKey, &unk_10007BFA8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_100006824(void *result, int64_t a2, char a3, void *a4)
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

  sub_10000712C(&qword_10009E020, &qword_10007BAA0);
  v10 = *(sub_1000798B0() - 8);
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
  v15 = *(sub_1000798B0() - 8);
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

char *sub_1000069FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E028, &qword_10007BAA8);
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

uint64_t sub_100006B00(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_100006BCC(v11, 0, 0, 1, a1, a2);
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
    sub_10000978C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000070A8(v11);
  return v7;
}

void sub_100006BCC(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
          *(__dst + v9) = 0;
          *a1 = __dst;
          return;
        }
      }
    }

LABEL_8:
    sub_100006CD8(a5, a6);
    *a1 = v8;
    return;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    v7 = sub_10007A410();
    a6 = v11;
    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
  }
}

void *sub_100006CD8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006D24(a1, a2);
  sub_100006E54(&off_100095B18);
  return v3;
}

void *sub_100006D24(uint64_t a1, unint64_t a2)
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

  v6 = sub_100006F40(v5, 0);
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

  result = sub_10007A410();
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
        v10 = sub_100079F40();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006F40(v10, 0);
        result = sub_10007A3A0();
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

uint64_t sub_100006E54(uint64_t result)
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

  result = sub_100006FB4(result, v11, 1, v3);
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

void *sub_100006F40(uint64_t a1, uint64_t a2)
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

  sub_10000712C(&unk_10009E030, &qword_10007BAB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006FB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&unk_10009E030, &qword_10007BAB0);
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

uint64_t sub_1000070A8(void *a1)
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

uint64_t sub_1000070F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000712C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100007174()
{
  result = qword_10009DE38;
  if (!qword_10009DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009DE38);
  }

  return result;
}

uint64_t sub_1000071C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000071DC(result, a2);
  }

  return result;
}

uint64_t sub_1000071DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100007230(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100007284()
{
  result = qword_10009DE40;
  if (!qword_10009DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009DE40);
  }

  return result;
}

uint64_t sub_1000072D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100007320()
{
  result = qword_1000A03E8[0];
  if (!qword_1000A03E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A03E8);
  }

  return result;
}

unint64_t sub_100007378()
{
  result = qword_10009DE68;
  if (!qword_10009DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009DE68);
  }

  return result;
}

uint64_t type metadata accessor for TransparencyLog(uint64_t a1)
{
  result = qword_1000A06F0;
  if (!qword_1000A06F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007424(uint64_t a1)
{
  result = sub_1000798B0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_10000751C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100007560()
{
  result = qword_1000A0780[0];
  if (!qword_1000A0780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A0780);
  }

  return result;
}

unint64_t sub_1000075B4()
{
  result = qword_10009DFA0;
  if (!qword_10009DFA0)
  {
    sub_1000072D8(&unk_10009EB50, &unk_10007D3B0);
    sub_100009AA4(&qword_10009DFA8, type metadata accessor for ServiceEventValue, &unk_10007D4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009DFA0);
  }

  return result;
}

uint64_t sub_100007670(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000076B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000076F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007710(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000072D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007764(__n128 a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_1000077A4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007838;

  return sub_1000051A8(v3, v4, v5, v2);
}

uint64_t sub_100007838()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_10009F070)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10009F070);
    }
  }
}

Swift::Int sub_10000797C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10007A5D0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000798B0();
        v6 = sub_10007A010();
        v6[2] = v5;
      }

      v7 = *(sub_1000798B0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100007DB4(v8, v9, a1, v4);
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
    return sub_100007AA8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100007AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000798B0();
  v9 = __chkstk_darwin(v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v34 - v12;
  result = __chkstk_darwin(v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_1000797E0();
      v27 = v26;
      if (v25 == sub_1000797E0() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_10007A610();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100007DB4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_1000798B0();
  v10 = __chkstk_darwin(v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v149 = &v128 - v13;
  v14 = __chkstk_darwin(v12);
  v154 = &v128 - v15;
  v16 = __chkstk_darwin(v14);
  v153 = &v128 - v17;
  v18 = __chkstk_darwin(v16);
  v146 = &v128 - v19;
  v20 = __chkstk_darwin(v18);
  v145 = &v128 - v21;
  v22 = __chkstk_darwin(v20);
  v133 = &v128 - v23;
  result = __chkstk_darwin(v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_100008970(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_100009098(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_10000900C(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_100009098(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = _swiftEmptyArrayStorage;
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = sub_1000797E0();
      v37 = v36;
      v38 = sub_1000797E0();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_10007A610();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_1000797E0();
        v52 = v51;
        if (v50 == sub_1000797E0() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_10007A610();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000069FC(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_1000069FC((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_100008970(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_100009098(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_10000900C(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_1000797E0();
    v69 = v68;
    if (v5 == sub_1000797E0() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_10007A610();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_100008970(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = sub_1000798B0();
  v8 = *(v71 - 8);
  v9 = __chkstk_darwin(v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v67 = &v59 - v12;
  v13 = __chkstk_darwin(v11);
  v70 = &v59 - v14;
  result = __chkstk_darwin(v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_1000797E0();
            v52 = v51;
            if (v50 == sub_1000797E0() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_10007A610();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_1000797E0();
        v32 = v31;
        if (v30 == sub_1000797E0() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_10007A610();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_1000090AC(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_10000900C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100009098(v3);
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

uint64_t sub_1000090AC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1000798B0();
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

void *sub_100009190(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000091B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000091B0(void *result, int64_t a2, char a3, void *a4)
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

  sub_10000712C(&qword_10009E020, &qword_10007BAA0);
  v10 = *(sub_1000798B0() - 8);
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
  v15 = *(sub_1000798B0() - 8);
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

uint64_t sub_10000939C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000712C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009404(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009DFB0, &qword_10007BA50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100009474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009E018, &unk_10007CD10);
    v3 = sub_10007A390();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_100079E20();
      sub_10007A730();
      v27 = v7;
      sub_100079EC0();
      v8 = sub_10007A760();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_100079E20();
        v18 = v17;
        if (v16 == sub_100079E20() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_10007A610();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100009668(uint64_t a1)
{
  type metadata accessor for URLResourceKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000096C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000712C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_100009728(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000978C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for SubmitEventsActivity.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SubmitEventsActivity.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_1000098C8()
{
  result = qword_1000A0890[0];
  if (!qword_1000A0890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A0890);
  }

  return result;
}

unint64_t sub_1000099F8()
{
  result = qword_1000A0B20;
  if (!qword_1000A0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0B20);
  }

  return result;
}

unint64_t sub_100009A50()
{
  result = qword_1000A0B28[0];
  if (!qword_1000A0B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A0B28);
  }

  return result;
}

uint64_t sub_100009AA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CachedSession(uint64_t a1)
{
  result = qword_1000A0C30;
  if (!qword_1000A0C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v10 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v10;
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = *(a1 + 48);
  *(a6 + 56) = a2;
  *(a6 + 64) = a3;
  *(a6 + 72) = a7;
  v11 = type metadata accessor for CachedSession(0);
  v12 = v11[7];
  v13 = sub_100079A00();
  result = (*(*(v13 - 8) + 32))(a6 + v12, a4, v13);
  v15 = a6 + v11[8];
  *v15 = 0;
  *(v15 + 4) = 1;
  *(a6 + v11[9]) = a5;
  return result;
}

uint64_t sub_100009C74()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_100009CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_100079A00();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

int8x16_t *sub_100009D58@<X0>(int8x16_t *result@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X8>)
{
  if (!result || (a2 - result + 7) < 0xF)
  {
    *a3 = 0;
    return result;
  }

  v3 = ((a2 - result) / 8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v3 >= 3)
  {
    v6 = v3 + 1;
    v7 = (v3 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v5 = (result + 8 * v7);
    v8 = result + 1;
    v9 = 0uLL;
    v10 = v7;
    v11 = 0uLL;
    do
    {
      v9 = veorq_s8(v8[-1], v9);
      v11 = veorq_s8(*v8, v11);
      v8 += 2;
      v10 -= 4;
    }

    while (v10);
    v12 = veorq_s8(v11, v9);
    v4 = veor_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
    if (v6 == v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    v5 = result;
  }

  do
  {
    v13 = v5->i64[0];
    v5 = (v5 + 8);
    *&v4 ^= v13;
  }

  while (v5 != &result->i8[(a2 - result + (a2 - result < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8]);
LABEL_10:
  *a3 = v4;
  return result;
}

uint64_t sub_100009E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue(0);
  v29 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7 || !*(a2 + 16))
  {
    return 0;
  }

  v30 = _swiftEmptyArrayStorage;
  sub_10000A22C(0, v7, 0);
  v8 = v30;
  v9 = (a1 + 40);
  do
  {
    v10 = *v9;
    if (*(a2 + 16))
    {
      v11 = *(v9 - 1);

      v12 = sub_10000A0FC(v11, v10);
      if (v13)
      {
        sub_10000A908(*(a2 + 56) + *(v29 + 72) * v12, v6);
        v14 = sub_10002FC68();
        sub_10000A96C(v6);
        v15 = [(objc_class *)v14 description];
        v16 = sub_100079E20();
        v18 = v17;

        goto LABEL_9;
      }
    }

    else
    {
    }

    v16 = 0;
    v18 = 0xE000000000000000;
LABEL_9:
    v30 = v8;
    v20 = v8[2];
    v19 = v8[3];
    if (v20 >= v19 >> 1)
    {
      sub_10000A22C((v19 > 1), v20 + 1, 1);
      v8 = v30;
    }

    v8[2] = v20 + 1;
    v21 = &v8[2 * v20];
    v21[4] = v16;
    v21[5] = v18;
    v9 += 2;
    --v7;
  }

  while (v7);
  v30 = v8;
  sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  sub_10000A8A4();
  v22 = sub_100079DC0();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    sub_10000A588(v22, v24);
    v27 = v26;

    return v27;
  }

  return 0;
}

uint64_t sub_10000A094()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000A0C4()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

unint64_t sub_10000A0FC(uint64_t a1, uint64_t a2)
{
  sub_10007A730();
  sub_100079EC0();
  v4 = sub_10007A760();

  return sub_10000A174(a1, a2, v4);
}

unint64_t sub_10000A174(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10007A610())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_10000A22C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000A24C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A24C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E278, &qword_10007CCF0);
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

uint64_t sub_10000A358(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_100079D20();
      sub_10000AD2C();
      return sub_100079CD0();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10000A4D8(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10000A4D8(v5, v6);
  }

  sub_100079D20();
  sub_10000AD2C();
  return sub_100079CD0();
}

uint64_t sub_10000A4D8(uint64_t a1, uint64_t a2)
{
  result = sub_100079670();
  if (!result || (result = sub_1000796A0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100079690();
      sub_100079D20();
      sub_10000AD2C();
      return sub_100079CD0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A588(uint64_t a1, uint64_t a2)
{
  v3 = sub_100079D20();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100079D10();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100079E70();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return arc4random_uniform(0x2710u);
  }

  v18 = v7;
  sub_100079E60();
  v14 = sub_100079E30();
  v16 = v15;
  result = (*(v11 + 8))(v13, v10);
  if (v16 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_10000AD2C();
    sub_100079CF0();
    sub_100007230(v14, v16);
    sub_10000A358(v14, v16, v6);
    sub_1000071C8(v14, v16);
    sub_100079CE0();
    (*(v4 + 8))(v6, v3);
    sub_100079D00();
    sub_1000071C8(v14, v16);
    return (*(v19 + 8))(v9, v18);
  }

  return result;
}

unint64_t sub_10000A8A4()
{
  result = qword_10009E138;
  if (!qword_10009E138)
  {
    sub_1000072D8(&qword_10009E130, &qword_10007BCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E138);
  }

  return result;
}

uint64_t sub_10000A908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A96C(uint64_t a1)
{
  v2 = type metadata accessor for ServiceEventValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for SessionUser(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionUser(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SessionUser(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10000AA28(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000AA44(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_10000AA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100079A00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000AB48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100079A00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000ABEC(uint64_t a1)
{
  sub_100079A00();
  if (v1 <= 0x3F)
  {
    sub_10000ACA0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000ACA0(uint64_t a1)
{
  if (!qword_10009E198)
  {
    type metadata accessor for ServiceEventValue(255);
    v1 = sub_100079D90();
    if (!v2)
    {
      atomic_store(v1, &qword_10009E198);
    }
  }
}

unint64_t sub_10000AD2C()
{
  result = qword_10009E280;
  if (!qword_10009E280)
  {
    sub_100079D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E280);
  }

  return result;
}

uint64_t sub_10000AD84()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6BE8);
  sub_1000070F4(v0, qword_1000A6BE8);
  return sub_100079B90();
}

uint64_t sub_10000AE08(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_10007A3B0(20);

      v5 = 0xD000000000000012;
    }

    else
    {
      sub_10007A3B0(33);

      v5 = 0xD00000000000001FLL;
    }

    v7 = v5;
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    sub_100079F00(v9);
    return v7;
  }

  if (a3 == 2)
  {
    sub_10007A3B0(35);

    v7 = 0xD000000000000021;
    v8._countAndFlagsBits = sub_10007A5E0();
    sub_100079F00(v8);

    return v7;
  }

  return 0x656C74746F726874;
}

uint64_t type metadata accessor for StorebagSigningConfiguration(uint64_t a1)
{
  result = qword_1000A0D50;
  if (!qword_1000A0D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000AFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000798B0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v15 - v10;
  type metadata accessor for Throttle(0);
  sub_100053828(a1, v11);
  if (v2)
  {
    return (*(v6 + 8))(a1, v5);
  }

  v13 = *(v6 + 32);
  v13(a2, v11, v5);
  sub_1000406E4(a1, 0x72756769666E6F63, 0xEF2F736E6F697461, v9);
  (*(v6 + 8))(a1, v5);
  v14 = type metadata accessor for StorebagSigningConfiguration(0);
  return (v13)(a2 + *(v14 + 20), v9, v5);
}

uint64_t sub_10000B1B0()
{
  v0 = sub_100079A00();
  v1 = *(v0 - 8);
  v102 = v0;
  v103 = v1;
  v2 = __chkstk_darwin(v0);
  v99 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v100 = &v94 - v5;
  __chkstk_darwin(v4);
  v7 = &v94 - v6;
  v8 = sub_100079750();
  v101 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000712C(&qword_10009E008, &qword_10007E1F0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v94 - v16;
  __chkstk_darwin(v15);
  v19 = &v94 - v18;
  v104 = sub_1000798B0();
  v20 = *(v104 - 8);
  __chkstk_darwin(v104);
  v22 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StorebagSigningConfiguration(0);
  sub_100079810();
  v105 = v22;
  v23 = sub_100079830();
  v96 = v17;
  v97 = v14;
  v98 = v7;
  v24 = v103;
  if (!v23)
  {
    if (qword_1000A0C40 != -1)
    {
      swift_once();
    }

    v27 = sub_100079BA0();
    sub_1000070F4(v27, qword_1000A6BE8);
    v28 = sub_100079B80();
    v29 = sub_10007A150();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v105;
    if (v30)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "configuration does not exist", v32, 2u);
    }

    (*(v20 + 8))(v31, v104);
    return 0;
  }

  v95 = v20;
  sub_10000712C(&qword_10009E010, &unk_10007BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007B7C0;
  *(inited + 32) = NSURLContentModificationDateKey;
  v26 = NSURLContentModificationDateKey;
  sub_100009474(inited);
  swift_setDeallocating();
  sub_100009668(inited + 32);
  sub_1000797C0();

  v33 = v96;
  sub_100079720();
  (*(v101 + 8))(v10, v8);
  v34 = v102;
  result = (*(v24 + 48))(v33, 1, v102);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v36 = v19;
  (*(v24 + 32))(v19, v33, v34);
  v37 = v95;
  v38 = v104;
  v39 = v97;
  (*(v24 + 56))(v19, 0, 1, v34);
  sub_10000F2A8(v19, v39);
  v40 = (*(v24 + 48))(v39, 1, v34);
  v41 = v105;
  if (v40 == 1)
  {
    sub_10000F318(v39);
    if (qword_1000A0C40 != -1)
    {
      swift_once();
    }

    v42 = sub_100079BA0();
    sub_1000070F4(v42, qword_1000A6BE8);
    v43 = sub_100079B80();
    v44 = sub_10007A170();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "unable to determine configuration creation date", v45, 2u);
    }

LABEL_30:
    sub_10000F318(v36);
    (*(v37 + 8))(v41, v38);
    return 0;
  }

  (*(v24 + 32))(v98, v39, v34);
  v46 = sub_1000798D0();
  v48 = v47;
  v49 = objc_opt_self();
  v50 = v46;
  v101 = v48;
  isa = sub_100079910().super.isa;
  v108[0] = 0;
  v52 = [v49 propertyListWithData:isa options:0 format:0 error:v108];

  if (!v52)
  {
    v61 = v108[0];
    sub_1000797A0();

    swift_willThrow();

    goto LABEL_25;
  }

  v53 = v108[0];
  sub_10007A2D0();
  swift_unknownObjectRelease();
  sub_10000712C(&qword_10009E290, qword_10007BD90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    if (qword_1000A0C40 != -1)
    {
      swift_once();
    }

    v62 = sub_100079BA0();
    sub_1000070F4(v62, qword_1000A6BE8);
    v63 = sub_100079B80();
    v64 = sub_10007A170();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "failed to parse configuration", v65, 2u);
    }

    sub_1000071DC(v50, v101);

    (*(v24 + 8))(v98, v34);
    goto LABEL_30;
  }

  v54 = v106;
  if (*(*&v106 + 16) && (v55 = sub_10000A0FC(0xD000000000000016, 0x8000000100082670), (v56 & 1) != 0))
  {
    sub_10000978C(*(*&v54 + 56) + 32 * v55, v108);

    v57 = swift_dynamicCast();
    v58 = v98;
    v59 = v100;
    v60 = v99;
    if (v57)
    {
      v107 = 0;
      if (v106 > 31536000.0 || v106 < 3600.0)
      {
        v106 = 86400.0;
        v107 = 0;
      }
    }

    else
    {
      v106 = 0.0;
      v107 = v57 ^ 1;
    }
  }

  else
  {

    v106 = 0.0;
    v107 = 1;
    v58 = v98;
    v59 = v100;
    v60 = v99;
  }

  sub_1000799D0();
  sub_1000799C0();
  v66 = sub_100079990();
  v69 = *(v24 + 8);
  v68 = v24 + 8;
  v67 = v69;
  v70 = v60;
  v71 = v102;
  v69(v70, v102);
  if (v66)
  {
    if (qword_1000A0C40 != -1)
    {
      swift_once();
    }

    v72 = sub_100079BA0();
    sub_1000070F4(v72, qword_1000A6BE8);
    v73 = sub_100079B80();
    v74 = sub_10007A190();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "removing expired config", v75, 2u);
    }

    v76 = [objc_opt_self() defaultManager];
    sub_100079800(v77);
    v79 = v78;
    v108[0] = 0;
    v80 = [v76 removeItemAtURL:v78 error:v108];

    if (v80)
    {
      v81 = v108[0];
      sub_1000071DC(v50, v101);
    }

    else
    {
      v82 = v108[0];
      sub_1000797A0();

      swift_willThrow();
      swift_errorRetain();
      v83 = sub_100079B80();
      v84 = sub_10007A150();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v99 = v36;
        v86 = v85;
        v87 = swift_slowAlloc();
        v103 = v68;
        v88 = v87;
        v108[0] = v87;
        *v86 = 136446210;
        swift_getErrorValue();
        v89 = sub_10007A6D0();
        v91 = sub_100006B00(v89, v90, v108);

        *(v86 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v83, v84, "failed to remove expired configuration: %{public}s", v86, 0xCu);
        sub_1000070A8(v88);

        sub_1000071DC(v50, v101);

        v92 = v102;
        v67(v100, v102);
        v67(v98, v92);
        sub_10000F318(v99);
        (*(v95 + 8))(v41, v104);
        return 0;
      }

      sub_1000071DC(v50, v101);
    }

    v93 = v102;
    v67(v100, v102);
    v67(v98, v93);
    sub_10000F318(v36);
    (*(v37 + 8))(v41, v104);
    return 0;
  }

  v67(v59, v71);
  v67(v58, v71);
  sub_10000F318(v36);
  (*(v37 + 8))(v41, v104);
  return v50;
}

uint64_t sub_10000BFCC()
{
  v1[15] = v0;
  v2 = sub_100079590();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  sub_10000712C(&qword_10009DFB0, &qword_10007BA50);
  v1[19] = swift_task_alloc();
  v3 = sub_1000798B0();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_10000C164, 0, 0);
}

uint64_t sub_10000C164()
{
  v1 = sub_10000B1B0();
  if (v2 >> 60 == 15)
  {
    v3 = v0[24];
    type metadata accessor for Throttle(0);
    sub_100079820();
    v4 = sub_100053794(v3);
    v0[25] = v4;
    v10 = (*(*v4 + 160) + **(*v4 + 160));
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    v5[1] = sub_10000C3A8;

    return v10();
  }

  else
  {
    v7 = v2;
    v8 = v1;

    v9 = v0[1];

    return v9(v8, v7);
  }
}

uint64_t sub_10000C3A8(char a1)
{
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_10000C4D4, 0, 0);
}

uint64_t sub_10000C4D4()
{
  if (*(v0 + 320))
  {
    if (qword_1000A0C40 != -1)
    {
      swift_once();
    }

    v1 = sub_100079BA0();
    *(v0 + 216) = sub_1000070F4(v1, qword_1000A6BE8);
    v2 = sub_100079B80();
    v3 = sub_10007A190();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "fetching configuration from server", v4, 2u);
    }

    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = *(v0 + 152);

    sub_100079880();
    v8 = (*(v6 + 48))(v7, 1, v5);
    if (v8 == 1)
    {
      __break(1u);
    }

    else
    {
      (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 152), *(v0 + 160));
      RequestOptions.globalRequestOptions.unsafeMutableAddressor();
      swift_beginAccess();
      v10 = objc_opt_self();

      v11 = [v10 mainBundle];
      v12 = [v11 bundleIdentifier];

      if (v12)
      {
        v14 = *(v0 + 184);
        v13 = *(v0 + 192);
        v15 = *(v0 + 160);
        v16 = *(v0 + 168);
        sub_100079E20();

        v17 = sub_10005D6C8(1, 1);
        v20 = sub_1000535B0(v17 & 0x101, v18, v19);
        *(v0 + 224) = v20;

        [v20 setTlsPinning:1];
        *(v0 + 232) = [objc_allocWithZone(C2RequestManager) init];
        (*(v16 + 16))(v13, v14, v15);
        sub_100079550();
        v21 = swift_task_alloc();
        *(v0 + 240) = v21;
        *v21 = v0;
        v21[1] = sub_10000C990;
        v8 = *(v0 + 144);
        v9 = v20;

        return C2RequestManager.data(for:options:)(v8, v9);
      }
    }

    __break(1u);
    return C2RequestManager.data(for:options:)(v8, v9);
  }

  if (qword_1000A0C40 != -1)
  {
    swift_once();
  }

  v22 = sub_100079BA0();
  sub_1000070F4(v22, qword_1000A6BE8);
  v23 = sub_100079B80();
  v24 = sub_10007A190();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "configuration fetch throttled", v25, 2u);
  }

  sub_10000E4C8();
  swift_allocError();
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 3;
  swift_willThrow();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10000C990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[31] = a1;
  v6[32] = a2;
  v6[33] = a3;
  v6[34] = v3;

  v7 = v5[29];
  (*(v5[17] + 8))(v5[18], v5[16]);

  if (v3)
  {
    v8 = sub_10000D6DC;
  }

  else
  {
    v8 = sub_10000CB50;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000CB50()
{
  v64 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 264);
    v4 = [v2 statusCode];
    v5 = *(v0 + 264);
    if (v4 <= 199)
    {

LABEL_9:
      v21 = *(v0 + 256);
      v22 = *(v0 + 264);
      v23 = *(v0 + 248);
      v24 = *(v0 + 224);
      v61 = *(v0 + 184);
      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v27 = [v2 statusCode];
      sub_10000E4C8();
      v13 = swift_allocError();
      *v28 = v27;
      *(v28 + 8) = 0;
      *(v28 + 16) = 2;
      swift_willThrow();

      sub_1000071DC(v23, v21);
      (*(v25 + 8))(v61, v26);
      goto LABEL_12;
    }

    v6 = [v2 statusCode];

    if (v6 >= 300)
    {
      goto LABEL_9;
    }
  }

  v7 = objc_opt_self();
  isa = sub_100079910().super.isa;
  *(v0 + 104) = 0;
  v9 = [v7 propertyListWithData:isa options:0 format:0 error:v0 + 104];

  v10 = *(v0 + 104);
  if (!v9)
  {
    v29 = *(v0 + 256);
    v30 = *(v0 + 264);
    v31 = *(v0 + 248);
    v32 = *(v0 + 224);
    v62 = *(v0 + 184);
    v34 = *(v0 + 160);
    v33 = *(v0 + 168);
    v35 = v10;
    v13 = sub_1000797A0();

    swift_willThrow();
    sub_1000071DC(v31, v29);

    (*(v33 + 8))(v62, v34);
    goto LABEL_12;
  }

  v11 = v10;
  sub_10007A2D0();
  swift_unknownObjectRelease();
  sub_10000712C(&qword_10009E290, qword_10007BD90);
  if (!swift_dynamicCast())
  {
    v45 = *(v0 + 256);
    v46 = *(v0 + 264);
    v47 = *(v0 + 248);
    v48 = *(v0 + 224);
    v49 = *(v0 + 184);
    v50 = *(v0 + 160);
    v51 = *(v0 + 168);
    sub_10000E4C8();
    v13 = swift_allocError();
    *v52 = 0xD000000000000028;
    *(v52 + 8) = 0x8000000100082490;
    *(v52 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v47, v45);

    (*(v51 + 8))(v49, v50);
    goto LABEL_12;
  }

  v12 = *(v0 + 272);

  type metadata accessor for StorebagSigningConfiguration(0);
  sub_100079810();
  sub_100079940();
  if (v12)
  {
    v13 = v12;
    v14 = *(v0 + 264);
    v15 = *(v0 + 224);
    v17 = *(v0 + 176);
    v16 = *(v0 + 184);
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);
    sub_1000071DC(*(v0 + 248), *(v0 + 256));

    v20 = *(v19 + 8);
    v20(v17, v18);
    v20(v16, v18);
LABEL_12:
    *(v0 + 304) = v13;
    swift_errorRetain();
    v36 = sub_100079B80();
    v37 = sub_10007A190();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v63 = v39;
      *v38 = 136315138;
      swift_getErrorValue();
      v40 = sub_10007A6D0();
      v42 = sub_100006B00(v40, v41, &v63);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "failed to fetch configuration from server with error (%s)", v38, 0xCu);
      sub_1000070A8(v39);
    }

    v59 = (*(**(v0 + 200) + 168) + **(**(v0 + 200) + 168));
    v43 = swift_task_alloc();
    *(v0 + 312) = v43;
    *v43 = v0;
    v43[1] = sub_10000D4C8;

    return v59();
  }

  v53 = *(v0 + 200);
  v55 = *(v0 + 168);
  v54 = *(v0 + 176);
  v56 = *(v0 + 160);
  v57 = *(v55 + 8);
  *(v0 + 280) = v57;
  *(v0 + 288) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v57(v54, v56);
  v60 = (*(*v53 + 152) + **(*v53 + 152));
  v58 = swift_task_alloc();
  *(v0 + 296) = v58;
  *v58 = v0;
  v58[1] = sub_10000D210;

  return v60();
}

uint64_t sub_10000D210()
{

  return _swift_task_switch(sub_10000D338, 0, 0);
}

uint64_t sub_10000D338(uint64_t a1)
{
  v2 = sub_100079B80();
  v3 = sub_10007A190();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "successfully fetched configuration from server", v4, 2u);

    v5 = v1[33];
    v6 = (v1 + 28);
  }

  else
  {
    v6 = (v1 + 33);
    v5 = v2;
    v2 = v1[28];
  }

  v7 = *v6;
  v8 = v1[35];
  v9 = v1[23];
  v10 = v1[20];

  v8(v9, v10);
  v11 = v1[31];
  v12 = v1[32];

  v13 = v1[1];

  return v13(v11, v12);
}

uint64_t sub_10000D4C8()
{

  return _swift_task_switch(sub_10000D5F0, 0, 0);
}

uint64_t sub_10000D5F0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10000D6DC()
{
  v15 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);

  (*(v3 + 8))(v1, v2);
  *(v0 + 304) = *(v0 + 272);
  swift_errorRetain();
  v4 = sub_100079B80();
  v5 = sub_10007A190();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_10007A6D0();
    v10 = sub_100006B00(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to fetch configuration from server with error (%s)", v6, 0xCu);
    sub_1000070A8(v7);
  }

  v13 = (*(**(v0 + 200) + 168) + **(**(v0 + 200) + 168));
  v11 = swift_task_alloc();
  *(v0 + 312) = v11;
  *v11 = v0;
  v11[1] = sub_10000D4C8;

  return v13();
}

uint64_t sub_10000D950()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_10000DA08;

  return sub_10000BFCC();
}

uint64_t sub_10000DA08(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[37] = a1;
  v4[38] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10000DB80, 0, 0);
  }
}

uint64_t sub_10000DB80()
{
  v1 = objc_opt_self();
  isa = sub_100079910().super.isa;
  v0[29] = 0;
  v3 = [v1 propertyListWithData:isa options:0 format:0 error:v0 + 29];

  v4 = v0[29];
  if (!v3)
  {
    v33 = v4;
    sub_1000797A0();

    swift_willThrow();

    goto LABEL_36;
  }

  v5 = v4;
  sub_10007A2D0();
  swift_unknownObjectRelease();
  sub_10000712C(&qword_10009E290, qword_10007BD90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v35 = v0[37];
    v34 = v0[38];
    v36 = 0x8000000100082490;
    sub_10000E4C8();
    swift_allocError();
    v38 = 0xD000000000000028;
LABEL_38:
    *v37 = v38;
    *(v37 + 8) = v36;
    *(v37 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v35, v34);
    v39 = v0[1];

    return v39();
  }

  v6 = v0[30];
  if (!*(v6 + 16) || (v7 = sub_10000A0FC(0x67616265726F7453, 0xE800000000000000), (v8 & 1) == 0) || (sub_10000978C(*(v6 + 56) + 32 * v7, (v0 + 6)), (swift_dynamicCast() & 1) == 0))
  {

    v35 = v0[37];
    v34 = v0[38];
    v36 = 0x80000001000824C0;
    sub_10000E4C8();
    swift_allocError();
    v38 = 0xD00000000000004ALL;
    goto LABEL_38;
  }

  v9 = v0[31];
  if (!*(v9 + 16) || (v10 = sub_10000A0FC(0x676E696E676953, 0xE700000000000000), (v11 & 1) == 0) || (sub_10000978C(*(v9 + 56) + 32 * v10, (v0 + 10)), (swift_dynamicCast() & 1) == 0))
  {

    v35 = v0[37];
    v34 = v0[38];
    v36 = 0x8000000100082510;
    sub_10000E4C8();
    swift_allocError();
    v38 = 0xD000000000000049;
    goto LABEL_38;
  }

  v12 = v0[32];
  if (!*(v12 + 16) || (v13 = sub_10000A0FC(0x6D6E6F7269766E45, 0xEB00000000746E65), (v14 & 1) == 0) || (sub_10000978C(*(v12 + 56) + 32 * v13, (v0 + 14)), (swift_dynamicCast() & 1) == 0))
  {

    v35 = v0[37];
    v34 = v0[38];
    v36 = 0x8000000100082560;
    sub_10000E4C8();
    swift_allocError();
    v38 = 0xD00000000000004DLL;
    goto LABEL_38;
  }

  v15 = v0[33];
  if (*(v15 + 16))
  {
    v16 = sub_10000A0FC(0x64756F6C4369, 0xE600000000000000);
    if (v17)
    {
      sub_10000978C(*(v15 + 56) + 32 * v16, (v0 + 18));
      if (swift_dynamicCast())
      {
        v45 = sub_10000EA7C(v0[35]);

        sub_10000E260(v45);
      }
    }
  }

  v18 = sub_10003F2A0();
  swift_beginAccess();
  if (*v18 == 1)
  {
    v42 = v15 + 64;
    v19 = -1;
    v20 = -1 << *(v15 + 32);
    if (-v20 < 64)
    {
      v19 = ~(-1 << -v20);
    }

    v21 = v15;
    v22 = v19 & *(v15 + 64);
    v23 = (63 - v20) >> 6;
    v46 = v21;

    v24 = 0;
    while (v22)
    {
LABEL_25:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = (v46[6] + ((v24 << 10) | (16 * v26)));
      v28 = *v27;
      if (*v27 != 0x64756F6C4369 || v27[1] != 0xE600000000000000)
      {
        v43 = v27[1];
        if ((sub_10007A610() & 1) == 0)
        {
          if (v46[2])
          {

            v30 = sub_10000A0FC(v28, v43);
            if (v31 & 1) != 0 && (sub_10000978C(v46[7] + 32 * v30, (v0 + 22)), (swift_dynamicCast()))
            {
              v32 = v0[34];

              v44 = sub_10000EA7C(v32);

              sub_10000E260(v44);
            }

            else
            {
            }
          }
        }
      }
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
      }

      if (v25 >= v23)
      {
        break;
      }

      v22 = *(v42 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        goto LABEL_25;
      }
    }

    sub_1000071DC(v0[37], v0[38]);
  }

  else
  {
    sub_1000071DC(v0[37], v0[38]);
  }

  v41 = v0[1];

  return v41(_swiftEmptyArrayStorage);
}

uint64_t sub_10000E260(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_10007A4A0();
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

  v13 = sub_10007A4A0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10000E6DC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10000E77C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

Swift::Int sub_10000E3F4(uint64_t a1, uint64_t a2)
{
  sub_10007A730();
  swift_getWitnessTable();
  sub_100079B60();
  return sub_10007A760();
}

uint64_t sub_10000E45C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_100079B50();
}

unint64_t sub_10000E4C8()
{
  result = qword_10009E288;
  if (!qword_10009E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E288);
  }

  return result;
}

unint64_t sub_10000E51C(uint64_t a1)
{
  sub_10007A730();
  type metadata accessor for CFString(0);
  sub_10000F214(&qword_10009E348, type metadata accessor for CFString, &unk_10007C038);
  sub_100079B60();
  v2 = sub_10007A760();

  return sub_10000E5D0(a1, v2);
}

unint64_t sub_10000E5D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10000F214(&qword_10009E348, type metadata accessor for CFString, &unk_10007C038);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100079B50();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10000E6DC(uint64_t a1, char a2)
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

  sub_10007A4A0();
LABEL_9:
  result = sub_10007A3E0();
  *v2 = result;
  return result;
}

uint64_t sub_10000E77C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10007A4A0();
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
      result = sub_10007A4A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000F19C();
          for (i = 0; i != v6; ++i)
          {
            sub_10000712C(&qword_10009E318, &qword_10007BEC8);
            v9 = sub_10000E8FC(v13, i, a3);
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
        type metadata accessor for SecKey(0);
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

void (*sub_10000E8FC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10007A3D0();
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
    return sub_10000E97C;
  }

  __break(1u);
  return result;
}

unint64_t sub_10000E984(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009E340, &unk_10007BEE0);
    v3 = sub_10007A4D0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_10000E51C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void *sub_10000EA7C(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = v2;
    if (*(a1 + 16))
    {
      v5 = &off_100095E28 + 2 * v3;
      v6 = v5[4];
      v7 = v5[5];

      v8 = sub_10000A0FC(v6, v7);
      if ((v9 & 1) == 0)
      {
        goto LABEL_2;
      }

      sub_10000978C(*(a1 + 56) + 32 * v8, v32);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_2;
      }

      v10 = sub_1000798E0();
      v12 = v11;
      if (v11 >> 60 == 15)
      {
        if (qword_1000A0C40 != -1)
        {
          swift_once();
        }

        v13 = sub_100079BA0();
        sub_1000070F4(v13, qword_1000A6BE8);
        v14 = sub_100079B80();
        v15 = sub_10007A170();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          v17 = v15;
          v18 = v14;
          v19 = "failed to parse configuration, failed to read public key data";
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      sub_10000712C(&qword_10009E328, &qword_10007BED0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10007B7D0;
      *(inited + 32) = kSecAttrKeyType;
      *(inited + 40) = kSecAttrKeyTypeRSA;
      *(inited + 48) = kSecAttrKeyClass;
      *(inited + 56) = kSecAttrKeyClassPublic;
      v21 = kSecAttrKeyType;
      v22 = kSecAttrKeyTypeRSA;
      v23 = kSecAttrKeyClass;
      v24 = kSecAttrKeyClassPublic;
      sub_10000E984(inited);
      swift_setDeallocating();
      sub_10000712C(&qword_10009E330, &qword_10007BED8);
      swift_arrayDestroy();
      isa = sub_100079910().super.isa;
      type metadata accessor for CFString(0);
      sub_10000F214(&qword_10009E338, type metadata accessor for CFString, &unk_10007C064);
      v26 = sub_100079D30().super.isa;

      v27 = SecKeyCreateWithData(isa, v26, 0);

      if (!v27)
      {
        if (qword_1000A0C40 != -1)
        {
          swift_once();
        }

        v29 = sub_100079BA0();
        sub_1000070F4(v29, qword_1000A6BE8);
        v14 = sub_100079B80();
        v30 = sub_10007A170();
        if (os_log_type_enabled(v14, v30))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          v17 = v30;
          v18 = v14;
          v19 = "failed to parse configuration, failed to decode public key";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v18, v17, v19, v16, 2u);
        }

        sub_1000071C8(v10, v12);
LABEL_23:

LABEL_2:

        goto LABEL_3;
      }

      sub_1000071C8(v10, v12);

      v28 = v27;

      sub_100079FD0();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10007A000();
      }

      sub_10007A020();
    }

LABEL_3:
    v2 = 1;
    v3 = 1;
  }

  while ((v4 & 1) == 0);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000EF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000798B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000EFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000798B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000F038(uint64_t a1)
{
  result = sub_1000798B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000F0A4(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10000F0C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000F0D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000F11C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000F160(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10000F19C()
{
  result = qword_10009E320;
  if (!qword_10009E320)
  {
    sub_1000072D8(&qword_10009E318, &qword_10007BEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E320);
  }

  return result;
}

uint64_t sub_10000F214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10000F25C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000F2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009E008, &qword_10007E1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F318(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009E008, &qword_10007E1F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F428()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6C00);
  sub_1000070F4(v0, qword_1000A6C00);
  return sub_100079B90();
}

uint64_t sub_10000F4A8(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  v15 = (v14 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_clientID);
  *v15 = a5;
  v15[1] = a6;
  *(v14 + 112) = a3;
  *(v14 + 120) = a1;
  v36 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v16 = v36[7];
  v17 = OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_url;
  v18 = sub_1000798B0();
  (*(*(v18 - 8) + 16))(v14 + v17, &a4[v16], v18);
  *(v14 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_options) = a7;
  v19 = a7;
  v20 = a2[3];
  v21 = a2[4];
  sub_10000751C(a2, v20);
  v22 = *(v21 + 16);

  v34 = v19;
  v23 = v22(v20, v21);
  v25 = v24;
  v27 = a2[3];
  v26 = a2[4];
  sub_10000751C(a2, v27);
  (*(v26 + 8))(v37, v27, v26);
  sub_10003762C(v23, v25, v37, a4[v36[9]], v38);

  v28 = v14 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders;
  v29 = v38[3];
  *(v28 + 32) = v38[2];
  *(v28 + 48) = v29;
  *(v28 + 64) = v38[4];
  *(v28 + 80) = v39;
  v30 = v38[1];
  *v28 = v38[0];
  *(v28 + 16) = v30;
  *(v14 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_filters) = *&a4[v36[8]];
  v31 = *(a4 + 1);
  v32 = (v14 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_name);
  *v32 = *a4;
  v32[1] = v31;
  LOBYTE(a6) = a4[v36[10]];

  sub_100012CF8(a4, type metadata accessor for SessionConfiguration.BackendHTTP);
  *(v14 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_skipLogging) = a6;
  sub_1000070A8(a2);
  return v14;
}

Swift::Int sub_10000F720()
{
  v1 = *v0;
  sub_10007A730();
  sub_10007A740(v1);
  return sub_10007A760();
}

Swift::Int sub_10000F794(uint64_t a1)
{
  v2 = *v1;
  sub_10007A730();
  sub_10007A740(v2);
  return sub_10007A760();
}

uint64_t sub_10000F7D8()
{
  v1 = 0x6449746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x73746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D695474736F70;
  }
}

uint64_t sub_10000F830@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000135D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000F864(uint64_t a1)
{
  v2 = sub_100012F9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F8A0(uint64_t a1)
{
  v2 = sub_100012F9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000F8DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v13 = a3;
  v8 = sub_10000712C(&qword_10009E480, &qword_10007C2B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000751C(a1, a1[3]);
  sub_100012F9C();
  sub_10007A7C0();
  v17 = 0;
  sub_10007A5B0();
  if (!v5)
  {
    v16 = 1;
    sub_10007A5A0();
    v15 = a4;
    v14 = 2;
    sub_10000712C(&qword_10009E488, &qword_10007C2C0);
    sub_100012FF0();
    sub_10007A5C0();
  }

  return (*(v9 + 8))(v11, v8);
}

void sub_10000FB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  v5 = *(v3 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_filters);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_10001378C(v8, v11);
      v9 = v12;
      v10 = v13;
      sub_10000751C(v11, v12);
      (*(v10 + 24))(v14, v9, v10);
      if (v4)
      {
        sub_1000070A8(v11);

        return;
      }

      ++v7;
      sub_1000070A8(v11);
      v8 += 40;
      if (v6 == v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10000FC3C(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = sub_100079A70();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v4 = type metadata accessor for ServiceEventValue(0);
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  sub_10000712C(&qword_10009E368, &qword_10007D3C0);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v5 = sub_1000798B0();
  v2[44] = v5;
  v2[45] = *(v5 - 8);
  v2[46] = swift_task_alloc();
  v6 = sub_100079590();
  v2[47] = v6;
  v2[48] = *(v6 - 8);
  v2[49] = swift_task_alloc();
  v7 = sub_1000795E0();
  v2[50] = v7;
  v2[51] = *(v7 - 8);
  v2[52] = swift_task_alloc();
  v8 = sub_100079A00();
  v2[53] = v8;
  v2[54] = *(v8 - 8);
  v2[55] = swift_task_alloc();

  return _swift_task_switch(sub_10000FF18, v1, 0);
}

uint64_t sub_10000FF18()
{
  v138 = v0;
  v1 = v0;
  v2 = v0[33];
  v3 = *(v2 + 16);
  v135 = v1;
  if (v3)
  {
    v136 = _swiftEmptyArrayStorage;
    sub_10001276C(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = (v2 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;

      sub_10000FB14(v6, v7, v8);
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v136 = v4;
      v16 = v4[2];
      v15 = v4[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_10001276C((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
        v4 = v136;
      }

      v4[2] = v17;
      v18 = &v4[3 * v16];
      v18[4] = v10;
      v18[5] = v12;
      v18[6] = v14;
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    v17 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage;
    if (!v17)
    {
LABEL_16:
      v1[56] = v19;

      if (v19[2])
      {
        if (qword_1000A1060 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_99;
      }

      v35 = v1[1];

      return v35();
    }
  }

  v20 = 0;
  v1 = v4 + 6;
  v19 = _swiftEmptyArrayStorage;
  v132 = v17;
  while (v20 < v4[2])
  {
    v21 = *(v1 - 2);
    v22 = *(v1 - 1);
    v23 = *v1;

    v136 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10001276C(0, v19[2] + 1, 1);
      v17 = v132;
      v19 = v136;
    }

    v25 = v19[2];
    v24 = v19[3];
    if (v25 >= v24 >> 1)
    {
      sub_10001276C((v24 > 1), v25 + 1, 1);
      v17 = v132;
      v19 = v136;
    }

    ++v20;
    v19[2] = v25 + 1;
    v26 = &v19[3 * v25];
    v26[4] = v21;
    v26[5] = v22;
    v26[6] = v23;
    v1 += 3;
    if (v17 == v20)
    {
      v1 = v135;
      goto LABEL_16;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_99:
    swift_once();
LABEL_18:
    v27 = sub_100079BA0();
    v1[57] = sub_1000070F4(v27, qword_1000A6C00);

    v28 = sub_100079B80();
    v29 = sub_10007A190();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v136 = v31;
      *v30 = 134349314;
      *(v30 + 4) = v19[2];

      *(v30 + 12) = 2082;
      sub_100013074(&qword_10009E378, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v32 = sub_10007A5E0();
      v34 = sub_100006B00(v32, v33, &v136);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "submitting %{public}ld events to %{public}s", v30, 0x16u);
      sub_1000070A8(v31);
    }

    else
    {
    }

    v37 = v1[54];
    v36 = v1[55];
    v38 = v1[53];
    v39 = v1[34];
    sub_1000799C0();
    getTimeIntervalSince1970(Date:)(v36);
    v41 = v40;
    (*(v37 + 8))(v36, v38);
    v42 = *(v39 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_clientID + 8);
    v133 = *(v39 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_clientID);
    v1[58] = v42;
    v43 = v19[2];
    if (v43)
    {
      v136 = _swiftEmptyArrayStorage;

      sub_10001274C(0, v43, 0);
      v44 = v136;
      v45 = v136[2];
      v46 = v19 + 6;
      do
      {
        v47 = *v46;
        v136 = v44;
        v48 = v44[3];

        if (v45 >= v48 >> 1)
        {
          sub_10001274C((v48 > 1), v45 + 1, 1);
          v44 = v136;
        }

        v44[2] = v45 + 1;
        v44[v45 + 4] = v47;
        v46 += 3;
        ++v45;
        --v43;
      }

      while (v43);
      v1 = v135;
    }

    else
    {

      v44 = _swiftEmptyArrayStorage;
    }

    v1[59] = v44;
    sub_100079620();
    swift_allocObject();
    v1[60] = sub_100079610();
    sub_10000712C(&qword_10009DE48, &unk_10007C100);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_10007B7C0;
    sub_1000795D0();
    v1[27] = v49;
    sub_100013074(&qword_10009DE50, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
    sub_10000712C(&qword_10009DE58, &qword_10007B810);
    sub_10001278C();
    sub_10007A2E0();
    sub_1000795F0();
    *(v1 + 13) = v41;
    v1[14] = v133;
    v1[15] = v42;
    v1[16] = v44;
    sub_1000127F0();
    v50 = sub_100079600();
    v1[61] = 0;
    v1[62] = v50;
    v1[63] = v51;
    v53 = sub_10003F2A0();
    swift_beginAccess();
    if (*v53 == 1 && *sub_10003F484() == 1)
    {
      v54 = v1[34];
    }

    else
    {
      v54 = v1[34];
      if ((*(v54 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_skipLogging) & 1) == 0)
      {
        v57 = *(v54 + 120);
        v1[64] = v57;
        v58 = v54 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_name;
        v1[65] = *(v54 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_name);
        v1[66] = *(v58 + 8);

        return _swift_task_switch(sub_1000110E0, v57, 0);
      }
    }

    v55 = v1[62];
    v56 = v1[63];
    (*(v1[45] + 16))(v1[46], v54 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_url, v1[44]);
    sub_100079550();
    sub_100007230(v55, v56);
    sub_100012A98(v55, v56, v55, v56, &v136);
    v60 = v136;
    v59 = v137;
    if (v137 >> 60 == 15)
    {
      sub_100007230(v1[62], v1[63]);
    }

    else
    {
      sub_100007230(v136, v137);
    }

    v1[69] = v59;
    v1[68] = v60;
    sub_100079570();
    sub_100079540();
    if (v59 >> 60 != 15)
    {
      v144._object = 0x80000001000826D0;
      v140.value._countAndFlagsBits = 1885960807;
      v140.value._object = 0xE400000000000000;
      v144._countAndFlagsBits = 0xD000000000000010;
      sub_100079580(v140, v144);
    }

    v145._countAndFlagsBits = 0x747065636341;
    v141.value._object = 0x8000000100082690;
    v141.value._countAndFlagsBits = 0xD000000000000010;
    v145._object = 0xE600000000000000;
    sub_100079580(v141, v145);
    v146._object = 0xEC00000065707954;
    v142.value._object = 0x8000000100082690;
    v142.value._countAndFlagsBits = 0xD000000000000010;
    v146._countAndFlagsBits = 0x2D746E65746E6F43;
    sub_100079580(v142, v146);
    v61 = sub_100079560();
    if (v62 >> 60 == 15)
    {
      goto LABEL_101;
    }

    v63 = v62 >> 62;
    if ((v62 >> 62) <= 1)
    {
      if (!v63)
      {
        v64 = BYTE6(v62);
        sub_1000071C8(v61, v62);
        v65 = v64;
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (v63 != 2)
    {
      sub_1000071C8(v61, v62);
      v65 = 0;
      goto LABEL_57;
    }

    v67 = *(v61 + 16);
    v66 = *(v61 + 24);
    v61 = sub_1000071C8(v61, v62);
    v65 = v66 - v67;
    if (__OFSUB__(v66, v67))
    {
      __break(1u);
LABEL_54:
      v68 = HIDWORD(v61);
      v69 = v61;
      v61 = sub_1000071C8(v61, v62);
      LODWORD(v65) = v68 - v69;
      if (__OFSUB__(v68, v69))
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        return C2RequestManager.data(for:options:)(v61, v62);
      }

      v65 = v65;
    }

LABEL_57:
    v134 = v1[43];
    v127 = v1[40];
    v128 = v1[39];
    v129 = v1[42];
    v70 = v1[34];
    v1[28] = v65;
    v143.value._countAndFlagsBits = sub_10007A5E0();
    v147._object = 0xEE006874676E654CLL;
    v147._countAndFlagsBits = 0x2D746E65746E6F43;
    sub_100079580(v143, v147);

    v71 = v70 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders;
    v72 = *(v70 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders + 16);
    *(v1 + 1) = *(v70 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders);
    *(v1 + 2) = v72;
    v74 = *(v71 + 48);
    v73 = *(v71 + 64);
    v75 = *(v71 + 32);
    v1[12] = *(v71 + 80);
    *(v1 + 4) = v74;
    *(v1 + 5) = v73;
    *(v1 + 3) = v75;
    v76 = sub_1000376DC();
    v77 = 0;
    v19 = (v76 + 64);
    v78 = *(v76 + 64);
    v130 = v76;
    v131 = (v76 + 64);
    v79 = -1;
    v80 = -1 << *(v76 + 32);
    if (-v80 < 64)
    {
      v79 = ~(-1 << -v80);
    }

    v81 = v79 & v78;
    v82 = (63 - v80) >> 6;
    v83 = &unk_10009EB70;
    if ((v79 & v78) != 0)
    {
      break;
    }

LABEL_64:
    if (v82 <= v77 + 1)
    {
      v88 = v77 + 1;
    }

    else
    {
      v88 = v82;
    }

    v89 = v88 - 1;
    v1 = v135;
    while (1)
    {
      v87 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v87 >= v82)
      {
        v112 = v135[42];
        v97 = v83;
        v113 = sub_10000712C(v83, qword_10007C110);
        (*(*(v113 - 8) + 56))(v112, 1, 1, v113);
        v81 = 0;
        v77 = v89;
        goto LABEL_73;
      }

      v81 = v19[v87];
      ++v77;
      if (v81)
      {
        v77 = v87;
        goto LABEL_72;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v87 = v77;
    v1 = v135;
LABEL_72:
    v91 = v1[41];
    v90 = v1[42];
    v92 = __clz(__rbit64(v81));
    v81 &= v81 - 1;
    v93 = v92 | (v87 << 6);
    v94 = (*(v130 + 48) + 16 * v93);
    v95 = *v94;
    v96 = v94[1];
    sub_10000A908(*(v130 + 56) + *(v128 + 72) * v93, v91);
    v97 = v83;
    v98 = sub_10000712C(v83, qword_10007C110);
    v99 = *(v98 + 48);
    *v90 = v95;
    *(v129 + 8) = v96;
    sub_100012C24(v91, v90 + v99);
    v100 = *(*(v98 - 8) + 56);
    v101 = v98;
    v1 = v135;
    v100(v90, 0, 1, v101);

LABEL_73:
    v102 = v1[43];
    sub_100012C88(v1[42], v102);
    v103 = sub_10000712C(v97, qword_10007C110);
    if ((*(*(v103 - 8) + 48))(v102, 1, v103) == 1)
    {
      break;
    }

    v104 = v97;
    v105 = v1[43];
    v106 = v1[40];
    v107 = *v105;
    v108 = v1;
    v109 = *(v134 + 8);
    sub_100012C24(v105 + *(v103 + 48), v106);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v111 = v108[40];
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v84 = v107;
        v135[30] = *v111;
        goto LABEL_79;
      }

      v83 = v104;
      if (EnumCaseMultiPayload == 1)
      {
        v84 = v107;
        v135[31] = *v111;
LABEL_79:
        v85.value._countAndFlagsBits = sub_10007A5E0();
        object = v85.value._object;
        goto LABEL_62;
      }

      sub_100012CF8(v111, type metadata accessor for ServiceEventValue);
      v19 = v131;
      if (!v81)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v84 = v107;
      v85.value._countAndFlagsBits = *v111;
      object = *(v127 + 8);
LABEL_62:
      v19 = v131;
      v85.value._object = object;
      v148._countAndFlagsBits = v84;
      v148._object = v109;
      sub_100079580(v85, v148);

      v83 = v104;
      if (!v81)
      {
        goto LABEL_64;
      }
    }
  }

  v115 = v1[36];
  v114 = v1[37];
  v116 = v1[34];
  v117 = v1[35];

  [*(v116 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_options) copy];
  sub_10007A2D0();
  swift_unknownObjectRelease();
  sub_100007670(0, &qword_10009E370, C2RequestOptions_ptr);
  swift_dynamicCast();
  v118 = v1[29];
  v1[70] = v118;
  sub_100079A60();
  sub_100079A10();
  (*(v115 + 8))(v114, v117);
  v119 = sub_100079DF0();

  [v118 setIdentifier:v119];

  sub_100007670(0, &qword_10009EC80, NSNumber_ptr);
  isa = sub_10007A290(1).super.super.isa;
  [v118 setUseNWLoaderOverride:isa];

  v121 = sub_100079850(1);
  if (v122)
  {
    if (v121 == 0xD00000000000001BLL && v122 == 0x80000001000826B0)
    {

      goto LABEL_88;
    }

    v123 = sub_10007A610();

    if (v123)
    {
LABEL_88:
      v124 = sub_10007A290(1).super.super.isa;
      [v118 setPrivacyProxyFailClosedOverride:v124];
    }
  }

  if (v1[3] == 0x51424A3241394B34 && v1[4] == 0xEA00000000005832 || (sub_10007A610() & 1) != 0)
  {
    v125 = sub_10007A290(0).super.super.isa;
    [v118 setUseNWLoaderOverride:v125];
  }

  [v118 set_optIntoDisableAPWakeOnIdleConnections:1];
  v61 = [objc_opt_self() sharedManager];
  v1[71] = v61;
  if (!v61)
  {
    goto LABEL_102;
  }

  v126 = swift_task_alloc();
  v1[72] = v126;
  *v126 = v1;
  v126[1] = sub_100011B4C;
  v61 = v1[49];
  v62 = v118;

  return C2RequestManager.data(for:options:)(v61, v62);
}

uint64_t sub_1000110E0()
{
  v1 = *(v0 + 488);
  sub_10000560C(*(v0 + 520), *(v0 + 528), *(v0 + 496), *(v0 + 504));
  *(v0 + 536) = v1;
  v2 = *(v0 + 272);
  if (v1)
  {
    v3 = sub_100011DF0;
  }

  else
  {
    v3 = sub_100011174;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100011174()
{
  v83 = v0;
  v1 = v0[67];
  v2 = v0[62];
  v3 = v0[63];
  (*(v0[45] + 16))(v0[46], v0[34] + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_url, v0[44]);
  sub_100079550();
  sub_100007230(v2, v3);
  sub_100012A98(v2, v3, v2, v3, &v81);
  v80 = v0;
  if (v1)
  {
    swift_errorRetain();
    v4 = sub_100079B80();
    v5 = sub_10007A170();

    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[62];
    v7 = v0[63];
    if (v6)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v81 = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      v11 = sub_10007A6D0();
      v13 = sub_100006B00(v11, v12, &v81);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "failed to compress payload: %{public}s", v9, 0xCu);
      sub_1000070A8(v10);
    }

    else
    {
    }

    sub_100007230(v8, v7);
    v15 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    v15 = v81;
    v14 = v82;
    if (v82 >> 60 == 15)
    {
      sub_100007230(v0[62], v0[63]);
    }

    else
    {
      sub_100007230(v81, v82);
    }
  }

  v0[69] = v14;
  v0[68] = v15;
  sub_100079570();
  sub_100079540();
  if (v14 >> 60 != 15)
  {
    v89._object = 0x80000001000826D0;
    v85.value._countAndFlagsBits = 1885960807;
    v85.value._object = 0xE400000000000000;
    v89._countAndFlagsBits = 0xD000000000000010;
    sub_100079580(v85, v89);
  }

  v90._countAndFlagsBits = 0x747065636341;
  v86.value._object = 0x8000000100082690;
  v86.value._countAndFlagsBits = 0xD000000000000010;
  v90._object = 0xE600000000000000;
  sub_100079580(v86, v90);
  v91._object = 0xEC00000065707954;
  v87.value._object = 0x8000000100082690;
  v87.value._countAndFlagsBits = 0xD000000000000010;
  v91._countAndFlagsBits = 0x2D746E65746E6F43;
  sub_100079580(v87, v91);
  v16 = sub_100079560();
  if (v17 >> 60 == 15)
  {
    goto LABEL_64;
  }

  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      sub_1000071C8(v16, v17);
      v20 = 0;
      goto LABEL_22;
    }

    v22 = *(v16 + 16);
    v21 = *(v16 + 24);
    v16 = sub_1000071C8(v16, v17);
    v20 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v18)
  {
LABEL_19:
    v23 = HIDWORD(v16);
    v24 = v16;
    v16 = sub_1000071C8(v16, v17);
    LODWORD(v20) = v23 - v24;
    if (!__OFSUB__(v23, v24))
    {
      v20 = v20;
      goto LABEL_22;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v19 = BYTE6(v17);
  sub_1000071C8(v16, v17);
  v20 = v19;
LABEL_22:
  v79 = v0[43];
  v74 = v0[40];
  v75 = v0[39];
  v76 = v0[42];
  v25 = v0[34];
  v0[28] = v20;
  v88.value._countAndFlagsBits = sub_10007A5E0();
  v92._object = 0xEE006874676E654CLL;
  v92._countAndFlagsBits = 0x2D746E65746E6F43;
  sub_100079580(v88, v92);

  v26 = v25 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders;
  v27 = *(v25 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders + 16);
  *(v0 + 1) = *(v25 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders);
  *(v0 + 2) = v27;
  v29 = *(v26 + 48);
  v28 = *(v26 + 64);
  v30 = *(v26 + 32);
  v0[12] = *(v26 + 80);
  *(v0 + 4) = v29;
  *(v0 + 5) = v28;
  *(v0 + 3) = v30;
  v16 = sub_1000376DC();
  v31 = 0;
  v32 = v16 + 64;
  v77 = v16;
  v78 = v16 + 64;
  v33 = -1;
  v34 = -1 << *(v16 + 32);
  if (-v34 < 64)
  {
    v33 = ~(-1 << -v34);
  }

  v35 = v33 & *(v16 + 64);
  v36 = (63 - v34) >> 6;
  while (1)
  {
    if (!v35)
    {
      if (v36 <= v31 + 1)
      {
        v40 = v31 + 1;
      }

      else
      {
        v40 = v36;
      }

      v41 = v40 - 1;
      while (1)
      {
        v39 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v39 >= v36)
        {
          v58 = v0[42];
          v59 = sub_10000712C(&unk_10009EB70, qword_10007C110);
          (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
          v35 = 0;
          v31 = v41;
          goto LABEL_39;
        }

        v35 = *(v32 + 8 * v39);
        ++v31;
        if (v35)
        {
          v31 = v39;
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    v39 = v31;
LABEL_38:
    v43 = v0[41];
    v42 = v0[42];
    v44 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v45 = v44 | (v39 << 6);
    v46 = (*(v77 + 48) + 16 * v45);
    v48 = *v46;
    v47 = v46[1];
    sub_10000A908(*(v77 + 56) + *(v75 + 72) * v45, v43);
    v49 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    v50 = *(v49 + 48);
    *v42 = v48;
    v0 = v80;
    *(v76 + 8) = v47;
    sub_100012C24(v43, v42 + v50);
    (*(*(v49 - 8) + 56))(v42, 0, 1, v49);

LABEL_39:
    v51 = v0[43];
    sub_100012C88(v0[42], v51);
    v52 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
    {
      break;
    }

    v53 = v0[43];
    v54 = *v53;
    v55 = *(v79 + 8);
    sub_100012C24(v53 + *(v52 + 48), v0[40]);
    v0 = v80;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v57 = v80[40];
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v37.value._countAndFlagsBits = *v57;
        object = *(v74 + 8);
        goto LABEL_26;
      case 2:
        v80[30] = *v57;
LABEL_45:
        v37.value._countAndFlagsBits = sub_10007A5E0();
        object = v37.value._object;
LABEL_26:
        v37.value._object = object;
        v93._countAndFlagsBits = v54;
        v93._object = v55;
        sub_100079580(v37, v93);

        goto LABEL_27;
      case 1:
        v80[31] = *v57;
        goto LABEL_45;
    }

    v16 = sub_100012CF8(v57, type metadata accessor for ServiceEventValue);
LABEL_27:
    v32 = v78;
  }

  v61 = v0[36];
  v60 = v0[37];
  v62 = v0[34];
  v63 = v0[35];

  [*(v62 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_options) copy];
  sub_10007A2D0();
  swift_unknownObjectRelease();
  sub_100007670(0, &qword_10009E370, C2RequestOptions_ptr);
  swift_dynamicCast();
  v64 = v0[29];
  v0[70] = v64;
  sub_100079A60();
  sub_100079A10();
  (*(v61 + 8))(v60, v63);
  v65 = sub_100079DF0();

  [v64 setIdentifier:v65];

  sub_100007670(0, &qword_10009EC80, NSNumber_ptr);
  isa = sub_10007A290(1).super.super.isa;
  [v64 setUseNWLoaderOverride:isa];

  v67 = sub_100079850(1);
  if (v68)
  {
    if (v67 == 0xD00000000000001BLL && v68 == 0x80000001000826B0)
    {

      goto LABEL_53;
    }

    v69 = sub_10007A610();

    if (v69)
    {
LABEL_53:
      v70 = sub_10007A290(1).super.super.isa;
      [v64 setPrivacyProxyFailClosedOverride:v70];
    }
  }

  if (v0[3] == 0x51424A3241394B34 && v0[4] == 0xEA00000000005832 || (sub_10007A610() & 1) != 0)
  {
    v71 = sub_10007A290(0).super.super.isa;
    [v64 setUseNWLoaderOverride:v71];
  }

  [v64 set_optIntoDisableAPWakeOnIdleConnections:1];
  v16 = [objc_opt_self() sharedManager];
  v0[71] = v16;
  if (v16)
  {

    v72 = swift_task_alloc();
    v0[72] = v72;
    *v72 = v0;
    v72[1] = sub_100011B4C;
    v16 = v0[49];
    v17 = v64;

    return C2RequestManager.data(for:options:)(v16, v17);
  }

LABEL_65:
  __break(1u);
  return C2RequestManager.data(for:options:)(v16, v17);
}

uint64_t sub_100011B4C(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 584) = v3;

  v9 = *(v8 + 568);
  v10 = *(v8 + 272);
  if (v3)
  {

    v11 = sub_100011F00;
  }

  else
  {
    sub_1000071DC(a1, a2);

    v11 = sub_100011CC4;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100011CC4()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 376);

  sub_1000071DC(v4, v3);
  sub_1000071C8(v2, v1);
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100011DF0()
{
  sub_1000071DC(v0[62], v0[63]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100011F00()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 376);

  sub_1000071DC(v4, v3);
  sub_1000071C8(v2, v1);
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100012034()
{
  sub_100079F00(*(v0 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_name));
  v2._countAndFlagsBits = 539828258;
  v2._object = 0xE400000000000000;
  sub_100079F00(v2);
  sub_1000798B0();
  sub_100013074(&qword_10009E378, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v3._countAndFlagsBits = sub_10007A5E0();
  sub_100079F00(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  sub_100079F00(v4);
  return 8744;
}

uint64_t sub_10001211C()
{

  v1 = OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_url;
  v2 = sub_1000798B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10001221C()
{
  sub_10001211C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100012248(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100007838;

  return v6(a1);
}

uint64_t sub_1000123AC@<X0>(Bytef *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2 - a1;
  memset(&strm.total_out, 0, 72);
  if (a1)
  {
    v8 = a2 - a1;
  }

  else
  {
    v8 = 0;
  }

  memset(&strm.avail_in, 0, 32);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (HIDWORD(v8))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  strm.avail_in = v8;
  if (!a1)
  {
    goto LABEL_48;
  }

  strm.next_in = a1;
  v11 = deflateInit2_(&strm, -1, 8, 31, 8, 0, "1.2.12", 112);
  if (v11)
  {
    v12 = v11;
    sub_10001317C();
    swift_allocError();
    *v13 = v12;
    return swift_willThrow();
  }

  v15 = deflateBound(&strm, v7);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  v35 = sub_1000136EC(v15);
  v36 = v16;
  v17 = sub_1000131D0(&v35, &strm);
  if (v17 != 1)
  {
    v5 = v17;
    if (qword_1000A1060 == -1)
    {
LABEL_16:
      v22 = sub_100079BA0();
      sub_1000070F4(v22, qword_1000A6C00);
      v23 = sub_100079B80();
      v24 = sub_10007A180();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 67240192;
        *(v25 + 4) = v5;
        _os_log_impl(&_mh_execute_header, v23, v24, "zlib returned unexpected status %{public}d", v25, 8u);
      }

      *a5 = xmmword_10007C0C0;
      v18 = v35;
      v19 = v36;
      goto LABEL_39;
    }

LABEL_44:
    swift_once();
    goto LABEL_16;
  }

  if ((strm.total_out & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_100079900();
  v18 = v35;
  v19 = v36;
  v20 = v36 >> 62;
  if ((v36 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(v36);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v20 != 2)
  {
    v21 = 0;
    goto LABEL_26;
  }

  v27 = *(v35 + 16);
  v26 = *(v35 + 24);
  v28 = __OFSUB__(v26, v27);
  v21 = v26 - v27;
  if (v28)
  {
    __break(1u);
LABEL_23:
    LODWORD(v21) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      __break(1u);
      goto LABEL_46;
    }

    v21 = v21;
  }

LABEL_26:
  v29 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v29 != 2)
    {
      if (v21 < 0)
      {
        goto LABEL_33;
      }

      goto LABEL_38;
    }

    v31 = *(a3 + 16);
    v30 = *(a3 + 24);
    v28 = __OFSUB__(v30, v31);
    v32 = v30 - v31;
    if (!v28)
    {
      if (v21 < v32)
      {
        goto LABEL_33;
      }

LABEL_38:
      *a5 = xmmword_10007C0C0;
      goto LABEL_39;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  if (v29)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (v21 >= HIDWORD(a3) - a3)
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }

    goto LABEL_47;
  }

  if (v21 >= BYTE6(a4))
  {
    goto LABEL_38;
  }

LABEL_33:
  *a5 = v18;
  *(a5 + 8) = v19;
  v33 = v18;
  v34 = v19;
  sub_100007230(v18, v19);
  v18 = v33;
  v19 = v34;
LABEL_39:
  sub_1000071DC(v18, v19);
  return deflateEnd(&strm);
}

uint64_t sub_1000126D0@<X0>(z_streamp strm@<X2>, uint64_t result@<X0>, uint64_t a3@<X1>, _DWORD *a4@<X8>)
{
  if (result)
  {
    v5 = a3 - result;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  total_out = strm->total_out;
  v7 = v5 >= total_out;
  v8 = v5 - total_out;
  if (!v7)
  {
    goto LABEL_12;
  }

  if (HIDWORD(v8))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  strm->avail_out = v8;
  if (result)
  {
    if ((total_out & 0x8000000000000000) == 0)
    {
      strm->next_out = (total_out + result);
      result = deflate(strm, 4);
      *a4 = result;
      return result;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_10001274C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100012844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001276C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100012978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_10001278C()
{
  result = qword_10009DE60;
  if (!qword_10009DE60)
  {
    sub_1000072D8(&qword_10009DE58, &qword_10007B810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009DE60);
  }

  return result;
}

unint64_t sub_1000127F0()
{
  result = qword_1000A1068[0];
  if (!qword_1000A1068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A1068);
  }

  return result;
}

void *sub_100012844(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10000712C(&qword_10009E4A0, &qword_10007C2C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000712C(&unk_10009EB50, &unk_10007D3B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100012978(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E4A8, &qword_10007C2D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100012A98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v13, 0, 14);
      v8 = v13;
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      v8 = v13 + BYTE6(a2);
LABEL_9:
      sub_1000123AC(v13, v8, a3, a4, a5);
      return sub_1000071DC(a3, a4);
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_100007230(a3, a4);
  sub_1000130BC(v9, v10, a3, a4, a5);
  return sub_1000071DC(a3, a4);
}

uint64_t sub_100012C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009E368, &qword_10007D3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012CF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BackendHTTP(uint64_t a1)
{
  result = qword_1000A11F0;
  if (!qword_1000A11F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012DAC(uint64_t a1)
{
  result = sub_1000798B0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s9ZLibErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9ZLibErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_100012EF8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100012F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100012F4C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_100012F9C()
{
  result = qword_1000A1280[0];
  if (!qword_1000A1280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A1280);
  }

  return result;
}

unint64_t sub_100012FF0()
{
  result = qword_10009E490;
  if (!qword_10009E490)
  {
    sub_1000072D8(&qword_10009E488, &qword_10007C2C0);
    sub_1000075B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E490);
  }

  return result;
}

uint64_t sub_100013074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Bytef *sub_1000130BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = sub_100079670();
  v11 = result;
  if (result)
  {
    result = sub_1000796A0();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = sub_100079690();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = &v11[v15];
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_1000123AC(v11, v17, a3, a4, a5);
  return sub_1000071DC(a3, a4);
}

unint64_t sub_10001317C()
{
  result = qword_10009E498;
  if (!qword_10009E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E498);
  }

  return result;
}

uint64_t sub_1000131D0(uint64_t *a1, z_streamp strm)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000071DC(v6, v5);
      *&v17 = v6;
      WORD4(v17) = v5;
      BYTE10(v17) = BYTE2(v5);
      BYTE11(v17) = BYTE3(v5);
      BYTE12(v17) = BYTE4(v5);
      BYTE13(v17) = BYTE5(v5);
      BYTE14(v17) = BYTE6(v5);
      result = sub_1000126D0(strm, &v17, &v17 + BYTE6(v5), &v16);
      if (!v2)
      {
        result = v16;
      }

      v9 = DWORD2(v17) | ((WORD6(v17) | (BYTE14(v17) << 16)) << 32);
      *a1 = v17;
      a1[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000071DC(v6, v5);
    *a1 = xmmword_10007C0D0;
    sub_1000071DC(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_100079670() && __OFSUB__(v6, sub_1000796A0()))
      {
LABEL_22:
        __break(1u);
      }

      sub_1000796B0();
      swift_allocObject();
      v13 = sub_100079650();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_100013534(v6, v6 >> 32, v11, strm);

      *a1 = v6;
      a1[1] = v11 | 0x4000000000000000;
      if (!v2)
      {
        return v14;
      }

      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v7 == 2)
  {

    sub_1000071DC(v6, v5);
    *&v17 = v6;
    *(&v17 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10007C0D0;
    sub_1000071DC(0, 0xC000000000000000);
    sub_1000798C0();
    v10 = *(&v17 + 1);
    result = sub_100013534(*(v17 + 16), *(v17 + 24), *(&v17 + 1), strm);
    *a1 = v17;
    a1[1] = v10 | 0x8000000000000000;
  }

  else
  {
    *(&v17 + 7) = 0;
    *&v17 = 0;
    result = sub_1000126D0(strm, &v17, &v17, &v16);
    if (!v2)
    {
      return v16;
    }
  }

  return result;
}

uint64_t sub_100013534(uint64_t a1, uint64_t a2, uint64_t a3, z_stream *a4)
{
  result = sub_100079670();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = sub_1000796A0();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = sub_100079690();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = sub_1000126D0(a4, v9 + v10, v9 + v10 + v14, &v15);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1000135D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695474736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_10007A610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (sub_10007A610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_10007A610();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000136EC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1000796B0();
      swift_allocObject();
      sub_100079680();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1000798F0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_10001378C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for BackendHTTP.POSTData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackendHTTP.POSTData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100013960()
{
  result = qword_1000A1390[0];
  if (!qword_1000A1390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A1390);
  }

  return result;
}

unint64_t sub_1000139B8()
{
  result = qword_1000A14A0;
  if (!qword_1000A14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A14A0);
  }

  return result;
}

unint64_t sub_100013A10()
{
  result = qword_1000A14A8[0];
  if (!qword_1000A14A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A14A8);
  }

  return result;
}

uint64_t sub_100013A64()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A1538);
  sub_1000070F4(v0, qword_1000A1538);
  return sub_100079B90();
}

uint64_t sub_100013B1C(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_100013B6C(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100013BFC;
}

void sub_100013BFC(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

double sub_100013C7C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100013CB4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

double sub_100013D4C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100013D84(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
}

double sub_100013E1C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100013E54(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

uint64_t sub_100013EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000030A0;

  return sub_100013FB0(v6, a2, a3);
}

uint64_t sub_100013FB0(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 96) = a3;
  *(v4 + 104) = v3;
  *(v4 + 88) = a2;
  *(v4 + 176) = a1;
  *(v4 + 112) = *v3;
  v5 = sub_1000798B0();
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_1000140A0, 0, 0);
}

uint64_t sub_1000140A0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  swift_defaultActor_initialize();
  swift_weakInit();
  v4[16] = sub_100019BC0(_swiftEmptyArrayStorage);
  v4[17] = &_swiftEmptySetSingleton;
  v4[18] = sub_100019CBC(_swiftEmptyArrayStorage);
  type metadata accessor for StorebagCoordinator(0);
  (*(v2 + 16))(v1, v5, v3);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1000141BC;
  v7 = v0[17];

  return sub_10005C5A4(v7);
}

uint64_t sub_1000141BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_1000147A8;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_1000142E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000142E4()
{
  v1 = *(v0 + 104);
  *(v1 + 112) = *(v0 + 160);
  return _swift_task_switch(sub_100014308, v1, 0);
}

uint64_t sub_100014308()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  swift_weakAssign();
  if (v1)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 96), *(v0 + 120));

    v2 = *(v0 + 8);
    v3 = *(v0 + 104);

    return v2(v3);
  }

  else
  {
    v5 = *(**(v0 + 104) + 264);
    v7 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_1000144C4;

    return v7();
  }
}

uint64_t sub_1000144C4()
{

  sub_100019DE4();
  swift_getObjectType();
  v1 = sub_10007A050();

  return _swift_task_switch(sub_1000145F4, v1, v0);
}

uint64_t sub_1000145F4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = [objc_opt_self() defaultCenter];
  v7 = MCEffectiveSettingsChangedNotification;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  v0[6] = sub_100019E70;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100014E3C;
  v0[5] = &unk_100096138;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v9];
  _Block_release(v9);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v5, v1);

  v11 = v0[1];
  v12 = v0[13];

  return v11(v12);
}

uint64_t sub_1000147A8()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[12];
  swift_weakDestroy();

  type metadata accessor for SessionCoordinator();
  swift_defaultActor_destroy();

  (*(v1 + 8))(v3, v2);
  swift_deallocPartialClassInstance();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100014898(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v5 = sub_100079BA0();
  sub_1000070F4(v5, qword_1000A1538);
  v6 = sub_100079B80();
  v7 = sub_10007A190();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "received notification for MC effective settings change", v8, 2u);
  }

  v9 = sub_10007A0A0();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;

  sub_100014B7C(0, 0, v4, &unk_10007C520, v10);
}

uint64_t sub_100014A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 264) + **(*a4 + 264));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100007838;

  return v7();
}

uint64_t sub_100014B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001A1D4(a3, v25 - v10);
  v12 = sub_10007A0A0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001A244(v11);
  }

  else
  {
    sub_10007A090();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10007A050();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100079EA0() + 32;
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

      sub_10001A244(a3);

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

  sub_10001A244(a3);
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

uint64_t sub_100014E3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100079640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_100079630();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100014F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  return _swift_task_switch(sub_100014F58, v4, 0);
}

uint64_t sub_100014F58()
{
  v1 = *(v0 + 320);
  v2 = *(*(v0 + 344) + 112);
  *(v0 + 352) = v2;
  v8 = *(v0 + 328);
  *(v0 + 216) = v8;
  v3 = sub_100019E90((v0 + 192));
  v4 = *(v8 - 8);
  v5 = *(v4 + 16);
  *(v0 + 360) = v5;
  *(v0 + 368) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v3, v1);
  v9 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v0 + 376) = v6;
  *v6 = v0;
  v6[1] = sub_1000150E0;

  return v9(v0 + 192);
}

uint64_t sub_1000150E0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  *(v2 + 416) = a1;

  sub_1000070A8((v2 + 192));

  return _swift_task_switch(sub_100015200, v3, 0);
}

uint64_t sub_100015200()
{
  if (static Mode.__derived_enum_equals(_:_:)(*(v0 + 416), 3) || static Mode.__derived_enum_equals(_:_:)(*(v0 + 416), 2))
  {
    v1 = *(v0 + 360);
    v2 = *(v0 + 352);
    v4 = *(v0 + 328);
    v3 = *(v0 + 336);
    v5 = *(v0 + 320);
    *(v0 + 296) = v4;
    *(v0 + 304) = v3;
    v6 = sub_100019E90((v0 + 272));
    v1(v6, v5, v4);
    v21 = (*(*v2 + 136) + **(*v2 + 136));
    v7 = swift_task_alloc();
    *(v0 + 384) = v7;
    *v7 = v0;
    v7[1] = sub_100015518;
    v8 = v0 + 152;
    v9 = v0 + 272;
LABEL_4:

    return v21(v8, v9);
  }

  if (static Mode.__derived_enum_equals(_:_:)(*(v0 + 416), 1))
  {
    (*(*(v0 + 336) + 8))(*(v0 + 328));
    sub_100019EF4(v0 + 16);
    if (*(v0 + 49))
    {
      v11 = *(v0 + 360);
      v12 = *(v0 + 352);
      v13 = *(v0 + 320);
      v22 = *(v0 + 328);
      *(v0 + 256) = v22;
      v14 = sub_100019E90((v0 + 232));
      v11(v14, v13, v22);
      v21 = (*(*v12 + 136) + **(*v12 + 136));
      v15 = swift_task_alloc();
      *(v0 + 400) = v15;
      *v15 = v0;
      v15[1] = sub_100015670;
      v8 = v0 + 112;
      v9 = v0 + 232;
      goto LABEL_4;
    }
  }

  sub_10006910C(v0 + 72);
  v16 = *(v0 + 312);
  v17 = *(v0 + 96);
  v18 = *(v0 + 104);
  v19 = *(v0 + 88);
  *v16 = *(v0 + 72);
  *(v16 + 16) = v19;
  *(v16 + 24) = v17;
  *(v16 + 32) = v18;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100015518()
{
  v2 = *v1;
  *(v2 + 392) = v0;

  if (v0)
  {
    v3 = *(v2 + 344);

    return _swift_task_switch(sub_1000157C8, v3, 0);
  }

  else
  {
    sub_1000070A8((v2 + 272));
    v4 = *(v2 + 312);
    v5 = *(v2 + 176);
    v6 = *(v2 + 184);
    v7 = *(v2 + 168);
    *v4 = *(v2 + 152);
    *(v4 + 16) = v7;
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    v8 = *(v2 + 8);

    return v8();
  }
}

uint64_t sub_100015670()
{
  v2 = *v1;
  *(v2 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 344);

    return _swift_task_switch(sub_10001582C, v3, 0);
  }

  else
  {
    sub_1000070A8((v2 + 232));
    v4 = *(v2 + 312);
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);
    v7 = *(v2 + 128);
    *v4 = *(v2 + 112);
    *(v4 + 16) = v7;
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    v8 = *(v2 + 8);

    return v8();
  }
}

uint64_t sub_1000157C8()
{
  sub_1000070A8((v0 + 272));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001582C()
{
  sub_1000070A8((v0 + 232));
  v1 = *(v0 + 8);

  return v1();
}

void sub_100015890(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = (*(*v2 + 168))(v37);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v8;
  v36 = *v8;
  *v8 = 0x8000000000000000;
  v12 = sub_10000A0FC(a1, a2);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11;
  if (v10[3] >= v15)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100018AD4();
    }
  }

  else
  {
    sub_100018834(v15, isUniquelyReferenced_nonNull_native);
    v17 = sub_10000A0FC(a1, a2);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_23:
      sub_10007A6C0();
      __break(1u);
      return;
    }

    v12 = v17;
  }

  *v8 = v36;

  v19 = *v8;
  if (v16)
  {
    goto LABEL_10;
  }

  v19[(v12 >> 6) + 8] |= 1 << v12;
  v20 = (v19[6] + 16 * v12);
  *v20 = a1;
  v20[1] = a2;
  *(v19[7] + 8 * v12) = 0;
  v21 = v19[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_23;
  }

  v19[2] = v23;

LABEL_10:
  v24 = v19[7];
  v25 = *(v24 + 8 * v12);
  v22 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v22)
  {
    *(v24 + 8 * v12) = v26;
    v6(v37, 0);
    if (qword_1000A1530 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  swift_once();
LABEL_12:
  v27 = sub_100079BA0();
  sub_1000070F4(v27, qword_1000A1538);

  v28 = sub_100079B80();
  v29 = sub_10007A160();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37[0] = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_100006B00(a1, a2, v37);
    *(v30 + 12) = 2048;
    v32 = (*(*v3 + 152))();
    if (*(v32 + 16) && (v33 = sub_10000A0FC(a1, a2), (v34 & 1) != 0))
    {
      v35 = *(*(v32 + 56) + 8 * v33);
    }

    else
    {
      v35 = 0;
    }

    *(v30 + 14) = v35;

    _os_log_impl(&_mh_execute_header, v28, v29, "registered use for session config for %{public}s, now %lld uses", v30, 0x16u);
    sub_1000070A8(v31);
  }

  else
  {
  }
}

void sub_100015BE8(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v61 - v11;
  v13 = (*(v8 + 152))(v10);
  if (*(v13 + 16))
  {
    v14 = sub_10000A0FC(a1, a2);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      v17 = v16 - 1;
      if (__OFSUB__(v16, 1))
      {
        __break(1u);
      }

      else if (qword_1000A1530 == -1)
      {
        goto LABEL_5;
      }

      swift_once();
LABEL_5:
      LODWORD(v63) = a3;
      v18 = sub_100079BA0();
      v19 = sub_1000070F4(v18, qword_1000A1538);

      v61[1] = v19;
      v20 = sub_100079B80();
      v21 = sub_10007A160();

      v22 = os_log_type_enabled(v20, v21);
      v62 = a1;
      if (v22)
      {
        v23 = v16 - 1;
        v24 = v8;
        v25 = v12;
        v26 = a1;
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v65[0] = v28;
        *v27 = 136446466;
        v29 = v26;
        v12 = v25;
        v8 = v24;
        v17 = v23;
        *(v27 + 4) = sub_100006B00(v29, a2, v65);
        *(v27 + 12) = 2050;
        *(v27 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v20, v21, "session config finished for %{public}s with %{public}lld uses remaining", v27, 0x16u);
        sub_1000070A8(v28);
      }

      v30 = *(*v4 + 168);
      if (v17 > 0)
      {
        v31 = v30(v65);
        v33 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = *v33;
        *v33 = 0x8000000000000000;
        sub_100018FE8(v17, v62, a2, isUniquelyReferenced_nonNull_native);
        *v33 = v64;

        v31(v65, 0);
        return;
      }

      v40 = v30(v65);
      v41 = v62;
      sub_100018C3C(v62, a2);
      v42 = v40(v65, 0);
      if (v63)
      {
        v43 = v8;
        v44 = (*(*v4 + 176))(v42);
        v45 = sub_1000163E8(v41, a2, v44);

        v46 = sub_100079B80();
        v47 = sub_10007A160();

        v48 = os_log_type_enabled(v46, v47);
        if (v45)
        {
          if (v48)
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v65[0] = v50;
            *v49 = 136446210;
            *(v49 + 4) = sub_100006B00(v41, a2, v65);
            _os_log_impl(&_mh_execute_header, v46, v47, "not evicting %{public}s: already running", v49, 0xCu);
            sub_1000070A8(v50);
          }

          return;
        }

        if (v48)
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v65[0] = v55;
          *v54 = 136446210;
          *(v54 + 4) = sub_100006B00(v41, a2, v65);
          _os_log_impl(&_mh_execute_header, v46, v47, "starting eviction timer for %{public}s", v54, 0xCu);
          sub_1000070A8(v55);
        }

        v56 = *(*v4 + 192);

        v57 = v56(v65);
        sub_100018CE8(&v64, v41, a2);

        v57(v65, 0);
        v58 = sub_10007A0A0();
        (*(*(v58 - 8) + 56))(v12, 1, 1, v58);
        v59 = sub_100019DE4();
        v60 = swift_allocObject();
        v60[2] = v4;
        v60[3] = v59;
        v60[4] = v4;
        v60[5] = v41;
        v60[6] = a2;
        v60[7] = v43;
        swift_retain_n();

        sub_100005244(0, 0, v12, &unk_10007C438, v60);
      }

      else
      {
        v51 = sub_10007A0A0();
        (*(*(v51 - 8) + 56))(v12, 1, 1, v51);
        v52 = sub_100019DE4();
        v53 = swift_allocObject();
        v53[2] = v4;
        v53[3] = v52;
        v53[4] = v41;
        v53[5] = a2;
        v53[6] = v4;
        v53[7] = v8;
        swift_retain_n();

        sub_100014B7C(0, 0, v12, &unk_10007C428, v53);
      }

      return;
    }
  }

  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v35 = sub_100079BA0();
  sub_1000070F4(v35, qword_1000A1538);

  v63 = sub_100079B80();
  v36 = sub_10007A170();

  if (os_log_type_enabled(v63, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v65[0] = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_100006B00(a1, a2, v65);
    _os_log_impl(&_mh_execute_header, v63, v36, "session config finished with no use count for %{public}s", v37, 0xCu);
    sub_1000070A8(v38);
  }

  else
  {
    v39 = v63;
  }
}

uint64_t sub_1000163E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_10007A730();
  sub_100079EC0();
  v6 = sub_10007A760();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_10007A610() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000164E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = swift_task_alloc();
  v6[13] = v7;
  *v7 = v6;
  v7[1] = sub_100016588;

  return static Task<>.sleep(nanoseconds:)(10000000000);
}

uint64_t sub_100016588()
{
  v2 = *(*v1 + 80);
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100016CB0;
  }

  else
  {
    v3 = sub_1000166B0;
  }

  return _swift_task_switch(v3, v2, 0);
}