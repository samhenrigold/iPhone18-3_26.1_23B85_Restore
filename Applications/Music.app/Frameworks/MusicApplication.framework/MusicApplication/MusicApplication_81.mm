uint64_t sub_738AD8()
{
  v1 = *(v0 + 264);

  if (v1 >> 62)
  {
    v4 = sub_ABB060();
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    sub_ABAE20();
    swift_unknownObjectRelease();
  }

  else if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    return _swift_task_switch(v4, v2, v3);
  }

LABEL_5:
  v5 = *(v0 + 200);

  sub_12E1C(v0 + 56, &qword_E0EA98, &unk_B239F0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = sub_738FA8;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_738BE8()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_738C4C, v1, v2);
}

uint64_t sub_738C4C()
{
  v1 = v0[26];
  v2 = v0[25];

  v3 = v0[20];
  v4 = v0[21];

  return _swift_task_switch(sub_738CBC, v3, v4);
}

uint64_t sub_738CBC()
{
  v20 = v0;

  sub_12E1C((v0 + 7), &qword_E0EA98, &unk_B239F0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  swift_errorRetain();
  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[34];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[16] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v6 = sub_AB9350();
    v8 = sub_500C84(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v1, v2, "Failed to perform leaveCommand with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
  }

  *(v0[17] + v0[23]) = 0;
  v9 = v0[17];
  v10 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v9 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_AB3DC0();
  }

  v11 = v0[17];
  *(v9 + v10) = 0;

  sub_7480BC();
  v12 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v13 = *(v11 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v13)
  {

    v14 = sub_AB4BA0();
    v15 = sub_AB9F50();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Leave completed, pending session found", v16, 2u);
    }

    *(v9 + v10) = v13;
    swift_retain_n();

    sub_7480BC();

    *(v11 + v12) = 0;
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_738FA8()
{

  *(v0[17] + v0[23]) = 0;
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_AB3DC0();
  }

  v3 = v0[17];
  *(v1 + v2) = 0;

  sub_7480BC();
  v4 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v5 = *(v3 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v5)
  {

    v6 = sub_AB4BA0();
    v7 = sub_AB9F50();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Leave completed, pending session found", v8, 2u);
    }

    *(v1 + v2) = v5;
    swift_retain_n();

    sub_7480BC();

    *(v3 + v4) = 0;
  }

  v9 = v0[1];

  return v9();
}

void GroupActivitiesManager.postEvent(_:participantID:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v187 = a3;
  v185 = a2;
  v6 = *(a1 + 8);
  v170 = *a1;
  v169 = v6;
  v7 = *(a1 + 24);
  v168 = *(a1 + 16);
  v167 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v174 = v156 - v8;
  v177 = sub_AB3C40();
  v176 = *(v177 - 8);
  __chkstk_darwin();
  v171 = v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v175 = v156 - v10;
  __chkstk_darwin();
  v178 = v156 - v11;
  v166 = sub_AB3B80();
  v162 = *(v166 - 8);
  __chkstk_darwin();
  v164 = v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_AB3BA0();
  v161 = *(v165 - 8);
  __chkstk_darwin();
  v163 = v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_AB3C30();
  v180 = *(v181 - 8);
  __chkstk_darwin();
  v173 = v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = v156 - v15;
  v191 = sub_AB3470();
  v184 = *(v191 - 8);
  __chkstk_darwin();
  v190 = v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E154E0, &qword_B25948);
  __chkstk_darwin();
  v182 = v156 - v17;
  v192 = sub_AB3E80();
  v193 = *(v192 - 8);
  __chkstk_darwin();
  v172 = v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = v156 - v19;
  __chkstk_darwin();
  v189 = v156 - v20;
  __chkstk_darwin();
  v186 = v156 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E154E8, &qword_B25950);
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = v156 - v26;
  swift_beginAccess();
  v28 = v3[7];
  v29 = v3[8];
  v30 = v3[9];
  v31 = v3[10];
  *(v3 + 7) = xmmword_AF82C0;
  v3[9] = 0;
  v3[10] = 0;
  sub_752568(v28, v29, v30, v31);
  swift_beginAccess();
  v33 = v3[5];
  v32 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v33);
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin();
  v37 = v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v37, v35);
  v38 = (*(v32 + 56))(v33, v32);
  (*(v34 + 8))(v37, v33);
  v39 = [v38 applicationState];

  v183 = a1;
  if ((*(a1 + 48) | 4) == 4 && v39 || !*(v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    return;
  }

  sub_AB3DD0();
  (*(v23 + 104))(v25, enum case for GroupSession.State.joined<A>(_:), v22);
  v41 = type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_752B88(&qword_E154F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v156[0] = v41;
  v42 = sub_AB3DB0();
  v43 = *(v23 + 8);
  v43(v25, v22);
  v43(v27, v22);
  if ((v42 & 1) == 0)
  {
LABEL_27:

    return;
  }

  v188 = sub_7475B0(v185, v187);
  v160 = v44;
  v156[1] = v40;
  v45 = sub_AB3D70();
  v46 = v45;
  v47 = v45 + 56;
  v48 = 1 << *(v45 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v45 + 56);
  v51 = (v48 + 63) >> 6;
  v158 = (v193 + 16);
  v159 = (v193 + 32);
  v157 = v184 + 1;
  v184 = (v193 + 8);

  v52 = 0;
  v53 = v192;
  if (!v50)
  {
LABEL_9:
    while (1)
    {
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v54 >= v51)
      {

        v66 = 1;
        v67 = v186;
        v68 = v182;
        goto LABEL_22;
      }

      v50 = *(v47 + 8 * v54);
      ++v52;
      if (v50)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  while (1)
  {
    v54 = v52;
LABEL_12:
    v55 = v46;
    v56 = v193;
    v57 = *(v46 + 48) + *(v193 + 72) * (__clz(__rbit64(v50)) | (v54 << 6));
    v58 = v189;
    (*(v193 + 16))(v189, v57, v53);
    v59 = v53;
    v60 = *(v56 + 32);
    v60(v194, v58, v59);
    v61 = v190;
    sub_AB3E70();
    v62 = sub_AB3440();
    v64 = v63;
    (*v157)(v61, v191);
    if (v62 == v188 && v64 == v160)
    {

      goto LABEL_21;
    }

    v65 = sub_ABB3C0();

    if (v65)
    {
      break;
    }

    v50 &= v50 - 1;
    v53 = v192;
    (*v184)(v194, v192);
    v52 = v54;
    v46 = v55;
    if (!v50)
    {
      goto LABEL_9;
    }
  }

LABEL_21:

  v68 = v182;
  v69 = v192;
  v60(v182, v194, v192);
  v53 = v69;
  v66 = 0;
  v67 = v186;
LABEL_22:
  v70 = v193;
  (*(v193 + 56))(v68, v66, 1, v53);

  if ((*(v70 + 48))(v68, 1, v53) == 1)
  {
    sub_12E1C(v68, &qword_E154E0, &qword_B25948);
    if (qword_E0CF70 == -1)
    {
LABEL_24:
      v71 = sub_AB4BC0();
      __swift_project_value_buffer(v71, static Logger.groupActivities);
      v72 = v187;

      v73 = sub_AB4BA0();
      v74 = sub_AB9F30();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v197[0] = v76;
        *v75 = 136446210;
        *(v75 + 4) = sub_500C84(v185, v72, v197);
        _os_log_impl(&dword_0, v73, v74, "No active participant with identifier=%{public}s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
      }

      goto LABEL_27;
    }

LABEL_82:
    swift_once();
    goto LABEL_24;
  }

  v77 = v53;
  (*v159)(v67, v68, v53);
  v78 = *v183;
  v79 = *(v183 + 8);
  v80 = *(v183 + 9) | ((*(v183 + 13) | (*(v183 + 15) << 16)) << 32);
  v82 = *(v183 + 16);
  v81 = *(v183 + 24);
  v83 = *(v183 + 48);
  v84 = v79 | (v80 << 8);
  if (v83 <= 2)
  {
    if (*(v183 + 48))
    {
      v85 = v53;
      v86 = v181;
      v87 = v183;
      if (v83 != 1)
      {
        if (v83 == 2)
        {
          v88 = v179;
          sub_AB3BF0();
          goto LABEL_53;
        }

        goto LABEL_76;
      }

      v88 = v179;
      sub_AB3C10();
LABEL_53:
      (*v158)(v172, v67, v85);
      (*(v180 + 16))(v173, v88, v86);
      v118 = *(v87 + 8);
      v119 = *(v87 + 48);
      if (v119 == 4)
      {
        v120 = v177;
      }

      else
      {
        v120 = v177;
        v121 = v174;
        if (v119 == 5)
        {
          v123 = *(v87 + 32);
          v122 = *(v87 + 40);
          v124 = *(v87 + 16);
          v125 = *(v87 + 24);
          if (!(v118 | *v87 | v122 | v123 | v125 | v124) || *v87 == 2 && !(v122 | v118 | v123 | v125 | v124))
          {
            v126 = sub_AB31C0();
            (*(*(v126 - 8) + 56))(v121, 1, 1, v126);
LABEL_61:
            v127 = v178;
            sub_AB3B50();
            sub_AB3D40();
            v128 = v176;
            v129 = v175;
            if (qword_E0CF70 != -1)
            {
              swift_once();
            }

            v130 = sub_AB4BC0();
            __swift_project_value_buffer(v130, static Logger.groupActivities);
            v131 = *(v128 + 16);
            v131(v129, v127, v120);
            v132 = sub_AB4BA0();
            v133 = sub_AB9F50();
            if (os_log_type_enabled(v132, v133))
            {
              v134 = swift_slowAlloc();
              v135 = v120;
              v136 = swift_slowAlloc();
              *&v197[0] = v136;
              *v134 = 136446210;
              v131(v171, v129, v135);
              v137 = sub_AB9350();
              v139 = v138;
              v140 = *(v128 + 8);
              v140(v129, v135);
              v141 = sub_500C84(v137, v139, v197);

              *(v134 + 4) = v141;
              _os_log_impl(&dword_0, v132, v133, "Posting event=%{public}s", v134, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v136);

              v140(v178, v135);
              (*(v180 + 8))(v179, v181);
              (*v184)(v186, v192);
              return;
            }

            v142 = *(v128 + 8);
            v142(v129, v120);
            v142(v127, v120);
            (*(v180 + 8))(v88, v181);
            goto LABEL_66;
          }
        }
      }

      sub_AB3180();
      goto LABEL_61;
    }

    v90 = (v162 + 8);
    v91 = (v161 + 8);
    v86 = v181;
    v92 = *v183;
    if (v79)
    {
      SharedListening.Event.Content.title.getter(v92, 1);
      v93 = v164;
      sub_AB3B70();
    }

    else
    {
      SharedListening.Event.Content.title.getter(v92, 0);
      v93 = v164;
      sub_AB3B60();
    }

    v117 = v163;
    sub_AB3B90();
    (*v90)(v93, v166);
    v88 = v179;
    sub_AB3BC0();
    (*v91)(v117, v165);
    v85 = v77;
LABEL_52:
    v87 = v183;
    goto LABEL_53;
  }

  if (v83 == 3)
  {
    sub_AB3C20();
    v94 = v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v95 = (*(*(v156[0] - 8) + 48))(v94, 1);
    v85 = v53;
    v86 = v181;
    v87 = v183;
    if (v95 || (v143 = *(v94 + 7)) == 0 || (v144 = [*(v143 + 16) identifiers], v145 = objc_msgSend(v78, "identifiers"), v146 = objc_msgSend(v144, "intersectsSet:", v145), v144, v145, v88 = v179, (v146 & 1) == 0))
    {
      if (qword_E0CF70 != -1)
      {
        swift_once();
      }

      v96 = sub_AB4BC0();
      __swift_project_value_buffer(v96, static Logger.groupActivities);
      v97 = v170;
      v98 = sub_AB4BA0();
      v99 = sub_AB9F50();
      sub_75260C(v87);
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v197[0] = v101;
        *v100 = 136446210;
        v102 = v97;
        v103 = [v78 description];
        v104 = sub_AB92A0();
        v106 = v105;

        sub_75260C(v87);
        v107 = sub_500C84(v104, v106, v197);

        *(v100 + 4) = v107;
        _os_log_impl(&dword_0, v98, v99, "Dispatching event for=%{public}s", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v101);
      }

      sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
      v108 = sub_ABA150();
      v109 = swift_allocObject();
      *(v109 + 16) = v4;
      v110 = *(v87 + 16);
      *(v109 + 24) = *v87;
      *(v109 + 40) = v110;
      *(v109 + 56) = *(v87 + 32);
      *(v109 + 72) = *(v87 + 48);
      v111 = v187;
      *(v109 + 80) = v185;
      *(v109 + 88) = v111;
      sub_7525B0(v87, v197);

      OS_dispatch_queue.asyncAfter(_:block:)(sub_752764, v109, 1.0);

      (*(v180 + 8))(v179, v181);
LABEL_66:
      (*v184)(v186, v85);
      return;
    }

    goto LABEL_53;
  }

  if (v83 == 4)
  {
    v112 = v179;
    sub_AB3BB0();
    v113 = v4[8];
    v194 = v4[7];
    v193 = v113;
    v114 = v4[9];
    v115 = v4[10];
    v4[7] = v78;
    *(v4 + 64) = v79;
    *(v4 + 71) = BYTE6(v80);
    *(v4 + 69) = WORD2(v80);
    *(v4 + 65) = v80;
    v4[9] = v82;
    v4[10] = v81;
    v88 = v112;
    sub_752794(v170, v169, v168, v167);
    v116 = v114;
    v67 = v186;
    sub_752568(v194, v193, v116, v115);
    v85 = v77;
    v86 = v181;
    goto LABEL_52;
  }

  v85 = v53;
  v86 = v181;
  v87 = v183;
  if (v83 == 5)
  {
    v89 = *(v183 + 40) | *(v183 + 32) | v82 | v81 | v84;
    if (v78 == (&dword_0 + 1) && !v89)
    {
      v88 = v179;
      sub_AB3BE0();
      goto LABEL_53;
    }

    if (v78 == (&dword_0 + 3) && !v89)
    {
      v88 = v179;
      sub_AB3C00();
      goto LABEL_53;
    }

    if (v78 == &dword_4 && !v89)
    {
      v88 = v179;
      sub_AB3BD0();
      goto LABEL_53;
    }
  }

LABEL_76:
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v147 = sub_AB4BC0();
  __swift_project_value_buffer(v147, static Logger.groupActivities);
  sub_7525B0(v87, v197);
  v148 = sub_AB4BA0();
  v149 = sub_AB9F50();
  sub_75260C(v87);
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v196 = v151;
    *v150 = 136446210;
    v152 = *(v87 + 16);
    v197[0] = *v87;
    v197[1] = v152;
    v197[2] = *(v87 + 32);
    v198 = *(v87 + 48);
    sub_7525B0(v87, v195);
    v153 = sub_AB9350();
    v155 = sub_500C84(v153, v154, &v196);

    *(v150 + 4) = v155;
    _os_log_impl(&dword_0, v148, v149, "Event case not handle for event=%{public}s", v150, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v151);
  }

  (*v184)(v67, v85);
}

int64x2_t GroupActivitiesManager.Activity.Metadata.init()@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = *(v2 + 28);
  v4 = sub_AB31C0();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = vdupq_n_s64(0x4072C00000000000uLL);
  *(a1 + *(v2 + 32)) = result;
  return result;
}

uint64_t GroupActivitiesManager.Activity.Metadata.artworkSize.setter(double a1, double a2)
{
  result = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t GroupActivitiesManager.Activity.Metadata.init(modelObject:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  sub_AB35C0();
  v2[21] = swift_task_alloc();
  v3 = sub_AB9250();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_73AC4C, 0, 0);
}

uint64_t sub_73AC4C()
{
  v1 = *(v0 + 152);
  *(v1 + 4) = 0;
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v3 = *(v2 + 28);
  v4 = sub_AB31C0();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[*(v2 + 32)] = vdupq_n_s64(0x4072C00000000000uLL);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 title];
    if (v7)
    {
      v8 = v7;
      v9 = sub_AB92A0();
      v11 = v10;
    }

    else
    {
      v18 = *(v0 + 192);
      v17 = *(v0 + 200);
      v19 = *(v0 + 176);
      v20 = *(v0 + 184);
      sub_AB91E0();
      (*(v20 + 16))(v18, v17, v19);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 200);
      v22 = *(v0 + 176);
      v23 = *(v0 + 184);
      v24 = qword_E71B20;
      sub_AB3550();
      v9 = sub_AB9320();
      v11 = v25;
      (*(v23 + 8))(v21, v22);
    }

    v26 = [v6 artist];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 name];

      if (v28)
      {
LABEL_12:
        v29 = sub_AB92A0();
        v31 = v30;

LABEL_15:
        v43 = *(v0 + 152);
        v44 = [v6 artworkCatalog];
        goto LABEL_27;
      }
    }

    v143 = v11;
    v32 = v9;
    v33 = v1;
    v35 = *(v0 + 192);
    v34 = *(v0 + 200);
    v36 = *(v0 + 176);
    v37 = *(v0 + 184);
    sub_AB91E0();
    (*(v37 + 16))(v35, v34, v36);
    if (qword_E0CB80 == -1)
    {
LABEL_14:
      v38 = *(v0 + 200);
      v39 = *(v0 + 176);
      v40 = *(v0 + 184);
      v41 = qword_E71B20;
      sub_AB3550();
      v29 = sub_AB9320();
      v31 = v42;
      (*(v40 + 8))(v38, v39);
      v1 = v33;
      v9 = v32;
      v11 = v143;
      goto LABEL_15;
    }

