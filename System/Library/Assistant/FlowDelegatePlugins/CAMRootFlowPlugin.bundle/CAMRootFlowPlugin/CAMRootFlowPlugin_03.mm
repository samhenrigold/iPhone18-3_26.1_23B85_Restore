uint64_t sub_50BE8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {

    v3 = sub_50F7C;
  }

  else
  {
    *(v2 + 248) = *(v2 + 48);
    *(v2 + 256) = *(v2 + 56);
    *(v2 + 272) = *(v2 + 72);
    v3 = sub_50D28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_50D28()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 208);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_58820(0, *(v2 + 2) + 1, 1, *(v0 + 208));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_58820((v3 > 1), v4 + 1, 1, v2);
  }

  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v21 = *(v0 + 248);
  v7 = *(v0 + 216);
  v8 = *(v0 + 200);

  *(v2 + 2) = v4 + 1;
  v14 = &v2[32 * v4];
  *(v14 + 2) = v21;
  *(v14 + 6) = v6;
  *(v14 + 7) = v5;
  if (v7 + 1 == v8)
  {

    v15 = *(v0 + 8);

    return v15(v2);
  }

  else
  {
    v17 = *(v0 + 216) + 1;
    *(v0 + 208) = v2;
    *(v0 + 216) = v17;
    v18 = *(v0 + 192);
    if (v17 >= *(v18 + 16))
    {
      __break(1u);
    }

    else
    {
      v19 = *(v18 + 8 * v17 + 32);
      *(v0 + 224) = v19;

      v20 = swift_task_alloc();
      *(v0 + 232) = v20;
      v12 = sub_5B94(&qword_724C8, &qword_5E270);
      *v20 = v0;
      v20[1] = sub_50BE8;
      v11 = &type metadata for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo;
      v13 = &protocol self-conformance witness table for Error;
      v9 = v0 + 48;
      v10 = v19;
    }

    return Task.value.getter(v9, v10, v11, v12, v13);
  }
}

uint64_t sub_50F7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_51048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  sub_5B94(&qword_73CA0, &qword_5C910);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v4 = sub_5B94(&qword_73CA8, &qword_5E3C0);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_5117C, 0, 0);
}

uint64_t sub_5117C()
{
  v1 = v0[10];
  v2 = sub_377F8(0, 0, 0);
  v43 = *(v1 + 16);
  if (v43)
  {
    v41 = v0[13];
    v42 = v0[14];
    v7 = sub_5A4E8();
    v8 = 0;
    v40 = v7;
    v9 = *(v7 - 8);
    v39 = *(v9 + 16);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v38 = *(v9 + 72);
    do
    {
      v46 = v8;
      v11 = v0[17];
      v12 = v0[18];
      v13 = v0[16];
      v14 = v0[11];
      v15 = v0[12];
      v17 = v0[9];
      v16 = v0[10];
      v44 = v0[8];
      v45 = v10;
      v18 = *(v41 + 48);
      *v11 = v8;
      v39(&v11[v18], v16 + v10, v40);
      sub_59508(v11, v12);
      v19 = sub_5B468();
      v20 = *(v19 - 8);
      (*(v20 + 56))(v15, 1, 1, v19);
      sub_1AE38(v12, v13, &qword_73CA8, &qword_5E3C0);
      v21 = (*(v42 + 80) + 48) & ~*(v42 + 80);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v44;
      v22[5] = v17;
      sub_59508(v13, v22 + v21);
      sub_1AE38(v15, v14, &qword_73CA0, &qword_5C910);
      LODWORD(v14) = (*(v20 + 48))(v14, 1, v19);

      v23 = v0[11];
      if (v14 == 1)
      {
        sub_5D4C(v0[11], &qword_73CA0, &qword_5C910);
      }

      else
      {
        sub_5B458();
        (*(v20 + 8))(v23, v19);
      }

      v24 = v22[2];
      swift_unknownObjectRetain();

      if (v24)
      {
        swift_getObjectType();
        v25 = sub_5B418();
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      sub_5D4C(v0[12], &qword_73CA0, &qword_5C910);
      sub_1AB38(0, &unk_73CB0, SFCardSection_ptr);
      if (v27 | v25)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v25;
        v0[5] = v27;
      }

      v28 = v0[18];
      v29 = swift_task_create();
      v2 = sub_5D4C(v28, &qword_73CA8, &qword_5E3C0);
      v31 = _swiftEmptyArrayStorage[2];
      v30 = _swiftEmptyArrayStorage[3];
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v2 = sub_377F8((v30 > 1), v31 + 1, 1);
      }

      v8 = v46 + 1;
      _swiftEmptyArrayStorage[2] = v32;
      _swiftEmptyArrayStorage[v31 + 4] = v29;
      v10 = v45 + v38;
    }

    while (v43 != v46 + 1);
    v0[6] = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v32 = _swiftEmptyArrayStorage[2];
  v0[6] = _swiftEmptyArrayStorage;
  if (v32)
  {
LABEL_16:
    v0[19] = _swiftEmptyArrayStorage;
    v0[20] = v32;
    v0[21] = _swiftEmptyArrayStorage;
    v0[22] = 0;
    if (_swiftEmptyArrayStorage[2])
    {
      v33 = _swiftEmptyArrayStorage[4];
      v0[23] = v33;

      v34 = swift_task_alloc();
      v0[24] = v34;
      v35 = sub_1AB38(0, &unk_73CB0, SFCardSection_ptr);
      v5 = sub_5B94(&qword_724C8, &qword_5E270);
      *v34 = v0;
      v34[1] = sub_516AC;
      v6 = &protocol self-conformance witness table for Error;
      v2 = (v0 + 7);
      v3 = v33;
      v4 = v35;
    }

    else
    {
      __break(1u);
    }

    return Task.value.getter(v2, v3, v4, v5, v6);
  }

  v36 = v0[1];

  return v36(_swiftEmptyArrayStorage);
}

