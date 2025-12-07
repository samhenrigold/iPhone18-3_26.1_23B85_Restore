void sub_1001CE3D0(double a1, double a2, double a3, double a4)
{
  v4 = a1 * a4;
  if (v4 <= a2)
  {
    v4 = a2;
  }

  if (v4 <= a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = a3;
  }

  v6 = v5 * -0.5;
  v7 = v5 * 0.5;
  if (v6 > v7)
  {
    __break(1u);
  }

  else
  {
    sub_1001D0240(v6, v7);
  }
}

void sub_1001CE404(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v26 = (*(a14 + 120))(a10, a14);
  if (v26 == -1)
  {
    __break(1u);
  }

  else
  {
    sub_1001CDD9C(a1, a2, a3 & 1, v26 + 1, 0, a4, a5, a6, a7, a8, a13, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v27, a6, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  }
}

void sub_1001CE4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_100003774();
  __chkstk_darwin(v26);
  v28 = &a9 - v27;
  if (sub_1000319A8(v25, v23))
  {
    v29 = *(v23 + 368);
    v30 = sub_10000AE2C();
    sub_10000FF98(v30, v31);
    v32 = sub_10000AE2C();
    v29(v32);
    v33 = type metadata accessor for Date();
    sub_10000B7EC();
    v34 = sub_100007B1C();
    v35(v34);
    sub_100002728(v28, 0, 1, v33);
    (*(v23 + 224))(v28, v25, v23);
    sub_1000027F8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1001CE75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_100004168();
  v116 = v35;
  v108 = v36;
  v38 = v37;
  v100 = v39;
  v114 = v40;
  v115 = v41;
  v111 = v42;
  v118 = v43;
  v119 = a31;
  v44 = a25;
  v120 = a26;
  v121 = a22;
  v113 = type metadata accessor for Optional();
  sub_100003724();
  v110 = v45;
  sub_100003774();
  __chkstk_darwin(v46);
  v109 = &v99 - v47;
  v107 = type metadata accessor for UUID();
  sub_100003724();
  v106 = v48;
  __chkstk_darwin(v49);
  sub_10000306C();
  v105 = v51 - v50;
  swift_unknownObjectRetain();
  v112 = a21;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();
  v54 = os_log_type_enabled(v52, v53);
  v117 = a25;
  if (v54)
  {
    sub_100031BA8();
    v55 = swift_slowAlloc();
    sub_100031B9C();
    v56 = swift_slowAlloc();
    v104 = v38;
    v57 = v56;
    v123 = v56;
    *v55 = 136315138;
    v122 = v34;
    dispatch thunk of Identifiable.id.getter();
    v58 = sub_1001ECC0C();
    v60 = v59;

    swift_unknownObjectRelease();

    v61 = v58;
    v44 = v117;
    v62 = sub_100009E5C(v61, v60, &v123);

    *(v55 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "%s: Updating record from the cloud", v55, 0xCu);
    sub_100004118(v57);
    v38 = v104;
    sub_100031B34();

    sub_100031B34();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1001CE4E8(v100, v38, v121, v44, a29, v63, v64, v65, v99, v100, a32, a30, a27, a23, v105, v106, v107, v108, v109, v110);
  (*(a29 + 24))(v44, a29);
  v67 = v66;
  (*(v119 + 24))(v120);
  if (v67 >> 60 != 15)
  {
    if (v68 >> 60 != 15)
    {
      v76 = sub_10000AE2C();
      sub_1001D035C(v76, v77);
      v78 = sub_100031BFC();
      sub_10000FF98(v78, v79);
      sub_10000AE2C();
      v80 = static Data.== infix(_:_:)();
      v81 = sub_100031BFC();
      sub_10009A7A0(v81, v82);
      v83 = sub_100031BFC();
      sub_10000D170(v83, v84);
      v85 = sub_10000AE2C();
      sub_10009A7A0(v85, v86);
      v87 = sub_10000AE2C();
      sub_10009A7A0(v87, v88);
      v71 = v112;
      if ((v80 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_8:
    v72 = sub_10000AE2C();
    sub_10009A7A0(v72, v73);
    v74 = sub_100031BFC();
    sub_10009A7A0(v74, v75);
    v71 = v112;
    goto LABEL_13;
  }

  if (v68 >> 60 != 15)
  {
    goto LABEL_8;
  }

  v69 = sub_10000AE2C();
  sub_10009A7A0(v69, v70);
  v71 = v112;
LABEL_10:
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&_mh_execute_header, v89, v90, "Account keypair from cloud update unexpectedly same as existing one.", v91, 2u);
    sub_100031B34();
  }

LABEL_13:
  v92 = v105;
  (*(v106 + 16))(v105, v108, v107);
  v93 = v117;
  (*(a29 + 152))(v92, v117, a29);
  v94 = v120;
  sub_10000B7EC();
  v96 = v109;
  (*(v95 + 16))(v109, v118, v94);
  sub_100002728(v96, 0, 1, v94);
  if ((*(a29 + 96))(v93, a29))
  {
    v97 = 3;
  }

  else
  {
    v97 = 2;
  }

  sub_1001CDD9C(v96, v114, v111 & 1, v115, 0, v97, v116, v71, v121, v104, a28, v93, v94, v103, a28, a29, v102, v119, v101, a33, a34, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
  (*(v110 + 8))(v96, v113);
  sub_1000027F8();
}

void sub_1001CECC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_100004168();
  v30 = v29;
  v32 = v31;
  v80 = v33;
  v35 = v34;
  v37 = v36;
  v76 = v38;
  v78 = v39;
  v41 = v40;
  v42 = type metadata accessor for Optional();
  sub_100003724();
  v79 = v43;
  __chkstk_darwin(v44);
  sub_10000308C();
  v77 = v45 - v46;
  v48 = __chkstk_darwin(v47);
  v50 = &v68 - v49;
  v51 = *(a23 + 96);
  v81 = a23;
  if (v51(v32, a23, v48))
  {
    v82 = v32;
    v74 = v35;
    v75 = v41;
    swift_unknownObjectRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();
    v54 = os_log_type_enabled(v52, v53);
    v72 = v37;
    v73 = v42;
    v70 = a24;
    v71 = v30;
    if (v54)
    {
      sub_100031BA8();
      v55 = swift_slowAlloc();
      sub_100031B9C();
      v68 = swift_slowAlloc();
      v84 = v68;
      *v55 = 136315138;
      v83 = v28;
      v69 = v50;
      v56 = v81;
      dispatch thunk of Identifiable.id.getter();
      v57 = sub_1001ECC0C();
      v59 = v58;

      swift_unknownObjectRelease();
      v60 = v56;
      v50 = v69;

      v61 = sub_100009E5C(v57, v59, &v84);

      *(v55 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v52, v53, "%s: Rotating both keypairs once", v55, 0xCu);
      sub_100004118(v68);
      sub_100031B34();

      sub_100031B34();
    }

    else
    {
      swift_unknownObjectRelease();

      v60 = v81;
    }

    v69 = v28;
    if (sub_1000319A8(v82, v60))
    {
      v62 = v70;
      v63 = v71;
      (*(v70 + 8))(v71, v70);
      v64 = 0;
    }

    else
    {
      v64 = 1;
      v62 = v70;
      v63 = v71;
    }

    sub_100002728(v50, v64, 1, v63);
    sub_1001CE404(v50, v78, v76 & 1, 1, v74, v72, v74, v80, a22, v82, v63, a21, a22, v81, v62, a25, a26, a27, a28);
    v66 = v65;
    v67 = v77;
    (*(v79 + 32))(v77, v50, v73);
    sub_1001CD47C(v66, v67, a22, v63, a28, v62, a25, v75);
    sub_1000027F8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001CF02C(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t *a17)
{
  v169 = a7;
  v159 = a6;
  HIDWORD(v149) = a5;
  v173 = a4;
  HIDWORD(v157) = a2;
  v158 = a1;
  v155 = type metadata accessor for Optional();
  sub_100003724();
  v185 = v20;
  __chkstk_darwin(v21);
  sub_10000308C();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v152 = &v146 - v26;
  v180 = a11;
  v192[0] = a11;
  v192[1] = a9;
  v172 = a9;
  v184 = a17;
  v192[2] = a17;
  v192[3] = a13;
  v170 = a13;
  v171 = a14;
  v193 = a14;
  v160 = type metadata accessor for SingleRotationOutcome(0, v192);
  sub_100003724();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_10000308C();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v146 - v34;
  v36 = type metadata accessor for Date();
  sub_100003724();
  v163 = v37;
  __chkstk_darwin(v38);
  sub_10000308C();
  sub_10000690C();
  __chkstk_darwin(v39);
  sub_10000690C();
  __chkstk_darwin(v40);
  sub_10000690C();
  __chkstk_darwin(v41);
  v43 = &v146 - v42;
  v45 = __chkstk_darwin(v44);
  v179 = &v146 - v46;
  v47 = *(a12 + 96);
  v187 = a12;
  v188 = v17;
  v186 = a8;
  result = v47(a8, a12, v45);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v164 = v35;
  swift_unknownObjectRetain();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  v51 = os_log_type_enabled(v49, v50);
  v167 = a3;
  v178 = v43;
  v147 = v24;
  v148 = v32;
  v162 = v28;
  if (v51)
  {
    v52 = swift_slowAlloc();
    sub_100031B9C();
    v53 = swift_slowAlloc();
    v194 = v53;
    *v52 = 136315394;
    a3 = v50;
    v191 = v188;
    v54 = v49;
    dispatch thunk of Identifiable.id.getter();
    v183 = sub_1001ECC0C();
    v56 = v55;
    v57 = v178;

    swift_unknownObjectRelease();

    v58 = sub_100009E5C(v183, v56, &v194);

    *(v52 + 4) = v58;
    *(v52 + 12) = 1024;
    *(v52 + 14) = BYTE4(v149) & 1;
    _os_log_impl(&_mh_execute_header, v54, v50, "%s: Populating history since last rotation according to current rotation schedule, performRotationNow=%{BOOL}d", v52, 0x12u);
    sub_100004118(v53);
    sub_100031B34();

    sub_100031B34();
  }

  else
  {
    v57 = v43;
    swift_unknownObjectRelease();
  }

  v59 = v181;
  v183 = a16;
  v166 = a15;
  v165 = a10;
  v191 = static Array._allocateUninitialized(_:)();
  v60 = v187;
  v61 = v179;
  v62 = v186;
  (*(v187 + 240))(v186, v187);
  (*(v60 + 192))(v62, v60);
  v177 = 0;
  v63 = 0;
  v176 = v60 + 336;
  v175 = *(v60 + 336);
  v174 = v60 + 288;
  v161 = v60 + 312;
  v182 = (v163 + 8);
  v153 = (v185 + 16);
  v156 = v162 + 1;
  v154 = v185 + 8;
  v163 += 32;
  v168 = v36;
  while (1)
  {
    v175(v186, v187);
    v185 = v63;
    if (v64)
    {
      (*(v187 + 288))(v192, v186);
      if (v193)
      {
        goto LABEL_25;
      }

      v65 = sub_100031BE4();
      v66(v65);
      if (v67)
      {
        goto LABEL_25;
      }

      goto LABEL_9;
    }

    (*(v187 + 288))(&v194, v186);
    if ((v195 & 1) == 0)
    {
      v68 = sub_100031BE4();
      v69(v68);
      if ((v70 & 1) == 0)
      {
        v71 = v150;
        static Date.+ infix(_:_:)();
        a3 = v151;
        static Date.+ infix(_:_:)();
        v72 = static Date.< infix(_:_:)();
        v73 = *v182;
        (*v182)(a3, v36);
        v73(v71, v36);
        if ((v72 & 1) == 0)
        {
          v59 = v181;
LABEL_9:
          static Date.+ infix(_:_:)();
          v62 = 0;
          goto LABEL_15;
        }

        v59 = v181;
      }
    }

    static Date.+ infix(_:_:)();
    v62 = 1;
LABEL_15:
    if (static Date.> infix(_:_:)())
    {
      break;
    }

    if (v62)
    {
      a3 = v184;
      v74 = v183;
      v76 = v186;
      v75 = v187;
      v77 = v165;
      v78 = v180;
      v79 = v166;
      sub_1001CD9F4(v167, v59, v169, v186, v165, v180, v187, v166, v183, v184, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
      v162 = &v146;
      v189 = v80;
      __chkstk_darwin(v80);
      v62 = (&v146 - 14);
      v81 = v172;
      *(&v146 - 12) = v76;
      *(&v146 - 11) = v81;
      *(&v146 - 10) = v77;
      *(&v146 - 9) = v78;
      v138 = v75;
      v139 = v170;
      v140 = v171;
      v141 = v79;
      v142 = v74;
      v143 = a3;
      v144 = &v191;
      type metadata accessor for Optional();
      v63 = v185;
      sub_1001CD208(sub_100031B1C, &type metadata for Never, &type metadata for ()[1], v82, &v190);
      v59 = v181;
      swift_unknownObjectRelease();
      sub_100008AA4();
      v61 = v179;
      v36 = v168;
      v83(v179, v168);
      v57 = v178;
    }

    else
    {
      v84 = v186;
      v85 = v187;
      sub_100031B40();
      v143 = *(v86 - 256);
      v87 = v143;
      v88 = v171;
      v142 = v171;
      v89 = v170;
      v140 = v85;
      v141 = v170;
      v90 = v180;
      v139 = v180;
      v91 = v165;
      v138 = v165;
      v92 = sub_100031C14();
      sub_100031B68(v92, v93, v167, v94, v95, v96, v97, v98, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
      v162 = &v146;
      v62 = *v62;
      v189 = v62;
      __chkstk_darwin(v99);
      a3 = &v146 - 14;
      *(&v146 - 12) = v84;
      *(&v146 - 11) = v100;
      v101 = v100;
      *(&v146 - 10) = v91;
      *(&v146 - 9) = v90;
      v138 = v85;
      v139 = v89;
      v140 = v88;
      v141 = v87;
      sub_100031BB4(&v146);
      swift_unknownObjectRetain();
      v63 = v185;
      sub_1001CD208(sub_100031A5C, &type metadata for Never, &type metadata for ()[1], v102, &v190);
      swift_unknownObjectRelease();
      sub_100008AA4();
      v57 = v178;
      v36 = v168;
      v103(v178, v168);
      if (v177)
      {
        sub_100008AA4();
        v104(v164, v160);
        v177 = 1;
      }

      else
      {
        v105 = v160;
        v106 = v164;
        v107 = v152;
        v62 = v155;
        (*v153)(v152, &v164[*(v160 + 60)], v155);
        sub_100008AA4();
        v108(v106, v105);
        v177 = sub_100004DFC(v107, 1, v101) != 1;
        sub_100008AA4();
        v109(v107, v62);
      }

      v61 = v179;
      v59 = v181;
    }

    sub_100008AA4();
    v110();
  }

  sub_100008AA4();
  v111(v59, v36);
LABEL_25:
  if ((v149 & 0x100000000) != 0)
  {
    v112 = v186;
    sub_100031B40();
    v143 = *(v113 - 256);
    v114 = v143;
    v115 = v171;
    v142 = v171;
    v116 = v170;
    v141 = v170;
    v140 = v187;
    v117 = v180;
    v139 = v180;
    v118 = v165;
    v138 = v165;
    v119 = sub_100031C14();
    sub_100031B68(v119, v120, v121, v173, v122, v123, v124, v125, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
    v188 = &v146;
    v189 = *v62;
    __chkstk_darwin(v126);
    *(&v146 - 12) = v112;
    *(&v146 - 11) = a3;
    *(&v146 - 10) = v118;
    *(&v146 - 9) = v117;
    v138 = v187;
    v139 = v116;
    v140 = v115;
    v141 = v114;
    sub_100031BB4(&v146);
    swift_unknownObjectRetain();
    sub_1001CD208(sub_100031B04, &type metadata for Never, &type metadata for ()[1], v127, &v190);
    swift_unknownObjectRelease();
    v128 = *v182;
    v129 = v168;
    (*v182)(v178, v168);
    v128(v179, v129);
    if (v177)
    {
      sub_100008AA4();
      v130(v148, v160);
    }

    else
    {
      v132 = v160;
      v133 = v148;
      v134 = v147;
      v135 = v155;
      (*v153)(v147, (v148 + *(v160 + 60)), v155);
      sub_100008AA4();
      v136(v133, v132);
      sub_100004DFC(v134, 1, v172);
      sub_100008AA4();
      v137(v134, v135);
    }
  }

  else
  {
    v131 = *v182;
    (*v182)(v57, v36);
    v131(v61, v36);
  }

  return v191;
}

uint64_t sub_1001CFDE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t *a16)
{
  v36 = a2;
  swift_unknownObjectRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    sub_100031BA8();
    v35 = a6;
    buf = swift_slowAlloc();
    sub_100031B9C();
    v33 = swift_slowAlloc();
    v38 = v33;
    *buf = 136315138;
    dispatch thunk of Identifiable.id.getter();
    v24 = a1;
    v25 = a3;
    v26 = sub_1001ECC0C();
    v34 = a7;
    v28 = v27;

    swift_unknownObjectRelease();

    v29 = v26;
    a3 = v25;
    a1 = v24;
    v30 = sub_100009E5C(v29, v28, &v38);
    a7 = v34;

    *(buf + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: Rotating keypairs on schedule if needed", buf, 0xCu);
    sub_100004118(v33);
    sub_100031B34();

    a6 = v35;
    sub_100031B34();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return sub_1001CF02C(a1, v36 & 1, a3, a4, 0, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1001D0040(uint64_t a1, char a2, uint64_t a3)
{
  v22[1] = a3;
  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_100003774();
  __chkstk_darwin(v4);
  v6 = v22 - v5;
  v7 = type metadata accessor for Date();
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000308C();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = v22 - v15;
  if (a2)
  {
    v17 = 0;
  }

  else
  {
    v18 = sub_10000AE2C();
    v19(v18);
    if (sub_100004DFC(v6, 1, v7) == 1)
    {
      sub_100004E7C(v6, &qword_1002DA970, &qword_1002318B0);
      v17 = 1;
    }

    else
    {
      (*(v9 + 32))(v16, v6, v7);
      static Date.- infix(_:_:)();
      v17 = static Date.< infix(_:_:)();
      v20 = *(v9 + 8);
      v20(v13, v7);
      v20(v16, v7);
    }
  }

  return v17 & 1;
}

void sub_1001D0240(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1001D02B8(0x20000000000001uLL);
  }
}

unint64_t sub_1001D02B8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D035C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000FF98(result, a2);
  }

  return result;
}

uint64_t sub_1001D0378(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001D0404(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 8) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if (v7 > 0x7FFFFFFE)
      {
        v19 = sub_100004DFC((a1 + v9 + 8) & ~v9, v6, v4);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_1001D05C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 8) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v10 > 0x7FFFFFFE)
          {
            v24 = (&a1[v12 + 8] & ~v12);
            if (v10 >= a2)
            {
              v28 = a2 + 1;
              v29 = &a1[v12 + 8] & ~v12;

              sub_100002728(v29, v28, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v25 = ~(-1 << (8 * v14));
              }

              else
              {
                v25 = -1;
              }

              if (v14)
              {
                v26 = v25 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v27 = v14;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v14);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *a1 = 0;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *a1 = a2;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1001D08D0()
{
  v0 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  UUID.init()();
  v3 = type metadata accessor for UUID();
  sub_100002728(v2, 0, 1, v3);
  v4 = sub_100031C28();
  return v5(v4);
}

uint64_t sub_1001D0980(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for UUID();
  sub_100002728(v6, 1, 1, v7);
  v8 = sub_100031C28();
  v9(v8);
  return (*(a2 + 72))(0, 0xF000000000000000, a1, a2);
}

unint64_t sub_1001D0A64(uint64_t a1)
{
  result = sub_1001D0A8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001D0A8C()
{
  result = qword_1002E12D0;
  if (!qword_1002E12D0)
  {
    v3 = _s20GlobalSyncStateModelCMa_0(255);
    result = swift_getWitnessTable(byte_100248CD0, v3, v0, v1);
    atomic_store(result, &qword_1002E12D0);
  }

  return result;
}

uint64_t sub_1001D0AF0(_OWORD *a1)
{
  v1 = a1[2];
  v5 = a1[1];
  v6 = v1;
  v7 = a1[3];
  result = type metadata accessor for Persistence.Mode(319, &v5);
  if (v3 <= 0x3F)
  {
    *&v5 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v4 <= 0x3F)
    {
      *(&v5 + 1) = *(result - 8) + 64;
      *&v6 = "\b";
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001D0BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(qword_1002E12D8, &unk_100247550);
  if (!sub_100004DFC(a1, 1, v4))
  {
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 8))(a1, v5);
  }

  v6 = *(a2 + 68);
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
}

char *sub_1001D0CB8(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_100099DF4(qword_1002E12D8, &unk_100247550);
  if (sub_100004DFC(a2, 1, v6))
  {
    v7 = *(a3 + 32);
    v13[0] = *(a3 + 16);
    v13[1] = v7;
    v13[2] = *(a3 + 48);
    v8 = type metadata accessor for Persistence.Mode(0, v13);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    sub_100002728(a1, 0, 1, v6);
  }

  v10 = *(a3 + 68);
  v11 = type metadata accessor for Logger();
  (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
  *&a1[*(a3 + 72)] = *&a2[*(a3 + 72)];
  return a1;
}

char *sub_1001D0E14(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_100099DF4(qword_1002E12D8, &unk_100247550);
  v7 = sub_100004DFC(a1, 1, v6);
  v8 = sub_100004DFC(a2, 1, v6);
  if (!v7)
  {
    if (!v8)
    {
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 40))(a1, a2, v15);
      goto LABEL_7;
    }

    sub_10003CD48(a1, qword_1002E12D8, &unk_100247550);
    goto LABEL_6;
  }

  if (v8)
  {
LABEL_6:
    v10 = *(a3 + 32);
    v16[0] = *(a3 + 16);
    v16[1] = v10;
    v16[2] = *(a3 + 48);
    v11 = type metadata accessor for Persistence.Mode(0, v16);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 32))(a1, a2, v9);
  sub_100002728(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 68);
  v13 = type metadata accessor for Logger();
  (*(*(v13 - 8) + 40))(&a1[v12], &a2[v12], v13);
  *&a1[*(a3 + 72)] = *&a2[*(a3 + 72)];

  return a1;
}

uint64_t sub_1001D101C(uint64_t a1)
{
  sub_1001D109C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1001D109C()
{
  if (!qword_1002E13E0)
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &qword_1002E13E0);
    }
  }
}

void sub_1001D10E4()
{
  sub_100004868();
  v4 = v3;
  v84 = type metadata accessor for Logger();
  sub_100003724();
  v81 = v5;
  __chkstk_darwin(v6);
  sub_10000306C();
  v83 = v8 - v7;
  v75 = type metadata accessor for URL.DirectoryHint();
  sub_100003724();
  v78 = v9;
  __chkstk_darwin(v10);
  sub_10000306C();
  v76 = v12 - v11;
  type metadata accessor for URL();
  sub_100003724();
  v79 = v14;
  v80 = v13;
  __chkstk_darwin(v13);
  sub_10000308C();
  v77 = v15 - v16;
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  v20 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  v21 = sub_1000030B8(v20);
  __chkstk_darwin(v21);
  sub_10000306C();
  v24 = v23 - v22;
  v25 = type metadata accessor for ModelConfiguration.GroupContainer();
  v26 = sub_1000030B8(v25);
  __chkstk_darwin(v26);
  sub_10000306C();
  v27 = *(v4 + 32);
  v85[0] = *(v4 + 16);
  v85[1] = v27;
  v85[2] = *(v4 + 48);
  v28 = type metadata accessor for Persistence.Mode(0, v85);
  sub_100003724();
  v30 = v29;
  sub_100003774();
  __chkstk_darwin(v31);
  sub_100002970();
  type metadata accessor for ModelConfiguration();
  sub_100003724();
  __chkstk_darwin(v32);
  sub_10000306C();
  v37 = v36 - v35;
  v38 = *(v4 + 72);
  if (*(v0 + v38))
  {
    goto LABEL_2;
  }

  v39 = v0;
  v69 = v4;
  v70 = v24;
  v68 = v38;
  v74 = v37;
  v71 = v34;
  v72 = v33;
  type metadata accessor for Schema();
  sub_1001DABAC();
  v82 = Schema.__allocating_init(versionedSchema:)();
  (*(v30 + 16))(v2, v0, v28);
  v40 = sub_100099DF4(qword_1002E12D8, &unk_100247550);
  v41 = sub_100004DFC(v2, 1, v40);
  v73 = v0;
  if (v41 == 1)
  {

    static ModelConfiguration.GroupContainer.none.getter();
    static ModelConfiguration.CloudKitDatabase.none.getter();
    sub_1000328D8();
    ModelConfiguration.init(_:schema:isStoredInMemoryOnly:allowsSave:groupContainer:cloudKitDatabase:)();
  }

  else
  {
    v42 = v79;
    v43 = v19;
    v44 = v19;
    v45 = v80;
    (*(v79 + 32))(v44, v2, v80);
    *&v85[0] = 0xD000000000000012;
    *(&v85[0] + 1) = 0x8000000100247540;
    v46 = v78;
    v47 = v75;
    v48 = v76;
    (*(v78 + 104))(v76, enum case for URL.DirectoryHint.notDirectory(_:), v75);
    sub_1000BBBB0();
    URL.append<A>(path:directoryHint:)();
    v49 = *(v46 + 8);
    v39 = v46 + 8;
    v49(v48, v47);
    v50._countAndFlagsBits = 0x6574696C7173;
    v50._object = 0xE600000000000000;
    URL.appendPathExtension(_:)(v50);
    (*(v42 + 16))(v77, v43, v45);

    static ModelConfiguration.CloudKitDatabase.none.getter();
    sub_1000328D8();
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    (*(v42 + 8))(v43, v45);
  }

  v51 = v83;
  v52 = v69;
  type metadata accessor for ModelContainer();
  sub_1001DAC00();
  sub_100099DF4(qword_1002E1440, qword_100247608);
  v53 = v71;
  v54 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10022E400;
  v56 = v72;
  (*(v53 + 16))(v55 + v54, v39, v72);

  v57 = ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  if (!v1)
  {
    (*(v53 + 8))(v39, v56);

    *(v73 + v68) = v57;

LABEL_2:

    goto LABEL_10;
  }

  v58 = *(v52 + 68);
  v59 = v81;
  (*(v81 + 16))(v51, v73 + v58, v84);
  swift_errorRetain();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    swift_errorRetain();
    v64 = _swift_stdlib_bridgeErrorToNSError();
    *(v62 + 4) = v64;
    *v63 = v64;
    sub_10003292C(&_mh_execute_header, v65, v66, "Failed to create model container: %@");
    sub_10003CD48(v63, &qword_1002E2700, &unk_1002474D0);
    sub_1000327B4(v63);
    sub_100032798();
  }

  (*(v59 + 8))(v51, v84);
  swift_willThrow();

  (*(v53 + 8))(v74, v56);
LABEL_10:
  sub_100005074();
}

void sub_1001D1814(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = objc_autoreleasePoolPush();
  sub_1001D18C0(v5, a1, a2, a3[2], a3[3], a3[4], a4, a3[5], a5, a3[6], a3[7], &v12);
  objc_autoreleasePoolPop(v11);
}

void sub_1001D18C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v67 = a6;
  v68 = a8;
  v57 = a2;
  v58 = a3;
  v65 = a1;
  v51 = a9;
  v52 = type metadata accessor for Logger();
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v53 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100099DF4(&qword_1002E1410, &qword_1002475E0);
  __chkstk_darwin(v16 - 8);
  v55 = &v47 - v17;
  v18 = sub_100099DF4(&qword_1002E1418, &unk_1002475E8);
  v56 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  v64 = a7;
  v21 = type metadata accessor for Optional();
  v59 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v47 - v25;
  v62 = a4;
  v63 = a5;
  v69[0] = a4;
  v69[1] = a5;
  v69[2] = v67;
  v69[3] = v68;
  v60 = a10;
  v61 = a11;
  v69[4] = a10;
  v69[5] = a11;
  v27 = v65;
  v28 = type metadata accessor for Persistence(0, v69);
  v29 = v66;
  sub_1001D10E4();
  if (v29)
  {
    *a12 = v29;
  }

  else
  {
    v49 = v28;
    v48 = v23;
    v50 = v20;
    v66 = v21;
    type metadata accessor for ModelContext();
    swift_allocObject();
    v30 = ModelContext.init(_:)();
    v31 = v64;
    v32 = sub_100002728(v26, 1, 1, v64);
    __chkstk_darwin(v32);
    v33 = v63;
    *(&v47 - 12) = v62;
    *(&v47 - 11) = v33;
    v34 = v68;
    *(&v47 - 10) = v67;
    *(&v47 - 9) = v31;
    v36 = v60;
    v35 = v61;
    *(&v47 - 8) = v34;
    *(&v47 - 7) = v36;
    *(&v47 - 6) = v35;
    *(&v47 - 5) = v26;
    v37 = v58;
    *(&v47 - 4) = v57;
    *(&v47 - 3) = v37;
    *(&v47 - 2) = v30;
    *(&v47 - 1) = v27;
    dispatch thunk of ModelContext.transaction(block:)();
    v67 = v30;
    v68 = v26;
    v38 = v64;
    v39 = v18;
    v40 = v56;
    v41 = v55;
    v42 = sub_100099DF4(&qword_1002E1420, &unk_1002475F8);
    sub_100002728(v41, 1, 1, v42);
    type metadata accessor for DefaultHistoryTransaction();
    sub_100032658(&qword_1002E1428, &type metadata accessor for DefaultHistoryTransaction, &protocol conformance descriptor for DefaultHistoryTransaction);
    HistoryDescriptor.init(predicate:)();
    dispatch thunk of ModelContext.deleteHistory<A>(_:)();
    v43 = v59;
    v44 = v48;
    v45 = v68;
    v46 = v66;
    (*(v59 + 16))(v48, v68, v66);
    if (sub_100004DFC(v44, 1, v38) == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v40 + 8))(v50, v39);

      (*(*(v38 - 8) + 32))(v51, v44, v38);
      (*(v43 + 8))(v45, v46);
    }
  }
}

uint64_t sub_1001D2020(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v31 = a1;
  v32 = a8;
  v34 = a5;
  v35 = a4;
  v36 = a3;
  v37 = a2;
  v33 = type metadata accessor for Logger();
  v14 = *(v33 - 8);
  __chkstk_darwin(v33);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a9;
  v17 = type metadata accessor for Optional();
  v28 = *(v17 - 8);
  v29 = v17;
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  v38 = a6;
  v39 = a7;
  v20 = a7;
  v21 = v32;
  v40 = v32;
  v41 = a10;
  v42 = a11;
  v43 = a12;
  v22 = type metadata accessor for Persistence(0, &v38);
  (*(v14 + 16))(v16, v34 + *(v22 + 68), v33);
  v38 = a6;
  v39 = v20;
  v40 = v21;
  v41 = a10;
  v42 = a11;
  v43 = a12;
  v45 = sub_1001DAB94(0, &v38);
  WitnessTable = swift_getWitnessTable(byte_1002476D0, v45);
  v23 = sub_100007914(v44);
  sub_1001D22E4(v35, v16, v23);

  v24 = v47;
  v37(v44);
  if (v24)
  {
    v38 = a6;
    v39 = v20;
    v40 = v21;
    v41 = a10;
    v42 = a11;
    v43 = a12;
    v25 = type metadata accessor for Persistence.TransactionBodyError(0, &v38);
    swift_getWitnessTable(byte_100247690, v25);
    swift_allocError();
    *v26 = v24;
    return swift_willThrow();
  }

  else
  {
    sub_100002728(v19, 0, 1, v30);
    return (*(v28 + 40))(v31, v19, v29);
  }
}

uint64_t sub_1001D22E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = sub_100032824();
  v7 = *(sub_1001DAB94(v5, v6) + 68);
  type metadata accessor for Logger();
  sub_100003BF0();
  return (*(v8 + 32))(&a3[v7], a2);
}

