uint64_t sub_10003811C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100044D68();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100038168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000B5FB0();
  sub_1000B55A0();
  return sub_1000B5FE0();
}

unint64_t sub_1000381C8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000449A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10003821C(uint64_t a1)
{
  v2 = sub_100044D68();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_100038258(uint64_t a1)
{
  v2 = sub_100044D68();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_10003829C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100044D68();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t *ICArchiveImporter.objects(forArchiveAt:)(id a1)
{
  v1 = sub_100030480(&qword_100106DA0, &qword_1000CAB10);
  __chkstk_darwin(v1 - 8, v2);
  v55 = (&v46 - v3);
  v4 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v53 = *(v4 - 8);
  v54 = v4;
  v6 = __chkstk_darwin(v4, v5);
  v61 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v50 = &v46 - v9;
  v10 = sub_1000B4DB0();
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10, v11);
  v62 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000B5480();
  v14 = *(v13 - 1);
  v16 = __chkstk_darwin(v13, v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v46 - v20;
  if (qword_100106A20 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v22 = sub_1000B54B0();
    sub_100036380(v22, qword_100106DD8);
    sub_1000B4CF0(v23);
    sub_1000B54A0();
    sub_1000B5460();
    v24 = sub_1000B54A0();
    v25 = sub_1000B59E0();
    if (sub_1000B5AB0())
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_1000B5470();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, v25, v27, "Objects for Archive", "", v26, 2u);
    }

    (*(v14 + 16))(v18, v21, v13);
    sub_1000B54F0();
    swift_allocObject();
    v28 = sub_1000B54E0();
    v29 = v63;
    swift_getObjectType();
    v30 = v60;
    v31 = sub_1000B4FB0();
    if (v30)
    {
      sub_10003C498(v28, "Objects for Archive");

      (*(v14 + 8))(v21, v13);
      return v13;
    }

    v32 = v31;
    v46 = v28;
    v47 = v21;
    v48 = v14;
    v49 = v13;
    v33 = *(v31 + 16);
    v34 = v29;
    v60 = v33;
    if (!v33)
    {
      break;
    }

    v21 = 0;
    v18 = v51;
    v14 = v52;
    v58 = v51 + 16;
    v59 = (v51 + 8);
    v35 = v54;
    v56 = (v53 + 32);
    v57 = (v53 + 48);
    v63 = _swiftEmptyArrayStorage;
    v13 = v55;
    while (v21 < *(v32 + 16))
    {
      v36 = v32;
      v37 = v32 + ((v18[80] + 32) & ~v18[80]) + *(v18 + 9) * v21;
      v38 = v62;
      (*(v18 + 2))(v62, v37, v14);
      sub_100038BC8(v38, v13);
      (*v59)(v38, v14);
      if ((*v57)(v13, 1, v35) == 1)
      {
        sub_100036320(v13, &qword_100106DA0, &qword_1000CAB10);
        v32 = v36;
      }

      else
      {
        v39 = *v56;
        v40 = v50;
        (*v56)(v50, v13, v35);
        v39(v61, v40, v35);
        v41 = v63;
        v32 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1000335D4(0, v41[2] + 1, 1, v41);
        }

        v43 = v41[2];
        v42 = v41[3];
        v63 = v41;
        v18 = v51;
        if (v43 >= v42 >> 1)
        {
          v63 = sub_1000335D4((v42 > 1), v43 + 1, 1, v63);
        }

        v44 = v63;
        v63[2] = v43 + 1;
        v35 = v54;
        v39(&v44[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v43], v61, v54);
        v13 = v55;
        v14 = v52;
      }

      if (v60 == ++v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v63 = _swiftEmptyArrayStorage;
LABEL_18:

  v64 = v63;

  sub_100041C84(&v64);

  v13 = v64;
  sub_10003C498(v46, "Objects for Archive");

  (*(v48 + 8))(v47, v49);
  return v13;
}

uint64_t sub_100038BC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v181 = a2;
  v4 = sub_100030480(&qword_100106DA0, &qword_1000CAB10);
  __chkstk_darwin(v4 - 8, v5);
  v186 = (v173 - v6);
  v7 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v8 = *(v7 - 8);
  v187 = v7;
  v188 = v8;
  v10 = __chkstk_darwin(v7, v9);
  v185 = v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v184 = v173 - v13;
  v14 = sub_1000B4DB0();
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v14, v16);
  v176 = v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17, v19);
  v178 = v173 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v177 = v173 - v24;
  v26 = __chkstk_darwin(v23, v25);
  v180 = v173 - v27;
  v29 = __chkstk_darwin(v26, v28);
  v31 = v173 - v30;
  __chkstk_darwin(v29, v32);
  v34 = v173 - v33;
  sub_1000B4D00();
  v179 = sub_1000B4CE0();
  v36 = v35;
  v196 = v15;
  v39 = *(v15 + 8);
  v38 = v15 + 8;
  v37 = v39;
  v40 = v34;
  v41 = v14;
  v39(v40, v14);
  v194 = v2;
  v42 = *&v2[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager];
  v43 = *&v194[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager + 8];
  ObjectType = swift_getObjectType();
  v45 = v195;
  v46 = sub_1000B4FB0();
  v183 = v45;
  if (v45)
  {
  }

  v173[2] = ObjectType;
  v173[3] = v42;
  v173[1] = v43;
  v175 = v36;
  v192 = v37;
  v193 = v38;
  v174 = a1;
  v195 = v46;
  v48 = *(v46 + 16);
  v194 = v194;
  v49 = _swiftEmptyArrayStorage;
  v182 = v41;
  v50 = v187;
  v191 = v48;
  if (!v48)
  {
    v54 = v183;
LABEL_16:
    v63 = v50;

    v197[0] = v49;

    sub_100041C84(v197);
    v183 = v54;
    if (v54)
    {

      __break(1u);
      return result;
    }

    v53 = 0xEC00000065766968;
    v41 = 0x6372617365746F6ELL;

    v64 = v197[0];
    v52 = v174;
    v49 = sub_1000B4C90();
    v54 = v65;
    v66 = v188;
    v51 = v196;
    if (v49 == 0x6372617365746F6ELL && v65 == 0xEC00000065766968 || (sub_1000B5F20() & 1) != 0)
    {

      v67 = v182;
      v68 = v180;
      if (qword_100106A18 != -1)
      {
        swift_once();
      }

      v69 = sub_1000B5530();
      sub_100036380(v69, qword_100106DC0);
      (*(v51 + 16))(v68, v52, v67);
      v70 = sub_1000B5520();
      v71 = sub_1000B5920();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = v68;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v197[0] = v74;
        *v73 = 136315138;
        v75 = sub_1000B4C90();
        v76 = v63;
        v78 = v77;
        v192(v72, v67);
        v79 = sub_100062B20(v75, v78, v197);
        v63 = v76;

        *(v73 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v70, v71, "Archive object type not supported inside archive — skipping {pathExtension: %s}", v73, 0xCu);
        sub_100035DA8(v74);
      }

      else
      {

        v192(v68, v67);
      }

      return (*(v188 + 56))(v181, 1, 1, v63);
    }

    if (v49 == 0x746E756F636361 && v54 == 0xE700000000000000 || (sub_1000B5F20() & 1) != 0)
    {
      v80 = v51;

      v81 = sub_100030480(&qword_100106F38, &qword_1000CADF0);
      v82 = swift_allocBox();
      v84 = v83;
      v85 = (v83 + *(v81 + 48));
      v86 = *(v81 + 64);
      (*(v80 + 16))(v83, v52, v182);
      v87 = v175;
      *v85 = v179;
      v85[1] = v87;
      *(v84 + v86) = v64;
      v88 = v181;
      *v181 = v82;
      (*(v66 + 104))(v88, enum case for ICObjectReferences.account<A>(_:), v63);
      return (*(v66 + 56))(v88, 0, 1, v63);
    }

    v195 = v64;
    v50 = 0x7265646C6F66;
    if (v49 == 0x7265646C6F66 && v54 == 0xE600000000000000 || (sub_1000B5F20() & 1) != 0)
    {
      v89 = v51;

      v90 = sub_100030480(&qword_100106F38, &qword_1000CADF0);
      v91 = swift_allocBox();
      v93 = v92;
      v94 = (v92 + *(v90 + 48));
      v95 = *(v90 + 64);
      (*(v89 + 16))(v92, v52, v182);
      v96 = v175;
      *v94 = v179;
      v94[1] = v96;
      *(v93 + v95) = v195;
      v97 = v181;
      *v181 = v91;
      v98 = &enum case for ICObjectReferences.folder<A>(_:);
    }

    else
    {
      if ((v49 != 1702129518 || v54 != 0xE400000000000000) && (sub_1000B5F20() & 1) == 0)
      {
        goto LABEL_41;
      }

      v100 = v51;

      v101 = sub_100030480(&qword_100106F28, &qword_1000CADE8);
      v102 = swift_allocBox();
      v104 = v103;
      v105 = (v103 + *(v101 + 48));
      v106 = *(v101 + 64);
      (*(v100 + 16))(v103, v52, v182);
      v107 = v175;
      *v105 = v179;
      v105[1] = v107;
      *(v104 + v106) = v195;
      v97 = v181;
      *v181 = v102;
      v98 = &enum case for ICObjectReferences.note<A>(_:);
    }

    v99 = v187;
    (*(v66 + 104))(v97, *v98, v187);
    return (*(v66 + 56))(v97, 0, 1, v99);
  }

  v51 = 0;
  v52 = v195;
  v189 = (v188 + 48);
  v190 = v196 + 16;
  v53 = v188 + 32;
  v54 = v183;
  v55 = v186;
  while (v51 < *(v52 + 16))
  {
    (*(v196 + 16))(v31, v52 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v51, v41);
    sub_100038BC8(v31, v55);
    if (v54)
    {

      v192(v31, v41);
    }

    v54 = 0;
    v192(v31, v41);
    if ((*v189)(v55, 1, v50) == 1)
    {
      sub_100036320(v55, &qword_100106DA0, &qword_1000CAB10);
    }

    else
    {
      v56 = v55;
      v57 = *v53;
      v58 = v184;
      (*v53)(v184, v56, v50);
      v59 = v185;
      v57(v185, v58, v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1000335D4(0, v49[2] + 1, 1, v49);
      }

      v61 = v49[2];
      v60 = v49[3];
      if (v61 >= v60 >> 1)
      {
        v49 = sub_1000335D4((v60 > 1), v61 + 1, 1, v49);
      }

      v49[2] = v61 + 1;
      v62 = v49 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v61;
      v50 = v187;
      v57(v62, v59, v187);
      v54 = 0;
      v41 = v182;
      v55 = v186;
    }

    ++v51;
    v52 = v195;
    if (v191 == v51)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  v194 = v41;
  if (v49 == 0x656D686361747461 && v54 == 0xEA0000000000746ELL)
  {
  }

  else
  {
    v108 = sub_1000B5F20();

    v109 = v182;
    if ((v108 & 1) == 0)
    {

      if (qword_100106A18 != -1)
      {
        swift_once();
      }

      v113 = sub_1000B5530();
      sub_100036380(v113, qword_100106DC0);
      v114 = v176;
      (*(v51 + 16))(v176, v52, v109);
      v115 = sub_1000B5520();
      v116 = sub_1000B5920();
      v117 = os_log_type_enabled(v115, v116);
      v118 = v187;
      if (v117)
      {
        v119 = swift_slowAlloc();
        v120 = v109;
        v121 = swift_slowAlloc();
        v197[0] = v121;
        *v119 = 136315138;
        v122 = sub_1000B4C90();
        v123 = v114;
        v125 = v124;
        v192(v123, v120);
        v126 = sub_100062B20(v122, v125, v197);

        *(v119 + 4) = v126;
        _os_log_impl(&_mh_execute_header, v115, v116, "Unknown object type — skipping {pathExtension: %s}", v119, 0xCu);
        sub_100035DA8(v121);
      }

      else
      {

        v192(v114, v109);
      }

      return (*(v188 + 56))(v181, 1, 1, v118);
    }
  }

  v197[0] = _swiftEmptyArrayStorage;
  sub_1000432C4(0, 5, 0);
  v110 = v197[0];
  v111 = 0x6372617365746F6ELL;
  v112 = 0x656D686361747461;
  v128 = *(v197[0] + 16);
  v127 = *(v197[0] + 24);
  v129 = v128 + 1;
  if (v128 >= v127 >> 1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    *(v110 + 16) = v129;
    v130 = v110 + 16 * v128;
    *(v130 + 32) = v111;
    *(v130 + 40) = v53;
    v131 = v51;
    v197[0] = v110;
    v132 = *(v110 + 24);
    v133 = v128 + 2;
    if (v129 >= v132 >> 1)
    {
      v168 = v128 + 2;
      v169 = v112;
      sub_1000432C4((v132 > 1), v168, 1);
      v112 = v169;
      v110 = v197[0];
    }

    *(v110 + 16) = v133;
    v134 = v110 + 16 * v129;
    *(v134 + 32) = 0x746E756F636361;
    *(v134 + 40) = 0xE700000000000000;
    v197[0] = v110;
    v136 = *(v110 + 16);
    v135 = *(v110 + 24);
    v137 = v136 + 1;
    if (v136 >= v135 >> 1)
    {
      v170 = v112;
      sub_1000432C4((v135 > 1), v136 + 1, 1);
      v112 = v170;
      v110 = v197[0];
    }

    *(v110 + 16) = v137;
    v138 = v110 + 16 * v136;
    *(v138 + 32) = v50;
    *(v138 + 40) = 0xE600000000000000;
    v197[0] = v110;
    v139 = *(v110 + 24);
    v140 = v136 + 2;
    if (v137 >= v139 >> 1)
    {
      v171 = v136 + 2;
      v172 = v112;
      sub_1000432C4((v139 > 1), v171, 1);
      v112 = v172;
      v110 = v197[0];
    }

    *(v110 + 16) = v140;
    v141 = v110 + 16 * v137;
    *(v141 + 32) = 1702129518;
    *(v141 + 40) = 0xE400000000000000;
    v194 = v112;
    v142 = 0xEA0000000000746ELL;
    v111 = v175;
    v197[0] = v110;
    v144 = *(v110 + 16);
    v143 = *(v110 + 24);
    v129 = v144 + 1;
    if (v144 >= v143 >> 1)
    {
      v191 = 0xEA0000000000746ELL;
      sub_1000432C4((v143 > 1), v144 + 1, 1);
      v142 = v191;
      v110 = v197[0];
    }

    *(v110 + 16) = v129;
    v145 = v110 + 16 * v144;
    *(v145 + 32) = v194;
    *(v145 + 40) = v142;
    v146 = v183;
    v128 = v110;
    v147 = sub_1000B4FA0();
    if (v146)
    {
    }

    v53 = v147;
    v183 = 0;
    v190 = *(v147 + 16);
    v191 = v128;
    if (!v190)
    {
      break;
    }

    v50 = 0;
    v112 = v131 + 16;
    v189 = (v131 + 16);
    v186 = (v131 + 32);
    v51 = _swiftEmptyArrayStorage;
    v148 = v177;
    while (1)
    {
      v127 = *(v53 + 16);
      if (v50 >= v127)
      {
        break;
      }

      v194 = ((*(v131 + 80) + 32) & ~*(v131 + 80));
      v128 = *(v131 + 72);
      v129 = v182;
      (*(v131 + 16))(v148, &v194[v53 + v128 * v50], v182);
      v197[0] = sub_1000B4C90();
      v197[1] = v149;
      __chkstk_darwin(v197[0], v149);
      v173[-2] = v197;
      v150 = v183;
      v111 = sub_10002F354(sub_100045AC8, &v173[-4], v191);
      v183 = v150;

      if (v111)
      {
        v192(v148, v129);
      }

      else
      {
        v111 = *v186;
        (*v186)(v178, v148, v129);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v198 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100043280(0, *(v51 + 16) + 1, 1);
          v148 = v177;
          v51 = v198;
        }

        v153 = *(v51 + 16);
        v152 = *(v51 + 24);
        if (v153 >= v152 >> 1)
        {
          sub_100043280((v152 > 1), v153 + 1, 1);
          v148 = v177;
          v51 = v198;
        }

        *(v51 + 16) = v153 + 1;
        (v111)(&v194[v51 + v153 * v128], v178, v182);
      }

      ++v50;
      v131 = v196;
      if (v190 == v50)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_77:
    v167 = v112;
    sub_1000432C4((v127 > 1), v129, 1);
    v112 = v167;
    v110 = v197[0];
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_75:

  v154 = *(v51 + 16);

  v155 = v154 > 1;
  v156 = sub_100030480(&qword_100106F18, &qword_1000CADE0);
  v157 = swift_allocBox();
  v159 = v158;
  v160 = (v158 + v156[12]);
  v161 = v156[16];
  v162 = v156[20];
  (*(v131 + 16))(v158, v174, v182);
  v163 = v175;
  *v160 = v179;
  v160[1] = v163;
  *(v159 + v161) = v155;
  *(v159 + v162) = v195;
  v164 = v181;
  *v181 = v157;
  v165 = v187;
  v166 = v188;
  (*(v188 + 104))(v164, enum case for ICObjectReferences.attachment<A>(_:), v187);
  return (*(v166 + 56))(v164, 0, 1, v165);
}

void sub_10003A0B8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [*(a1 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context) ic_existingObjectWithID:a2];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

LABEL_19:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = a1 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
  swift_beginAccess();
  v13 = *(v12 + 32);
  if (v13 == 2 || (v13 & 1) == 0)
  {
    v16 = ICArchiveImporter.objects(forArchiveAt:)(a3);
    if (!v4)
    {
      v17 = v16;
      if (a4)
      {
        v18 = a4;
      }

      else
      {
        v18 = [objc_allocWithZone(NSProgress) init];
      }

      v19 = a4;
      ICArchiveImporter.importObjects(_:fromArchiveAt:into:progress:)(v17, a3, v11, v18);
    }

    goto LABEL_12;
  }

  sub_1000B4D60();
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v9 = v9;
    sub_10003A308(a3, v15, 0, 1);

LABEL_12:
    return;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    sub_10003A308(a3, 0, 0, 1);
    goto LABEL_12;
  }

  v21 = v20;
  v22 = v9;
  v9 = [v21 defaultFolder];
  sub_10003A308(a3, v9, 0, 1);
  if (v4)
  {

    goto LABEL_12;
  }
}

