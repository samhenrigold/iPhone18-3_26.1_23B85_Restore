void sub_10007BCAC(uint64_t a1)
{
  v2 = type metadata accessor for SLAMScript.SEFWDetails(0);
  __chkstk_darwin(v2);
  v4 = (&v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SLAMScript(0);
  __chkstk_darwin(v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000403C(v8, qword_1003A0278);
  sub_10008289C(a1, v7, type metadata accessor for SLAMScript);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v53 = v9;
    v13 = v12;
    v51 = swift_slowAlloc();
    v55 = v51;
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, &v55);
    v52 = v2;
    v17 = v16;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1002C1660;
    *(v18 + 56) = v5;
    v19 = sub_10000BE5C((v18 + 32));
    sub_10008289C(v7, v19, type metadata accessor for SLAMScript);
    v20 = showFunction(signature:_:)(0x4C536574656C6564, 0xEE00293A5F284D41, v18);
    v21 = a1;
    v23 = v22;

    sub_100082008(v7, type metadata accessor for SLAMScript);
    v24 = sub_100008F6C(v20, v23, &v55);
    a1 = v21;

    *(v13 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100082008(v7, type metadata accessor for SLAMScript);
  }

  sub_10008289C(a1, v4, type metadata accessor for SLAMScript.SEFWDetails);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_9:
    v27 = *v4;
    v26 = v4[1];
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100082008(v4, type metadata accessor for SLAMScript.SEFWDetails);
      return;
    }

    goto LABEL_9;
  }

  v27 = *v4;
  v26 = v4[1];

LABEL_11:
  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 fileExistsAtPath:v30];

  if (v31)
  {
    v32 = [v28 defaultManager];
    v33 = String._bridgeToObjectiveC()();
    v55 = 0;
    v34 = [v32 removeItemAtPath:v33 error:&v55];

    if (v34)
    {
      v35 = v55;
    }

    else
    {
      v41 = v55;
      v42 = _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_errorRetain();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v45 = 136315394;
        v46 = sub_100008F6C(v27, v26, &v55);

        *(v45 + 4) = v46;
        *(v45 + 12) = 2080;
        v54 = v42;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v47 = String.init<A>(describing:)();
        v49 = sub_100008F6C(v47, v48, &v55);

        *(v45 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v43, v44, "failed to delete %s: %s", v45, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v55 = v39;
      *v38 = 136315138;
      v40 = sub_100008F6C(v27, v26, &v55);

      *(v38 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "file at %s does not exist", v38, 0xCu);
      sub_10000959C(v39);
    }

    else
    {
    }
  }
}

BOOL sub_10007C3C8(unsigned __int8 a1)
{
  if (qword_10039D4A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A1210);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v5 = 136315394;
    sub_10000411C(0, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v37);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x79654B7465736572, 0xEE00293A64692873, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v37);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  LOWORD(v33) = 7840;
  HIWORD(v33) = a1;
  v34 = 0;
  v35 = xmmword_1002BDC30;
  v36 = 0;
  sub_10000BC94(&v33, v37);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v33);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37[0] = v15;
    *v14 = 136315138;
    v16 = sub_100170CB0(v33 | (v34 << 32), v35, *(&v35 + 1), v36);
    v18 = v17;
    v19 = Data.hexString()();
    sub_100009548(v16, v18);
    v20 = sub_100008F6C(v19._countAndFlagsBits, v19._object, v37);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "C-APDU (RESET KEY): %s", v14, 0xCu);
    sub_10000959C(v15);
  }

  sub_10009FAC0(v33 | (v34 << 32), v35, *(&v35 + 1), v36, 0, v37);
  v21 = v37[1];
  v22 = v38;
  v23 = Logger.logObject.getter();
  if (v21 >> 60 == 15)
  {
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "failed to send reset key", v25, 2u);
    }

    sub_10000BCF0(&v33);

    return 0;
  }

  else
  {
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      v30 = Data.hexString()();
      v31 = sub_100008F6C(v30._countAndFlagsBits, v30._object, &v32);

      *(v28 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v27, "R-APDU: %s", v28, 0xCu);
      sub_10000959C(v29);
    }

    sub_10000BCF0(&v33);

    sub_10000BD44(v37, &qword_10039E2C0, &unk_1002BFEB0);
    return v22 == 36864;
  }
}

uint64_t sub_10007C874(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v160 = a4;
  v157 = a2;
  v147 = *v4;
  v8 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v9 = __chkstk_darwin(v8 - 8);
  v154 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v153 = &v143 - v12;
  v13 = __chkstk_darwin(v11);
  *&v159 = &v143 - v14;
  __chkstk_darwin(v13);
  v16 = &v143 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v148 = v18;
  v19 = __chkstk_darwin(v17);
  v149 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v155 = &v143 - v22;
  __chkstk_darwin(v21);
  v24 = &v143 - v23;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_10000403C(v25, qword_1003A0278);
  v27 = *(v18 + 16);
  v151 = a1;
  v146 = v27;
  v27(v24, a1, v17);
  sub_100065074(v157, v16, &qword_1003A0178, &unk_1002C3BB0);
  v161 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v158 = a3;
  v156 = v17;
  v150 = v5;
  v152 = v18;
  if (v30)
  {
    v144 = v29;
    v145 = v28;
    v31 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *&v179[0] = v143;
    *v31 = 136315394;
    v32 = _typeName(_:qualified:)();
    v33 = v17;
    v35 = sub_100008F6C(v32, v34, v179);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1002C1670;
    *(v36 + 56) = v33;
    v37 = sub_10000BE5C((v36 + 32));
    v146(v37, v24, v33);
    v38 = v159;
    sub_100065074(v16, v159, &qword_1003A0178, &unk_1002C3BB0);
    v39 = v24;
    if ((*(v18 + 48))(v38, 1, v33) == 1)
    {
      sub_10000BD44(v38, &qword_1003A0178, &unk_1002C3BB0);
      *(v36 + 88) = &type metadata for String;
      *(v36 + 64) = 0;
      *(v36 + 72) = 0xE000000000000000;
    }

    else
    {
      *(&v182 + 1) = v33;
      v40 = sub_10000BE5C(&v181);
      (*(v18 + 32))(v40, v38, v33);
      sub_100019D3C(&v181, (v36 + 64));
    }

    v41 = showFunction(signature:_:)(0xD000000000000022, 0x8000000100348C30, v36);
    v43 = v42;

    sub_10000BD44(v16, &qword_1003A0178, &unk_1002C3BB0);
    v147 = *(v18 + 8);
    v147(v39, v33);
    v44 = sub_100008F6C(v41, v43, v179);

    *(v31 + 14) = v44;
    v45 = v145;
    _os_log_impl(&_mh_execute_header, v145, v144, "%s.%s", v31, 0x16u);
    swift_arrayDestroy();

    a3 = v158;
    v5 = v150;
  }

  else
  {

    sub_10000BD44(v16, &qword_1003A0178, &unk_1002C3BB0);
    v147 = *(v18 + 8);
    v147(v24, v17);
  }

  sub_10000CCE4((v5 + 13), v178);
  sub_10000BE18(v178, v178[3]);
  v46 = _s14InstallPackageVMa(0);
  v47 = sub_100055298();
  v49 = v48;
  *&v159 = v46;
  v50 = (a3 + *(v46 + 48));
  v51 = _swiftEmptyArrayStorage;
  v52 = _swiftEmptyArrayStorage;
  if (*v50 != 1)
  {
    v53 = v50[1];
    v52 = *v50 ? *v50 : _swiftEmptyArrayStorage;

    if (v53)
    {

      v51 = v53;
    }
  }

  v54 = sub_100055298();
  v56 = v55;
  v146 = *(v159 + 40);
  v57 = sub_100055298();
  *&v171 = v47;
  *(&v171 + 1) = v49;
  *&v172 = v52;
  *(&v172 + 1) = v51;
  v173 = 0;
  v174 = 0;
  *&v175 = 0;
  *(&v175 + 1) = v54;
  *&v176 = v56;
  *(&v176 + 1) = v57;
  v177 = v58;
  v186 = v58;
  v183 = 0u;
  v184 = v175;
  v185 = v176;
  v181 = v171;
  v182 = v172;
  v59 = sub_10003DDC0(v151, &v181);
  v61 = v60;
  sub_100041D1C(&v171);
  if (v61)
  {
    sub_10000959C(v178);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v152;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v179[0] = v67;
      *v66 = 136315138;

      v68 = v59;
      v69 = sub_100008F6C(v59, v61, v179);

      *(v66 + 4) = v69;
      v59 = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "evict %s", v66, 0xCu);
      sub_10000959C(v67);
    }

    v70 = v158;
    v71 = v155;

    v72 = sub_10004D4B0(0, 1, 1, _swiftEmptyArrayStorage);
    v74 = *(v72 + 2);
    v73 = *(v72 + 3);
    if (v74 >= v73 >> 1)
    {
      v72 = sub_10004D4B0((v73 > 1), v74 + 1, 1, v72);
    }

    *(v72 + 2) = v74 + 1;
    v75 = &v72[16 * v74];
    *(v75 + 4) = v59;
    *(v75 + 5) = v61;

    v76 = v153;
  }

  else
  {
    sub_10000959C(v178);
    v72 = _swiftEmptyArrayStorage;
    v70 = v158;
    v71 = v155;
    v65 = v152;
    v76 = v153;
  }

  v77 = v70;
  sub_100065074(v70 + *(v159 + 44), v76, &qword_1003A0178, &unk_1002C3BB0);
  v78 = *(v65 + 48);
  v79 = v65;
  v80 = v156;
  v81 = v78(v76, 1, v156);
  v82 = v154;
  if (v81 == 1)
  {
    v83 = sub_10000BD44(v76, &qword_1003A0178, &unk_1002C3BB0);
  }

  else
  {
    v84 = v76;
    v85 = *(v79 + 32);
    v85(v71, v84, v80);
    sub_100065074(v157, v82, &qword_1003A0178, &unk_1002C3BB0);
    if (v78(v82, 1, v80) == 1)
    {
      v147(v71, v80);
      v83 = sub_10000BD44(v82, &qword_1003A0178, &unk_1002C3BB0);
    }

    else
    {
      v85(v149, v82, v80);
      sub_10000CCE4((v150 + 13), v170);
      v157 = sub_10000BE18(v170, v170[3]);
      v86 = sub_100055298();
      v88 = v87;
      v89 = (v77 + *(v159 + 52));
      v90 = _swiftEmptyArrayStorage;
      v91 = _swiftEmptyArrayStorage;
      if (*v89 != 1)
      {
        v92 = v89[1];
        v91 = *v89 ? *v89 : _swiftEmptyArrayStorage;

        if (v92)
        {

          v90 = v92;
        }
      }

      v93 = sub_100055298();
      v95 = v94;
      v96 = sub_100055298();
      *&v163 = v86;
      *(&v163 + 1) = v88;
      *&v164 = v91;
      *(&v164 + 1) = v90;
      v165 = 0;
      v166 = 0;
      *&v167 = 0;
      *(&v167 + 1) = v93;
      *&v168 = v95;
      *(&v168 + 1) = v96;
      v169 = v97;
      v180 = v97;
      v179[2] = 0u;
      v179[3] = v167;
      v179[4] = v168;
      v179[0] = v163;
      v179[1] = v164;
      v98 = v149;
      v99 = sub_10003DDC0(v149, v179);
      v101 = v100;
      v103 = v102;
      sub_100041D1C(&v163);
      if (v101)
      {
        sub_10000959C(v170);

        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v162 = v107;
          *v106 = 136315138;

          v108 = sub_100008F6C(v99, v101, &v162);

          *(v106 + 4) = v108;
          _os_log_impl(&_mh_execute_header, v104, v105, "evict %s", v106, 0xCu);
          sub_10000959C(v107);

          v98 = v149;
        }

        v77 = v158;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v156;
        *&v159 = v103;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = sub_10004D4B0(0, *(v72 + 2) + 1, 1, v72);
        }

        v112 = *(v72 + 2);
        v111 = *(v72 + 3);
        if (v112 >= v111 >> 1)
        {
          v72 = sub_10004D4B0((v111 > 1), v112 + 1, 1, v72);
        }

        v113 = v98;
        v114 = v147;
        v147(v113, v110);
        v114(v155, v110);
        *(v72 + 2) = v112 + 1;
        v115 = &v72[16 * v112];
        *(v115 + 4) = v99;
        *(v115 + 5) = v101;
      }

      else
      {
        v116 = v147;
        v117 = v156;
        v147(v98, v156);
        v116(v71, v117);
        v83 = sub_10000959C(v170);
        v77 = v158;
      }
    }
  }

  __chkstk_darwin(v83);
  *(&v143 - 2) = v77;

  v118 = sub_100065514(sub_10008298C, (&v143 - 4), v72);

  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *&v163 = v122;
    *v121 = 136315138;

    v123 = Array.description.getter();
    v125 = v124;

    v126 = sub_100008F6C(v123, v125, &v163);

    *(v121 + 4) = v126;
    _os_log_impl(&_mh_execute_header, v119, v120, "Delete these profiles from applet slots: %s", v121, 0xCu);
    sub_10000959C(v122);
  }

  v127 = *(v118 + 16);
  if (v127)
  {

    v158 = v118;
    v128 = (v118 + 40);
    *&v129 = 136315138;
    v159 = v129;
    while (1)
    {
      v131 = *(v128 - 1);
      v130 = *v128;

      v132 = sub_10007FB64(v131, v130);

      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.default.getter();

      v135 = os_log_type_enabled(v133, v134);
      if (v132)
      {
        if (v135)
        {
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          *&v163 = v137;
          *v136 = v159;
          v138 = sub_100008F6C(v131, v130, &v163);

          *(v136 + 4) = v138;
          _os_log_impl(&_mh_execute_header, v133, v134, "profile deleted: %s", v136, 0xCu);
          sub_10000959C(v137);

LABEL_52:

          goto LABEL_46;
        }
      }

      else if (v135)
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *&v163 = v140;
        *v139 = v159;
        v141 = sub_100008F6C(v131, v130, &v163);

        *(v139 + 4) = v141;
        _os_log_impl(&_mh_execute_header, v133, v134, "failed to delete profile: %s", v139, 0xCu);
        sub_10000959C(v140);

        goto LABEL_52;
      }

LABEL_46:

      v128 += 2;
      if (!--v127)
      {
      }
    }
  }
}