LABEL_69:
    swift_once();
    goto LABEL_14;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (v45)
    {
      v6 = v45;
      v46 = [v45 name];
      if (v46)
      {
        v47 = v46;
        v9 = sub_AB92A0();
        v11 = v48;
      }

      else
      {
        v74 = *(v0 + 192);
        v73 = *(v0 + 200);
        v75 = *(v0 + 176);
        v76 = *(v0 + 184);
        sub_AB91E0();
        (*(v76 + 16))(v74, v73, v75);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v77 = *(v0 + 200);
        v78 = *(v0 + 176);
        v79 = *(v0 + 184);
        v80 = qword_E71B20;
        sub_AB3550();
        v9 = sub_AB9320();
        v11 = v81;
        (*(v79 + 8))(v77, v78);
      }

      v82 = [v6 providerName];
      if (v82)
      {
        v83 = v82;
        v29 = sub_AB92A0();
        v31 = v84;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      goto LABEL_15;
    }

    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (v69)
    {
      v6 = v69;
      v70 = [v69 title];
      if (v70)
      {
        v71 = v70;
        v9 = sub_AB92A0();
        v11 = v72;
      }

      else
      {
        v90 = *(v0 + 192);
        v89 = *(v0 + 200);
        v91 = *(v0 + 176);
        v92 = *(v0 + 184);
        sub_AB91E0();
        (*(v92 + 16))(v90, v89, v91);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v93 = *(v0 + 200);
        v94 = *(v0 + 176);
        v95 = *(v0 + 184);
        v96 = qword_E71B20;
        sub_AB3550();
        v9 = sub_AB9320();
        v11 = v97;
        (*(v95 + 8))(v93, v94);
      }

      v98 = [v6 artist];
      if (v98)
      {
        v99 = v98;
        v28 = [v98 name];

        if (v28)
        {
          goto LABEL_12;
        }
      }

      v143 = v11;
      v32 = v9;
      v33 = v1;
      v101 = *(v0 + 192);
      v100 = *(v0 + 200);
      v102 = *(v0 + 176);
      v103 = *(v0 + 184);
      sub_AB91E0();
      (*(v103 + 16))(v101, v100, v102);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (!v85)
      {
        objc_opt_self();
        v104 = swift_dynamicCastObjCClass();
        if (!v104)
        {
          sub_ABAD90(29);

          v126 = sub_75297C(&off_D1D100);
          MPModelObject.humanDescription(including:)(v126);
          v128 = v127;
          v130 = v129;

          v145._countAndFlagsBits = v128;
          v145._object = v130;
          sub_AB94A0(v145);

          return sub_ABAFD0();
        }

        v105 = v104;
        v106 = [v104 title];
        if (v106)
        {
          v107 = v106;
          v108 = sub_AB92A0();
          v110 = v109;
        }

        else
        {
          v132 = *(v0 + 192);
          v131 = *(v0 + 200);
          v133 = *(v0 + 176);
          v134 = *(v0 + 184);
          sub_AB91E0();
          (*(v134 + 16))(v132, v131, v133);
          if (qword_E0CB80 != -1)
          {
            swift_once();
          }

          v135 = *(v0 + 200);
          v136 = *(v0 + 176);
          v137 = *(v0 + 184);
          v138 = qword_E71B20;
          sub_AB3550();
          v108 = sub_AB9320();
          v110 = v139;
          (*(v137 + 8))(v135, v136);
        }

        v140 = *(v0 + 152);
        v44 = [v105 artworkCatalog];
        *v140 = v108;
        v140[1] = v110;
        *(v1 + 2) = 0;
        *(v1 + 3) = 0;
        if (v44)
        {
          goto LABEL_28;
        }

        goto LABEL_66;
      }

      v6 = v85;
      v86 = [v85 title];
      if (v86)
      {
        v87 = v86;
        v9 = sub_AB92A0();
        v11 = v88;
      }

      else
      {
        v112 = *(v0 + 192);
        v111 = *(v0 + 200);
        v113 = *(v0 + 176);
        v114 = *(v0 + 184);
        sub_AB91E0();
        (*(v114 + 16))(v112, v111, v113);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v115 = *(v0 + 200);
        v116 = *(v0 + 176);
        v117 = *(v0 + 184);
        v118 = qword_E71B20;
        sub_AB3550();
        v9 = sub_AB9320();
        v11 = v119;
        (*(v117 + 8))(v115, v116);
      }

      v120 = [v6 show];
      if (v120)
      {
        v121 = v120;
        v28 = [v120 title];

        if (v28)
        {
          goto LABEL_12;
        }
      }

      v143 = v11;
      v32 = v9;
      v33 = v1;
      v123 = *(v0 + 192);
      v122 = *(v0 + 200);
      v124 = *(v0 + 176);
      v125 = *(v0 + 184);
      sub_AB91E0();
      (*(v125 + 16))(v123, v122, v124);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_69;
  }

  v13 = v12;
  v14 = [v12 name];
  if (v14)
  {
    v15 = v14;
    v9 = sub_AB92A0();
    v11 = v16;
  }

  else
  {
    v50 = *(v0 + 192);
    v49 = *(v0 + 200);
    v51 = *(v0 + 176);
    v52 = *(v0 + 184);
    sub_AB91E0();
    (*(v52 + 16))(v50, v49, v51);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 200);
    v54 = *(v0 + 176);
    v55 = *(v0 + 184);
    v56 = qword_E71B20;
    sub_AB3550();
    v9 = sub_AB9320();
    v11 = v57;
    (*(v55 + 8))(v53, v54);
  }

  v58 = [v13 curator];
  if (v58 && (v59 = v58, v60 = [v58 name], v59, v60))
  {
    v29 = sub_AB92A0();
    v31 = v61;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v43 = *(v0 + 152);
  v44 = MPModelPlaylist.preferredArtworkCatalog.getter();
LABEL_27:
  *v43 = v9;
  v43[1] = v11;
  *(v1 + 2) = v29;
  v43[3] = v31;
  if (v44)
  {
LABEL_28:
    *(v0 + 208) = v44;
    v62 = v44;
    type metadata accessor for GroupActivitiesManager.ArtworkCachingReference();
    v63 = swift_allocObject();
    *(v0 + 216) = v63;
    *(v63 + 16) = 0xD00000000000001ELL;
    *(v63 + 24) = 0x8000000000B71E80;
    v64 = v62;
    v65 = objc_opt_self();
    v66 = sub_AB9260();
    [v65 setCacheLimit:0 forCacheIdentifier:v66 cacheReference:v63];

    v67 = sub_AB9260();

    [v64 setCacheIdentifier:v67 forCacheReference:v63];

    [v64 setFittingSize:{300.0, 300.0}];
    [v64 setDestinationScale:0.0];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_73BC6C;
    v68 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E50, &qword_B1D1E0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_608560;
    *(v0 + 104) = &block_descriptor_205;
    *(v0 + 112) = v68;
    [v64 requestImageWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

LABEL_66:

  v141 = *(v0 + 8);

  return v141();
}

uint64_t sub_73BC6C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_73BE44;
  }

  else
  {
    v2 = sub_73BD7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_73BD7C()
{
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = [v4 CGImage];

  *(v3 + 32) = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_73BE44(__n128 a1)
{
  v2 = v1[26];
  v4 = v1[19];
  v3 = v1[20];
  swift_willThrow();

  *(v4 + 32) = 0;

  v5 = v1[1];

  return v5();
}

uint64_t sub_73BF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_73BFA4, 0, 0);
}

uint64_t sub_73BFA4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v4 = *(v3 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2 + v4, 1, 1, v5);
  if (v1 && (v7 = v1, v8 = [v7 sharedListeningProperties], v0[24] = v8, v7, v8))
  {
    v9 = v0[22];
    v10 = v0[21];
    v26 = v0[20];
    v27 = v0[23];
    v11 = v0[19];
    sub_12E1C(v11, &qword_E15508, &qword_B25978);
    sub_E8BA0(v9, v11);
    sub_1FBB9C(v10, v2 + v4, &qword_E15500, &qword_B25970);
    type metadata accessor for CodableListeningProperties();
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v2 + 40) = v26;
    *(v2 + 48) = v12;
    sub_15F84(v2 + v4, v27, &qword_E15500, &qword_B25970);
    v13 = (*(v6 + 48))(v27, 1, v5);
    v14 = v0[23];
    if (v13 == 1)
    {
      v15 = v7;
      v16 = v8;
      sub_12E1C(v14, &qword_E15500, &qword_B25970);
      if (qword_E0CF68 != -1)
      {
        swift_once();
      }

      v17 = qword_E154B0;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_73C3A8;
      v18 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15DC8, &unk_B260C0);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_608560;
      v0[13] = &block_descriptor_138_0;
      v0[14] = v18;
      [v15 getRepresentativeObjectWithProperties:v17 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v24 = v0[21];
    __swift_destroy_boxed_opaque_existential_0(v0[22]);
    sub_12E1C(v24, &qword_E15500, &qword_B25970);
    sub_12E1C(v14, &qword_E15500, &qword_B25970);

    v23 = v0[1];
  }

  else
  {
    v19 = v0[22];
    v20 = v0[21];
    v21 = v0[19];
    sub_7542CC();
    swift_allocError();
    *v22 = 96;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v19);
    sub_12E1C(v20, &qword_E15500, &qword_B25970);
    sub_752508(v21, type metadata accessor for GroupActivitiesManager.Activity);

    v23 = v0[1];
  }

  return v23();
}

uint64_t sub_73C3A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_73C598;
  }

  else
  {
    v2 = sub_73C4B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_73C4B8()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
  v6 = [v4 innermostModelObject];

  __swift_destroy_boxed_opaque_existential_0(v3);
  sub_12E1C(v2, &qword_E15500, &qword_B25970);
  type metadata accessor for CodableModelObjectIdentity();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v5 + 56) = v7;

  v8 = v0[1];

  return v8();
}

uint64_t sub_73C598(__n128 a1)
{
  v2 = v1[24];
  v4 = v1[21];
  v3 = v1[22];
  v5 = v1[19];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0(v3);
  sub_12E1C(v4, &qword_E15500, &qword_B25970);
  type metadata accessor for CodableModelObjectIdentity();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  *(v5 + 56) = 0;

  v6 = v1[1];

  return v6();
}

uint64_t GroupActivitiesManager.Activity.metadata.getter(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_AB3C90();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_73C81C, 0, 0);
}

uint64_t sub_73C81C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = sub_AB3D10();
  v0[17] = v5;
  v6 = swift_allocBox();
  v8 = v7;
  v0[18] = v6;
  v0[19] = v7;
  sub_AB3D00();
  sub_AB3CC0();
  sub_AB3C80();
  sub_AB3CD0();
  v9 = type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_15F84(v4 + *(v9 + 32), v3, &qword_E15500, &qword_B25970);
  v10 = *(v2 + 48);
  v0[20] = v10;
  v0[21] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v3, 1, v1) != 1)
  {
    v22 = v0[15];
    v23 = v0[12];
    v24 = v0[9];
    v57 = v0[7];
    sub_75214C(v0[11], v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    sub_AB3CE0();

    sub_AB3CF0();
    v25 = *(v22 + 32);
    sub_AB3CB0();
    sub_15F84(v22 + *(v23 + 28), v24, &qword_E0DC30, &unk_B15160);
    sub_AB3CA0();
    sub_752508(v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v5 - 8) + 16))(v57, v8, v5);
    goto LABEL_30;
  }

  v11 = v0[8];
  sub_12E1C(v0[11], &qword_E15500, &qword_B25970);
  v12 = *(v11 + 56);
  if (!v12)
  {
    (*(*(v5 - 8) + 16))(v0[7], v8, v5);
    goto LABEL_30;
  }

  v13 = *(v12 + 16);
  v0[22] = v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = qword_E0CF50;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = qword_E15498;
    v17 = objc_opt_self();
    v18 = objc_opt_self();
    v19 = v16;
    v20 = [v18 kindWithVariants:3];
    v21 = [v17 kindWithSongKind:v20];

    goto LABEL_25;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v26 = objc_opt_self();
    v27 = v13;
    v28 = _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0();
    v21 = [v26 kindWithPlaylistEntryKind:v28 options:0];

    if (qword_E0CF58 != -1)
    {
      swift_once();
    }

    v29 = qword_E154A0;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_13C80(0, &qword_E15510, MPModelRadioStationKind_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = v13;
      v21 = [ObjCClassFromMetadata identityKind];
      if (qword_E0CF60 != -1)
      {
        swift_once();
      }

      v29 = qword_E154A8;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v32 = objc_opt_self();
        v33 = v13;
        v34 = [v32 kindWithVariants:7];
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v51 = v13;
            sub_ABAD90(29);

            v52 = sub_75297C(&off_D1D128);
            MPModelObject.humanDescription(including:)(v52);
            v54 = v53;
            v56 = v55;

            v60._countAndFlagsBits = v54;
            v60._object = v56;
            sub_AB94A0(v60);

            return sub_ABAFD0();
          }

          v49 = objc_opt_self();
          v50 = v13;
          v21 = [v49 kindWithVariants:3];
          if (qword_E0CF40 != -1)
          {
            swift_once();
          }

          v29 = qword_E15490;
          goto LABEL_24;
        }

        v35 = objc_opt_self();
        v36 = v13;
        v34 = [v35 kindWithVariants:3];
      }

      v21 = v34;
      if (qword_E0CF30 != -1)
      {
        swift_once();
      }

      v29 = qword_E15480;
    }
  }

LABEL_24:
  v19 = v29;
LABEL_25:
  v0[23] = v19;
  v0[24] = v21;
  sub_15F84(v0[8], (v0 + 2), &qword_E15508, &qword_B25978);
  v37 = v0[5];
  if (v37)
  {
    v38 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v58 = (*(v38 + 8) + **(v38 + 8));
    v39 = swift_task_alloc();
    v0[25] = v39;
    *v39 = v0;
    v39[1] = sub_73D0B0;
    v40 = v0[10];

    return v58(v40, v13, v21, v19, v37, v38);
  }

  v42 = v0[12];
  v43 = v0[13];
  v44 = v0[10];

  sub_12E1C((v0 + 2), &qword_E15508, &qword_B25978);
  (*(v43 + 56))(v44, 1, 1, v42);
  v6 = v0[18];
  v45 = v0[19];
  v46 = v0[17];
  v47 = v0[7];
  sub_12E1C(v0[10], &qword_E15500, &qword_B25970);
  (*(*(v46 - 8) + 16))(v47, v45, v46);
LABEL_30:
  sub_73D3F0(v6);

  v48 = v0[1];

  return v48();
}

uint64_t sub_73D0B0()
{

  return _swift_task_switch(sub_73D1AC, 0, 0);
}

uint64_t sub_73D1AC()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[10];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v1(v3, 1, v2);
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  if (v4 == 1)
  {

    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[17];
    v11 = v0[7];
    sub_12E1C(v0[10], &qword_E15500, &qword_B25970);
    (*(*(v10 - 8) + 16))(v11, v9, v10);
  }

  else
  {
    v8 = v0[18];
    v12 = v0[19];
    v13 = v0[14];
    v14 = v0[9];
    v19 = v0[17];
    v20 = v0[7];
    v18 = v0[12];
    sub_75214C(v0[10], v13, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    sub_AB3CE0();

    sub_AB3CF0();
    v15 = *(v13 + 32);
    sub_AB3CB0();
    sub_15F84(v13 + *(v18 + 28), v14, &qword_E0DC30, &unk_B15160);
    sub_AB3CA0();

    sub_752508(v13, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v19 - 8) + 16))(v20, v12, v19);
  }

  sub_73D3F0(v8);

  v16 = v0[1];

  return v16();
}

void sub_73D3F0(uint64_t a1)
{
  v1 = sub_AB3D10();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v5 = sub_AB4BC0();
  __swift_project_value_buffer(v5, static Logger.groupActivities);

  v15 = sub_AB4BA0();
  v6 = sub_AB9F50();

  if (os_log_type_enabled(v15, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = swift_projectBox();
    swift_beginAccess();
    (*(v2 + 16))(v4, v9, v1);
    v10 = sub_AB9380();
    v12 = sub_500C84(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v15, v6, "Sending activity metadata=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    v13 = v15;
  }
}

void sub_73D634()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060, &unk_B22950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF4EC0;
  *(v5 + 32) = sub_AB92A0();
  *(v5 + 40) = v6;
  isa = sub_AB9740().super.isa;

  v8 = objc_opt_self();
  v9 = [v8 propertySetWithProperties:isa];

  *(inited + 48) = v9;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v10;
  v11 = sub_AB9740().super.isa;
  v12 = [v8 propertySetWithProperties:v11];

  *(inited + 72) = v12;
  sub_52A338(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11068, qword_B1D7F0);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  v14 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_E12D10, MPPropertySet_ptr);
  v15 = sub_AB8FD0().super.isa;

  v16 = [v13 initWithProperties:v14 relationships:v15];

  qword_E15480 = v16;
}

void sub_73D8B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060, &unk_B22950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF4EC0;
  *(v5 + 32) = sub_AB92A0();
  *(v5 + 40) = v6;
  isa = sub_AB9740().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_52A338(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_E11068, qword_B1D7F0);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_E12D10, MPPropertySet_ptr);
  v11 = sub_AB8FD0().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_E15488 = v12;
}

void sub_73DAEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060, &unk_B22950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v1;
  if (qword_E0CF30 != -1)
  {
    swift_once();
  }

  v2 = qword_E15480;
  *(inited + 48) = qword_E15480;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v3;
  v4 = qword_E0CF38;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_E15488;
  *(inited + 72) = qword_E15488;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v7;
  v8 = qword_E0CF40;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_E15490;
  *(inited + 96) = qword_E15490;
  v11 = v10;
  sub_52A338(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11068, qword_B1D7F0);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;
  sub_13C80(0, &qword_E12D10, MPPropertySet_ptr);
  v14 = sub_AB8FD0().super.isa;

  v15 = [v12 initWithProperties:isa relationships:v14];

  static GroupActivitiesManager.Activity.playingProperties = v15;
}

uint64_t *GroupActivitiesManager.Activity.playingProperties.unsafeMutableAddressor()
{
  if (qword_E0CF48 != -1)
  {
    swift_once();
  }

  return &static GroupActivitiesManager.Activity.playingProperties;
}

id static GroupActivitiesManager.Activity.playingProperties.getter()
{
  if (qword_E0CF48 != -1)
  {
    swift_once();
  }

  v1 = static GroupActivitiesManager.Activity.playingProperties;

  return v1;
}

void sub_73DDC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060, &unk_B22950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF4EC0;
  *(v5 + 32) = sub_AB92A0();
  *(v5 + 40) = v6;
  isa = sub_AB9740().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_52A338(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_E11068, qword_B1D7F0);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_E12D10, MPPropertySet_ptr);
  v11 = sub_AB8FD0().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_E15498 = v12;
}

void sub_73DFE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060, &unk_B22950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF4EC0;
  *(v5 + 32) = sub_AB92A0();
  *(v5 + 40) = v6;
  isa = sub_AB9740().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_52A338(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_E11068, qword_B1D7F0);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_E12D10, MPPropertySet_ptr);
  v11 = sub_AB8FD0().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_E154A0 = v12;
}

void sub_73E21C(uint64_t a1, void *a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF85F0;
  *(v5 + 32) = sub_AB92A0();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_AB92A0();
  *(v5 + 56) = v7;
  isa = sub_AB9740().super.isa;

  v9 = [objc_opt_self() propertySetWithProperties:isa];

  *a4 = v9;
}

id sub_73E2E0()
{
  result = sub_73E300();
  qword_E154B0 = result;
  return result;
}

id sub_73E300()
{
  if (qword_E0CF48 != -1)
  {
    swift_once();
  }

  v0 = static GroupActivitiesManager.Activity.playingProperties;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060, &unk_B22950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v2;
  if (qword_E0CF58 != -1)
  {
    swift_once();
  }

  v3 = qword_E154A0;
  *(inited + 48) = qword_E154A0;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v4;
  v5 = qword_E0CF50;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_E15498;
  *(inited + 72) = qword_E15498;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v8;
  v9 = qword_E0CF60;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_E154A8;
  *(inited + 96) = qword_E154A8;
  v12 = v11;
  sub_52A338(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11068, qword_B1D7F0);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;
  sub_13C80(0, &qword_E12D10, MPPropertySet_ptr);
  v15 = sub_AB8FD0().super.isa;

  v16 = [v13 initWithProperties:isa relationships:v15];

  v17 = [v0 propertySetByCombiningWithPropertySet:v16];
  return v17;
}

unint64_t sub_73E588()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

void sub_73E5C4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001BLL && 0x8000000000B72200 == a2;
  if (v5 || (sub_ABB3C0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000B72220 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_73E6A8(uint64_t a1)
{
  v2 = sub_752B10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_73E6E4(uint64_t a1)
{
  v2 = sub_752B10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupActivitiesManager.Activity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15518, &qword_B25980);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - v6;
  type metadata accessor for GroupActivitiesManager.Activity(0);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v11 = *(v10 + 40);
  v12 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_752B10();
  sub_ABB680();
  if (!v2)
  {
    v13 = v5;
    v14 = v17;
    type metadata accessor for CodableListeningProperties();
    v18 = 0;
    sub_752B88(&qword_E15528, type metadata accessor for CodableListeningProperties, &unk_B25FF4);
    sub_ABB1E0();
    *(v9 + 6) = v19;
    type metadata accessor for CodableModelObjectIdentity();
    v18 = 1;
    sub_752B88(&qword_E15530, type metadata accessor for CodableModelObjectIdentity, &unk_B25FCC);
    sub_ABB1E0();
    v15 = v19;
    (*(v13 + 8))(v7, v4);
    *(v9 + 7) = v15;
    sub_7521B4(v9, v14, type metadata accessor for GroupActivitiesManager.Activity);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_752508(v9, type metadata accessor for GroupActivitiesManager.Activity);
}

uint64_t GroupActivitiesManager.Activity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15538, &qword_B25988);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_752B10();
  sub_ABB690();
  v11 = *(v3 + 48);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15540, &qword_B25990);
  sub_752BF4();
  sub_ABB280();
  if (!v2)
  {
    v11 = *(v3 + 56);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15558, &qword_B25998);
    sub_752CA8();
    sub_ABB280();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_73EC14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return GroupActivitiesManager.Activity.metadata.getter(a1);
}

void sub_73ECE4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_752B88(&qword_E15578, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  sub_AB3990();

  *a2 = *(v3 + 16);
}