uint64_t sub_1001D2364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100032824();
  type metadata accessor for Persistence.Mode(v8, v9);
  sub_100003BF0();
  (*(v10 + 32))(a4, a1);
  v11 = sub_100032824();
  v13 = type metadata accessor for Persistence(v11, v12);
  v14 = *(v13 + 68);
  type metadata accessor for Logger();
  sub_100003BF0();
  result = (*(v15 + 32))(a4 + v14, a2);
  *(a4 + *(v13 + 72)) = a3;
  return result;
}

void sub_1001D249C()
{
  sub_100004868();
  v25 = v3;
  v4 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  sub_1000030B8(v4);
  sub_100003774();
  __chkstk_darwin(v5);
  v24 = &v24 - v6;
  v7 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
  sub_1000030B8(v7);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100002970();
  v9 = sub_100099DF4(&qword_1002E1AC0, &qword_100247AD8);
  sub_1000030B8(v9);
  sub_100003774();
  __chkstk_darwin(v10);
  sub_10003CF80();
  v11 = sub_100099DF4(&qword_1002E1AC8, &qword_100247AE0);
  sub_100003724();
  v13 = v12;
  sub_100003774();
  __chkstk_darwin(v14);
  sub_100004880();
  v26[2] = _s20GlobalSyncStateModelCMa_0(0);
  sub_100032848(sub_100032650, v26);
  v15 = sub_100099DF4(&qword_1002E1AD0, &qword_100247AE8);
  sub_1000327CC(v15);
  v16 = sub_100032658(&qword_1002E1AD8, _s20GlobalSyncStateModelCMa_0, byte_100248C60);
  sub_10003290C(v16, _swiftEmptyArrayStorage);
  FetchDescriptor.fetchLimit.setter();
  v17 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v0)
  {
    (*(v13 + 8))(v2, v11);
  }

  else
  {
    v18 = v17;
    if (sub_1001FEDE4(v17))
    {
      sub_1001FEDE8();
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v18 + 32);
      }
    }

    else
    {

      v20 = type metadata accessor for CKSyncEngine.State.Serialization();
      sub_100002728(v1, 1, 1, v20);
      v21 = type metadata accessor for UUID();
      v22 = v24;
      sub_100002728(v24, 1, 1, v21);
      swift_allocObject();
      v19 = sub_1001E3174(v1, v22, 0, 0xF000000000000000);
      dispatch thunk of ModelContext.insert<A>(_:)();
    }

    v23 = v25;
    (*(v13 + 8))(v2, v11);
    (*(*(v23 + 40) + 88))(v19);
  }

  sub_100005074();
}

uint64_t sub_1001D280C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  v8 = sub_100099DF4(&qword_1002E1880, &qword_100247908);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - v10;
  v12 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  (*(*(v12 - 8) + 16))(v7, a1, v12);
  sub_100002728(v7, 0, 1, v12);
  _s22PrivateIdentifierModelCMa_0(0);
  sub_100032658(&qword_1002E1890, _s22PrivateIdentifierModelCMa_0, byte_100249368);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  v13 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v2)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v14 = v13;
    if (sub_1001FEDE4(v13))
    {
      sub_1001FEDE8();
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v14 + 32);
      }

      (*(v9 + 8))(v11, v8);
      a2 = (*(*(a2 + 48) + 392))(v15);
    }

    else
    {
      (*(v9 + 8))(v11, v8);

      return 0;
    }
  }

  return a2;
}

void sub_1001D2AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  v80 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100003724();
  v34 = v33;
  sub_100003774();
  __chkstk_darwin(v35);
  v37 = &v73 - v36;
  v81 = v31;
  v82 = v29;
  v78 = v27;
  *&v79 = v25;
  v83 = v27;
  v84 = v25;
  v85 = v31;
  v86 = v29;
  _s22PrivateIdentifierModelCMa_0(0);
  Predicate.init(_:)();
  v38 = v20;
  v39 = v80;
  v40 = sub_1001D280C(v37, v23);
  (*(v34 + 8))(v37, v32);
  if (!v39)
  {
    v77 = v38;
    if (v40)
    {
      v87 = v40;
      v41 = *(v23 + 24);
      v76 = *(v23 + 48);
      v42 = *(v76 + 16);
      swift_unknownObjectRetain();
      v80 = v40;
      dispatch thunk of Identifiable.id.getter();
      v43 = sub_1001EC54C(v88, v89, *(&v89 + 1), v90, v31, v29, v78, v79);
      swift_unknownObjectRelease();
      v44 = v80;

      if ((v43 & 1) == 0)
      {
        v75 = v42;

        swift_unknownObjectRetain();
        v45 = v44;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.fault.getter();

        v48 = os_log_type_enabled(v46, v47);
        v74 = v31;
        if (v48)
        {
          v49 = sub_1000328AC();
          v77 = v41;
          v50 = v49;
          v73 = swift_slowAlloc();
          v87 = v44;
          v88 = v73;
          *v50 = 136315394;
          dispatch thunk of CustomStringConvertible.description.getter();
          swift_unknownObjectRelease();
          v51 = sub_1000050CC();
          v54 = sub_100009E5C(v51, v52, v53);

          *(v50 + 4) = v54;
          *(v50 + 12) = 2080;
          v56 = v78;
          v55 = v79;
          v57 = sub_1001ECC0C();
          v59 = sub_100009E5C(v57, v58, &v88);

          *(v50 + 14) = v59;
          _os_log_impl(&_mh_execute_header, v46, v47, "Fetched existing identifier record %s does not match requested id %s.", v50, 0x16u);
          v60 = v73;
          swift_arrayDestroy();
          sub_1000327B4(v60);
          sub_1000327B4(v50);

          v61 = v29;
          v62 = v55;
        }

        else
        {
          swift_unknownObjectRelease();

          v61 = v29;
          v56 = v78;
          v62 = v79;
        }

        v87 = v45;
        dispatch thunk of Identifiable.id.getter();
        v63 = v88;
        v79 = v89;
        v64 = v90;
        LOBYTE(v87) = 1;
        v65 = sub_1000050CC();
        sub_100099DF4(v65, v66);
        sub_1000326F8();
        sub_1000326A8(v67, v68, v69, v70);
        swift_allocError();
        *v71 = v63;
        *(v71 + 8) = v79;
        v72 = v74;
        *(v71 + 24) = v64;
        *(v71 + 32) = v72;
        *(v71 + 40) = v61;
        *(v71 + 48) = v56;
        *(v71 + 56) = v62;
        *(v71 + 64) = v87;
        swift_willThrow();

        swift_unknownObjectRelease();
      }
    }
  }

  sub_100005074();
}

void sub_1001D2F14()
{
  sub_100004868();
  v87 = v1;
  v3 = v2;
  v92 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v91 = type metadata accessor for Date();
  sub_100003724();
  v88 = v13;
  __chkstk_darwin(v14);
  sub_10000306C();
  v89 = v16 - v15;
  v17 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  sub_1000030B8(v17);
  sub_100003774();
  __chkstk_darwin(v18);
  sub_10003CF80();
  sub_100099DF4(&qword_1002E1880, &qword_100247908);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v19);
  sub_100004880();
  v100[2] = v12;
  v100[3] = v10;
  v98 = v8;
  v100[4] = v8;
  v100[5] = v6;
  v100[6] = v12;
  v100[7] = v10;

  _s22PrivateIdentifierModelCMa_0(0);
  sub_100032848(sub_100032620, v100);
  v20 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_1000327CC(v20);
  sub_100032718();
  v23 = sub_100032658(v21, v22, byte_100249368);
  sub_10003290C(v23, _swiftEmptyArrayStorage);
  v24 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
  v99 = v12;
  v95 = v3;
  if (v0)
  {

    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = sub_1000328AC();
      v85 = swift_slowAlloc();
      v86 = sub_10003294C();
      v101 = v86;
      *v27 = 136315394;
      v28 = sub_1001ECC0C();
      v30 = sub_100009E5C(v28, v29, &v101);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v31;
      *v85 = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to get count of existing persisted record with identifier %s: %@. Proceeding to allow insertion of a new record.", v27, 0x16u);
      sub_10003CD48(v85, &qword_1002E2700, &unk_1002474D0);
      sub_100032798();
      sub_100004118(v86);
      sub_100032798();
      v32 = v27;
      v33 = v8;
      sub_1000327B4(v32);

      v3 = v95;
    }

    else
    {

      v3 = v95;
      v33 = v8;
    }
  }

  else
  {
    v33 = v8;
    if (v24)
    {

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v94 = v6;
        v37 = sub_10003294C();
        v101 = v37;
        *v36 = 136315138;
        v38 = v99;
        v39 = sub_1001ECC0C();
        v41 = sub_100009E5C(v39, v40, &v101);

        *(v36 + 4) = v41;
        sub_10003292C(&_mh_execute_header, v42, v43, "Attempting to insert identifier record with identifier %s, but a record with the same identifier already exists. Preventing duplicate insertion.");
        sub_100004118(v37);
        v44 = v37;
        v6 = v94;
        sub_1000327B4(v44);
        sub_100032798();
      }

      else
      {

        v38 = v12;
      }

      LOBYTE(v110) = 0;
      v101 = v38;
      v102 = v10;
      v103 = v8;
      v104 = v6;
      v109 = 0;
      v77 = sub_1000050CC();
      sub_100099DF4(v77, v78);
      sub_1000326F8();
      sub_1000326A8(v79, v80, v81, v82);
      swift_willThrowTypedImpl();
      v83 = sub_100032778();
      v84(v83);

      v76 = v6;
      v65 = 0;
      v68 = v10;
      v75 = v38;
      v64 = v8;
      goto LABEL_16;
    }
  }

  v45 = *(v3 + 24);
  (*(v88 + 16))(v89, v92, v91);
  v46 = *(v3 + 48);
  v47 = *(v46 + 400);

  v48 = v33;
  v49 = v47(v33, v6, v99, v10, v89, v45, v46);
  (*(v46 + 384))(v45, v46);
  v50 = v10;
  dispatch thunk of ModelContext.insert<A>(_:)();

  v110 = v49;
  dispatch thunk of Identifiable.id.getter();
  v51 = v48;
  LOBYTE(v48) = sub_1001EC54C(v101, v102, v103, v104, v99, v10, v48, v6);

  if ((v48 & 1) == 0)
  {

    swift_unknownObjectRetain();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = sub_1000328AC();
      v96 = swift_slowAlloc();
      v101 = v96;
      *v56 = 136315394;
      v110 = v49;
      v90 = v55;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      swift_unknownObjectRelease();
      v60 = sub_100009E5C(v57, v59, &v101);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      v61 = sub_1001ECC0C();
      v63 = sub_100009E5C(v61, v62, &v101);

      *(v56 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v54, v90, "Inserted identifier record %s does not have expected id %s.", v56, 0x16u);
      swift_arrayDestroy();
      sub_1000327B4(v96);
      sub_1000327B4(v56);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v8 = v6;
    v101 = v49;
    dispatch thunk of Identifiable.id.getter();
    v10 = v111;
    v93 = v110;
    v64 = v112;
    v97 = v113;
    v65 = 1;
    v114 = 1;
    v101 = v110;
    v102 = v111;
    v103 = v112;
    v104 = v113;
    v105 = v99;
    v106 = v50;
    v107 = v51;
    v108 = v8;
    v109 = 1;

    v66 = sub_1000050CC();
    sub_100099DF4(v66, v67);
    v68 = v50;
    sub_1000326F8();
    sub_1000326A8(v69, v70, v71, v72);
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
    v73 = sub_100032778();
    v74(v73);
    v75 = v93;
    v76 = v97;
    v38 = v99;
LABEL_16:
    *v87 = v75;
    *(v87 + 8) = v10;
    *(v87 + 16) = v64;
    *(v87 + 24) = v76;
    *(v87 + 32) = v38;
    *(v87 + 40) = v68;
    *(v87 + 48) = v98;
    *(v87 + 56) = v8;
    *(v87 + 64) = v65;
    goto LABEL_17;
  }

  v52 = sub_100032778();
  v53(v52);
LABEL_17:
  sub_100005074();
}

uint64_t sub_1001D38F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v41 = type metadata accessor for Predicate();
  v9 = type metadata accessor for Optional();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v42 = v35 - v10;
  v45 = *v4;
  v57 = dispatch thunk of ModelContext.insertedModelsArray.getter();
  v11 = a2[3];
  v40 = a2[2];
  v48 = v40;
  v49 = v11;
  v39 = v11;
  v12 = a2[5];
  v38 = a2[4];
  v50 = v38;
  v51 = a3;
  v13 = a2[6];
  v14 = a2[7];
  v37 = v12;
  v52 = v12;
  v53 = v13;
  v15 = v13;
  v36 = v14;
  v54 = v14;
  v55 = a4;
  v46 = a4;
  sub_100099DF4(&qword_1002E15F8, &qword_1002476F8);
  sub_1000326A8(&qword_1002E1600, &qword_1002E15F8, &qword_1002476F8, &protocol conformance descriptor for [A]);
  v16 = v47;
  v17 = Sequence.compactMap<A>(_:)();

  v57 = v17;
  v18 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v18);
  v47 = a1;
  v20 = Sequence.filter(_:)();

  if (!v16)
  {
    v56 = v20;
    v35[3] = v20;
    v22 = v40;
    v23 = v39;
    v24 = v38;
    v25 = v37;
    v35[1] = WitnessTable;
    v26 = v36;
    v27 = sub_1001D3D24(v45, v40, v39, v38, a3, v37, v15, v36, v46);
    v35[2] = v35;
    __chkstk_darwin(v27);
    v35[-10] = v22;
    v35[-9] = v23;
    v35[-8] = v24;
    v35[-7] = a3;
    v35[-6] = v25;
    v35[-5] = v15;
    v28 = v46;
    v35[-4] = v26;
    v35[-3] = v28;
    v33 = v29;
    v34 = v30;
    Sequence.forEach(_:)();

    v32 = v41;
    v31 = v42;
    (*(*(v41 - 8) + 16))(v42, v47, v41);
    sub_100002728(v31, 0, 1, v32);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    return (*(v43 + 8))(v31, v44);
  }

  return result;
}

uint64_t sub_1001D3CA4@<X0>(void *a4@<X8>)
{
  swift_unknownObjectRetain();
  sub_100099DF4(&qword_1002E1608, &qword_100247700);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a4 = 0;
  }

  return result;
}

uint64_t (*sub_1001D3D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1)
{
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a7;
  v17[8] = a8;
  v17[9] = a9;
  v17[10] = a1;

  return sub_1000323EC;
}

