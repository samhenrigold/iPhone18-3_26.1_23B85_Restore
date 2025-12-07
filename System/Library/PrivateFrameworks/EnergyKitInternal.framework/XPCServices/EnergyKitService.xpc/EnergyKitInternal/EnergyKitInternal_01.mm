uint64_t sub_1000248DC()
{
  v1 = v0[99];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[31];
  v5 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  swift_beginAccess();
  sub_1000187EC(v1 + v5, v2);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v6 = v0[34];

    sub_100022154(v6, &qword_1000C7D58, &qword_1000ABB20);
    v7 = 1;
  }

  else
  {
    v8 = v0[101];
    v9 = v0[34];
    v11 = v0[31];
    v10 = v0[32];
    v12 = v0[30];
    (*(v11 + 16))(v10, v9, v12);
    sub_100022154(v9, &qword_1000C7D58, &qword_1000ABB20);
    v0[28] = v8;
    sub_1000A3BF8();
    (*(v11 + 8))(v10, v12);
    v7 = 0;
  }

  v13 = v0[36];
  v14 = v0[29];
  v15 = sub_10000275C(&qword_1000C7EC8, &qword_1000ABD50);
  (*(*(v15 - 8) + 56))(v13, v7, 1, v15);
  sub_100022154(v13, &qword_1000C7EB8, &qword_1000ABD48);

  return _swift_task_switch(sub_100024AB8, v14, 0);
}

uint64_t sub_100024AB8()
{
  v178 = v0;
  v1 = v0 + 208;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 208);
  if (isUniquelyReferenced_nonNull_native)
  {
    v4 = v3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_10009501C(0, v4, 1, v3);
    }

    v5 = *(*(v0 + 304) + 80);
    v6 = v3 + ((v5 + 32) & ~v5);
    swift_arrayDestroy();
    if (v4)
    {
      v7 = *(*(v0 + 304) + 72);
      if (v7 * v4 > 0 || v6 >= &v6[v7 * v4 + (v3[2] - v4) * v7])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v7)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v3[2] -= v4;
    }

    goto LABEL_22;
  }

  if (v3[3] > 1uLL)
  {
    v9 = *(v0 + 304);
    sub_10000275C(&qword_1000C7ED0, &unk_1000ABD58);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    if (v10)
    {
      if (v13 - v11 != 0x8000000000000000 || v10 != -1)
      {
        v12[2] = 0;
        v12[3] = 2 * ((v13 - v11) / v10);

        v3 = v12;
        goto LABEL_22;
      }
    }

    else
    {
LABEL_87:
      __break(1u);
    }

    __break(1u);
    return _swift_task_switch(v13, v14, v15);
  }

  v3 = &_swiftEmptyArrayStorage;
LABEL_22:
  *(v0 + 208) = v3;
  swift_endAccess();
  v17 = *(v0 + 800);
  v142 = *(v0 + 784);
  v150 = (v0 + 208);
  while (1)
  {
    v18 = *(v0 + 584);
    v19 = *(v0 + 232);
    v20 = swift_task_alloc();
    v20[2] = v19;
    v20[3] = v18;
    v20[4] = v1;
    sub_1000A3D58();
    if (!v17)
    {

      goto LABEL_31;
    }

    swift_errorRetain();
    v21 = sub_1000A3518();
    v22 = sub_1000A3CC8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v177[0] = v25;
      *v23 = 136315394;
      sub_100032134(&qword_1000C7ED8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v26 = sub_1000A3F28();
      v28 = sub_1000954AC(v26, v27, v177);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2112;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v29;
      *v24 = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "[LoadEventsQueryEngine] Error processing rack %s: %@", v23, 0x16u);
      sub_100022154(v24, &unk_1000C7740, &qword_1000AB610);

      sub_10000F7B8(v25);
    }

    v30 = sub_1000A2348();
    if ([v30 code] == 134060)
    {
      break;
    }

    swift_errorRetain();
    v31 = sub_1000A3518();
    v32 = sub_1000A3CC8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "[LoadEventsQueryEngine] Error detected %@", v33, 0xCu);
      sub_100022154(v34, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

LABEL_31:
    v174 = *(v0 + 860);
    v166 = *(v0 + 760);
    v152 = *(v0 + 736);
    v155 = *(v0 + 744);
    v36 = *(v0 + 640);
    v37 = *(v0 + 632);
    v38 = *(v0 + 400);
    v39 = *(v0 + 384);
    v40 = *(v0 + 344);
    v41 = *(v0 + 328);
    v42 = *(v0 + 232);
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    v36(v38, v42 + v37, v39);
    v155(v40, v42 + v152, v41);
    v43 = v166(v40, v41);
    if (v43 == v174)
    {
      v145 = *(v0 + 880);
      v168 = *(v0 + 720);
      v161 = *(v0 + 704);
      v147 = *(v0 + 688);
      v143 = *(v0 + 672);
      v44 = *(v0 + 656);
      v46 = *(v0 + 480);
      v45 = *(v0 + 488);
      v48 = *(v0 + 448);
      v47 = *(v0 + 456);
      v153 = *(v0 + 440);
      v49 = *(v0 + 424);
      v50 = *(v0 + 400);
      v51 = *(v0 + 376);
      v156 = *(v0 + 384);
      v52 = *(v0 + 360);
      sub_1000A2E78();
      v143(v51, v145, v52);
      sub_1000A2ED8();
      v147(v51, v52);
      v44(v47, v45, v49);
      v44(v48, v46, v49);
      sub_1000A2268();
      v53 = v161;
      v161(v46, v49);
      v161(v45, v49);
      v168(v50, v156);
    }

    else
    {
      if (v43 == *(v0 + 864))
      {
        v169 = *(v0 + 720);
        v54 = *(v0 + 704);
        v55 = *(v0 + 656);
        v57 = *(v0 + 480);
        v56 = *(v0 + 488);
        v59 = *(v0 + 448);
        v58 = *(v0 + 456);
        v162 = *(v0 + 440);
        v60 = *(v0 + 424);
        v61 = *(v0 + 400);
        v157 = *(v0 + 384);
        sub_1000A2E98();
        sub_1000A2E38();
        v55(v58, v56, v60);
        v55(v59, v57, v60);
        sub_1000A2268();
        v54(v57, v60);
        v54(v56, v60);
        v169(v61, v157);
        v54(v162, v60);
        goto LABEL_41;
      }

      if (v43 == *(v0 + 868))
      {
        v170 = *(v0 + 720);
        v163 = *(v0 + 704);
        v62 = *(v0 + 656);
        v64 = *(v0 + 480);
        v63 = *(v0 + 488);
        v66 = *(v0 + 448);
        v65 = *(v0 + 456);
        v67 = *(v0 + 440);
        v68 = *(v0 + 424);
        v69 = *(v0 + 400);
        v158 = *(v0 + 384);
        sub_1000A2EA8();
        sub_1000A2E58();
        v62(v65, v63, v68);
        v62(v66, v64, v68);
        sub_1000A2268();
        v163(v64, v68);
        v163(v63, v68);
        v170(v69, v158);
        v163(v67, v68);
        goto LABEL_41;
      }

      v164 = *(v0 + 720);
      v171 = *(v0 + 704);
      if (v43 != *(v0 + 872) && v43 != *(v0 + 876))
      {
        v70 = *(v0 + 656);
        v72 = *(v0 + 480);
        v71 = *(v0 + 488);
        v74 = *(v0 + 448);
        v73 = *(v0 + 456);
        v75 = *(v0 + 440);
        v76 = *(v0 + 424);
        v77 = *(v0 + 400);
        v149 = *(v0 + 384);
        v151 = *(v0 + 336);
        v154 = *(v0 + 328);
        v159 = *(v0 + 344);
        sub_1000A2E48();
        sub_1000A2EE8();
        v70(v73, v71, v76);
        v70(v74, v72, v76);
        sub_1000A2268();
        v171(v72, v76);
        v171(v71, v76);
        v164(v77, v149);
        v171(v75, v76);
        (*(v151 + 8))(v159, v154);
        goto LABEL_41;
      }

      v148 = *(v0 + 688);
      v144 = *(v0 + 672);
      v93 = *(v0 + 856);
      v94 = *(v0 + 656);
      v96 = *(v0 + 480);
      v95 = *(v0 + 488);
      v97 = *(v0 + 448);
      v146 = *(v0 + 456);
      v153 = *(v0 + 440);
      v49 = *(v0 + 424);
      v98 = *(v0 + 400);
      v99 = *(v0 + 376);
      v160 = *(v0 + 384);
      v100 = *(v0 + 360);
      sub_1000A2E88();
      v144(v99, v93, v100);
      sub_1000A2ED8();
      v148(v99, v100);
      v94(v146, v95, v49);
      v94(v97, v96, v49);
      sub_1000A2268();
      v53 = v171;
      v171(v96, v49);
      v171(v95, v49);
      v164(v98, v160);
    }

    v53(v153, v49);
LABEL_41:
    (*(*(v0 + 560) + 40))(*(v0 + 584), *(v0 + 568), *(v0 + 552));
    v78 = sub_1000A3518();
    v79 = sub_1000A3CA8();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v177[0] = v81;
      *v80 = 136315138;
      sub_100032134(&qword_1000C7ED8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v82 = sub_1000A3F28();
      v84 = sub_1000954AC(v82, v83, v177);

      *(v80 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v78, v79, "[LoadEventsQueryEngine] Next rack: %s", v80, 0xCu);
      sub_10000F7B8(v81);
    }

    v85 = *(v0 + 704);
    v86 = *(v0 + 488);
    v87 = *(v0 + 464);
    v88 = *(v0 + 424);
    v89 = *(v0 + 432);
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    v85(v87, v88);
    (*(v89 + 32))(v87, v86, v88);
    sub_1000A2248();
    v90 = sub_1000A2438();
    v13 = (v85)(v86, v88);
    if ((v90 & 1) == 0)
    {
      goto LABEL_61;
    }

    v17 = 0;
    v1 = v0 + 208;
    v91 = *v150;
    v92 = *(*v150 + 16);
    if (v92)
    {
      *(v0 + 784) = v142 + v92;
      if (!__OFADD__(v142, v92))
      {
        v101 = sub_1000A3518();
        v102 = sub_1000A3CA8();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 134217984;
          *(v103 + 4) = *(v91 + 16);
          _os_log_impl(&_mh_execute_header, v101, v102, "[LoadEventsQueryEngine] Yielding %ld records", v103, 0xCu);
        }

        v104 = *(v0 + 232);

        v14 = *(v104 + 128);
        *(v0 + 792) = v14;
        v105 = *(v91 + 16);
        if (v105)
        {
          v106 = *(v0 + 304);
          v107 = v91 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
          v175 = *(v106 + 72);
          v167 = v14;
          v172 = *(v106 + 16);

          v108 = &_swiftEmptyArrayStorage;
          do
          {
            v172(*(v0 + 320), v107, *(v0 + 296));
            sub_100032134(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload, &protocol conformance descriptor for InsightRecordPayload);
            v109 = sub_1000A3458();
            v111 = v110;
            (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v108 = sub_100095044(0, *(v108 + 2) + 1, 1, v108);
            }

            v113 = *(v108 + 2);
            v112 = *(v108 + 3);
            if (v113 >= v112 >> 1)
            {
              v108 = sub_100095044((v112 > 1), v113 + 1, 1, v108);
            }

            *(v108 + 2) = v113 + 1;
            v114 = &v108[16 * v113];
            *(v114 + 4) = v109;
            *(v114 + 5) = v111;
            v107 += v175;
            --v105;
          }

          while (v105);

          v14 = v167;
        }

        else
        {
          v108 = &_swiftEmptyArrayStorage;
        }

        *(v0 + 808) = v108;
        *(v0 + 800) = 0;
        v140 = sub_1000248DC;
        goto LABEL_82;
      }

LABEL_86:
      __break(1u);
      goto LABEL_87;
    }
  }

  v115 = sub_1000A3518();
  v116 = sub_1000A3CC8();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 0;
    _os_log_impl(&_mh_execute_header, v115, v116, "[LoadEventsQueryEngine] Core Data error detected, stopping processing", v117, 2u);
  }

LABEL_61:
  v118 = *(v0 + 208);
  *(v0 + 816) = v118;
  v119 = *(v118 + 16);
  if (v119)
  {
    *(v0 + 824) = v142 + v119;
    if (__OFADD__(v142, v119))
    {
      __break(1u);
      goto LABEL_86;
    }

    v120 = sub_1000A3518();
    v121 = sub_1000A3CA8();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 134217984;
      *(v122 + 4) = *(v118 + 16);
      _os_log_impl(&_mh_execute_header, v120, v121, "[LoadEventsQueryEngine] Final yield of %ld records", v122, 0xCu);
    }

    v123 = *(v0 + 232);

    v14 = *(v123 + 128);
    *(v0 + 832) = v14;
    v124 = *(v118 + 16);
    if (v124)
    {
      v165 = v14;
      v125 = *(v0 + 304);
      v127 = *(v125 + 16);
      v126 = v125 + 16;
      v128 = v118 + ((*(v126 + 64) + 32) & ~*(v126 + 64));
      v173 = *(v126 + 56);
      v176 = v127;

      v129 = &_swiftEmptyArrayStorage;
      do
      {
        v176(*(v0 + 312), v128, *(v0 + 296));
        sub_100032134(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload, &protocol conformance descriptor for InsightRecordPayload);
        v130 = sub_1000A3458();
        v132 = v131;
        (*(v126 - 8))(*(v0 + 312), *(v0 + 296));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_100095044(0, *(v129 + 2) + 1, 1, v129);
        }

        v134 = *(v129 + 2);
        v133 = *(v129 + 3);
        if (v134 >= v133 >> 1)
        {
          v129 = sub_100095044((v133 > 1), v134 + 1, 1, v129);
        }

        *(v129 + 2) = v134 + 1;
        v135 = &v129[16 * v134];
        *(v135 + 4) = v130;
        *(v135 + 5) = v132;
        v128 += v173;
        --v124;
      }

      while (v124);

      v14 = v165;
    }

    else
    {
      v129 = &_swiftEmptyArrayStorage;
    }

    *(v0 + 840) = v129;
    v140 = sub_100025CDC;
  }

  else
  {
    v136 = sub_1000A3518();
    v137 = sub_1000A3CA8();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 134217984;
      *(v138 + 4) = v142;
      _os_log_impl(&_mh_execute_header, v136, v137, "[LoadEventsQueryEngine] Processing complete. Total records: %ld", v138, 0xCu);
    }

    v139 = *(v0 + 232);

    v14 = *(v139 + 128);
    *(v0 + 848) = v14;
    v140 = sub_100025FA4;
  }

LABEL_82:
  v13 = v140;
  v15 = 0;

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100025CDC()
{
  v1 = v0[104];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v5 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  swift_beginAccess();
  sub_1000187EC(v1 + v5, v2);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v6 = v0[33];

    sub_100022154(v6, &qword_1000C7D58, &qword_1000ABB20);
    v7 = 1;
  }

  else
  {
    v8 = v0[105];
    v10 = v0[32];
    v9 = v0[33];
    v11 = v0[30];
    v12 = v0[31];
    (*(v12 + 16))(v10, v9, v11);
    sub_100022154(v9, &qword_1000C7D58, &qword_1000ABB20);
    v0[27] = v8;
    sub_1000A3BF8();
    (*(v12 + 8))(v10, v11);
    v7 = 0;
  }

  v13 = v0[35];
  v14 = v0[29];
  v15 = sub_10000275C(&qword_1000C7EC8, &qword_1000ABD50);
  (*(*(v15 - 8) + 56))(v13, v7, 1, v15);
  sub_100022154(v13, &qword_1000C7EB8, &qword_1000ABD48);

  return _swift_task_switch(sub_100025EB4, v14, 0);
}

uint64_t sub_100025EB4(uint64_t a1)
{
  v2 = v1[103];
  v3 = sub_1000A3518();
  v4 = sub_1000A3CA8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[LoadEventsQueryEngine] Processing complete. Total records: %ld", v5, 0xCu);
  }

  v6 = v1[29];

  v7 = *(v6 + 128);
  v1[106] = v7;

  return _swift_task_switch(sub_100025FA4, v7, 0);
}

uint64_t sub_100025FA4()
{
  v1 = *(v0 + 232);
  sub_10001833C();

  return _swift_task_switch(sub_100026010, v1, 0);
}

uint64_t sub_100026010()
{
  v1 = v0[88];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[73];
  v5 = v0[69];
  v6 = v0[58];
  v7 = v0[53];
  [*(v0[29] + 136) reset];
  v1(v6, v7);
  v2(v3, v5);
  v2(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100026298()
{

  v1 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity;
  v2 = sub_1000A38F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
  v4 = sub_1000A3938();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar;
  v6 = sub_1000A2578();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_siteID;
  v8 = sub_1000A2508();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100026410()
{
  sub_100026298();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100026464(uint64_t a1)
{
  result = sub_1000A38F8();
  if (v2 <= 0x3F)
  {
    result = sub_1000A3938();
    if (v3 <= 0x3F)
    {
      result = sub_1000A2578();
      if (v4 <= 0x3F)
      {
        result = sub_1000A2508();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000265EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000275C(&qword_1000C7F90, &qword_1000ABDB8);
  __chkstk_darwin(*(*(v2 - 8) + 64));
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = &v26 - v4;
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v29 = a1;
  sub_1000A3118();
  v31 = sub_10000275C(&qword_1000C7F68, &qword_1000ABD98);
  sub_1000A2778();
  v17 = sub_1000A27B8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v16, 1, v17);
  v30 = v18;
  if (v20 == 1)
  {
    sub_100022154(v16, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v18 + 8))(v16, v17);
  }

  sub_1000A30A8();
  sub_1000A2748();
  if (v19(v13, 1, v17) == 1)
  {
    sub_100022154(v13, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v30 + 8))(v13, v17);
  }

  sub_1000A3018();
  sub_1000A2768();
  if (v19(v10, 1, v17) == 1)
  {
    sub_100022154(v10, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v30 + 8))(v10, v17);
  }

  v21 = v27;
  sub_1000A3078();
  sub_1000A2758();
  if (v19(v7, 1, v17) == 1)
  {
    sub_100022154(v7, &qword_1000C7F90, &qword_1000ABDB8);
    v22 = v30;
  }

  else
  {
    sub_1000A27A8();
    v22 = v30;
    (*(v30 + 8))(v7, v17);
  }

  sub_1000A3048();
  sub_1000A2788();
  v23 = v19(v21, 1, v17);
  v24 = v28;
  if (v23 == 1)
  {
    sub_100022154(v21, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v22 + 8))(v21, v17);
  }

  sub_1000A30D8();
  sub_1000A2798();
  if (v19(v24, 1, v17) == 1)
  {
    sub_100022154(v24, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v22 + 8))(v24, v17);
  }

  return sub_1000A3108();
}

uint64_t sub_100026AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000275C(&qword_1000C7F90, &qword_1000ABDB8);
  __chkstk_darwin(*(*(v4 - 8) + 64));
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  __chkstk_darwin(v12);
  v14 = v19 - v13;
  v19[0] = a2;
  sub_1000A3228();
  sub_10000275C(&qword_1000C7F60, &qword_1000ABD90);
  v19[1] = a1;
  sub_1000A27D8();
  v15 = sub_1000A27B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
    sub_100022154(v14, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v16 + 8))(v14, v15);
  }

  sub_1000A3188();
  sub_1000A27E8();
  if (v17(v11, 1, v15) == 1)
  {
    sub_100022154(v11, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v16 + 8))(v11, v15);
  }

  sub_1000A31B8();
  sub_1000A27F8();
  if (v17(v8, 1, v15) == 1)
  {
    sub_100022154(v8, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v16 + 8))(v8, v15);
  }

  sub_1000A3218();
  sub_1000A2808();
  if (v17(v6, 1, v15) == 1)
  {
    sub_100022154(v6, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v16 + 8))(v6, v15);
  }

  return sub_1000A31E8();
}

uint64_t sub_100026E20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000275C(&qword_1000C7F88, &qword_1000ABDB0);
  __chkstk_darwin(*(*(v2 - 8) + 64));
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = &v26 - v4;
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v29 = a1;
  sub_1000A3118();
  v31 = sub_10000275C(&qword_1000C7F78, &qword_1000ABDA8);
  sub_1000A2778();
  v17 = sub_1000A2918();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v16, 1, v17);
  v30 = v18;
  if (v20 == 1)
  {
    sub_100022154(v16, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v18 + 8))(v16, v17);
  }

  sub_1000A30A8();
  sub_1000A2748();
  if (v19(v13, 1, v17) == 1)
  {
    sub_100022154(v13, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v30 + 8))(v13, v17);
  }

  sub_1000A3018();
  sub_1000A2768();
  if (v19(v10, 1, v17) == 1)
  {
    sub_100022154(v10, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v30 + 8))(v10, v17);
  }

  v21 = v27;
  sub_1000A3078();
  sub_1000A2758();
  if (v19(v7, 1, v17) == 1)
  {
    sub_100022154(v7, &qword_1000C7F88, &qword_1000ABDB0);
    v22 = v30;
  }

  else
  {
    sub_1000A2908();
    v22 = v30;
    (*(v30 + 8))(v7, v17);
  }

  sub_1000A3048();
  sub_1000A2788();
  v23 = v19(v21, 1, v17);
  v24 = v28;
  if (v23 == 1)
  {
    sub_100022154(v21, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v22 + 8))(v21, v17);
  }

  sub_1000A30D8();
  sub_1000A2798();
  if (v19(v24, 1, v17) == 1)
  {
    sub_100022154(v24, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v22 + 8))(v24, v17);
  }

  return sub_1000A3108();
}

uint64_t sub_1000272EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000275C(&qword_1000C7F88, &qword_1000ABDB0);
  __chkstk_darwin(*(*(v4 - 8) + 64));
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  __chkstk_darwin(v12);
  v14 = v19 - v13;
  v19[0] = a2;
  sub_1000A3228();
  sub_10000275C(&qword_1000C7F70, &qword_1000ABDA0);
  v19[1] = a1;
  sub_1000A27D8();
  v15 = sub_1000A2918();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
    sub_100022154(v14, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v16 + 8))(v14, v15);
  }

  sub_1000A3188();
  sub_1000A27E8();
  if (v17(v11, 1, v15) == 1)
  {
    sub_100022154(v11, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v16 + 8))(v11, v15);
  }

  sub_1000A31B8();
  sub_1000A27F8();
  if (v17(v8, 1, v15) == 1)
  {
    sub_100022154(v8, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v16 + 8))(v8, v15);
  }

  sub_1000A3218();
  sub_1000A2808();
  if (v17(v6, 1, v15) == 1)
  {
    sub_100022154(v6, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v16 + 8))(v6, v15);
  }

  return sub_1000A31E8();
}

void *sub_100027654()
{
  v1 = v0;
  v2 = sub_1000A2498();
  v30 = *(v2 - 8);
  __chkstk_darwin(*(v30 + 64));
  v31 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v28 - v4;
  sub_1000A2F08();
  v6 = sub_1000A2EF8();
  [v6 setResultType:0];
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = sub_1000A3A78();
  v9 = [v7 initWithKey:v8 ascending:1];

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000ABC60;
  *(v10 + 32) = v9;
  sub_100032224(0, &qword_1000C7EF0, NSSortDescriptor_ptr);
  v29 = v9;
  isa = sub_1000A3B48().super.isa;

  [v6 setSortDescriptors:isa];

  v12 = sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  v28[1] = "AND isConsumptionBlock = %@";
  v28[2] = v12;
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000ABC70;
  v14 = sub_1000A24D8().super.isa;
  *(v13 + 56) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v13 + 64) = sub_100032180(&qword_1000C7F08, &qword_1000C7F00, NSUUID_ptr);
  *(v13 + 32) = v14;
  v16 = *(v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_appID);
  v15 = *(v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_appID + 8);
  *(v13 + 96) = &type metadata for String;
  v17 = sub_1000321D0();
  *(v13 + 72) = v16;
  *(v13 + 80) = v15;
  v18 = *(v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_deviceID);
  v19 = *(v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_deviceID + 8);
  *(v13 + 136) = &type metadata for String;
  *(v13 + 144) = v17;
  *(v13 + 104) = v17;
  *(v13 + 112) = v18;
  *(v13 + 120) = v19;

  sub_1000A2288();
  v20 = sub_1000A2418().super.isa;
  v21 = *(v30 + 8);
  v21(v5, v2);
  v22 = sub_100032224(0, &qword_1000C7F18, NSDate_ptr);
  *(v13 + 176) = v22;
  v23 = sub_100032180(&qword_1000C7F20, &qword_1000C7F18, NSDate_ptr);
  *(v13 + 184) = v23;
  *(v13 + 152) = v20;
  v24 = v31;
  sub_1000A2248();
  v25 = sub_1000A2418().super.isa;
  v21(v24, v2);
  *(v13 + 216) = v22;
  *(v13 + 224) = v23;
  *(v13 + 192) = v25;
  v26 = sub_1000A3C98();
  [v6 setPredicate:v26];
  [v6 setFetchBatchSize:30];
  [v6 setReturnsObjectsAsFaults:0];

  return v6;
}