void sub_10003A308(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v6 = v5;
  v7 = v4;
  v75 = a4;
  v74 = a3;
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v77 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v82 = &v67 - v16;
  if (qword_100106A18 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v17 = sub_1000B5530();
    v81 = sub_100036380(v17, qword_100106DC0);
    v18 = sub_1000B5520();
    v19 = sub_1000B5910();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "starting markdown archive import", v20, 2u);
    }

    if (!a2 || (v21 = [a2 account]) == 0)
    {
      v21 = [objc_opt_self() localAccountInContext:*&v7[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context]];
      if (!v21)
      {
        break;
      }
    }

    v22 = v21;
    v23 = [objc_opt_self() defaultManager];
    v24 = sub_1000B5900();
    if (v6)
    {

      goto LABEL_9;
    }

    v68 = a1;
    v69 = a2;
    v72 = v7;
    v73 = v11;
    v81 = v10;
    v71 = 0;
    v25 = v24;

    v26 = *(v25 + 16);
    v27 = _swiftEmptyArrayStorage;
    v76 = v25;
    v70 = v22;
    if (v26)
    {
      v83 = _swiftEmptyArrayStorage;
      sub_1000432C4(0, v26, 0);
      v27 = v83;
      v28 = *(v73 + 16);
      v29 = v25 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v78 = *(v73 + 72);
      v79 = v28;
      v80 = v73 + 16;
      v30 = (v73 + 8);
      do
      {
        v32 = v81;
        v31 = v82;
        v79(v82, v29, v81);
        v33 = sub_1000B4C90();
        v35 = v34;
        (*v30)(v31, v32);
        v83 = v27;
        v37 = v27[2];
        v36 = v27[3];
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          sub_1000432C4((v36 > 1), v37 + 1, 1);
          v27 = v83;
        }

        v27[2] = v38;
        v39 = &v27[2 * v37];
        v39[4] = v33;
        v39[5] = v35;
        v29 += v78;
        --v26;
      }

      while (v26);
      v22 = v70;
    }

    else
    {
      v38 = _swiftEmptyArrayStorage[2];
    }

    v42 = v27 + 5;
    v43 = v38 + 1;
    a2 = v72;
    v11 = v73;
    a1 = v81;
    while (--v43)
    {
      if (*(v42 - 1) != 25709 || *v42 != 0xE200000000000000)
      {
        v42 += 2;
        if ((sub_1000B5F20() & 1) == 0)
        {
          continue;
        }
      }

      v45 = v69;
      if (v69)
      {
        v46 = v69;
      }

      else
      {
        v46 = [v22 defaultFolder];
      }

      v51 = v68;
      v52 = v45;
      sub_10003F580(v51, v46);

      return;
    }

    v86 = 0;
    v84 = 0;
    v85 = 1;
    v47 = &a2[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
    swift_beginAccess();
    if (v47[33] == 1)
    {
      sub_1000B4CE0();
      v48 = sub_1000B4CB0();
      if (v75)
      {
        v49 = v48;

        v50 = *(v49 + 16);

        v82 = 0;
        v84 = v50;
        v85 = 0;
      }

      else
      {
        v53 = v74;
        v84 = v74;
        v85 = 0;
        v54 = *(v48 + 16);

        if (__OFADD__(v53, 2))
        {
          __break(1u);
          return;
        }

        if (v53 + 2 >= v54)
        {
LABEL_44:

          v82 = 0;
          goto LABEL_45;
        }

        v55 = v69;
        if (v69)
        {
          v56 = sub_1000B55F0();
          v57 = [v55 visibleChildFolderWithTitle:v56];

          v86 = v57;
          v82 = v57;
          if (v57)
          {
            goto LABEL_40;
          }

          v58 = &selRef_newFolderInParentFolder_;
        }

        else
        {
          v59 = sub_1000B55F0();
          v60 = [v22 visibleRootFolderWithTitle:v59];

          v86 = v60;
          v82 = v60;
          if (v60)
          {
LABEL_40:

            goto LABEL_45;
          }

          v58 = &selRef_newFolderInAccount_;
          v55 = v22;
        }

        v86 = [objc_opt_self() *v58];
        v82 = v86;
        if (!v86)
        {
          goto LABEL_44;
        }

        v61 = sub_1000B55F0();

        v62 = v82;
        [v82 setTitle:v61];

        v63 = sub_1000B55F0();
        [v62 updateChangeCountWithReason:v63];
      }
    }

    else
    {
      v86 = v69;
      v82 = v69;
    }

LABEL_45:
    v6 = v71;
    v64 = v76;
    v7 = *(v76 + 16);
    if (!v7)
    {
LABEL_50:

      return;
    }

    v10 = 0;
    v65 = (v11 + 8);
    while (v10 < *(v64 + 16))
    {
      v66 = v77;
      (*(v11 + 16))(v77, v64 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10, a1);
      sub_1000407AC(v66, a2, &v86, &v84);
      if (v6)
      {
        (*v65)(v66, a1);

        return;
      }

      ++v10;
      (*v65)(v66, a1);
      v64 = v76;
      if (v7 == v10)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

  v23 = sub_1000B5520();
  v40 = sub_1000B5920();
  if (os_log_type_enabled(v23, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v23, v40, "no account found", v41, 2u);
  }

LABEL_9:
}

uint64_t ICArchiveImporter.importObjects(_:fromArchiveAt:into:progress:)(char *a1, uint64_t a2, char *a3, void *a4)
{
  v5 = v4;
  v197 = a2;
  v177 = _s3TagVMa(0);
  v176 = *(v177 - 8);
  __chkstk_darwin(v177, v9);
  v179 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v13 = __chkstk_darwin(v11 - 8, v12);
  v174 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v178 = &v169 - v17;
  __chkstk_darwin(v16, v18);
  v170 = (&v169 - v19);
  v182 = sub_1000B4EA0();
  v20 = *(v182 - 8);
  v22 = __chkstk_darwin(v182, v21);
  v183 = &v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22, v24);
  v172 = &v169 - v26;
  __chkstk_darwin(v25, v27);
  v171 = &v169 - v28;
  v29 = type metadata accessor for ICArchiveModel(0);
  __chkstk_darwin(v29, v30);
  v185 = &v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1000B4DB0();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187, v32);
  v188 = &v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  ObjectType = *(v203 - 8);
  __chkstk_darwin(v203, v34);
  v202 = &v169 - v35;
  v199 = sub_1000B5480();
  v198 = *(v199 - 8);
  v37 = __chkstk_darwin(v199, v36);
  v39 = &v169 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v40);
  v42 = &v169 - v41;
  v43 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_isImporting;
  if (*(v5 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_isImporting))
  {
    __break(1u);
  }

  else
  {
    v173 = v20;
    v184 = v29;
    v194 = a1;
    v44 = [a3 managedObjectContext];
    if (!v44)
    {
      __break(1u);
    }

    v45 = v44;
    v46 = *(v5 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context);
    sub_1000362AC(0, &qword_100106E40, NSManagedObjectContext_ptr);
    v47 = v46;
    v48 = sub_1000B5AA0();

    if (v48)
    {
      v169 = v47;
      *(v43 + v5) = 1;
      if (qword_100106A20 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_110;
    }
  }

  __break(1u);
LABEL_110:
  swift_once();
LABEL_5:
  v193 = a4;
  v192 = v43;
  v49 = sub_1000B54B0();
  sub_100036380(v49, qword_100106DD8);
  sub_1000B4CF0(&var20);
  sub_1000B54A0();
  sub_1000B5460();
  v50 = sub_1000B54A0();
  v51 = sub_1000B59E0();
  if (sub_1000B5AB0())
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = sub_1000B5470();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, v51, v53, "Import Objects from Archive", "", v52, 2u);
  }

  (*(v198 + 16))(v39, v42, v199);
  sub_1000B54F0();
  swift_allocObject();
  v190 = sub_1000B54E0();
  v54 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  swift_beginAccess();
  *(v5 + v54) = &_swiftEmptyDictionarySingleton;

  v205[3] = sub_1000362AC(0, &qword_100106E48, ICNoteContainer_ptr);
  v205[0] = a3;
  v55 = a3;
  v56 = sub_10003271C(v205);
  v58 = v57;
  sub_100035DA8(v205);
  v59 = v5 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
  swift_beginAccess();
  v60 = *(v59 + 16);
  v175 = (v59 + 16);
  *(v59 + 16) = v56;
  v181 = v58;
  v180 = v59;
  *(v59 + 24) = v58;
  v195 = v56;

  v61 = v194;
  v62 = *(v194 + 2);
  v63 = _swiftEmptyArrayStorage;
  v196 = v42;
  if (v62)
  {
    v189 = v5;
    v204 = _swiftEmptyArrayStorage;
    sub_100043324(0, v62, 0);
    v63 = v204;
    v64 = (ObjectType + 2);
    ObjectType = ObjectType[2];
    a3 = &v61[(v64[64] + 32) & ~v64[64]];
    v200 = *(v64 + 7);
    v43 = (v64 - 8);
    do
    {
      v65 = v202;
      v66 = v203;
      (ObjectType)(v202, a3, v203);
      v67 = sub_1000B5060();
      (*v43)(v65, v66);
      v204 = v63;
      v5 = v63[2];
      v68 = v63[3];
      v69 = v5 + 1;
      if (v5 >= v68 >> 1)
      {
        sub_100043324((v68 > 1), v5 + 1, 1);
        v63 = v204;
      }

      v63[2] = v69;
      v63[v5 + 4] = v67;
      a3 = v200 + a3;
      --v62;
    }

    while (v62);
LABEL_15:
    v70 = 0;
    v71 = 4;
    do
    {
      v72 = v63[v71];
      v73 = __OFADD__(v70, v72);
      v70 += v72;
      if (v73)
      {
        __break(1u);
        goto LABEL_39;
      }

      ++v71;
      --v69;
    }

    while (v69);
    v5 = v189;
    goto LABEL_19;
  }

  v69 = _swiftEmptyArrayStorage[2];
  if (v69)
  {
    v189 = v5;
    goto LABEL_15;
  }

  v70 = 0;
LABEL_19:

  a3 = v192;
  v74 = v193;
  if (qword_100106A18 != -1)
  {
    swift_once();
  }

  v75 = sub_1000B5530();
  sub_100036380(v75, qword_100106DC0);
  v76 = sub_1000B5520();
  v77 = sub_1000B5910();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 134217984;
    *(v78 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v76, v77, "Importing archive… {noteCount: %ld}", v78, 0xCu);
  }

  v79 = v191;
  sub_1000B58F0();
  v43 = v79;
  if (v79)
  {

    goto LABEL_26;
  }

  [v74 setTotalUnitCount:v70];
  swift_getObjectType();
  v80 = v188;
  sub_1000B4D10();
  v81 = sub_1000B4FD0();
  v86 = v85;
  v203 = v81;
  v186[1](v80, v187);
  if (qword_100106A08 != -1)
  {
    goto LABEL_112;
  }

  while (1)
  {
    sub_100044D20(&qword_100106E50, type metadata accessor for ICArchiveModel, &unk_1000CB790);
    v70 = v185;
    v63 = v184;
    v87 = v203;
    sub_1000B4AA0();
    if (v43)
    {

      sub_1000449D4(v87, v86);
      goto LABEL_26;
    }

    v88 = *v70;
    v202 = v86;
    if (v88 > 1)
    {
      goto LABEL_120;
    }

    v89 = "inatorContext>8";
    if (v88)
    {
      v89 = "com.apple.notes.archive";
    }

    if ((v89 | 0x8000000000000000) == 0x80000001000C6820)
    {
    }

    else
    {
LABEL_120:
    {
LABEL_39:
      v90 = sub_1000B5F20();

      if ((v90 & 1) == 0)
      {
        v98 = sub_1000B5520();
        v99 = sub_1000B5920();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&_mh_execute_header, v98, v99, "Notes archive specifies unknown type identifier — aborting", v100, 2u);
        }

        sub_1000363B8();
        swift_allocError();
        *v101 = 0;
        swift_willThrow();

        sub_1000449D4(v203, v202);
        sub_10004581C(v70, type metadata accessor for ICArchiveModel);
        goto LABEL_26;
      }
    }
    }

    v189 = v5;
    v91 = v179;
    if (*(v180 + 1) == 1)
    {
      v92 = v170;
      sub_100030C74(&v70[*(v63 + 6)], v170, &qword_100106E38, &unk_1000CB730);
      v93 = v173;
      v94 = v182;
      if ((*(v173 + 48))(v92, 1, v182) == 1)
      {
        sub_100036320(v92, &qword_100106E38, &unk_1000CB730);
        v95 = sub_1000B5520();
        v96 = sub_1000B5910();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&_mh_execute_header, v95, v96, "Notes archive doesn't have a creation date — fallback back to configuration's timestamp offset", v97, 2u);
          v63 = v184;
        }
      }

      else
      {
        (*(v93 + 32))(v171, v92, v94);
        v102 = v172;
        sub_1000B4E90();
        sub_1000B4E10();
        v104 = v103;
        v105 = *(v93 + 8);
        v106 = v102;
        v91 = v179;
        v105(v106, v94);
        v105(v171, v94);
        *(v180 + 8) = v104;
      }
    }

    v107 = *&v70[*(v63 + 8)];
    if (!v107)
    {
      break;
    }

    v108 = (v107 + 56);
    v109 = 1 << *(v107 + 32);
    v110 = -1;
    if (v109 < 64)
    {
      v110 = ~(-1 << v109);
    }

    v5 = v110 & *(v107 + 56);
    v111 = (v109 + 63) >> 6;
    v191 = v181 + 8;
    v200 = (v173 + 48);
    v171 = (v173 + 32);
    v170 = (v173 + 56);
    v186 = (v173 + 8);

    v113 = 0;
    v82 = v196;
    v188 = v108;
    v187 = v111;
    v197 = v112;
LABEL_55:
    if (v5)
    {
      goto LABEL_61;
    }

    v86 = v194;
    while (1)
    {
      v117 = v113 + 1;
      if (__OFADD__(v113, 1))
      {
        break;
      }

      if (v117 >= v111)
      {

        a3 = v192;
        goto LABEL_72;
      }

      v5 = *&v108[8 * v117];
      ++v113;
      if (v5)
      {
        v113 = v117;
LABEL_61:
        sub_1000361E0(*(v112 + 48) + *(v176 + 72) * (__clz(__rbit64(v5)) | (v113 << 6)), v91);
        v118 = *(v180 + 16);
        v206[0] = *v180;
        v206[1] = v118;
        v207 = *(v180 + 32);
        ObjectType = swift_getObjectType();
        v119 = (v91 + *(v177 + 20));
        v121 = *v119;
        v120 = v119[1];
        v122 = v181;
        v123 = *(v181 + 1);
        v208 = *v175;
        sub_100030C74(&v208, &v204, &qword_100106E58, &qword_1000CAB70);
        v124 = v123(v121, v120, v206, ObjectType, v122);
        if (!v43)
        {
          v125 = v124;
          a3 = v178;
          sub_100030C74(v91, v178, &qword_100106E38, &unk_1000CB730);
          v126 = *v200;
          v127 = v182;
          v128 = (*v200)(a3, 1, v182);
          v82 = v196;
          if (v128 == 1)
          {
            v129 = [v125 creationDate];
            if (v129)
            {
              v130 = v172;
              v131 = v129;
              sub_1000B4E70();

              ObjectType = v126;
              v132 = *v171;
              v133 = v174;
              v134 = v130;
              v114 = v182;
              (*v171)(v174, v134, v182);
              (*v170)(v133, 0, 1, v114);
              v135 = v133;
              a3 = v178;
              v132(v183, v135, v114);
              v136 = (ObjectType)(a3, 1, v114);
            }

            else
            {
              v137 = v174;
              v114 = v182;
              (*v170)(v174, 1, 1, v182);
              sub_1000B4E80();
              if ((v126)(v137, 1, v114) != 1)
              {
                sub_100036320(v174, &qword_100106E38, &unk_1000CB730);
              }

              v136 = (v126)(a3, 1, v114);
            }

            if (v136 != 1)
            {
              sub_100036320(a3, &qword_100106E38, &unk_1000CB730);
            }
          }

          else
          {
            (*v171)(v183, a3, v127);
            v114 = v127;
          }

          v5 &= v5 - 1;
          v115 = v183;
          isa = sub_1000B4E30().super.isa;
          (*v186)(v115, v114);
          [v125 setCreationDate:isa];

          sub_100044A28(v206);
          v91 = v179;
          sub_10004581C(v179, _s3TagVMa);
          v112 = v197;
          v108 = v188;
          v111 = v187;
          goto LABEL_55;
        }

        sub_1000449D4(v203, v202);
        sub_100044A28(v206);

        sub_10004581C(v91, _s3TagVMa);
        sub_10004581C(v185, type metadata accessor for ICArchiveModel);
        v5 = v189;
        a3 = v192;
LABEL_26:
        v82 = v196;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_112:
    swift_once();
  }

  v82 = v196;
  v86 = v194;
LABEL_72:
  v138 = v195;
  v5 = v189;
  v139 = sub_10003C728(v86, v195, v181, v193);
  if (v43)
  {

    sub_1000449D4(v203, v202);
    v140 = v185;
    goto LABEL_107;
  }

  v141 = v139;
  objc_opt_self();
  v142 = swift_dynamicCastObjCClass();
  if (!v142 || (v143 = *&v185[*(v184 + 36)]) == 0)
  {

    goto LABEL_103;
  }

  ObjectType = v142;
  v144 = _swiftEmptyArrayStorage;
  v204 = _swiftEmptyArrayStorage;
  v145 = *(v143 + 16);
  v146 = v138;
  v200 = v146;
  if (!v145)
  {
    goto LABEL_90;
  }

  v147 = 0;
  v148 = v143 + 40;
  v194 = v145 - 1;
  v197 = v143 + 40;
  do
  {
    v149 = (v148 + 16 * v147);
    v150 = v147;
    while (1)
    {
      if (v150 >= *(v143 + 16))
      {
        __break(1u);
        goto LABEL_114;
      }

      if (!v141[2])
      {
        goto LABEL_80;
      }

      v151 = *(v149 - 1);
      v152 = *v149;

      v153 = sub_10006320C(v151, v152);
      if (v154)
      {
        v155 = [*(v141[7] + 8 * v153) identifier];
        if (v155)
        {
          break;
        }
      }

LABEL_80:
      ++v150;
      v149 += 2;
      if (v145 == v150)
      {
        goto LABEL_90;
      }
    }

    v191 = v155;

    sub_1000B5780();
    if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000B57C0();
    }

    v147 = v150 + 1;
    v146 = sub_1000B57F0();
    v144 = v204;
    v148 = v197;
  }

  while (v194 != v150);
LABEL_90:

  v146 = [ObjectType subFolderIdentifiersOrderedSet];
  if (v144 >> 62)
  {
    goto LABEL_116;
  }

  v156 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v146 = v146;
    v157 = v146;
    if (!v156)
    {
      break;
    }

    v158 = 0;
    v159 = v144 & 0xC000000000000001;
    v160 = v144 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v159)
      {
        v161 = v144;
        v146 = sub_1000B5C20();
      }

      else
      {
        if (v158 >= *(v160 + 16))
        {
          goto LABEL_115;
        }

        v161 = v144;
        v146 = *(v144 + 8 * v158 + 32);
      }

      v162 = v146;
      v144 = v158 + 1;
      if (__OFADD__(v158, 1))
      {
        break;
      }

      [v157 addObject:v146];

      ++v158;
      v163 = v144 == v156;
      v144 = v161;
      if (v163)
      {
        goto LABEL_102;
      }
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    v168 = v146;
    v156 = sub_1000B5CF0();
    v146 = v168;
  }

LABEL_102:

  v164 = ObjectType;
  [ObjectType setSubFolderOrderMergeableDataDirty:1];
  [v164 saveSubFolderMergeableDataIfNeeded];

  v5 = v189;
  a3 = v192;
  v82 = v196;
  v138 = v195;
LABEL_103:
  sub_1000B58F0();
  v165 = v185;
  v204 = 0;
  if ([v169 save:&v204])
  {
    v166 = v204;

    sub_1000449D4(v203, v202);
    sub_10004581C(v165, type metadata accessor for ICArchiveModel);
    v83 = v190;
    goto LABEL_28;
  }

  v167 = v204;
  sub_1000B4C70();

  swift_willThrow();
  sub_1000449D4(v203, v202);
  v140 = v165;
LABEL_107:
  sub_10004581C(v140, type metadata accessor for ICArchiveModel);
LABEL_27:
  v83 = v190;
LABEL_28:
  sub_10003C498(v83, "Import Objects from Archive");

  result = (*(v198 + 8))(v82, v199);
  a3[v5] = 0;
  return result;
}

uint64_t sub_10003C498(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_1000B54C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000B5480();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100106A20 != -1)
  {
    swift_once();
  }

  v12 = sub_1000B54B0();
  sub_100036380(v12, qword_100106DD8);
  v13 = sub_1000B54A0();
  sub_1000B54D0();
  v14 = sub_1000B59D0();
  if (sub_1000B5AB0())
  {

    sub_1000B5500();

    if ((*(v3 + 88))(v6, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1000B5470();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, v20, v15, v16, 2u);
  }

  return (*(v8 + 8))(v11, v7);
}

void *sub_10003C728(uint64_t a1, void *a2, char *a3, void *a4)
{
  v5 = v4;
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v7 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v52 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v66 = _swiftEmptyArrayStorage;
    v53 = v10;
    sub_100043304(0, v13, 0);
    v14 = v53;
    v65 = v66;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v57 = (v15 - 8);
    v58 = v16;
    v54 = *(v15 + 56);
    v55 = v12;
    v56 = v15;
    while (1)
    {
      v63 = v13;
      v58(v12, v17, v14);
      v18 = sub_10003CB84(v12, v59, v60, v61);
      if (v5)
      {
        break;
      }

      v22 = v18;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      v64 = 0;
      (*v57)(v12, v14);
      v26 = v65;
      v66 = v65;
      v28 = v65[2];
      v27 = v65[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_100043304((v27 > 1), v28 + 1, 1);
        v14 = v53;
        v29 = v28 + 1;
        v26 = v66;
      }

      v26[2] = v29;
      v65 = v26;
      v30 = &v26[4 * v28];
      v30[4] = v22;
      v30[5] = v23;
      v30[6] = v24;
      *(v30 + 56) = v25 & 1;
      v12 = v55;
      v17 += v54;
      v5 = v64;
      v13 = v63 - 1;
      if (v63 == 1)
      {
        v32 = v65;
        goto LABEL_11;
      }
    }

    (*v57)(v12, v14);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
    v29 = _swiftEmptyArrayStorage[2];
    v65 = _swiftEmptyArrayStorage;
    if (v29)
    {
LABEL_11:
      v64 = v5;
      v33 = 0;
      v34 = v32 + 7;
      v65 = _swiftEmptyArrayStorage;
      v62 = v29 - 1;
      v63 = v32 + 7;
LABEL_12:
      v35 = &v34[4 * v33];
      v36 = v33;
      while (v36 < v32[2])
      {
        v37 = v29;
        v38 = *(v35 - 3);
        v33 = v36 + 1;
        if (*v35 != 1)
        {
          v39 = *(v35 - 1);
          v61 = *(v35 - 2);

          v40 = v39;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v65 = sub_10003372C(0, v65[2] + 1, 1, v65);
          }

          v43 = v65[2];
          v42 = v65[3];
          v44 = (v43 + 1);
          if (v43 >= v42 >> 1)
          {
            v59 = (v43 + 1);
            v49 = sub_10003372C((v42 > 1), v43 + 1, 1, v65);
            v44 = v59;
            v29 = v37;
            v65 = v49;
          }

          else
          {
            v29 = v37;
          }

          v45 = v65;
          v65[2] = v44;
          v46 = &v45[3 * v43];
          v47 = v60;
          v48 = v61;
          v46[4] = v38;
          v46[5] = v48;
          v46[6] = v47;
          v34 = v63;
          if (v62 == v36)
          {
LABEL_24:
            v5 = v64;
            goto LABEL_25;
          }

          goto LABEL_12;
        }

        v66 = *(v35 - 3);
        sub_100030480(&qword_100106EB8, &qword_1000CAD80);
        swift_willThrowTypedImpl();
        v35 += 32;
        ++v36;
        v29 = v37;
        if (v37 == v33)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_25:

      v50 = sub_10003E234(v65);

      if (v50[2])
      {
        sub_100030480(&qword_100106EF0, &unk_1000CADC0);
        v51 = sub_1000B5D20();
      }

      else
      {
        v51 = &_swiftEmptyDictionarySingleton;
      }

      v66 = v51;
      sub_100045418(v50, 1, &v66);
      if (!v5)
      {

        return v66;
      }
    }

    __break(1u);
  }

  return result;
}