void sub_10007D7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v208 = type metadata accessor for OSSignpostError();
  v8 = *(v208 - 8);
  v9 = __chkstk_darwin(v208);
  v192 = &v184[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v191 = &v184[-v12];
  v13 = __chkstk_darwin(v11);
  v190 = &v184[-v14];
  v15 = __chkstk_darwin(v13);
  v189 = &v184[-v16];
  __chkstk_darwin(v15);
  v188 = &v184[-v17];
  v215 = type metadata accessor for OSSignpostID();
  v18 = *(v215 - 8);
  v19 = __chkstk_darwin(v215);
  v197 = &v184[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v196 = &v184[-v22];
  v23 = __chkstk_darwin(v21);
  v195 = &v184[-v24];
  v25 = __chkstk_darwin(v23);
  v194 = &v184[-v26];
  v27 = __chkstk_darwin(v25);
  v193 = &v184[-v28];
  v29 = __chkstk_darwin(v27);
  v204 = &v184[-v30];
  v31 = __chkstk_darwin(v29);
  v203 = &v184[-v32];
  v33 = __chkstk_darwin(v31);
  v202 = &v184[-v34];
  v35 = __chkstk_darwin(v33);
  v201 = &v184[-v36];
  v37 = __chkstk_darwin(v35);
  v212 = &v184[-v38];
  __chkstk_darwin(v37);
  v200 = &v184[-v39];
  v211 = type metadata accessor for SLAMScript(0);
  v40 = *(v211 - 8);
  __chkstk_darwin(v211);
  v219 = &v184[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v206 = v3;
  v3[82] = a2;
  v216 = a2;

  v43 = *(a1 + 16);
  if (!v43)
  {
    v213 = _swiftEmptyArrayStorage;
LABEL_93:
    v131 = v206;
    if (*(v213 + 2))
    {
      sub_1000245C8(v213);
    }

    v131[82] = 0;

    return;
  }

  v186 = a3;
  v44 = a1 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
  v210 = (v18 + 16);
  v214 = (v18 + 8);
  v199 = (v8 + 88);
  v198 = enum case for OSSignpostError.doubleEnd(_:);
  v187 = (v8 + 8);
  v209 = *(v40 + 72);
  *&v42 = 138412290;
  v205 = v42;
  v213 = _swiftEmptyArrayStorage;
  v45 = v4;
  while (1)
  {
    *&v217 = v43;
    v46 = v219;
    sub_10008289C(v44, v219, type metadata accessor for SLAMScript);
    v47 = v46[*(v211 + 32)];
    if (v47 <= 1)
    {
      if (v46[*(v211 + 32)])
      {
        if (qword_10039D388 != -1)
        {
          swift_once();
        }

        v48 = v45;
        v65 = type metadata accessor for OSSignposter();
        sub_10000403C(v65, qword_1003A0290);
        v50 = v201;
        static OSSignpostID.exclusive.getter();
        v51 = OSSignposter.logHandle.getter();
        v66 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          v54 = OSSignpostID.rawValue.getter();
          v55 = v66;
          v56 = v51;
          v57 = "config-install-cleanupSLAM";
          v58 = "begin cleanup SLAM";
          goto LABEL_30;
        }
      }

      else
      {
        if (qword_10039D388 != -1)
        {
          swift_once();
        }

        v48 = v45;
        v59 = type metadata accessor for OSSignposter();
        sub_10000403C(v59, qword_1003A0290);
        v50 = v200;
        static OSSignpostID.exclusive.getter();
        v51 = OSSignposter.logHandle.getter();
        v60 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          v54 = OSSignpostID.rawValue.getter();
          v55 = v60;
          v56 = v51;
          v57 = "config-install-kernel";
          v58 = "begin install kernel SLAM";
          goto LABEL_30;
        }
      }
    }

    else if (v47 == 2)
    {
      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v48 = v45;
      v61 = type metadata accessor for OSSignposter();
      sub_10000403C(v61, qword_1003A0290);
      v50 = v202;
      static OSSignpostID.exclusive.getter();
      v51 = OSSignposter.logHandle.getter();
      v62 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = OSSignpostID.rawValue.getter();
        v55 = v62;
        v56 = v51;
        v57 = "config-install-global";
        v58 = "begin global config SLAM";
        goto LABEL_30;
      }
    }

    else if (v47 == 3)
    {
      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v48 = v45;
      v49 = type metadata accessor for OSSignposter();
      sub_10000403C(v49, qword_1003A0290);
      v50 = v203;
      static OSSignpostID.exclusive.getter();
      v51 = OSSignposter.logHandle.getter();
      v52 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = OSSignpostID.rawValue.getter();
        v55 = v52;
        v56 = v51;
        v57 = "config-install-profile";
        v58 = "begin partner online profile SLAM";
LABEL_30:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, v55, v54, v57, v58, v53, 2u);
      }
    }

    else
    {
      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v48 = v45;
      v63 = type metadata accessor for OSSignposter();
      sub_10000403C(v63, qword_1003A0290);
      v50 = v204;
      static OSSignpostID.exclusive.getter();
      v51 = OSSignposter.logHandle.getter();
      v64 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = OSSignpostID.rawValue.getter();
        v55 = v64;
        v56 = v51;
        v57 = "config-install-profile";
        v58 = "begin partner saf profile SLAM";
        goto LABEL_30;
      }
    }

    v67 = v215;
    (*v210)(v212, v50, v215);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v218 = OSSignpostIntervalState.init(id:isOpen:)();
    v68 = *v214;
    (*v214)(v50, v67);
    sub_10008E6AC(v219);
    v45 = v48;
    if (v48)
    {
      break;
    }

    if (v47 <= 1)
    {
      if (v47)
      {
        if (qword_10039D388 != -1)
        {
          swift_once();
        }

        v121 = type metadata accessor for OSSignposter();
        sub_10000403C(v121, qword_1003A0290);
        v122 = OSSignposter.logHandle.getter();
        v123 = v194;
        OSSignpostIntervalState.signpostID.getter();
        v124 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v207 = 0;

          v125 = v189;
          checkForErrorAndConsumeState(state:)();

          v126 = (*v199)(v125, v208);
          v127 = "[Error] Interval already ended";
          if (v126 != v198)
          {
            (*v187)(v189, v208);
            v127 = "end cleanup SLAM";
          }

          v128 = swift_slowAlloc();
          *v128 = 0;
          v129 = v194;
          v130 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v122, v124, v130, "config-install-cleanupSLAM", v127, v128, 2u);

          v68(v129, v215);
          sub_100082008(v219, type metadata accessor for SLAMScript);
          v45 = v207;
        }

        else
        {

          v68(v123, v215);
          sub_100082008(v219, type metadata accessor for SLAMScript);
        }

        goto LABEL_5;
      }

      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for OSSignposter();
      sub_10000403C(v87, qword_1003A0290);
      v88 = OSSignposter.logHandle.getter();
      v89 = v193;
      OSSignpostIntervalState.signpostID.getter();
      v90 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v207 = 0;

        v91 = v188;
        checkForErrorAndConsumeState(state:)();

        v92 = (*v199)(v91, v208);
        v93 = "[Error] Interval already ended";
        if (v92 != v198)
        {
          (*v187)(v188, v208);
          v93 = "end install kernel SLAM";
        }

        v94 = swift_slowAlloc();
        *v94 = 0;
        v95 = v193;
        v96 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v88, v90, v96, "config-install-kernel", v93, v94, 2u);

        v45 = v207;
        v89 = v95;
      }

      v68(v89, v215);
      v97 = v213;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_10004DDB8(0, *(v97 + 2) + 1, 1, v97);
      }

      v99 = *(v97 + 2);
      v98 = *(v97 + 3);
      if (v99 >= v98 >> 1)
      {
        v97 = sub_10004DDB8((v98 > 1), v99 + 1, 1, v97);
      }

      sub_100082008(v219, type metadata accessor for SLAMScript);
      *(v97 + 2) = v99 + 1;
      v213 = v97;
      v100 = &v97[v99];
      v101 = 20;
      goto LABEL_84;
    }

    if (v47 == 2)
    {
      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for OSSignposter();
      sub_10000403C(v102, qword_1003A0290);
      v103 = OSSignposter.logHandle.getter();
      v104 = v195;
      OSSignpostIntervalState.signpostID.getter();
      v105 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v207 = 0;

        v106 = v190;
        checkForErrorAndConsumeState(state:)();

        v107 = (*v199)(v106, v208);
        v108 = "[Error] Interval already ended";
        if (v107 != v198)
        {
          (*v187)(v190, v208);
          v108 = "end global config SLAM";
        }

        v109 = swift_slowAlloc();
        *v109 = 0;
        v110 = v195;
        v111 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v103, v105, v111, "config-install-global", v108, v109, 2u);

        v45 = v207;
        v104 = v110;
      }

      v68(v104, v215);
      v112 = v213;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_10004DDB8(0, *(v112 + 2) + 1, 1, v112);
      }

      v114 = *(v112 + 2);
      v113 = *(v112 + 3);
      if (v114 >= v113 >> 1)
      {
        v112 = sub_10004DDB8((v113 > 1), v114 + 1, 1, v112);
      }

      sub_100082008(v219, type metadata accessor for SLAMScript);
      *(v112 + 2) = v114 + 1;
      v213 = v112;
      v100 = &v112[v114];
      v101 = 21;
      goto LABEL_84;
    }

    if (v47 == 3)
    {
      v78 = v213;
      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for OSSignposter();
      sub_10000403C(v79, qword_1003A0290);
      v80 = OSSignposter.logHandle.getter();
      v81 = v196;
      OSSignpostIntervalState.signpostID.getter();
      v185 = static os_signpost_type_t.end.getter();
      if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
      {
        goto LABEL_79;
      }

      v82 = v191;
      checkForErrorAndConsumeState(state:)();

      v83 = (*v199)(v82, v208);
      v84 = "[Error] Interval already ended";
      if (v83 != v198)
      {
        (*v187)(v191, v208);
        v84 = "end partner online profile SLAM";
      }

      v85 = swift_slowAlloc();
      *v85 = 0;
      v86 = v196;
    }

    else
    {
      v78 = v213;
      v81 = v197;
      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for OSSignposter();
      sub_10000403C(v115, qword_1003A0290);
      v80 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v185 = static os_signpost_type_t.end.getter();
      if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
      {
        goto LABEL_79;
      }

      v116 = v192;
      checkForErrorAndConsumeState(state:)();

      v117 = (*v199)(v116, v208);
      v84 = "[Error] Interval already ended";
      if (v117 != v198)
      {
        (*v187)(v192, v208);
        v84 = "end partner saf profile SLAM";
      }

      v85 = swift_slowAlloc();
      *v85 = 0;
      v86 = v197;
    }

    v118 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, v185, v118, "config-install-profile", v84, v85, 2u);

    v45 = 0;
    v81 = v86;
    v78 = v213;
LABEL_79:

    v68(v81, v215);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_10004DDB8(0, *(v78 + 2) + 1, 1, v78);
    }

    v120 = *(v78 + 2);
    v119 = *(v78 + 3);
    if (v120 >= v119 >> 1)
    {
      v78 = sub_10004DDB8((v119 > 1), v120 + 1, 1, v78);
    }

    sub_100082008(v219, type metadata accessor for SLAMScript);
    *(v78 + 2) = v120 + 1;
    v213 = v78;
    v100 = &v78[v120];
    v101 = 22;
LABEL_84:
    v100[32] = v101;
LABEL_5:
    v44 += v209;
    v43 = v217 - 1;
    if (v217 == 1)
    {
      goto LABEL_93;
    }
  }

  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_10000403C(v69, qword_1003A0278);
  swift_errorRetain();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = v205;
    swift_errorRetain();
    v74 = _swift_stdlib_bridgeErrorToNSError();
    *(v72 + 4) = v74;
    *v73 = v74;
    _os_log_impl(&_mh_execute_header, v70, v71, "error when install: %@", v72, 0xCu);
    sub_10000BD44(v73, &unk_10039E220, &qword_1002C3D60);
    v45 = v48;
  }

  if (*(v216 + 96))
  {
    sub_100020148(2040, 0, 0, 0);
    swift_willThrow();

    sub_100082008(v219, type metadata accessor for SLAMScript);
    if (*(v213 + 2))
    {
      v183 = v206;
      sub_1000245C8(v213);
      goto LABEL_118;
    }

LABEL_117:
    v183 = v206;
LABEL_118:
    v183[82] = 0;

    return;
  }

  if (v47 == 1)
  {
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "failed to execute cleanup script", v77, 2u);
    }

    else
    {
    }

    sub_100082008(v219, type metadata accessor for SLAMScript);
    v45 = 0;
    goto LABEL_5;
  }

  v132 = v213;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v132 = sub_10004DDB8(0, *(v132 + 2) + 1, 1, v132);
  }

  v134 = *(v132 + 2);
  v133 = *(v132 + 3);
  if (v134 >= v133 >> 1)
  {
    v132 = sub_10004DDB8((v133 > 1), v134 + 1, 1, v132);
  }

  *(v132 + 2) = v134 + 1;
  v132[v134 + 32] = 23;
  v135 = v216;
  swift_beginAccess();
  v136 = *(v135 + 88);
  v137 = *(v136 + 16);
  v207 = v45;
  v213 = v132;
  if (!v137)
  {

    v138 = _swiftEmptyArrayStorage;
    goto LABEL_104;
  }

  v138 = sub_100080124(v137, 0);
  *&v217 = sub_100080AB4(&v221, (v138 + 32), v137, v136);
  v139 = v221;
  swift_bridgeObjectRetain_n();
  sub_100041CDC(v139);
  if (v217 == v137)
  {
    v45 = v207;
LABEL_104:
    v221 = v138;
    sub_1000801A8(&v221);
    v216 = 0;

    v140 = v221;
    v141 = *(v221 + 16);
    if (v141 >= 0x40)
    {
      v142 = 64;
    }

    else
    {
      v142 = *(v221 + 16);
    }

    if (v141)
    {
      v223 = _swiftEmptyArrayStorage;
      sub_10004E2DC(0, v142, 0);
      v143 = v223;
      v215 = v140;
      v144 = (v140 + 40);
      v217 = xmmword_1002C1660;
      do
      {
        v145 = *(v144 - 1);
        v146 = *v144;
        sub_100004074(&qword_10039E268, &unk_1002C16F0);
        v147 = swift_allocObject();
        *(v147 + 16) = v217;
        *(v147 + 56) = &type metadata for UInt16;
        *(v147 + 64) = &protocol witness table for UInt16;
        *(v147 + 32) = v146;
        v148 = String.init(format:_:)();
        v150 = v149;
        v220 = v145;
        v221 = 10272;
        v222 = 0xE200000000000000;
        v151._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v151);

        v152._countAndFlagsBits = 41;
        v152._object = 0xE100000000000000;
        String.append(_:)(v152);
        v153 = v221;
        v154 = v222;
        v221 = v148;
        v222 = v150;

        v155._countAndFlagsBits = v153;
        v155._object = v154;
        String.append(_:)(v155);

        v156 = v221;
        v157 = v222;
        v223 = v143;
        v159 = v143[2];
        v158 = v143[3];
        if (v159 >= v158 >> 1)
        {
          sub_10004E2DC((v158 > 1), v159 + 1, 1);
          v143 = v223;
        }

        v144 += 8;
        v143[2] = v159 + 1;
        v160 = &v143[2 * v159];
        v160[4] = v156;
        v160[5] = v157;
        --v142;
      }

      while (v142);

      v45 = v207;
    }

    else
    {

      v143 = _swiftEmptyArrayStorage;
    }

    v221 = v143;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_100064238();
    v161 = BidirectionalCollection<>.joined(separator:)();
    v163 = v162;

    v221 = 0;
    v222 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v164._countAndFlagsBits = 0x203A726F727245;
    v164._object = 0xE700000000000000;
    String.append(_:)(v164);
    v223 = v45;
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    _print_unlocked<A, B>(_:_:)();
    v165._object = 0x8000000100348B90;
    v165._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v165);
    v166._countAndFlagsBits = v161;
    v166._object = v163;
    String.append(_:)(v166);

    v168 = v221;
    v167 = v222;
    v169 = v206;
    v170 = v206[36];
    *&v217 = v206[37];
    v215 = sub_10000BE18(v206 + 33, v170);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1670;
    *(inited + 32) = 1684632949;
    *(inited + 40) = 0xE400000000000000;
    v172 = UUID.uuidString.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v172;
    *(inited + 56) = v173;
    *(inited + 88) = 0x726F727265;
    *(inited + 96) = 0xE500000000000000;
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v168;
    *(inited + 112) = v167;

    v174 = sub_100184010(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(0x1Fu, v174, v170, v217);

    v175 = v169[38];
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v176 = swift_initStackObject();
    *(v176 + 16) = xmmword_1002C1660;
    *(v176 + 32) = 5;
    v177 = v176 + 32;
    *(v176 + 64) = &type metadata for String;
    *(v176 + 40) = v168;
    *(v176 + 48) = v167;
    v178 = sub_100184144(v176);
    swift_setDeallocating();
    v179 = sub_10000BD44(v177, &qword_10039FED8, &unk_1002C37D0);
    v180 = *(v175 + 56);
    __chkstk_darwin(v179);
    *&v184[-16] = v178;
    os_unfair_lock_lock((v180 + 32));
    v181 = v216;
    sub_10006535C((v180 + 16));
    v182 = (v180 + 32);
    if (!v181)
    {
      os_unfair_lock_unlock(v182);

      sub_100020148(2009, 0, 0, 0);
      swift_willThrow();

      sub_100082008(v219, type metadata accessor for SLAMScript);
      if (*(v213 + 2))
      {
        sub_1000245C8(v213);
      }

      goto LABEL_117;
    }
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  os_unfair_lock_unlock(v182);
  __break(1u);
}

uint64_t sub_10007F230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  _s14InstallPackageVMa(0);

  result = sub_100055298();
  *a2 = v4;
  a2[1] = v3;
  a2[2] = result;
  a2[3] = v6;
  return result;
}

void sub_10007F294(uint64_t a1)
{
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A0278);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "No Delegate. Install Progress: %ld", v4, 0xCu);
  }
}

uint64_t sub_10007F394(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000403C(v9, qword_1003A0290);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "end clean up after install";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "config-install-postProcessing", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10007F620(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = _s14InstallPackageVMa(0);
  v17 = v13 == sub_100055298() && v14 == v16;
  v39 = v13;
  if (v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_100065074(a2 + v15[7], v12, &qword_1003A03F0, &qword_1002C3D88);
  v19 = type metadata accessor for SLAMScript(0);
  v20 = (*(*(v19 - 8) + 48))(v12, 1, v19);
  sub_10000BD44(v12, &qword_1003A03F0, &qword_1002C3D88);
  if (v20 == 1)
  {
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000403C(v21, qword_1003A0278);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_29;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v40 = v25;
    *v24 = 136315138;
    v26 = v39;
    goto LABEL_28;
  }

LABEL_13:
  sub_100065074(a2 + v15[11], v6, &qword_1003A0178, &unk_1002C3BB0);
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v6, 1, v27) == 1)
  {
    sub_10000BD44(v6, &qword_1003A0178, &unk_1002C3BB0);
    return 1;
  }

  v30 = sub_100055298();
  v32 = v31;
  (*(v28 + 8))(v6, v27);
  v33 = v39;
  if (v39 == v30 && v14 == v32)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      return 1;
    }
  }

  sub_100065074(a2 + v15[8], v10, &qword_1003A03F0, &qword_1002C3D88);
  v36 = type metadata accessor for SLAMScript(0);
  v37 = (*(*(v36 - 8) + 48))(v10, 1, v36);
  sub_10000BD44(v10, &qword_1003A03F0, &qword_1002C3D88);
  result = 1;
  if (v37 == 1)
  {
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000403C(v38, qword_1003A0278);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_29;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v40 = v25;
    *v24 = 136315138;
    v26 = v33;
LABEL_28:
    *(v24 + 4) = sub_100008F6C(v26, v14, &v40);
    _os_log_impl(&_mh_execute_header, v22, v23, "skip eviction %s", v24, 0xCu);
    sub_10000959C(v25);

LABEL_29:

    return 0;
  }

  return result;
}

uint64_t sub_10007FB64(uint64_t a1, uint64_t a2)
{
  if (qword_10039D4A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A1210);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v5 = 136315394;
    sub_10000411C(0, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v49);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000012, 0x8000000100348C60, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v49);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  result = Data.init(hexString:)();
  if (v13 >> 60 == 15)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "unexpected error: failed to convert profile hex string", v16, 2u);
    }

LABEL_24:

    return 0;
  }

  v17 = result;
  v18 = v13;
  v19 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v19 != 2)
    {
      v20 = 0;
      goto LABEL_18;
    }

    v22 = *(result + 16);
    v21 = *(result + 24);
    v20 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    v20 = WORD2(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

LABEL_16:
    sub_1000094F4(result, v13);
    goto LABEL_18;
  }

  if (v19)
  {
    goto LABEL_15;
  }

  v20 = BYTE6(v13);
LABEL_18:
  v44 = 110976;
  v45 = v20;
  v46 = v17;
  v47 = v18;
  v48 = 0;
  sub_10000BC94(&v44, v49);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v44);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49[0] = v42;
    *v25 = 136315138;
    v26 = v17;
    v27 = sub_100170CB0(v44 | (v45 << 32), v46, v47, v48);
    v29 = v28;
    v30 = Data.hexString()();
    v31 = v27;
    v17 = v26;
    sub_100009548(v31, v29);
    v32 = sub_100008F6C(v30._countAndFlagsBits, v30._object, v49);

    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "C-APDU (delete profile): %s", v25, 0xCu);
    sub_10000959C(v42);
  }

  sub_10009FAC0(v44 | (v45 << 32), v46, v47, v48, 0, v49);
  v33 = v49[1];
  v34 = v50;
  v14 = Logger.logObject.getter();
  if (v33 >> 60 == 15)
  {
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v14, v35, "failed to delete", v36, 2u);
    }

    sub_10001A074(v17, v18);
    sub_10000BCF0(&v44);
    goto LABEL_24;
  }

  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43 = v39;
    *v38 = 136315138;
    v40 = Data.hexString()();
    v41 = sub_100008F6C(v40._countAndFlagsBits, v40._object, &v43);

    *(v38 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v14, v37, "R-APDU: %s", v38, 0xCu);
    sub_10000959C(v39);
  }

  sub_10000BCF0(&v44);
  sub_10001A074(v17, v18);

  sub_10000BD44(v49, &qword_10039E2C0, &unk_1002BFEB0);
  return v34 == 36864;
}