void *sub_100027A58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1000A2498();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = sub_1000A3318();
  v11 = *(v10 - 8);
  __chkstk_darwin(*(v11 + 64));
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for IntervalBlockPayload.FlowDirection.reverse(_:), v10);
  v14 = sub_1000A3308();
  (*(v11 + 8))(v13, v10);
  v40 = v14 != a2;
  sub_1000A2F28();
  v15 = sub_1000A2F18();
  [v15 setResultType:0];
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = sub_1000A3A78();
  v18 = [v16 initWithKey:v17 ascending:1];

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000ABC60;
  *(v19 + 32) = v18;
  sub_100032224(0, &qword_1000C7EF0, NSSortDescriptor_ptr);
  v39 = v18;
  isa = sub_1000A3B48().super.isa;

  [v15 setSortDescriptors:isa];

  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000ABC80;
  v22 = sub_1000A24D8().super.isa;
  *(v21 + 56) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v21 + 64) = sub_100032180(&qword_1000C7F08, &qword_1000C7F00, NSUUID_ptr);
  *(v21 + 32) = v22;
  v24 = *(v3 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_appID);
  v23 = *(v3 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_appID + 8);
  *(v21 + 96) = &type metadata for String;
  v25 = sub_1000321D0();
  *(v21 + 72) = v24;
  *(v21 + 80) = v23;
  v26 = *(v3 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_deviceID);
  v27 = *(v3 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_deviceID + 8);
  *(v21 + 136) = &type metadata for String;
  *(v21 + 144) = v25;
  *(v21 + 104) = v25;
  *(v21 + 112) = v26;
  *(v21 + 120) = v27;

  sub_1000A2288();
  v28 = sub_1000A2418().super.isa;
  v29 = *(v6 + 8);
  v29(v9, v5);
  v30 = sub_100032224(0, &qword_1000C7F18, NSDate_ptr);
  *(v21 + 176) = v30;
  v31 = sub_100032180(&qword_1000C7F20, &qword_1000C7F18, NSDate_ptr);
  *(v21 + 184) = v31;
  *(v21 + 152) = v28;
  v32 = v41;
  sub_1000A2248();
  v33 = sub_1000A2418().super.isa;
  v29(v32, v5);
  *(v21 + 216) = v30;
  *(v21 + 224) = v31;
  *(v21 + 192) = v33;
  v34 = sub_100032224(0, &qword_1000C7F28, NSNumber_ptr);
  v35 = sub_1000A3D98(v40).super.super.isa;
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  *(v21 + 256) = v34;
  *(v21 + 264) = sub_100032180(&qword_1000C7F38, &qword_1000C7F28, NSNumber_ptr);
  *(v21 + 232) = v35;
  v36 = sub_1000A3C98();
  [v15 setPredicate:v36];
  [v15 setFetchBatchSize:24];
  [v15 setReturnsObjectsAsFaults:0];

  return v15;
}