NSObject *sub_10003CB84(uint64_t a1, void *a2, char *a3, void *a4)
{
  v170 = a1;
  v164 = a2;
  v165 = a3;
  v160 = type metadata accessor for ICAttachmentArchiveModel(0);
  __chkstk_darwin(v160, v5);
  v161 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for ICNoteArchiveModel(0);
  __chkstk_darwin(v158, v7);
  v159 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for ICFolderArchiveModel(0);
  __chkstk_darwin(v162, v9);
  v163 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v166 = *(v169 - 8);
  v12 = __chkstk_darwin(v169, v11);
  v14 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v146 - v16;
  v172 = sub_1000B4DB0();
  v167 = *(v172 - 8);
  v19 = __chkstk_darwin(v172, v18);
  v21 = (&v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v146 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v146 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v146 - v32;
  __chkstk_darwin(v31, v34);
  v36 = &v146 - v35;
  v37 = v171;
  sub_1000B58F0();
  if (v37)
  {
    return v25;
  }

  v151 = v17;
  v152 = v29;
  v149 = v25;
  v150 = v21;
  v154 = a4;
  v39 = *(v168 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager);
  v38 = *(v168 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager + 8);
  v156 = v14;
  v157 = v38;
  swift_getObjectType();
  v40 = v169;
  sub_1000B5040();
  sub_1000B4D10();
  v41 = v33;
  v42 = v40;
  v44 = v167 + 8;
  v43 = *(v167 + 1);
  v153 = v41;
  v43();
  v45 = sub_1000B4FD0();
  v171 = v43;
  v147 = v45;
  v148 = v46;
  v155 = v44;
  (v43)(v36, v172);
  v47 = v166;
  v48 = v151;
  (*(v166 + 16))(v151, v170, v42);
  v49 = (*(v47 + 88))(v48, v42);
  if (v49 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v47 + 96))(v48, v42);
    v50 = sub_100030480(&qword_100106F38, &qword_1000CADF0);
    v51 = swift_projectBox();
    v52 = *(v51 + *(v50 + 64));
    v53 = v172;
    (*(v167 + 2))(v152, v51);
    v54 = qword_100106A08;

    if (v54 != -1)
    {
      swift_once();
    }

    sub_1000456B8();
    sub_1000B4AA0();
    v174[0] = v173[0];
    v174[1] = v173[1];
    v174[2] = v173[2];
    v174[3] = v173[3];
    v25 = sub_10003E380(v174, v52, v69, v164, v165, v154);
    (v171)(v152, v53);
    sub_1000449D4(v147, v148);

    sub_10004570C(v174);

    return v25;
  }

  v152 = v39;
  v55 = v172;
  v56 = v167;
  if (v49 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v47 + 96))(v48, v42);
    v57 = *v48;
    v58 = sub_100030480(&qword_100106F38, &qword_1000CADF0);
    v167 = v57;
    v59 = *(swift_projectBox() + *(v58 + 64));
    v60 = qword_100106A08;

    if (v60 != -1)
    {
      swift_once();
    }

    sub_100044D20(&qword_100106F40, type metadata accessor for ICFolderArchiveModel, &unk_1000CF474);
    sub_1000B4AA0();
    v77 = v168 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
    swift_beginAccess();
    v78 = *(v77 + 16);
    v175[0] = *v77;
    v175[1] = v78;
    v176 = *(v77 + 32);
    v183 = v78;
    sub_100030C74(&v183, v173, &qword_100106E58, &qword_1000CAB70);
    v82 = sub_1000AC7FC(v164, v165, v175);
    sub_100044A28(v175);
    v83 = v82;
    v119 = sub_10003C728(v59, v83, &off_1000F6760, v154);

    v120 = sub_10003F310(v119, ICFolder_ptr, sub_100063F4C);

    v121 = v163;
    v140 = sub_1000ACBE4(v83, v120);

    sub_1000ACEB4(v83);

    sub_1000449D4(v147, v148);
    v25 = *(v121 + 8);

    sub_10004581C(v121, type metadata accessor for ICFolderArchiveModel);

    return v25;
  }

  if (v49 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v47 + 96))(v48, v42);
    v61 = *v48;
    v62 = sub_100030480(&qword_100106F28, &qword_1000CADE8);
    v163 = v61;
    v63 = swift_projectBox();
    v64 = *(v56 + 16);
    v65 = v55;
    v66 = *(v63 + *(v62 + 64));
    v64(v149, v63, v65);
    v67 = qword_100106A08;

    if (v67 != -1)
    {
      swift_once();
    }

    sub_100044D20(&qword_100106F30, type metadata accessor for ICNoteArchiveModel, &unk_1000CB35C);
    v68 = v159;
    sub_1000B4AA0();
    v84 = sub_10003ECF0(v68, v66, v79, v164, v165, v154);
    sub_1000449D4(v147, v148);

    sub_10004581C(v68, type metadata accessor for ICNoteArchiveModel);
    (v171)(v149, v65);

    return v84;
  }

  if (v49 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v47 + 96))(v48, v42);
    v70 = *v48;
    v71 = sub_100030480(&qword_100106F18, &qword_1000CADE0);
    v163 = v70;
    v72 = swift_projectBox();
    v73 = *(v72 + *(v71 + 80));
    (*(v56 + 16))(v150, v72, v55);
    v74 = qword_100106A08;
    v167 = v73;

    v75 = v156;
    if (v74 != -1)
    {
      swift_once();
    }

    sub_100044D20(&qword_100106F20, type metadata accessor for ICAttachmentArchiveModel, &unk_1000CC7C4);
    sub_1000B4AA0();
    v76 = v155;
    v80 = v168 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
    swift_beginAccess();
    v81 = *(v80 + 16);
    v179[0] = *v80;
    v179[1] = v81;
    v180 = *(v80 + 32);
    v181 = v81;
    sub_100030C74(&v181, v173, &qword_100106E58, &qword_1000CAB70);
    v85 = sub_100067D68(v164, v165, v179);
    sub_100044A28(v179);
    v165 = v85;
    v122 = sub_10003C728(v167, v165, &off_1000F67D0, v154);

    v123 = sub_10003F310(v122, ICAttachment_ptr, sub_100064230);
    v167 = 0;

    v124 = v161;
    v125 = v171;
    v126 = v172;
    if (*(v161 + 88))
    {
      v127 = v153;
      sub_1000B4D10();
      sub_1000B4CF0(v128);
      v130 = v129;

      v131 = v127;
      v126 = v172;
      (v125)(v131, v172);
    }

    v132 = v124 + *(v160 + 88);
    if ((*(v132 + 16) & 1) == 0)
    {
    }

    v133 = *(v80 + 16);
    v177[0] = *v80;
    v177[1] = v133;
    v178 = *(v80 + 32);
    v182 = *(v80 + 16);
    sub_100030C74(&v182, v173, &qword_100106E58, &qword_1000CAB70);
    v134 = v165;
    v135 = v150;
    v136 = v167;
    sub_100068568(v165, v150, v123, v152, v157, v177);
    if (v136)
    {
      sub_100044A28(v177);

      v138 = v154;
      v139 = [v154 completedUnitCount];
      if (!__OFADD__(v139, 1))
      {
        [v138 setCompletedUnitCount:v139 + 1];
        sub_1000449D4(v147, v148);
        (v171)(v135, v126);
        sub_10004581C(v161, type metadata accessor for ICAttachmentArchiveModel);

        v25 = v136;
        *&v173[0] = v136;
        swift_errorRetain();
        sub_100030480(&qword_100106EB8, &qword_1000CAD80);
        sub_1000362AC(0, &qword_100106F08, NSError_ptr);
        if (!swift_dynamicCast())
        {
          goto LABEL_26;
        }

        v86 = v184;
        v87 = [v184 domain];
        v88 = sub_1000B5620();
        v90 = v89;

        if (v88 == sub_1000B5620() && v90 == v91)
        {

          v92 = v86;
        }

        else
        {
          v93 = sub_1000B5F20();

          v92 = v86;
          if ((v93 & 1) == 0)
          {
LABEL_25:

LABEL_26:
            v167 = 0;
            v94 = v76;

            if (qword_100106A18 != -1)
            {
              swift_once();
            }

            v95 = sub_1000B5530();
            sub_100036380(v95, qword_100106DC0);
            v96 = v166;
            v97 = v169;
            (*(v166 + 16))(v75, v170, v169);
            swift_errorRetain();
            v98 = sub_1000B5520();
            v99 = sub_1000B5920();

            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              LODWORD(v163) = v99;
              v101 = v100;
              v102 = swift_slowAlloc();
              v155 = v94;
              v164 = v102;
              *&v173[0] = v102;
              *v101 = 136315394;
              swift_getErrorValue();
              v162 = v98;
              v103 = sub_1000B5F60();
              v105 = sub_100062B20(v103, v104, v173);

              *(v101 + 4) = v105;
              *(v101 + 12) = 2080;
              v165 = v136;
              v106 = v75;
              v107 = v153;
              sub_1000B5040();
              sub_100044D20(&qword_100106F10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
              v108 = v172;
              v109 = sub_1000B5EE0();
              v111 = v110;
              (v171)(v107, v108);
              v25 = v165;
              (*(v96 + 8))(v106, v97);
              v112 = sub_100062B20(v109, v111, v173);

              *(v101 + 14) = v112;
              v113 = v162;
              _os_log_impl(&_mh_execute_header, v162, v163, "Cannot import model {error: %s, containerID: %s}", v101, 0x16u);
              swift_arrayDestroy();
              v114 = v171;
            }

            else
            {

              (*(v96 + 8))(v75, v97);
              v107 = v153;
              v114 = v171;
            }

            sub_1000B5040();
            v115 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
            v116 = v168;
            swift_beginAccess();
            swift_errorRetain();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v184 = *(v116 + v115);
            *(v116 + v115) = 0x8000000000000000;
            sub_1000656E8(v25, v107, isUniquelyReferenced_nonNull_native);
            (v114)(v107, v172);
            *(v116 + v115) = v184;
            swift_endAccess();
            [v154 setCompletedUnitCount:{objc_msgSend(v154, "totalUnitCount")}];
            return v25;
          }
        }

        if ([v92 code] == 3072)
        {

          swift_willThrow();

          return v25;
        }

        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      v141 = v137;

      sub_100044A28(v177);
      v142 = v161;
      v143 = *(v161 + 8);

      v144 = v154;
      v145 = [v154 completedUnitCount];
      if (!__OFADD__(v145, 1))
      {
        [v144 setCompletedUnitCount:v145 + 1];
        sub_1000449D4(v147, v148);
        (v171)(v150, v126);
        sub_10004581C(v142, type metadata accessor for ICAttachmentArchiveModel);

        return v143;
      }
    }

    __break(1u);
  }

  result = sub_1000B5F10();
  __break(1u);
  return result;
}

void *sub_10003E234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000432E4(0, v1, 0);
    v3 = (a1 + 48);
    do
    {
      v4 = *v3;

      v5 = v4;
      sub_100030480(&qword_100106D48, &qword_1000CAAC0);
      sub_100030480(&qword_100106EF8, &qword_1000CADD0);
      swift_dynamicCast();
      v6 = v12;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_1000432E4((v7 > 1), v8 + 1, 1);
        v6 = v12;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[3 * v8];
      v9[4] = v11;
      *(v9 + 5) = v6;
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10003E380(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v101 = a2;
  v102 = a6;
  v10 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v12 = __chkstk_darwin(v10 - 8, v11);
  v97 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v100 = &v81 - v15;
  v98 = sub_1000B4EA0();
  v96 = *(v98 - 8);
  v17 = __chkstk_darwin(v98, v16);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v81 - v21;
  v23 = _s3TagVMa(0);
  v99 = *(v23 - 8);
  __chkstk_darwin(v23, v24);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v6;
  v27 = &v6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
  swift_beginAccess();
  v28 = *(v27 + 1);
  v105[0] = *v27;
  v105[1] = v28;
  v106 = *(v27 + 16);
  v107 = v28;
  sub_100030C74(&v107, v104, &qword_100106E58, &qword_1000CAB70);
  v29 = a5;
  v30 = a1;
  v31 = v108;
  v32 = sub_1000566B0(a4, v29, v105);
  v33 = v31;
  sub_100044A28(v105);
  if (v31)
  {
    return v33;
  }

  v92 = v27;
  v108 = 0;
  v95 = v26;
  v93 = v23;
  v94 = v22;
  v91 = v19;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    v33 = v102;
    v41 = v101;
    if (!v40)
    {
      v46 = v30;
LABEL_35:
      v33 = *(v46 + 8);

      return v33;
    }

    v42 = v40;
    v43 = v32;
    v44 = v108;
    v45 = sub_10003C728(v41, v42, &off_1000F6760, v33);
    if (v44)
    {

      return v33;
    }

    v49 = sub_10003F310(v45, ICFolder_ptr, sub_100063F4C);

    v46 = v30;
    v37 = sub_100056864(v42, v49);

    v108 = 0;

LABEL_34:

    goto LABEL_35;
  }

  v36 = v35;
  v37 = v32;
  v38 = v108;
  v39 = sub_10003C728(v101, v36, &off_1000F6728, v102);
  if (v38)
  {

    return v33;
  }

  v46 = v30;
  v103 = v32;
  v47 = sub_10003F310(v39, ICFolder_ptr, sub_100063F4C);

  v48 = sub_100056864(v36, v47);
  v108 = 0;
  v50 = v48;

  v51 = *(v30 + 48);
  if (!v51)
  {
    goto LABEL_34;
  }

  v90 = v36;
  v82 = v37;
  v52 = v51 + 56;
  v53 = 1 << *(v51 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v51 + 56);
  v56 = (v53 + 63) >> 6;
  v83 = "Cannot create hashtag";
  v101 = v96 + 6;
  v85 = (v96 + 4);
  v84 = (v96 + 7);
  ++v96;

  v58 = 0;
  v59 = v95;
  v86 = v46;
  v89 = v56;
  v88 = v52;
  v87 = v57;
  while (v55)
  {
LABEL_23:
    sub_1000361E0(*(v57 + 48) + *(v99 + 72) * (__clz(__rbit64(v55)) | (v58 << 6)), v59);
    v64 = *v92;
    v102 = v92[2];
    v65 = sub_1000B55F0();
    v66 = [objc_opt_self() hashtagWithDisplayText:v65 account:v90 createIfNecessary:1];

    if (!v66)
    {
      goto LABEL_37;
    }

    v67 = v66;
    v68 = v100;
    v69 = v66;
    if (v64)
    {
      v70 = sub_1000B55F0();
      [v66 setDisplayText:v70];

      [v66 unmarkForDeletion];
      v71 = sub_1000B55F0();
      [v66 updateChangeCountWithReason:v71];
    }

    sub_100030C74(v95, v68, &qword_100106E38, &unk_1000CB730);
    v72 = *v101;
    v73 = v98;
    if ((*v101)(v68, 1, v98) == 1)
    {
      v74 = [v66 creationDate];
      v61 = v86;
      if (v74)
      {
        v75 = v74;
        sub_1000B4E70();

        v76 = *v85;
        v77 = v97;
        (*v85)(v97, v91, v73);
        (*v84)(v77, 0, 1, v73);
        v78 = v77;
        v68 = v100;
        v76(v94, v78, v73);
        v69 = v67;
      }

      else
      {
        v79 = v97;
        (*v84)(v97, 1, 1, v73);
        sub_1000B4E80();
        if (v72(v79, 1, v73) != 1)
        {
          sub_100036320(v79, &qword_100106E38, &unk_1000CB730);
        }
      }

      v80 = v72(v68, 1, v73);
      v60 = v94;
      if (v80 != 1)
      {
        sub_100036320(v68, &qword_100106E38, &unk_1000CB730);
      }
    }

    else
    {
      v60 = v94;
      (*v85)(v94, v68, v73);
      v61 = v86;
    }

    v55 &= v55 - 1;
    isa = sub_1000B4E30().super.isa;
    (*v96)(v60, v73);
    [v69 setCreationDate:isa];

    v59 = v95;
    sub_10004581C(v95, _s3TagVMa);
    v46 = v61;
    v57 = v87;
    v52 = v88;
    v56 = v89;
  }

  while (1)
  {
    v63 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v63 >= v56)
    {

      v37 = v82;
      goto LABEL_34;
    }

    v55 = *(v52 + 8 * v63);
    ++v58;
    if (v55)
    {
      v58 = v63;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_37:
  result = sub_1000B5CE0();
  __break(1u);
  return result;
}

NSObject *sub_10003ECF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, void, void, void), void *a6)
{
  v7 = v6;
  v52 = a5;
  v51 = a4;
  v66 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v11 = *(v66 - 8);
  __chkstk_darwin(v66, v12);
  v14 = &v47 - v13;
  p_align = *(a2 + 16);
  isa = _swiftEmptyArrayStorage;
  v54 = a6;
  v49 = a2;
  if (p_align)
  {
    v50 = v7;
    v48 = a1;
    v59 = _swiftEmptyArrayStorage;
    sub_100043324(0, p_align, 0);
    isa = v59;
    v18 = *(v11 + 16);
    v17 = v11 + 16;
    v57 = v18;
    v19 = a2 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v56 = *(v17 + 56);
    v55 = (v17 - 8);
    do
    {
      v20 = v66;
      v21 = v17;
      v57(v14, v19, v66);
      v22 = sub_1000B5070();
      (*v55)(v14, v20);
      v59 = isa;
      v24 = *(isa + 2);
      v23 = *(isa + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        sub_100043324((v23 > 1), v24 + 1, 1);
        isa = v59;
      }

      *(isa + 2) = v25;
      *(isa + v24 + 4) = v22;
      v19 += v56;
      p_align = (p_align - 1);
      v17 = v21;
    }

    while (p_align);
    a1 = v48;
    v7 = v50;
  }

  else
  {
    v25 = _swiftEmptyArrayStorage[2];
    if (!v25)
    {
      goto LABEL_24;
    }
  }

  v26 = 0;
  v27 = 32;
  while (1)
  {
    v28 = *(isa + v27);
    v29 = __OFADD__(v26, v28);
    v26 += v28;
    if (v29)
    {
      break;
    }

    v27 += 8;
    if (!--v25)
    {
      while (1)
      {

        if (qword_100106A18 != -1)
        {
          swift_once();
        }

        v30 = sub_1000B5530();
        sub_100036380(v30, qword_100106DC0);
        v31 = sub_1000B5520();
        v32 = sub_1000B5910();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 134217984;
          *(v33 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v31, v32, "Importing note… {attachmentCount: %ld}", v33, 0xCu);
        }

        result = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        isa = sub_1000B58E0(result, 1).super.isa;
        v35 = v7 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
        swift_beginAccess();
        v36 = *(v35 + 1);
        v62[0] = *v35;
        v62[1] = v36;
        v63 = *(v35 + 16);
        v64 = v36;
        sub_100030C74(&v64, v58, &qword_100106E58, &qword_1000CAB70);
        v37 = v53;
        v38 = sub_100045D38(v51, v52, v62);
        if (v37)
        {
          sub_100044A28(v62);
          v38 = [(objc_class *)isa completedUnitCount];
          v39 = v38 + 1;
          if (!__OFADD__(v38, 1))
          {
            goto LABEL_26;
          }

          __break(1u);
        }

        v31 = v38;
        sub_100044A28(v62);
        v40 = v7;
        v7 = v31;
        v41 = sub_10003C728(v49, v7, &off_1000F6798, isa);
        if (!v37)
        {
          v50 = v40;
          v43 = v41;

          v44 = sub_10003F310(v43, ICAttachment_ptr, sub_100064230);

          v45 = *(v35 + 1);
          v60[0] = *v35;
          v60[1] = v45;
          v61 = *(v35 + 16);
          v65 = *(v35 + 1);
          sub_100030C74(&v65, v58, &qword_100106E58, &qword_1000CAB70);
          v46 = sub_100046FB8(v7, v44, v60);

          sub_100044A28(v60);
          sub_100047400(v7);

          p_align = &stru_100100FE8.align;
          sub_100041820([v54 completedUnitCount]);
          goto LABEL_28;
        }

        v42 = [(objc_class *)isa completedUnitCount];
        v39 = v42 + 1;
        if (!__OFADD__(v42, 1))
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_24:
        v26 = 0;
      }

      __break(1u);
      __break(1u);
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_28:
  v31 = *(a1 + 8);

  result = [isa *(p_align + 287)];
  v39 = &result->isa + 1;
  if (!__OFADD__(result, 1))
  {
LABEL_26:
    [(objc_class *)isa setCompletedUnitCount:v39];

    return v31;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10003F310(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t))
{
  v34 = &_swiftEmptyDictionarySingleton;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        v16 = *(*(a1 + 56) + 8 * v12);
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_7;
        }
      }

      v32 = result;
      if (*(v34 + 3) <= *(v34 + 2))
      {
        v35 = *(v34 + 2);

        v20 = v16;
        a3(v35 + 1, 1);
        v19 = &_swiftEmptyDictionarySingleton;
      }

      else
      {

        v18 = v16;
        v19 = v34;
      }

      v34 = v19;
      sub_1000B5FB0();
      sub_1000B56A0();
      result = sub_1000B5FE0();
      v21 = v34 + 64;
      v22 = -1 << v34[32];
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*&v34[8 * (v23 >> 6) + 64]) == 0)
      {
        break;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*&v34[8 * (v23 >> 6) + 64])) | v23 & 0x7FFFFFFFFFFFFFC0;
      v26 = v32;