uint64_t sub_1001D3DD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100099DF4(&qword_1002E1230, &qword_1002479B0);
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = v33 - v5;
  v6 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  __chkstk_darwin(v6 - 8);
  v8 = v33 - v7;
  v36 = sub_100099DF4(&qword_1002E1880, &qword_100247908);
  v43 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = v33 - v9;
  sub_1000325C8(a1, v8, &qword_1002E1878, &qword_100247900);
  sub_100099DF4(&qword_1002E1948, &qword_1002479B8);
  sub_100099DF4(&qword_1002E1950, &unk_1002479C0);
  *(swift_allocObject() + 16) = xmmword_10022E400;
  swift_getKeyPath();
  sub_100032658(&qword_1002E1958, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  SortDescriptor.init<A>(_:order:)();
  _s22PrivateIdentifierModelCMa_0(0);
  sub_100032658(&qword_1002E1890, _s22PrivateIdentifierModelCMa_0, byte_100249368);
  v11 = v10;
  v12 = v36;
  FetchDescriptor.init(predicate:sortBy:)();
  sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100247530;
  *(v13 + 32) = swift_getKeyPath();
  *(v13 + 40) = swift_getKeyPath();
  *(v13 + 48) = swift_getKeyPath();
  FetchDescriptor.propertiesToFetch.setter();
  v14 = v41;
  v15 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v14)
  {
    return (*(v43 + 8))(v10, v12);
  }

  v17 = v15;
  v18 = v35;
  v19 = sub_1000044BC(v15);
  if (!v19)
  {

    result = (*(v43 + 8))(v11, v12);
    v22 = _swiftEmptyArrayStorage;
LABEL_14:
    *a2 = v22;
    return result;
  }

  v20 = v19;
  v33[1] = 0;
  v34 = v11;
  v44 = _swiftEmptyArrayStorage;
  result = sub_1001CC574(0, v19 & ~(v19 >> 63), 0);
  v41 = v20;
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v22 = v44;
    v37 = v17 & 0xC000000000000001;
    v38 = v17;
    v39 = v4;
    v40 = a2;
    do
    {
      if (v37)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v23 = (v18 + *(v4 + 48));
      sub_1001E68AC();
      sub_1001E6944();
      v25 = v24;
      v27 = v26;
      v28 = sub_1001E6AA0();
      v30 = v29;

      *v23 = v25;
      v23[1] = v27;
      v23[2] = v28;
      v23[3] = v30;
      v44 = v22;
      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        sub_1001CC574((v31 > 1), v32 + 1, 1);
        v22 = v44;
      }

      ++v21;
      v22[2] = v32 + 1;
      sub_1001DC084(v18, v22 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32);
      a2 = v40;
      v4 = v39;
    }

    while (v41 != v21);
    (*(v43 + 8))(v34, v36);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1001D4324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  a19 = v23;
  a20 = v24;
  v85 = v20;
  v86 = v21;
  v74 = v25;
  v26 = sub_100099DF4(&qword_1002E1230, &qword_1002479B0);
  sub_100003724();
  v84 = v27;
  __chkstk_darwin(v28);
  sub_10000308C();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  v34 = v73 - v33;
  __chkstk_darwin(v35);
  v37 = v73 - v36;
  v38 = type metadata accessor for UUID();
  sub_100003724();
  v82 = v39;
  __chkstk_darwin(v40);
  sub_10000306C();
  v43 = v42 - v41;
  v44 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  sub_1000030B8(v44);
  sub_100003774();
  __chkstk_darwin(v45);
  sub_100004880();
  v88 = _s22PrivateIdentifierModelCMa_0(0);
  Predicate.init(_:)();
  v46 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100032830(v22, v47, v48, v46);
  v49 = v86;
  sub_1001D3DD4(v22, &a10);
  sub_10003CD48(v22, &qword_1002E1878, &qword_100247900);
  if (!v49)
  {
    v50 = v31;
    v51 = v84;
    v52 = v74;
    v73[2] = 0;
    v80 = v43;
    v81 = v37;
    v53 = a10;
    v54 = *(a10 + 16);
    if (v54)
    {
      v78 = v50;
      v86 = v54;
      v87 = _swiftEmptyArrayStorage;
      sub_1001CC594(0, v54, 0);
      v55 = v87;
      v56 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v73[1] = v53;
      v57 = v53 + v56;
      v58 = v51[9];
      v59 = v81;
      v60 = (v82 + 32);
      v75 = (v82 + 16);
      v76 = v58;
      v61 = v80;
      v79 = v26;
      v77 = v34;
      do
      {
        v85 = v55;
        sub_1000325C8(v57, v59, &qword_1002E1230, &qword_1002479B0);
        sub_1000325C8(v59, v34, &qword_1002E1230, &qword_1002479B0);
        v62 = *(v26 + 48);
        v83 = *&v34[v62];
        v63 = *&v34[v62 + 16];
        v64 = *&v34[v62 + 24];
        v65 = v34;
        v66 = v78;
        v67 = v78 + v62;
        v84 = *v60;
        (v84)(v78, v65, v38);
        *v67 = v83;
        *(v67 + 16) = v63;
        *(v67 + 24) = v64;
        v59 = v81;
        (*v75)(v61, v66, v38);
        sub_10003CD48(v66, &qword_1002E1230, &qword_1002479B0);
        v55 = v85;
        sub_10003CD48(v59, &qword_1002E1230, &qword_1002479B0);
        v87 = v55;
        v69 = v55[2];
        v68 = v55[3];
        if (v69 >= v68 >> 1)
        {
          sub_1001CC594((v68 > 1), v69 + 1, 1);
          v55 = v87;
        }

        v55[2] = v69 + 1;
        v61 = v80;
        (v84)(v55 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v69, v80, v38);
        v34 = v77;
        v57 += v76;
        --v86;
        v26 = v79;
      }

      while (v86);

      v70 = v74;
    }

    else
    {

      v55 = _swiftEmptyArrayStorage;
      v70 = v52;
    }

    v70[3] = sub_100099DF4(&qword_1002E1A20, &qword_100247A88);
    sub_100032748();
    v70[4] = sub_1000326A8(v71, &qword_1002E1A20, &qword_100247A88, v72);
    *v70 = v55;
  }

  sub_100005074();
}

uint64_t sub_1001D4788@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100099DF4(&qword_1002E1A30, &qword_100247A90);
  v4 = *(v3 - 8);
  v17 = v3;
  v18 = v4;
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = sub_100099DF4(&qword_1002E1898, &qword_100247918);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = sub_100099DF4(&qword_1002E1A38, &qword_100247A98);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - v13;
  sub_1000326A8(&qword_1002E18A8, &qword_1002E1898, &qword_100247918, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  static PredicateExpressions.build_NilLiteral<A>()();
  a2[3] = sub_100099DF4(&qword_1002E1A40, &qword_100247AA0);
  a2[4] = sub_1001DC53C();
  sub_100007914(a2);
  sub_1000326A8(&qword_1002E1A60, &qword_1002E1A38, &qword_100247A98, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_1000326A8(&qword_1002E1A68, &qword_1002E1A30, &qword_100247A90, &protocol conformance descriptor for PredicateExpressions.NilLiteral<A>);
  sub_100032454(&qword_1002E16F0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  v15 = v17;
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  (*(v18 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1001D4B0C@<X0>(void *a2@<X8>)
{
  v5 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  sub_1000030B8(v5);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100003B38();
  v7 = type metadata accessor for Date();
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000306C();
  v13 = v12 - v11;
  static Date.- infix(_:_:)();
  _s22PrivateIdentifierModelCMa_0(0);
  Predicate.init(_:)();
  v14 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100032830(v3, v15, v16, v14);
  a2[3] = sub_100099DF4(&qword_1002E1938, &qword_1002479A8);
  sub_100032748();
  a2[4] = sub_1000326A8(v17, &qword_1002E1938, &qword_1002479A8, v18);
  sub_1001D3DD4(v3, a2);
  sub_10003CD48(v3, &qword_1002E1878, &qword_100247900);
  if (v20)
  {
    sub_1001513E8(a2);
  }

  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_1001D4D10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a2;
  v60 = a3;
  v5 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v51 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100099DF4(&qword_1002E1610, &qword_100247708);
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  __chkstk_darwin(v7);
  v48 = v41 - v9;
  v52 = sub_100099DF4(&qword_1002E1968, &qword_1002479F8);
  v55 = *(v52 - 8);
  __chkstk_darwin(v52);
  v46 = v41 - v10;
  v11 = sub_100099DF4(&qword_1002E1970, &qword_100247A00);
  v12 = *(v11 - 8);
  v58 = v11;
  v59 = v12;
  __chkstk_darwin(v11);
  v47 = v41 - v13;
  v14 = sub_100099DF4(&qword_1002E1898, &qword_100247918);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - v16;
  v44 = sub_100099DF4(&qword_1002E1978, &qword_100247A08);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v19 = v41 - v18;
  v20 = sub_100099DF4(&qword_1002E1980, &qword_100247A10);
  v21 = *(v20 - 8);
  v49 = v20;
  v50 = v21;
  __chkstk_darwin(v20);
  v61 = v41 - v22;
  v23 = *a1;
  sub_1000326A8(&qword_1002E18A8, &qword_1002E1898, &qword_100247918, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v24 = *(v15 + 8);
  v41[1] = (v15 + 8);
  v42 = v24;
  v24(v17, v14);
  v62 = a2;
  v63 = v23;
  sub_100099DF4(&qword_1002E1988, &qword_100247A40);
  type metadata accessor for Date();
  v41[0] = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_1000326A8(&qword_1002E1990, &qword_1002E1978, &qword_100247A08, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_1000326A8(&qword_1002E1998, &qword_1002E1988, &qword_100247A40, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  v25 = v44;
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v45 + 8))(v19, v25);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v26 = v46;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v42(v17, v14);
  v27 = v48;
  static PredicateExpressions.build_Arg<A>(_:)();
  v29 = v53;
  v28 = v54;
  v30 = v51;
  (*(v53 + 104))(v51, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v54);
  sub_1000326A8(&qword_1002E19A0, &qword_1002E1968, &qword_1002479F8, v41[0]);
  sub_1000326A8(&qword_1002E1660, &qword_1002E1610, &qword_100247708, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_100032658(&qword_1002DB968, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v31 = v47;
  v32 = v27;
  v33 = v52;
  v34 = v56;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v29 + 8))(v30, v28);
  (*(v57 + 8))(v32, v34);
  (*(v55 + 8))(v26, v33);
  v35 = sub_100099DF4(&qword_1002E19A8, &qword_100247A70);
  v36 = v60;
  v60[3] = v35;
  v36[4] = sub_1001DC0F4();
  sub_100007914(v36);
  sub_1000326A8(&qword_1002E1A00, &qword_1002E1980, &qword_100247A10, &protocol conformance descriptor for PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  sub_1000326A8(&qword_1002E1A08, &qword_1002E1970, &qword_100247A00, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v37 = v61;
  v38 = v49;
  v39 = v58;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v59 + 8))(v31, v39);
  return (*(v50 + 8))(v37, v38);
}

uint64_t sub_1001D5558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v47 = a2;
  v50 = a1;
  v63 = a4;
  v56 = sub_100099DF4(&qword_1002E1898, &qword_100247918);
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v40 - v4;
  v5 = sub_100099DF4(&qword_1002E1968, &qword_1002479F8);
  v6 = *(v5 - 8);
  v59 = v5;
  v60 = v6;
  __chkstk_darwin(v5);
  v53 = &v40 - v7;
  v8 = sub_100099DF4(&qword_1002E1970, &qword_100247A00);
  v9 = *(v8 - 8);
  v61 = v8;
  v62 = v9;
  __chkstk_darwin(v8);
  v55 = &v40 - v10;
  v64 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v11 = *(v64 - 8);
  __chkstk_darwin(v64);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100099DF4(&qword_1002E1610, &qword_100247708);
  v15 = *(v14 - 8);
  v65 = v14;
  v66 = v15;
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  v18 = sub_100099DF4(&qword_1002E19E8, &qword_100247A80);
  v48 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  v21 = sub_100099DF4(&qword_1002E19D8, &qword_100247A78);
  v22 = *(v21 - 8);
  v51 = v21;
  v52 = v22;
  __chkstk_darwin(v21);
  v49 = &v40 - v23;
  v41 = &protocol conformance descriptor for PredicateExpressions.Variable<A>;
  sub_1000326A8(&qword_1002E1A10, &qword_1002E19E8, &qword_100247A80, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  v50 = type metadata accessor for Date();
  static PredicateExpressions.build_Arg<A>(_:)();
  v46 = enum case for PredicateExpressions.ComparisonOperator.lessThan(_:);
  v45 = *(v11 + 104);
  v24 = v64;
  v45(v13);
  v44 = sub_1000326A8(&qword_1002E1660, &qword_1002E1610, &qword_100247708, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v43 = sub_100032658(&qword_1002DB968, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v25 = v65;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  v26 = *(v11 + 8);
  v42 = v11 + 8;
  v26(v13, v24);
  v27 = *(v66 + 8);
  v66 += 8;
  v27(v17, v25);
  (*(v48 + 8))(v20, v18);
  sub_1000326A8(&qword_1002E18A8, &qword_1002E1898, &qword_100247918, v41);
  v28 = v54;
  v29 = v56;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v30 = v53;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v58 + 8))(v28, v29);
  static PredicateExpressions.build_Arg<A>(_:)();
  v31 = v64;
  (v45)(v13, v46, v64);
  sub_1000326A8(&qword_1002E19A0, &qword_1002E1968, &qword_1002479F8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v32 = v55;
  v33 = v30;
  v34 = v59;
  v35 = v65;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  v26(v13, v31);
  v27(v17, v35);
  (*(v60 + 8))(v33, v34);
  sub_1000326A8(&qword_1002E1A18, &qword_1002E19D8, &qword_100247A78, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  sub_1000326A8(&qword_1002E1A08, &qword_1002E1970, &qword_100247A00, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v36 = v49;
  v37 = v51;
  v38 = v61;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v62 + 8))(v32, v38);
  return (*(v52 + 8))(v36, v37);
}

void sub_1001D5D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  v100 = v21;
  v24 = v23;
  v26 = v25;
  v97 = type metadata accessor for UUID();
  sub_100003724();
  v99 = v27;
  __chkstk_darwin(v28);
  sub_10000308C();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  v34 = &v87 - v33;
  v35 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100003724();
  v37 = v36;
  sub_100003774();
  __chkstk_darwin(v38);
  sub_10000AF24();
  v98 = v26;
  v101 = v26;
  _s22PrivateIdentifierModelCMa_0(0);
  Predicate.init(_:)();
  v39 = v20;
  v40 = v100;
  v41 = sub_1001D280C(v22, v24);
  (*(v37 + 8))(v22, v35);
  if (!v40)
  {
    v100 = v39;
    v96 = v31;
    v42 = v98;
    if (v41)
    {
      v43 = *(v24 + 48);
      v44 = *(v43 + 144);
      v45 = *(v24 + 24);
      swift_unknownObjectRetain();
      v46 = v34;
      v94 = v45;
      v95 = v41;
      v91 = v43;
      v92 = v44;
      v93 = v43 + 144;
      v44(v45, v43);
      sub_100032730();
      sub_100032658(v47, v48, &protocol conformance descriptor for UUID);
      v49 = v42;
      v50 = v97;
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = v99;
      v53 = *(v99 + 8);
      v53(v46, v50);
      if (v51)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v89 = v53;
        v54 = *(v52 + 16);
        v55 = v96;
        v99 = v52 + 16;
        v90 = v54;
        v54(v96, v49, v50);
        v56 = v95;
        swift_unknownObjectRetain();
        v57 = v50;
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = sub_1000328AC();
          v100 = swift_slowAlloc();
          v102 = v56;
          v103 = v100;
          *v60 = 136315394;
          v61 = v91;
          dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v59;
          swift_unknownObjectRelease();
          v62 = sub_1000050CC();
          v65 = sub_100009E5C(v62, v63, v64);

          *(v60 + 4) = v65;
          *(v60 + 12) = 2080;
          sub_100032730();
          sub_100032658(v66, v67, &protocol conformance descriptor for UUID);
          v68 = v96;
          v69 = dispatch thunk of CustomStringConvertible.description.getter();
          v70 = v57;
          v72 = v71;
          v73 = v68;
          v74 = v70;
          v89(v73, v70);
          v75 = sub_100009E5C(v69, v72, &v103);

          *(v60 + 14) = v75;
          _os_log_impl(&_mh_execute_header, v58, v88, "Fetched existing identifier record %s does not match requested uuid %s.", v60, 0x16u);
          v76 = v100;
          swift_arrayDestroy();
          sub_1000327B4(v76);
          sub_1000327B4(v60);

          v77 = v74;
        }

        else
        {

          swift_unknownObjectRelease();
          v89(v55, v57);
          v77 = v57;
          v61 = v91;
        }

        v78 = sub_1000050CC();
        sub_100099DF4(v78, v79);
        sub_1000326F8();
        sub_1000326A8(v80, v81, v82, v83);
        swift_allocError();
        v85 = v84;
        v86 = *(sub_100099DF4(&qword_1002E1930, &qword_1002479A0) + 48);
        v92(v94, v61);
        v90(v85 + v86, v49, v77);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        swift_unknownObjectRelease_n();
      }
    }
  }

  sub_100005074();
}

uint64_t sub_1001D6238()
{
  sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v0);
  sub_100003B38();
  _s22PrivateIdentifierModelCMa_0(0);
  sub_100032864();
  sub_100032718();
  v3 = sub_100032658(v1, v2, byte_100249368);
  sub_100032888(v3);
  v4 = sub_1000328F8();
  return v5(v4);
}

void sub_1001D6344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  v47 = v22;
  v24 = v23;
  v26 = v25;
  v46 = v27;
  v29 = v28;
  v31 = v30;
  v32 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  sub_1000030B8(v32);
  sub_100003774();
  __chkstk_darwin(v33);
  v35 = &v45 - v34;
  v36 = sub_100099DF4(&qword_1002E1880, &qword_100247908);
  sub_100003724();
  v38 = v37;
  sub_100003774();
  __chkstk_darwin(v39);
  sub_1000327EC();
  v56 = v31;
  v57 = v29;
  _s22PrivateIdentifierModelCMa_0(0);
  Predicate.init(_:)();
  v40 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100032830(v35, v41, v42, v40);
  sub_100032718();
  sub_100032658(v43, v44, byte_100249368);
  FetchDescriptor.init(predicate:sortBy:)();
  v58 = static Array._allocateUninitialized(_:)();
  v48 = *(v26 + 16);
  v49 = *(v26 + 32);
  v50 = v24;
  v51 = *(v26 + 40);
  v52 = *(v26 + 56);
  v53 = &v58;
  v54 = v46;
  v55 = v47;
  dispatch thunk of ModelContext.enumerate<A>(_:batchSize:allowEscapingMutations:block:)();
  (*(v38 + 8))(v21, v36);
  if (v20)
  {
  }

  sub_100005074();
}

uint64_t sub_1001D6584@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_100099DF4(&qword_1002E16A8, &qword_100247798);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_100099DF4(&qword_1002E1898, &qword_100247918);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100099DF4(&qword_1002E18A0, &qword_100247920);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_1000326A8(&qword_1002E18A8, &qword_1002E1898, &qword_100247918, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = sub_100099DF4(&qword_1002E18B0, &qword_100247950);
  a4[4] = sub_1001DBD24();
  sub_100007914(a4);
  sub_1000326A8(&qword_1002E18D0, &qword_1002E18A0, &qword_100247920, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_1000326A8(&qword_1002E16D8, &qword_1002E16A8, &qword_100247798, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v17 = v21;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

void sub_1001D68F0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = objc_autoreleasePoolPush();
  sub_1001D69BC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &v20);
  objc_autoreleasePoolPop(v19);
}

uint64_t sub_1001D69BC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v14 = __chkstk_darwin(a1);
  (*(v15 + 392))(v14);
  a3();
  if (v12)
  {
    result = swift_unknownObjectRelease();
    *a12 = v12;
  }

  else
  {
    type metadata accessor for Array();
    Array.append(_:)();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001D6AC8()
{
  sub_100004868();
  v2 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  sub_1000030B8(v2);
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100002970();
  sub_100099DF4(&qword_1002E1880, &qword_100247908);
  sub_100003724();
  v19 = v5;
  v20 = v4;
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100004880();
  v7 = dispatch thunk of ModelContext.insertedModelsArray.getter();
  v8 = 0;
  v9 = *(v7 + 16);
LABEL_2:
  v10 = 16 * v8 + 32;
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    ++v8;
    v11 = v10 + 16;
    v12 = *(v7 + v10);
    Class = object_getClass(v12);
    v10 = v11;
    if (Class == _TtCO18PrivateIdentifiers8SchemaV222PrivateIdentifierModel)
    {
      v10 = v11;
      if (v12)
      {
        swift_unknownObjectRetain();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_2;
      }
    }
  }

  v14 = sub_1001FEDE4(_swiftEmptyArrayStorage);
  for (i = 0; v14 != i; ++i)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_20;
    }

    sub_1001E6DDC();
  }

  v16 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100002728(v0, 1, 1, v16);
  _s22PrivateIdentifierModelCMa_0(0);
  sub_100032718();
  sub_100032658(v17, v18, byte_100249368);
  FetchDescriptor.init(predicate:sortBy:)();
  dispatch thunk of ModelContext.enumerate<A>(_:batchSize:allowEscapingMutations:block:)();
  (*(v19 + 8))(v1, v20);
  sub_100005074();
}

void sub_1001D6DF0()
{
  sub_100004868();
  v38 = v0;
  v39 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_100099DF4(&qword_1002E1668, &qword_100247750);
  sub_1000030B8(v15);
  sub_100003774();
  __chkstk_darwin(v16);
  sub_10003CF80();
  sub_100099DF4(&qword_1002E1670, &unk_100247758);
  sub_100003724();
  v18 = v17;
  sub_100003774();
  __chkstk_darwin(v19);
  sub_10000AF24();
  v40[2] = v6;
  v40[3] = v14;
  v40[4] = v12;
  v40[5] = v10;
  v21 = v20;
  v40[6] = v8;
  v40[7] = v14;
  v40[8] = v12;
  _s29PrivateIdentifierHistoryModelCMa(0);
  sub_100032848(sub_1000324C0, v40);
  v22 = sub_100099DF4(&qword_1002E15E8, &qword_1002476F0);
  sub_1000327CC(v22);
  sub_100032760();
  sub_100032658(v23, v24, byte_100248F58);
  FetchDescriptor.init(predicate:sortBy:)();
  sub_100099DF4(&qword_1002E17A8, &qword_100247868);
  sub_100099DF4(&qword_1002E17B0, &qword_100247870);
  *(swift_allocObject() + 16) = xmmword_10022E400;
  swift_getKeyPath();
  sub_100032658(&qword_1002DB968, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  SortDescriptor.init<A>(_:order:)();
  FetchDescriptor.sortBy.setter();
  v25 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v39)
  {
    (*(v18 + 8))(v2, v21);
  }

  else
  {
    v39 = &v38;
    v40[9] = v25;
    v26 = *(v4 + 32);
    __chkstk_darwin(v25);
    v33[1] = *(v4 + 16);
    v34 = v26;
    v35 = *(v4 + 40);
    v36 = *(v4 + 56);
    v37 = v26;
    v27 = sub_100099DF4(&qword_1002E17B8, &qword_100247878);
    v38 = v21;
    v28 = v27;
    sub_100032748();
    v31 = sub_1000326A8(v29, &qword_1002E17B8, &qword_100247878, v30);
    sub_10020148C(sub_1000324D4, v33, v28, v26, &type metadata for Never, v31, &protocol witness table for Never, v32);
    (*(v18 + 8))(v2, v38);
  }

  sub_100005074();
}

uint64_t sub_1001D71BC@<X0>(uint64_t *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v115 = a8;
  v114 = a7;
  v105 = a6;
  v104 = a5;
  v103 = a4;
  v102 = a3;
  v127 = a2;
  v121 = a9;
  v10 = sub_100099DF4(&qword_1002E17C0, &qword_100247880);
  v11 = *(v10 - 8);
  v122 = v10;
  v123 = v11;
  __chkstk_darwin(v10);
  v120 = v77 - v12;
  v13 = sub_100099DF4(&qword_1002E1690, &qword_100247780);
  v14 = *(v13 - 8);
  v118 = v13;
  v119 = v14;
  __chkstk_darwin(v13);
  v111 = v77 - v15;
  v112 = sub_100099DF4(&qword_1002E1698, &qword_100247788);
  v113 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = v77 - v16;
  v17 = sub_100099DF4(&qword_1002E16A0, &qword_100247790);
  v18 = *(v17 - 8);
  v116 = v17;
  v117 = v18;
  __chkstk_darwin(v17);
  v110 = v77 - v19;
  v95 = sub_100099DF4(&qword_1002E17C8, &qword_100247888);
  v97 = *(v95 - 8);
  __chkstk_darwin(v95);
  v91 = v77 - v20;
  v100 = sub_100099DF4(&qword_1002E17D0, &qword_100247890);
  v101 = *(v100 - 8);
  __chkstk_darwin(v100);
  v90 = v77 - v21;
  v92 = sub_100099DF4(&qword_1002E16B0, &qword_1002477A0);
  v94 = *(v92 - 8);
  __chkstk_darwin(v92);
  v84 = v77 - v22;
  v98 = sub_100099DF4(&qword_1002E17D8, &qword_100247898);
  v99 = *(v98 - 8);
  __chkstk_darwin(v98);
  v88 = v77 - v23;
  v79 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v24 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100099DF4(&qword_1002E1610, &qword_100247708);
  v85 = *(v80 - 8);
  __chkstk_darwin(v80);
  v27 = v77 - v26;
  v28 = sub_100099DF4(&qword_1002E1618, &qword_100247710);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v77 - v30;
  v128 = sub_100099DF4(&qword_1002E1620, &qword_100247718);
  v131 = *(v128 - 8);
  __chkstk_darwin(v128);
  v106 = v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v77 - v34;
  v82 = sub_100099DF4(&qword_1002E1630, &qword_100247748);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v126 = v77 - v36;
  v93 = sub_100099DF4(&qword_1002E17E0, &qword_1002478A0);
  v96 = *(v93 - 8);
  __chkstk_darwin(v93);
  v129 = v77 - v37;
  v107 = sub_100099DF4(&qword_1002E17E8, &qword_1002478A8);
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v89 = v77 - v38;
  v125 = *a1;
  v77[1] = sub_1000326A8(&qword_1002E1628, &qword_1002E1618, &qword_100247710, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v39 = v35;
  v77[0] = v28;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v130 = *(v29 + 8);
  v132 = v29 + 8;
  v130(v31, v28);
  type metadata accessor for Date();
  static PredicateExpressions.build_Arg<A>(_:)();
  v40 = v78;
  v41 = v79;
  (*(v24 + 104))(v78, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v79);
  v124 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v86 = sub_1000326A8(&qword_1002E1658, &qword_1002E1620, &qword_100247718, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v127 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_1000326A8(&qword_1002E1660, &qword_1002E1610, &qword_100247708, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v87 = &type metadata accessor for Date;
  sub_100032658(&qword_1002DB968, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v81 = v39;
  v42 = v128;
  v43 = v80;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v24 + 8))(v40, v41);
  v85[1](v27, v43);
  v44 = *(v131 + 8);
  v131 += 8;
  v85 = v44;
  (v44)(v39, v42);
  v45 = v77[0];
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v46 = v84;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v130(v31, v45);
  v133 = v102;
  v134 = v103;
  v135 = v104;
  v136 = v105;
  v47 = v91;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  sub_1000326A8(&qword_1002E17F0, &qword_1002E17C8, &qword_100247888, v127);
  v48 = v90;
  v49 = v95;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v97 + 8))(v47, v49);
  v50 = v124;
  sub_1000326A8(&qword_1002E16D0, &qword_1002E16B0, &qword_1002477A0, v124);
  sub_1000326A8(&qword_1002E17F8, &qword_1002E17D0, &qword_100247890, v50);
  v51 = v88;
  v52 = v92;
  v53 = v100;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v101 + 8))(v48, v53);
  (*(v94 + 8))(v46, v52);
  sub_1000326A8(&qword_1002E1800, &qword_1002E1630, &qword_100247748, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v105 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  sub_1000326A8(&qword_1002E1808, &qword_1002E17D8, &qword_100247898, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v54 = v126;
  v55 = v82;
  v56 = v98;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v99 + 8))(v51, v56);
  (*(v83 + 8))(v54, v55);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v57 = v109;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v130(v31, v45);
  v133 = v114;
  v134 = v115;
  sub_100099DF4(&qword_1002DCC48, &qword_100238200);
  v58 = v111;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_1000326A8(&qword_1002E16E0, &qword_1002E1698, &qword_100247788, v124);
  sub_1000326A8(&qword_1002E16E8, &qword_1002E1690, &qword_100247780, v127);
  sub_100032454(&qword_1002E16F0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  v59 = v110;
  v60 = v112;
  v61 = v118;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v119 + 8))(v58, v61);
  (*(v113 + 8))(v57, v60);
  sub_1000326A8(&qword_1002E1810, &qword_1002E17E0, &qword_1002478A0, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_1000326A8(&qword_1002E1700, &qword_1002E16A0, &qword_100247790, v105);
  v62 = v89;
  v63 = v129;
  v64 = v93;
  v65 = v116;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v117 + 8))(v59, v65);
  (*(v96 + 8))(v63, v64);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v66 = v81;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v67 = v130;
  v130(v31, v45);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v68 = v106;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v67(v31, v45);
  sub_100032658(&qword_1002E27C0, v87, &protocol conformance descriptor for Date);
  v69 = v120;
  v70 = v128;
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  v71 = v85;
  (v85)(v68, v70);
  (v71)(v66, v70);
  v72 = sub_100099DF4(&qword_1002E1818, &qword_1002478F8);
  v73 = v121;
  v121[3] = v72;
  v73[4] = sub_1001DB8B8();
  sub_100007914(v73);
  sub_1000326A8(&qword_1002E1868, &qword_1002E17E8, &qword_1002478A8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_1000326A8(&qword_1002E1870, &qword_1002E17C0, &qword_100247880, &protocol conformance descriptor for PredicateExpressions.NotEqual<A, B>);
  v74 = v107;
  v75 = v122;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v123 + 8))(v69, v75);
  return (*(v108 + 8))(v62, v74);
}

