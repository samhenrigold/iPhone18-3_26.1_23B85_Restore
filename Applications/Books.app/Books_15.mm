double sub_10029DB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_1007A2744();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;

  sub_1003457A0(0, 0, v8, &unk_1008168B0, v10);

  return result;
}

uint64_t sub_10029DC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1001F1160(&qword_100AD9478, &qword_1008168B8);
  v6[5] = swift_task_alloc();
  v7 = sub_100798104();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10029DD50, 0, 0);
}

uint64_t sub_10029DD50(uint64_t a1, uint64_t a2)
{
  sub_100798004();
  v2[9] = sub_100797FF4();
  v3 = swift_task_alloc();
  v2[10] = v3;
  *v3 = v2;
  v3[1] = sub_10029DE00;
  v4 = v2[5];

  return EventReporter.userEmbeddingData()(v4);
}

uint64_t sub_10029DE00()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_10029E334;
  }

  else
  {

    v3 = sub_10029DF1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10029DF1C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007840(v3, &qword_100AD9478, &qword_1008168B8);
  }

  else
  {
    v4 = v0[8];
    (*(v2 + 32))(v4, v3, v1);
    sub_1001F1160(&qword_100AD5B18, &qword_100811358);
    v5 = sub_100797B54();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10080B690;
    (*(v6 + 104))(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
    sub_1002A42D0(&qword_100AD9490, &type metadata accessor for UserEmbeddingData, &protocol conformance descriptor for UserEmbeddingData);
    sub_1002A42D0(&qword_100AD9498, &type metadata accessor for UserEmbeddingData, &protocol conformance descriptor for UserEmbeddingData);
    sub_100798414();

    (*(v2 + 8))(v4, v1);
  }

  v11 = (v0[3] + *v0[3]);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_10029E208;

  return v11();
}

uint64_t sub_10029E208()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10029E334()
{
  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100B22F80);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = sub_1007967C4();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to attach userEmbeddingData: %@", v4, 0xCu);
    sub_100007840(v5, &unk_100AD9480, &qword_1008113B0);
  }

  else
  {
  }

  v9 = (*(v0 + 24) + **(v0 + 24));
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_10029E208;

  return v9();
}

void sub_10029E56C(uint64_t a1)
{
  v2 = v1;
  v190 = sub_1007981D4();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v196 = &v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1007980B4();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_100798194();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v185 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_100798074();
  v207 = *(v198 - 8);
  __chkstk_darwin(v198);
  v197 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v199 = &v179 - v9;
  __chkstk_darwin(v10);
  v204 = &v179 - v11;
  __chkstk_darwin(v12);
  v203 = &v179 - v13;
  __chkstk_darwin(v14);
  v206 = &v179 - v15;
  v16 = sub_10079EF54();
  v201 = *(v16 - 8);
  v202 = v16;
  __chkstk_darwin(v16);
  v200 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100798174();
  v19 = *(v18 - 8);
  v210 = v18;
  v211 = v19;
  __chkstk_darwin(v18);
  v209 = (&v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v205 = sub_1007981E4();
  v208 = *(v205 - 8);
  __chkstk_darwin(v205);
  v181 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v188 = &v179 - v23;
  __chkstk_darwin(v24);
  v182 = &v179 - v25;
  __chkstk_darwin(v26);
  v183 = &v179 - v27;
  __chkstk_darwin(v28);
  v191 = &v179 - v29;
  __chkstk_darwin(v30);
  v184 = &v179 - v31;
  __chkstk_darwin(v32);
  v192 = &v179 - v33;
  __chkstk_darwin(v34);
  v36 = &v179 - v35;
  v37 = sub_10079FFF4();
  __chkstk_darwin(v37);
  v39 = &v179 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1001F1160(&qword_100AD9470, &qword_100816878);
  __chkstk_darwin(v40 - 8);
  v42 = &v179 - v41;
  v43 = sub_100797D84();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v179 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  sub_1002A4318(a1, &type metadata accessor for AnalyticsEvent.Reading, &type metadata accessor for AnalyticsEvent.Reading, AnalyticsEvent.Reading.description.getter);
  sub_10029AE1C(v42);
  v48 = v44;
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    sub_100007840(v42, &qword_100AD9470, &qword_100816878);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v49 = *(v2 + 96);
      ObjectType = swift_getObjectType();
      if ((*(v49 + 16))(ObjectType, v49))
      {
        if (qword_100AD1390 != -1)
        {
          swift_once();
        }

        v51 = sub_10079ACE4();
        sub_100008B98(v51, qword_100B22F80);
        v52 = sub_10079ACC4();
        v53 = sub_1007A29B4();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Failed to get necessary data to submit event", v54, 2u);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return;
  }

  (*(v44 + 32))(v46, v42, v43);
  sub_1002A2658(v47, v39, &type metadata accessor for AnalyticsEvent.Reading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = v46;
  if (EnumCaseMultiPayload > 3)
  {
    v57 = v2;
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v73 = *v39;
        v74 = v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize;
        if ((*(v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize + 8) & 1) != 0 || *v74 != v73)
        {
          *v74 = v73;
          *(v74 + 8) = 0;
          sub_100798004();
          v58 = v48;
          v59 = sub_100797FF4();
          v60 = v209;
          sub_10029D5E4();
          sub_100797F14();
LABEL_54:

          (*(v211 + 8))(v60, v210);
          (*(v58 + 8))(v56, v43);
          return;
        }

        v75 = v48;
        if (qword_100AD1390 != -1)
        {
          swift_once();
        }

        v76 = sub_10079ACE4();
        sub_100008B98(v76, qword_100B22F80);

        v77 = sub_10079ACC4();
        v78 = sub_1007A2994();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v212 = v80;
          *v79 = 136315394;
          v81 = *(v74 + 8);
          v216 = *v74;
          LOBYTE(v217) = v81;
          sub_1001F1160(&qword_100AD4F60, &qword_10080F038);
          v82 = sub_1007A22E4();
          v84 = sub_1000070F4(v82, v83, &v212);

          *(v79 + 4) = v84;
          *(v79 + 12) = 2048;
          *(v79 + 14) = v73;
          _os_log_impl(&_mh_execute_header, v77, v78, "lastFontSize %s == fontSize %f", v79, 0x16u);
          sub_1000074E0(v80);
        }

LABEL_40:
        (*(v75 + 8))(v56, v43);
        return;
      }

      v88 = v48;
      v96 = sub_1007A2BB4();
      v97 = v194;
      v98 = &enum case for ScrollViewStatus.on(_:);
      if ((v96 & 1) == 0)
      {
        v98 = &enum case for ScrollViewStatus.off(_:);
      }

      v99 = v193;
      v100 = v195;
      (*(v194 + 104))(v193, *v98, v195);
      v101 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_scrollViewState;
      swift_beginAccess();
      (*(v97 + 40))(v57 + v101, v99, v100);
      swift_endAccess();
      if ((*(v57 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize + 8) & 1) == 0)
      {
        sub_100798004();
        v141 = sub_100797FF4();
        v142 = v209;
        sub_10029D5E4();
        sub_1007A2BB4();
        sub_100797F64();

        (*(v211 + 8))(v142, v210);
LABEL_72:
        (v88)[1](v56, v43);
        return;
      }

      if (qword_100AD1390 == -1)
      {
LABEL_50:
        v102 = sub_10079ACE4();
        sub_100008B98(v102, qword_100B22F80);
        v103 = sub_10079ACC4();
        v104 = sub_1007A2994();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 0;
          _os_log_impl(&_mh_execute_header, v103, v104, "layoutChanged but event cannot be sent due to missing lastFontSize", v105, 2u);
        }

        goto LABEL_72;
      }

LABEL_114:
      swift_once();
      goto LABEL_50;
    }

    if (EnumCaseMultiPayload != 6)
    {
      v58 = v48;
      if (EnumCaseMultiPayload == 7)
      {
        sub_100798004();
        v59 = sub_100797FF4();
        v60 = v209;
        sub_10029D5E4();
        sub_100797F34();
      }

      else
      {
        sub_100798004();
        v59 = sub_100797FF4();
        v60 = v209;
        sub_10029D5E4();
        sub_100797F74();
      }

      goto LABEL_54;
    }

    v75 = v48;
    v85 = *v39;
    v86 = *(v39 + 1);
    v87 = *(v39 + 2);
    sub_100798004();
    v88 = sub_100797FF4();
    v89 = v196;
    sub_10029D148(v196);
    if (v85 > 0x7FFFFFFF)
    {
      __break(1u);
    }

    else if (v86 <= 0x7FFFFFFF)
    {
      if (v85 >= 0xFFFFFFFF80000000 && v86 >= 0xFFFFFFFF80000000 && v87 >= 0xFFFFFFFF80000000)
      {
        if (v87 <= 0x7FFFFFFF)
        {
          sub_100797F94();

          (*(v189 + 8))(v89, v190);
          goto LABEL_40;
        }

        goto LABEL_113;
      }

LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    __break(1u);
    goto LABEL_112;
  }

  v61 = v2;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v48 + 8))(v56, v43);
      return;
    }

    v71 = *v39;
    v70 = *(v39 + 1);
    v72 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v72 = *v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v72)
    {
    }

    else
    {

      v70 = 0xE800000000000000;
      v71 = 1.17364461e214;
    }

    v180 = v56;
    v143 = (v61 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily);
    v144 = *(v61 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily + 8);
    if (v144)
    {
      v145 = v48;
      if (*v143 == *&v71 && v144 == v70)
      {

LABEL_80:
        if (qword_100AD1390 != -1)
        {
          swift_once();
        }

        v147 = sub_10079ACE4();
        sub_100008B98(v147, qword_100B22F80);

        v148 = sub_10079ACC4();
        v149 = sub_1007A2994();

        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          v212 = swift_slowAlloc();
          *v150 = 136315394;
          v151 = *(v143 + 1);
          v216 = *v143;
          v217 = v151;

          sub_1001F1160(&qword_100AD4F30, &unk_100816940);
          v152 = sub_1007A22E4();
          v154 = sub_1000070F4(v152, v153, &v212);

          *(v150 + 4) = v154;
          *(v150 + 12) = 2080;
          v155 = sub_1000070F4(*&v71, v70, &v212);

          *(v150 + 14) = v155;
          _os_log_impl(&_mh_execute_header, v148, v149, "lastFontFamily %s == font %s", v150, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v145 + 8))(v180, v43);
        return;
      }

      v146 = sub_1007A3AB4();

      if (v146)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v145 = v48;
    }

    *v143 = v71;
    *(v143 + 1) = v70;

    sub_100798004();
    v156 = sub_100797FF4();
    v157 = v209;
    sub_10029D5E4();
    v158 = v180;
    sub_100797EA4();

    (*(v211 + 8))(v157, v210);
    (*(v145 + 8))(v158, v43);
    return;
  }

  v196 = v48;
  v179 = v43;
  v180 = v56;
  if (!EnumCaseMultiPayload)
  {
    LODWORD(v203) = *v39;
    v62 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_autoNightState;
    swift_beginAccess();
    v63 = v208;
    v64 = *(v208 + 16);
    v207 = v62;
    v65 = v61 + v62;
    v66 = v205;
    v201 = v64;
    v202 = v208 + 16;
    (v64)(v36, v65, v205);
    v67 = *(v63 + 104);
    v68 = v192;
    v206 = (v63 + 104);
    v204 = v67;
    (v67)(v192, enum case for AutoNightThemeStatus.unknown(_:), v66);
    sub_1002A42D0(qword_100AD95D0, &type metadata accessor for AutoNightThemeStatus, &protocol conformance descriptor for AutoNightThemeStatus);
    sub_1007A2574();
    sub_1007A2574();
    if (v212 == v214 && v213 == v215)
    {
      v69 = 1;
    }

    else
    {
      v69 = sub_1007A3AB4();
    }

    v106 = *(v208 + 8);
    v107 = v205;
    v106(v68, v205);
    v106(v36, v107);

    if (v69)
    {
      if (v203)
      {
        v108 = &enum case for AutoNightThemeStatus.on(_:);
      }

      else
      {
        v108 = &enum case for AutoNightThemeStatus.off(_:);
      }

      v138 = *v108;
      v107 = v205;
      v139 = v180;
      goto LABEL_92;
    }

    v137 = v184;
    (v201)(v184, v61 + v207, v107);
    v138 = enum case for AutoNightThemeStatus.on(_:);
    (v204)(v191, enum case for AutoNightThemeStatus.on(_:), v107);
    sub_1007A2574();
    sub_1007A2574();
    if (v212 == v214 && v213 == v215)
    {
      v106(v191, v107);
      v106(v137, v107);

      v139 = v180;
      v140 = v203;
      if (v203)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v159 = sub_1007A3AB4();
      v106(v191, v107);
      v106(v137, v107);

      v160 = v159 & v203;
      v140 = v203;
      v139 = v180;
      if (v160)
      {
        goto LABEL_92;
      }
    }

    (v201)(v183, v61 + v207, v107);
    v138 = enum case for AutoNightThemeStatus.off(_:);
    (v204)(v182, enum case for AutoNightThemeStatus.off(_:), v107);
    sub_1007A2574();
    sub_1007A2574();
    if (v212 == v214 && v213 == v215)
    {
      v106(v182, v107);
      v106(v183, v107);

      if (v140)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v165 = sub_1007A3AB4();
      v106(v182, v107);
      v106(v183, v107);

      if (v140 & 1 | ((v165 & 1) == 0))
      {
LABEL_96:
        if (qword_100AD1390 != -1)
        {
          swift_once();
        }

        v166 = sub_10079ACE4();
        sub_100008B98(v166, qword_100B22F80);

        v167 = sub_10079ACC4();
        v168 = sub_1007A2994();

        v169 = os_log_type_enabled(v167, v168);
        v170 = v179;
        if (v169)
        {
          v171 = swift_slowAlloc();
          v212 = swift_slowAlloc();
          *v171 = 136315394;
          (v201)(v181, v61 + v207, v205);
          v172 = sub_1007A22E4();
          v174 = v140;
          v175 = sub_1000070F4(v172, v173, &v212);

          *(v171 + 4) = v175;
          *(v171 + 12) = 2080;
          if (v174)
          {
            v176 = 1702195828;
          }

          else
          {
            v176 = 0x65736C6166;
          }

          if (v174)
          {
            v177 = 0xE400000000000000;
          }

          else
          {
            v177 = 0xE500000000000000;
          }

          v178 = sub_1000070F4(v176, v177, &v212);

          *(v171 + 14) = v178;
          _os_log_impl(&_mh_execute_header, v167, v168, "autoNightState %s == enabled %s", v171, 0x16u);
          swift_arrayDestroy();
        }

        (*(v196 + 8))(v139, v170);
        return;
      }
    }

LABEL_92:
    v161 = v188;
    (v204)(v188, v138, v107);
    v162 = v207;
    swift_beginAccess();
    (*(v208 + 40))(v61 + v162, v161, v107);
    swift_endAccess();
    sub_100798004();
    v163 = sub_100797FF4();
    v164 = v209;
    sub_10029D5E4();
    sub_100797F54();

    (*(v211 + 8))(v164, v210);
    (*(v196 + 8))(v139, v179);
    return;
  }

  v201[4](v200, v39, v202);
  v90 = sub_10079EF44();
  v91 = v207;
  v92 = *(v207 + 104);
  v93 = v198;
  v92(v206, **(&off_100A12CC0 + v90), v198);
  v94 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_backgroundColor;
  swift_beginAccess();
  v208 = *(v91 + 16);
  (v208)(v203, v2 + v94, v93);
  v92(v204, enum case for BackgroundColor.unknown(_:), v93);
  sub_1002A42D0(&qword_100AD95C8, &type metadata accessor for BackgroundColor, &protocol conformance descriptor for BackgroundColor);
  sub_1007A2574();
  sub_1007A2574();
  if (v212 == v214 && v213 == v215)
  {
    v95 = 1;
  }

  else
  {
    v95 = sub_1007A3AB4();
  }

  v109 = v197;
  v110 = *(v207 + 8);
  v110(v204, v93);
  v110(v203, v93);

  if ((v95 & 1) != 0 || (v111 = v199, (v208)(v199, v61 + v94, v93), sub_1002A42D0(&qword_100AD95B8, &type metadata accessor for BackgroundColor, &protocol conformance descriptor for BackgroundColor), v112 = sub_1007A2124(), v110(v111, v93), (v112 & 1) == 0))
  {
    swift_beginAccess();
    v131 = v206;
    (*(v207 + 24))(v61 + v94, v206, v93);
    swift_endAccess();
    sub_100798004();
    v132 = sub_100797FF4();
    v133 = v93;
    v134 = v209;
    sub_10029D5E4();
    (v208)(v199, v131, v133);
    v135 = v185;
    sub_100798184();
    v136 = v180;
    sub_100797F44();

    (*(v186 + 8))(v135, v187);
    (*(v211 + 8))(v134, v210);
    v110(v131, v133);
    (v201[1])(v200, v202);
    (*(v196 + 8))(v136, v179);
  }

  else
  {
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v113 = sub_10079ACE4();
    sub_100008B98(v113, qword_100B22F80);
    v114 = v206;
    (v208)(v109, v206, v93);

    v115 = sub_10079ACC4();
    v116 = sub_1007A2994();

    LODWORD(v211) = v116;
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v209 = v115;
      v118 = v117;
      v210 = swift_slowAlloc();
      v212 = v210;
      *v118 = 136315394;
      v119 = v208;
      v120 = v109;
      v121 = v199;
      (v208)(v199, v61 + v94, v93);
      v122 = sub_1007A22E4();
      v124 = sub_1000070F4(v122, v123, &v212);

      *(v118 + 4) = v124;
      *(v118 + 12) = 2080;
      v119(v121, v120, v93);
      v125 = sub_1007A22E4();
      v127 = v126;
      v110(v120, v93);
      v128 = sub_1000070F4(v125, v127, &v212);

      *(v118 + 14) = v128;
      v129 = v209;
      _os_log_impl(&_mh_execute_header, v209, v211, "backgroundColor %s == backgroundColor %s", v118, 0x16u);
      swift_arrayDestroy();

      v130 = v206;
    }

    else
    {

      v110(v109, v93);
      v130 = v114;
    }

    v110(v130, v93);
    (v201[1])(v200, v202);
    (*(v196 + 8))(v180, v179);
  }
}

void sub_1002A0364(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v150 = a6;
  v145 = a5;
  v146 = a2;
  v148 = a3;
  v149 = a4;
  LODWORD(v143) = a1;
  v8 = a1;
  v9 = sub_100798074();
  isa = v9[-1].isa;
  __chkstk_darwin(v9);
  v142 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v138 = &v129 - v12;
  __chkstk_darwin(v13);
  v141 = &v129 - v14;
  __chkstk_darwin(v15);
  v144 = &v129 - v16;
  v17 = sub_1001F1160(&qword_100AD95B0, &unk_100816930);
  __chkstk_darwin(v17 - 8);
  v19 = &v129 - v18;
  v20 = sub_10079EF54();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v139 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v140 = &v129 - v24;
  __chkstk_darwin(v25);
  v151 = &v129 - v26;
  v27 = sub_1007980B4();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  __chkstk_darwin(v29);
  v31 = &v129 - v30;
  __chkstk_darwin(v32);
  v35 = &v129 - v34;
  v152 = v21;
  v153 = v20;
  if (v8 != 2)
  {
    v133 = v19;
    v136 = v33;
    v137 = v9;
    v36 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_scrollViewState;
    swift_beginAccess();
    v132 = *(v28 + 16);
    (v132)(v35, &v7[v36], v27);
    v37 = *(v28 + 104);
    v135 = v28 + 104;
    v134 = v37;
    v37(v31, enum case for ScrollViewStatus.unknown(_:), v27);
    sub_1002A42D0(&qword_100AD95C0, &type metadata accessor for ScrollViewStatus, &protocol conformance descriptor for ScrollViewStatus);
    v38 = sub_1007A2124();
    v39 = *(v28 + 8);
    v39(v31, v27);
    v131 = v39;
    v39(v35, v27);
    if ((v38 & 1) == 0)
    {
      if (qword_100AD1390 != -1)
      {
        swift_once();
      }

      v40 = sub_10079ACE4();
      sub_100008B98(v40, qword_100B22F80);

      v41 = sub_10079ACC4();
      v42 = sub_1007A29B4();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v156 = v130;
        *v43 = 136315394;
        (v132)(v35, &v7[v36], v27);
        v132 = v41;
        v44 = sub_1007980A4();
        v46 = v45;
        v131(v35, v27);
        v47 = sub_1000070F4(v44, v46, &v156);

        *(v43 + 4) = v47;
        *(v43 + 12) = 1024;
        *(v43 + 14) = v143 & 1;
        v48 = v42;
        v49 = v132;
        sub_1000074E0(v130);
      }

      else
      {
      }
    }

    v50 = &enum case for ScrollViewStatus.on(_:);
    if ((v143 & 1) == 0)
    {
      v50 = &enum case for ScrollViewStatus.off(_:);
    }

    v51 = v136;
    v134(v136, *v50, v27);
    swift_beginAccess();
    (*(v28 + 40))(&v7[v36], v51, v27);
    swift_endAccess();
    v21 = v152;
    v20 = v153;
    v9 = v137;
    v19 = v133;
  }

  sub_1000077D8(v146, v19, &qword_100AD95B0, &unk_100816930);
  v52 = &unk_100AD9000;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100007840(v19, &qword_100AD95B0, &unk_100816930);
    goto LABEL_21;
  }

  (*(v21 + 32))(v151, v19, v20);
  v53 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_backgroundColor;
  v143 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_backgroundColor;
  swift_beginAccess();
  v54 = isa;
  v55 = v144;
  v137 = *(isa + 2);
  (v137)(v144, &v7[v53], v9);
  v56 = *(v54 + 13);
  v146 = v54 + 104;
  v57 = v141;
  v56(v141, enum case for BackgroundColor.unknown(_:), v9);
  sub_1002A42D0(&qword_100AD95B8, &type metadata accessor for BackgroundColor, &protocol conformance descriptor for BackgroundColor);
  LOBYTE(v53) = sub_1007A2124();
  v58 = *(v54 + 1);
  v58(v57, v9);
  v58(v55, v9);
  if ((v53 & 1) == 0)
  {
    v136 = v58;
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v59 = sub_10079ACE4();
    sub_100008B98(v59, qword_100B22F80);
    v60 = v140;
    v61 = v153;
    (*(v152 + 16))(v140, v151, v153);

    v62 = sub_10079ACC4();
    v63 = sub_1007A29B4();

    LODWORD(v135) = v63;
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v141 = v7;
      v65 = v64;
      v154 = swift_slowAlloc();
      *v65 = 136315394;
      v66 = v144;
      (v137)(v144, &v141[v143], v9);
      v137 = v62;
      v67 = sub_100798064();
      v69 = v68;
      v70 = v136;
      v136(v66, v9);
      v71 = sub_1000070F4(v67, v69, &v154);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      v72 = sub_10079EF44();
      v73 = v138;
      v56(v138, **(&off_100A12CC0 + v72), v9);
      v74 = sub_100798064();
      v76 = v75;
      v70(v73, v9);
      (*(v152 + 8))(v60, v153);
      v77 = sub_1000070F4(v74, v76, &v154);

      *(v65 + 14) = v77;
      v78 = v137;
      swift_arrayDestroy();

      v7 = v141;
    }

    else
    {

      (*(v152 + 8))(v60, v61);
    }
  }

  v79 = v151;
  v80 = sub_10079EF44();
  v81 = v142;
  v56(v142, **(&off_100A12CC0 + v80), v9);
  v82 = v143;
  swift_beginAccess();
  (*(isa + 5))(&v7[v82], v81, v9);
  swift_endAccess();
  v52 = &unk_100AD9000;
  v83 = &v7[OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily];
  if (*&v7[OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily + 8])
  {
    (*(v152 + 8))(v79, v153);
LABEL_21:
    v84 = v149;
    v85 = v148;
    if (!v149)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v111 = v7;
  v113 = v152;
  v112 = v153;
  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v114 = sub_10079ACE4();
  sub_100008B98(v114, qword_100B22F80);
  v115 = v139;
  (*(v113 + 16))(v139, v79, v112);
  v116 = sub_10079ACC4();
  v117 = sub_1007A29A4();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v154 = v119;
    *v118 = 136315138;
    v120 = sub_10079ED34();
    v121 = v115;
    v123 = v122;
    v124 = *(v113 + 8);
    v124(v121, v153);
    v125 = sub_1000070F4(v120, v123, &v154);

    *(v118 + 4) = v125;
    sub_1000074E0(v119);
    v112 = v153;

    v79 = v151;
  }

  else
  {

    v124 = *(v113 + 8);
    v124(v115, v112);
  }

  v126 = sub_10079ED34();
  v128 = v127;
  v124(v79, v112);
  *v83 = v126;
  v83[1] = v128;

  v7 = v111;
  v84 = v149;
  v52 = &unk_100AD9000;
  v85 = v148;
  if (v149)
  {
LABEL_22:
    v86 = &v7[v52[44]];
    v87 = v86[1];
    if (v87 && (*v86 != v85 || v87 != v84) && (sub_1007A3AB4() & 1) == 0)
    {
      if (qword_100AD1390 != -1)
      {
        swift_once();
      }

      v88 = sub_10079ACE4();
      sub_100008B98(v88, qword_100B22F80);

      v89 = sub_10079ACC4();
      v90 = sub_1007A29B4();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v141 = v7;
        v157 = v92;
        *v91 = 136315394;
        v93 = v86[1];
        v154 = *v86;
        v155 = v93;

        sub_1001F1160(&qword_100AD4F30, &unk_100816940);
        v94 = sub_1007A22E4();
        v96 = v52;
        v97 = sub_1000070F4(v94, v95, &v157);

        *(v91 + 4) = v97;
        v52 = v96;
        *(v91 + 12) = 2080;
        *(v91 + 14) = sub_1000070F4(v85, v84, &v157);
        swift_arrayDestroy();
        v7 = v141;
      }
    }

    *v86 = v85;
    v86[1] = v84;
  }