LABEL_24:
      *&v21[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
      v31 = (*(v34 + 6) + 16 * v25);
      *v31 = v14;
      v31[1] = v15;
      *(*(v34 + 7) + 8 * v25) = v26;
      ++*(v34 + 2);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v27 = 0;
    v28 = (63 - v22) >> 6;
    v26 = v32;
    while (++v24 != v28 || (v27 & 1) == 0)
    {
      v29 = v24 == v28;
      if (v24 == v28)
      {
        v24 = 0;
      }

      v27 |= v29;
      v30 = *&v21[8 * v24];
      if (v30 != -1)
      {
        v25 = __clz(__rbit64(~v30)) + (v24 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v17 >= v8)
      {

        return v34;
      }

      v7 = *(v4 + 8 * v17);
      ++v10;
      if (v7)
      {
        v10 = v17;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10003F580(void *a1, uint64_t a2)
{
  v3 = v2;
  v116 = a2;
  v4 = sub_1000B52E0();
  __chkstk_darwin(v4 - 8, v5);
  v104 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for NoteMetadata(0);
  __chkstk_darwin(v103, v7);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1000B4F00();
  v119 = *(v115 - 8);
  __chkstk_darwin(v115, v10);
  v114 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1000B4DB0();
  v123 = *(v125 - 8);
  v13 = __chkstk_darwin(v125, v12);
  v109 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v112 = &v95 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v95 - v20;
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v95 - v24;
  __chkstk_darwin(v23, v25);
  v27 = &v95 - v26;
  v28 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v30 = __chkstk_darwin(v28 - 8, v29);
  v113 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v32);
  v124 = &v95 - v33;
  if (qword_100106A18 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v34 = sub_1000B5530();
    v118 = sub_100036380(v34, qword_100106DC0);
    v35 = sub_1000B5520();
    v36 = sub_1000B5910();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "importing a markdown note", v37, 2u);
    }

    v38 = objc_opt_self();
    v39 = &selRef_setAlignment_;
    v40 = [v38 defaultManager];
    v41 = sub_1000B5900();
    if (v3)
    {

      return;
    }

    v42 = v41;
    v102 = v21;
    v101 = v9;

    v126 = _swiftEmptyArrayStorage;
    v43 = v123;
    (*(v123 + 56))(v124, 1, 1, v125);
    v44 = *(v42 + 16);
    if (!v44)
    {
      break;
    }

    v21 = 0;
    v122 = (v43 + 16);
    v9 = (v43 + 8);
    while (v21 < *(v42 + 16))
    {
      v45 = v39;
      v46 = v38;
      v47 = v125;
      (*(v123 + 16))(v27, v42 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v21, v125);
      sub_100040A3C(v27, &v126, v124);
      ++v21;
      (*v9)(v27, v47);
      v38 = v46;
      v39 = v45;
      v3 = 0;
      if (v44 == v21)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

LABEL_10:

  v48 = v126;
  v110 = v126[2];
  if (v110)
  {
    v97 = v38;
    v106 = v121 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
    swift_beginAccess();
    v21 = 0;
    v111 = v123 + 16;
    v108 = (v119 + 8);
    v107 = (v123 + 48);
    v99 = (v123 + 32);
    v9 = v120;
    v98 = v48;
    v118 = (v123 + 8);
    while (1)
    {
      if (v21 >= v48[2])
      {
        goto LABEL_49;
      }

      v49 = v48;
      (*(v123 + 16))(v9, v48 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v21, v125);
      v50 = sub_1000B4DC0();
      v52 = v51;
      v117 = v21;
      v53 = objc_opt_self();
      v121 = v52;
      v54 = v114;
      sub_1000B4EF0();
      isa = sub_1000B4ED0().super.isa;
      v56 = v54;
      v57 = v121;
      (*v108)(v56, v115);
      v58 = [v53 newEmptyNoteWithUUID:isa folder:v116];

      sub_1000457C8(v50, v57);
      sub_1000447F8(v50, v57);
      v119 = v50;
      if (!v59)
      {
        v129 = v50;
        v130 = v57;
        sub_1000457C8(v50, v57);
        sub_100030480(&qword_100106F90, &qword_1000CAE28);
        if (swift_dynamicCast())
        {
          sub_10004589C(v127, &v131);
          sub_1000458B4(&v131, *(&v132 + 1));
          if (sub_1000B5D40())
          {
            sub_1000449D4(v119, v121);
            sub_1000458B4(&v131, *(&v132 + 1));
            sub_1000B5D30();
            sub_100035DA8(&v131);
            goto LABEL_21;
          }

          sub_100035DA8(&v131);
          v57 = v121;
          v50 = v119;
        }

        else
        {
          v128 = 0;
          memset(v127, 0, sizeof(v127));
          sub_100036320(v127, &qword_100106F98, &qword_1000CAE30);
        }

        sub_100044080(v50, v57);
      }

      sub_1000449D4(v50, v57);
LABEL_21:
      v60 = objc_allocWithZone(ICMarkdownRepresentation);
      v61 = sub_1000B55F0();

      *&v131 = 0;
      v62 = [v60 initWithPlainMarkdown:v61 error:&v131];

      v48 = v49;
      if (!v62)
      {
        v94 = v131;
        sub_1000B4C70();

        swift_willThrow();
        sub_1000449D4(v119, v121);
        (*v118)(v120, v125);
        goto LABEL_47;
      }

      v63 = v131;
      v64 = [v62 createRenderableAttributedString];
      v65 = [v58 textStorage];
      v122 = v64;
      if (v65)
      {
        v66 = v65;
        v67 = [objc_allocWithZone(ICTextController) init];
        [v66 setStyler:v67];
        [v66 setConvertAttributes:1];
        [v66 replaceCharactersInRange:0 withAttributedString:{0, v122}];
        [v66 setConvertAttributes:0];
        [v66 setStyler:0];
      }

      v68 = v113;
      sub_100030C74(v124, v113, &qword_100106F88, &qword_1000CAE20);
      if ((*v107)(v68, 1, v125) == 1)
      {
        sub_100036320(v68, &qword_100106F88, &qword_1000CAE20);
        v69 = v118;
      }

      else
      {
        v70 = v102;
        (*v99)(v102, v68, v125);
        sub_100044DBC(v58, v70);
        v69 = v118;
        (*v118)(v70, v125);
      }

      if (*(v106 + 33) != 1)
      {
        goto LABEL_39;
      }

      v105 = v58;
      v71 = v120;
      if (sub_1000B4CE0() == 0x646D2E65746F6ELL && v72 == 0xE700000000000000)
      {

LABEL_32:
        v100 = v62;
        v74 = v109;
        sub_1000B4D30();
        v75 = v112;
        sub_1000B4D10();
        v76 = v118;
        v77 = *v118;
        v78 = v125;
        (*v118)(v74, v125);
        LOBYTE(v127[0]) = 0;
        v79 = [v97 v39[267]];
        sub_1000B4D90();
        v80 = sub_1000B55F0();

        v81 = [v79 fileExistsAtPath:v80 isDirectory:v127];

        if (v81)
        {
          v82 = v77;
          v83 = sub_1000B4DC0();
          v85 = v84;
          v133 = 0;
          v131 = 0u;
          v132 = 0u;
          sub_1000457C8(v83, v84);
          sub_1000B52D0();
          sub_100044D20(&qword_100106FA0, type metadata accessor for NoteMetadata, &unk_1000CBFE8);
          sub_1000B5380();
          v58 = v105;
          v62 = v100;
          v96 = v85;
          v86 = [v105 managedObjectContext];
          v48 = v98;
          if (v86)
          {
            v88 = v86;
            v89 = __chkstk_darwin(v86, v87);
            *(&v95 - 4) = v101;
            *(&v95 - 3) = v58;
            *(&v95 - 2) = v89;
            sub_1000B5A60();
            v82(v112, v125);
            sub_1000449D4(v83, v96);
          }

          else
          {
            v82(v112, v125);
            sub_1000449D4(v83, v96);
          }

          sub_10004581C(v101, type metadata accessor for NoteMetadata);
          v69 = v118;
LABEL_39:
          v90 = v119;
        }

        else
        {
          v77(v75, v78);
          v48 = v98;
          v69 = v76;
          v90 = v119;
          v58 = v105;
          v62 = v100;
        }

        v71 = v120;
        goto LABEL_41;
      }

      v73 = sub_1000B5F20();

      if (v73)
      {
        goto LABEL_32;
      }

      v69 = v118;
      v90 = v119;
      v58 = v105;
LABEL_41:
      v27 = v117 + 1;
      [v58 save];

      v21 = v27;
      sub_1000449D4(v90, v121);
      (*v69)(v71, v125);
      v9 = v71;
      if (v110 == v27)
      {
        goto LABEL_47;
      }
    }
  }

  v91 = sub_1000B5520();
  v92 = sub_1000B5920();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&_mh_execute_header, v91, v92, "could not find markdown file URLs", v93, 2u);
  }

LABEL_47:
  sub_100036320(v124, &qword_100106F88, &qword_1000CAE20);
}

void sub_1000407AC(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  v23[0] = a3;
  v23[7] = a2;
  v7 = sub_1000B4C40();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100106A18 != -1)
  {
    swift_once();
  }

  v12 = sub_1000B5530();
  sub_100036380(v12, qword_100106DC0);
  v13 = sub_1000B5520();
  v14 = sub_1000B5910();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "found a folder", v15, 2u);
  }

  sub_100030480(&qword_100106F80, &qword_1000CAE18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CAB50;
  *(inited + 32) = NSURLIsDirectoryKey;
  v17 = NSURLIsDirectoryKey;
  sub_100087A60(inited);
  swift_setDeallocating();
  sub_10004581C(inited + 32, type metadata accessor for URLResourceKey);
  sub_1000B4CC0();

  if (!v4)
  {
    v18 = sub_1000B4C20();
    (*(v8 + 8))(v11, v7);
    if (v18 != 2 && (v18 & 1) != 0)
    {
      v19 = *v23[0];
      v20 = *a4;
      v21 = *(a4 + 8);
      v22 = *v23[0];
      sub_10003A308(a1, v19, v20, v21);
    }
  }
}

uint64_t sub_100040A3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1000B4C40();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000B4C90() == 25709 && v15 == 0xE200000000000000)
  {

LABEL_5:
    (*(v11 + 16))(v14, a1, v10);
    v17 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_100033874(0, v17[2] + 1, 1, v17);
      *a2 = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_100033874((v19 > 1), v20 + 1, 1, v17);
      *a2 = v17;
    }

    v17[2] = v20 + 1;
    return (*(v11 + 32))(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14, v10);
  }

  v28 = a3;
  v16 = sub_1000B5F20();

  if (v16)
  {
    goto LABEL_5;
  }

  sub_100030480(&qword_100106F80, &qword_1000CAE18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CAB50;
  *(inited + 32) = NSURLIsDirectoryKey;
  v23 = NSURLIsDirectoryKey;
  sub_100087A60(inited);
  swift_setDeallocating();
  sub_10004581C(inited + 32, type metadata accessor for URLResourceKey);
  v24 = v30;
  sub_1000B4CC0();

  if (!v24)
  {
    v25 = sub_1000B4C20();
    result = (*(v29 + 8))(v9, v6);
    if (v25 != 2 && (v25 & 1) != 0)
    {
      v26 = v28;
      sub_100036320(v28, &qword_100106F88, &qword_1000CAE20);
      (*(v11 + 16))(v26, a1, v10);
      return (*(v11 + 56))(v26, 0, 1, v10);
    }
  }

  return result;
}

uint64_t sub_100040DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void *a7, void *a8)
{
  v89 = a3;
  v90 = a8;
  v92 = a7;
  v96 = a5;
  v97 = a6;
  v88 = a2;
  v9 = sub_100030480(&qword_100106FA8, &qword_1000CAE38);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v87 - v11;
  v13 = sub_1000B4C40();
  v14 = *(v13 - 8);
  v94 = v13;
  v95 = v14;
  __chkstk_darwin(v13, v15);
  v93 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000B4DB0();
  v18 = *(v17 - 8);
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v20, v23);
  v91 = &v87 - v25;
  __chkstk_darwin(v24, v26);
  v28 = &v87 - v27;
  v29 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v31 = __chkstk_darwin(v29 - 8, v30);
  v33 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v34);
  v36 = &v87 - v35;
  sub_100030C74(a1, v98, &qword_100106E30, &unk_1000CAB60);
  if (v99)
  {
    v37 = swift_dynamicCast();
    v38 = *(v18 + 56);
    v38(v36, v37 ^ 1u, 1, v17);
    if ((*(v18 + 48))(v36, 1, v17) != 1)
    {
      v39 = sub_1000B4D80(1);
      v41 = v40;
      result = (*(v18 + 8))(v36, v17);
      v100 = v39;
      if (!v41)
      {
        return result;
      }

LABEL_12:
      sub_1000B4D30();
      v38(v33, 0, 1, v17);
      sub_1000B4CD0();

      sub_100036320(v33, &qword_100106F88, &qword_1000CAE20);
      v43 = sub_1000B4D80(1);
      v45 = sub_10008FEE8(v43, v44, v97);

      if (v45)
      {
        sub_100030480(&qword_100106F80, &qword_1000CAE18);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000CAB50;
        *(inited + 32) = NSURLTotalFileSizeKey;
        v47 = NSURLTotalFileSizeKey;
        sub_100087A60(inited);
        swift_setDeallocating();
        sub_10004581C(inited + 32, type metadata accessor for URLResourceKey);
        sub_1000B4CC0();

        v49 = v94;
        v48 = v95;
        (*(v95 + 56))(v12, 0, 1, v94);
        v50 = v93;
        (*(v48 + 32))(v93, v12, v49);
        v51 = sub_1000B4C30();
        if (v52)
        {
          (*(v48 + 8))(v50, v49);
          if (qword_100106A18 != -1)
          {
            swift_once();
          }

          v53 = sub_1000B5530();
          sub_100036380(v53, qword_100106DC0);
          (*(v18 + 16))(v22, v28, v17);
          v54 = sub_1000B5520();
          v55 = sub_1000B5920();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v97 = v28;
            v58 = v57;
            v98[0] = v57;
            *v56 = 136315138;
            v59 = sub_1000B4D80(1);
            v61 = v60;
            v62 = *(v18 + 8);
            v62(v22, v17);
            v63 = sub_100062B20(v59, v61, v98);

            *(v56 + 4) = v63;
            _os_log_impl(&_mh_execute_header, v54, v55, "Unable to import attachment at path %s because unable to get file size.", v56, 0xCu);
            sub_100035DA8(v58);

            return (v62)(v97, v17);
          }

          v64 = *(v18 + 8);
          v64(v22, v17);
          return (v64)(v28, v17);
        }

        v65 = v92;
        if ([v92 attachmentExceedsMaxSizeAllowed:v51])
        {
          if (qword_100106A18 != -1)
          {
            swift_once();
          }

          v67 = sub_1000B5530();
          sub_100036380(v67, qword_100106DC0);
          v68 = v91;
          (*(v18 + 16))(v91, v28, v17);
          v69 = sub_1000B5520();
          v70 = sub_1000B5920();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v97 = v28;
            v73 = v72;
            v98[0] = v72;
            *v71 = 136315138;
            v74 = sub_1000B4D80(1);
            v75 = v68;
            v77 = v76;
            v78 = *(v18 + 8);
            v78(v75, v17);
            v79 = sub_100062B20(v74, v77, v98);

            *(v71 + 4) = v79;
            _os_log_impl(&_mh_execute_header, v69, v70, "Unable to import attachment at path %s because it exceeds maximum allowed size in note.", v71, 0xCu);
            sub_100035DA8(v73);

            (*(v95 + 8))(v93, v49);
            return (v78)(v97, v17);
          }

          v64 = *(v18 + 8);
          v64(v68, v17);
          (*(v95 + 8))(v50, v49);
          return (v64)(v28, v17);
        }

        sub_1000B4CF0(v66);
        v81 = v80;
        v82 = [v65 addAttachmentWithFileURL:v80];

        if (v82)
        {
          v83 = [objc_allocWithZone(ICTextAttachment) initWithAttachment:v82];
          v84 = [objc_opt_self() attributedStringWithAttachment:v83];
          v85 = [v84 ic_range];
          [v90 ic_replaceCharactersInRange:v88 withAttributedSubstring:v89 fromRange:{v84, v85, v86}];

          v50 = v93;
        }

        [v65 save];
        (*(v48 + 8))(v50, v49);
      }

      return (*(v18 + 8))(v28, v17);
    }
  }

  else
  {
    sub_100036320(v98, &qword_100106E30, &unk_1000CAB60);
    v38 = *(v18 + 56);
    v38(v36, 1, 1, v17);
  }

  sub_100036320(v36, &qword_100106F88, &qword_1000CAE20);
  sub_100030C74(a1, v98, &qword_100106E30, &unk_1000CAB60);
  if (!v99)
  {
    return sub_100036320(v98, &qword_100106E30, &unk_1000CAB60);
  }

  result = swift_dynamicCast();
  if (!result)
  {
    v100 = 0;
    v101 = 0;
    return result;
  }

  if (v101)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100041820(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning;
  if ((v1[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning] & 1) != 0 || (result & 0x1F) == 0)
  {
    if (qword_100106A18 == -1)
    {
      goto LABEL_4;
    }

    while (1)
    {
      swift_once();
LABEL_4:
      v4 = sub_1000B5530();
      sub_100036380(v4, qword_100106DC0);
      v5 = sub_1000B5520();
      v6 = sub_1000B5910();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Saving batch of imported notes and resetting inserted objects…", v7, 2u);
      }

      v8 = *&v2[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context];
      v9 = [v8 insertedObjects];
      sub_1000362AC(0, &qword_100106F50, NSManagedObject_ptr);
      sub_100045760();
      v10 = sub_1000B5830();

      v28[0] = 0;
      if (![v8 save:v28])
      {
        v15 = v28[0];

        sub_1000B4C70();

        return swift_willThrow();
      }

      v26 = v3;
      v27 = v2;
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = v28[0];

        sub_1000B5B50();
        sub_1000B5860();
        v10 = v28[1];
        v12 = v28[2];
        v13 = v28[3];
        v2 = v28[4];
        v14 = v28[5];
      }

      else
      {
        v16 = -1 << *(v10 + 32);
        v12 = (v10 + 56);
        v13 = ~v16;
        v17 = -v16;
        v18 = v17 < 64 ? ~(-1 << v17) : -1;
        v14 = (v18 & *(v10 + 56));
        v19 = v28[0];

        v2 = 0;
      }

      v25 = v13;
      v3 = (v13 + 64) >> 6;
      if (v10 < 0)
      {
        break;
      }

LABEL_15:
      v20 = v2;
      v21 = v14;
      v22 = v2;
      if (v14)
      {
LABEL_19:
        v23 = (v21 - 1) & v21;
        v24 = *(*(v10 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
        if (v24)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      while (1)
      {
        v22 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v3)
        {
          goto LABEL_25;
        }

        v21 = v12[v22];
        ++v20;
        if (v21)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    while (sub_1000B5BB0())
    {
      swift_dynamicCast();
      v24 = v28[0];
      v22 = v2;
      v23 = v14;
      if (!v28[0])
      {
        break;
      }

LABEL_23:
      [v8 refreshObject:v24 mergeChanges:{0, v25}];

      v2 = v22;
      v14 = v23;
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_25:
    sub_100035A5C(v10);

    v27[v26] = 0;
  }

  return result;
}

void sub_100041BB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning] = 1;
  }
}

void *sub_100041C10(uint64_t a1, uint64_t a2)
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

  sub_100030480(&qword_100106FB0, &unk_1000CC360);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