uint64_t GroupActivitiesManager.State.isSharePlaySessionActive.getter()
{
  swift_getKeyPath();
  sub_752B88(&qword_E15578, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  sub_AB3990();

  return *(v0 + 16);
}

void sub_73EE54(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_752B88(&qword_E15578, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
    sub_AB3980();
  }
}

void sub_73EF64(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_752B88(&qword_E15578, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  sub_AB3990();

  *a2 = *(v3 + 17);
}

uint64_t GroupActivitiesManager.State.isLoading.getter()
{
  swift_getKeyPath();
  sub_752B88(&qword_E15578, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  sub_AB3990();

  return *(v0 + 17);
}

void sub_73F0D4(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_752B88(&qword_E15578, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
    sub_AB3980();
  }
}

uint64_t GroupActivitiesManager.State.deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v3 = sub_AB39D0();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t GroupActivitiesManager.State.__deallocating_deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v3 = sub_AB39D0();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

double GroupActivitiesManager.coordinator.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  sub_70DF8(a1, v1 + 16);
  swift_endAccess();
  return result;
}

uint64_t GroupActivitiesManager.pendingNoticeAlert.getter()
{
  swift_beginAccess();
  v1 = v0[7];
  sub_752794(v1, v0[8], v0[9], v0[10]);
  return v1;
}

void GroupActivitiesManager.isSharePlaySessionActive.setter(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = a1 & 1;
  *(v1 + 96) = a1;
  if (v3 != v4)
  {
    v5 = *(v1 + 88);
    if (*(v5 + 16) == v4)
    {
      *(v5 + 16) = v4;
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      sub_752B88(&qword_E15578, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
      sub_AB3980();
    }
  }
}

void (*GroupActivitiesManager.isSharePlaySessionActive.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + 96);
  return sub_73F5A8;
}

void sub_73F5A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = v2[4];
  if (a2)
  {
    GroupActivitiesManager.isSharePlaySessionActive.setter(v3);
  }

  else
  {
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;
    if (v3 != v5)
    {
      v6 = *(v2[4] + 88);
      if (v3 == *(v6 + 16))
      {
        *(v6 + 16) = v3;
      }

      else
      {
        swift_getKeyPath();
        __chkstk_darwin();
        v2[3] = v6;
        sub_752B88(&qword_E15578, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
        sub_AB3980();
      }
    }
  }

  free(v2);
}

uint64_t GroupActivitiesManager.participantsCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_73F768(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

void sub_73F7E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v4);

  v3 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  sub_AB5520();
  sub_73F8B4(v3);
}

void sub_73F8B4(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v11);

  if (v11[0] != a1)
  {
    if (qword_E0CF70 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, static Logger.groupActivities);

    v5 = sub_AB4BA0();
    v6 = sub_AB9F50();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(v11);

      *(v7 + 4) = v11[0];

      _os_log_impl(&dword_0, v5, v6, "👤 Participants count update=%{public}ld", v7, 0xCu);
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v11);

    v8 = v11[0];
    v9 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    if (*(v2 + v9) < v8)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(&v10);

      *(v2 + v9) = v10;
    }
  }
}

uint64_t Logger.groupActivities.unsafeMutableAddressor()
{
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.groupActivities);
}

uint64_t sub_73FBA4(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151F0, &qword_B25610);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151E8, &qword_B25608);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t GroupActivitiesManager.isLoading.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_73FD9C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

void sub_73FE1C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  v2 = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5520();
  sub_73FEE8(v2);
}

void sub_73FEE8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v9);

  if (v9 != v3)
  {
    if (qword_E0CF70 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, static Logger.groupActivities);

    v5 = sub_AB4BA0();
    v6 = sub_AB9F50();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(&v9);

      *(v7 + 4) = v9;

      _os_log_impl(&dword_0, v5, v6, "⏳ Session is loading=%{BOOL,public}d", v7, 8u);
    }

    else
    {
    }

    v8 = *(v2 + 88);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v9);

    if (v9 == *(v8 + 17))
    {
      *(v8 + 17) = v9;
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      v9 = v8;
      sub_752B88(&qword_E15578, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
      sub_AB3980();
    }

    sub_7401C8();
  }
}

void sub_7401C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E154E8, &qword_B25950);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v56 = &v45[-v4];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E155B8, &qword_B25AE8);
  __chkstk_darwin();
  v6 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v45[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E155C0, &qword_B25AF0);
  __chkstk_darwin();
  v55 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v58 = &v45[-v10];
  __chkstk_darwin();
  v57 = &v45[-v11];
  __chkstk_darwin();
  v13 = &v45[-v12];
  __chkstk_darwin();
  v15 = &v45[-v14];
  __chkstk_darwin();
  v17 = &v45[-v16];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v60);

  if (v60)
  {
    goto LABEL_2;
  }

  v49 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v19 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
  v53 = v1;
  v51 = v6;
  if (v19)
  {

    sub_AB3DD0();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = v3[7];
  v21(v17, v20, 1, v2);
  v47 = v3[13];
  v48 = v3 + 13;
  v47(v15, enum case for GroupSession.State.waiting<A>(_:), v2);
  v50 = v21;
  v21(v15, 0, 1, v2);
  v22 = *(v59 + 48);
  sub_15F84(v17, v8, &qword_E155C0, &qword_B25AF0);
  sub_15F84(v15, &v8[v22], &qword_E155C0, &qword_B25AF0);
  v54 = v3;
  v23 = v3[6];
  if (v23(v8, 1, v2) == 1)
  {
    sub_12E1C(v15, &qword_E155C0, &qword_B25AF0);
    sub_12E1C(v17, &qword_E155C0, &qword_B25AF0);
    if (v23(&v8[v22], 1, v2) == 1)
    {
      sub_12E1C(v8, &qword_E155C0, &qword_B25AF0);
      v18 = 1;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  sub_15F84(v8, v13, &qword_E155C0, &qword_B25AF0);
  if (v23(&v8[v22], 1, v2) == 1)
  {
    sub_12E1C(v15, &qword_E155C0, &qword_B25AF0);
    sub_12E1C(v17, &qword_E155C0, &qword_B25AF0);
    (v54[1])(v13, v2);
LABEL_11:
    sub_12E1C(v8, &qword_E155B8, &qword_B25AE8);
    v24 = v53;
    goto LABEL_12;
  }

  v28 = v54[4];
  v52 = v23;
  v29 = v56;
  v28(v56, &v8[v22], v2);
  sub_36A00(&qword_E155C8, &qword_E154E8, &qword_B25950, &protocol conformance descriptor for GroupSession<A>.State);
  v46 = sub_AB91C0();
  v30 = v54[1];
  v31 = v29;
  v23 = v52;
  v30(v31, v2);
  sub_12E1C(v15, &qword_E155C0, &qword_B25AF0);
  sub_12E1C(v17, &qword_E155C0, &qword_B25AF0);
  v30(v13, v2);
  sub_12E1C(v8, &qword_E155C0, &qword_B25AF0);
  v24 = v53;
  if ((v46 & 1) == 0)
  {
LABEL_12:
    v25 = *(v24 + v49);
    v52 = v23;
    if (v25)
    {

      v26 = v57;
      sub_AB3DD0();

      v27 = 0;
    }

    else
    {
      v27 = 1;
      v26 = v57;
    }

    v32 = v58;
    v33 = v50;
    v50(v26, v27, 1, v2);
    v47(v32, enum case for GroupSession.State.joined<A>(_:), v2);
    v33(v32, 0, 1, v2);
    v34 = *(v59 + 48);
    v35 = v51;
    sub_15F84(v26, v51, &qword_E155C0, &qword_B25AF0);
    sub_15F84(v32, v35 + v34, &qword_E155C0, &qword_B25AF0);
    v36 = v52;
    if (v52(v35, 1, v2) == 1)
    {
      sub_12E1C(v32, &qword_E155C0, &qword_B25AF0);
      sub_12E1C(v26, &qword_E155C0, &qword_B25AF0);
      if (v36(v35 + v34, 1, v2) == 1)
      {
        sub_12E1C(v35, &qword_E155C0, &qword_B25AF0);
        goto LABEL_2;
      }
    }

    else
    {
      v37 = v55;
      sub_15F84(v35, v55, &qword_E155C0, &qword_B25AF0);
      if (v36(v35 + v34, 1, v2) != 1)
      {
        v41 = v54;
        v42 = v56;
        (v54[4])(v56, v35 + v34, v2);
        sub_36A00(&qword_E155C8, &qword_E154E8, &qword_B25950, &protocol conformance descriptor for GroupSession<A>.State);
        v43 = sub_AB91C0();
        v44 = v41[1];
        v44(v42, v2);
        sub_12E1C(v58, &qword_E155C0, &qword_B25AF0);
        sub_12E1C(v26, &qword_E155C0, &qword_B25AF0);
        v44(v37, v2);
        sub_12E1C(v35, &qword_E155C0, &qword_B25AF0);
        if (v43)
        {
          goto LABEL_2;
        }

LABEL_23:
        v38 = [objc_opt_self() standardUserDefaults];
        v39 = sub_AB9260();
        v40 = [v38 BOOLForKey:v39];

        v18 = v40;
        goto LABEL_24;
      }

      sub_12E1C(v32, &qword_E155C0, &qword_B25AF0);
      sub_12E1C(v26, &qword_E155C0, &qword_B25AF0);
      (v54[1])(v37, v2);
    }

    sub_12E1C(v35, &qword_E155B8, &qword_B25AE8);
    goto LABEL_23;
  }

LABEL_2:
  v18 = 1;
LABEL_24:
  GroupActivitiesManager.isSharePlaySessionActive.setter(v18);
}

uint64_t sub_740AE8(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B60, &qword_B24860);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

double GroupActivitiesManager.reaction.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v5);

  result = *v5;
  v3 = v5[1];
  v4 = v5[2];
  *a1 = v5[0];
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

double sub_740D4C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v6);

  result = *v6;
  v4 = v6[1];
  v5 = v6[2];
  *a2 = v6[0];
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_740DD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_754E90(v2, v3, v4, v5, v6, v7);
  sub_AB5510(&v9);

  v12[0] = v9;
  v12[1] = v10;
  v12[2] = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v9 = v2;
  *(&v9 + 1) = v3;
  *&v10 = v4;
  *(&v10 + 1) = v5;
  *&v11 = v6;
  *(&v11 + 1) = v7;

  sub_AB5520();
  sub_740F00(v12);
  return sub_12E1C(v12, &qword_E155A0, &qword_B25A90);
}

void sub_740F00(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v53 = a1[2];
  v55 = v5;
  v6 = a1[5];
  v51 = a1[4];
  v54 = v6;
  v7 = sub_AB3470();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB3E80();
  v50 = *(v11 - 8);
  __chkstk_darwin();
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = v1;
  sub_AB5510(&v61);

  v13 = v62;
  if (v62)
  {
    v45 = v11;
    v46 = v10;
    v47 = v8;
    v48 = v7;
    v14 = v61;
    v16 = v63;
    v15 = v64;
    v17 = v65;
    v18 = v66;
    v52 = v65;
    if (!v3)
    {

      v43 = v14;
      sub_754EE0(v14, v13, v16, v15, v17, v18);
      sub_754EE0(v4, 0, v53, v55, v51, v54);
      v19 = v17;
      goto LABEL_23;
    }

    v44 = v63;
    if (v61 == v4 && v62 == v3 || (sub_ABB3C0() & 1) != 0)
    {
      v16 = v44;
      if (v44 == v53 && v15 == v55 || (sub_ABB3C0() & 1) != 0)
      {
        if (!v18)
        {
          if (!v54)
          {
            sub_754EE0(v14, v13, v16, v15, v52, 0);
            return;
          }

          sub_15F84(a1, &v61, &qword_E155A0, &qword_B25A90);

          v43 = v14;
          v20 = v14;
          v21 = v13;
          v22 = v16;
          v23 = v15;
          v19 = v52;
          v24 = v52;
          v25 = 0;
          goto LABEL_22;
        }

        if (v54)
        {
          if (v52 == v51 && v18 == v54)
          {

            sub_15F84(a1, &v61, &qword_E155A0, &qword_B25A90);

LABEL_40:

            sub_754EE0(v14, v13, v16, v15, v52, v18);
            return;
          }

          v40 = v52;
          v41 = sub_ABB3C0();

          sub_15F84(a1, &v61, &qword_E155A0, &qword_B25A90);

          if (v41)
          {
            v16 = v44;
            goto LABEL_40;
          }

          v43 = v14;
          v42 = v44;
          sub_754EE0(v14, v13, v44, v15, v40, v18);
          v19 = v40;
          v16 = v42;
LABEL_23:
          if (qword_E0CF70 != -1)
          {
            swift_once();
          }

          v26 = sub_AB4BC0();
          __swift_project_value_buffer(v26, static Logger.groupActivities);

          v27 = sub_AB4BA0();
          v28 = sub_AB9F10();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *&v60[0] = v30;
            *v29 = 136446210;
            v61 = v16;
            v62 = v15;

            v31 = sub_AB9380();
            v33 = sub_500C84(v31, v32, v60);

            *(v29 + 4) = v33;
            _os_log_impl(&dword_0, v27, v28, "🌚 received: %{public}s)", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v30);

            v19 = v52;
          }

          if (!v18)
          {
            goto LABEL_36;
          }

          if (*(v56 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
          {

            v34 = v49;
            sub_AB3D60();

            v35 = v46;
            sub_AB3E70();
            (*(v50 + 8))(v34, v45);
            v36 = sub_AB3440();
            v38 = v37;
            (*(v47 + 8))(v35, v48);
            if (v19 == v36 && v18 == v38)
            {

LABEL_36:

              swift_getKeyPath();
              swift_getKeyPath();
              sub_AB5510(&v57);

              v60[0] = v57;
              v60[1] = v58;
              v60[2] = v59;
              swift_getKeyPath();
              swift_getKeyPath();
              v58 = 0u;
              v59 = 0u;
              v57 = 0u;

              sub_AB5520();
              sub_740F00(v60);
              sub_12E1C(v60, &qword_E155A0, &qword_B25A90);
              return;
            }

            v39 = sub_ABB3C0();

            if (v39)
            {

              goto LABEL_36;
            }
          }

          else
          {
          }

          v61 = v43;
          v62 = v13;
          v63 = v16;
          v64 = v15;
          v65 = v19;
          v66 = v18;
          v67 = 1;
          GroupActivitiesManager.postEvent(_:participantID:)(&v61, v19, v18);
          swift_bridgeObjectRelease_n();
          goto LABEL_36;
        }

        sub_15F84(a1, &v61, &qword_E155A0, &qword_B25A90);
      }

      else
      {

        sub_15F84(a1, &v61, &qword_E155A0, &qword_B25A90);
      }

      v43 = v14;
      v20 = v14;
      v21 = v13;
    }

    else
    {

      sub_15F84(a1, &v61, &qword_E155A0, &qword_B25A90);

      v43 = v14;
      v20 = v14;
      v21 = v13;
      v16 = v44;
    }

    v22 = v16;
    v23 = v15;
    v19 = v52;
    v24 = v52;
    v25 = v18;
LABEL_22:
    sub_754EE0(v20, v21, v22, v23, v24, v25);
    goto LABEL_23;
  }
}

uint64_t sub_7418C8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15D98, &qword_B26090);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E155B0, &qword_B25AE0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t GroupActivitiesManager.maxParticipantsCount.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupActivitiesManager.hasJoined.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E154E8, &qword_B25950);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v21 = &v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E155B8, &qword_B25AE8);
  __chkstk_darwin();
  v6 = &v20 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E155C0, &qword_B25AF0);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  __chkstk_darwin();
  v12 = &v20 - v11;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_AB3DD0();

    v13 = *(v2 + 56);
    v13(v12, 0, 1, v1);
  }

  else
  {
    v13 = *(v2 + 56);
    v13(&v20 - v11, 1, 1, v1);
  }

  (*(v2 + 104))(v10, enum case for GroupSession.State.joined<A>(_:), v1);
  v13(v10, 0, 1, v1);
  v14 = *(v4 + 48);
  sub_15F84(v12, v6, &qword_E155C0, &qword_B25AF0);
  sub_15F84(v10, &v6[v14], &qword_E155C0, &qword_B25AF0);
  v15 = *(v2 + 48);
  if (v15(v6, 1, v1) != 1)
  {
    sub_15F84(v6, v8, &qword_E155C0, &qword_B25AF0);
    if (v15(&v6[v14], 1, v1) != 1)
    {
      v17 = v21;
      (*(v2 + 32))(v21, &v6[v14], v1);
      sub_36A00(&qword_E155C8, &qword_E154E8, &qword_B25950, &protocol conformance descriptor for GroupSession<A>.State);
      v16 = sub_AB91C0();
      v18 = *(v2 + 8);
      v18(v17, v1);
      sub_12E1C(v10, &qword_E155C0, &qword_B25AF0);
      sub_12E1C(v12, &qword_E155C0, &qword_B25AF0);
      v18(v8, v1);
      sub_12E1C(v6, &qword_E155C0, &qword_B25AF0);
      return v16 & 1;
    }

    sub_12E1C(v10, &qword_E155C0, &qword_B25AF0);
    sub_12E1C(v12, &qword_E155C0, &qword_B25AF0);
    (*(v2 + 8))(v8, v1);
    goto LABEL_9;
  }

  sub_12E1C(v10, &qword_E155C0, &qword_B25AF0);
  sub_12E1C(v12, &qword_E155C0, &qword_B25AF0);
  if (v15(&v6[v14], 1, v1) != 1)
  {
LABEL_9:
    sub_12E1C(v6, &qword_E155B8, &qword_B25AE8);
    v16 = 0;
    return v16 & 1;
  }

  sub_12E1C(v6, &qword_E155C0, &qword_B25AF0);
  v16 = 1;
  return v16 & 1;
}

uint64_t GroupActivitiesManager.isSessionEligible.getter()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v2);

  v3[4] = v2[4];
  v3[5] = v2[5];
  v4 = v2[6];
  v5 = v2[7];
  v3[0] = v2[0];
  v3[1] = v2[1];
  v3[2] = v2[2];
  v3[3] = v2[3];
  if ((GroupActivitiesManager.hasJoined.getter() & 1) != 0 || (sub_AB3C50() & 1) == 0)
  {
    sub_70C54(v3);
    return 0;
  }

  else
  {
    if (v4 == 2)
    {

      sub_70C54(v3);
      return BYTE1(v3[0]);
    }

    v1 = sub_ABB3C0();

    sub_70C54(v3);
    result = 0;
    if (v1)
    {
      return BYTE1(v3[0]);
    }
  }

  return result;
}

id GroupActivitiesManager.itemProvider(with:metadata:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v46 - v8;
  if (a1)
  {
    goto LABEL_2;
  }

  v47 = v6;
  v49 = a2;
  swift_beginAccess();
  v18 = v2[5];
  v19 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v18);
  v48 = &v46;
  v20 = *(v18 - 8);
  v21 = __chkstk_darwin();
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  v24 = (*(v19 + 48))(v18, v19);
  (*(v20 + 8))(v23, v18);
  if (!v24)
  {
LABEL_12:
    if (qword_E0CF70 != -1)
    {
      swift_once();
    }

    v26 = sub_AB4BC0();
    v14 = __swift_project_value_buffer(v26, static Logger.groupActivities);

    v27 = sub_AB4BA0();
    v28 = sub_AB9F30();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v29 = 136446466;
    v50[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E155E0, &unk_B25B40);
    v30 = sub_AB9350();
    v32 = sub_500C84(v30, v31, &v52);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    v33 = v3[5];
    v34 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v33);
    v49 = &v46;
    v35 = *(v33 - 8);
    v36 = __chkstk_darwin();
    v38 = &v46 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = (*(v34 + 48))(v33, v34);
    (*(v35 + 8))(v38, v33);
    if (v39)
    {
      v40 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      if (*&v39[v40])
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510(&v51);

        v41 = v51;
LABEL_20:
        v51 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13480, &unk_B214D0);
        v42 = sub_AB9350();
        v14 = sub_500C84(v42, v43, &v52);

        *(v29 + 14) = v14;
        _os_log_impl(&dword_0, v27, v28, "    Cannot build itemProvider with intent=%{public}s)\n    and player=%{public}s)", v29, 0x16u);
        swift_arrayDestroy();

LABEL_21:

        sub_752E04();
        swift_allocError();
        *v44 = 0;
        *(v44 + 8) = 4;
        swift_willThrow();
        return v14;
      }
    }

    v41 = 0;
    goto LABEL_20;
  }

  v25 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v24[v25])
  {

    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v50);

  if (!v50[0])
  {
    goto LABEL_12;
  }

  a2 = v49;
  v6 = v47;