uint64_t sub_516AC()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {

    v3 = sub_519E8;
  }

  else
  {
    *(v2 + 208) = *(v2 + 56);
    v3 = sub_517DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_517DC()
{
  sub_5B3B8();
  if (*(&dword_10 + (v0[6] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v0[6] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_5B3E8();
  }

  v1 = v0[20];
  v2 = v0[22] + 1;
  sub_5B408();

  v8 = v0[6];
  if (v2 == v1)
  {

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[22] + 1;
    v0[21] = v8;
    v0[22] = v11;
    v12 = v0[19];
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
    }

    else
    {
      v13 = *(v12 + 8 * v11 + 32);
      v0[23] = v13;

      v14 = swift_task_alloc();
      v0[24] = v14;
      v15 = sub_1AB38(0, &unk_73CB0, SFCardSection_ptr);
      v6 = sub_5B94(&qword_724C8, &qword_5E270);
      *v14 = v0;
      v14[1] = sub_516AC;
      v7 = &protocol self-conformance witness table for Error;
      v3 = (v0 + 7);
      v4 = v13;
      v5 = v15;
    }

    return Task.value.getter(v3, v4, v5, v6, v7);
  }
}

uint64_t sub_519E8()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_51A90(uint64_t a1)
{
  v172 = a1;
  v1 = type metadata accessor for VerbEntityDisambiguationFlow.State(0);
  __chkstk_darwin(v1 - 8);
  v157 = &v135 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_5B94(&qword_72530, &qword_5C660);
  __chkstk_darwin(v3 - 8);
  v154 = &v135 - v4;
  v5 = sub_59E38();
  v155 = *(v5 - 8);
  __chkstk_darwin(v5);
  v143 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5A318();
  v168 = *(v7 - 8);
  v169 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v167 = &v135 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v135 - v14;
  __chkstk_darwin(v13);
  v137 = &v135 - v16;
  v151 = sub_5A8E8();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v149 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5B94(&qword_71C88, &qword_5C2A0);
  __chkstk_darwin(v18 - 8);
  v20 = (&v135 - v19);
  v148 = type metadata accessor for CAMDirectInvocation(0);
  v147 = *(v148 - 8);
  v21 = __chkstk_darwin(v148);
  v141 = (&v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v140 = &v135 - v23;
  v146 = sub_5A838();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_5A858();
  v163 = *(v25 - 8);
  v164 = v25;
  __chkstk_darwin(v25);
  v162 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_5B94(&unk_72560, &qword_5E3E0);
  v28 = __chkstk_darwin(v27 - 8);
  v165 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v138 = &v135 - v31;
  v32 = __chkstk_darwin(v30);
  v139 = &v135 - v33;
  __chkstk_darwin(v32);
  v170 = &v135 - v34;
  v35 = sub_5A7D8();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v152 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v142 = &v135 - v40;
  __chkstk_darwin(v39);
  v42 = &v135 - v41;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v43 = sub_5B228();
  v44 = sub_5B44(v43, qword_763B8);
  v158 = *(v36 + 16);
  v159 = v36 + 16;
  v158(v42, v172, v35);
  v166 = v44;
  v45 = sub_5B218();
  v46 = sub_5B4B8();
  v47 = os_log_type_enabled(v45, v46);
  v156 = v5;
  v161 = v36;
  v153 = v10;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v136 = v20;
    v50 = v49;
    v173 = v49;
    *v48 = 136315138;
    sub_5991C(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v51 = sub_5B798();
    v52 = v15;
    v54 = v53;
    v160 = *(v36 + 8);
    v160(v42, v35);
    v55 = sub_2DC10(v51, v54, &v173);
    v15 = v52;

    *(v48 + 4) = v55;
    _os_log_impl(&dword_0, v45, v46, "VerbEntityDisambiguationFlow: on called with input %s", v48, 0xCu);
    sub_5D00(v50);
    v20 = v136;
  }

  else
  {

    v160 = *(v36 + 8);
    v160(v42, v35);
  }

  v56 = v162;
  sub_5A7C8();
  v58 = v163;
  v57 = v164;
  v59 = (*(v163 + 88))(v56, v164);
  v60 = v170;
  if (v59 != enum case for Parse.directInvocation(_:))
  {
    if (v59 != enum case for Parse.uso(_:))
    {
      v84 = v168;
      v67 = v169;
      (*(v168 + 56))(v170, 1, 1, v169);
      (*(v58 + 8))(v56, v57);
      v68 = v84;
      v66 = v171;
LABEL_26:
      v69 = v165;
      goto LABEL_27;
    }

    (*(v58 + 96))(v56, v57);
    (*(v150 + 32))(v149, v56, v151);
    v66 = v171;
    v70 = (v171 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_firstAction);
    v71 = (v171 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_secondAction);
    v72 = sub_3F9D8();
    v68 = v168;
    v67 = v169;
    if (v73)
    {
LABEL_11:
      v74 = v139;
      v164 = *(v168 + 56);
      (v164)(v139, 1, 1, v169);
      sub_5D4C(v74, &unk_72560, &qword_5E3E0);
      v75 = v149;
      v76 = v71;
      v77 = v138;
      sub_54548(v149, v70, v76, v138);
      (*(v150 + 8))(v75, v151);
      if ((*(v68 + 48))(v77, 1, v67) == 1)
      {
        sub_5D4C(v77, &unk_72560, &qword_5E3E0);
        v78 = v60;
        v79 = 1;
      }

      else
      {
        v85 = *(v68 + 32);
        v85(v15, v77, v67);
        v85(v60, v15, v67);
        v78 = v60;
        v79 = 0;
      }

      (v164)(v78, v79, 1, v67);
      goto LABEL_26;
    }

    if (v72 != 1)
    {
      if (!v72)
      {
        v164 = v35;
        v71 = v70;
        goto LABEL_47;
      }

      if (v72 != -1)
      {
        goto LABEL_11;
      }
    }

    v164 = v35;
LABEL_47:
    (*(v150 + 8))(v149, v151);
    v131 = v139;
    (*(v68 + 16))(v139, v71, v67);
    v132 = *(v68 + 56);
    v132(v131, 0, 1, v67);
    v133 = *(v68 + 32);
    v134 = v137;
    v133(v137, v131, v67);
    v133(v60, v134, v67);
    v132(v60, 0, 1, v67);
    v35 = v164;
    v69 = v165;
    goto LABEL_27;
  }

  (*(v58 + 96))(v56, v57);
  v61 = v145;
  v62 = v144;
  v63 = v146;
  (*(v145 + 32))(v144, v56, v146);
  v64 = OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_firstAction;
  v65 = OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_secondAction;
  sub_3601C(v20);
  (*(v61 + 8))(v62, v63);
  if ((*(v147 + 48))(v20, 1, v148) == 1)
  {
    sub_5D4C(v20, &qword_71C88, &qword_5C2A0);
    v66 = v171;
    v68 = v168;
    v67 = v169;
    v69 = v165;
LABEL_23:
    (*(v68 + 56))(v60, 1, 1, v67);
    goto LABEL_27;
  }

  v80 = v140;
  sub_1AF04(v20, v140);
  v81 = v80;
  v82 = v141;
  sub_1AF04(v81, v141);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v66 = v171;
  v68 = v168;
  v67 = v169;
  v69 = v165;
  if (EnumCaseMultiPayload != 1)
  {
    sub_599C8(v82, type metadata accessor for CAMDirectInvocation);
    goto LABEL_23;
  }

  if (*v82)
  {
    if (*v82 != 1)
    {
      goto LABEL_23;
    }

    (*(v168 + 16))(v60, v171 + v65, v169);
  }

  else
  {
    (*(v168 + 16))(v60, v171 + v64, v169);
  }

  (*(v68 + 56))(v60, 0, 1, v67);
LABEL_27:
  sub_1AE38(v60, v69, &unk_72560, &qword_5E3E0);
  v86 = (*(v68 + 48))(v69, 1, v67);
  v87 = v86;
  if (v86 == 1)
  {
    sub_5D4C(v69, &unk_72560, &qword_5E3E0);
    v99 = v152;
    v158(v152, v172, v35);
    v100 = sub_5B218();
    v101 = sub_5B4C8();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v173 = v103;
      *v102 = 136315138;
      sub_5991C(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v104 = sub_5B798();
      v106 = v105;
      v160(v99, v35);
      v107 = sub_2DC10(v104, v106, &v173);
      v66 = v171;

      *(v102 + 4) = v107;
      _os_log_impl(&dword_0, v100, v101, "VerbEntityDisambiguationFlow: could not resolve action from %s", v102, 0xCu);
      sub_5D00(v103);
    }

    else
    {

      v160(v99, v35);
    }

    sub_5A6B8();
    sub_5A6A8();
    sub_5A678();

    sub_5CBC((v66 + 56), *(v66 + 80));
    sub_5A1E8();
    LOBYTE(v173) = 0;
    sub_5A1D8();
    sub_5A158();
  }

  else
  {
    LODWORD(v165) = v86;
    v88 = v35;
    v89 = v167;
    (*(v68 + 32))(v167, v69, v67);
    v90 = v153;
    v162 = *(v68 + 16);
    v163 = v68 + 16;
    (v162)(v153, v89, v67);
    v91 = sub_5B218();
    v92 = sub_5B4C8();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v173 = v94;
      *v93 = 136315138;
      sub_5991C(&qword_71C10, &type metadata accessor for PluginAction, &protocol conformance descriptor for PluginAction);
      v95 = sub_5B798();
      v97 = v96;
      v164 = *(v168 + 8);
      v164(v90, v67);
      v98 = sub_2DC10(v95, v97, &v173);
      v66 = v171;

      *(v93 + 4) = v98;
      _os_log_impl(&dword_0, v91, v92, "VerbEntityDisambiguationFlow: resolved action to %s", v93, 0xCu);
      sub_5D00(v94);
    }

    else
    {

      v164 = *(v68 + 8);
      v164(v90, v67);
    }

    v108 = v154;
    v109 = v167;
    sub_5A308();
    v111 = v155;
    v110 = v156;
    if ((*(v155 + 48))(v108, 1, v156) == 1)
    {
      v112 = v88;
      sub_5D4C(v108, &qword_72530, &qword_5C660);
      v113 = v142;
      v158(v142, v172, v112);
      v114 = sub_5B218();
      v115 = sub_5B4C8();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v173 = v117;
        *v116 = 136315138;
        sub_5991C(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
        v118 = sub_5B798();
        v120 = v119;
        v160(v113, v112);
        v121 = sub_2DC10(v118, v120, &v173);
        v66 = v171;

        *(v116 + 4) = v121;
        _os_log_impl(&dword_0, v114, v115, "VerbEntityDisambiguationFlow: could not extract loggingId from %s", v116, 0xCu);
        sub_5D00(v117);
        v109 = v167;
      }

      else
      {

        v160(v113, v112);
      }
    }

    else
    {
      v122 = v143;
      (*(v111 + 32))(v143, v108, v110);
      sub_5A6B8();
      sub_5A6A8();
      sub_5A698();

      sub_5CBC((v66 + 56), *(v66 + 80));
      sub_5A1E8();
      LOBYTE(v173) = 0;
      sub_5A1D8();
      sub_5A158();
      v109 = v167;

      (*(v111 + 8))(v122, v110);
    }

    v123 = v169;
    v87 = v165;
    v124 = v157;
    (v162)(v157, v109, v169);
    v125 = sub_5B94(&qword_71CA0, &unk_5C2B0);
    (*(*(v125 - 8) + 56))(v124, 0, 2, v125);
    v126 = OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_state;
    swift_beginAccess();
    sub_59964(v124, v66 + v126);
    swift_endAccess();
    v127 = sub_5B218();
    v128 = sub_5B4B8();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_0, v127, v128, "VerbEntityDisambiguationFlow: input accepted", v129, 2u);
    }

    v164(v109, v123);
    v60 = v170;
  }

  sub_5D4C(v60, &unk_72560, &qword_5E3E0);
  return v87 != 1;
}