Swift::Int sub_100041C84(uint64_t *a1)
{
  v2 = *(sub_100030480(&qword_100106AE0, &unk_1000CA340) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100044634(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100041D38(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100041D38(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000B5ED0(v2);
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
        sub_100030480(&qword_100106AE0, &unk_1000CA340);
        v6 = sub_1000B57E0();
        v6[2] = v5;
      }

      v7 = *(sub_100030480(&qword_100106AE0, &unk_1000CA340) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100042118(v8, v9, a1, v4);
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
    return sub_100041E7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100041E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v10 = __chkstk_darwin(v8, v9);
  v43 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v47 = &v33 - v14;
  result = __chkstk_darwin(v13, v15);
  v46 = &v33 - v18;
  v35 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v44 = *(v17 + 16);
    v45 = v17 + 16;
    v20 = *(v17 + 72);
    v21 = (v17 + 8);
    v22 = v19 + v20 * (a3 - 1);
    v40 = -v20;
    v41 = (v17 + 32);
    v23 = a1 - a3;
    v42 = v19;
    v34 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v38 = v22;
    v39 = a3;
    v36 = v24;
    v37 = v23;
    while (1)
    {
      v25 = v46;
      v26 = v44;
      v44(v46, v24, v8);
      v27 = v47;
      v26(v47, v22, v8);
      sub_100036470();
      v28 = sub_1000B55D0();
      v29 = *v21;
      (*v21)(v27, v8);
      result = v29(v25, v8);
      if ((v28 & 1) == 0)
      {
LABEL_4:
        a3 = v39 + 1;
        v22 = v38 + v34;
        v23 = v37 - 1;
        v24 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v30)(v22, v31, v8);
      v22 += v40;
      v24 += v40;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100042118(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v125 = a1;
  v9 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v129 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12, v14);
  v137 = &v122 - v16;
  v18 = __chkstk_darwin(v15, v17);
  v142 = &v122 - v19;
  result = __chkstk_darwin(v18, v20);
  v143 = &v122 - v22;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_134;
    }

    a4 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_10004313C(a4);
    }

    v145 = result;
    v117 = *(result + 16);
    if (v117 >= 2)
    {
      while (*a3)
      {
        a4 = v117 - 1;
        v118 = *(result + 16 * v117);
        v119 = result;
        v120 = *(result + 16 * (v117 - 1) + 40);
        sub_100042B14(*a3 + *(v10 + 72) * v118, *a3 + *(v10 + 72) * *(result + 16 * (v117 - 1) + 32), *a3 + *(v10 + 72) * v120, v5);
        if (v6)
        {
        }

        if (v120 < v118)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_10004313C(v119);
        }

        if (v117 - 2 >= *(v119 + 2))
        {
          goto LABEL_122;
        }

        v121 = &v119[16 * v117];
        *v121 = v118;
        *(v121 + 1) = v120;
        v145 = v119;
        sub_1000430B0(a4);
        result = v145;
        v117 = *(v145 + 16);
        if (v117 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v24 = 0;
  v140 = (v10 + 8);
  v141 = v10 + 16;
  v139 = (v10 + 32);
  v25 = _swiftEmptyArrayStorage;
  v127 = a3;
  v124 = a4;
  v144 = v9;
  v123 = v10;
  while (1)
  {
    v26 = v24;
    v130 = v25;
    if (v24 + 1 >= v23)
    {
      v40 = v24 + 1;
    }

    else
    {
      v135 = v23;
      v27 = v9;
      v28 = *a3;
      v29 = v10;
      v30 = *(v10 + 72);
      v5 = v28 + v30 * (v24 + 1);
      v131 = v28;
      v31 = *(v29 + 16);
      v31(v143, v5, v27);
      v32 = v28 + v30 * v26;
      v33 = v29;
      v126 = v26;
      v34 = v142;
      v134 = v31;
      v31(v142, v32, v27);
      v35 = sub_100036470();
      v36 = v143;
      v133 = v35;
      LODWORD(v136) = sub_1000B55D0();
      v37 = *(v33 + 8);
      v37(v34, v27);
      v132 = v37;
      result = (v37)(v36, v27);
      v38 = v126 + 2;
      v138 = v30;
      v39 = v131 + v30 * (v126 + 2);
      while (1)
      {
        v40 = v135;
        if (v135 == v38)
        {
          break;
        }

        v42 = v143;
        v41 = v144;
        v43 = v134;
        (v134)(v143, v39, v144);
        v44 = v6;
        v45 = v142;
        v43(v142, v5, v41);
        v46 = sub_1000B55D0() & 1;
        v47 = v45;
        v6 = v44;
        v48 = v132;
        v132(v47, v41);
        result = v48(v42, v41);
        ++v38;
        v39 += v138;
        v5 += v138;
        if ((v136 & 1) != v46)
        {
          v40 = v38 - 1;
          break;
        }
      }

      v26 = v126;
      a3 = v127;
      v10 = v123;
      v25 = v130;
      a4 = v124;
      v9 = v144;
      if (v136)
      {
        if (v40 < v126)
        {
          goto LABEL_125;
        }

        if (v126 < v40)
        {
          v49 = v138 * (v40 - 1);
          v5 = v40 * v138;
          v135 = v40;
          v50 = v40;
          v51 = v126;
          v52 = v126 * v138;
          do
          {
            if (v51 != --v50)
            {
              v54 = *a3;
              if (!v54)
              {
                goto LABEL_131;
              }

              v136 = *v139;
              (v136)(v129, v54 + v52, v144, v25);
              if (v52 < v49 || v54 + v52 >= v54 + v5)
              {
                v53 = v144;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v53 = v144;
                if (v52 != v49)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v136)(v54 + v49, v129, v53);
              a3 = v127;
              v25 = v130;
            }

            ++v51;
            v49 -= v138;
            v5 -= v138;
            v52 += v138;
          }

          while (v51 < v50);
          v10 = v123;
          a4 = v124;
          v9 = v144;
          v26 = v126;
          v40 = v135;
        }
      }
    }

    v55 = a3[1];
    if (v40 < v55)
    {
      if (__OFSUB__(v40, v26))
      {
        goto LABEL_124;
      }

      if (v40 - v26 < a4)
      {
        if (__OFADD__(v26, a4))
        {
          goto LABEL_126;
        }

        if (v26 + a4 >= v55)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v26 + a4;
        }

        if (v5 < v26)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v40 != v5)
        {
          break;
        }
      }
    }

    v5 = v40;
    if (v40 < v26)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v25 = v130;
    }

    else
    {
      result = sub_1000334D0(0, *(v130 + 2) + 1, 1, v130);
      v25 = result;
    }

    a4 = *(v25 + 2);
    v56 = *(v25 + 3);
    v57 = a4 + 1;
    if (a4 >= v56 >> 1)
    {
      result = sub_1000334D0((v56 > 1), a4 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = v57;
    v58 = &v25[16 * a4];
    *(v58 + 4) = v26;
    *(v58 + 5) = v5;
    v59 = *v125;
    if (!*v125)
    {
      goto LABEL_133;
    }

    v131 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v60 = *(v25 + 4);
          v61 = *(v25 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_52:
          if (v63)
          {
            goto LABEL_112;
          }

          v76 = &v25[16 * v57];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_115;
          }

          v82 = &v25[16 * v5 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_119;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v5 = v57 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v86 = &v25[16 * v57];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_66:
        if (v81)
        {
          goto LABEL_114;
        }

        v89 = &v25[16 * v5];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_117;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v57)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v97 = v25;
        v98 = *&v25[16 * a4 + 32];
        v99 = *&v25[16 * v5 + 40];
        sub_100042B14(*a3 + *(v10 + 72) * v98, *a3 + *(v10 + 72) * *&v25[16 * v5 + 32], *a3 + *(v10 + 72) * v99, v59);
        if (v6)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_10004313C(v97);
        }

        if (a4 >= *(v97 + 2))
        {
          goto LABEL_109;
        }

        v100 = &v97[16 * a4];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        v145 = v97;
        result = sub_1000430B0(v5);
        v25 = v145;
        v57 = *(v145 + 16);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v25[16 * v57 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_110;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_111;
      }

      v71 = &v25[16 * v57];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_113;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_116;
      }

      if (v75 >= v67)
      {
        v93 = &v25[16 * v5 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_120;
        }

        if (v62 < v96)
        {
          v5 = v57 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v23 = a3[1];
    v24 = v131;
    a4 = v124;
    v9 = v144;
    if (v131 >= v23)
    {
      goto LABEL_95;
    }
  }

  v122 = v6;
  v101 = *a3;
  v102 = *(v10 + 72);
  v138 = *(v10 + 16);
  v103 = v101 + v102 * (v40 - 1);
  v104 = v26;
  v105 = -v102;
  v126 = v104;
  v106 = v104 - v40;
  v136 = v101;
  v128 = v102;
  a4 = v101 + v40 * v102;
  v131 = v5;
LABEL_85:
  v134 = v103;
  v135 = v40;
  v132 = a4;
  v133 = v106;
  v107 = v103;
  while (1)
  {
    v108 = v143;
    v109 = v138;
    (v138)(v143, a4, v9, v25);
    v110 = v142;
    v109(v142, v107, v144);
    sub_100036470();
    v111 = sub_1000B55D0();
    v112 = *v140;
    v113 = v110;
    v9 = v144;
    (*v140)(v113, v144);
    result = v112(v108, v9);
    if ((v111 & 1) == 0)
    {
LABEL_84:
      v40 = v135 + 1;
      v103 = &v134[v128];
      v106 = v133 - 1;
      a4 = v132 + v128;
      v5 = v131;
      if (v135 + 1 != v131)
      {
        goto LABEL_85;
      }

      v6 = v122;
      v26 = v126;
      a3 = v127;
      v10 = v123;
      if (v131 < v126)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v136)
    {
      break;
    }

    v114 = *v139;
    v115 = v137;
    (*v139)(v137, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v107, v115, v9);
    v107 += v105;
    a4 += v105;
    if (__CFADD__(v106++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_100042B14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v8 = *(v58 - 8);
  v10 = __chkstk_darwin(v58, v9);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10, v12);
  v55 = &v46 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_63;
  }

  v57 = a3;
  v18 = (a2 - a1) / v16;
  v61 = a1;
  v60 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v20;
    if (v20 >= 1)
    {
      v31 = -v16;
      v50 = (v8 + 8);
      v51 = (v8 + 16);
      v32 = a4 + v20;
      v33 = v57;
      v48 = a1;
      v49 = a4;
      v52 = v31;
      do
      {
        v46 = v30;
        v34 = a2 + v31;
        v35 = v30;
        v53 = a2;
        v54 = a2 + v31;
        while (1)
        {
          if (a2 <= a1)
          {
            v61 = a2;
            v30 = v46;
            goto LABEL_59;
          }

          v37 = v33;
          v47 = v35;
          v57 = v33 + v31;
          v38 = v32 + v31;
          v39 = *v51;
          v40 = v55;
          v41 = v32 + v31;
          v42 = v32;
          v43 = v58;
          (*v51)(v55, v41, v58);
          v44 = v56;
          (v39)(v56, v34, v43);
          sub_100036470();
          LOBYTE(v39) = sub_1000B55D0();
          v45 = *v50;
          (*v50)(v44, v43);
          v45(v40, v43);
          if (v39)
          {
            break;
          }

          v35 = v38;
          v33 = v57;
          if (v37 < v42 || v57 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v54;
            a1 = v48;
          }

          else
          {
            v34 = v54;
            a1 = v48;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v38;
          v36 = v38 > v49;
          v31 = v52;
          a2 = v53;
          if (!v36)
          {
            v30 = v35;
            goto LABEL_58;
          }
        }

        v33 = v57;
        if (v37 < v53 || v57 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v48;
          v32 = v42;
        }

        else
        {
          a2 = v54;
          a1 = v48;
          v32 = v42;
          if (v37 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v47;
        v31 = v52;
      }

      while (v32 > v49);
    }

LABEL_58:
    v61 = a2;
LABEL_59:
    v59 = v30;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v19;
    v59 = a4 + v19;
    if (v19 >= 1 && a2 < v57)
    {
      v52 = *(v8 + 16);
      v53 = v8 + 16;
      v50 = v16;
      v51 = (v8 + 8);
      do
      {
        v22 = v55;
        v23 = v58;
        v24 = v52;
        v52(v55, a2, v58);
        v25 = v56;
        v24(v56, a4, v23);
        sub_100036470();
        v26 = sub_1000B55D0();
        v27 = *v51;
        (*v51)(v25, v23);
        v27(v22, v23);
        if (v26)
        {
          v28 = v50;
          if (a1 < a2 || a1 >= v50 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v28;
        }

        else
        {
          v28 = v50;
          v29 = v50 + a4;
          if (a1 < a4 || a1 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v60 = v29;
          a4 += v28;
        }

        a1 += v28;
        v61 = a1;
      }

      while (a4 < v54 && a2 < v57);
    }
  }

  sub_100043150(&v61, &v60, &v59);
  return 1;
}

uint64_t sub_1000430B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10004313C(v3);
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

uint64_t sub_100043150(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100030480(&qword_100106AE0, &unk_1000CA340);
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

void *sub_100043240(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043A84(a1, a2, a3, *v3, &qword_100106EE8, &unk_1000CADB0, &qword_100106AD8, &unk_1000CA330);
  *v3 = result;
  return result;
}

void *sub_100043280(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043DA0(a1, a2, a3, *v3, &qword_100106D60, &unk_1000CAE40, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_1000432C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000434F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000432E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043600(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100043304(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100043324(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004387C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100043344(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100043364(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043DA0(a1, a2, a3, *v3, &qword_100106ED8, &unk_1000CADA0, _s8ActivityVMa);
  *v3 = result;
  return result;
}

void *sub_1000433A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043DA0(a1, a2, a3, *v3, &qword_100106CF0, &qword_1000CAA60, _s3TagVMa);
  *v3 = result;
  return result;
}

void *sub_1000433EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043DA0(a1, a2, a3, *v3, &qword_100106ED0, &qword_1000CAD98, _s14AudioRecordingV8FragmentVMa);
  *v3 = result;
  return result;
}

void *sub_100043430(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043A84(a1, a2, a3, *v3, &qword_100106CF8, &qword_1000CAA68, &qword_100106D00, &qword_1000CAA70);
  *v3 = result;
  return result;
}

void *sub_100043470(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100043490(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043DA0(a1, a2, a3, *v3, &qword_100106EC8, &qword_1000CAD90, _s14AudioRecordingV17TranscriptSegmentVMa);
  *v3 = result;
  return result;
}

char *sub_1000434D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043F7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000434F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030480(&qword_100106CE8, &qword_1000CAD70);
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

void *sub_100043600(void *result, int64_t a2, char a3, void *a4)
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
    sub_100030480(&qword_100106F00, &qword_1000CADD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030480(&qword_100106EF8, &qword_1000CADD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100043748(void *result, int64_t a2, char a3, void *a4)
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
    sub_100030480(&qword_100106F68, &qword_1000CAE00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030480(&qword_100106F70, &qword_1000CAE08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004387C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030480(&qword_100106F78, &qword_1000CAE10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100043980(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030480(&qword_100106F60, &qword_1000CADF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100043A84(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100030480(a5, a6);
  v16 = *(sub_100030480(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100030480(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_100043C6C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100030480(&qword_100106EB0, &qword_1000CAD78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030480(&qword_100106E30, &unk_1000CAB60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100043DA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100030480(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100043F7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030480(&qword_100106EC0, &qword_1000CAD88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_100044080(uint64_t a1, unint64_t a2)
{
  sub_1000457C8(a1, a2);
  sub_10004467C(a1, a2);
  v4 = sub_1000B5690();

  return v4;
}

uint64_t sub_1000440EC@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1000B5690();
  *a3 = result;
  a3[1] = v5;
  return result;
}

id sub_100044128(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  v10 = a4;
  v11 = type metadata accessor for ICArchiveImporter();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_isImporting] = 0;
  v13 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  *&v12[v13] = sub_100030190(_swiftEmptyArrayStorage);
  *&v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_saveBatchSize] = 32;
  v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v14 = &v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v14 = 0u;
  v14[1] = 0u;
  *&v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context] = a1;
  if (v10 == 2 || (a4 & 1) == 0)
  {
    v23 = &v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
    v24 = *(a2 + 32);
    v25 = *(a2 + 16);
    *v23 = *a2;
    *(v23 + 1) = v25;
    *(v23 + 16) = v24;
    v26 = a1;
    sub_100045B98(a2, v31);
  }

  else
  {
    v15 = a1;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v17 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v18 = &v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
    *v18 = IsAlexandriaDemoModeEnabled;
    v18[1] = v17;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = 0;
    v18[32] = 1;
    v18[33] = a5;
    if (qword_100106A18 != -1)
    {
      swift_once();
    }

    v19 = sub_1000B5530();
    sub_100036380(v19, qword_100106DC0);
    v20 = sub_1000B5520();
    v21 = sub_1000B5910();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "archiver init", v22, 2u);
    }
  }

  v27 = &v12[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager];
  *v27 = a3;
  v27[1] = &protocol witness table for NSFileManager;
  v30.receiver = v12;
  v30.super_class = v11;
  v28 = objc_msgSendSuper2(&v30, "init");
  sub_100037400();
  sub_100044A28(a2);

  return v28;
}

id sub_10004436C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v11 = a4;
  v15 = objc_allocWithZone(a6);

  return sub_1000443F4(a1, a2, a3, v11, v10, v15, a7, a8);
}

id sub_1000443F4(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v15 = a4;
  ObjectType = swift_getObjectType();
  a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_isImporting] = 0;
  v17 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  *&a6[v17] = sub_100030190(_swiftEmptyArrayStorage);
  *&a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_saveBatchSize] = 32;
  a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v18 = &a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v18 = 0u;
  v18[1] = 0u;
  *&a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context] = a1;
  if (v15 == 2 || (a4 & 1) == 0)
  {
    v27 = &a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
    v28 = *(a2 + 16);
    *v27 = *a2;
    *(v27 + 1) = v28;
    *(v27 + 16) = *(a2 + 32);
    v29 = a1;
    sub_100045B98(a2, v34);
  }

  else
  {
    v19 = a1;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v21 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v22 = &a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
    *v22 = IsAlexandriaDemoModeEnabled;
    v22[1] = v21;
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 1) = 0;
    v22[32] = 1;
    v22[33] = a5;
    if (qword_100106A18 != -1)
    {
      swift_once();
    }

    v23 = sub_1000B5530();
    sub_100036380(v23, qword_100106DC0);
    v24 = sub_1000B5520();
    v25 = sub_1000B5910();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "archiver init", v26, 2u);
    }
  }

  v30 = &a6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager];
  *v30 = a3;
  v30[1] = a8;
  v33.receiver = a6;
  v33.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v33, "init");
  sub_100037400();
  sub_100044A28(a2);

  return v31;
}

void *sub_10004467C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000B4E00();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_1000449D4(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_100041C10(v11, 0);
      v15 = sub_1000B4DD0();
      sub_1000449D4(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1000447F8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1000B5690();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_1000B5690();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1000B4B80();
  if (a1)
  {
    a1 = sub_1000B4BA0();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1000B4B80() || !__OFSUB__(v5, sub_1000B4BA0()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1000B4B90();
  return sub_1000B5690();
}

unint64_t sub_1000449A4(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000449D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100044A5C()
{
  result = qword_100106E60;
  if (!qword_100106E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106E60);
  }

  return result;
}

unint64_t sub_100044AB8()
{
  result = qword_100106E68;
  if (!qword_100106E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106E68);
  }

  return result;
}

unint64_t sub_100044B10()
{
  result = qword_100106E70;
  if (!qword_100106E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106E70);
  }

  return result;
}

unint64_t sub_100044B68()
{
  result = qword_100106E78;
  if (!qword_100106E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106E78);
  }

  return result;
}

unint64_t sub_100044BC0()
{
  result = qword_100106E80;
  if (!qword_100106E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106E80);
  }

  return result;
}

__n128 sub_100044C38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100044C4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100044CA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100044D20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100044D68()
{
  result = qword_100106EE0;
  if (!qword_100106EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106EE0);
  }

  return result;
}

void sub_100044DBC(void *a1, uint64_t a2)
{
  v65 = a1;
  v4 = sub_1000B4DB0();
  v73 = *(v4 - 8);
  v5 = *(v73 + 64);
  v7 = __chkstk_darwin(v4, v6);
  v9 = __chkstk_darwin(v7, v8);
  v11 = &v62 - v10;
  __chkstk_darwin(v9, v12);
  v14 = &v62 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = sub_1000B5900();

  if (!v2)
  {
    v69 = v11;
    v62 = a2;
    v63 = v5;
    v72 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = v4;
    v64 = 0;
    v71 = *(v16 + 16);
    if (v71)
    {
      v17 = 0;
      v70 = (v73 + 16);
      v67 = (v73 + 32);
      v18 = (v73 + 8);
      v68 = _swiftEmptyArrayStorage;
      v19 = v75;
      while (1)
      {
        if (v17 >= *(v16 + 16))
        {
          __break(1u);
          return;
        }

        v20 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v21 = *(v73 + 72);
        (*(v73 + 16))(v14, v16 + v20 + v21 * v17, v19);
        if (sub_1000B4C90() == 1852797802 && v22 == 0xE400000000000000)
        {
        }

        else
        {
          v23 = sub_1000B5F20();

          if ((v23 & 1) == 0)
          {
            v24 = *v67;
            (*v67)(v69, v14, v19);
            v25 = v68;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v25;
            v66 = v24;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100043280(0, v25[2] + 1, 1);
              v25 = aBlock[0];
            }

            v28 = v25[2];
            v27 = v25[3];
            if (v28 >= v27 >> 1)
            {
              sub_100043280((v27 > 1), v28 + 1, 1);
              v25 = aBlock[0];
            }

            v25[2] = v28 + 1;
            v68 = v25;
            v29 = v25 + v20 + v28 * v21;
            v19 = v75;
            v66(v29);
            goto LABEL_6;
          }
        }

        (*v18)(v14, v19);
LABEL_6:
        if (v71 == ++v17)
        {
          goto LABEL_17;
        }
      }
    }

    v68 = _swiftEmptyArrayStorage;
    v19 = v75;
LABEL_17:

    v30 = v68[2];
    if (v30)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      v31 = v68;
      sub_1000432C4(0, v30, 0);
      v32 = aBlock[0];
      v33 = *(v73 + 16);
      v34 = v31 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v69 = *(v73 + 72);
      v70 = v33;
      v71 = (v73 + 16);
      v35 = (v73 + 8);
      do
      {
        v36 = v72;
        v37 = v75;
        v70(v72, v34, v75);
        v38 = sub_1000B4D80(1);
        v40 = v39;
        (*v35)(v36, v37);
        aBlock[0] = v32;
        v42 = v32[2];
        v41 = v32[3];
        if (v42 >= v41 >> 1)
        {
          sub_1000432C4((v41 > 1), v42 + 1, 1);
          v32 = aBlock[0];
        }

        v32[2] = v42 + 1;
        v43 = &v32[2 * v42];
        v43[4] = v38;
        v43[5] = v40;
        v34 = &v69[v34];
        --v30;
      }

      while (v30);

      v19 = v75;
    }

    else
    {

      v32 = _swiftEmptyArrayStorage;
    }

    v44 = sub_100087C54(v32);

    v45 = v65;
    v46 = [v65 textStorage];
    v47 = v63;
    if (v46)
    {
      v71 = NSLinkAttributeName;
      v68 = v46;
      v48 = [v46 ic_range];
      v69 = v49;
      v70 = v48;
      v50 = v72;
      v51 = v73;
      (*(v73 + 16))(v72, v62, v19);
      v52 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v53 = (v47 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      (*(v51 + 32))(v55 + v52, v50, v75);
      *(v55 + v53) = v44;
      *(v55 + v54) = v45;
      v56 = v68;
      *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v68;
      v57 = swift_allocObject();
      *(v57 + 16) = sub_1000459BC;
      *(v57 + 24) = v55;
      aBlock[4] = sub_100045AA8;
      aBlock[5] = v57;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000905D8;
      aBlock[3] = &unk_1000F3FE0;
      v58 = _Block_copy(aBlock);
      v59 = v45;
      v60 = v56;

      [v60 enumerateAttribute:v71 inRange:v70 options:v69 usingBlock:{2, v58}];

      _Block_release(v58);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

void sub_100045418(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(i) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = sub_10006320C(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    sub_100063F38(v17, i & 1);
    v12 = sub_10006320C(v8, v7);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = sub_1000B5F50();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v20 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v26 = (v20[6] + 16 * v12);
    *v26 = v8;
    v26[1] = v7;
    *(v20[7] + 8 * v12) = v11;
    v27 = v20[2];
    v16 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v20[2] = v28;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v25 = v12;
  sub_10005C0DC();
  v12 = v25;
  v20 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = v12;
  v22 = *(v20[7] + 8 * v12);

  v23 = v20[7];
  v24 = *(v23 + 8 * v21);
  *(v23 + 8 * v21) = v22;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 9); ; i += 3)
    {
      v11 = *(i - 2);
      v6 = *(i - 1);
      v33 = *i;
      v34 = *a3;

      v7 = v33;
      v35 = sub_10006320C(v11, v6);
      v37 = v34[2];
      v38 = (v36 & 1) == 0;
      v16 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v16)
      {
        break;
      }

      v8 = v36;
      if (v34[3] < v39)
      {
        sub_100063F38(v39, 1);
        v35 = sub_10006320C(v11, v6);
        if ((v8 & 1) != (v40 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v29 = v35;
        v30 = *(v3[7] + 8 * v35);

        v31 = v3[7];
        v32 = *(v31 + 8 * v29);
        *(v31 + 8 * v29) = v30;
      }

      else
      {
        v3[(v35 >> 6) + 8] |= 1 << v35;
        v41 = (v3[6] + 16 * v35);
        *v41 = v11;
        v41[1] = v6;
        *(v3[7] + 8 * v35) = v7;
        v42 = v3[2];
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v3[2] = v43;
      }

      if (!--v18)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}

unint64_t sub_1000456B8()
{
  result = qword_100106F48;
  if (!qword_100106F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106F48);
  }

  return result;
}

unint64_t sub_100045760()
{
  result = qword_100106F58;
  if (!qword_100106F58)
  {
    sub_1000362AC(255, &qword_100106F50, NSManagedObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106F58);
  }

  return result;
}

uint64_t sub_1000457C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10004581C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004589C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000458B4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000458F8()
{
  v1 = sub_1000B4DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1000459BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1000B4DB0() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v11);
  v14 = *(v4 + v12);
  v15 = *(v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100040DD4(a1, a2, a3, a4, v4 + v10, v13, v14, v15);
}

uint64_t sub_100045AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100045AE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030480(&qword_100106E30, &unk_1000CAB60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100045BF4(uint64_t a1, unsigned __int8 a2)
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

id sub_100045D38(uint64_t a1, uint64_t (**a2)(void, void, void, void), double *a3)
{
  v183 = a3;
  v188 = a2;
  v190 = sub_1000B4F00();
  v186 = *(v190 - 8);
  __chkstk_darwin(v190, v4);
  v185 = v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100030480(&qword_100107008, &qword_1000CAE80);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v184 = v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v189 = v164 - v11;
  v12 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v14 = __chkstk_darwin(v12 - 8, v13);
  v176 = v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14, v16);
  v181 = v164 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v175 = v164 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v179 = v164 - v24;
  v26 = __chkstk_darwin(v23, v25);
  v174 = v164 - v27;
  v29 = __chkstk_darwin(v26, v28);
  v180 = v164 - v30;
  v32 = __chkstk_darwin(v29, v31);
  v173 = v164 - v33;
  v35 = __chkstk_darwin(v32, v34);
  v178 = v164 - v36;
  v38 = __chkstk_darwin(v35, v37);
  v182 = (v164 - v39);
  v41 = __chkstk_darwin(v38, v40);
  v172 = v164 - v42;
  v44 = __chkstk_darwin(v41, v43);
  v46 = v164 - v45;
  __chkstk_darwin(v44, v47);
  v171 = v164 - v48;
  v170 = sub_1000B4EA0();
  v187 = *(v170 - 8);
  v50 = __chkstk_darwin(v170, v49);
  v52 = v164 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v50, v53);
  v56 = v164 - v55;
  v58 = __chkstk_darwin(v54, v57);
  v60 = v164 - v59;
  v62 = __chkstk_darwin(v58, v61);
  v64 = v164 - v63;
  __chkstk_darwin(v62, v65);
  v67 = v164 - v66;
  ObjectType = swift_getObjectType();
  v69 = v3;
  v70 = v191;
  result = (v188)[4](*(v69 + 8), *(v69 + 16), v183, ObjectType);
  if (!v70)
  {
    v165 = v56;
    v166 = v60;
    v167 = v46;
    v169 = v52;
    v188 = result;
    v164[1] = 0;
    v191 = type metadata accessor for ICNoteArchiveModel(0);
    v72 = v171;
    sub_100030C74(v3 + *(v191 + 40), v171, &qword_100106E38, &unk_1000CB730);
    v73 = v187;
    v74 = *(v187 + 48);
    v75 = v170;
    v76 = v74(v72, 1, v170);
    v168 = v69;
    v177 = v74;
    if (v76 == 1)
    {
      sub_1000B4E90();
      v77 = v74(v72, 1, v75);
      v78 = v188;
      if (v77 != 1)
      {
        sub_100036320(v72, &qword_100106E38, &unk_1000CB730);
      }
    }

    else
    {
      (*(v73 + 32))(v64, v72, v75);
      v78 = v188;
    }

    sub_1000B4E40();
    v79 = v187;
    v80 = *(v187 + 8);
    (v80)(v64, v75);
    isa = sub_1000B4E30().super.isa;
    v183 = v80;
    (v80)(v67, v75);
    v82 = v78;
    [v78 setCreationDate:isa];

    v83 = v168;
    v84 = v167;
    sub_100030C74(v168 + *(v191 + 44), v167, &qword_100106E38, &unk_1000CB730);
    v85 = v177;
    if (v177(v84, 1, v75) == 1)
    {
      v86 = v165;
      sub_1000B4E90();
      if (v85(v84, 1, v75) != 1)
      {
        sub_100036320(v84, &qword_100106E38, &unk_1000CB730);
      }
    }

    else
    {
      v86 = v165;
      (*(v79 + 32))(v165, v84, v75);
    }

    v87 = v166;
    sub_1000B4E40();
    v88 = v183;
    (v183)(v86, v75);
    v89 = sub_1000B4E30().super.isa;
    (v88)(v87, v75);
    v90 = v82;
    [v82 setModificationDate:v89];

    if (*(v83 + *(v191 + 48) + 8))
    {
      v91 = sub_1000B55F0();
    }

    else
    {
      v91 = 0;
    }

    [v82 setTitle:v91];

    v92 = v191;
    [v82 setIsPinned:*(v83 + *(v191 + 52)) & 1];
    [v82 setIsSystemPaper:*(v83 + v92[14]) & 1];
    [v82 setPaperStyleType:word_1000DF034[*(v83 + v92[15])]];
    v93 = *(v83 + v92[16]);
    if (v93)
    {
      v94 = 2;
    }

    else
    {
      v94 = 1;
    }

    if (v93 == 2)
    {
      v95 = 0;
    }

    else
    {
      v95 = v94;
    }

    [v82 setPreferredBackgroundType:v95];
    v96 = *(v83 + v92[17]);
    v97 = v172;
    if (v96 > 1)
    {
      if (v96 == 2)
      {
        v98 = 2;
      }

      else
      {
        v98 = [v82 attachmentViewType];
      }
    }

    else
    {
      v98 = v96 != 0;
    }

    [v82 setAttachmentViewType:v98];
    if (*(v83 + *(v191 + 72) + 8))
    {
      v99 = sub_1000B55F0();
    }

    else
    {
      v99 = 0;
    }

    [v82 setHostApplicationIdentifier:v99];

    v100 = v182;
    sub_100030C74(v83 + *(v191 + 76), v182, &qword_100106E38, &unk_1000CB730);
    v101 = 1;
    if (v85(v100, 1, v75) != 1)
    {
      v102 = v169;
      (*(v187 + 32))(v169, v100, v75);
      sub_1000B4E40();
      (v183)(v102, v75);
      v101 = 0;
    }

    v182 = *(v187 + 56);
    (v182)(v97, v101, 1, v75);
    if (v85(v97, 1, v75) == 1)
    {
      v103 = 0;
    }

    else
    {
      v103 = sub_1000B4E30().super.isa;
      (v183)(v97, v75);
    }

    [v90 setLastOpenedDate:v103];

    v104 = v173;
    sub_100030C74(v83 + *(v191 + 80), v173, &qword_100106E38, &unk_1000CB730);
    v105 = 1;
    if (v85(v104, 1, v75) != 1)
    {
      v106 = v169;
      (*(v187 + 32))(v169, v104, v75);
      sub_1000B4E40();
      (v183)(v106, v75);
      v105 = 0;
    }

    v107 = v178;
    (v182)(v178, v105, 1, v75);
    if (v85(v107, 1, v75) == 1)
    {
      v108 = 0;
    }

    else
    {
      v108 = sub_1000B4E30().super.isa;
      (v183)(v107, v75);
    }

    [v90 setLastActivitySummaryViewedDate:v108];

    v109 = v174;
    sub_100030C74(v83 + *(v191 + 84), v174, &qword_100106E38, &unk_1000CB730);
    if (v85(v109, 1, v75) != 1)
    {
      v110 = v169;
      (*(v187 + 32))(v169, v109, v75);
      sub_1000B4E40();
      (v183)(v110, v75);
    }

    v111 = v180;
    (v182)();
    if (v85(v111, 1, v75) == 1)
    {
      v112 = 0;
    }

    else
    {
      v113 = v111;
      v112 = sub_1000B4E30().super.isa;
      (v183)(v113, v75);
    }

    [v90 setLastActivityRecentUpdatesViewedDate:v112];

    v114 = v175;
    sub_100030C74(v83 + *(v191 + 88), v175, &qword_100106E38, &unk_1000CB730);
    v115 = 1;
    if (v177(v114, 1, v75) != 1)
    {
      v116 = v169;
      (*(v187 + 32))(v169, v114, v75);
      sub_1000B4E40();
      (v183)(v116, v75);
      v115 = 0;
    }

    v117 = v179;
    (v182)(v179, v115, 1, v75);
    v118 = v177;
    if (v177(v117, 1, v75) == 1)
    {
      v119 = 0;
    }

    else
    {
      v119 = sub_1000B4E30().super.isa;
      (v183)(v117, v75);
    }

    [v90 setRecentUpdatesGenerationDate:v119];

    v120 = v176;
    sub_100030C74(v83 + *(v191 + 92), v176, &qword_100106E38, &unk_1000CB730);
    v121 = 1;
    if (v118(v120, 1, v75) != 1)
    {
      v122 = v169;
      (*(v187 + 32))(v169, v120, v75);
      sub_1000B4E40();
      (v183)(v122, v75);
      v121 = 0;
    }

    v123 = v181;
    (v182)(v181, v121, 1, v75);
    if (v118(v123, 1, v75) == 1)
    {
      v124 = 0;
    }

    else
    {
      v124 = sub_1000B4E30().super.isa;
      (v183)(v123, v75);
    }

    v125 = v190;
    v126 = v184;
    v127 = v186;
    [v90 setLastAttributionsViewedDate:v124];

    v128 = *(v83 + *(v191 + 104));
    if (v128)
    {
      v129 = objc_allocWithZone(ICOutlineState);
      sub_10004E6EC(&qword_100106FE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v130 = sub_1000B5820().super.isa;
      v131 = [v129 initWithCollapsedUUIDs:v130];

      v128 = [v131 data];
      if (v128)
      {
        v132 = sub_1000B4DF0();
        v134 = v133;

        v128 = sub_1000B4DE0().super.isa;
        sub_1000449D4(v132, v134);
      }
    }

    [v90 setOutlineStateData:v128];

    v135 = *(v191 + 112);
    if (*(v83 + v135))
    {
      v136 = *(v83 + v135);
    }

    else
    {
      v136 = sub_100030574(_swiftEmptyArrayStorage);
    }

    v183 = v136;
    v138 = (v136 + 64);
    v137 = *(v136 + 64);
    v181 = v138;
    v139 = 1 << *(v138 - 32);
    v140 = -1;
    if (v139 < 64)
    {
      v140 = ~(-1 << v139);
    }

    v141 = v140 & v137;
    v180 = ((v139 + 63) >> 6);
    v182 = (v127 + 16);
    v191 = v127 + 32;
    v187 = v127 + 8;

    v142 = 0;
    v143 = v185;
    if (v141)
    {
      while (1)
      {
        v144 = v142;
LABEL_69:
        v147 = __clz(__rbit64(v141));
        v141 &= v141 - 1;
        v148 = v147 | (v144 << 6);
        v149 = v183;
        v151 = v185;
        v150 = v186;
        (*(v186 + 16))(v185, *(v183 + 6) + *(v186 + 72) * v148, v125);
        v152 = (*(v149 + 7) + 16 * v148);
        v154 = *v152;
        v153 = v152[1];
        v155 = sub_100030480(&qword_100107010, &qword_1000CAE88);
        v156 = v125;
        v157 = &v184[*(v155 + 48)];
        v158 = *(v150 + 32);
        v143 = v151;
        v126 = v184;
        v158(v184, v143, v156);
        *v157 = v154;
        *(v157 + 1) = v153;
        (*(*(v155 - 8) + 56))(v126, 0, 1, v155);

        v146 = v144;
LABEL_70:
        v159 = v189;
        sub_10004D4F4(v126, v189, &qword_100107008, &qword_1000CAE80);
        v160 = sub_100030480(&qword_100107010, &qword_1000CAE88);
        if ((*(*(v160 - 8) + 48))(v159, 1, v160) == 1)
        {
          break;
        }

        v125 = v190;
        (*v191)(v143, v159, v190);
        v161 = sub_1000B55F0();

        v162 = sub_1000B4ED0().super.isa;
        [v188 addUserID:v161 forReplicaID:v162];

        result = (*v187)(v143, v125);
        v142 = v146;
        if (!v141)
        {
          goto LABEL_62;
        }
      }

      return v188;
    }

    else
    {
LABEL_62:
      if (v180 <= v142 + 1)
      {
        v145 = (v142 + 1);
      }

      else
      {
        v145 = v180;
      }

      v146 = v145 - 1;
      while (1)
      {
        v144 = v142 + 1;
        if (__OFADD__(v142, 1))
        {
          break;
        }

        if (v144 >= v180)
        {
          v163 = sub_100030480(&qword_100107010, &qword_1000CAE88);
          (*(*(v163 - 8) + 56))(v126, 1, 1, v163);
          v141 = 0;
          goto LABEL_70;
        }

        v141 = *&v181[8 * v144];
        ++v142;
        if (v141)
        {
          goto LABEL_69;
        }
      }

      __break(1u);
    }
  }

  return result;
}

id sub_100046FB8(id a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for ICNoteArchiveModel(0);
  v9 = (v3 + *(v8 + 100));
  v10 = v9[1];
  if (!v10)
  {
    v12 = (v3 + *(v8 + 96));
    v13 = v12[5];
    v50 = v12[4];
    v51 = v13;
    v14 = *(v12 + 12);
    v52 = v14;
    v15 = v12[1];
    aBlock = *v12;
    v47 = v15;
    v16 = v12[3];
    v48 = v12[2];
    v49 = v16;
    if (!v51)
    {
      return 0;
    }

    v17 = v12[3];
    v55 = v12[2];
    v56 = v17;
    v18 = v12[5];
    v57 = v12[4];
    v19 = v12[1];
    v53 = *v12;
    v54 = v19;
    v58 = v51;
    v59 = v14;
    v44[4] = v57;
    v44[5] = v18;
    v45 = *(v12 + 12);
    v44[0] = v53;
    v44[1] = v19;
    v44[2] = v55;
    v44[3] = v17;
    sub_10004D408(v44, v43);
    sub_10008A284(a1);
    v20 = [a1 noteData];
    if (v20)
    {
      v21 = v20;
      isa = sub_1000B4DE0().super.isa;
      [v21 setData:isa];
    }

    a1 = [a1 noteData];
    sub_100036320(&aBlock, &qword_100106FF0, &qword_1000CAE68);
    return a1;
  }

  v11 = sub_100090684(a2, a1, &off_1000F6798, a3, *v9, v10, v9[2]);
  if (v4)
  {
    return a1;
  }

  v60 = v11;
  result = [a1 textStorage];
  if (result)
  {
    v24 = result;
    [result beginSkippingTimestampUpdates];
    v25 = [v24 mergeableString];
    v26 = v24;
    v27 = [v26 ic_range];
    v29 = v28;
    v30 = [objc_allocWithZone(NSAttributedString) init];
    [v25 replaceCharactersInRange:v27 withAttributedString:{v29, v30}];

    v31 = [v26 mergeableString];
    v32.super.isa = v60;
    sub_1000B5A70(v32, 0);

    v33 = [v26 mergeableString];
    v42 = [v26 ic_range];
    v35 = v34;

    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_10004D49C;
    *(v37 + 24) = v36;
    *&v48 = sub_10004D4B4;
    *(&v48 + 1) = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v47 = sub_10004B58C;
    *(&v47 + 1) = &unk_1000F40A8;
    v38 = _Block_copy(&aBlock);
    v39 = a1;

    [v33 enumerateEditsInRange:v42 usingBlock:{v35, v38}];

    _Block_release(v38);
    LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

    if ((v38 & 1) == 0)
    {
      [v26 endSkippingTimestampUpdates];
      v40 = [v39 noteData];
      if (v40)
      {
        v41 = v40;
        [v40 setNeedsToBeSaved:1];
      }

      a1 = [v39 noteData];

      return a1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100047400(uint64_t a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100106FF8, &qword_1000CAE70);
  __chkstk_darwin(v5 - 8, v6);
  v41 = v34 - v7;
  v8 = sub_100030480(&qword_100107000, &qword_1000CAE78);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v34 - v10;
  v12 = sub_1000B5230();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v38 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = _s8ActivityVMa(0);
  v16 = *(v37 - 8);
  __chkstk_darwin(v37, v17);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + *(type metadata accessor for ICNoteArchiveModel(0) + 108));
  if (!v20)
  {
    return 0;
  }

  v34[1] = a1;
  v34[2] = v2;
  v48 = _swiftEmptyArrayStorage;
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v23 = *(v16 + 72);
    v39 = (v13 + 48);
    v40 = v23;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v42 = v19;
    while (1)
    {
      sub_10004E7F0(v22, v19, _s8ActivityVMa);
      IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v28 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v43[0] = IsAlexandriaDemoModeEnabled;
      v43[1] = v28;
      v45 = 0;
      v46 = 0;
      v44 = 0;
      v47 = 2;
      sub_100052240(v43, v11);
      if ((*v39)(v11, 1, v12) == 1)
      {
        break;
      }

      v29 = v38;
      (*v36)(v38, v11, v12);
      sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
      v30 = v41;
      sub_100052A3C(v43, v41);
      v31 = sub_1000B59F0();
      v32 = v30;
      v19 = v42;
      sub_100036320(v32, &qword_100106FF8, &qword_1000CAE70);
      (*v35)(v29, v12);
      sub_10004E858(v19, _s8ActivityVMa);
      if (v31)
      {
        goto LABEL_5;
      }

LABEL_8:
      v22 += v40;
      if (!--v21)
      {
        goto LABEL_12;
      }
    }

    sub_100036320(v11, &qword_100107000, &qword_1000CAE78);
    sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
    v24 = v11;
    v25 = v41;
    sub_100052A3C(v43, v41);
    v19 = v42;
    sub_1000B5A00();
    v26 = v25;
    v11 = v24;
    sub_100036320(v26, &qword_100106FF8, &qword_1000CAE70);
    sub_10004E858(v19, _s8ActivityVMa);
LABEL_5:
    sub_1000B5780();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000B57C0();
    }

    sub_1000B57F0();
    goto LABEL_8;
  }

LABEL_12:
  sub_1000B5A20();
  return sub_1000B5A10();
}

uint64_t sub_1000478AC()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100106FB8);
  sub_100036380(v0, qword_100106FB8);
  return sub_1000B5510();
}

unint64_t sub_1000478F8(char a1)
{
  result = 0x6E65644965707974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6954746E65726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x4164657461657263;
      break;
    case 7:
      result = 0x6465696669646F6DLL;
      break;
    case 8:
      result = 0x656C746974;
      break;
    case 9:
      result = 0x64656E6E69507369;
      break;
    case 10:
      result = 0x4E6B636975517369;
      break;
    case 11:
      result = 0x7974537265706170;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0x7441646577656976;
      break;
    case 16:
    case 22:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x6574707972636E65;
      break;
    case 21:
      result = 0x746E65746E6F63;
      break;
    case 23:
      result = 0x6974697669746361;
      break;
    case 24:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100047C64()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B5FC0(v1);
  return sub_1000B5FE0();
}

Swift::Int sub_100047CD8(uint64_t a1)
{
  v2 = *v1;
  sub_1000B5FB0();
  sub_1000B5FC0(v2);
  return sub_1000B5FE0();
}

uint64_t sub_100047D24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10004C2E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100047D64(uint64_t a1)
{
  v2 = sub_10004E1C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100047DA0(uint64_t a1)
{
  v2 = sub_10004E1C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100047DDC(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100107210, &qword_1000CB3B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v21 - v8;
  sub_1000458B4(a1, a1[3]);
  sub_10004E1C0();
  sub_1000B6020();
  LOBYTE(v35[0]) = *v3;
  LOBYTE(v28) = 0;
  sub_10004E214();
  sub_1000B5EB0();
  if (!v2)
  {
    LOBYTE(v35[0]) = 1;
    sub_1000B5E70();
    LOBYTE(v35[0]) = 2;
    sub_1000B5E20();
    LOBYTE(v35[0]) = 3;
    sub_1000B5E20();
    LOBYTE(v35[0]) = 4;
    sub_1000B5E30();
    LOBYTE(v35[0]) = 5;
    sub_1000B5E30();
    v42 = type metadata accessor for ICNoteArchiveModel(0);
    LOBYTE(v35[0]) = 6;
    sub_1000B4EA0();
    sub_10004E6EC(&qword_100107228, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B5E60();
    LOBYTE(v35[0]) = 7;
    sub_1000B5E60();
    LOBYTE(v35[0]) = 8;
    sub_1000B5E20();
    LOBYTE(v35[0]) = 9;
    sub_1000B5E30();
    LOBYTE(v35[0]) = 10;
    sub_1000B5E30();
    LOBYTE(v35[0]) = v3[v42[15]];
    LOBYTE(v28) = 11;
    sub_10004E268();
    sub_1000B5E60();
    LOBYTE(v35[0]) = v3[v42[16]];
    LOBYTE(v28) = 12;
    sub_10004E2BC();
    sub_1000B5E60();
    LOBYTE(v35[0]) = v3[v42[17]];
    LOBYTE(v28) = 13;
    sub_10004E310();
    sub_1000B5E60();
    LOBYTE(v35[0]) = 14;
    sub_1000B5E20();
    LOBYTE(v35[0]) = 15;
    sub_1000B5E60();
    LOBYTE(v35[0]) = 16;
    sub_1000B5E60();
    LOBYTE(v35[0]) = 17;
    sub_1000B5E60();
    LOBYTE(v35[0]) = 18;
    sub_1000B5E60();
    v41[0] = 19;
    sub_1000B5E60();
    v10 = &v3[v42[24]];
    v11 = *(v10 + 3);
    v12 = *(v10 + 5);
    v38 = *(v10 + 4);
    v39 = v12;
    v13 = *(v10 + 1);
    v35[0] = *v10;
    v35[1] = v13;
    v14 = *(v10 + 3);
    v16 = *v10;
    v15 = *(v10 + 1);
    v36 = *(v10 + 2);
    v37 = v14;
    v17 = *(v10 + 5);
    v32 = v38;
    v33 = v17;
    v28 = v16;
    v29 = v15;
    v40 = *(v10 + 12);
    v34 = *(v10 + 12);
    v30 = v36;
    v31 = v11;
    v27 = 20;
    sub_100030C74(v35, v25, &qword_100106FF0, &qword_1000CAE68);
    sub_10004E364();
    sub_1000B5E60();
    v25[4] = v32;
    v25[5] = v33;
    v26 = v34;
    v25[0] = v28;
    v25[1] = v29;
    v25[2] = v30;
    v25[3] = v31;
    sub_100036320(v25, &qword_100106FF0, &qword_1000CAE68);
    v18 = &v3[v42[25]];
    v19 = *(v18 + 2);
    v23 = *v18;
    v24 = v19;
    v22 = 21;
    sub_10004E3B8();
    sub_1000B5E60();
    *&v23 = *&v3[v42[26]];
    v22 = 22;
    sub_100030480(&qword_1001070C0, &qword_1000CAEA8);
    sub_10004E5B4(&qword_100107258, &qword_100107260, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <> Set<A>);
    sub_1000B5E60();
    *&v23 = *&v3[v42[27]];
    v22 = 23;
    sub_100030480(&qword_1001070D0, &qword_1000CAEB0);
    sub_10004E650(&qword_100107268, &qword_100107270, &unk_1000CB59C, &protocol conformance descriptor for <A> [A]);
    sub_1000B5E60();
    *&v23 = *&v3[v42[28]];
    v22 = 24;
    sub_100030480(&unk_1001070E0, &qword_1000CAEB8);
    sub_10004E40C();
    sub_1000B5E60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100048648@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v5 = __chkstk_darwin(v3 - 8, v4);
  v107 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5, v7);
  v99 = v95 - v9;
  v11 = __chkstk_darwin(v8, v10);
  v98 = v95 - v12;
  v14 = __chkstk_darwin(v11, v13);
  v97 = v95 - v15;
  v17 = __chkstk_darwin(v14, v16);
  v101 = v95 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v102 = v95 - v21;
  __chkstk_darwin(v20, v22);
  v103 = v95 - v23;
  v24 = sub_100030480(&qword_100107280, &qword_1000CB3B8);
  v104 = *(v24 - 8);
  v105 = v24;
  __chkstk_darwin(v24, v25);
  v27 = v95 - v26;
  v28 = type metadata accessor for ICNoteArchiveModel(0);
  v30 = __chkstk_darwin(v28, v29);
  v32 = v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v30 + 40);
  v34 = sub_1000B4EA0();
  v35 = *(*(v34 - 8) + 56);
  v117 = v33;
  v35(&v32[v33], 1, 1, v34);
  v115 = v28[11];
  v35(&v32[v115], 1, 1, v34);
  v113 = v28[19];
  v35(&v32[v113], 1, 1, v34);
  v112 = v28[20];
  v35(&v32[v112], 1, 1, v34);
  v111 = v28[21];
  v35(&v32[v111], 1, 1, v34);
  v110 = v28[22];
  v35(&v32[v110], 1, 1, v34);
  v109 = v28[23];
  v35(&v32[v109], 1, 1, v34);
  v36 = v28[24];
  v139 = v32;
  v37 = &v32[v36];
  *(v37 + 12) = 0;
  *(v37 + 4) = 0u;
  *(v37 + 5) = 0u;
  *(v37 + 2) = 0u;
  *(v37 + 3) = 0u;
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v108 = v37;
  v38 = a1[3];
  v114 = a1;
  sub_1000458B4(a1, v38);
  sub_10004E1C0();
  v106 = v27;
  v39 = v116;
  sub_1000B6010();
  if (v39)
  {
    v116 = v39;
    sub_100035DA8(v114);
    swift_bridgeObjectRelease_n();
    v107 = 0;
    v43 = 0;
    v44 = 0;
    v114 = 0;
LABEL_4:
    v45 = v139;
    sub_100036320(&v139[v117], &qword_100106E38, &unk_1000CB730);
    sub_100036320(&v45[v115], &qword_100106E38, &unk_1000CB730);

    sub_100036320(&v45[v113], &qword_100106E38, &unk_1000CB730);
    sub_100036320(&v45[v112], &qword_100106E38, &unk_1000CB730);
    sub_100036320(&v45[v111], &qword_100106E38, &unk_1000CB730);
    sub_100036320(&v45[v110], &qword_100106E38, &unk_1000CB730);
    sub_100036320(&v45[v109], &qword_100106E38, &unk_1000CB730);
    v46 = *(v108 + 5);
    v136 = *(v108 + 4);
    v137 = v46;
    v138 = *(v108 + 12);
    v47 = *(v108 + 1);
    v132 = *v108;
    v133 = v47;
    v48 = *(v108 + 3);
    v134 = *(v108 + 2);
    v135 = v48;
    sub_100036320(&v132, &qword_100106FF0, &qword_1000CAE68);
    sub_10004E4C8(v44, v43, v107);
  }

  v40 = v103;
  v96 = v28;
  v41 = v107;
  LOBYTE(v129[0]) = 0;
  sub_1000316AC();
  sub_1000B5E00();
  v42 = v139;
  *v139 = v132;
  LOBYTE(v132) = 1;
  *(v42 + 1) = sub_1000B5DC0();
  *(v42 + 2) = v50;
  LOBYTE(v132) = 2;
  *(v42 + 3) = sub_1000B5D70();
  *(v42 + 4) = v51;
  v95[1] = v51;
  LOBYTE(v132) = 3;
  *(v42 + 5) = sub_1000B5D70();
  *(v42 + 6) = v52;
  v95[0] = v52;
  LOBYTE(v132) = 4;
  v42[56] = sub_1000B5D80();
  LOBYTE(v132) = 5;
  v42[57] = sub_1000B5D80();
  LOBYTE(v132) = 6;
  sub_10004E6EC(&qword_100107288, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1000B5DB0();
  sub_10004CDC8(v40, &v42[v117]);
  LOBYTE(v132) = 7;
  v53 = v102;
  sub_1000B5DB0();
  sub_10004CDC8(v53, &v42[v115]);
  LOBYTE(v132) = 8;
  v54 = sub_1000B5D70();
  v116 = 0;
  v56 = &v139[v96[12]];
  *v56 = v54;
  v56[1] = v55;
  v102 = v55;
  LOBYTE(v132) = 9;
  v57 = v116;
  v58 = sub_1000B5D80();
  v116 = v57;
  if (v57 || (v139[v96[13]] = v58, LOBYTE(v132) = 10, v59 = v116, v60 = sub_1000B5D80(), (v116 = v59) != 0) || (v139[v96[14]] = v60, LOBYTE(v129[0]) = 11, sub_10004DE4C(), v61 = v116, sub_1000B5DB0(), (v116 = v61) != 0) || (v139[v96[15]] = v132, LOBYTE(v129[0]) = 12, sub_10004DF2C(), v62 = v116, sub_1000B5DB0(), (v116 = v62) != 0) || (v139[v96[16]] = v132, LOBYTE(v129[0]) = 13, sub_10004E00C(), v63 = v116, sub_1000B5DB0(), (v116 = v63) != 0) || (v139[v96[17]] = v132, LOBYTE(v132) = 14, v64 = v116, v65 = sub_1000B5D70(), v103 = v66, (v116 = v64) != 0))
  {
    (*(v104 + 8))(v106, v105);
    v67 = 0;
    v44 = 0;
    v43 = 0;
    v107 = 0;
    v103 = 0;
LABEL_12:
    v68 = v114;
    v114 = v67;
    sub_100035DA8(v68);

    goto LABEL_4;
  }

  v69 = &v139[v96[18]];
  v70 = v103;
  *v69 = v65;
  v69[1] = v70;
  LOBYTE(v132) = 15;
  v71 = v116;
  sub_1000B5DB0();
  v116 = v71;
  if (v71 || (sub_10004CDC8(v101, &v139[v113]), LOBYTE(v132) = 16, v72 = v116, sub_1000B5DB0(), (v116 = v72) != 0) || (sub_10004CDC8(v97, &v139[v112]), LOBYTE(v132) = 17, v73 = v116, sub_1000B5DB0(), (v116 = v73) != 0) || (sub_10004CDC8(v98, &v139[v111]), LOBYTE(v132) = 18, v74 = v116, sub_1000B5DB0(), (v116 = v74) != 0) || (sub_10004CDC8(v99, &v139[v110]), LOBYTE(v132) = 19, v75 = v116, sub_1000B5DB0(), (v116 = v75) != 0) || (sub_10004CDC8(v41, &v139[v109]), v131 = 20, sub_10004E50C(), v76 = v116, sub_1000B5DB0(), (v116 = v76) != 0) || (v126 = v136, v127 = v137, v128 = v138, v122 = v132, v123 = v133, v124 = v134, v125 = v135, v77 = v108, v78 = *(v108 + 1), v129[0] = *v108, v129[1] = v78, v79 = *(v108 + 2), v80 = *(v108 + 3), v81 = *(v108 + 4), v82 = *(v108 + 5), v130 = *(v108 + 12), v129[4] = v81, v129[5] = v82, v129[2] = v79, v129[3] = v80, sub_100036320(v129, &qword_100106FF0, &qword_1000CAE68), v83 = v127, *(v77 + 4) = v126, *(v77 + 5) = v83, *(v77 + 12) = v128, v84 = v123, *v77 = v122, *(v77 + 1) = v84, v85 = v125, *(v77 + 2) = v124, *(v77 + 3) = v85, v118 = 21, sub_10004E560(), v86 = v116, sub_1000B5DB0(), (v116 = v86) != 0))
  {
    (*(v104 + 8))(v106, v105);
    v67 = 0;
    v44 = 0;
    v43 = 0;
    v107 = 0;
    goto LABEL_12;
  }

  v87 = &v139[v96[25]];
  v88 = v120;
  v89 = v121;
  v44 = v119;
  *v87 = v119;
  v87[1] = v88;
  v43 = v88;
  v107 = v89;
  v87[2] = v89;
  sub_100030480(&qword_1001070C0, &qword_1000CAEA8);
  v118 = 22;
  sub_10004E5B4(&qword_1001072A0, &qword_1001072A8, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <> Set<A>);
  v90 = v116;
  sub_1000B5DB0();
  v116 = v90;
  if (v90)
  {
    (*(v104 + 8))(v106, v105);
    v67 = 0;
    goto LABEL_12;
  }

  v67 = v119;
  *&v139[v96[26]] = v119;
  sub_100030480(&qword_1001070D0, &qword_1000CAEB0);
  v118 = 23;
  sub_10004E650(&qword_1001072B0, &qword_1001072B8, &unk_1000CB5C4, &protocol conformance descriptor for <A> [A]);
  v91 = v116;
  sub_1000B5DB0();
  v116 = v91;
  if (v91 || (*&v139[v96[27]] = v119, sub_100030480(&unk_1001070E0, &qword_1000CAEB8), v118 = 24, sub_10004E734(), v92 = v116, sub_1000B5DB0(), (v116 = v92) != 0))
  {
    (*(v104 + 8))(v106, v105);
    goto LABEL_12;
  }

  v93 = v96[28];
  (*(v104 + 8))(v106, v105);
  v94 = v139;
  *&v139[v93] = v119;
  sub_10004E7F0(v94, v100, type metadata accessor for ICNoteArchiveModel);
  sub_100035DA8(v114);
  return sub_10004E858(v94, type metadata accessor for ICNoteArchiveModel);
}

void sub_10004955C(id a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v279 = a2;
  v5 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  __chkstk_darwin(v5 - 8, v6);
  v282 = &v264 - v7;
  v8 = sub_100030480(&qword_100106FD8, &qword_1000CAE58);
  __chkstk_darwin(v8 - 8, v9);
  v287 = &v264 - v10;
  v296 = sub_100030480(&qword_100106AF0, &qword_1000CAE60);
  v275 = *(v296 - 8);
  __chkstk_darwin(v296, v11);
  v281 = &v264 - v12;
  v293 = sub_1000B4F00();
  v268 = *(v293 - 8);
  v14 = __chkstk_darwin(v293, v13);
  v280 = &v264 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14, v16);
  v294 = &v264 - v18;
  __chkstk_darwin(v17, v19);
  v267 = &v264 - v20;
  v21 = _s8ActivityVMa(0);
  v295 = *(v21 - 8);
  __chkstk_darwin(v21 - 8, v22);
  v270 = &v264 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v26 = __chkstk_darwin(v24 - 8, v25);
  v289 = (&v264 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v26, v28);
  v288 = (&v264 - v30);
  v32 = __chkstk_darwin(v29, v31);
  v285 = &v264 - v33;
  v35 = __chkstk_darwin(v32, v34);
  v277 = (&v264 - v36);
  v38 = __chkstk_darwin(v35, v37);
  v291 = (&v264 - v39);
  v41 = __chkstk_darwin(v38, v40);
  v43 = &v264 - v42;
  __chkstk_darwin(v41, v44);
  v46 = &v264 - v45;
  *a3 = 3;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 514;
  v47 = type metadata accessor for ICNoteArchiveModel(0);
  v48 = v47[10];
  v49 = sub_1000B4EA0();
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v52 = v50 + 56;
  v51(a3 + v48, 1, 1, v49);
  v292 = v47[11];
  v51(a3 + v292, 1, 1, v49);
  v53 = (a3 + v47[12]);
  *v53 = 0;
  v53[1] = 0;
  v271 = v53;
  v273 = v47[19];
  v51(a3 + v273, 1, 1, v49);
  v274 = v47[20];
  v51(a3 + v274, 1, 1, v49);
  v276 = v47[21];
  v51(a3 + v276, 1, 1, v49);
  v278 = v47[22];
  v51(v278 + a3, 1, 1, v49);
  v284 = v47[23];
  v51(&v284[a3], 1, 1, v49);
  v54 = a3 + v47[24];
  *(v54 + 96) = 0;
  *(v54 + 64) = 0u;
  *(v54 + 80) = 0u;
  *(v54 + 32) = 0u;
  *(v54 + 48) = 0u;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  v264 = v54;
  v55 = (a3 + v47[25]);
  *v55 = 0;
  v55[1] = 0;
  v269 = v55;
  v55[2] = 0;
  v272 = v47[26];
  *(v272 + a3) = 0;
  v266 = v47[27];
  *(a3 + v266) = 0;
  v56 = v47[28];
  v283 = a3;
  v265 = v56;
  *(a3 + v56) = 0;
  v57 = [a1 identifier];
  v286 = a1;
  if (v57)
  {
    v58 = v57;
    v59 = sub_1000B5620();
    v61 = v60;

    a1 = v286;
  }

  else
  {
    v59 = 0;
    v61 = 0xE000000000000000;
  }

  v62 = v283;
  *(v283 + 8) = v59;
  *(v62 + 16) = v61;
  v63 = [a1 creationDate];
  if (v63)
  {
    v64 = v63;
    sub_1000B4E70();

    v65 = 0;
  }

  else
  {
    v65 = 1;
  }

  v66 = 1;
  v51(v46, v65, 1, v49);
  sub_10004CDC8(v46, v283 + v48);
  v67 = [a1 modificationDate];
  if (v67)
  {
    v68 = v67;
    sub_1000B4E70();

    v66 = 0;
  }

  v51(v43, v66, 1, v49);
  v69 = v47[13];
  v70 = v47[14];
  v72 = v47[15];
  v71 = v47[16];
  v290 = v47[17];
  v73 = v283;
  sub_10004CDC8(v43, v283 + v292);
  v74 = v286;
  *(v73 + v69) = [v286 isPinned];
  *(v73 + v70) = [v74 isSystemPaper];
  v75 = v74;
  v76 = [v74 paperStyleType];
  if (v76 < 0)
  {
    goto LABEL_150;
  }

  *(v73 + v72) = sub_10004CA8C(v76);
  *(v73 + v71) = sub_10004CB90([v74 preferredBackgroundType]);
  v77 = sub_10004CC90([v74 attachmentViewType]);
  *(v73 + v290) = v77;
  v78 = [v74 hostApplicationIdentifier];
  if (v78)
  {
    v79 = v78;
    v80 = sub_1000B5620();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  v69 = v287;
  v83 = v291;
  v72 = v283;
  v84 = (v283 + v47[18]);
  *v84 = v80;
  v84[1] = v82;
  if (*(v279 + 58) & 1) != 0 || (*(v279 + 59))
  {
    v85 = [v75 lastOpenedDate];
    if (v85)
    {
      v86 = v85;
      sub_1000B4E70();

      v87 = 0;
    }

    else
    {
      v87 = 1;
    }

    v88 = v289;
    v89 = v288;
    v51(v83, v87, 1, v49);
    sub_10004CDC8(v83, v72 + v273);
    v90 = [v75 lastActivitySummaryViewedDate];
    if (v90)
    {
      v91 = v277;
      v92 = v90;
      sub_1000B4E70();

      v93 = v91;
    }

    else
    {
      v93 = v277;
    }

    v94 = v93;
    (v51)();
    sub_10004CDC8(v94, v72 + v274);
    v95 = [v75 lastActivityRecentUpdatesViewedDate];
    if (v95)
    {
      v96 = v285;
      v97 = v95;
      sub_1000B4E70();

      v98 = v96;
    }

    else
    {
      v98 = v285;
    }

    v99 = 1;
    v100 = v98;
    (v51)();
    sub_10004CDC8(v100, v72 + v276);
    v101 = [v75 recentUpdatesGenerationDate];
    if (v101)
    {
      v102 = v101;
      sub_1000B4E70();

      v99 = 0;
    }

    v103 = 1;
    v51(v89, v99, 1, v49);
    sub_10004CDC8(v89, v278 + v72);
    v104 = [v75 lastAttributionsViewedDate];
    if (v104)
    {
      v105 = v104;
      sub_1000B4E70();

      v103 = 0;
    }

    v106 = v284;
    v51(v88, v103, 1, v49);
    sub_10004CDC8(v88, &v106[v72]);
  }

  v51 = v279;
  if (*(v279 + 60))
  {
    v107 = v75;
    if ([v107 isPasswordProtectedAndLocked])
    {

      sub_10004CE38(v51);
      if (qword_100106A28 != -1)
      {
        swift_once();
      }

      v108 = sub_1000B5530();
      sub_100036380(v108, qword_100106FB8);
      v109 = v107;
      v110 = sub_1000B5520();
      v111 = sub_1000B5920();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *&v299[0] = v113;
        *v112 = 136315138;
        v114 = [v109 identifier];
        if (v114)
        {
          v115 = v114;
          v116 = sub_1000B5620();
          v118 = v117;
        }

        else
        {
          v116 = 9732322;
          v118 = 0xA300000000000000;
        }

        v162 = sub_100062B20(v116, v118, v299);

        *(v112 + 4) = v162;
        v163 = "Pages Handoff: Note is locked — skipping {identifier: %s}";
LABEL_147:
        _os_log_impl(&_mh_execute_header, v110, v111, v163, v112, 0xCu);
        sub_100035DA8(v113);

        return;
      }

      goto LABEL_48;
    }

    v126 = [v107 textStorage];
    if (v126)
    {
      v127 = v126;
      v128 = [v126 mergeableString];
      sub_10004D3AC(v51, v299);
      v129 = v128;
      v130 = v107;
LABEL_53:
      v151 = sub_1000A1B30(v129, v130, v51);
      v153 = v152;
      v155 = v154;

      v274 = 0;
      v156 = v269;
      *v269 = v151;
      v156[1] = v153;
      v156[2] = v155;
      goto LABEL_73;
    }

    v157 = v72;

    if (qword_100106A28 != -1)
    {
      swift_once();
    }

    v158 = sub_1000B5530();
    sub_100036380(v158, qword_100106FB8);
    v159 = v107;
    v160 = sub_1000B5520();
    v161 = sub_1000B5920();

    if (os_log_type_enabled(v160, v161))
    {
      goto LABEL_68;
    }

    goto LABEL_72;
  }

  if (*v279)
  {
    v119 = v75;
    if ([v119 isPasswordProtectedAndLocked])
    {

      sub_10004CE38(v51);
      if (qword_100106A28 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_154;
    }

    v138 = [v119 textStorage];
    if (v138)
    {
      v139 = v138;
      v140 = [v138 mergeableString];
      sub_10004D3AC(v51, v299);
      v141 = sub_1000A2420(v140, v119, v51);
      v142 = v72;
      v144 = v143;
      v146 = v145;
      sub_10004CE38(v51);

      v274 = 0;
      v147 = v269;
      *v269 = v141;
      v147[1] = v144;
      v72 = v142;
      v147[2] = v146;
LABEL_73:
      v174 = v272;
      goto LABEL_74;
    }

    v157 = v72;

    if (qword_100106A28 != -1)
    {
      swift_once();
    }

    v164 = sub_1000B5530();
    sub_100036380(v164, qword_100106FB8);
    v159 = v119;
    v160 = sub_1000B5520();
    v161 = sub_1000B5920();

    if (os_log_type_enabled(v160, v161))
    {
LABEL_68:
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      *&v299[0] = v167;
      *v166 = 136315138;
      v168 = [v159 identifier];
      if (v168)
      {
        v169 = v168;
        v170 = sub_1000B5620();
        v172 = v171;

        v69 = v287;
      }

      else
      {
        v170 = 9732322;
        v172 = 0xA300000000000000;
      }

      v173 = sub_100062B20(v170, v172, v299);

      *(v166 + 4) = v173;
      _os_log_impl(&_mh_execute_header, v160, v161, "Note doesn't have a text storage — skipping {identifier: %s}", v166, 0xCu);
      sub_100035DA8(v167);
    }

LABEL_72:

    v274 = 0;
    v72 = v157;
    goto LABEL_73;
  }

  if (![v75 isPasswordProtected])
  {
    v148 = [v75 textStorage];
    if (v148)
    {
      v127 = v148;
      v149 = [v148 mergeableString];
      v150 = v75;
      sub_10004D3AC(v51, v299);
      v129 = v149;
      v130 = v150;
      goto LABEL_53;
    }

    v157 = v72;
    if (qword_100106A28 != -1)
    {
      swift_once();
    }

    v165 = sub_1000B5530();
    sub_100036380(v165, qword_100106FB8);
    v159 = v75;
    v160 = sub_1000B5520();
    v161 = sub_1000B5920();

    if (os_log_type_enabled(v160, v161))
    {
      goto LABEL_68;
    }

    goto LABEL_72;
  }

  v131 = [v75 noteData];
  if (v131)
  {
    v132 = v131;
    v133 = [v131 data];

    v134 = v264;
    if (v133)
    {
      v135 = sub_1000B4DF0();
      v137 = v136;
    }

    else
    {
      v135 = 0;
      v137 = 0xC000000000000000;
    }
  }

  else
  {
    v135 = 0;
    v137 = 0xC000000000000000;
    v134 = v264;
  }

  v249 = v75;
  sub_10008A8C4(v249, v135, v137, v297);

  v250 = *(v134 + 80);
  v299[4] = *(v134 + 64);
  v299[5] = v250;
  v300 = *(v134 + 96);
  v251 = *(v134 + 16);
  v299[0] = *v134;
  v299[1] = v251;
  v252 = *(v134 + 48);
  v299[2] = *(v134 + 32);
  v299[3] = v252;
  sub_100036320(v299, &qword_100106FF0, &qword_1000CAE68);
  v253 = v297[5];
  *(v134 + 64) = v297[4];
  *(v134 + 80) = v253;
  *(v134 + 96) = v298;
  v254 = v297[1];
  *v134 = v297[0];
  *(v134 + 16) = v254;
  v255 = v297[3];
  *(v134 + 32) = v297[2];
  *(v134 + 48) = v255;
  v256 = [v249 title];
  if (v256)
  {
    v257 = v256;
    v258 = sub_1000B5620();
    v260 = v259;

    v261 = v260;
  }

  else
  {
    v258 = 0;
    v261 = 0;
  }

  v174 = v272;
  v262 = v271;
  *v271 = v258;
  v262[1] = v261;
  v274 = v261;
LABEL_74:
  v175 = [v75 outlineState];
  v176 = [v175 collapsedUUIDs];

  sub_10004E6EC(&qword_100106FE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v177 = sub_1000B5830();

  *&v174[v72] = v177;
  if (*(v51 + 56))
  {
    v178 = v75;
    v52 = sub_1000B5A10();

    if (v52 >> 62)
    {
      goto LABEL_151;
    }

    v179 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_77:
    v180 = v270;
    if (v179)
    {
      *&v299[0] = _swiftEmptyArrayStorage;
      v119 = v299;
      sub_100043364(0, v179 & ~(v179 >> 63), 0);
      if ((v179 & 0x8000000000000000) == 0)
      {
        v181 = 0;
        v182 = *&v299[0];
        do
        {
          if ((v52 & 0xC000000000000001) != 0)
          {
            v183 = sub_1000B5C20();
          }

          else
          {
            v183 = *(v52 + 8 * v181 + 32);
          }

          sub_100050FE4(v183, v180);
          *&v299[0] = v182;
          v185 = *(v182 + 16);
          v184 = *(v182 + 24);
          if (v185 >= v184 >> 1)
          {
            sub_100043364((v184 > 1), v185 + 1, 1);
            v182 = *&v299[0];
          }

          ++v181;
          *(v182 + 16) = v185 + 1;
          sub_10004D348(v180, v182 + ((*(v295 + 80) + 32) & ~*(v295 + 80)) + *(v295 + 72) * v185);
        }

        while (v179 != v181);

        v72 = v283;
        *(v283 + v266) = v182;
        v51 = v279;
        if (*(v279 + 57))
        {
          goto LABEL_90;
        }

LABEL_94:
        sub_10004CE38(v51);
        if ((*(v51 + 59) & 1) == 0)
        {
LABEL_139:

          return;
        }

        goto LABEL_95;
      }

      __break(1u);
LABEL_154:
      swift_once();
LABEL_39:
      v120 = sub_1000B5530();
      sub_100036380(v120, qword_100106FB8);
      v109 = v119;
      v110 = sub_1000B5520();
      v111 = sub_1000B5920();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *&v299[0] = v113;
        *v112 = 136315138;
        v121 = [v109 identifier];
        if (v121)
        {
          v122 = v121;
          v123 = sub_1000B5620();
          v125 = v124;
        }

        else
        {
          v123 = 9732322;
          v125 = 0xA300000000000000;
        }

        v263 = sub_100062B20(v123, v125, v299);

        *(v112 + 4) = v263;
        v163 = "Markdown export: Note is locked — skipping {identifier: %s}";
        goto LABEL_147;
      }

LABEL_48:

      return;
    }

    *(v72 + v266) = _swiftEmptyArrayStorage;
    if ((*(v51 + 57) & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  else if ((*(v51 + 57) & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_90:
  v273 = 0;
  v186 = v268;
  v187 = v268;
  v188 = [v75 replicaIDToUserIDDictData];
  if (v188)
  {
    v189 = v188;
    v190 = sub_1000B4DF0();
    v192 = v191;

    v193 = v267;
    sub_1000B4EF0();
    if (v192 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_1000B4DE0().super.isa;
      sub_10004D334(v190, v192);
    }
  }

  else
  {
    v193 = v267;
    sub_1000B4EF0();
    isa = 0;
  }

  v214 = objc_allocWithZone(ICMergeableDictionary);
  v215 = sub_1000B4ED0().super.isa;
  v216 = [v214 initWithData:isa replicaID:v215];

  v217 = *(v187 + 8);
  v72 = v187 + 8;
  v218 = v293;
  v285 = v72;
  v284 = v217;
  (v217)(v193, v293);
  v272 = v216;
  v219 = [v216 allKeys];
  sub_1000362AC(0, &qword_100106FE8, NSString_ptr);
  v220 = sub_1000B57A0();

  if (v220 >> 62)
  {
    v221 = sub_1000B5CF0();
  }

  else
  {
    v221 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v282;
  if (v221)
  {
    v222 = 0;
    v295 = v220 & 0xC000000000000001;
    v292 = v220 & 0xFFFFFFFFFFFFFF8;
    v289 = (v186 + 48);
    v278 = (v186 + 32);
    v291 = (v275 + 56);
    v51 = _swiftEmptyArrayStorage;
    v277 = (v275 + 48);
    v276 = v220;
    v290 = v221;
    while (1)
    {
      if (v295)
      {
        v223 = sub_1000B5C20();
      }

      else
      {
        if (v222 >= *(v292 + 16))
        {
          goto LABEL_149;
        }

        v223 = *(v220 + 8 * v222 + 32);
      }

      v72 = v223;
      v224 = v222 + 1;
      if (__OFADD__(v222, 1))
      {
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        v179 = sub_1000B5CF0();
        goto LABEL_77;
      }

      sub_1000B5620();
      sub_1000B4EB0();

      if ((*v289)(v52, 1, v218) == 1)
      {

        sub_100036320(v52, &qword_100106FD0, &qword_1000CAE50);
        (*v291)(v69, 1, 1, v296);
        goto LABEL_113;
      }

      v288 = v51;
      v225 = *v278;
      (*v278)(v294, v52, v218);
      v226 = v218;
      v227 = sub_1000B4ED0().super.isa;
      v228 = [v75 userIDForReplicaID:v227];

      v229 = sub_1000B5620();
      v231 = v230;

      v232 = [objc_opt_self() CR_unknown];
      v233 = v280;
      sub_1000B4EE0();

      v234 = sub_1000B4EC0();
      v236 = v235;
      (v284)(v233, v226);
      if (v229 == v234 && v231 == v236)
      {
        break;
      }

      v237 = sub_1000B5F20();

      if (v237)
      {
        goto LABEL_124;
      }

      v239 = &v287[*(v296 + 48)];
      v240 = v293;
      v225();
      v238 = 0;
      *v239 = v229;
      v239[1] = v231;
      v218 = v240;
LABEL_126:
      v220 = v276;
      v69 = v287;
      v241 = v296;
      (*v291)(v287, v238, 1, v296);
      v242 = (*v277)(v69, 1, v241);
      v75 = v286;
      v52 = v282;
      v51 = v288;
      if (v242 != 1)
      {
        sub_10004D4F4(v69, v281, &qword_100106AF0, &qword_1000CAE60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_10003389C(0, *(v51 + 2) + 1, 1, v51);
        }

        v244 = *(v51 + 2);
        v243 = *(v51 + 3);
        if (v244 >= v243 >> 1)
        {
          v51 = sub_10003389C((v243 > 1), v244 + 1, 1, v51);
        }

        *(v51 + 2) = v244 + 1;
        sub_10004D4F4(v281, v51 + ((*(v275 + 80) + 32) & ~*(v275 + 80)) + *(v275 + 72) * v244, &qword_100106AF0, &qword_1000CAE60);
        v218 = v293;
        goto LABEL_114;
      }

LABEL_113:
      sub_100036320(v69, &qword_100106FD8, &qword_1000CAE58);
LABEL_114:
      ++v222;
      if (v224 == v290)
      {
        goto LABEL_134;
      }
    }

LABEL_124:
    v218 = v293;
    (v284)(v294, v293);

    v238 = 1;
    goto LABEL_126;
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_134:

  v245 = v51;
  if (*(v51 + 2))
  {
    sub_100030480(&qword_100106AF8, &unk_1000CA360);
    v246 = sub_1000B5D20();
  }

  else
  {
    v246 = &_swiftEmptyDictionarySingleton;
  }

  v72 = v283;
  v247 = v279;
  v248 = v273;
  *&v299[0] = v246;
  sub_10004CE8C(v245, 1, v299);
  if (v248)
  {

    __break(1u);
    return;
  }

  sub_10004CE38(v247);
  *(v72 + v265) = *&v299[0];
  if ((*(v247 + 59) & 1) == 0)
  {
    goto LABEL_139;
  }

LABEL_95:
  v195 = [v75 folder];
  if (v195 && (v196 = v195, v197 = [v195 identifier], v196, v197))
  {
    v198 = sub_1000B5620();
    v200 = v199;
  }

  else
  {
    v198 = 0;
    v200 = 0;
  }

  *(v72 + 24) = v198;
  *(v72 + 32) = v200;
  v201 = [v75 folder];
  if (v201)
  {
    v202 = v201;
    v203 = [v201 title];

    v204 = sub_1000B5620();
    v206 = v205;
  }

  else
  {
    v204 = 0;
    v206 = 0;
  }

  *(v72 + 40) = v204;
  *(v72 + 48) = v206;
  v207 = [v75 title];
  if (v207)
  {
    v208 = v207;
    v209 = sub_1000B5620();
    v211 = v210;
  }

  else
  {

    v209 = 0;
    v211 = 0;
  }

  v212 = v271;
  *v271 = v209;
  v212[1] = v211;
  *(v72 + 56) = [v75 markedForDeletion];
  v213 = [v75 isPasswordProtected];

  *(v72 + 57) = v213;
}

void sub_10004B338(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1000B4F00();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v21 - v12;
  v14 = [a1 timestamp];
  if (v14)
  {
    v15 = v14;
    sub_1000B4E70();

    v16 = sub_1000B4EA0();
    (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
    sub_100036320(v13, &qword_100106E38, &unk_1000CB730);
    isa = sub_1000B5F90().super.super.isa;
    v18 = [a1 replicaID];
    sub_1000B4EE0();

    v19 = sub_1000B4ED0().super.isa;
    (*(v6 + 8))(v9, v5);
    [a3 setNotesVersion:isa forReplicaID:v19];
  }

  else
  {
    v20 = sub_1000B4EA0();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    sub_100036320(v13, &qword_100106E38, &unk_1000CB730);
  }
}

void sub_10004B58C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_10004B600(uint64_t a1)
{
  sub_1000B56A0();
}

unint64_t sub_10004B738@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004E8B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10004B768(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1162760014;
  v5 = 0xEC00000053454E49;
  v6 = 0x4C5F4D554944454DLL;
  if (v2 != 5)
  {
    v6 = 0x494C5F454752414CLL;
    v5 = 0xEB0000000053454ELL;
  }

  v7 = 0x52475F454752414CLL;
  v8 = 0xEA00000000004449;
  if (v2 != 3)
  {
    v7 = 0x494C5F4C4C414D53;
    v8 = 0xEB0000000053454ELL;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x52475F4C4C414D53;
  v10 = 0xEA00000000004449;
  if (v2 != 1)
  {
    v9 = 0x475F4D554944454DLL;
    v10 = 0xEB00000000444952;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10004B980(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x544847494CLL;
  }

  else
  {
    v3 = 0x544C5541464544;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x544847494CLL;
  }

  else
  {
    v5 = 0x544C5541464544;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000B5F20();
  }

  return v8 & 1;
}

Swift::Int sub_10004BA24()
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10004BAA4(uint64_t a1)
{
  sub_1000B56A0();
}

Swift::Int sub_10004BB10(uint64_t a1)
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10004BB8C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F3348;
  v8._object = v3;
  v5 = sub_1000B5D60(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10004BBEC(uint64_t *a1@<X8>)
{
  v2 = 0x544C5541464544;
  if (*v1)
  {
    v2 = 0x544847494CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10004BD40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x49414E424D554854;
  v4 = 0xE90000000000004CLL;
  if (v2 != 1)
  {
    v3 = 0x4D554944454DLL;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x57454956455250;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x49414E424D554854;
  v8 = 0xE90000000000004CLL;
  if (*a2 != 1)
  {
    v7 = 0x4D554944454DLL;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x57454956455250;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000B5F20();
  }

  return v11 & 1;
}

Swift::Int sub_10004BE44()
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_10004BEE8(uint64_t a1)
{
  sub_1000B56A0();
}

Swift::Int sub_10004BF78(uint64_t a1)
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

unint64_t sub_10004C018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004E904(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10004C048(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE90000000000004CLL;
  v5 = 0x49414E424D554854;
  if (v2 != 1)
  {
    v5 = 0x4D554944454DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x57454956455250;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10004C194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a5();
  a6();

  return sub_1000B4FF0();
}

uint64_t sub_10004C254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a5();
  a6();

  return sub_1000B5010();
}

uint64_t sub_10004C2E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000C7000 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C7020 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C7040 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1000B5F20() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (sub_1000B5F20() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64656E6E69507369 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4E6B636975517369 && a2 == 0xEB0000000065746FLL || (sub_1000B5F20() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7974537265706170 && a2 == 0xEA0000000000656CLL || (sub_1000B5F20() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C7060 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000C7080 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001000C70A0 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7441646577656976 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001000C70C0 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000C70E0 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000C7100 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000C7120 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464 || (sub_1000B5F20() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001000C7140 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6974697669746361 && a2 == 0xEA00000000007365 || (sub_1000B5F20() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001000C7160 == a2)
  {

    return 24;
  }

  else
  {
    v6 = sub_1000B5F20();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

unint64_t sub_10004CA8C(unint64_t a1)
{
  if (a1 < 8)
  {
    return 0x605040302010007uLL >> (8 * a1);
  }

  if (qword_100106A28 != -1)
  {
    swift_once();
  }

  v2 = sub_1000B5530();
  sub_100036380(v2, qword_100106FB8);
  v3 = sub_1000B5520();
  v4 = sub_1000B5930();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown paper style — returning nil", v5, 2u);
  }

  return 7;
}

uint64_t sub_10004CB90(unsigned __int16 a1)
{
  if (a1 < 3u)
  {
    return 0x10002u >> (8 * a1);
  }

  if (qword_100106A28 != -1)
  {
    swift_once();
  }

  v2 = sub_1000B5530();
  sub_100036380(v2, qword_100106FB8);
  v3 = sub_1000B5520();
  v4 = sub_1000B5930();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown preferred background color — returning nil", v5, 2u);
  }

  return 2;
}

uint64_t sub_10004CC90(uint64_t result)
{
  if (result >= 3u)
  {
    if (qword_100106A28 != -1)
    {
      swift_once();
    }

    v1 = sub_1000B5530();
    sub_100036380(v1, qword_100106FB8);
    v2 = sub_1000B5520();
    v3 = sub_1000B5930();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unknown attachment view type — returning default", v4, 2u);
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ICNoteArchiveModel(uint64_t a1)
{
  result = qword_100107070;
  if (!qword_100107070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004CDC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004CE8C(uint64_t a1, char a2, void *a3)
{
  v64 = a3;
  v5 = sub_1000B4F00();
  v57 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v63 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030480(&qword_100106AF0, &qword_1000CAE60);
  result = __chkstk_darwin(v8, v9);
  v62 = &v53 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return result;
  }

  v14 = v62;
  v15 = (v62 + *(result + 48));
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v59 = *(v11 + 72);
  v54 = v16;
  sub_100030C74(a1 + v16, v62, &qword_100106AF0, &qword_1000CAE60);
  v17 = *(v57 + 32);
  v18 = v63;
  v60 = (v57 + 32);
  v61 = v5;
  v17(v63, v14, v5);
  v58 = v15;
  v19 = *v15;
  v20 = v15[1];
  v21 = *v64;
  v23 = sub_100063284(v18);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_24;
  }

  LOBYTE(v18) = v22;
  v27 = v21[3];
  v55 = v19;
  if (v27 >= v26)
  {
    v19 = v60;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v30 = v20;
    while (1)
    {
LABEL_8:
      v20 = (v19 - 3);
      v31 = *v64;
      if (v18)
      {
        v18 = v61;
        (*v20)(v63, v61);
        v32 = (v31[7] + 16 * v23);
        *v32 = v55;
        v32[1] = v30;

        v33 = v13 - 1;
        if (v13 == 1)
        {
          return result;
        }
      }

      else
      {
        v31[(v23 >> 6) + 8] |= 1 << v23;
        v18 = v61;
        result = (v17)(v31[6] + *(v57 + 72) * v23, v63, v61);
        v34 = (v31[7] + 16 * v23);
        *v34 = v55;
        v34[1] = v30;
        v35 = v31[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_25;
        }

        v31[2] = v37;
        v33 = v13 - 1;
        if (v13 == 1)
        {
          return result;
        }
      }

      v13 = a1 + v59 + v54;
      v56 = (v19 - 3);
      while (1)
      {
        v39 = v62;
        sub_100030C74(v13, v62, &qword_100106AF0, &qword_1000CAE60);
        v20 = *v19;
        v40 = v63;
        (*v19)(v63, v39, v18);
        a1 = *v58;
        v17 = v58[1];
        v41 = *v64;
        v23 = sub_100063284(v40);
        v43 = v41[2];
        v44 = (v42 & 1) == 0;
        v45 = v43 + v44;
        if (__OFADD__(v43, v44))
        {
          break;
        }

        v46 = v42;
        if (v41[3] < v45)
        {
          sub_1000648BC(v45, 1);
          v47 = sub_100063284(v63);
          if ((v46 & 1) != (v48 & 1))
          {
            goto LABEL_27;
          }

          v23 = v47;
        }

        v49 = *v64;
        if (v46)
        {
          v18 = v61;
          (*v56)(v63, v61);
          v38 = (v49[7] + 16 * v23);
          *v38 = a1;
          v38[1] = v17;

          v19 = v60;
        }

        else
        {
          v49[(v23 >> 6) + 8] |= 1 << v23;
          v19 = v60;
          v18 = v61;
          result = (v20)(v49[6] + *(v57 + 72) * v23, v63, v61);
          v50 = (v49[7] + 16 * v23);
          *v50 = a1;
          v50[1] = v17;
          v51 = v49[2];
          v36 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v36)
          {
            goto LABEL_25;
          }

          v49[2] = v52;
        }

        v13 += v59;
        if (!--v33)
        {
          return result;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v30 = v20;
      sub_10005C648();
    }
  }

  sub_1000648BC(v26, a2 & 1);
  v28 = sub_100063284(v63);
  if ((v18 & 1) == (v29 & 1))
  {
    v23 = v28;
    v30 = v20;
    v19 = v60;
    goto LABEL_8;
  }

LABEL_27:
  result = sub_1000B5F50();
  __break(1u);
  return result;
}

uint64_t sub_10004D334(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000449D4(result, a2);
  }

  return result;
}

uint64_t sub_10004D348(uint64_t a1, uint64_t a2)
{
  v4 = _s8ActivityVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D464()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004D4DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004D4F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100030480(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10004D570(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}