LABEL_2:
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, static Logger.groupActivities);
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v49 = a2;
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Building GroupActivity item provider", v13, 2u);
    a2 = v49;
  }

  v14 = [objc_allocWithZone(NSItemProvider) init];
  sub_15F84(a2, v9, &qword_E15500, &qword_B25970);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_753000(v9, v16 + v15);
  *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_752B88(&qword_E154F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v17 = a1;

  sub_AB9F60();

  return v14;
}

uint64_t sub_7428A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_742948, 0, 0);
}

uint64_t sub_742948()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = sub_742ADC;

    return sub_75DAE0(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *(v5 + 16) = *(v0 + 96);
    *(v5 + 32) = 0;
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    v7 = type metadata accessor for GroupActivitiesManager.Activity(0);
    *v6 = v0;
    v6[1] = sub_742C04;
    v8 = *(v0 + 80);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001CLL, 0x8000000000B72240, sub_7542C0, v5, v7);
  }
}

uint64_t sub_742ADC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_742F44;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_742D48;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_742C04()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_74320C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_742D48()
{
  v1 = v0[20];
  v2 = v0[13];
  sub_15F84(v0[12], v0[14], &qword_E15500, &qword_B25970);
  swift_beginAccess();
  sub_E8BA0(v2 + 16, (v0 + 2));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_742E30;
  v5 = v0[20];
  v6 = v0[14];
  v7 = v0[10];

  return sub_73BF04(v7, v5, v6, (v0 + 2));
}

uint64_t sub_742E30()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_743160;
  }

  else
  {
    v2 = sub_742FE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_742F44()
{
  v0[23] = v0[16];
  v1 = v0[11];
  sub_AB9940();
  v2 = v1;
  v0[24] = sub_AB9930();
  v4 = sub_AB98B0();

  return _swift_task_switch(sub_74305C, v4, v3);
}

uint64_t sub_742FE8()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_74305C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);

  sub_743278(v1, v2);

  return _swift_task_switch(sub_7430E4, 0, 0);
}

uint64_t sub_7430E4(__n128 a1)
{
  v2 = *(v1 + 88);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_743160()
{
  *(v0 + 184) = *(v0 + 176);
  v1 = *(v0 + 88);
  sub_AB9940();
  v2 = v1;
  *(v0 + 192) = sub_AB9930();
  v4 = sub_AB98B0();

  return _swift_task_switch(sub_74305C, v4, v3);
}

uint64_t sub_74320C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_743278(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v23[0] = a1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  if (swift_dynamicCast())
  {
    v5 = *&v27[0];
    v6 = BYTE8(v27[0]);
    swift_beginAccess();
    v7 = v2[5];
    v8 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v7);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin();
    v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v12, v10);
    v13 = (*(v8 + 48))(v7, v8);
    (*(v9 + 8))(v12, v7);
    if (v13)
    {
      v14 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      v15 = *&v13[v14];
    }

    else
    {
      v15 = 0;
    }

    v16 = a2;

    sub_756D7C(v5, v6);
    sub_757438(a2, v3, v15, v5, v6, v23);
    if (v25)
    {
      v27[0] = v23[0];
      v27[1] = v23[1];
      v27[2] = v23[2];
      v28 = v24;
      v29 = v25;
      v30 = v26;
      sub_E8BA0(v3 + 16, v20);
      v17 = v21;
      v18 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      (*(v18 + 32))(v27, v17, v18);
      sub_12E1C(v23, &qword_E0F9B0, &qword_B1EF00);

      sub_754320(v5, v6);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {

      sub_754320(v5, v6);
    }
  }
}

double sub_74354C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a3;
  v26 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15DD0, &qword_B260D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970) - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v25 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v16 = &v25 - v15;
  v17 = sub_AB9990();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_15F84(a2, v14, &qword_E15500, &qword_B25970);
  (*(v7 + 16))(v10, a1, v6);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v7 + 80) + v19 + 8) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_753000(v14, v21 + v18);
  *(v21 + v19) = v25;
  (*(v7 + 32))(v21 + v20, v10, v6);
  v22 = v26;
  *(v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v23 = v22;

  sub_5E89D8(0, 0, v16, &unk_B260E0, v21);

  return result;
}

uint64_t sub_743828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15DD0, &qword_B260D0);
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v7[17] = *(v9 + 64);
  v7[18] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970) - 8);
  v7[19] = v10;
  v7[20] = *(v10 + 64);
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_74396C, 0, 0);
}

uint64_t sub_74396C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[15];
  v7 = v0[13];
  v23 = v0[12];
  sub_15F84(v0[11], v1, &qword_E15500, &qword_B25970);
  (*(v5 + 16))(v3, v7, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(v5 + 80) + v9 + 8) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[22] = v11;
  sub_753000(v1, v11 + v8);
  *(v11 + v9) = v23;
  (*(v5 + 32))(v11 + v10, v3, v6);
  v12 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[6] = UIScreen.Dimensions.size.getter;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_41A314;
  v0[5] = &block_descriptor_149_1;
  v13 = _Block_copy(v0 + 2);

  v14 = [v12 initWithBlock:v13];
  v0[23] = v14;
  _Block_release(v13);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v16 = v0[12];
    swift_beginAccess();
    v17 = v16[5];
    v18 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v17);
    v19 = *(v17 - 8);
    v20 = swift_task_alloc();
    v0[24] = v20;
    (*(v19 + 16))();
    v21 = (*(v18 + 48))(v17, v18);
    v0[25] = v21;
    (*(v19 + 8))(v20, v17);
    v22 = swift_task_alloc();
    v0[26] = v22;
    *v22 = v0;
    v22[1] = sub_743CC8;

    return sub_75E1A0(v14, sub_7549B8, v11, v21);
  }

  return result;
}

uint64_t sub_743CC8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_743E68;
  }

  else
  {

    v3 = sub_743DEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_743DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_743E68()
{

  sub_AB9940();
  *(v0 + 224) = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_743F0C, v2, v1);
}

uint64_t sub_743F0C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);

  sub_743278(v1, v2);

  return _swift_task_switch(sub_743F90, 0, 0);
}

uint64_t sub_743F90()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_744018(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15DD0, &qword_B260D0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v25 - v8;
  v26 = &v25 - v8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970) - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v25 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = sub_AB9990();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_15F84(a2, v13, &qword_E15500, &qword_B25970);
  v17 = v9;
  v18 = v6;
  (*(v7 + 16))(v17, v27, v6);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v7 + 80) + v20 + 8) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a1;
  sub_753000(v13, &v22[v19]);
  *&v22[v20] = v28;
  (*(v7 + 32))(&v22[v21], v26, v18);
  v23 = a1;

  sub_6E35A0(0, 0, v15, &unk_B260F0, v22);

  return result;
}

uint64_t sub_7442EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970);
  v7[14] = swift_task_alloc();
  type metadata accessor for GroupActivitiesManager.Activity(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_7443C4, 0, 0);
}

uint64_t sub_7443C4()
{
  v1 = v0[12];
  v2 = v0[10];
  sub_15F84(v0[11], v0[14], &qword_E15500, &qword_B25970);
  swift_beginAccess();
  sub_E8BA0(v1 + 16, (v0 + 2));
  v3 = v2;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_7444AC;
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[10];

  return sub_73BF04(v5, v7, v6, (v0 + 2));
}

uint64_t sub_7444AC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_7446A0;
  }

  else
  {
    v2 = sub_7445C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7445C0()
{
  v1 = v0[16];
  sub_7521B4(v1, v0[15], type metadata accessor for GroupActivitiesManager.Activity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15DD0, &qword_B260D0);
  sub_AB98D0();
  sub_752508(v1, type metadata accessor for GroupActivitiesManager.Activity);

  v2 = v0[1];

  return v2();
}

uint64_t sub_7446A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_744718(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_AB3D30();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_744850, 0, 0);
}

uint64_t sub_744850()
{
  v26 = v0;
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  *(v0 + 144) = __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "GroupActivitiesManager prepareForActivation", v4, 2u);
  }

  if ((GroupActivitiesManager.isSessionEligible.getter() & 1) == 0)
  {
    v12 = 1;
LABEL_11:
    (*(*(v0 + 128) + 56))(*(v0 + 56), v12, 4, *(v0 + 120));

    v13 = *(v0 + 8);

    return v13();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((v0 + 49));

  if (*(v0 + 49))
  {
    v5 = sub_AB4BA0();
    v6 = sub_AB9F30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136446210;
      *(v0 + 40) = 1;
      *(v0 + 48) = 4;
      v9 = sub_AB9350();
      v11 = sub_500C84(v9, v10, &v25);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_0, v5, v6, "Prepare error=%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
    }

    v12 = 2;
    goto LABEL_11;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 120);
  v17 = *(v0 + 72);
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v18 = *(v16 + 32);
  v19 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  sub_12E1C(v15, &qword_E15508, &qword_B25978);
  swift_beginAccess();
  sub_E8BA0(v17 + 16, v15);
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  v21 = sub_752B88(&qword_E154F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v20 = v0;
  v20[1] = sub_744C58;
  v22 = *(v0 + 112);
  v23 = *(v0 + 120);
  v24 = *(v0 + 64);

  return GroupActivity.prepareForActivation(options:)(v22, v24, v23, v21);
}

uint64_t sub_744C58()
{

  return _swift_task_switch(sub_744D54, 0, 0);
}

uint64_t sub_744D54()
{
  v38 = v0;
  v1 = *(*(v0 + 88) + 16);
  v1(*(v0 + 104), *(v0 + 112), *(v0 + 80));
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  if (v4)
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v9 = 136446210;
    v1(v6, v5, v8);
    v10 = sub_AB9380();
    v12 = v11;
    v13 = *(v7 + 8);
    v13(v5, v8);
    v14 = v13;
    v15 = sub_500C84(v10, v12, &v37);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_0, v2, v3, "User choice=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);

    v14 = *(v17 + 8);
    v14(v5, v16);
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = *(*(v0 + 88) + 104);
  v20(v18, enum case for GroupActivityActivationResult.activationPreferred(_:), v19);
  v21 = sub_AB3D20();
  v14(v18, v19);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v24 = *(v0 + 112);
  v36 = *(v0 + 120);
  if (v21)
  {
    v34 = *(v0 + 80);
    v25 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510((v0 + 50));

    v26 = *(v0 + 50);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 51) = 1;

    sub_AB5520();
    sub_73FEE8(v26);
    v14(v24, v34);
    sub_7521B4(v22, v25, type metadata accessor for GroupActivitiesManager.Activity);
    (*(v23 + 56))(v25, 0, 4, v36);
  }

  else
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    v20(v27, enum case for GroupActivityActivationResult.activationDisabled(_:), v28);
    v30 = sub_AB3D20();
    v14(v27, v28);
    v14(v24, v28);
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 4;
    }

    (*(v23 + 56))(v29, v31, 4, v36);
  }

  sub_752508(v22, type metadata accessor for GroupActivitiesManager.Activity);

  v32 = *(v0 + 8);

  return v32();
}

double sub_745140()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v3 = &v19 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10710, qword_B25BC0);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = type metadata accessor for Signpost(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, static Logger.groupActivities);
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "beginMeasuringInitiationTime", v13, 2u);
  }

  if (qword_E0D5B0 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.sharePlay;

  Signpost.init(name:object:log:)("InitiationToFirstAudioFrame", 27, 2, v14, v9);
  Signpost.begin(dso:_:_:)(&dword_0, "enableTelemetry=YES", 19, 2, _swiftEmptyArrayStorage);
  sub_7521B4(v9, v5, type metadata accessor for Signpost);
  (*(v7 + 56))(v5, 0, 1, v6);
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  sub_160B4(v5, v1 + v15, &qword_E10710, qword_B25BC0);
  swift_endAccess();
  sub_AB3420();
  sub_752508(v9, type metadata accessor for Signpost);
  v16 = sub_AB3430();
  (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  sub_160B4(v3, v1 + v17, &qword_E0FF60, &qword_B1BCA0);
  swift_endAccess();
  return result;
}

uint64_t sub_745504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v6[14] = v7;
  v6[15] = *(v7 + 64);
  v6[16] = swift_task_alloc();
  sub_AB9940();
  v6[17] = sub_AB9930();
  v9 = sub_AB98B0();
  v6[18] = v9;
  v6[19] = v8;

  return _swift_task_switch(sub_745600, v9, v8);
}

uint64_t sub_745600()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_745998;

    return sub_75DAE0(v2);
  }

  else
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = v0[12];
    sub_7521B4(v0[13], v5, type metadata accessor for GroupActivitiesManager.Activity);
    v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v9 = swift_allocObject();
    v0[22] = v9;
    *(v9 + 16) = v7;
    sub_75214C(v5, v9 + v8, type metadata accessor for GroupActivitiesManager.Activity);
    v10 = objc_allocWithZone(ICLiveLinkIdentity);
    v0[6] = UIScreen.Dimensions.size.getter;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_41A314;
    v0[5] = &block_descriptor_221;
    v11 = _Block_copy(v0 + 2);

    v12 = [v10 initWithBlock:v11];
    v0[23] = v12;
    _Block_release(v11);

    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }

    else
    {
      v13 = v0[12];
      swift_beginAccess();
      v14 = v13[5];
      v15 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v14);
      v16 = *(v14 - 8);
      v17 = swift_task_alloc();
      v0[24] = v17;
      (*(v16 + 16))();
      v18 = (*(v15 + 48))(v14, v15);
      v0[25] = v18;
      (*(v16 + 8))(v17, v14);
      v19 = swift_task_alloc();
      v0[26] = v19;
      *v19 = v0;
      v19[1] = sub_745B1C;

      return sub_75E1A0(v12, sub_7557D4, v9, v18);
    }
  }

  return result;
}

uint64_t sub_745998(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = v4[18];
    v7 = v4[19];

    return _swift_task_switch(sub_745FA4, v6, v7);
  }

  else
  {
    v4[28] = a1;
    v8 = swift_task_alloc();
    v4[29] = v8;
    *v8 = v5;
    v8[1] = sub_745E0C;
    v9 = v4[13];

    return sub_7460E4(a1, v9);
  }
}

uint64_t sub_745B1C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_745CBC;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_745C40;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_745C40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_745CBC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((v0 + 240));

  LOBYTE(v2) = *(v0 + 240);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 241) = 0;

  sub_AB5520();
  sub_73FEE8(v2);
  sub_743278(v1, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_745E0C()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_745F2C, v3, v2);
}

uint64_t sub_745F2C()
{
  v1 = v0[28];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_745FA4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((v0 + 242));

  v3 = *(v0 + 242);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 243) = 0;

  sub_AB5520();
  sub_73FEE8(v3);
  v4 = v2;
  sub_743278(v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_7460E4(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v3[34] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_746194, 0, 0);
}

uint64_t sub_746194()
{
  v22 = v0;
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 sharedListeningProperties];
    *(v0 + 304) = v3;
    if (v3)
    {
      if (qword_E0CF68 != -1)
      {
        swift_once();
      }

      v4 = qword_E154B0;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 224;
      *(v0 + 24) = sub_746550;
      v5 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15DC8, &unk_B260C0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_608560;
      *(v0 + 104) = &block_descriptor_227_0;
      *(v0 + 112) = v5;
      [v2 getRepresentativeObjectWithProperties:v4 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((v0 + 352));

  v6 = *(v0 + 352);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 353) = 0;

  sub_AB5520();
  sub_73FEE8(v6);
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 248);
  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, static Logger.groupActivities);
  v9 = v7;
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    *(v0 + 216) = v12;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E155E0, &unk_B25B40);
    v16 = sub_AB9380();
    v18 = sub_500C84(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "Cannot activate intent=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_746550()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_746CCC;
  }

  else
  {
    v2 = sub_746660;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_746660()
{
  v36 = v0;
  v1 = v0[28];
  v0[40] = v1;
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v0[41] = __swift_project_value_buffer(v2, static Logger.groupActivities);
  v3 = v1;
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136446210;
    v0[30] = v1;
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15F38, &qword_B26228);
    v9 = sub_AB9350();
    v11 = sub_500C84(v9, v10, &v35);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_0, v4, v5, "Activity starting item=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v12 = v0[37];
  v13 = v0[33];
  sub_7521B4(v0[32], v12, type metadata accessor for GroupActivitiesManager.Activity);
  sub_12E1C(v12, &qword_E15508, &qword_B25978);
  swift_beginAccess();
  sub_E8BA0(v13 + 16, v12);
  if (v3)
  {
    v14 = [v3 innermostModelObject];
    type metadata accessor for CodableModelObjectIdentity();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
  }

  else
  {
    type metadata accessor for CodableModelObjectIdentity();
    swift_allocObject();
    swift_deallocPartialClassInstance();
    v15 = 0;
  }

  v17 = v0[37];
  v16 = v0[38];

  *(v17 + 56) = v15;
  type metadata accessor for CodableListeningProperties();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v17 + 48) = v18;
  v19 = v16;

  v20 = sub_AB4BA0();
  v21 = sub_AB9F50();
  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[36];
    v22 = v0[37];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136446210;
    swift_beginAccess();
    sub_7521B4(v22, v23, type metadata accessor for GroupActivitiesManager.Activity);
    v26 = sub_AB9350();
    v28 = sub_500C84(v26, v27, &v35);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_0, v20, v21, "🚀 Activiting activity=%{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  v29 = v0[37];
  v30 = v0[35];
  swift_beginAccess();
  sub_7521B4(v29, v30, type metadata accessor for GroupActivitiesManager.Activity);
  v31 = swift_task_alloc();
  v0[42] = v31;
  v32 = sub_752B88(&qword_E154F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v31 = v0;
  v31[1] = sub_746AD4;
  v33 = v0[34];

  return GroupActivity.activate()(v33, v32);
}

uint64_t sub_746AD4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  sub_752508(*(v2 + 280), type metadata accessor for GroupActivitiesManager.Activity);
  if (v0)
  {
    v3 = sub_7470FC;
  }

  else
  {
    v3 = sub_746C1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_746C1C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);

  sub_752508(v2, type metadata accessor for GroupActivitiesManager.Activity);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_746CCC(__n128 a1)
{
  v32 = v1;
  swift_willThrow();

  v1[40] = 0;
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v1[41] = __swift_project_value_buffer(v2, static Logger.groupActivities);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31[0] = v6;
    *v5 = 136446210;
    v1[30] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15F38, &qword_B26228);
    v7 = sub_AB9350();
    v9 = sub_500C84(v7, v8, v31);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Activity starting item=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v10 = v1[37];
  v11 = v1[33];
  sub_7521B4(v1[32], v10, type metadata accessor for GroupActivitiesManager.Activity);
  sub_12E1C(v10, &qword_E15508, &qword_B25978);
  swift_beginAccess();
  sub_E8BA0(v11 + 16, v10);
  type metadata accessor for CodableModelObjectIdentity();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  v13 = v1[37];
  v12 = v1[38];

  *(v13 + 56) = 0;
  type metadata accessor for CodableListeningProperties();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 48) = v14;
  v15 = v12;

  v16 = sub_AB4BA0();
  v17 = sub_AB9F50();
  if (os_log_type_enabled(v16, v17))
  {
    v19 = v1[36];
    v18 = v1[37];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31[0] = v21;
    *v20 = 136446210;
    swift_beginAccess();
    sub_7521B4(v18, v19, type metadata accessor for GroupActivitiesManager.Activity);
    v22 = sub_AB9350();
    v24 = sub_500C84(v22, v23, v31);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_0, v16, v17, "🚀 Activiting activity=%{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  v25 = v1[37];
  v26 = v1[35];
  swift_beginAccess();
  sub_7521B4(v25, v26, type metadata accessor for GroupActivitiesManager.Activity);
  v27 = swift_task_alloc();
  v1[42] = v27;
  v28 = sub_752B88(&qword_E154F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v27 = v1;
  v27[1] = sub_746AD4;
  v29 = v1[34];

  return GroupActivity.activate()(v29, v28);
}

uint64_t sub_7470FC()
{
  v20 = v0;
  swift_errorRetain();
  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 320);
    v17 = *(v0 + 304);
    v18 = *(v0 + 296);
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    *(v0 + 232) = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v8 = sub_AB9350();
    v10 = sub_500C84(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "Activation failed=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);

    v11 = v18;
  }

  else
  {
    v12 = *(v0 + 320);
    v13 = *(v0 + 296);
    v14 = *(v0 + 248);

    v11 = v13;
  }

  sub_752508(v11, type metadata accessor for GroupActivitiesManager.Activity);

  v15 = *(v0 + 8);

  return v15();
}