uint64_t sub_53050(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_5A318();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  type metadata accessor for VerbEntityDisambiguationFlow.State(0);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_53148, 0, 0);
}

uint64_t sub_53148()
{
  v41 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "VerbEntityDisambiguationFlow: execute called", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[7];

  v7 = OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_state;
  swift_beginAccess();
  sub_598B8(v6 + v7, v5);
  v8 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v9 = (*(*(v8 - 8) + 48))(v5, 2, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = sub_5B218();
      v11 = sub_5B4B8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v10, v11, "VerbEntityDisambiguationFlow: rendering disambiguation", v12, 2u);
      }

      v13 = swift_task_alloc();
      v0[13] = v13;
      *v13 = v0;
      v13[1] = sub_536F4;
      v14 = v0[6];

      return sub_53864(v14);
    }

    v32 = sub_5B218();
    v33 = sub_5B4C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "Invalid respose", v34, 2u);
    }

    sub_5A6C8();
    sub_5A148();
    type metadata accessor for CamErrorFlow();
    swift_allocObject();
    v0[5] = sub_3147C(0xD000000000000010, 0x800000000005E9C0, v39, v40);
    sub_5991C(&qword_72550, type metadata accessor for CamErrorFlow, &unk_5CE08);
    sub_5A088();

    sub_5A428();
  }

  else
  {
    v16 = v0[11];
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];
    (*(v18 + 32))(v16, v0[12], v19);
    (*(v18 + 16))(v17, v16, v19);
    v20 = sub_5B218();
    v21 = sub_5B4B8();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[8];
    if (v22)
    {
      v26 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v26 = 136315138;
      sub_5991C(&qword_71C10, &type metadata accessor for PluginAction, &protocol conformance descriptor for PluginAction);
      v27 = sub_5B798();
      v29 = v28;
      v30 = *(v24 + 8);
      v30(v23, v25);
      v31 = sub_2DC10(v27, v29, v40);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_0, v20, v21, "VerbEntityDisambiguationFlow: redirecting to %s", v26, 0xCu);
      sub_5D00(v38);
    }

    else
    {

      v30 = *(v24 + 8);
      v30(v23, v25);
    }

    v35 = v0[11];
    v36 = v0[8];
    sub_5A448();
    v30(v35, v36);
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_536F4()
{

  return _swift_task_switch(sub_537F0, 0, 0);
}

uint64_t sub_537F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_53864(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  sub_5B94(&unk_73CE0, &unk_5CB30);
  v2[18] = swift_task_alloc();
  v3 = sub_5A2A8();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = sub_5A718();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  sub_5B94(&qword_72530, &qword_5C660);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v5 = sub_59E38();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_53A64, 0, 0);
}