LABEL_32:
  v98 = &v7[v52[44]];
  v99 = *(v98 + 1);
  if (!v99)
  {
    goto LABEL_36;
  }

  v100 = *v98 & 0xFFFFFFFFFFFFLL;
  if ((v99 & 0x2000000000000000) != 0)
  {
    v100 = HIBYTE(v99) & 0xF;
  }

  if (!v100)
  {
LABEL_36:
    *v98 = xmmword_100816640;
  }

  if ((v150 & 1) == 0)
  {
    v101 = &v7[OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize];
    if ((v7[OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize + 8] & 1) == 0)
    {
      if (qword_100AD1390 != -1)
      {
        swift_once();
      }

      v102 = sub_10079ACE4();
      sub_100008B98(v102, qword_100B22F80);

      v103 = sub_10079ACC4();
      v104 = sub_1007A29B4();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v157 = v106;
        *v105 = 136315394;
        v107 = v101[8];
        v154 = *v101;
        LOBYTE(v155) = v107;
        sub_1001F1160(&qword_100AD4F60, &qword_10080F038);
        v108 = sub_1007A22E4();
        v110 = sub_1000070F4(v108, v109, &v157);

        *(v105 + 4) = v110;
        *(v105 + 12) = 2048;
        *(v105 + 14) = v145;
        sub_1000074E0(v106);
      }
    }

    *v101 = v145;
    v101[8] = 0;
  }
}

void sub_1002A1460(uint64_t a1)
{
  v53 = sub_100797E34();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100797D44();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v44 - v6;
  v7 = sub_100798394();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007983A4();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v57 = &v44 - v13;
  v14 = type metadata accessor for AnalyticsEvent.ReadingEvent(0);
  __chkstk_darwin(v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001F1160(&qword_100AD9470, &qword_100816878);
  __chkstk_darwin(v17 - 8);
  v19 = &v44 - v18;
  v20 = sub_100797D84();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A4318(a1, type metadata accessor for AnalyticsEvent.ReadingEvent, type metadata accessor for AnalyticsEvent.ReadingEvent, AnalyticsEvent.ReadingEvent.description.getter);
  sub_10029AE1C(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100007840(v19, &qword_100AD9470, &qword_100816878);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v1 + 96);
      ObjectType = swift_getObjectType();
      if ((*(v24 + 16))(ObjectType, v24))
      {
        if (qword_100AD1390 != -1)
        {
          swift_once();
        }

        v26 = sub_10079ACE4();
        sub_100008B98(v26, qword_100B22F80);
        v27 = sub_10079ACC4();
        v28 = sub_1007A29B4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Failed to get necessary data to submit event", v29, 2u);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    sub_1002A2658(a1, v16, type metadata accessor for AnalyticsEvent.ReadingEvent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_100798004();
        v35 = sub_100797FF4();
        sub_100797E44();
      }

      else
      {
        sub_100798004();
        v42 = sub_100797FF4();
        sub_100797EB4();

        v43 = sub_100797FF4();
        sub_1007A2254();
        sub_100797ED4();
      }
    }

    else
    {
      v31 = v57;
      v32 = v58;
      if (EnumCaseMultiPayload)
      {
        (*(v58 + 32))(v57, v16, v59);
        sub_100798004();
        v36 = sub_100797FF4();
        v45 = *(v1 + 16);
        v46 = v36;
        v34 = &enum case for ViewAction.remove(_:);
      }

      else
      {
        (*(v58 + 32))(v57, v16, v59);
        sub_100798004();
        v33 = sub_100797FF4();
        v45 = *(v1 + 16);
        v46 = v33;
        v34 = &enum case for ViewAction.add(_:);
      }

      v37 = v52;
      v38 = v48;
      v39 = v54;
      (*(v52 + 104))(v48, *v34, v54);
      (*(v32 + 16))(v11, v31, v59);
      (*(v37 + 16))(v47, v38, v39);
      (*(v50 + 104))(v51, enum case for ViewLocation.fromReading(_:), v53);
      v40 = v49;
      sub_100798384();
      (*(v37 + 8))(v38, v39);
      v41 = v46;
      sub_100797E94();

      (*(v55 + 8))(v40, v56);
      (*(v58 + 8))(v57, v59);
    }

    (*(v21 + 8))(v23, v20);
  }
}

uint64_t AnalyticsEvent.Reading.description.getter()
{
  v1 = v0;
  v2 = sub_10079EF54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079FFF4();
  __chkstk_darwin(v6);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002A2658(v1, v8, &type metadata accessor for AnalyticsEvent.Reading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v15 = *v8;
        v14 = v8[1];
        v23 = 0x6E616843746E6F46;
        v24 = 0xEB00000000206567;
        v22[0] = v15;
        v22[1] = v14;
        sub_1002060B4();
        if ((sub_1007A28A4() & 1) == 0)
        {

          v14 = 0xE800000000000000;
          v15 = 0x6C616E696769726FLL;
        }

        v16._countAndFlagsBits = v15;
        v16._object = v14;
        goto LABEL_27;
      }

      v11 = *v8;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1007A3744(25);

      v12 = 0x80000001008C8450;
      v13 = 0xD000000000000017;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v5, v8, v2);
        v23 = 0;
        v24 = 0xE000000000000000;
        v31._countAndFlagsBits = 0x616843656D656854;
        v31._object = 0xEC0000002065676ELL;
        sub_1007A23D4(v31);
        sub_1007A3894();
        v20 = v23;
        (*(v3 + 8))(v5, v2);
        return v20;
      }

      v11 = *v8;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1007A3744(19);

      v12 = 0x80000001008C8490;
      v13 = 0xD000000000000011;
    }

    v23 = v13;
    v24 = v12;
    if (v11)
    {
      v16._countAndFlagsBits = 1702195828;
    }

    else
    {
      v16._countAndFlagsBits = 0x65736C6166;
    }

    if (v11)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v16._object = v21;
LABEL_27:
    sub_1007A23D4(v16);

    return v23;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1007A3744(18);
      v25._countAndFlagsBits = 0xD000000000000010;
      v25._object = 0x80000001008C8430;
      sub_1007A23D4(v25);
      sub_1007A27D4();
      return v23;
    }

    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1007A3744(19);

    v23 = 0xD000000000000011;
    v24 = 0x80000001008C8410;
    v16._countAndFlagsBits = sub_1007A2BA4();
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v17 = *v8;
    v18 = v8[1];
    v19 = v8[2];
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1007A3744(57);
    v26._countAndFlagsBits = 0xD000000000000019;
    v26._object = 0x80000001008C83F0;
    sub_1007A23D4(v26);
    v22[0] = v17;
    v27._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v27);

    v28._countAndFlagsBits = 0x69736F50646E6520;
    v28._object = 0xED00003A6E6F6974;
    sub_1007A23D4(v28);
    v22[0] = v18;
    v29._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v29);

    v30._countAndFlagsBits = 0x654C6C61746F7420;
    v30._object = 0xED00003A6874676ELL;
    sub_1007A23D4(v30);
    v22[0] = v19;
    v16._countAndFlagsBits = sub_1007A3A74();
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 7)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x686372616553;
  }
}

uint64_t AnalyticsEvent.LifeCycle.description.getter(uint64_t a1)
{
  sub_1007A3744(17);

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 0xED00007261657070;
      v3._countAndFlagsBits = 0x617369446C6C6977;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v2 = 0xEC00000072616570;
      v3._countAndFlagsBits = 0x7061736944646964;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 0xEC00000065736163;
    v3._countAndFlagsBits = 0x206E776F6E6B6E75;
    goto LABEL_11;
  }

  if (!a1)
  {
    v2 = 0xE500000000000000;
    v3._countAndFlagsBits = 0x7465736E75;
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 0xE900000000000072;
  v3._countAndFlagsBits = 0x6165707041646964;
LABEL_11:
  v3._object = v2;
  sub_1007A23D4(v3);

  return 0x6C6379436566694CLL;
}

unint64_t AnalyticsEvent.ReadingEvent.description.getter()
{
  v1 = v0;
  v2 = sub_1007983A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnalyticsEvent.ReadingEvent(0);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A2658(v1, v8, type metadata accessor for AnalyticsEvent.ReadingEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v8, v2);
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1007A3744(29);
      v10._object = 0x80000001008C84F0;
      v10._countAndFlagsBits = 0xD00000000000001BLL;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1007A3744(27);
      v10._countAndFlagsBits = 0xD000000000000019;
      v10._object = 0x80000001008C8510;
    }

    sub_1007A23D4(v10);
    sub_1007A3894();
    v11 = v13;
    (*(v3 + 8))(v5, v2);
  }

  return v11;
}

uint64_t BCAnalyticsViewLifeCycleState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x7061736944646964;
      }

      return 0x206E776F6E6B6E75;
    }

    return 0x617369446C6C6977;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6165707041646964;
      }

      return 0x206E776F6E6B6E75;
    }

    return 0x7465736E75;
  }
}

uint64_t sub_1002A259C()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x7061736944646964;
      }

      return 0x206E776F6E6B6E75;
    }

    return 0x617369446C6C6977;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x6165707041646964;
      }

      return 0x206E776F6E6B6E75;
    }

    return 0x7465736E75;
  }
}