double sub_747320(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = sub_AB9990();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_7521B4(a3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupActivitiesManager.Activity);
  v11 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a1;
  sub_75214C(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for GroupActivitiesManager.Activity);
  v13 = a1;

  sub_5E89D8(0, 0, v9, &unk_B26238, v12);

  return result;
}

uint64_t sub_747504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_17CF8;

  return sub_7460E4(a5, a6);
}

uint64_t sub_7475B0(uint64_t a1, unint64_t a2)
{
  v5._countAndFlagsBits = 0x616C506572616853;
  v5._object = 0xEC0000003D444979;
  if (sub_AB9530(v5))
  {
    sub_391020(0xC0007uLL, a1, a2);
    a1 = sub_AB93B0();
  }

  else
  {
  }

  return a1;
}

void GroupActivitiesManager.sessionForReactionAssociation()()
{
  if (GroupActivitiesManager.hasJoined.getter())
  {
  }
}

void sub_747680()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15F30, &qword_B26218);
  __chkstk_darwin();
  v67 = &v59 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15628, &qword_B25BB8);
  __chkstk_darwin();
  v66 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v59 - v4;
  __chkstk_darwin();
  v7 = &v59 - v6;
  __chkstk_darwin();
  v9 = &v59 - v8;
  v10 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  __chkstk_darwin();
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v14 = &v59 - v13;
  __chkstk_darwin();
  v16 = &v59 - v15;
  __chkstk_darwin();
  v20 = &v59 - v19;
  v69 = v0;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    v63 = v18;
    v64 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
    v68 = v17;

    sub_AB3E00();

    v21 = *(v20 + 6);
    if (!v21)
    {
      v28 = v20;
LABEL_9:
      sub_752508(v28, type metadata accessor for GroupActivitiesManager.Activity);
      return;
    }

    v61 = v12;
    v62 = v16;
    v65 = *(v21 + 16);
    sub_752508(v20, type metadata accessor for GroupActivitiesManager.Activity);
    v22 = v69 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v23 = *(v10 + 48);
    if (!v23(v22, 1, v68))
    {
      type metadata accessor for CodableListeningProperties();
      v24 = swift_allocObject();
      v25 = v65;
      *(v24 + 16) = v65;
      *(v22 + 48) = v24;
      v26 = v25;
    }

    swift_endAccess();
    if ((GroupActivitiesManager.hasJoined.getter() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_15F84(v22, v9, &qword_E15628, &qword_B25BB8);
    v27 = v68;
    if (v23(v9, 1, v68) == 1)
    {

      sub_12E1C(v9, &qword_E15628, &qword_B25BB8);
      return;
    }

    v29 = v62;
    sub_75214C(v9, v62, type metadata accessor for GroupActivitiesManager.Activity);
    sub_7521B4(v29, v7, type metadata accessor for GroupActivitiesManager.Activity);
    v30 = 1;
    v60 = *(v10 + 56);
    v60(v7, 0, 1, v27);
    if (*(v69 + v64))
    {

      sub_AB3E00();

      v30 = 0;
    }

    v32 = v67;
    v31 = v68;
    v60(v5, v30, 1, v68);
    v33 = *(v1 + 48);
    sub_15F84(v7, v32, &qword_E15628, &qword_B25BB8);
    sub_15F84(v5, v32 + v33, &qword_E15628, &qword_B25BB8);
    if (v23(v32, 1, v31) == 1)
    {
      sub_12E1C(v5, &qword_E15628, &qword_B25BB8);
      sub_12E1C(v7, &qword_E15628, &qword_B25BB8);
      v34 = v23(v32 + v33, 1, v31);
      v35 = v62;
      if (v34 == 1)
      {
        sub_12E1C(v32, &qword_E15628, &qword_B25BB8);
LABEL_15:
        sub_752508(v35, type metadata accessor for GroupActivitiesManager.Activity);
LABEL_16:

        return;
      }
    }

    else
    {
      v36 = v66;
      sub_15F84(v32, v66, &qword_E15628, &qword_B25BB8);
      if (v23(v32 + v33, 1, v31) != 1)
      {
        sub_75214C(v32 + v33, v14, type metadata accessor for GroupActivitiesManager.Activity);
        v40 = *(v36 + 56);
        v35 = v62;
        if (v40)
        {
          v41 = *(v14 + 7);
          if (v41)
          {
            v42 = *(v41 + 16);
            v43 = *(v40 + 16);
            v44 = v42;
            v45 = [v43 identifiers];
            v46 = v32;
            v47 = [v44 identifiers];
            v48 = [v45 intersectsSet:v47];

            sub_752508(v14, type metadata accessor for GroupActivitiesManager.Activity);
            sub_12E1C(v5, &qword_E15628, &qword_B25BB8);
            sub_12E1C(v7, &qword_E15628, &qword_B25BB8);
            sub_752508(v66, type metadata accessor for GroupActivitiesManager.Activity);
            sub_12E1C(v46, &qword_E15628, &qword_B25BB8);
            if (v48)
            {
              goto LABEL_15;
            }

            goto LABEL_27;
          }
        }

        sub_752508(v14, type metadata accessor for GroupActivitiesManager.Activity);
        sub_12E1C(v5, &qword_E15628, &qword_B25BB8);
        sub_12E1C(v7, &qword_E15628, &qword_B25BB8);
        sub_752508(v66, type metadata accessor for GroupActivitiesManager.Activity);
        v39 = v32;
        v37 = &qword_E15628;
        v38 = &qword_B25BB8;
LABEL_26:
        sub_12E1C(v39, v37, v38);
LABEL_27:
        if (*(v69 + v64))
        {
          sub_7521B4(v35, v63, type metadata accessor for GroupActivitiesManager.Activity);

          sub_AB3E10();
        }

        if (qword_E0CF70 != -1)
        {
          swift_once();
        }

        v49 = sub_AB4BC0();
        __swift_project_value_buffer(v49, static Logger.groupActivities);
        v50 = v61;
        sub_7521B4(v35, v61, type metadata accessor for GroupActivitiesManager.Activity);
        v51 = sub_AB4BA0();
        v52 = sub_AB9F50();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v70[0] = v54;
          *v53 = 136446210;
          sub_7521B4(v50, v63, type metadata accessor for GroupActivitiesManager.Activity);
          v55 = sub_AB9350();
          v57 = v56;
          sub_752508(v50, type metadata accessor for GroupActivitiesManager.Activity);
          v58 = sub_500C84(v55, v57, v70);

          *(v53 + 4) = v58;
          _os_log_impl(&dword_0, v51, v52, "Updating session activity=%{public}s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v54);
        }

        else
        {

          sub_752508(v50, type metadata accessor for GroupActivitiesManager.Activity);
        }

        v28 = v35;
        goto LABEL_9;
      }

      sub_12E1C(v5, &qword_E15628, &qword_B25BB8);
      sub_12E1C(v7, &qword_E15628, &qword_B25BB8);
      sub_752508(v36, type metadata accessor for GroupActivitiesManager.Activity);
      v35 = v62;
    }

    v37 = &qword_E15F30;
    v38 = &qword_B26218;
    v39 = v32;
    goto LABEL_26;
  }
}

void (*sub_748024(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_748088;
}

void sub_748088(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_747680();
  }
}

void sub_7480BC()
{
  v1 = v0;
  v100 = sub_ABA280();
  v109 = *(v100 - 8);
  __chkstk_darwin();
  v116 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15DE8, &qword_B26108);
  v118 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v93 - v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15DF0, &qword_B26110);
  v110 = *(v111 - 8);
  __chkstk_darwin();
  v108 = &v93 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15DF8, &qword_B26118);
  v113 = *(v114 - 8);
  __chkstk_darwin();
  v112 = &v93 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15E00, &qword_B26120);
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v95 = &v93 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15E08, &qword_B26128);
  v103 = *(v9 - 8);
  __chkstk_darwin();
  v99 = &v93 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15E10, &qword_B26130);
  v106 = *(v11 - 8);
  __chkstk_darwin();
  v105 = &v93 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F510, &qword_B19DB8);
  __chkstk_darwin();
  v115 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13420, &qword_B22050);
  v126 = *(v14 - 8);
  __chkstk_darwin();
  v125 = &v93 - v15;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15E18, &qword_B26138);
  v96 = *(v120 - 1);
  __chkstk_darwin();
  v94 = &v93 - v16;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15E20, &unk_B26140);
  v98 = *(v122 - 8);
  __chkstk_darwin();
  v97 = &v93 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15628, &qword_B25BB8);
  __chkstk_darwin();
  v19 = &v93 - v18;
  if (qword_E0CF70 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v20 = sub_AB4BC0();
    __swift_project_value_buffer(v20, static Logger.groupActivities);

    v21 = sub_AB4BA0();
    v22 = sub_AB9F50();

    v23 = os_log_type_enabled(v21, v22);
    v119 = v3;
    v117 = v5;
    v107 = v11;
    v104 = v9;
    v127 = v14;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v131[0] = v25;
      *v24 = 136446210;
      v129[0] = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15E88, &unk_B26150);
      v26 = sub_AB9380();
      v28 = sub_500C84(v26, v27, v131);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_0, v21, v22, "📲 Receiving a new session=%{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    v128 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
    if (v128)
    {
      break;
    }

    v75 = type metadata accessor for GroupActivitiesManager.Activity(0);
    (*(*(v75 - 8) + 56))(v19, 1, 1, v75);
    v76 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    sub_1FBB9C(v19, v1 + v76, &qword_E15628, &qword_B25BB8);
    swift_endAccess();
    sub_747680();
    sub_12E1C(v19, &qword_E15628, &qword_B25BB8);
    v77 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
    swift_beginAccess();
    v3 = *(v1 + v77);
    if ((v3 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_ABAC10();
      sub_AB5460();
      sub_752B88(&qword_E0E138, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      sub_AB9BC0();
      v19 = v131[0];
      v5 = v131[1];
      v78 = v131[2];
      v9 = v131[3];
      v11 = v131[4];
    }

    else
    {
      v79 = -1 << *(v3 + 32);
      v5 = (v3 + 56);
      v78 = ~v79;
      v80 = -v79;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      else
      {
        v81 = -1;
      }

      v11 = v81 & *(v3 + 56);
      swift_bridgeObjectRetain_n();
      v9 = 0;
      v19 = v3;
    }

    v128 = v78;
    for (i = (v78 + 64) >> 6; v19 < 0; v11 = v85)
    {
      v87 = sub_ABAC90();
      if (!v87)
      {
        goto LABEL_27;
      }

      v129[4] = v87;
      sub_AB5460();
      swift_dynamicCast();
      v14 = v9;
      v85 = v11;
      if (!v130)
      {
        goto LABEL_27;
      }

LABEL_25:
      sub_AB5450();

      v9 = v14;
    }

    v83 = v9;
    v84 = v11;
    v14 = v9;
    if (v11)
    {
LABEL_21:
      v85 = (v84 - 1) & v84;
      v86 = *(*(v19 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v84)))));

      if (v86)
      {
        goto LABEL_25;
      }

LABEL_27:
      sub_2BB88(v19);

      *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(&v130);

      v88 = v130;
      swift_getKeyPath();
      swift_getKeyPath();
      v130 = 0;

      sub_AB5520();
      sub_73F8B4(v88);
      v89 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      *(v1 + v89) = 0;
      v90 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
      v91 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
      v92 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
      *v90 = xmmword_AF82C0;
      *(v90 + 16) = 0;
      sub_75324C(v91, v92);
      return;
    }

    while (1)
    {
      v14 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v14 >= i)
      {
        goto LABEL_27;
      }

      v84 = *&v5[8 * v14];
      ++v83;
      if (v84)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  sub_AB3E00();
  v29 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v30 = *(v29 - 8);
  (*(v30 + 56))(v19, 0, 1, v29);
  v31 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  swift_beginAccess();
  sub_1FBB9C(v19, v1 + v31, &qword_E15628, &qword_B25BB8);
  swift_endAccess();
  sub_747680();
  sub_12E1C(v19, &qword_E15628, &qword_B25BB8);
  v32 = sub_748024(v129);
  v34 = v33;
  if (!(*(v30 + 48))(v33, 1, v29))
  {
    swift_beginAccess();
    sub_E8BA0(v1 + 16, v131);
    sub_160B4(v131, v34, &qword_E15508, &qword_B25978);
  }

  v32(v129, 0);
  v35 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v36 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v37 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  *v35 = xmmword_AF82C0;
  *(v35 + 16) = 0;
  sub_75324C(v36, v37);
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13520, &unk_B1BFB8);
  v38 = v125;
  sub_AB54E0();
  swift_endAccess();
  v121 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_36A00(&unk_E13528, &qword_E13420, &qword_B22050, &protocol conformance descriptor for Published<A>.Publisher);
  sub_754F30();
  v39 = v94;
  v40 = v127;
  sub_AB55B0();
  (*(v126 + 8))(v38, v40);
  v127 = sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
  v41 = sub_ABA150();
  v131[0] = v41;
  v42 = sub_ABA130();
  v43 = *(v42 - 8);
  v123 = *(v43 + 56);
  v125 = (v43 + 56);
  v44 = v115;
  v124 = v42;
  v123(v115, 1, 1, v42);
  sub_36A00(&unk_E15E38, &qword_E15E18, &qword_B26138, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v45 = sub_6FB3BC();
  v46 = v97;
  v47 = v120;
  v126 = v45;
  sub_AB5590();
  sub_12E1C(v44, &qword_E0F510, &qword_B19DB8);

  (*(v96 + 8))(v39, v47);
  swift_allocObject();
  swift_weakInit();
  v120 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_36A00(&qword_E15E48, &unk_E15E20, &unk_B26140, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v48 = v122;
  sub_AB55C0();

  (*(v98 + 8))(v46, v48);
  v49 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
  swift_beginAccess();
  sub_AB5440();
  swift_endAccess();

  v50 = v95;
  sub_AB3D90();
  v51 = sub_ABA150();
  v131[0] = v51;
  v123(v44, 1, 1, v42);
  sub_36A00(&qword_E15E50, &qword_E15E00, &qword_B26120, v121);
  v52 = v99;
  v53 = v102;
  sub_AB5590();
  sub_12E1C(v44, &qword_E0F510, &qword_B19DB8);

  (*(v101 + 8))(v50, v53);
  sub_36A00(&qword_E15E58, &qword_E15E08, &qword_B26128, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v54 = v105;
  v55 = v104;
  sub_AB5570();
  (*(v103 + 8))(v52, v55);
  swift_allocObject();
  swift_weakInit();
  sub_36A00(&qword_E15E60, &qword_E15E10, &qword_B26130, &protocol conformance descriptor for Publishers.Map<A, B>);
  v56 = v107;
  sub_AB55C0();

  (*(v106 + 8))(v54, v56);
  v122 = v49;
  swift_beginAccess();
  sub_AB5440();
  swift_endAccess();

  v57 = v128;
  v58 = v108;
  sub_AB3DE0();
  v59 = sub_ABA150();
  v131[0] = v59;
  v60 = v123;
  v123(v44, 1, 1, v124);
  sub_36A00(&qword_E15E68, &qword_E15DF0, &qword_B26110, v121);
  v61 = v112;
  v62 = v111;
  sub_AB5590();
  sub_12E1C(v44, &qword_E0F510, &qword_B19DB8);

  (*(v110 + 8))(v58, v62);
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v57;
  sub_36A00(&unk_E15E70, &qword_E15DF8, &qword_B26118, v120);

  v65 = v114;
  sub_AB55C0();

  (*(v113 + 8))(v61, v65);
  swift_beginAccess();
  sub_AB5440();
  swift_endAccess();

  v121 = objc_opt_self();
  v66 = [v121 defaultCenter];
  v67 = v116;
  sub_ABA290();

  v68 = sub_ABA150();
  v131[0] = v68;
  v60(v44, 1, 1, v124);
  v114 = sub_752B88(&qword_E124E0, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v69 = v117;
  v70 = v100;
  sub_AB5590();
  sub_12E1C(v44, &qword_E0F510, &qword_B19DB8);

  v113 = *(v109 + 8);
  (v113)(v67, v70);
  swift_allocObject();
  swift_weakInit();
  v120 = sub_36A00(&qword_E15E80, &qword_E15DE8, &qword_B26108, v120);
  v71 = v119;
  sub_AB55C0();

  v118 = *(v118 + 8);
  (v118)(v69, v71);
  swift_beginAccess();
  sub_AB5440();
  swift_endAccess();

  v72 = [v121 defaultCenter];
  v73 = sub_AB9260();
  sub_ABA290();

  v74 = sub_ABA150();
  v131[0] = v74;
  v123(v44, 1, 1, v124);
  sub_AB5590();
  sub_12E1C(v44, &qword_E0F510, &qword_B19DB8);

  (v113)(v67, v70);
  swift_allocObject();
  swift_weakInit();
  sub_AB55C0();

  (v118)(v69, v71);
  swift_beginAccess();
  sub_AB5440();
  swift_endAccess();
}

double sub_74985C(__int128 *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    UIScreen.Dimensions.size.getter();
    v12[4] = v8;
    v12[5] = v9;
    v12[6] = v10;
    v12[7] = v11;
    v12[0] = v4;
    v12[1] = v5;
    v12[2] = v6;
    v12[3] = v7;
    sub_74990C(v12);
  }

  return result;
}

void sub_74990C(unsigned __int8 *a1)
{
  v106 = *a1;
  v2 = a1[1];
  v104 = a1[2];
  LODWORD(v105) = v2;
  v3 = *(a1 + 2);
  v103 = *(a1 + 1);
  v101 = v3;
  v99 = a1[24];
  v100 = *(a1 + 4);
  v4 = *(a1 + 3);
  v108 = *(a1 + 2);
  v98 = v4;
  v5 = *(a1 + 10);
  v6 = *(a1 + 11);
  v7 = a1[96];
  v8 = *(a1 + 13);
  v9 = a1[112];
  v10 = *(a1 + 15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v102 = &v98 - v11;
  v12 = *(a1 + 5);
  v127[4] = *(a1 + 4);
  v127[5] = v12;
  v13 = *(a1 + 7);
  v127[6] = *(a1 + 6);
  v127[7] = v13;
  v14 = *(a1 + 1);
  v127[0] = *a1;
  v127[1] = v14;
  v15 = *(a1 + 3);
  v127[2] = *(a1 + 2);
  v127[3] = v15;
  if (sub_11D03C(v127) == 1)
  {
    if (qword_E0CC60 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v114);

    v16 = v114;
    v17 = BYTE1(v114);
    v18 = BYTE2(v114);
    v19 = v115;
    v20 = v116;
    v21 = v117;
    v23 = v119;
    v22 = v120;
    v24 = v118;
    v25 = v121;
    v6 = v122;
    v7 = v123;
    v8 = v124;
    v9 = v125;
    v10 = v126;
  }

  else
  {
    v16 = v106;
    v24 = v108;
    v18 = v104;
    v17 = v105;
    v19 = v103;
    v20 = v101;
    v21 = v99;
    v22 = v100;
    v25 = v5;
    v23 = v98;
  }

  v108 = v24;
  v26 = v16;
  LODWORD(v101) = v16 & 1;
  LOBYTE(v114) = v16 & 1;
  BYTE1(v114) = v17 & 1;
  BYTE2(v114) = v18 & 1;
  v115 = v19;
  v116 = v20;
  v106 = v21 & 1;
  v117 = v21 & 1;
  v118 = v24;
  v119 = v23;
  v120 = v22;
  v121 = v25;
  v122 = v6;
  v123 = v7;
  v124 = v8;
  v125 = v9;
  v126 = v10;
  v27 = 256;
  if (v21)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  sub_5DE204(&v114, &v110);
  sub_15F84(a1, &v110, &qword_E15E98, &qword_B26160);
  v29 = v108;
  v30 = sub_472A84(0, v108);
  LODWORD(v29) = sub_472A84(2, v29);
  v31 = v6;
  sub_70C54(&v114);
  v32 = v30;
  v33 = v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v34 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v35 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  v36 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 16);
  v104 = v29;
  if ((v29 & 1) == 0)
  {
    v27 = 0;
  }

  v37 = v27 & 0xFFFFFFFFFFFFFFFELL | v32 & 1;
  v38 = v28 & 0xFFFE | v26 & 1;
  v103 = v32;
  if (v35 == &dword_0 + 1)
  {
    v39 = v31;
    sub_75324C(v34, &dword_0 + 1);
    sub_75324C(v37, v6);
    goto LABEL_22;
  }

  if ((v32 & 1) != (v34 & 1) || ((v104 ^ ((v34 & 0x100) == 0)) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!v35)
  {
    if (!v6)
    {
      if ((v101 ^ v36))
      {
        goto LABEL_22;
      }

      v42 = v36 & 0x100;
      goto LABEL_56;
    }

LABEL_21:
    v43 = v31;
    goto LABEL_22;
  }

  if (!v6 || (LODWORD(v108) = v36, v105 = sub_13C80(0, &qword_E103B8, ICMusicSubscriptionStatus_ptr), v40 = v31, sub_755328(v34, v35), v41 = sub_ABA790(), v40, sub_75324C(v34, v35), (v41 & 1) == 0) || ((v101 ^ v108) & 1) != 0)
  {
LABEL_22:
    v44 = *v33;
    v45 = *(v33 + 8);
    *v33 = v37;
    *(v33 + 8) = v6;
    *(v33 + 16) = v38;
    sub_75324C(v44, v45);
    if (qword_E0CF70 != -1)
    {
      swift_once();
    }

    v105 = v6;
    v46 = sub_AB4BC0();
    __swift_project_value_buffer(v46, static Logger.groupActivities);
    v47 = v31;
    v48 = sub_AB4BA0();
    v49 = sub_AB9F50();
    *&v108 = v47;

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v109 = v51;
      *v50 = 136446210;
      LOBYTE(v110) = v103 & 1;
      HIBYTE(v110) = v104 & 1;
      v111 = v105;
      v112 = v101;
      v52 = v106;
      v113 = v106;
      v53 = v108;
      v54 = sub_AB9380();
      v56 = sub_500C84(v54, v55, &v109);

      *(v50 + 4) = v56;
      _os_log_impl(&dword_0, v48, v49, "🛂 Checking eligibility with context=%{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);

      if ((v52 & 1) == 0)
      {
LABEL_26:
        v57 = sub_AB4BA0();
        v58 = sub_AB9F50();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_0, v57, v58, "🛂 User did not accept GDPR", v59, 2u);
        }

        v60 = sub_AB9990();
        v61 = v102;
        (*(*(v60 - 8) + 56))(v102, 1, 1, v60);
        sub_AB9940();
        v62 = sub_AB9930();
        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        *(v63 + 24) = &protocol witness table for MainActor;
        sub_5E92E4(0, 0, v61, &unk_B26170, v63);
        goto LABEL_52;
      }
    }

    else
    {

      v52 = v106;
      if ((v106 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v64 = v105;
    if (!v105 || ([v108 capabilities] & 1) == 0)
    {
      if (v103)
      {
        if (v104)
        {
          if (v101)
          {
            if (v64)
            {
              v65 = v108;
              if (([v65 capabilities] & 1) == 0)
              {
                v66 = sub_AB4BA0();
                v67 = sub_AB9F50();
                if (os_log_type_enabled(v66, v67))
                {
                  v68 = swift_slowAlloc();
                  *v68 = 0;
                  _os_log_impl(&dword_0, v66, v67, "🛂 User is not a subscriber -> up sell", v68, 2u);
                }

                v69 = sub_AB9990();
                v70 = v102;
                (*(*(v69 - 8) + 56))(v102, 1, 1, v69);
                v71 = swift_allocObject();
                v71[2] = 0;
                v71[3] = 0;
                v71[4] = v107;

                sub_5E89D8(0, 0, v70, &unk_B26190, v71);
                sub_70C54(&v114);

                goto LABEL_53;
              }

              v64 = v105;
            }

            v91 = v108;
            v88 = sub_AB4BA0();
            v92 = sub_AB9F50();

            if (!os_log_type_enabled(v88, v92))
            {
              sub_70C54(&v114);

              goto LABEL_67;
            }

            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v109 = v94;
            *v93 = 136446210;
            v110 = 257;
            v111 = v64;
            v112 = v101;
            v113 = v52;
            v31 = v91;
            v95 = sub_AB9380();
            v97 = sub_500C84(v95, v96, &v109);

            *(v93 + 4) = v97;
            _os_log_impl(&dword_0, v88, v92, "🛂 Unknown prepare case with=%{public}s", v93, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v94);

            goto LABEL_64;
          }

          v83 = sub_AB4BA0();
          v84 = sub_AB9F50();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&dword_0, v83, v84, "🛂 User is not signed in -> request authentication", v85, 2u);
          }

          v86 = sub_AB9990();
          v77 = v102;
          (*(*(v86 - 8) + 56))(v102, 1, 1, v86);
          v78 = swift_allocObject();
          v78[2] = 0;
          v78[3] = 0;
          v78[4] = v107;

          v79 = &unk_B26180;
LABEL_51:
          sub_5E89D8(0, 0, v77, v79, v78);
LABEL_52:
          sub_70C54(&v114);

LABEL_53:

          return;
        }

        v80 = sub_AB4BA0();
        v81 = sub_AB9F50();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_0, v80, v81, "🛂 Apple Music content disabled", v82, 2u);
        }

        v75 = 1;
      }

      else
      {
        v72 = sub_AB4BA0();
        v73 = sub_AB9F50();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_0, v72, v73, "🛂 Music services restricted", v74, 2u);
        }

        v75 = 0;
      }

      sub_74EAD0(v75);
      sub_70C54(&v114);

      return;
    }

    v76 = sub_AB9990();
    v77 = v102;
    (*(*(v76 - 8) + 56))(v102, 1, 1, v76);
    v78 = swift_allocObject();
    v78[2] = 0;
    v78[3] = 0;
    v78[4] = v107;

    v79 = &unk_B261A0;
    goto LABEL_51;
  }

  v42 = v108 & 0x100;