uint64_t sub_53A64()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  *(v0 + 248) = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "VerbEntityDisambiguationFlow: executeRenderDisambiguation called", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_53BBC;

  return sub_564E8(v0 + 56);
}

uint64_t sub_53BBC()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_5437C;
  }

  else
  {
    v2 = sub_53CD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_53CD0()
{
  v2 = (v0 + 208);
  v1 = *(v0 + 208);
  v3 = v0 + 16;
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  sub_1BBFC((v0 + 56), v0 + 16);
  sub_5A308();
  v6 = *(v5 + 48);
  if (v6(v1, 1, v4) != 1)
  {
    v2 = (v0 + 200);
    v7 = *(v0 + 200);
    v8 = *(v0 + 216);
    v9 = *(*(v0 + 224) + 32);
    (v9)(*(v0 + 240), *(v0 + 208), v8);
    sub_5A308();
    if (v6(v7, 1, v8) != 1)
    {
      v13 = *(v0 + 224);
      v29 = *(v0 + 232);
      v14 = *(v0 + 216);
      v15 = *(v0 + 184);
      v30 = *(v0 + 176);
      v31 = *(v0 + 192);
      v16 = *(v0 + 240);
      v9();
      sub_5A6B8();
      sub_5A6A8();
      sub_5B94(&unk_72540, &unk_5C670);
      v17 = *(v13 + 72);
      v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_5C2D0;
      v20 = v19 + v18;
      v21 = *(v13 + 16);
      v21(v20, v16, v14);
      v21(v20 + v17, v29, v14);
      (*(v15 + 104))(v31, enum case for CAMDisambiguationDialogType.verbEntity(_:), v30);
      sub_5A688();

      (*(v15 + 8))(v31, v30);
      v22 = *(v13 + 8);
      v22(v29, v14);
      v23 = v16;
      v3 = v0 + 16;
      v22(v23, v14);
      goto LABEL_8;
    }

    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  }

  sub_5D4C(*v2, &qword_72530, &qword_5C660);
  v10 = sub_5B218();
  v11 = sub_5B4C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "VerbEntityDisambiguationFlow: could not extract loggingIds for actions. SELF DisambiguationDialogGenerated message was not emitted as a result.", v12, 2u);
  }

LABEL_8:
  v24 = *(v0 + 136);
  v25 = v24[15];
  v26 = v24[16];
  sub_5CBC(v24 + 12, v25);
  v27 = swift_task_alloc();
  *(v0 + 272) = v27;
  *v27 = v0;
  v27[1] = sub_5405C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v3, v25, v26);
}