void *sub_100080124(uint64_t a1, uint64_t a2)
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

  sub_100004074(&qword_10039FEB8, &qword_1002C3DC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

Swift::Int sub_1000801A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100081040(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 2);
          if (*v12 < v13)
          {
            break;
          }

          v14 = *(v12 + 12);
          *(v12 + 1) = *v12;
          *v12 = v13;
          *(v12 + 4) = v14;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100004074(&qword_1003A0418, &unk_1002C3DB0);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v8[2] = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v16[0] = v8 + 4;
    v16[1] = v7;
    sub_100080300(v16, v17, v18, v6);
    v8[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100080300(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_100080AA0(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1000808A4((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_117;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_118;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_119;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *(v14 - 2) < *v14;
        ++v16;
        v14 += 2;
        if ((((v13 >= v10) ^ v17) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v13 < v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 < v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v18 = 16 * v7 - 16;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = (v22 + v18);
            v25 = *(v22 + v11);
            v26 = *(v22 + v11 + 8);
            if (v11 != v18 || v23 >= v24 + 1)
            {
              *v23 = *v24;
            }

            v21 = v22 + v18;
            *v21 = v25;
            *(v21 + 8) = v26;
          }

          ++v20;
          v18 -= 16;
          v11 += 16;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10004DCB4(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_10004DCB4((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_60:
          if (v42)
          {
            goto LABEL_107;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_109;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_114;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v36 < 2)
        {
          goto LABEL_115;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_75:
        if (v60)
        {
          goto LABEL_111;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_1000808A4((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_102;
        }

        if (v5 > v8[2])
        {
          goto LABEL_103;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_104;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_105;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_106;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_108;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_110;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_116;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7 - 16;
  v29 = v9 - v7;
LABEL_33:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 16);
    if (*v31 < v32)
    {
LABEL_32:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v27)
    {
      break;
    }

    v33 = *(v31 + 24);
    *(v31 + 16) = *v31;
    *v31 = v32;
    *(v31 + 8) = v33;
    v31 -= 16;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_1000808A4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 16 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 16;
    v5 -= 16;
    v20 = v15;
    do
    {
      v21 = v5 + 16;
      v22 = *(v20 - 2);
      v20 -= 16;
      if (*v19 >= v22)
      {
        if (v21 != v6)
        {
          *v5 = *v19;
        }

        if (v15 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v21 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 16;
      v15 = v20;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v23 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

void *sub_100080AB4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v9 << 6);
      v15 = *(*(a4 + 48) + 8 * v14);
      LOWORD(v14) = *(*(a4 + 56) + 2 * v14);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *sub_100080BB8(uint64_t a1, __int128 *a2, uint64_t a3, char *a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for LaunchFeedbackFramework();
  v46 = &off_1003823C0;
  *&v44 = a3;
  *&a4[OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_otaTask] = 0;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A0278);
  v13 = *(v9 + 16);
  v13(v11, a1, v8);
  sub_10000CCE4(a2, v42);
  sub_10000CCE4(&v44, v40);
  v14 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v38))
  {
    v15 = swift_slowAlloc();
    v36 = a1;
    v16 = v15;
    v35 = swift_slowAlloc();
    v39 = v35;
    *v16 = 136315394;
    v17 = _typeName(_:qualified:)();
    v19 = sub_100008F6C(v17, v18, &v39);
    v37 = a2;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v34 = "partnerSAFProfile";
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1002C1790;
    *(v21 + 56) = v8;
    v22 = sub_10000BE5C((v21 + 32));
    v13(v22, v11, v8);
    v23 = v43;
    v24 = sub_10000BE18(v42, v43);
    *(v21 + 88) = v23;
    v25 = sub_10000BE5C((v21 + 64));
    (*(*(v23 - 8) + 16))(v25, v24, v23);
    v26 = v41;
    v27 = sub_10000BE18(v40, v41);
    *(v21 + 120) = v26;
    v28 = sub_10000BE5C((v21 + 96));
    (*(*(v26 - 8) + 16))(v28, v27, v26);
    v29 = showFunction(signature:_:)(0xD00000000000002ALL, v34 | 0x8000000000000000, v21);
    v31 = v30;

    (*(v9 + 8))(v11, v8);
    sub_10000959C(v42);
    sub_10000959C(v40);
    v32 = sub_100008F6C(v29, v31, &v39);

    *(v16 + 14) = v32;
    a2 = v37;
    _os_log_impl(&_mh_execute_header, v14, v38, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();

    a1 = v36;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    sub_10000959C(v42);
    sub_10000959C(v40);
  }

  (*(v9 + 32))(&a4[OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_configuratorUrl], a1, v8);
  sub_100029790(a2, &a4[OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_channel]);
  sub_100029790(&v44, &a4[OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_launchFeedbackFramework]);
  return a4;
}

double sub_100081054(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100081084(void *a1)
{
  v3 = sub_100004074(&qword_1003A0548, &qword_1002C3EC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100083270();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    v9[15] = 1;
    sub_1000430C8(&qword_10039FBE8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000959C(a1);
  return v7;
}

char *sub_1000812AC(char *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_1000E3850(v26);
  if (v1)
  {
  }

  else
  {
    sub_1000EBD84(v25);
    sub_1000EAA58(v24);
    v9 = sub_10000BE18(v26, v26[3]);
    (*(v4 + 16))(v6, *v9 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v3);
    sub_10000BE18(v25, v25[3]);
    sub_100139568(v23);
    sub_10000CCE4(v24, v22);
    v10 = sub_100022438(v22, v22[3]);
    __chkstk_darwin(v10);
    v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for LaunchFeedbackFramework();
    v21[4] = &off_1003823C0;
    v21[3] = v15;
    v21[0] = v14;
    type metadata accessor for ConfiguratorBackend(0);
    v16 = swift_allocObject();
    v17 = sub_100022438(v21, v15);
    __chkstk_darwin(v17);
    v19 = (v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v7 = sub_100080BB8(v6, v23, *v19, v16);

    sub_10000959C(v24);
    sub_10000959C(v21);
    sub_10000959C(v22);
    sub_10000959C(v25);
    sub_10000959C(v26);
  }

  return v7;
}

uint64_t sub_100081614(void *a1)
{
  if ((related decl 'e' for SPRHTTPErrorCode.isServerError.getter() & 1) == 0)
  {
    v3 = related decl 'e' for SPRHTTPErrorCode.serverCode.getter();
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      if (v3 == 0x303030342D53434BLL && v4 == 0xE800000000000000 || ((v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x373030342D53434BLL) ? (v8 = v6 == 0xE800000000000000) : (v8 = 0), !v8 ? (v9 = 0) : (v9 = 1), (v7 & 1) != 0 || (v9 & 1) != 0 || ((v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x383030342D53434BLL) ? (v11 = v6 == 0xE800000000000000) : (v11 = 0), !v11 ? (v12 = 0) : (v12 = 1), (v10 & 1) != 0 || (v12 & 1) != 0 || ((v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x393030342D53434BLL) ? (v14 = v6 == 0xE800000000000000) : (v14 = 0), !v14 ? (v15 = 0) : (v15 = 1), (v13 & 1) != 0 || (v15 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))))
      {

        v2 = 2016;
        goto LABEL_110;
      }

      if (v5 == 0x313030342D53434BLL && v6 == 0xE800000000000000 || ((v16 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x323030342D53434BLL) ? (v17 = v6 == 0xE800000000000000) : (v17 = 0), !v17 ? (v18 = 0) : (v18 = 1), (v16 & 1) != 0 || (v18 & 1) != 0 || ((v19 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x333030342D53434BLL) ? (v20 = v6 == 0xE800000000000000) : (v20 = 0), !v20 ? (v21 = 0) : (v21 = 1), (v19 & 1) != 0 || (v21 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
      {

        v2 = 2015;
        goto LABEL_110;
      }

      if (v5 == 0x343030342D53434BLL && v6 == 0xE800000000000000 || ((v22 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x353030342D53434BLL) ? (v23 = v6 == 0xE800000000000000) : (v23 = 0), !v23 ? (v24 = 0) : (v24 = 1), (v22 & 1) != 0 || (v24 & 1) != 0 || ((v25 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x363030342D53434BLL) ? (v26 = v6 == 0xE800000000000000) : (v26 = 0), !v26 ? (v27 = 0) : (v27 = 1), (v25 & 1) != 0 || (v27 & 1) != 0 || ((v28 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x323130342D53434BLL) ? (v29 = v6 == 0xE800000000000000) : (v29 = 0), !v29 ? (v30 = 0) : (v30 = 1), (v28 & 1) != 0 || (v30 & 1) != 0 || ((v31 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x393130342D53434BLL) ? (v32 = v6 == 0xE800000000000000) : (v32 = 0), !v32 ? (v33 = 0) : (v33 = 1), (v31 & 1) != 0 || (v33 & 1) != 0 || ((v34 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x303430342D53434BLL) ? (v35 = v6 == 0xE800000000000000) : (v35 = 0), !v35 ? (v36 = 0) : (v36 = 1), (v34 & 1) != 0 || (v36 & 1) != 0 || ((v37 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x363430342D53434BLL) ? (v38 = v6 == 0xE800000000000000) : (v38 = 0), !v38 ? (v39 = 0) : (v39 = 1), (v37 & 1) != 0 || (v39 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))))))
      {

        v2 = 2011;
        goto LABEL_110;
      }

      if (v5 == 0x353430342D53434BLL && v6 == 0xE800000000000000)
      {

        v2 = 2031;
        goto LABEL_110;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v40)
      {
        v2 = 2031;
        goto LABEL_110;
      }
    }

    v2 = 2000;
    goto LABEL_110;
  }

  v2 = 2016;
LABEL_110:
  v41 = a1;
  v42 = sub_100020148(v2, 0, 0, a1);

  return v42;
}

uint64_t sub_100081B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100081B74()
{
  result = qword_1003A03D8;
  if (!qword_1003A03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A03D8);
  }

  return result;
}

uint64_t sub_100081BD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100081C10()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100081C78(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100081C90()
{
  v1 = *(sub_100004074(&qword_1003A0178, &unk_1002C3BB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = (*(v6 + 48))(v0 + v3, 1, v5);
  v10 = *(v6 + 8);
  if (!v9)
  {
    v10(v0 + v3, v5);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = (((((v8 + v11 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v10(v0 + v11, v5);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v12 + 8, v2 | v7 | 7);
}

void sub_100081E50(void *a1, uint64_t a2)
{
  v5 = *(sub_100004074(&qword_1003A0178, &unk_1002C3BB0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = (v10 + 9) & 0xFFFFFFFFFFFFFFF8;
  sub_1000696E8(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), (v2 + v6), (v2 + v9), *(v2 + v10), *(v2 + v10 + 1), *(v2 + v11), *(v2 + v11 + 8), *(v2 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100081FD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100082008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100082068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = 0;
  v3 = a1 + 32;
LABEL_3:
  v4 = (v3 + 16 * v2);
  v6 = *v4;
  v5 = v4[1];

  if ((String.count.getter() - 33) < 0xFFFFFFFFFFFFFFE0)
  {
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000403C(v18, qword_1003A0278);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      v19 = sub_100008F6C(v6, v5, v20);

      *(v14 + 4) = v19;
      v17 = "incorrect length %s";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v12, v13, v17, v14, 0xCu);
      sub_10000959C(v15);

      goto LABEL_22;
    }
  }

  else
  {
    ++v2;
    v7 = HIBYTE(v5) & 0xF;
    v20[0] = v6;
    v20[1] = v5;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v20[2] = 0;
    v20[3] = v7;

    do
    {
      if (!String.Iterator.next()().value._object)
      {

        if (v2 != v1)
        {
          goto LABEL_3;
        }

        return 1;
      }

      Character.hexDigitValue.getter();
      v9 = v8;
    }

    while ((v9 & 1) == 0);

    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A0278);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      v16 = sub_100008F6C(v6, v5, v20);

      *(v14 + 4) = v16;
      v17 = "%s contains non-hex digit";
      goto LABEL_16;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_100082354(uint64_t *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A0278);
  sub_100065074(a1, &v20, &qword_1003A0428, &qword_1002C3DD0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_10000BD44(a1, &qword_1003A0428, &qword_1002C3DD0);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    if (*a1 == 1)
    {
      v9 = 0xE300000000000000;
      v10 = 7104878;
    }

    else
    {
      v20 = *a1;
      v11 = *(v3 + 1);
      v21 = *v3;
      v22 = v11;
      v23 = *(v3 + 32);
      v10 = sub_1000835EC();
      v9 = v12;
    }

    v13 = sub_100008F6C(v10, v9, &v19);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  result = *a1;
  if (!*a1)
  {
    goto LABEL_12;
  }

  if (result == 1)
  {
    return result;
  }

  if ((sub_100082068(result) & 1) == 0)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "bypassAid is invalid";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);
    }
  }

  else
  {
LABEL_12:
    if (!v2 || (sub_100082068(v2) & 1) != 0)
    {
      return 1;
    }

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "supportCnpTrx is invalid";
      goto LABEL_18;
    }
  }

  return 0;
}

uint64_t sub_100082610(uint64_t result, char a2)
{
  if ((a2 & 1) != 0 || (result - 4321) <= 0xFFFFFFFFFFFFEF36)
  {
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_1003A0278);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315394;
      if (a2)
      {
        v8 = 0xE400000000000000;
        v9 = 1819047278;
      }

      else
      {
        sub_100082B20();
        v9 = BinaryInteger.description.getter();
        v8 = v10;
      }

      v11 = sub_100008F6C(v9, v8, &v12);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2048;
      *(v6 + 14) = 336;
      _os_log_impl(&_mh_execute_header, v4, v5, "safDuration value is invalid or missing: %s. Using the default value: %ld instead.", v6, 0x16u);
      sub_10000959C(v7);
    }

    return 336;
  }

  return result;
}

id sub_1000827B8(double a1)
{
  v2 = [objc_opt_self() sharedHardwareManager];
  v7 = 0;
  v3 = [v2 startSecureElementManagerSessionWithTimeout:&v7 error:a1];

  v4 = v7;
  if (!v3)
  {
    v5 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v3;
}

uint64_t sub_10008289C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100082904()
{
  result = qword_1003A0400;
  if (!qword_1003A0400)
  {
    sub_10000411C(255, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0400);
  }

  return result;
}

uint64_t sub_1000829AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004074(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100082A14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004074(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

double sub_100082A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_100082AD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_100082B20()
{
  result = qword_1003A0450;
  if (!qword_1003A0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0450);
  }

  return result;
}

uint64_t sub_100082B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 sub_100082BDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100082BF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100082C38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100082C9C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for UUID();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[11]];

  return v15(v16, a2, v14);
}

char *sub_100082E34(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for UUID();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[11]];

  return v15(v16, a2, a2, v14);
}

void sub_100082FB8(uint64_t a1)
{
  sub_1000831BC(319, &qword_1003A04C0, type metadata accessor for SLAMScript, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1000831BC(319, &qword_1003A04C8, type metadata accessor for SLAMScript, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        sub_1000831BC(319, &qword_1003A04D0, &type metadata accessor for UUID, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100083220(319, &qword_1003A04D8, &type metadata for KCSOTAResponse.HostConfiguration, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100083220(319, &qword_1003A04E0, &type metadata for Int, &type metadata accessor for Array);
            if (v6 <= 0x3F)
            {
              sub_100083220(319, &unk_1003A04E8, &type metadata for Data, &type metadata accessor for Optional);
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

void sub_1000831BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100083220(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100083270()
{
  result = qword_1003A0550;
  if (!qword_1003A0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0550);
  }

  return result;
}

unint64_t sub_1000832D8()
{
  result = qword_1003A0560;
  if (!qword_1003A0560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0560);
  }

  return result;
}

unint64_t sub_100083330()
{
  result = qword_1003A0568;
  if (!qword_1003A0568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0568);
  }

  return result;
}

unint64_t sub_100083388()
{
  result = qword_1003A0570;
  if (!qword_1003A0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0570);
  }

  return result;
}

void sub_1000833FC(uint64_t a1, Class isa, uint64_t a3, unint64_t a4)
{
  v17 = a4;
  v16 = a3;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(0);
  v12 = String._bridgeToObjectiveC()();

  if (isa)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_10008AB30();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  [v11 createFileAtPath:v12 contents:0 attributes:isa];

  sub_10000411C(0, &qword_1003A06B8, NSFileHandle_ptr);
  (*(v8 + 16))(v10, a1, v7);
  v13 = sub_1000874C4(v10);
  if (!v4)
  {
    v14 = v13;
    sub_10008A3C4(v16, v17, v14);

    sub_10008761C(v14);
  }
}

uint64_t sub_1000835EC()
{
  v1 = 1819047278;
  _StringGuts.grow(_:)(100);
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v2._object = 0x80000001003490D0;
  String.append(_:)(v2);
  if (*v0)
  {
    v3 = Array.description.getter();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1819047278;
  }

  v6 = v5;
  String.append(_:)(*&v3);

  v7._countAndFlagsBits = 0xD000000000000018;
  v7._object = 0x80000001003490F0;
  String.append(_:)(v7);
  if (*(v0 + 8))
  {
    v8 = Array.description.getter();
    v10 = v9;
  }

  else
  {
    v10 = 0xE400000000000000;
    v8 = 1819047278;
  }

  v11 = v10;
  String.append(_:)(*&v8);

  v12._countAndFlagsBits = 0x72746E756F63202CLL;
  v12._object = 0xEF203A65646F4379;
  String.append(_:)(v12);
  if (*(v0 + 24))
  {
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
  }

  else
  {
    v14 = 0xE400000000000000;
    v13 = 1819047278;
  }

  v15._countAndFlagsBits = v13;
  v15._object = v14;
  String.append(_:)(v15);

  v16._object = 0x8000000100349110;
  v16._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v16);
  if (*(v0 + 40))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    sub_100082B20();
    v1 = BinaryInteger.description.getter();
    v17 = v18;
  }

  v19._countAndFlagsBits = v1;
  v19._object = v17;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 41;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  return 0;
}

uint64_t sub_1000837E8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0578);
  sub_10000403C(v0, qword_1003A0578);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

uint64_t sub_100083854@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = __chkstk_darwin(v6);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_12;
    }

    v15 = *(v11 + 16);
  }

  else
  {
    if (!v13)
    {
      v14 = *a1;
      if ((*a1 & 0x8000000000000000) == 0 && v14 < BYTE6(v12))
      {
        goto LABEL_21;
      }

LABEL_12:
      if (qword_10039D390 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000403C(v16, qword_1003A0578);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_17;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "invalid cursor";
      goto LABEL_16;
    }

    v15 = v11;
  }

  v14 = *a1;
  if (*a1 < v15)
  {
    goto LABEL_12;
  }

  if (v13 == 2)
  {
    if (v14 >= *(v11 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v14 >= v11 >> 32)
  {
    goto LABEL_12;
  }

LABEL_21:
  v83 = v10;
  v84 = v8;
  v87 = a2;
  v88 = a1;
  v85 = v7;
  v86 = v11;
  while (1)
  {
    v23 = Data._Representation.subscript.getter();
    v24 = (v23 + 1);
    if ((v23 & 0x80) != 0)
    {
      v24 = (((v23 & 0x3F) << 8) | (v23 >> 6)) + 33217;
    }

    v89 = ((v24 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v24) >> 3)))));
    v25 = static String._uncheckedFromUTF8(_:)();
    v27 = v26;
    v28 = v25 == 123 && v26 == 0xE100000000000000;
    if (v28 || (v29 = v25, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      result = sub_100084A30(v88);
      v38 = v87;
      if (v3)
      {
        return result;
      }

      v39 = result;
      v40 = &qword_1003A0190;
      v41 = &unk_1002C4040;
LABEL_108:
      result = sub_100004074(v40, v41);
      v38[3] = result;
      *v38 = v39;
      return result;
    }

    v30 = v29 == 91 && v27 == 0xE100000000000000;
    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      result = sub_1000853D4(v88, v42);
      v38 = v87;
      if (v3)
      {
        return result;
      }

      v39 = result;
      v40 = &unk_1003A06B0;
      v41 = &unk_1002C4060;
      goto LABEL_108;
    }

    if (v29 == 116 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (__OFADD__(v14, 4))
      {
        __break(1u);
      }

      else if (v14 + 4 >= v14)
      {
        v43 = Data._Representation.subscript.getter();
        v29 = v44;
        v45 = v83;
        static String.Encoding.utf8.getter();
        v46 = String.data(using:allowLossyConversion:)();
        v48 = v47;
        (*(v84 + 8))(v45, v85);
        if (v48 >> 60 != 15)
        {

          v49 = sub_10017688C(v43, v29, v46, v48);
          sub_10001A074(v46, v48);
          if (v49)
          {
            v50 = v87;
            *v88 = v14 + 3;
            v50[3] = &type metadata for Bool;
            result = sub_100009548(v43, v29);
            *v50 = 1;
            return result;
          }

LABEL_124:
          if (qword_10039D390 != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          sub_10000403C(v65, qword_1003A0578);
          sub_1000094F4(v43, v29);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();
          sub_100009548(v43, v29);
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v89 = v69;
            *v68 = 136315138;
            v70 = Data.hexString()();
            v71 = sub_100008F6C(v70._countAndFlagsBits, v70._object, &v89);

            *(v68 + 4) = v71;
            _os_log_impl(&_mh_execute_header, v66, v67, "invalid JSON: %s", v68, 0xCu);
            sub_10000959C(v69);
          }

          sub_10008671C();
          swift_allocError();
          *v72 = 2;
          swift_willThrow();
          return sub_100009548(v43, v29);
        }

        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      __break(1u);
      goto LABEL_142;
    }

    if (v29 == 102 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (!__OFADD__(v14, 5))
      {
        if (v14 + 5 >= v14)
        {
          v43 = Data._Representation.subscript.getter();
          v29 = v51;
          v52 = v83;
          static String.Encoding.utf8.getter();
          v53 = String.data(using:allowLossyConversion:)();
          v55 = v54;
          (*(v84 + 8))(v52, v85);
          if (v55 >> 60 != 15)
          {

            v56 = sub_10017688C(v43, v29, v53, v55);
            sub_10001A074(v53, v55);
            if (v56)
            {
              v57 = v87;
              *v88 = v14 + 4;
              v57[3] = &type metadata for Bool;
              result = sub_100009548(v43, v29);
              *v57 = 0;
              return result;
            }

            goto LABEL_124;
          }

          goto LABEL_148;
        }

LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v29 == 110 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (!__OFADD__(v14, 4))
      {
        if (v14 + 4 >= v14)
        {
          v43 = Data._Representation.subscript.getter();
          v29 = v58;
          v59 = v83;
          static String.Encoding.utf8.getter();
          v60 = String.data(using:allowLossyConversion:)();
          v62 = v61;
          (*(v84 + 8))(v59, v85);
          if (v62 >> 60 != 15)
          {

            v63 = sub_10017688C(v43, v29, v60, v62);
            sub_10001A074(v60, v62);
            if (v63)
            {
              result = sub_100009548(v43, v29);
              *v88 = v14 + 3;
              v64 = v87;
              *v87 = 0u;
              *(v64 + 1) = 0u;
              return result;
            }

            goto LABEL_124;
          }

LABEL_149:
          __break(1u);
LABEL_150:
          swift_once();
          goto LABEL_136;
        }

LABEL_145:
        __break(1u);
LABEL_146:
        swift_once();
LABEL_132:
        v75 = type metadata accessor for Logger();
        sub_10000403C(v75, qword_1003A0578);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_17;
        }

        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = "expecting JSON value";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

LABEL_17:

        sub_10008671C();
        swift_allocError();
        *v21 = 0;
        return swift_willThrow();
      }

LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v29 == 34 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      result = sub_100085B74(v88);
      v74 = v87;
      if (!v3)
      {
        v87[3] = &type metadata for KCSOTAResponseParser.StringIntermediate;
        *v74 = result;
        v74[1] = v73;
      }

      return result;
    }

    if (v29 == 45 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v29 == 48 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v29 == 49 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v29 == 50 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v29 == 51 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v29 == 52 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v29 == 53 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v29 == 54 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v29 == 55 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v29 == 56 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v29 == 57 && v27 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      result = sub_100086130(v88, v36);
      v37 = v87;
      if (!v3)
      {
        v87[3] = &type metadata for Int;
        *v37 = result;
      }

      return result;
    }

    if ((v29 != 10 || v27 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v29 != 13 || v27 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v29 != 32 || v27 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v29 != 9 || v27 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_135;
    }

    v31 = v14 + 1;
    v29 = 33217;
    v27 = 4;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    *v88 = v31;
    v32 = *(v2 + 16);
    v33 = *(v2 + 24);
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 == 2)
      {
        v35 = *(v32 + 24);
        goto LABEL_98;
      }

      if (v31 < 0)
      {
        goto LABEL_101;
      }

LABEL_131:
      if (qword_10039D390 == -1)
      {
        goto LABEL_132;
      }

      goto LABEL_146;
    }

    if (v34)
    {
      v35 = v32 >> 32;
    }

    else
    {
      v35 = BYTE6(v33);
    }

LABEL_98:
    if (v31 >= v35)
    {
      goto LABEL_131;
    }

LABEL_101:
    ++v14;
  }

  __break(1u);
LABEL_135:
  if (qword_10039D390 != -1)
  {
    goto LABEL_150;
  }

LABEL_136:
  v76 = type metadata accessor for Logger();
  sub_10000403C(v76, qword_1003A0578);

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v89 = v80;
    *v79 = 136315138;
    v81 = sub_100008F6C(v29, v27, &v89);

    *(v79 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v77, v78, "unexpected char %s", v79, 0xCu);
    sub_10000959C(v80);
  }

  else
  {
  }

  sub_10008671C();
  swift_allocError();
  *v82 = 3;
  return swift_willThrow();
}

uint64_t sub_1000845C8(uint64_t *a1, double a2)
{
  v4 = *(v2 + 24);
  v5 = v4 >> 62;
  if (v4 >> 62 == 3)
  {
    goto LABEL_60;
  }

  v7 = *(v2 + 16);
  for (i = *a1; ; ++i)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (i < v7 || i >= v7 >> 32)
        {
          goto LABEL_53;
        }

        v10 = __DataStorage._bytes.getter();
        if (!v10)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
        }

        v3 = v10;
        v11 = __DataStorage._offset.getter();
        v12 = i - v11;
        if (__OFSUB__(i, v11))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (i < *(v7 + 16))
        {
          goto LABEL_52;
        }

        if (i >= *(v7 + 24))
        {
          goto LABEL_54;
        }

        v15 = __DataStorage._bytes.getter();
        if (!v15)
        {
          goto LABEL_59;
        }

        v3 = v15;
        v16 = __DataStorage._offset.getter();
        v12 = i - v16;
        if (__OFSUB__(i, v16))
        {
          goto LABEL_56;
        }
      }

      v13 = *(v3 + v12);
      if ((v13 & 0x80) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (i >= BYTE6(v4))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v30 = v7;
      v31 = v4;
      v32 = BYTE2(v4);
      v33 = BYTE3(v4);
      v34 = BYTE4(v4);
      v35 = BYTE5(v4);
      v13 = *(&v30 + i);
      if ((v13 & 0x80) != 0)
      {
LABEL_16:
        v14 = ((v13 >> 6) & 0xFFFFC0FF | ((v13 & 0x3F) << 8)) + 33217;
        goto LABEL_23;
      }
    }

    v14 = v13 + 1;
LABEL_23:
    v30 = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v14) >> 3))));
    v3 = static String._uncheckedFromUTF8(_:)();
    v18 = v17;
    v19 = v3 == 13 && v17 == 0xE100000000000000;
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v20 = v3 == 10 && v18 == 0xE100000000000000;
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v3 != 32 || v18 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v3 != 9 || v18 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return v3;
      }
    }

    *a1 = i + 1;
    v21 = *(v2 + 16);
    v22 = *(v2 + 24);
    v23 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      break;
    }

    if (v23)
    {
      v9 = v21 >> 32;
    }

    else
    {
      v9 = BYTE6(v22);
    }

LABEL_4:
    if (i + 1 >= v9)
    {
      goto LABEL_45;
    }

LABEL_5:
    ;
  }

  if (v23 == 2)
  {
    v9 = *(v21 + 24);
    goto LABEL_4;
  }

  if (i <= -2)
  {
    goto LABEL_5;
  }

LABEL_45:
  if (qword_10039D390 == -1)
  {
    goto LABEL_46;
  }

LABEL_57:
  swift_once();
LABEL_46:
  v24 = type metadata accessor for Logger();
  sub_10000403C(v24, qword_1003A0578);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "expect ], }, : or string after whitespace", v27, 2u);
  }

  sub_10008671C();
  swift_allocError();
  *v28 = 0;
  swift_willThrow();
  return v3;
}

unint64_t sub_100084A30(uint64_t *a1)
{
  v3 = v1;
  v63 = sub_100182BA0(_swiftEmptyArrayStorage);
  v5 = *(v1 + 24);
  v6 = v5 >> 62;
  if (v5 >> 62 == 3)
  {
    goto LABEL_116;
  }

  v7 = 0;
  v61 = 0;
  v8 = *(v1 + 16);
  v59 = 0;
  v60 = v8;
  v58 = v8 >> 32;
  v56 = v8 >> 16;
  v57 = v8 >> 8;
  v54 = HIDWORD(v8);
  v55 = v8 >> 24;
  v9 = *a1;
  v52 = HIWORD(v8);
  v53 = v8 >> 40;
  v51 = HIBYTE(v8);
  v62 = v8;
  while (1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (v9 < v60 || v9 >= v58)
        {
          goto LABEL_107;
        }

        v11 = __DataStorage._bytes.getter();
        if (!v11)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
        }

        v12 = v11;
        v13 = __DataStorage._offset.getter();
        v14 = v9 - v13;
        if (__OFSUB__(v9, v13))
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v9 < *(v8 + 16))
        {
          __break(1u);
LABEL_106:
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
          goto LABEL_113;
        }

        if (v9 >= *(v8 + 24))
        {
          goto LABEL_108;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_115;
        }

        v12 = v17;
        v18 = __DataStorage._offset.getter();
        v14 = v9 - v18;
        if (__OFSUB__(v9, v18))
        {
          goto LABEL_110;
        }
      }

      v15 = *(v12 + v14);
      if ((v15 & 0x80) != 0)
      {
LABEL_15:
        v16 = ((v15 >> 6) & 0xFFFFC0FF | ((v15 & 0x3F) << 8)) + 33217;
        goto LABEL_22;
      }
    }

    else
    {
      if (v9 >= BYTE6(v5))
      {
        goto LABEL_106;
      }

      LOBYTE(v67) = v60;
      BYTE1(v67) = v57;
      BYTE2(v67) = v56;
      BYTE3(v67) = v55;
      BYTE4(v67) = v54;
      BYTE5(v67) = v53;
      BYTE6(v67) = v52;
      HIBYTE(v67) = v51;
      LOWORD(v68) = v5;
      BYTE2(v68) = BYTE2(v5);
      BYTE3(v68) = BYTE3(v5);
      BYTE4(v68) = BYTE4(v5);
      BYTE5(v68) = BYTE5(v5);
      v15 = *(&v67 + v9);
      if ((v15 & 0x80) != 0)
      {
        goto LABEL_15;
      }
    }

    v16 = v15 + 1;
LABEL_22:
    v67 = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v16) >> 3))));
    v19 = static String._uncheckedFromUTF8(_:)();
    if (v7 > 2u)
    {
      if (v7 == 3)
      {
        if (v19 == 58 && v20 == 0xE100000000000000)
        {
        }

        else
        {
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v30 & 1) == 0)
          {

            if (qword_10039D390 != -1)
            {
              swift_once();
            }

            v48 = type metadata accessor for Logger();
            sub_10000403C(v48, qword_1003A0578);
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v43, v44))
            {
              goto LABEL_104;
            }

            v45 = swift_slowAlloc();
            *v45 = 0;
            goto LABEL_103;
          }
        }

        *a1 = ++v9;
        v7 = 4;
        goto LABEL_69;
      }

      if (v7 != 4)
      {
        if (v19 == 44 && v20 == 0xE100000000000000)
        {
LABEL_61:

          goto LABEL_62;
        }

        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v36)
        {
LABEL_62:
          ++v9;
LABEL_68:
          *a1 = v9;
          v7 = 1;
          goto LABEL_69;
        }

        if (qword_10039D390 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_10000403C(v47, qword_1003A0578);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v43, v44))
        {
          goto LABEL_104;
        }

        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "expecting ','";