LABEL_56:
  if ((v106 ^ (v42 >> 8)))
  {
    goto LABEL_22;
  }

  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v87 = sub_AB4BC0();
  __swift_project_value_buffer(v87, static Logger.groupActivities);
  v88 = sub_AB4BA0();
  v89 = sub_AB9F50();
  if (!os_log_type_enabled(v88, v89))
  {
    goto LABEL_65;
  }

  v90 = swift_slowAlloc();
  *v90 = 0;
  _os_log_impl(&dword_0, v88, v89, "Eligibility context didn't change.", v90, 2u);
LABEL_64:

LABEL_65:
  sub_70C54(&v114);

LABEL_67:
}

double sub_74A574(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v5);

    v4 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v2;

    sub_AB5520();
    sub_73F8B4(v4);
  }

  return result;
}

uint64_t sub_74A66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = sub_AB4B50();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin();
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB4B00();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin();
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E154E8, &qword_B25950);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v63 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = &v55 - v12;
  __chkstk_darwin();
  v15 = &v55 - v14;
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v16 = sub_AB4BC0();
  __swift_project_value_buffer(v16, static Logger.groupActivities);
  v17 = *(v10 + 16);
  v66 = a1;
  v18 = a1;
  v19 = v17;
  v17(v15, v18, v9);
  v20 = sub_AB4BA0();
  v21 = sub_AB9F50();
  v22 = os_log_type_enabled(v20, v21);
  v64 = v10;
  v62 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v55 = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v26 = v19;
    v27 = v25;
    *&v75[0] = v25;
    *v24 = 136446210;
    v26(v13, v15, v9);
    v28 = sub_AB9380();
    v29 = v10;
    v31 = v30;
    (*(v29 + 8))(v15, v9);
    v32 = sub_500C84(v28, v31, v75);

    *(v24 + 4) = v32;
    _os_log_impl(&dword_0, v20, v21, "📥 Session update with state=%{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v34 = v66;
  if (result)
  {
    v35 = result;
    v36 = v63;
    v62(v63, v66, v9);
    v37 = v64;
    v38 = (*(v64 + 88))(v36, v9);
    if (v38 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      (*(v37 + 96))(v36, v9);
      sub_74AD9C(*v36);
    }

    else if (v38 == enum case for GroupSession.State.waiting<A>(_:))
    {
      sub_11F44(&v67);
      v75[4] = v71;
      v75[5] = v72;
      v75[6] = v73;
      v75[7] = v74;
      v75[0] = v67;
      v75[1] = v68;
      v75[2] = v69;
      v75[3] = v70;
      sub_74990C(v75);
    }

    else
    {
      if (v38 != enum case for GroupSession.State.joined<A>(_:))
      {
        result = sub_ABAFD0();
        __break(1u);
        return result;
      }

      v39 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState;
      v40 = v61;
      if (*(v35 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState))
      {
        v41 = qword_E0D5A8;

        if (v41 != -1)
        {
          swift_once();
        }

        v42 = sub_AB4B40();
        __swift_project_value_buffer(v42, static OSSignposter.sharePlay);
        v43 = sub_AB4B20();
        sub_AB4B60();
        v44 = sub_ABA220();
        if (sub_ABA970())
        {

          v45 = v56;
          sub_AB4B90();

          v47 = v57;
          v46 = v58;
          if ((*(v57 + 88))(v45, v58) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v48 = "[Error] Interval already ended";
          }

          else
          {
            (*(v47 + 8))(v45, v46);
            v48 = "";
          }

          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = sub_AB4AE0();
          _os_signpost_emit_with_name_impl(&dword_0, v43, v44, v50, "JoinSession", v48, v49, 2u);

          v34 = v66;
        }

        (*(v59 + 8))(v40, v60);
        *(v35 + v39) = 0;
      }
    }

    sub_7401C8();
    swift_beginAccess();
    sub_E8BA0(v35 + 16, &v67);
    v51 = *(&v68 + 1);
    v52 = v69;
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    v53 = v65;
    v54 = sub_AB3D80();
    (*(v52 + 40))(v53, v34, v54 & 1, v51, v52);

    return __swift_destroy_boxed_opaque_existential_0(&v67);
  }

  return result;
}

double sub_74AD9C(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v4 = &v16 - v3;
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v5 = sub_AB4BC0();
  __swift_project_value_buffer(v5, static Logger.groupActivities);
  swift_errorRetain();
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_ABB520();
    v12 = sub_500C84(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "Session invalidated for reason=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v13 = sub_AB9990();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;

  sub_5E89D8(0, 0, v4, &unk_B26210, v14);

  return result;
}

uint64_t sub_74AFF0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v3 = v15 - v2;
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB2BC0();
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v15[1] = sub_AB92A0();
  v15[2] = v10;
  sub_ABAD10();
  if (!*(v9 + 16) || (v11 = sub_2EC004(v16), (v12 & 1) == 0))
  {

    sub_8085C(v16);
LABEL_8:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_9;
  }

  sub_808B0(*(v9 + 56) + 32 * v11, &v17);
  sub_8085C(v16);

  if (!*(&v18 + 1))
  {
LABEL_9:
    sub_12E1C(&v17, &qword_E11F60, &unk_B1BC70);
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_10;
  }

  v13 = swift_dynamicCast();
  (*(v5 + 56))(v3, v13 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    goto LABEL_12;
  }

LABEL_10:
  sub_AB3420();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    sub_12E1C(v3, &qword_E0FF60, &qword_B1BCA0);
  }

LABEL_12:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_74B2E0(v7);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_74B2E0(void *a1)
{
  v2 = v1;
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v39 - v4;
  v6 = sub_AB3430();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin();
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10710, qword_B25BC0);
  __chkstk_darwin();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v39 - v10;
  v12 = type metadata accessor for Signpost(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  sub_15F84(v2 + v16, v11, &qword_E10710, qword_B25BC0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_12E1C(v11, &qword_E10710, qword_B25BC0);
  }

  else
  {
    sub_75214C(v11, v15, type metadata accessor for Signpost);
    Signpost.end(dso:)(&dword_0);
    sub_752508(v15, type metadata accessor for Signpost);
    (*(v13 + 56))(v9, 1, 1, v12);
    swift_beginAccess();
    sub_160B4(v9, v2 + v16, &qword_E10710, qword_B25BC0);
    swift_endAccess();
  }

  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  sub_15F84(v2 + v17, v5, &qword_E0FF60, &qword_B1BCA0);
  v19 = v42;
  v18 = v43;
  if ((*(v42 + 48))(v5, 1, v43) != 1)
  {
    (*(v19 + 32))(v41, v5, v18);
    sub_AB3340();
    v25 = v24;
    if (qword_E0CF70 != -1)
    {
      swift_once();
    }

    v26 = sub_AB4BC0();
    __swift_project_value_buffer(v26, static Logger.groupActivities);
    v27 = sub_AB4BA0();
    v28 = sub_AB9F50();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v25;
      _os_log_impl(&dword_0, v27, v28, "endMeasuringInitiationTime: %f", v29, 0xCu);
    }

    if (v25 <= 10.0)
    {
      goto LABEL_19;
    }

    v30 = objc_opt_self();
    v31 = sub_74C9B0();
    v32 = sub_AB9260();
    v33 = sub_AB9260();
    v34 = sub_AB9260();
    if (*&v25 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        v44 = v25;
        v40 = v34;
        v35 = v31;
        sub_ABB330();
        v36 = sub_AB9260();

        v37 = v40;
        [v30 snapshotWithDomain:v35 type:v32 subType:v33 context:v40 triggerThresholdValues:v36 events:0 completion:0];

LABEL_19:
        (*(v19 + 8))(v41, v18);
        v38 = v39;
        (*(v19 + 56))(v39, 1, 1, v18);
        swift_beginAccess();
        sub_160B4(v38, v2 + v17, &qword_E0FF60, &qword_B1BCA0);
        swift_endAccess();
        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_12E1C(v5, &qword_E0FF60, &qword_B1BCA0);
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v20 = sub_AB4BC0();
  __swift_project_value_buffer(v20, static Logger.groupActivities);
  v21 = sub_AB4BA0();
  v22 = sub_AB9F30();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "Attempting to endMeasuringInitiationTime but there was no begin time.", v23, 2u);
  }
}

double sub_74BA10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_7401C8();
  }

  return result;
}

uint64_t GroupActivitiesManager.__allocating_init(coordinator:)(void *a1)
{
  v2 = swift_allocObject();
  GroupActivitiesManager.init(coordinator:)(a1);
  return v2;
}

uint64_t GroupActivitiesManager.init(coordinator:)(void *a1)
{
  v2 = v1;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v36 = &v32 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E155B0, &qword_B25AE0);
  v4 = *(v33 - 8);
  __chkstk_darwin();
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151E8, &qword_B25608);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v32 - v13;
  v34 = xmmword_AF82C0;
  *(v1 + 56) = xmmword_AF82C0;
  *(v1 + 96) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  *&v37 = 0;
  sub_AB54D0();
  (*(v12 + 32))(v2 + v15, v14, v11);
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  LOBYTE(v37) = 0;
  sub_AB54D0();
  (*(v8 + 32))(v2 + v16, v10, v7);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E155A0, &qword_B25A90);
  sub_AB54D0();
  (*(v4 + 32))(v2 + v17, v6, v33);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount) = 0;
  v18 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionStateObserver;
  sub_AB3C70();
  *(v2 + v18) = sub_AB3C60();
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions) = &_swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress) = 0;
  v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  v20 = type metadata accessor for GroupActivitiesManager.Activity(0);
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = 0;
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  v22 = type metadata accessor for Signpost(0);
  (*(*(v22 - 8) + 56))(v2 + v21, 1, 1, v22);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain) = 0;
  v23 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  v24 = sub_AB3430();
  (*(*(v24 - 8) + 56))(v2 + v23, 1, 1, v24);
  v25 = v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  *v25 = v34;
  *(v25 + 16) = 0;
  v26 = v35;
  sub_E8BA0(v35, v2 + 16);
  type metadata accessor for GroupActivitiesManager.State(0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  *(v2 + 88) = v27;
  v28 = sub_AB9990();
  v29 = v36;
  (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v2;

  sub_5E89D8(0, 0, v29, &unk_B25BB0, v30);

  __swift_destroy_boxed_opaque_existential_0(v26);
  return v2;
}

uint64_t sub_74C000()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17BD0;

  return sub_74C090();
}

uint64_t sub_74C090()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15DA0, &qword_B260A0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15DA8, &qword_B260A8);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = sub_AB9940();
  v1[13] = sub_AB9930();
  v5 = sub_AB98B0();
  v1[14] = v5;
  v1[15] = v4;

  return _swift_task_switch(sub_74C1FC, v5, v4);
}

uint64_t sub_74C1FC()
{
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  v0[16] = __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "🚦 Initiating group session observer", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_752B88(&qword_E154F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  sub_AB3E60();
  sub_AB3DF0();
  (*(v6 + 8))(v5, v7);
  v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v0[17] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
  v0[18] = v8;
  v0[19] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v0[20] = sub_AB9930();
  v9 = sub_36A00(&qword_E15DB0, &qword_E15DA8, &qword_B260A8, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_74C44C;
  v11 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v11, v9);
}

uint64_t sub_74C44C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_AB98B0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_74C924;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_AB98B0();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_74C5E4;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_74C5E4()
{

  v0[23] = v0[2];
  v1 = v0[14];
  v2 = v0[15];

  return _swift_task_switch(sub_74C650, v1, v2);
}

uint64_t sub_74C650()
{
  v16 = v0;
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[5];
    if (*(v2 + v0[17]) == 1)
    {

      v3 = sub_AB4BA0();
      v4 = sub_AB9F50();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v15 = v6;
        *v5 = 136446210;
        v0[4] = v1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15DB8, &qword_B260B0);
        v7 = sub_AB9380();
        v9 = sub_500C84(v7, v8, &v15);

        *(v5 + 4) = v9;
        _os_log_impl(&dword_0, v3, v4, "leaveCommand in progress, setting pendingSession=%{public}s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
      }

      *(v0[5] + v0[19]) = v0[23];
    }

    else
    {
      *(v2 + v0[18]) = v1;
      swift_retain_n();

      sub_7480BC();
    }

    v0[20] = sub_AB9930();
    v12 = sub_36A00(&qword_E15DB0, &qword_E15DA8, &qword_B260A8, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_74C44C;
    v14 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v14, v12);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_74C924()
{
  *(v0 + 24) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id sub_74C9B0()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  }

  else
  {
    v4 = sub_AB9260();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_74CA20(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a1[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  if (a2[17])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_7527DC(v2 | *a1, *(a1 + 1), v3 | a1[16], v4 | *a2, *(a2 + 1), v5 | a2[16]);
}

uint64_t sub_74CA84(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v1[3] = swift_task_alloc();
  v2 = sub_AB31C0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_AB9940();
  v1[7] = sub_AB9930();
  v4 = sub_AB98B0();

  return _swift_task_switch(sub_74CBB0, v4, v3);
}

uint64_t sub_74CBB0()
{

  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);
    sub_AB3180();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_12E1C(*(v0 + 24), &qword_E0DC30, &unk_B15160);
    }

    else
    {
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      v7 = *(v0 + 32);
      (*(v6 + 32))(v5, *(v0 + 24), v7);
      sub_AB30F0(v8);
      v10 = v9;
      sub_52995C(_swiftEmptyArrayStorage);
      isa = sub_AB8FD0().super.isa;

      [v1 openSensitiveURL:v10 withOptions:isa];

      (*(v6 + 8))(v5, v7);
    }
  }

  **(v0 + 16) = v1 == 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_74CD78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17CF8;

  return sub_74CE08();
}

uint64_t sub_74CE08()
{
  v1[25] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F510, &qword_B19DB8);
  v1[27] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15EA0, &qword_B21460);
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E40, &qword_B22908);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = sub_AB4B00();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v1[40] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E154E8, &qword_B25950);
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = sub_AB9940();
  v1[46] = sub_AB9930();
  v7 = sub_AB98B0();
  v1[47] = v7;
  v1[48] = v6;

  return _swift_task_switch(sub_74D0FC, v7, v6);
}