uint64_t sub_5405C()
{

  if (v0)
  {

    v1 = sub_59D94;
  }

  else
  {
    v1 = sub_54174;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_54174()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  sub_5CBC((v0[17] + 56), *(v0[17] + 80));
  sub_5A1E8();
  (*(v2 + 104))(v1, enum case for ActivityType.disambiguation(_:), v4);
  v5 = enum case for SiriKitReliabilityCodes.disambiguationActionRouting(_:);
  v6 = sub_5A168();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v3, v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  sub_5A1C8();
  sub_5A158();

  sub_5A408();
  sub_5D00(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_5437C()
{
  v11 = v0;
  swift_errorRetain();
  v1 = sub_5B218();
  v2 = sub_5B4C8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = sub_5B7E8();
    v7 = sub_2DC10(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v1, v2, "VerbEntityDisambiguationFlow: cannot create output for disambiguation, will redirect to fallback action. Error: %s", v3, 0xCu);
    sub_5D00(v4);
  }

  sub_5A448();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_54548@<X0>(char *a1@<X0>, uint64_t (**a2)(char *, char *)@<X1>, uint64_t (**a3)(char *, char *)@<X2>, uint64_t a4@<X8>)
{
  v165 = a2;
  v166 = a3;
  v138 = a4;
  v153 = sub_5A938();
  v164 = *(v153 - 8);
  __chkstk_darwin(v153);
  v152 = v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5B94(&unk_73C70, &unk_5C300);
  __chkstk_darwin(v6 - 8);
  v159 = v132 - v7;
  v8 = sub_5B94(&qword_72030, &unk_5E370);
  __chkstk_darwin(v8 - 8);
  v155 = v132 - v9;
  v158 = sub_5AA58();
  v163 = *(v158 - 8);
  v10 = __chkstk_darwin(v158);
  v147 = v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v151 = v132 - v13;
  __chkstk_darwin(v12);
  v168 = v132 - v14;
  v15 = sub_5A318();
  v140 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5A8E8();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v162 = v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v132 - v22;
  if (qword_71A58 != -1)
  {
LABEL_111:
    swift_once();
  }

  v24 = sub_5B228();
  v25 = sub_5B44(v24, qword_763B8);
  v26 = *(v19 + 2);
  v167 = a1;
  v26(v23, a1, v18);
  v160 = v25;
  v27 = sub_5B218();
  LODWORD(v161) = sub_5B4C8();
  v28 = os_log_type_enabled(v27, v161);
  v156 = v15;
  v157 = v17;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v169[0] = v30;
    *v29 = 136315138;
    v26(v162, v23, v18);
    v31 = sub_5B358();
    v33 = v32;
    (*(v19 + 1))(v23, v18);
    v34 = sub_2DC10(v31, v33, v169);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_0, v27, v161, "VerbEntityDisambiguationFlow: resolveResponseToVerbEntityParaphraseDisambiguation with usoParse %s", v29, 0xCu);
    sub_5D00(v30);
    v35 = v157;

    v36 = v156;
  }

  else
  {
    v36 = v15;

    (*(v19 + 1))(v23, v18);
    v35 = v17;
  }

  v37 = sub_4FA30();
  v23 = v158;
  v38 = v159;
  if (!v37)
  {
    v112 = sub_5B218();
    v113 = sub_5B4B8();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_0, v112, v113, "VerbEntityDisambiguationFlow: User response cannot be interpreted as a UsoTask", v114, 2u);
    }

    return (*(v140 + 56))(v138, 1, 1, v36);
  }

  v137 = v37;
  v39 = sub_5AE18();
  v41 = v40;
  sub_5B94(&qword_724F0, &qword_5C310);
  v42 = v140;
  v43 = *(v140 + 72);
  v44 = (*(v140 + 80) + 32) & ~*(v140 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_5C2D0;
  v136 = v45;
  v46 = v45 + v44;
  v48 = *(v42 + 16);
  v47 = v42 + 16;
  v48(v46, v165, v36);
  v142 = v43;
  v149 = v48;
  v48(v46 + v43, v166, v36);
  v166 = 0;
  v145 = (v163 + 32);
  v146 = (v164 + 8);
  v144 = (v163 + 16);
  v165 = (v163 + 8);
  v141 = v39;
  v50 = v39 == 0x627265566F6ELL;
  v15 = v36;
  v154 = v41;
  v50 = v50 && v41 == 0xE600000000000000;
  v51 = v50;
  v143 = v51;
  v150 = v47;
  v148 = (v47 - 8);
  v52 = 2;
  *&v49 = 136315138;
  v139 = v49;
  *&v49 = 136315394;
  v135 = v49;
  v134 = v46;
  v53 = v46;
  while (1)
  {
    v149(v35, v53, v15);
    sub_5A2D8();
    v54 = sub_5A518();
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v38, 1, v54) == 1)
    {

      sub_5D4C(v38, &unk_73C70, &unk_5C300);
      goto LABEL_104;
    }

    v164 = v52;
    v56 = v155;
    sub_5A4F8();
    (*(v55 + 8))(v38, v54);
    v57 = sub_5A4E8();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v56, 1, v57) == 1)
    {

      sub_5D4C(v56, &qword_72030, &unk_5E370);
      goto LABEL_104;
    }

    v163 = v53;
    v19 = v35;
    v59 = v154;
    a1 = v151;
    sub_5A4B8();
    (*(v58 + 8))(v56, v57);
    (*v145)(v168, a1, v23);
    v60 = v152;
    sub_5AA28();
    v61 = v166;
    v62 = sub_5AB68();
    if (v61)
    {

      (*v146)(v60, v153);
      (*v165)(v168, v23);
      goto LABEL_103;
    }

    v63 = v62;
    v166 = 0;
    (*v146)(v60, v153);
    v64 = sub_5AC78();
    v18 = v64;
    v17 = v59;
    v65 = v64 >> 62 ? sub_5B678() : *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
    v66 = v144;
    if (!v65)
    {
      break;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      v167 = sub_5B5B8();
    }

    else
    {
      if (!*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_111;
      }

      v167 = *(v18 + 32);
    }

    v162 = v63;

    v67 = *v66;
    v68 = v147;
    (*v66)(v147, v168, v23);
    v69 = sub_5B218();
    v70 = sub_5B4B8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v170[0] = v72;
      *v71 = v139;
      sub_5AB48();
      v169[3] = v23;
      v169[4] = sub_5991C(&qword_724D0, &type metadata accessor for Siri_Nlu_External_UserStatedTask, &protocol conformance descriptor for Siri_Nlu_External_UserStatedTask);
      v73 = sub_5F2C(v169);
      v67(v73, v68, v23);
      v74 = sub_5AB38();
      v76 = v75;
      v161 = *v165;
      v161(v68, v23);
      sub_5D00(v169);
      v77 = sub_2DC10(v74, v76, v170);

      *(v71 + 4) = v77;
      _os_log_impl(&dword_0, v69, v70, "VerbEntityDisambiguationFlow: comparing to offered userStatedTask %s", v71, 0xCu);
      sub_5D00(v72);
      v78 = v59;

      v35 = v157;
      v38 = v159;
      v79 = v163;
    }

    else
    {

      v161 = *v165;
      v161(v68, v23);
      v35 = v157;
      v38 = v159;
      v79 = v163;
      v78 = v17;
    }

    v80 = sub_5AE18();
    v82 = v81;
    if ((v143 & 1) == 0)
    {
      v83 = v80;
      if ((sub_5B7A8() & 1) == 0 && (v141 != v83 || v78 != v82) && (sub_5B7A8() & 1) == 0)
      {

        v108 = sub_5B218();
        v109 = sub_5B4B8();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v169[0] = swift_slowAlloc();
          *v110 = v135;
          *(v110 + 4) = sub_2DC10(v141, v78, v169);
          *(v110 + 12) = 2080;
          v111 = sub_2DC10(v83, v82, v169);

          *(v110 + 14) = v111;
          _os_log_impl(&dword_0, v108, v109, "VerbEntityDisambiguationFlow: response verb %s does not match offered verb %s", v110, 0x16u);
          swift_arrayDestroy();
          v38 = v159;
        }

        else
        {
        }

        v23 = v158;
        v161(v168, v158);
        v15 = v156;
        v35 = v157;
        (*v148)(v157, v156);
        v86 = v164;
        goto LABEL_81;
      }
    }

    v84 = sub_5AE28();
    if (*(v84 + 16))
    {
      v85 = sub_37278(0x636E657265666572, 0xE900000000000065);
      v15 = v156;
      v23 = v158;
      v86 = v164;
      if ((v87 & 1) == 0)
      {
        goto LABEL_79;
      }

      v88 = *(*(v84 + 56) + 8 * v85);

      if (v88 >> 62)
      {
        if (!sub_5B678())
        {
LABEL_79:

          goto LABEL_80;
        }
      }

      else if (!*(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_79;
      }

      if ((v88 & 0xC000000000000001) != 0)
      {
        sub_5B5B8();
      }

      else
      {
        if (!*(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:

          v123 = sub_5B218();
          v124 = sub_5B4B8();

          v125 = v78;

          if (os_log_type_enabled(v123, v124))
          {
            v126 = swift_slowAlloc();
            v169[0] = swift_slowAlloc();
            *v126 = v135;
            v127 = sub_2DC10(v133, v125, v169);

            *(v126 + 4) = v127;
            *(v126 + 12) = 2080;
            v128 = sub_2DC10(v23, v132[0], v169);

            *(v126 + 14) = v128;
            _os_log_impl(&dword_0, v123, v124, "VerbEntityDisambiguationFlow: Offered entity name %s mathces response entity name %s", v126, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v161(v168, v158);
          v129 = v140;
          v130 = v138;
          v131 = v156;
          (*(v140 + 32))(v138, v157, v156);
          return (*(v129 + 56))(v130, 0, 1, v131);
        }
      }

      v78 = sub_5AE78();

      if (!v78)
      {
        goto LABEL_80;
      }

      v89 = sub_5AE88();
      if (*(v89 + 16))
      {
        v163 = v78;
        v90 = sub_37278(1701667182, 0xE400000000000000);
        if (v91)
        {
          v92 = *(*(v89 + 56) + 8 * v90);

          if (!(v92 >> 62))
          {
            if (*(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_42;
            }

LABEL_90:

            goto LABEL_73;
          }

          if (!sub_5B678())
          {
            goto LABEL_90;
          }

LABEL_42:
          if ((v92 & 0xC000000000000001) != 0)
          {
            sub_5B5B8();
          }

          else
          {
            if (!*(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_113;
            }
          }

          v93 = sub_5AE58();
          v78 = v94;

          if (!v78)
          {
            goto LABEL_73;
          }

          v133 = v93;
          v95 = sub_5AE28();
          if (*(v95 + 16))
          {
            v96 = sub_37278(0x636E657265666572, 0xE900000000000065);
            if (v97)
            {
              v98 = *(*(v95 + 56) + 8 * v96);

              if (v98 >> 62)
              {
                result = sub_5B678();
                if (result)
                {
                  goto LABEL_50;
                }
              }

              else if (*(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8)))
              {
LABEL_50:
                if ((v98 & 0xC000000000000001) != 0)
                {
                  sub_5B5B8();
                }

                else
                {
                  if (!*(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8)))
                  {
                    __break(1u);
LABEL_119:
                    __break(1u);
                    return result;
                  }
                }

                v100 = sub_5AE78();

                if (!v100)
                {
                  goto LABEL_90;
                }

                v101 = sub_5AE88();
                v102 = *(v101 + 16);
                v132[1] = v100;
                if (v102)
                {
                  v103 = sub_37278(1701667182, 0xE400000000000000);
                  if (v104)
                  {
                    v105 = *(*(v101 + 56) + 8 * v103);

                    if (v105 >> 62)
                    {
                      result = sub_5B678();
                      if (result)
                      {
LABEL_58:
                        if ((v105 & 0xC000000000000001) != 0)
                        {
                          sub_5B5B8();
                        }

                        else
                        {
                          if (!*(&dword_10 + (v105 & 0xFFFFFFFFFFFFFF8)))
                          {
                            goto LABEL_119;
                          }
                        }

                        v23 = sub_5AE58();
                        v107 = v106;

                        if (v107)
                        {
                          v169[0] = v133;
                          v169[1] = v78;
                          v170[0] = v23;
                          v170[1] = v107;
                          v132[0] = v107;
                          sub_1AB80();
                          if (!sub_5B518())
                          {
                            goto LABEL_114;
                          }

                          v23 = v158;
                        }

                        else
                        {

                          v23 = v158;
                        }

                        goto LABEL_80;
                      }
                    }

                    else if (*(&dword_10 + (v105 & 0xFFFFFFFFFFFFFF8)))
                    {
                      goto LABEL_58;
                    }
                  }
                }

LABEL_73:

                goto LABEL_80;
              }

              goto LABEL_90;
            }
          }
        }

        goto LABEL_73;
      }
    }

    else
    {

      v15 = v156;
      v23 = v158;
      v86 = v164;
    }

LABEL_80:

    v161(v168, v23);
    (*v148)(v35, v15);
LABEL_81:
    v53 = v79 + v142;
    v52 = v86 - 1;
    if (!v52)
    {

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v119 = sub_5B218();
      v120 = sub_5B4B8();
      if (os_log_type_enabled(v119, v120))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_0, v119, v120, "VerbEntityDisambiguationFlow: resolveResponseToVerbEntityParaphraseDisambiguation no match found", v122, 2u);
      }

      return (*(v140 + 56))(v138, 1, 1, v15);
    }
  }

  (*v165)(v168, v23);

LABEL_103:
  v35 = v19;
LABEL_104:
  v115 = sub_5B218();
  v116 = sub_5B4B8();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 0;
    _os_log_impl(&dword_0, v115, v116, "VerbEntityDisambiguationFlow: pluginAction has no userStatedTask paraphrase that can be interpreted as a UsoTask", v117, 2u);
  }

  v118 = v140;
  (*(v140 + 8))(v35, v15);
  return (*(v118 + 56))(v138, 1, 1, v15);
}