void sub_1001D8454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  v24 = v23;
  v26 = v25;
  v27 = sub_100099DF4(&qword_1002E1668, &qword_100247750);
  sub_1000030B8(v27);
  sub_100003774();
  __chkstk_darwin(v28);
  sub_10000AF24();
  sub_100099DF4(&qword_1002E1670, &unk_100247758);
  sub_100003724();
  v61 = v30;
  v62 = v29;
  sub_100003774();
  __chkstk_darwin(v31);
  sub_1000327EC();
  v63[7] = v26;
  v58 = *(v24 + 56);
  v59 = *(v24 + 32);
  dispatch thunk of Identifiable.id.getter();
  _s29PrivateIdentifierHistoryModelCMa(0);
  Predicate.init(_:)();

  v32 = sub_100099DF4(&qword_1002E15E8, &qword_1002476F0);
  sub_100032830(v21, v33, v34, v32);
  sub_100032760();
  sub_100032658(v35, v36, byte_100248F58);
  FetchDescriptor.init(predicate:sortBy:)();
  v60 = v22;
  v37 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
  if (v20)
  {
    swift_unknownObjectRetain();
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = sub_1000328AC();
      v55 = swift_slowAlloc();
      v57 = sub_10003294C();
      v63[0] = v57;
      *v40 = 136315394;
      sub_1000328C4();
      v41 = v59;
      dispatch thunk of Identifiable.id.getter();
      v42 = sub_1000327FC();
      v44 = v43;
      swift_unknownObjectRelease();
      sub_10003CD48(v65, &qword_1002DCC48, &qword_100238200);
      sub_100179704(v64);
      v45 = sub_100009E5C(v42, v44, v63);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v55 = v46;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to get count of existing persisted record with identifier %s: %@. Proceeding to allow insertion of a new record.", v40, 0x16u);
      sub_10003CD48(v55, &qword_1002E2700, &unk_1002474D0);
      sub_1000327B4(v55);
      sub_100004118(v57);
      sub_1000327B4(v57);
      sub_1000327B4(v40);

      goto LABEL_11;
    }

    swift_unknownObjectRelease();

LABEL_8:
    v41 = v59;
    goto LABEL_11;
  }

  v47 = v37;
  if (!v37)
  {
    goto LABEL_8;
  }

  swift_unknownObjectRetain();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  v41 = v59;
  if (os_log_type_enabled(v48, v49))
  {
    v50 = sub_1000328AC();
    v56 = sub_10003294C();
    v63[0] = v56;
    *v50 = 134218242;
    *(v50 + 4) = v47;
    *(v50 + 12) = 2080;
    sub_1000328C4();
    dispatch thunk of Identifiable.id.getter();
    v51 = sub_1000327FC();
    v53 = v52;
    swift_unknownObjectRelease();
    sub_10003CD48(v65, &qword_1002DCC48, &qword_100238200);
    sub_100179704(v64);
    v54 = sub_100009E5C(v51, v53, v63);

    *(v50 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v48, v49, "%ld history item(s) with identifier %s already exist. It/they will be overwritten with the new one.", v50, 0x16u);
    sub_100004118(v56);
    sub_1000327B4(v56);
    sub_100032798();
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_11:
  (*(v58 + 104))(v41);
  dispatch thunk of ModelContext.insert<A>(_:)();

  (*(v61 + 8))(v60, v62);
  sub_100005074();
}

uint64_t sub_1001D8960()
{
  sub_100099DF4(&qword_1002E15E8, &qword_1002476F0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v0);
  sub_100003B38();
  _s29PrivateIdentifierHistoryModelCMa(0);
  sub_100032864();
  sub_100032760();
  v3 = sub_100032658(v1, v2, byte_100248F58);
  sub_100032888(v3);
  v4 = sub_1000328F8();
  return v5(v4);
}

uint64_t sub_1001D8A6C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23[1] = a2;
  v25 = a3;
  v24 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v23[0] = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100099DF4(&qword_1002E1610, &qword_100247708);
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = sub_100099DF4(&qword_1002E1618, &qword_100247710);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  v13 = sub_100099DF4(&qword_1002E1620, &qword_100247718);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v23 - v15;
  sub_1000326A8(&qword_1002E1628, &qword_1002E1618, &qword_100247710, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  type metadata accessor for Date();
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = v23[0];
  v18 = v24;
  (*(v23[0] + 104))(v4, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v24);
  v19 = sub_100099DF4(&qword_1002E1630, &qword_100247748);
  v20 = v25;
  v25[3] = v19;
  v20[4] = sub_1001DAF60();
  sub_100007914(v20);
  sub_1000326A8(&qword_1002E1658, &qword_1002E1620, &qword_100247718, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_1000326A8(&qword_1002E1660, &qword_1002E1610, &qword_100247708, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_100032658(&qword_1002DB968, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v21 = v26;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v17 + 8))(v4, v18);
  (*(v27 + 8))(v8, v21);
  return (*(v14 + 8))(v16, v13);
}

double sub_1001D8F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1001D2F14();
  if (v6)
  {
    *a6 = v9;
    *(a6 + 16) = v10;
    result = *&v11;
    *(a6 + 32) = v11;
    *(a6 + 48) = v12;
    *(a6 + 64) = v13;
  }

  return result;
}

uint64_t sub_1001D9050@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v63 = a6;
  v64 = a7;
  v54 = a5;
  v56 = a3;
  v57 = a4;
  v55 = a2;
  v51 = a1;
  v71 = a8;
  v8 = sub_100099DF4(&qword_1002E1690, &qword_100247780);
  v9 = *(v8 - 8);
  v67 = v8;
  v68 = v9;
  __chkstk_darwin(v8);
  v62 = &v45 - v10;
  v11 = sub_100099DF4(&qword_1002E1A38, &qword_100247A98);
  v12 = *(v11 - 8);
  v65 = v11;
  v66 = v12;
  __chkstk_darwin(v11);
  v59 = &v45 - v13;
  v14 = sub_100099DF4(&qword_1002E1A78, &qword_100247AB0);
  v15 = *(v14 - 8);
  v69 = v14;
  v70 = v15;
  __chkstk_darwin(v14);
  v61 = &v45 - v16;
  v49 = sub_100099DF4(&qword_1002E17C8, &qword_100247888);
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v18 = &v45 - v17;
  v52 = sub_100099DF4(&qword_1002E17D0, &qword_100247890);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v20 = &v45 - v19;
  v21 = sub_100099DF4(&qword_1002E1898, &qword_100247918);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v45 - v23;
  v47 = sub_100099DF4(&qword_1002E18A0, &qword_100247920);
  v25 = *(v47 - 8);
  __chkstk_darwin(v47);
  v27 = &v45 - v26;
  v58 = sub_100099DF4(&qword_1002E1A80, &qword_100247AB8);
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v48 = &v45 - v28;
  v51 = *v51;
  sub_1000326A8(&qword_1002E18A8, &qword_1002E1898, &qword_100247918, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v29 = *(v22 + 8);
  v45 = v22 + 8;
  v46 = v29;
  v29(v24, v21);
  v72 = v55;
  v73 = v56;
  v74 = v57;
  v75 = v54;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v57 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_1000326A8(&qword_1002E17F0, &qword_1002E17C8, &qword_100247888, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v30 = v49;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v50 + 8))(v18, v30);
  sub_1000326A8(&qword_1002E18D0, &qword_1002E18A0, &qword_100247920, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_1000326A8(&qword_1002E17F8, &qword_1002E17D0, &qword_100247890, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v31 = v47;
  v32 = v52;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v53 + 8))(v20, v32);
  (*(v25 + 8))(v27, v31);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v33 = v59;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v46(v24, v21);
  v72 = v63;
  v73 = v64;
  sub_100099DF4(&qword_1002DCC48, &qword_100238200);
  v34 = v62;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_1000326A8(&qword_1002E1A60, &qword_1002E1A38, &qword_100247A98, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_1000326A8(&qword_1002E16E8, &qword_1002E1690, &qword_100247780, v57);
  sub_100032454(&qword_1002E16F0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  v35 = v61;
  v36 = v65;
  v37 = v67;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v68 + 8))(v34, v37);
  (*(v66 + 8))(v33, v36);
  v38 = sub_100099DF4(&qword_1002E1A88, &unk_100247AC0);
  v39 = v71;
  v71[3] = v38;
  v39[4] = sub_1001DC6A4();
  sub_100007914(v39);
  sub_1000326A8(&qword_1002E1AA8, &qword_1002E1A80, &qword_100247AB8, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  sub_1000326A8(&qword_1002E1AB0, &qword_1002E1A78, &qword_100247AB0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v40 = v48;
  v41 = v35;
  v42 = v58;
  v43 = v69;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v70 + 8))(v41, v43);
  return (*(v60 + 8))(v40, v42);
}

uint64_t sub_1001D9970@<X0>(uint64_t *a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, const char *a6@<X5>, const char *a7@<X6>, uint64_t *a8@<X8>)
{
  v91 = a6;
  v92 = a7;
  v85 = a5;
  v84 = a4;
  v94 = a2;
  v95 = a3;
  v93 = a8;
  v102 = sub_100099DF4(&qword_1002E1678, &qword_100247768);
  v106 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = v65 - v9;
  v90 = sub_100099DF4(&qword_1002E1680, &qword_100247770);
  v104 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = v65 - v10;
  v101 = sub_100099DF4(&qword_1002E1688, &qword_100247778);
  v105 = *(v101 - 8);
  __chkstk_darwin(v101);
  v89 = v65 - v11;
  v81 = sub_100099DF4(&qword_1002E1690, &qword_100247780);
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v75 = v65 - v12;
  v76 = sub_100099DF4(&qword_1002E1698, &qword_100247788);
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = v65 - v13;
  v79 = sub_100099DF4(&qword_1002E16A0, &qword_100247790);
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = v65 - v14;
  v69 = sub_100099DF4(&qword_1002E16A8, &qword_100247798);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v16 = v65 - v15;
  v17 = sub_100099DF4(&qword_1002E1618, &qword_100247710);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v65 - v19;
  v67 = sub_100099DF4(&qword_1002E16B0, &qword_1002477A0);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v22 = v65 - v21;
  v71 = sub_100099DF4(&qword_1002E16B8, &qword_1002477A8);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v66 = v65 - v23;
  v78 = sub_100099DF4(&qword_1002E16C0, &qword_1002477B0);
  v82 = *(v78 - 8);
  __chkstk_darwin(v78);
  v98 = v65 - v24;
  v86 = sub_100099DF4(&qword_1002E16C8, &qword_1002477B8);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v99 = v65 - v25;
  v103 = *a1;
  v26 = v17;
  v27 = sub_1000326A8(&qword_1002E1628, &qword_1002E1618, &qword_100247710, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v28 = *(v18 + 8);
  v28(v20, v26);
  v96 = v28;
  v97 = v18 + 8;
  v107 = v94;
  v108 = v95;
  static PredicateExpressions.build_Arg<A>(_:)();
  v94 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_1000326A8(&qword_1002E16D0, &qword_1002E16B0, &qword_1002477A0, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v95 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_1000326A8(&qword_1002E16D8, &qword_1002E16A8, &qword_100247798, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v29 = v22;
  v30 = v67;
  v31 = v69;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v70 + 8))(v16, v31);
  (*(v68 + 8))(v29, v30);
  v32 = v26;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v33 = v72;
  v34 = v27;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v28(v20, v32);
  v107 = v84;
  v108 = v85;
  sub_100099DF4(&qword_1002DCC48, &qword_100238200);
  v35 = v75;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_1000326A8(&qword_1002E16E0, &qword_1002E1698, &qword_100247788, v94);
  sub_1000326A8(&qword_1002E16E8, &qword_1002E1690, &qword_100247780, v95);
  sub_100032454(&qword_1002E16F0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  v36 = v74;
  v37 = v33;
  v38 = v35;
  v39 = v76;
  v40 = v81;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v83 + 1))(v38, v40);
  (*(v77 + 8))(v37, v39);
  sub_1000326A8(&qword_1002E16F8, &qword_1002E16B8, &qword_1002477A8, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  sub_1000326A8(&qword_1002E1700, &qword_1002E16A0, &qword_100247790, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v41 = v66;
  v42 = v71;
  v43 = v79;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v80 + 8))(v36, v43);
  (*(v73 + 8))(v41, v42);
  v65[1] = v34;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v44 = v88;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v96(v20, v32);
  v107 = v91;
  v45 = v100;
  static PredicateExpressions.build_Arg<A>(_:)();
  v91 = sub_1000326A8(&qword_1002E1708, &qword_1002E1680, &qword_100247770, v94);
  v85 = sub_1000326A8(&qword_1002E1710, &qword_1002E1678, &qword_100247768, v95);
  v47 = v89;
  v46 = v90;
  v48 = v102;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v49 = *(v106 + 8);
  v106 += 8;
  v84 = v49;
  (v49)(v45, v48);
  v50 = *(v104 + 8);
  v104 += 8;
  v83 = v50;
  v50(v44, v46);
  v95 = &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>;
  sub_1000326A8(&qword_1002E1718, &qword_1002E16C0, &qword_1002477B0, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  v94 = sub_1000326A8(&qword_1002E1720, &qword_1002E1688, &qword_100247778, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v51 = v98;
  v52 = v47;
  v53 = v78;
  v54 = v101;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v55 = *(v105 + 8);
  v105 += 8;
  v55(v52, v54);
  (*(v82 + 8))(v51, v53);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v56 = v44;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v96(v20, v32);
  v107 = v92;
  v57 = v100;
  static PredicateExpressions.build_Arg<A>(_:)();
  v58 = v102;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (v84)(v57, v58);
  v83(v56, v46);
  v59 = sub_100099DF4(&qword_1002E1728, &qword_100247860);
  v60 = v93;
  v93[3] = v59;
  v60[4] = sub_1001DB184();
  sub_100007914(v60);
  sub_1000326A8(&qword_1002E17A0, &qword_1002E16C8, &qword_1002477B8, v95);
  v61 = v99;
  v62 = v86;
  v63 = v101;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v55(v52, v63);
  return (*(v87 + 8))(v61, v62);
}

uint64_t sub_1001DA830@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100099DF4(&qword_1002E1AE0, &qword_100247AF0);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = sub_100099DF4(&qword_1002E1AE8, &qword_100247AF8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = sub_100099DF4(&qword_1002E1AF0, &qword_100247B00);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - v13;
  sub_1000326A8(&qword_1002E1AF8, &qword_1002E1AE8, &qword_100247AF8, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  v20 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_100099DF4(&qword_1002E1B00, &qword_100247B30);
  a2[4] = sub_1001DC848();
  sub_100007914(a2);
  sub_1000326A8(&qword_1002E1B28, &qword_1002E1AF0, &qword_100247B00, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_1000326A8(&qword_1002E1B30, &qword_1002E1AE0, &qword_100247AF0, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v15 = v18;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v19 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_1001DABAC()
{
  result = qword_1002E1430;
  if (!qword_1002E1430)
  {
    result = swift_getWitnessTable(byte_100249D5C, &type metadata for SchemaV2, v0, v1);
    atomic_store(result, &qword_1002E1430);
  }

  return result;
}

unint64_t sub_1001DAC00()
{
  result = qword_1002E1438;
  if (!qword_1002E1438)
  {
    result = swift_getWitnessTable(byte_100249DA4, &type metadata for MigrationPlan, v0, v1);
    atomic_store(result, &qword_1002E1438);
  }

  return result;
}

uint64_t sub_1001DAC5C(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1001DACF8(char *a1, uint64_t a2)
{

  v4 = *(a2 + 68);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v4], v5);
}

char *sub_1001DAD6C(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 68);
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *sub_1001DADE4(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 68);
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t sub_1001DAE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001DAECC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001DAF0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001DAF60()
{
  result = qword_1002E1638;
  if (!qword_1002E1638)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1630, &qword_100247748);
    v4[0] = sub_1001DAFEC();
    v4[1] = sub_1001DB09C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Comparison<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1638);
  }

  return result;
}

unint64_t sub_1001DAFEC()
{
  result = qword_1002E1640;
  if (!qword_1002E1640)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002E1620, &qword_100247718);
    v4[0] = sub_1000326A8(&qword_1002E1648, &qword_1002E1618, &qword_100247710, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1640);
  }

  return result;
}

unint64_t sub_1001DB09C()
{
  result = qword_1002E1650;
  if (!qword_1002E1650)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10009A468(&qword_1002E1610, &qword_100247708);
    v4[0] = sub_100032658(&qword_1002DACC8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v4[1] = sub_100032658(&qword_1002DACE8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> PredicateExpressions.Value<A>, v3, v4);
    atomic_store(result, &qword_1002E1650);
  }

  return result;
}

unint64_t sub_1001DB184()
{
  result = qword_1002E1730;
  if (!qword_1002E1730)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1728, &qword_100247860);
    v4[0] = sub_1001DB210();
    v4[1] = sub_1001DB6F8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Conjunction<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1730);
  }

  return result;
}

unint64_t sub_1001DB210()
{
  result = qword_1002E1738;
  if (!qword_1002E1738)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E16C8, &qword_1002477B8);
    v4[0] = sub_1001DB29C();
    v4[1] = sub_1001DB6F8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Conjunction<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1738);
  }

  return result;
}