id sub_74D0FC()
{
  v70 = v0;
  v1 = *(v0 + 200);
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  *(v0 + 392) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v3 = *(v1 + v2);
  *(v0 + 400) = v3;
  if (!v3)
  {
    goto LABEL_24;
  }

  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);

  sub_AB3DD0();
  *(v0 + 568) = enum case for GroupSession.State.waiting<A>(_:);
  v8 = *(v7 + 104);
  *(v0 + 408) = v8;
  *(v0 + 416) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v5);
  *(v0 + 424) = sub_752B88(&qword_E154F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v9 = sub_AB3DB0();
  v10 = *(v7 + 8);
  *(v0 + 432) = v10;
  *(v0 + 440) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  v10(v4, v6);
  if (v9)
  {
    if (qword_E0CF70 != -1)
    {
      swift_once();
    }

    v11 = sub_AB4BC0();
    *(v0 + 448) = __swift_project_value_buffer(v11, static Logger.groupActivities);
    v12 = sub_AB4BA0();
    v13 = sub_AB9F50();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Attempting to join", v14, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510((v0 + 572));

    v15 = *(v0 + 572);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 573) = 1;

    sub_AB5520();
    sub_73FEE8(v15);
    if (*(v1 + v2))
    {
      v16 = *(v0 + 320);

      sub_AB3E00();

      v17 = *(v16 + 48);
      if (v17)
      {
        v18 = *(v0 + 320);
        v19 = *(v17 + 16);
        *(v0 + 456) = v19;
        v20 = v19;
        sub_752508(v18, type metadata accessor for GroupActivitiesManager.Activity);
        v21 = objc_allocWithZone(ICLiveLinkIdentity);
        v22 = swift_allocObject();
        *(v22 + 16) = sub_755338;
        *(v22 + 24) = v3;
        *(v0 + 48) = sub_3F328C;
        *(v0 + 56) = v22;
        *(v0 + 16) = _NSConcreteStackBlock;
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_41A314;
        *(v0 + 40) = &block_descriptor_191;
        v23 = _Block_copy((v0 + 16));

        v24 = [v21 initWithBlock:v23];
        *(v0 + 464) = v24;
        _Block_release(v23);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_42:
          swift_once();
LABEL_36:
          v49 = sub_AB4B40();
          *(v0 + 480) = __swift_project_value_buffer(v49, static OSSignposter.sharePlay);
          sub_AB4AF0();
          v50 = sub_AB4B20();
          v51 = sub_ABA230();
          if (sub_ABA970())
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            v53 = sub_AB4AE0();
            _os_signpost_emit_with_name_impl(&dword_0, v50, v51, v53, "AddIntent", "", v52, 2u);
          }

          v54 = *(v0 + 296);
          v55 = *(v0 + 304);
          v56 = *(v0 + 272);
          v57 = *(v0 + 280);
          v58 = *(v0 + 200);

          v59 = *(v57 + 16);
          *(v0 + 488) = v59;
          *(v0 + 496) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v59(v54, v55, v56);
          *(v0 + 504) = sub_AB4B80();
          swift_allocObject();
          *(v0 + 512) = sub_AB4B70();
          v60 = *(v57 + 8);
          *(v0 + 520) = v60;
          *(v0 + 528) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v60(v55, v56);
          swift_beginAccess();
          v61 = v58[5];
          v62 = v58[6];
          __swift_project_boxed_opaque_existential_1(v58 + 2, v61);
          v63 = *(v61 - 8);
          v64 = swift_task_alloc();
          *(v0 + 536) = v64;
          (*(v63 + 16))();
          v65 = (*(v62 + 48))(v61, v62);
          *(v0 + 544) = v65;
          (*(v63 + 8))(v64, v61);
          *(v0 + 176) = v58;

          v66 = sub_AB9380();
          *(v0 + 88) = &type metadata for Player.CommandIssuerIdentity;
          *(v0 + 96) = &protocol witness table for Player.CommandIssuerIdentity;
          *(v0 + 64) = v66;
          *(v0 + 72) = v67;
          v68 = swift_task_alloc();
          *(v0 + 552) = v68;
          *v68 = v0;
          v68[1] = sub_74DD0C;

          return static SharedListening.addIntent(_:playbackController:issuer:)(isEscapingClosureAtFileLocation, v65, v0 + 64);
        }

        v26 = [objc_opt_self() sharedSessionIntentWithProperties:v20 identity:v24];
        *(v0 + 472) = v26;
        if (v26)
        {
          isEscapingClosureAtFileLocation = v26;
          if (sub_AB3D80() & 1) != 0 && (sub_AB3D50())
          {
            v27 = 20;
          }

          else
          {
            v27 = 10;
          }

          [isEscapingClosureAtFileLocation setActionAfterQueueLoad:v27];

          v36 = sub_AB4BA0();
          v37 = sub_AB9F50();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v69 = v39;
            *v38 = 67240706;
            *(v38 + 4) = sub_AB3D80() & 1;
            *(v38 + 8) = 1026;
            *(v38 + 10) = sub_AB3D50() & 1;

            *(v38 + 14) = 2082;
            result = MPNSStringFromQueueLoadAction();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v40 = result;
            v41 = sub_AB92A0();
            v43 = v42;

            v44 = sub_500C84(v41, v43, &v69);

            *(v38 + 16) = v44;
            _os_log_impl(&dword_0, v36, v37, "Will join session isLocallyInitiated=%{BOOL,public}d\n/ isFirstJoin=%{BOOL,public}d.\n-> actionAfterQueueLoad=%{public}s", v38, 0x18u);
            __swift_destroy_boxed_opaque_existential_0(v39);
          }

          else
          {
          }

          if (qword_E0D5A8 == -1)
          {
            goto LABEL_36;
          }

          goto LABEL_42;
        }

        v45 = sub_AB4BA0();
        v46 = sub_AB9F50();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_0, v45, v46, "Failed to retrieve shared playback intent", v47, 2u);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510((v0 + 576));

        v48 = *(v0 + 576);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 577) = 0;

        sub_AB5520();
        v33 = v48;
        goto LABEL_23;
      }

      v28 = *(v0 + 320);

      sub_752508(v28, type metadata accessor for GroupActivitiesManager.Activity);
    }

    else
    {
    }

    if (qword_E0CF90 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, static Logger.sharedListening);
    v29 = sub_AB4BA0();
    v30 = sub_AB9F30();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "Session properties missing in activity", v31, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510((v0 + 574));

    v32 = *(v0 + 574);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 575) = 0;

    sub_AB5520();
    v33 = v32;
LABEL_23:
    sub_73FEE8(v33);
    goto LABEL_24;
  }

LABEL_24:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_74DD0C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = sub_74E82C;
  }

  else
  {
    sub_12E1C(v2 + 64, &qword_E0EA98, &unk_B239F0);

    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = sub_74DE64;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_74DE64()
{
  v73 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 392);
  v3 = *(v0 + 200);

  sub_74FBFC(v1);

  v4 = *(v3 + v2);
  if (!v4)
  {
    v45 = 0;
LABEL_14:
    v48 = *(v0 + 464);
    v49 = *(v0 + 472);
    v50 = *(v0 + 456);
    v51 = *(v0 + 200);
    v52 = *(v0 + 208);
    sub_752E04();
    v53 = swift_allocError();
    *v54 = v45;
    *(v54 + 8) = 1;

    sub_743278(v53, 0);

    v55 = sub_AB9990();
    (*(*(v55 - 8) + 56))(v52, 1, 1, v55);

    v56 = sub_AB9930();
    v57 = swift_allocObject();
    v57[2] = v56;
    v57[3] = &protocol witness table for MainActor;
    v57[4] = v51;
    sub_5E89D8(0, 0, v52, &unk_B261D0, v57);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510((v0 + 580));

    LOBYTE(v52) = *(v0 + 580);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 581) = 0;

    sub_AB5520();
    v58 = v52;
    goto LABEL_18;
  }

  v5 = *(v0 + 432);
  v67 = *(v0 + 408);
  v6 = *(v0 + 568);
  v8 = *(v0 + 344);
  v7 = *(v0 + 352);
  v9 = *(v0 + 328);

  sub_AB3DD0();
  v67(v8, v6, v9);
  v10 = sub_AB3DB0();
  v5(v8, v9);
  v5(v7, v9);
  if ((v10 & 1) == 0)
  {
    v46 = *(v0 + 392);
    v47 = *(v0 + 200);

    v45 = *(v47 + v46);
    goto LABEL_14;
  }

  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v72 = v14;
    *v13 = 136446210;
    *(v0 + 192) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15DB8, &qword_B260B0);
    sub_36A00(&qword_E15F18, &qword_E15DB8, &qword_B260B0, &protocol conformance descriptor for GroupSession<A>);
    v15 = sub_ABB330();
    v17 = sub_500C84(v15, v16, &v72);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v11, v12, "🤝 Joining shared session=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  sub_AB4AF0();
  v18 = sub_AB4B20();
  v19 = sub_ABA230();
  if (sub_ABA970())
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_AB4AE0();
    _os_signpost_emit_with_name_impl(&dword_0, v18, v19, v21, "JoinSession", "", v20, 2u);
  }

  v22 = *(v0 + 520);
  v23 = *(v0 + 488);
  v70 = *(v0 + 392);
  v25 = *(v0 + 288);
  v24 = *(v0 + 296);
  v26 = *(v0 + 272);
  v27 = *(v0 + 200);

  v23(v24, v25, v26);
  swift_allocObject();
  v28 = sub_AB4B70();
  v22(v25, v26);
  *(v27 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = v28;

  if (*(v27 + v70))
  {

    sub_AB3DA0();
  }

  v29 = *(v0 + 200);
  v30 = v29[5];
  v31 = v29[6];
  v32 = __swift_project_boxed_opaque_existential_1(v29 + 2, v30);
  v33 = *(v30 - 8);
  v34 = swift_task_alloc();
  (*(v33 + 16))(v34, v32, v30);
  v35 = (*(v31 + 48))(v30, v31);
  (*(v33 + 8))(v34, v30);
  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v35[v36])
  {

LABEL_16:
    v59 = *(v0 + 464);
    v60 = *(v0 + 472);
    v61 = *(v0 + 456);

    v44 = 0;
    goto LABEL_17;
  }

  v68 = *(v0 + 472);
  v69 = *(v0 + 464);
  v71 = *(v0 + 456);
  v37 = *(v0 + 264);
  v38 = *(v0 + 240);
  v65 = *(v0 + 248);
  v66 = *(v0 + 256);
  v40 = *(v0 + 224);
  v39 = *(v0 + 232);
  v41 = *(v0 + 216);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090, &qword_B21AB0);
  sub_AB54E0();
  swift_endAccess();

  sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
  v42 = sub_ABA150();
  *(v0 + 184) = v42;
  v43 = sub_ABA130();
  (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
  sub_36A00(&qword_E13570, &unk_E15EA0, &qword_B21460, &protocol conformance descriptor for Published<A>.Publisher);
  sub_6FB3BC();
  sub_AB5590();
  sub_12E1C(v41, &qword_E0F510, &qword_B19DB8);

  (*(v39 + 8))(v38, v40);

  swift_allocObject();
  swift_weakInit();
  sub_36A00(&qword_E13E50, &qword_E13E40, &qword_B22908, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v44 = sub_AB55C0();

  (*(v66 + 8))(v37, v65);
LABEL_17:
  *(*(v0 + 200) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = v44;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((v0 + 582));

  v62 = *(v0 + 582);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 583) = 0;

  sub_AB5520();
  v58 = v62;
LABEL_18:
  sub_73FEE8(v58);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_74E82C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 512);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);

  sub_12E1C(v0 + 64, &qword_E0EA98, &unk_B239F0);

  sub_74FBFC(v2);

  sub_743278(v1, 0);
  v8 = sub_AB9990();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  v9 = sub_AB9930();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v6;
  sub_5E89D8(0, 0, v7, &unk_B261C0, v10);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((v0 + 578));

  LOBYTE(v1) = *(v0 + 578);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 579) = 0;

  sub_AB5520();
  sub_73FEE8(v1);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_74EAD0(int a1)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_AB3470();
  v3 = *(v35 - 8);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v6 = sub_AB9250();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF4EC0;
  sub_AB91E0();
  (*(v7 + 16))(v9, v11, v6);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v13 = qword_E71B20;
  sub_AB3550();
  v14 = sub_AB9320();
  v16 = v15;
  (*(v7 + 8))(v11, v6);

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v17 = sub_AB3440();
  v19 = v18;
  (*(v3 + 8))(v5, v35);
  *(v12 + 32) = v17;
  *(v12 + 40) = v19;
  *(v12 + 48) = v14;
  *(v12 + 56) = v16;
  *(v12 + 64) = 0;
  *(v12 + 72) = &unk_B261F8;
  *(v12 + 80) = v2;
  v20 = v36;
  sub_750990(v36 & 1, &v40);
  v21 = v41;
  if (v41)
  {
    v22 = v40;
    v24 = *(v12 + 16);
    v23 = *(v12 + 24);
    if (v24 >= v23 >> 1)
    {
      v12 = sub_506A20((v23 > 1), v24 + 1, 1, v12);
    }

    *(v12 + 16) = v24 + 1;
    v25 = v12 + 56 * v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
    v26 = v43;
    *(v25 + 48) = v42;
    *(v25 + 64) = v26;
    *(v25 + 80) = v44;
  }

  v27 = sub_750568(v20 & 1);
  v29 = v28;
  v30 = sub_75077C(v20 & 1);
  LOBYTE(v37[0]) = 1;
  v45[0] = v27;
  v45[1] = v29;
  v45[2] = v30;
  v45[3] = v31;
  v46 = 0;
  v47 = 0;
  v48 = 1;
  v49 = v12;
  v50 = 0;
  swift_beginAccess();
  sub_E8BA0(v2 + 16, v37);
  v32 = v38;
  v33 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v33 + 32))(v45, v32, v33);
  sub_111904(v45);
  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_74EF00()
{
  v1 = v0[26];
  swift_beginAccess();
  sub_E8BA0(v1 + 16, (v0 + 18));
  v2 = v0[21];
  v3 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_74F048;

  return v6(v2, v3);
}

uint64_t sub_74F048(char a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_74F148, 0, 0);
}

uint64_t sub_74F148()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_0, v2, v3, "🛂 User did authenticate=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 232);

  if (v6 == 1)
  {
    v7 = [objc_opt_self() defaultIdentityStore];
    *(v0 + 224) = v7;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_74F3B0;
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15F20, &unk_B261E0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_74F490;
    *(v0 + 104) = &block_descriptor_208;
    *(v0 + 112) = v8;
    [v7 synchronizeWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (*(*(v0 + 208) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      sub_AB3DC0();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_74F3B0()
{

  return _swift_task_switch(sub_1924F0, 0, 0);
}

uint64_t sub_74F490(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_74F4E4()
{
  v1 = v0[10];
  swift_beginAccess();
  sub_E8BA0(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_74F62C;

  return v6(v2, v3);
}

uint64_t sub_74F62C(char a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_74F72C, 0, 0);
}

uint64_t sub_74F72C()
{
  v1 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v1 != 2 && (*(v0 + 96) & 1) == 0)
  {
    if (*(*(v0 + 80) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      sub_AB3DC0();
    }

    if (qword_E0CF70 != -1)
    {
      swift_once();
    }

    v2 = sub_AB4BC0();
    __swift_project_value_buffer(v2, static Logger.groupActivities);
    v3 = sub_AB4BA0();
    v4 = sub_AB9F50();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "🛂 User did not complete the subscription flow", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_74F884(void *a1)
{
  v2 = sub_AB3470();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB3E80();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3D60();
  sub_AB3E70();
  (*(v7 + 8))(v9, v6);
  v10 = sub_AB3440();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v23._countAndFlagsBits = 0x616C506572616853;
  v23._object = 0xEC0000003D444979;
  if (sub_AB9530(v23))
  {
  }

  else
  {
    strcpy(v22, "SharePlayID=");
    BYTE5(v22[1]) = 0;
    HIWORD(v22[1]) = -5120;
    v24._countAndFlagsBits = v10;
    v24._object = v12;
    sub_AB94A0(v24);
  }

  v13 = sub_AB9260();

  [a1 setExternalIdentifier:v13];

  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v14 = sub_AB4BC0();
  __swift_project_value_buffer(v14, static Logger.groupActivities);

  v15 = sub_AB4BA0();
  v16 = sub_AB9F50();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136446210;
    v25._countAndFlagsBits = 0x616C506572616853;
    v25._object = 0xEC0000003D444979;
    if (!sub_AB9530(v25))
    {
      strcpy(v22, "SharePlayID=");
      BYTE5(v22[1]) = 0;
      HIWORD(v22[1]) = -5120;
      v26._countAndFlagsBits = v10;
      v26._object = v12;
      sub_AB94A0(v26);

      v10 = v22[0];
      v12 = v22[1];
    }

    v19 = sub_500C84(v10, v12, &v21);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_0, v15, v16, "externalID identity=%{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
  }
}

uint64_t sub_74FBFC(uint64_t a1)
{
  v1 = sub_AB4B50();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB4B00();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0D5A8 != -1)
  {
    swift_once();
  }

  v9 = sub_AB4B40();
  __swift_project_value_buffer(v9, static OSSignposter.sharePlay);
  v10 = sub_AB4B20();
  sub_AB4B60();
  v11 = sub_ABA220();
  if (sub_ABA970())
  {

    sub_AB4B90();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_AB4AE0();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v11, v14, "AddIntent", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_74FE88()
{
  v0[2] = sub_AB9940();
  v0[3] = sub_AB9930();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_74FF38;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

uint64_t sub_74FF38()
{

  v1 = sub_AB98B0();

  return _swift_task_switch(sub_6D433C, v1, v0);
}

uint64_t sub_750074()
{
  v0[2] = sub_AB9940();
  v0[3] = sub_AB9930();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_750124;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

uint64_t sub_750124()
{

  v1 = sub_AB98B0();

  return _swift_task_switch(sub_755E2C, v1, v0);
}

void sub_750260(id *a1, uint64_t a2)
{
  if (!*a1)
  {
    return;
  }

  v15 = *a1;
  if (![v15 isSharedListeningSession])
  {
    goto LABEL_6;
  }

  v2 = [v15 tracklist];
  v14 = [v2 playingItem];

  if (!v14)
  {
    goto LABEL_6;
  }

  if ([v14 isPlaceholder])
  {

LABEL_6:
    v3 = v15;
LABEL_7:

    return;
  }

  v4 = [v14 metadataObject];
  if (!v4)
  {
LABEL_17:

    v3 = v14;
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 innermostModelObject];

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    goto LABEL_17;
  }

  v8 = v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = sub_748024(v16);
    v11 = v10;
    v12 = type metadata accessor for GroupActivitiesManager.Activity(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      type metadata accessor for CodableModelObjectIdentity();
      v13 = swift_allocObject();
      *(v13 + 16) = v8;
      *(v11 + 56) = v13;
      v6 = v6;
    }

    v9(v16, 0);
  }

  else
  {
  }
}

uint64_t sub_7504BC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) != 0;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_54A180;

  return GroupActivitiesManager.leave(performLeaveCommand:)(v1);
}

uint64_t sub_750568(char a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_AB91E0();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v7 = qword_E71B20;
  sub_AB3550();
  v8 = sub_AB9320();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t sub_75077C(char a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_AB91E0();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v7 = qword_E71B20;
  sub_AB3550();
  v8 = sub_AB9320();
  (*(v2 + 8))(v6, v1);
  return v8;
}

void sub_750990(int a1@<W0>, uint64_t *a2@<X8>)
{
  v24 = a1;
  v3 = sub_AB3470();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin();
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v21 - v9;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v24)
  {
    sub_AB91E0();
    (*(v6 + 16))(v8, v10, v5);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v17 = qword_E71B20;
    sub_AB3550();
    v13 = sub_AB9320();
    v14 = v18;
    (*(v6 + 8))(v10, v5);
    v19 = v21;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v11 = sub_AB3440();
    v12 = v20;
    (*(v22 + 8))(v19, v23);
    v16 = &unk_B26200;
    v15 = 2;
  }

  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;
  a2[6] = 0;
}

uint64_t sub_750C84()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    LSApplicationWorkspace.openMusicSettings()();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_750D0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17CF8;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

char *GroupActivitiesManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_752568(*(v0 + 7), *(v0 + 8), *(v0 + 9), *(v0 + 10));

  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151E8, &qword_B25608);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E155B0, &qword_B25AE0);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);

  sub_12E1C(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity], &qword_E15628, &qword_B25BB8);

  sub_12E1C(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame], &qword_E10710, qword_B25BC0);

  sub_12E1C(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate], &qword_E0FF60, &qword_B1BCA0);
  sub_75324C(*&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext], *&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8]);
  return v0;
}