uint64_t sub_55C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = sub_5AAC8();
  v57 = *(v53 - 8);
  v3 = __chkstk_darwin(v53);
  v51 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v51 - v5;
  v52 = sub_5AA98();
  v55 = *(v52 - 8);
  __chkstk_darwin(v52);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5AA18();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v76 = &v51 - v12;
  v13 = sub_5AA58();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v75 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v51 - v17;
  v74 = sub_5A4E8();
  __chkstk_darwin(v74);
  v73 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = *(v19 + 16);
    v22 = v19 + 16;
    v24 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v65 = *(v22 + 56);
    v66 = v23;
    v64 = (v22 - 8);
    v63 = (v14 + 16);
    v62 = (v8 + 16);
    v61 = v8 + 8;
    v60 = (v14 + 8);
    v70 = v8;
    v59 = v8 + 32;
    v25 = _swiftEmptyArrayStorage;
    v71 = v11;
    v72 = v7;
    v26 = v76;
    v68 = v18;
    v69 = v13;
    v67 = v22;
    do
    {
      v76 = v21;
      v27 = v73;
      v28 = v74;
      v66(v73, v24, v74);
      sub_5A4B8();
      (*v64)(v27, v28);
      sub_5AA08();
      (*v63)(v75, v18, v13);
      sub_5A9D8();
      (*v62)(v11, v26, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_5892C(0, v25[2] + 1, 1, v25, &unk_73CC0, &unk_5C8E0, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
      }

      v30 = v25[2];
      v29 = v25[3];
      if (v30 >= v29 >> 1)
      {
        v25 = sub_5892C((v29 > 1), v30 + 1, 1, v25, &unk_73CC0, &unk_5C8E0, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
      }

      v31 = v70;
      v7 = v72;
      (*(v70 + 8))(v26, v72);
      v18 = v68;
      v13 = v69;
      (*v60)(v68, v69);
      v25[2] = v30 + 1;
      v32 = v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30;
      v11 = v71;
      (*(v31 + 32))(v32, v71, v7);
      v24 += v65;
      v21 = v76 - 1;
    }

    while (v76 != &dword_0 + 1);
  }

  v33 = v58;
  sub_5AA88();
  v34 = v56;
  sub_5AAB8();
  sub_5AAA8();
  v35 = v53;
  (*(v57 + 16))(v51, v34, v53);
  sub_5AA68();
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v36 = sub_5B228();
  sub_5B44(v36, qword_763B8);
  v37 = sub_5B218();
  v38 = sub_5B4B8();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v52;
  v41 = v55;
  if (v39)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v78 = v43;
    *v42 = 136315138;
    sub_5AB48();
    swift_beginAccess();
    v77[3] = v40;
    v77[4] = sub_5991C(&qword_724A8, &type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
    v44 = sub_5F2C(v77);
    (*(v41 + 16))(v44, v58, v40);
    v45 = sub_5AB38();
    v47 = v46;
    sub_5D00(v77);
    v48 = sub_2DC10(v45, v47, &v78);
    v41 = v55;

    *(v42 + 4) = v48;
    _os_log_impl(&dword_0, v37, v38, "VerbEntityDisambiguationFlow: NLUSystemDialogAct: %s", v42, 0xCu);
    sub_5D00(v43);

    v33 = v58;
  }

  (*(v57 + 8))(v56, v35);
  v49 = v54;
  swift_beginAccess();
  (*(v41 + 16))(v49, v33, v40);
  return (*(v41 + 8))(v33, v40);
}

uint64_t sub_564E8(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  sub_5B94(&unk_72440, &unk_5C460);
  v2[34] = swift_task_alloc();
  v3 = sub_5A488();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v4 = sub_5AA98();
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v5 = sub_5A648();
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();
  v6 = sub_5A588();
  v2[44] = v6;
  v2[45] = *(v6 - 8);
  v2[46] = swift_task_alloc();
  sub_5B94(&qword_724E8, &qword_5D090);
  v2[47] = swift_task_alloc();
  v7 = sub_5A3B8();
  v2[48] = v7;
  v2[49] = *(v7 - 8);
  v2[50] = swift_task_alloc();
  v8 = sub_5B188();
  v2[51] = v8;
  v2[52] = *(v8 - 8);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v9 = sub_5A5B8();
  v2[55] = v9;
  v2[56] = *(v9 - 8);
  v2[57] = swift_task_alloc();
  sub_5B94(&unk_73C70, &unk_5C300);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  sub_5B94(&qword_72030, &unk_5E370);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v10 = sub_5A4E8();
  v2[62] = v10;
  v2[63] = *(v10 - 8);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();

  return _swift_task_switch(sub_5693C, 0, 0);
}