unint64_t sub_1001DB29C()
{
  result = qword_1002E1740;
  if (!qword_1002E1740)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E16C0, &qword_1002477B0);
    v4[0] = sub_1001DB328();
    v4[1] = sub_1001DB4E8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Conjunction<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1740);
  }

  return result;
}

unint64_t sub_1001DB328()
{
  result = qword_1002E1748;
  if (!qword_1002E1748)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E16B8, &qword_1002477A8);
    v4[0] = sub_1001DB3B4();
    v4[1] = sub_1001DB464();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Equal<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1748);
  }

  return result;
}

unint64_t sub_1001DB3B4()
{
  result = qword_1002E1750;
  if (!qword_1002E1750)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002E16B0, &qword_1002477A0);
    v4[0] = sub_1000326A8(&qword_1002E1648, &qword_1002E1618, &qword_100247710, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1750);
  }

  return result;
}

unint64_t sub_1001DB464()
{
  result = qword_1002E1758;
  if (!qword_1002E1758)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10009A468(&qword_1002E16A8, &qword_100247798);
    v4[0] = &protocol witness table for String;
    v4[1] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> PredicateExpressions.Value<A>, v3, v4);
    atomic_store(result, &qword_1002E1758);
  }

  return result;
}

unint64_t sub_1001DB4E8()
{
  result = qword_1002E1760;
  if (!qword_1002E1760)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E16A0, &qword_100247790);
    v4[0] = sub_1001DB574();
    v4[1] = sub_1001DB624();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Equal<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1760);
  }

  return result;
}

unint64_t sub_1001DB574()
{
  result = qword_1002E1768;
  if (!qword_1002E1768)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002E1698, &qword_100247788);
    v4[0] = sub_1000326A8(&qword_1002E1648, &qword_1002E1618, &qword_100247710, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1768);
  }

  return result;
}

unint64_t sub_1001DB624()
{
  result = qword_1002E1770;
  if (!qword_1002E1770)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1690, &qword_100247780);
    v4[0] = sub_100032454(&qword_1002E1778, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
    v4[1] = sub_100032454(&qword_1002E1780, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> PredicateExpressions.Value<A>, v3, v4);
    atomic_store(result, &qword_1002E1770);
  }

  return result;
}

unint64_t sub_1001DB6F8()
{
  result = qword_1002E1788;
  if (!qword_1002E1788)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1688, &qword_100247778);
    v4[0] = sub_1001DB784();
    v4[1] = sub_1001DB834();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Equal<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1788);
  }

  return result;
}

unint64_t sub_1001DB784()
{
  result = qword_1002E1790;
  if (!qword_1002E1790)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002E1680, &qword_100247770);
    v4[0] = sub_1000326A8(&qword_1002E1648, &qword_1002E1618, &qword_100247710, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1790);
  }

  return result;
}

unint64_t sub_1001DB834()
{
  result = qword_1002E1798;
  if (!qword_1002E1798)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10009A468(&qword_1002E1678, &qword_100247768);
    v4[0] = &protocol witness table for UInt64;
    v4[1] = &protocol witness table for UInt64;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> PredicateExpressions.Value<A>, v3, v4);
    atomic_store(result, &qword_1002E1798);
  }

  return result;
}

unint64_t sub_1001DB8B8()
{
  result = qword_1002E1820;
  if (!qword_1002E1820)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1818, &qword_1002478F8);
    v4[0] = sub_1001DB944();
    v4[1] = sub_1001DBCA0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Conjunction<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1820);
  }

  return result;
}

unint64_t sub_1001DB944()
{
  result = qword_1002E1828;
  if (!qword_1002E1828)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E17E8, &qword_1002478A8);
    v4[0] = sub_1001DB9D0();
    v4[1] = sub_1001DB4E8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Conjunction<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1828);
  }

  return result;
}

unint64_t sub_1001DB9D0()
{
  result = qword_1002E1830;
  if (!qword_1002E1830)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E17E0, &qword_1002478A0);
    v4[0] = sub_1001DAF60();
    v4[1] = sub_1001DBA5C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Conjunction<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1830);
  }

  return result;
}

unint64_t sub_1001DBA5C()
{
  result = qword_1002E1838;
  if (!qword_1002E1838)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E17D8, &qword_100247898);
    v4[0] = sub_1001DB3B4();
    v4[1] = sub_1001DBAE8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Equal<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1838);
  }

  return result;
}

unint64_t sub_1001DBAE8()
{
  result = qword_1002E1840;
  if (!qword_1002E1840)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002E17D0, &qword_100247890);
    v4[0] = sub_1001DBB6C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1840);
  }

  return result;
}

unint64_t sub_1001DBB6C()
{
  result = qword_1002E1848;
  if (!qword_1002E1848)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E17C8, &qword_100247888);
    v4[0] = sub_1001DBBF8();
    v4[1] = sub_1001DBC4C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> PredicateExpressions.Value<A>, v3, v4);
    atomic_store(result, &qword_1002E1848);
  }

  return result;
}

unint64_t sub_1001DBBF8()
{
  result = qword_1002E1850;
  if (!qword_1002E1850)
  {
    result = swift_getWitnessTable("mi\a", &type metadata for PersistedIdentifierRecordID, v0, v1);
    atomic_store(result, &qword_1002E1850);
  }

  return result;
}

unint64_t sub_1001DBC4C()
{
  result = qword_1002E1858;
  if (!qword_1002E1858)
  {
    result = swift_getWitnessTable(byte_100249FE4, &type metadata for PersistedIdentifierRecordID, v0, v1);
    atomic_store(result, &qword_1002E1858);
  }

  return result;
}

unint64_t sub_1001DBCA0()
{
  result = qword_1002E1860;
  if (!qword_1002E1860)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E17C0, &qword_100247880);
    v4[0] = sub_1001DAFEC();
    v4[1] = v4[0];
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.NotEqual<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1860);
  }

  return result;
}

unint64_t sub_1001DBD24()
{
  result = qword_1002E18B8;
  if (!qword_1002E18B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E18B0, &qword_100247950);
    v4[0] = sub_1001DBDB0();
    v4[1] = sub_1001DB464();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Equal<A, B>, v3, v4);
    atomic_store(result, &qword_1002E18B8);
  }

  return result;
}

unint64_t sub_1001DBDB0()
{
  result = qword_1002E18C0;
  if (!qword_1002E18C0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002E18A0, &qword_100247920);
    v4[0] = sub_1000326A8(&qword_1002E18C8, &qword_1002E1898, &qword_100247918, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1002E18C0);
  }

  return result;
}

unint64_t sub_1001DBE60()
{
  result = qword_1002E18F0;
  if (!qword_1002E18F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E18E8, &qword_100247990);
    v4[0] = sub_1001DBEEC();
    v4[1] = sub_1001DBF9C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Equal<A, B>, v3, v4);
    atomic_store(result, &qword_1002E18F0);
  }

  return result;
}

unint64_t sub_1001DBEEC()
{
  result = qword_1002E18F8;
  if (!qword_1002E18F8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002E18E0, &qword_100247960);
    v4[0] = sub_1000326A8(&qword_1002E18C8, &qword_1002E1898, &qword_100247918, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1002E18F8);
  }

  return result;
}

unint64_t sub_1001DBF9C()
{
  result = qword_1002E1900;
  if (!qword_1002E1900)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10009A468(&qword_1002E18D8, &qword_100247958);
    v4[0] = sub_100032658(&qword_1002E0BA0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v4[1] = sub_100032658(&qword_1002E0B88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> PredicateExpressions.Value<A>, v3, v4);
    atomic_store(result, &qword_1002E1900);
  }

  return result;
}

uint64_t sub_1001DC084(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E1230, &qword_1002479B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001DC0F4()
{
  result = qword_1002E19B0;
  if (!qword_1002E19B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E19A8, &qword_100247A70);
    v4[0] = sub_1001DC180();
    v4[1] = sub_1001DC400();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.NilCoalesce<A, B>, v3, v4);
    atomic_store(result, &qword_1002E19B0);
  }

  return result;
}

unint64_t sub_1001DC180()
{
  result = qword_1002E19B8;
  if (!qword_1002E19B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1980, &qword_100247A10);
    v4[0] = sub_1001DC20C();
    v4[1] = sub_1001DC2BC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.OptionalFlatMap<A, B, C, D>, v3, v4);
    atomic_store(result, &qword_1002E19B8);
  }

  return result;
}

unint64_t sub_1001DC20C()
{
  result = qword_1002E19C0;
  if (!qword_1002E19C0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002E1978, &qword_100247A08);
    v4[0] = sub_1000326A8(&qword_1002E18C8, &qword_1002E1898, &qword_100247918, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1002E19C0);
  }

  return result;
}

unint64_t sub_1001DC2BC()
{
  result = qword_1002E19C8;
  if (!qword_1002E19C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1988, &qword_100247A40);
    v4[0] = sub_1001DC348();
    v4[1] = sub_1001DC400();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Conjunction<A, B>, v3, v4);
    atomic_store(result, &qword_1002E19C8);
  }

  return result;
}

unint64_t sub_1001DC348()
{
  result = qword_1002E19D0;
  if (!qword_1002E19D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E19D8, &qword_100247A78);
    v4[0] = sub_1000326A8(&qword_1002E19E0, &qword_1002E19E8, &qword_100247A80, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    v4[1] = sub_1001DB09C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Comparison<A, B>, v3, v4);
    atomic_store(result, &qword_1002E19D0);
  }

  return result;
}

unint64_t sub_1001DC400()
{
  result = qword_1002E19F0;
  if (!qword_1002E19F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1970, &qword_100247A00);
    v4[0] = sub_1001DC48C();
    v4[1] = sub_1001DB09C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Comparison<A, B>, v3, v4);
    atomic_store(result, &qword_1002E19F0);
  }

  return result;
}

unint64_t sub_1001DC48C()
{
  result = qword_1002E19F8;
  if (!qword_1002E19F8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002E1968, &qword_1002479F8);
    v4[0] = sub_1000326A8(&qword_1002E18C8, &qword_1002E1898, &qword_100247918, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1002E19F8);
  }

  return result;
}

unint64_t sub_1001DC53C()
{
  result = qword_1002E1A48;
  if (!qword_1002E1A48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1A40, &qword_100247AA0);
    v4[0] = sub_1001DC5F4();
    v4[1] = sub_1000326A8(&qword_1002E1A58, &qword_1002E1A30, &qword_100247A90, &protocol conformance descriptor for PredicateExpressions.NilLiteral<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.NotEqual<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1A48);
  }

  return result;
}

unint64_t sub_1001DC5F4()
{
  result = qword_1002E1A50;
  if (!qword_1002E1A50)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002E1A38, &qword_100247A98);
    v4[0] = sub_1000326A8(&qword_1002E18C8, &qword_1002E1898, &qword_100247918, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1A50);
  }

  return result;
}

unint64_t sub_1001DC6A4()
{
  result = qword_1002E1A90;
  if (!qword_1002E1A90)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1A88, &unk_100247AC0);
    v4[0] = sub_1001DC730();
    v4[1] = sub_1001DC7BC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Conjunction<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1A90);
  }

  return result;
}

unint64_t sub_1001DC730()
{
  result = qword_1002E1A98;
  if (!qword_1002E1A98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1A80, &qword_100247AB8);
    v4[0] = sub_1001DBDB0();
    v4[1] = sub_1001DBAE8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Equal<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1A98);
  }

  return result;
}

unint64_t sub_1001DC7BC()
{
  result = qword_1002E1AA0;
  if (!qword_1002E1AA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1A78, &qword_100247AB0);
    v4[0] = sub_1001DC5F4();
    v4[1] = sub_1001DB624();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Equal<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1AA0);
  }

  return result;
}

unint64_t sub_1001DC848()
{
  result = qword_1002E1B08;
  if (!qword_1002E1B08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002E1B00, &qword_100247B30);
    v4[0] = sub_1001DC8D4();
    v4[1] = sub_1001DC984();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Equal<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1B08);
  }

  return result;
}

unint64_t sub_1001DC8D4()
{
  result = qword_1002E1B10;
  if (!qword_1002E1B10)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002E1AF0, &qword_100247B00);
    v4[0] = sub_1000326A8(&qword_1002E1B18, &qword_1002E1AE8, &qword_100247AF8, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1002E1B10);
  }

  return result;
}

unint64_t sub_1001DC984()
{
  result = qword_1002E1B20;
  if (!qword_1002E1B20)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10009A468(&qword_1002E1AE0, &qword_100247AF0);
    v4[0] = &protocol witness table for Bool;
    v4[1] = &protocol witness table for Bool;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> PredicateExpressions.Value<A>, v3, v4);
    atomic_store(result, &qword_1002E1B20);
  }

  return result;
}

unint64_t sub_1001DCA0C()
{
  result = qword_1002E1B38;
  if (!qword_1002E1B38)
  {
    result = swift_getWitnessTable(byte_100249E6C, &type metadata for PersistedIdentifierHistoryItemID, v0, v1);
    atomic_store(result, &qword_1002E1B38);
  }

  return result;
}

uint64_t sub_1001DCA60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v38 = a8;
  v39 = a2;
  v34 = a6;
  v35 = a7;
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v36 = a9;
  v37 = a10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v30 - v18;
  v20 = *a1;
  v32 = a1[1];
  v33 = v20;
  v21 = a1[2];
  v30 = a1[3];
  v31 = v21;
  v22 = a1[4];
  v23 = a1[5];
  v24 = *(v13 + 16);
  v24(&v30 - v18, a6, v12, v17);
  v25 = v35;
  (v24)(v15, v35, v12);
  swift_allocObject();
  sub_1001E50CC(v31, v30, v33, v32, v39, v40, v41, v42, v22, v23, v19, v15, v38, v36 & 1, v37);
  v27 = v26;
  v28 = *(v13 + 8);
  v28(v25, v12);
  v28(v34, v12);
  return v27;
}

uint64_t sub_1001DCC3C@<X0>(uint64_t *a1@<X8>)
{
  sub_1001E46D8();
  v3 = v2;
  v5 = v4;
  v6 = sub_1001E44DC(v2);
  v8 = v7;
  v9 = sub_1001E4880();
  result = sub_1001E48E4();
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = result;
  return result;
}

double sub_1001DCCC8@<D0>(_OWORD *a1@<X8>)
{
  sub_1001DCC3C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1001DCD0C(uint64_t a1)
{
  *(a1 + 8) = sub_100032964(&qword_1002E1B40, byte_100248FC8);
  result = sub_100032964(&qword_1002E1B48, "Q{\a");
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001DCD78()
{
  result = qword_1002E1B50;
  if (!qword_1002E1B50)
  {
    result = swift_getWitnessTable("Ui\a", &type metadata for PersistedIdentifierRecordID, v0, v1);
    atomic_store(result, &qword_1002E1B50);
  }

  return result;
}

uint64_t sub_1001DCDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a5, v16, v18);
  sub_100002728(v15, 1, 1, v16);
  sub_100002728(v12, 1, 1, v16);
  memset(v29, 0, sizeof(v29));
  v30 = 1;
  UUID.init()();
  swift_allocObject();
  LOBYTE(v24) = 1;
  sub_1001E8784(a1, v26, v27, v28, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 1u, 0, 0, 0, v9, v20, v15, v12, v29, 0, v24, 0, 1u, 0, 0xF000000000000000);
  v22 = v21;
  (*(v17 + 8))(a5, v16);
  return v22;
}

uint64_t sub_1001DD040(uint64_t a1)
{
  sub_1001E6944();
  v2 = v1;
  sub_1001E6AA0();
  return v2;
}

uint64_t sub_1001DD084()
{
  v0 = sub_1001E6DFC();
  sub_1001E6E08();
  return v0;
}

uint64_t sub_1001DD0B4(uint64_t a1, uint64_t a2)
{
  sub_1001E6E14();

  return sub_1001E6E34();
}