uint64_t sub_1002A2658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ReadingAnalyticsProvider(uint64_t a1)
{
  result = qword_100AD91A0;
  if (!qword_100AD91A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A2714(uint64_t a1)
{
  sub_1002A2960(319, &qword_100AD91B0, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_100798154();
    if (v2 <= 0x3F)
    {
      sub_1007980B4();
      if (v3 <= 0x3F)
      {
        sub_1007981E4();
        if (v4 <= 0x3F)
        {
          sub_100798074();
          if (v5 <= 0x3F)
          {
            sub_1002A2960(319, &unk_100AD91B8, &type metadata accessor for ContentData);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1002A2960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1002A29B4()
{
  v2 = *(sub_1001F1160(&qword_100AD9470, &qword_100816878) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1001F1160(&qword_100AD9468, &qword_100816870) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10002812C;

  return sub_10029B5B4(v7, v0 + v3, v8, v0 + v6);
}

uint64_t sub_1002A2B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_10029DC54(a1, v4, v5, v6, v7, v8);
}

double sub_1002A2BF0(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v67 = a1;
  v2 = sub_100796174();
  v72 = *(v2 - 8);
  v73 = v2;
  __chkstk_darwin(v2);
  v69 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007962B4();
  v70 = *(v4 - 8);
  v71 = v4;
  __chkstk_darwin(v4);
  v68 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1007967F4();
  v87 = *(v80 - 8);
  __chkstk_darwin(v80);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_100796CF4();
  v86 = *(v57 - 8);
  v8 = v86;
  __chkstk_darwin(v57);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_1007A21D4();
  v53 = v14;
  v85 = *(v14 - 8);
  v15 = v85;
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  v21 = sub_100796814();
  __chkstk_darwin(v21 - 8);
  v74 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1002132B4();
  v63 = v24;
  v64 = v23;
  v65 = v25;
  sub_1001F1160(&unk_100AD9510, &qword_1008168C8);
  v61 = sub_100795DC4();
  v62 = sub_100795DC4();
  v60 = sub_100795DC4();
  sub_1007A2154();
  sub_100796C94();
  v26 = *(v15 + 16);
  v83 = v15 + 16;
  v84 = v26;
  v54 = v17;
  v26(v17, v20, v14);
  v27 = *(v8 + 16);
  v81 = v8 + 16;
  v82 = v27;
  v28 = v57;
  v27(v10, v13, v57);
  v79 = type metadata accessor for BundleFinder();
  *v7 = v79;
  v78 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v29 = *(v87 + 104);
  v87 += 104;
  v77 = v29;
  v30 = v7;
  v55 = v7;
  v31 = v80;
  v29(v30);
  v32 = v10;
  sub_100796834();
  v33 = *(v86 + 8);
  v86 += 8;
  v76 = v33;
  v33(v13, v28);
  v34 = *(v85 + 8);
  v85 += 8;
  v75 = v34;
  v35 = v53;
  v34(v20, v53);
  v59 = sub_100795DB4();
  sub_1001F1160(&qword_100AE8370, &unk_1008168D0);
  v58 = sub_100795DA4();
  sub_1001F1160(&unk_100AD9520, &unk_10082D3B0);
  sub_1007A2154();
  sub_100796C94();
  v36 = v54;
  v37 = v35;
  v84(v54, v20, v35);
  v38 = v32;
  v39 = v32;
  v40 = v28;
  v82(v39, v13, v28);
  v41 = v55;
  *v55 = v79;
  v77(v41, v78, v31);
  sub_100796834();
  v76(v13, v40);
  v75(v20, v37);
  sub_100211A50();
  v56 = sub_100795D74();
  sub_1001F1160(&unk_100AD9530, &unk_1008168E0);
  sub_1007A2154();
  sub_100796C94();
  v84(v36, v20, v37);
  v82(v38, v13, v40);
  v42 = v80;
  *v41 = v79;
  v77(v41, v78, v42);
  sub_100796834();
  v76(v13, v40);
  v75(v20, v37);
  sub_100005920(&unk_100AE7F80, &qword_100AD9540, &qword_10082D3C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v43 = sub_100795D84();
  v101 = 0;
  v102 = 0;
  v44 = v66;

  v45 = v61;
  sub_100795D64();
  v101 = 0;
  v102 = 0;
  v46 = v60;
  sub_100795D64();
  LOBYTE(v101) = 0;
  v47 = v56;
  sub_100795D64();
  *&v95 = v67;
  *(&v95 + 1) = v44;
  *(&v96 + 1) = v88[0];
  DWORD1(v96) = *(v88 + 3);
  LOBYTE(v96) = 1;
  *(&v96 + 1) = v45;
  *&v97 = v62;
  *(&v97 + 1) = v46;
  *&v98 = v59;
  *(&v98 + 1) = v58;
  *&v99 = v47;
  *(&v99 + 1) = v43;
  v100 = 0uLL;
  v101 = v67;
  v102 = v44;
  v103 = 1;
  *v104 = v88[0];
  *&v104[3] = *(v88 + 3);
  v105 = v45;
  v106 = v62;
  v107 = v46;
  v108 = v59;
  v109 = v58;
  v110 = v47;
  v111 = v43;
  v112 = 0;
  v113 = 0;
  sub_1002A40C0(&v95, &v89);
  sub_1002A411C(&v101);
  v91 = v97;
  v92 = v98;
  v93 = v99;
  v94 = v100;
  v89 = v95;
  v90 = v96;
  sub_1002A40C0(&v95, v88);
  v48 = v63;
  sub_100795E04();
  sub_1002A411C(&v95);
  v49 = v69;
  sub_100796164();
  *&v89 = v64;
  *(&v89 + 1) = v48;
  *&v90 = v65;
  sub_100214EF0();
  v50 = v68;
  sub_100796154();
  (*(v72 + 8))(v49, v73);
  (*(v70 + 8))(v50, v71);

  return result;
}

void sub_1002A3504(uint64_t a1)
{
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100B22F80);
  v17 = sub_10079ACC4();
  v7 = sub_1007A2994();
  if (os_log_type_enabled(v17, v7))
  {
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136315394;
    sub_100796BA4();
    sub_1002A42D0(&unk_100AE9A30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v9 = sub_1007A3A74();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v12 = sub_1000070F4(v9, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = AnalyticsEvent.LifeCycle.description.getter(a1);
    v15 = sub_1000070F4(v13, v14, &v18);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v17, v7, "%s -- %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v17;
  }
}

double sub_1002A37AC(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v65 = a1;
  v2 = sub_100796174();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v67 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007962B4();
  v68 = *(v4 - 8);
  v69 = v4;
  __chkstk_darwin(v4);
  v66 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1007967F4();
  v84 = *(v77 - 8);
  __chkstk_darwin(v77);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_100796CF4();
  v8 = *(v57 - 8);
  __chkstk_darwin(v57);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = sub_1007A21D4();
  v51 = v14;
  v83 = *(v14 - 8);
  v15 = v83;
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v49 - v19;
  v21 = sub_100796814();
  __chkstk_darwin(v21 - 8);
  v55 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10032B474();
  sub_1001F1160(&unk_100AD9510, &qword_1008168C8);
  v61 = sub_100795DC4();
  v62 = sub_100795DC4();
  v60 = sub_100795DC4();
  sub_1007A2154();
  v50 = v13;
  sub_100796C94();
  v23 = *(v15 + 16);
  v81 = v15 + 16;
  v82 = v23;
  v52 = v17;
  v23(v17, v20, v14);
  v24 = *(v8 + 16);
  v79 = v8 + 16;
  v80 = v24;
  v53 = v10;
  v25 = v13;
  v26 = v57;
  v24(v10, v25, v57);
  v78 = type metadata accessor for BundleFinder();
  *v7 = v78;
  v76 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v72 = *(v84 + 104);
  v84 += 104;
  v27 = v7;
  v54 = v7;
  v28 = v77;
  v72(v27);
  sub_100796834();
  v29 = *(v8 + 8);
  v74 = v8 + 8;
  v75 = v29;
  v30 = v50;
  v31 = v26;
  v29(v50, v26);
  v32 = *(v83 + 8);
  v83 += 8;
  v73 = v32;
  v33 = v51;
  v32(v20, v51);
  v59 = sub_100795DB4();
  sub_1001F1160(&qword_100AE8370, &unk_1008168D0);
  v58 = sub_100795DA4();
  v56 = sub_1001F1160(&unk_100AD9520, &unk_10082D3B0);
  sub_1007A2154();
  sub_100796C94();
  v34 = v52;
  v35 = v33;
  v82(v52, v20, v33);
  v36 = v53;
  v37 = v30;
  v80(v53, v30, v31);
  v38 = v54;
  *v54 = v78;
  (v72)(v38, v76, v28);
  sub_100796834();
  v75(v37, v31);
  v73(v20, v35);
  sub_100211A50();
  v56 = sub_100795D74();
  sub_1001F1160(&unk_100AD9530, &unk_1008168E0);
  sub_1007A2154();
  sub_100796C94();
  v82(v34, v20, v35);
  v80(v36, v37, v31);
  v39 = v77;
  *v38 = v78;
  (v72)(v38, v76, v39);
  sub_100796834();
  v75(v37, v31);
  v73(v20, v35);
  sub_100005920(&unk_100AE7F80, &qword_100AD9540, &qword_10082D3C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v40 = sub_100795D84();
  v93 = 0;
  v94 = 0;
  v41 = v64;

  v42 = v61;
  sub_100795D64();
  v93 = 0;
  v94 = 0;
  v43 = v60;
  sub_100795D64();
  LOBYTE(v93) = 0;
  v44 = v56;
  sub_100795D64();
  *&v87 = v65;
  *(&v87 + 1) = v41;
  *(&v88 + 1) = v85[0];
  DWORD1(v88) = *(v85 + 3);
  LOBYTE(v88) = 1;
  *(&v88 + 1) = v42;
  *&v89 = v62;
  *(&v89 + 1) = v43;
  *&v90 = v59;
  *(&v90 + 1) = v58;
  *&v91 = v44;
  *(&v91 + 1) = v40;
  v92 = 0uLL;
  v93 = v65;
  v94 = v41;
  v95 = 1;
  *v96 = v85[0];
  *&v96[3] = *(v85 + 3);
  v97 = v42;
  v98 = v62;
  v99 = v43;
  v100 = v59;
  v101 = v58;
  v102 = v44;
  v103 = v40;
  v104 = 0;
  v105 = 0;
  sub_1002A40C0(&v87, v86);
  sub_1002A411C(&v93);
  v86[2] = v89;
  v86[3] = v90;
  v86[4] = v91;
  v86[5] = v92;
  v86[0] = v87;
  v86[1] = v88;
  sub_1002A40C0(&v87, v85);
  v45 = v63;
  sub_100795E04();
  sub_1002A411C(&v87);
  v46 = v67;
  sub_100796164();
  *&v86[0] = v45;
  sub_1002A4170();
  v47 = v66;
  sub_100796154();
  (*(v70 + 8))(v46, v71);
  (*(v68 + 8))(v47, v69);

  return result;
}

unint64_t sub_1002A4170()
{
  result = qword_100AD9548;
  if (!qword_100AD9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9548);
  }

  return result;
}

uint64_t sub_1002A41C4(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1002A420C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_10029AA60(a1, v4, v5, v6);
}

uint64_t sub_1002A42D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002A4318(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v8 = sub_100796BB4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a2)(0, v10);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v16 = sub_10079ACE4();
  sub_100008B98(v16, qword_100B22F80);
  sub_1002A2658(a1, v15, a3);
  v17 = sub_10079ACC4();
  v18 = sub_1007A2994();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v19 = 136315394;
    sub_100796BA4();
    sub_1002A42D0(&unk_100AE9A30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v20 = sub_1007A3A74();
    v30 = a3;
    v22 = v21;
    (*(v9 + 8))(v12, v8);
    v23 = sub_1000070F4(v20, v22, &v32);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v25 = a4(v24);
    v27 = v26;
    sub_1002A4620(v15, v30);
    v28 = sub_1000070F4(v25, v27, &v32);

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s -- %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1002A4620(v15, a3);
  }
}

uint64_t sub_1002A4620(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002A4688()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1007A2214();
  v2 = [v0 BOOLForKey:v1];

  byte_100B22FA8 = v2;
}

void sub_1002A4718(uint64_t a1)
{
  sub_10079BED4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BookReaderViewModel(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PageTurnViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_100247C8C(319);
        if (v4 <= 0x3F)
        {
          sub_10028B510(319);
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              sub_10079ACE4();
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

uint64_t sub_1002A4858(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v43 = sub_10079BED4();
  v5 = *(v43 - 8);
  v6 = *(v5 + 84);
  v7 = *(sub_10079CEE4() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v41 = *(a3 + 16);
  v10 = *(v41 - 8);
  v42 = *(v10 + 84);
  if (v6 <= v42)
  {
    v11 = *(v10 + 84);
  }

  else
  {
    v11 = v6;
  }

  v12 = *(sub_10079ACE4() - 8);
  v13 = *(v5 + 80);
  v14 = *(v10 + 80);
  v15 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v16 = *(v12 + 84);
  }

  else
  {
    v16 = v11;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v8)
  {
    v18 = v9;
  }

  else
  {
    v18 = v9 + 1;
  }

  if (v18 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v5 + 64) + 7;
  v21 = *(v7 + 80) & 0xF8;
  v22 = ~v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = v21 + 23;
  v24 = v19 + v14 + 1;
  v25 = *(v10 + 64) + 7;
  v26 = v15 + 8;
  if (a2 <= v17)
  {
    goto LABEL_40;
  }

  v27 = ((v26 + ((((((((v25 + ((v24 + ((v23 + ((((((((v20 + ((v13 + 20) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + *(v12 + 64);
  v28 = 8 * v27;
  if (v27 > 3)
  {
    goto LABEL_19;
  }

  v31 = ((a2 - v17 + ~(-1 << v28)) >> v28) + 1;
  if (HIWORD(v31))
  {
    v29 = *(a1 + v27);
    if (v29)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v31 <= 0xFF)
    {
      if (v31 < 2)
      {
        goto LABEL_40;
      }

LABEL_19:
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_40;
      }

LABEL_27:
      v32 = (v29 - 1) << v28;
      if (v27 > 3)
      {
        v32 = 0;
      }

      if (v27)
      {
        if (v27 <= 3)
        {
          v33 = v27;
        }

        else
        {
          v33 = 4;
        }

        if (v33 > 2)
        {
          if (v33 == 3)
          {
            v34 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v34 = *a1;
          }
        }

        else if (v33 == 1)
        {
          v34 = *a1;
        }

        else
        {
          v34 = *a1;
        }
      }

      else
      {
        v34 = 0;
      }

      return v17 + (v34 | v32) + 1;
    }

    v29 = *(a1 + v27);
    if (*(a1 + v27))
    {
      goto LABEL_27;
    }
  }

LABEL_40:
  if ((v16 & 0x80000000) == 0)
  {
    if ((*(a1 + 1) & 0xF000000000000007) != 0)
    {
      return (*a1 & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  v35 = (((a1 + 19) & 0xFFFFFFFFFFFFFFFCLL) + v13 + 4) & ~v13;
  if (v6 == v17)
  {
    v36 = *(v5 + 48);
    v37 = v6;
    v38 = v43;
LABEL_48:

    return v36(v35, v37, v38);
  }

  v35 = (v24 + ((v23 + ((((((((v20 + v35) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v14;
  if (v42 == v17)
  {
    v36 = *(v10 + 48);
    v37 = v42;
    v38 = v41;
    goto LABEL_48;
  }

  v39 = *(v12 + 48);
  v40 = (v26 + ((((((((v25 + v35) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15;

  return v39(v40);
}

void sub_1002A4CDC(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_10079BED4() - 8);
  v6 = *(v5 + 84);
  v7 = *(sub_10079CEE4() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(*(a4 + 16) - 8);
  v46 = v10;
  v11 = *(v10 + 84);
  if (v6 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v6;
  }

  v13 = *(sub_10079ACE4() - 8);
  v14 = *(v5 + 80);
  v15 = *(v5 + 64);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  v18 = *(v13 + 80);
  if (v12 <= *(v13 + 84))
  {
    v19 = *(v13 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = v15 + 7;
  v22 = (((((((v15 + 7 + ((v14 + 20) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v7 + 80) & 0xF8;
  v24 = ~v23 & 0xFFFFFFFFFFFFFFF8;
  v25 = v23 + 23;
  v26 = (v23 + 23 + v22) & v24;
  if (v8)
  {
    v27 = v9;
  }

  else
  {
    v27 = v9 + 1;
  }

  if (v27 <= 8)
  {
    v27 = 8;
  }

  v28 = v27 + v16 + 1;
  v29 = (v28 + v26) & ~v16;
  v30 = v17 + 7;
  v31 = ((v18 + 8 + ((((((((v17 + 7 + v29) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + *(v13 + 64);
  if (a3 <= v20)
  {
    v33 = 0;
    v32 = a1;
  }

  else
  {
    v32 = a1;
    if (v31 <= 3)
    {
      v36 = ((a3 - v20 + ~(-1 << (8 * v31))) >> (8 * v31)) + 1;
      if (HIWORD(v36))
      {
        v33 = 4;
      }

      else
      {
        if (v36 < 0x100)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        if (v36 >= 2)
        {
          v33 = v37;
        }

        else
        {
          v33 = 0;
        }
      }
    }

    else
    {
      v33 = 1;
    }
  }

  if (v20 < a2)
  {
    v34 = ~v20 + a2;
    if (v31 < 4)
    {
      v35 = (v34 >> (8 * v31)) + 1;
      if (v31)
      {
        v38 = v34 & ~(-1 << (8 * v31));
        bzero(v32, v31);
        if (v31 != 3)
        {
          if (v31 == 2)
          {
            *v32 = v38;
            if (v33 > 1)
            {
LABEL_61:
              if (v33 == 2)
              {
                *(v32 + v31) = v35;
              }

              else
              {
                *(v32 + v31) = v35;
              }

              return;
            }
          }

          else
          {
            *v32 = v34;
            if (v33 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *v32 = v38;
        *(v32 + 2) = BYTE2(v38);
      }

      if (v33 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(v32, v31);
      *v32 = v34;
      v35 = 1;
      if (v33 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v33)
    {
      *(v32 + v31) = v35;
    }

    return;
  }

  if (v33 > 1)
  {
    if (v33 != 2)
    {
      *(v32 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(v32 + v31) = 0;
  }

  else if (v33)
  {
    *(v32 + v31) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v19 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *v32 = a2 & 0x7FFFFFFF;
      *(v32 + 1) = 0;
    }

    else
    {
      *v32 = a2 - 1;
      *(v32 + 1) = 1;
    }

    return;
  }

  v39 = (((v32 + 19) & 0xFFFFFFFFFFFFFFFCLL) + v14 + 4) & ~v14;
  if (v6 == v20)
  {
    v40 = *(v5 + 56);
LABEL_53:

    v40(v39);
    return;
  }

  v39 = (v28 + ((v25 + ((((((((v21 + v39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v24)) & ~v16;
  if (v11 == v20)
  {
    v40 = *(v46 + 56);
    goto LABEL_53;
  }

  v41 = *(v13 + 56);
  v42 = (v18 + 8 + ((((((((v30 + v39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v18;

  v41(v42);
}

uint64_t sub_1002A523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v83 = *(a1 - 8);
  __chkstk_darwin(a1);
  v89 = v4;
  v81 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v95[0] = sub_1001F1234(&unk_100ADB470, &qword_100839340);
  v5 = *(a1 + 16);
  sub_1001F1234(&qword_100AD9658, &qword_1008169F0);
  v88 = v5;
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD9660, &qword_1008169F8);
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD9668, &qword_100816A00);
  *&v95[1] = sub_10079C2A4();
  *&v95[2] = sub_1001F1234(&qword_100AD9670, &qword_100816A08);
  *&v95[3] = sub_1001F1234(&qword_100AD9678, &qword_100816A10);
  *&v95[4] = sub_1001F1234(&qword_100AD9680, &qword_100816A18);
  *&v95[5] = sub_1001F1234(&qword_100AD9688, &unk_100816A20);
  swift_getTupleTypeMetadata();
  v6 = sub_10079E5C4();
  WitnessTable = swift_getWitnessTable();
  v75 = v6;
  v74 = WitnessTable;
  v8 = sub_10079E1A4();
  v77 = *(v8 - 8);
  __chkstk_darwin(v8);
  v76 = &v67 - v9;
  v78 = v10;
  v80 = sub_10079C2A4();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v87 = &v67 - v11;
  v12 = sub_1001F1160(&qword_100AD8A78, &unk_100815DE0);
  __chkstk_darwin(v12 - 8);
  v72 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v67 - v15;
  v91 = sub_10079BC44();
  v16 = *(v91 - 1);
  __chkstk_darwin(v91);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  v73 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v73);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v67 - v25;
  v27 = v2;
  v28 = *(v2 + *(a1 + 52));
  swift_getKeyPath();
  v29 = OBJC_IVAR____TtC5Books17PageTurnViewModel___observationRegistrar;
  v95[0] = v28;
  v85 = sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
  v86 = v29;
  sub_100797A14();

  sub_10079B904();
  v82 = a1;
  v90 = v27;
  v30 = sub_1002AAB94(a1);
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v30;
  sub_10079B9A4(v21);

  v32 = v91;
  (*(v16 + 104))(v18, enum case for ColorScheme.dark(_:), v91);
  v70 = sub_10079BC34();
  v33 = *(v16 + 8);
  v33(v18, v32);
  v33(v21, v32);
  sub_1003AA93C(v95);
  swift_storeEnumTagMultiPayload();
  v91 = v26;
  LOBYTE(v18) = sub_1003AE994(v26, v23);
  v73 = v23;
  sub_1002AC4E8(v23, type metadata accessor for PageTurnViewModel.State);
  if (v18)
  {
    v69 = 0;
    v34 = v72;
    v35 = v71;
  }

  else
  {
    swift_getKeyPath();
    v94 = v28;
    sub_100797A14();

    v36 = sub_10079FE94();
    v38 = v37;
    if (v36 == sub_10079FE94() && v38 == v39)
    {
      v69 = 1;
    }

    else
    {
      v69 = sub_1007A3AB4();
    }

    v34 = v72;
    v35 = v71;
  }

  sub_1003AB0E8(v35);
  v40 = _s5StateO4TurnVMa(0);
  v41 = *(*(v40 - 8) + 48);
  if (v41(v35, 1, v40) == 1)
  {
    sub_100007840(v35, &qword_100AD8A78, &unk_100815DE0);
  }

  else
  {
    sub_1002AC4E8(v35, _s5StateO4TurnVMa);
  }

  v42 = sub_1007A03D4();
  sub_1003AB0E8(v34);
  if (v41(v34, 1, v40) == 1)
  {
    sub_100007840(v34, &qword_100AD8A78, &unk_100815DE0);
    v43 = 0;
  }

  else
  {
    v43 = *&v34[*(v40 + 32)];
    v44 = v43;
    sub_1002AC4E8(v34, _s5StateO4TurnVMa);
  }

  v72 = v43;
  v45 = sub_1003AB370();
  v46 = __chkstk_darwin(v45);
  v71 = *&v28;
  v47 = v82;
  v48 = *(v82 + 24);
  v49 = v88;
  *(&v67 - 12) = v88;
  *(&v67 - 11) = v48;
  v68 = v48;
  v50 = v90;
  *(&v67 - 10) = v90;
  *(&v67 - 72) = v42 & 1;
  *(&v67 - 8) = v95;
  *(&v67 - 7) = v51;
  *(&v67 - 48) = v70 & 1;
  *(&v67 - 5) = v46;
  *(&v67 - 32) = v69 & 1;
  v52 = v91;
  *(&v67 - 3) = v43;
  *(&v67 - 2) = v52;
  sub_10079E474();
  v53 = v76;
  sub_10079E194();
  v54 = v83;
  v75 = *(v83 + 16);
  v55 = v81;
  v56 = v47;
  v75(v81, v50, v47);
  v57 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v49;
  *(v58 + 24) = v48;
  v83 = *(v54 + 32);
  (v83)(v58 + v57, v55, v56);
  v59 = v78;
  v60 = swift_getWitnessTable();
  sub_10079D744();

  (*(v77 + 8))(v53, v59);
  swift_getKeyPath();
  v94 = *&v71;
  sub_100797A14();

  v61 = v73;
  sub_10079B904();
  LOBYTE(v53) = sub_1003AD588();
  sub_1002AC4E8(v61, type metadata accessor for PageTurnViewModel.State);
  LOBYTE(v94) = v53;
  v75(v55, v90, v56);
  v62 = swift_allocObject();
  v63 = v68;
  *(v62 + 16) = v88;
  *(v62 + 24) = v63;
  (v83)(v62 + v57, v55, v56);
  sub_1001F1160(&qword_100AD9698, &qword_100816AD0);
  v92 = v60;
  v93 = &protocol witness table for _TransactionModifier;
  v64 = v80;
  swift_getWitnessTable();
  sub_1002AAD94();
  v65 = v87;
  sub_10079DC24();

  (*(v79 + 8))(v65, v64);
  return sub_1002AC4E8(v91, type metadata accessor for PageTurnViewModel.State);
}

void sub_1002A5E44(uint64_t a1@<X0>, int a2@<W1>, double *a3@<X2>, int a4@<W3>, int a5@<W4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a11@<D1>, uint64_t a12)
{
  v297 = a7;
  v279 = a6;
  LODWORD(v307) = a5;
  v308 = a4;
  v298 = a3;
  v296 = a2;
  v292 = a9;
  v305 = a12;
  v258 = sub_1001F1160(&qword_100AD96B0, &qword_100816AD8);
  __chkstk_darwin(v258);
  v240 = &v233 - v15;
  v255 = sub_1001F1160(&qword_100AD96B8, &qword_100816AE0);
  __chkstk_darwin(v255);
  v257 = &v233 - v16;
  v256 = sub_1001F1160(&qword_100AD96C0, &qword_100816AE8);
  __chkstk_darwin(v256);
  v239 = &v233 - v17;
  v19 = type metadata accessor for PageTurnView(0, a8, a12, v18);
  v237 = *(v19 - 8);
  v235 = *(v237 + 64);
  __chkstk_darwin(v19);
  v236 = &v233 - v20;
  v234 = sub_1001F1160(&qword_100AD96C8, &qword_100816AF0);
  __chkstk_darwin(v234);
  v238 = &v233 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v293 = &v233 - v23;
  v290 = sub_1001F1160(&qword_100AD9680, &qword_100816A18);
  __chkstk_darwin(v290);
  v291 = &v233 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v304 = &v233 - v26;
  v27 = sub_10079C104();
  v252 = *(v27 - 8);
  v253 = v27;
  __chkstk_darwin(v27);
  v251 = &v233 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1001F1160(&qword_100AD96D0, &qword_100816AF8);
  __chkstk_darwin(v29 - 8);
  v242 = (&v233 - v30);
  v241 = sub_1001F1160(&qword_100AD96D8, &qword_100816B00);
  __chkstk_darwin(v241);
  v244 = &v233 - v31;
  v243 = sub_1001F1160(&qword_100AD96E0, &qword_100816B08);
  __chkstk_darwin(v243);
  v282 = &v233 - v32;
  v245 = sub_1001F1160(&qword_100AD96E8, &qword_100816B10);
  __chkstk_darwin(v245);
  v246 = &v233 - v33;
  v247 = sub_1001F1160(&qword_100AD96F0, &qword_100816B18);
  __chkstk_darwin(v247);
  v250 = &v233 - v34;
  v295 = sub_1001F1160(&qword_100AD96F8, &qword_100816B20);
  v283 = *(v295 - 8);
  __chkstk_darwin(v295);
  v249 = &v233 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v248 = &v233 - v37;
  v289 = sub_1001F1160(&qword_100AD9678, &qword_100816A10);
  __chkstk_darwin(v289);
  v303 = &v233 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v306 = &v233 - v40;
  v41 = sub_1001F1160(&qword_100AD9700, &qword_100816B28);
  v277 = *(v41 - 8);
  v278 = v41;
  __chkstk_darwin(v41);
  v254 = (&v233 - v42);
  v288 = sub_1001F1160(&qword_100AD9670, &qword_100816A08);
  __chkstk_darwin(v288);
  v302 = &v233 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v310 = &v233 - v45;
  v280 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v280);
  v281 = (&v233 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v47);
  v285 = (&v233 - v48);
  sub_1001F1234(&qword_100AD9658, &qword_1008169F0);
  v262 = sub_10079C2A4();
  v265 = *(v262 - 8);
  __chkstk_darwin(v262);
  v260 = &v233 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v263 = &v233 - v51;
  sub_1001F1234(&qword_100AD9660, &qword_1008169F8);
  v267 = sub_10079C2A4();
  v269 = *(v267 - 8);
  __chkstk_darwin(v267);
  v264 = &v233 - v52;
  v268 = sub_10079C2A4();
  v270 = *(v268 - 8);
  __chkstk_darwin(v268);
  v266 = &v233 - v53;
  v54 = sub_10079C2A4();
  v276 = *(v54 - 8);
  __chkstk_darwin(v54);
  v261 = &v233 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v273 = &v233 - v57;
  v284 = v58;
  v59 = sub_10079C2A4();
  v274 = *(v59 - 8);
  __chkstk_darwin(v59);
  v272 = &v233 - v60;
  sub_1001F1234(&qword_100AD9668, &qword_100816A00);
  v275 = v59;
  v301 = sub_10079C2A4();
  v299 = *(v301 - 8);
  __chkstk_darwin(v301);
  v300 = &v233 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v271 = &v233 - v63;
  __chkstk_darwin(v64);
  v309 = &v233 - v65;
  v311 = v19;
  v66 = a1;
  v67 = sub_1002AAB94(v19);
  swift_getKeyPath();
  swift_getKeyPath();
  v68 = v67;
  sub_10079B9A4(&v356);

  v287 = v356;
  KeyPath = swift_getKeyPath();
  v69 = a8;
  v313 = a8;
  v70 = v305;
  v314 = v305;
  v315 = v66;
  v312 = v66;
  sub_10079E474();
  sub_1001F1160(&qword_100AD9708, &qword_100816BA8);
  sub_100005920(&qword_100AD9710, &qword_100AD9708, &qword_100816BA8, &protocol conformance descriptor for ZStack<A>);
  v71 = v260;
  v294 = v69;
  v72 = v70;
  sub_10079DBC4();
  *&v356 = 0;
  *(&v356 + 1) = 0xE000000000000000;
  sub_1007A3744(53);
  v366._countAndFlagsBits = 0x636142676E696F67;
  v366._object = 0xEB00000000203F6BLL;
  sub_1007A23D4(v366);
  if (v296)
  {
    v73._countAndFlagsBits = 1702195828;
  }

  else
  {
    v73._countAndFlagsBits = 0x65736C6166;
  }

  if (v296)
  {
    v74 = 0xE400000000000000;
  }

  else
  {
    v74 = 0xE500000000000000;
  }

  v73._object = v74;
  sub_1007A23D4(v73);

  v367._countAndFlagsBits = 0x66664F6576696C20;
  v367._object = 0xED0000203A746573;
  sub_1007A23D4(v367);
  v75 = v298;
  v76 = *v298;
  v368._countAndFlagsBits = sub_1007A27C4();
  sub_1007A23D4(v368);

  v369._countAndFlagsBits = 0x7974696361706F20;
  v369._object = 0xEB00000000203F20;
  sub_1007A23D4(v369);
  sub_1007A27D4();
  v370._countAndFlagsBits = 0x7865646E497A202ELL;
  v370._object = 0xEA0000000000203ALL;
  sub_1007A23D4(v370);
  v77 = v75[5];
  sub_1007A27D4();
  *(&v357 + 1) = &type metadata for String;
  v78 = sub_100005920(&qword_100AD9718, &qword_100AD9658, &qword_1008169F0, &protocol conformance descriptor for _OverlayModifier<A>);
  v353 = v72;
  v354 = v78;
  v259 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v79 = v262;
  WitnessTable = swift_getWitnessTable();
  v81 = v263;
  sub_1006DB15C(v79, v263);
  v82 = *(v265 + 8);
  v82(v71, v79);
  sub_1000074E0(&v356);
  LOBYTE(v356) = v308;
  *(&v356 + 1) = a11;
  LOBYTE(v357) = v307;
  *(&v357 + 1) = 0x3FC999999999999ALL;
  sub_10079E474();
  sub_1002AAF00();
  v83 = v264;
  sub_10079DBD4();
  v82(v81, v79);
  v84 = v312;
  v85 = sub_1002AAB94(v311);
  v86 = v298[4];
  v87 = v261;
  v88 = sub_100005920(&qword_100AD9728, &qword_100AD9660, &qword_1008169F8, &protocol conformance descriptor for _OverlayModifier<A>);
  v351 = WitnessTable;
  v352 = v88;
  v89 = v85;
  v90 = v267;
  v91 = swift_getWitnessTable();
  v92 = v266;
  sub_1004AF4BC(v89, v90, v91, a11, v86);

  (*(v269 + 8))(v83, v90);
  v93 = sub_1002AAF54();
  v349 = v91;
  v94 = v84;
  v350 = v93;
  v95 = v268;
  v96 = swift_getWitnessTable();
  v97 = v87;
  sub_10079DB64();
  (*(v270 + 8))(v92, v95);
  v98 = *(v94 + *(v311 + 52));
  swift_getKeyPath();
  *&v356 = v98;
  sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
  sub_100797A14();

  v99 = v285;
  sub_10079B904();
  LODWORD(v95) = sub_1003AD588();
  sub_1002AC4E8(v99, type metadata accessor for PageTurnViewModel.State);
  if (v95 == 3)
  {
    sub_10079DD64();
  }

  else
  {
    sub_10079DDC4();
  }

  v347 = v96;
  v348 = &protocol witness table for _OffsetEffect;
  v100 = v284;
  v101 = swift_getWitnessTable();
  v102 = v276;
  v103 = v273;
  (*(v276 + 16))(v273, v97, v100);

  v104 = *(v102 + 8);
  v104(v97, v100);
  v105 = v272;
  sub_10079DBB4();
  v104(v103, v100);
  v345 = v101;
  v346 = &protocol witness table for _OpacityEffect;
  v106 = v275;
  v107 = swift_getWitnessTable();
  v108 = v271;
  sub_10079DB84();
  (*(v274 + 8))(v105, v106);
  v109 = sub_100005920(&qword_100AD9738, &qword_100AD9668, &qword_100816A00, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v343 = v107;
  v344 = v109;
  v110 = v301;
  v284 = swift_getWitnessTable();
  sub_10039232C();
  v111 = *(v299 + 8);
  v298 = (v299 + 8);
  v285 = v111;
  v111(v108, v110);
  v112 = v310;
  v113 = v307;
  if (v279)
  {
    v114 = v308 & 1;
    v115 = v307 & 1;
    v279 = v279;
    v116 = v254;
    v117 = v311;
    sub_1002A8928(v279, v311, v254);
    v118 = sub_10079E474();
    v120 = v119;
    v121 = (v116 + *(sub_1001F1160(&qword_100AD9798, &qword_100816BD8) + 36));
    *v121 = v114;
    v121[1] = a11;
    *(v121 + 16) = v115;
    v121[3] = 0.2;
    *(v121 + 4) = v118;
    *(v121 + 5) = v120;
    v122 = sub_1002AAB94(v117);
    v123 = objc_opt_self();
    v124 = v122;
    v125 = [v123 currentTraitCollection];
    [v125 displayCornerRadius];
    v127 = v126;

    v113 = v307;
    v128 = (v116 + *(sub_1001F1160(&qword_100AD9788, &qword_100816BD0) + 36));
    *v128 = v124;
    v128[1] = a11;
    v128[2] = v86;
    v128[3] = 0.1;
    *(v128 + 4) = v127;
    v128[5] = 4.0;
    v129 = (v116 + *(sub_1001F1160(&qword_100AD9778, &qword_100816BC8) + 36));
    *v129 = v76;
    v129[1] = 0;
    sub_10079DDF4();

    *(v116 + *(sub_1001F1160(&qword_100AD9768, &qword_100816BC0) + 36)) = 0;
    v130 = v278;
    *(v116 + *(v278 + 36)) = v77;
    sub_10020B3C8(v116, v112, &qword_100AD9700, &qword_100816B28);
    v131 = 0;
  }

  else
  {
    v131 = 1;
    v130 = v278;
  }

  v132 = 1;
  (*(v277 + 56))(v112, v131, 1, v130);
  if (v113)
  {
    if (v308)
    {
      v133 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v133 = sub_10079DE54();
    }

    v134 = v242;
    v135 = v296;
    sub_1002A898C(v133, v311, v242);

    if (v135)
    {
      sub_1003AB370();
      v137 = v136 * *(v312 + *(v311 + 68));
    }

    else
    {
      v138 = *(v312 + *(v311 + 68));
      sub_1003AB370();
      v137 = v138 - v138 * v139;
    }

    v140 = v244;
    sub_10020B3C8(v134, v244, &qword_100AD96D0, &qword_100816AF8);
    *(v140 + *(v241 + 36)) = v137;
    v141 = sub_10079E474();
    v143 = v142;
    v144 = sub_10079C8F4();
    LOBYTE(v341) = 1;
    sub_1002A8AAC(v135 & 1, v294, v305, &v356);
    *(&v355[7] + 7) = v362;
    *(&v355[8] + 7) = v363;
    *(&v355[9] + 7) = v364;
    *(&v355[3] + 7) = v359;
    *(&v355[4] + 7) = v360;
    *(&v355[5] + 7) = v361[0];
    *(&v355[6] + 7) = v361[1];
    *(v355 + 7) = v356;
    *(&v355[1] + 7) = v357;
    *(&v355[10] + 7) = v365;
    *(&v355[2] + 7) = v358;
    v145 = v341;
    v146 = v140;
    v147 = v282;
    sub_10020B3C8(v146, v282, &qword_100AD96D8, &qword_100816B00);
    v148 = v147 + *(v243 + 36);
    v149 = v355[6];
    *(v148 + 145) = v355[7];
    v150 = v355[9];
    *(v148 + 161) = v355[8];
    *(v148 + 177) = v150;
    *(v148 + 192) = *(&v355[9] + 15);
    v151 = v355[2];
    *(v148 + 81) = v355[3];
    v152 = v355[5];
    *(v148 + 97) = v355[4];
    *(v148 + 113) = v152;
    *(v148 + 129) = v149;
    v153 = v355[1];
    *(v148 + 33) = v355[0];
    *(v148 + 49) = v153;
    *v148 = v141;
    *(v148 + 8) = v143;
    *(v148 + 16) = v144;
    *(v148 + 24) = 0;
    *(v148 + 32) = v145;
    *(v148 + 65) = v151;
    v154 = swift_getKeyPath();
    v155 = sub_1007A0CE4();
    v157 = v156;
    if (v155 == sub_1007A0CE4() && v157 == v158)
    {

      v159 = &enum case for LayoutDirection.rightToLeft(_:);
    }

    else
    {
      v160 = sub_1007A3AB4();

      v159 = &enum case for LayoutDirection.leftToRight(_:);
      if (v160)
      {
        v159 = &enum case for LayoutDirection.rightToLeft(_:);
      }
    }

    v162 = v251;
    v161 = v252;
    v163 = v253;
    (*(v252 + 104))(v251, *v159, v253);
    v164 = v246;
    v165 = &v246[*(v245 + 36)];
    v166 = sub_1001F1160(&qword_100ADBCE0, &qword_100816190);
    (*(v161 + 32))(v165 + *(v166 + 28), v162, v163);
    *v165 = v154;
    sub_10020B3C8(v282, v164, &qword_100AD96E0, &qword_100816B08);
    if (v135)
    {
      v167 = sub_1003AB730();
      v169 = v250;
      if (v168)
      {
        v170 = v167;
      }

      else
      {
        v170 = 0;
      }

      sub_10020B3C8(v164, v169, &qword_100AD96E8, &qword_100816B10);
      v172 = (v169 + *(v247 + 36));
      *v172 = v170;
      v172[1] = 0;
      sub_1003AB730();
      if (v173)
      {
        v77 = v174;
      }

      else
      {
        v77 = 0.0;
      }
    }

    else
    {
      v169 = v250;
      sub_10020B3C8(v164, v250, &qword_100AD96E8, &qword_100816B10);
      v171 = (v169 + *(v247 + 36));
      *v171 = v76;
      v171[1] = 0;
    }

    v175 = v249;
    sub_10020B3C8(v169, v249, &qword_100AD96F0, &qword_100816B18);
    *(v175 + *(v295 + 36)) = v77 + 1.0;
    v176 = v175;
    v177 = v248;
    sub_10020B3C8(v176, v248, &qword_100AD96F8, &qword_100816B20);
    sub_10020B3C8(v177, v306, &qword_100AD96F8, &qword_100816B20);
    v132 = 0;
  }

  (*(v283 + 56))(v306, v132, 1, v295);
  v178 = v281;
  sub_1002AC480(v297, v281, type metadata accessor for PageTurnViewModel.State);
  p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1002AC4E8(v178, type metadata accessor for PageTurnViewModel.State);
    v180 = sub_1003AB730();
    if (v181)
    {
      v183 = v182;
      v184 = v240;
      v185 = v181;
      sub_1002A8C04(v181, v311, v240, *&v180);
      *(v184 + *(sub_1001F1160(&qword_100AD9848, &qword_100816C10) + 36)) = v183;
      v186 = sub_10079D294();
      *(v184 + *(sub_1001F1160(&qword_100AD9838, &qword_100816C08) + 36)) = v186;
      *(v184 + *(v258 + 36)) = 0;
      sub_10079DDF4();

      sub_1000077D8(v184, v257, &qword_100AD96B0, &qword_100816AD8);
      swift_storeEnumTagMultiPayload();
      sub_100005920(&qword_100AD9820, &qword_100AD96C0, &qword_100816AE8, &protocol conformance descriptor for TupleView<A>);
      sub_1002ABAD8();
      v187 = v304;
      p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
      sub_10079CCA4();

      sub_100007840(v184, &qword_100AD96B0, &qword_100816AD8);
      v188 = sub_1001F1160(&qword_100AD9740, &unk_100816BB0);
      (*(*(v188 - 8) + 56))(v187, 0, 1, v188);
    }

    else
    {
      v203 = sub_1001F1160(&qword_100AD9740, &unk_100816BB0);
      (*(*(v203 - 8) + 56))(v304, 1, 1, v203);
    }

    v204 = v310;
  }

  else
  {
    v189 = *v178;
    v190 = v293;
    v191 = *v178;
    v192 = v311;
    v193 = v312;
    sub_1002A8C04(v191, v311, v293, 0.0);
    v194 = *(sub_1001F1160(&qword_100AD98B0, &qword_100816C48) + 52);
    v307 = v189;
    *(v190 + v194) = v189;
    *(v190 + *(sub_1001F1160(&qword_100AD98B8, &qword_100816C50) + 36)) = 0x4014000000000000;
    sub_10079DE14();

    v196 = v236;
    v195 = v237;
    (*(v237 + 16))(v236, v193, v192);
    v197 = (*(v195 + 80) + 32) & ~*(v195 + 80);
    v198 = swift_allocObject();
    v199 = v305;
    *(v198 + 16) = v294;
    *(v198 + 24) = v199;
    (*(v195 + 32))(v198 + v197, v196, v192);
    v200 = (v190 + *(v234 + 36));
    *v200 = sub_1002ABF54;
    v200[1] = v198;
    v200[2] = 0;
    v200[3] = 0;
    if (qword_100AD1398 != -1)
    {
      swift_once();
    }

    if (byte_100B22FA8 == 1)
    {
      v201 = sub_10079DE54();
      v202 = swift_getKeyPath();
      sub_10079E474();
      sub_10079C414();
      *&v341 = v202;
      *(&v341 + 1) = v201;
      *&v342[7] = 0x4018000000000000;
      BKAppDelegate.enableMetricsInspectorOnDebugMode()();
      v361[1] = v342[5];
      v362 = v342[6];
      *&v363 = *&v342[7];
      v358 = v342[1];
      v359 = v342[2];
      v361[0] = v342[4];
      v360 = v342[3];
      v357 = v342[0];
      v356 = v341;
    }

    else
    {
      sub_1002ABF6C(&v356);
    }

    v205 = v238;
    sub_1000077D8(v293, v238, &qword_100AD96C8, &qword_100816AF0);
    v322[1] = v361[1];
    v323 = v362;
    v324 = v363;
    v319 = v358;
    v320 = v359;
    v321 = v360;
    v322[0] = v361[0];
    v317 = v356;
    v318 = v357;
    v206 = v239;
    sub_1000077D8(v205, v239, &qword_100AD96C8, &qword_100816AF0);
    v207 = v206 + *(sub_1001F1160(&qword_100AD98C0, &qword_100816C58) + 48);
    v337[1] = v322[1];
    v338 = v323;
    v337[0] = v322[0];
    v336 = v321;
    v208 = v319;
    v335 = v320;
    v334 = v319;
    v209 = v317;
    v333 = v318;
    v332 = v317;
    v211 = v322[1];
    v210 = v323;
    v212 = v323;
    *(v207 + 96) = v322[1];
    *(v207 + 112) = v210;
    v213 = v320;
    v214 = v321;
    v215 = v320;
    v216 = v321;
    *(v207 + 32) = v208;
    *(v207 + 48) = v213;
    v217 = v322[0];
    v218 = v322[0];
    *(v207 + 64) = v214;
    *(v207 + 80) = v217;
    v219 = v318;
    v220 = v319;
    v221 = v318;
    *v207 = v317;
    *(v207 + 16) = v219;
    v342[5] = v211;
    v342[6] = v212;
    v342[1] = v220;
    v342[2] = v215;
    v342[4] = v218;
    v342[3] = v216;
    *&v339 = v324;
    *(v207 + 128) = v324;
    *&v342[7] = v324;
    v342[0] = v221;
    v341 = v209;
    sub_1000077D8(&v356, v316, &qword_100AD98C8, &qword_100816C60);
    sub_1000077D8(&v332, v316, &qword_100AD98C8, &qword_100816C60);
    sub_100007840(&v341, &qword_100AD98C8, &qword_100816C60);
    sub_100007840(v205, &qword_100AD96C8, &qword_100816AF0);
    sub_1000077D8(v206, v257, &qword_100AD96C0, &qword_100816AE8);
    swift_storeEnumTagMultiPayload();
    sub_100005920(&qword_100AD9820, &qword_100AD96C0, &qword_100816AE8, &protocol conformance descriptor for TupleView<A>);
    sub_1002ABAD8();
    v222 = v304;
    sub_10079CCA4();
    sub_100007840(&v356, &qword_100AD98C8, &qword_100816C60);

    sub_100007840(v206, &qword_100AD96C0, &qword_100816AE8);
    sub_100007840(v293, &qword_100AD96C8, &qword_100816AF0);
    v223 = sub_1001F1160(&qword_100AD9740, &unk_100816BB0);
    (*(*(v223 - 8) + 56))(v222, 0, 1, v223);
    v204 = v310;
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
  }

  if (p_inst_props[115] != -1)
  {
    swift_once();
  }

  if (byte_100B22FA8 == 1)
  {
    v224 = sub_10079CB24();
    LOBYTE(v316[0]) = 1;
    sub_1002A9658(v297, v312, v308 & 1, v294, v305, &v356);
    v321 = v360;
    v322[0] = v361[0];
    *(v322 + 9) = *(v361 + 9);
    v317 = v356;
    v318 = v357;
    v319 = v358;
    v320 = v359;
    v333 = v357;
    v332 = v356;
    v334 = v358;
    v335 = v359;
    v336 = v360;
    v337[0] = v361[0];
    *(v337 + 9) = *(v361 + 9);
    sub_1000077D8(&v317, &v341, &qword_100AD98A8, &qword_100816C40);
    sub_100007840(&v332, &qword_100AD98A8, &qword_100816C40);
    *(&v325[3] + 7) = v320;
    *(&v325[4] + 7) = v321;
    *(&v325[5] + 7) = v322[0];
    v325[6] = *(v322 + 9);
    *(v325 + 7) = v317;
    *(&v325[1] + 7) = v318;
    *(&v325[2] + 7) = v319;
    v341 = v224;
    LOBYTE(v342[0]) = v316[0];
    *(&v342[2] + 1) = v325[2];
    *(&v342[1] + 1) = v325[1];
    *(v342 + 1) = v325[0];
    *(&v342[6] + 1) = *(v322 + 9);
    *(&v342[5] + 1) = v325[5];
    *(&v342[4] + 1) = v325[4];
    *(&v342[3] + 1) = v325[3];
    *(&v342[7] + 1) = 0x4018000000000000;
    BKAppDelegate.enableMetricsInspectorOnDebugMode()();
    v361[1] = v342[5];
    v362 = v342[6];
    v363 = v342[7];
    v358 = v342[1];
    v359 = v342[2];
    v361[0] = v342[4];
    v360 = v342[3];
    v357 = v342[0];
    v356 = v341;
  }

  else
  {
    sub_1002AAFA8(&v356);
  }

  v340[0] = KeyPath;
  v340[1] = v287;
  *&v317 = v340;
  v225 = v300;
  v226 = v301;
  (*(v299 + 16))(v300, v309, v301);
  *(&v317 + 1) = v225;
  v227 = v302;
  sub_1000077D8(v204, v302, &qword_100AD9670, &qword_100816A08);
  *&v318 = v227;
  v228 = v306;
  v229 = v303;
  sub_1000077D8(v306, v303, &qword_100AD9678, &qword_100816A10);
  *(&v318 + 1) = v229;
  v230 = v304;
  v231 = v291;
  sub_1000077D8(v304, v291, &qword_100AD9680, &qword_100816A18);
  v337[1] = v361[1];
  v338 = v362;
  v339 = v363;
  v334 = v358;
  v335 = v359;
  v337[0] = v361[0];
  v336 = v360;
  v333 = v357;
  v332 = v356;
  *&v319 = v231;
  *(&v319 + 1) = &v332;

  sub_1000077D8(&v356, &v341, &qword_100AD9688, &unk_100816A20);
  v316[0] = sub_1001F1160(&unk_100ADB470, &qword_100839340);
  v316[1] = v226;
  v316[2] = v288;
  v316[3] = v289;
  v316[4] = v290;
  v316[5] = sub_1001F1160(&qword_100AD9688, &unk_100816A20);
  v326 = sub_1002AAFC4();
  v327 = v284;
  v328 = sub_1002AB0D0();
  v329 = sub_1002AB494();
  v330 = sub_1002AB99C();
  v331 = sub_1002ABDEC();
  sub_10038FA94(&v317, 6uLL, v316);
  sub_100007840(&v356, &qword_100AD9688, &unk_100816A20);

  sub_100007840(v230, &qword_100AD9680, &qword_100816A18);
  sub_100007840(v228, &qword_100AD9678, &qword_100816A10);
  sub_100007840(v310, &qword_100AD9670, &qword_100816A08);
  v232 = v285;
  v285(v309, v226);
  v342[5] = v337[1];
  v342[6] = v338;
  v342[7] = v339;
  v342[1] = v334;
  v342[2] = v335;
  v342[4] = v337[0];
  v342[3] = v336;
  v342[0] = v333;
  v341 = v332;
  sub_100007840(&v341, &qword_100AD9688, &unk_100816A20);
  sub_100007840(v231, &qword_100AD9680, &qword_100816A18);
  sub_100007840(v303, &qword_100AD9678, &qword_100816A10);
  sub_100007840(v302, &qword_100AD9670, &qword_100816A08);
  v232(v300, v226);
}

uint64_t sub_1002A832C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_10079E454();
  a4[1] = v8;
  v9 = sub_1001F1160(&qword_100AD98F8, &qword_100816D10);
  return sub_1002A8394(a1, a2, a3, a4 + *(v9 + 44));
}

uint64_t sub_1002A8394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1001F1160(&qword_100AD98D8, &qword_100816CA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44[-v9];
  v11 = sub_1001F1160(&qword_100AD9900, &qword_100816D18);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v53 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v44[-v15];
  __chkstk_darwin(v17);
  v54 = &v44[-v18];
  v20 = type metadata accessor for PageTurnView(0, a2, a3, v19);
  v21 = sub_1002AAB94(v20);
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v21;
  sub_10079B9A4(v60);

  sub_1002AC320();
  v52 = sub_10079DEB4();
  v23 = *(a1 + *(v20 + 48));
  v24 = *(v23 + 56);
  ObjectType = swift_getObjectType();
  (*(v24 + 8))(ObjectType, v24);
  sub_10079E474();
  sub_10079BE54();
  v51 = v68;
  LOBYTE(v22) = v69;
  v50 = v70;
  LOBYTE(v24) = v71;
  v49 = v72;
  v48 = v73;
  v47 = sub_10079D2A4();
  v75 = v22;
  v74 = v24;
  swift_getKeyPath();
  v60[0] = v23;
  sub_1002AC374(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v26 = *(v23 + OBJC_IVAR____TtC5Books19BookReaderViewModel__statusBarBackgroundOpacity);
  v27 = v75;
  v45 = v75;
  v28 = v74;
  v46 = v74;
  sub_1002B6F38(3, 1, v10);
  v29 = *(a1 + *(v20 + 52));
  swift_getKeyPath();
  v60[0] = v29;
  sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
  sub_100797A14();

  if (*(v29 + 17))
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  sub_10020B3C8(v10, v16, &qword_100AD98D8, &qword_100816CA0);
  *&v16[*(v12 + 44)] = v30;
  v31 = v54;
  sub_10020B3C8(v16, v54, &qword_100AD9900, &qword_100816D18);
  v32 = v31;
  v33 = v53;
  sub_1000077D8(v32, v53, &qword_100AD9900, &qword_100816D18);
  v34 = v52;
  *&v55 = v52;
  v35 = v51;
  *(&v55 + 1) = v51;
  LOBYTE(v56) = v27;
  v36 = v50;
  *(&v56 + 1) = v50;
  LOBYTE(v57) = v28;
  v37 = v49;
  *(&v57 + 1) = v49;
  v38 = v48;
  *&v58 = v48;
  v39 = v47;
  BYTE8(v58) = v47;
  v59 = v26;
  v40 = v58;
  *(a4 + 32) = v57;
  *(a4 + 48) = v40;
  *(a4 + 64) = v59;
  v41 = v56;
  *a4 = v55;
  *(a4 + 16) = v41;
  v42 = a4 + *(sub_1001F1160(&qword_100AD9910, &qword_100816D70) + 48);
  sub_1000077D8(v33, v42, &qword_100AD9900, &qword_100816D18);
  sub_1000077D8(&v55, v60, &qword_100AD9918, &qword_100816D78);
  sub_100007840(v54, &qword_100AD9900, &qword_100816D18);
  sub_100007840(v33, &qword_100AD9900, &qword_100816D18);
  v60[0] = v34;
  v60[1] = v35;
  v61 = v45;
  v62 = v36;
  v63 = v46;
  v64 = v37;
  v65 = v38;
  v66 = v39;
  v67 = v26;
  return sub_100007840(v60, &qword_100AD9918, &qword_100816D78);
}

uint64_t sub_1002A8928@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_10079E464();
  a3[1] = v7;
  v8 = sub_1001F1160(&qword_100AD98D0, &qword_100816C98);
  return sub_1002AA26C(v3, a1, *(a2 + 16), *(a2 + 24), a3 + *(v8 + 44));
}

uint64_t sub_1002A898C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = *(v3 + *(a2 + 80));
  v9 = a3 + *(sub_1001F1160(&qword_100AD97F0, &qword_100816BE8) + 36);
  v10 = *(sub_10079C3D4() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_10079C9E4();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = v8;
  *(v9 + 1) = v8;
  *&v9[*(sub_1001F1160(&qword_100AD97F8, &qword_100816BF0) + 36)] = 256;
  *a3 = KeyPath;
  a3[1] = a1;
  *(a3 + *(sub_1001F1160(&qword_100AD96D0, &qword_100816AF8) + 36)) = 0;
}

double sub_1002A8AAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if ((a1 & 1) == 0)
  {
    type metadata accessor for PageTurnView(0, a2, a3, a3);
    sub_1003AB370();
  }

  sub_10079E474();
  sub_10079BE54();
  sub_10079E474();
  sub_10079C414();
  *(a4 + 104) = v9;
  *(a4 + 120) = v10;
  *(a4 + 136) = v11;
  *(a4 + 152) = v12;
  result = *&v6;
  *(a4 + 56) = v6;
  *(a4 + 72) = v7;
  *a4 = v13;
  *(a4 + 8) = v14;
  *(a4 + 16) = v15;
  *(a4 + 24) = v16;
  *(a4 + 32) = v17;
  *(a4 + 40) = v18;
  *(a4 + 48) = 0;
  *(a4 + 88) = v8;
  return result;
}

uint64_t sub_1002A8C04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v79 = a3;
  v8 = sub_1001F1160(&qword_100AD96D0, &qword_100816AF8);
  __chkstk_darwin(v8 - 8);
  v82 = (v70 - v9);
  v78 = sub_1001F1160(&qword_100AD96D8, &qword_100816B00);
  __chkstk_darwin(v78);
  v77 = v70 - v10;
  v11 = sub_10079BC44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v70 - v16;
  v18 = sub_1001F1160(&qword_100AD9798, &qword_100816BD8);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = (v70 - v20);
  v70[0] = v70 - v20;
  v73 = sub_1001F1160(&qword_100AD9788, &qword_100816BD0) - 8;
  __chkstk_darwin(v73);
  v81 = v70 - v22;
  v75 = sub_1001F1160(&qword_100AD9868, &qword_100816C20);
  __chkstk_darwin(v75);
  v76 = v70 - v23;
  v83 = a2;
  sub_1002A8928(a1, a2, v21);
  v24 = v4;
  v25 = sub_1002AAB94(a2);
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v25;
  sub_10079B9A4(v17);

  v74 = enum case for ColorScheme.dark(_:);
  v72 = *(v12 + 104);
  v80 = v12 + 104;
  v72(v14);
  LOBYTE(a2) = sub_10079BC34();
  v27 = v12 + 8;
  v28 = *(v12 + 8);
  v70[1] = v27;
  v71 = v28;
  v28(v14, v11);
  v29 = v11;
  v28(v17, v11);
  v30 = v83;
  sub_1003AB370();
  v32 = v31;
  v33 = sub_10079E474();
  v34 = *(v19 + 44);
  v35 = v70[0];
  v36 = v70[0] + v34;
  *v36 = a2 & 1;
  *(v36 + 8) = v32;
  *(v36 + 16) = 1;
  *(v36 + 24) = 0x3FC999999999999ALL;
  *(v36 + 32) = v33;
  *(v36 + 40) = v37;
  v38 = sub_1002AAB94(v30);
  v39 = v24;
  sub_1003AB370();
  v41 = v40;
  v42 = *(v30 + 76);
  if (a4 >= 0.0)
  {
    v43 = -*(v24 + v42);
  }

  else
  {
    v43 = *(v24 + v42);
  }

  v44 = [objc_opt_self() currentTraitCollection];
  [v44 displayCornerRadius];
  v46 = v45;

  v47 = v81;
  sub_10020B3C8(v35, v81, &qword_100AD9798, &qword_100816BD8);
  v48 = v47 + *(v73 + 44);
  *v48 = v38;
  *(v48 + 8) = v41;
  *(v48 + 16) = v43;
  *(v48 + 24) = 0x3FB999999999999ALL;
  *(v48 + 32) = v46;
  *(v48 + 40) = 0x4010000000000000;
  v49 = sub_1002AAB94(v30);
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v49;
  sub_10079B9A4(v17);

  v51 = v72;
  (v72)(v14, enum case for ColorScheme.light(_:), v29);
  sub_10079BC34();
  v52 = v71;
  v71(v14, v29);
  v52(v17, v29);
  v53 = sub_10079DE54();

  v54 = v83;
  sub_1002A898C(v53, v83, v82);

  v73 = v39;
  v55 = sub_1002AAB94(v54);
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = v55;
  sub_10079B9A4(v17);

  (v51)(v14, v74, v29);
  LOBYTE(v56) = sub_10079BC34();
  v52(v14, v29);
  v52(v17, v29);
  v57 = 0.0;
  if (v56)
  {
    v58 = *(v73 + *(v83 + 72));
    sub_1003AB370();
    v57 = v58 * (1.0 - pow(1.0 - v59, 3.0));
  }

  v60 = v77;
  sub_10020B3C8(v82, v77, &qword_100AD96D0, &qword_100816AF8);
  *(v60 + *(v78 + 36)) = v57;
  v61 = sub_10079E474();
  v63 = v62;
  v64 = v76;
  v65 = &v76[*(v75 + 36)];
  sub_10020B3C8(v60, v65, &qword_100AD96D8, &qword_100816B00);
  v66 = (v65 + *(sub_1001F1160(&qword_100AD9878, &qword_100816C28) + 36));
  *v66 = v61;
  v66[1] = v63;
  sub_10020B3C8(v81, v64, &qword_100AD9788, &qword_100816BD0);
  v67 = v79;
  sub_10020B3C8(v64, v79, &qword_100AD9868, &qword_100816C20);
  result = sub_1001F1160(&qword_100AD9858, &qword_100816C18);
  v69 = v67 + *(result + 36);
  *v69 = a4;
  *(v69 + 8) = 0;
  return result;
}

double sub_1002A9370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PageTurnView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  if (qword_100AD1560 != -1)
  {
    swift_once();
  }

  v11 = qword_100B232E0;
  (*(v8 + 16))(v10, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v10, v7);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1002AC208;
  *(v14 + 24) = v13;
  swift_beginAccess();
  v15 = *(v11 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 24) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_10066ABC0(0, v15[2] + 1, 1, v15);
    *(v11 + 24) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_10066ABC0((v17 > 1), v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  v19 = &v15[2 * v18];
  v19[4] = sub_10025D79C;
  v19[5] = v14;
  *(v11 + 24) = v15;
  swift_endAccess();
  sub_1003FB6F0();

  return result;
}

uint64_t sub_1002A95C8(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(*(*(result + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor) + 176) + 16);
    v5 = *(v2 + 88);
    v3 = (v2 + 88);
    v4 = v5;
    if (v5)
    {
      v6 = *(*(*(*(result + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor) + 176) + 16) + 96);
      *v3 = 0;
      v3[1] = 0;
      v4();
      sub_100007020(v4, v6);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002A9658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v10 = type metadata accessor for PageTurnViewModel.State.Active(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079E474();
  sub_10079BE54();
  v16 = v50;
  v17 = v52;
  v45 = v55;
  v46 = v54;
  v58 = 1;
  v57 = v51;
  v56 = v53;
  v48 = 0x203A6574617453;
  v49 = 0xE700000000000000;
  sub_1002AC480(a1, v15, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1002AC2B8(v15, v12, type metadata accessor for PageTurnViewModel.State.Active);
      v19 = sub_1003ACF98();
      v21 = v20;
      sub_1002AC4E8(v12, type metadata accessor for PageTurnViewModel.State.Active);
      v22._countAndFlagsBits = v19;
    }

    else
    {
      v21 = 0xE400000000000000;
      v22._countAndFlagsBits = 1701602409;
    }
  }

  else
  {
    sub_1002AC4E8(v15, type metadata accessor for PageTurnViewModel.State);
    v21 = 0xE900000000000067;
    v22._countAndFlagsBits = 0x6E69726170657270;
  }

  v23 = v16;
  v24 = v17;
  v25 = v44;
  v22._object = v21;
  sub_1007A23D4(v22);

  v59._countAndFlagsBits = 8238;
  v59._object = 0xE200000000000000;
  sub_1007A23D4(v59);
  v27 = *(a2 + *(type metadata accessor for PageTurnView(0, v43, v25, v26) + 52));
  swift_getKeyPath();
  v47 = v27;
  sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
  sub_100797A14();

  v28 = *(v27 + 64);
  v29 = *(v27 + 72);

  v60._countAndFlagsBits = v28;
  v60._object = v29;
  sub_1007A23D4(v60);

  if (a3)
  {
    _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v30 = sub_10079D564();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = v58;
  v38 = v57;
  v39 = v56;
  LOBYTE(v48) = v34 & 1;
  LOBYTE(v47) = 1;
  *a6 = 0;
  *(a6 + 8) = v37;
  *(a6 + 16) = v23;
  *(a6 + 24) = v38;
  *(a6 + 32) = v24;
  *(a6 + 40) = v39;
  v40 = v45;
  *(a6 + 48) = v46;
  *(a6 + 56) = v40;
  *(a6 + 64) = v30;
  *(a6 + 72) = v32;
  *(a6 + 80) = v34 & 1;
  *(a6 + 88) = v36;
  *(a6 + 96) = 0;
  *(a6 + 104) = 1;
  sub_1001F1894(v30, v32, v34 & 1);

  sub_10020B430(v30, v32, v34 & 1);
}

uint64_t sub_1002A9A18(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v13 = qword_100B23750;
  sub_10079ACF4();
  v14 = sub_10079ACC4();
  v15 = sub_1007A2994();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v9;
    v17 = v16;
    v28 = swift_slowAlloc();
    v31 = v28;
    *v17 = 136315138;
    v30 = v12;
    sub_1001F1160(&qword_100AD9698, &qword_100816AD0);
    v18 = sub_1007A22E4();
    v20 = sub_1000070F4(v18, v19, &v31);
    v27 = v8;
    v21 = v20;

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "animate state change %s", v17, 0xCu);
    sub_1000074E0(v28);

    result = (*(v29 + 8))(v11, v27);
    if (v12 != 2)
    {
      goto LABEL_5;
    }

LABEL_8:
    v25 = type metadata accessor for PageTurnView(0, a4, a5, v23);
    return sub_1002AA0C8(v25);
  }

  result = (*(v9 + 8))(v11, v8);
  if (v12 == 2)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v12)
  {
    v24 = type metadata accessor for PageTurnView(0, a4, a5, v23);
    return sub_1002A9CB0(v24);
  }

  return result;
}

uint64_t sub_1002A9CB0(uint64_t a1)
{
  v3 = sub_1001F1160(&qword_100AD8A78, &unk_100815DE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s5StateO4TurnVMa(0);
  v23 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = v1;
  v12 = *(v1 + *(a1 + 52));
  swift_getKeyPath();
  v26 = v12;
  sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
  sub_100797A14();

  v13 = sub_10079FE94();
  v15 = v14;
  if (v13 == sub_10079FE94() && v15 == v16)
  {

    goto LABEL_9;
  }

  v18 = sub_1007A3AB4();

  if (v18)
  {
LABEL_9:
    sub_1003AC128();
    v19 = sub_10079E524();
    goto LABEL_13;
  }

  swift_getKeyPath();
  v26 = v12;
  sub_100797A14();

  sub_10079B904();
  sub_1003AB0E8(v5);
  sub_1002AC4E8(v8, type metadata accessor for PageTurnViewModel.State);
  if ((*(v23 + 48))(v5, 1, v9) == 1)
  {
    sub_100007840(v5, &qword_100AD8A78, &unk_100815DE0);
  }

  else
  {
    sub_1002AC2B8(v5, v11, _s5StateO4TurnVMa);
    if (*&v11[*(v9 + 36)] != 0.0)
    {
      sub_10079E504();
      v19 = sub_1002AC4E8(v11, _s5StateO4TurnVMa);
      goto LABEL_13;
    }

    sub_1002AC4E8(v11, _s5StateO4TurnVMa);
  }

  v19 = sub_10079E4C4();
LABEL_13:
  __chkstk_darwin(v19);
  v20 = v25;
  *(&v22 - 2) = *(v24 + 16);
  *(&v22 - 2) = v20;

  sub_10079BF94();
}

uint64_t sub_1002AA0C8(uint64_t a1)
{
  swift_getKeyPath();
  sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
  sub_100797A14();

  v1 = sub_10079FE94();
  v3 = v2;
  if (v1 == sub_10079FE94() && v3 == v4)
  {

    goto LABEL_8;
  }

  v6 = sub_1007A3AB4();

  if (v6)
  {
LABEL_8:
    sub_1003AC128();
    v7 = sub_10079E524();
    goto LABEL_9;
  }

  v7 = sub_10079E504();
LABEL_9:
  __chkstk_darwin(v7);

  sub_10079BF94();
}

uint64_t sub_1002AA26C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a2;
  v67 = a5;
  v8 = sub_1001F1160(&qword_100AD98D8, &qword_100816CA0);
  __chkstk_darwin(v8 - 8);
  v66 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v72 = &v57[-v11];
  v12 = sub_1001F1160(&qword_100AD98E0, &qword_100816CA8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v71 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v57[-v16];
  __chkstk_darwin(v18);
  v20 = &v57[-v19];
  v22 = type metadata accessor for PageTurnView(0, a3, a4, v21);
  v63 = a1;
  v23 = sub_1002AAB94(v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v23;
  sub_10079B9A4(v74);

  v25 = *&v74[0];
  KeyPath = swift_getKeyPath();
  sub_10079E474();
  sub_10079C414();
  v27 = sub_10079D294();
  v28 = *(a1 + *(v22 + 80));
  v29 = &v17[*(v13 + 44)];
  v30 = *(sub_10079C3D4() + 20);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = sub_10079C9E4();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  *v29 = v28;
  *(v29 + 1) = v28;
  *&v29[*(sub_1001F1160(&qword_100AD97F8, &qword_100816BF0) + 36)] = 256;
  *v17 = KeyPath;
  *(v17 + 1) = v25;
  v33 = v74[5];
  *(v17 + 5) = v74[4];
  *(v17 + 6) = v33;
  *(v17 + 7) = v74[6];
  v34 = v74[1];
  *(v17 + 1) = v74[0];
  *(v17 + 2) = v34;
  v35 = v74[3];
  *(v17 + 3) = v74[2];
  *(v17 + 4) = v35;
  v17[128] = v27;
  v36 = v20;
  v61 = v20;
  sub_10020B3C8(v17, v20, &qword_100AD98E0, &qword_100816CA8);
  v37 = v70;
  [v70 frame];
  [v37 frame];
  sub_10079E474();
  sub_10079BE54();
  v60 = v105;
  v68 = v106;
  v69 = v104;
  v62 = v107;
  v64 = v109;
  v65 = v108;
  LOBYTE(v80) = v105;
  v73 = v107;
  v38 = *(v63 + *(v22 + 52));
  swift_getKeyPath();
  v86[0] = v38;
  sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
  v39 = v37;
  v40 = v37;
  sub_100797A14();

  v59 = *(v38 + 40);
  v41 = v59;
  v42 = sub_10079D294();
  LOBYTE(v37) = v42;
  v58 = v42;
  LOBYTE(v86[0]) = 0;
  v43 = v72;
  sub_1002B6F38(35, 1, v72);
  v44 = v71;
  sub_1000077D8(v36, v71, &qword_100AD98E0, &qword_100816CA8);
  v45 = v43;
  v46 = v66;
  sub_1000077D8(v45, v66, &qword_100AD98D8, &qword_100816CA0);
  v47 = v44;
  v48 = v67;
  sub_1000077D8(v47, v67, &qword_100AD98E0, &qword_100816CA8);
  v49 = sub_1001F1160(&qword_100AD98E8, &qword_100816CD8);
  v50 = (v48 + *(v49 + 48));
  *&v80 = v40;
  *(&v80 + 1) = v69;
  LOBYTE(v40) = v60;
  LOBYTE(v81) = v60;
  *(&v81 + 1) = *v76;
  DWORD1(v81) = *&v76[3];
  *(&v81 + 1) = v68;
  LOBYTE(v38) = v62;
  LOBYTE(v82) = v62;
  *(&v82 + 1) = *v75;
  DWORD1(v82) = *&v75[3];
  v52 = v64;
  v51 = v65;
  *(&v82 + 1) = v65;
  *&v83 = v64;
  WORD4(v83) = 257;
  *(&v83 + 10) = v78;
  HIWORD(v83) = v79;
  LOBYTE(v84) = v37;
  DWORD1(v84) = *&v77[3];
  *(&v84 + 1) = *v77;
  *(&v84 + 1) = 0;
  *&v85[0] = 0;
  *(&v85[0] + 1) = v41;
  *&v85[1] = 0;
  BYTE8(v85[1]) = 0;
  v53 = v81;
  *v50 = v80;
  v50[1] = v53;
  v54 = v83;
  v50[2] = v82;
  v50[3] = v54;
  *(v50 + 89) = *(v85 + 9);
  v55 = v85[0];
  v50[4] = v84;
  v50[5] = v55;
  sub_1000077D8(v46, v48 + *(v49 + 64), &qword_100AD98D8, &qword_100816CA0);
  sub_1000077D8(&v80, v86, &qword_100AD98F0, &qword_100816CE0);
  sub_100007840(v72, &qword_100AD98D8, &qword_100816CA0);
  sub_100007840(v61, &qword_100AD98E0, &qword_100816CA8);
  sub_100007840(v46, &qword_100AD98D8, &qword_100816CA0);
  v86[0] = v70;
  v86[1] = v69;
  v87 = v40;
  *v88 = *v76;
  *&v88[3] = *&v76[3];
  v89 = v68;
  v90 = v38;
  *v91 = *v75;
  *&v91[3] = *&v75[3];
  v92 = v51;
  v93 = v52;
  v94 = 257;
  v96 = v79;
  v95 = v78;
  v97 = v58;
  *&v98[3] = *&v77[3];
  *v98 = *v77;
  v99 = 0;
  v100 = 0;
  v101 = v59;
  v102 = 0;
  v103 = 0;
  sub_100007840(v86, &qword_100AD98F0, &qword_100816CE0);
  return sub_100007840(v71, &qword_100AD98E0, &qword_100816CA8);
}

uint64_t sub_1002AA944@<X0>(uint64_t a3@<X8>)
{
  v6 = sub_10079C3D4();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_opt_self() currentTraitCollection];
  [v10 displayCornerRadius];
  v12 = v11;

  v13 = *(v7 + 28);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = sub_10079C9E4();
  (*(*(v15 - 8) + 104))(&v9[v13], v14, v15);
  *v9 = v12;
  *(v9 + 1) = v12;
  _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v16 = sub_10079DE24();

  sub_10079BCF4();
  sub_1002AC480(v9, a3, &type metadata accessor for RoundedRectangle);
  v17 = a3 + *(sub_1001F1160(&qword_100AD9920, &qword_100816E08) + 36);
  v18 = v26;
  *v17 = *&v25[8];
  *(v17 + 16) = v18;
  *(v17 + 32) = v27;
  v19 = sub_1001F1160(&qword_100AD9928, &qword_100816E10);
  *(a3 + *(v19 + 52)) = v16;
  *(a3 + *(v19 + 56)) = 256;
  v20 = sub_10079E474();
  v22 = v21;
  sub_1002AC4E8(v9, &type metadata accessor for RoundedRectangle);
  result = sub_1001F1160(&qword_100AD9930, &qword_100816E18);
  v24 = (a3 + *(result + 36));
  *v24 = v20;
  v24[1] = v22;
  return result;
}

uint64_t sub_1002AAB94(uint64_t a1)
{
  result = *(v1 + *(a1 + 56));
  if (!result)
  {
    type metadata accessor for ChromeStyle(0);
    sub_1002AC374(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002AAC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PageTurnView(0, *(v4 + 16), *(v4 + 24), a4);
  sub_10079BD54();
  return sub_10079BD24();
}

uint64_t sub_1002AACF8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for PageTurnView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1002A9A18(a1, a2, v10, v7, v8);
}

unint64_t sub_1002AAD94()
{
  result = qword_100AD96A0;
  if (!qword_100AD96A0)
  {
    sub_1001F1234(&qword_100AD9698, &qword_100816AD0);
    sub_1002AAE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD96A0);
  }

  return result;
}

unint64_t sub_1002AAE18()
{
  result = qword_100AD96A8;
  if (!qword_100AD96A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD96A8);
  }

  return result;
}

uint64_t sub_1002AAEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  type metadata accessor for PageTurnView(0, *(v4 + 16), *(v4 + 24), a4);
  return sub_1003ADD78(v5);
}

unint64_t sub_1002AAF00()
{
  result = qword_100AD9720;
  if (!qword_100AD9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9720);
  }

  return result;
}

unint64_t sub_1002AAF54()
{
  result = qword_100AD9730;
  if (!qword_100AD9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9730);
  }

  return result;
}

double sub_1002AAFA8(_OWORD *a1)
{
  result = 0.0;
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

unint64_t sub_1002AAFC4()
{
  result = qword_100AD9748;
  if (!qword_100AD9748)
  {
    sub_1001F1234(&unk_100ADB470, &qword_100839340);
    sub_1002AB07C();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9748);
  }

  return result;
}

unint64_t sub_1002AB07C()
{
  result = qword_100ADB480;
  if (!qword_100ADB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB480);
  }

  return result;
}

unint64_t sub_1002AB0D0()
{
  result = qword_100AD9750;
  if (!qword_100AD9750)
  {
    sub_1001F1234(&qword_100AD9670, &qword_100816A08);
    sub_1002AB154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9750);
  }

  return result;
}

unint64_t sub_1002AB154()
{
  result = qword_100AD9758;
  if (!qword_100AD9758)
  {
    sub_1001F1234(&qword_100AD9700, &qword_100816B28);
    sub_1002AB20C();
    sub_100005920(&qword_100AD9738, &qword_100AD9668, &qword_100816A00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9758);
  }

  return result;
}

unint64_t sub_1002AB20C()
{
  result = qword_100AD9760;
  if (!qword_100AD9760)
  {
    sub_1001F1234(&qword_100AD9768, &qword_100816BC0);
    sub_1002AB298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9760);
  }

  return result;
}

unint64_t sub_1002AB298()
{
  result = qword_100AD9770;
  if (!qword_100AD9770)
  {
    sub_1001F1234(&qword_100AD9778, &qword_100816BC8);
    sub_1002AB324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9770);
  }

  return result;
}

unint64_t sub_1002AB324()
{
  result = qword_100AD9780;
  if (!qword_100AD9780)
  {
    sub_1001F1234(&qword_100AD9788, &qword_100816BD0);
    sub_1002AB3B0();
    sub_1002AAF54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9780);
  }

  return result;
}

unint64_t sub_1002AB3B0()
{
  result = qword_100AD9790;
  if (!qword_100AD9790)
  {
    sub_1001F1234(&qword_100AD9798, &qword_100816BD8);
    sub_100005920(&qword_100AD97A0, &qword_100AD97A8, &qword_100816BE0, &protocol conformance descriptor for ZStack<A>);
    sub_100005920(&qword_100AD9728, &qword_100AD9660, &qword_1008169F8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9790);
  }

  return result;
}

unint64_t sub_1002AB494()
{
  result = qword_100AD97B0;
  if (!qword_100AD97B0)
  {
    sub_1001F1234(&qword_100AD9678, &qword_100816A10);
    sub_1002AB518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97B0);
  }

  return result;
}

unint64_t sub_1002AB518()
{
  result = qword_100AD97B8;
  if (!qword_100AD97B8)
  {
    sub_1001F1234(&qword_100AD96F8, &qword_100816B20);
    sub_1002AB5D0();
    sub_100005920(&qword_100AD9738, &qword_100AD9668, &qword_100816A00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97B8);
  }

  return result;
}

unint64_t sub_1002AB5D0()
{
  result = qword_100AD97C0;
  if (!qword_100AD97C0)
  {
    sub_1001F1234(&qword_100AD96F0, &qword_100816B18);
    sub_1002AB65C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97C0);
  }

  return result;
}

unint64_t sub_1002AB65C()
{
  result = qword_100AD97C8;
  if (!qword_100AD97C8)
  {
    sub_1001F1234(&qword_100AD96E8, &qword_100816B10);
    sub_1002AB714();
    sub_100005920(&qword_100AD4990, &qword_100ADBCE0, &qword_100816190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97C8);
  }

  return result;
}

unint64_t sub_1002AB714()
{
  result = qword_100AD97D0;
  if (!qword_100AD97D0)
  {
    sub_1001F1234(&qword_100AD96E0, &qword_100816B08);
    sub_1002AB7CC();
    sub_100005920(&qword_100AD9800, &qword_100AD9808, &unk_100816BF8, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97D0);
  }

  return result;
}

unint64_t sub_1002AB7CC()
{
  result = qword_100AD97D8;
  if (!qword_100AD97D8)
  {
    sub_1001F1234(&qword_100AD96D8, &qword_100816B00);
    sub_1002AB858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97D8);
  }

  return result;
}

unint64_t sub_1002AB858()
{
  result = qword_100AD97E0;
  if (!qword_100AD97E0)
  {
    sub_1001F1234(&qword_100AD96D0, &qword_100816AF8);
    sub_1002AB8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97E0);
  }

  return result;
}

unint64_t sub_1002AB8E4()
{
  result = qword_100AD97E8;
  if (!qword_100AD97E8)
  {
    sub_1001F1234(&qword_100AD97F0, &qword_100816BE8);
    sub_1002AAFC4();
    sub_100005920(&unk_100AF6660, &qword_100AD97F8, &qword_100816BF0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97E8);
  }

  return result;
}

unint64_t sub_1002AB99C()
{
  result = qword_100AD9810;
  if (!qword_100AD9810)
  {
    sub_1001F1234(&qword_100AD9680, &qword_100816A18);
    sub_1002ABA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9810);
  }

  return result;
}

unint64_t sub_1002ABA20()
{
  result = qword_100AD9818;
  if (!qword_100AD9818)
  {
    sub_1001F1234(&qword_100AD9740, &unk_100816BB0);
    sub_100005920(&qword_100AD9820, &qword_100AD96C0, &qword_100816AE8, &protocol conformance descriptor for TupleView<A>);
    sub_1002ABAD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9818);
  }

  return result;
}

unint64_t sub_1002ABAD8()
{
  result = qword_100AD9828;
  if (!qword_100AD9828)
  {
    sub_1001F1234(&qword_100AD96B0, &qword_100816AD8);
    sub_1002ABB64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9828);
  }

  return result;
}

unint64_t sub_1002ABB64()
{
  result = qword_100AD9830;
  if (!qword_100AD9830)
  {
    sub_1001F1234(&qword_100AD9838, &qword_100816C08);
    sub_1002ABBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9830);
  }

  return result;
}

unint64_t sub_1002ABBF0()
{
  result = qword_100AD9840;
  if (!qword_100AD9840)
  {
    sub_1001F1234(&qword_100AD9848, &qword_100816C10);
    sub_1002ABCA8();
    sub_100005920(&qword_100AD9738, &qword_100AD9668, &qword_100816A00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9840);
  }

  return result;
}

unint64_t sub_1002ABCA8()
{
  result = qword_100AD9850;
  if (!qword_100AD9850)
  {
    sub_1001F1234(&qword_100AD9858, &qword_100816C18);
    sub_1002ABD34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9850);
  }

  return result;
}

unint64_t sub_1002ABD34()
{
  result = qword_100AD9860;
  if (!qword_100AD9860)
  {
    sub_1001F1234(&qword_100AD9868, &qword_100816C20);
    sub_1002AB324();
    sub_100005920(&qword_100AD9870, &qword_100AD9878, &qword_100816C28, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9860);
  }

  return result;
}

unint64_t sub_1002ABDEC()
{
  result = qword_100AD9880;
  if (!qword_100AD9880)
  {
    sub_1001F1234(&qword_100AD9688, &unk_100816A20);
    sub_1002ABE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9880);
  }

  return result;
}

unint64_t sub_1002ABE70()
{
  result = qword_100AD9888;
  if (!qword_100AD9888)
  {
    sub_1001F1234(&qword_100AD9890, &qword_100816C30);
    sub_100005920(&qword_100AD9898, &qword_100AD98A0, &qword_100816C38, &protocol conformance descriptor for VStack<A>);
    sub_100005920(&qword_100AD9738, &qword_100AD9668, &qword_100816A00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9888);
  }

  return result;
}

double sub_1002ABF6C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1002ABF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PageTurnView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  swift_unknownObjectWeakDestroy();
  v8 = v6[10];
  v9 = sub_10079BED4();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();

  v10 = v6[15];
  sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CEE4();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v7 + v10, 1, v11))
    {
      (*(v12 + 8))(v7 + v10, v11);
    }
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v7 + v6[16], v5);
  v13 = v6[21];
  v14 = sub_10079ACE4();
  (*(*(v14 - 8) + 8))(v7 + v13, v14);

  return swift_deallocObject();
}

uint64_t sub_1002AC220(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for PageTurnView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_1002AC2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002AC320()
{
  result = qword_100AD9908;
  if (!qword_100AD9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9908);
  }

  return result;
}

uint64_t sub_1002AC374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002AC3BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002AC410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1002AC480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002AC4E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002AC5BC(void *a1)
{
  v2 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_docIconColor;
  v3 = *(v1 + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_docIconColor);
  *(v1 + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_docIconColor) = a1;
  v9 = a1;

  v4 = [*(v1 + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView) subviews];
  sub_10000A7C4(0, &qword_100AD7620, UIView_ptr);
  v5 = sub_1007A25E4();

  if (v5 >> 62)
  {
    if (sub_1007A38D4())
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_1007A3784();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = *(v1 + v2);
  [v7 setTintColor:v8];

LABEL_9:
}

id sub_1002AC700()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [v0 layer];
  [v1 setAllowsGroupBlending:0];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [objc_opt_self() configurationWithPointSize:7 weight:1 scale:14.0];
  v3 = sub_1007A2214();
  v4 = [objc_opt_self() systemImageNamed:v3];

  if (v4)
  {
    v5 = [v4 imageWithConfiguration:v2];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];

  v7 = v6;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v7 layer];
  v9 = kCAFilterPlusL;
  [v8 setCompositingFilter:kCAFilterPlusL];

  [v0 addSubview:v7];
  v10 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100816E30;
  v12 = [v0 widthAnchor];
  v13 = [v12 constraintEqualToConstant:20.0];

  *(v11 + 32) = v13;
  v14 = [v0 heightAnchor];
  v15 = [v0 widthAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v11 + 40) = v16;
  v17 = [v7 centerXAnchor];
  v18 = [v0 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v11 + 48) = v19;
  v20 = [v7 centerYAnchor];

  v21 = [v0 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v11 + 56) = v22;
  sub_10000A7C4(0, &qword_100AE9010, NSLayoutConstraint_ptr);
  isa = sub_1007A25D4().super.isa;

  [v10 activateConstraints:isa];

  v24 = [v0 layer];
  [v24 setCornerRadius:10.0];

  v25 = [v0 layer];
  [v25 setCompositingFilter:v9];

  [v0 setUserInteractionEnabled:0];
  return v0;
}

void sub_1002ACB34(double a1, double a2, double a3, double a4)
{
  v9 = sub_100796CF4();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v48 - v12;
  v54 = sub_1007A21D4();
  v49 = *(v54 - 8);
  __chkstk_darwin(v54);
  v48 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v4[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent] = 0;
  *&v4[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_platterColor] = 0;
  *&v4[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_docIconColor] = 0;
  v17 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView;
  *&v4[v17] = sub_1002AC700();
  v18 = type metadata accessor for AudiobookNowPlayingTOCButton();
  v55.receiver = v4;
  v55.super_class = v18;
  v19 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  v20 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView;
  v21 = *&v19[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView];
  v22 = v19;
  [v22 addSubview:v21];
  v23 = [v22 layer];
  [v23 setAllowsGroupBlending:0];

  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100811360;
  v25 = [*&v19[v20] topAnchor];
  v26 = [v22 imageView];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 topAnchor];

    v29 = [v25 constraintEqualToAnchor:v28 constant:-8.0];
    *(v24 + 32) = v29;
    v30 = [*&v19[v20] trailingAnchor];
    v31 = [v22 imageView];

    if (v31)
    {
      v32 = objc_opt_self();
      v33 = [v31 trailingAnchor];

      v34 = [v30 constraintEqualToAnchor:v33 constant:8.0];
      *(v24 + 40) = v34;
      sub_10000A7C4(0, &qword_100AE9010, NSLayoutConstraint_ptr);
      isa = sub_1007A25D4().super.isa;

      [v32 activateConstraints:isa];

      v36 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
      [v22 addInteraction:v36];

      v37 = v22;
      v38 = v16;
      sub_1007A2154();
      v39 = v51;
      sub_100796C94();
      v40 = v48;
      v41 = v49;
      (*(v49 + 16))(v48, v38, v54);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v43 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v45 = v52;
      v44 = v53;
      v46 = v50;
      (*(v52 + 16))(v50, v39, v53);
      sub_1007A22D4(v40, 0, 0, v43, v46, "Table of Contents", 17, 2);
      (*(v45 + 8))(v39, v44);
      (*(v41 + 8))(v38, v54);
      v47 = sub_1007A2214();

      [v37 setAccessibilityLabel:v47];

      [v37 setShowsLargeContentViewer:1];
      sub_1002AD1E0();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1002AD1E0()
{
  v1 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent;
  v2 = sub_1007A2214();

  v3 = objc_opt_self();
  v4 = [v3 imageNamed:v2];

  if (v4)
  {
    v5 = [v4 imageFlippedForRightToLeftLayoutDirection];

    v13.receiver = v0;
    v13.super_class = type metadata accessor for AudiobookNowPlayingTOCButton();
    objc_msgSendSuper2(&v13, "setImage:forState:", v5, 0);
    if (v0[v1] != 1)
    {
      v12 = [v0 imageForState:0];
      goto LABEL_10;
    }

    v14.width = 60.0;
    v14.height = 60.0;
    UIGraphicsBeginImageContext(v14);
    [v5 drawInRect:{0.0, 0.0, 60.0, 60.0}];
    v6 = sub_1007A2214();
    v7 = [v3 systemImageNamed:v6];

    if (v7)
    {
      v8 = [objc_opt_self() currentTraitCollection];
      v9 = [v8 layoutDirection];

      v10 = 40;
      if (v9 == 1)
      {
        v10 = 0;
      }

      [v7 drawAtPoint:{v10, 0.0}];
    }

    v11 = UIGraphicsGetImageFromCurrentImageContext();
    if (v11)
    {
      v12 = v11;
      UIGraphicsEndImageContext();
LABEL_10:
      [v0 setLargeContentImage:v12];

      [*&v0[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView] setHidden:(v0[v1] & 1) == 0];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1002AD4CC()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for AudiobookNowPlayingTOCButton();
  v43.receiver = v0;
  v43.super_class = v14;
  v15 = objc_msgSendSuper2(&v43, "accessibilityValue");
  if (v15)
  {
    v38 = v9;
    v39 = v4;
    v40 = v7;
    v16 = v8;
    v17 = v2;
    v18 = v1;
    v19 = v15;
    v20 = sub_1007A2254();
    v22 = v21;

    v23 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_10000B3D8((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[16 * v25];
    *(v26 + 4) = v20;
    *(v26 + 5) = v22;
    v1 = v18;
    v2 = v17;
    v8 = v16;
    v4 = v39;
    v7 = v40;
    v9 = v38;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  if (*(v0 + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent) == 1)
  {
    sub_1007A2154();
    sub_100796C94();
    v27 = v41;
    (*(v9 + 16))(v41, v13, v8);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v2 + 16))(v4, v7, v1);
    v30 = sub_1007A22D4(v27, 0, 0, v29, v4, "Accessibility string indicating that an element has supplemental content", 72, 2);
    v32 = v31;
    (*(v2 + 8))(v7, v1);
    (*(v9 + 8))(v13, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_10000B3D8(0, *(v23 + 2) + 1, 1, v23);
    }

    v34 = *(v23 + 2);
    v33 = *(v23 + 3);
    if (v34 >= v33 >> 1)
    {
      v23 = sub_10000B3D8((v33 > 1), v34 + 1, 1, v23);
    }

    *(v23 + 2) = v34 + 1;
    v35 = &v23[16 * v34];
    *(v35 + 4) = v30;
    *(v35 + 5) = v32;
  }

  else if (!*(v23 + 2))
  {

    return 0;
  }

  v42 = v23;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_10000B4E4();
  v36 = sub_1007A20B4();

  return v36;
}

id sub_1002AD988(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AudiobookNowPlayingTOCButton();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1002ADA60@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v11[3] = *v2;
  v11[4] = &off_100A12EA8;
  v11[0] = v2;
  v5 = v2[6];
  type metadata accessor for ChromeStyle(0);
  sub_1002AF038(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);

  *a2 = sub_10079C484();
  *(a2 + 8) = v6;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 40) = 0;
  KeyPath = swift_getKeyPath();
  *(a2 + 64) = 0u;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  sub_1002AEFC8(v11, a2 + 64);
  type metadata accessor for InfoBarViewModel(0);
  sub_1002AF038(&qword_100AD9B20, type metadata accessor for InfoBarViewModel, &unk_10082A690);

  *(a2 + 112) = sub_10079C024();
  *(a2 + 120) = v8;
  *(a2 + 104) = a1;
  if (a1)
  {
    v9 = sub_1004B68F4();

    v5 = v9;
  }

  result = sub_100007840(v11, &qword_100AD9B18, &unk_1008170D0);
  *(a2 + 128) = v5;
  *(a2 + 136) = 0;
  return result;
}

uint64_t sub_1002ADC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  v4[8] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AD9AF0, &qword_100816F68);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_1001F1160(&qword_100AD9AF8, &qword_100816F70);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_1007A26F4();
  v4[15] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v4[16] = v8;
  v4[17] = v7;

  return _swift_task_switch(sub_1002ADDCC, v8, v7);
}

uint64_t sub_1002ADDCC()
{
  v1 = *(*(v0 + 56) + 32);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_1002ADDF0, v1, 0);
}

uint64_t sub_1002ADDF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v0 + 5);

  v0[19] = v0[5];
  v1 = v0[16];
  v2 = v0[17];

  return _swift_task_switch(sub_1002ADEA4, v1, v2);
}

uint64_t sub_1002ADEA4()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[7];
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;

    sub_10079E514();
    sub_10079BF94();
  }

  v4 = v0[18];

  return _swift_task_switch(sub_1002ADF88, v4, 0);
}

uint64_t sub_1002ADF88()
{
  swift_beginAccess();
  sub_1001F1160(&qword_100AD9B00, &qword_100816FC0);
  sub_10079B974();
  swift_endAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_1002AE038, v1, v2);
}

uint64_t sub_1002AE038()
{
  v1 = v0[14];
  v12 = v0[12];
  v13 = v0[13];
  v2 = v0[10];
  v11 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];

  sub_100017E74();
  v6 = sub_1007A2D74();
  v0[6] = v6;
  v7 = sub_1007A2D24();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_100005920(&qword_100AD9B08, &qword_100AD9AF0, &qword_100816F68, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1002AF038(&qword_100AE8CA0, sub_100017E74, &protocol conformance descriptor for OS_dispatch_queue);
  sub_10079BAB4();
  sub_100007840(v3, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v2 + 8))(v11, v4);
  swift_allocObject();
  swift_weakInit();
  sub_100005920(&qword_100AD9B10, &qword_100AD9AF8, &qword_100816F70, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v8 = sub_10079BB04();

  (*(v13 + 8))(v1, v12);
  *(v5 + 40) = v8;

  v9 = v0[1];

  return v9();
}

double sub_1002AE2BC(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    sub_10079E514();
    sub_10079BF94();
  }

  return result;
}

uint64_t sub_1002AE3C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 56);
    v3 = *(a2 + 64);
    sub_1002AEF10(*(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48));
    sub_1000260E8(v4, v3);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10079B9B4();
  if (a2)
  {
    type metadata accessor for InfoBar.TimedMessage(0);
    swift_dynamicCastClass();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_1002AE534()
{
  sub_10002B130(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1002AE5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 72) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  sub_1007A26F4();
  *(v7 + 40) = sub_1007A26E4();
  v9 = sub_1007A2694();
  *(v7 + 48) = v9;
  *(v7 + 56) = v8;

  return _swift_task_switch(sub_1002AE648, v9, v8);
}

uint64_t sub_1002AE648()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1002AE66C, v1, 0);
}

uint64_t sub_1002AE66C(__n128 a1)
{
  v2 = *(v1 + 32);
  if (*(v1 + 72))
  {
    v2 = 3.0;
  }

  InfoBar.MessageQueue.addTimedMessage(_:duration:)(*(v1 + 24), v2);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_10022C3F4, v3, v4);
}

uint64_t sub_1002AE6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1007A26F4();
  v5[4] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1002AE780, v7, v6);
}

uint64_t sub_1002AE780()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_1002AE7A4, v1, 0);
}

uint64_t sub_1002AE7A4()
{
  InfoBar.MessageQueue.setPersistentMessage(_:)(v0[3]);
  v1 = v0[5];
  v2 = v0[6];

  return _swift_task_switch(sub_1002AE80C, v1, v2);
}

uint64_t sub_1002AE80C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AE86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1007A26F4();
  v4[3] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002AE904, v6, v5);
}

uint64_t sub_1002AE904()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 48) = v1;
  return _swift_task_switch(sub_1002AE928, v1, 0);
}

uint64_t sub_1002AE928()
{
  InfoBar.MessageQueue.removePersistentMessage()();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1002AE98C, v1, v2);
}

uint64_t sub_1002AE98C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1002AE9EC@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v7);

  v3 = v8;
  result = *v7;
  v5 = v7[1];
  v6 = v7[2];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_1002AEA7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1002AEF7C(v2, v3, v4, v5, v6, v7, v8);
  return sub_10079B9B4();
}

void sub_1002AEB40(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_1002AEBC0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

void *sub_1002AEC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v7 - 8);
  v9 = v15 - v8;
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[5] = 0;
  type metadata accessor for InfoBarViewModel(0);
  v10 = swift_allocObject();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v17 = xmmword_100816EB0;
  sub_1001F1160(&qword_100AD9AE8, &qword_100816F48);
  sub_10079B964();
  LOBYTE(v15[0]) = 0;
  sub_10079B964();
  v4[6] = v10;
  v4[3] = a2;
  v4[4] = a3;
  swift_unknownObjectWeakAssign();
  v11 = sub_1007A2744();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1007A26F4();
  swift_retain_n();

  v12 = sub_1007A26E4();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v4;
  sub_1003457A0(0, 0, v9, &unk_100816F58, v13);

  return v4;
}

uint64_t sub_1002AEE38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1002ADC2C(a1, v4, v5, v6);
}

void sub_1002AEF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 2u)
  {
    if (a5 != 2 && a5 != 3)
    {
      return;
    }
  }
}

uint64_t sub_1002AEF7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7)
{
  if (a6 != 1)
  {
    sub_1002AEF10(result, a2, a3, a4, a5);

    return sub_1000260E8(a6, a7);
  }

  return result;
}

uint64_t sub_1002AEFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD9B18, &unk_1008170D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AF038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RenameActionItem(uint64_t a1)
{
  result = qword_100AD9B80;
  if (!qword_100AD9B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AF10C(uint64_t a1)
{
  sub_1001FEBC8(319, &unk_100AE9C00, &protocol descriptor for ContextActionDataProtocol);
  if (v1 <= 0x3F)
  {
    sub_1001FEBC8(319, &qword_100AD4AF0, &protocol descriptor for ContextMenuPresentationContextProtocol);
    if (v2 <= 0x3F)
    {
      sub_1001FEB70(319);
      if (v3 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10, &protocol descriptor for FigaroProviding);
        if (v4 <= 0x3F)
        {
          sub_1001FEBC8(319, &unk_100AD9B90, &protocol descriptor for LibraryAssetProviding);
          if (v5 <= 0x3F)
          {
            sub_100797144();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

double sub_1002AF230@<D0>(_OWORD *a1@<X8>)
{
  sub_10000E3E8(v1, v1[3]);
  sub_1007977A4();
  if (v5)
  {
    sub_1001FF70C(v4);
  }

  else
  {
    sub_1001FF7E0(v4, v6);
    sub_1001FF7E0(v6, v4);
    sub_1001F1160(&qword_100AD4B48, qword_10080ED60);
    sub_1001F1160(qword_100AD4B50, &unk_1008171B0);
    if (swift_dynamicCast())
    {
      return result;
    }
  }

  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1002AF30C()
{
  sub_1002AF230(&v3);
  if (v4)
  {
    sub_1001FF7C8(&v3, &v5);
    sub_10000E3E8(&v5, v6);
    sub_1007976A4();
    if (v0)
    {
    }

    else
    {
      sub_10000E3E8(&v5, v6);
      sub_1007976B4();
      if ((sub_1007972D4() & 1) == 0)
      {
        sub_10000E3E8(&v5, v6);
        v2 = sub_1002BF76C();
        if (v2 == 2 || (v2 & 1) == 0)
        {
          sub_1000074E0(&v5);
          return 1;
        }
      }
    }

    sub_1000074E0(&v5);
  }

  else
  {
    sub_1001FF760(&v3);
  }

  return 0;
}

uint64_t sub_1002AF3FC()
{
  v1[2] = v0;
  v2 = sub_10079ACE4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1007A26F4();
  v1[6] = sub_1007A26E4();
  v4 = sub_1007A2694();

  return _swift_task_switch(sub_1002AF4F0, v4, v3);
}

uint64_t sub_1002AF4F0()
{

  v1 = sub_1002AF644();
  if (v1)
  {
    v2 = v1;
    sub_10000E3E8((v0[2] + 40), *(v0[2] + 64));
    sub_100796EC4();
  }

  else
  {
    sub_10079AC44();
    v3 = sub_10079ACC4();
    v4 = sub_1007A29B4();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to create alertController", v9, 2u);
    }

    (*(v7 + 8))(v6, v8);
  }

  v10 = v0[1];

  return v10();
}

id sub_1002AF644()
{
  v1 = sub_10079ACE4();
  v78 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RenameActionItem(0);
  v68 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v69 = v5;
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100796CF4();
  v6 = *(v72 - 1);
  __chkstk_darwin(v72);
  v77 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v62 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v62 - v16;
  sub_1002AF230(&v85);
  if (v86)
  {
    sub_1001FF7C8(&v85, &v87);
    sub_10000E3E8(&v87, v88);
    sub_1007976B4();
    v18 = sub_1007972D4();
    v78 = v12;
    v19 = (v12 + 16);
    v20 = v6 + 16;
    v67 = v0;
    if (v18)
    {
      sub_1007A2154();
      sub_100796C94();
      v21 = *v19;
      v75 = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v22 = v14;
      v23 = v11;
      v24 = v22;
      v76 = v21;
      v21();
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = objc_opt_self();
      v27 = v17;
      v73 = ObjCClassFromMetadata;
      v28 = [v26 bundleForClass:ObjCClassFromMetadata];
      v29 = *v20;
      v66 = v20 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v30 = v77;
      v31 = v72;
      v74 = v29;
      v29(v77, v10, v72);
      sub_1007A22D4(v24, 0, 0, v28, v30, "Rename PDF", 10, 2);
    }

    else
    {
      sub_1007A2154();
      sub_100796C94();
      v37 = *v19;
      v75 = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v38 = v14;
      v23 = v11;
      v24 = v38;
      v76 = v37;
      v37();
      type metadata accessor for BundleFinder();
      v39 = swift_getObjCClassFromMetadata();
      v40 = objc_opt_self();
      v27 = v17;
      v73 = v39;
      v41 = [v40 bundleForClass:v39];
      v42 = *v20;
      v66 = v20 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v43 = v77;
      v31 = v72;
      v74 = v42;
      v42(v77, v10, v72);
      sub_1007A22D4(v24, 0, 0, v41, v43, "Rename Book", 11, 2);
    }

    v72 = *(v6 + 8);
    (v72)(v10, v31);
    v44 = *(v78 + 8);
    v78 += 8;
    v71 = v44;
    v44(v27, v23);
    v45 = sub_1007A2214();

    v46 = [objc_opt_self() alertControllerWithTitle:v45 message:0 preferredStyle:1];
    v63 = v46;

    sub_1002B0670(&v87, &v85);
    v47 = swift_allocObject();
    sub_1001FF7C8(&v85, (v47 + 16));
    v83 = sub_1002B06D4;
    v84 = v47;
    aBlock = _NSConcreteStackBlock;
    v80 = 1107296256;
    v65 = &v81;
    v81 = sub_100201C54;
    v82 = &unk_100A12F28;
    v48 = _Block_copy(&aBlock);

    [v46 addTextFieldWithConfigurationHandler:v48];
    _Block_release(v48);
    sub_1007A2154();
    sub_100796C94();
    (v76)(v24, v27, v23);
    type metadata accessor for BundleFinder();
    v62 = objc_opt_self();
    v49 = [v62 bundleForClass:v73];
    v50 = v77;
    v74(v77, v10, v31);
    sub_1007A22D4(v24, 0, 0, v49, v50, "Cancel", 6, 2);
    (v72)(v10, v31);
    v71(v27, v23);
    v51 = sub_1007A2214();

    v64 = objc_opt_self();
    v52 = [v64 actionWithTitle:v51 style:1 handler:0];

    v53 = v63;
    [v63 addAction:v52];

    sub_1007A2154();
    sub_100796C94();
    (v76)(v24, v27, v23);
    v54 = [v62 bundleForClass:v73];
    v74(v50, v10, v31);
    sub_1007A22D4(v24, 0, 0, v54, v50, "Rename", 6, 2);
    (v72)(v10, v31);
    v71(v27, v23);
    sub_1002B0670(&v87, &v85);
    v55 = v70;
    sub_1002B06E4(v67, v70);
    v56 = (*(v68 + 80) + 72) & ~*(v68 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v53;
    sub_1001FF7C8(&v85, (v57 + 24));
    sub_1002B0748(v55, v57 + v56);
    v36 = v53;
    v58 = sub_1007A2214();

    v83 = sub_1002B07AC;
    v84 = v57;
    aBlock = _NSConcreteStackBlock;
    v80 = 1107296256;
    v81 = sub_100201C54;
    v82 = &unk_100A12F78;
    v59 = _Block_copy(&aBlock);

    v60 = [v64 actionWithTitle:v58 style:0 handler:v59];
    _Block_release(v59);

    [v36 addAction:v60];
    sub_1000074E0(&v87);
  }

  else
  {
    v32 = v78;
    sub_1001FF760(&v85);
    sub_10079AC44();
    v33 = sub_10079ACC4();
    v34 = sub_1007A29B4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "asset information unavailable to create alert controller", v35, 2u);
    }

    (*(v32 + 8))(v3, v1);
    return 0;
  }

  return v36;
}

void sub_1002B0144(void *a1, void *a2)
{
  sub_10000E3E8(a2, a2[3]);
  sub_100797664();
  if (v3)
  {
    v4 = sub_1007A2214();
  }

  else
  {
    v4 = 0;
  }

  [a1 setText:v4];
}

void sub_1002B01DC(int a1, id a2, void *a3, void *a4)
{
  v6 = [a2 textFields];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  sub_10000A7C4(0, &qword_100AD8B58, UITextField_ptr);
  v8 = sub_1007A25E4();

  if (v8 >> 62)
  {
    if (!sub_1007A38D4())
    {
      goto LABEL_21;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_1007A3784();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v22 = v9;

  v10 = [v22 text];
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = v10;
  sub_1007A2254();

  v12 = [v22 text];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1007A2254();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  sub_10000E3E8(a3, a3[3]);
  v17 = sub_100797664();
  if (v16)
  {
    if (v18)
    {
      if (v14 == v17 && v16 == v18)
      {

        goto LABEL_21;
      }

      v21 = sub_1007A3AB4();

      if (v21)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

LABEL_19:

LABEL_20:
    v19 = a4[20];
    sub_10000E3E8(a4 + 16, a4[19]);
    sub_10000E3E8(a3, a3[3]);
    v20 = sub_100797674();
    (*(v19 + 48))(v20);

LABEL_21:

    return;
  }

  if (v18)
  {
    goto LABEL_19;
  }

LABEL_25:

LABEL_26:
}

uint64_t sub_1002B04C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_1002AF3FC();
}

uint64_t sub_1002B0550@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_100009864(a1, a6);
  sub_100009864(a2, (a6 + 40));
  sub_100009864(a4, (a6 + 88));
  v12 = [objc_opt_self() defaultManager];
  *(a6 + 19) = sub_10000A7C4(0, &qword_100AD9BD0, BKLibraryManager_ptr);
  *(a6 + 20) = &off_100A300A0;
  *(a6 + 16) = v12;
  sub_1000074E0(a4);
  sub_1000074E0(a2);
  sub_1000074E0(a1);
  v13 = *(a5 + 36);
  v14 = enum case for ContextActionType.rename(_:);
  v15 = sub_100797144();
  result = (*(*(v15 - 8) + 104))(&a6[v13], v14, v15);
  *(a6 + 10) = a3;
  return result;
}

uint64_t sub_1002B0670(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1002B06E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenameActionItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B0748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenameActionItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002B07AC(int a1)
{
  v3 = *(type metadata accessor for RenameActionItem(0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80)));

  sub_1002B01DC(a1, v4, (v1 + 24), v5);
}

__n128 sub_1002B082C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1002B0848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002B0890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002B090C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_10079CCC4();
  v44 = *(v1 - 8);
  v45 = v1;
  __chkstk_darwin(v1);
  v42 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10079E584();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10079C124();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD9BE0, &qword_100817310);
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v34 = sub_1001F1160(&qword_100AD9BE8, &qword_100817318);
  __chkstk_darwin(v34);
  v11 = &v31 - v10;
  v12 = sub_1001F1160(&qword_100AD9BF0, &qword_100817320);
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin(v12);
  v36 = &v31 - v13;
  v14 = sub_1001F1160(&qword_100AD9BF8, &qword_100817328);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  if (sub_1007A0F94() > 1u)
  {
    v17 = sub_10079DF54();
  }

  else
  {
    v17 = sub_10079DF24();
  }

  sub_1002B1094(v17, v16);

  sub_1007A1024();
  sub_1002B30A8(&qword_100AE42E0, &type metadata accessor for ThemeAppearanceManager, &protocol conformance descriptor for ThemeAppearanceManager);
  sub_10079C034();
  swift_getKeyPath();
  sub_10079C044();

  v46 = v49;
  v47 = v50;
  v48 = v51;
  __chkstk_darwin(v18);
  sub_1001F1160(&qword_100AD9C00, &qword_100817360);
  sub_1002B2A3C();
  sub_1002B2A90();
  sub_1002B2C24();
  sub_10079E104();
  sub_10079C114();
  sub_100005920(&qword_100AD9C70, &qword_100AD9BE0, &qword_100817310, &protocol conformance descriptor for Picker<A, B, C>);
  v19 = v32;
  v20 = v35;
  sub_10079D704();
  (*(v33 + 8))(v6, v20);
  (*(v31 + 8))(v9, v19);
  KeyPath = swift_getKeyPath();
  v22 = v34;
  v23 = &v11[*(v34 + 36)];
  *v23 = KeyPath;
  v23[8] = 2;
  v24 = v39;
  sub_10079E574();
  v25 = sub_1002B2F60();
  v26 = v36;
  sub_10079DCB4();
  (*(v40 + 8))(v24, v41);
  sub_100007840(v11, &qword_100AD9BE8, &qword_100817318);
  v27 = v42;
  sub_10079C454();
  v49 = v22;
  v50 = v25;
  swift_getOpaqueTypeConformance2();
  sub_1002B30A8(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v28 = v38;
  v29 = v45;
  sub_10079D6F4();
  (*(v44 + 8))(v27, v29);
  (*(v37 + 8))(v26, v28);
  return sub_100007840(v16, &qword_100AD9BF8, &qword_100817328);
}

uint64_t sub_1002B1094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v46 = a2;
  v2 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v2 - 8);
  v4 = &v42 - v3;
  v44 = sub_10079D4D4();
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AD8DD8, &qword_1008162B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v43 = sub_1001F1160(&qword_100AD9C48, &qword_100817380);
  __chkstk_darwin(v43);
  v12 = &v42 - v11;
  v45 = sub_1001F1160(&qword_100AD9C38, &qword_100817378);
  __chkstk_darwin(v45);
  v14 = &v42 - v13;
  v15 = enum case for Image.TemplateRenderingMode.template(_:);
  v16 = sub_10079DF74();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v10, v15, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  v42 = sub_10079DF44();
  sub_100007840(v10, &qword_100AD8DD8, &qword_1008162B0);
  sub_1001F1160(&qword_100AE17F0, &qword_100822890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  LOBYTE(v16) = sub_10079D2A4();
  *(inited + 32) = v16;
  v19 = sub_10079D2B4();
  *(inited + 33) = v19;
  v20 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v16)
  {
    v20 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v19)
  {
    v20 = sub_10079D2D4();
  }

  sub_10079BBA4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v44;
  (*(v5 + 104))(v7, enum case for Font.TextStyle.callout(_:), v44);
  v30 = sub_10079D3A4();
  (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
  sub_10079D434();
  sub_100007840(v4, &unk_100AD1FC0, &unk_10080B850);
  (*(v5 + 8))(v7, v29);
  sub_10079D3F4();
  v31 = sub_10079D464();

  KeyPath = swift_getKeyPath();
  v47 = 0;
  v33 = &v12[*(v43 + 36)];
  v34 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
  v35 = enum case for Image.Scale.large(_:);
  v36 = sub_10079DF84();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  *v12 = v42;
  v12[8] = v20;
  *(v12 + 2) = v22;
  *(v12 + 3) = v24;
  *(v12 + 4) = v26;
  *(v12 + 5) = v28;
  v12[48] = 0;
  *(v12 + 7) = KeyPath;
  *(v12 + 8) = v31;
  sub_10079E474();
  sub_10079C414();
  sub_1002B3170(v12, v14);
  v37 = &v14[*(v45 + 36)];
  v38 = v53;
  *(v37 + 4) = v52;
  *(v37 + 5) = v38;
  *(v37 + 6) = v54;
  v39 = v49;
  *v37 = v48;
  *(v37 + 1) = v39;
  v40 = v51;
  *(v37 + 2) = v50;
  *(v37 + 3) = v40;
  sub_1002B2CE0();
  sub_10079D944();
  return sub_100007840(v14, &qword_100AD9C38, &qword_100817378);
}

uint64_t sub_1002B167C()
{
  sub_1007A0294();
  swift_getKeyPath();
  sub_1001F1160(&qword_100AD9C90, &qword_100817410);
  sub_1001F1160(&qword_100AD9C98, &qword_100817418);
  sub_100005920(&qword_100AD9CA0, &qword_100AD9C90, &qword_100817410, &protocol conformance descriptor for [A]);
  sub_1001F1234(&qword_100AD9C18, &unk_100817368);
  sub_10079CEC4();
  sub_1001F1234(&qword_100AD1D70, &unk_100815B50);
  sub_100005920(&qword_100ADBBB0, &qword_100AD1D70, &unk_100815B50, &protocol conformance descriptor for Label<A, B>);
  sub_1002B2A3C();
  swift_getOpaqueTypeConformance2();
  sub_1002B30A8(&qword_100AD9C20, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
  swift_getOpaqueTypeConformance2();
  return sub_10079E264();
}

uint64_t sub_1002B1884@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v19[0] = sub_10079CEC4();
  v3 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AD1D70, &unk_100815B50);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - v8;
  v10 = sub_1001F1160(&qword_100AD9C18, &unk_100817368);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - v12;
  LOBYTE(a1) = *a1;
  v21 = a1;
  v20 = a1;
  sub_10079DFC4();
  (*(v7 + 32))(v13, v9, v6);
  v14 = &v13[*(sub_1001F1160(&qword_100AD1D78, &qword_10080B760) + 36)];
  *v14 = a1;
  v14[1] = 1;
  sub_10079CEB4();
  v15 = sub_100005920(&qword_100ADBBB0, &qword_100AD1D70, &unk_100815B50, &protocol conformance descriptor for Label<A, B>);
  v16 = sub_1002B2A3C();
  v22 = v6;
  v23 = &type metadata for ThemeAppearance;
  v24 = v15;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1002B30A8(&qword_100AD9C20, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
  v17 = v19[0];
  sub_10079D674();
  (*(v3 + 8))(v5, v17);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1002B1BE8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_100298BC8(a1);
  sub_100206ECC();
  result = sub_10079D5D4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1002B1C40@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 > 1u)
  {
    result = sub_10079DF54();
  }

  else
  {
    result = sub_10079DF24();
  }

  *a2 = result;
  return result;
}

uint64_t sub_1002B1D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v73 = a2;
  v62 = a1;
  v74 = a4;
  v4 = sub_100796CF4();
  v70 = *(v4 - 8);
  v71 = v4;
  __chkstk_darwin(v4);
  v69 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v55 - v7;
  v67 = sub_1007A21D4();
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v55 - v10;
  v59 = sub_10079CA64();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10079D074();
  v13 = *(v56 - 8);
  __chkstk_darwin(v56);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001F1160(&qword_100AD9CB8, &qword_100817508);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v55 - v18;
  v65 = sub_1001F1160(&qword_100AD9CC0, &qword_100817510);
  __chkstk_darwin(v65);
  v57 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v61 = &v55 - v22;
  __chkstk_darwin(v23);
  v68 = &v55 - v24;
  sub_10079D054();
  v25 = sub_1001F1160(&qword_100AD9CC8, &qword_100817518);
  v26 = sub_100005920(&qword_100AD9CD0, &qword_100AD9CC8, &qword_100817518, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10079D9A4();
  (*(v13 + 8))(v15, v56);
  sub_10079CA44();
  v77 = v25;
  v78 = v26;
  swift_getOpaqueTypeConformance2();
  sub_10079D9D4();
  (*(v58 + 8))(v12, v59);
  (*(v17 + 8))(v19, v16);
  v27 = v60;
  sub_1007A2154();
  v28 = v66;
  sub_100796C94();
  v30 = v63;
  v29 = v64;
  v31 = v67;
  (*(v64 + 16))(v63, v27, v67);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v35 = v69;
  v34 = v70;
  v36 = v71;
  (*(v70 + 16))(v69, v28, v71);
  v37 = sub_1007A22D4(v30, 0, 0, v33, v35, "Appearance menu name", 20, 2);
  v39 = v38;
  (*(v34 + 8))(v28, v36);
  (*(v29 + 8))(v27, v31);
  v77 = v37;
  v78 = v39;
  sub_100206ECC();
  v40 = sub_10079D5D4();
  v42 = v41;
  LOBYTE(v28) = v43;
  v44 = v61;
  v45 = v57;
  sub_10079C1B4();
  sub_10020B430(v40, v42, v28 & 1);

  sub_100007840(v45, &qword_100AD9CC0, &qword_100817510);
  v46 = v72;
  v47 = sub_1007A0F94();
  v77 = sub_1002986F4(v47);
  v78 = v48;
  v49 = sub_10079D5D4();
  v51 = v50;
  LOBYTE(v40) = v52;
  v53 = v68;
  sub_10079C1D4();
  sub_10020B430(v49, v51, v40 & 1);

  sub_100007840(v44, &qword_100AD9CC0, &qword_100817510);
  v75 = v73;
  v76 = v46;
  sub_1001F1160(&qword_100AD9CD8, &qword_100817520);
  sub_1002B33BC();
  sub_100005920(&qword_100AD9CE8, &qword_100AD9CD8, &qword_100817520, &protocol conformance descriptor for VStack<A>);
  sub_10079DAC4();
  return sub_100007840(v53, &qword_100AD9CC0, &qword_100817510);
}

uint64_t sub_1002B2490@<X0>(uint64_t a3@<X8>)
{
  *a3 = sub_10079CB24();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v4 = sub_1001F1160(&qword_100AD9CF0, &qword_100817528);
  return sub_1002B24F8(a3 + *(v4 + 44));
}

uint64_t sub_1002B24F8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = sub_1001F1160(&qword_100AD9BF8, &qword_100817328);
  __chkstk_darwin(v15 - 8);
  v38 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  if (sub_1007A0F94() > 1u)
  {
    v20 = sub_10079DF54();
  }

  else
  {
    v20 = sub_10079DF24();
  }

  sub_1002B1094(v20, v19);

  sub_1007A2154();
  sub_100796C94();
  (*(v9 + 16))(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v2 + 16))(v4, v7, v1);
  v23 = sub_1007A22D4(v11, 0, 0, v22, v4, "Appearance menu name", 20, 2);
  v25 = v24;
  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v14, v8);
  v40 = v23;
  v41 = v25;
  sub_100206ECC();
  v26 = sub_10079D5D4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v38;
  sub_1002B30F0(v19, v38);
  v34 = v39;
  sub_1002B30F0(v33, v39);
  v35 = v34 + *(sub_1001F1160(&qword_100AD9CF8, &qword_100817530) + 48);
  *v35 = v26;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30 & 1;
  *(v35 + 24) = v32;
  sub_1001F1894(v26, v28, v30 & 1);

  sub_100007840(v19, &qword_100AD9BF8, &qword_100817328);
  sub_10020B430(v26, v28, v30 & 1);

  return sub_100007840(v33, &qword_100AD9BF8, &qword_100817328);
}

uint64_t sub_1002B2980@<X0>(uint64_t a1@<X8>)
{
  sub_1002B090C(a1);
  sub_1007A1024();
  sub_1002B30A8(&qword_100AE42E0, &type metadata accessor for ThemeAppearanceManager, &protocol conformance descriptor for ThemeAppearanceManager);

  v2 = sub_10079C024();
  v4 = v3;
  result = sub_1001F1160(&qword_100AD9BD8, &qword_100817308);
  v6 = (a1 + *(result + 36));
  *v6 = v2;
  v6[1] = v4;
  return result;
}

unint64_t sub_1002B2A3C()
{
  result = qword_100AD9C08;
  if (!qword_100AD9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C08);
  }

  return result;
}

unint64_t sub_1002B2A90()
{
  result = qword_100AD9C10;
  if (!qword_100AD9C10)
  {
    sub_1001F1234(&qword_100AD9C00, &qword_100817360);
    sub_1001F1234(&qword_100AD9C18, &unk_100817368);
    sub_10079CEC4();
    sub_1001F1234(&qword_100AD1D70, &unk_100815B50);
    sub_100005920(&qword_100ADBBB0, &qword_100AD1D70, &unk_100815B50, &protocol conformance descriptor for Label<A, B>);
    sub_1002B2A3C();
    swift_getOpaqueTypeConformance2();
    sub_1002B30A8(&qword_100AD9C20, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C10);
  }

  return result;
}

unint64_t sub_1002B2C24()
{
  result = qword_100AD9C28;
  if (!qword_100AD9C28)
  {
    sub_1001F1234(&qword_100AD9BF8, &qword_100817328);
    sub_1002B2CE0();
    sub_1002B30A8(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C28);
  }

  return result;
}

unint64_t sub_1002B2CE0()
{
  result = qword_100AD9C30;
  if (!qword_100AD9C30)
  {
    sub_1001F1234(&qword_100AD9C38, &qword_100817378);
    sub_1002B2D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C30);
  }

  return result;
}

unint64_t sub_1002B2D6C()
{
  result = qword_100AD9C40;
  if (!qword_100AD9C40)
  {
    sub_1001F1234(&qword_100AD9C48, &qword_100817380);
    sub_1002B2E24();
    sub_100005920(&unk_100AD1D00, &qword_100AEE3C0, &qword_1008173A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C40);
  }

  return result;
}

unint64_t sub_1002B2E24()
{
  result = qword_100AD9C50;
  if (!qword_100AD9C50)
  {
    sub_1001F1234(&qword_100AD9C58, &qword_100817388);
    sub_1002B2EDC();
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0, &unk_10080B720, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C50);
  }

  return result;
}

unint64_t sub_1002B2EDC()
{
  result = qword_100AD9C60;
  if (!qword_100AD9C60)
  {
    sub_1001F1234(&qword_100AD9C68, &unk_100817390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C60);
  }

  return result;
}

unint64_t sub_1002B2F60()
{
  result = qword_100AD9C78;
  if (!qword_100AD9C78)
  {
    sub_1001F1234(&qword_100AD9BE8, &qword_100817318);
    sub_1001F1234(&qword_100AD9BE0, &qword_100817310);
    sub_10079C124();
    sub_100005920(&qword_100AD9C70, &qword_100AD9BE0, &qword_100817310, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD9C80, &qword_100AD9C88, &qword_1008173D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C78);
  }

  return result;
}

uint64_t sub_1002B30A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002B30F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD9BF8, &qword_100817328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B3170(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD9C48, &qword_100817380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002B31F0()
{
  result = qword_100AD9CA8;
  if (!qword_100AD9CA8)
  {
    sub_1001F1234(&qword_100AD9BD8, &qword_100817308);
    sub_1001F1234(&qword_100AD9BF0, &qword_100817320);
    sub_10079CCC4();
    sub_1001F1234(&qword_100AD9BE8, &qword_100817318);
    sub_1002B2F60();
    swift_getOpaqueTypeConformance2();
    sub_1002B30A8(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_1002B3344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9CA8);
  }

  return result;
}

unint64_t sub_1002B3344()
{
  result = qword_100AD9CB0;
  if (!qword_100AD9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9CB0);
  }

  return result;
}

unint64_t sub_1002B33BC()
{
  result = qword_100AD9CE0;
  if (!qword_100AD9CE0)
  {
    sub_1001F1234(&qword_100AD9CC0, &qword_100817510);
    sub_1001F1234(&qword_100AD9CC8, &qword_100817518);
    sub_100005920(&qword_100AD9CD0, &qword_100AD9CC8, &qword_100817518, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    sub_1002B30A8(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9CE0);
  }

  return result;
}

uint64_t type metadata accessor for MenuMaterial(uint64_t a1)
{
  result = qword_100AD9D58;
  if (!qword_100AD9D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B355C(uint64_t a1)
{
  sub_100247C8C(319);
  if (v1 <= 0x3F)
  {
    sub_1002B3658(319);
    if (v2 <= 0x3F)
    {
      sub_10029004C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1002B3600()
{
  result = qword_100ADB6A0;
  if (!qword_100ADB6A0)
  {
    type metadata accessor for ChromeStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB6A0);
  }

  return result;
}

void sub_1002B3658(uint64_t a1)
{
  if (!qword_100ADB690)
  {
    sub_10079BC44();
    v1 = sub_10079BCD4();
    if (!v2)
    {
      atomic_store(v1, &qword_100ADB690);
    }
  }
}

uint64_t sub_1002B36CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100AD9D98, &qword_1008175A0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = *v2;
  if (*v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    sub_10079B9A4(&v23);

    v10 = v23;
    v11 = sub_10079D294();
    v12 = sub_1001F1160(&qword_100AD9DA0, &qword_1008175F0);
    (*(*(v12 - 8) + 16))(v7, a1, v12);
    v13 = &v7[*(v5 + 36)];
    *v13 = v10;
    v13[8] = v11;
    v14 = *(v2 + *(type metadata accessor for MenuMaterial(0) + 28));
    v15 = v9;
    v16 = sub_10044C804(v14);

    v17 = sub_10079E474();
    v19 = v18;
    sub_1002B38B4(v7, a2);
    result = sub_1001F1160(&qword_100AD9DA8, &qword_1008175F8);
    v21 = (a2 + *(result + 36));
    *v21 = v16;
    v21[1] = v17;
    v21[2] = v19;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1002B3600();
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B38B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD9D98, &qword_1008175A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002B3924()
{
  result = qword_100AD9DB0;
  if (!qword_100AD9DB0)
  {
    sub_1001F1234(&qword_100AD9DA8, &qword_1008175F8);
    sub_1002B39DC();
    sub_100005920(&qword_100AD9DC8, &qword_100AD9DD0, &unk_100817600, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9DB0);
  }

  return result;
}

unint64_t sub_1002B39DC()
{
  result = qword_100AD9DB8;
  if (!qword_100AD9DB8)
  {
    sub_1001F1234(&qword_100AD9D98, &qword_1008175A0);
    sub_100005920(&qword_100AD9DC0, &qword_100AD9DA0, &qword_1008175F0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0, &qword_100831A40, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9DB8);
  }

  return result;
}

void sub_1002B3B08()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus);
  if (v2)
  {
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = v2;
    sub_100796894();

    v4 = OBJC_IVAR___BKDimmedCoverDownloadProgressView_progressObservers;
    swift_beginAccess();
    sub_1007A25C4();
    if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    swift_endAccess();
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100796894();

    swift_beginAccess();
    sub_1007A25C4();
    if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    swift_endAccess();
  }

  else
  {
    v5 = OBJC_IVAR___BKDimmedCoverDownloadProgressView_progressObservers;
    swift_beginAccess();
    *(v1 + v5) = _swiftEmptyArrayStorage;
  }
}

void sub_1002B3DDC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_asset);
  *(v1 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_asset) = a1;
  v4 = a1;

  if (a1)
  {
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v1;
    v6 = sub_100796894();

    v7 = *(v5 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_assetObserver);
    *(v5 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_assetObserver) = v6;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_assetObserver);
    *(v1 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_assetObserver) = 0;
  }
}

void sub_1002B3F04()
{
  v1 = OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressButton;
  if (!*&v0[OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressButton])
  {
    [v0 frame];
    v3 = v2 * 0.5 + -13.5;
    [v0 frame];
    v5 = [objc_allocWithZone(IMRadialProgressButton) initWithFrame:{v3, v4 * 0.5 + -13.5, 27.0, 27.0}];
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v7 = v5;

    if (v7)
    {
      [v7 setInscribeProgress:1];
    }

    v8 = *&v0[v1];
    if (v8)
    {
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 bc_booksWhite];
      [v10 setProgressColor:v11];

      v12 = *&v0[v1];
      if (!v12 || ([v12 setProgressLineCap:1], (v12 = *&v0[v1]) == 0))
      {
LABEL_10:
        [v12 setTrackDiameter:27.0];
        v17 = *&v0[v1];
        if (v17)
        {
          [v17 setProgressThickness:3.0];
          v18 = *&v0[v1];
          if (v18)
          {
            [v18 setTouchInsets:{-27.0, -27.0, -27.0, -27.0}];
            v19 = *&v0[v1];
            if (v19)
            {
              [v19 addTarget:v0 action:"stopDownloadButtonPressed" forControlEvents:1];
            }
          }
        }

        [v0 bounds];
        v24 = [objc_allocWithZone(UIView) initWithFrame:{v20, v21, v22, v23}];
        v25 = *&v0[OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView];
        *&v0[OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView] = v24;
        v26 = v24;

        if (v26)
        {
          [v0 addSubview:v26];

          if (*&v0[v1])
          {
            [v0 addSubview:?];
            goto LABEL_17;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      [v12 setTrackThickness:1.0];
      v13 = *&v0[v1];
      if (v13)
      {
        v14 = objc_opt_self();
        v15 = v13;
        v16 = [v14 bc_booksGroupedBackground];
        [v15 setTrackColor:v16];

        v12 = *&v0[v1];
        goto LABEL_10;
      }
    }

    v12 = 0;
    goto LABEL_10;
  }

LABEL_17:
  v27 = *&v0[OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus];
  if (v27)
  {
    [v27 progressValue];
    *&v28 = v28;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = *&v0[v1];

  [v29 setProgress:v28];
}

void sub_1002B42B0()
{
  v1 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_asset);
  if (v1)
  {
    v23 = v1;
    if ([v23 isDownloading])
    {
      v2 = [objc_opt_self() sharedController];
      if (v2)
      {
        v3 = v2;
        v4 = [v23 permanentOrTemporaryAssetID];
        if (!v4)
        {
          sub_1007A2254();
          v4 = sub_1007A2214();
        }

        v5 = [v3 statusForAssetID:v4];

        v6 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus);
        *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus) = v5;
        v7 = v5;

        sub_1002B3B08();
        sub_1002B3F04();
        v8 = OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView;
        v9 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView);
        if (v9)
        {
          v10 = objc_opt_self();
          v11 = v9;
          v12 = [v10 bc_booksBlack];
          [v11 setBackgroundColor:v12];

          v13 = *(v0 + v8);
          if (v13)
          {
            v14 = v13;
            [v14 setAlpha:0.5];
          }
        }
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  v15 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus);
  *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus) = 0;

  sub_1002B3B08();
  v16 = OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView;
  v17 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView);
  if (v17)
  {
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 clearColor];
    [v19 setBackgroundColor:v20];
  }

  v21 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressButton);
  if (v21)
  {
    [v21 removeFromSuperview];
  }

  v22 = *(v0 + v16);

  [v22 removeFromSuperview];
}

void sub_1002B4518(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a4();
  }
}

id sub_1002B4574(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressButton] = 0;
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView] = 0;
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_progressObservers] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_assetObserver] = 0;
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_kProgressDiameter] = 0x403B000000000000;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus] = 0;
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_asset] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DimmedCoverDownloadProgressView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1002B4670(void *a1)
{
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressButton] = 0;
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView] = 0;
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_progressObservers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_assetObserver] = 0;
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_kProgressDiameter] = 0x403B000000000000;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus] = 0;
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_asset] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DimmedCoverDownloadProgressView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1002B476C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DimmedCoverDownloadProgressView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002B48DC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B22FB0);
  sub_100008B98(v0, qword_100B22FB0);
  return sub_10079ACD4();
}

void sub_1002B495C(uint64_t a1)
{
  sub_1002B3658(319);
  if (v1 <= 0x3F)
  {
    sub_100247C8C(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1002B4E70();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1002B4A30(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_10079BC44() - 8) + 64);
  v7 = 8;
  v8 = *(*(a3 + 16) - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v12 < a2)
  {
    v13 = ((((((v11 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v10 + 24) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 8;
    v14 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = a2 - v12 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    v24 = v12 + (v21 | v20);
    return (v24 + 1);
  }

LABEL_29:
  v22 = ((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9 <= 0x7FFFFFFE)
  {
    v23 = *v22;
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    v24 = v23 - 1;
    if (v24 < 0)
    {
      v24 = -1;
    }

    return (v24 + 1);
  }

  v25 = *(*(*(a3 + 16) - 8) + 48);

  return v25((v22 + v10 + 16) & ~v10);
}

void sub_1002B4C20(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_10079BC44() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = ((((((*(v10 + 64) + (((v9 & 0xFFFFFFFFFFFFFFF8) + v12 + 24) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v17 = 0;
    v18 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((*(v10 + 64) + (((v9 & 0xFFFFFFF8) + v12 + 24) & ~v12) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a3 - v13 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v21 = ((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v11 > 0x7FFFFFFE)
      {
        v22 = *(v10 + 56);

        v22((v21 + v12 + 16) & ~v12, a2);
      }

      else if (a2 > 0x7FFFFFFE)
      {
        *v21 = (a2 - 0x7FFFFFFF);
        v21[1] = 0;
      }

      else
      {
        *v21 = a2;
      }

      return;
    }
  }

  if (((((((*(v10 + 64) + (((v9 & 0xFFFFFFF8) + v12 + 24) & ~v12) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((((((*(v10 + 64) + (((v9 & 0xFFFFFFF8) + v12 + 24) & ~v12) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v13 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

void sub_1002B4E70()
{
  if (!qword_100AD9EC0)
  {
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD9EC0);
    }
  }
}

uint64_t sub_1002B4F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_1001F1234(&qword_100AD9EC8, &qword_100817748);
  v4 = *(a1 + 16);
  v5 = a1;
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  v6 = sub_10079E1A4();
  v7 = sub_10079C2A4();
  v8 = sub_10079C2A4();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v33 = &v29 - v9;
  v10 = *(v6 - 8);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v31 = v7;
  v32 = *(v7 - 8);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  v29 = v5;
  v17 = *(v5 + 24);
  v37 = v4;
  v38 = v17;
  v39 = v2;
  sub_10079E474();
  sub_10079E194();
  sub_10079E474();
  WitnessTable = swift_getWitnessTable();
  v30 = v16;
  sub_10079DB14();
  (*(v10 + 8))(v13, v6);
  v19 = *(v2 + *(v29 + 52));
  if (v19 == 1)
  {
    UIAccessibilityIsReduceMotionEnabled();
  }

  sub_10079E634();
  v42 = WitnessTable;
  v43 = &protocol witness table for _FrameLayout;
  v20 = v31;
  v21 = swift_getWitnessTable();
  v22 = v33;
  v23 = v30;
  sub_10079D724();
  if (v19)
  {
    v24 = sub_10079E4A4();
  }

  else
  {
    v24 = sub_10079E4C4();
  }

  v25 = v24;
  v40 = v21;
  v41 = &protocol witness table for _ScaleEffect;
  v26 = v35;
  v27 = swift_getWitnessTable();
  sub_1006DB190(v25, v26, v27);

  (*(v34 + 8))(v22, v26);
  return (*(v32 + 8))(v23, v20);
}

uint64_t sub_1002B538C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10079C2A4();
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  __chkstk_darwin(v15);
  v43 = &v38 - v16;
  v40 = sub_1001F1160(&qword_100AD9EC8, &qword_100817748);
  v46 = *(v40 - 8);
  __chkstk_darwin(v40);
  v44 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  v22 = type metadata accessor for MenuItemButtonView(0, a2, a3, v21);
  sub_1002B5820(v22);
  (*(v7 + 16))(v9, a1 + *(v22 + 40), a2);
  sub_10079DBB4();
  (*(v7 + 8))(v9, a2);
  v56[2] = a3;
  v56[3] = &protocol witness table for _OpacityEffect;
  WitnessTable = swift_getWitnessTable();
  v23 = v43;
  sub_10039232C();
  v24 = v41;
  v25 = *(v41 + 8);
  v25(v14, v10);
  v26 = v44;
  v27 = v40;
  (*(v46 + 16))(v44, v20, v40);
  v56[0] = v26;
  v28 = v45;
  (*(v24 + 16))(v45, v23, v10);
  v56[1] = v28;
  v55[0] = v27;
  v55[1] = v10;
  v29 = v27;
  v30 = sub_1001F1234(&qword_100AD9ED0, &qword_100817750);
  v31 = sub_1001F1234(&qword_100AD9ED8, &qword_100817758);
  v32 = sub_1001F1234(&qword_100AD9EE0, &qword_100817760);
  v33 = sub_1002B6130();
  v34 = sub_1002B61E8();
  v35 = sub_1002B62A0();
  OpaqueTypeConformance2 = v30;
  v48 = &type metadata for Solarium;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v52 = &protocol witness table for Solarium;
  v53 = v34;
  v54 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = WitnessTable;
  sub_10038FA94(v56, 2uLL, v55);
  v25(v43, v10);
  v36 = *(v46 + 8);
  v36(v20, v29);
  v25(v45, v10);
  return (v36)(v44, v29);
}

uint64_t sub_1002B5820(uint64_t a1)
{
  v3 = sub_1001F1160(&qword_100AD9ED0, &qword_100817750);
  __chkstk_darwin(v3);
  v5 = &v23[-v4];
  v6 = sub_10079C3D4();
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v9 + 28);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_10079C9E4();
  (*(*(v12 - 8) + 104))(&v8[v10], v11, v12);
  __asm { FMOV            V0.2D, #16.0 }

  *v8 = _Q0;
  *v5 = sub_10079E474();
  v5[1] = v18;
  v19 = sub_1001F1160(&qword_100AD9F10, &qword_100817770);
  sub_1002B5AA8(v1, *(a1 + 16), *(a1 + 24), v5 + *(v19 + 44));
  sub_10079E474();
  sub_10079BE54();
  v20 = (v5 + *(v3 + 36));
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;
  v20[2] = v27;
  sub_10079E414();
  v24 = v8;
  sub_1001F1160(&qword_100AD9ED8, &qword_100817758);
  sub_1001F1160(&qword_100AD9EE0, &qword_100817760);
  sub_1002B6130();
  sub_1002B61E8();
  sub_1002B62A0();
  sub_10079DC54();
  sub_100007840(v5, &qword_100AD9ED0, &qword_100817750);
  return sub_1002B6360(v8);
}

uint64_t sub_1002B5AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v56 = a4;
  v7 = sub_10079BC44();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = sub_10079E534();
  v53 = *(v13 - 8);
  v54 = v13;
  __chkstk_darwin(v13);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001F1160(&qword_100AD9F18, &qword_100817778);
  v55 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v50 = &v45 - v19;
  v20 = sub_1001F1160(&qword_100AD9F20, &qword_100817780);
  __chkstk_darwin(v20 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v45 - v24;
  v27 = type metadata accessor for MenuItemButtonView(0, a2, a3, v26);
  if (*(a1 + *(v27 + 56)) == 1)
  {
    v48 = sub_10079DE94();
    KeyPath = swift_getKeyPath();
    v28 = sub_1002B6420(v27);
    swift_getKeyPath();
    v49 = a1;
    swift_getKeyPath();
    v46 = v15;
    v29 = v7;
    v30 = v28;
    sub_10079B9A4(v12);

    v31 = v52;
    (*(v8 + 104))(v52, enum case for ColorScheme.dark(_:), v29);
    LOBYTE(v30) = sub_10079BC34();
    v32 = *(v8 + 8);
    v32(v31, v29);
    v32(v12, v29);
    a1 = v49;
    v33 = v53;
    v34 = &enum case for BlendMode.plusLighter(_:);
    if ((v30 & 1) == 0)
    {
      v34 = &enum case for BlendMode.plusDarker(_:);
    }

    v35 = v51;
    v36 = v54;
    (*(v53 + 104))(v51, *v34, v54);
    v37 = v46;
    (*(v33 + 32))(v17 + *(v46 + 36), v35, v36);
    v38 = v48;
    *v17 = KeyPath;
    v17[1] = v38;
    v39 = v17;
    v40 = v50;
    sub_1002B6474(v39, v50);
    sub_1002B6474(v40, v25);
    (*(v55 + 56))(v25, 0, 1, v37);
  }

  else
  {
    (*(v55 + 56))(v25, 1, 1, v15);
  }

  v41 = *(a1 + *(v27 + 60));
  sub_1000077D8(v25, v22, &qword_100AD9F20, &qword_100817780);
  v42 = v56;
  *v56 = 1;
  v43 = sub_1001F1160(&qword_100AD9F28, &qword_100817788);
  sub_1000077D8(v22, &v42[*(v43 + 48)], &qword_100AD9F20, &qword_100817780);
  *&v42[*(v43 + 64)] = v41;
  swift_retain_n();
  sub_100007840(v25, &qword_100AD9F20, &qword_100817780);

  return sub_100007840(v22, &qword_100AD9F20, &qword_100817780);
}

uint64_t sub_1002B5FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_1001F1160(&qword_100AD9ED8, &qword_100817758) + 36);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = sub_10079C9E4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(sub_1001F1160(&unk_100AE42C0, &qword_100815B20) + 36)) = 256;
  return sub_1000077D8(a1, a2, &qword_100AD9ED0, &qword_100817750);
}

uint64_t sub_1002B608C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(sub_1001F1160(&qword_100AD9EE0, &qword_100817760) + 36);
  sub_1002B63BC(a2, v6);
  *(v6 + *(sub_1001F1160(&qword_100AD97F8, &qword_100816BF0) + 36)) = 256;
  return sub_1000077D8(a1, a3, &qword_100AD9ED0, &qword_100817750);
}

unint64_t sub_1002B6130()
{
  result = qword_100AD9EE8;
  if (!qword_100AD9EE8)
  {
    sub_1001F1234(&qword_100AD9ED0, &qword_100817750);
    sub_100005920(&qword_100AD9EF0, &qword_100AD9EF8, &qword_100817768, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9EE8);
  }

  return result;
}

unint64_t sub_1002B61E8()
{
  result = qword_100AD9F00;
  if (!qword_100AD9F00)
  {
    sub_1001F1234(&qword_100AD9ED8, &qword_100817758);
    sub_1002B6130();
    sub_100005920(&qword_100AD5530, &unk_100AE42C0, &qword_100815B20, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9F00);
  }

  return result;
}

unint64_t sub_1002B62A0()
{
  result = qword_100AD9F08;
  if (!qword_100AD9F08)
  {
    sub_1001F1234(&qword_100AD9EE0, &qword_100817760);
    sub_1002B6130();
    sub_100005920(&unk_100AF6660, &qword_100AD97F8, &qword_100816BF0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9F08);
  }

  return result;
}

uint64_t sub_1002B6360(uint64_t a1)
{
  v2 = sub_10079C3D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002B63BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079C3D4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B6420(uint64_t a1)
{
  result = *(v1 + *(a1 + 36));
  if (!result)
  {
    type metadata accessor for ChromeStyle(0);
    sub_1002B3600();
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B6474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD9F18, &qword_100817778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002B64E4()
{
  result = qword_100AD9F30;
  if (!qword_100AD9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9F30);
  }

  return result;
}

id BEChromeRootView.__allocating_init(frame:actionMenuState:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC5Books16BEChromeRootView_actionMenuState] = a1;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

id BEChromeRootView.init(frame:actionMenuState:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC5Books16BEChromeRootView_actionMenuState] = a1;
  v11.receiver = v5;
  v11.super_class = type metadata accessor for BEChromeRootView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a2, a3, a4, a5);
}

id MiniPlayerHostingTabBarController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void *BEChromeRootView.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  v7 = [v3 subviews];
  sub_10025D2FC();
  v8 = sub_1007A25E4();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:

    return 0;
  }

  result = sub_1007A38D4();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_1007A3784();
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_6:
    v11 = v10;

    v12 = [v11 hitTest:a1 withEvent:{a2, a3}];
    if (v12)
    {
      v13 = v12;
      if (v12 != v11)
      {
LABEL_10:

        return v13;
      }

      v14 = *&v3[OBJC_IVAR____TtC5Books16BEChromeRootView_actionMenuState];
      swift_getKeyPath();
      sub_1002B6BE0();

      sub_100797A14();

      v15 = *(v14 + 328);
      sub_1002B6C38(v15);

      if ((v15 >> 62) <= 1)
      {
        sub_1002B6C54(v15);
        goto LABEL_10;
      }

      if (__ROR8__(v15 ^ 0x8000000000000000, 3))
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

id LibraryCollectionTitleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id BEChromeRootView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BEChromeRootView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002B6AB0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B6BE0();
  sub_100797A14();

  v4 = *(v3 + 328);
  *a2 = v4;
  return sub_1002B6C38(v4);
}

double sub_1002B6B2C(unint64_t *a1)
{
  v1 = *a1;
  sub_1002B6C38(*a1);
  return sub_10033A0A4(v1);
}

void (*sub_1002B6B60(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007A3784();
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
    return sub_1002B6E88;
  }

  __break(1u);
  return result;
}

unint64_t sub_1002B6BE0()
{
  result = qword_100ADB430;
  if (!qword_100ADB430)
  {
    type metadata accessor for REActionMenuState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB430);
  }

  return result;
}

unint64_t sub_1002B6C38(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

double sub_1002B6C54(unint64_t a1)
{
  if ((a1 >> 62) <= 1)
  {
  }

  return result;
}

uint64_t (*sub_1002B6C70(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007A3784();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1002B6CF0;
  }

  __break(1u);
  return result;
}

void (*sub_1002B6CF8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007A3784();
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
    return sub_1002B6D78;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1002B6D80(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007A3784();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1002B6E8C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1002B6E00(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007A3784();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1002B6E80;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B6E90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 32) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 24) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002B6EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = 1;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002B6F38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v6 = sub_1001F1160(&qword_100AD9F80, &qword_1008178B8);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_1001F1160(&qword_100AD9F88, &unk_1008178C0);
  __chkstk_darwin(v9);
  v11 = (&v35 - v10);
  if (sub_1002B7538())
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = swift_weakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v41 = swift_weakLoadStrong();
        v16 = swift_unknownObjectWeakLoadStrong();
        v42 = *(v3 + 32);
        v43 = v16;
        v39 = type metadata accessor for ChromeStyle(0);
        v40 = sub_1002B7860(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);

        *v11 = sub_10079C484();
        v11[1] = v17;
        v18 = type metadata accessor for RERootContainerView(0);
        v38 = a2;
        v19 = v18;
        v44 = a3;
        v20 = *(v18 + 20);
        *(v11 + v20) = swift_getKeyPath();
        sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
        swift_storeEnumTagMultiPayload();
        v21 = v19[6];
        *(v11 + v21) = swift_getKeyPath();
        sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
        swift_storeEnumTagMultiPayload();
        v22 = v19[7];
        *(v11 + v22) = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v23 = v11 + v19[8];
        *v23 = swift_getKeyPath();
        v23[8] = 0;
        v24 = v11 + v19[9];
        *v24 = swift_getKeyPath();
        v24[8] = 0;
        v25 = v19[10];
        *(v11 + v25) = swift_getKeyPath();
        sub_1001F1160(&qword_100AD9FA0, &qword_100817A00);
        swift_storeEnumTagMultiPayload();
        v26 = v19[11];
        *(v11 + v26) = swift_getKeyPath();
        sub_1001F1160(&unk_100ADB740, &qword_100819F00);
        swift_storeEnumTagMultiPayload();
        sub_10079CF54();
        v37 = v19[17];
        swift_weakInit();
        v36 = v11 + v19[18];
        *(v36 + 1) = 0;
        swift_unknownObjectWeakInit();
        sub_10001389C();
        sub_1007A33F4();
        *(v11 + v19[12]) = v13;
        *(v11 + v19[13]) = *(v15 + 136);
        *(v11 + v19[14]) = v15;
        swift_getKeyPath();
        v46 = v15;
        sub_1002B7860(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);

        sub_100797A14();

        v27 = (v11 + v19[15]);
        type metadata accessor for HistoryViewModel(0);
        sub_1002B7860(&qword_100AD9FA8, type metadata accessor for HistoryViewModel, &unk_10081CA84);
        *v27 = sub_10079C024();
        v27[1] = v28;
        swift_weakAssign();

        *(v36 + 1) = v42;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        *(v11 + v19[20]) = v38 & 1;
        *(v11 + v19[19]) = v45;
        v29 = (v11 + v19[21]);
        *v29 = 0;
        v29[1] = 0;
        v30 = *(v15 + 104);
        v31 = sub_10079B8A4();
        v32 = (v11 + *(v9 + 36));
        v33 = v30;

        *v32 = v31;
        v32[1] = v30;
        sub_1002B78A8(v11, v8);
        swift_storeEnumTagMultiPayload();
        sub_1002B763C();
        sub_10079CCA4();
        return sub_1002B7918(v11);
      }
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1002B763C();
  return sub_10079CCA4();
}

uint64_t sub_1002B74C4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD9F68);
  sub_100008B98(v0, qword_100AD9F68);
  sub_10001389C();
  return sub_1007A33F4();
}

uint64_t sub_1002B7538()
{
  if (swift_weakLoadStrong() && (, swift_weakLoadStrong()))
  {

    return 1;
  }

  else
  {
    if (qword_100AD13A8 != -1)
    {
      swift_once();
    }

    v1 = sub_10079ACE4();
    sub_100008B98(v1, qword_100AD9F68);
    v2 = sub_10079ACC4();
    v3 = sub_1007A29B4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Expected actionMenuState, viewModel", v4, 2u);
    }

    return 0;
  }
}

unint64_t sub_1002B763C()
{
  result = qword_100AD9F90;
  if (!qword_100AD9F90)
  {
    sub_1001F1234(&qword_100AD9F88, &unk_1008178C0);
    sub_1002B7860(&qword_100AD9F98, type metadata accessor for RERootContainerView, &unk_100842E50);
    sub_1002B76F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9F90);
  }

  return result;
}

unint64_t sub_1002B76F8()
{
  result = qword_100AD1D60;
  if (!qword_100AD1D60)
  {
    sub_1001F1234(&unk_100ADB260, &unk_10080B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1D60);
  }

  return result;
}

uint64_t sub_1002B775C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B7860(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  *a2 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__historyViewModel);
}

uint64_t sub_1002B7860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002B78A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD9F88, &unk_1008178C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B7918(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD9F88, &unk_1008178C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002B7990()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD9FB0);
  sub_100008B98(v0, qword_100AD9FB0);
  return sub_10079ACD4();
}

void sub_1002B7A10(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v10 = sub_1001F1160(&unk_100ADA050, &qword_100833F70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - v14;
  (*(v11 + 16))(&v26 - v14, a1, v10, v13);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v15, v10);
  v19 = (v18 + v17);
  *v19 = a2;
  v19[1] = a3;
  v19[2] = a4;
  v20 = (v18 + ((v17 + 31) & 0xFFFFFFFFFFFFFFF8));
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  aBlock[4] = sub_1002BAECC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A133E8;
  v22 = _Block_copy(aBlock);
  v23 = a2;
  v24 = a3;
  v25 = a4;

  [v23 performBlockOnWorkerQueue:v22];
  _Block_release(v22);
}

uint64_t sub_1002B7C1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1007A2214();
  v10 = [a3 libraryMutableAssetWithPermanentOrTemporaryAssetID:v9 inManagedObjectContext:a1];

  if (v10)
  {
    [a3 cancelDownloadingAsset:v10];
  }

  else
  {
    if (qword_100AD13B0 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AD9FB0);
    v10 = sub_10079ACC4();
    v12 = sub_1007A29B4();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, v12, "Unable to cancel download", v13, 2u);
    }
  }

  sub_1001F1160(&unk_100ADA050, &qword_100833F70);
  return sub_1007A26B4();
}

uint64_t sub_1002B7D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[62] = a5;
  v6[63] = a6;
  v6[60] = a3;
  v6[61] = a4;
  v6[58] = a1;
  v6[59] = a2;
  sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  v6[64] = swift_task_alloc();
  sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v7 = sub_1007969B4();
  v6[68] = v7;
  v6[69] = *(v7 - 8);
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();
  v6[72] = sub_1007A26F4();
  v6[73] = sub_1007A26E4();
  v9 = sub_1007A2694();
  v6[74] = v9;
  v6[75] = v8;

  return _swift_task_switch(sub_1002B7F0C, v9, v8);
}

uint64_t sub_1002B7F0C()
{
  v1 = v0[60];
  if (v1)
  {
    v2 = v0[61];
    v3 = v0[58];
    v4 = v1;
    v5 = sub_1002BA6F8(v3, v4, v2);
  }

  else
  {
    v5 = 0;
  }

  v0[76] = v5;
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[58];
  sub_10000E3E8(v9, v9[3]);
  sub_1007975E4();
  v10 = *(v6 + 48);
  v0[77] = v10;
  v0[78] = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v8, 1, v7) == 1)
  {
    v11 = v0[58];
    sub_100008F68(v0[67]);
    sub_10000E3E8(v11, v9[3]);
    v12 = sub_100797674();
    v14 = v13;
    v0[81] = v13;
    v15 = swift_task_alloc();
    v0[82] = v15;
    *v15 = v0;
    v15[1] = sub_1002B83FC;
    v16 = v0[66];
    v17 = v0[62];
    v18 = v0[61];

    return sub_1002B8FF8(v16, v12, v14, v18, v17);
  }

  else
  {
    v20 = v0[63];
    v21 = v0[60];
    (*(v0[69] + 32))(v0[71], v0[67], v0[68]);
    sub_100796944(v22);
    v24 = v23;
    v0[79] = v23;
    v0[10] = v0;
    v0[15] = v0 + 57;
    v0[11] = sub_1002B81D8;
    v25 = swift_continuation_init();
    v0[33] = sub_1001F1160(&qword_100AD9FC8, &qword_100817B30);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_1002B8F1C;
    v0[29] = &unk_100A132D0;
    v0[30] = v25;
    [v20 downloadSampleWithURL:v24 contentData:v5 tracker:v21 completion:v0 + 26];

    return _swift_continuation_await(v0 + 10);
  }
}

uint64_t sub_1002B81D8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 640) = v2;
  v3 = *(v1 + 600);
  v4 = *(v1 + 592);
  if (v2)
  {
    v5 = sub_1002B8A70;
  }

  else
  {
    v5 = sub_1002B8308;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002B8308()
{
  v1 = v0[79];
  v2 = v0[76];
  v3 = v0[71];
  v4 = v0[69];
  v5 = v0[68];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002B83FC()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v3 = *(v2 + 600);
    v4 = *(v2 + 592);
    v5 = sub_1002B8B78;
  }

  else
  {

    v3 = *(v2 + 600);
    v4 = *(v2 + 592);
    v5 = sub_1002B8520;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002B8520()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 544);
  v3 = *(v0 + 520);
  sub_10000847C(*(v0 + 528), v3);
  if (v1(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 608);
    v5 = *(v0 + 528);
    v6 = *(v0 + 520);
    v7 = *(v0 + 512);
    v9 = *(v0 + 464);
    v8 = *(v0 + 472);

    sub_100008F68(v6);
    v10 = sub_1007A2744();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1002B0670(v9, v0 + 320);
    sub_100009864(v8, v0 + 408);
    v11 = sub_1007A26E4();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    sub_1001FF7C8((v0 + 320), (v12 + 32));
    sub_1001FF7E0((v0 + 408), v12 + 80);
    sub_1003457A0(0, 0, v7, &unk_100817B28, v12);

    sub_100008F68(v5);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 608);
    v16 = *(v0 + 504);
    v17 = *(v0 + 480);
    (*(*(v0 + 552) + 32))(*(v0 + 560), *(v0 + 520), *(v0 + 544));
    sub_100796944(v18);
    v20 = v19;
    *(v0 + 672) = v19;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 448;
    *(v0 + 24) = sub_1002B8840;
    v21 = swift_continuation_init();
    *(v0 + 200) = sub_1001F1160(&qword_100AD9FC8, &qword_100817B30);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1002B8F1C;
    *(v0 + 168) = &unk_100A132A8;
    *(v0 + 176) = v21;
    [v16 downloadSampleWithURL:v20 contentData:v15 tracker:v17 completion:v0 + 144];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1002B8840()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 680) = v2;
  v3 = *(v1 + 600);
  v4 = *(v1 + 592);
  if (v2)
  {
    v5 = sub_1002B8D2C;
  }

  else
  {
    v5 = sub_1002B8970;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002B8970()
{
  v1 = v0[84];
  v2 = v0[76];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[66];

  (*(v4 + 8))(v3, v5);
  sub_100008F68(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002B8A70()
{
  v1 = v0[79];
  v2 = v0[76];
  v3 = v0[71];
  v4 = v0[69];
  v5 = v0[68];

  swift_willThrow();
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002B8B78()
{

  v1 = *(v0 + 608);
  v2 = *(v0 + 512);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = sub_1007A2744();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1002B0670(v4, v0 + 272);
  sub_100009864(v3, v0 + 368);
  v6 = sub_1007A26E4();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_1001FF7C8((v0 + 272), (v7 + 32));
  sub_1001FF7E0((v0 + 368), v7 + 80);
  sub_1003457A0(0, 0, v2, &unk_100817B18, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002B8D2C()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 528);

  swift_willThrow();
  (*(v3 + 8))(v2, v4);
  sub_100008F68(v5);

  v6 = *(v0 + 608);
  v7 = *(v0 + 512);
  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  v10 = sub_1007A2744();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1002B0670(v9, v0 + 272);
  sub_100009864(v8, v0 + 368);
  v11 = sub_1007A26E4();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_1001FF7C8((v0 + 272), (v12 + 32));
  sub_1001FF7E0((v0 + 368), v12 + 80);
  sub_1003457A0(0, 0, v7, &unk_100817B18, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002B8F1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_1007A25E4();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1002B8FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a3;
  v5[25] = a5;
  v5[22] = a1;
  v5[23] = a2;
  sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_1002B90A4, 0, 0);
}

uint64_t sub_1002B90A4()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = sub_1007A2214();
  v0[28] = v3;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1002B91DC;
  v4 = swift_continuation_init();
  v0[17] = sub_1001F1160(&qword_100AD9FD8, &unk_100817B38);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002B9E68;
  v0[13] = &unk_100A132F8;
  v0[14] = v4;
  [v2 sampleDownloadURLForAssetID:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002B91DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1002B94F0;
  }

  else
  {
    v2 = sub_1002B92EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002B92EC()
{
  v1 = v0[26];
  sub_100008EF8(v0[27], v1);
  v2 = sub_1007969B4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[28];
  if (v4 == 1)
  {
    sub_100008F68(v0[26]);

    if (qword_100AD13B0 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AD9FB0);
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error downloading sample from ItemDescriptionCache", v9, 2u);
    }

    v10 = v0[22];

    (*(v3 + 56))(v10, 1, 1, v2);
  }

  else
  {
    v11 = v0[22];
    (*(v3 + 32))(v11, v0[26], v2);

    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002B94F0(uint64_t a1)
{
  v16 = v1;
  v2 = v1[28];
  swift_willThrow();

  if (qword_100AD13B0 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AD9FB0);
  swift_errorRetain();
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1007A3B84();
    v10 = sub_1000070F4(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error downloading sample with error: %s", v6, 0xCu);
    sub_1000074E0(v7);
  }

  else
  {
  }

  v11 = v1[22];
  v12 = sub_1007969B4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

  v13 = v1[1];

  return v13();
}

uint64_t sub_1002B9714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1007A26F4();
  v5[4] = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_1002BAF9C, v7, v6);
}

uint64_t sub_1002B97AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1007A26F4();
  v5[4] = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_1002B9844, v7, v6);
}

uint64_t sub_1002B9844()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = objc_opt_self();
  sub_10000E3E8(v2, v2[3]);
  sub_1007976B4();
  v4 = sub_1007972D4();
  sub_10000E3E8(v1, v1[3]);
  sub_100796EF4();
  isa = sub_1007A2024().super.isa;

  [v3 presentNoticeForNoSampleAvailable:v4 & 1 options:isa];

  v6 = v0[1];

  return v6();
}

void sub_1002B9964(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v11 = sub_1001F1160(&qword_100ADA048, &unk_100817B50);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v22 - v14;
  (*(v12 + 16))(&v22 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  *(v17 + 6) = v23;
  (*(v12 + 32))(&v17[v16], v15, v11);
  aBlock[4] = sub_1002BAD68;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A13348;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = a3;
  v21 = a4;

  [v19 performBlockOnWorkerQueue:v18];
  _Block_release(v18);
}

void sub_1002B9B58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1001F1160(&qword_100ADA048, &unk_100817B50);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - v12;
  v14 = sub_1007A2214();
  v15 = [a2 libraryMutableAssetWithPermanentOrTemporaryAssetID:v14 inManagedObjectContext:a1];

  if (v15)
  {
    (*(v11 + 16))(v13, a7, v10);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = swift_allocObject();
    (*(v11 + 32))(v17 + v16, v13, v10);
    aBlock[4] = sub_1002BAE08;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002B9DDC;
    aBlock[3] = &unk_100A13398;
    v18 = _Block_copy(aBlock);
    v19 = v15;

    [a2 resolveLibraryAsset:v19 options:0 completion:v18];
    _Block_release(v18);
  }

  else
  {
    aBlock[0] = 0;
    sub_1007A26B4();
  }
}