uint64_t sub_5693C()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "VerbEntityDisambiguationFlow: generating output", v4, 2u);
  }

  v5 = *(v0 + 472);

  sub_5A2D8();
  v6 = sub_5A518();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(v5, 1, v6);
  v10 = *(v0 + 496);
  v11 = *(v0 + 504);
  v12 = (v0 + 488);
  v13 = *(v0 + 488);
  v14 = *(v0 + 472);
  if (v9 == 1)
  {
    sub_5D4C(*(v0 + 472), &unk_73C70, &unk_5C300);
    (*(v11 + 56))(v13, 1, 1, v10);
LABEL_12:
    sub_5D4C(*v12, &qword_72030, &unk_5E370);
    sub_58550();
    swift_allocError();
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }

  sub_5A4F8();
  v58 = *(v7 + 8);
  v58(v14, v6);
  v15 = *(v11 + 48);
  if (v15(v13, 1, v10) == 1)
  {
    goto LABEL_12;
  }

  v56 = v15;
  v16 = *(v0 + 464);
  v17 = *(*(v0 + 504) + 32);
  v17(*(v0 + 520), *(v0 + 488), *(v0 + 496));
  sub_5A2D8();
  if (v8(v16, 1, v6) == 1)
  {
    v18 = *(v0 + 496);
    v19 = *(v0 + 504);
    v12 = (v0 + 480);
    v20 = *(v0 + 480);
    v21 = *(v0 + 464);
    (*(v19 + 8))(*(v0 + 520), v18);
    sub_5D4C(v21, &unk_73C70, &unk_5C300);
    (*(v19 + 56))(v20, 1, 1, v18);
    goto LABEL_12;
  }

  v22 = v17;
  v23 = *(v0 + 496);
  v24 = *(v0 + 480);
  v25 = *(v0 + 464);
  sub_5A4F8();
  v58(v25, v6);
  if (v56(v24, 1, v23) == 1)
  {
    v12 = (v0 + 480);
    (*(*(v0 + 504) + 8))(*(v0 + 520), *(v0 + 496));
    goto LABEL_12;
  }

  v22(*(v0 + 512), *(v0 + 480), *(v0 + 496));
  sub_5A4D8();
  sub_5A4D8();
  sub_5B1C8();
  swift_allocObject();
  sub_5B1B8();
  sub_5B198();

  sub_5B1A8();

  sub_5B178();
  swift_allocObject();
  sub_5B1B8();
  sub_5B198();

  sub_5B1A8();

  sub_5B178();
  sub_5B1F8();
  sub_5CBC((v0 + 16), *(v0 + 40));
  sub_5B1E8();
  v28 = *(v0 + 504);
  v55 = *(v0 + 520);
  v57 = *(v0 + 512);
  v29 = *(v0 + 448);
  v49 = *(v0 + 432);
  v30 = *(v0 + 416);
  v48 = *(v0 + 424);
  v46 = *(v0 + 456);
  v47 = *(v0 + 408);
  v31 = *(v0 + 392);
  v32 = *(v0 + 376);
  v54 = *(v0 + 496);
  v50 = *(v0 + 336);
  v51 = *(v0 + 344);
  v52 = *(v0 + 328);
  v53 = *(v0 + 440);
  v59 = *(v0 + 264);
  v45 = *(v0 + 384);
  sub_5CBC((v0 + 56), *(v0 + 80));
  sub_5B208();
  sub_5CBC((v0 + 96), *(v0 + 120));
  sub_5B1D8();
  sub_5A398();
  sub_5D00((v0 + 96));
  (*(v31 + 56))(v32, 1, 1, v45);
  sub_5A598();
  v33 = *(v30 + 8);
  v33(v48, v47);
  v33(v49, v47);
  sub_5D00((v0 + 56));
  sub_5D00((v0 + 16));
  sub_5B94(&qword_72F48, &qword_5D140);
  v34 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_5C390;
  (*(v29 + 16))(v35 + v34, v46, v53);
  (*(v50 + 104))(v51, enum case for BehaviorAfterSpeaking.listen(_:), v52);
  sub_5A548();
  sub_5B94(&unk_73C90, &qword_5E380);
  v36 = *(v28 + 72);
  v37 = *(v28 + 80);
  *(v0 + 576) = v37;
  v38 = (v37 + 32) & ~v37;
  v39 = swift_allocObject();
  *(v0 + 528) = v39;
  *(v39 + 16) = xmmword_5C2D0;
  v40 = v39 + v38;
  v41 = *(v28 + 16);
  v41(v40, v55, v54);
  v41(v40 + v36, v57, v54);
  sub_5B638();
  sub_3856C(0);
  sub_5B618();
  sub_5B648();
  sub_5B658();
  sub_5B628();
  sub_3856C(1);
  sub_5B618();
  sub_5B648();
  sub_5B658();
  sub_5B628();
  *(v0 + 536) = _swiftEmptyArrayStorage;
  v42 = swift_allocObject();
  *(v42 + 16) = v59;
  *(v42 + 24) = _swiftEmptyArrayStorage;
  v43 = swift_allocObject();
  *(v0 + 544) = v43;
  *(v43 + 16) = &unk_5E390;
  *(v43 + 24) = v42;

  v44 = swift_task_alloc();
  *(v0 + 552) = v44;
  *v44 = v0;
  v44[1] = sub_5736C;

  return sub_51048(&unk_5E3A0, v43, v39);
}