uint64_t (*sub_1001DD0F4(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  v3 = sub_1001E6DFC();
  v4 = sub_1001E6E08();
  *a1 = v3;
  a1[1] = v4;
  return sub_1000329A8;
}

uint64_t sub_1001DD150@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001DD040(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_1001DD180(uint64_t a1)
{
  *(a1 + 8) = sub_1000329DC(&qword_1002E1B58, byte_1002493D8);
  result = sub_1000329DC(&qword_1002E1B60, byte_100247B90);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001DD1E8(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 56))();
  if (!v2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1001D0980(AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    return (*(a2 + 128))(a1, a2);
  }

  return result;
}

uint64_t sub_1001DD2CC(uint64_t a1)
{
  result = sub_100033470(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1000330A0(result, 1, sub_1001DE9FC);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1001DD394(uint64_t a1)
{
  result = sub_100033470(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000330A0(result, 1, sub_1001DEC90);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for Schema.PropertyMetadata();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1001DD56C(char a1)
{
  swift_getKeyPath();
  sub_100033350();
  sub_1000332EC(v1);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001DD628(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_1000332EC(&qword_1002E1C78);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001DD7CC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1000332EC(&qword_1002E1C78);
  sub_100033264(&unk_1002E1CC8, &unk_1002E1CD0, &protocol conformance descriptor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for <A> A?);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001DD9A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1000332EC(&qword_1002E1C78);
  sub_1000331C0(&unk_1002E1CB8, &qword_1002E0B88, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> A?);
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_1001DDA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000334E8();
  swift_getKeyPath();
  sub_100033398();
  sub_1000332EC(v18);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100033368();
  sub_1000332EC(v19);
  sub_100033138(&unk_1002E1CB0);
  PersistentModel.getValue<A>(forKey:)();

  sub_1000334FC();
}

uint64_t sub_1001DDB98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1001D035C(*a1, v2);
  return sub_1001DDBDC(v1, v2);
}

uint64_t sub_1001DDBDC(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_100033350();
  sub_1000332EC(v4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_10009A7A0(a1, a2);
}

uint64_t sub_1001DDCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1000332EC(&qword_1002E1C78);
  sub_100033138(&unk_1002E1CA0);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001DDDE0(__int128 *a1)
{
  sub_1000334B8(v1 + 24, v4);
  sub_100004118((v1 + 24));
  sub_10000601C(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_1001DDE30()
{
  v20 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v20 - 8);
  v1 = v0;
  __chkstk_darwin(v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099DF4(&qword_1002E1C80, &qword_100247EF0);
  v4 = *(v0 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002329E0;
  swift_getKeyPath();
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_100033454();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v7 = sub_100033404();
  v21 = v7;
  v22 = v7;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v8 = sub_100033404();
  v21 = v8;
  v22 = v8;
  sub_100033454();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v9 = sub_100033404();
  v21 = v9;
  v22 = v9;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v24 = 0u;
  v25 = 0u;
  sub_100099DF4(&qword_1002E1C88, &qword_100247FC8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10022E400;
  sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100247D00;
  *(v11 + 32) = swift_getKeyPath();
  *(v10 + 32) = v11;
  v12 = sub_100099DF4(&qword_1002E1C90, &qword_100247FD8);
  swift_allocObject();
  v13 = Schema.Unique.init(_:)();
  *(&v22 + 1) = v12;
  v23 = sub_1001DE998();
  *&v21 = v13;
  sub_100033454();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DEC90();
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16 >= *(v14 + 24) >> 1)
  {
    sub_1001DEC90();
    v15 = v18;
  }

  *(v15 + 16) = v16 + 1;
  (*(v1 + 32))(v15 + v5 + v16 * v4, v3, v20);
  *&v21 = v6;
  sub_1001DD394(v15);
  return v21;
}

uint64_t sub_1001DE1E0(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1001DE220(a1);
  return v2;
}

void *sub_1001DE220(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_100099DF4(&qword_1002E1D38, &qword_100248048);
  sub_100033350();
  v7[0] = v4;
  v7[1] = v4;
  v8 = sub_1000332EC(v5);
  v9 = v8;
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100007914(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v2 + 8) = 257;
  *(v2 + 18) = 1;
  ObservationRegistrar.init()();
  *(v2 + 8) = 0;
  *(v2 + 18) = 0;
  sub_1000334B8((v2 + 3), v7);
  sub_100004118(v2 + 3);
  sub_10000601C(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_1001DE364()
{
  sub_100004118(v0 + 3);
  v1 = OBJC_IVAR____TtCO18PrivateIdentifiers8SchemaV120GlobalSyncStateModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_10000307C();
  (*(v2 + 8))(&v0[v1]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t _s20GlobalSyncStateModelCMa(uint64_t a1)
{
  result = qword_1002E1B98;
  if (!qword_1002E1B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001DE454(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

Swift::Int sub_1001DE520()
{
  Hasher.init(_seed:)();
  sub_100033350();
  sub_1000332EC(v0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_1001DE5C8(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1001DF1F8(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001512EC(v1 + 24, v3);
  return sub_100032BB4;
}

uint64_t sub_1001DE768(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1000332EC(&qword_1002E1C78);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

unint64_t sub_1001DE998()
{
  result = qword_1002E1C98;
  if (!qword_1002E1C98)
  {
    v3 = sub_10009A468(&qword_1002E1C90, &qword_100247FD8);
    result = swift_getWitnessTable(&protocol conformance descriptor for Schema.Unique<A>, v3, v0, v1);
    atomic_store(result, &qword_1002E1C98);
  }

  return result;
}

void sub_1001DE9FC(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_100006D74();
    if (v8 != v9)
    {
      sub_100007310();
      if (v8)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  sub_1000066AC();
  if (v5)
  {
    v10 = sub_100099DF4(&qword_1002E11F0, &qword_100248000);
    v11 = sub_10000EE6C(v10);
    v12 = j__malloc_size(v11);
    sub_1000333D0(v12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[96 * v4] <= v13)
    {
      memmove(v13, v14, 96 * v4);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1001DEAE0()
{
  sub_1000333F4();
  if (v4)
  {
    sub_1000333E4();
    if (v6 != v7)
    {
      sub_1000334AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100033418();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000334D0(v2, v5, &qword_1002E1CE8, &qword_100247FF0);
  v8 = sub_100033464();
  type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(v8);
  sub_1000071F8();
  sub_10000AE20();
  if (v1)
  {
    sub_100033428(type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000333B0();
  }
}

void sub_1001DEBB8()
{
  sub_1000333F4();
  if (v4)
  {
    sub_1000333E4();
    if (v6 != v7)
    {
      sub_1000334AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100033418();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000334D0(v2, v5, &qword_1002E1CF0, &qword_100247FF8);
  v8 = sub_100033464();
  type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(v8);
  sub_1000071F8();
  sub_10000AE20();
  if (v1)
  {
    sub_100033428(type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000333B0();
  }
}

void sub_1001DEC90()
{
  sub_1000333F4();
  if (v4)
  {
    sub_1000333E4();
    if (v6 != v7)
    {
      sub_1000334AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100033418();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000334D0(v2, v5, &qword_1002E1C80, &qword_100247EF0);
  sub_100033464();
  type metadata accessor for Schema.PropertyMetadata();
  sub_1000071F8();
  sub_10000AE20();
  if (v1)
  {
    sub_100033428(&type metadata accessor for Schema.PropertyMetadata, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000333B0();
  }
}

void sub_1001DED68()
{
  sub_1000333F4();
  if (v4)
  {
    sub_1000333E4();
    if (v6 != v7)
    {
      sub_1000334AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100033418();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000334D0(v2, v5, &qword_1002E1238, &qword_100247460);
  sub_100033464();
  type metadata accessor for UUID();
  sub_1000071F8();
  sub_10000AE20();
  if (v1)
  {
    sub_100033428(&type metadata accessor for UUID, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000333B0();
  }
}

void sub_1001DEE88(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_100006D74();
    if (v8 != v9)
    {
      sub_100007310();
      if (v8)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  sub_1000066AC();
  if (v5)
  {
    v10 = sub_100099DF4(&qword_1002E1D28, &qword_100248038);
    v11 = sub_10000EE6C(v10);
    v12 = j__malloc_size(v11);
    sub_1000333D0(v12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v11 != a4 || &a4[5 * v4 + 4] <= v11 + 4)
    {
      v14 = sub_10000B80C();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100099DF4(&qword_1002E1D30, &qword_100248040);
    sub_10000B80C();
    swift_arrayInitWithCopy();
  }
}

void sub_1001DEF84(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_100006D74();
    if (v8 != v9)
    {
      sub_100007310();
      if (v8)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  sub_1000066AC();
  if (v5)
  {
    v10 = sub_100099DF4(&qword_1002E1D18, &qword_100248028);
    v11 = sub_10000EE6C(v10);
    v12 = j__malloc_size(v11);
    sub_1000333D0(v12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v11 != a4 || &a4[3 * v4 + 4] <= v11 + 4)
    {
      v14 = sub_10000B80C();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100099DF4(&qword_1002E1D20, &qword_100248030);
    sub_10000B80C();
    swift_arrayInitWithCopy();
  }
}

char *sub_1001DF080(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return sub_100004BC4(a3, result);
  }

  return result;
}

void sub_1001DF0A8()
{
  sub_10000B42C();
  if (v3 && (sub_100099DF4(&qword_1002E1230, &qword_1002479B0), sub_10000307C(), v1 + *(v4 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      sub_100006A90();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_100099DF4(&qword_1002E1230, &qword_1002479B0);
    sub_100006A90();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_1001DF180(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_100004BC4(a3, result);
  }

  return result;
}

char *sub_1001DF1A0(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

void *sub_1001DF1F8(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1001DF22C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1001DF24C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DF22C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001DF33C(void *a1)
{
  v3 = sub_100099DF4(&qword_1002E1FA8, &qword_1002489C8);
  sub_100003724();
  v5 = v4;
  sub_100003774();
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  sub_10000C4FC(a1, a1[3]);
  v9 = sub_1001E2474();
  sub_100030418(&_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysON, v10, v9);
  v15 = 0;
  sub_1000303A8(&v15);
  if (!v1)
  {
    v14 = 1;
    sub_1000303A8(&v14);
    v13 = 2;
    sub_1000303A8(&v13);
  }

  return (*(v5 + 8))(v8, v3);
}

double sub_1001DF49C(void *a1)
{
  sub_100099DF4(&qword_1002E1FB8, &qword_1002489D0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100004880();
  sub_10000C4FC(a1, a1[3]);
  v5 = sub_1001E2474();
  sub_1000303E0(&_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysON, v6, v5);
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    v13 = 0;
    sub_1000303C4(&v13);
    v2 = v7;
    v12 = 1;
    sub_1000303C4(&v12);
    v11 = 2;
    sub_1000303C4(&v11);
    v9 = sub_10000BD0C();
    v10(v9);
    sub_100004118(a1);
  }

  return v2;
}

uint64_t sub_1001DF618(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_100099DF4(&qword_1002E1F58, &qword_1002487F0);
  sub_100003724();
  v12 = v11;
  sub_100003774();
  __chkstk_darwin(v13);
  v15 = &v20[-1] - v14;
  sub_10000C4FC(a1, a1[3]);
  v16 = sub_1001E20DC();
  sub_100030418(&_s30ScheduledRotationConfigurationV10CodingKeysON, v17, v16);
  LOBYTE(v20[0]) = 0;
  sub_1000303A8(v20);
  if (!v5)
  {
    *v20 = a3;
    *&v20[1] = a4;
    *&v20[2] = a5;
    v21 = 1;
    sub_1001E2130();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v12 + 8))(v15, v10);
}

double sub_1001DF784(void *a1)
{
  sub_100099DF4(&qword_1002E1F70, &qword_1002487F8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100004880();
  sub_10000C4FC(a1, a1[3]);
  v5 = sub_1001E20DC();
  sub_1000303E0(&_s30ScheduledRotationConfigurationV10CodingKeysON, v6, v5);
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    LOBYTE(v11) = 0;
    sub_1000303C4(&v11);
    v2 = v7;
    sub_1001E2184();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = sub_10000BD0C();
    v9(v8);
    sub_100004118(a1);
  }

  return v2;
}

void sub_1001DF918(uint64_t a1@<X8>)
{
  sub_1001DF328();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_1001DFA00(uint64_t a1)
{
  v2 = sub_1001E2474();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DFA3C(uint64_t a1)
{
  v2 = sub_1001E2474();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001DFA78(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001DF49C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1001DFAC8(uint64_t a1)
{
  v2 = sub_1001E20DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DFB04(uint64_t a1)
{
  v2 = sub_1001E20DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001DFB40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001DF784(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1001DFCA4()
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v0);
  sub_100034A8C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001DFD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1000346B0(&qword_1002E1EA8);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001DFE94()
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v0);
  sub_100034A8C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001E00F8(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_1000346B0(&qword_1002E1EA8);
  sub_1001E1EE0();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E0288(char a1)
{
  swift_getKeyPath();
  LOBYTE(v14) = a1;
  sub_100034904();
  v4 = sub_1000346B0(v3);
  sub_1000349DC(v4, v5, v6, v7, v8, v4, v9, v10, v12, v13, v1, v14, v15, v16);
}

uint64_t sub_1001E0328(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_1000346B0(&qword_1002E1EA8);
  sub_1001E1E38();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E04A8(uint64_t a1)
{
  swift_getKeyPath();
  sub_100034904();
  v4 = sub_1000346B0(v3);
  sub_1000349DC(v4, v5, v6, v7, v8, v4, v9, v10, v12, v13, v1, a1, v14, v15);
}

uint64_t sub_1001E0544(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1000346B0(&qword_1002E1EA8);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E07E4(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000A9914(a1, &v6 - v3);
  return sub_1001E0878(v4);
}

uint64_t sub_1001E0878(uint64_t a1)
{
  swift_getKeyPath();
  sub_100034904();
  v4 = sub_1000346B0(v3);
  sub_1000349DC(v4, v5, v6, v7, v8, v4, v9, v10, v12, v13, v1, a1, v14, v15);

  return sub_1000ACD3C(a1);
}

uint64_t sub_1001E091C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1000346B0(&qword_1002E1EA8);
  sub_100034508();
  PersistentModel.setValue<A>(forKey:to:)();
}

double sub_1001E09FC@<D0>(uint64_t a1@<X8>)
{
  *&v6 = v1;
  swift_getKeyPath();
  sub_100034A74();
  sub_1000346B0(v3);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10003491C();
  sub_1000346B0(v4);
  sub_100034484(&unk_1002E1F08);
  sub_100034B30();
  PersistentModel.getValue<A>(forKey:)();

  result = v1;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

double sub_1001E0B20@<D0>(uint64_t a1@<X8>)
{
  sub_1001E09FC(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1001E0B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1001E0BA8(v3);
}

uint64_t sub_1001E0BA8(uint64_t a1)
{
  swift_getKeyPath();
  sub_100034904();
  v4 = sub_1000346B0(v3);
  sub_1000349DC(v4, v5, v6, v7, v8, v4, v9, v10, v12, v13, v1, a1, v14, v15);
}

uint64_t sub_1001E0C44(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1000346B0(&qword_1002E1EA8);
  sub_100034484(&unk_1002E1EF0);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E0E20()
{
  v34 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v28 - v3;
  sub_100099DF4(&qword_1002E1C80, &qword_100247EF0);
  v35 = v0;
  v5 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100248050;
  v33 = v5;
  v31 = v6;
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034964();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349A8();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034964();
  sub_1000349BC();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349CC();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349BC();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349A8();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349A8();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1000349BC();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349A8();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349CC();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349A8();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349A8();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349CC();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v7 = sub_100099DF4(&qword_1002E1EB0, &unk_100248528);
  v8 = sub_100034B5C(v7);
  v30 = xmmword_1002329F0;
  *(v8 + 16) = xmmword_1002329F0;
  v9 = sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v10 = sub_100034B5C(v9);
  v29 = xmmword_100248060;
  *(v10 + 16) = xmmword_100248060;
  *(v10 + 32) = swift_getKeyPath();
  *(v10 + 40) = swift_getKeyPath();
  *(v8 + 32) = v10;
  v11 = swift_allocObject();
  v28 = xmmword_100247D00;
  *(v11 + 16) = xmmword_100247D00;
  *(v11 + 32) = swift_getKeyPath();
  *(v8 + 40) = v11;
  v12 = sub_100099DF4(&qword_1002E1EB8, &qword_100248538);
  swift_allocObject();
  sub_100004938();
  Schema.Index.init(_:)();
  *(&v37 + 1) = v12;
  v13 = sub_1000342D8(&unk_1002E1EC0);
  sub_100034B1C(v13);
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DEC90();
  v15 = v14;
  if (*(v14 + 16) >= *(v14 + 24) >> 1)
  {
    sub_100034AD8();
    v15 = v26;
  }

  v16 = sub_100034AFC();
  v17 = *(v35 + 32);
  v35 += 32;
  v17(v16, v4);
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v18 = sub_100034B5C(v7);
  *(v18 + 16) = v30;
  v19 = sub_100034B5C(v9);
  *(v19 + 16) = v29;
  *(v19 + 32) = swift_getKeyPath();
  *(v19 + 40) = swift_getKeyPath();
  *(v18 + 32) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v28;
  *(v20 + 32) = swift_getKeyPath();
  *(v18 + 40) = v20;
  v21 = sub_100099DF4(&qword_1002E1EC8, &unk_100248540);
  swift_allocObject();
  sub_100004938();
  Schema.Unique.init(_:)();
  *(&v37 + 1) = v21;
  v22 = sub_1000342D8(&unk_1002E1ED0);
  sub_100034B1C(v22);
  sub_1000349BC();
  v23 = v32;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  if (*(v15 + 16) >= *(v15 + 24) >> 1)
  {
    sub_100034AD8();
    v15 = v27;
  }

  v24 = sub_100034AFC();
  v17(v24, v23);
  *&v36 = v31;
  sub_1001DD394(v15);
  return v36;
}

uint64_t sub_1001E15E4(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1001E1624(a1);
  return v2;
}

void *sub_1001E1624(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_100099DF4(&qword_1002E1F48, &qword_100248560);
  sub_100034904();
  v7[0] = v4;
  v7[1] = v4;
  v8 = sub_1000346B0(v5);
  v9 = v8;
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100007914(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  v2[2] = 0x101010101010101;
  ObservationRegistrar.init()();
  v2[2] = 0;
  sub_1000334B8((v2 + 3), v7);
  sub_100004118(v2 + 3);
  sub_10000601C(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_1001E1754()
{
  sub_100004118(v0 + 3);
  v1 = OBJC_IVAR____TtCO18PrivateIdentifiers8SchemaV122PrivateIdentifierModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_100006EF0();
  (*(v2 + 8))(&v0[v1]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t _s22PrivateIdentifierModelCMa(uint64_t a1)
{
  result = qword_1002E1D70;
  if (!qword_1002E1D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E1840(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

Swift::Int sub_1001E1920()
{
  Hasher.init(_seed:)();
  sub_100034904();
  sub_1000346B0(v0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_1001E19C0(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1001DF1F8(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001512EC(v1 + 24, v3);
  return sub_100033DA8;
}

uint64_t sub_1001E1B60(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1000346B0(&qword_1002E1EA8);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

unint64_t sub_1001E1D90()
{
  result = qword_1002E1F00;
  if (!qword_1002E1F00)
  {
    result = swift_getWitnessTable(byte_1002487C8, &_s30ScheduledRotationConfigurationVN, v0, v1);
    atomic_store(result, &qword_1002E1F00);
  }

  return result;
}

unint64_t sub_1001E1DE4()
{
  result = qword_1002E1F10;
  if (!qword_1002E1F10)
  {
    result = swift_getWitnessTable(byte_1002487A0, &_s30ScheduledRotationConfigurationVN, v0, v1);
    atomic_store(result, &qword_1002E1F10);
  }

  return result;
}

unint64_t sub_1001E1E38()
{
  result = qword_1002E1F28;
  if (!qword_1002E1F28)
  {
    result = swift_getWitnessTable(byte_100248778, &_s24KeypairsModificationKindON, v0, v1);
    atomic_store(result, &qword_1002E1F28);
  }

  return result;
}

unint64_t sub_1001E1E8C()
{
  result = qword_1002E1F30;
  if (!qword_1002E1F30)
  {
    result = swift_getWitnessTable("\tv\a", &_s24KeypairsModificationKindON, v0, v1);
    atomic_store(result, &qword_1002E1F30);
  }

  return result;
}

unint64_t sub_1001E1EE0()
{
  result = qword_1002E1F38;
  if (!qword_1002E1F38)
  {
    result = swift_getWitnessTable("Av\a", &_s22KeypairsRotationReasonON, v0, v1);
    atomic_store(result, &qword_1002E1F38);
  }

  return result;
}

unint64_t sub_1001E1F34()
{
  result = qword_1002E1F40;
  if (!qword_1002E1F40)
  {
    result = swift_getWitnessTable("Yv\a", &_s22KeypairsRotationReasonON, v0, v1);
    atomic_store(result, &qword_1002E1F40);
  }

  return result;
}

_BYTE *_s24KeypairsModificationKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001E2088()
{
  result = qword_1002E1F50;
  if (!qword_1002E1F50)
  {
    result = swift_getWitnessTable(byte_100248638, &_s24KeypairsModificationKindON, v0, v1);
    atomic_store(result, &qword_1002E1F50);
  }

  return result;
}

unint64_t sub_1001E20DC()
{
  result = qword_1002E1F60;
  if (!qword_1002E1F60)
  {
    result = swift_getWitnessTable("Mu\a", &_s30ScheduledRotationConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1002E1F60);
  }

  return result;
}

unint64_t sub_1001E2130()
{
  result = qword_1002E1F68;
  if (!qword_1002E1F68)
  {
    result = swift_getWitnessTable(byte_10024894C, &_s30ScheduledRotationConfigurationV19JitterConfigurationVN, v0, v1);
    atomic_store(result, &qword_1002E1F68);
  }

  return result;
}

unint64_t sub_1001E2184()
{
  result = qword_1002E1F78;
  if (!qword_1002E1F78)
  {
    result = swift_getWitnessTable("5t\a", &_s30ScheduledRotationConfigurationV19JitterConfigurationVN, v0, v1);
    atomic_store(result, &qword_1002E1F78);
  }

  return result;
}

unint64_t sub_1001E21D8()
{
  result = qword_1002E1F80;
  if (!qword_1002E1F80)
  {
    result = swift_getWitnessTable(byte_100248660, &_s24KeypairsModificationKindON, v0, v1);
    atomic_store(result, &qword_1002E1F80);
  }

  return result;
}

unint64_t sub_1001E222C()
{
  result = qword_1002E1F88;
  if (!qword_1002E1F88)
  {
    result = swift_getWitnessTable("9w\a", &_s22KeypairsRotationReasonON, v0, v1);
    atomic_store(result, &qword_1002E1F88);
  }

  return result;
}

_BYTE *_s30ScheduledRotationConfigurationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001E2370()
{
  result = qword_1002E1F90;
  if (!qword_1002E1F90)
  {
    result = swift_getWitnessTable(byte_1002488FC, &_s30ScheduledRotationConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1002E1F90);
  }

  return result;
}

unint64_t sub_1001E23C8()
{
  result = qword_1002E1F98;
  if (!qword_1002E1F98)
  {
    result = swift_getWitnessTable("5v\a", &_s30ScheduledRotationConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1002E1F98);
  }

  return result;
}

unint64_t sub_1001E2420()
{
  result = qword_1002E1FA0;
  if (!qword_1002E1FA0)
  {
    result = swift_getWitnessTable(byte_100248894, &_s30ScheduledRotationConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1002E1FA0);
  }

  return result;
}

unint64_t sub_1001E2474()
{
  result = qword_1002E1FB0;
  if (!qword_1002E1FB0)
  {
    result = swift_getWitnessTable("1t\a", &_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1002E1FB0);
  }

  return result;
}

_BYTE *_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001E25A8()
{
  result = qword_1002E1FC0;
  if (!qword_1002E1FC0)
  {
    result = swift_getWitnessTable("Yp\a", &_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1002E1FC0);
  }

  return result;
}

unint64_t sub_1001E2600()
{
  result = qword_1002E1FC8;
  if (!qword_1002E1FC8)
  {
    result = swift_getWitnessTable(byte_1002489D8, &_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1002E1FC8);
  }

  return result;
}

unint64_t sub_1001E2658()
{
  result = qword_1002E1FD0;
  if (!qword_1002E1FD0)
  {
    result = swift_getWitnessTable(byte_100248A00, &_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1002E1FD0);
  }

  return result;
}

uint64_t sub_1001E26CC()
{
  sub_100099DF4(&qword_1002E1FD8, &unk_100248B20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002329F0;
  v1 = _s20GlobalSyncStateModelCMa(0);
  v2 = sub_100034B74(&qword_1002E1C78, _s20GlobalSyncStateModelCMa, "Y{\a");
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = _s22PrivateIdentifierModelCMa(0);
  v4 = sub_100034B74(&qword_1002E1EA8, _s22PrivateIdentifierModelCMa, byte_100248200);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

void sub_1001E2A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000334E8();
  swift_getKeyPath();
  sub_10003517C();
  sub_10003505C(v18);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100035134();
  sub_10003505C(v19);
  sub_100033138(&unk_1002E1CB0);
  PersistentModel.getValue<A>(forKey:)();

  sub_1000334FC();
}

uint64_t sub_1001E2B24(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_10003511C();
  sub_10003505C(v4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_10009A7A0(a1, a2);
}

uint64_t sub_1001E2CCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001E2BF8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001E2D24(char a1)
{
  swift_getKeyPath();
  sub_10003511C();
  sub_10003505C(v1);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001E2DE0(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_10003505C(&qword_1002E1AD8);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E2E88(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10003505C(&qword_1002E1AD8);
  sub_100034FD4();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E2F68(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10003505C(&qword_1002E1AD8);
  sub_100034EC8();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E3048(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1001D035C(*a1, v2);
  return sub_1001E2B24(v1, v2);
}

uint64_t sub_1001E308C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_10003505C(&qword_1002E1AD8);
  sub_100033138(&unk_1002E1CA0);
  PersistentModel.setValue<A>(forKey:to:)();
}

void *sub_1001E3174(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v24 = a3;
  v25 = a4;
  v8 = *v4;
  v9 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v10 = sub_1000030B8(v9);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
  v14 = sub_1000030B8(v13);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v5[6] = sub_100099DF4(&qword_1002E2100, &unk_100248DF0);
  sub_10003511C();
  v18 = sub_10003505C(v17);
  v26 = v8;
  v27 = v8;
  v28 = v18;
  v29 = v18;
  sub_1000351AC();
  v5[7] = swift_getOpaqueTypeConformance2();
  sub_100007914(v5 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v5 + 8) = 257;
  *(v5 + 18) = 1;
  ObservationRegistrar.init()();
  sub_10000C4FC(v5 + 3, v5[6]);
  swift_getKeyPath();
  LOBYTE(v26) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100012C94(a1, v16, &qword_1002E1AB8, &qword_100247AD0);
  sub_100035164();
  sub_100034BBC(v16, v19, v20, &qword_1002E1AB8, &qword_100247AD0);
  sub_100012C94(a2, v12, &qword_1002E12C8, &qword_100248D50);
  sub_10003514C();
  sub_100034BBC(v12, v21, v22, &qword_1002E12C8, &qword_100248D50);
  sub_1001E2B24(v24, v25);
  sub_100004E24(a2, &qword_1002E12C8, &qword_100248D50);
  sub_100004E24(a1, &qword_1002E1AB8, &qword_100247AD0);
  return v5;
}

uint64_t sub_1001E3418()
{
  v21 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v21 - 8);
  v1 = v0;
  __chkstk_darwin(v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099DF4(&qword_1002E1C80, &qword_100247EF0);
  v4 = *(v0 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002329E0;
  swift_getKeyPath();
  *&v7 = sub_1000351C4();
  v22 = v7;
  v23 = v7;
  sub_100033454();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v8 = sub_1000351C4();
  v22 = v8;
  v23 = v8;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v9 = sub_1000351C4();
  v22 = v9;
  v23 = v9;
  sub_100033454();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v10 = sub_1000351C4();
  v22 = v10;
  v23 = v10;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  sub_100099DF4(&qword_1002E20E8, &unk_100248DD8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10022E400;
  sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100247D00;
  *(v12 + 32) = swift_getKeyPath();
  *(v11 + 32) = v12;
  v13 = sub_100099DF4(&qword_1002E20F0, &qword_100248DE8);
  swift_allocObject();
  v14 = Schema.Unique.init(_:)();
  *(&v23 + 1) = v13;
  v24 = sub_1001E4428();
  *&v22 = v14;
  sub_100033454();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DEC90();
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17 >= *(v15 + 24) >> 1)
  {
    sub_1001DEC90();
    v16 = v19;
  }

  *(v16 + 16) = v17 + 1;
  (*(v1 + 32))(v16 + v5 + v17 * v4, v3, v21);
  *&v22 = v6;
  sub_1001DD394(v16);
  return v22;
}

uint64_t sub_1001E37A8(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1001E37E8(a1);
  return v2;
}

void *sub_1001E37E8(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_100099DF4(&qword_1002E2100, &unk_100248DF0);
  sub_10003511C();
  v7[0] = v4;
  v7[1] = v4;
  v8 = sub_10003505C(v5);
  v9 = v8;
  sub_1000351AC();
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100007914(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v2 + 8) = 257;
  *(v2 + 18) = 1;
  ObservationRegistrar.init()();
  *(v2 + 8) = 0;
  *(v2 + 18) = 0;
  sub_1000334B8((v2 + 3), v7);
  sub_100004118(v2 + 3);
  sub_10000601C(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_1001E391C()
{
  sub_100004118(v0 + 3);
  v1 = OBJC_IVAR____TtCO18PrivateIdentifiers8SchemaV220GlobalSyncStateModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_10000307C();
  (*(v2 + 8))(&v0[v1]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t _s20GlobalSyncStateModelCMa_0(uint64_t a1)
{
  result = qword_1002E2010;
  if (!qword_1002E2010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E3A0C(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1001E3AD8()
{
  v56 = type metadata accessor for UUID();
  sub_100003724();
  v54 = v1;
  __chkstk_darwin(v2);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v5 = sub_1000030B8(v4);
  __chkstk_darwin(v5);
  sub_10000308C();
  v55 = v6 - v7;
  __chkstk_darwin(v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for CKSyncEngine.State.Serialization();
  sub_100003724();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_10000308C();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  v21 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
  v22 = sub_1000030B8(v21);
  __chkstk_darwin(v22);
  sub_10000308C();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = &v52 - v27;
  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(97);
  v29._countAndFlagsBits = 60;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v30);

  v31._object = 0x80000001002775A0;
  v31._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v31);
  v57 = v0;
  sub_1001E27AC();
  sub_100012C94(v28, v25, &qword_1002E1AB8, &qword_100247AD0);
  if (sub_100004DFC(v25, 1, v11) == 1)
  {
    sub_1000351D4();
  }

  else
  {
    (*(v13 + 32))(v20, v25, v11);
    (*(v13 + 16))(v17, v20, v11);
    String.init<A>(describing:)();
    (*(v13 + 8))(v20, v11);
  }

  sub_100004E24(v28, &qword_1002E1AB8, &qword_100247AD0);
  sub_1000351E4();

  v32._countAndFlagsBits = 0xD00000000000001CLL;
  v32._object = 0x80000001002775C0;
  String.append(_:)(v32);
  sub_1001E28E0();
  v33 = v55;
  sub_100012C94(v10, v55, &qword_1002E12C8, &qword_100248D50);
  v34 = v56;
  if (sub_100004DFC(v33, 1, v56) == 1)
  {
    sub_1000351D4();
  }

  else
  {
    v35 = v53;
    v36 = v54;
    (*(v54 + 32))(v53, v33, v34);
    UUID.uuidString.getter();
    (*(v36 + 8))(v35, v34);
  }

  sub_100004E24(v10, &qword_1002E12C8, &qword_100248D50);
  sub_1000351E4();

  v37._countAndFlagsBits = 0xD00000000000002ALL;
  v37._object = 0x80000001002775E0;
  String.append(_:)(v37);
  sub_1001E2A10(v38, v39, v40, v41, v42, v43, v44, v45, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  if (v47 >> 60 == 15)
  {
    sub_1000351D4();
  }

  else
  {
    v48 = v46;
    v49 = v47;
    Data.description.getter();
    sub_10009A7A0(v48, v49);
  }

  sub_1000351E4();

  v50._countAndFlagsBits = 62;
  v50._object = 0xE100000000000000;
  String.append(_:)(v50);
  return v58;
}

Swift::Int sub_1001E3F94()
{
  Hasher.init(_seed:)();
  sub_10003511C();
  sub_10003505C(v0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_1001E4058(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1001DF1F8(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001512EC(v1 + 24, v3);
  return sub_100034D4C;
}

uint64_t sub_1001E41F8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10003505C(&qword_1002E1AD8);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

unint64_t sub_1001E4428()
{
  result = qword_1002E20F8;
  if (!qword_1002E20F8)
  {
    v3 = sub_10009A468(&qword_1002E20F0, &qword_100248DE8);
    result = swift_getWitnessTable(&protocol conformance descriptor for Schema.Unique<A>, v3, v0, v1);
    atomic_store(result, &qword_1002E20F8);
  }

  return result;
}

uint64_t sub_1001E45B0()
{
  sub_100034AA8();
  result = sub_1001E44DC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001E4618()
{
  swift_getKeyPath();
  sub_1000362BC();
  sub_10003615C();
  sub_100036118(v0);
  sub_1000361BC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1001E4708()
{
  sub_100034AA8();
  sub_1001E46D8();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1001E4770()
{
  swift_getKeyPath();
  sub_1000362BC();
  sub_10003615C();
  sub_100036118(v0);
  sub_1000361BC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001E488C()
{
  sub_100034AA8();
  result = sub_1001E4880();
  *v0 = result;
  return result;
}

uint64_t sub_1001E48B4(uint64_t a1)
{
  sub_1000362B0(a1);
  sub_1000361E8();
  return sub_100035568(v1, v2, v3);
}

uint64_t sub_1001E48F0()
{
  sub_100034AA8();
  result = sub_1001E48E4();
  *v0 = result;
  return result;
}

uint64_t sub_1001E4918(uint64_t a1)
{
  sub_1000362B0(a1);
  sub_1000361D0();
  return sub_100035568(v1, v2, v3);
}

void sub_1001E4BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000334E8();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  sub_10000C4FC(v24, v24[3]);
  KeyPath = swift_getKeyPath();
  a9 = v23;
  a10 = v21;
  sub_100036298(KeyPath, &a9, &type metadata for String, &protocol witness table for String);

  sub_1000334FC();
}

uint64_t sub_1001E4C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100036118(&qword_1002E15F0);
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_1001E4CE8()
{
  sub_10003630C();
  v1 = v0;
  sub_10000C4FC(v2, v2[3]);
  swift_getKeyPath();
  sub_100099DF4(&qword_1002DCC48, &qword_100238200);
  sub_100034A2C();
  sub_100036068(v3);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *v1 = 0;
  sub_100036320();
}

uint64_t sub_1001E4DE8()
{
  swift_getKeyPath();
  sub_1000362BC();
  sub_10003615C();
  sub_100036118(v0);
  sub_1000361BC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001E4EA4(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_100036118(&qword_1002E15F0);
  sub_1001E675C();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E4F64(char a1)
{
  swift_getKeyPath();
  sub_10003615C();
  sub_100036118(v1);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001E5020(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_100036118(&qword_1002E15F0);
  sub_1001E67B0();
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_1001E50CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15)
{
  sub_10003630C();
  v79 = v16;
  v80 = v17;
  v18 = v15;
  v70 = v19;
  v72 = v20;
  v22 = v21;
  LODWORD(v67) = a14;
  HIDWORD(v67) = a15;
  v74 = v23;
  v24 = *v15;
  v62 = type metadata accessor for Date();
  sub_100003724();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_10000306C();
  v58 = v29 - v28;
  v18[6] = sub_100099DF4(&qword_1002E2238, &qword_100248FF0);
  sub_10003615C();
  v76 = v24;
  v77 = sub_100036118(v30);
  v78 = v77;
  sub_1000351AC();
  v18[7] = swift_getOpaqueTypeConformance2();
  sub_100007914(v18 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v18 + 8) = 257;
  *(v18 + 18) = 1;
  ObservationRegistrar.init()();
  v31 = sub_10000A874();
  sub_1001E4BAC(v31, v32, v33, v34, v35, v36, v37, v38, v57, a9, v58, a10, v62, v64, a13, v67, v70, v72);
  sub_1001E4CE8();
  v65 = v22;
  sub_1001D035C(v22, v74);
  sub_1000358A0(v22, v74, (v18 + 3), v39, &unk_100249118);
  v40 = sub_1000362C8();
  sub_1001D035C(v40, v41);
  v42 = sub_1000362C8();
  sub_1000358A0(v42, v43, v44, v45, v46);
  sub_100036200();
  KeyPath = swift_getKeyPath();
  sub_100036274(KeyPath);

  sub_100036200();
  v48 = swift_getKeyPath();
  v75 = v60;
  sub_100036274(v48);

  v49 = *(v26 + 16);
  v49(v59, a11, v63);
  sub_10000C4FC(v18 + 3, v18[6]);
  swift_getKeyPath();
  sub_10003618C();
  v51 = sub_100036118(v50);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v61 = *(v26 + 8);
  v61(v59, v63);
  v49(v59, a12, v63);
  sub_100036200();
  v52 = swift_getKeyPath();
  sub_100036298(v52, v59, v63, v51);

  v61(v59, v63);
  sub_100036200();
  v53 = swift_getKeyPath();
  v75 = v66;
  LOBYTE(v76) = v68 & 1;
  v54 = sub_1001E675C();
  sub_100036298(v53, &v75, &_s22KeypairsRotationReasonON_0, v54);

  sub_100036200();
  v55 = swift_getKeyPath();
  LOBYTE(v75) = v69;
  v56 = sub_1001E67B0();
  sub_100036298(v55, &v75, &_s24KeypairsModificationKindON_0, v56);

  sub_10009A7A0(v71, v73);
  sub_10009A7A0(v65, v74);
  v61(a12, v63);
  v61(a11, v63);
  sub_100036320();
}

void sub_1001E5548()
{
  sub_10003630C();
  v39 = v0;
  v40 = v1;
  v2 = type metadata accessor for Schema.PropertyMetadata();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = &v27 - v6;
  sub_100099DF4(&qword_1002E1C80, &qword_100247EF0);
  v7 = *(v3 + 72);
  v33 = v3;
  v8 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100248E00;
  v32 = v8;
  v29 = v9;
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034964();
  sub_100034A08();
  sub_1000362F4();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034964();
  sub_100034A08();
  sub_1000362F4();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  sub_1000362F4();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  sub_1000362F4();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v37 = 0u;
  v38 = 0u;
  sub_100099DF4(&qword_1002E2260, &unk_1002491D0);
  v10 = swift_allocObject();
  v28 = xmmword_10022E400;
  *(v10 + 16) = xmmword_10022E400;
  sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v11 = swift_allocObject();
  v27 = xmmword_100248E10;
  *(v11 + 16) = xmmword_100248E10;
  *(v11 + 32) = swift_getKeyPath();
  *(v11 + 40) = swift_getKeyPath();
  *(v11 + 48) = swift_getKeyPath();
  *(v11 + 56) = swift_getKeyPath();
  *(v10 + 32) = v11;
  v12 = sub_100099DF4(&qword_1002E2268, &qword_1002491E0);
  swift_allocObject();
  sub_100004938();
  Schema.Index.init(_:)();
  *(&v35 + 1) = v12;
  v13 = sub_1000342D8(&unk_1002E2270);
  sub_100034B1C(v13);
  v14 = v31;
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DEC90();
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17 >= *(v15 + 24) >> 1)
  {
    sub_100034AD8();
    v16 = v25;
  }

  *(v16 + 16) = v17 + 1;
  v18 = *(v33 + 32);
  v31 = v2;
  v33 += 32;
  v18(v16 + v32 + v17 * v7, v14, v2);
  swift_getKeyPath();
  v37 = 0u;
  v38 = 0u;
  v19 = swift_allocObject();
  *(v19 + 16) = v28;
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 32) = swift_getKeyPath();
  *(v20 + 40) = swift_getKeyPath();
  *(v20 + 48) = swift_getKeyPath();
  *(v20 + 56) = swift_getKeyPath();
  *(v19 + 32) = v20;
  v21 = sub_100099DF4(&qword_1002E2278, &qword_1002491E8);
  swift_allocObject();
  sub_100004938();
  Schema.Unique.init(_:)();
  *(&v35 + 1) = v21;
  v22 = sub_1000342D8(&unk_1002E2280);
  sub_100034B1C(v22);
  sub_100034A08();
  v23 = v30;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  v24 = *(v16 + 16);
  if (v24 >= *(v16 + 24) >> 1)
  {
    sub_100034AD8();
    v16 = v26;
  }

  *(v16 + 16) = v24 + 1;
  v18(v16 + v32 + v24 * v7, v23, v31);
  *&v34 = v29;
  sub_1001DD394(v16);
  sub_100036320();
}

uint64_t sub_1001E5C04(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1001E5C44(a1);
  return v2;
}

void *sub_1001E5C44(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_100099DF4(&qword_1002E2238, &qword_100248FF0);
  sub_10003615C();
  v7[0] = v4;
  v7[1] = v4;
  v8 = sub_100036118(v5);
  v9 = v8;
  sub_1000351AC();
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100007914(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v2 + 8) = 257;
  *(v2 + 18) = 1;
  ObservationRegistrar.init()();
  *(v2 + 8) = 0;
  *(v2 + 18) = 0;
  sub_1000334B8((v2 + 3), v7);
  sub_100004118(v2 + 3);
  sub_10000601C(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_1001E5D78()
{
  sub_100004118(v0 + 3);
  v1 = OBJC_IVAR____TtCO18PrivateIdentifiers8SchemaV229PrivateIdentifierHistoryModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_100006EF0();
  (*(v2 + 8))(&v0[v1]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t _s29PrivateIdentifierHistoryModelCMa(uint64_t a1)
{
  result = qword_1002E2138;
  if (!qword_1002E2138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E5E64(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_1001E5F3C()
{
  sub_10003630C();
  v0 = 7104878;
  type metadata accessor for Date();
  sub_100003724();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10000306C();
  _StringGuts.grow(_:)(226);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x617073656D616E20;
  v6._object = 0xEB000000003D6563;
  String.append(_:)(v6);
  v8._countAndFlagsBits = sub_1001E44DC(v7);
  String.append(_:)(v8);

  sub_100036224(", accountIdentifier=");
  sub_1001E46D8();
  if (!v10)
  {
    v9 = 7104878;
  }

  v11 = 0xE300000000000000;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v9);

  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x8000000100277710;
  String.append(_:)(v14);
  sub_1001E4948();
  v17 = 7104878;
  if (v16 >> 60 != 15)
  {
    v18 = v15;
    v19 = v16;
    v17 = Data.description.getter();
    v11 = v20;
    sub_10009A7A0(v18, v19);
  }

  v21._countAndFlagsBits = v17;
  v21._object = v11;
  String.append(_:)(v21);

  sub_100036224(", deviceKeypairData=");
  sub_1001E49A4();
  if (v23 >> 60 == 15)
  {
    v24 = 0xE300000000000000;
  }

  else
  {
    v25 = v22;
    v26 = v23;
    v0 = Data.description.getter();
    v24 = v27;
    sub_10009A7A0(v25, v26);
  }

  v28._countAndFlagsBits = v0;
  v28._object = v24;
  String.append(_:)(v28);

  sub_100036224(", generationCounter=");
  sub_1001E4880();
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0xD000000000000024;
  v30._object = 0x8000000100277750;
  String.append(_:)(v30);
  sub_1001E48E4();
  v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v31);

  sub_100036224(", validityStartDate=");
  sub_1001E4830();
  sub_10003618C();
  sub_100036118(v32);
  v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v33);

  v34 = *(v2 + 8);
  v35 = sub_10000A874();
  v34(v35);
  v36._countAndFlagsBits = 0xD000000000000012;
  v36._object = 0x8000000100277780;
  String.append(_:)(v36);
  sub_1001E448C();
  v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v37);

  v38 = sub_10000A874();
  v34(v38);
  v39._countAndFlagsBits = 0xD000000000000011;
  v39._object = 0x8000000100276B80;
  String.append(_:)(v39);
  v41 = sub_1001E4A00(v40);
  v43._countAndFlagsBits = sub_1001E9DC4(v41, v42 & 1);
  String.append(_:)(v43);

  v44._countAndFlagsBits = 0xD000000000000013;
  v44._object = 0x8000000100276BA0;
  String.append(_:)(v44);
  v45 = sub_1001E4AD8();
  v46._countAndFlagsBits = sub_1001E9D14(v45);
  String.append(_:)(v46);

  v47._countAndFlagsBits = 62;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  sub_100036320();
}

Swift::Int sub_1001E6384()
{
  Hasher.init(_seed:)();
  sub_10003615C();
  sub_100036118(v0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_1001E6448(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1001DF1F8(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001512EC(v1 + 24, v3);
  return sub_100035B04;
}

uint64_t sub_1001E6574(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100036118(&qword_1002E15F0);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

unint64_t sub_1001E675C()
{
  result = qword_1002E2240;
  if (!qword_1002E2240)
  {
    result = swift_getWitnessTable("Qj\a", &_s22KeypairsRotationReasonON_0, v0, v1);
    atomic_store(result, &qword_1002E2240);
  }

  return result;
}

unint64_t sub_1001E67B0()
{
  result = qword_1002E2248;
  if (!qword_1002E2248)
  {
    result = swift_getWitnessTable("yj\a", &_s24KeypairsModificationKindON_0, v0, v1);
    atomic_store(result, &qword_1002E2248);
  }

  return result;
}

unint64_t sub_1001E6804()
{
  result = qword_1002E2250;
  if (!qword_1002E2250)
  {
    result = swift_getWitnessTable(byte_100249A48, &_s24KeypairsModificationKindON_0, v0, v1);
    atomic_store(result, &qword_1002E2250);
  }

  return result;
}

unint64_t sub_1001E6858()
{
  result = qword_1002E2258;
  if (!qword_1002E2258)
  {
    result = swift_getWitnessTable(")k\a", &_s22KeypairsRotationReasonON_0, v0, v1);
    atomic_store(result, &qword_1002E2258);
  }

  return result;
}

void sub_1001E6974()
{
  sub_100034AA8();
  sub_1001E6944();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1001E69DC()
{
  swift_getKeyPath();
  sub_100037DD8();
  sub_100037CD4(v0);
  sub_100034A8C();
  sub_100038144(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1001E6B74()
{
  sub_100034AA8();
  result = sub_1001E6AA0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1001E6BDC()
{
  swift_getKeyPath();
  sub_100037DD8();
  sub_100037CD4(v0);
  sub_100034A8C();
  sub_100038144(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1001E7170(char a1)
{
  swift_getKeyPath();
  LOBYTE(v19) = a1;
  sub_100037DD8();
  v4 = sub_100037CD4(v3);
  v10 = sub_100037EAC(v4, v5, sub_1000379A8, v6, v7, v4, v8, v9, v17, v18, v1, v19, v20, v21);
  sub_100038144(v10, v11, v12, v13, v14, v15);
}

double sub_1001E7420@<D0>(uint64_t a1@<X8>)
{
  sub_1001E7464(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_1001E7464@<D0>(uint64_t a1@<X8>)
{
  *&v6 = v1;
  swift_getKeyPath();
  sub_100037ED4();
  sub_100037CD4(v3);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100037DF0();
  sub_100037CD4(v4);
  sub_1000376F4(&unk_1002E2418);
  sub_100034B30();
  sub_1000049C0();
  PersistentModel.getValue<A>(forKey:)();

  result = v1;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_1001E7584(uint64_t a1)
{
  swift_getKeyPath();
  sub_100037DD8();
  v4 = sub_100037CD4(v3);
  v10 = sub_100037EAC(v4, v5, sub_1000376D8, v6, v7, v4, v8, v9, v17, v18, v1, a1, v19, v20);
  sub_100038144(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1001E7744()
{
  sub_100030404();
  _StringGuts.grow(_:)(48);
  v0._countAndFlagsBits = 60;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x8000000100249760;
  String.append(_:)(v1);
  v2._object = 0x8000000100276EE0;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000100276F00;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

unint64_t sub_1001E786C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1001E787C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E786C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001E796C(void *a1)
{
  sub_100099DF4(&qword_1002E24A8, &qword_100249B28);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v3);
  sub_10000C4FC(a1, a1[3]);
  v4 = sub_1001EAFC8();
  sub_100030418(&_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysON_0, v5, v4);
  v11 = 0;
  sub_1000303A8(&v11);
  if (!v1)
  {
    v10 = 1;
    sub_1000303A8(&v10);
    v9 = 2;
    sub_1000303A8(&v9);
  }

  v6 = sub_100038104();
  return v7(v6);
}

double sub_1001E7AC8(void *a1)
{
  sub_100099DF4(&qword_1002E2498, &qword_100249B20);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100004880();
  sub_10000C4FC(a1, a1[3]);
  v5 = sub_1001EAFC8();
  sub_1000303E0(&_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysON_0, v6, v5);
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    v13 = 0;
    sub_1000303C4(&v13);
    v2 = v7;
    v12 = 1;
    sub_1000303C4(&v12);
    v11 = 2;
    sub_1000303C4(&v11);
    v9 = sub_10000BD0C();
    v10(v9);
    sub_100004118(a1);
  }

  return v2;
}

uint64_t sub_1001E7C44()
{
  sub_100030404();
  v5 = v4;
  sub_100099DF4(&qword_1002E2470, &qword_100249B10);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v6);
  sub_10000C4FC(v5, v5[3]);
  v7 = sub_1001EAECC();
  sub_100030418(&_s30ScheduledRotationConfigurationV10CodingKeysON_0, v8, v7);
  LOBYTE(v12[0]) = 0;
  sub_1000303A8(v12);
  if (!v0)
  {
    v12[0] = v3;
    v12[1] = v2;
    v12[2] = v1;
    v13 = 1;
    sub_1001EAF20();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v9 = sub_100038104();
  return v10(v9);
}

double sub_1001E7DA0(void *a1)
{
  sub_100099DF4(&qword_1002E2488, &qword_100249B18);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100004880();
  sub_10000C4FC(a1, a1[3]);
  v5 = sub_1001EAECC();
  sub_1000303E0(&_s30ScheduledRotationConfigurationV10CodingKeysON_0, v6, v5);
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    LOBYTE(v11) = 0;
    sub_1000303C4(&v11);
    v2 = v7;
    sub_1001EAF74();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = sub_10000BD0C();
    v9(v8);
    sub_100004118(a1);
  }

  return v2;
}

void sub_1001E7F34(uint64_t a1@<X8>)
{
  sub_1001E7958();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_1001E801C(uint64_t a1)
{
  v2 = sub_1001EAFC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E8058(uint64_t a1)
{
  v2 = sub_1001EAFC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001E8094(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001E7AC8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1001E80E4(uint64_t a1)
{
  v2 = sub_1001EAECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E8120(uint64_t a1)
{
  v2 = sub_1001EAECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001E815C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001E7DA0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

void sub_1001E81AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000334E8();
  sub_10000C4FC(v18, v18[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_1000334FC();
}

uint64_t sub_1001E823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100037CD4(&qword_1002E1890);
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_1001E82F0()
{
  sub_10003630C();
  v1 = v0;
  sub_10000C4FC(v2, v2[3]);
  swift_getKeyPath();
  sub_100099DF4(&qword_1002DCC48, &qword_100238200);
  sub_100034A2C();
  sub_100037B54(v3);
  sub_1000380F8();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *v1 = 0;
  sub_100036320();
}

uint64_t sub_1001E8408(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_100037CD4(&qword_1002E1890);
  sub_1001E675C();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E84C8(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_100037CD4(&qword_1002E1890);
  sub_1001E67B0();
  PersistentModel.setValue<A>(forKey:to:)();
}

double sub_1001E8574@<D0>(uint64_t a1@<X8>)
{
  sub_1001E7464(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1001E85BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1001E7584(v3);
}

uint64_t sub_1001E85FC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100037CD4(&qword_1002E1890);
  sub_1000376F4(&unk_1002E2400);
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_1001E8784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, unsigned __int8 a11, void (*a12)(void, void), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24)
{
  sub_10003630C();
  v126 = v25;
  v127 = v26;
  v27 = v24;
  v113 = v28;
  v114 = v29;
  v116 = v30;
  v117 = v31;
  v96 = v32;
  v95 = v33;
  v94 = v34;
  v93 = v35;
  v109 = a24;
  v110 = a23;
  v108 = a21;
  v107 = a22;
  v105 = a17;
  v106 = a18;
  v115 = a15;
  v118 = a16;
  v119 = a14;
  v111 = a13;
  v100 = a12;
  LODWORD(v99) = a11;
  LODWORD(v98) = a10;
  v36 = *v24;
  v97 = a9;
  v104 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v37);
  v103 = &v93 - v38;
  v102 = type metadata accessor for Date();
  sub_100003724();
  v121 = v39;
  __chkstk_darwin(v40);
  sub_10000306C();
  v101 = v42 - v41;
  v112 = type metadata accessor for UUID();
  sub_100003724();
  v120 = v43;
  __chkstk_darwin(v44);
  sub_10000306C();
  v47 = v46 - v45;
  v27[7] = sub_100099DF4(&qword_1002E23F8, &qword_100249480);
  sub_100037DD8();
  v49 = sub_100037CD4(v48);
  v122 = v36;
  v123 = v36;
  v124 = v49;
  v125 = v49;
  sub_1000351AC();
  v27[8] = swift_getOpaqueTypeConformance2();
  sub_100007914(v27 + 4);
  static PersistentModel.createBackingData<A>()();
  *(v27 + 8) = 257;
  *(v27 + 18) = 1;
  sub_10000C4FC(v27 + 4, v27[7]);
  swift_getKeyPath();
  v122 = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v27 + 19) = 16843009;
  *(v27 + 23) = 257;
  ObservationRegistrar.init()();
  sub_1001E81AC(v93, v94, (v27 + 4), v50, v51, v52, v53, v54, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
  sub_1001E82F0();
  v55 = sub_1000362C8();
  sub_1001D035C(v55, v56);
  sub_1000362C8();
  sub_100036B78();
  v57 = sub_1000362C8();
  sub_1001D035C(v57, v58);
  sub_1000362C8();
  sub_100036B78();
  sub_100037E64();
  KeyPath = swift_getKeyPath();
  v122 = v97;
  LOBYTE(v123) = v98 & 1;
  v60 = sub_1001E675C();
  sub_1000380B8(KeyPath, &v122, &_s22KeypairsRotationReasonON_0, v60);

  sub_100037E64();
  v61 = swift_getKeyPath();
  LOBYTE(v122) = v99;
  v62 = sub_1001E67B0();
  sub_1000380B8(v61, &v122, &_s24KeypairsModificationKindON_0, v62);

  sub_100037E64();
  v63 = swift_getKeyPath();
  v122 = v100;
  sub_1000380B8(v63, &v122, &type metadata for UInt64, &protocol witness table for UInt64);

  sub_100037E64();
  v64 = swift_getKeyPath();
  v122 = v111;
  sub_1000380B8(v64, &v122, &type metadata for UInt64, &protocol witness table for UInt64);

  v65 = v120;
  (*(v120 + 16))(v47, v119, v112);
  sub_100037E64();
  swift_getKeyPath();
  sub_100037EEC();
  sub_100037CD4(v66);
  sub_1000380EC();
  sub_1000380B8(v67, v68, v69, v70);

  v71 = *(v65 + 8);
  v120 = v65 + 8;
  v100 = v71;
  v72 = sub_10003CF90();
  v73(v72);
  v74 = v121;
  v75 = *(v121 + 16);
  v111 = (v121 + 16);
  v76 = v101;
  v77 = v102;
  (v75)(v101, v115, v102);
  v99 = v75;
  v96 = v27[8];
  sub_100038124();
  swift_getKeyPath();
  sub_100037E38();
  v97 = &protocol conformance descriptor for Date;
  v98 = sub_100037CD4(v78);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v80 = v74 + 8;
  v79 = *(v74 + 8);
  v79(v76, v77);
  v96 = v79;
  v121 = v80;
  v81 = sub_10003CF90();
  v82 = v77;
  (v75)(v81);
  sub_100038124();
  swift_getKeyPath();
  sub_1000380EC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v83 = sub_10003CF90();
  (v79)(v83);
  v84 = v103;
  sub_1000A9914(v118, v103);
  sub_100038124();
  swift_getKeyPath();
  sub_1000377C8();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v85 = v84;
  sub_1000ACD3C(v84);
  *(v27 + 19) = 0;
  sub_1000380EC();
  v99();
  sub_100037E64();
  v86 = swift_getKeyPath();
  sub_1000380B8(v86, v76, v82, v98);

  v87 = v96;
  (v96)(v76, v82);
  v88 = v105;
  sub_1000A9914(v105, v85);
  sub_100037F1C();
  sub_100036940(v85, v89);
  sub_1001E7584(v106);
  sub_100038054();
  sub_100036AC8(v108, v107 & 1, v90);
  sub_100037E88();
  sub_100036790(v110, v109, v91);
  sub_10009A7A0(v113, v114);
  sub_10009A7A0(v116, v117);
  sub_1000ACD3C(v88);
  sub_1000ACD3C(v118);
  v92 = sub_10003CF90();
  v87(v92);
  v100(v119, v112);
  sub_100036320();
}

uint64_t sub_1001E9020(__int128 *a1)
{
  sub_1000334B8(v1 + 32, v4);
  sub_100004118((v1 + 32));
  sub_10000601C(a1, v1 + 32);
  return swift_endAccess();
}

void sub_1001E9070()
{
  sub_10003630C();
  v46 = v0;
  v47 = v1;
  v39 = type metadata accessor for Schema.PropertyMetadata();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  sub_1000037D4();
  v37 = v3;
  sub_100005238();
  __chkstk_darwin(v4);
  v35 = &v31 - v5;
  sub_100099DF4(&qword_1002E1C80, &qword_100247EF0);
  v40 = v2;
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002491F0;
  v38 = v6;
  v36 = v7;
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034964();
  sub_100034A08();
  sub_100038084();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034964();
  sub_100034A08();
  sub_100038084();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100037EA0();
  v8 = type metadata accessor for Schema.Attribute();
  swift_allocObject();
  v9 = Schema.Attribute.init(_:originalName:hashModifier:)();
  *(&v42 + 1) = v8;
  v43 = sub_100037CD4(&unk_1002E2428);
  *&v41 = v9;
  sub_100037E50();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v45 = &type metadata for Int;
  v44 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v10 = sub_100037EA0();
  v43 = 0;
  v41 = v10;
  v42 = v10;
  sub_100037E50();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100037E50();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100037E50();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100037E50();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100037E50();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100037EA0();
  v34 = sub_100099DF4(&qword_1002E2430, &unk_1002497D8);
  v11 = sub_100034B5C(v34);
  v33 = xmmword_1002329F0;
  *(v11 + 16) = xmmword_1002329F0;
  v12 = sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v13 = sub_100034B5C(v12);
  v32 = xmmword_100248060;
  *(v13 + 16) = xmmword_100248060;
  *(v13 + 32) = swift_getKeyPath();
  *(v13 + 40) = swift_getKeyPath();
  *(v11 + 32) = v13;
  v14 = swift_allocObject();
  v31 = xmmword_100247D00;
  *(v14 + 16) = xmmword_100247D00;
  *(v14 + 32) = swift_getKeyPath();
  *(v11 + 40) = v14;
  v15 = sub_100099DF4(&qword_1002E2438, &qword_1002497E8);
  swift_allocObject();
  v16 = Schema.Index.init(_:)();
  *(&v42 + 1) = v15;
  v17 = v35;
  v43 = sub_100037D1C(&unk_1002E2440);
  *&v41 = v16;
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DEC90();
  v19 = v18;
  if (*(v18 + 16) >= *(v18 + 24) >> 1)
  {
    sub_100034AD8();
    v19 = v29;
  }

  v20 = sub_100038110();
  v21 = *(v40 + 32);
  v40 += 32;
  v21(v20, v17);
  swift_getKeyPath();
  sub_100037EA0();
  v22 = sub_100034B5C(v34);
  *(v22 + 16) = v33;
  v23 = sub_100034B5C(v12);
  *(v23 + 16) = v32;
  *(v23 + 32) = swift_getKeyPath();
  *(v23 + 40) = swift_getKeyPath();
  *(v22 + 32) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v31;
  *(v24 + 32) = swift_getKeyPath();
  *(v22 + 40) = v24;
  v25 = sub_100099DF4(&qword_1002E2448, &qword_1002497F0);
  swift_allocObject();
  v26 = Schema.Unique.init(_:)();
  *(&v42 + 1) = v25;
  v43 = sub_100037D1C(&unk_1002E2450);
  *&v41 = v26;
  sub_100034A08();
  v27 = v37;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  if (*(v19 + 16) >= *(v19 + 24) >> 1)
  {
    sub_100034AD8();
    v19 = v30;
  }

  v28 = sub_100038110();
  v21(v28, v27);
  *&v41 = v36;
  sub_1001DD394(v19);
  sub_100036320();
}

uint64_t sub_1001E9968(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1001E99A8(a1);
  return v2;
}

void *sub_1001E99A8(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[7] = sub_100099DF4(&qword_1002E23F8, &qword_100249480);
  sub_100037DD8();
  v7[0] = v4;
  v7[1] = v4;
  v8 = sub_100037CD4(v5);
  v9 = v8;
  sub_1000351AC();
  v2[8] = swift_getOpaqueTypeConformance2();
  sub_100007914(v2 + 4);
  static PersistentModel.createBackingData<A>()();
  *(v2 + 8) = 257;
  *(v2 + 18) = 1;
  sub_10000C4FC(v2 + 4, v2[7]);
  swift_getKeyPath();
  v7[0] = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 19) = 16843009;
  *(v2 + 23) = 257;
  ObservationRegistrar.init()();
  *(v2 + 24) = 0;
  v2[2] = 0;
  sub_1000334B8((v2 + 4), v7);
  sub_100004118(v2 + 4);
  sub_10000601C(a1, (v2 + 4));
  swift_endAccess();
  return v2;
}

uint64_t sub_1001E9B40()
{
  sub_100004118(v0 + 4);
  v1 = OBJC_IVAR____TtCO18PrivateIdentifiers8SchemaV222PrivateIdentifierModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_10000307C();
  (*(v2 + 8))(&v0[v1]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t _s22PrivateIdentifierModelCMa_0(uint64_t a1)
{
  result = qword_1002E22B8;
  if (!qword_1002E22B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E9C30(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1001E9D14(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x6C61636F6CLL;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0x7665446C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001E9DC4(uint64_t a1, char a2)
{
  if (a2)
  {
    switch(a1)
    {
      case 2:
        sub_10002F438();
        result = v6 + 5;
        break;
      case 3:
        sub_10002F438();
        result = v7 | 4;
        break;
      case 4:
        sub_10002F438();
        result = v5 + 3;
        break;
      case 5:
        sub_10002F438();
        result = v8 | 8;
        break;
      default:
        result = sub_100038084();
        break;
    }
  }

  else
  {
    _StringGuts.grow(_:)(17);

    strcpy(v9, "futureUnknown(");
    HIBYTE(v9[1]) = -18;
    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    v3._countAndFlagsBits = 41;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    return v9[0];
  }

  return result;
}

void sub_1001E9F28()
{
  sub_10003630C();
  v117 = v0;
  v118 = v1;
  v2 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v2 - 8);
  sub_1000037D4();
  v108 = v3;
  sub_100005238();
  __chkstk_darwin(v4);
  v109 = &v105 - v5;
  sub_100005238();
  __chkstk_darwin(v6);
  v107 = &v105 - v7;
  sub_100005238();
  __chkstk_darwin(v8);
  v111 = &v105 - v9;
  v10 = type metadata accessor for Date();
  sub_100003724();
  v110 = v11;
  __chkstk_darwin(v12);
  sub_10000306C();
  v15 = v14 - v13;
  v106 = type metadata accessor for UUID();
  sub_100003724();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000306C();
  v21 = v20 - v19;
  v114 = 0;
  v115 = 0xE000000000000000;
  _StringGuts.grow(_:)(461);
  v112 = v114;
  v113 = v115;
  v22._countAndFlagsBits = 60;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x617073656D616E20;
  v24._object = 0xEB000000003D6563;
  String.append(_:)(v24);
  v119._countAndFlagsBits = sub_1001E6AA0();
  sub_1000380A0(v119);

  v25._countAndFlagsBits = 0xD000000000000014;
  v25._object = 0x80000001002776F0;
  String.append(_:)(v25);
  sub_1001E6944();
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v26 = 7104878;
    v28 = 0xE300000000000000;
  }

  v29 = v28;
  String.append(_:)(*&v26);

  v30._countAndFlagsBits = 0xD000000000000015;
  v30._object = 0x8000000100277710;
  String.append(_:)(v30);
  sub_1001E6E58();
  if (v32 >> 60 != 15)
  {
    v33 = v31;
    v34 = v32;
    Data.description.getter();
    sub_10009A7A0(v33, v34);
  }

  v35._countAndFlagsBits = sub_100002A98();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0xD000000000000014;
  v36._object = 0x8000000100277730;
  String.append(_:)(v36);
  sub_1001E6EDC();
  if (v38 >> 60 != 15)
  {
    v39 = v37;
    v40 = v38;
    Data.description.getter();
    sub_10009A7A0(v39, v40);
  }

  v41._countAndFlagsBits = sub_100007B1C();
  String.append(_:)(v41);

  v42._countAndFlagsBits = sub_100038084();
  String.append(_:)(v42);
  v51 = sub_1001E6F78(v43, v44, v45, v46, v47, v48, v49, v50, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
  v120._countAndFlagsBits = sub_1001E9DC4(v51, v52 & 1);
  sub_1000380A0(v120);

  v53._countAndFlagsBits = 0xD000000000000017;
  v53._object = 0x8000000100276C60;
  String.append(_:)(v53);
  v55 = sub_1001E7098(v54);
  v121._countAndFlagsBits = sub_1001E9D14(v55);
  sub_1000380A0(v121);

  v56._countAndFlagsBits = 0xD000000000000015;
  v56._object = 0x8000000100277850;
  String.append(_:)(v56);
  v114 = sub_1001E6DFC();
  sub_100002A98();
  v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v57);

  v58._countAndFlagsBits = 0xD000000000000024;
  v58._object = 0x8000000100277750;
  String.append(_:)(v58);
  v114 = sub_1001E6E08();
  sub_100002A98();
  v122._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  sub_1000380A0(v122);

  v59._countAndFlagsBits = 0x3D64697575202CLL;
  v59._object = 0xE700000000000000;
  String.append(_:)(v59);
  sub_1001E68AC();
  sub_100037EEC();
  sub_100037CD4(v60);
  v61 = v106;
  v123._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  sub_1000380A0(v123);

  (*(v17 + 8))(v21, v61);
  v62._countAndFlagsBits = 0xD00000000000001FLL;
  v62._object = 0x8000000100276CA0;
  String.append(_:)(v62);
  sub_1001E725C();
  sub_100037E38();
  sub_100037CD4(v63);
  v124._countAndFlagsBits = sub_1000380D0();
  sub_1000380A0(v124);

  v64 = v110;
  v65 = *(v110 + 8);
  v66 = sub_10000AE2C();
  v65(v66);
  v67._countAndFlagsBits = 0xD000000000000013;
  v67._object = 0x8000000100276CC0;
  String.append(_:)(v67);
  sub_1001E6D10();
  v125._countAndFlagsBits = sub_1000380D0();
  sub_1000380A0(v125);

  v68 = sub_10000AE2C();
  v65(v68);
  v69._countAndFlagsBits = 0xD000000000000013;
  v69._object = 0x8000000100276D10;
  String.append(_:)(v69);
  v70 = v111;
  sub_1001E7340();
  v71 = v107;
  sub_1000A9914(v70, v107);
  if (sub_100004DFC(v71, 1, v10) != 1)
  {
    (*(v64 + 32))(v15, v71, v10);
    Date.description.getter();
    v72 = sub_10000AE2C();
    v65(v72);
  }

  sub_1000ACD3C(v111);
  v73._countAndFlagsBits = sub_100007B1C();
  String.append(_:)(v73);

  v74._countAndFlagsBits = 0xD000000000000020;
  v74._object = 0x8000000100276CE0;
  String.append(_:)(v74);
  sub_1001E7374();
  v75._countAndFlagsBits = sub_1000380D0();
  String.append(_:)(v75);

  v76 = sub_10000AE2C();
  v65(v76);
  v77._countAndFlagsBits = sub_100038084();
  String.append(_:)(v77);
  v78 = v109;
  sub_1001E6CA0();
  v79 = v108;
  sub_1000A9914(v78, v108);
  if (sub_100004DFC(v79, 1, v10) == 1)
  {
    v80 = 0xE300000000000000;
  }

  else
  {
    (*(v110 + 32))(v15, v79, v10);
    Date.description.getter();
    v80 = v81;
    v82 = sub_10000AE2C();
    v65(v82);
  }

  sub_1000ACD3C(v78);
  v83._countAndFlagsBits = sub_100038104();
  String.append(_:)(v83);

  v84._countAndFlagsBits = 0xD000000000000021;
  v84._object = 0x8000000100276D30;
  String.append(_:)(v84);
  sub_1001E7464(&v114);
  if (v116)
  {
    v85 = sub_100038090();
  }

  else
  {
    v85 = sub_1001E7744();
    v80 = v86;
  }

  v87 = v80;
  String.append(_:)(*&v85);

  v88._countAndFlagsBits = 0xD00000000000001FLL;
  v88._object = 0x8000000100277890;
  String.append(_:)(v88);
  sub_1001E7648();
  if (v89)
  {
    v90 = sub_100038090();
  }

  else
  {
    v90 = Double.description.getter();
    v80 = v91;
  }

  v92 = v80;
  String.append(_:)(*&v90);

  v93._countAndFlagsBits = 0xD000000000000024;
  v93._object = 0x8000000100276D90;
  String.append(_:)(v93);
  sub_1001E76B8();
  if (v94)
  {
    v95 = sub_100038090();
  }

  else
  {
    v95 = Double.description.getter();
    v80 = v96;
  }

  v97 = v80;
  String.append(_:)(*&v95);

  v98._countAndFlagsBits = 0xD00000000000001BLL;
  v98._object = 0x80000001002778B0;
  String.append(_:)(v98);
  sub_1001E76E4();
  if (v100 >> 60 != 15)
  {
    v101 = v99;
    v102 = v100;
    Data.description.getter();
    sub_10009A7A0(v101, v102);
  }

  v103._countAndFlagsBits = sub_100038104();
  String.append(_:)(v103);

  v104._countAndFlagsBits = 62;
  v104._object = 0xE100000000000000;
  String.append(_:)(v104);
  sub_100036320();
}

Swift::Int sub_1001EA814()
{
  Hasher.init(_seed:)();
  sub_100037DD8();
  sub_100037CD4(v0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_1001EA8E0(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1001DF1F8(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001512EC(v1 + 32, v3);
  return sub_1000371C0;
}

uint64_t sub_1001EAA0C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100037CD4(&qword_1002E1890);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

unint64_t sub_1001EABF4()
{
  result = qword_1002E2410;
  if (!qword_1002E2410)
  {
    result = swift_getWitnessTable(byte_100249A98, &_s30ScheduledRotationConfigurationVN_0, v0, v1);
    atomic_store(result, &qword_1002E2410);
  }

  return result;
}

unint64_t sub_1001EAC48()
{
  result = qword_1002E2420;
  if (!qword_1002E2420)
  {
    result = swift_getWitnessTable(byte_100249A70, &_s30ScheduledRotationConfigurationVN_0, v0, v1);
    atomic_store(result, &qword_1002E2420);
  }

  return result;
}

_BYTE *_s24KeypairsModificationKindOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001EADD0()
{
  result = qword_1002E2458;
  if (!qword_1002E2458)
  {
    result = swift_getWitnessTable("!i\a", &_s24KeypairsModificationKindON_0, v0, v1);
    atomic_store(result, &qword_1002E2458);
  }

  return result;
}

unint64_t sub_1001EAE24()
{
  result = qword_1002E2460;
  if (!qword_1002E2460)
  {
    result = swift_getWitnessTable("Il\a", &_s22KeypairsRotationReasonON_0, v0, v1);
    atomic_store(result, &qword_1002E2460);
  }

  return result;
}

unint64_t sub_1001EAE78()
{
  result = qword_1002E2468;
  if (!qword_1002E2468)
  {
    result = swift_getWitnessTable(byte_100249930, &_s24KeypairsModificationKindON_0, v0, v1);
    atomic_store(result, &qword_1002E2468);
  }

  return result;
}

unint64_t sub_1001EAECC()
{
  result = qword_1002E2478;
  if (!qword_1002E2478)
  {
    result = swift_getWitnessTable(byte_100249CFC, &_s30ScheduledRotationConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1002E2478);
  }

  return result;
}

unint64_t sub_1001EAF20()
{
  result = qword_1002E2480;
  if (!qword_1002E2480)
  {
    result = swift_getWitnessTable(byte_1002499A8, &_s30ScheduledRotationConfigurationV19JitterConfigurationVN_0, v0, v1);
    atomic_store(result, &qword_1002E2480);
  }

  return result;
}

unint64_t sub_1001EAF74()
{
  result = qword_1002E2490;
  if (!qword_1002E2490)
  {
    result = swift_getWitnessTable("yk\a", &_s30ScheduledRotationConfigurationV19JitterConfigurationVN_0, v0, v1);
    atomic_store(result, &qword_1002E2490);
  }

  return result;
}

unint64_t sub_1001EAFC8()
{
  result = qword_1002E24A0;
  if (!qword_1002E24A0)
  {
    result = swift_getWitnessTable(byte_100249CAC, &_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1002E24A0);
  }

  return result;
}

_BYTE *_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s30ScheduledRotationConfigurationV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001EB1D8()
{
  result = qword_1002E24B0;
  if (!qword_1002E24B0)
  {
    result = swift_getWitnessTable("]f\a", &_s30ScheduledRotationConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1002E24B0);
  }

  return result;
}

unint64_t sub_1001EB230()
{
  result = qword_1002E24B8;
  if (!qword_1002E24B8)
  {
    result = swift_getWitnessTable(byte_100249C84, &_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1002E24B8);
  }

  return result;
}

unint64_t sub_1001EB288()
{
  result = qword_1002E24C0;
  if (!qword_1002E24C0)
  {
    result = swift_getWitnessTable(byte_100249BF4, &_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1002E24C0);
  }

  return result;
}

unint64_t sub_1001EB2E0()
{
  result = qword_1002E24C8;
  if (!qword_1002E24C8)
  {
    result = swift_getWitnessTable(byte_100249C1C, &_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1002E24C8);
  }

  return result;
}

unint64_t sub_1001EB338()
{
  result = qword_1002E24D0;
  if (!qword_1002E24D0)
  {
    result = swift_getWitnessTable("Mk\a", &_s30ScheduledRotationConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1002E24D0);
  }

  return result;
}

unint64_t sub_1001EB390()
{
  result = qword_1002E24D8;
  if (!qword_1002E24D8)
  {
    result = swift_getWitnessTable("Ug\a", &_s30ScheduledRotationConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_1002E24D8);
  }

  return result;
}

uint64_t sub_1001EB404()
{
  sub_100099DF4(&qword_1002E1FD8, &unk_100248B20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002329D0;
  v1 = _s20GlobalSyncStateModelCMa_0(0);
  v2 = sub_100038174(&qword_1002E1AD8, _s20GlobalSyncStateModelCMa_0, byte_100248C60);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = _s22PrivateIdentifierModelCMa_0(0);
  v4 = sub_100038174(&qword_1002E1890, _s22PrivateIdentifierModelCMa_0, byte_100249368);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = _s29PrivateIdentifierHistoryModelCMa(0);
  v6 = sub_100038174(&qword_1002E15F0, _s29PrivateIdentifierHistoryModelCMa, byte_100248F58);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

uint64_t sub_1001EB538()
{
  sub_100099DF4(&qword_1002E24F0, &unk_100249DE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002329F0;
  v1 = sub_1001EB6C0();
  *(v0 + 32) = &type metadata for SchemaV1;
  *(v0 + 40) = v1;
  v2 = sub_1001DABAC();
  *(v0 + 48) = &type metadata for SchemaV2;
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_1001EB5A8()
{
  sub_100099DF4(&qword_1002E24E0, &qword_100249DD8);
  v0 = type metadata accessor for MigrationStage();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10022E400;
  v4 = (v3 + v2);
  v5 = sub_1001EB6C0();
  v6 = sub_1001DABAC();
  *v4 = &type metadata for SchemaV1;
  v4[1] = v5;
  v4[2] = &type metadata for SchemaV2;
  v4[3] = v6;
  (*(v1 + 104))(v4, enum case for MigrationStage.lightweight(_:), v0);
  return v3;
}

unint64_t sub_1001EB6C0()
{
  result = qword_1002E24E8;
  if (!qword_1002E24E8)
  {
    result = swift_getWitnessTable(byte_100248AEC, &type metadata for SchemaV1, v0, v1);
    atomic_store(result, &qword_1002E24E8);
  }

  return result;
}

uint64_t sub_1001EB714(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

BOOL sub_1001EB770(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = *a1 == *a2 && v4 == v7;
    if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = v5 == v8 && v6 == v9;
  return (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && a1[4] == a2[4] && a1[5] == a2[5];
}

void sub_1001EB838(uint64_t a1)
{
  if (v1[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  v2 = v1[5];
  Hasher._combine(_:)(v1[4]);
  Hasher._combine(_:)(v2);
}