void sub_100027F7C(unint64_t a1, char **a2, uint64_t a3)
{
  v108 = a3;
  v89 = a2;
  v129 = a1;
  v111 = sub_1000A2C08();
  v128 = *(v111 - 8);
  __chkstk_darwin(*(v128 + 64));
  v110 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000A3538();
  v127 = *(v114 - 8);
  __chkstk_darwin(*(v127 + 8));
  v124 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1000A22A8();
  v120 = *(v107 - 8);
  __chkstk_darwin(*(v120 + 64));
  v106 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for HourlyBlockReading(0);
  __chkstk_darwin(*(*(v99 - 8) + 64));
  v115 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1000A2498();
  v119 = *(v126 - 8);
  __chkstk_darwin(*(v119 + 64));
  v105 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v123 = &v89 - v9;
  __chkstk_darwin(v10);
  v12 = &v89 - v11;
  __chkstk_darwin(v13);
  v15 = &v89 - v14;
  __chkstk_darwin(v16);
  v18 = &v89 - v17;
  v19 = sub_10000275C(&qword_1000C7F40, &unk_1000ABD80);
  __chkstk_darwin(((*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = &v89 - v20;
  v22 = sub_1000A2888();
  v23 = *(v22 - 8);
  __chkstk_darwin(*(v23 + 64));
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v3;
  sub_1000A2F28();
  v27 = v130;
  v28 = sub_1000A3D68();
  v29 = v27;
  if (!v27)
  {
    v30 = v28;
    v96 = v26;
    v112 = v25;
    v125 = v22;
    v121 = v21;
    v98 = v18;
    v113 = v15;
    v116 = v12;
    v122 = v28;
    if (v28 >> 62)
    {
LABEL_32:
      v88 = sub_1000A3EC8();
      v30 = v122;
      v31 = v88;
    }

    else
    {
      v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v114;
    v33 = v98;
    v34 = v125;
    v36 = v119;
    v35 = v120;
    if (v31)
    {
      v130 = v29;
      v29 = 0;
      v118 = *(v96 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_decoder);
      v120 = v30 & 0xC000000000000001;
      v95 = v30 & 0xFFFFFFFFFFFFFF8;
      v117 = (v23 + 56);
      v104 = (v128 + 104);
      v103 = enum case for Logging.framework(_:);
      v102 = (v128 + 8);
      v101 = (v127 + 8);
      v94 = (v23 + 32);
      v93 = (v23 + 16);
      v92 = (v119 + 16);
      v100 = (v35 + 8);
      v90 = (v23 + 8);
      v119 = v31;
      v91 = (v36 + 8);
      while (1)
      {
        if (v120)
        {
          v37 = sub_1000A3EA8();
        }

        else
        {
          if (v29 >= *(v95 + 16))
          {
            goto LABEL_31;
          }

          v37 = *(v30 + 8 * v29 + 32);
        }

        v38 = v37;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v128 = v29 + 1;
        v129 = v29;
        v127 = objc_autoreleasePoolPush();
        v39 = [v38 blockData];
        v40 = sub_1000A23B8();
        v42 = v41;

        sub_100032134(&qword_1000C7F48, &type metadata accessor for EnergyKit.LoadSessionEvent.Block, &protocol conformance descriptor for EnergyKit.LoadSessionEvent.Block);
        v43 = v34;
        v44 = v121;
        v45 = v130;
        sub_1000A2318();
        if (v45)
        {
          v130 = 0;

          sub_10003228C(v40, v42);
          (*v117)(v44, 1, 1, v43);
          sub_100022154(v44, &qword_1000C7F40, &unk_1000ABD80);
          v47 = v110;
          v46 = v111;
          (*v104)(v110, v103, v111);
          v48 = v124;
          sub_1000A2B68();
          (*v102)(v47, v46);
          v49 = sub_1000A3518();
          v50 = sub_1000A3CC8();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&_mh_execute_header, v49, v50, "Failed to decode data", v51, 2u);

            (*v101)(v124, v114);
          }

          else
          {

            (*v101)(v48, v114);
          }

          v34 = v125;
          v77 = v119;
        }

        else
        {
          v130 = 0;
          sub_10003228C(v40, v42);
          (*v117)(v44, 0, 1, v43);
          v52 = v112;
          (*v94)(v112, v44, v43);
          v53 = [v38 blockStart];
          sub_1000A2468();

          v54 = [v38 blockEnd];
          v55 = v113;
          sub_1000A2468();

          v56 = v33;
          v57 = v115;
          (*v93)(v115, v52, v43);
          v58 = v99;
          v59 = *(v99 + 20);
          v60 = *v92;
          (*v92)(v57 + v59, v56, v126);
          v61 = *(v58 + 24);
          v60(v57 + v61, v55, v126);
          v109 = v38;
          v62 = [v38 loadType];
          v97 = sub_1000A3A88();
          v64 = v63;

          v60(v116, (v57 + v59), v126);
          v65 = (v57 + v61);
          v66 = v126;
          v60(v123, v65, v126);
          v67 = v91;
          v68 = v106;
          sub_1000A3868();
          v69 = v105;
          sub_1000A2288();
          v70 = *v100;
          (*v100)(v68, v107);
          sub_100032134(&qword_1000C7F50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          LOBYTE(v62) = sub_1000A3A48();
          v71 = *v67;
          (*v67)(v69, v66);
          if (v62 & 1) != 0 || (v72 = v106, sub_1000A3868(), v73 = v105, sub_1000A2248(), v74 = v72, v66 = v126, v70(v74, v107), v75 = sub_1000A3A48(), v71(v73, v66), (v75))
          {

            v76 = v115;
          }

          else
          {
            v78 = objc_autoreleasePoolPush();
            v76 = v115;
            v79 = v130;
            sub_100029E44(v116, v96, v89, v97, v64, v115);
            v130 = v79;
            if (v79)
            {
              objc_autoreleasePoolPop(v78);
              __break(1u);
              return;
            }

            objc_autoreleasePoolPop(v78);
          }

          v81 = v112;
          v80 = v113;
          v34 = v125;
          v71(v123, v66);
          v71(v80, v66);
          v82 = v98;
          v71(v98, v66);
          (*v90)(v81, v34);
          v83 = v66;
          v33 = v82;
          v71(v116, v83);
          sub_100033764(v76, type metadata accessor for HourlyBlockReading);
          v77 = v119;
          v38 = v109;
        }

        v23 = v128;
        v84 = v129;
        objc_autoreleasePoolPop(v127);

        v29 = v84 + 1;
        v30 = v122;
        if (v23 == v77)
        {

          return;
        }
      }
    }

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    sub_100001E38(v32, qword_1000C96B8);
    v85 = sub_1000A3518();
    v86 = sub_1000A3CA8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "[LoadEventsQueryEngine] No hourly blocks found for query range", v87, 2u);
    }
  }
}

void sub_100028C0C(uint64_t a1, char **a2, uint64_t a3, unint64_t a4)
{
  v109 = a4;
  v102 = a3;
  v99 = a2;
  v113 = a1;
  v101 = sub_1000A22A8();
  v110 = *(v101 - 8);
  __chkstk_darwin(*(v110 + 64));
  v100 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for DailyDigestReading(0);
  __chkstk_darwin(*(*(v104 - 8) + 64));
  v112 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000275C(&qword_1000C7F98, &unk_1000ABDC0);
  __chkstk_darwin(((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = &v81 - v7;
  v106 = sub_1000A28F8();
  v108 = *(v106 - 8);
  __chkstk_darwin(v108[8]);
  v103 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1000A2498();
  v107 = *(v111 - 8);
  __chkstk_darwin(*(v107 + 64));
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v81 - v11;
  __chkstk_darwin(v13);
  v15 = &v81 - v14;
  __chkstk_darwin(v16);
  v18 = &v81 - v17;
  __chkstk_darwin(v19);
  v21 = &v81 - v20;
  v22 = sub_1000A3318();
  v23 = *(v22 - 8);
  __chkstk_darwin(*(v23 + 64));
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 104))(v25, enum case for IntervalBlockPayload.FlowDirection.reverse(_:), v22);
  v26 = sub_1000A3308();
  (*(v23 + 8))(v25, v22);
  sub_1000A2F08();
  v27 = v115;
  v28 = sub_1000A3D68();
  if (!v27)
  {
    v29 = v28;
    v97 = v18;
    v98 = v26;
    v95 = v15;
    v96 = v21;
    v94 = v10;
    v30 = v109;
    v113 = 0;
    v93 = v12;
    if (v28 >> 62)
    {
LABEL_46:
      v31 = sub_1000A3EC8();
    }

    else
    {
      v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v30;
    v33 = v98;
    v35 = v107;
    v34 = v108;
    if (v31)
    {
      v36 = 0;
      v37 = 0;
      v107 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_decoder;
      v115 = v29 & 0xFFFFFFFFFFFFFF8;
      v92 = (v108 + 7);
      v88 = (v108 + 4);
      v87 = (v108 + 2);
      v90 = (v35 + 16);
      v89 = (v110 + 8);
      v108 = (v35 + 8);
      v86 = (v34 + 1);
      v38 = &off_1000C6000;
LABEL_6:
      LODWORD(v110) = v36;
      v30 = v37;
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v39 = sub_1000A3EA8();
        }

        else
        {
          if (v30 >= *(v115 + 16))
          {
            goto LABEL_45;
          }

          v39 = *(v29 + 8 * v30 + 32);
        }

        v40 = v39;
        v37 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v33 == v32)
        {
          v41 = [v39 v38[294]];
          if (v41)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v41 = [v39 digestConsumptionData];
          if (v41)
          {
LABEL_18:
            v42 = v41;
            v43 = sub_1000A23B8();
            v109 = v44;
            v110 = v43;

            v45 = [v40 startDate];
            sub_1000A2468();

            v46 = [v40 endDate];
            sub_1000A2468();

            v91 = objc_autoreleasePoolPush();
            sub_100032134(&qword_1000C7FA0, &type metadata accessor for EnergyKit.LoadDailyDigestEvent.Value, &protocol conformance descriptor for EnergyKit.LoadDailyDigestEvent.Value);
            v47 = v105;
            v48 = v106;
            v49 = v113;
            sub_1000A2318();
            if (v49)
            {

              (*v92)(v47, 1, 1, v48);
              sub_100022154(v47, &qword_1000C7F98, &unk_1000ABDC0);
              v113 = 0;
              v33 = v98;
              v50 = v108;
            }

            else
            {
              v113 = 0;
              (*v92)(v47, 0, 1, v48);
              v51 = v103;
              (*v88)(v103, v47, v48);
              v52 = v112;
              (*v87)(v112, v51, v48);
              v83 = *(v104 + 20);
              v53 = *v90;
              v82 = v53;
              v54 = v83 + v52;
              v55 = v111;
              v53(v54, v96, v111);
              v85 = *(v104 + 24);
              v53(v85 + v112, v97, v55);
              v56 = [v40 loadType];
              v81 = sub_1000A3A88();
              v84 = v57;

              v58 = v82;
              v82(v95, v83 + v112, v55);
              v58(v93, v85 + v112, v55);
              v59 = v100;
              sub_1000A3868();
              sub_1000A2288();
              v60 = v59;
              v61 = v55;
              v83 = *v89;
              v83(v60, v101);
              v62 = sub_100032134(&qword_1000C7F50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v63 = v94;
              v82 = v62;
              LOBYTE(v56) = sub_1000A3A48();
              v85 = *v108;
              v85(v63, v61);
              if (v56 & 1) != 0 || (v64 = v100, sub_1000A3868(), v65 = v94, sub_1000A2248(), v66 = v64, v61 = v111, v83(v66, v101), v67 = sub_1000A3A48(), v85(v65, v61), (v67))
              {

                v33 = v98;
              }

              else
              {
                v83 = objc_autoreleasePoolPush();
                v68 = v113;
                sub_10002C184(v95, v114, v99, v81, v84, v112);
                v113 = v68;
                v33 = v98;
                if (v68)
                {
                  objc_autoreleasePoolPop(v83);
                  __break(1u);
                  return;
                }

                objc_autoreleasePoolPop(v83);
              }

              v69 = v61;
              v50 = v108;
              v70 = v85;
              v85(v93, v69);
              (*v86)(v103, v106);
              v70(v95, v111);
              sub_100033764(v112, type metadata accessor for DailyDigestReading);
            }

            objc_autoreleasePoolPop(v91);

            sub_10003228C(v110, v109);
            v71 = *v50;
            v72 = v111;
            (*v50)(v97, v111);
            v71(v96, v72);
            v36 = 1;
            v38 = &off_1000C6000;
            if (v37 != v31)
            {
              goto LABEL_6;
            }

            return;
          }
        }

        ++v30;
      }

      while (v37 != v31);

      if ((v110 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {

LABEL_31:
      if (v33 == v32)
      {
        v73 = 0x69746375646F7270;
      }

      else
      {
        v73 = 0x74706D75736E6F63;
      }

      if (v33 == v32)
      {
        v74 = 0xEA00000000006E6FLL;
      }

      else
      {
        v74 = 0xEB000000006E6F69;
      }

      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v75 = sub_1000A3538();
      sub_100001E38(v75, qword_1000C96B8);

      v76 = sub_1000A3518();
      v77 = sub_1000A3CA8();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v116 = v79;
        *v78 = 136315138;
        v80 = sub_1000954AC(v73, v74, &v116);

        *(v78 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v76, v77, "[LoadEventsQueryEngine] No %s digest data found for query range", v78, 0xCu);
        sub_10000F7B8(v79);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100029828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = sub_1000A2508();
  __chkstk_darwin(*(*(v5 - 8) + 64));
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000A38F8();
  v8 = *(v7 - 8);
  __chkstk_darwin(*(v8 + 64));
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A22A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(*(v12 + 64));
  v25 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  swift_beginAccess();
  v24 = *(v12 + 16);
  v24(v15, a2, v11);
  v16 = *(v8 + 16);
  v31 = a1;
  v16(v10, a1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity, v7);
  if ((*(v8 + 88))(v10, v7) == enum case for ElectricityInsightQuery.Granularity.hourly(_:))
  {
    v17 = sub_100027A58(v15, *(v31 + 112));
    v30 = sub_10000275C(&qword_1000C7EE0, &qword_1000ABD68);
    v29[0] = v17;
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v18 = sub_100027654();
    v30 = sub_10000275C(&qword_1000C7EE0, &qword_1000ABD68);
    v29[0] = v18;
    (*(v12 + 8))(v15, v11);
    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  v24(v25, a2, v11);
  v24 = sub_1000A3888();
  sub_1000A3858();
  sub_1000A3838();
  sub_1000A3848();
  sub_1000A3898();
  sub_1000A38A8();
  sub_1000A3828();
  v19 = objc_allocWithZone(sub_1000A38B8());
  v20 = sub_1000A3878();
  v21 = v27;
  swift_beginAccess();
  v22 = v28;
  sub_100029C40(v29, v21, v20);
  swift_endAccess();
  if (!v22)
  {
    [*(v31 + 136) reset];
  }

  return sub_10000F7B8(v29);
}

void sub_100029C40(uint64_t a1, char **a2, uint64_t a3)
{
  v7 = sub_1000A38F8();
  v8 = *(v7 - 8);
  __chkstk_darwin(*(v8 + 64));
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity, v7);
  if ((*(v8 + 88))(v10, v7) == enum case for ElectricityInsightQuery.Granularity.hourly(_:))
  {
    sub_10000F814(a1, v13);
    sub_10000275C(&qword_1000C7EE0, &qword_1000ABD68);
    if (swift_dynamicCast())
    {
      v11 = v14;
      sub_100027F7C(v14, a2, a3);
    }
  }

  else
  {
    sub_10000F814(a1, v13);
    sub_10000275C(&qword_1000C7EE0, &qword_1000ABD68);
    if (swift_dynamicCast())
    {
      v12 = v14;
      sub_100028C0C(v14, a2, a3, *(v3 + 112));
    }

    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_100029E44(char *a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v289 = a6;
  v290 = a5;
  v281 = a4;
  v300 = a3;
  v298 = a1;
  v7 = sub_1000A3238();
  __chkstk_darwin(*(*(v7 - 8) + 64));
  v249 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000A3128();
  __chkstk_darwin(*(*(v9 - 8) + 64));
  v248 = &v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_1000A32C8();
  v261 = *(v262 - 8);
  __chkstk_darwin(*(v261 + 64));
  v260 = &v234 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  __chkstk_darwin(((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v276 = &v234 - v13;
  v241 = sub_10000275C(&qword_1000C7F60, &qword_1000ABD90);
  v240 = *(v241 - 8);
  __chkstk_darwin(*(v240 + 64));
  v239 = &v234 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v236 = &v234 - v15;
  v243 = sub_10000275C(&qword_1000C7F68, &qword_1000ABD98);
  v242 = *(v243 - 8);
  __chkstk_darwin(*(v242 + 64));
  v238 = &v234 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v237 = &v234 - v17;
  v252 = sub_10000275C(&qword_1000C7F70, &qword_1000ABDA0);
  v251 = *(v252 - 8);
  __chkstk_darwin(*(v251 + 64));
  v247 = &v234 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v244 = &v234 - v19;
  v254 = sub_10000275C(&qword_1000C7F78, &qword_1000ABDA8);
  v253 = *(v254 - 8);
  __chkstk_darwin(*(v253 + 64));
  v246 = &v234 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v245 = &v234 - v21;
  v280 = sub_1000A3938();
  v265 = *(v280 - 8);
  __chkstk_darwin(*(v265 + 64));
  v278 = &v234 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v279 = &v234 - v23;
  v270 = sub_1000A38D8();
  v269 = *(v270 - 8);
  __chkstk_darwin(*(v269 + 64));
  v268 = &v234 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_1000A2918();
  v272 = *(v273 - 8);
  __chkstk_darwin(*(v272 + 64));
  v271 = &v234 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_1000A27B8();
  v256 = *(v257 - 8);
  __chkstk_darwin(*(v256 + 64));
  v255 = &v234 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_1000A2938();
  v287 = *(v282 - 8);
  __chkstk_darwin(v287[8]);
  v258 = &v234 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v264 = &v234 - v28;
  __chkstk_darwin(v29);
  v250 = &v234 - v30;
  __chkstk_darwin(v31);
  v263 = &v234 - v32;
  v33 = sub_1000A3408();
  v34 = *(v33 - 8);
  v285 = v33;
  v286 = v34;
  __chkstk_darwin(*(v34 + 8));
  v292 = &v234 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = sub_1000A32F8();
  v297 = *(v299 - 8);
  __chkstk_darwin(*(v297 + 8));
  v277 = &v234 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v274 = &v234 - v37;
  __chkstk_darwin(v38);
  v266 = &v234 - v39;
  __chkstk_darwin(v40);
  v267 = &v234 - v41;
  v301 = sub_1000A2498();
  v291 = *(v301 - 8);
  __chkstk_darwin(*(v291 + 64));
  v275 = &v234 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v295 = &v234 - v43;
  __chkstk_darwin(v44);
  v294 = &v234 - v45;
  __chkstk_darwin(v46);
  v48 = &v234 - v47;
  __chkstk_darwin(v49);
  v51 = (&v234 - v50);
  v52 = sub_1000A2578();
  v53 = *(v52 - 8);
  __chkstk_darwin(*(v53 + 64));
  v55 = &v234 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_1000A22A8();
  v283 = *(v284 - 8);
  __chkstk_darwin(*(v283 + 64));
  v57 = &v234 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InsightBucketBoundaries();
  v58 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity;
  (*(v53 + 16))(v55, a2 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar, v52);
  v288 = a2;
  v59 = a2 + v58;
  v60 = v300;
  sub_10004CC8C(v298, v59, v55, v57);
  v61 = v55;
  v62 = v294;
  (*(v53 + 8))(v61, v52);
  v63 = v51;
  v64 = v285;
  v65 = v299;
  sub_1000A2288();
  v293 = v48;
  v66 = v297;
  v298 = v57;
  sub_1000A2248();
  v67 = v60;
  v68 = *v60;
  v69 = *(*v60 + 2);
  v70 = v301;
  v296 = v63;
  if (!v69 || (v259 = (*(v66 + 80) + 32) & ~*(v66 + 80), v235 = *(v66 + 9), v71 = v267, (*(v66 + 2))(v267, &v68[v259 + v235 * (v69 - 1)], v65), v72 = v292, sub_1000A3278(), (*(v66 + 1))(v71, v65), sub_1000A33E8(), (*(v286 + 1))(v72, v64), LOBYTE(v72) = sub_1000A2458(), v73 = v291 + 8, v74 = *(v291 + 8), v74(v62, v70), (v72 & 1) == 0))
  {
    v87 = v291;
    v88 = v292;
    sub_1000A2288();
    v89 = *(*v67 + 2);
    if (v89)
    {
      v90 = v266;
      v91 = v299;
      (*(v66 + 2))(v266, &(*v67)[((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 9) * (v89 - 1)], v299);
      sub_1000A3258();
      (*(v66 + 1))(v90, v91);
      v92 = v276;
      sub_1000A33E8();
      (*(v286 + 1))(v88, v64);
      v93 = v87;
      v94 = *(v87 + 56);
      v95 = v301;
      v94(v92, 0, 1, v301);
      v96 = v275;
      (*(v93 + 32))(v275, v92, v95);
    }

    else
    {
      v93 = v87;
      v97 = *(v87 + 56);
      v98 = v276;
      v95 = v301;
      v97(v276, 1, 1, v301);
      v96 = v275;
      sub_1000A23C8();
      if ((*(v93 + 48))(v98, 1, v95) != 1)
      {
        sub_100022154(v98, &qword_1000C7F58, &qword_1000AC770);
      }
    }

    sub_100032134(&qword_1000C7F50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v99 = v295;
    v100 = sub_1000A3A48();
    v101 = *(v93 + 8);
    v101(v96, v95);
    v295 = (v93 + 8);
    v101(v99, v95);
    if (v100)
    {
      v101(v293, v95);
      v101(v296, v95);
      return (*(v283 + 8))(v298, v284);
    }

    v292 = v101;
    v103 = v274;
    sub_1000A32E8();
    v104 = *(v93 + 16);
    v105 = v294;
    v104(v294, v296, v95);
    sub_1000A33F8();
    sub_1000A3288();
    v104(v105, v293, v95);
    sub_1000A33F8();
    sub_1000A3268();
    v106 = v287;
    v107 = v287[13];
    v108 = v264;
    LODWORD(v294) = enum case for EnergyKit.LoadType.hvac(_:);
    v109 = v282;
    v291 = v107;
    v107(v264);
    v110 = sub_1000A2928();
    v112 = v111;
    v286 = v106[1];
    v286(v108, v109);
    v113 = v281;
    v287 = v106 + 1;
    if (v110 == v281 && v112 == v290)
    {

      v114 = v288;
    }

    else
    {
      v115 = sub_1000A3F48();

      v114 = v288;
      if ((v115 & 1) == 0)
      {
        v116 = v255;
        sub_1000A2868();
        sub_1000A27A8();
        (*(v256 + 8))(v116, v257);
      }
    }

    sub_1000A2FB8();
    v117 = v271;
    sub_1000A2878();
    sub_1000A2908();
    (*(v272 + 8))(v117, v273);
    sub_1000A2FE8();
    v118 = sub_1000A3858();
    v119 = v269;
    v120 = v268;
    v121 = v114;
    v122 = v270;
    (*(v269 + 104))(v268, enum case for ElectricityInsightQuery.QueryType.runtime(_:), v270);
    v123 = sub_1000A38C8();
    (*(v119 + 8))(v120, v122);
    if (v118 == v123)
    {
      (*(v261 + 104))(v260, enum case for InsightRecordPayload.Grouping.runtime(_:), v262);
      sub_1000A32D8();
      v124 = v265;
      v125 = *(v265 + 16);
      v294 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
      v126 = v121 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
      v127 = v279;
      v128 = v280;
      v125(v279, v126, v280);
      v129 = v278;
      sub_1000A3918();
      sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
      v130 = sub_1000A3DF8();
      v131 = *(v124 + 8);
      v131(v129, v128);
      v131(v127, v128);
      if (v130)
      {
        v132 = v246;
        sub_1000A2848();
        sub_100026E20(v248);
        (*(v253 + 8))(v132, v254);
        sub_1000A32B8();
      }

      v133 = v279;
      v134 = v280;
      v125(v279, v288 + v294, v280);
      v135 = v278;
      sub_1000A3908();
      v136 = sub_1000A3DF8();
      v131(v135, v134);
      v131(v133, v134);
      v138 = v299;
      v137 = v300;
      v139 = v297;
      v103 = v274;
      if ((v136 & 1) == 0)
      {
        goto LABEL_51;
      }

      v140 = v247;
      sub_1000A2858();
      sub_1000272EC(v140, v249);
      (*(v251 + 8))(v140, v252);
    }

    else
    {
      v141 = v258;
      v142 = v282;
      (v291)(v258, v294, v282);
      v143 = sub_1000A2928();
      v145 = v144;
      v286(v141, v142);
      if (v143 == v113 && v145 == v290)
      {

        v138 = v299;
        v137 = v300;
        v139 = v297;
        goto LABEL_51;
      }

      v188 = sub_1000A3F48();

      v138 = v299;
      v137 = v300;
      v139 = v297;
      if (v188)
      {
        goto LABEL_51;
      }

      (*(v261 + 104))(v260, enum case for InsightRecordPayload.Grouping.energy(_:), v262);
      sub_1000A32D8();
      v189 = v265;
      v190 = *(v265 + 16);
      v191 = v288;
      v291 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
      v192 = v279;
      v193 = v280;
      v294 = v190;
      v190(v279, v288 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options, v280);
      v194 = v278;
      sub_1000A3918();
      sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
      v195 = sub_1000A3DF8();
      v196 = *(v189 + 8);
      v196(v194, v193);
      v196(v192, v193);
      if (v195)
      {
        v197 = v238;
        sub_1000A2838();
        sub_1000265EC(v248);
        (*(v242 + 8))(v197, v243);
        sub_1000A32B8();
      }

      v198 = v279;
      v199 = v280;
      (v294)(v279, v191 + v291, v280);
      v200 = v278;
      sub_1000A3908();
      v201 = sub_1000A3DF8();
      v196(v200, v199);
      v196(v198, v199);
      v138 = v299;
      v137 = v300;
      v139 = v297;
      v103 = v274;
      if ((v201 & 1) == 0)
      {
        goto LABEL_51;
      }

      v202 = v239;
      sub_1000A2828();
      sub_100026AB8(v202, v249);
      (*(v240 + 8))(v202, v241);
    }

    sub_1000A3158();
LABEL_51:
    (*(v139 + 2))(v277, v103, v138);
    v203 = *v137;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v137 = v203;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v203 = sub_10009501C(0, v203[2] + 1, 1, v203);
      *v137 = v203;
    }

    v205 = v298;
    v207 = v203[2];
    v206 = v203[3];
    if (v207 >= v206 >> 1)
    {
      *v137 = sub_10009501C((v206 > 1), v207 + 1, 1, v203);
    }

    v208 = v297;
    (*(v297 + 1))(v103, v138);
    v209 = v292;
    v210 = v301;
    (v292)(v293, v301);
    v209(v296, v210);
    (*(v283 + 8))(v205, v284);
    v211 = *v137;
    v211[2] = v207 + 1;
    return (*(v208 + 4))(v211 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 9) * v207, v277, v138);
  }

  v297 = v74;
  v299 = v73;
  v75 = *(*v67 + 2);
  v76 = (v75 - 1);
  v77 = v287;
  v78 = v287[13];
  v79 = v263;
  LODWORD(v292) = enum case for EnergyKit.LoadType.hvac(_:);
  v80 = v282;
  v291 = v78;
  v78(v263);
  v81 = sub_1000A2928();
  v83 = v82;
  v85 = v77[1];
  v84 = (v77 + 1);
  v287 = v85;
  (v85)(v79, v80);
  if (v81 == v281 && v83 == v290)
  {

    v86 = v235;
    goto LABEL_31;
  }

  v146 = sub_1000A3F48();

  v86 = v235;
  if ((v146 & 1) == 0)
  {
    v147 = v255;
    sub_1000A2868();
    v148 = sub_1000A27A8();
    (*(v256 + 8))(v147, v257);
    v149 = v300;
    v150 = *v300;
    v151 = swift_isUniquelyReferenced_nonNull_native();
    *v149 = v150;
    if ((v151 & 1) == 0)
    {
      goto LABEL_73;
    }

    if (v75)
    {
      goto LABEL_29;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    v148 = sub_1000322E0(v148);
    *v300 = v148;
LABEL_37:
    if (v295 <= *(v148 + 2))
    {
      v172 = sub_1000A3298();
      sub_100032D00();
      (*(v253 + 8))(v62, v254);
      v172(v302, 0);
      v158 = v288;
      v150 = v298;
      goto LABEL_39;
    }

    __break(1u);
LABEL_78:
    v86 = sub_1000322E0(v86);
    *v148 = v86;
LABEL_41:
    if (v295 <= *(v86 + 16))
    {
      v178 = sub_1000A3138();
      sub_1000332D8();
      (*(v251 + 8))(v62, v252);
      v178(v302, 0);
      v179 = v301;
      v180 = v297;
      v297(v293, v301);
      v180(v149, v179);
      return (*(v283 + 8))(v150, v284);
    }

    __break(1u);
    goto LABEL_80;
  }

  while (1)
  {
LABEL_31:
    v154 = v271;
    sub_1000A2878();
    v148 = sub_1000A2908();
    (*(v272 + 8))(v154, v273);
    v149 = v300;
    v150 = *v300;
    v155 = swift_isUniquelyReferenced_nonNull_native();
    *v149 = v150;
    if (v155)
    {
      if (!v75)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v150 = sub_1000322E0(v150);
      *v300 = v150;
      if (!v75)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }
    }

    if (v75 <= *(v150 + 2))
    {
      break;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    v150 = sub_1000322E0(v150);
    *v300 = v150;
    if (!v75)
    {
      goto LABEL_74;
    }

LABEL_29:
    if (v75 > *(v150 + 2))
    {
      goto LABEL_75;
    }

    v152 = sub_1000A2F98();
    *v153 = *v153 + v148;
    v152(v302, 0);
  }

  v295 = v75;
  v294 = v76 * v86;
  v156 = sub_1000A2FD8();
  *v157 = *v157 + v148;
  v156(v302, 0);
  v158 = v288;
  v159 = sub_1000A3858();
  v160 = v269;
  v161 = v268;
  v162 = v270;
  (*(v269 + 104))(v268, enum case for ElectricityInsightQuery.QueryType.runtime(_:), v270);
  v163 = sub_1000A38C8();
  (*(v160 + 8))(v161, v162);
  if (v159 != v163)
  {
    v181 = v250;
    v182 = v282;
    (v291)(v250, v292, v282);
    v183 = sub_1000A2928();
    v185 = v184;
    (v287)(v181, v182);
    if (v183 == v281 && v185 == v290)
    {

      v186 = v301;
      v187 = v296;
      v75 = v298;
    }

    else
    {
      v212 = sub_1000A3F48();

      v186 = v301;
      v187 = v296;
      v75 = v298;
      if ((v212 & 1) == 0)
      {
        v216 = v265;
        v217 = *(v265 + 16);
        v218 = v288;
        v291 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
        v219 = v279;
        v220 = v280;
        v292 = v217;
        (v217)(v279, v288 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options, v280);
        v221 = v278;
        sub_1000A3918();
        v290 = sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
        v76 = sub_1000A3DF8();
        v84 = *(v216 + 8);
        v84(v221, v220);
        v84(v219, v220);
        if ((v76 & 1) == 0)
        {
          goto LABEL_64;
        }

        v86 = v237;
        sub_1000A2838();
        v149 = v300;
        v148 = *v300;
        v222 = swift_isUniquelyReferenced_nonNull_native();
        *v149 = v148;
        if (v222)
        {
LABEL_62:
          if (v295 > *(v148 + 2))
          {
            __break(1u);
LABEL_82:
            result = sub_1000322E0(v86);
            v86 = result;
            *v148 = result;
LABEL_66:
            if (v295 > *(v86 + 16))
            {
              __break(1u);
              return result;
            }

            v229 = sub_1000A3138();
            sub_1000328CC();
            (*(v240 + 8))(v76, v241);
            v229(v302, 0);
            v230 = v301;
            v231 = v297;
            v297(v293, v301);
            v231(v149, v230);
            return (*(v283 + 8))(v75, v284);
          }

          v223 = sub_1000A3298();
          sub_1000322F4();
          (*(v242 + 8))(v86, v243);
          v223(v302, 0);
          v218 = v288;
          v75 = v298;
LABEL_64:
          v224 = v218 + v291;
          v225 = v279;
          v226 = v280;
          (v292)(v279, v224, v280);
          v227 = v278;
          sub_1000A3908();
          v228 = sub_1000A3DF8();
          v84(v227, v226);
          v84(v225, v226);
          if ((v228 & 1) == 0)
          {
            v232 = v301;
            v233 = v297;
            v297(v293, v301);
            v233(v296, v232);
            return (*(v283 + 8))(v75, v284);
          }

          v76 = v236;
          sub_1000A2828();
          v148 = v300;
          v86 = *v300;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v148 = v86;
          v149 = v296;
          if (result)
          {
            goto LABEL_66;
          }

          goto LABEL_82;
        }

LABEL_80:
        v148 = sub_1000322E0(v148);
        *v300 = v148;
        goto LABEL_62;
      }
    }

    v213 = v297;
    v297(v293, v186);
    v213(v187, v186);
    return (*(v283 + 8))(v75, v284);
  }

  v164 = v265;
  v76 = v265 + 16;
  v165 = *(v265 + 16);
  v291 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
  v166 = v279;
  v167 = v280;
  v292 = v165;
  (v165)(v279, v158 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options, v280);
  v168 = v278;
  sub_1000A3918();
  v86 = sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
  v169 = sub_1000A3DF8();
  v84 = *(v164 + 8);
  v84(v168, v167);
  v170 = v167;
  v75 = (v164 + 8);
  v84(v166, v170);
  v150 = v298;
  if (v169)
  {
    v62 = v245;
    sub_1000A2848();
    v149 = v300;
    v148 = *v300;
    v171 = swift_isUniquelyReferenced_nonNull_native();
    *v149 = v148;
    if (v171)
    {
      goto LABEL_37;
    }

    goto LABEL_76;
  }

LABEL_39:
  v173 = v158 + v291;
  v174 = v279;
  v175 = v280;
  (v292)(v279, v173, v280);
  v76 = v278;
  sub_1000A3908();
  v176 = sub_1000A3DF8();
  v84(v76, v175);
  v84(v174, v175);
  if (v176)
  {
    v62 = v244;
    sub_1000A2858();
    v148 = v300;
    v86 = *v300;
    v177 = swift_isUniquelyReferenced_nonNull_native();
    *v148 = v86;
    v149 = v296;
    if (v177)
    {
      goto LABEL_41;
    }

    goto LABEL_78;
  }

  v214 = v301;
  v215 = v297;
  v297(v293, v301);
  v215(v296, v214);
  return (*(v283 + 8))(v150, v284);
}

uint64_t sub_10002C184(char *a1, char *a2, char **a3, char *a4, void (*a5)(char *, uint64_t), uint64_t a6)
{
  v764 = a6;
  v748 = a5;
  v759 = a4;
  v763 = a3;
  v761 = a1;
  v709 = sub_1000A32C8();
  v708 = *(v709 - 8);
  __chkstk_darwin(*(v708 + 64));
  v707 = &v600 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  __chkstk_darwin(((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v739 = &v600 - v9;
  v683 = sub_10000275C(&qword_1000C7F60, &qword_1000ABD90);
  v649 = *(v683 - 8);
  __chkstk_darwin(*(v649 + 64));
  v648 = &v600 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v647 = &v600 - v11;
  __chkstk_darwin(v12);
  v645 = &v600 - v13;
  __chkstk_darwin(v14);
  v604 = &v600 - v15;
  __chkstk_darwin(v16);
  v612 = &v600 - v17;
  __chkstk_darwin(v18);
  v620 = &v600 - v19;
  v706 = sub_10000275C(&qword_1000C7F68, &qword_1000ABD98);
  v710 = *(v706 - 8);
  __chkstk_darwin(*(v710 + 64));
  v642 = &v600 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v641 = &v600 - v21;
  __chkstk_darwin(v22);
  v639 = &v600 - v23;
  __chkstk_darwin(v24);
  v637 = &v600 - v25;
  __chkstk_darwin(v26);
  v635 = &v600 - v27;
  __chkstk_darwin(v28);
  v608 = &v600 - v29;
  __chkstk_darwin(v30);
  v616 = &v600 - v31;
  __chkstk_darwin(v32);
  v624 = &v600 - v33;
  __chkstk_darwin(v34);
  v628 = &v600 - v35;
  __chkstk_darwin(v36);
  v632 = &v600 - v37;
  v38 = sub_10000275C(&qword_1000C7F90, &qword_1000ABDB8);
  __chkstk_darwin(*(*(v38 - 8) + 64));
  v646 = &v600 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v644 = &v600 - v40;
  __chkstk_darwin(v41);
  v643 = &v600 - v42;
  __chkstk_darwin(v43);
  v640 = &v600 - v44;
  __chkstk_darwin(v45);
  v638 = &v600 - v46;
  __chkstk_darwin(v47);
  v636 = &v600 - v48;
  __chkstk_darwin(v49);
  v634 = &v600 - v50;
  __chkstk_darwin(v51);
  v633 = &v600 - v52;
  __chkstk_darwin(v53);
  v603 = &v600 - v54;
  __chkstk_darwin(v55);
  v611 = &v600 - v56;
  __chkstk_darwin(v57);
  v619 = &v600 - v58;
  __chkstk_darwin(v59);
  v607 = &v600 - v60;
  __chkstk_darwin(v61);
  v615 = &v600 - v62;
  __chkstk_darwin(v63);
  v623 = &v600 - v64;
  __chkstk_darwin(v65);
  v627 = &v600 - v66;
  __chkstk_darwin(v67);
  v631 = &v600 - v68;
  v713 = sub_10000275C(&qword_1000C7F70, &qword_1000ABDA0);
  v717 = *(v713 - 8);
  __chkstk_darwin(*(v717 + 64));
  v699 = &v600 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v698 = &v600 - v70;
  __chkstk_darwin(v71);
  v697 = &v600 - v72;
  __chkstk_darwin(v73);
  v654 = &v600 - v74;
  __chkstk_darwin(v75);
  v662 = &v600 - v76;
  __chkstk_darwin(v77);
  v670 = &v600 - v78;
  v718 = sub_1000A3238();
  v732 = *(v718 - 8);
  __chkstk_darwin(*(v732 + 8));
  v700 = &v600 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v702 = &v600 - v80;
  __chkstk_darwin(v81);
  v711 = &v600 - v82;
  __chkstk_darwin(v83);
  v602 = &v600 - v84;
  __chkstk_darwin(v85);
  v610 = &v600 - v86;
  __chkstk_darwin(v87);
  v618 = &v600 - v88;
  __chkstk_darwin(v89);
  v653 = &v600 - v90;
  __chkstk_darwin(v91);
  v661 = &v600 - v92;
  __chkstk_darwin(v93);
  v669 = &v600 - v94;
  v724 = sub_10000275C(&qword_1000C7F78, &qword_1000ABDA8);
  v741 = *(v724 - 8);
  __chkstk_darwin(*(v741 + 64));
  v693 = &v600 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v95);
  v692 = &v600 - v96;
  __chkstk_darwin(v97);
  v690 = &v600 - v98;
  __chkstk_darwin(v99);
  v688 = &v600 - v100;
  __chkstk_darwin(v101);
  v686 = &v600 - v102;
  __chkstk_darwin(v103);
  v658 = &v600 - v104;
  __chkstk_darwin(v105);
  v666 = &v600 - v106;
  __chkstk_darwin(v107);
  v674 = &v600 - v108;
  __chkstk_darwin(v109);
  v678 = &v600 - v110;
  __chkstk_darwin(v111);
  v682 = &v600 - v112;
  v113 = sub_10000275C(&qword_1000C7F88, &qword_1000ABDB0);
  __chkstk_darwin(*(*(v113 - 8) + 64));
  v696 = &v600 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v114);
  v695 = &v600 - v115;
  __chkstk_darwin(v116);
  v694 = &v600 - v117;
  __chkstk_darwin(v118);
  v691 = &v600 - v119;
  __chkstk_darwin(v120);
  v689 = &v600 - v121;
  __chkstk_darwin(v122);
  v687 = &v600 - v123;
  __chkstk_darwin(v124);
  v685 = &v600 - v125;
  __chkstk_darwin(v126);
  v684 = &v600 - v127;
  __chkstk_darwin(v128);
  v652 = &v600 - v129;
  __chkstk_darwin(v130);
  v660 = &v600 - v131;
  __chkstk_darwin(v132);
  v668 = &v600 - v133;
  __chkstk_darwin(v134);
  v657 = &v600 - v135;
  __chkstk_darwin(v136);
  v665 = &v600 - v137;
  __chkstk_darwin(v138);
  v673 = &v600 - v139;
  __chkstk_darwin(v140);
  v677 = &v600 - v141;
  __chkstk_darwin(v142);
  v681 = &v600 - v143;
  v727 = sub_1000A3128();
  v740 = *(v727 - 8);
  __chkstk_darwin(*(v740 + 64));
  v650 = &v600 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v144);
  v701 = &v600 - v145;
  __chkstk_darwin(v146);
  v726 = &v600 - v147;
  __chkstk_darwin(v148);
  v606 = &v600 - v149;
  __chkstk_darwin(v150);
  v614 = &v600 - v151;
  __chkstk_darwin(v152);
  v622 = &v600 - v153;
  __chkstk_darwin(v154);
  v626 = &v600 - v155;
  __chkstk_darwin(v156);
  v630 = &v600 - v157;
  __chkstk_darwin(v158);
  v656 = &v600 - v159;
  __chkstk_darwin(v160);
  v664 = &v600 - v161;
  __chkstk_darwin(v162);
  v672 = &v600 - v163;
  __chkstk_darwin(v164);
  v676 = &v600 - v165;
  __chkstk_darwin(v166);
  v680 = &v600 - v167;
  v730 = sub_1000A3938();
  v731 = *(v730 - 8);
  __chkstk_darwin(*(v731 + 64));
  v733 = &v600 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v168);
  v729 = &v600 - v169;
  v736 = sub_1000A38D8();
  v735 = *(v736 - 8);
  __chkstk_darwin(*(v735 + 64));
  v734 = &v600 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1000A2918();
  v172 = *(v171 - 8);
  v757 = v171;
  v758 = v172;
  __chkstk_darwin(*(v172 + 64));
  v737 = &v600 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  v722 = sub_1000A27B8();
  v715 = *(v722 - 8);
  __chkstk_darwin(*(v715 + 64));
  v704 = &v600 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  v742 = sub_1000A2938();
  v747 = *(v742 - 8);
  __chkstk_darwin(*(v747 + 64));
  v705 = &v600 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v175);
  v714 = &v600 - v176;
  __chkstk_darwin(v177);
  v703 = &v600 - v178;
  __chkstk_darwin(v179);
  v712 = (&v600 - v180);
  v746 = sub_1000A3408();
  v751 = *(v746 - 1);
  __chkstk_darwin(*(v751 + 64));
  v753 = &v600 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  v765 = sub_1000A32F8();
  v760 = *(v765 - 8);
  __chkstk_darwin(*(v760 + 64));
  v725 = &v600 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v182);
  v749 = &v600 - v183;
  __chkstk_darwin(v184);
  v723 = &v600 - v185;
  __chkstk_darwin(v186);
  v601 = &v600 - v187;
  __chkstk_darwin(v188);
  v609 = &v600 - v189;
  __chkstk_darwin(v190);
  v617 = &v600 - v191;
  __chkstk_darwin(v192);
  v605 = &v600 - v193;
  __chkstk_darwin(v194);
  v613 = &v600 - v195;
  __chkstk_darwin(v196);
  v621 = &v600 - v197;
  __chkstk_darwin(v198);
  v625 = &v600 - v199;
  __chkstk_darwin(v200);
  v629 = &v600 - v201;
  __chkstk_darwin(v202);
  v651 = &v600 - v203;
  __chkstk_darwin(v204);
  v659 = &v600 - v205;
  __chkstk_darwin(v206);
  v667 = &v600 - v207;
  __chkstk_darwin(v208);
  v655 = &v600 - v209;
  __chkstk_darwin(v210);
  v663 = &v600 - v211;
  __chkstk_darwin(v212);
  v671 = &v600 - v213;
  __chkstk_darwin(v214);
  v675 = &v600 - v215;
  __chkstk_darwin(v216);
  v679 = &v600 - v217;
  __chkstk_darwin(v218);
  v728 = &v600 - v219;
  v762 = sub_1000A2498();
  v750 = *(v762 - 8);
  __chkstk_darwin(*(v750 + 64));
  v738 = &v600 - ((v220 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v220);
  v755 = &v600 - v221;
  __chkstk_darwin(v222);
  v752 = &v600 - v223;
  __chkstk_darwin(v224);
  v226 = &v600 - v225;
  __chkstk_darwin(v227);
  v229 = &v600 - v228;
  v230 = sub_1000A2578();
  v231 = *(v230 - 8);
  __chkstk_darwin(*(v231 + 64));
  v233 = &v600 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
  v744 = sub_1000A22A8();
  v743 = *(v744 - 8);
  __chkstk_darwin(*(v743 + 64));
  v235 = &v600 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InsightBucketBoundaries();
  v236 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity;
  (*(v231 + 16))(v233, &a2[OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar], v230);
  v745 = a2;
  v237 = &a2[v236];
  v238 = v762;
  sub_10004CC8C(v761, v237, v233, v235);
  (*(v231 + 8))(v233, v230);
  v239 = v763;
  sub_1000A2288();
  v754 = v226;
  v240 = v760;
  v241 = v765;
  v761 = v235;
  sub_1000A2248();
  v242 = *v239;
  v243 = *(*v239 + 2);
  v756 = v229;
  if (!v243 || (v716 = (*(v240 + 80) + 32) & ~*(v240 + 80), v600 = *(v240 + 72), v244 = &v242[v716 + v600 * (v243 - 1)], v245 = *(v240 + 16), v246 = v728, v720 = v240 + 16, v719 = v245, v245(v728, v244, v241), v247 = v753, sub_1000A3278(), v248 = *(v240 + 8), v728 = (v240 + 8), v721 = v248, v248(v246, v241), v249 = v752, sub_1000A33E8(), (*(v751 + 8))(v247, v746), LOBYTE(v247) = sub_1000A2458(), v250 = (v750 + 8), v251 = *(v750 + 8), v251(v249, v238), (v247 & 1) == 0))
  {
    v264 = v750;
    v265 = v751;
    v266 = v753;
    sub_1000A2288();
    v267 = *(*v239 + 2);
    if (v267)
    {
      v268 = v723;
      (*(v240 + 16))(v723, &(*v239)[((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * (v267 - 1)], v241);
      sub_1000A3258();
      (*(v240 + 8))(v268, v241);
      v269 = v739;
      sub_1000A33E8();
      (*(v265 + 8))(v266, v746);
      v270 = v264;
      (*(v264 + 56))(v269, 0, 1, v238);
      v271 = v738;
      (*(v264 + 32))(v738, v269, v238);
      v272 = v752;
    }

    else
    {
      v270 = v264;
      v273 = v739;
      (*(v264 + 56))(v739, 1, 1, v238);
      v271 = v738;
      sub_1000A23C8();
      v274 = (*(v264 + 48))(v273, 1, v238);
      v272 = v752;
      if (v274 != 1)
      {
        sub_100022154(v273, &qword_1000C7F58, &qword_1000AC770);
      }
    }

    sub_100032134(&qword_1000C7F50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v275 = v755;
    v276 = sub_1000A3A48();
    v277 = *(v270 + 8);
    v277(v271, v238);
    v277(v275, v238);
    if (v276)
    {
      v277(v754, v238);
      v277(v756, v238);
      return (*(v743 + 8))(v761, v744);
    }

    v755 = v277;
    sub_1000A32E8();
    v278 = *(v270 + 16);
    v278(v272, v756, v238);
    sub_1000A33F8();
    sub_1000A3288();
    v278(v272, v754, v238);
    sub_1000A33F8();
    sub_1000A3268();
    v279 = v747;
    v280 = *(v747 + 104);
    v281 = v714;
    LODWORD(v750) = enum case for EnergyKit.LoadType.hvac(_:);
    v282 = v742;
    v746 = v280;
    v280(v714);
    v283 = sub_1000A2928();
    v285 = v284;
    v286 = *(v279 + 8);
    v747 = v279 + 8;
    v286(v281, v282);
    v753 = (v270 + 8);
    if (v283 == v759 && v285 == v748)
    {
    }

    else
    {
      v287 = sub_1000A3F48();

      if ((v287 & 1) == 0)
      {
        v288 = v704;
        sub_1000A28D8();
        sub_1000A27A8();
        (*(v715 + 8))(v288, v722);
      }
    }

    sub_1000A2FB8();
    v289 = v737;
    sub_1000A28E8();
    sub_1000A2908();
    v751 = v758[1];
    v752 = (v758 + 1);
    (v751)(v289, v757);
    sub_1000A2FE8();
    v290 = v745;
    v291 = sub_1000A3858();
    v292 = v735;
    v293 = v734;
    v294 = v736;
    (*(v735 + 104))(v734, enum case for ElectricityInsightQuery.QueryType.runtime(_:), v736);
    v295 = sub_1000A38C8();
    (*(v292 + 8))(v293, v294);
    if (v291 == v295)
    {
      (*(v708 + 104))(v707, enum case for InsightRecordPayload.Grouping.runtime(_:), v709);
      sub_1000A32D8();
      v296 = (v731 + 16);
      v297 = *(v731 + 16);
      v759 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
      v298 = &v290[OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options];
      v299 = v731;
      v300 = v729;
      v301 = v730;
      v297(v729, v298, v730);
      v302 = v733;
      sub_1000A3918();
      v750 = sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
      v303 = sub_1000A3DF8();
      v304 = *(v299 + 8);
      v304(v302, v301);
      v748 = v304;
      v304(v300, v301);
      v305 = v711;
      if (v303)
      {
        v742 = v297;
        v746 = v296;
        sub_1000A3118();
        v306 = v686;
        sub_1000A28B8();
        v307 = v684;
        v308 = v724;
        sub_1000A2778();
        v309 = *(v741 + 8);
        v741 += 8;
        v310 = v309;
        v309(v306, v308);
        v311 = v757;
        v747 = v758[6];
        if ((v747)(v307, 1, v757) == 1)
        {
          sub_100022154(v307, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v751)(v307, v311);
        }

        v378 = v689;
        v379 = v685;
        sub_1000A30A8();
        v380 = v688;
        sub_1000A28B8();
        sub_1000A2748();
        v310(v380, v308);
        if ((v747)(v379, 1, v311) == 1)
        {
          sub_100022154(v379, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v751)(v379, v311);
        }

        sub_1000A3018();
        v381 = v690;
        sub_1000A28B8();
        v382 = v687;
        sub_1000A2768();
        v383 = v381;
        v384 = v382;
        v310(v383, v308);
        v385 = v382;
        v386 = v747;
        if ((v747)(v385, 1, v311) == 1)
        {
          sub_100022154(v384, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v751)(v384, v311);
        }

        sub_1000A3078();
        v387 = v692;
        sub_1000A28B8();
        sub_1000A2758();
        v310(v387, v308);
        if (v386(v378, 1, v311) == 1)
        {
          sub_100022154(v378, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v751)(v378, v311);
        }

        sub_1000A3048();
        v388 = v693;
        sub_1000A28B8();
        v389 = v691;
        sub_1000A2788();
        v310(v388, v308);
        if (v386(v389, 1, v311) == 1)
        {
          sub_100022154(v389, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v751)(v389, v311);
        }

        v301 = v730;
        v300 = v729;
        v302 = v733;
        v390 = v726;
        sub_1000A30D8();
        sub_1000A3108();
        v391 = v740;
        v392 = v727;
        (*(v740 + 16))(v701, v390, v727);
        sub_1000A32B8();
        (*(v391 + 8))(v390, v392);
        v305 = v711;
        v297 = v742;
      }

      v297(v300, &v759[v745], v301);
      sub_1000A3908();
      v393 = sub_1000A3DF8();
      v394 = v302;
      v395 = v393;
      v396 = v748;
      v748(v394, v301);
      v396(v300, v301);
      v317 = v760;
      v261 = v725;
      v255 = v749;
      if (v395)
      {
        sub_1000A3228();
        v397 = v697;
        sub_1000A28C8();
        v398 = v694;
        v399 = v713;
        sub_1000A27D8();
        v400 = v398;
        v401 = *(v717 + 8);
        v401(v397, v399);
        v402 = v757;
        v403 = v758[6];
        v758 += 6;
        if (v403(v400, 1, v757) == 1)
        {
          sub_100022154(v400, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v751)(v400, v402);
        }

        sub_1000A3188();
        v404 = v698;
        sub_1000A28C8();
        v405 = v695;
        sub_1000A27E8();
        v401(v404, v399);
        if (v403(v405, 1, v402) == 1)
        {
          sub_100022154(v405, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v751)(v405, v402);
        }

        v406 = v305;
        sub_1000A31B8();
        v407 = v699;
        sub_1000A28C8();
        v408 = v696;
        sub_1000A27F8();
        v401(v407, v399);
        if (v403(v408, 1, v402) == 1)
        {
          sub_100022154(v408, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v751)(v408, v402);
        }

        v317 = v760;
        v261 = v725;
        v255 = v749;
        sub_1000A3218();
        sub_1000A31E8();
        v409 = v732;
        v410 = v718;
        (*(v732 + 2))(v702, v406, v718);
        sub_1000A3158();
        (*(v409 + 1))(v406, v410);
      }
    }

    else
    {
      v312 = v705;
      v313 = v742;
      (v746)(v705, v750, v742);
      v314 = sub_1000A2928();
      v316 = v315;
      v286(v312, v313);
      if (v314 == v759 && v316 == v748)
      {

        v317 = v760;
        v261 = v725;
        v255 = v749;
      }

      else
      {
        v360 = sub_1000A3F48();

        v317 = v760;
        v261 = v725;
        v255 = v749;
        if ((v360 & 1) == 0)
        {
          (*(v708 + 104))(v707, enum case for InsightRecordPayload.Grouping.energy(_:), v709);
          sub_1000A32D8();
          v361 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
          v362 = v731;
          v363 = *(v731 + 16);
          v364 = v729;
          v365 = v730;
          v363(v729, &v745[OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options], v730);
          v366 = v733;
          sub_1000A3918();
          v757 = sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
          v367 = sub_1000A3DF8();
          v368 = *(v362 + 8);
          v368(v366, v365);
          v368(v364, v365);
          if (v367)
          {
            v750 = v368;
            v751 = v361;
            v752 = v363;
            sub_1000A3118();
            v369 = v635;
            sub_1000A28A8();
            v370 = v633;
            v371 = v706;
            sub_1000A2778();
            v372 = *(v710 + 8);
            v710 += 8;
            v759 = v372;
            (v372)(v369, v371);
            v373 = v715;
            v374 = v722;
            v758 = *(v715 + 48);
            if ((v758)(v370, 1, v722) == 1)
            {
              sub_100022154(v370, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v373 + 8))(v370, v374);
            }

            v496 = v636;
            sub_1000A30A8();
            v497 = v637;
            sub_1000A28A8();
            v498 = v634;
            v499 = v706;
            sub_1000A2748();
            (v759)(v497, v499);
            if ((v758)(v498, 1, v374) == 1)
            {
              sub_100022154(v498, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v715 + 8))(v498, v374);
            }

            v500 = v650;
            sub_1000A3018();
            v501 = v639;
            sub_1000A28A8();
            v502 = v706;
            sub_1000A2768();
            (v759)(v501, v502);
            if ((v758)(v496, 1, v374) == 1)
            {
              sub_100022154(v496, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v715 + 8))(v496, v374);
            }

            v503 = v638;
            sub_1000A3078();
            v504 = v641;
            sub_1000A28A8();
            v505 = v706;
            sub_1000A2758();
            (v759)(v504, v505);
            if ((v758)(v503, 1, v374) == 1)
            {
              sub_100022154(v503, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v715 + 8))(v503, v374);
            }

            sub_1000A3048();
            v506 = v642;
            sub_1000A28A8();
            v507 = v640;
            v508 = v706;
            sub_1000A2788();
            (v759)(v506, v508);
            if ((v758)(v507, 1, v374) == 1)
            {
              sub_100022154(v507, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v715 + 8))(v507, v374);
            }

            v365 = v730;
            v364 = v729;
            v509 = v727;
            v361 = v751;
            sub_1000A30D8();
            sub_1000A3108();
            v510 = v740;
            (*(v740 + 16))(v701, v500, v509);
            sub_1000A32B8();
            (*(v510 + 8))(v500, v509);
            v363 = v752;
            v368 = v750;
          }

          v363(v364, &v745[v361], v365);
          v511 = v733;
          sub_1000A3908();
          v512 = sub_1000A3DF8();
          v368(v511, v365);
          v368(v364, v365);
          v317 = v760;
          v261 = v725;
          v255 = v749;
          if (v512)
          {
            sub_1000A3228();
            v513 = v645;
            sub_1000A2898();
            v514 = v643;
            v515 = v683;
            sub_1000A27D8();
            v516 = *(v649 + 8);
            v516(v513, v515);
            v517 = v715;
            v518 = v722;
            v759 = *(v715 + 48);
            if ((v759)(v514, 1, v722) == 1)
            {
              sub_100022154(v514, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v517 + 8))(v514, v722);
              v518 = v722;
            }

            v519 = v646;
            sub_1000A3188();
            v520 = v647;
            sub_1000A2898();
            v521 = v644;
            sub_1000A27E8();
            v522 = v521;
            v516(v520, v515);
            v523 = v521;
            v524 = v759;
            if ((v759)(v523, 1, v518) == 1)
            {
              sub_100022154(v522, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v715 + 8))(v522, v722);
              v518 = v722;
            }

            sub_1000A31B8();
            v525 = v648;
            sub_1000A2898();
            sub_1000A27F8();
            v516(v525, v515);
            if ((v524)(v519, 1, v518) == 1)
            {
              sub_100022154(v519, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v715 + 8))(v519, v518);
            }

            v317 = v760;
            v261 = v725;
            v255 = v749;
            v526 = v700;
            sub_1000A3218();
            sub_1000A31E8();
            v527 = v732;
            v528 = v718;
            (*(v732 + 2))(v702, v526, v718);
            sub_1000A3158();
            (*(v527 + 1))(v526, v528);
          }
        }
      }
    }

    (*(v317 + 16))(v261, v255, v765);
    v256 = v763;
    v320 = *v763;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v256 = v320;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_208:
      v320 = sub_10009501C(0, *(v320 + 2) + 1, 1, v320);
      *v256 = v320;
    }

    v413 = *(v320 + 2);
    v412 = *(v320 + 3);
    if (v413 >= v412 >> 1)
    {
      *v256 = sub_10009501C((v412 > 1), v413 + 1, 1, v320);
    }

    v414 = v255;
    v415 = v765;
    (*(v317 + 8))(v414, v765);
    v416 = v755;
    v417 = v762;
    (v755)(v754, v762);
    v416(v756, v417);
    (*(v743 + 8))(v761, v744);
    v418 = *v256;
    *(v418 + 16) = v413 + 1;
    return (*(v317 + 32))(v418 + ((*(v317 + 80) + 32) & ~*(v317 + 80)) + *(v317 + 72) * v413, v261, v415);
  }

  v752 = v250;
  v753 = v251;
  v760 = *(*v239 + 2);
  v252 = v760 - 1;
  v253 = enum case for EnergyKit.LoadType.hvac(_:);
  v254 = v747;
  v255 = (v747 + 104);
  v256 = v712;
  v257 = v742;
  v749 = *(v747 + 104);
  (v749)(v712, enum case for EnergyKit.LoadType.hvac(_:), v742);
  v258 = sub_1000A2928();
  v260 = v259;
  v262 = *(v254 + 8);
  v261 = (v254 + 8);
  v747 = v262;
  v262(v256, v257);
  if (v258 == v759 && v260 == v748)
  {

    v263 = v600;
    goto LABEL_29;
  }

  v318 = sub_1000A3F48();

  v263 = v600;
  if ((v318 & 1) == 0)
  {
    v319 = v704;
    sub_1000A28D8();
    v320 = sub_1000A27A8();
    (*(v715 + 8))(v319, v722);
    v321 = v763;
    v322 = *v763;
    v323 = swift_isUniquelyReferenced_nonNull_native();
    *v321 = v322;
    if ((v323 & 1) == 0)
    {
      goto LABEL_212;
    }

    v324 = v760;
    if (v760)
    {
      goto LABEL_27;
    }

LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  while (1)
  {
LABEL_29:
    v327 = v737;
    sub_1000A28E8();
    v320 = sub_1000A2908();
    v750 = v758[1];
    v751 = (v758 + 1);
    (v750)(v327, v757);
    v321 = v763;
    v322 = *v763;
    v328 = swift_isUniquelyReferenced_nonNull_native();
    *v321 = v322;
    if (v328)
    {
      v329 = v760;
      if (!v760)
      {
        goto LABEL_210;
      }
    }

    else
    {
      v322 = sub_1000322E0(v322);
      *v763 = v322;
      v329 = v760;
      if (!v760)
      {
LABEL_210:
        __break(1u);
        goto LABEL_211;
      }
    }

    if (v329 <= *(v322 + 2))
    {
      break;
    }

LABEL_211:
    __break(1u);
LABEL_212:
    v322 = sub_1000322E0(v322);
    *v763 = v322;
    v324 = v760;
    if (!v760)
    {
      goto LABEL_213;
    }

LABEL_27:
    if (v324 > *(v322 + 2))
    {
      goto LABEL_214;
    }

    v325 = sub_1000A2F98();
    *v326 = *v326 + v320;
    v325(v766, 0);
  }

  v755 = v252 * v263;
  v330 = sub_1000A2FD8();
  *v331 = *v331 + v320;
  v330(v766, 0);
  v332 = v745;
  v333 = sub_1000A3858();
  v334 = v735;
  v335 = v734;
  v336 = v736;
  (*(v735 + 104))(v734, enum case for ElectricityInsightQuery.QueryType.runtime(_:), v736);
  v337 = sub_1000A38C8();
  (*(v334 + 8))(v335, v336);
  if (v333 != v337)
  {
    v353 = v332;
    v354 = v703;
    v355 = v742;
    (v749)(v703, v253, v742);
    v356 = sub_1000A2928();
    v358 = v357;
    (v747)(v354, v355);
    v261 = v732;
    v322 = v762;
    if (v356 == v759 && v358 == v748)
    {

      v359 = v756;
      v255 = v753;
LABEL_45:
      (v255)(v754, v322);
      v376 = v359;
      v377 = v322;
      goto LABEL_128;
    }

    v375 = sub_1000A3F48();

    v359 = v756;
    v255 = v753;
    if (v375)
    {
      goto LABEL_45;
    }

    v420 = v731;
    v421 = *(v731 + 16);
    v749 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
    v255 = v353;
    v320 = v729;
    v422 = v730;
    v750 = v421;
    v751 = v731 + 16;
    v421(v729, &v353[OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options], v730);
    v423 = v733;
    sub_1000A3918();
    v747 = sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
    v252 = sub_1000A3DF8();
    v425 = *(v420 + 8);
    v424 = v420 + 8;
    v263 = v425;
    v425(v423, v422);
    v731 = v424;
    v748 = v425;
    v425(v320, v422);
    if ((v252 & 1) == 0)
    {
      goto LABEL_185;
    }

    v256 = v763;
    if (v760 > *(*v763 + 2))
    {
      goto LABEL_239;
    }

    v426 = v629;
    v427 = v765;
    v719(v629, &(*v763)[v716 + v755], v765);
    v428 = v630;
    sub_1000A32A8();
    v721(v426, v427);
    sub_1000A3098();
    v430 = v429;
    v431 = *(v740 + 8);
    v740 += 8;
    v759 = v431;
    (v431)(v428, v727);
    v432 = v632;
    sub_1000A28A8();
    v433 = v631;
    v434 = v706;
    sub_1000A2778();
    v435 = *(v710 + 8);
    v710 += 8;
    v758 = v435;
    (v435)(v432, v434);
    v263 = v715;
    v424 = v715 + 48;
    v436 = v722;
    v757 = *(v715 + 48);
    if ((v757)(v433, 1, v722) == 1)
    {
      sub_100022154(v433, &qword_1000C7F90, &qword_1000ABDB8);
    }

    else
    {
      sub_1000A27A8();
      (*(v263 + 8))(v433, v436);
      if (v430 != -1.0)
      {
        v252 = v716;
        v322 = v755;
LABEL_157:
        v320 = *v256;
        v529 = swift_isUniquelyReferenced_nonNull_native();
        *v256 = v320;
        if ((v529 & 1) == 0)
        {
          goto LABEL_240;
        }

        goto LABEL_158;
      }
    }

    v252 = v716;
    v322 = v755;
    goto LABEL_157;
  }

  v749 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
  v338 = v731;
  v252 = v731 + 16;
  v759 = *(v731 + 16);
  v320 = v729;
  v255 = v730;
  (v759)(v729, &v332[OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options], v730);
  v261 = v733;
  sub_1000A3918();
  v339 = sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
  v321 = sub_1000A3DF8();
  v341 = *(v338 + 8);
  v340 = v338 + 8;
  v322 = v341;
  (v341)(v261, v255);
  (v341)(v320, v255);
  v342 = v749;
  v343 = v759;
  v344 = v762;
  if ((v321 & 1) == 0)
  {
    goto LABEL_107;
  }

  v742 = v339;
  v746 = v322;
  v739 = v252;
  v731 = v340;
  v256 = v763;
  v263 = v760;
  if (v760 > *(*v763 + 2))
  {
LABEL_215:
    __break(1u);
LABEL_216:
    v320 = sub_1000322E0(v320);
    *v256 = v320;
    goto LABEL_81;
  }

  v322 = v716;
  v345 = v679;
  v346 = v765;
  v719(v679, &(*v763)[v716 + v755], v765);
  v347 = v680;
  sub_1000A32A8();
  v721(v345, v346);
  sub_1000A3098();
  v348 = *(v740 + 8);
  v740 += 8;
  v748 = v348;
  v348(v347, v727);
  v349 = v682;
  sub_1000A28B8();
  v321 = v681;
  v350 = v724;
  sub_1000A2778();
  v351 = *(v741 + 8);
  v741 += 8;
  v747 = v351;
  v351(v349, v350);
  v352 = v757;
  v255 = (v758 + 6);
  v252 = v758[6];
  if ((v252)(v321, 1, v757) == 1)
  {
    sub_100022154(v321, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (v750)(v321, v352);
  }

  v320 = *v256;
  v437 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v320;
  if ((v437 & 1) == 0)
  {
    goto LABEL_216;
  }

LABEL_81:
  if (v263 > *(v320 + 2))
  {
    __break(1u);
    goto LABEL_218;
  }

  v438 = v263;
  v321 = v322;
  v263 = v766;
  v261 = v755;
  v322 = sub_1000A3298();
  v320 = v439;
  sub_1000A30A8();
  (v322)(v766, 0);
  if (v438 > *(*v256 + 16))
  {
LABEL_218:
    __break(1u);
LABEL_219:
    v320 = sub_1000322E0(v320);
    *v256 = v320;
    goto LABEL_87;
  }

  v440 = v675;
  v441 = v765;
  v719(v675, &v261[*v256 + v321], v765);
  v442 = v676;
  sub_1000A32A8();
  v721(v440, v441);
  sub_1000A3008();
  v748(v442, v727);
  v322 = v678;
  sub_1000A28B8();
  v263 = v677;
  v443 = v724;
  sub_1000A2748();
  (v747)(v322, v443);
  v444 = v757;
  if ((v252)(v263, 1, v757) == 1)
  {
    sub_100022154(v263, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (v750)(v263, v444);
  }

  v320 = *v256;
  v445 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v320;
  if ((v445 & 1) == 0)
  {
    goto LABEL_219;
  }

LABEL_87:
  v446 = v760;
  if (v760 > *(v320 + 2))
  {
    __break(1u);
    goto LABEL_221;
  }

  v263 = v766;
  v322 = sub_1000A3298();
  v320 = v447;
  sub_1000A3018();
  (v322)(v766, 0);
  if (v446 > *(*v256 + 16))
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v448 = v671;
  v449 = v765;
  v719(v671, &v261[*v256 + v321], v765);
  v450 = v672;
  sub_1000A32A8();
  v721(v448, v449);
  sub_1000A3068();
  v748(v450, v727);
  v322 = v674;
  sub_1000A28B8();
  v263 = v673;
  v451 = v724;
  sub_1000A2768();
  (v747)(v322, v451);
  v452 = v757;
  if ((v252)(v263, 1, v757) == 1)
  {
    sub_100022154(v263, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (v750)(v263, v452);
  }

  v320 = *v256;
  v453 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v320;
  if ((v453 & 1) == 0)
  {
    goto LABEL_223;
  }

  while (1)
  {
    v454 = v760;
    if (v760 > *(v320 + 2))
    {
      __break(1u);
LABEL_225:
      v454 = sub_1000322E0(v454);
      *v256 = v454;
      goto LABEL_114;
    }

    v263 = v766;
    v322 = sub_1000A3298();
    v320 = v455;
    sub_1000A3078();
    (v322)(v766, 0);
    if (v454 > *(*v256 + 16))
    {
      goto LABEL_227;
    }

    v456 = v663;
    v457 = v765;
    v719(v663, &v261[*v256 + v321], v765);
    v458 = v664;
    sub_1000A32A8();
    v721(v456, v457);
    sub_1000A3038();
    v748(v458, v727);
    v322 = v666;
    sub_1000A28B8();
    v263 = v665;
    v459 = v724;
    sub_1000A2758();
    (v747)(v322, v459);
    v460 = v757;
    if ((v252)(v263, 1, v757) == 1)
    {
      sub_100022154(v263, &qword_1000C7F88, &qword_1000ABDB0);
    }

    else
    {
      sub_1000A2908();
      (v750)(v263, v460);
    }

    v320 = *v256;
    v461 = swift_isUniquelyReferenced_nonNull_native();
    *v256 = v320;
    if ((v461 & 1) == 0)
    {
LABEL_229:
      v320 = sub_1000322E0(v320);
      *v256 = v320;
    }

    v424 = v760;
    if (v760 > *(v320 + 2))
    {
      __break(1u);
      goto LABEL_231;
    }

    v263 = v766;
    v322 = sub_1000A3298();
    v320 = v462;
    sub_1000A3048();
    (v322)(v766, 0);
    if (v424 > *(*v256 + 16))
    {
      goto LABEL_233;
    }

    v463 = v655;
    v464 = v765;
    v719(v655, &v261[*v256 + v321], v765);
    v465 = v656;
    sub_1000A32A8();
    v721(v463, v464);
    sub_1000A30C8();
    v748(v465, v727);
    v322 = v658;
    sub_1000A28B8();
    v263 = v657;
    v466 = v724;
    sub_1000A2788();
    (v747)(v322, v466);
    v424 = v757;
    if ((v252)(v263, 1, v757) == 1)
    {
      sub_100022154(v263, &qword_1000C7F88, &qword_1000ABDB0);
    }

    else
    {
      sub_1000A2908();
      (v750)(v263, v424);
    }

    v255 = v730;
    v320 = *v256;
    v467 = swift_isUniquelyReferenced_nonNull_native();
    *v256 = v320;
    if ((v467 & 1) == 0)
    {
LABEL_235:
      v320 = sub_1000322E0(v320);
      *v256 = v320;
    }

    if (v760 > *(v320 + 2))
    {
      __break(1u);
      goto LABEL_237;
    }

    v468 = sub_1000A3298();
    sub_1000A30D8();
    v468(v766, 0);
    v344 = v762;
    v332 = v745;
    v320 = v729;
    v261 = v733;
    v252 = v739;
    v343 = v759;
    v342 = v749;
    v322 = v746;
LABEL_107:
    v469 = v344;
    (v343)(v320, &v342[v332], v255);
    sub_1000A3908();
    v263 = sub_1000A3DF8();
    (v322)(v261, v255);
    (v322)(v320, v255);
    if ((v263 & 1) == 0)
    {
      v476 = v753;
      (v753)(v754, v469);
      (v476)(v756, v469);
      return (*(v743 + 8))(v761, v744);
    }

    v256 = v763;
    v321 = v760;
    if (v760 <= *(*v763 + 2))
    {
      break;
    }

LABEL_222:
    __break(1u);
LABEL_223:
    v320 = sub_1000322E0(v320);
    *v256 = v320;
  }

  v263 = v716;
  v470 = v667;
  v471 = v765;
  v719(v667, &(*v763)[v716 + v755], v765);
  v472 = v669;
  sub_1000A3148();
  v721(v470, v471);
  sub_1000A3178();
  v252 = *(v732 + 1);
  v732 += 8;
  (v252)(v472, v718);
  v473 = v670;
  sub_1000A28C8();
  v255 = v668;
  v474 = v713;
  v320 = v473;
  sub_1000A27D8();
  v475 = *(v717 + 8);
  v717 += 8;
  v759 = v475;
  (v475)(v473, v474);
  v322 = v757;
  v261 = v758[6];
  v758 += 6;
  if ((v261)(v255, 1, v757) == 1)
  {
    sub_100022154(v255, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    v320 = v255;
    sub_1000A2908();
    (v750)(v255, v322);
  }

  v454 = *v256;
  v477 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v454;
  if ((v477 & 1) == 0)
  {
    goto LABEL_225;
  }

LABEL_114:
  if (v321 > v454[2])
  {
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v322 = v766;
  v255 = v755;
  v478 = sub_1000A3138();
  v320 = v479;
  sub_1000A3188();
  v478(v766, 0);
  if (v321 > *(*v256 + 16))
  {
    goto LABEL_228;
  }

  v480 = v659;
  v481 = v765;
  v719(v659, &v255[*v256 + v263], v765);
  v482 = v661;
  sub_1000A3148();
  v721(v480, v481);
  sub_1000A31A8();
  (v252)(v482, v718);
  v483 = v662;
  sub_1000A28C8();
  v255 = v660;
  v484 = v713;
  v320 = v483;
  sub_1000A27E8();
  (v759)(v483, v484);
  v322 = v757;
  if ((v261)(v255, 1, v757) == 1)
  {
    sub_100022154(v255, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    v320 = v255;
    sub_1000A2908();
    (v750)(v255, v322);
  }

  v424 = *v256;
  v485 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v424;
  if ((v485 & 1) == 0)
  {
LABEL_231:
    v424 = sub_1000322E0(v424);
    *v256 = v424;
  }

  if (v321 > *(v424 + 16))
  {
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  v322 = v766;
  v255 = v755;
  v424 = sub_1000A3138();
  v320 = v486;
  sub_1000A31B8();
  (v424)(v766, 0);
  if (v321 > *(*v256 + 16))
  {
    goto LABEL_234;
  }

  v487 = v651;
  v488 = v765;
  v719(v651, &v255[*v256 + v263], v765);
  v489 = v653;
  sub_1000A3148();
  v721(v487, v488);
  sub_1000A3208();
  (v252)(v489, v718);
  v490 = v654;
  sub_1000A28C8();
  v491 = v652;
  v492 = v713;
  v320 = v490;
  sub_1000A27F8();
  (v759)(v490, v492);
  v322 = v757;
  if ((v261)(v491, 1, v757) == 1)
  {
    sub_100022154(v491, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    v320 = v491;
    sub_1000A2908();
    (v750)(v491, v322);
  }

  v263 = v756;
  v255 = v753;
  v424 = *v256;
  v493 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v424;
  if ((v493 & 1) == 0)
  {
LABEL_237:
    v424 = sub_1000322E0(v424);
    *v256 = v424;
  }

  if (v321 <= *(v424 + 16))
  {
    goto LABEL_127;
  }

  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  v320 = sub_1000322E0(v320);
  *v256 = v320;
LABEL_158:
  v530 = v760;
  if (v760 > *(v320 + 2))
  {
    __break(1u);
    goto LABEL_242;
  }

  v263 = v766;
  v261 = v322;
  v322 = sub_1000A3298();
  v320 = v531;
  sub_1000A30A8();
  (v322)(v766, 0);
  if (v530 > *(*v256 + 16))
  {
LABEL_242:
    __break(1u);
LABEL_243:
    v320 = sub_1000322E0(v320);
    *v256 = v320;
    goto LABEL_165;
  }

  v532 = v625;
  v533 = v765;
  v719(v625, &v261[*v256 + v252], v765);
  v534 = v626;
  sub_1000A32A8();
  v721(v532, v533);
  sub_1000A3008();
  (v759)(v534, v727);
  v263 = v628;
  sub_1000A28A8();
  v535 = v627;
  v536 = v706;
  sub_1000A2748();
  (v758)(v263, v536);
  v537 = v722;
  if ((v757)(v535, 1, v722) == 1)
  {
    sub_100022154(v535, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v715 + 8))(v535, v537);
  }

  v322 = v755;
  v320 = *v256;
  v538 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v320;
  if ((v538 & 1) == 0)
  {
    goto LABEL_243;
  }

LABEL_165:
  v539 = v760;
  if (v760 > *(v320 + 2))
  {
    __break(1u);
    goto LABEL_245;
  }

  v263 = v766;
  v261 = v322;
  v322 = sub_1000A3298();
  v320 = v540;
  sub_1000A3018();
  (v322)(v766, 0);
  if (v539 > *(*v256 + 16))
  {
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  v541 = v621;
  v542 = v765;
  v719(v621, &v261[*v256 + v252], v765);
  v543 = v622;
  sub_1000A32A8();
  v721(v541, v542);
  sub_1000A3068();
  (v759)(v543, v727);
  v263 = v624;
  sub_1000A28A8();
  v544 = v623;
  v545 = v706;
  sub_1000A2768();
  (v758)(v263, v545);
  v546 = v722;
  if ((v757)(v544, 1, v722) == 1)
  {
    sub_100022154(v544, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v715 + 8))(v544, v546);
  }

  v322 = v755;
  v320 = *v256;
  v547 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v320;
  if ((v547 & 1) == 0)
  {
    goto LABEL_247;
  }

  while (1)
  {
    v548 = v760;
    if (v760 > *(v320 + 2))
    {
      __break(1u);
      goto LABEL_249;
    }

    v263 = v766;
    v261 = v322;
    v322 = sub_1000A3298();
    v320 = v549;
    sub_1000A3078();
    (v322)(v766, 0);
    if (v548 > *(*v256 + 16))
    {
      goto LABEL_251;
    }

    v550 = v613;
    v551 = v765;
    v719(v613, &v261[*v256 + v252], v765);
    v552 = v614;
    sub_1000A32A8();
    v721(v550, v551);
    sub_1000A3038();
    (v759)(v552, v727);
    v263 = v616;
    sub_1000A28A8();
    v553 = v615;
    v554 = v706;
    sub_1000A2758();
    (v758)(v263, v554);
    v555 = v722;
    if ((v757)(v553, 1, v722) == 1)
    {
      sub_100022154(v553, &qword_1000C7F90, &qword_1000ABDB8);
    }

    else
    {
      sub_1000A27A8();
      (*(v715 + 8))(v553, v555);
    }

    v322 = v755;
    v320 = *v256;
    v556 = swift_isUniquelyReferenced_nonNull_native();
    *v256 = v320;
    if ((v556 & 1) == 0)
    {
LABEL_253:
      v320 = sub_1000322E0(v320);
      *v256 = v320;
    }

    v317 = v760;
    if (v760 > *(v320 + 2))
    {
      __break(1u);
      goto LABEL_255;
    }

    v263 = v766;
    v261 = v322;
    v557 = sub_1000A3298();
    v320 = v558;
    sub_1000A3048();
    v557(v766, 0);
    if (v317 > *(*v256 + 16))
    {
      goto LABEL_257;
    }

    v559 = v605;
    v560 = v765;
    v719(v605, &v261[*v256 + v252], v765);
    v561 = v606;
    sub_1000A32A8();
    v721(v559, v560);
    sub_1000A30C8();
    (v759)(v561, v727);
    v263 = v608;
    sub_1000A28A8();
    v317 = v607;
    v562 = v706;
    sub_1000A2788();
    (v758)(v263, v562);
    v563 = v722;
    v564 = (v757)(v317, 1, v722);
    v255 = v745;
    if (v564 == 1)
    {
      sub_100022154(v317, &qword_1000C7F90, &qword_1000ABDB8);
    }

    else
    {
      sub_1000A27A8();
      (*(v715 + 8))(v317, v563);
    }

    v424 = v760;
    v261 = v732;
    v320 = *v256;
    v565 = swift_isUniquelyReferenced_nonNull_native();
    *v256 = v320;
    if ((v565 & 1) == 0)
    {
LABEL_259:
      v320 = sub_1000322E0(v320);
      *v256 = v320;
    }

    if (v424 > *(v320 + 2))
    {
      __break(1u);
      goto LABEL_261;
    }

    v566 = sub_1000A3298();
    sub_1000A30D8();
    v566(v766, 0);
    v322 = v762;
LABEL_185:
    v263 = v729;
    v567 = v730;
    (v750)(v729, &v749[v255], v730);
    v568 = v733;
    sub_1000A3908();
    v424 = sub_1000A3DF8();
    v569 = v568;
    v320 = v731;
    v570 = v748;
    v748(v569, v567);
    v570(v263, v567);
    if ((v424 & 1) == 0)
    {
      v581 = v753;
      (v753)(v754, v322);
      (v581)(v756, v322);
      return (*(v743 + 8))(v761, v744);
    }

    v256 = v763;
    if (v760 <= *(*v763 + 2))
    {
      break;
    }

LABEL_246:
    __break(1u);
LABEL_247:
    v320 = sub_1000322E0(v320);
    *v256 = v320;
  }

  v571 = v617;
  v572 = v765;
  v719(v617, &(*v763)[v716 + v755], v765);
  v573 = v618;
  sub_1000A3148();
  v721(v571, v572);
  sub_1000A3178();
  v575 = v574;
  v576 = *(v261 + 1);
  v261 += 8;
  v759 = v576;
  (v576)(v573, v718);
  v577 = v620;
  sub_1000A2898();
  v255 = v619;
  v578 = v683;
  sub_1000A27D8();
  v252 = v649 + 8;
  v758 = *(v649 + 8);
  (v758)(v577, v578);
  v579 = v715;
  v322 = (v715 + 48);
  v580 = v722;
  v757 = *(v715 + 48);
  if ((v757)(v255, 1, v722) == 1)
  {
    sub_100022154(v255, &qword_1000C7F90, &qword_1000ABDB8);
    goto LABEL_191;
  }

  sub_1000A27A8();
  (*(v579 + 8))(v255, v580);
  if (v575 == -1.0)
  {
LABEL_191:
    v320 = v716;
    v263 = v760;
  }

  else
  {
    v320 = v716;
    v263 = v760;
  }

  v424 = *v256;
  v582 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v424;
  if (v582)
  {
    goto LABEL_193;
  }

LABEL_249:
  v424 = sub_1000322E0(v424);
  *v256 = v424;
LABEL_193:
  v732 = v261;
  if (v263 > *(v424 + 16))
  {
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  v317 = v320;
  v255 = v766;
  v261 = v755;
  v424 = sub_1000A3138();
  v320 = v583;
  sub_1000A3188();
  (v424)(v766, 0);
  if (v263 > *(*v256 + 16))
  {
    goto LABEL_252;
  }

  v584 = v609;
  v585 = v765;
  v719(v609, &v261[*v256 + v317], v765);
  v586 = v610;
  sub_1000A3148();
  v721(v584, v585);
  sub_1000A31A8();
  (v759)(v586, v718);
  v587 = v612;
  sub_1000A2898();
  v255 = v611;
  v588 = v683;
  sub_1000A27E8();
  (v758)(v587, v588);
  v589 = v722;
  if ((v757)(v255, 1, v722) == 1)
  {
    sub_100022154(v255, &qword_1000C7F90, &qword_1000ABDB8);
    v320 = v716;
    v263 = v760;
  }

  else
  {
    sub_1000A27A8();
    (*(v715 + 8))(v255, v589);
    v263 = v760;
    v320 = v716;
  }

  v424 = *v256;
  v590 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v424;
  if ((v590 & 1) == 0)
  {
LABEL_255:
    v424 = sub_1000322E0(v424);
    *v256 = v424;
  }

  if (v263 > *(v424 + 16))
  {
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  v317 = v320;
  v255 = v766;
  v261 = v755;
  v424 = sub_1000A3138();
  v320 = v591;
  sub_1000A31B8();
  (v424)(v766, 0);
  if (v263 > *(*v256 + 16))
  {
    goto LABEL_258;
  }

  v592 = v601;
  v593 = v765;
  v719(v601, &v261[*v256 + v317], v765);
  v594 = v602;
  sub_1000A3148();
  v721(v592, v593);
  sub_1000A3208();
  (v759)(v594, v718);
  v595 = v604;
  sub_1000A2898();
  v596 = v603;
  v597 = v683;
  sub_1000A27F8();
  (v758)(v595, v597);
  v598 = v722;
  if ((v757)(v596, 1, v722) == 1)
  {
    sub_100022154(v596, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v715 + 8))(v596, v598);
  }

  v263 = v756;
  v255 = v753;
  v320 = v760;
  v424 = *v256;
  v599 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v424;
  if ((v599 & 1) == 0)
  {
LABEL_261:
    v424 = sub_1000322E0(v424);
    *v256 = v424;
  }

  if (v320 > *(v424 + 16))
  {
    __break(1u);
    goto LABEL_208;
  }

LABEL_127:
  v494 = sub_1000A3138();
  sub_1000A3218();
  v494(v766, 0);
  v495 = v762;
  (v255)(v754, v762);
  v376 = v263;
  v377 = v495;
LABEL_128:
  (v255)(v376, v377);
  return (*(v743 + 8))(v761, v744);
}

uint64_t sub_100032134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100032180(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100032224(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000321D0()
{
  result = qword_1000C7F10;
  if (!qword_1000C7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7F10);
  }

  return result;
}

uint64_t sub_100032224(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10003228C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000322F4()
{
  v0 = sub_10000275C(&qword_1000C7F90, &qword_1000ABDB8);
  __chkstk_darwin(*(*(v0 - 8) + 64));
  v27 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v26 = &v24 - v2;
  __chkstk_darwin(v3);
  v25 = &v24 - v4;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_1000A3098();
  v29 = sub_10000275C(&qword_1000C7F68, &qword_1000ABD98);
  sub_1000A2778();
  v14 = sub_1000A27B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v13, 1, v14);
  v28 = v15;
  if (v17 == 1)
  {
    sub_100022154(v13, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v15 + 8))(v13, v14);
  }

  v18 = v27;
  sub_1000A30A8();
  sub_1000A3008();
  sub_1000A2748();
  if (v16(v10, 1, v14) == 1)
  {
    sub_100022154(v10, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v28 + 8))(v10, v14);
  }

  sub_1000A3018();
  sub_1000A3068();
  sub_1000A2768();
  v19 = v16(v7, 1, v14);
  v20 = v28;
  v21 = v26;
  if (v19 == 1)
  {
    sub_100022154(v7, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v20 + 8))(v7, v14);
  }

  v22 = v25;
  sub_1000A3078();
  sub_1000A3038();
  sub_1000A2758();
  if (v16(v22, 1, v14) == 1)
  {
    sub_100022154(v22, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v20 + 8))(v22, v14);
  }

  sub_1000A3048();
  sub_1000A30C8();
  sub_1000A2788();
  if (v16(v21, 1, v14) == 1)
  {
    sub_100022154(v21, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v20 + 8))(v21, v14);
  }

  sub_1000A30D8();
  sub_1000A30F8();
  sub_1000A2798();
  if (v16(v18, 1, v14) == 1)
  {
    sub_100022154(v18, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v20 + 8))(v18, v14);
  }

  return sub_1000A3108();
}

uint64_t sub_1000328CC()
{
  v0 = sub_10000275C(&qword_1000C7F90, &qword_1000ABDB8);
  __chkstk_darwin(*(*(v0 - 8) + 64));
  v20 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v18 = &v17 - v2;
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  sub_1000A3178();
  v19 = sub_10000275C(&qword_1000C7F60, &qword_1000ABD90);
  sub_1000A27D8();
  v9 = sub_1000A27B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) == 1)
  {
    v12 = v10;
    sub_100022154(v8, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    v12 = v10;
    (*(v10 + 8))(v8, v9);
  }

  sub_1000A3188();
  sub_1000A31A8();
  sub_1000A27E8();
  v13 = v11(v5, 1, v9);
  v14 = v18;
  if (v13 == 1)
  {
    sub_100022154(v5, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v12 + 8))(v5, v9);
  }

  sub_1000A31B8();
  sub_1000A3208();
  sub_1000A27F8();
  if (v11(v14, 1, v9) == 1)
  {
    sub_100022154(v14, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v12 + 8))(v14, v9);
  }

  v15 = v20;
  sub_1000A3218();
  sub_1000A31D8();
  sub_1000A2808();
  if (v11(v15, 1, v9) == 1)
  {
    sub_100022154(v15, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v12 + 8))(v15, v9);
  }

  return sub_1000A31E8();
}

uint64_t sub_100032D00()
{
  v0 = sub_10000275C(&qword_1000C7F88, &qword_1000ABDB0);
  __chkstk_darwin(*(*(v0 - 8) + 64));
  v27 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v26 = &v24 - v2;
  __chkstk_darwin(v3);
  v25 = &v24 - v4;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_1000A3098();
  v29 = sub_10000275C(&qword_1000C7F78, &qword_1000ABDA8);
  sub_1000A2778();
  v14 = sub_1000A2918();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v13, 1, v14);
  v28 = v15;
  if (v17 == 1)
  {
    sub_100022154(v13, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v15 + 8))(v13, v14);
  }

  v18 = v27;
  sub_1000A30A8();
  sub_1000A3008();
  sub_1000A2748();
  if (v16(v10, 1, v14) == 1)
  {
    sub_100022154(v10, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v28 + 8))(v10, v14);
  }

  sub_1000A3018();
  sub_1000A3068();
  sub_1000A2768();
  v19 = v16(v7, 1, v14);
  v20 = v28;
  v21 = v26;
  if (v19 == 1)
  {
    sub_100022154(v7, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v20 + 8))(v7, v14);
  }

  v22 = v25;
  sub_1000A3078();
  sub_1000A3038();
  sub_1000A2758();
  if (v16(v22, 1, v14) == 1)
  {
    sub_100022154(v22, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v20 + 8))(v22, v14);
  }

  sub_1000A3048();
  sub_1000A30C8();
  sub_1000A2788();
  if (v16(v21, 1, v14) == 1)
  {
    sub_100022154(v21, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v20 + 8))(v21, v14);
  }

  sub_1000A30D8();
  sub_1000A30F8();
  sub_1000A2798();
  if (v16(v18, 1, v14) == 1)
  {
    sub_100022154(v18, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v20 + 8))(v18, v14);
  }

  return sub_1000A3108();
}