uint64_t sub_5736C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 560) = a1;
  *(v3 + 568) = v1;

  if (v1)
  {

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v4 = sub_57B9C;
  }

  else
  {
    v4 = sub_57504;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_57504()
{
  v1 = *(v0 + 536);

  if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    sub_5B94(&qword_72468, &qword_5C5F0);
    sub_5B668();
  }

  else
  {
    sub_5B7B8();
  }

  v2 = *(v0 + 568);
  v3 = *(v0 + 528);
  v4 = *(v0 + 320);

  sub_1AB38(0, &unk_72470, SACardSnippet_ptr);
  v43 = sub_5B498();

  sub_55C70(v3, v4);
  if (v2)
  {
    v41 = *(v0 + 512);
    v42 = *(v0 + 520);
    v6 = *(v0 + 496);
    v5 = *(v0 + 504);
    v7 = *(v0 + 448);
    v40 = *(v0 + 456);
    v8 = *(v0 + 440);
    v9 = *(v0 + 360);
    v10 = *(v0 + 368);
    v11 = *(v0 + 352);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v9 + 8))(v10, v11);
    (*(v7 + 8))(v40, v8);
    v12 = *(v5 + 8);
    v12(v41, v6);
    v12(v42, v6);
  }

  else
  {
    v38 = *(v0 + 512);
    v39 = *(v0 + 520);
    v37 = *(v0 + 504);
    v31 = *(v0 + 496);
    v34 = *(v0 + 448);
    v35 = *(v0 + 440);
    v36 = *(v0 + 456);
    v30 = *(v0 + 368);
    v32 = *(v0 + 360);
    v33 = *(v0 + 352);
    v15 = *(v0 + 312);
    v14 = *(v0 + 320);
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
    v29 = v14;
    v18 = *(v0 + 280);
    v19 = *(v0 + 288);
    v27 = *(v0 + 272);
    v28 = *(v0 + 256);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_5A478();
    sub_5B94(&qword_72518, &unk_5C650);
    v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_5C390;
    (*(v15 + 16))(v21 + v20, v14, v16);
    sub_5A458();
    sub_5A868();
    sub_5A868();
    sub_5CBC((v0 + 176), *(v0 + 200));
    sub_5A218();
    sub_5B94(&qword_72460, &unk_5C5E0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_5C4A0;
    *(v22 + 32) = v43;
    (*(v19 + 16))(v27, v17, v18);
    (*(v19 + 56))(v27, 0, 1, v18);
    v23 = sub_5A908();
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    *(v0 + 216) = 0u;
    v28[3] = v23;
    v28[4] = &protocol witness table for AceOutput;
    sub_5F2C(v28);
    v24 = v43;
    sub_5A3E8();

    sub_5D4C(v0 + 216, &qword_721D8, &qword_5C480);
    sub_5D4C(v27, &unk_72440, &unk_5C460);
    sub_5D00((v0 + 136));
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v29, v16);
    (*(v32 + 8))(v30, v33);
    (*(v34 + 8))(v36, v35);
    v25 = *(v37 + 8);
    v25(v38, v31);
    v25(v39, v31);
    sub_5D00((v0 + 176));
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_57B9C()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  v6 = v0[56];
  v5 = v0[57];
  v7 = v0[55];
  (*(v0[45] + 8))(v0[46], v0[44]);
  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 8);
  v8(v2, v4);
  v8(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_57D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  return _swift_task_switch(sub_57D6C, 0, 0);
}

unint64_t sub_57D6C()
{
  v1 = v0[4];
  result = v0[2];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_5B5B8();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)) <= result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v3 = *(v1 + 8 * result + 32);
LABEL_5:
  v4 = v3;
  v5 = sub_59790(v0[3], v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_57E3C(uint64_t a1, char *a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = *a2;
  v7 = *(sub_5B94(&qword_73CA8, &qword_5E3C0) + 48);
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = sub_57F64;

  return v10(v6, &a2[v7]);
}

uint64_t sub_57F64(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_58074()
{
  sub_5D00(v0 + 2);
  sub_5D00(v0 + 7);
  sub_5D00(v0 + 12);
  v1 = OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_firstAction;
  v2 = sub_5A318();
  v3 = *(*(v2 - 8) + 8);
  v3(&v0[v1], v2);
  v3(&v0[OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_secondAction], v2);
  v3(&v0[OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_fallBackAction], v2);
  sub_599C8(&v0[OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_state], type metadata accessor for VerbEntityDisambiguationFlow.State);

  return swift_deallocClassInstance();
}

uint64_t sub_581C0(uint64_t a1)
{
  result = sub_5A318();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for VerbEntityDisambiguationFlow.State(319);
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

uint64_t sub_582D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_58360(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_58478(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_53050(a1);
}

uint64_t sub_58514(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VerbEntityDisambiguationFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_58550()
{
  result = qword_73C80;
  if (!qword_73C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73C80);
  }

  return result;
}

char *sub_585F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_5B94(&qword_72F28, &unk_5D160);
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

char *sub_58700(char *result, int64_t a2, char a3, char *a4)
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
    sub_5B94(&qword_73D00, &qword_5E400);
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

char *sub_58820(char *result, int64_t a2, char a3, char *a4)
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
    sub_5B94(&qword_73D08, &qword_5E420);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_5892C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_5B94(a5, a6);
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

uint64_t sub_58B08(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = a1;
  v7 = *(a6 + 32);
  v8 = *(a6 + 16);
  *(v6 + 16) = *a6;
  *(v6 + 32) = v8;
  *(v6 + 48) = v7;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 88) = v9;
  *v9 = v6;
  v9[1] = sub_58C1C;

  return v11(v6 + 56, v6 + 16);
}

uint64_t sub_58C1C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_58D58;
  }

  else
  {
    v2 = sub_58D30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_58D30()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  *v1 = *(v0 + 56);
  *(v1 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_58D70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a1;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 56) = v8;
  *v8 = v6;
  v8[1] = sub_58E74;

  return v10(v6 + 16, a6);
}

uint64_t sub_58E74()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_58FB4;
  }

  else
  {
    v2 = sub_58F88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_58F88()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_58FCC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a1;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_590D0;

  return v10(v6 + 16, a6);
}

uint64_t sub_590D0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_59204;
  }

  else
  {
    v2 = sub_591E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5921C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5925C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_5930C;

  return sub_57D48(a1, a2, v7, v6);
}

uint64_t sub_5930C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_59408()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_59440(uint64_t a1, char *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BBF8;

  return sub_57E3C(a1, a2, v6);
}

uint64_t sub_59508(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_73CA8, &qword_5E3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_59578()
{
  v1 = (sub_5B94(&qword_73CA8, &qword_5E3C0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v1[14];
  v6 = sub_5A4E8();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_59674(uint64_t a1)
{
  v4 = *(sub_5B94(&qword_73CA8, &qword_5E3C0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BBF8;

  return sub_58FCC(a1, v6, v7, v8, v9, v1 + v5);
}

id sub_59790(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(SFRowCardSection) init];
  sub_5A4C8();
  v3 = sub_5A358();

  [v2 setLeadingText:v3];

  sub_5B94(&qword_72460, &unk_5C5E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5C4A0;
  v5 = v2;
  *(v4 + 32) = sub_5A368();
  sub_1AB38(0, &qword_72490, SFAbstractCommand_ptr);
  isa = sub_5B3C8().super.isa;

  [v5 setCommands:isa];

  return v5;
}

uint64_t sub_598B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VerbEntityDisambiguationFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5991C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_59964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VerbEntityDisambiguationFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_599C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_59A28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_59A78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BBF8;

  return sub_58B08(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_59B50()
{
  v1 = sub_5A318();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_59C1C(uint64_t a1)
{
  v4 = *(sub_5A318() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_5934;

  return sub_58D70(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_59D40()
{
  result = qword_73D18;
  if (!qword_73D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73D18);
  }

  return result;
}