LABEL_103:
        _os_log_impl(&_mh_execute_header, v43, v44, v46, v45, 2u);

        goto LABEL_104;
      }

      if (v61)
      {
        sub_100083854(a1, &v67);
        if (v2)
        {
LABEL_89:
        }

        sub_100065074(&v67, &v65, &qword_10039E248, &qword_1002C23D0);
        if (v66)
        {
          sub_100019D3C(&v65, v64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_10017F944(v64, v59, v61, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          sub_10000BD44(&v65, &qword_10039E248, &qword_1002C23D0);
          sub_10017A9E0(v59, v61, v64);

          sub_10000BD44(v64, &qword_10039E248, &qword_1002C23D0);
        }

        sub_10000BD44(&v67, &qword_10039E248, &qword_1002C23D0);
        v9 = *a1 + 1;
        if (__OFADD__(*a1, 1))
        {
          goto LABEL_111;
        }

        v59 = 0;
        v61 = 0;
        goto LABEL_68;
      }

      if (qword_10039D390 == -1)
      {
LABEL_87:
        v42 = type metadata accessor for Logger();
        sub_10000403C(v42, qword_1003A0578);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v43, v44))
        {
LABEL_104:

          sub_10008671C();
          swift_allocError();
          *v50 = 0;
          return swift_willThrow();
        }

        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "coding key missing";
        goto LABEL_103;
      }

LABEL_113:
      swift_once();
      goto LABEL_87;
    }

    if (!v7)
    {
      if (v19 != 123 || v20 != 0xE100000000000000)
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v28 & 1) == 0)
        {

          if (qword_10039D390 != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          sub_10000403C(v49, qword_1003A0578);
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v43, v44))
          {
            goto LABEL_104;
          }

          v45 = swift_slowAlloc();
          *v45 = 0;
          v46 = "expecting '{'";
          goto LABEL_103;
        }

        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v7 == 1)
    {
      break;
    }

    v31 = sub_100085B74(a1);
    if (v2)
    {
    }

    v33 = v31;
    v34 = v32;
    type metadata accessor for JSONDecoder();
    sub_10009A814(_swiftEmptyArrayStorage);
    static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
    sub_100009548(v33, v34);

    v9 = *a1 + 1;
    if (__OFADD__(*a1, 1))
    {
      goto LABEL_112;
    }

    v59 = v67;
    v61 = v68;
    v7 = 1;
    *a1 = v9;
LABEL_69:
    v37 = *(v3 + 16);
    v38 = *(v3 + 24);
    v39 = v38 >> 62;
    if ((v38 >> 62) <= 1)
    {
      if (v39)
      {
        v10 = v37 >> 32;
      }

      else
      {
        v10 = BYTE6(v38);
      }

      goto LABEL_4;
    }

    if (v39 == 2)
    {
      v10 = *(v37 + 24);
LABEL_4:
      v8 = v62;
      if (v9 >= v10)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v8 = v62;
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_84;
      }
    }
  }

  v22 = sub_1000845C8(a1, v21);
  if (v2)
  {
    goto LABEL_89;
  }

  v24 = v22;
  v25 = v23;
  if ((v22 != 125 || v23 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v24 == 58 && v25 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v7 = 3;
    }

    else if (v24 == 44 && v25 == 0xE100000000000000)
    {

      v7 = 5;
    }

    else
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v40)
      {
        v7 = 5;
      }

      else
      {
        v7 = 2;
      }
    }

    v9 = *a1;
    goto LABEL_69;
  }

LABEL_84:

  return v63;
}

char *sub_1000853D4(uint64_t *a1, double a2)
{
  v4 = *(v2 + 24);
  v5 = v4 >> 62;
  if (v4 >> 62 == 3)
  {
    goto LABEL_101;
  }

  v6 = v2;
  v8 = 0;
  v9 = *(v2 + 16);
  v57 = v9;
  v55 = v9 >> 32;
  v56 = _swiftEmptyArrayStorage;
  v53 = v9 >> 16;
  v54 = v9 >> 8;
  v51 = HIDWORD(v9);
  v52 = v9 >> 24;
  v49 = HIWORD(v9);
  v50 = v9 >> 40;
  v10 = *a1;
  v48 = HIBYTE(v9);
  v58 = v9;
  while (1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v10 < v57 || v10 >= v55)
        {
          goto LABEL_93;
        }

        v12 = __DataStorage._bytes.getter();
        if (!v12)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
        }

        v13 = v12;
        v14 = __DataStorage._offset.getter();
        v15 = v10 - v14;
        if (__OFSUB__(v10, v14))
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (v10 < *(v9 + 16))
        {
          goto LABEL_92;
        }

        if (v10 >= *(v9 + 24))
        {
          goto LABEL_94;
        }

        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
          goto LABEL_100;
        }

        v13 = v18;
        v19 = __DataStorage._offset.getter();
        v15 = v10 - v19;
        if (__OFSUB__(v10, v19))
        {
          goto LABEL_96;
        }
      }

      v16 = *(v13 + v15);
      if ((v16 & 0x80) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 >= BYTE6(v4))
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        swift_once();
LABEL_82:
        v44 = type metadata accessor for Logger();
        sub_10000403C(v44, qword_1003A0578);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v40, v41))
        {
          goto LABEL_89;
        }

        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = "expecting ','";
        goto LABEL_88;
      }

      LOBYTE(v61[0]) = v57;
      BYTE1(v61[0]) = v54;
      BYTE2(v61[0]) = v53;
      BYTE3(v61[0]) = v52;
      BYTE4(v61[0]) = v51;
      BYTE5(v61[0]) = v50;
      BYTE6(v61[0]) = v49;
      BYTE7(v61[0]) = v48;
      WORD4(v61[0]) = v4;
      BYTE10(v61[0]) = BYTE2(v4);
      BYTE11(v61[0]) = BYTE3(v4);
      BYTE12(v61[0]) = BYTE4(v4);
      BYTE13(v61[0]) = BYTE5(v4);
      v16 = *(v61 + v10);
      if ((v16 & 0x80) != 0)
      {
LABEL_15:
        v17 = ((v16 >> 6) & 0xFFFFC0FF | ((v16 & 0x3F) << 8)) + 33217;
        goto LABEL_22;
      }
    }

    v17 = v16 + 1;