uint64_t sub_1000332D8()
{
  v0 = sub_10000275C(&qword_1000C7F88, &qword_1000ABDB0);
  __chkstk_darwin(*(*(v0 - 8) + 64));
  v20 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v18 = &v17 - v2;
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  sub_1000A3178();
  v19 = sub_10000275C(&qword_1000C7F70, &qword_1000ABDA0);
  sub_1000A27D8();
  v9 = sub_1000A2918();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) == 1)
  {
    v12 = v10;
    sub_100022154(v8, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    v12 = v10;
    (*(v10 + 8))(v8, v9);
  }

  sub_1000A3188();
  sub_1000A31A8();
  sub_1000A27E8();
  v13 = v11(v5, 1, v9);
  v14 = v18;
  if (v13 == 1)
  {
    sub_100022154(v5, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v12 + 8))(v5, v9);
  }

  sub_1000A31B8();
  sub_1000A3208();
  sub_1000A27F8();
  if (v11(v14, 1, v9) == 1)
  {
    sub_100022154(v14, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v12 + 8))(v14, v9);
  }

  v15 = v20;
  sub_1000A3218();
  sub_1000A31D8();
  sub_1000A2808();
  if (v11(v15, 1, v9) == 1)
  {
    sub_100022154(v15, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v12 + 8))(v15, v9);
  }

  return sub_1000A31E8();
}