uint64_t GroupActivitiesManager.__deallocating_deinit()
{
  GroupActivitiesManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_751000()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.groupActivities);
  __swift_project_value_buffer(v0, static Logger.groupActivities);
  sub_13C80(0, &qword_E15F40, OS_os_log_ptr);
  sub_ABA9A0();
  return sub_AB4BD0();
}

uint64_t static Logger.groupActivities.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.groupActivities);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_751150()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_751188(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_ABB3C0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_75126C(uint64_t a1)
{
  v2 = sub_7540F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7512A8(uint64_t a1)
{
  v2 = sub_7540F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7512E4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15D40, &qword_B26070);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_7540F4();
  sub_ABB680();
  if (v2)
  {
    type metadata accessor for CodableListeningProperties();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_ABB1A0();
    v13 = 1;
    v12[1] = sub_ABB1A0();
    v9 = sub_AB9260();

    v10 = sub_AB9260();

    v11 = [objc_opt_self() propertiesWithSessionIdentifier:v9 sessionKey:v10];

    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v11;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

void sub_751534(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15D90, &qword_B26088);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_7540F4();
  sub_ABB690();
  v9 = *(v3 + 16);
  v10 = [v9 sessionIdentifier];
  sub_AB92A0();

  v12[15] = 0;
  sub_ABB240();
  if (!v2)
  {

    v11 = [v9 sessionKey];
    sub_AB92A0();

    v12[14] = 1;
    sub_ABB240();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_751790()
{
  if (*v0)
  {
    return 0x616C436C65646F6DLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_7517E0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_ABB3C0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x616C436C65646F6DLL && a2 == 0xEE00656D614E7373)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_7518C8(uint64_t a1)
{
  v2 = sub_754148();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_751904(uint64_t a1)
{
  v2 = sub_754148();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_751940(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15D50, &qword_B26078);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_754148();
  sub_ABB680();
  if (!v2)
  {
    v34 = 0;
    sub_75419C();
    sub_ABB1E0();
    v10 = aBlock;
    v9 = v29;
    sub_13C80(0, &unk_E15D68, NSKeyedUnarchiver_ptr);
    sub_13C80(0, &unk_E110D0, MPIdentifierSet_ptr);
    v11 = sub_ABA0D0();
    if (v11)
    {
      v27 = v11;
      LOBYTE(aBlock) = 1;
      sub_ABB1A0();
      v26 = sub_AB9260();

      v14 = v26;
      v25 = NSClassFromString(v26);

      if (v25)
      {
        swift_getObjCClassMetadata();
        sub_13C80(0, &qword_E10390, MPModelObject_ptr);
        v15 = swift_dynamicCastMetatype();
        if (v15)
        {
          if (qword_E0CF80 != -1)
          {
            v23 = v15;
            swift_once();
            v15 = v23;
          }

          v16 = *(off_E15F80[0] + &dword_10);
          v17 = off_E15F80[0] + 8;
          while (v16)
          {
            v18 = *v17;
            v17 += 2;
            --v16;
            if (v18 == v15)
            {
              v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v32 = UIScreen.Dimensions.size.getter;
              v33 = 0;
              aBlock = _NSConcreteStackBlock;
              v29 = 1107296256;
              v30 = sub_41A314;
              v31 = &block_descriptor_128_0;
              v26 = _Block_copy(&aBlock);
              v20 = v19;
              v21 = v27;
              v25 = [v20 initWithIdentifiers:v27 block:v26];
              sub_466B8(v10, v9);

              _Block_release(v26);
              (*(v6 + 8))(v8, v5);

              result = swift_isEscapingClosureAtFileLocation();
              if ((result & 1) == 0)
              {
                *(v3 + 16) = v25;
                goto LABEL_6;
              }

              __break(1u);
              return result;
            }
          }
        }
      }

      sub_7541F0();
      swift_allocError();
      *v22 = 1;
      swift_willThrow();
      sub_466B8(v10, v9);
    }

    else
    {
      sub_7541F0();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
      sub_466B8(v10, v9);
    }

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for CodableModelObjectIdentity();
  swift_deallocPartialClassInstance();
LABEL_6:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_751DBC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15D80, &qword_B26080);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_754148();
  sub_ABB690();
  v9 = objc_opt_self();
  v10 = [*(v3 + 16) identifiers];
  v21[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v21];

  v12 = v21[0];
  if (v11)
  {
    v13 = sub_AB3260();
    v15 = v14;

    v21[0] = v13;
    v21[1] = v15;
    v20[7] = 0;
    sub_75425C();
    sub_ABB280();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = NSStringFromClass(ObjCClassFromMetadata);
      sub_AB92A0();

      LOBYTE(v21[0]) = 1;
      sub_ABB240();
      (*(v6 + 8))(v8, v5);
    }

    return sub_466B8(v13, v15);
  }

  else
  {
    v16 = v12;
    sub_AB3050();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_7520BC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_75214C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_7521B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_75221C()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v2));
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = sub_AB31C0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_752404(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17CF8;

  return sub_745504(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_752508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_752568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_752660()
{

  sub_7526B4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

void sub_7526B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    if (!a7)
    {
      goto LABEL_13;
    }

    if (a7 != 1)
    {
      return;
    }

LABEL_12:

    return;
  }

  if (a7 == 2)
  {

    goto LABEL_12;
  }

  if (a7 != 3)
  {
    if (a7 == 4)
    {

      sub_752568(a1, a2, a3, a4);
    }

    return;
  }

LABEL_13:
}

double sub_752794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_7527DC(__int16 a1, void *a2, int a3, __int16 a4, void *a5, int a6)
{
  result = 0;
  v8 = a1 ^ a4;
  if (v8 & 0x100) != 0 || (v8)
  {
    return result;
  }

  if (!a2)
  {
    result = 0;
    if (a5 || ((a3 ^ a6) & 1) != 0)
    {
      return result;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a3;
  v10 = a6;
  sub_13C80(0, &qword_E103B8, ICMusicSubscriptionStatus_ptr);
  v13 = a5;
  v14 = a2;
  v15 = sub_ABA790();

  result = 0;
  if (v15)
  {
    LOWORD(a6) = v10;
    LOWORD(a3) = v9;
    if (((v9 ^ v10) & 1) == 0)
    {
      return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
    }
  }

  return result;
}

id _s9MusicCore22GroupActivitiesManagerC8ActivityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  v5 = *(v2 + 16);
  v6 = v4;
  v7 = [v5 identifiers];
  v8 = [v6 identifiers];
  v9 = [v7 intersectsSet:v8];

  return v9;
}

uint64_t sub_75297C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15DE0, &qword_B26100);
    v3 = sub_ABAD50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_ABB5C0();
      NSDirectionalEdgeInsets.Edge.hash(into:)(v18, v10);
      result = sub_ABB610();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          result = static NSDirectionalEdgeInsets.Edge.__derived_enum_equals(_:_:)(*(*(v3 + 48) + v13), v10);
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_752B10()
{
  result = qword_E15520;
  if (!qword_E15520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15520);
  }

  return result;
}

uint64_t sub_752B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_752BF4()
{
  result = qword_E15548;
  if (!qword_E15548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E15540, &qword_B25990);
    sub_752B88(&qword_E15550, type metadata accessor for CodableListeningProperties, &unk_B25FA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15548);
  }

  return result;
}

unint64_t sub_752CA8()
{
  result = qword_E15560;
  if (!qword_E15560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E15558, &qword_B25998);
    sub_752B88(&qword_E15568, type metadata accessor for CodableModelObjectIdentity, &unk_B25F7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15560);
  }

  return result;
}

unint64_t sub_752E04()
{
  result = qword_E155D8;
  if (!qword_E155D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E155D8);
  }

  return result;
}

uint64_t sub_752E60()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {

    v5 = *(v4 + 28);
    v6 = sub_AB31C0();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_753000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_753070(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_7428A8(a1, v6, v1 + v5, v7);
}

uint64_t sub_753198()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17CF8;

  return sub_74C000();
}

void sub_75324C(uint64_t a1, char *a2)
{
  if (a2 != &dword_0 + 1)
  {
  }
}

void sub_7533B0(uint64_t a1)
{
  sub_736DD0(319, &qword_E152B8, &type metadata for Int, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_736DD0(319, &qword_E12BD0, &type metadata for Bool, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_431D08(319, &qword_E15678, &qword_E155A0, &qword_B25A90, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_75369C(319, &unk_E15680, type metadata accessor for GroupActivitiesManager.Activity);
        if (v4 <= 0x3F)
        {
          sub_75369C(319, &qword_E10790, type metadata accessor for Signpost);
          if (v5 <= 0x3F)
          {
            sub_75369C(319, &unk_E15690, &type metadata accessor for Date);
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

void sub_75369C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_753704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_7537E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_753890(uint64_t a1)
{
  sub_431D08(319, &qword_E15810, &qword_E15818, &qword_B25DA0, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_7539DC(319);
    if (v2 <= 0x3F)
    {
      sub_75369C(319, &qword_E15830, type metadata accessor for CodableListeningProperties);
      if (v3 <= 0x3F)
      {
        sub_75369C(319, &qword_E15838, type metadata accessor for CodableModelObjectIdentity);
        if (v4 <= 0x3F)
        {
          sub_75369C(319, &unk_E15840, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_7539DC(uint64_t a1)
{
  if (!qword_E15820)
  {
    sub_13C80(255, &qword_E12D18, MPCPlaybackIntent_ptr);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E15820);
    }
  }
}

uint64_t sub_753A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_753B34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_753BE4(uint64_t a1)
{
  sub_736DD0(319, &qword_E15330, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_75369C(319, qword_E158F0, type metadata accessor for CGImage);
    if (v2 <= 0x3F)
    {
      sub_75369C(319, &qword_E0FDC8, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        _s3__C6CGSizeVMa_2(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_753CFC(uint64_t a1, __n128 a2)
{
  result = sub_AB39D0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_753DAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_753E08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_753E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_753F10(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_753F94(uint64_t a1)
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_753FF0()
{
  result = qword_E15D28;
  if (!qword_E15D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15D28);
  }

  return result;
}

unint64_t sub_754048()
{
  result = qword_E15D30;
  if (!qword_E15D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15D30);
  }

  return result;
}

unint64_t sub_7540A0()
{
  result = qword_E15D38;
  if (!qword_E15D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15D38);
  }

  return result;
}

unint64_t sub_7540F4()
{
  result = qword_E15D48;
  if (!qword_E15D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15D48);
  }

  return result;
}

unint64_t sub_754148()
{
  result = qword_E15D58;
  if (!qword_E15D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15D58);
  }

  return result;
}

unint64_t sub_75419C()
{
  result = qword_E15D60;
  if (!qword_E15D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15D60);
  }

  return result;
}

unint64_t sub_7541F0()
{
  result = qword_E15D78;
  if (!qword_E15D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15D78);
  }

  return result;
}

double block_copy_helper_126_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_75425C()
{
  result = qword_E15D88;
  if (!qword_E15D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15D88);
  }

  return result;
}

unint64_t sub_7542CC()
{
  result = qword_E15DC0;
  if (!qword_E15DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15DC0);
  }

  return result;
}

void sub_754320(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return;
    }

LABEL_7:

    return;
  }

  if (a2 == 2)
  {

    return;
  }

  if (a2 == 3)
  {
    goto LABEL_7;
  }
}

uint64_t sub_754358()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v17 = *(v1 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15DD0, &qword_B260D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  v8 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {

    v16 = v6;
    v9 = *(v8 + 28);
    v10 = sub_AB31C0();
    v11 = *(v10 - 8);
    v15 = v9;
    v12 = v7 + v9;
    v6 = v16;
    if (!(*(v11 + 48))(v12, 1, v10))
    {
      (*(v11 + 8))(v7 + v15, v10);
    }
  }

  v13 = (((v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;

  (*(v4 + 8))(v0 + v13, v3);

  return swift_deallocObject();
}

uint64_t sub_7545BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15DD0, &qword_B260D0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_17CF8;

  return sub_743828(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_754770()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v12 = *(v1 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15DD0, &qword_B260D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;
  v7 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v2, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = sub_AB31C0();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  (*(v4 + 8))(v0 + ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v3);

  return swift_deallocObject();
}

double sub_7549B8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15DD0, &qword_B260D0) - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_744018(a1, v1 + v4, v7, v8);
}

uint64_t sub_754AB4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v12 = *(v1 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15DD0, &qword_B260D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();

  v6 = v0 + v2;
  v7 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v2, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = sub_AB31C0();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  (*(v4 + 8))(v0 + ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_754D04(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15500, &qword_B25970) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15DD0, &qword_B260D0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_17CF8;

  return sub_7442EC(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

double sub_754E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

double sub_754EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_754F30()
{
  result = qword_E15E30;
  if (!qword_E15E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15E30);
  }

  return result;
}

uint64_t sub_754F84()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_754FCC()
{

  return swift_deallocObject();
}

uint64_t sub_755024()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_75505C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_74CA84(a1);
}

uint64_t sub_75510C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_74EEE0(a1, v4, v5, v6);
}

uint64_t sub_7551C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_74F4C4(a1, v4, v5, v6);
}

uint64_t sub_755274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17CF8;

  return sub_74CD78();
}

char *sub_755328(uint64_t a1, char *a2)
{
  if (a2 != &dword_0 + 1)
  {
    return a2;
  }

  return result;
}

uint64_t sub_755350()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17CF8;

  return sub_74FE88();
}

uint64_t sub_755404()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17CF8;

  return sub_750074();
}

uint64_t sub_7554C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17CF8;

  return sub_750D0C();
}

uint64_t sub_755568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_75049C(a1, v4, v5, v6);
}

uint64_t sub_75561C()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v2));
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = sub_AB31C0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

double sub_7557D4(void *a1)
{
  v3 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_747320(a1, v4, v5);
}

uint64_t sub_755848()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v2));
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = sub_AB31C0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_755A10(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17CF8;

  return sub_747504(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_755B48()
{
  result = qword_E15F48;
  if (!qword_E15F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15F48);
  }

  return result;
}

unint64_t sub_755BA0()
{
  result = qword_E15F50;
  if (!qword_E15F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15F50);
  }

  return result;
}

unint64_t sub_755BF8()
{
  result = qword_E15F58;
  if (!qword_E15F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15F58);
  }

  return result;
}

unint64_t sub_755C50()
{
  result = qword_E15F60;
  if (!qword_E15F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15F60);
  }

  return result;
}

unint64_t sub_755CA8()
{
  result = qword_E15F68;
  if (!qword_E15F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15F68);
  }

  return result;
}

unint64_t sub_755D00()
{
  result = qword_E15F70;
  if (!qword_E15F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15F70);
  }

  return result;
}

unint64_t sub_755D58()
{
  result = qword_E15F78;
  if (!qword_E15F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15F78);
  }

  return result;
}

void MPCPlayerCommandDialog.alert(context:completion:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v85 = a4;
  v90 = a2;
  v91 = a3;
  v89 = a1;
  v80 = a6;
  sub_AB35C0();
  __chkstk_darwin();
  v7 = sub_AB9250();
  v8 = *(v7 - 1);
  __chkstk_darwin();
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v80 - v11;
  v84 = sub_AB3470();
  v13 = *(v84 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v83 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v6;
  v16 = [v6 actions];
  sub_13C80(0, &qword_E15F90, MPCPlayerCommandDialogAction_ptr);
  v17 = sub_AB9760();

  if (v17 >> 62)
  {
    v18 = sub_ABB060();
  }

  else
  {
    v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
    v18 = swift_allocObject();
    *(v18 + 1) = xmmword_AF4EC0;
    sub_AB91E0();
    (*(v8 + 16))(v10, v12, v7);
    if (qword_E0CB80 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

  v7 = [v82 actions];
  v19 = sub_AB9760();

  if (v19 >> 62)
  {
    v8 = sub_ABB060();
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_42:

    v18 = _swiftEmptyArrayStorage;
LABEL_43:
    v74 = [v82 localizedTitle];
    if (v74)
    {
      v75 = v74;
      v68 = sub_AB92A0();
      v70 = v76;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v71 = [v82 localizedMessage];
    if (!v71)
    {
      goto LABEL_39;
    }

LABEL_47:
    v77 = v71;
    v72 = sub_AB92A0();
    v73 = v78;

    goto LABEL_48;
  }

  v8 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  if (!v8)
  {
    goto LABEL_42;
  }

LABEL_6:
  if (v8 >= 1)
  {
    v20 = 0;
    v92 = v19 & 0xC000000000000001;
    v93 = MPCPlayerCommandDialogActionTitlePlayOnlyForMe;
    v18 = _swiftEmptyArrayStorage;
    v81 = (v13 + 8);
    v88 = v19;
    v87 = v8;
    while (1)
    {
      if (v92)
      {
        v21 = sub_ABAE20();
      }

      else
      {
        v21 = *(v19 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v21 localizedTitle];
      v24 = sub_AB92A0();
      v26 = v25;

      if (v24 == sub_AB92A0() && v26 == v27)
      {
      }

      else
      {
        v29 = sub_ABB3C0();

        if ((v29 & 1) == 0)
        {
          v95 = v20;
          v30 = [v22 localizedTitle];
          v99 = sub_AB92A0();
          v32 = v31;

          v33 = [v22 type];
          if (v33 == &dword_0 + 2)
          {
            v34 = 1;
          }

          else
          {
            v34 = 2;
          }

          if (v33 == &dword_0 + 1)
          {
            v35 = 0;
          }

          else
          {
            v35 = v34;
          }

          v36 = swift_allocObject();
          v37 = v85;
          v36[2] = v22;
          v36[3] = v37;
          v38 = v86;
          v36[4] = v86;
          v39 = v22;
          sub_307CC(v37, v38);
          v40 = v83;
          _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
          v97 = sub_AB3440();
          v42 = v41;
          (*v81)(v40, v84);

          v43 = v32;

          v44 = v36;

          v96 = &unk_B26518;
          v98 = v35;
          v94 = v35;
          goto LABEL_28;
        }
      }

      sub_75CB68(v89, v90, v91, &v101);
      v42 = v102;
      if (v102)
      {
        v95 = v20;
        v45 = v106;
        v46 = v107;
        v94 = v105;
        v47 = v104;
        v98 = v105;
        v99 = v103;
        v97 = v101;

        v43 = v47;

        v96 = v45;
        v44 = v46;
        sub_307CC(v45, v46);
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_506A20(0, v18[2] + 1, 1, v18);
        }

        v49 = v18[2];
        v48 = v18[3];
        v50 = v22;
        if (v49 >= v48 >> 1)
        {
          v18 = sub_506A20((v48 > 1), v49 + 1, 1, v18);
        }

        v51 = v97;
        v52 = v99;
        v53 = v96;
        sub_75CA5C(v97, v42, v99, v43, v98, v96, v44);

        v18[2] = v49 + 1;
        v54 = &v18[7 * v49];
        v54[4] = v51;
        v54[5] = v42;
        v54[6] = v52;
        v54[7] = v43;
        *(v54 + 64) = v94;
        v54[9] = v53;
        v54[10] = v44;
        v19 = v88;
        v8 = v87;
        v20 = v95;
        goto LABEL_9;
      }

LABEL_9:
      if (v8 == ++v20)
      {

        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_35:
  v55 = qword_E71B20;
  sub_AB3550();
  v56 = sub_AB9320();
  v58 = v57;
  (*(v8 + 8))(v12, v7);
  v59 = swift_allocObject();
  v60 = v85;
  v61 = v86;
  *(v59 + 16) = v85;
  *(v59 + 24) = v61;
  sub_307CC(v60, v61);
  v62 = v83;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v63 = sub_AB3440();
  v65 = v64;
  (*(v13 + 8))(v62, v84);
  v18[4] = v63;
  v18[5] = v65;
  v18[6] = v56;
  v18[7] = v58;
  *(v18 + 64) = 2;
  v18[9] = &unk_B26528;
  v18[10] = v59;
  v66 = [v82 localizedTitle];
  if (v66)
  {
    v67 = v66;
    v68 = sub_AB92A0();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = [v82 localizedMessage];
  if (v71)
  {
    goto LABEL_47;
  }

LABEL_39:
  v72 = 0;
  v73 = 0;
LABEL_48:
  v100 = 1;
  v79 = v80;
  *v80 = v68;
  v79[1] = v70;
  v79[2] = v72;
  v79[3] = v73;
  *(v79 + 32) = 0;
  v79[5] = 0;
  *(v79 + 48) = 1;
  v79[7] = v18;
  v79[8] = 0;
}