LABEL_22:
    *&v61[0] = (v17 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v17) >> 3))));
    v20 = static String._uncheckedFromUTF8(_:)();
    if (v8 <= 1u)
    {
      break;
    }

    if (v8 == 2)
    {

      sub_100083854(a1, v59);
      if (v3)
      {
        goto LABEL_80;
      }

      if (v60)
      {
        sub_100019D3C(v59, v61);
        sub_10000BDA4(v61, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_10004DB7C(0, *(v56 + 2) + 1, 1, v56);
        }

        v32 = *(v56 + 2);
        v31 = *(v56 + 3);
        if (v32 >= v31 >> 1)
        {
          v56 = sub_10004DB7C((v31 > 1), v32 + 1, 1, v56);
        }

        sub_10000959C(v61);
        *(v56 + 2) = v32 + 1;
        sub_100019D3C(v59, &v56[32 * v32 + 32]);
      }

      else
      {
        sub_10000BD44(v59, &qword_10039E248, &qword_1002C23D0);
      }

      v10 = *a1 + 1;
      if (__OFADD__(*a1, 1))
      {
        goto LABEL_97;
      }

      goto LABEL_56;
    }

    if (v8 != 3)
    {
      if (v20 == 93 && v21 == 0xE100000000000000)
      {
LABEL_80:

        return v56;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        return v56;
      }

      if (qword_10039D390 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000403C(v39, qword_1003A0578);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = "expecting ']'";
LABEL_88:
        _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);

        goto LABEL_89;
      }

      goto LABEL_89;
    }

    if (v20 == 44 && v21 == 0xE100000000000000)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {

        if (qword_10039D390 == -1)
        {
          goto LABEL_82;
        }

        goto LABEL_98;
      }
    }

    *a1 = ++v10;
    v8 = 2;
LABEL_57:
    v33 = *(v6 + 16);
    v34 = *(v6 + 24);
    v35 = v34 >> 62;
    if ((v34 >> 62) <= 1)
    {
      if (v35)
      {
        v11 = v33 >> 32;
      }

      else
      {
        v11 = BYTE6(v34);
      }

      goto LABEL_4;
    }

    if (v35 == 2)
    {
      v11 = *(v33 + 24);
LABEL_4:
      v9 = v58;
      if (v10 >= v11)
      {
        return v56;
      }
    }

    else
    {
      v9 = v58;
      if ((v10 & 0x8000000000000000) == 0)
      {
        return v56;
      }
    }
  }

  if (v8)
  {

    v27 = sub_1000845C8(a1, v26);
    if (v3)
    {
      goto LABEL_80;
    }

    v29 = v28;
    if (v27 == 93 && v28 == 0xE100000000000000 || (v30 = v27, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v8 = 4;
    }

    else if (v30 == 44 && v29 == 0xE100000000000000)
    {

      v8 = 3;
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }
    }

    v10 = *a1;
    goto LABEL_57;
  }

  if (v20 == 91 && v21 == 0xE100000000000000)
  {

    ++v10;
    goto LABEL_56;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    ++v10;
LABEL_56:
    *a1 = v10;
    v8 = 1;
    goto LABEL_57;
  }

  if (qword_10039D390 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_10000403C(v45, qword_1003A0578);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "expecting '['";
    goto LABEL_88;
  }

LABEL_89:

  sub_10008671C();
  swift_allocError();
  *v46 = 0;
  swift_willThrow();
  return v56;
}

uint64_t sub_100085B74(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = Data._Representation.subscript.getter();
  v5 = (v4 + 1);
  if ((v4 & 0x80) != 0)
  {
    v5 = (((v4 & 0x3F) << 8) | (v4 >> 6)) + 33217;
  }

  v44 = (v5 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v5) >> 3))));
  if (static String._uncheckedFromUTF8(_:)() == 34 && v6 == 0xE100000000000000)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      if (qword_10039D390 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000403C(v10, qword_1003A0578);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_62;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "expecting string";
LABEL_61:
      _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);

LABEL_62:

      sub_10008671C();
      swift_allocError();
      *v41 = 0;
      return swift_willThrow();
    }
  }

  v15 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
LABEL_59:
    v40 = type metadata accessor for Logger();
    sub_10000403C(v40, qword_1003A0578);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_62;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "expecting  in string";
    goto LABEL_61;
  }

  v42 = v3;
  *a1 = v15;
  v16 = *(v1 + 24);
  v17 = v16 >> 62;
  if (v16 >> 62 == 3)
  {
    __break(1u);
    return result;
  }

  LOBYTE(v18) = 0;
  v19 = *(v1 + 16);
  while (1)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        if (v15 < v19 || v15 >= v19 >> 32)
        {
          goto LABEL_67;
        }

        v21 = __DataStorage._bytes.getter();
        if (!v21)
        {
          __break(1u);
LABEL_75:
          __break(1u);
        }

        v22 = v21;
        v23 = __DataStorage._offset.getter();
        v24 = v15 - v23;
        if (__OFSUB__(v15, v23))
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v15 < *(v19 + 16))
        {
          goto LABEL_66;
        }

        if (v15 >= *(v19 + 24))
        {
          goto LABEL_68;
        }

        v27 = __DataStorage._bytes.getter();
        if (!v27)
        {
          goto LABEL_75;
        }

        v22 = v27;
        v28 = __DataStorage._offset.getter();
        v24 = v15 - v28;
        if (__OFSUB__(v15, v28))
        {
          goto LABEL_70;
        }
      }

      v25 = *(v22 + v24);
      if ((v25 & 0x80) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v15 >= BYTE6(v16))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v44 = v19;
      v45 = v16;
      v46 = BYTE2(v16);
      v47 = BYTE3(v16);
      v48 = BYTE4(v16);
      v49 = BYTE5(v16);
      v25 = *(&v44 + v15);
      if ((v25 & 0x80) != 0)
      {
LABEL_29:
        v26 = ((v25 >> 6) & 0xFFFFC0FF | ((v25 & 0x3F) << 8)) + 33217;
        goto LABEL_36;
      }
    }

    v26 = v25 + 1;
LABEL_36:
    v44 = (v26 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v26) >> 3))));
    v29 = static String._uncheckedFromUTF8(_:)();
    v31 = v30;
    v32 = v29 == 92 && v30 == 0xE100000000000000;
    if (v32 || (v33 = v29, v34 = _stringCompareWithSmolCheck(_:_:expecting:)(), v29 = v33, (v34 & 1) != 0))
    {
      if ((v18 & 0xFE) == 0)
      {
        LOBYTE(v18) = 1;
      }
    }

    if (v29 != 34 || v31 != 0xE100000000000000)
    {
      break;
    }

    if (v18 != 2)
    {
      goto LABEL_63;
    }

    LOBYTE(v18) = 0;
LABEL_52:
    *a1 = v15 + 1;
    v37 = *(v2 + 16);
    v38 = *(v2 + 24);
    v39 = v38 >> 62;
    if ((v38 >> 62) <= 1)
    {
      if (v39)
      {
        v20 = v37 >> 32;
      }

      else
      {
        v20 = BYTE6(v38);
      }

LABEL_17:
      if (v15 + 1 >= v20)
      {
        goto LABEL_58;
      }

      goto LABEL_18;
    }

    if (v39 == 2)
    {
      v20 = *(v37 + 24);
      goto LABEL_17;
    }

    if (v15 > -2)
    {
LABEL_58:
      if (qword_10039D390 != -1)
      {
        goto LABEL_73;
      }

      goto LABEL_59;
    }

LABEL_18:
    ++v15;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18 == 2 || (v36 & 1) == 0)
  {
    v18 = 0x200u >> (8 * v18);
    goto LABEL_52;
  }

LABEL_63:
  if (v15 + 1 < v42)
  {
    goto LABEL_72;
  }

  return Data._Representation.subscript.getter();
}

uint64_t sub_100086130(uint64_t *a1, double a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v26 = 0;
      goto LABEL_9;
    }

    v7 = *(v4 + 24);
  }

  else if (v6)
  {
    v7 = v4 >> 32;
  }

  else
  {
    v7 = BYTE6(v5);
  }

  v26 = v7;
LABEL_9:
  if (v6 == 3)
  {
    goto LABEL_57;
  }

  v8 = *a1;
  v28 = *a1;
  while (1)
  {
    if (v6 == 1)
    {
      if (v8 < v4 || v8 >= v4 >> 32)
      {
        goto LABEL_49;
      }

      v12 = __DataStorage._bytes.getter();
      if (!v12)
      {
        goto LABEL_55;
      }

      v13 = v12;
      v14 = __DataStorage._offset.getter();
      v15 = v8 - v14;
      if (__OFSUB__(v8, v14))
      {
        goto LABEL_51;
      }

      goto LABEL_29;
    }

    if (v6)
    {
      if (v8 < *(v4 + 16))
      {
        goto LABEL_48;
      }

      if (v8 >= *(v4 + 24))
      {
        goto LABEL_50;
      }

      v16 = __DataStorage._bytes.getter();
      if (!v16)
      {
        goto LABEL_56;
      }

      v13 = v16;
      v17 = __DataStorage._offset.getter();
      v15 = v8 - v17;
      if (__OFSUB__(v8, v17))
      {
        goto LABEL_52;
      }

LABEL_29:
      v10 = *(v13 + v15);
      if ((v10 & 0x80) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }

    if (v8 >= BYTE6(v5))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v29 = v4;
    v30 = v5;
    v31 = BYTE2(v5);
    v32 = BYTE3(v5);
    v33 = BYTE4(v5);
    v34 = BYTE5(v5);
    v10 = *(&v29 + v8);
    if ((v10 & 0x80) != 0)
    {
LABEL_18:
      v11 = ((v10 >> 6) & 0xFFFFC0FF | ((v10 & 0x3F) << 8)) + 33217;
      goto LABEL_31;
    }

LABEL_30:
    v11 = v10 + 1;
LABEL_31:
    v29 = (v11 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v11) >> 3))));
    static String._uncheckedFromUTF8(_:)();
    if (Character.isNumber.getter())
    {

      goto LABEL_34;
    }

    v18 = Character.isMathSymbol.getter();

    if ((v18 & 1) == 0)
    {
      break;
    }

LABEL_34:
    *a1 = v8 + 1;
    v19 = *(v2 + 16);
    v20 = *(v2 + 24);
    v21 = v20 >> 62;
    if ((v20 >> 62) <= 1)
    {
      if (v21)
      {
        v9 = v19 >> 32;
      }

      else
      {
        v9 = BYTE6(v20);
      }

LABEL_12:
      if (v8 + 1 >= v9)
      {
        goto LABEL_40;
      }

      goto LABEL_13;
    }

    if (v21 == 2)
    {
      v9 = *(v19 + 24);
      goto LABEL_12;
    }

    if (v8 >= -1)
    {
LABEL_40:
      v8 = v26;
      goto LABEL_43;
    }

LABEL_13:
    ++v8;
  }

  if (__OFSUB__(v8, 1))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  *a1 = v8 - 1;
LABEL_43:
  type metadata accessor for JSONDecoder();
  if (v8 < v28)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v22 = Data._Representation.subscript.getter();
  v24 = v23;
  sub_10009A814(_swiftEmptyArrayStorage);
  static JSONDecoder.decodeClean<A>(_:from:userInfo:)();

  result = sub_100009548(v22, v24);
  if (!v27)
  {
    return v29;
  }

  return result;
}

void *sub_1000864B8@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24) >> 62;
  if (v7 > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(v6 + 16);
    }
  }

  else if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  result = sub_100083854(&v18, v16);
  if (!v3)
  {
    if (v16[3])
    {
      sub_100004074(&qword_1003A0190, &unk_1002C4040);
      if (swift_dynamicCast())
      {
        sub_1000890E0(v15, a1 & 1, __src);

        return memcpy(a2, __src, 0x111uLL);
      }
    }

    else
    {
      sub_10000BD44(v16, &qword_10039E248, &qword_1002C23D0);
    }

    if (qword_10039D390 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000403C(v10, qword_1003A0578);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "unexpected JSON object", v13, 2u);
    }

    sub_10008671C();
    swift_allocError();
    *v14 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000866C0()
{
  sub_100009548(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_10008671C()
{
  result = qword_1003A0690;
  if (!qword_1003A0690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0690);
  }

  return result;
}

unint64_t sub_100086770(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  _StringGuts.grow(_:)(32);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x747069726373202CLL;
  v9._object = 0xEA0000000000203ALL;
  String.append(_:)(v9);
  if (a4 >> 60 == 15)
  {
    v10 = 0xE400000000000000;
    v11 = 1819047278;
  }

  else
  {
    v11 = sub_100086870(a3, a4);
    v10 = v12;
  }

  v13 = v10;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0xD000000000000011;
}

uint64_t sub_100086870(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || !__OFSUB__(*(result + 24), *(result + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
LABEL_9:
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 0x3E736574796220;
    v4._object = 0xE700000000000000;
    String.append(_:)(v4);
    return 60;
  }

  __break(1u);
  return result;
}

uint64_t sub_100086964(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A06E0, &qword_1002C4938);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BE18(a1, a1[3]);
  sub_10008B474();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_1000430C8(&qword_10039FBD8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v3[1];
  HIBYTE(v10) = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v11) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v11) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100086B8C()
{
  v1 = 0x6941737361707962;
  v2 = 0x437972746E756F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x4374726F70707573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100086C24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008B044(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100086C4C(uint64_t a1)
{
  v2 = sub_10008B474();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086C88(uint64_t a1)
{
  v2 = sub_10008B474();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100086CC4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10008B1C4(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

BOOL sub_100086D24(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_10008791C(&v5, &v7);
}

uint64_t sub_100086D70()
{
  _StringGuts.grow(_:)(55);
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v1._object = 0x8000000100349090;
  String.append(_:)(v1);
  if (*(v0 + 32) == 1)
  {
    v2 = 0xE400000000000000;
    v3 = 1819047278;
  }

  else
  {
    v3 = sub_1000835EC();
    v2 = v4;
  }

  v5 = v2;
  String.append(_:)(*&v3);

  v6._object = 0x80000001003490B0;
  v6._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v6);
  v7._countAndFlagsBits = sub_100086770(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0;
}

BOOL sub_100086E90(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1000879EC(v7, v9);
}

void sub_100086EEC()
{
  v1 = 1819047278;
  _StringGuts.grow(_:)(176);
  v2._object = 0x8000000100348FB0;
  v2._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v2);

  v3 = Array.description.getter();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._object = 0x8000000100348FD0;
  v7._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v7);
  v8 = v0[2];
  if (v8 >> 60 != 15)
  {
    v11 = v0[1];
    v12 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_11;
      }

      v15 = v11 + 16;
      v13 = *(v11 + 16);
      v14 = *(v15 + 8);
      v16 = __OFSUB__(v14, v13);
      v11 = v14 - v13;
      if (!v16)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    else if (!v12)
    {
LABEL_11:
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 0x3E736574796220;
      v18._object = 0xE700000000000000;
      String.append(_:)(v18);
      v10 = 60;
      v9 = 0xE100000000000000;
      goto LABEL_12;
    }

    if (__OFSUB__(HIDWORD(v11), v11))
    {
      __break(1u);
      return;
    }

    goto LABEL_11;
  }

  v9 = 0xE400000000000000;
  v10 = 1819047278;
LABEL_12:
  v19 = v9;
  String.append(_:)(*&v10);

  v20._object = 0x8000000100348FF0;
  v20._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v20);
  v21 = v0[4];
  if (v21)
  {
    v22 = sub_100086770(v0[3], v21, v0[5], v0[6]);
    v24 = v23;
  }

  else
  {
    v24 = 0xE400000000000000;
    v22 = 1819047278;
  }

  v25 = v24;
  String.append(_:)(*&v22);

  v26._countAndFlagsBits = 0x6F4365726F63202CLL;
  v26._object = 0xEE00203A6769666ELL;
  String.append(_:)(v26);
  v27 = v0[8];
  if (v27)
  {
    v28 = sub_100086770(v0[7], v27, v0[9], v0[10]);
    v30 = v29;
  }

  else
  {
    v30 = 0xE400000000000000;
    v28 = 1819047278;
  }

  v31 = v30;
  String.append(_:)(*&v28);

  v32._countAndFlagsBits = 0xD000000000000018;
  v32._object = 0x8000000100349010;
  String.append(_:)(v32);
  v33._countAndFlagsBits = sub_100086D70();
  String.append(_:)(v33);

  v34._object = 0x8000000100349030;
  v34._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v34);
  if (v0[22])
  {
    v1 = sub_100086D70();
    v36 = v35;
  }

  else
  {
    v36 = 0xE400000000000000;
  }

  v37._countAndFlagsBits = v1;
  v37._object = v36;
  String.append(_:)(v37);

  v38._object = 0x8000000100349050;
  v38._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v38);

  v39 = Array.description.getter();
  v41 = v40;

  v42._countAndFlagsBits = v39;
  v42._object = v41;
  String.append(_:)(v42);

  v43._countAndFlagsBits = 0x6C656E72656B202CLL;
  v43._object = 0xED0000203A70614DLL;
  String.append(_:)(v43);
  if (v0[33] >> 60 == 15)
  {
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
  }

  else
  {
    v46 = Data.hexString()();
    countAndFlagsBits = v46._countAndFlagsBits;
    object = v46._object;
  }

  v47 = object;
  String.append(_:)(*&countAndFlagsBits);

  v48._countAndFlagsBits = 41;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
}

uint64_t sub_100087320(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x111uLL);
  memcpy(__dst, a2, 0x111uLL);
  return sub_100087D3C(v4, __dst) & 1;
}