uint64_t sub_10003372C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100033764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100033860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = sub_1000A2498();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100033980(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = sub_1000A2498();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_100033A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = sub_1000A2498();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_100033B44()
{
  type metadata accessor for XPCStoreDriver();
  v0 = swift_allocObject();
  result = sub_100033B80();
  qword_1000C9648 = v0;
  return result;
}

void *sub_100033B80()
{
  v1 = v0;
  swift_defaultActor_initialize();
  type metadata accessor for XPCCoreDataStore();
  v2 = swift_allocObject();
  v2[10] = 0;
  v2[2] = 0xD000000000000010;
  v2[3] = 0x80000001000A6AC0;
  v2[4] = 0x6361436C61636F4CLL;
  v2[5] = 0xEA00000000006568;
  v2[6] = 0xD00000000000001ELL;
  v2[7] = 0x80000001000A6AE0;
  v2[8] = 0x656E696C66664FLL;
  v2[9] = 0xE700000000000000;

  v1[16] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xD000000000000012;
  *(v3 + 24) = 0x80000001000A6B00;
  strcpy((v3 + 32), "InsightCache");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  *(v3 + 48) = 0xD000000000000020;
  *(v3 + 56) = 0x80000001000A6B20;
  *(v3 + 64) = 0x64756F6C43;
  *(v3 + 72) = 0xE500000000000000;
  *(v3 + 80) = 0;

  v1[14] = v3;
  v4 = swift_allocObject();
  *(v4 + 72) = 0xE500000000000000;
  *(v4 + 80) = 0;
  *(v4 + 16) = 0xD000000000000012;
  *(v4 + 24) = 0x80000001000A6B00;
  strcpy((v4 + 32), "InsightCache");
  *(v4 + 45) = 0;
  *(v4 + 46) = -5120;
  *(v4 + 48) = 0xD00000000000001FLL;
  *(v4 + 56) = 0x80000001000A6B50;
  *(v4 + 64) = 0x64756F6C43;

  v1[15] = v4;
  return v1;
}

uint64_t sub_100033D34()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100033DAC(uint64_t a1)
{
  v1 = *sub_100013C5C((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100033DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v22 - v9;
  sub_100038E0C(a3, v22 - v9);
  v11 = sub_1000A3BE8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100022154(v10, &qword_1000C8240, &qword_1000AB688);
  }

  else
  {
    sub_1000A3BD8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000A3BA8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000A3AA8() + 32;

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

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_10003403C(void *a1, id a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v47 = a5;
  v48 = a4;
  v49 = a1;
  v11 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = &v46 - v12;
  v14 = os_transaction_create();
  sub_10003690C(v14, v15, v16);
  if (a3)
  {
    v17 = sub_1000A39B8();
    if (!(v17 >> 62))
    {
      goto LABEL_3;
    }

LABEL_10:
    v18 = sub_1000A3EC8();
    v50 = a6;
    v51 = v14;
    if (!v18)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v17 = &_swiftEmptyArrayStorage;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_10;
  }

LABEL_3:
  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = a6;
  v51 = v14;
  if (!v18)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v18 < 1)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_14;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v18; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35B8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v44 = 32;
    do
    {

      sub_1000A35B8();

      v44 += 8;
      --v18;
    }

    while (v18);
  }

LABEL_11:

  v20 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:a2];
  v21 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP9EnergyKit22ClientEndpointProtocol_];
  [v20 setRemoteObjectInterface:v21];

  [v20 resume];
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  aBlock[4] = sub_100039168;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100034658;
  aBlock[3] = &unk_1000BF488;
  v23 = _Block_copy(aBlock);
  a2 = v20;

  v24 = [a2 remoteObjectProxyWithErrorHandler:v23];
  _Block_release(v23);
  sub_1000A3DE8();
  swift_unknownObjectRelease();
  sub_10000275C(&qword_1000C8248, &qword_1000ABEC0);
  if (swift_dynamicCast())
  {
    v25 = v52;
    v26 = sub_1000A3BE8();
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v7;
    *(v27 + 40) = v25;
    v28 = v7;
    v29 = v49;
    v30 = v50;
    v31 = v47;
    *(v27 + 48) = v49;
    *(v27 + 56) = v31;
    v32 = v51;
    *(v27 + 64) = v30;
    *(v27 + 72) = v32;
    *(v27 + 80) = a3;
    *(v27 + 88) = v48 & 1;
    *(v27 + 96) = a2;
    v33 = a3;
    v34 = a2;
    v35 = v28;
    swift_unknownObjectRetain();
    v36 = v29;

    swift_unknownObjectRetain();
    sub_100069404(0, 0, v13, &unk_1000ABF10, v27);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_100022154(v13, &qword_1000C8240, &qword_1000AB688);
    return;
  }

  if (qword_1000C7570 != -1)
  {
    goto LABEL_35;
  }

LABEL_14:
  v37 = sub_1000A3538();
  sub_100001E38(v37, qword_1000C96B8);
  v38 = sub_1000A3518();
  v39 = sub_1000A3CC8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Failed to create client proxy", v40, 2u);
  }

  if (a3)
  {
    v41 = sub_1000A39B8();
    if (!(v41 >> 62))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v41 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_18:
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
        goto LABEL_19;
      }

LABEL_29:

      swift_unknownObjectRelease();

      return;
    }
  }

  v42 = sub_1000A3EC8();
  if (!v42)
  {
    goto LABEL_29;
  }

LABEL_19:
  if (v42 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v42; ++j)
      {
        sub_1000A3EA8();
        sub_1000A35C8();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v45 = 32;
      do
      {

        sub_1000A35C8();

        v45 += 8;
        --v42;
      }

      while (v42);
    }

    swift_unknownObjectRelease();
  }
}

void sub_100034658(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000346C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 600) = v17;
  *(v8 + 816) = v16;
  *(v8 + 592) = v15;
  *(v8 + 584) = a8;
  *(v8 + 576) = a7;
  *(v8 + 568) = a6;
  *(v8 + 560) = a5;
  v9 = sub_10000275C(&qword_1000C82B0, &qword_1000ABEE0);
  *(v8 + 608) = v9;
  *(v8 + 616) = *(v9 - 8);
  *(v8 + 624) = swift_task_alloc();
  sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  *(v8 + 632) = swift_task_alloc();
  v10 = sub_10000275C(&qword_1000C82B8, &qword_1000ABEE8);
  *(v8 + 640) = v10;
  *(v8 + 648) = *(v10 - 8);
  *(v8 + 656) = swift_task_alloc();
  v11 = sub_10000275C(&unk_1000C82C0, &qword_1000ABEF0);
  *(v8 + 664) = v11;
  *(v8 + 672) = *(v11 - 8);
  *(v8 + 680) = swift_task_alloc();
  v12 = sub_1000A2508();
  *(v8 + 688) = v12;
  *(v8 + 696) = *(v12 - 8);
  *(v8 + 704) = swift_task_alloc();

  return _swift_task_switch(sub_100034918, 0, 0);
}