uint64_t sub_100087378@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_1001714C8(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_100171464(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = Data._Representation.subscript.getter();
    v14 = v13;
    result = sub_100009548(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

id sub_1000874C4(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_10008761C(void *a1)
{
  v3 = 0;
  if ([a1 closeAndReturnError:&v3])
  {

    return _objc_retain_x1();
  }

  else
  {
    v1 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000876FC()
{
  v1 = *v0;
  v2 = v0[1] >> 62;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_9;
    }

    v5 = v1 + 16;
    v3 = *(v1 + 16);
    v4 = *(v5 + 8);
    v6 = __OFSUB__(v4, v3);
    v1 = v4 - v3;
    if (!v6)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_9:
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 0x3E736574796220;
    v8._object = 0xE700000000000000;
    String.append(_:)(v8);
    return;
  }

  __break(1u);
}

uint64_t sub_1000877E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a4 >> 60 == 15)
    {
      if (a8 >> 60 == 15)
      {
        sub_10001A3E8(a3, a4);
        sub_10001A3E8(a7, a8);
LABEL_11:
        sub_10001A074(a3, a4);
        return 1;
      }
    }

    else if (a8 >> 60 != 15)
    {
      sub_10001A3E8(a3, a4);
      sub_10001A3E8(a7, a8);
      v16 = sub_10017688C(a3, a4, a7, a8);
      sub_10001A074(a7, a8);
      if (v16)
      {
        goto LABEL_11;
      }

      v14 = a3;
      v15 = a4;
LABEL_9:
      sub_10001A074(v14, v15);
      return 0;
    }

    sub_10001A3E8(a3, a4);
    sub_10001A3E8(a7, a8);
    sub_10001A074(a3, a4);
    v14 = a7;
    v15 = a8;
    goto LABEL_9;
  }

  return result;
}

BOOL sub_10008791C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (!v5 || (sub_10015140C(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a2[1];
  if (v6)
  {
    if (!v7 || (sub_10015140C(v6, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8)
  {
    if (!v9 || (a1[2] != a2[2] || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a2 + 40);
  if ((a1[5] & 1) == 0)
  {
    if (a1[4] != a2[4])
    {
      v10 = 1;
    }

    return (v10 & 1) == 0;
  }

  return (a2[5] & 1) != 0;
}

BOOL sub_1000879EC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 1);
    v36 = *(a2 + 16);
    v37 = v7;
    v8 = v7;
    v9 = v36;
    if (*(&v7 + 1) >> 60 == 15)
    {
      if (*(&v36 + 1) >> 60 == 15)
      {
        sub_100065074(&v37, v40, &qword_1003A06E8, &qword_1002C4940);
        sub_100065074(&v36, v40, &qword_1003A06E8, &qword_1002C4940);
LABEL_13:
        sub_10001A074(v8, *(&v8 + 1));
        v13 = a1[4];
        v14 = a1[5];
        v16 = a1[6];
        v15 = a1[7];
        v17 = a1[8];
        v18 = *(a1 + 72);
        v20 = *(a2 + 32);
        v19 = *(a2 + 40);
        v22 = *(a2 + 48);
        v21 = *(a2 + 56);
        v23 = *(a2 + 64);
        v24 = *(a2 + 72);
        if (v13 == 1)
        {
          if (v20 == 1)
          {
            return 1;
          }
        }

        else if (v20 != 1)
        {
          v40[0] = *(a2 + 32);
          v40[1] = v19;
          v40[2] = v22;
          v40[3] = v21;
          v40[4] = v23;
          v41 = v24 & 1;
          v38[0] = v13;
          v38[1] = v14;
          v38[2] = v16;
          v38[3] = v15;
          v38[4] = v17;
          v39 = v18 & 1;
          v33 = v14;
          v29 = v15;
          v30 = v16;
          v31 = v21;
          v32 = v22;
          v34 = sub_10008791C(v38, v40);
          sub_100082A7C(v20, v19, v32, v31);
          sub_100082A7C(v13, v33, v30, v29);

          sub_100082AD0(v13, v33, v30, v29);
          return v34;
        }

        v25 = *(a2 + 32);
        v26 = *(a2 + 40);
        v27 = *(a2 + 48);
        v35 = v27;
        v28 = *(a2 + 56);
        sub_100082A7C(v25, v26, v27, v21);
        sub_100082A7C(v13, v14, v16, v15);
        sub_100082AD0(v13, v14, v16, v15);
        sub_100082AD0(v20, v19, v35, v28);
        return 0;
      }
    }

    else if (*(&v36 + 1) >> 60 != 15)
    {
      sub_100065074(&v37, v40, &qword_1003A06E8, &qword_1002C4940);
      sub_100065074(&v36, v40, &qword_1003A06E8, &qword_1002C4940);
      v12 = sub_10017688C(v8, *(&v8 + 1), v9, *(&v9 + 1));
      sub_10001A074(v9, *(&v9 + 1));
      if (v12)
      {
        goto LABEL_13;
      }

      v11 = *(&v8 + 1);
      v10 = v8;
LABEL_11:
      sub_10001A074(v10, v11);
      return 0;
    }

    sub_100065074(&v37, v40, &qword_1003A06E8, &qword_1002C4940);
    sub_100065074(&v36, v40, &qword_1003A06E8, &qword_1002C4940);
    sub_10001A074(v8, *(&v8 + 1));
    v11 = *(&v9 + 1);
    v10 = v9;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100087D3C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      goto LABEL_30;
    }

    v6 = sub_100151598(v4, v5);

    if ((v6 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v5)
  {
    goto LABEL_30;
  }

  v7 = *(a1 + 1);
  v85 = *(a2 + 1);
  v86 = v7;
  v8 = *(&v7 + 1);
  v9 = v7;
  v11 = *(&v85 + 1);
  v10 = v85;
  if (*(&v7 + 1) >> 60 == 15)
  {
    if (*(&v85 + 1) >> 60 == 15)
    {
      sub_100065074(&v86, &v66, &qword_1003A06E8, &qword_1002C4940);
      sub_100065074(&v85, &v66, &qword_1003A06E8, &qword_1002C4940);
      goto LABEL_14;
    }

LABEL_10:
    v12 = &qword_1003A06E8;
    v13 = &qword_1002C4940;
    sub_100065074(&v86, &v66, &qword_1003A06E8, &qword_1002C4940);
    v14 = &v85;
    v15 = &v66;
LABEL_11:
    sub_100065074(v14, v15, v12, v13);
    sub_10001A074(v9, v8);
    v16 = v10;
    v17 = v11;
LABEL_12:
    sub_10001A074(v16, v17);
    goto LABEL_30;
  }

  if (*(&v85 + 1) >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_100065074(&v86, &v66, &qword_1003A06E8, &qword_1002C4940);
  sub_100065074(&v85, &v66, &qword_1003A06E8, &qword_1002C4940);
  v18 = sub_10017688C(v9, v8, v10, v11);
  sub_10001A074(v10, v11);
  if (!v18)
  {
    v16 = v9;
    v17 = v8;
    goto LABEL_12;
  }

LABEL_14:
  sub_10001A074(v9, v8);
  v19 = *(a1 + 5);
  v83 = *(a1 + 3);
  v84 = v19;
  v20 = *(a2 + 5);
  v82[0] = *(a2 + 3);
  v82[1] = v20;
  v21 = v83;
  v22 = v84;
  v23 = v82[0];
  v24 = v20;
  if (!*(&v83 + 1))
  {
    if (!*(&v82[0] + 1))
    {
      sub_100065074(&v83, &v66, &qword_1003A06F0, &qword_1002C4948);
      sub_100065074(v82, &v66, &qword_1003A06F0, &qword_1002C4948);
      sub_10008A2BC(v21, 0, v22, *(&v22 + 1));
      goto LABEL_22;
    }

LABEL_19:
    v66 = v83;
    v67 = v84;
    v68 = v82[0];
    v69[0] = v20;
    sub_100065074(&v83, v87, &qword_1003A06F0, &qword_1002C4948);
    v25 = v82;
LABEL_28:
    sub_100065074(v25, v87, &qword_1003A06F0, &qword_1002C4948);
    v32 = &unk_1003A06F8;
    v33 = &unk_1002C4950;
LABEL_29:
    sub_10000BD44(&v66, v32, v33);
    goto LABEL_30;
  }

  if (!*(&v82[0] + 1))
  {
    goto LABEL_19;
  }

  sub_100065074(&v83, &v66, &qword_1003A06F0, &qword_1002C4948);
  sub_100065074(v82, &v66, &qword_1003A06F0, &qword_1002C4948);
  v57 = sub_1000877E0(v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1));
  sub_10008A2BC(v23, *(&v23 + 1), v24, *(&v24 + 1));
  sub_10008A2BC(v21, *(&v21 + 1), v22, *(&v22 + 1));
  if ((v57 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_22:
  v26 = *(a1 + 9);
  v80 = *(a1 + 7);
  v81 = v26;
  v27 = *(a2 + 9);
  v79[0] = *(a2 + 7);
  v79[1] = v27;
  v28 = v80;
  v29 = v81;
  v30 = v79[0];
  v31 = v27;
  if (!*(&v80 + 1))
  {
    if (!*(&v79[0] + 1))
    {
      sub_100065074(&v80, &v66, &qword_1003A06F0, &qword_1002C4948);
      sub_100065074(v79, &v66, &qword_1003A06F0, &qword_1002C4948);
      sub_10008A2BC(v28, 0, v29, *(&v29 + 1));
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (!*(&v79[0] + 1))
  {
LABEL_27:
    v66 = v80;
    v67 = v81;
    v68 = v79[0];
    v69[0] = v27;
    sub_100065074(&v80, v87, &qword_1003A06F0, &qword_1002C4948);
    v25 = v79;
    goto LABEL_28;
  }

  sub_100065074(&v80, &v66, &qword_1003A06F0, &qword_1002C4948);
  sub_100065074(v79, &v66, &qword_1003A06F0, &qword_1002C4948);
  v58 = sub_1000877E0(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1));
  sub_10008A2BC(v30, *(&v30 + 1), v31, *(&v31 + 1));
  sub_10008A2BC(v28, *(&v28 + 1), v29, *(&v29 + 1));
  if ((v58 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v36 = *(a1 + 13);
  v37 = *(a1 + 17);
  v77[2] = *(a1 + 15);
  v78[0] = v37;
  *(v78 + 9) = *(a1 + 145);
  v77[0] = *(a1 + 11);
  v77[1] = v36;
  v38 = *(a2 + 13);
  v39 = *(a2 + 17);
  v75[2] = *(a2 + 15);
  v76[0] = v39;
  *(v76 + 9) = *(a2 + 145);
  v75[0] = *(a2 + 11);
  v75[1] = v38;
  if (!sub_1000879EC(v77, v75))
  {
    goto LABEL_30;
  }

  v40 = *(a1 + 23);
  v41 = *(a1 + 27);
  v73[2] = *(a1 + 25);
  v74[0] = v41;
  *(v74 + 9) = *(a1 + 225);
  v73[0] = *(a1 + 21);
  v73[1] = v40;
  v42 = *(a2 + 23);
  v43 = *(a2 + 27);
  v71[2] = *(a2 + 25);
  v72[0] = v43;
  *(v72 + 9) = *(a2 + 225);
  v71[0] = *(a2 + 21);
  v71[1] = v42;
  v44 = v73[0];
  if (*(&v73[0] + 1))
  {
    if (*(&v71[0] + 1))
    {
      v59 = v71[0];
      v62[0] = *(a2 + 27);
      *(v62 + 9) = *(a2 + 225);
      v45 = *(a2 + 25);
      v60 = *(a2 + 23);
      v61 = v45;
      v66 = v71[0];
      v67 = v60;
      *(v69 + 9) = *(v62 + 9);
      v68 = v45;
      v69[0] = v62[0];
      v46 = *(a1 + 23);
      v47 = *(a1 + 25);
      v48 = *(a1 + 27);
      *&v88[9] = *(a1 + 225);
      v87[2] = v47;
      *v88 = v48;
      v87[1] = v46;
      v87[0] = v73[0];
      sub_100065074(v73, v63, &qword_1003A0698, &qword_1002C4D20);
      sub_100065074(v71, v63, &qword_1003A0698, &qword_1002C4D20);
      v49 = sub_1000879EC(v87, &v66);
      sub_10000BD44(&v59, &qword_1003A0698, &qword_1002C4D20);
      v63[0] = v44;
      v50 = *(a1 + 25);
      v63[1] = *(a1 + 23);
      v63[2] = v50;
      v64[0] = *(a1 + 27);
      *(v64 + 9) = *(a1 + 225);
      sub_10000BD44(v63, &qword_1003A0698, &qword_1002C4D20);
      if (!v49)
      {
        goto LABEL_30;
      }

      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (*(&v71[0] + 1))
  {
LABEL_39:
    v66 = v73[0];
    v51 = *(a1 + 25);
    v67 = *(a1 + 23);
    v68 = v51;
    v69[0] = *(a1 + 27);
    *(v69 + 9) = *(a1 + 225);
    v69[2] = v71[0];
    v52 = *(a2 + 25);
    v69[3] = *(a2 + 23);
    v69[4] = v52;
    v70[0] = *(a2 + 27);
    *(v70 + 9) = *(a2 + 225);
    sub_100065074(v73, v87, &qword_1003A0698, &qword_1002C4D20);
    sub_100065074(v71, v87, &qword_1003A0698, &qword_1002C4D20);
    v32 = &unk_1003A0700;
    v33 = &unk_1002C4958;
    goto LABEL_29;
  }

  v66 = *&v73[0];
  v53 = *(a1 + 25);
  v67 = *(a1 + 23);
  v68 = v53;
  v69[0] = *(a1 + 27);
  *(v69 + 9) = *(a1 + 225);
  sub_100065074(v73, v87, &qword_1003A0698, &qword_1002C4D20);
  sub_100065074(v71, v87, &qword_1003A0698, &qword_1002C4D20);
  sub_10000BD44(&v66, &qword_1003A0698, &qword_1002C4D20);
LABEL_41:
  v54 = a1[31];
  v55 = a2[31];
  if (v54)
  {
    if (!v55 || (sub_100151C68(v54, v55) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v55)
  {
    goto LABEL_30;
  }

  v63[0] = *(a1 + 16);
  v59 = *(a2 + 16);
  v8 = *(&v63[0] + 1);
  v9 = *&v63[0];
  v11 = *(&v59 + 1);
  v10 = v59;
  if (*(&v63[0] + 1) >> 60 == 15)
  {
    if (*(&v59 + 1) >> 60 == 15)
    {
      sub_100065074(v63, v65, &qword_1003A0438, &qword_1002C3DE0);
      sub_100065074(&v59, v65, &qword_1003A0438, &qword_1002C3DE0);
      sub_10001A074(v9, v8);
LABEL_52:
      v34 = *(a1 + 272) ^ *(a2 + 272) ^ 1;
      return v34 & 1;
    }

    goto LABEL_50;
  }

  if (*(&v59 + 1) >> 60 == 15)
  {
LABEL_50:
    v12 = &qword_1003A0438;
    v13 = &qword_1002C3DE0;
    sub_100065074(v63, v65, &qword_1003A0438, &qword_1002C3DE0);
    v14 = &v59;
    v15 = v65;
    goto LABEL_11;
  }

  sub_100065074(v63, v65, &qword_1003A0438, &qword_1002C3DE0);
  sub_100065074(&v59, v65, &qword_1003A0438, &qword_1002C3DE0);
  v56 = sub_10017688C(v9, v8, v10, v11);
  sub_10001A074(v10, v11);
  sub_10001A074(v9, v8);
  if (v56)
  {
    goto LABEL_52;
  }

LABEL_30:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_1000885C4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v12 = 0;
    v9 = 0xF000000000000000;
LABEL_21:
    sub_10008671C();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    return sub_10001A074(v12, v9);
  }

  v3 = sub_1000F5A28(25705, 0xE200000000000000);
  v4 = 0xF000000000000000;
  if (v5)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v3, &v17);
    v6 = swift_dynamicCast();
    if (v6)
    {
      v7 = v15;
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      v4 = v16;
    }

    if (*(a1 + 16))
    {
      goto LABEL_9;
    }

LABEL_18:
    v12 = 0;
    v9 = 0xF000000000000000;
    goto LABEL_20;
  }

  v7 = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

LABEL_9:
  v8 = sub_1000F5A28(0x747069726373, 0xE600000000000000);
  v9 = 0xF000000000000000;
  if (v10)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v8, &v17);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v15;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v9 = v16;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_20:
  if (v4 >> 60 == 15)
  {
    goto LABEL_21;
  }

  type metadata accessor for JSONDecoder();
  sub_10009A814(_swiftEmptyArrayStorage);
  static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
  if (v1)
  {
    sub_10001A074(v12, v9);
    sub_10001A074(v7, v4);
  }

  else
  {
    sub_10001A074(v7, v4);

    return v17;
  }
}

uint64_t sub_1000887EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (!*(result + 16))
  {
    v5 = 0;
    goto LABEL_17;
  }

  result = sub_1000F5A28(0x6941737361707962, 0xE900000000000064);
  if ((v4 & 1) == 0)
  {
    v5 = 0;
    if (*(v2 + 16))
    {
      goto LABEL_10;
    }

LABEL_17:
    v7 = 0;
    v8 = 0;
    v11 = 0xF000000000000000;
    goto LABEL_18;
  }

  sub_10000BDA4(*(v2 + 56) + 32 * result, &v57);
  sub_100004074(&qword_1003A06A8, &qword_1002C4058);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v55;
  }

  else
  {
    v5 = 0;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_17;
  }

LABEL_10:
  result = sub_1000F5A28(0x4374726F70707573, 0xED0000787254706ELL);
  if (v6)
  {
    sub_10000BDA4(*(v2 + 56) + 32 * result, &v57);
    sub_100004074(&qword_1003A06A8, &qword_1002C4058);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = v55;
    }

    else
    {
      v7 = 0;
    }

    if (!*(v2 + 16))
    {
LABEL_15:
      v8 = 0;
      v9 = 0;
      v10 = 1;
      v11 = 0xF000000000000000;
      if (!v5)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v7 = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_15;
    }
  }

  result = sub_1000F5A28(0x437972746E756F63, 0xEB0000000065646FLL);
  v11 = 0xF000000000000000;
  if (v38)
  {
    sub_10000BDA4(*(v2 + 56) + 32 * result, &v57);
    result = swift_dynamicCast();
    if (result)
    {
      v8 = v55;
    }

    else
    {
      v8 = 0;
    }

    if (result)
    {
      v11 = v56;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_18:
  if (*(v2 + 16) && (result = sub_1000F5A28(0xD000000000000012, 0x8000000100348F90), (v12 & 1) != 0))
  {
    sub_10000BDA4(*(v2 + 56) + 32 * result, &v57);
    result = swift_dynamicCast();
    if (result)
    {
      v9 = v55;
    }

    else
    {
      v9 = 0;
    }

    v10 = result ^ 1;
    if (!v5)
    {
LABEL_24:
      v13 = 0;
      if (!v7)
      {
        goto LABEL_54;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    if (!v5)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  v14 = *(v5 + 16);
  if (v14)
  {
    v42 = v10;
    v44 = v9;
    v46 = a2;
    v50 = v11;
    v52 = v7;
    v48 = v8;
    sub_10004E2DC(0, v14, 0);
    v13 = _swiftEmptyArrayStorage;
    result = type metadata accessor for JSONDecoder();
    v15 = 0;
    v16 = (v5 + 40);
    do
    {
      if (v15 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_65;
      }

      v17 = v5;
      v19 = *(v16 - 1);
      v18 = *v16;
      sub_1000094F4(v19, *v16);
      v20 = v59;
      static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
      v59 = v20;
      if (v20)
      {

        sub_100009548(v19, v18);
        sub_10001A074(v48, v50);
      }

      result = sub_100009548(v19, v18);
      v22 = v57;
      v21 = v58;
      v23 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v23 >= v24 >> 1)
      {
        result = sub_10004E2DC((v24 > 1), v23 + 1, 1);
      }

      ++v15;
      _swiftEmptyArrayStorage[2] = v23 + 1;
      v25 = &_swiftEmptyArrayStorage[2 * v23];
      v25[4] = v22;
      v25[5] = v21;
      v16 += 2;
      v5 = v17;
    }

    while (v14 != v15);

    a2 = v46;
    v8 = v48;
    v11 = v50;
    v7 = v52;
    v9 = v44;
    v10 = v42;
    if (!v52)
    {
      goto LABEL_54;
    }
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
    if (!v7)
    {
LABEL_54:
      v54 = 0;
      goto LABEL_57;
    }
  }

LABEL_36:
  v26 = *(v7 + 16);
  if (v26)
  {
    v43 = v10;
    v45 = v9;
    v47 = a2;
    v49 = v8;
    v51 = v11;
    sub_10004E2DC(0, v26, 0);
    result = type metadata accessor for JSONDecoder();
    v27 = 0;
    v28 = (v7 + 40);
    v29 = v59;
    v53 = v7;
    while (v27 < *(v7 + 16))
    {
      v30 = v26;
      v31 = *(v28 - 1);
      v32 = *v28;
      sub_1000094F4(v31, *v28);
      static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
      if (v29)
      {

        sub_100009548(v31, v32);
        sub_10001A074(v49, v51);
      }

      result = sub_100009548(v31, v32);
      v34 = v57;
      v33 = v58;
      v35 = _swiftEmptyArrayStorage[2];
      v36 = _swiftEmptyArrayStorage[3];
      if (v35 >= v36 >> 1)
      {
        result = sub_10004E2DC((v36 > 1), v35 + 1, 1);
      }

      ++v27;
      _swiftEmptyArrayStorage[2] = v35 + 1;
      v37 = &_swiftEmptyArrayStorage[2 * v35];
      v37[4] = v34;
      v37[5] = v33;
      v28 += 2;
      v26 = v30;
      v29 = 0;
      v7 = v53;
      if (v30 == v27)
      {
        v59 = 0;
        v54 = _swiftEmptyArrayStorage;

        a2 = v47;
        v8 = v49;
        v11 = v51;
        v9 = v45;
        v10 = v43;
        goto LABEL_57;
      }
    }

LABEL_65:
    __break(1u);
    return result;
  }

  v54 = _swiftEmptyArrayStorage;
LABEL_57:
  if (v11 >> 60 == 15)
  {
    v39 = 0;
    v40 = 0;
  }

  else
  {
    type metadata accessor for JSONDecoder();
    sub_1000094F4(v8, v11);
    sub_10009A814(_swiftEmptyArrayStorage);
    v41 = v59;
    static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
    v59 = v41;
    if (v41)
    {

      sub_10001A074(v8, v11);
      sub_10001A074(v8, v11);
    }

    sub_10001A074(v8, v11);
    sub_10001A074(v8, v11);

    v39 = v57;
    v40 = v58;
  }

  *a2 = v13;
  *(a2 + 8) = v54;
  *(a2 + 16) = v39;
  *(a2 + 24) = v40;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_100088EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v5 = sub_1000F5A28(0xD000000000000013, 0x8000000100348F70);
  if (v6)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v5, v23);
    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    if (swift_dynamicCast())
    {
      v7 = v27;
    }

    else
    {
      v7 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_16;
    }
  }

  v8 = sub_1000F5A28(0x666E6F4374736F68, 0xEA00000000006769);
  if (v9)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v8, v23);
    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    if (swift_dynamicCast())
    {
      v10 = v27;
    }

    else
    {
      v10 = 0;
    }

    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = 0;
  if (!v7)
  {
LABEL_15:

    sub_10008671C();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

LABEL_17:
  if (!v10)
  {
    goto LABEL_15;
  }

  v13 = sub_1000885C4(v7);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (v2)
  {
  }

  sub_1000887EC(v10, v24);
  v20 = v25;
  v21 = v26;

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  v22 = v24[1];
  *(a2 + 32) = v24[0];
  *(a2 + 48) = v22;
  *(a2 + 64) = v20;
  *(a2 + 72) = v21;
  return result;
}

uint64_t sub_1000890E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v6 = sub_1000F5A28(0xD000000000000012, 0x8000000100348ED0);
      v7 = 0xF000000000000000;
      if (v8)
      {
        sub_10000BDA4(*(a1 + 56) + 32 * v6, v132);
        v9 = swift_dynamicCast();
        if (v9)
        {
          v10 = v120;
        }

        else
        {
          v10 = 0;
        }

        if (v9)
        {
          v7 = *(&v120 + 1);
        }

        if (!*(a1 + 16))
        {
          goto LABEL_27;
        }

LABEL_21:
        v14 = sub_1000F5A28(0xD000000000000012, 0x8000000100348F50);
        if (v15)
        {
          sub_10000BDA4(*(a1 + 56) + 32 * v14, v132);
          sub_100004074(&qword_1003A0190, &unk_1002C4040);
          if (swift_dynamicCast())
          {
            v16 = v120;
          }

          else
          {
            v16 = 0;
          }

          if (!*(a1 + 16))
          {
            goto LABEL_104;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            goto LABEL_104;
          }

          v16 = 0;
        }

        v34 = sub_1000F5A28(0xD000000000000014, 0x8000000100348EF0);
        if (v35)
        {
          sub_10000BDA4(*(a1 + 56) + 32 * v34, v132);
          sub_100004074(&qword_1003A0190, &unk_1002C4040);
          if (swift_dynamicCast())
          {
            v17 = v120;
          }

          else
          {
            v17 = 0;
          }

          if (!*(a1 + 16))
          {
            goto LABEL_61;
          }

          goto LABEL_29;
        }

LABEL_28:
        v17 = 0;
        if (!*(a1 + 16))
        {
          goto LABEL_61;
        }

LABEL_29:
        v18 = sub_1000F5A28(0xD000000000000011, 0x8000000100348F10);
        if (v19)
        {
          sub_10000BDA4(*(a1 + 56) + 32 * v18, v132);
          sub_100004074(&qword_1003A0190, &unk_1002C4040);
          if (swift_dynamicCast())
          {
            v20 = v120;
          }

          else
          {
            v20 = 0;
          }

          if (!v16)
          {
            goto LABEL_104;
          }

LABEL_62:
          if (v17)
          {
            if (v20)
            {
              sub_100088EA4(v20, v151);
              if (v3)
              {
                sub_10001A074(v10, v7);

LABEL_114:
              }

              v104 = a3;

              v149 = v151[2];
              v150[0] = v152[0];
              *(v150 + 9) = *(v152 + 9);
              v147 = v151[0];
              v148 = v151[1];
            }

            else
            {
              v104 = a3;
              v149 = 0u;
              memset(v150, 0, 25);
              v147 = 0u;
              v148 = 0u;
            }

            if (v7 >> 60 == 15)
            {
              v52 = 0;
            }

            else
            {
              v52 = v10;
            }

            if (v7 >> 60 == 15)
            {
              v53 = 0xF000000000000000;
            }

            else
            {
              v53 = v7;
            }

            sub_10001A3E8(v10, v7);
            v54 = sub_1000885C4(v16);
            if (v3)
            {
              sub_10000BD44(&v147, &qword_1003A0698, &qword_1002C4D20);
              sub_10001A074(v10, v7);
              sub_10001A074(v10, v7);
              goto LABEL_114;
            }

            v58 = v55;
            v113 = v56;
            v167 = v57;
            v110 = v54;

            sub_100088EA4(v17, &v153);
            sub_10001A074(v10, v7);

            sub_10001A074(0, 0xF000000000000000);
            sub_10008A2BC(0, 0, 0, 0);
            v118 = 0u;
            memset(v119, 0, sizeof(v119));
            v116 = 0u;
            v117 = 0u;
            sub_10000BD44(&v116, &qword_1003A0698, &qword_1002C4D20);
            *&v121[72] = v153;
            *&v124[9] = *(v156 + 9);
            *v124 = v156[0];
            v123 = v155;
            v122 = v154;
            memset(&v121[40], 0, 32);
            memset(&v132[56], 0, 32);
            v134 = v154;
            *&v120 = 0;
            *(&v120 + 1) = v52;
            *v121 = v53;
            *&v121[8] = v110;
            *&v121[16] = v58;
            *&v121[24] = v113;
            *&v121[32] = v167;
            v125 = v147;
            v126 = v148;
            v127 = v149;
            *v128 = v150[0];
            *&v128[16] = *&v150[1];
            v128[24] = BYTE8(v150[1]);
            v129 = 0uLL;
            v130 = 0xF000000000000000;
            v131 = 1;
            *v132 = 0;
            *&v132[8] = v52;
            *&v132[16] = v53;
            *&v132[24] = v110;
            *&v132[32] = v58;
            *&v132[40] = v113;
            v135 = v155;
            v136[0] = v156[0];
            *(v136 + 9) = *(v156 + 9);
            v133 = v153;
            *&v132[48] = v167;
            v137 = v147;
            v138 = v148;
            v139 = v149;
            v140 = v150[0];
            v141 = *&v150[1];
            v142 = BYTE8(v150[1]);
            v144 = 0;
            v143 = 0;
            v145 = 0xF000000000000000;
            v146 = 1;
            sub_100081A7C(&v120, v115);
            result = sub_100081AD8(v132);
            v60 = v131;
            v61 = v130;
            v62 = v129;
            v63 = *&v121[16];
            v64 = *&v121[32];
            v66 = v120;
            v65 = *v121;
            v67 = v123;
            v68 = *v124;
            v69 = v124[24];
            v70 = *&v121[48];
            v71 = *&v121[64];
            v72 = *&v124[16];
            v73 = *&v121[80];
            v74 = v122;
            *(v166 + 9) = *&v128[9];
            v165 = v127;
            v166[0] = *v128;
            v163 = v125;
            v164 = v126;
            a3 = v104;
            goto LABEL_119;
          }

LABEL_104:

          sub_10008671C();
          swift_allocError();
          *v51 = 1;
          swift_willThrow();
          return sub_10001A074(v10, v7);
        }

LABEL_61:
        v20 = 0;
        if (!v16)
        {
          goto LABEL_104;
        }

        goto LABEL_62;
      }

      v10 = 0;
      if (*(a1 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0;
      v7 = 0xF000000000000000;
    }

LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 16))
  {
    v13 = 0;
    goto LABEL_48;
  }

  v11 = sub_1000F5A28(0x736B706163, 0xE500000000000000);
  if (v12)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v11, v132);
    sub_100004074(&qword_1003A06A8, &qword_1002C4058);
    if (swift_dynamicCast())
    {
      v13 = v120;
    }

    else
    {
      v13 = 0;
    }

    if (!*(a1 + 16))
    {
LABEL_48:
      v25 = 0;
      v112 = 0;
      v22 = 0xF000000000000000;
      if (!*(a1 + 16))
      {
        goto LABEL_71;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v13 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_48;
    }
  }

  v21 = sub_1000F5A28(0xD000000000000012, 0x8000000100348ED0);
  v22 = 0xF000000000000000;
  if ((v23 & 1) == 0)
  {
    v25 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_43;
    }

LABEL_68:
    v112 = 0;
    goto LABEL_71;
  }

  sub_10000BDA4(*(a1 + 56) + 32 * v21, v132);
  v24 = swift_dynamicCast();
  if (v24)
  {
    v25 = v120;
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v22 = *(&v120 + 1);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_68;
  }

LABEL_43:
  v26 = sub_1000F5A28(0x666E6F4365726F63, 0xEA00000000006769);
  if (v27)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v26, v132);
    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    v28 = swift_dynamicCast();
    v29 = v120;
    if (!v28)
    {
      v29 = 0;
    }

    v112 = v29;
    if (!*(a1 + 16))
    {
      goto LABEL_71;
    }
  }

  else
  {
    v112 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_71;
    }
  }

LABEL_49:
  v30 = sub_1000F5A28(0xD000000000000014, 0x8000000100348EF0);
  if (v31)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v30, v132);
    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    v32 = swift_dynamicCast();
    v33 = v120;
    if (!v32)
    {
      v33 = 0;
    }

    v167 = v33;
    if (!*(a1 + 16))
    {
      goto LABEL_53;
    }

    goto LABEL_72;
  }

LABEL_71:
  v167 = 0;
  if (!*(a1 + 16))
  {
LABEL_53:
    v109 = 0;
    goto LABEL_89;
  }

LABEL_72:
  v36 = sub_1000F5A28(0xD000000000000011, 0x8000000100348F10);
  if (v37)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v36, v132);
    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    v38 = swift_dynamicCast();
    v39 = v120;
    if (!v38)
    {
      v39 = 0;
    }

    v109 = v39;
    if (*(a1 + 16))
    {
LABEL_76:
      v40 = sub_1000F5A28(0xD000000000000011, 0x8000000100348F30);
      if (v41)
      {
        sub_10000BDA4(*(a1 + 56) + 32 * v40, v132);
        sub_100004074(&qword_1003A06A0, &qword_1002C4050);
        if (swift_dynamicCast())
        {
          v42 = v120;
        }

        else
        {
          v42 = 0;
        }

        if (*(a1 + 16))
        {
LABEL_81:
          v43 = sub_1000F5A28(0x614D6C656E72656BLL, 0xE900000000000070);
          v44 = 0xF000000000000000;
          if (v45)
          {
            sub_10000BDA4(*(a1 + 56) + 32 * v43, v132);
            v46 = swift_dynamicCast();
            if (v46)
            {
              v47 = v120;
            }

            else
            {
              v47 = 0;
            }

            if (v46)
            {
              v44 = *(&v120 + 1);
            }
          }

          else
          {
            v47 = 0;
          }

LABEL_99:
          v48 = v42;
          if (v112)
          {
            goto LABEL_90;
          }

LABEL_100:

          goto LABEL_101;
        }
      }

      else
      {
        v42 = 0;
        if (*(a1 + 16))
        {
          goto LABEL_81;
        }
      }

      v47 = 0;
      v44 = 0xF000000000000000;
      goto LABEL_99;
    }
  }

  else
  {
    v109 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_76;
    }
  }

LABEL_89:
  v48 = 0;
  v47 = 0;
  v44 = 0xF000000000000000;
  if (!v112)
  {
    goto LABEL_100;
  }

LABEL_90:
  if (!v167 || !v48)
  {
    goto LABEL_100;
  }

  if (v44 >> 60 == 15)
  {

LABEL_101:

    sub_10008671C();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    sub_10001A074(v47, v44);
    return sub_10001A074(v25, v22);
  }

  v103 = v48;
  v107 = v25;
  type metadata accessor for JSONDecoder();
  sub_1000094F4(v47, v44);
  sub_10009A814(_swiftEmptyArrayStorage);
  static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
  if (v3)
  {

    sub_10001A074(v47, v44);
    sub_10001A074(v25, v22);

    sub_10001A074(v47, v44);
  }

  sub_10001A074(v47, v44);

  if (v109)
  {

    sub_100088EA4(v59, v157);

    v149 = v157[2];
    v150[0] = v158[0];
    *(v150 + 9) = *(v158 + 9);
    v147 = v157[0];
    v148 = v157[1];
  }

  else
  {
    v149 = 0u;
    memset(v150, 0, 25);
    v147 = 0u;
    v148 = 0u;
  }

  if (v13)
  {
    v77 = *(v13 + 16);
    v78 = _swiftEmptyArrayStorage;
    if (v77)
    {
      v98 = v22;
      v105 = a3;
      *v132 = _swiftEmptyArrayStorage;

      sub_10004E404(0, v77, 0);
      v78 = *v132;
      v79 = (v13 + 40);
      do
      {
        v81 = *(v79 - 1);
        v80 = *v79;
        sub_1000094F4(v81, *v79);
        *v132 = v78;
        v83 = v78[2];
        v82 = v78[3];
        if (v83 >= v82 >> 1)
        {
          sub_10004E404((v82 > 1), v83 + 1, 1);
          v78 = *v132;
        }

        v79 += 2;
        v78[2] = v83 + 1;
        v84 = &v78[2 * v83];
        v84[4] = v81;
        v84[5] = v80;
        --v77;
      }

      while (v77);

      v22 = v98;
      a3 = v105;
    }
  }

  else
  {
    v78 = 0;
  }

  if (v22 >> 60 == 15)
  {
    v85 = 0;
  }

  else
  {
    v85 = v107;
  }

  v106 = v85;
  if (v22 >> 60 == 15)
  {
    v86 = 0xF000000000000000;
  }

  else
  {
    v86 = v22;
  }

  sub_10001A3E8(v107, v22);
  v87 = sub_1000885C4(v112);
  v99 = v88;
  v100 = v89;
  v96 = v87;
  v97 = v90;
  sub_100088EA4(v167, &v159);

  result = Data.init(hexString:)();
  v101 = result;
  v95 = v91;
  if (v91 >> 60 != 15)
  {
    sub_10001A074(v107, v22);
    sub_10001A074(v47, v44);

    sub_10001A074(0, 0xF000000000000000);
    sub_10008A2BC(0, 0, 0, 0);
    v118 = 0u;
    memset(v119, 0, sizeof(v119));
    v116 = 0u;
    v117 = 0u;
    sub_10000BD44(&v116, &qword_1003A0698, &qword_1002C4D20);
    v92 = v147;
    v93 = v148;
    v167 = *(&v149 + 1);
    v94 = v149;
    v111 = *(&v150[0] + 1);
    v114 = *&v150[0];
    v108 = *&v150[1];
    v102 = BYTE8(v150[1]);
    sub_10001A074(0, 0xF000000000000000);
    v122 = v160;
    v123 = v161;
    *v124 = v162[0];
    *&v124[9] = *(v162 + 9);
    *&v121[72] = v159;
    memset(&v121[8], 0, 32);
    memset(&v132[24], 0, 32);
    v133 = v159;
    *(v136 + 9) = *(v162 + 9);
    v136[0] = v162[0];
    *&v120 = v78;
    *(&v120 + 1) = v106;
    *v121 = v86;
    *&v121[40] = v96;
    *&v121[48] = v97;
    *&v121[56] = v99;
    *&v121[64] = v100;
    v125 = v92;
    v126 = v93;
    *&v127 = v94;
    *(&v127 + 1) = v167;
    *v128 = v114;
    *&v128[8] = v111;
    *&v128[16] = v108;
    v128[24] = v102;
    *&v129 = v103;
    *(&v129 + 1) = v101;
    v130 = v95;
    v131 = 0;
    *v132 = v78;
    *&v132[8] = v106;
    *&v132[16] = v86;
    *&v132[56] = v96;
    *&v132[64] = v97;
    *&v132[72] = v99;
    v135 = v161;
    v134 = v160;
    *&v132[80] = v100;
    v137 = v92;
    v138 = v93;
    *&v139 = v94;
    *(&v139 + 1) = v167;
    *&v140 = v114;
    *(&v140 + 1) = v111;
    v141 = v108;
    v142 = v102;
    v143 = v103;
    v144 = v101;
    v145 = v95;
    v146 = 0;
    sub_100081A7C(&v120, v115);
    result = sub_100081AD8(v132);
    v60 = v131;
    v61 = v130;
    v62 = v129;
    v63 = *&v121[16];
    v64 = *&v121[32];
    v66 = v120;
    v65 = *v121;
    v67 = v123;
    v68 = *v124;
    v69 = v124[24];
    v70 = *&v121[48];
    v71 = *&v121[64];
    v72 = *&v124[16];
    v73 = *&v121[80];
    v74 = v122;
    *(v166 + 9) = *&v128[9];
    v165 = v127;
    v166[0] = *v128;
    v163 = v125;
    v164 = v126;
LABEL_119:
    *&v132[23] = v164;
    *&v132[39] = v165;
    *&v132[55] = v166[0];
    *&v132[64] = *(v166 + 9);
    *&v132[7] = v163;
    *a3 = v66;
    *(a3 + 16) = v65;
    *(a3 + 32) = v63;
    *(a3 + 48) = v64;
    *(a3 + 64) = v70;
    *(a3 + 80) = v71;
    *(a3 + 96) = v73;
    *(a3 + 104) = v74;
    *(a3 + 120) = v67;
    *(a3 + 136) = v68;
    *(a3 + 152) = v72;
    *(a3 + 160) = v69;
    v75 = *&v132[16];
    *(a3 + 161) = *v132;
    *(a3 + 225) = *&v132[64];
    v76 = *&v132[32];
    *(a3 + 209) = *&v132[48];
    *(a3 + 193) = v76;
    *(a3 + 177) = v75;
    *(a3 + 248) = v62;
    *(a3 + 264) = v61;
    *(a3 + 272) = v60;
    return result;
  }

  __break(1u);
  return result;
}