uint64_t sub_100034918()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 712) = qword_1000C95F0;

  return _swift_task_switch(sub_1000349C0, v1, 0);
}

uint64_t sub_1000349C0()
{
  *(v0 + 817) = *(*(v0 + 712) + 144);

  v1 = swift_task_alloc();
  *(v0 + 720) = v1;
  *v1 = v0;
  v1[1] = sub_100034A74;

  return sub_1000472A8(0);
}

uint64_t sub_100034A74(char a1)
{
  *(*v1 + 818) = a1;

  return _swift_task_switch(sub_100034B74, 0, 0);
}

uint64_t sub_100034B74()
{
  if (*(v0 + 817))
  {
    if ((*(v0 + 818) & 1) == 0)
    {
      v1 = v0 + 336;
      v2 = v0 + 80;
      v3 = *(v0 + 568);
      v4 = *(v0 + 560);
      v5.super.isa = sub_1000A3B48().super.isa;
      *(v0 + 736) = v5;
      *(v0 + 80) = v0;
      *(v0 + 88) = sub_100035114;
      v6 = swift_continuation_init();
      *(v0 + 392) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
      *(v0 + 336) = _NSConcreteStackBlock;
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_100033DAC;
      *(v0 + 360) = &unk_1000BF500;
      *(v0 + 368) = v6;
LABEL_9:
      [v4 receiveInsightPayloads:v5.super.isa request:v3 finished:1 completionHandler:v1];

      return _swift_continuation_await(v2);
    }
  }

  else if ((*(v0 + 818) & 1) == 0)
  {
    v2 = v0 + 16;
    v1 = v0 + 272;
    v3 = *(v0 + 568);
    v4 = *(v0 + 560);
    v5.super.isa = sub_1000A3B48().super.isa;
    *(v0 + 728) = v5;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100034E8C;
    v15 = swift_continuation_init();
    *(v0 + 328) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    *(v0 + 272) = _NSConcreteStackBlock;
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_100033DAC;
    *(v0 + 296) = &unk_1000BF4D8;
    *(v0 + 304) = v15;
    goto LABEL_9;
  }

  v7 = *(v0 + 704);
  v8 = *(v0 + 696);
  v9 = *(v0 + 688);
  type metadata accessor for WholeHomeInsights();
  *(v0 + 744) = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000A3898();
  v10 = sub_1000A24C8();
  v12 = v11;
  *(v0 + 752) = v11;
  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  *(v0 + 760) = v13;
  *v13 = v0;
  v13[1] = sub_1000353B0;

  return sub_100067328(v10, v12, 0);
}

uint64_t sub_100034E8C()
{

  return _swift_task_switch(sub_100034F6C, 0, 0);
}

unint64_t sub_100034F6C()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);

  result = v2();
  if (v1)
  {
    result = sub_1000A39B8();
    v4 = result;
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

  result = sub_1000A3EC8();
  v5 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v5; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35C8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = 32;
    do
    {

      sub_1000A35C8();

      v8 += 8;
      --v5;
    }

    while (v5);
  }

LABEL_11:

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100035114()
{

  return _swift_task_switch(sub_1000351F4, 0, 0);
}

unint64_t sub_1000351F4()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 576);

  v3();
  result = [v1 invalidate];
  if (v2)
  {
    result = sub_1000A39B8();
    v5 = result;
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

  result = sub_1000A3EC8();
  v6 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v6 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v6; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35C8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = 32;
    do
    {

      sub_1000A35C8();

      v9 += 8;
      --v6;
    }

    while (v6);
  }

LABEL_11:

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000353B0(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 544) = a2;
  *(v3 + 536) = a1;
  *(v3 + 528) = v2;
  *(v3 + 768) = a1;

  return _swift_task_switch(sub_1000354DC, 0, 0);
}

uint64_t sub_1000354DC()
{
  v1 = *(v0 + 768);
  if (v1)
  {
    v2 = *(v0 + 744);
    *(v0 + 819) = *(v0 + 544);
    v3 = v1;

    return _swift_task_switch(sub_100035680, v2, 0);
  }

  else
  {
    *(v0 + 800) = 0;
    v4 = *(v0 + 568);
    v5 = *(v0 + 560);
    isa = sub_1000A3B48().super.isa;
    *(v0 + 808) = isa;
    *(v0 + 144) = v0;
    *(v0 + 152) = sub_100035F7C;
    v7 = swift_continuation_init();
    *(v0 + 456) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_100033DAC;
    *(v0 + 424) = &unk_1000BF528;
    *(v0 + 432) = v7;
    [v5 receiveInsightPayloads:isa request:v4 finished:1 completionHandler:v0 + 400];

    return _swift_continuation_await(v0 + 144);
  }
}

uint64_t sub_100035680()
{
  type metadata accessor for CoreDataInsightStream(0);
  v1 = swift_allocObject();
  *(v0 + 776) = v1;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  v3 = sub_10000275C(&unk_1000C7CA0, qword_1000ABAF0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);

  return _swift_task_switch(sub_100035754, v1, 0);
}

uint64_t sub_100035754()
{
  v1 = v0[93];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  sub_10000275C(&qword_1000C82E0, &qword_1000ABEF8);
  (*(v3 + 104))(v2, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  sub_1000A3C38();

  return _swift_task_switch(sub_10003584C, v1, 0);
}

uint64_t sub_10003584C()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 819);
  v3 = *(v0 + 768);
  v4 = *(v0 + 632);
  v5 = *(v0 + 816);
  v6 = *(v0 + 568);
  v7 = sub_1000A3BE8();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v3;
  *(v8 + 40) = v1;
  *(v8 + 48) = v6;
  *(v8 + 56) = v2;
  *(v8 + 57) = v5;
  v9 = v3;

  v10 = v6;
  sub_100033DE0(0, 0, v4, &unk_1000ABF18, v8);

  sub_100022154(v4, &qword_1000C8240, &qword_1000AB688);

  return _swift_task_switch(sub_1000359A4, 0, 0);
}

uint64_t sub_1000359A4()
{
  sub_1000A3C18();
  v1 = swift_task_alloc();
  *(v0 + 784) = v1;
  *v1 = v0;
  v1[1] = sub_100035A5C;
  v2 = *(v0 + 608);

  return AsyncStream.Iterator.next(isolation:)(v0 + 552, 0, 0, v2);
}

uint64_t sub_100035A5C()
{

  return _swift_task_switch(sub_100035B58, 0, 0);
}

uint64_t sub_100035B58()
{
  if (*(v0 + 552))
  {
    v1 = v0 + 208;
    v2 = *(v0 + 568);
    v3 = *(v0 + 560);
    isa = sub_1000A3B48().super.isa;
    *(v0 + 792) = isa;

    *(v0 + 208) = v0;
    *(v0 + 216) = sub_100035DEC;
    v5 = swift_continuation_init();
    *(v0 + 520) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    *(v0 + 464) = _NSConcreteStackBlock;
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_100033DAC;
    *(v0 + 488) = &unk_1000BF578;
    *(v0 + 496) = v5;
    [v3 receiveInsightPayloads:isa request:v2 finished:0 completionHandler:v0 + 464];
  }

  else
  {
    v1 = v0 + 144;
    v6 = *(v0 + 680);
    v7 = *(v0 + 672);
    v8 = *(v0 + 664);
    v9 = *(v0 + 624);
    v10 = *(v0 + 616);
    v11 = *(v0 + 608);

    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    *(v0 + 800) = *(v0 + 768);
    v12 = *(v0 + 568);
    v13 = *(v0 + 560);
    v14 = sub_1000A3B48().super.isa;
    *(v0 + 808) = v14;
    *(v0 + 144) = v0;
    *(v0 + 152) = sub_100035F7C;
    v15 = swift_continuation_init();
    *(v0 + 456) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_100033DAC;
    *(v0 + 424) = &unk_1000BF528;
    *(v0 + 432) = v15;
    [v13 receiveInsightPayloads:v14 request:v12 finished:1 completionHandler:v0 + 400];
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100035DEC()
{

  return _swift_task_switch(sub_100035ECC, 0, 0);
}

uint64_t sub_100035ECC()
{
  v1 = swift_task_alloc();
  *(v0 + 784) = v1;
  *v1 = v0;
  v1[1] = sub_100035A5C;
  v2 = *(v0 + 608);

  return AsyncStream.Iterator.next(isolation:)(v0 + 552, 0, 0, v2);
}

uint64_t sub_100035F7C()
{

  return _swift_task_switch(sub_10003605C, 0, 0);
}

unint64_t sub_10003605C()
{
  v1 = *(v0 + 808);

  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 576);

  v4();
  result = [v2 invalidate];
  if (v3)
  {
    result = sub_1000A39B8();
    v6 = result;
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

  result = sub_1000A3EC8();
  v7 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v7 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v7; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35C8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v10 = 32;
    do
    {

      sub_1000A35C8();

      v10 += 8;
      --v7;
    }

    while (v7);
  }

LABEL_11:

  v9 = *(v0 + 8);

  return v9();
}

void sub_10003630C(void *a1, id a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v43 - v10;
  v12 = os_transaction_create();
  sub_10003690C(v12, v13, v14);
  if (a3)
  {
    v15 = sub_1000A39B8();
    if (!(v15 >> 62))
    {
      goto LABEL_3;
    }

LABEL_10:
    v16 = sub_1000A3EC8();
    v45 = a5;
    v46 = v12;
    if (!v16)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v15 = &_swiftEmptyArrayStorage;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_10;
  }

LABEL_3:
  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = a5;
  v46 = v12;
  if (!v16)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v16 < 1)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_14;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v16; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35B8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v41 = 32;
    do
    {

      sub_1000A35B8();

      v41 += 8;
      --v16;
    }

    while (v16);
  }

LABEL_11:

  v18 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:a2];
  v19 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP9EnergyKit22ClientEndpointProtocol_];
  [v18 setRemoteObjectInterface:v19];

  [v18 resume];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  aBlock[4] = sub_1000389B4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100034658;
  aBlock[3] = &unk_1000BF348;
  v21 = _Block_copy(aBlock);
  a2 = v18;

  v22 = [a2 remoteObjectProxyWithErrorHandler:v21];
  _Block_release(v21);
  sub_1000A3DE8();
  swift_unknownObjectRelease();
  sub_10000275C(&qword_1000C8248, &qword_1000ABEC0);
  if (swift_dynamicCast())
  {
    v23 = v47;
    v24 = sub_1000A3BE8();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v26 = a1;
    v27 = v43;
    v28 = v44;
    v25[4] = v44;
    v25[5] = v26;
    v25[6] = v23;
    v25[7] = v27;
    v29 = v46;
    v25[8] = v45;
    v25[9] = v29;
    v25[10] = a3;
    v25[11] = a2;
    v30 = a3;
    v31 = a2;
    v32 = v28;
    v33 = v26;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_100069404(0, 0, v11, &unk_1000ABED8, v25);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_100022154(v11, &qword_1000C8240, &qword_1000AB688);
    return;
  }

  if (qword_1000C7570 != -1)
  {
    goto LABEL_35;
  }

LABEL_14:
  v34 = sub_1000A3538();
  sub_100001E38(v34, qword_1000C96B8);
  v35 = sub_1000A3518();
  v36 = sub_1000A3CC8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Failed to create client proxy", v37, 2u);
  }

  if (a3)
  {
    v38 = sub_1000A39B8();
    if (!(v38 >> 62))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v38 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_18:
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_19;
      }

LABEL_29:

      swift_unknownObjectRelease();

      return;
    }
  }

  v39 = sub_1000A3EC8();
  if (!v39)
  {
    goto LABEL_29;
  }

LABEL_19:
  if (v39 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v39; ++j)
      {
        sub_1000A3EA8();
        sub_1000A35C8();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v42 = 32;
      do
      {

        sub_1000A35C8();

        v42 += 8;
        --v39;
      }

      while (v39);
    }

    swift_unknownObjectRelease();
  }
}

void sub_10003690C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v3 = sub_1000A3538();
  sub_100001E38(v3, qword_1000C96B8);
  v4 = sub_1000A3518();
  v5 = sub_1000A3CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Taking extended lifetime", v6, 2u);
  }
}

id sub_1000369EC(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  swift_errorRetain();
  v5 = sub_1000A3518();
  v6 = sub_1000A3CC8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to setup client connection with error %@", v7, 0xCu);
    sub_100022154(v8, &unk_1000C7740, &qword_1000AB610);
  }

  return [a2 invalidate];
}

uint64_t sub_100036B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[55] = v17;
  v8[56] = v18;
  v8[53] = a7;
  v8[54] = a8;
  v8[51] = a5;
  v8[52] = a6;
  v9 = sub_10000275C(&qword_1000C82B0, &qword_1000ABEE0);
  v8[57] = v9;
  v8[58] = *(v9 - 8);
  v8[59] = swift_task_alloc();
  sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  v8[60] = swift_task_alloc();
  v10 = sub_10000275C(&qword_1000C82B8, &qword_1000ABEE8);
  v8[61] = v10;
  v8[62] = *(v10 - 8);
  v8[63] = swift_task_alloc();
  v11 = sub_10000275C(&unk_1000C82C0, &qword_1000ABEF0);
  v8[64] = v11;
  v8[65] = *(v11 - 8);
  v8[66] = swift_task_alloc();
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v8[67] = swift_task_alloc();
  v12 = sub_1000A2508();
  v8[68] = v12;
  v13 = *(v12 - 8);
  v8[69] = v13;
  v8[70] = *(v13 + 64);
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v14 = sub_1000A2CF8();
  v8[73] = v14;
  v8[74] = *(v14 - 8);
  v8[75] = swift_task_alloc();

  return _swift_task_switch(sub_100036E40, 0, 0);
}

uint64_t sub_100036E40()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 608) = qword_1000C95F0;

  return _swift_task_switch(sub_100036EE8, v1, 0);
}

uint64_t sub_100036EE8()
{
  *(v0 + 760) = *(*(v0 + 608) + 144);

  v1 = swift_task_alloc();
  *(v0 + 616) = v1;
  *v1 = v0;
  v1[1] = sub_100036F9C;

  return sub_1000472A8(0);
}

uint64_t sub_100036F9C(char a1)
{
  *(*v1 + 761) = a1;

  return _swift_task_switch(sub_10003709C, 0, 0);
}

uint64_t sub_10003709C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  (*(v2 + 104))(v1, enum case for EnergyKitFeatures.eventHistory2025(_:), v3);
  *(v0 + 762) = sub_1000A2CE8() & 1;
  (*(v2 + 8))(v1, v3);
  *(v0 + 624) = sub_1000A38A8();
  *(v0 + 632) = v4;
  if (v4)
  {
    v5 = qword_1000C95F0;
    *(v0 + 640) = qword_1000C95F0;

    return _swift_task_switch(sub_1000372A4, v5, 0);
  }

  else
  {
    v6 = *(v0 + 408);
    v7 = *(v0 + 416);
    isa = sub_1000A3B48().super.isa;
    *(v0 + 752) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000385B0;
    v9 = swift_continuation_init();
    *(v0 + 264) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100033DAC;
    *(v0 + 232) = &unk_1000BF398;
    *(v0 + 240) = v9;
    [v7 receiveInsightPayloads:isa request:v6 finished:1 completionHandler:v0 + 208];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1000372A4()
{
  v1 = v0[80];
  v0[81] = *(v1 + 112);
  v0[82] = *(v1 + 120);

  return _swift_task_switch(sub_100037324, 0, 0);
}

uint64_t sub_100037324()
{
  if (v0[82])
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    v0[83] = qword_1000C96F8;

    sub_1000A3898();
    v1 = swift_task_alloc();
    v0[84] = v1;
    *v1 = v0;
    v1[1] = sub_100037544;
    v2 = v0[71];
    v3 = v0[67];

    return sub_10006CFD4(v3, v2);
  }

  else
  {

    v5 = v0[51];
    v6 = v0[52];
    isa = sub_1000A3B48().super.isa;
    v0[94] = isa;
    v0[2] = v0;
    v0[3] = sub_1000385B0;
    v8 = swift_continuation_init();
    v0[33] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_100033DAC;
    v0[29] = &unk_1000BF398;
    v0[30] = v8;
    [v6 receiveInsightPayloads:isa request:v5 finished:1 completionHandler:v0 + 26];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100037544()
{
  v1 = *v0;
  v2 = *(*v0 + 568);
  v3 = *(*v0 + 552);
  v4 = *(*v0 + 544);

  v5 = *(v3 + 8);
  *(v1 + 680) = v5;
  *(v1 + 688) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return _swift_task_switch(sub_1000376D0, 0, 0);
}

uint64_t sub_1000376D0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
LABEL_10:
    v9 = *(v0 + 408);
    v10 = *(v0 + 416);
    isa = sub_1000A3B48().super.isa;
    *(v0 + 752) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000385B0;
    v12 = swift_continuation_init();
    *(v0 + 264) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100033DAC;
    *(v0 + 232) = &unk_1000BF398;
    *(v0 + 240) = v12;
    [v10 receiveInsightPayloads:isa request:v9 finished:1 completionHandler:v0 + 208];

    return _swift_continuation_await(v0 + 16);
  }

  v4 = *(v0 + 761);
  v5 = *(v0 + 760);
  v6 = *(v0 + 576);
  v7 = *(v1 + 32);
  *(v0 + 696) = v7;
  *(v0 + 704) = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v6, v3, v2);
  if ((v5 & 1) == 0 && !v4 || *(v0 + 762) != 1)
  {
    (*(v0 + 680))(*(v0 + 576), *(v0 + 544));

    goto LABEL_10;
  }

  type metadata accessor for DeviceInsights();
  v8 = swift_allocObject();
  *(v0 + 712) = v8;
  swift_defaultActor_initialize();

  return _swift_task_switch(sub_100037948, v8, 0);
}

uint64_t sub_100037948()
{
  type metadata accessor for CoreDataInsightStream(0);
  v1 = swift_allocObject();
  *(v0 + 720) = v1;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  v3 = sub_10000275C(&unk_1000C7CA0, qword_1000ABAF0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);

  return _swift_task_switch(sub_100037A1C, v1, 0);
}

uint64_t sub_100037A1C()
{
  v1 = v0[89];
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[61];
  sub_10000275C(&qword_1000C82E0, &qword_1000ABEF8);
  (*(v3 + 104))(v2, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  sub_1000A3C38();

  return _swift_task_switch(sub_100037B10, v1, 0);
}

uint64_t sub_100037B10()
{
  v21 = v0[82];
  v19 = v0[81];
  v22 = v0[79];
  v23 = v0[90];
  v20 = v0[78];
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[60];
  v17 = v0[51];
  v18 = v0[87];
  v7 = sub_1000A3BE8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v4 + 16))(v2, v1, v5);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v18(v12 + v8, v2, v5);
  v13 = (v12 + v9);
  *v13 = v19;
  v13[1] = v21;
  v14 = (v12 + v10);
  *v14 = v20;
  v14[1] = v22;
  *(v12 + v11) = v17;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v15 = v17;

  sub_100033DE0(0, 0, v6, &unk_1000ABF00, v12);

  sub_100022154(v6, &qword_1000C8240, &qword_1000AB688);

  return _swift_task_switch(sub_100037D24, 0, 0);
}

uint64_t sub_100037D24()
{
  sub_1000A3C18();
  v1 = swift_task_alloc();
  *(v0 + 728) = v1;
  *v1 = v0;
  v1[1] = sub_100037DDC;
  v2 = *(v0 + 456);

  return AsyncStream.Iterator.next(isolation:)(v0 + 400, 0, 0, v2);
}

uint64_t sub_100037DDC()
{

  return _swift_task_switch(sub_100037ED8, 0, 0);
}