void sub_10008A2BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_10001A074(a3, a4);
  }
}

unint64_t sub_10008A308(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

void sub_10008A3C4(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v8 - 8);
  v74 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v14 = *(a1 + 16);
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_88;
      }

      v12 = *(a1 + 24);
    }

    else
    {
      v12 = 0;
      v13 = 1;
    }
  }

  else
  {
    v11 = v10 == 0;
    if (v10)
    {
      v12 = a1 >> 32;
    }

    else
    {
      v12 = BYTE6(a2);
    }

    if (v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = a1 + 1;
    }
  }

  v15 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v16 = v15 - v13;
  if (v15 < v13)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    swift_once();
LABEL_69:
    v63 = type metadata accessor for Logger();
    sub_10000403C(v63, qword_1003A0578);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "non base64 string", v66, 2u);
    }

    sub_10008671C();
    swift_allocError();
    *v67 = 2;
    swift_willThrow();
    sub_100009548(v79, v15);
LABEL_73:

    objc_autoreleasePoolPop(v78);
    goto LABEL_74;
  }

  v17 = __OFSUB__(v15, v13);
  v75 = a3;
  if (!v17)
  {
    v70 = v15;
    v71 = a2;
    v73 = a1;
    do
    {
      if (v16 <= 3)
      {
        goto LABEL_63;
      }

      v18 = objc_autoreleasePoolPush();
      if (v16 >= 0x1388)
      {
        v19 = 5000;
      }

      else
      {
        v19 = v16;
      }

      if (__OFADD__(v13, v19))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v13 + v19 < v13)
      {
        goto LABEL_76;
      }

      v20 = v18;
      v77 = v4;
      v91 = v75;
      v21 = Data.subdata(in:)();
      v23 = v22;
      static String.Encoding.utf8.getter();
      v79 = v21;
      v80 = v23;
      v24 = String.init(data:encoding:)();
      if (!v25)
      {
        __break(1u);
LABEL_90:
        __break(1u);
        return;
      }

      v78 = v20;
      v81 = v24;
      v82 = v25;
      v87 = 12124;
      v88 = 0xE200000000000000;
      v85 = 47;
      v86 = 0xE100000000000000;
      v76 = sub_10008AB88();
      v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v28 = v27;

      v89 = v26;
      v90 = v28;
      v15 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v28) & 0xF;
      }

      else
      {
        v29 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        v30 = 7;
        if (((v28 >> 60) & ((v26 & 0x800000000000000) == 0)) != 0)
        {
          v30 = 11;
        }

        v72 = v30;

        String.index(before:)();
        a2 = 0xE100000000000000;
        v31 = String.subscript.getter();
        v33 = v32;

        if (v31 == 92 && v33 == 0xE100000000000000)
        {

          if ((v28 & 0x2000000000000000) != 0)
          {
            goto LABEL_41;
          }

LABEL_38:
          if ((v26 & 0xFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_83;
          }

LABEL_42:
          String.index(before:)();
          String.remove(at:)();

          --v19;
          goto LABEL_43;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v35)
        {
          if ((v28 & 0x2000000000000000) == 0)
          {
            goto LABEL_38;
          }

LABEL_41:
          if (!v15)
          {
            goto LABEL_82;
          }

          goto LABEL_42;
        }
      }

LABEL_43:
      v37 = v89;
      v36 = v90;
      if ((String.count.getter() & 3) != 0)
      {

        v38 = String.count.getter();
        if (v38 <= 0)
        {
          v39 = -(-v38 & 3);
        }

        else
        {
          v39 = v38 & 3;
        }

        a2 = sub_10008A308(v39, v37, v36);
        v41 = v40;
        v15 = v42;
        v44 = v43;

        if (v39)
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
            goto LABEL_80;
          }

          v69 = v15;
          v72 = v19;
          v45 = v13;
          v46 = v44;
          v47 = a2;
          v15 = v41;
          if ((v36 & 0x2000000000000000) != 0)
          {
            a2 = HIBYTE(v36) & 0xF;
          }

          else
          {
            a2 = v37 & 0xFFFFFFFFFFFFLL;
          }

          v48 = String.index(_:offsetBy:limitedBy:)();
          if (v49)
          {
            goto LABEL_90;
          }

          if (4 * a2 < v48 >> 14)
          {
            goto LABEL_81;
          }

          String.removeSubrange(_:)();
          a2 = v47;
          v44 = v46;
          v13 = v45;
          v19 = v72;
          v15 = v69;
        }

        v81 = a2;
        v82 = v41;
        v83 = v15;
        v84 = v44;
        v87 = 47;
        v88 = 0xE100000000000000;
        sub_10008ABDC();
        v50 = StringProtocol.components<A>(separatedBy:)();

        v51 = *(v50 + 16);

        v52 = v39 + v51 - 1;
        if (__OFADD__(v39, v51 - 1))
        {
          goto LABEL_78;
        }

        v53 = __OFSUB__(v19, v52);
        v19 -= v52;
        if (v53)
        {
          goto LABEL_79;
        }
      }

      v54 = Data.init(base64Encoded:options:)();
      v56 = v55;

      a2 = v91;
      v15 = v80;
      if (v56 >> 60 == 15)
      {
        if (qword_10039D390 != -1)
        {
          goto LABEL_86;
        }

        goto LABEL_69;
      }

      v81 = v54;
      v82 = v56;
      sub_10004F340();
      v57 = v77;
      NSFileHandle.write<A>(contentsOf:)();
      v4 = v57;
      if (v57)
      {
        sub_100009548(v79, v15);
        sub_10001A074(v54, v56);
        goto LABEL_73;
      }

      sub_10001A074(v54, v56);
      sub_100009548(v79, v15);

      v53 = __OFADD__(v13, v19);
      v13 += v19;
      if (v53)
      {
        goto LABEL_77;
      }

      objc_autoreleasePoolPop(v78);
      v15 = v70;
      a2 = v71;
      v16 = v70 - v13;
    }

    while (!__OFSUB__(v70, v13));
  }

  __break(1u);
LABEL_63:
  if (v16 >= 1)
  {
    if (qword_10039D390 == -1)
    {
LABEL_65:
      v58 = type metadata accessor for Logger();
      sub_10000403C(v58, qword_1003A0578);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "invalid base64", v61, 2u);
      }

      sub_10008671C();
      swift_allocError();
      *v62 = 2;
      swift_willThrow();
      goto LABEL_74;
    }

LABEL_88:
    swift_once();
    goto LABEL_65;
  }

LABEL_74:
}

unint64_t sub_10008AB30()
{
  result = qword_10039DF78;
  if (!qword_10039DF78)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DF78);
  }

  return result;
}

unint64_t sub_10008AB88()
{
  result = qword_1003A3C70;
  if (!qword_1003A3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3C70);
  }

  return result;
}

unint64_t sub_10008ABDC()
{
  result = qword_1003A06C0;
  if (!qword_1003A06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A06C0);
  }

  return result;
}

__n128 sub_10008AC30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10008AC44(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10008ACA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10008AD28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10008AD7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10008ADE8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008AE0C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008AE3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 273))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008AE84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10008AF1C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10008AF40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_10008AF88(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10008AFF0()
{
  result = qword_1003A06C8;
  if (!qword_1003A06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A06C8);
  }

  return result;
}

uint64_t sub_10008B044(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6941737361707962 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4374726F70707573 && a2 == 0xED0000787254706ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100348F90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10008B1C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A06D0, &unk_1002C4928);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10000BE18(a1, a1[3]);
  sub_10008B474();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v23 = a2;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  v24 = 0;
  sub_1000430C8(&qword_10039FBE8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v25;
  v24 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v10 = v25;
  LOBYTE(v25) = 2;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v22 = v11;
  LOBYTE(v25) = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v8;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  result = sub_10000959C(a1);
  v19 = v22;
  v20 = v23;
  *v23 = v9;
  v20[1] = v10;
  v20[2] = v19;
  v20[3] = v13;
  v20[4] = v14;
  *(v20 + 40) = v17 & 1;
  return result;
}

unint64_t sub_10008B474()
{
  result = qword_1003A06D8;
  if (!qword_1003A06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A06D8);
  }

  return result;
}

unint64_t sub_10008B4F4()
{
  result = qword_1003A0708;
  if (!qword_1003A0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0708);
  }

  return result;
}

unint64_t sub_10008B54C()
{
  result = qword_1003A0710;
  if (!qword_1003A0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0710);
  }

  return result;
}

unint64_t sub_10008B5A4()
{
  result = qword_1003A0718;
  if (!qword_1003A0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0718);
  }

  return result;
}

uint64_t sub_10008B618@<X0>(char *a1@<X8>)
{
  v3 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 200))
  {
    UUID.init(uuidString:)();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_10008C000(v5);
    }

    else
    {
      v11 = *(v7 + 32);
      v11(v9, v5, v6);
      v12 = sub_10008C3A8();
      if (v12 == 2 || (v12 & 1) != 0)
      {
        v11(a1, v9, v6);
        v10 = 0;
        return (*(v7 + 56))(a1, v10, 1, v6);
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  v10 = 1;
  return (*(v7 + 56))(a1, v10, 1, v6);
}

uint64_t sub_10008B7F4(uint64_t a1)
{
  v59 = a1;
  v57 = type metadata accessor for Date();
  v2 = *(v57 - 8);
  v3 = __chkstk_darwin(v57);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v45 - v5;
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v58 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v56 = &v45 - v12;
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  memcpy(v60, v1, sizeof(v60));
  sub_100175270(v14);
  if (qword_10039D398 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000403C(v15, qword_1003A0720);
  (*(v2 + 16))(v6, v59, v57);
  v16 = *(v8 + 16);
  v16(v56, v14, v7);
  v53 = v14;
  v16(v58, v14, v7);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v54 = v8;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v47 = v18;
    v21 = v20;
    v48 = swift_slowAlloc();
    v61 = v48;
    *v21 = 136315906;
    *(v21 + 4) = sub_100008F6C(0x6F546C656E72654BLL, 0xEB000000006E656BLL, &v61);
    *(v21 + 12) = 2080;
    v50 = sub_10008BFA8();
    v46 = v17;
    v22 = v6;
    v23 = v57;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v51 = v7;
    v49 = *(v2 + 8);
    v49(v22, v23);
    v27 = sub_100008F6C(v24, v26, &v61);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    v28 = v52;
    v29 = v56;
    DateInterval.start.getter();
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v49(v28, v23);
    v45 = *(v8 + 8);
    v45(v29, v51);
    v33 = sub_100008F6C(v30, v32, &v61);

    *(v21 + 24) = v33;
    *(v21 + 32) = 2080;
    v34 = v58;
    DateInterval.end.getter();
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v49(v28, v23);
    v38 = v34;
    v39 = v45;
    v40 = v51;
    v45(v38, v51);
    v41 = sub_100008F6C(v35, v37, &v61);

    *(v21 + 34) = v41;
    v42 = v46;
    _os_log_impl(&_mh_execute_header, v46, v47, "%s.validate at date: %s, validityPeriod is: %s...%s", v21, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v39 = *(v8 + 8);
    v39(v58, v7);
    v39(v56, v7);
    (*(v2 + 8))(v6, v57);
    v40 = v7;
  }

  v43 = v53;
  if ((DateInterval.contains(_:)() & 1) == 0)
  {
    v55 = sub_100020148(2012, 0, 0, 0);
    swift_willThrow();
  }

  return (v39)(v43, v40);
}

uint64_t sub_10008BD6C@<X0>(char *a1@<X8>)
{
  v3 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + 184))
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10008C000(v5);
LABEL_4:
    v10 = 1;
    return (*(v7 + 56))(a1, v10, 1, v6);
  }

  v11 = *(v7 + 32);
  v11(v9, v5, v6);
  v12 = sub_10008C3A8();
  if (v12 == 2 || (v12 & 1) == 0)
  {
    v11(a1, v9, v6);
    v10 = 0;
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v10 = 1;
  }

  return (*(v7 + 56))(a1, v10, 1, v6);
}

uint64_t sub_10008BF4C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0720);
  sub_10000403C(v0, qword_1003A0720);
  sub_100023B24();
  return static SPRLogger.configurator.getter();
}

unint64_t sub_10008BFA8()
{
  result = qword_10039F3E8;
  if (!qword_10039F3E8)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039F3E8);
  }

  return result;
}

uint64_t sub_10008C000(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10008C068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_100176DD8(a1, a2, __src);
  if (v5)
  {

    swift_errorRetain();
    sub_100020148(2015, 0, 0, v5);

    swift_willThrow();
  }

  v10 = __src[23];
  if (!__src[23])
  {
    goto LABEL_13;
  }

  v11 = __src[18];
  v12 = __src[19];
  v13 = __src[22];

  if (String.count.getter() != 36)
  {

LABEL_13:

    goto LABEL_14;
  }

  *&v28[0] = 0;
  *(&v28[0] + 1) = 0xE000000000000000;
  v14 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFLL;
  }

  __dst[0] = v13;
  __dst[1] = v10;
  __dst[2] = 0;
  __dst[3] = v14;
  v15 = String.Iterator.next()();
  if (v15.value._object)
  {
    countAndFlagsBits = v15.value._countAndFlagsBits;
    object = v15.value._object;
    do
    {
      Character.hexDigitValue.getter();
      if ((v19 & 1) == 0)
      {
        v20._countAndFlagsBits = countAndFlagsBits;
        v20._object = object;
        String.append(_:)(v20);
      }

      v18 = String.Iterator.next()();
      countAndFlagsBits = v18.value._countAndFlagsBits;
      object = v18.value._object;
    }

    while (v18.value._object);
  }

  v25 = String.count.getter();

  if (v25 != 32 || !v12)
  {
    goto LABEL_13;
  }

  if (v11 == a3 && v12 == a4)
  {

LABEL_25:
    memcpy(v28, __src, 0x110uLL);
    v28[17] = xmmword_1002C4B90;
    memcpy(__dst, __src, sizeof(__dst));
    v30 = xmmword_1002C4B90;
    sub_100064B9C(v28, v27);
    sub_10006413C(__dst);
    return memcpy(a5, v28, 0x120uLL);
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (qword_10039D398 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000403C(v21, qword_1003A0720);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "tpid bad format or supplied seid not matching jwt seid", v24, 2u);
  }

  sub_100020148(2011, 0, 0, 0);
  swift_willThrow();
  memcpy(__dst, __src, sizeof(__dst));
  return sub_10008C3EC(__dst);
}

uint64_t sub_10008C3A8()
{
  v0 = UUID.uuid.getter();
  v1 = v0 >> 4;
  v2 = v1 - 1;
  if (v1 == 4)
  {
    v3 = (v0 >> 31) & 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >= 3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008C448(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_10008C490(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008C52C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0738);
  sub_10000403C(v0, qword_1003A0738);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

unint64_t sub_10008C598()
{
  if (qword_10039D3A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A0738);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, &v11);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0xD000000000000011, 0x8000000100349B60, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, &v11);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  return 0xD0000000000009E5;
}

uint64_t sub_10008C784(void (*a1)(uint64_t, uint64_t), uint64_t a2, void (*a3)(_BYTE *, void))
{
  if (a1)
  {
    a1(33, a2);
    (a1)(66);
  }

  sub_1000833DC(0, 0xF000000000000000);
  sub_10008A2BC(0, 0, 0, 0);
  memset(v8, 0, 73);
  sub_10008D6E8(v8);
  *&__src[8] = 0;
  *__src = 0;
  *&__src[16] = xmmword_1002C4CB0;
  *&__src[32] = xmmword_1002C4CC0;
  memset(&__src[56], 0, 32);
  *&__src[48] = 0xF000000000000000;
  strcpy(&__src[88], "partner");
  *&__src[104] = xmmword_1002C3C70;
  *&__src[96] = 0xE700000000000000;
  *&__src[120] = 1;
  memset(&__src[128], 0, 33);
  memset(&__src[168], 0, 73);
  *&__src[256] = 0;
  *&__src[248] = 0;
  *&__src[264] = 0xF000000000000000;
  __src[272] = 1;
  v10[0] = 0;
  v10[1] = 0;
  v11 = xmmword_1002C4CB0;
  v12 = xmmword_1002C4CC0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0xF000000000000000;
  v16 = 0x72656E74726170;
  v18 = xmmword_1002C3C70;
  v17 = 0xE700000000000000;
  v19 = 1;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  memset(v26, 0, sizeof(v26));
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v28 = 0;
  v27 = 0;
  v29 = 0xF000000000000000;
  v30 = 1;
  sub_100081A7C(__src, v31);
  sub_100081AD8(v10);
  if (a1)
  {
    (a1)(100);
  }

  memcpy(__dst, __src, sizeof(__dst));
  nullsub_1();
  memcpy(v31, __dst, 0x111uLL);
  sub_100081A7C(__src, &v6);
  a3(v31, 0);
  sub_100081AD8(__src);
  return sub_100081AD8(__src);
}