uint64_t sub_100037ED8()
{
  if (v0[50])
  {
    v1 = v0 + 18;
    v2 = v0[51];
    v3 = v0[52];
    isa = sub_1000A3B48().super.isa;
    v0[92] = isa;

    v0[18] = v0;
    v0[19] = sub_100038124;
    v5 = swift_continuation_init();
    v0[49] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_100033DAC;
    v0[45] = &unk_1000BF410;
    v0[46] = v5;
    [v3 receiveInsightPayloads:isa request:v2 finished:0 completionHandler:v0 + 42];
  }

  else
  {
    v1 = v0 + 10;
    v6 = v0[51];
    v7 = v0[52];
    (*(v0[58] + 8))(v0[59], v0[57]);
    v8 = sub_1000A3B48().super.isa;
    v0[93] = v8;
    v0[10] = v0;
    v0[11] = sub_1000382B4;
    v9 = swift_continuation_init();
    v0[41] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[34] = _NSConcreteStackBlock;
    v0[35] = 1107296256;
    v0[36] = sub_100033DAC;
    v0[37] = &unk_1000BF3E8;
    v0[38] = v9;
    [v7 receiveInsightPayloads:v8 request:v6 finished:1 completionHandler:v0 + 34];
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100038124()
{

  return _swift_task_switch(sub_100038204, 0, 0);
}

uint64_t sub_100038204()
{
  v1 = swift_task_alloc();
  *(v0 + 728) = v1;
  *v1 = v0;
  v1[1] = sub_100037DDC;
  v2 = *(v0 + 456);

  return AsyncStream.Iterator.next(isolation:)(v0 + 400, 0, 0, v2);
}

uint64_t sub_1000382B4()
{

  return _swift_task_switch(sub_100038394, 0, 0);
}

unint64_t sub_100038394()
{
  v1 = v0[93];
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[53];
  (*(v0[65] + 8))(v0[66], v0[64]);

  v4();
  result = [v2 invalidate];
  if (v3)
  {
    result = sub_1000A39B8();
    v6 = result;
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

  result = sub_1000A3EC8();
  v7 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v7 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v7; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35C8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v13 = 32;
    do
    {

      sub_1000A35C8();

      v13 += 8;
      --v7;
    }

    while (v7);
  }

LABEL_11:

  v9 = v0[85];
  v10 = v0[72];
  v11 = v0[68];

  v9(v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000385B0()
{

  return _swift_task_switch(sub_100038690, 0, 0);
}

unint64_t sub_100038690()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 424);

  result = v2();
  if (v1)
  {
    result = sub_1000A39B8();
    v4 = result;
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

  result = sub_1000A3EC8();
  v5 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v5; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35C8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = 32;
    do
    {

      sub_1000A35C8();

      v8 += 8;
      --v5;
    }

    while (v5);
  }

LABEL_11:

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100038934()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003897C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000389D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000389E8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100038A58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014898;

  return sub_100036B58(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100038B60()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100038C80(uint64_t a1)
{
  v3 = *(sub_1000A2508() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 24);
  v15 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100014898;

  return sub_100015634(a1, v15, v7, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_100038E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038E7C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100038EEC(uint64_t a1)
{
  v11 = v1[3];
  v12 = v1[2];
  v4 = v1[5];
  v10 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000153A8;

  return sub_1000346C0(a1, v12, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_100038FF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 58, 7);
}

uint64_t sub_100039040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000153A8;

  return sub_100060664(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10003916C()
{
  v1 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar;
  v2 = sub_1000A2578();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity;
  v4 = sub_1000A38F8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options;
  v6 = sub_1000A3938();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000392D0()
{
  sub_10003916C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AMIQueryEngine(uint64_t a1)
{
  result = qword_1000C8310;
  if (!qword_1000C8310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100039350(uint64_t a1)
{
  result = sub_1000A2578();
  if (v2 <= 0x3F)
  {
    result = sub_1000A38F8();
    if (v3 <= 0x3F)
    {
      result = sub_1000A3938();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1000394B4(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v155 = a5;
  v137 = a4;
  v190 = a3;
  v179 = a1;
  v143 = sub_1000A3238();
  v198 = *(v143 - 8);
  __chkstk_darwin(*(v198 + 8));
  v142 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v141 = &v132 - v7;
  v140 = sub_1000A3128();
  v8 = *(v140 - 8);
  __chkstk_darwin(*(v8 + 64));
  v139 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v138 = &v132 - v10;
  v160 = sub_1000A3938();
  v11 = *(v160 - 8);
  __chkstk_darwin(*(v11 + 64));
  v159 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v158 = &v132 - v13;
  v185 = sub_1000A32F8();
  v171 = *(v185 - 8);
  __chkstk_darwin(*(v171 + 64));
  v146 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v167 = &v132 - v15;
  __chkstk_darwin(v16);
  v157 = &v132 - v17;
  __chkstk_darwin(v18);
  v170 = &v132 - v19;
  __chkstk_darwin(v20);
  v147 = &v132 - v21;
  v22 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  __chkstk_darwin(*(*(v22 - 8) + 64));
  v156 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v163 = &v132 - v24;
  v193 = sub_1000A22A8();
  v25 = *(v193 - 8);
  __chkstk_darwin(*(v25 + 64));
  v168 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v189 = &v132 - v27;
  v28 = sub_1000A2498();
  v29 = *(v28 - 8);
  __chkstk_darwin(*(v29 + 64));
  v154 = (&v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v161 = &v132 - v31;
  __chkstk_darwin(v32);
  v169 = &v132 - v33;
  __chkstk_darwin(v34);
  v176 = &v132 - v35;
  __chkstk_darwin(v36);
  v175 = &v132 - v37;
  __chkstk_darwin(v38);
  v188 = &v132 - v39;
  __chkstk_darwin(v40);
  v195 = &v132 - v41;
  v42 = sub_1000A3408();
  v43 = *(v42 - 8);
  __chkstk_darwin(*(v43 + 64));
  v194 = &v132 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000A33A8();
  result = __chkstk_darwin(*(*(v45 - 8) + 64));
  v49 = &v132 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = *(a2 + 16);
  if (!v199)
  {
    return result;
  }

  v152 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity;
  v151 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar;
  v197 = v25;
  v50 = v8;
  v51 = v47;
  v52 = a2 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
  v150 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options;
  swift_beginAccess();
  v53 = v52;
  v54 = *(v51 + 16);
  v51 += 16;
  v183 = v54;
  v55 = (v43 + 8);
  v191 = (v197 + 8);
  v187 = (v29 + 8);
  v181 = *(v51 + 56);
  v178 = (v171 + 16);
  v177 = v171 + 8;
  v153 = (v29 + 56);
  v162 = (v29 + 32);
  v164 = (v29 + 48);
  v145 = (v29 + 16);
  v149 = (v11 + 16);
  v148 = (v11 + 8);
  v136 = (v50 + 16);
  v135 = (v50 + 8);
  v134 = (v198 + 16);
  v133 = (v198 + 8);
  v144 = v171 + 32;
  v184 = v51;
  v180 = (v51 - 8);
  v186 = v42;
  v182 = v45;
  v192 = v49;
  v196 = v55;
  while (1)
  {
    v197 = v53;
    v183(v49);
    v198 = objc_autoreleasePoolPush();
    v56 = v194;
    sub_1000A3388();
    v57 = v195;
    sub_1000A33E8();
    v58 = *v55;
    (*v55)(v56, v42);
    v59 = v189;
    sub_1000A3868();
    v60 = v188;
    sub_1000A2288();
    v61 = *v191;
    (*v191)(v59, v193);
    sub_10003ECE8(&qword_1000C7F50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v62 = sub_1000A3A48();
    v63 = *v187;
    (*v187)(v60, v28);
    v64 = v57;
    v49 = v192;
    v63(v64, v28);
    if (v62)
    {
      goto LABEL_4;
    }

    v65 = v194;
    sub_1000A3368();
    v66 = v195;
    sub_1000A33E8();
    v58(v65, v186);
    v67 = v189;
    sub_1000A3868();
    v68 = v188;
    sub_1000A2248();
    v61(v67, v193);
    v69 = sub_1000A3A48();
    v70 = v68;
    v49 = v192;
    v63(v70, v28);
    v71 = v66;
    v42 = v186;
    v63(v71, v28);
    if (v69)
    {
      goto LABEL_4;
    }

    v166 = v61;
    type metadata accessor for InsightBucketBoundaries();
    v72 = v194;
    sub_1000A3388();
    v73 = v195;
    sub_1000A33E8();
    v58(v72, v42);
    sub_10004CC8C(v73, v172 + v152, v172 + v151, v168);
    v174 = v63;
    v63(v73, v28);
    sub_1000A2288();
    sub_1000A2248();
    sub_1000A2288();
    v74 = *v179;
    v75 = *(*v179 + 16);
    if (v75)
    {
      v76 = v171;
      v77 = v147;
      v78 = v185;
      (*(v171 + 16))(v147, v74 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v171 + 72) * (v75 - 1), v185);
      sub_1000A3258();
      (*(v76 + 8))(v77, v78);
      v79 = v163;
      sub_1000A33E8();
      v58(v72, v186);
      (*v153)(v79, 0, 1, v28);
      v80 = v161;
      (*v162)(v161, v79, v28);
    }

    else
    {
      v81 = v163;
      (*v153)(v163, 1, 1, v28);
      v80 = v161;
      sub_1000A23C8();
      if ((*v164)(v81, 1, v28) != 1)
      {
        sub_10003E184(v163);
      }
    }

    v82 = v169;
    v83 = sub_1000A3A48();
    v84 = v174;
    v174(v80, v28);
    result = (v84)(v82, v28);
    if ((v83 & 1) == 0)
    {
      sub_1000A32E8();
      v85 = *v145;
      v86 = v195;
      (*v145)(v195, v175, v28);
      sub_1000A33F8();
      sub_1000A3288();
      v85(v86, v176, v28);
      sub_1000A33F8();
      sub_1000A3268();
      sub_1000A2FB8();
      sub_1000A2FE8();
      v87 = *v149;
      v88 = v158;
      v89 = v160;
      (*v149)(v158, v172 + v150, v160);
      v90 = v159;
      sub_1000A3918();
      v173 = sub_10003ECE8(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
      LOBYTE(v86) = sub_1000A3DF8();
      v91 = *v148;
      (*v148)(v90, v89);
      v91(v88, v89);
      if (v86)
      {
        v92 = v138;
        sub_1000A3118();
        sub_1000A30A8();
        sub_1000A3018();
        sub_1000A3078();
        sub_1000A3048();
        sub_1000A30D8();
        sub_1000A3108();
        v93 = v140;
        (*v136)(v139, v92, v140);
        sub_1000A32B8();
        (*v135)(v92, v93);
      }

      v94 = v158;
      v95 = v160;
      v87(v158, v172 + v150, v160);
      v96 = v159;
      sub_1000A3908();
      v97 = sub_1000A3DF8();
      v91(v96, v95);
      v91(v94, v95);
      if (v97)
      {
        v98 = v141;
        sub_1000A3228();
        sub_1000A3188();
        sub_1000A31B8();
        sub_1000A3218();
        sub_1000A31E8();
        v99 = v143;
        (*v134)(v142, v98, v143);
        sub_1000A3158();
        (*v133)(v98, v99);
      }

      (*v178)(v157, v170, v185);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v174;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = sub_10009501C(0, v74[2] + 1, 1, v74);
      }

      v102 = v74[2];
      v101 = v74[3];
      if (v102 >= v101 >> 1)
      {
        v74 = sub_10009501C((v101 > 1), v102 + 1, 1, v74);
      }

      v103 = v171;
      v104 = v185;
      (*(v171 + 8))(v170, v185);
      v74[2] = v102 + 1;
      result = (*(v103 + 32))(v74 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v102, v157, v104);
      *v179 = v74;
    }

    v105 = v74[2];
    if (!v105)
    {
      break;
    }

    v106 = v171;
    v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v108 = *(v171 + 72);
    v165 = v105 - 1;
    v109 = v108 * (v105 - 1);
    v110 = v167;
    v111 = v185;
    v174 = *(v171 + 16);
    (v174)(v167, v74 + v107 + v109, v185);
    sub_1000A2FA8();
    v113 = v112;
    v173 = *(v106 + 8);
    v173(v110, v111);
    if (v113 >= 0.0)
    {
      v114 = v156;
      v49 = v192;
    }

    else
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v114 = v156;
      v49 = v192;
      if ((result & 1) == 0)
      {
        result = sub_1000322E0(v74);
        v74 = result;
      }

      if (v105 > v74[2])
      {
        goto LABEL_46;
      }

      sub_1000A2FB8();
    }

    sub_1000A3398();
    v116 = v115;
    sub_1000A2D08();
    v118 = v117;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000322E0(v74);
      v74 = result;
    }

    if (v105 > v74[2])
    {
      goto LABEL_44;
    }

    v119 = sub_1000A2F98();
    *v120 = v116 * v118 + *v120;
    result = v119(v200, 0);
    *v179 = v74;
    if (v105 > v74[2])
    {
      goto LABEL_45;
    }

    v121 = v74 + v107 + v109;
    v122 = v167;
    v123 = v185;
    (v174)(v167, v121, v185);
    v124 = sub_1000A2FC8();
    v173(v122, v123);
    if (v124)
    {
      sub_10003E1EC(v179, v49, v165);
    }

    sub_10003E114(v155, v114);
    v125 = (*v164)(v114, 1, v28);
    v42 = v186;
    if (v125 == 1)
    {
      v84(v176, v28);
      v84(v175, v28);
      v166(v168, v193);
      sub_10003E184(v114);
    }

    else
    {
      result = (*v162)(v154, v114, v28);
      if (v105 > *(*v179 + 16))
      {
        goto LABEL_47;
      }

      v126 = v146;
      v127 = v185;
      (v174)(v146, *v179 + v107 + v109, v185);
      v128 = sub_1000A3248();
      v173(v126, v127);
      if (v128)
      {
        v129 = v166;
        if (*(v137 + 2))
        {
          v130 = v154;
          sub_10003AB6C(v179, v49, v165, v137, v154);
          v131 = v130;
        }

        else
        {
          v131 = v154;
        }

        v84(v131, v28);
        v84(v176, v28);
        v84(v175, v28);
        v129(v168, v193);
      }

      else
      {
        v84(v154, v28);
        v84(v176, v28);
        v84(v175, v28);
        v166(v168, v193);
      }
    }

LABEL_4:
    objc_autoreleasePoolPop(v198);
    result = (*v180)(v49, v182);
    v55 = v196;
    v53 = v197 + v181;
    if (!--v199)
    {
      return result;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void sub_10003AB6C(uint64_t *a1, uint64_t a2, unint64_t a3, char *a4, NSObject *a5)
{
  v461 = a5;
  v435 = a4;
  v415 = a3;
  v418 = a1;
  v388 = sub_1000A2CF8();
  v457 = *(v388 - 8);
  __chkstk_darwin(*(v457 + 8));
  v387 = &v377 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v402 = sub_1000A3238();
  v409 = *(v402 - 8);
  __chkstk_darwin(*(v409 + 64));
  v401 = &v377 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = sub_1000A32F8();
  v412 = *(v400 - 8);
  __chkstk_darwin(*(v412 + 64));
  v399 = &v377 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = sub_1000A2718();
  v439 = *(v441 - 8);
  __chkstk_darwin(*(v439 + 64));
  v440 = &v377 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_1000A2648();
  v445 = *(v446 - 8);
  __chkstk_darwin(*(v445 + 64));
  v398 = &v377 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v397 = &v377 - v11;
  __chkstk_darwin(v12);
  v422 = &v377 - v13;
  __chkstk_darwin(v14);
  v444 = &v377 - v15;
  v454 = sub_1000A22A8();
  v456 = *(v454 - 8);
  __chkstk_darwin(*(v456 + 64));
  v396 = &v377 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v395 = &v377 - v17;
  __chkstk_darwin(v18);
  v408 = &v377 - v19;
  __chkstk_darwin(v20);
  v407 = &v377 - v21;
  __chkstk_darwin(v22);
  v452 = &v377 - v23;
  v459 = sub_1000A2498();
  v24 = *(v459 - 8);
  __chkstk_darwin(*(v24 + 64));
  v394 = &v377 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v391 = &v377 - v26;
  __chkstk_darwin(v27);
  v390 = &v377 - v28;
  __chkstk_darwin(v29);
  v389 = &v377 - v30;
  __chkstk_darwin(v31);
  v413 = &v377 - v32;
  __chkstk_darwin(v33);
  v414 = &v377 - v34;
  __chkstk_darwin(v35);
  v393 = &v377 - v36;
  __chkstk_darwin(v37);
  v404 = &v377 - v38;
  __chkstk_darwin(v39);
  v392 = &v377 - v40;
  __chkstk_darwin(v41);
  v406 = &v377 - v42;
  __chkstk_darwin(v43);
  v410 = &v377 - v44;
  __chkstk_darwin(v45);
  v405 = &v377 - v46;
  __chkstk_darwin(v47);
  v417 = &v377 - v48;
  __chkstk_darwin(v49);
  v416 = &v377 - v50;
  __chkstk_darwin(v51);
  v421 = &v377 - v52;
  __chkstk_darwin(v53);
  v420 = &v377 - v54;
  __chkstk_darwin(v55);
  v433 = &v377 - v56;
  __chkstk_darwin(v57);
  v432 = &v377 - v58;
  __chkstk_darwin(v59);
  v436 = &v377 - v60;
  __chkstk_darwin(v61);
  v458 = &v377 - v62;
  __chkstk_darwin(v63);
  v460 = (&v377 - v64);
  __chkstk_darwin(v65);
  v67 = &v377 - v66;
  v68 = sub_1000A3408();
  v69 = *(v68 - 8);
  __chkstk_darwin(*(v69 + 64));
  v431 = &v377 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v72 = &v377 - v71;
  __chkstk_darwin(v73);
  v75 = &v377 - v74;
  v76 = a2;
  sub_1000A3388();
  sub_1000A33E8();
  v79 = *(v69 + 8);
  v78 = v69 + 8;
  v77 = v79;
  v80 = v68;
  (v79)(v75, v68);
  LOBYTE(a2) = sub_1000A2438();
  v461 = v24;
  v83 = *(v24 + 8);
  v81 = (v24 + 8);
  v82 = v83;
  (v83)(v67, v459);
  if (a2)
  {
    return;
  }

  sub_1000A3368();
  sub_1000A33E8();
  v448 = v82;
  v84 = v80;
  v429 = v80;
  v77(v75, v80);
  sub_1000A3388();
  v85 = v460;
  sub_1000A33E8();
  v77(v72, v84);
  sub_1000A23D8();
  v87 = v86;
  v88 = v459;
  v89 = v448;
  v448(v85, v459);
  v451 = v81;
  v89(v67, v88);
  sub_1000A3398();
  v91 = v90;
  v434 = v76;
  sub_1000A3388();
  v92 = v458;
  sub_1000A33E8();
  v93 = v429;
  v77(v75, v429);
  v411 = *v418;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_178;
  }

LABEL_3:
  v450 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalIDX;
  v449 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalSubIDX;
  v447 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentThresholdIDX;
  swift_beginAccess();
  sub_1000A3368();
  sub_1000A33E8();
  v77(v75, v93);
  v94 = sub_1000A2438();
  v95 = v459;
  (v89)(v67);
  v97 = v92;
  if (v94)
  {
    v425 = v75;
    v455 = v67;
    v428 = v461 + 4;
    v453 = (v456 + 8);
    v443 = v445 + 16;
    v442 = (v445 + 8);
    v438 = v439 + 16;
    v437 = v439 + 8;
    v419 = v461 + 2;
    v380 = enum case for EnergyKitFeatures.strainedWindow(_:);
    v379 = (v457 + 104);
    v378 = (v457 + 8);
    v384 = v412 + 16;
    v383 = v412 + 8;
    v382 = (v409 + 8);
    v423 = v461 + 3;
    *&v96 = 136315906;
    v381 = v96;
    v67 = v78;
    v92 = v95;
    v426 = v78;
    v424 = v77;
    while (1)
    {
      v103 = v432;
      sub_1000A2408();
      v104 = v431;
      sub_1000A3368();
      v105 = v433;
      sub_1000A33E8();
      v77(v104, v93);
      v456 = sub_10003ECE8(&qword_1000C7F50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v106 = sub_1000A3A48();
      v107 = (v106 & 1) == 0;
      if (v106)
      {
        v108 = v103;
      }

      else
      {
        v108 = v105;
      }

      if (v107)
      {
        v109 = v103;
      }

      else
      {
        v109 = v105;
      }

      v89(v108, v92);
      isa = v428->isa;
      isa(v436, v109, v92);
      v92 = v435;
      v110 = v430;
      v93 = v450;
      v78 = *(v430 + v450);
      v457 = *(v435 + 2);
      if (v78 < v457)
      {
        v77 = v449;
        v75 = v447;
        while ((v78 & 0x8000000000000000) == 0)
        {
          sub_1000A26C8();
          v111 = v452;
          sub_1000A26B8();
          v67 = v89;
          v112 = v455;
          sub_1000A2248();
          (*v453)(v111, v454);
          v113 = v459;
          v114 = sub_1000A3A48();
          v115 = v112;
          v89 = v67;
          (v67)(v115, v113);
          v78 = *(v110 + v93);
          if (v114)
          {
            goto LABEL_22;
          }

          if (__OFADD__(v78, 1))
          {
            goto LABEL_166;
          }

          *(v110 + v93) = v78 + 1;
          *(v77 + v110) = 0;
          *&v75[v110] = 0;
          v78 = *(v110 + v93);
          if (v78 >= v457)
          {
            goto LABEL_22;
          }
        }

LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        v411 = sub_1000322E0(v411);
        goto LABEL_3;
      }

      v77 = v449;
LABEL_22:
      v75 = v457;
      if (v78 >= v457)
      {
        break;
      }

      v92 = v89;
      v116 = *(sub_1000A26C8() - 8);
      v67 = v458;
      if (v78 >= v75)
      {
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }

      v461 = &v435[(*(v116 + 80) + 32) & ~*(v116 + 80)];
      v460 = *(v116 + 72);
      v89 = *(v77 + v110);
      while (1)
      {
        v117 = *(sub_1000A26A8() + 16);

        if (v89 >= v117)
        {
          break;
        }

        if (*(v110 + v93) >= v75)
        {
          goto LABEL_167;
        }

        v118 = sub_1000A26A8();
        v119 = *(v77 + v110);
        if ((v119 & 0x8000000000000000) != 0)
        {
          goto LABEL_168;
        }

        if (v119 >= *(v118 + 16))
        {
          goto LABEL_169;
        }

        v120 = v445;
        v121 = v444;
        v122 = v446;
        (*(v445 + 16))(v444, v118 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v445 + 72) * v119, v446);

        v123 = v452;
        sub_1000A2628();
        v124 = *(v120 + 8);
        v67 = v458;
        v89 = v451;
        v124(v121, v122);
        v125 = v455;
        sub_1000A2248();
        v126 = v123;
        v77 = v449;
        v127 = v448;
        (*v453)(v126, v454);
        v78 = v459;
        v128 = sub_1000A3A48();
        v129 = v125;
        v93 = v450;
        v92 = v127;
        (v127)(v129, v78);
        v75 = v457;
        if (v128)
        {
          break;
        }

        v130 = *(v77 + v110);
        v89 = (v130 + 1);
        if (__OFADD__(v130, 1))
        {
          goto LABEL_170;
        }

        *(v77 + v110) = v89;
        v78 = *(v110 + v93);
        if (v78 >= v75)
        {
          goto LABEL_164;
        }
      }

      if (*(v110 + v93) >= v75)
      {
        goto LABEL_176;
      }

      v78 = *(v77 + v110);
      v141 = *(sub_1000A26A8() + 16);

      if (v78 >= v141)
      {
        v98 = v459;
        v135 = v436;
        v136 = v455;
        v89 = v92;
        goto LABEL_7;
      }

      v89 = v92;
      v92 = v454;
      if (*(v110 + v93) >= v75)
      {
        goto LABEL_171;
      }

      v78 = *(v110 + v447);
      while (1)
      {
        v142 = *(sub_1000A2698() + 16);

        if (v78 >= v142)
        {
          break;
        }

        if (*(v110 + v93) >= v75)
        {
          goto LABEL_172;
        }

        v143 = sub_1000A2698();
        v144 = *(v110 + v447);
        if ((v144 & 0x8000000000000000) != 0)
        {
          goto LABEL_173;
        }

        if (v144 >= *(v143 + 16))
        {
          goto LABEL_174;
        }

        v145 = v439;
        v146 = v440;
        v147 = v441;
        (*(v439 + 16))(v440, v143 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v439 + 72) * v144, v441);
        v148 = v459;
        v149 = v448;
        v67 = v458;

        v150 = v452;
        sub_1000A26E8();
        v92 = v454;
        (*(v145 + 8))(v146, v147);
        v78 = v455;
        sub_1000A2248();
        v151 = v150;
        v93 = v450;
        (*v453)(v151, v92);
        LOBYTE(v146) = sub_1000A3A48();
        v152 = v148;
        v77 = v449;
        v149(v78, v152);
        v89 = v149;
        v75 = v457;
        if (v146)
        {
          break;
        }

        v153 = *(v110 + v447);
        v78 = v153 + 1;
        if (__OFADD__(v153, 1))
        {
          goto LABEL_175;
        }

        *(v110 + v447) = v78;
        if (*(v110 + v93) >= v75)
        {
          goto LABEL_171;
        }
      }

      if (*(v110 + v93) >= v75)
      {
        goto LABEL_177;
      }

      v154 = *(v110 + v447);
      v155 = *(sub_1000A2698() + 16);

      if (v154 >= v155)
      {
        v135 = v436;
        if (qword_1000C7570 != -1)
        {
          swift_once();
        }

        v183 = sub_1000A3538();
        sub_100001E38(v183, qword_1000C96B8);
        v132 = sub_1000A3518();
        v184 = sub_1000A3CC8();
        v185 = os_log_type_enabled(v132, v184);
        v136 = v455;
        if (v185)
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          v138 = v184;
          v139 = v132;
          v140 = "[AMIQueryEngine] Failed to find threshold";
LABEL_5:
          _os_log_impl(&_mh_execute_header, v139, v138, v140, v137, 2u);
        }

        goto LABEL_6;
      }

      if (*(v110 + v93) >= v75)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

      v156 = sub_1000A26A8();
      v157 = *(v77 + v110);
      if ((v157 & 0x8000000000000000) != 0)
      {
        goto LABEL_180;
      }

      if (v157 >= *(v156 + 16))
      {
        goto LABEL_181;
      }

      v158 = v156 + ((*(v445 + 80) + 32) & ~*(v445 + 80)) + *(v445 + 72) * v157;
      v385 = *(v445 + 16);
      v385(v422, v158, v446);

      v457 = v419->isa;
      v159 = v459;
      (v457)(v420, v67, v459);
      v160 = v407;
      sub_1000A2628();
      sub_1000A2288();
      v403 = *v453;
      v403(v160, v92);
      v161 = v408;
      sub_1000A2628();
      sub_1000A2248();
      v403(v161, v92);
      v162 = v421;
      v163 = v420;
      if (sub_1000A3A58())
      {
        v164 = v162;
      }

      else
      {
        v164 = v163;
      }

      (v457)(v417, v164, v159);
      v165 = v416;
      v166 = v436;
      if (sub_1000A3A48())
      {
        v167 = v165;
      }

      else
      {
        v167 = v166;
      }

      v168 = v165;
      v169 = v405;
      (v457)(v405, v167, v159);
      v170 = v417;
      LODWORD(v386) = sub_1000A2438();
      v89(v169, v159);
      v89(v170, v159);
      v89(v168, v159);
      v89(v421, v159);
      v89(v420, v159);
      if (v386)
      {
        v171 = v459;
        (v457)(v406, v458, v459);
        v172 = v395;
        sub_1000A2628();
        v173 = v392;
        sub_1000A2288();
        v403(v172, v92);
        v174 = v406;
        v175 = sub_1000A3A58();
        v176 = (v175 & 1) == 0;
        if (v175)
        {
          v177 = v174;
        }

        else
        {
          v177 = v173;
        }

        if (v176)
        {
          v178 = v174;
        }

        else
        {
          v178 = v173;
        }

        v89(v177, v171);
        isa(v410, v178, v171);
        v179 = v396;
        sub_1000A2628();
        v180 = v393;
        sub_1000A2248();
        v181 = v92;
        v92 = v403;
        v403(v179, v181);
        v182 = v436;
        if (sub_1000A3A48())
        {
          isa(v404, v180, v459);
        }

        else
        {
          v226 = v459;
          v89(v180, v459);
          (v457)(v404, v182, v226);
        }

        sub_1000A23D8();
        v228 = v227;
        sub_1000A3398();
        v230 = v229;
        sub_1000A2D08();
        if (*(v110 + v93) >= v75)
        {
          goto LABEL_182;
        }

        v232 = v231;
        v233 = v92;
        v234 = sub_1000A2698();
        v235 = *(v110 + v447);
        if ((v235 & 0x8000000000000000) != 0)
        {
          goto LABEL_183;
        }

        if (v235 >= *(v234 + 16))
        {
          goto LABEL_184;
        }

        v236 = v439;
        v386 = (*(v236 + 80) + 32) & ~*(v236 + 80);
        v385 = *(v439 + 72);
        v237 = v440;
        v238 = v441;
        isa = *(v439 + 16);
        isa(v440, (v234 + v386 + v385 * v235), v441);

        v239 = v452;
        sub_1000A26E8();
        v89 = *(v236 + 8);
        v89(v237, v238);
        sub_1000A2288();
        v240 = v454;
        (v92)(v239, v454);
        if (*(v110 + v450) >= v75)
        {
          goto LABEL_185;
        }

        v241 = sub_1000A2698();
        v242 = *(v110 + v447);
        v92 = v391;
        if ((v242 & 0x8000000000000000) != 0)
        {
          goto LABEL_186;
        }

        if (v242 >= *(v241 + 16))
        {
          goto LABEL_187;
        }

        v243 = v230 * (v228 / v87);
        v244 = v243 * v232;
        v245 = v440;
        v246 = v441;
        isa(v440, (v241 + v386 + v242 * v385), v441);

        v247 = v452;
        sub_1000A26E8();
        v89(v245, v246);
        sub_1000A2248();
        (v233)(v247, v240);
        v248 = sub_1000A3A48();
        v249 = v436;
        if (v248 & 1) != 0 || (sub_1000A3A48())
        {
          if (qword_1000C7570 != -1)
          {
            swift_once();
          }

          v250 = sub_1000A3538();
          sub_100001E38(v250, qword_1000C96B8);
          v251 = v389;
          v89 = v459;
          v252 = v457;
          (v457)(v389, v414, v459);
          v253 = v390;
          v252(v390, v413, v89);
          v254 = v92;
          v252(v92, v249, v89);
          v255 = sub_1000A3518();
          v256 = sub_1000A3CC8();
          if (os_log_type_enabled(v255, v256))
          {
            v257 = swift_slowAlloc();
            v461 = swift_slowAlloc();
            v463 = v461;
            *v257 = v381;
            v92 = sub_10003ECE8(&qword_1000C8468, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            v460 = v255;
            v258 = sub_1000A3F28();
            LODWORD(v457) = v256;
            v260 = v259;
            v261 = v448;
            v448(v251, v89);
            v262 = sub_1000954AC(v258, v260, &v463);

            *(v257 + 4) = v262;
            *(v257 + 12) = 2080;
            v263 = sub_1000A3F28();
            v265 = v264;
            (v261)(v253, v89);
            v266 = sub_1000954AC(v263, v265, &v463);

            *(v257 + 14) = v266;
            *(v257 + 22) = 2080;
            v267 = sub_1000A3F28();
            v269 = sub_1000954AC(v267, v268, &v463);

            *(v257 + 24) = v269;
            *(v257 + 32) = 2080;
            v270 = sub_1000A3F28();
            v272 = v271;
            (v261)(v254, v89);
            v273 = sub_1000954AC(v270, v272, &v463);

            *(v257 + 34) = v273;
            v274 = v460;
            _os_log_impl(&_mh_execute_header, v460, v457, "[AMIQueryEngine] Stride out of threshold bounds threshold: %s-%s stride:%s-%s", v257, 0x2Au);
            swift_arrayDestroy();
          }

          else
          {

            v261 = v448;
            v448(v92, v89);
            (v261)(v253, v89);
            (v261)(v251, v89);
          }

          v278 = v415;
          if ((v415 & 0x8000000000000000) != 0)
          {
            goto LABEL_192;
          }

          if (*(v411 + 2) <= v415)
          {
            goto LABEL_193;
          }

          v279 = v261;
          v280 = v412;
          v281 = v399;
          v282 = v400;
          (*(v412 + 16))(v399, &v411[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v415], v400);
          v283 = v401;
          sub_1000A3148();
          v284 = v411;
          (*(v280 + 8))(v281, v282);
          sub_1000A31D8();
          v286 = v285;
          (*v382)(v283, v402);
          v67 = v458;
          v135 = v436;
          v89 = v279;
          if (v286 < 0.0)
          {
            if (*(v284 + 2) <= v278)
            {
              goto LABEL_197;
            }

            v287 = sub_1000A3138();
            sub_1000A31E8();
            v287(&v463, 0);
            v278 = v415;
          }

          if (*(v284 + 2) <= v278)
          {
            goto LABEL_194;
          }

          v288 = sub_1000A3138();
          v289 = sub_1000A31C8();
          goto LABEL_100;
        }

        v291 = v387;
        v292 = v388;
        (*v379)(v387, v380, v388);
        v293 = sub_1000A2CE8();
        (*v378)(v291, v292);
        sub_1000A2618();
        v295 = v294;
        v296 = *(v110 + v450);
        if (v293)
        {
          if (v296 >= v75)
          {
            goto LABEL_199;
          }

          v297 = sub_1000A2698();
          v298 = *(v110 + v447);
          if ((v298 & 0x8000000000000000) != 0)
          {
            goto LABEL_200;
          }

          if (v298 >= *(v297 + 16))
          {
            goto LABEL_203;
          }

          v299 = v440;
          v300 = v441;
          isa(v440, (v297 + v386 + v298 * v385), v441);

          sub_1000A2708();
          v302 = v301;
          v89(v299, v300);
          if (v295 > v302)
          {
            sub_1000A2618();
            if (*(v110 + v450) >= v75)
            {
              goto LABEL_207;
            }

            v304 = v303;
            v305 = sub_1000A2698();
            v306 = *(v110 + v447);
            if ((v306 & 0x8000000000000000) != 0)
            {
              goto LABEL_209;
            }

            if (v306 >= *(v305 + 16))
            {
              goto LABEL_212;
            }

            v307 = v440;
            v308 = v441;
            isa(v440, (v305 + v386 + v306 * v385), v441);

            sub_1000A26D8();
            v310 = v309;
            v89(v307, v308);
            if (v304 > v310)
            {
              v311 = v415;
              v312 = v411;
              if ((v415 & 0x8000000000000000) != 0)
              {
                goto LABEL_219;
              }

              if (*(v411 + 2) <= v415)
              {
                goto LABEL_221;
              }

              v313 = v412;
              v314 = v399;
              v315 = v400;
              (*(v412 + 16))(v399, &v411[((*(v313 + 80) + 32) & ~*(v313 + 80)) + *(v313 + 72) * v415], v400);
              v316 = v401;
              sub_1000A3148();
              (*(v313 + 8))(v314, v315);
              sub_1000A3178();
              v318 = v317;
              (*v382)(v316, v402);
              v67 = v458;
              v135 = v436;
              v89 = v448;
              if (v318 < 0.0)
              {
                if (*(v312 + 2) <= v311)
                {
                  goto LABEL_225;
                }

                v319 = sub_1000A3138();
                sub_1000A3188();
                v319(&v463, 0);
                v311 = v415;
                v312 = v411;
              }

              if (*(v312 + 2) <= v311)
              {
                goto LABEL_223;
              }

              v288 = sub_1000A3138();
              v289 = sub_1000A3168();
              goto LABEL_100;
            }

            v356 = v415;
            v357 = v411;
            if ((v415 & 0x8000000000000000) != 0)
            {
              goto LABEL_220;
            }

            if (*(v411 + 2) <= v415)
            {
              goto LABEL_222;
            }

            v358 = v412;
            v359 = v399;
            v360 = v400;
            (*(v412 + 16))(v399, &v411[((*(v358 + 80) + 32) & ~*(v358 + 80)) + *(v358 + 72) * v415], v400);
            v361 = v401;
            sub_1000A3148();
            (*(v358 + 8))(v359, v360);
            sub_1000A3208();
            v363 = v362;
            (*v382)(v361, v402);
            v67 = v458;
            v135 = v436;
            v89 = v448;
            if (v363 < 0.0)
            {
              if (*(v357 + 2) <= v356)
              {
                goto LABEL_226;
              }

              v364 = sub_1000A3138();
              sub_1000A3218();
              v364(&v463, 0);
              v356 = v415;
              v357 = v411;
            }

            if (*(v357 + 2) <= v356)
            {
              goto LABEL_224;
            }

LABEL_150:
            v288 = sub_1000A3138();
            v289 = sub_1000A31F8();
            goto LABEL_100;
          }

          v335 = v415;
          if ((v415 & 0x8000000000000000) != 0)
          {
            goto LABEL_205;
          }

          v336 = v411;
          if (*(v411 + 2) <= v415)
          {
            goto LABEL_210;
          }

          v337 = v412;
          v338 = v399;
          v339 = v400;
          (*(v412 + 16))(v399);
          v340 = v401;
          sub_1000A3148();
          (*(v337 + 8))(v338, v339);
          sub_1000A31A8();
          v342 = v341;
          (*v382)(v340, v402);
          v67 = v458;
          v135 = v436;
          v89 = v448;
          if (v342 < 0.0)
          {
            if (*(v336 + 2) <= v335)
            {
              goto LABEL_217;
            }

            v343 = sub_1000A3138();
            sub_1000A31B8();
            v343(&v463, 0);
            v335 = v415;
            v336 = v411;
          }

          if (*(v336 + 2) <= v335)
          {
            goto LABEL_214;
          }

          v344 = sub_1000A3138();
          v345 = sub_1000A3198();
          *v346 = v244 + *v346;
          v345(v462, 0);
          v344(&v463, 0);
        }

        else
        {
          if (v296 >= v75)
          {
            goto LABEL_198;
          }

          v320 = sub_1000A2698();
          v321 = *(v110 + v447);
          if ((v321 & 0x8000000000000000) != 0)
          {
            goto LABEL_201;
          }

          if (v321 >= *(v320 + 16))
          {
            goto LABEL_202;
          }

          v322 = v440;
          v323 = v441;
          isa(v440, (v320 + v386 + v321 * v385), v441);

          sub_1000A2708();
          v325 = v324;
          v89(v322, v323);
          if (v295 > v325)
          {
            v326 = v415;
            v327 = v411;
            if ((v415 & 0x8000000000000000) != 0)
            {
              goto LABEL_206;
            }

            if (*(v411 + 2) <= v415)
            {
              goto LABEL_211;
            }

            v328 = v412;
            v329 = v399;
            v330 = v400;
            (*(v412 + 16))(v399, &v411[((*(v328 + 80) + 32) & ~*(v328 + 80)) + *(v328 + 72) * v415], v400);
            v331 = v401;
            sub_1000A3148();
            (*(v328 + 8))(v329, v330);
            sub_1000A3208();
            v333 = v332;
            (*v382)(v331, v402);
            v67 = v458;
            v135 = v436;
            v89 = v448;
            if (v333 < 0.0)
            {
              if (*(v327 + 2) <= v326)
              {
                goto LABEL_218;
              }

              v334 = sub_1000A3138();
              sub_1000A3218();
              v334(&v463, 0);
              v326 = v415;
              v327 = v411;
            }

            if (*(v327 + 2) <= v326)
            {
              goto LABEL_215;
            }

            goto LABEL_150;
          }

          v347 = v415;
          v348 = v411;
          if ((v415 & 0x8000000000000000) != 0)
          {
            goto LABEL_204;
          }

          if (*(v411 + 2) <= v415)
          {
            goto LABEL_208;
          }

          v349 = v412;
          v350 = v399;
          v351 = v400;
          (*(v412 + 16))(v399, &v411[((*(v349 + 80) + 32) & ~*(v349 + 80)) + *(v349 + 72) * v415], v400);
          v352 = v401;
          sub_1000A3148();
          (*(v349 + 8))(v350, v351);
          sub_1000A31A8();
          v354 = v353;
          (*v382)(v352, v402);
          v67 = v458;
          v135 = v436;
          v89 = v448;
          if (v354 < 0.0)
          {
            if (*(v348 + 2) <= v347)
            {
              goto LABEL_216;
            }

            v355 = sub_1000A3138();
            sub_1000A31B8();
            v355(&v463, 0);
            v347 = v415;
            v348 = v411;
          }

          if (*(v348 + 2) <= v347)
          {
            goto LABEL_213;
          }

          v288 = sub_1000A3138();
          v289 = sub_1000A3198();
LABEL_100:
          *v290 = v244 + *v290;
          v289(v462, 0);
          v288(&v463, 0);
        }

        v91 = v91 - v243;
        v98 = v459;
        v89(v413, v459);
        v89(v414, v98);
        v89(v404, v98);
        v89(v410, v98);
        (*v442)(v422, v446);
LABEL_102:
        v136 = v455;
        goto LABEL_7;
      }

      v186 = v457;
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v187 = sub_1000A3538();
      sub_100001E38(v187, qword_1000C96B8);
      v188 = v394;
      v135 = v436;
      v189 = v459;
      v186(v394, v436, v459);
      v190 = v397;
      v191 = v422;
      v192 = v446;
      v193 = v385;
      v385(v397, v422, v446);
      v194 = v398;
      v193(v398, v191, v192);
      v195 = sub_1000A3518();
      v196 = sub_1000A3CC8();
      v461 = v195;
      if (!os_log_type_enabled(v195, v196))
      {

        v275 = *v442;
        v276 = v446;
        (*v442)(v194, v446);
        v275(v190, v276);
        v89 = v448;
        v448(v188, v189);
        v277 = v276;
        v98 = v459;
        v275(v191, v277);
        v67 = v458;
        goto LABEL_102;
      }

      v197 = swift_slowAlloc();
      v460 = swift_slowAlloc();
      v463 = v460;
      *v197 = v381;
      v198 = sub_10003ECE8(&qword_1000C8468, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      LODWORD(v457) = v196;
      v199 = v198;
      v200 = sub_1000A3F28();
      v202 = sub_1000954AC(v200, v201, &v463);

      *(v197 + 4) = v202;
      *(v197 + 12) = 2080;
      v203 = v190;
      isa = v199;
      v204 = sub_1000A3F28();
      v206 = v205;
      v207 = v188;
      v208 = v455;
      v209 = v448;
      v448(v207, v459);
      v210 = v209;
      v211 = sub_1000954AC(v204, v206, &v463);

      *(v197 + 14) = v211;
      *(v197 + 22) = 2080;
      v212 = v452;
      sub_1000A2628();
      sub_1000A2288();
      v403(v212, v454);
      v213 = sub_1000A3F28();
      v215 = v214;
      v210(v208, v459);
      v216 = *v442;
      v217 = v446;
      (*v442)(v203, v446);
      v456 = v216;
      v218 = sub_1000954AC(v213, v215, &v463);

      *(v197 + 24) = v218;
      *(v197 + 32) = 2080;
      v219 = v398;
      sub_1000A2628();
      sub_1000A2248();
      v135 = v436;
      v403(v212, v454);
      v220 = sub_1000A3F28();
      v222 = v221;
      v223 = v448;
      v448(v208, v459);
      v216(v219, v217);
      v224 = sub_1000954AC(v220, v222, &v463);
      v136 = v208;
      v98 = v459;

      *(v197 + 34) = v224;
      v225 = v461;
      _os_log_impl(&_mh_execute_header, v461, v457, "[AMIQueryEngine] Not processing reading [%s-%s] due to historical guidance [%s-%s] not overlapping", v197, 0x2Au);
      swift_arrayDestroy();

      v67 = v458;

      v89 = v223;
      (v456)(v422, v446);
LABEL_7:
      (v423->isa)(v67, v135, v98);
      v89(v135, v98);
      v92 = v98;
      v99 = v425;
      sub_1000A3368();
      sub_1000A33E8();
      v100 = v99;
      v93 = v429;
      v101 = v67;
      v67 = v426;
      v77 = v424;
      (v424)(v100, v429);
      v102 = sub_1000A2438();
      v89(v136, v92);
      if ((v102 & 1) == 0)
      {
        goto LABEL_152;
      }
    }

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v131 = sub_1000A3538();
    sub_100001E38(v131, qword_1000C96B8);
    v132 = sub_1000A3518();
    v133 = sub_1000A3CC8();
    v134 = os_log_type_enabled(v132, v133);
    v135 = v436;
    v136 = v455;
    if (v134)
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      v138 = v133;
      v139 = v132;
      v140 = "[AMIQueryEngine] Failed to find overlapping historical guidance";
      goto LABEL_5;
    }

LABEL_6:

    v67 = v458;
    v98 = v459;
    goto LABEL_7;
  }

  v92 = v95;
  v101 = v97;
LABEL_152:
  v365 = v89;
  v110 = v418;
  v89 = v411;
  *v418 = v411;
  if (v91 <= 0.0)
  {
    v365(v101, v92);
  }

  else
  {
    if ((v415 & 0x8000000000000000) != 0)
    {
      goto LABEL_188;
    }

    if (*(v89 + 2) <= v415)
    {
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    v366 = v412;
    v367 = v399;
    v368 = v400;
    (*(v412 + 16))(v399, v89 + ((*(v366 + 80) + 32) & ~*(v366 + 80)) + *(v412 + 72) * v415, v400);
    v369 = v401;
    sub_1000A3148();
    (*(v366 + 8))(v367, v368);
    sub_1000A31D8();
    v371 = v370;
    (*(v409 + 8))(v369, v402);
    if (v371 >= 0.0)
    {
      goto LABEL_159;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_195;
    }

    while (*(v89 + 2) > v415)
    {
      v372 = sub_1000A3138();
      sub_1000A31E8();
      v372(&v463, 0);
      v110 = v418;
LABEL_159:
      sub_1000A2D08();
      v87 = v373;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_190:
        v89 = sub_1000322E0(v89);
      }

      if (*(v89 + 2) > v415)
      {
        v374 = sub_1000A3138();
        v375 = sub_1000A31C8();
        *v376 = v91 * v87 + *v376;
        v375(v462, 0);
        v374(&v463, 0);
        v448(v458, v92);
        *v110 = v89;
        return;
      }

      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      v89 = sub_1000322E0(v89);
    }

    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
  }
}

uint64_t sub_10003E114(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E184(uint64_t a1)
{
  v2 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003E1EC(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v8 = sub_1000A3128();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000A32F8();
  v13 = *(v12 - 8);
  __chkstk_darwin(*(v13 + 64));
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000A3378();
  v61 = a1;
  v17 = *a1;
  if (v16 <= 1)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        if ((a3 & 0x8000000000000000) == 0)
        {
          if (*(v17 + 2) > a3)
          {
            v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
            v21 = *(v13 + 16);
            v60 = *(v13 + 72) * a3;
            v21(v15, &v17[v59 + v60], v12);
            sub_1000A32A8();
            (*(v13 + 8))(v15, v12);
            sub_1000A3038();
            v23 = v22;
            (*(v9 + 8))(v11, v8);
            if (v23 >= 0.0)
            {
              goto LABEL_55;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_17;
          }

          goto LABEL_72;
        }

        goto LABEL_66;
      }

LABEL_37:
      if ((a3 & 0x8000000000000000) == 0)
      {
        if (*(v17 + 2) > a3)
        {
          v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
          v37 = *(v13 + 16);
          v60 = *(v13 + 72) * a3;
          v37(v15, &v17[v59 + v60], v12);
          sub_1000A32A8();
          (*(v13 + 8))(v15, v12);
          sub_1000A30F8();
          v39 = v38;
          (*(v9 + 8))(v11, v8);
          if (v39 >= 0.0)
          {
            goto LABEL_58;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            goto LABEL_96;
          }

          goto LABEL_41;
        }

LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      if (*(v17 + 2) > a3)
      {
        v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v33 = *(v13 + 16);
        v60 = *(v13 + 72) * a3;
        v33(v15, &v17[v59 + v60], v12);
        sub_1000A32A8();
        (*(v13 + 8))(v15, v12);
        sub_1000A30C8();
        v35 = v34;
        (*(v9 + 8))(v11, v8);
        if (v35 >= 0.0)
        {
          goto LABEL_49;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_35;
      }

      goto LABEL_70;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v16 == 2)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (*(v17 + 2) > a3)
      {
        v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v25 = *(v13 + 16);
        v60 = *(v13 + 72) * a3;
        v25(v15, &v17[v59 + v60], v12);
        sub_1000A32A8();
        (*(v13 + 8))(v15, v12);
        sub_1000A3068();
        v27 = v26;
        (*(v9 + 8))(v11, v8);
        if (v27 >= 0.0)
        {
          goto LABEL_43;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_23;
      }

      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_63;
  }

  if (v16 == 3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (*(v17 + 2) > a3)
      {
        v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v29 = *(v13 + 16);
        v60 = *(v13 + 72) * a3;
        v29(v15, &v17[v59 + v60], v12);
        sub_1000A32A8();
        (*(v13 + 8))(v15, v12);
        sub_1000A3008();
        v31 = v30;
        (*(v9 + 8))(v11, v8);
        if (v31 >= 0.0)
        {
          goto LABEL_46;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_88;
        }

        goto LABEL_29;
      }

      goto LABEL_69;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v16 != 4)
  {
    goto LABEL_37;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_65:
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

  v60 = a2;
  if (*(v17 + 2) <= a3)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  (*(v13 + 16))(v15, &v17[v59 + *(v13 + 72) * a3], v12);
  sub_1000A32A8();
  (*(v13 + 8))(v15, v12);
  sub_1000A3098();
  v19 = v18;
  (*(v9 + 8))(v11, v8);
  if (v19 >= 0.0)
  {
    goto LABEL_52;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_92;
  }

LABEL_9:
  if (*(v17 + 2) > a3)
  {
    v20 = sub_1000A3298();
    sub_1000A30A8();
    v20(v63, 0);
LABEL_52:
    sub_1000A3398();
    v3 = v52;
    sub_1000A2D08();
    v4 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_53;
  }

  __break(1u);
LABEL_94:
  v17 = sub_1000322E0(v17);
LABEL_17:
  if (*(v17 + 2) > a3)
  {
    v24 = sub_1000A3298();
    sub_1000A3048();
    v24(v63, 0);
LABEL_55:
    sub_1000A3398();
    v3 = v54;
    sub_1000A2D08();
    v4 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_56;
  }

  __break(1u);
LABEL_96:
  result = sub_1000322E0(v17);
  v17 = result;
LABEL_41:
  if (*(v17 + 2) > a3)
  {
    v41 = sub_1000A3298();
    sub_1000A3108();
    v41(v63, 0);
LABEL_58:
    sub_1000A3398();
    v3 = v56;
    sub_1000A2D08();
    v4 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_84;
    }

    while (1)
    {
      if (*(v17 + 2) > a3)
      {
        v44 = v3 * v4;
        v45 = sub_1000A3298();
        v46 = sub_1000A30E8();
        goto LABEL_61;
      }

      __break(1u);
LABEL_86:
      v17 = sub_1000322E0(v17);
LABEL_23:
      if (*(v17 + 2) > a3)
      {
        break;
      }

      __break(1u);
LABEL_88:
      v17 = sub_1000322E0(v17);
LABEL_29:
      if (*(v17 + 2) > a3)
      {
        v32 = sub_1000A3298();
        sub_1000A3018();
        v32(v63, 0);
LABEL_46:
        sub_1000A3398();
        v3 = v48;
        sub_1000A2D08();
        v4 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_47;
        }

        goto LABEL_76;
      }

      __break(1u);
LABEL_90:
      v17 = sub_1000322E0(v17);
LABEL_35:
      if (*(v17 + 2) <= a3)
      {
        __break(1u);
LABEL_92:
        v17 = sub_1000322E0(v17);
        goto LABEL_9;
      }

      v36 = sub_1000A3298();
      sub_1000A30D8();
      v36(v63, 0);
LABEL_49:
      sub_1000A3398();
      v3 = v50;
      sub_1000A2D08();
      v4 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_78;
      }

LABEL_50:
      if (*(v17 + 2) > a3)
      {
        v44 = v3 * v4;
        v45 = sub_1000A3298();
        v46 = sub_1000A30B8();
        goto LABEL_61;
      }

      __break(1u);
LABEL_80:
      v17 = sub_1000322E0(v17);
LABEL_53:
      if (*(v17 + 2) > a3)
      {
        v44 = v3 * v4;
        v45 = sub_1000A3298();
        v46 = sub_1000A3088();
        goto LABEL_61;
      }

      __break(1u);
LABEL_82:
      v17 = sub_1000322E0(v17);
LABEL_56:
      if (*(v17 + 2) > a3)
      {
        v44 = v3 * v4;
        v45 = sub_1000A3298();
        v46 = sub_1000A3028();
        goto LABEL_61;
      }

      __break(1u);
LABEL_84:
      v17 = sub_1000322E0(v17);
    }

    v28 = sub_1000A3298();
    sub_1000A3078();
    v28(v63, 0);
LABEL_43:
    sub_1000A3398();
    v3 = v42;
    sub_1000A2D08();
    v4 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_74:
      v17 = sub_1000322E0(v17);
    }

    if (*(v17 + 2) > a3)
    {
      v44 = v3 * v4;
      v45 = sub_1000A3298();
      v46 = sub_1000A3058();
LABEL_61:
      *v47 = v44 + *v47;
      v46(v62, 0);
      result = v45(v63, 0);
      *v61 = v17;
      return result;
    }

    __break(1u);
LABEL_76:
    v17 = sub_1000322E0(v17);
LABEL_47:
    if (*(v17 + 2) > a3)
    {
      v44 = v3 * v4;
      v45 = sub_1000A3298();
      v46 = sub_1000A2FF8();
      goto LABEL_61;
    }

    __break(1u);
LABEL_78:
    v17 = sub_1000322E0(v17);
    goto LABEL_50;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003ECE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003ED30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_10003EDE8;

  return sub_10003F7D0(a5, a6, a7);
}

uint64_t sub_10003EDE8(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10003EEE8, 0, 0);
}

uint64_t sub_10003EEE8()
{
  (*(v0 + 16))(*(v0 + 40), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003F244()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F27C()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10003F380(uint64_t a1)
{
  v3 = *(sub_1000A2508() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v1 + v5);
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014898;

  return sub_10003ED30(a1, v6, v7, v9, v10, v1 + v4, v8, v11);
}

void sub_10003F4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v3 = sub_1000A3538();
  sub_100001E38(v3, qword_1000C96B8);
  v4 = sub_1000A3518();
  v5 = sub_1000A3CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[LoadEventOperations] Taking extended lifetime", v6, 2u);
  }
}

uint64_t sub_10003F5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10003F5E0, 0, 0);
}

uint64_t sub_10003F5E0()
{
  if (qword_1000C7598 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_10003F6AC;
  v3 = v0[3];
  v2 = v0[4];

  return sub_1000834F0(v3, v2);
}

uint64_t sub_10003F6AC(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10003F7AC, 0, 0);
}

uint64_t sub_10003F7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10003F7F4, 0, 0);
}

uint64_t sub_10003F7F4()
{
  sub_1000A3AA8();
  v0[6] = os_transaction_create();

  sub_10003F4DC(v1, v2, v3);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  v0[7] = sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection established to EnergyKit API", v7, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v8 = qword_1000C95F0;
  v0[8] = qword_1000C95F0;

  return _swift_task_switch(sub_10003F9B0, v8, 0);
}