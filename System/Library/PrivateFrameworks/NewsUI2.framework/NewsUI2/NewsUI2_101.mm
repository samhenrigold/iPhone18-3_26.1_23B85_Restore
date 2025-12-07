uint64_t sub_219206930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_219BE5134();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2192069F4, 0, 0);
}

uint64_t sub_2192069F4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = (v0[3] + OBJC_IVAR____TtC7NewsUI234LiveActivityWebEmbedMessageHandler_liveActivityManager);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277D34800], v3);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_219206AF8;
  v8 = v0[7];
  v9 = v0[4];

  return MEMORY[0x282193EC0](v9, v8, v5, v6);
}

uint64_t sub_219206AF8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {
  }

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_219207A38, 0, 0);
}

uint64_t sub_219206C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_219BE5134();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219206D54, 0, 0);
}

uint64_t sub_219206D54()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = (v0[3] + OBJC_IVAR____TtC7NewsUI234LiveActivityWebEmbedMessageHandler_liveActivityManager);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277D34800], v3);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_219206E58;
  v8 = v0[7];
  v9 = v0[4];

  return MEMORY[0x282193EB0](v9, v8, v5, v6);
}

uint64_t sub_219206E58()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_219207A38;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_219206FF0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_219206FF0()
{
  **(v0 + 16) = *(v0 + 72) != 0;

  v1 = *(v0 + 8);

  return v1();
}

void sub_219207160(void *a1)
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE51D4();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v52 - v11;
  v13 = [a1 name];
  sub_219BF5414();

  v14 = sub_219BF7614();

  if (v14)
  {
    if (v14 != 1)
    {
      goto LABEL_16;
    }

    v58 = 1;
  }

  else
  {
    v58 = 0;
  }

  v15 = [a1 body];
  v16 = sub_219BF5214();

  v17 = sub_2187A1A2C(v16);

  if (v17)
  {
    if (*(v17 + 16) && (v57 = v1, v18 = sub_21870F700(25705, 0xE200000000000000), (v19 & 1) != 0))
    {
      sub_2186D1230(*(v17 + 56) + 32 * v18, v62);

      if (swift_dynamicCast())
      {
        v20 = v60;
        v56 = v61;
        if (qword_27CC08640 != -1)
        {
          swift_once();
        }

        v21 = sub_219BE5434();
        __swift_project_value_buffer(v21, qword_27CCD8BD0);
        swift_unknownObjectRetain();
        v22 = sub_219BE5414();
        v23 = sub_219BF6214();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v54 = v23;
          v25 = v24;
          v53 = swift_slowAlloc();
          v62[0] = v53;
          *v25 = 136446210;
          v26 = [a1 &selRef_removeObserver_];
          v55 = v20;
          sub_219BF5214();

          v27 = sub_219BF5224();
          v29 = v28;

          v30 = sub_2186D1058(v27, v29, v62);

          *(v25 + 4) = v30;
          _os_log_impl(&dword_2186C1000, v22, v54, "LiveActivityWebEmbedMessageHandler did receive message: %{public}s", v25, 0xCu);
          v31 = v53;
          __swift_destroy_boxed_opaque_existential_1(v53);
          MEMORY[0x21CECF960](v31, -1, -1);
          MEMORY[0x21CECF960](v25, -1, -1);
        }

        v32 = v57;
        sub_219BE51B4();
        v33 = sub_219BF5BF4();
        (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
        v34 = v59 + 16;
        (*(v59 + 16))(v8, v12, v6);
        v35 = (*(v34 + 64) + 40) & ~*(v34 + 64);
        v36 = (v34 + 16);
        v37 = (v34 - 8);
        if (v58)
        {
          v38 = swift_allocObject();
          *(v38 + 2) = 0;
          *(v38 + 3) = 0;
          *(v38 + 4) = v32;
          (*v36)(&v38[v35], v8, v6);
          v39 = v32;
          v40 = &unk_219C660F0;
        }

        else
        {
          v38 = swift_allocObject();
          *(v38 + 2) = 0;
          *(v38 + 3) = 0;
          *(v38 + 4) = v32;
          (*v36)(&v38[v35], v8, v6);
          v51 = v32;
          v40 = &unk_219C66100;
        }

        sub_218AB42E8(0, 0, v5, v40, v38);

        (*v37)(v12, v6);
        return;
      }
    }

    else
    {
    }
  }

LABEL_16:
  if (qword_27CC08640 != -1)
  {
    swift_once();
  }

  v41 = sub_219BE5434();
  __swift_project_value_buffer(v41, qword_27CCD8BD0);
  swift_unknownObjectRetain();
  v42 = sub_219BE5414();
  v43 = sub_219BF61F4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v62[0] = v45;
    *v44 = 136446210;
    v46 = [a1 body];
    sub_219BF5214();

    v47 = sub_219BF5224();
    v49 = v48;

    v50 = sub_2186D1058(v47, v49, v62);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_2186C1000, v42, v43, "LiveActivityWebEmbedMessageHandler did receive invalid message: %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x21CECF960](v45, -1, -1);
    MEMORY[0x21CECF960](v44, -1, -1);
  }
}

uint64_t sub_219207848(uint64_t a1)
{
  v4 = *(sub_219BE51D4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187608D4;

  return sub_219206C90(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_219207940(uint64_t a1)
{
  v4 = *(sub_219BE51D4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_219206930(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_219207A3C()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_2189BD538(0);
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218806FD0(v2);
  }

  type metadata accessor for AudioHistoryFeedServiceConfig(0);
  sub_21872F678(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig, &unk_219CA2BD8);
  v0 = sub_219BEEFD4();

  return v0;
}

uint64_t sub_219207B4C()
{
  sub_21920946C(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_219BE3184();
  __swift_allocate_value_buffer(v3, qword_27CC17738);
  v4 = __swift_project_value_buffer(v3, qword_27CC17738);
  v5 = [objc_opt_self() mainBundle];
  sub_219BE3194();
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v6 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_219207C94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v158 = a2;
  v159 = a4;
  v161 = a3;
  v160 = type metadata accessor for CuratedShortcut(0);
  MEMORY[0x28223BE20](v160);
  v157 = (v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v147 = v144 - v7;
  MEMORY[0x28223BE20](v8);
  v146 = (v144 - v9);
  MEMORY[0x28223BE20](v10);
  v149 = v144 - v11;
  MEMORY[0x28223BE20](v12);
  v162 = (v144 - v13);
  MEMORY[0x28223BE20](v14);
  v154 = v144 - v15;
  MEMORY[0x28223BE20](v16);
  v150 = v144 - v17;
  MEMORY[0x28223BE20](v18);
  v152 = (v144 - v19);
  v20 = sub_219BE22B4();
  v145 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21920946C(0, &qword_27CC17750, MEMORY[0x277D6CBF0]);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v144 - v24;
  v153 = sub_219BE22F4();
  v151 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v148 = v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDB954();
  v156 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v155 = v144 - v31;
  v32 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v32);
  v34 = (v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21993568C(v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    sub_2192093B4(v34, type metadata accessor for CuratedShortcut.Identifier);
LABEL_11:
    v45 = v159;
    v44 = v160;
    v47 = v161;
    v46 = v162;
    goto LABEL_12;
  }

  if ((EnumCaseMultiPayload - 2) < 4)
  {
    v37 = *v34;
    v36 = v34[1];
    if (sub_2188537B8(*v34, v36, v158))
    {
      if (qword_280EE5F18 != -1)
      {
        swift_once();
      }

      v38 = sub_219BE5434();
      __swift_project_value_buffer(v38, qword_280F62538);

      v39 = sub_219BE5414();
      v40 = sub_219BF6214();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v164 = v42;
        *v41 = 136315138;
        v43 = sub_2186D1058(v37, v36, &v164);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_2186C1000, v39, v40, "Filtered out shortcut with blocked tag id=%s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x21CECF960](v42, -1, -1);
        MEMORY[0x21CECF960](v41, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    goto LABEL_11;
  }

  v108 = v155;
  v107 = v156;
  v109 = v34;
  v110 = v27;
  (*(v156 + 32))(v155, v109, v27);
  (*(v107 + 16))(v29, v108, v27);
  sub_219BE2624();
  swift_allocObject();
  v111 = sub_219BE2604();
  if (qword_280E92C18 != -1)
  {
    swift_once();
  }

  v112 = v163;
  sub_219BE2614();
  v47 = v161;
  v113 = v153;
  if (v112)
  {

    (*(v156 + 8))(v155, v110);
    (*(v151 + 56))(v25, 1, 1, v113);
    sub_219208F64(v25);
    v163 = 0;
LABEL_38:
    v45 = v159;
    v44 = v160;
    v46 = v162;
    goto LABEL_12;
  }

  v144[0] = v110;
  v144[1] = v111;
  v163 = 0;
  v128 = v151;
  (*(v151 + 56))(v25, 0, 1, v153);
  v129 = v113;
  v130 = v148;
  (*(v128 + 32))(v148, v25, v129);
  sub_219BE22D4();
  v131 = sub_219BE22C4();
  v133 = v132;
  (*(v145 + 8))(v22, v20);
  if (!v133)
  {

    (*(v128 + 8))(v130, v129);
    (*(v156 + 8))(v155, v144[0]);
    goto LABEL_38;
  }

  v134 = v128;
  v135 = sub_2188537B8(v131, v133, v158);
  v46 = v162;
  if (v135)
  {
    v136 = v131;
    v137 = v144[0];
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v138 = sub_219BE5434();
    __swift_project_value_buffer(v138, qword_280F62538);

    v139 = sub_219BE5414();
    v140 = sub_219BF6214();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v164 = v142;
      *v141 = 136315138;
      v143 = sub_2186D1058(v136, v133, &v164);

      *(v141 + 4) = v143;
      _os_log_impl(&dword_2186C1000, v139, v140, "Filtered out shortcut with blocked tag id=%s", v141, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v142);
      MEMORY[0x21CECF960](v142, -1, -1);
      MEMORY[0x21CECF960](v141, -1, -1);
    }

    else
    {
    }

    (*(v134 + 8))(v148, v153);
    (*(v156 + 8))(v155, v137);
    return 0;
  }

  (*(v128 + 8))(v148, v153);
  (*(v156 + 8))(v155, v144[0]);
  v45 = v159;
  v44 = v160;
LABEL_12:
  if (sub_2188537B8(*a1, a1[1], v47))
  {
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v48 = sub_219BE5434();
    __swift_project_value_buffer(v48, qword_280F62538);
    v49 = v157;
    sub_219209350(a1, v157);

    v50 = sub_219BE5414();
    v51 = sub_219BF6214();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v164 = v53;
      *v52 = 136315394;
      v54 = *v49;
      v55 = v49[1];

      sub_2192093B4(v49, type metadata accessor for CuratedShortcut);
      v56 = sub_2186D1058(v54, v55, &v164);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = sub_219BF5D54();
      v59 = sub_2186D1058(v57, v58, &v164);

      *(v52 + 14) = v59;
      _os_log_impl(&dword_2186C1000, v50, v51, "Filtered out shortcut with blocked category=%s, blockedCategoryIds=%s", v52, 0x16u);
      swift_arrayDestroy();
      v60 = v53;
LABEL_45:
      MEMORY[0x21CECF960](v60, -1, -1);
      MEMORY[0x21CECF960](v52, -1, -1);

      return 0;
    }

    v80 = v49;
LABEL_48:
    sub_2192093B4(v80, type metadata accessor for CuratedShortcut);
    return 0;
  }

  v61 = *(a1 + *(v44 + 24));
  if (*(v61 + 16))
  {

    v62 = *(sub_219209174(v61, v45, sub_219209B2C, sub_219209B2C) + 2);

    if (!v62)
    {
      if (qword_280EE5F18 != -1)
      {
        swift_once();
      }

      v114 = sub_219BE5434();
      __swift_project_value_buffer(v114, qword_280F62538);
      v46 = v146;
      sub_219209350(a1, v146);
      v66 = v147;
      sub_219209350(a1, v147);

      v50 = sub_219BE5414();
      v67 = sub_219BF6214();

      if (os_log_type_enabled(v50, v67))
      {
        v52 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v164 = v162;
        *v52 = 136315650;
        v115 = v46;
        v116 = *v46;
        v117 = v46[1];

        sub_2192093B4(v115, type metadata accessor for CuratedShortcut);
        v118 = sub_2186D1058(v116, v117, &v164);

        *(v52 + 4) = v118;
        *(v52 + 12) = 2080;
        v119 = sub_219BF5D54();
        v121 = v120;
        sub_2192093B4(v66, type metadata accessor for CuratedShortcut);
        v122 = sub_2186D1058(v119, v121, &v164);

        *(v52 + 14) = v122;
        *(v52 + 22) = 2080;
        v123 = sub_219BF5D54();
        v125 = sub_2186D1058(v123, v124, &v164);

        *(v52 + 24) = v125;
        v79 = "Filtered out shortcut with category=%s due to failing rule test for allowed segment set ids=%s, user segment set ids=%s";
        goto LABEL_44;
      }

LABEL_46:

      sub_2192093B4(v66, type metadata accessor for CuratedShortcut);
      v80 = v46;
      goto LABEL_48;
    }
  }

  v63 = *(a1 + *(v44 + 28));
  if (*(v63 + 16))
  {

    v64 = *(sub_219209174(v63, v45, sub_219209B2C, sub_219209B2C) + 2);

    if (v64)
    {
      if (qword_280EE5F18 != -1)
      {
        swift_once();
      }

      v65 = sub_219BE5434();
      __swift_project_value_buffer(v65, qword_280F62538);
      sub_219209350(a1, v46);
      v66 = v149;
      sub_219209350(a1, v149);

      v50 = sub_219BE5414();
      v67 = sub_219BF6214();

      if (os_log_type_enabled(v50, v67))
      {
        v52 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v164 = v162;
        *v52 = 136315650;
        v68 = v46;
        v69 = *v46;
        v70 = v46[1];

        sub_2192093B4(v68, type metadata accessor for CuratedShortcut);
        v71 = sub_2186D1058(v69, v70, &v164);

        *(v52 + 4) = v71;
        *(v52 + 12) = 2080;
        v72 = sub_219BF5D54();
        v74 = v73;
        sub_2192093B4(v66, type metadata accessor for CuratedShortcut);
        v75 = sub_2186D1058(v72, v74, &v164);

        *(v52 + 14) = v75;
        *(v52 + 22) = 2080;
        v76 = sub_219BF5D54();
        v78 = sub_2186D1058(v76, v77, &v164);

        *(v52 + 24) = v78;
        v79 = "Filtered out shortcut with category=%s due to failing rule test for blocked segment set ids=%s, user segment set ids=%s";
LABEL_44:
        _os_log_impl(&dword_2186C1000, v50, v67, v79, v52, 0x20u);
        v126 = v162;
        swift_arrayDestroy();
        v60 = v126;
        goto LABEL_45;
      }

      goto LABEL_46;
    }
  }

  if (qword_27CC082D8 != -1)
  {
    swift_once();
  }

  v81 = sub_219BE3184();
  __swift_project_value_buffer(v81, qword_27CC17738);
  sub_219209414();
  v82 = sub_219BF5334();
  v83 = v152;
  if (v82 & 1) != 0 || (sub_219BF5334())
  {
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v84 = sub_219BE5434();
    __swift_project_value_buffer(v84, qword_280F62538);
    sub_219209350(a1, v83);
    v85 = v150;
    sub_219209350(a1, v150);
    v86 = v154;
    sub_219209350(a1, v154);
    v87 = sub_219BE5414();
    v88 = sub_219BF6214();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = v85;
      v90 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v164 = v162;
      *v90 = 136315906;
      LODWORD(v161) = v88;
      v91 = *v83;
      v92 = v83[1];

      sub_2192093B4(v83, type metadata accessor for CuratedShortcut);
      v93 = sub_2186D1058(v91, v92, &v164);

      *(v90 + 4) = v93;
      *(v90 + 12) = 2080;
      v94 = sub_219BE3134();
      v96 = v95;
      sub_2192093B4(v89, type metadata accessor for CuratedShortcut);
      v97 = sub_2186D1058(v94, v96, &v164);

      *(v90 + 14) = v97;
      *(v90 + 22) = 2080;
      v98 = v154;
      v99 = sub_219BE3134();
      v101 = v100;
      sub_2192093B4(v98, type metadata accessor for CuratedShortcut);
      v102 = sub_2186D1058(v99, v101, &v164);

      *(v90 + 24) = v102;
      *(v90 + 32) = 2080;
      v103 = sub_219BE3134();
      v105 = sub_2186D1058(v103, v104, &v164);

      *(v90 + 34) = v105;
      _os_log_impl(&dword_2186C1000, v87, v161, "Filtered out shortcut with category=%s, due to versioning check: minVersion%s, maxVersion=%s, appVersion=%s", v90, 0x2Au);
      v106 = v162;
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v106, -1, -1);
      MEMORY[0x21CECF960](v90, -1, -1);

      return 0;
    }

    sub_2192093B4(v86, type metadata accessor for CuratedShortcut);
    sub_2192093B4(v85, type metadata accessor for CuratedShortcut);
    v80 = v83;
    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_219208F64(uint64_t a1)
{
  sub_21920946C(0, &qword_27CC17750, MEMORY[0x277D6CBF0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_219208FDC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_219209074(uint64_t a1, uint64_t a2, __n128 a3)
{

  return sub_219209174(a1, a2, sub_219209540, sub_219209540);
}

void *sub_2192090F4(uint64_t a1, uint64_t a2, __n128 a3)
{

  return sub_219209174(a1, a2, sub_219209820, sub_219209820);
}

void *sub_219209174(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_219208FDC(v15, v10, a2, a1, a4);

    MEMORY[0x21CECF960](v15, -1, -1);
  }

  return v13;
}

uint64_t sub_219209350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedShortcut(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2192093B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219209414()
{
  result = qword_280EE68F0;
  if (!qword_280EE68F0)
  {
    sub_219BE3184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE68F0);
  }

  return result;
}

void sub_21920946C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_2192094C0(uint64_t a1, uint64_t a2)
{

  return sub_219209174(a1, a2, sub_219209E14, sub_219209E14);
}

uint64_t sub_219209540(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 8 * v31);
      result = sub_219BF7A94();
      v33 = -1 << *(a4 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(a4 + 48) + 8 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_21987CE94(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 8 * (v12 | (v6 << 6)));
      result = sub_219BF7A94();
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_219209820(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = result;
  v40 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v39 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + v31);
      sub_219BF7AA4();
      MEMORY[0x21CECE850](v32);
      result = sub_219BF7AE4();
      v33 = -1 << *(v40 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(v40 + 48) + v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v38 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_41;
        }

        ++v39;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_21987D0A0(v38, a2, v39, a3, v36);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v39 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + (v12 | (v5 << 6)));
      sub_219BF7AA4();
      MEMORY[0x21CECE850](v15);
      result = sub_219BF7AE4();
      a4 = v40;
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + v17) == v15)
        {
LABEL_18:
          v38[v18] |= v19;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_42;
          }

          ++v39;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_219209B2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 4 * v31);
      result = MEMORY[0x21CECE820](*(a4 + 40), v32, 4);
      v33 = -1 << *(a4 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(a4 + 48) + 4 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_21987D2D4(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 4 * (v12 | (v6 << 6)));
      result = MEMORY[0x21CECE820](*(a3 + 40), v15, 4);
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 4 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 4 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void sub_219209E14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_219BF7AA4();

      sub_219BF5524();
      v26 = sub_219BF7AE4();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          sub_21987C7C8(a1, a2, v53, v5);
          return;
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_219BF7AA4();

      sub_219BF5524();
      v39 = sub_219BF7AE4();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_219BF78F4() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        a1[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

uint64_t sub_21920A1F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v6);
  v3 = type metadata accessor for InterludeModule();
  v4 = swift_allocObject();
  result = sub_2186CB1F0(v6, v4 + 16);
  a2[3] = v3;
  a2[4] = &protocol witness table for InterludeModule;
  *a2 = v4;
  return result;
}

double sub_21920A260()
{
  type metadata accessor for InterludeViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC17758, &protocol descriptor for InterludeRouterType, 1);
  sub_219BE2914();
  type metadata accessor for InterludeRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC17760, &protocol descriptor for InterludeEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC17768, &protocol descriptor for InterludeRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC17770, &protocol descriptor for InterludeStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC17778, &protocol descriptor for InterludeAnimatorType, 1);
  sub_219BE2914();

  return result;
}

void *sub_21920A464(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17768, &protocol descriptor for InterludeRendererType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17760, &protocol descriptor for InterludeEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v18;
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17778, &protocol descriptor for InterludeAnimatorType, 1);
  result = sub_219BE1E34();
  if (v17)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v6 = MEMORY[0x28223BE20](v5);
    v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_21920B0CC(*v8, v3, v4, *v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21920A700@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for InterludeRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_282A7B860;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21920A7BC(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for InterludeViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_21920A83C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17758, &protocol descriptor for InterludeRouterType, 1);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for InterludeRouter();
    v18[3] = v10;
    v18[4] = &off_282A7B860;
    v18[0] = v9;
    type metadata accessor for InterludeEventHandler();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v11[5] = v10;
    v11[6] = &off_282A7B860;
    v11[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    *a2 = v11;
    a2[1] = &off_282A502F8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21920AA60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17770, &protocol descriptor for InterludeStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for InterludeStyler();
    v19[3] = v10;
    v19[4] = &off_282A99970;
    v19[0] = v9;
    v11 = type metadata accessor for InterludeRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A99970;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A450A8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21920AC8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for ArticleLinkBehaviorConfigManager();
    v19[3] = v10;
    v19[4] = &off_282A7E598;
    v19[0] = v9;
    v11 = type metadata accessor for InterludeStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A7E598;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A99970;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21920AEB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE73A0, MEMORY[0x277D6CD90], 1);
  result = sub_219BE1E34();
  if (v7)
  {
    v4 = type metadata accessor for InterludeAnimator();
    v5 = swift_allocObject();
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    result = sub_2186CB1F0(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_282A3F900;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21920AF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v18[3] = type metadata accessor for InterludeRenderer();
  v18[4] = &off_282A450A8;
  v18[0] = a1;
  v17[3] = type metadata accessor for InterludeAnimator();
  v17[4] = &off_282A3F900;
  v17[0] = a4;
  v11 = OBJC_IVAR____TtC7NewsUI223InterludeViewController_contentView;
  *&a5[v11] = [objc_allocWithZone(type metadata accessor for InterludeContentView()) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI223InterludeViewController_animationContainer;
  *&a5[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_218718690(v18, &a5[OBJC_IVAR____TtC7NewsUI223InterludeViewController_renderer]);
  v13 = &a5[OBJC_IVAR____TtC7NewsUI223InterludeViewController_eventHandler];
  *v13 = a2;
  *(v13 + 1) = a3;
  sub_218718690(v17, &a5[OBJC_IVAR____TtC7NewsUI223InterludeViewController_animator]);
  v16.receiver = a5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

id sub_21920B0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for InterludeRenderer();
  v27 = &off_282A450A8;
  v25[0] = a1;
  v23 = v8;
  v24 = &off_282A3F900;
  v22[0] = a4;
  v9 = objc_allocWithZone(type metadata accessor for InterludeViewController());
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_21920AF70(*v13, a2, a3, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

unint64_t sub_21920B2D4()
{
  result = qword_27CC17780;
  if (!qword_27CC17780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17780);
  }

  return result;
}

uint64_t sub_21920B328(uint64_t a1)
{
  v2 = sub_21920B2D4();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_21920B368()
{
  result = qword_27CC17788;
  if (!qword_27CC17788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17788);
  }

  return result;
}

uint64_t sub_21920B3BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21920B3DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

void sub_21920B430(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v26[1] = a2;
  v27 = sub_219BE01B4();
  v26[0] = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21920B7AC(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDCC14();
  v16 = MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(v26 - v17, a1, v15, v16);
  if (swift_dynamicCast())
  {
    (*(v12 + 8))(v14, v11);
    v19 = sub_219BDCC04();
    v20 = sub_219BDD084();
    v22 = v21;

    if (!v5)
    {
      sub_21920B840(&unk_27CC17790, MEMORY[0x277D2E398], MEMORY[0x277D2E3A0]);
      v23 = v27;
      sub_219BE1974();
      sub_2186C6190(v20, v22);
      (*(v26[0] + 32))(a5, v9, v23);
      v24 = type metadata accessor for EngagementEvent(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v24 - 8) + 56))(a5, 0, 1, v24);
    }
  }

  else
  {
    v25 = type metadata accessor for EngagementEvent(0);
    (*(*(v25 - 8) + 56))(a5, 1, 1, v25);
  }
}

void sub_21920B7AC(uint64_t a1)
{
  if (!qword_280EE8F88)
  {
    sub_219BE01C4();
    sub_21920B840(&qword_280EE8488, MEMORY[0x277D2E3A8], MEMORY[0x277D2E390]);
    v1 = sub_219BDCC14();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8F88);
    }
  }
}

uint64_t sub_21920B840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21920B8F4(_OWORD *a1)
{
  sub_218718690(*v1 + 16, &v10);
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  sub_21920BC14(v8, v7);
  sub_218DB95D0(0);
  swift_allocObject();
  sub_218B88148(a1, v6);
  sub_21905DDA8();
  v4 = sub_219BE6E64();
  sub_21920BC70(v8);
  return v4;
}

uint64_t sub_21920B9A8(uint64_t a1, char a2)
{
  v4 = type metadata accessor for MagazineGridItemTraitChangeModifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_21897BFEC(0);
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v9[*(v4 + 20)] = a2;
  sub_21920BB0C(v9, v6);
  sub_218DB95D0(0);
  swift_allocObject();
  sub_21920BB70(qword_27CC117A8, type metadata accessor for MagazineGridItemTraitChangeModifier, &unk_219C34550);
  v11 = sub_219BE6E64();
  sub_21920BBB8(v9);
  return v11;
}

uint64_t sub_21920BB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineGridItemTraitChangeModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21920BB70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21920BBB8(uint64_t a1)
{
  v2 = type metadata accessor for MagazineGridItemTraitChangeModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21920BCC4()
{
  result = qword_280EAEB28;
  if (!qword_280EAEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEB28);
  }

  return result;
}

uint64_t sub_21920BD18()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21920BDB0(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21920BE34(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_21920BEC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21920C140(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21920BEF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676E696D6F637075;
  if (v2 != 1)
  {
    v5 = 1702259052;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616E6966;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21920BFFC()
{
  v1 = 0x676E696D6F637075;
  if (*v0 != 1)
  {
    v1 = 1702259052;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616E6966;
  }
}

unint64_t sub_21920C0EC()
{
  result = qword_280EAEB20;
  if (!qword_280EAEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEB20);
  }

  return result;
}

unint64_t sub_21920C140(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21920C190(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v1 = off_282AA00D0;
  type metadata accessor for SportsManagementConfigManager();
  return v1();
}

uint64_t sub_21920C1FC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  sub_218B21FF0();
  sub_219BE3204();
  v7 = sub_219BE2E54();
  sub_218A3A1C4(0);
  sub_219BE2F84();

  v8 = sub_219BE2E54();
  sub_219BE3054();

  sub_21920F1C8(0);
  sub_219BE3204();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v5;
  v9[5] = v6;
  swift_unknownObjectRetain();

  v10 = sub_219BE2E54();
  sub_219BE2F84();

  v11 = sub_219BE2E54();
  sub_219BE3054();

  sub_219BF29D4();
  sub_219BE3204();
  v12 = sub_219BE2E54();
  sub_219BE2FD4();

  v13 = sub_219BE2E54();
  sub_21920F5F4(0, &qword_27CC177A8, type metadata accessor for SportsManagementSection, MEMORY[0x277D83940]);
  sub_219BE2F84();

  sub_21870F2E8(0, &unk_27CC177B0, &type metadata for SportsManagementConfig);
  swift_allocObject();
  swift_unknownObjectRetain();

  sub_219BE3014();
  v14 = sub_219BE31A4();

  return v14;
}

uint64_t sub_21920C5C8(uint64_t a1)
{
  sub_21920F5F4(0, &qword_27CC12DD8, MEMORY[0x277D34030], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = v44 - v3;
  v4 = sub_219BF34F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (v44 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = v44 - v11;
  v13 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v45 = (v14 + 16);
  v49 = a1;
  sub_219BF29B4();
  v15 = sub_219BF3DE4();

  v16 = *(v15 + 16);
  if (v16)
  {
    v44[0] = v15;
    v44[1] = v14;
    v19 = *(v5 + 16);
    v18 = v5 + 16;
    v17 = v19;
    v55 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v20 = v15 + v55;
    v63 = *(v18 + 56);
    v62 = (v18 + 72);
    v61 = *MEMORY[0x277D33E30];
    v21 = *MEMORY[0x277D33E28];
    v57 = *MEMORY[0x277D33E38];
    v58 = v21;
    v54 = *MEMORY[0x277D33E40];
    v22 = (v18 - 8);
    v47 = (v18 + 80);
    v53 = (v18 + 16);
    v60 = MEMORY[0x277D84F90];
    v56 = v18;
    v19(v12, v20, v4);
    while (1)
    {
      v17(v9, v12, v4);
      v24 = (*v62)(v9, v4);
      if (v24 == v61)
      {
        break;
      }

      if (v24 == v58 || v24 == v57)
      {
        v26 = *v22;
        (*v22)(v9, v4);
        v17(v59, v12, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_2191F955C(0, *(v60 + 2) + 1, 1, v60);
        }

        v28 = *(v60 + 2);
        v27 = *(v60 + 3);
        if (v28 >= v27 >> 1)
        {
          v60 = sub_2191F955C((v27 > 1), v28 + 1, 1, v60);
        }

        v26(v12, v4);
        v29 = v59;
        v30 = v60;
        *(v60 + 2) = v28 + 1;
        (*v53)(&v30[v55 + v28 * v63], v29, v4);
        v64 = v30;
      }

      else
      {
        if (v24 != v54)
        {
          break;
        }

        (*v47)(v9, v4);
        v31 = v50;
        v52 = *v9;

        sub_219BF4444();
        v32 = sub_219BF3AF4();
        if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
        {
          (*v22)(v12, v4);

          sub_21920F458(v31, &qword_27CC12DD8, MEMORY[0x277D34030]);
        }

        else
        {
          v33 = sub_21920F458(v31, &qword_27CC12DD8, MEMORY[0x277D34030]);
          MEMORY[0x28223BE20](v33);
          v34 = v49;
          v35 = v51;
          v44[-4] = v48;
          v44[-3] = v35;
          v44[-2] = v34;
          sub_218EA1C64(0);
          sub_219BE3204();

          v36 = sub_219BE2E54();
          type metadata accessor for SportsManagementSection(0);
          v46 = sub_219BE2F64();

          v37 = v45;
          MEMORY[0x21CECC690](v38, v39);
          if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();

          (*v22)(v12, v4);
        }
      }

LABEL_4:
      v20 += v63;
      if (!--v16)
      {
        goto LABEL_23;
      }

      v17(v12, v20, v4);
    }

    v23 = *v22;
    (*v22)(v12, v4);
    v23(v9, v4);
    goto LABEL_4;
  }

LABEL_23:

  MEMORY[0x28223BE20](v40);
  v44[-4] = v48;
  v44[-3] = &v64;
  v44[-2] = v49;
  sub_218EA1C64(0);
  sub_219BE3204();

  v41 = sub_219BE2E54();
  sub_21920F5F4(0, &qword_27CC177A8, type metadata accessor for SportsManagementSection, MEMORY[0x277D83940]);
  v42 = sub_219BE2F64();

  return v42;
}

double sub_21920CD10(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  v5 = qword_280F61718;
  v6 = sub_219BF61F4();
  sub_2186F20D4(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_219BE5314(a2, a3, 2, &dword_2186C1000, v5, v6, v7);

  return result;
}

uint64_t sub_21920CE48(id *a1)
{
  v1 = [*a1 subscribedTags];
  sub_2186D8870();
  v2 = sub_219BF5924();

  v16 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_27:
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CECE0F0](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v5 = *(v2 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v7 = [v5 asSports];
    v8 = swift_unknownObjectRelease();
    ++v4;
    if (v7)
    {
      MEMORY[0x21CECC690](v8);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v15 = v16;
      v4 = v6;
    }
  }

  v9 = v15;
  if (v15 >> 62)
  {

    v14 = sub_219BF7534();
    swift_bridgeObjectRelease_n();
    v9 = v14;
  }

  else
  {
    v10 = v15 & 0xFFFFFFFFFFFFFF8;

    sub_219BF7924();
    if (swift_dynamicCastMetatype() || (v12 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_17:
    }

    else
    {
      v13 = v10 + 32;
      while (swift_dynamicCastObjCProtocolConditional())
      {
        v13 += 8;
        if (!--v12)
        {
          goto LABEL_17;
        }
      }

      v9 = v10 | 1;
    }
  }

  sub_218E967B4(v9);

  sub_21920F5F4(0, &qword_280EE6AF0, sub_218A3A1C4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21920D168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 168), *(a1 + 192));
  v4 = off_282A790C0[0];
  type metadata accessor for SportsRecommendationManager();
  v4();
  v5 = off_282A4D758;
  type metadata accessor for TagService();
  v5(a3);
  v6 = sub_219BE31C4();

  return v6;
}

uint64_t sub_21920D244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v100 = a5;
  v97 = a3;
  v111 = sub_219BE4F54();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v110 = &v94 - v9;
  sub_21920F1C8(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE4F14();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21920F58C(a1, v13, sub_21920F1C8);
  v18 = *&v13[*(v11 + 56)];
  v94 = v15;
  v19 = *(v15 + 32);
  v95 = v14;
  v19(v17, v13, v14);
  if (qword_280E8D818 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v20 = qword_280F61718;
    sub_2186F20D4(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09EC0;
    v102 = v17;
    v22 = sub_219BE4EF4();
    v17 = &unk_27CC213B0;
    v23 = MEMORY[0x277D34B80];
    sub_21920F5F4(0, &unk_27CC213B0, MEMORY[0x277D34B80], MEMORY[0x277D83940]);
    *(v21 + 56) = v24;
    v25 = MEMORY[0x277CC9C50];
    *(v21 + 64) = sub_21920F658(&qword_27CC177E0, &unk_27CC213B0, v23, MEMORY[0x277CC9C50]);
    *(v21 + 32) = v22;
    sub_218A3A1C4(0);
    v96 = v26;
    *(v21 + 96) = v26;
    *(v21 + 104) = sub_21920F6B0(&qword_27CC177E8, v25);
    *(v21 + 72) = v18;

    v27 = sub_219BF6214();
    sub_219BE5314("Sports Management Data Manager retrieved %@ recommendations from the recommendation service and %@ recommendations from editorial", 129, 2, &dword_2186C1000, v20, v27, v21);

    v101 = *(a2 + 152);
    v28 = sub_218845E04();
    a2 = v28;
    v29 = v28 >> 62 ? sub_219BF7214() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = MEMORY[0x277D84F90];
    v98 = v18;
    if (v29)
    {
      v112[0] = MEMORY[0x277D84F90];
      v31 = v112;
      sub_21870B65C(0, v29 & ~(v29 >> 63), 0);
      if (v29 < 0)
      {
        goto LABEL_113;
      }

      v32 = 0;
      v33 = v112[0];
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x21CECE0F0](v32, a2);
        }

        else
        {
          v34 = *(a2 + 8 * v32 + 32);
        }

        v35 = [*(v34 + 16) identifier];
        v18 = sub_219BF5414();
        v37 = v36;

        v112[0] = v33;
        v39 = *(v33 + 16);
        v38 = *(v33 + 24);
        v17 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          sub_21870B65C((v38 > 1), v39 + 1, 1);
          v33 = v112[0];
        }

        ++v32;
        *(v33 + 16) = v17;
        v40 = v33 + 16 * v39;
        *(v40 + 32) = v18;
        *(v40 + 40) = v37;
      }

      while (v29 != v32);

      v30 = MEMORY[0x277D84F90];
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
    }

    v41 = sub_218845F78(v33);

    v42 = sub_219BE4EF4();
    a2 = v42;
    v113 = v30;
    v107 = *(v42 + 16);
    if (!v107)
    {
      break;
    }

    v29 = 0;
    v106 = v42 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v17 = v41 + 56;
    v104 = (v109 + 8);
    v105 = v109 + 16;
    v103 = MEMORY[0x277D84F90];
    while (v29 < *(a2 + 16))
    {
      (*(v109 + 16))(v110, v106 + *(v109 + 72) * v29, v111);
      v43 = [sub_219BE4F44() identifier];
      swift_unknownObjectRelease();
      v18 = sub_219BF5414();
      v45 = v44;

      if (*(v41 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v46 = sub_219BF7AE4(), v47 = -1 << *(v41 + 32), v48 = v46 & ~v47, ((*(v17 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0))
      {
        v49 = ~v47;
        while (1)
        {
          v50 = (*(v41 + 48) + 16 * v48);
          v51 = *v50 == v18 && v50[1] == v45;
          if (v51 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v48 = (v48 + 1) & v49;
          if (((*(v17 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        (*v104)(v110, v111);
      }

      else
      {
LABEL_29:

        v52 = v110;
        v18 = sub_219BE4F44();
        v53 = (*v104)(v52, v111);
        MEMORY[0x21CECC690](v53);
        if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v103 = v113;
      }

      if (++v29 == v107)
      {

        v30 = MEMORY[0x277D84F90];
        v54 = v103;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

  v54 = MEMORY[0x277D84F90];
LABEL_34:
  v107 = sub_218E967B4(v54);

  swift_getObjectType();
  sub_219BF6974();
  v55 = sub_219BE4F04();

  v112[0] = v30;
  v56 = *(v55 + 16);
  if (v56)
  {
    v58 = *(v109 + 16);
    v57 = v109 + 16;
    v109 = v55;
    v110 = v58;
    v59 = v55 + ((*(v57 + 64) + 32) & ~*(v57 + 64));
    v17 = *(v57 + 56);
    v60 = (v57 - 8);
    do
    {
      v61 = v108;
      v62 = v111;
      (v110)(v108, v59, v111);
      v29 = sub_219BE4F44();
      v63 = (*v60)(v61, v62);
      MEMORY[0x21CECC690](v63);
      if (*((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v106 = *((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v59 += v17;
      --v56;
    }

    while (v56);
    v18 = v112[0];

    v30 = MEMORY[0x277D84F90];
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v64 = sub_218E967B4(v18);

  v112[0] = v98;
  sub_2191EF904(v64);
  sub_21920F6B0(&qword_280E8EFC0, MEMORY[0x277D83970]);
  v65 = v99;
  v66 = sub_219BF56E4();
  v108 = v65;

  v67 = v66;
  v113 = v30;
  if (v66 >> 62)
  {
    a2 = sub_219BF7214();
    v67 = v66;
    if (a2)
    {
      goto LABEL_43;
    }

LABEL_69:
    v31 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

  a2 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a2)
  {
    goto LABEL_69;
  }

LABEL_43:
  v68 = 0;
  v110 = (v67 & 0xFFFFFFFFFFFFFF8);
  v111 = v67 & 0xC000000000000001;
  v106 = v67;
  v109 = v67 + 32;
  v69 = v41 + 56;
  while (v111)
  {
    v29 = MEMORY[0x21CECE0F0](v68, v106);
    v70 = __OFADD__(v68++, 1);
    if (v70)
    {
      goto LABEL_62;
    }

LABEL_48:
    v71 = [*(v29 + 16) identifier];
    v72 = sub_219BF5414();
    v17 = v73;

    if (*(v41 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v74 = sub_219BF7AE4(), v75 = -1 << *(v41 + 32), v76 = v74 & ~v75, ((*(v69 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) != 0))
    {
      v18 = ~v75;
      while (1)
      {
        v77 = (*(v41 + 48) + 16 * v76);
        v78 = *v77 == v72 && v77[1] == v17;
        if (v78 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v76 = (v76 + 1) & v18;
        if (((*(v69 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      if (v68 == a2)
      {
        goto LABEL_63;
      }
    }

    else
    {
LABEL_44:

      sub_219BF73D4();
      v17 = *(v113 + 16);
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (v68 == a2)
      {
        goto LABEL_63;
      }
    }
  }

  if (v68 >= *(v110 + 2))
  {
    goto LABEL_65;
  }

  v29 = *(v109 + 8 * v68);

  v70 = __OFADD__(v68++, 1);
  if (!v70)
  {
    goto LABEL_48;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  v31 = v113;
LABEL_70:

  v17 = v100;
  if ((v100 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    LODWORD(v18) = v31 < 0 || (v31 & 0x4000000000000000) != 0;
    if ((v18 & 1) == 0)
    {
      v79 = *(v31 + 16);
      if (v79 >= v100)
      {
        v80 = v100;
      }

      else
      {
        v80 = *(v31 + 16);
      }

      if (v100)
      {
        v20 = v80;
      }

      else
      {
        v20 = 0;
      }

      v23 = v102;
      if (v79 >= v20)
      {
        goto LABEL_82;
      }

LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }
  }

  a2 = sub_219BF7214();
  result = sub_219BF7214();
  v23 = v102;
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (a2 >= v17)
  {
    v93 = v17;
  }

  else
  {
    v93 = a2;
  }

  if (a2 < 0)
  {
    v93 = v17;
  }

  if (v17)
  {
    v20 = v93;
  }

  else
  {
    v20 = 0;
  }

  if (sub_219BF7214() < v20)
  {
    goto LABEL_112;
  }

LABEL_82:
  if ((v31 & 0xC000000000000001) != 0 && v20)
  {
    type metadata accessor for TagModel();

    v81 = 0;
    do
    {
      v82 = v81 + 1;
      sub_219BF7334();
      v81 = v82;
    }

    while (v20 != v82);
  }

  else
  {
  }

  if (!v18)
  {
    a2 = 0;
    v29 = v31 + 32;
    v20 = (2 * v20) | 1;
    if (v20)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  v83 = sub_219BF7564();
  v29 = v84;
  a2 = v85;
  v20 = v86;

  v31 = v83;
  if ((v20 & 1) == 0)
  {
LABEL_92:
    sub_218B66A58(v31, v29, a2, v20);
    v88 = v87;
    goto LABEL_99;
  }

LABEL_93:
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v89 = swift_dynamicCastClass();
  if (!v89)
  {
    swift_unknownObjectRelease();
    v89 = MEMORY[0x277D84F90];
  }

  v90 = *(v89 + 16);

  if (__OFSUB__(v20 >> 1, a2))
  {
    goto LABEL_114;
  }

  if (v90 != (v20 >> 1) - a2)
  {
LABEL_115:
    swift_unknownObjectRelease_n();
    goto LABEL_92;
  }

  v88 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v88)
  {
    v88 = MEMORY[0x277D84F90];
LABEL_99:
    swift_unknownObjectRelease();
  }

  v112[0] = v107;
  v112[1] = v88;
  v112[2] = v17;
  sub_21870F2E8(0, &unk_27CC177D0, &type metadata for SportsManagementRecommendations);
  swift_allocObject();
  v91 = sub_219BE3014();
  (*(v94 + 8))(v23, v95);
  return v91;
}

void sub_21920DF64(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(*a1 + 16) identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_21920DFD0(uint64_t a1)
{
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61718;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Sports Management Data Manager failed to get recommended, error=%{public}@", 74, 2, &dword_2186C1000, v1, v2, v3);

  sub_21870F2E8(0, &unk_27CC177D0, &type metadata for SportsManagementRecommendations);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21920E144(uint64_t a1, uint64_t a2)
{
  v26[2] = a2;
  v3 = sub_219BF34F4();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v27 = *(v10 + 56);
    v28 = v11;
    v13 = (v10 - 8);
    v14 = MEMORY[0x277D84F90];
    v26[3] = v10;
    v11(v8, v12, v3, v6);
    while (1)
    {
      v16 = sub_219BF34D4();
      v18 = v17;
      isUniquelyReferenced_nonNull_native = (*v13)(v8, v3);
      if (v18)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_218840D24(0, *(v14 + 16) + 1, 1, v14);
          v14 = isUniquelyReferenced_nonNull_native;
        }

        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_218840D24((v20 > 1), v21 + 1, 1, v14);
          v14 = isUniquelyReferenced_nonNull_native;
        }

        *(v14 + 16) = v21 + 1;
        v15 = v14 + 16 * v21;
        *(v15 + 32) = v16;
        *(v15 + 40) = v18;
      }

      v12 += v27;
      if (!--v9)
      {
        break;
      }

      v28(v8, v12, v3, v19);
    }
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v26[-2] = v26[1];
  v26[-1] = v14;
  sub_218A3A1C4(0);
  sub_219BE3204();

  v22 = sub_219BE2E54();
  sub_218EA1C64(0);
  sub_219BE2F64();

  v23 = sub_219BE2E54();
  v24 = sub_219BE3054();

  return v24;
}

uint64_t sub_21920E400(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementSection(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v18 - v9);
  v11 = *a1;
  *v10 = 0;
  v10[1] = 0;
  v12 = *MEMORY[0x277D34028];
  v13 = sub_219BF3AF4();
  (*(*(v13 - 8) + 104))(v10, v12, v13);
  type metadata accessor for SportsManagementSectionDescriptor(0);
  swift_storeEnumTagMultiPayload();
  *(v10 + *(v5 + 28)) = v11;
  sub_21920F58C(v10, v7, type metadata accessor for SportsManagementSection);
  sub_21920F39C(0);
  swift_allocObject();

  v14 = sub_219BE3014();
  swift_beginAccess();
  if (*(a2 + 16) >> 62 && (result = sub_219BF7214(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_2189526D8(0, 0, v14);
    swift_endAccess();

    swift_beginAccess();
    v18 = *(a2 + 16);

    v15 = sub_219BE2E54();
    sub_21920F5F4(0, &qword_27CC177C0, sub_21920F39C, MEMORY[0x277D83940]);
    sub_21920F658(&qword_27CC177C8, &qword_27CC177C0, sub_21920F39C, MEMORY[0x277D83988]);
    v16 = sub_219BE2F34();

    sub_21920F530(v10);
    return v16;
  }

  return result;
}

uint64_t sub_21920E6A0(uint64_t *a1)
{
  sub_21920F5F4(0, &qword_27CC12DD8, MEMORY[0x277D34030], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for SportsManagementSectionDescriptor(0);
  MEMORY[0x28223BE20](v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsManagementSection(0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_219BF4444();
  v12 = sub_219BF3AF4();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v4, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v7, v4, v12);
    swift_storeEnumTagMultiPayload();
    sub_21920F4C8(v7, v10, type metadata accessor for SportsManagementSectionDescriptor);
    *&v10[*(v8 + 20)] = v11;
    sub_21920F39C(0);
    swift_allocObject();

    return sub_219BE3014();
  }

  return result;
}

uint64_t sub_21920E8E0(unint64_t *a1, unint64_t a2)
{
  v53 = a2;
  sub_21920F5F4(0, &qword_27CC13BD0, MEMORY[0x277D33E48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_219BF34F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v46 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v36 - v10;
  v11 = type metadata accessor for SportsModel(0);
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v17 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v19 = 0;
    v51 = v17 & 0xFFFFFFFFFFFFFF8;
    v52 = v17 & 0xC000000000000001;
    v48 = (v7 + 48);
    v38 = (v7 + 16);
    v39 = (v7 + 32);
    v37 = (v7 + 8);
    v20 = MEMORY[0x277D84F90];
    v40 = v16;
    v41 = v5;
    v49 = i;
    v50 = v17;
    while (v52)
    {
      v22 = MEMORY[0x21CECE0F0](v19, v17, v14);
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v54 = v23;
      v24 = [*(v22 + 16) identifier];
      sub_219BF5414();

      v7 = v53;
      sub_219BF29A4();

      if ((*v48)(v5, 1, v6) == 1)
      {

        sub_21920F458(v5, &qword_27CC13BD0, MEMORY[0x277D33E48]);
        v21 = v49;
        v17 = v50;
      }

      else
      {
        v25 = v5;
        v26 = v45;
        (*v39)(v45, v25, v6);
        v27 = *v38;
        v28 = v46;
        (*v38)(v46, v26, v6);
        v29 = v42;
        v27(v42, v28, v6);
        v47 = sub_219BF34A4();
        v30 = *v37;
        (*v37)(v28, v6);
        v30(v26, v6);
        v31 = v44;
        *&v29[*(v44 + 20)] = v47;
        *&v29[*(v31 + 24)] = v22;
        v32 = v29;
        v16 = v40;
        sub_21920F4C8(v32, v40, type metadata accessor for SportsModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2191F9590(0, v20[2] + 1, 1, v20);
        }

        v34 = v20[2];
        v33 = v20[3];
        v7 = v34 + 1;
        v5 = v41;
        if (v34 >= v33 >> 1)
        {
          v20 = sub_2191F9590((v33 > 1), v34 + 1, 1, v20);
        }

        v21 = v49;
        v20[2] = v7;
        sub_21920F4C8(v16, v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v34, type metadata accessor for SportsModel);
        v17 = v50;
      }

      ++v19;
      if (v54 == v21)
      {
        goto LABEL_21;
      }
    }

    if (v19 >= *(v51 + 16))
    {
      goto LABEL_18;
    }

    v22 = *(v17 + 8 * v19 + 32);

    v23 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_21:
  v55 = v20;
  sub_21920F5F4(0, &qword_27CC12E00, sub_218EA1C64, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21920EE84(uint64_t a1, const char *a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), ...)
{
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  v9 = qword_280F61718;
  v10 = sub_219BF61F4();
  sub_2186F20D4(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2186FC3BC();
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  sub_219BE5314(a2, a3, 2, &dword_2186C1000, v9, v10, v11);

  sub_21920F5F4(0, a4, a5, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21920F01C()
{
  sub_218774F78((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21920F0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v4, &off_282A63E70, a4, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21920F13C()
{
  v0 = off_282A4D798[0];
  type metadata accessor for TagService();
  return v0(25);
}

void sub_21920F1C8(uint64_t a1)
{
  if (!qword_27CC177A0)
  {
    sub_219BE4F14();
    sub_218A3A1C4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC177A0);
    }
  }
}

uint64_t sub_21920F2A4()
{
  v1 = *(v0 + 32);

  v3 = sub_21920E144(v2, v1);

  return v3;
}

uint64_t sub_21920F31C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = sub_219BF4454();
  v4 = sub_21920E144(v3, v2);

  return v4;
}

uint64_t sub_21920F3D0()
{
  v1 = *(v0 + 24);
  v2 = off_282A4D758;
  type metadata accessor for TagService();
  return v2(v1);
}

uint64_t sub_21920F458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21920F5F4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21920F4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21920F530(uint64_t a1)
{
  v2 = type metadata accessor for SportsManagementSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21920F58C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21920F5F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21920F658(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_21920F5F4(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21920F6B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_218A3A1C4(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21920F6F4(uint64_t a1, uint64_t a2, void *a3)
{
  v124 = a3;
  v119 = a2;
  v4 = MEMORY[0x277D83D88];
  sub_219212AEC(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v115 = &v96 - v6;
  sub_219212AEC(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = &v96 - v8;
  sub_219212AEC(0, &qword_280E919F0, sub_2186FF4C0, v4);
  MEMORY[0x28223BE20](v9 - 8);
  v105 = &v96 - v10;
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  v130 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v96 - v13;
  v114 = sub_219BF2AB4();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219212AEC(0, &unk_280E91B60, MEMORY[0x277D32040], v4);
  MEMORY[0x28223BE20](v16 - 8);
  v123 = &v96 - v17;
  v111 = sub_219BEF554();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v107 = &v96 - v20;
  v21 = type metadata accessor for ChannelsSearchFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v21 - 8);
  v106 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BF3E84();
  v118 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v102 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v117 = &v96 - v27;
  v28 = sub_219BF2124();
  v101 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v103 = (&v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = sub_219BF14C4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v99 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v116 = &v96 - v32;
  v33 = sub_219BF0BD4();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for SearchFeedServiceConfig(0);
  MEMORY[0x28223BE20](v122);
  v38 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v96 - v40;
  sub_218B6F704(a1, v125);
  if (!v125[0])
  {
    sub_218B6F78C(v125, &qword_27CC0E4F8, &type metadata for SearchFeedPool);
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    goto LABEL_9;
  }

  v42 = v125[2];

  sub_218B6F84C(v125);
  if (!*(v42 + 16))
  {

    v127 = 0u;
    v128 = 0u;
    v126 = 0u;
    goto LABEL_9;
  }

  sub_218B6F318(v42 + 32, &v126);

  if (!v126)
  {
LABEL_9:
    sub_218B6F78C(&v126, &qword_27CC0E500, &type metadata for SearchFeedPool.TagSearchResults);
    v47 = sub_219BEEDD4();
    sub_2192120F8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D323A8], v47);
    swift_willThrow();
    return v47;
  }

  v97 = v12;
  v98 = v14;
  v129[0] = v126;
  v129[1] = v127;
  v129[2] = v128;
  sub_219BED8F4();
  v43 = *&v41[*(v122 + 36)];
  sub_219212998(v41, type metadata accessor for SearchFeedServiceConfig);
  if (v43 - 3 >= 7)
  {
    if (v43 >= 3)
    {
      v125[0] = v43;
      goto LABEL_28;
    }

    goto LABEL_11;
  }

  v96 = *(*&v129[0] + 16);
  type metadata accessor for ChannelsSearchFeedGroupKnobs(0);
  sub_219BED8E4();
  sub_219BEF524();
  (*(v34 + 8))(v36, v33);
  if (v125[0] >= v96)
  {
LABEL_11:
    sub_218B6F8A0();
    v49 = swift_allocBox();
    LOBYTE(v125[0]) = 0;
    v50 = MEMORY[0x277D84F90];
    sub_219BF2704();
    v51 = v103;
    *v103 = v49;
    (v101[13])(v51, *MEMORY[0x277D33758], v28);
    v52 = v116;
    sub_219BF14A4();
    sub_219212AEC(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
    v53 = v120;
    v54 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_219C09BA0;
    (*(v53 + 16))(v55 + v54, v52, v121);
    sub_218F0B984(v50);
    sub_218F0BA7C(v50);
    sub_218F0BB90(v50);
    v56 = v117;
    sub_219BF3E74();
    v57 = v102;
    v46 = v104;
    (*(v118 + 16))(v102, v56, v104);
    v101 = sub_2191F6E6C(0, 1, 1, v50);
    v59 = v101[2];
    v58 = v101[3];
    if (v59 >= v58 >> 1)
    {
      v101 = sub_2191F6E6C((v58 > 1), v59 + 1, 1, v101);
    }

    v44 = v107;
    v45 = v124;
    v60 = v118;
    (*(v118 + 8))(v117, v46);
    (*(v120 + 8))(v116, v121);
    v61 = v101;
    v101[2] = v59 + 1;
    (*(v60 + 32))(v61 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v59, v57, v46);
    goto LABEL_14;
  }

  v101 = MEMORY[0x277D84F90];
  v44 = v107;
  v45 = v124;
  v46 = v104;
LABEL_14:
  sub_219BED8F4();
  v62 = *&v38[*(v122 + 36)];
  sub_219212998(v38, type metadata accessor for SearchFeedServiceConfig);
  v63 = v108;
  if (v62 - 3 < 7)
  {
    v64 = v106;
LABEL_22:
    v75 = v119;
    v76 = *(v119 + OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_formatService + 24);
    v122 = *(v119 + OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_formatService + 32);
    v124 = __swift_project_boxed_opaque_existential_1((v119 + OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_formatService), v76);
    sub_2186FEEB8(0);
    sub_219BEDD14();
    sub_219BEDCC4();
    sub_219BEDCC4();
    v77 = sub_219BEE5D4();
    (*(*(v77 - 8) + 56))(v123, 1, 1, v77);
    (*(v97 + 16))(v98, v45, v130);
    v78 = OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_knobs;
    sub_2186FF4C0(0);
    v80 = v79;
    v81 = v64;
    v82 = v44;
    v83 = v63;
    v84 = *(v79 - 8);
    v85 = v75 + v78;
    v86 = v105;
    (*(v84 + 16))(v105, v85, v79);
    (*(v84 + 56))(v86, 0, 1, v80);
    v87 = sub_219BF35D4();
    (*(*(v87 - 8) + 56))(v109, 1, 1, v87);
    LOBYTE(v125[0]) = 1;
    sub_2186FF3C0(0, &qword_27CC0E508, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D33F88]);
    swift_allocObject();
    sub_219BF38E4();
    v88 = sub_219BF2774();
    (*(*(v88 - 8) + 56))(v115, 1, 1, v88);
    v89 = qword_280E8D828;
    *MEMORY[0x277D30B98];
    if (v89 != -1)
    {
      swift_once();
    }

    qword_280F61720;
    v90 = v112;
    sub_219BF2A84();
    v91 = v123;
    v47 = sub_218F0AF50(v81, 0x736C656E6E616863, 0xE800000000000000, v82, v83, v101, v123, v90, v76, v122);

    (*(v113 + 8))(v90, v114);
    sub_2192128C0(v91, &unk_280E91B60, MEMORY[0x277D32040]);
    v92 = *(v110 + 8);
    v93 = v111;
    v92(v83, v111);
    v92(v82, v93);
    v94 = sub_219BF1934();
    (*(*(v94 - 8) + 8))(v81, v94);
    sub_218B6F544(v129);
    return v47;
  }

  v64 = v106;
  if (v62 < 3)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v66 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_219BF20F4();

    v67 = v99;
    sub_219BF14A4();
    sub_219212AEC(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
    v68 = v120;
    v69 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_219C09BA0;
    (*(v68 + 16))(v70 + v69, v67, v121);
    v71 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v71);
    sub_218F0BB90(v71);
    sub_219BF3E74();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = sub_2191F6E6C(0, v101[2] + 1, 1, v101);
    }

    v73 = v101[2];
    v72 = v101[3];
    v45 = v124;
    if (v73 >= v72 >> 1)
    {
      v101 = sub_2191F6E6C((v72 > 1), v73 + 1, 1, v101);
    }

    (*(v120 + 8))(v99, v121);
    v74 = v101;
    v101[2] = v73 + 1;
    (*(v118 + 32))(v74 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v73, v100, v46);
    goto LABEL_22;
  }

  v125[0] = v62;
LABEL_28:
  result = sub_219BF7974();
  __break(1u);
  return result;
}

uint64_t sub_219210B40(uint64_t a1)
{
  v2 = sub_219BED8D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup, v6, v2);
  v10[3] = v7;
  v10[0] = v8;
  sub_218A80D28(0);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219210C84(uint64_t a1)
{
  v3 = type metadata accessor for SearchFeedServiceConfig(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v7 = *&v6[*(v4 + 44)];
  sub_219212998(v6, type metadata accessor for SearchFeedServiceConfig);
  type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  sub_219BE3204();

  v8 = sub_219BE2E54();
  sub_218B6F1EC(0);
  sub_219BE2F64();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = v1;

  v10 = sub_219BE2E54();
  sub_218B6F29C(0);
  sub_219BE2F84();

  v11 = sub_219BE2E54();
  v12 = sub_219BE3054();

  return v12;
}

uint64_t sub_219210EA8(uint64_t *a1)
{
  sub_219BEF0C4();

  v1 = sub_219BE2E54();
  sub_218B6F1EC(0);
  v2 = sub_219BE2F74();

  return v2;
}

uint64_t sub_219210F44(uint64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v92 = a2;
  v93 = a4;
  sub_218B6F29C(0);
  v90 = v6;
  MEMORY[0x28223BE20](v6);
  v91 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_219212AEC(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = &v74 - v10;
  sub_219212AEC(0, &unk_280E8FE90, MEMORY[0x277D343A8], v8);
  MEMORY[0x28223BE20](v11 - 8);
  v88 = &v74 - v12;
  sub_219212AEC(0, &qword_280E91210, MEMORY[0x277D32A30], v8);
  MEMORY[0x28223BE20](v13 - 8);
  v87 = &v74 - v14;
  sub_219212AEC(0, &qword_280E907B0, MEMORY[0x277D33528], v8);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = &v74 - v16;
  sub_219212AEC(0, &qword_280EE9C40, MEMORY[0x277CC9578], v8);
  MEMORY[0x28223BE20](v17 - 8);
  v85 = &v74 - v18;
  v79 = sub_219BDBD64();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BF1904();
  v83 = *(v20 - 8);
  v84 = v20;
  MEMORY[0x28223BE20](v20);
  v81 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219212AEC(0, &qword_280E90840, MEMORY[0x277D33470], v8);
  MEMORY[0x28223BE20](v22 - 8);
  v82 = &v74 - v23;
  v24 = sub_219BF04A4();
  v25 = *(v24 - 8);
  v94 = v24;
  v95 = v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for SearchFeedGroup(0);
  MEMORY[0x28223BE20](v80);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BF0BD4();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1[1];
  if (!*(v34 + 16))
  {
    v38 = sub_219BEEDD4();
    sub_2192120F8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D323A8], v38);
    swift_willThrow();
    return v38;
  }

  v76 = v29;
  v35 = *a1;
  sub_218B6F318(v34 + 32, &v96);
  if ((a3 - 3) >= 7)
  {
    if ((a3 - 1) >= 2 && a3)
    {
      goto LABEL_29;
    }

    v37 = v96;
    v40 = *(v96 + 16);

    v36 = v40;
  }

  else
  {
    type metadata accessor for ChannelsSearchFeedGroupKnobs(0);

    sub_219BEF134();
    sub_219BEF524();
    (*(v31 + 8))(v33, v30);
    v36 = v98;
    v37 = v96;
  }

  v41 = sub_219A780D8(v36, v37);
  v93 = v43;
  v45 = v44 >> 1;
  if (v42 == v44 >> 1)
  {
    v38 = sub_219BEEDD4();
    sub_2192120F8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v38 - 8) + 104))(v46, *MEMORY[0x277D323A8], v38);
    swift_willThrow();

    swift_unknownObjectRelease();
LABEL_24:

    sub_218B6F544(&v96);
    return v38;
  }

  a3 = v42;
  v74 = v41;
  v47 = v45 - v42;
  if (__OFSUB__(v45, v42))
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v75 = v35;
    if (!v47)
    {

      v51 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
LABEL_22:
        if (sub_219BF7214())
        {
          goto LABEL_20;
        }

        goto LABEL_23;
      }

LABEL_19:
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_20:
        v95 = OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup;
        v52 = v81;
        sub_219BED874();
        v94 = v51;
        v53 = v77;
        sub_219BDBD54();
        sub_219BDBD44();
        (*(v78 + 8))(v53, v79);
        v54 = sub_219BDBD34();
        v55 = v85;
        (*(*(v54 - 8) + 56))(v85, 1, 1, v54);
        v56 = sub_219BF1AD4();
        v57 = v86;
        (*(*(v56 - 8) + 56))(v86, 1, 1, v56);
        v58 = sub_219BEFC64();
        v59 = v87;
        (*(*(v58 - 8) + 56))(v87, 1, 1, v58);
        v60 = sub_219BF4334();
        v61 = v88;
        (*(*(v60 - 8) + 56))(v88, 1, 1, v60);
        v62 = sub_219BEC004();
        v63 = v89;
        (*(*(v62 - 8) + 56))(v89, 1, 1, v62);
        v64 = v82;
        sub_219BF1854();

        sub_2192128C0(v63, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
        sub_2192128C0(v61, &unk_280E8FE90, MEMORY[0x277D343A8]);
        sub_2192128C0(v59, &qword_280E91210, MEMORY[0x277D32A30]);
        sub_2192128C0(v57, &qword_280E907B0, MEMORY[0x277D33528]);
        sub_2192128C0(v55, &qword_280EE9C40, MEMORY[0x277CC9578]);
        v66 = v83;
        v65 = v84;
        (*(v83 + 8))(v52, v84);
        (*(v66 + 56))(v64, 0, 1, v65);
        v67 = v75;
        v68 = v76;
        sub_219BED824();
        sub_2192128C0(v64, &qword_280E90840, MEMORY[0x277D33470]);
        v69 = type metadata accessor for ChannelsSearchFeedGroup(0);
        sub_219212930(&v97, v68 + *(v69 + 24), sub_218A32864);
        *(v68 + *(v69 + 20)) = v94;
        swift_storeEnumTagMultiPayload();
        sub_218B6F3E4(0);
        v71 = (v91 + *(v70 + 48));
        sub_219212930(v68, v91, type metadata accessor for SearchFeedGroup);
        v71[3] = type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
        *v71 = v67;
        swift_storeEnumTagMultiPayload();
        sub_219212AEC(0, &qword_27CC0E4E0, sub_218B6F29C, MEMORY[0x277D6CF30]);
        swift_allocObject();

        v38 = sub_219BE3014();

        swift_unknownObjectRelease();
        sub_219212998(v68, type metadata accessor for SearchFeedGroup);
        sub_218B6F544(&v96);
        return v38;
      }

LABEL_23:

      v38 = sub_219BEEDD4();
      sub_2192120F8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      (*(*(v38 - 8) + 104))(v72, *MEMORY[0x277D323A8], v38);
      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_24;
    }

    v98 = MEMORY[0x277D84F90];

    sub_219BF73F4();
    if ((v47 & 0x8000000000000000) == 0)
    {
      v92 = v95 + 16;
      if (a3 <= v45)
      {
        v48 = v45;
      }

      else
      {
        v48 = a3;
      }

      do
      {
        if (v48 == a3)
        {
          __break(1u);
          goto LABEL_27;
        }

        v50 = v94;
        v49 = v95;
        (*(v95 + 16))(v27, v93 + *(v95 + 72) * a3, v94);
        sub_219BF0404();
        (*(v49 + 8))(v27, v50);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        ++a3;
      }

      while (v45 != a3);
      v51 = v98;
      if (v98 >> 62)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_29:
  v98 = a3;

  result = sub_219BF7974();
  __break(1u);
  return result;
}

uint64_t sub_219211D98(uint64_t a1)
{
  sub_218B6F29C(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000028, 0x8000000219CE91A0);
  v9 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v5 = v8;
  *v4 = v7;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_219212AEC(0, &qword_27CC0E4E0, sub_218B6F29C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219211F00()
{
  v1 = OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_config;
  sub_2186FEEB8(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219212998(v0 + OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_knobs, type metadata accessor for ChannelsSearchFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_formatService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChannelsSearchFeedGroupEmitter(uint64_t a1)
{
  result = qword_27CC17808;
  if (!qword_27CC17808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219212024(uint64_t a1)
{
  sub_2186FEEB8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChannelsSearchFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2192120F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219212140(uint64_t a1, uint64_t a2)
{
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-v6];
  v16 = a1;
  v8 = MEMORY[0x277D83D88];
  sub_218B6F7FC(0, &qword_27CC0E4F8, &type metadata for SearchFeedPool, MEMORY[0x277D83D88]);
  sub_219BE3204();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  v11 = sub_219BE2E54();
  sub_219BED8D4();
  sub_219BE2F84();

  v12 = sub_219BE2E54();
  sub_218B6F7FC(0, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, v8);
  v13 = sub_219BE2F64();

  return v13;
}

uint64_t sub_2192123E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_config;
  sub_2186FEEB8(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for SearchFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219212474@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for ChannelsSearchFeedGroupKnobs(0);
  a1[4] = sub_2192120F8(&qword_280EB4E38, type metadata accessor for ChannelsSearchFeedGroupKnobs, &unk_219CB2A28);
  a1[5] = sub_2192120F8(&qword_27CC0ECA0, type metadata accessor for ChannelsSearchFeedGroupKnobs, &unk_219CB2A00);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219212930(v3 + v4, boxed_opaque_existential_1, type metadata accessor for ChannelsSearchFeedGroupKnobs);
}

uint64_t sub_219212578@<X0>(uint64_t *a2@<X8>)
{
  sub_219212AEC(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186FEEB8(0);
  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219212998(inited + 32, sub_2188317B0);
  sub_219212AEC(0, &qword_27CC17838, type metadata accessor for ChannelsSearchFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_219212B50();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2192126F8(uint64_t a1)
{
  sub_2192120F8(&qword_27CC17828, type metadata accessor for ChannelsSearchFeedGroupEmitter, &unk_219C66610);

  return sub_219BE2324();
}

uint64_t sub_2192128C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219212AEC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219212930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219212998(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_2192129F8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;

  return result;
}

void sub_219212AEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219212B50()
{
  result = qword_27CC17840;
  if (!qword_27CC17840)
  {
    sub_219212AEC(255, &qword_27CC17838, type metadata accessor for ChannelsSearchFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17840);
  }

  return result;
}

void *sub_219212BD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &qword_280EDC810, &protocol descriptor for BaseStylerType);
  result = sub_219BE1E34();
  if (v14)
  {
    v4 = objc_opt_self();
    v5 = [v4 labelColor];
    v6 = [v4 labelColor];
    v7 = [v4 systemBackgroundColor];
    v8 = [v4 secondarySystemBackgroundColor];
    v9 = [v4 ts:v7 dynamicColor:v8 withDarkStyleVariant:?];

    v10 = [v4 systemPinkColor];
    v11 = sub_219BE79E4();
    v12 = MEMORY[0x277D6DC10];
    a2[3] = v11;
    a2[4] = v12;
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_219BE79D4();
    return sub_219212D5C(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219212D5C(uint64_t a1)
{
  sub_219212DB8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219212DB8(uint64_t a1)
{
  if (!qword_280EDC808)
  {
    sub_2186CFDE4(255, &qword_280EDC810, &protocol descriptor for BaseStylerType);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EDC808);
    }
  }
}

void sub_219212E98()
{
  if (qword_280E92F08 != -1)
  {
    swift_once();
  }

  v0 = qword_280E92F10;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 whiteColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  qword_27CC17848 = v4;
}

void sub_219212FA4(uint64_t a1)
{
  if (sub_219BED0C4())
  {
    v1 = sub_219BF53D4();
    v2 = [objc_opt_self() systemImageNamed_];

    if (v2)
    {
LABEL_5:
      qword_27CC17850 = v2;
      return;
    }

    __break(1u);
  }

  v3 = sub_219BF53D4();
  v2 = [objc_opt_self() systemImageNamed_];

  if (v2)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_2192130C4(uint64_t a1)
{
  if (sub_219BED0C4())
  {
    if (qword_27CC082E8 != -1)
    {
      swift_once();
    }

    v1 = qword_27CC17850;
  }

  else
  {
    if (qword_27CC082E8 != -1)
    {
      swift_once();
    }

    v2 = qword_27CC17850;
    v3 = [objc_opt_self() systemPinkColor];
    v1 = [v2 imageWithTintColor:v3 renderingMode:1];
  }

  qword_27CC17858 = v1;
}

void sub_2192133F4(uint64_t a1)
{
  if (sub_219BED0C4())
  {
    v1 = objc_opt_self();
    v2 = sub_219BF53D4();
    v3 = [v1 ts:v2 internalSystemImageNamed:?];

    if (v3)
    {
      return;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (qword_280E92E90 != -1)
  {
    swift_once();
  }

  v4 = qword_280E92E98;
  v5 = sub_219BF53D4();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4 compatibleWithTraitCollection:0];

  if (!v6)
  {
    goto LABEL_9;
  }
}

void sub_2192137A8()
{
  v0 = sub_219BF53D4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CC178B0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_2192139A8()
{
  v0 = sub_219BF53D4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CC178D0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_219213B10()
{
  v0 = sub_219BF53D4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CCD8878 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_219213BB0()
{
  v0 = sub_219BF53D4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CCD8880 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_219213C28()
{
  v0 = sub_219BF53D4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CCD8888 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_219213CBC()
{
  v0 = sub_219BF53D4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CCD8898 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_219213DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_219BF53D4();
  v8 = [objc_opt_self() systemImageNamed_];

  if (v8)
  {
    v9 = *MEMORY[0x277D76918];
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 configurationWithTextStyle:v11 scale:1];

    v13 = [v10 configurationWithWeight_];
    v14 = [v12 configurationByApplyingConfiguration_];

    v15 = [v8 imageWithConfiguration_];
    *a5 = v15;
  }

  else
  {
    __break(1u);
  }
}

id sub_2192140DC(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_219214168(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

void sub_2192141CC()
{
  if (qword_280E92E90 != -1)
  {
    swift_once();
  }

  v0 = qword_280E92E98;
  v1 = sub_219BF53D4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_27CCD88B0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_219214298()
{
  if (qword_280E92E90 != -1)
  {
    swift_once();
  }

  v0 = qword_280E92E98;
  v1 = sub_219BF53D4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_27CCD88B8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_219214364()
{
  if (qword_280E92E90 != -1)
  {
    swift_once();
  }

  v0 = qword_280E92E98;
  v1 = sub_219BF53D4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_27CCD88C0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_219214430()
{
  if (qword_280E92E90 != -1)
  {
    swift_once();
  }

  v0 = qword_280E92E98;
  v1 = sub_219BF53D4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_27CCD88C8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_2192144FC()
{
  v0 = sub_219BF53D4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CC17908 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_219214624()
{
  v0 = sub_219BF53D4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CC17920 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_2192146C0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

void sub_219214720()
{
  if (qword_280E92E90 != -1)
  {
    swift_once();
  }

  v0 = qword_280E92E98;
  v1 = sub_219BF53D4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_280F61998 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_2192147EC()
{
  if (qword_280E92E90 != -1)
  {
    swift_once();
  }

  v0 = qword_280E92E98;
  v1 = sub_219BF53D4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_27CCD88D0 = v2;
  }

  else
  {
    __break(1u);
  }
}

id Images.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Images.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Images.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2192149DC(char a1)
{
  if (a1)
  {
    v1 = 23.0;
  }

  else
  {
    v1 = 17.0;
  }

  v2 = objc_opt_self();
  v3 = [v2 configurationWithPointSize_];
  v4 = [v2 configurationWithScale_];
  v5 = [v3 configurationByApplyingConfiguration_];

  v6 = v5;
  v7 = [v2 configurationWithWeight_];
  v8 = [v6 configurationByApplyingConfiguration_];

  return v8;
}

void _s7NewsUI26ImagesC25iconFollowingLikeSelected24shouldLayoutForLargeTextSo7UIImageCSb_tFZ_0(char a1)
{
  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() systemImageNamed_];

  if (!v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v4 = sub_2192149DC(a1 & 1);
  sub_218725F94();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C189F0;
  v6 = sub_219BED0C4();
  v7 = objc_opt_self();
  v8 = &selRef_labelColor;
  if ((v6 & 1) == 0)
  {
    v8 = &selRef_systemPinkColor;
  }

  *(v5 + 32) = [v7 *v8];
  *(v5 + 40) = [objc_opt_self() systemGray5Color];
  sub_2186F8B0C();
  v9 = sub_219BF5904();

  v10 = [objc_opt_self() configurationWithPaletteColors_];

  v11 = [v4 configurationByApplyingConfiguration_];
  v12 = [v3 imageByApplyingSymbolConfiguration_];

  if (!v12)
  {
    goto LABEL_7;
  }
}

void _s7NewsUI26ImagesC17iconFollowingLike24shouldLayoutForLargeTextSo7UIImageCSb_tFZ_0(char a1)
{
  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() systemImageNamed_];

  if (!v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v4 = sub_2192149DC(a1 & 1);
  sub_218725F94();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C189F0;
  v6 = sub_219BED0C4();
  v7 = objc_opt_self();
  v8 = &selRef_labelColor;
  if ((v6 & 1) == 0)
  {
    v8 = &selRef_systemPinkColor;
  }

  *(v5 + 32) = [v7 *v8];
  *(v5 + 40) = [objc_opt_self() systemGray5Color];
  sub_2186F8B0C();
  v9 = sub_219BF5904();

  v10 = [objc_opt_self() configurationWithPaletteColors_];

  v11 = [v4 configurationByApplyingConfiguration_];
  v12 = [v3 imageByApplyingSymbolConfiguration_];

  if (!v12)
  {
    goto LABEL_7;
  }
}

void _s7NewsUI26ImagesC29iconFollowingShortcutSelected24shouldLayoutForLargeTextSo7UIImageCSb_tFZ_0(char a1)
{
  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() systemImageNamed_];

  if (!v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v4 = sub_2192149DC(a1 & 1);
  sub_218725F94();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C189F0;
  v6 = sub_219BED0C4();
  v7 = objc_opt_self();
  v8 = &selRef_labelColor;
  if ((v6 & 1) == 0)
  {
    v8 = &selRef_systemPinkColor;
  }

  *(v5 + 32) = [v7 *v8];
  *(v5 + 40) = [objc_opt_self() systemGray5Color];
  sub_2186F8B0C();
  v9 = sub_219BF5904();

  v10 = [objc_opt_self() configurationWithPaletteColors_];

  v11 = [v4 configurationByApplyingConfiguration_];
  v12 = [v3 imageByApplyingSymbolConfiguration_];

  if (!v12)
  {
    goto LABEL_7;
  }
}

void _s7NewsUI26ImagesC21iconFollowingShortcut24shouldLayoutForLargeTextSo7UIImageCSb_tFZ_0(char a1)
{
  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() systemImageNamed_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = sub_2192149DC(a1 & 1);
  sub_218725F94();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C189F0;
  v6 = objc_opt_self();
  *(v5 + 32) = [v6 tertiaryLabelColor];
  *(v5 + 40) = [v6 systemGray5Color];
  sub_2186F8B0C();
  v7 = sub_219BF5904();

  v8 = [objc_opt_self() configurationWithPaletteColors_];

  v9 = [v4 configurationByApplyingConfiguration_];
  v10 = [v3 imageByApplyingSymbolConfiguration_];

  if (!v10)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_2192151BC(uint64_t a1)
{
  result = type metadata accessor for SearchResponse.SearchResultsGroup(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2192152A8(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  sub_219218FF4(0, &qword_280EE6A00, sub_218799754, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21921532C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, void))
{
  a2(a1);
  a6(0, a4, a5, MEMORY[0x277D83940]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2192153B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) == 0)
  {
    v8 = v4 + qword_27CC17930;
    v9 = swift_beginAccess();
    if (*(v8 + 16))
    {
      MEMORY[0x28223BE20](v9);
      type metadata accessor for SearchResponse(0);

      sub_219BE3204();

      v10 = swift_allocObject();
      v10[2] = a1;
      v10[3] = a3;
      v10[4] = a4;

      v11 = sub_219BE2E54();
      sub_21921923C(0);
      sub_219219290(0, &qword_27CC17A58, type metadata accessor for RecipeSearchResultsInflater, &off_2816F9358);
      v12 = sub_219BE2F84();

      return v12;
    }

    goto LABEL_9;
  }

  if (a1)
  {
LABEL_9:
    sub_219218FF4(0, &qword_27CC17A40, sub_21921923C, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  return sub_219215BBC(a3, a4);
}

uint64_t sub_219215654(uint64_t a1, char a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if ((a2 & 1) == 0)
  {
    v9 = v5 + qword_27CC17930;
    v10 = swift_beginAccess();
    if (*(v9 + 16))
    {
      MEMORY[0x28223BE20](v10);
      type metadata accessor for SearchResponse(0);

      sub_219BE3204();

      v11 = swift_allocObject();
      v11[2] = a1;
      v11[3] = a3;
      v11[4] = a4;

      v12 = sub_219BE2E54();
      sub_2192188D0(0, &unk_27CC179C8, &qword_280E8E680, &protocolRef_FCTagProviding, type metadata accessor for StreamingPage);
      sub_219219290(0, &qword_27CC179D8, type metadata accessor for TagSearchResultsInflater, &off_2816F9388);
      v13 = sub_219BE2F84();

      return v13;
    }

    goto LABEL_9;
  }

  if (a1)
  {
LABEL_9:
    sub_219218E5C(0, &qword_27CC179C0, &unk_27CC179C8, type metadata accessor for StreamingPage);
    swift_allocObject();
    return sub_219BE3014();
  }

  return sub_219215E7C(a3, a4);
}

uint64_t sub_219215908(uint64_t a1, char a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if ((a2 & 1) == 0)
  {
    v9 = v5 + qword_27CC17930;
    v10 = swift_beginAccess();
    if (*(v9 + 16))
    {
      MEMORY[0x28223BE20](v10);
      type metadata accessor for SearchResponse(0);

      sub_219BE3204();

      v11 = swift_allocObject();
      v11[2] = a1;
      v11[3] = a3;
      v11[4] = a4;

      v12 = sub_219BE2E54();
      sub_2192188D0(0, &qword_27CC17A28, &qword_280E8E260, &protocolRef_FCHeadlineProviding, type metadata accessor for StreamingPage);
      sub_219219290(0, &unk_27CC1FC70, type metadata accessor for ArticleSearchResultsInflater, &off_2816F9370);
      v13 = sub_219BE2F84();

      return v13;
    }

    goto LABEL_9;
  }

  if (a1)
  {
LABEL_9:
    sub_219218EC8(0, &qword_27CC17A20, &qword_27CC17A28, type metadata accessor for StreamingPage);
    swift_allocObject();
    return sub_219BE3014();
  }

  return sub_219216190(a3, a4);
}

uint64_t sub_219215BBC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  MEMORY[0x28223BE20](v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_27CC17930;
  swift_beginAccess();
  sub_219218BD4(v2 + v8, v7, type metadata accessor for SearchResponse.SearchResultsGroup);
  sub_21921898C(0);
  v9 = sub_219BE21E4();
  sub_219218B74(v7, type metadata accessor for SearchResponse.SearchResultsGroup);
  if (*(v9 + 16))
  {
    v10 = sub_219BE2E54();
    *(swift_allocObject() + 16) = v9;
    sub_218799754(0);
    sub_219219290(0, &qword_27CC17A58, type metadata accessor for RecipeSearchResultsInflater, &off_2816F9358);
    sub_219BE31F4();

    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;

    v12 = sub_219BE2E54();
    sub_219BE2F64();

    v13 = sub_219BE2E54();
    sub_21921923C(0);
    v14 = sub_219BE2F84();

    return v14;
  }

  else
  {

    v16[0] = MEMORY[0x277D84F90];
    v16[1] = 1;
    v17 = 1;
    sub_219218FF4(0, &qword_27CC17A40, sub_21921923C, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_219215E7C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  MEMORY[0x28223BE20](v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_27CC17930;
  swift_beginAccess();
  sub_219218BD4(v2 + v8, v7, type metadata accessor for SearchResponse.SearchResultsGroup);
  sub_21921898C(0);
  v9 = sub_219BE21E4();
  sub_219218B74(v7, type metadata accessor for SearchResponse.SearchResultsGroup);
  if (*(v9 + 16))
  {
    v10 = sub_219BE2E54();
    *(swift_allocObject() + 16) = v9;
    sub_2192188D0(0, &qword_280E8ED00, &qword_280E8E680, &protocolRef_FCTagProviding, MEMORY[0x277D83940]);
    sub_219219290(0, &qword_27CC179D8, type metadata accessor for TagSearchResultsInflater, &off_2816F9388);
    sub_219BE31F4();

    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;

    v12 = sub_219BE2E54();
    sub_219BE2F64();

    v13 = sub_219BE2E54();
    sub_2192188D0(0, &unk_27CC179C8, &qword_280E8E680, &protocolRef_FCTagProviding, type metadata accessor for StreamingPage);
    v14 = sub_219BE2F84();

    return v14;
  }

  else
  {

    v16[0] = MEMORY[0x277D84F90];
    v16[1] = 1;
    v17 = 1;
    sub_219218E5C(0, &qword_27CC179C0, &unk_27CC179C8, type metadata accessor for StreamingPage);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_219216190(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  MEMORY[0x28223BE20](v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_27CC17930;
  swift_beginAccess();
  sub_219218BD4(v2 + v8, v7, type metadata accessor for SearchResponse.SearchResultsGroup);
  sub_21921898C(0);
  v9 = sub_219BE21E4();
  sub_219218B74(v7, type metadata accessor for SearchResponse.SearchResultsGroup);
  if (*(v9 + 16))
  {
    v10 = sub_219BE2E54();
    *(swift_allocObject() + 16) = v9;
    sub_219218FF4(0, &unk_27CC17A30, sub_219219058, MEMORY[0x277D83940]);
    sub_219219290(0, &unk_27CC1FC70, type metadata accessor for ArticleSearchResultsInflater, &off_2816F9370);
    sub_219BE31F4();

    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;

    v12 = sub_219BE2E54();
    sub_2192188D0(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, MEMORY[0x277D83940]);
    sub_219BE2F64();

    v13 = sub_219BE2E54();
    sub_2192188D0(0, &qword_27CC17A28, &qword_280E8E260, &protocolRef_FCHeadlineProviding, type metadata accessor for StreamingPage);
    v14 = sub_219BE2F84();

    return v14;
  }

  else
  {

    v16[0] = MEMORY[0x277D84F90];
    v16[1] = 1;
    v17 = 1;
    sub_219218EC8(0, &qword_27CC17A20, &qword_27CC17A28, type metadata accessor for StreamingPage);
    swift_allocObject();
    return sub_219BE3014();
  }
}

void sub_2192164D8(uint64_t a1, uint64_t a2)
{
  v16 = *(a1 + *(*a1 + 120));
  v2 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = a2 + 32;
  v15 = a2 + 32;
  do
  {
    v6 = (v5 + 536 * v4);
    v7 = v4;
    while (1)
    {
      if (v7 >= v3)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      memcpy(__dst, v6, 0x212uLL);
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_18;
      }

      memcpy(v21, v6, 0x212uLL);
      if (sub_218CD47C0(v21) != 4)
      {
        nullsub_1();
        goto LABEL_5;
      }

      nullsub_1();
      v9 = *(v8 + 344);
      if (v9)
      {
        goto LABEL_13;
      }

      memcpy(v18, __dst, sizeof(v18));
      nullsub_1();
      v11 = v10;
      memcpy(__src, v10 + 2, sizeof(__src));
      if (get_enum_tag_for_layout_string_7NewsUI219ChannelPickerModuleVSg_0(__src) != 1)
      {
        memcpy(v22, __src, 0x148uLL);
        __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
        v12 = *v11;
        v13 = v11[1];

        sub_218AD8210(__dst, v17);
        sub_218CB4214((v11 + 2), v17);
        v14 = sub_219505324(v12, v13, v22);
        sub_218F93518(__dst);
        sub_218CB40B0((v11 + 2));

        if (v14)
        {
          break;
        }
      }

LABEL_5:
      ++v7;
      v6 += 536;
      if (v4 == v3)
      {
        goto LABEL_16;
      }
    }

    v9 = 0;
LABEL_13:
    MEMORY[0x21CECC690](v9);
    v5 = v15;
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v2 = v23;
  }

  while (v4 != v3);
LABEL_16:
  v21[0] = v2;
  sub_219218FF4(0, &qword_280EE6A00, sub_218799754, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE3014();
}

uint64_t sub_2192167AC(unint64_t a1, uint64_t a2)
{
  v3 = a2 + qword_27CC17930;
  swift_beginAccess();
  if (*(v3 + 16) && a1 >> 62 && (result = sub_219BF7214(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_219218FF4(0, &qword_27CC17A40, sub_21921923C, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_219BE3014();
  }

  return result;
}

uint64_t sub_2192168A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4), __n128))
{
  v9 = a2 + qword_27CC17930;
  swift_beginAccess();
  if (*(v9 + 16) && a1 >> 62 && (result = sub_219BF7214(), result < 0))
  {
    __break(1u);
  }

  else
  {
    (a5)(0, a3, a4, type metadata accessor for StreamingPage);
    swift_allocObject();

    return sub_219BE3014();
  }

  return result;
}

uint64_t sub_219216A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a3;
  v47 = a4;
  v45 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  v8 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219218B40(0);
  MEMORY[0x28223BE20](v11 - 8);
  v44 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_27CC17930;
  swift_beginAccess();
  v14 = *(a2 + v13);
  type metadata accessor for SearchResponse(0);
  sub_219219310(0);
  result = sub_219BE21E4();
  v16 = result;
  v48 = *(result + 16);
  if (v48)
  {
    v41[1] = a2;
    v42 = a5;
    v43 = v5;
    v17 = 0;
    v49 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v18 = v8;
    while (1)
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = v18;
      sub_219218BD4(v49 + *(v18 + 72) * v17, v10, type metadata accessor for SearchResponse.SearchResultsGroup);
      v19 = *v10;
      if (v19 > 3)
      {
        if (*v10 > 5u)
        {
          if (v19 == 6)
          {
            v24 = 0x6365526465766153;
            v25 = 0xEC00000073657069;
            if (v14 > 3)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v25 = 0xE700000000000000;
            v24 = 0x6E776F6E6B6E75;
            if (v14 > 3)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          if (v19 == 4)
          {
            v24 = 0x7374726F7053;
          }

          else
          {
            v24 = 0x73657069636552;
          }

          if (v19 == 4)
          {
            v25 = 0xE600000000000000;
          }

          else
          {
            v25 = 0xE700000000000000;
          }

          if (v14 > 3)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v20 = 0x736C656E6E616843;
        if (v19 != 2)
        {
          v20 = 0x736369706F54;
        }

        v21 = 0xE800000000000000;
        if (v19 != 2)
        {
          v21 = 0xE600000000000000;
        }

        v22 = 0x6C75736552706F54;
        if (*v10)
        {
          v22 = 0x736569726F7453;
        }

        v23 = 0xE900000000000074;
        if (*v10)
        {
          v23 = 0xE700000000000000;
        }

        if (*v10 <= 1u)
        {
          v24 = v22;
        }

        else
        {
          v24 = v20;
        }

        if (*v10 <= 1u)
        {
          v25 = v23;
        }

        else
        {
          v25 = v21;
        }

        if (v14 > 3)
        {
LABEL_32:
          v26 = 0x6365526465766153;
          if (v14 != 6)
          {
            v26 = 0x6E776F6E6B6E75;
          }

          v27 = 0xEC00000073657069;
          if (v14 != 6)
          {
            v27 = 0xE700000000000000;
          }

          v28 = 0x73657069636552;
          if (v14 == 4)
          {
            v28 = 0x7374726F7053;
          }

          v29 = 0xE600000000000000;
          if (v14 != 4)
          {
            v29 = 0xE700000000000000;
          }

          if (v14 <= 5)
          {
            v30 = v28;
          }

          else
          {
            v30 = v26;
          }

          if (v14 <= 5)
          {
            v31 = v29;
          }

          else
          {
            v31 = v27;
          }

          if (v24 != v30)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }
      }

      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v34 = 0x736C656E6E616843;
        }

        else
        {
          v34 = 0x736369706F54;
        }

        if (v14 == 2)
        {
          v31 = 0xE800000000000000;
        }

        else
        {
          v31 = 0xE600000000000000;
        }

        if (v24 != v34)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v32 = 0x6C75736552706F54;
        v31 = 0xE900000000000074;
        if (v14)
        {
          v31 = 0xE700000000000000;
          v32 = 0x736569726F7453;
        }

        if (v24 != v32)
        {
          goto LABEL_54;
        }
      }

LABEL_53:
      if (v25 == v31)
      {

LABEL_67:

        v35 = v44;
        sub_219218C3C(v10, v44);
        v39 = 0;
        a5 = v42;
        v37 = v46;
        v36 = v47;
        v38 = v45;
        goto LABEL_69;
      }

LABEL_54:
      v33 = sub_219BF78F4();

      if (v33)
      {
        goto LABEL_67;
      }

      ++v17;
      result = sub_219218B74(v10, type metadata accessor for SearchResponse.SearchResultsGroup);
      v18 = v8;
      if (v48 == v17)
      {

        v39 = 1;
        a5 = v42;
        goto LABEL_68;
      }
    }
  }

  v39 = 1;
LABEL_68:
  v37 = v46;
  v36 = v47;
  v35 = v44;
  v38 = v45;
LABEL_69:
  (*(v8 + 56))(v35, v39, 1, v38);
  v40 = sub_21921703C(v35, v37, v36, a5);
  sub_219218B74(v35, sub_219218B40);
  return v40;
}

uint64_t sub_219216F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t, uint64_t, uint64_t))
{
  sub_219218B40(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_27CC17930;
  swift_beginAccess();
  sub_21938393C(*(a2 + v14), v13);
  v15 = a6(v13, a3, a4, a5);
  sub_219218B74(v13, sub_219218B40);
  return v15;
}

uint64_t sub_21921703C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a2;
  sub_219218B40(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_219218BD4(a1, v9, sub_219218B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_219218B74(v9, sub_219218B40);
    v31 = MEMORY[0x277D84F90];
    v32 = 1;
    v33 = 1;
    sub_219218FF4(0, &qword_27CC17A40, sub_21921923C, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    sub_219218C3C(v9, v16);
    v18 = sub_219BE2E54();
    v28 = type metadata accessor for SearchResponse.SearchResultsGroup;
    sub_219218BD4(v16, v13, type metadata accessor for SearchResponse.SearchResultsGroup);
    v19 = *(v11 + 80);
    v20 = swift_allocObject();
    sub_219218C3C(v13, v20 + ((v19 + 16) & ~v19));
    sub_218799754(0);
    sub_219219290(0, &qword_27CC17A58, type metadata accessor for RecipeSearchResultsInflater, &off_2816F9358);
    v21 = v4;
    sub_219BE31F4();

    v22 = swift_allocObject();
    *(v22 + 16) = v29;
    *(v22 + 24) = a4;

    v23 = sub_219BE2E54();
    sub_219BE2F64();

    v24 = v28;
    sub_219218BD4(v16, v13, v28);
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    sub_219218C3C(v13, v25 + ((v19 + 24) & ~v19));
    v26 = sub_219BE2E54();
    sub_21921923C(0);
    v27 = sub_219BE2F64();

    sub_219217CEC(v21, v16);
    sub_219218B74(v16, v24);
    return v27;
  }
}

uint64_t sub_219217430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a2;
  sub_219218B40(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_219218BD4(a1, v9, sub_219218B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_219218B74(v9, sub_219218B40);
    v31 = MEMORY[0x277D84F90];
    v32 = 1;
    v33 = 1;
    sub_219218E5C(0, &qword_27CC179C0, &unk_27CC179C8, type metadata accessor for StreamingPage);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    sub_219218C3C(v9, v16);
    v18 = sub_219BE2E54();
    v28 = type metadata accessor for SearchResponse.SearchResultsGroup;
    sub_219218BD4(v16, v13, type metadata accessor for SearchResponse.SearchResultsGroup);
    v19 = *(v11 + 80);
    v20 = swift_allocObject();
    sub_219218C3C(v13, v20 + ((v19 + 16) & ~v19));
    sub_2192188D0(0, &qword_280E8ED00, &qword_280E8E680, &protocolRef_FCTagProviding, MEMORY[0x277D83940]);
    sub_219219290(0, &qword_27CC179D8, type metadata accessor for TagSearchResultsInflater, &off_2816F9388);
    v21 = v4;
    sub_219BE31F4();

    v22 = swift_allocObject();
    *(v22 + 16) = v29;
    *(v22 + 24) = a4;

    v23 = sub_219BE2E54();
    sub_219BE2F64();

    v24 = v28;
    sub_219218BD4(v16, v13, v28);
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    sub_219218C3C(v13, v25 + ((v19 + 24) & ~v19));
    v26 = sub_219BE2E54();
    sub_2192188D0(0, &unk_27CC179C8, &qword_280E8E680, &protocolRef_FCTagProviding, type metadata accessor for StreamingPage);
    v27 = sub_219BE2F64();

    sub_219217CEC(v21, v16);
    sub_219218B74(v16, v24);
    return v27;
  }
}

uint64_t sub_219217870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  sub_219218B40(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  sub_219218BD4(a1, v10, sub_219218B40);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_219218B74(v10, sub_219218B40);
    v31 = MEMORY[0x277D84F90];
    v32 = 1;
    v33 = 1;
    sub_219218EC8(0, &qword_27CC17A20, &qword_27CC17A28, type metadata accessor for StreamingPage);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    sub_219218C3C(v10, v17);
    v19 = sub_219BE2E54();
    v29 = type metadata accessor for SearchResponse.SearchResultsGroup;
    sub_219218BD4(v17, v14, type metadata accessor for SearchResponse.SearchResultsGroup);
    v20 = *(v12 + 80);
    v21 = swift_allocObject();
    sub_219218C3C(v14, v21 + ((v20 + 16) & ~v20));
    sub_219218FF4(0, &unk_27CC17A30, sub_219219058, MEMORY[0x277D83940]);
    sub_219219290(0, &unk_27CC1FC70, type metadata accessor for ArticleSearchResultsInflater, &off_2816F9370);
    sub_219BE31F4();

    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;

    v23 = sub_219BE2E54();
    sub_2192188D0(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, MEMORY[0x277D83940]);
    sub_219BE2F64();

    v24 = v29;
    sub_219218BD4(v17, v14, v29);
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    sub_219218C3C(v14, v25 + ((v20 + 24) & ~v20));
    v26 = sub_219BE2E54();
    sub_2192188D0(0, &qword_27CC17A28, &qword_280E8E260, &protocolRef_FCHeadlineProviding, type metadata accessor for StreamingPage);
    v27 = sub_219BE2F64();

    sub_219217CEC(v4, v17);
    sub_219218B74(v17, v24);
    return v27;
  }
}

uint64_t sub_219217CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  MEMORY[0x28223BE20](v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = qword_27CC17930;
  swift_beginAccess();
  v15[0] = type metadata accessor for SearchResponse.SearchResultsGroup;
  sub_219218BD4(a1 + v10, v6, type metadata accessor for SearchResponse.SearchResultsGroup);
  sub_21921898C(0);
  v11 = sub_219BE21E4();
  v12 = sub_219BE21E4();
  v15[1] = v11;
  sub_2191EE824(v12);
  sub_2186D0C48(0, &qword_27CC17A08, &type metadata for SearchResultItem, MEMORY[0x277D83940]);
  sub_219218D3C();
  sub_219BF56E4();

  v13 = *(a2 + 8);
  *v9 = *v6;
  *(v9 + 1) = v13;
  *(v9 + 1) = *(a2 + 16);
  sub_2192189F4();
  sub_219218A48();

  sub_219BE21D4();
  sub_219218B74(v6, v15[0]);
  swift_beginAccess();
  sub_219218DB8(v9, a1 + v10);
  return swift_endAccess();
}

void sub_219217F20(uint64_t a1)
{
  v2 = *(*a1 + 120);
  type metadata accessor for SearchResponse.SearchResultsGroup(0);
  sub_21921898C(0);
  v3 = sub_219BE21E4();
  v4 = v3;
  v19 = *(a1 + v2);
  v5 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = 0;
  v8 = v3 + 32;
  v18 = v3 + 32;
  do
  {
    v9 = (v8 + 536 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      memcpy(__dst, v9, 0x212uLL);
      memmove(v24, v9, 0x212uLL);
      if (sub_218CD47C0(v24) != 4)
      {
        nullsub_1();
        goto LABEL_5;
      }

      nullsub_1();
      v12 = *(v11 + 344);
      if (v12)
      {
        goto LABEL_12;
      }

      memcpy(v21, __dst, sizeof(v21));
      nullsub_1();
      v14 = v13;
      memcpy(__src, v13 + 2, sizeof(__src));
      if (get_enum_tag_for_layout_string_7NewsUI219ChannelPickerModuleVSg_0(__src) != 1)
      {
        memcpy(v25, __src, 0x148uLL);
        __swift_project_boxed_opaque_existential_1((v19 + 16), *(v19 + 40));
        v15 = *v14;
        v16 = v14[1];

        sub_218AD8210(__dst, v20);
        sub_218CB4214((v14 + 2), v20);
        v17 = sub_219505324(v15, v16, v25);
        sub_218F93518(__dst);
        sub_218CB40B0((v14 + 2));

        if (v17)
        {
          break;
        }
      }

LABEL_5:
      ++v10;
      v9 += 536;
      if (v6 == v10)
      {
        goto LABEL_15;
      }
    }

    v12 = 0;
LABEL_12:
    MEMORY[0x21CECC690](v12);
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    v7 = v10 + 1;
    sub_219BF5A54();
    v5 = v26;
    v8 = v18;
  }

  while (v6 - 1 != v10);
LABEL_15:

  v24[0] = v5;
  sub_219218FF4(0, &qword_280EE6A00, sub_218799754, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE3014();
}

uint64_t sub_219218220()
{
  type metadata accessor for SearchResponse.SearchResultsGroup(0);
  sub_21921898C(0);
  v0 = sub_219BE21E4();
  v1 = sub_219AD1F90(v0);

  return v1;
}

uint64_t sub_2192182A8()
{
  type metadata accessor for SearchResponse.SearchResultsGroup(0);
  sub_21921898C(0);
  v0 = sub_219BE21E4();
  v1 = off_2816F9380;
  type metadata accessor for ArticleSearchResultsInflater();
  v2 = v1(v0);

  return v2;
}

unint64_t sub_219218364(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >> 62)
  {
    v4 = result;
    v5 = sub_219BF7214();
    if (v5 < 0)
    {
      __break(1u);
    }

    v6 = v5;
    result = v4;
    if (!__CFADD__(v6, a2))
    {
      goto LABEL_3;
    }
  }

  else if (!__CFADD__(*((result & 0xFFFFFFFFFFFFFF8) + 0x10), a2))
  {
LABEL_3:
    sub_219218FF4(0, &qword_27CC17A40, sub_21921923C, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_219BE3014();
  }

  __break(1u);
  return result;
}

unint64_t sub_219218468(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, void, void))
{
  if (result >> 62)
  {
    v7 = a4;
    v8 = a5;
    v9 = a6;
    v10 = result;
    v11 = sub_219BF7214();
    if (v11 < 0)
    {
      __break(1u);
    }

    v12 = v11;
    result = v10;
    a6 = v9;
    a5 = v8;
    a4 = v7;
    if (!__CFADD__(v12, a2))
    {
      goto LABEL_3;
    }
  }

  else if (!__CFADD__(*((result & 0xFFFFFFFFFFFFFF8) + 0x10), a2))
  {
LABEL_3:
    a6(0, a4, a5, type metadata accessor for StreamingPage);
    swift_allocObject();

    return sub_219BE3014();
  }

  __break(1u);
  return result;
}

uint64_t *sub_219218584()
{
  v1 = *v0;
  sub_219218B74(v0 + qword_27CC17930, type metadata accessor for SearchResponse.SearchResultsGroup);
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_27CC17938));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t sub_219218630()
{
  sub_219218584();

  return swift_deallocClassInstance();
}

uint64_t sub_219218778()
{
  v1 = *v0 + qword_27CC17930;
  swift_beginAccess();
  result = *(v1 + 24);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219218800(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = a8(v12, v13, a7, v14);

  return v15;
}

void sub_2192188D0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186D6710(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21921898C(uint64_t a1)
{
  if (!qword_27CC179E0)
  {
    sub_2192189F4();
    sub_219218A48();
    v1 = sub_219BE21F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC179E0);
    }
  }
}

unint64_t sub_2192189F4()
{
  result = qword_27CC179E8;
  if (!qword_27CC179E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC179E8);
  }

  return result;
}

unint64_t sub_219218A48()
{
  result = qword_27CC179F0;
  if (!qword_27CC179F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC179F0);
  }

  return result;
}

uint64_t sub_219218B74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219218BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219218C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_219218D3C()
{
  result = qword_27CC17A10;
  if (!qword_27CC17A10)
  {
    sub_2186D0C48(255, &qword_27CC17A08, &type metadata for SearchResultItem, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17A10);
  }

  return result;
}

uint64_t sub_219218DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_219218E5C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2192188D0(255, a3, &qword_280E8E680, &protocolRef_FCTagProviding, a4);
    v5 = sub_219BE3114();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_219218EC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2192188D0(255, a3, &qword_280E8E260, &protocolRef_FCHeadlineProviding, a4);
    v5 = sub_219BE3114();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_219218F68()
{
  v1 = *(v0 + 16);
  v2 = off_2816F9380;
  type metadata accessor for ArticleSearchResultsInflater();
  return v2(v1);
}

void sub_219218FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219219058()
{
  result = qword_27CC0F840;
  if (!qword_27CC0F840)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC0F840);
  }

  return result;
}

void sub_219219290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for SearchResultsExpander(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_219219310(uint64_t a1)
{
  if (!qword_27CC1FC50)
  {
    type metadata accessor for SearchResponse.SearchResultsGroup(255);
    sub_2192193C0(&unk_27CC17A60, &unk_219C74120);
    sub_2192193C0(&unk_27CC1FC60, &unk_219C740F8);
    v1 = sub_219BE21F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1FC50);
    }
  }
}

uint64_t sub_2192193C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchResponse.SearchResultsGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_8Tm_2()
{
  v1 = (type metadata accessor for SearchResponse.SearchResultsGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[9];
  sub_21921898C(0);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

void sub_219219678(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = (a1 + 40);
    do
    {
      v7 = v5;
      v8 = v6[4];
      v9 = v6[5];
      v11 = *v6;
      v10 = v6[1];
      v12[0] = *(v6 - 1);
      v12[1] = v11;
      v12[2] = v10;
      v13 = *(v6 + 1);
      v14 = v8;
      v15 = v9;

      sub_2196E56E8(v12, a2);

      if (v2)
      {
        break;
      }

      v5 = v7 - 1;
      v6 += 7;
    }

    while (v7);
  }
}

uint64_t sub_21921975C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for PuzzleSettingsModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for PuzzleSettingsModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_21921980C()
{
  type metadata accessor for PuzzleSettingsViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC17A70, &protocol descriptor for PuzzleSettingsStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC17A78, &protocol descriptor for PuzzleSettingsRouterType, 1);
  sub_219BE2914();
  type metadata accessor for PuzzleSettingsRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC17A80, &protocol descriptor for PuzzleSettingsEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC17A88, &protocol descriptor for PuzzleSettingsInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC17A90, &protocol descriptor for PuzzleSettingsTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_27CC17A98, &protocol descriptor for PuzzleSettingsDataManagerType, 0);
  sub_219BE2914();

  return result;
}

char *sub_219219A58(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17A70, &protocol descriptor for PuzzleSettingsStylerType, 1);
  result = sub_219BE1E34();
  if (!v37)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17A80, &protocol descriptor for PuzzleSettingsEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v34;
  if (!v34)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v26 = v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17AA8, MEMORY[0x277D34510], 0);
  result = sub_219BE1E34();
  v4 = v32;
  if (v32)
  {
    v5 = v33;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
    v25 = &v25;
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for PuzzleSettingsStyler();
    v30 = v12;
    v31 = &off_282A4B3A0;
    v29[0] = v11;
    v13 = type metadata accessor for PuzzleSettingsViewController();
    v14 = objc_allocWithZone(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    v16 = MEMORY[0x28223BE20](v15);
    v18 = (&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v28[3] = v12;
    v28[4] = &off_282A4B3A0;
    v28[0] = v20;
    *&v14[OBJC_IVAR____TtC7NewsUI228PuzzleSettingsViewController____lazy_storage___dataSource] = 0;
    *&v14[OBJC_IVAR____TtC7NewsUI228PuzzleSettingsViewController____lazy_storage___collectionView] = 0;
    sub_218718690(v28, &v14[OBJC_IVAR____TtC7NewsUI228PuzzleSettingsViewController_styler]);
    v21 = &v14[OBJC_IVAR____TtC7NewsUI228PuzzleSettingsViewController_eventHandler];
    v22 = v26;
    *v21 = v3;
    *(v21 + 1) = v22;
    v23 = &v14[OBJC_IVAR____TtC7NewsUI228PuzzleSettingsViewController_viewProvider];
    *v23 = v4;
    *(v23 + 1) = v5;
    v27.receiver = v14;
    v27.super_class = v13;
    v24 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0, v25);
    __swift_destroy_boxed_opaque_existential_1(v28);
    *(*(v24 + OBJC_IVAR____TtC7NewsUI228PuzzleSettingsViewController_eventHandler) + 24) = &off_282AA37B0;
    swift_unknownObjectWeakAssign();
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return v24;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219219DDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v20[3] = v10;
    v11 = sub_218725FE8();
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for PuzzleSettingsStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A4B3A0;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21921A00C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for PuzzleSettingsRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_282A8A3B8;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21921A0C8(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleSettingsViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_21921A148@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17A88, &protocol descriptor for PuzzleSettingsInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17A78, &protocol descriptor for PuzzleSettingsRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17A90, &protocol descriptor for PuzzleSettingsTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_21921A6F0(v5, v6, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A3D508;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_21921A3F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC17A98, &protocol descriptor for PuzzleSettingsDataManagerType, 0);
  result = sub_219BE1E34();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21921A68C();
    result = sub_219BE1E24();
    if (result)
    {
      v5 = result;
      type metadata accessor for PuzzleSettingsInteractor();
      v6 = swift_allocObject();
      v6[3] = 0;
      swift_unknownObjectWeakInit();
      v6[4] = v7;
      v6[5] = v8;
      v6[6] = v5;
      *(v7 + 24) = &off_282A97500;
      result = swift_unknownObjectWeakAssign();
      *a2 = v6;
      a2[1] = &off_282A97510;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21921A510@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for PuzzleSettingsTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A649F8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21921A598(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1E34();
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    v5 = v8[1];
    type metadata accessor for PuzzleSettingsDataManager();
    v6 = swift_allocObject();
    v6[3] = 0;
    swift_unknownObjectWeakInit();
    v6[4] = v5;
    v6[5] = v3;
    v6[6] = v4;
    v8[0] = MEMORY[0x277D84F98];

    sub_219219678(v7, v8);

    v6[7] = v8[0];
    *a2 = v6;
    a2[1] = &off_282A42298;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21921A68C()
{
  result = qword_280E8E4D0;
  if (!qword_280E8E4D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E4D0);
  }

  return result;
}

void *sub_21921A6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for PuzzleSettingsRouter();
  v34[3] = v9;
  v34[4] = &off_282A8A3B8;
  v34[0] = a3;
  v32 = v8;
  v33 = &off_282A649F8;
  v31[0] = a4;
  type metadata accessor for PuzzleSettingsEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v29 = v9;
  v30 = &off_282A8A3B8;
  v27 = &off_282A649F8;
  *&v28 = v21;
  v26 = v8;
  *&v25 = v22;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v28, (v10 + 6));
  sub_2186CB1F0(&v25, (v10 + 11));
  *(a1 + 24) = &off_282A3D4F8;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v10;
}

uint64_t sub_21921A94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  sub_21921B7CC(0, &qword_280EE82C8, MEMORY[0x277D2E848]);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = (&v66 - v4);
  v71 = sub_219BE0824();
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v66 = (&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21921B734(0);
  v7 = v6;
  v77 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = sub_219BDF0E4();
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21921B7CC(0, &qword_280EE85D8, MEMORY[0x277D2DF60]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v66 - v12;
  v14 = sub_219BDFB64();
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x28223BE20](v14);
  v72 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D620D0(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v24 = sub_219BDCC14();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v66 - v27;
  (*(v25 + 16))(&v66 - v27, v79, v24, v26);
  if (swift_dynamicCast())
  {
    v79 = v25;
    (*(v18 + 32))(v20, v23, v17);
    v29 = sub_219BDCC04();
    v30 = sub_219BDD084();
    v77 = v18;
    v34 = v33;
    v35 = v30;

    sub_21921B820(&unk_280EE85E0, 255, MEMORY[0x277D2DF60], MEMORY[0x277D2DF68]);
    v36 = v75;
    v71 = v35;
    v76 = v34;
    sub_219BE1974();
    v43 = v74;
    (*(v74 + 56))(v13, 0, 1, v36);
    (*(v43 + 32))();
    v44 = v78;
    v45 = v78[5];
    v67 = v78[6];
    v66 = __swift_project_boxed_opaque_existential_1(v78 + 2, v45);
    v46 = v69;
    sub_219BDFB24();
    v47 = sub_219BDF0D4();
    v49 = v48;
    v68 = v70[1];
    (v68)(v46, v73);
    v67[1](v47, v49, v45);

    v70 = __swift_project_boxed_opaque_existential_1(v44 + 8, v44[11]);
    sub_21871D24C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    v51 = v72;
    sub_219BDFB24();
    v52 = sub_219BDF0D4();
    v54 = v53;
    (v68)(v46, v73);
    *(inited + 32) = v52;
    *(inited + 40) = v54;
    v55 = *MEMORY[0x277D30BD0];
    v56 = swift_allocObject();
    swift_weakInit();

    sub_218B6434C(inited, v55, sub_21921B8C4, v56);
    sub_2186C6190(v71, v76);

    swift_setDeallocating();
    sub_2189AD3D8(inited + 32);
    (*(v74 + 8))(v51, v75);
    (*(v77 + 8))(v20, v17);

LABEL_5:
    v25 = v79;
    return (*(v25 + 8))(v28, v24);
  }

  if (swift_dynamicCast())
  {
    v31 = v7;
    v79 = v25;
    (*(v77 + 32))();
    v32 = sub_219BDCC04();
    v37 = sub_219BDD084();
    v75 = v31;
    v39 = v38;

    v40 = v78;
    sub_21921B820(&qword_280EE82D0, 255, MEMORY[0x277D2E848], MEMORY[0x277D2E850]);
    v41 = v67;
    v42 = v71;
    v74 = v39;
    sub_219BE1974();
    v57 = v68;
    (*(v68 + 56))(v41, 0, 1, v42);
    v58 = v66;
    (*(v57 + 32))(v66, v41, v42);
    v60 = v40[5];
    v59 = v40[6];
    v78 = __swift_project_boxed_opaque_existential_1(v40 + 2, v60);
    v61 = v69;
    sub_219BE0814();
    v62 = sub_219BDF0D4();
    v64 = v63;
    (v70[1])(v61, v73);
    (*(v59 + 24))(v62, v64, v60, v59);

    sub_2186C6190(v37, v74);
    (*(v57 + 8))(v58, v71);
    (*(v77 + 8))(v76, v75);
    goto LABEL_5;
  }

  return (*(v25 + 8))(v28, v24);
}

void sub_21921B3CC(unint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((a2 & 1) == 0)
    {
      if (a1 >> 62)
      {
        v16 = Strong;
        v17 = sub_219BF7214();
        Strong = v16;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = Strong;
          v7 = MEMORY[0x21CECE0F0](0, a1);
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v6 = Strong;
          v7 = *(a1 + 32);
        }

        v8 = *(v7 + 16);
        swift_unknownObjectRetain();

        v9 = [v8 clusterID];
        swift_unknownObjectRelease();
        if (v9)
        {
          v10 = v6;
          v11 = sub_219BF5414();
          v13 = v12;

          v14 = v10[5];
          v15 = v10[6];
          __swift_project_boxed_opaque_existential_1(v10 + 2, v14);
          (*(v15 + 16))(v11, v13, v14, v15);
        }
      }
    }
  }
}

uint64_t sub_21921B548()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_21921B734(uint64_t a1)
{
  if (!qword_280EE8F78)
  {
    sub_219BE0834();
    sub_21921B820(&qword_280EE82C0, 255, MEMORY[0x277D2E858], MEMORY[0x277D2E840]);
    v1 = sub_219BDCC14();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8F78);
    }
  }
}

void sub_21921B7CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21921B820(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21921B868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21921B7CC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21921B8F4()
{
  sub_21921C0CC(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v1 = sub_219BE2644();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C0B8C0;
  v6 = v5 + v4;
  strcpy(v6, "overrideSSIDs");
  *(v6 + 14) = -4864;
  v7 = *(v2 + 104);
  (v7)(v6, *MEMORY[0x277D6CC80], v1);
  v8 = (v6 + v3);
  *v8 = 0x6E6F697469646461;
  v8[1] = 0xEF73444953536C61;
  v7();
  v9 = (v6 + 2 * v3);
  *v9 = 0xD000000000000010;
  v9[1] = 0x8000000219D11880;
  v7();
  sub_219897824(MEMORY[0x277D84F90]);
  v10 = sub_219BE2684();

  *(v0 + 16) = v10;
  return v0;
}

unint64_t sub_21921BAF8()
{
  result = qword_280EB9850;
  if (!qword_280EB9850)
  {
    type metadata accessor for UserSegmentationURLHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9850);
  }

  return result;
}

uint64_t sub_21921BB4C()
{
  v0 = sub_219BE22B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE22F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NFInternalBuild();
  if (result)
  {
    v36 = result;
    sub_21921C0CC(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
    sub_219BE2594();
    sub_219BE22D4();
    v9 = *(v5 + 8);
    v9(v7, v4);
    v31[1] = sub_219BE22C4();
    v35 = v10;
    v32 = *(v1 + 8);
    v33 = v0;
    v32(v3, v0);
    sub_219BE2594();
    sub_219BE22D4();
    v9(v7, v4);
    v31[2] = sub_219BE22C4();
    v34 = v11;
    v12 = v0;
    v13 = v32;
    v32(v3, v12);
    v14 = v35;
    sub_219BE2594();
    sub_219BE22D4();
    v9(v7, v4);
    sub_219BE22C4();
    v16 = v15;
    v13(v3, v33);
    v17 = v34;
    v18 = NewsCoreUserDefaults();
    v19 = v18;
    if (v14 || v17 || v16)
    {
      if (v14)
      {
        v24 = sub_219BF53D4();
      }

      else
      {
        v24 = 0;
      }

      [v19 setObject:v24 forKey:*MEMORY[0x277D30D30]];

      swift_unknownObjectRelease();
      v25 = NewsCoreUserDefaults();
      if (v17)
      {
        v26 = sub_219BF53D4();
      }

      else
      {
        v26 = 0;
      }

      [v25 setObject:v26 forKey:*MEMORY[0x277D30D28]];

      swift_unknownObjectRelease();
      v27 = NewsCoreUserDefaults();
      if (v16)
      {
        v28 = sub_219BF53D4();
      }

      else
      {
        v28 = 0;
      }

      [v27 setObject:v28 forKey:*MEMORY[0x277D30D08]];

      swift_unknownObjectRelease();
      v29 = NewsCoreUserDefaults();
      [v29 setBool:1 forKey:*MEMORY[0x277D30D10]];

      v23 = NewsCoreUserDefaults();
      [v23 setObject:*MEMORY[0x277D30D40] forKey:*MEMORY[0x277D30D00]];
    }

    else
    {
      [v18 setObject:*MEMORY[0x277D30D38] forKey:*MEMORY[0x277D30D00]];

      v20 = NewsCoreUserDefaults();
      [v20 setURL:0 forKey:*MEMORY[0x277D30D30]];

      v21 = NewsCoreUserDefaults();
      [v21 setURL:0 forKey:*MEMORY[0x277D30D28]];

      v22 = NewsCoreUserDefaults();
      [v22 setBool:0 forKey:*MEMORY[0x277D30D08]];

      v23 = NewsCoreUserDefaults();
      [v23 setBool:0 forKey:*MEMORY[0x277D30D10]];
    }

    v30 = NewsCoreUserDefaults();
    [v30 setBool:1 forKey:*MEMORY[0x277D30D20]];

    return v36;
  }

  return result;
}

void sub_21921C0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21921C130()
{
  v0 = sub_219BEF0F4();
  v1 = v0;
  v9 = MEMORY[0x277D84FA0];
  if (v0 >> 62)
  {
LABEL_14:
    v2 = sub_219BF7214();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x21CECE0F0](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v6 = v9;
            goto LABEL_16;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v4 = *(v1 + 8 * v3 + 32);

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_11;
          }
        }

        v8 = v4;
        sub_21921C268(&v9, &v8);

        ++v3;
        if (v5 == v2)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v6 = MEMORY[0x277D84FA0];
LABEL_16:

  return v6;
}

void sub_21921C268(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for NewspaperMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC(0);
  v78 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v77 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_219BF1934();
  v11 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v64 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v54 - v14;
  v75 = type metadata accessor for CuratedMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v75);
  v62 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v54 - v17;
  sub_2186ECF58(0);
  v74 = v18;
  MEMORY[0x28223BE20](v18);
  v73 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*a2 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_contentConfig);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v21 + 32;
    v60 = (v19 + 16);
    v70 = (v11 + 16);
    v69 = (v11 + 8);
    v59 = (v19 + 8);
    v58 = (v9 + 16);
    v57 = (v9 + 8);
    v65 = v21;
    v71 = v21 + 32;
    v72 = v22;
    v68 = v2;
    v55 = a1;
    v66 = v7;
    v67 = v5;
    do
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        return;
      }

      v31 = *(v24 + 8 * v23);
      if ((v31 >> 60) >= 0xC)
      {
        if (v31 >> 60 == 12)
        {
          v43 = v31 & 0xFFFFFFFFFFFFFFFLL;
          v44 = swift_projectBox();
          (*v58)(v77, v44, v78);
          v80 = v43;

          sub_219BEDD14();
          v45 = *&v7[*(v5 + 24)];

          sub_21882F79C(v7, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
          v46 = *(v45 + 16);
          if (v46)
          {
            v79 = MEMORY[0x277D84F90];
            v56 = v45;
            sub_21870B65C(0, v46, 0);
            v47 = v79;
            v48 = (v56 + 40);
            do
            {
              v50 = *(v48 - 1);
              v49 = *v48;
              v79 = v47;
              v52 = *(v47 + 16);
              v51 = *(v47 + 24);

              if (v52 >= v51 >> 1)
              {
                sub_21870B65C((v51 > 1), v52 + 1, 1);
                v47 = v79;
              }

              *(v47 + 16) = v52 + 1;
              v53 = v47 + 16 * v52;
              *(v53 + 32) = v50;
              *(v53 + 40) = v49;
              v48 += 2;
              --v46;
            }

            while (v46);

            v5 = v67;
            a1 = v55;
            v21 = v65;
            v7 = v66;
          }

          else
          {

            v47 = MEMORY[0x277D84F90];
          }

          sub_218DDBE70(v47);

          (*v57)(v77, v78);
        }

        else
        {
          if (v31 >> 60 != 13)
          {
            goto LABEL_5;
          }

          v32 = v31 & 0xFFFFFFFFFFFFFFFLL;
          v33 = swift_projectBox();
          (*v60)(v73, v33, v74);
          v80 = v32;

          v34 = v61;
          sub_219BEDD14();
          v35 = *v70;
          v36 = v63;
          v37 = a1;
          v38 = v76;
          (*v70)(v63, v34 + *(v75 + 32), v76);
          sub_21882F79C(v34, type metadata accessor for CuratedMagazineFeedGroupConfigData);
          v39 = sub_219BF1784();
          v41 = v40;
          v42 = *v69;
          (*v69)(v36, v38);
          if (v41)
          {
            sub_219497B60(&v79, v39, v41);
          }

          v25 = v62;
          v27 = v73;
          v26 = v74;
          sub_219BEDD14();
          v28 = v76;
          v29 = v64;
          v35(v64, v25 + *(v75 + 32), v76);
          sub_21882F79C(v25, type metadata accessor for CuratedMagazineFeedGroupConfigData);
          v30 = sub_219BF1754();
          v42(v29, v28);
          sub_218DDBE70(v30);

          (*v59)(v27, v26);
          a1 = v37;
          v5 = v67;
          v21 = v65;
          v7 = v66;
        }

        v24 = v71;
        v22 = v72;
      }

LABEL_5:
      ++v23;
    }

    while (v23 != v22);
  }
}

uint64_t sub_21921C8F8(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v2 = type metadata accessor for CuratedMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v2);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF1904();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F9000(0, &qword_280E92498, MEMORY[0x277D31E28]);
  sub_219BEDC54();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v24 = v42;
      sub_21921D6D8(v20, v42, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      sub_219BED874();
      v25 = sub_219BF1874();
      (*(v45 + 8))(v11, v46);
      if (v25)
      {
        v26 = [v25 identifier];
        v27 = sub_219BF5414();
        v29 = v28;

        sub_219497B60(&v47, v27, v29);
      }

      v30 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_13;
    case 6u:
      sub_21921D6D8(v20, v17, type metadata accessor for NewIssueMagazineFeedGroup);
      sub_219BED874();
      v31 = sub_219BF1874();
      (*(v45 + 8))(v14, v46);
      if (v31)
      {
        v32 = [v31 identifier];
        v33 = sub_219BF5414();
        v35 = v34;

        sub_219497B60(&v47, v33, v35);
      }

      v21 = type metadata accessor for NewIssueMagazineFeedGroup;
      v22 = v17;
      break;
    case 0xDu:
      v24 = v43;
      sub_21921D6D8(v20, v43, type metadata accessor for CuratedMagazineFeedGroup);
      sub_219BED874();
      v36 = sub_219BF1874();
      (*(v45 + 8))(v8, v46);
      if (v36)
      {
        v37 = [v36 identifier];
        v38 = sub_219BF5414();
        v40 = v39;

        sub_219497B60(&v47, v38, v40);
      }

      v30 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_13:
      v21 = v30;
      v22 = v24;
      break;
    default:
      v21 = type metadata accessor for MagazineFeedGroup;
      v22 = v20;
      break;
  }

  return sub_21882F79C(v22, v21);
}

uint64_t sub_21921CE30@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  if (a2 && (sub_219BEF0B4(), v7 = *(v14 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_subscriptionController), , v8 = sub_219BF53D4(), v9 = [v7 hasMutedSubscriptionForTagID_], v7, v8, v9))
  {
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000038, 0x8000000219CF7F50);
    MEMORY[0x21CECC330](a1, a2);
    *a3 = 0;
    a3[1] = 0xE000000000000000;
    v10 = MEMORY[0x277D328F0];
  }

  else
  {
    v10 = MEMORY[0x277D328E8];
  }

  v11 = *v10;
  v12 = sub_219BEFBB4();
  return (*(*(v12 - 8) + 104))(a3, v11, v12);
}

uint64_t sub_21921CF80()
{
  sub_2186F9000(0, &qword_280E919C0, MEMORY[0x277D321A0]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_280F61818);
  __swift_project_value_buffer(v1, qword_280F61818);
  type metadata accessor for MagazineFeedServiceConfig(0);
  sub_2186EC830(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
  return sub_219BEE974();
}

uint64_t sub_21921D080(uint64_t a1)
{
  result = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84FA0];
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2186F9000(0, &qword_280E92498, MEMORY[0x277D31E28]);
    v5 = *(v4 - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      sub_21921C8F8(v6, &v8);
      v6 += v7;
      --v3;
    }

    while (v3);
    return v8;
  }

  return result;
}

uint64_t sub_21921D158(uint64_t a1)
{
  v34 = type metadata accessor for TopicMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_219BF1904();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CuratedMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F9000(0, &qword_280E92498, MEMORY[0x277D31E28]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  result = MEMORY[0x277D84F90];
  v44 = a1;
  v45 = MEMORY[0x277D84F90];
  v18 = *(a1 + 16);
  if (!v18)
  {
    return result;
  }

  v19 = 0;
  v43 = v13 + 16;
  v39 = v8;
  v40 = (v5 + 8);
  v20 = (v13 + 8);
  v38 = v18;
  do
  {
    v32 = result;
    for (i = v19; ; ++i)
    {
      if (i >= v18)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      result = (*(v13 + 16))(v16, v44 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * i, v12, v14);
      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      sub_219BEDC54();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 9)
      {
        break;
      }

      if (EnumCaseMultiPayload >= 9)
      {
        v23 = v33;
        sub_21921D6D8(v10, v33, type metadata accessor for TopicMagazineFeedGroup);
        v31 = v41;
        sub_219BED874();
        v25 = sub_219BF1844();
        (*v40)(v31, v42);
        v26 = type metadata accessor for TopicMagazineFeedGroup;
        goto LABEL_15;
      }

LABEL_5:
      sub_21882F79C(v10, type metadata accessor for MagazineFeedGroup);
      result = (*v20)(v16, v12);
LABEL_6:
      if (v19 == v18)
      {
        return v32;
      }
    }

    if ((EnumCaseMultiPayload - 10) < 2)
    {
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload != 12)
    {
      v27 = v35;
      sub_21921D6D8(v10, v35, type metadata accessor for CuratedMagazineFeedGroup);
      v28 = v41;
      sub_219BED874();
      v25 = sub_219BF1844();
      (*v40)(v28, v42);
      v29 = type metadata accessor for CuratedMagazineFeedGroup;
      v30 = v27;
      goto LABEL_16;
    }

    v23 = v37;
    sub_21921D6D8(v10, v37, type metadata accessor for NewspaperMagazineFeedGroup);
    v24 = v41;
    sub_219BED874();
    v25 = sub_219BF1844();
    (*v40)(v24, v42);
    v26 = type metadata accessor for NewspaperMagazineFeedGroup;
LABEL_15:
    v29 = v26;
    v30 = v23;
LABEL_16:
    sub_21882F79C(v30, v29);
    result = (*v20)(v16, v12);
    v18 = v38;
    if (!v25)
    {
      goto LABEL_6;
    }

    MEMORY[0x21CECC690](result);
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_219BF5A14();
    }

    sub_219BF5A54();
    result = v45;
  }

  while (v19 != v18);
  return result;
}

uint64_t sub_21921D6D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21921D740(unint64_t a1, uint64_t a2)
{
  sub_219BF7314();

  v4 = MEMORY[0x21CECC6D0](a2, MEMORY[0x277D837D0]);
  MEMORY[0x21CECC330](v4);

  MEMORY[0x21CECC330](0x65766F6D6572202CLL, 0xEA00000000003D64);
  if (a1 >> 62)
  {
    v5 = sub_219BF7214();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_12:
    v17 = MEMORY[0x21CECC6D0](v6, MEMORY[0x277D837D0]);
    v19 = v18;

    MEMORY[0x21CECC330](v17, v19);

    return 0x3D64656464617BLL;
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CECE0F0](v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v10 = [v9 identifier];
      v11 = sub_219BF5414();
      v13 = v12;
      swift_unknownObjectRelease();

      v15 = *(v20 + 16);
      v14 = *(v20 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21870B65C((v14 > 1), v15 + 1, 1);
      }

      ++v8;
      *(v20 + 16) = v15 + 1;
      v16 = v20 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v5 != v8);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

BOOL sub_21921D94C(id *a1, void *a2)
{
  v3 = [*a1 UMCCanonicalID];
  result = 0;
  if (v3)
  {
    v4 = v3;
    v5 = sub_219BF5414();
    v7 = v6;

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v8 = sub_219BF4714();
    LOBYTE(v4) = sub_2188537B8(v5, v7, v8);

    if (v4)
    {
      return 1;
    }
  }

  return result;
}

void sub_21921DA0C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if ((sub_2188537B8(*a1, v7, a2) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v8 = sub_219BF46F4();
    if (*(v8 + 16) && (v9 = sub_21870F700(v6, v7), (v10 & 1) != 0) || (, __swift_project_boxed_opaque_existential_1(a3, a3[3]), v8 = sub_219BF4704(), *(v8 + 16)) && (v9 = sub_21870F700(v6, v7), (v11 & 1) != 0))
    {
      v12 = (*(v8 + 56) + 16 * v9);
      v14 = *v12;
      v13 = v12[1];

      *a4 = v14;
      a4[1] = v13;
      return;
    }
  }

  *a4 = 0;
  a4[1] = 0;
}

unint64_t sub_21921DB20(unint64_t a1, void *a2, uint64_t a3, int a4)
{
  LODWORD(v51) = a4;
  v48 = a3;

  v7 = sub_218845F78(v6);

  v50 = a2;
  v55 = a2;
  v8 = sub_2195EB294(sub_21921DFEC, v54, a1);
  v9 = v8;
  v49 = 0;
  if (v8 >> 62)
  {
LABEL_58:
    v53 = v9 & 0xFFFFFFFFFFFFFF8;
    v10 = sub_219BF7214();
  }

  else
  {
    v53 = v8 & 0xFFFFFFFFFFFFFF8;
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v9 & 0xC000000000000001;
  v12 = MEMORY[0x277D84F90];
  v52 = v9;
  if (v10)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    while (2)
    {
      v15 = v13;
      while (1)
      {
        if (v11)
        {
          v16 = MEMORY[0x21CECE0F0](v15, v9);
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v15 >= *(v53 + 16))
          {
            goto LABEL_56;
          }

          v16 = *(v9 + 8 * v15 + 32);
          swift_unknownObjectRetain();
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }
        }

        v17 = [v16 UMCCanonicalID];
        if (v17)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v15;
        v9 = v52;
        if (v13 == v10)
        {
          goto LABEL_22;
        }
      }

      v18 = v17;
      v19 = sub_219BF5414();
      v47 = v20;

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_218840D24(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = sub_218840D24((v21 > 1), v22 + 1, 1, v14);
      }

      *(v14 + 2) = v22 + 1;
      v23 = &v14[16 * v22];
      v24 = v47;
      *(v23 + 4) = v19;
      *(v23 + 5) = v24;
      v9 = v52;
      if (v13 != v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_22:
  v25 = sub_218845F78(v14);

  MEMORY[0x28223BE20](v26);
  v46[2] = v25;
  v46[3] = v50;
  sub_218F8C890(sub_21921E00C, v46, v7);
  v28 = v27;

  if (v51)
  {

    v12 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

  v56 = v12;
  if (!v10)
  {
    goto LABEL_48;
  }

  v49 = v28;
  v29 = v9;
  v9 = 0;
  v51 = v29 + 32;
  v30 = v7 + 56;
  while (v11)
  {
    v31 = MEMORY[0x21CECE0F0](v9, v52);
    v32 = __OFADD__(v9++, 1);
    if (v32)
    {
      goto LABEL_46;
    }

LABEL_31:
    v33 = [v31 UMCCanonicalID];
    if (v33)
    {
      v34 = v33;
      v35 = sub_219BF5414();
      v37 = v36;

      if (*(v7 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v38 = sub_219BF7AE4(), v39 = -1 << *(v7 + 32), v40 = v38 & ~v39, ((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0))
      {
        v41 = ~v39;
        while (1)
        {
          v42 = (*(v7 + 48) + 16 * v40);
          v43 = *v42 == v35 && v42[1] == v37;
          if (v43 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          if (((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
LABEL_26:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (v9 == v10)
    {
      goto LABEL_47;
    }
  }

  if (v9 >= *(v53 + 16))
  {
    goto LABEL_57;
  }

  v31 = *(v51 + 8 * v9);
  swift_unknownObjectRetain();
  v32 = __OFADD__(v9++, 1);
  if (!v32)
  {
    goto LABEL_31;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  v12 = v56;
  v28 = v49;
LABEL_48:

LABEL_49:
  if (v12 >> 62)
  {
    v44 = sub_219BF7214();
  }

  else
  {
    v44 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_21921E028(v48);
  if (!v44 && !*(v28 + 16))
  {

    v12 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  return v12;
}

uint64_t sub_21921E028(uint64_t a1)
{
  v2 = type metadata accessor for SportsSyncFavoritesFetchResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21921E0A4()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD88E0);
  __swift_project_value_buffer(v0, qword_27CCD88E0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534(0);
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_21921E2FC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD88F8);
  __swift_project_value_buffer(v0, qword_27CCD88F8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_21921E4B0()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8910);
  __swift_project_value_buffer(v0, qword_27CCD8910);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534(0);
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_21921E70C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8928);
  __swift_project_value_buffer(v0, qword_27CCD8928);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_21921E8BC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8940);
  __swift_project_value_buffer(v0, qword_27CCD8940);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

void ChannelPickerDetailModule.createViewController(model:)(uint64_t a1)
{
  v3 = type metadata accessor for ChannelPickerElementModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for ChannelPickerDetailViewController(0);
  sub_218980A74(a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  sub_218FEA648(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  v9 = sub_219BE1E04();

  if (v9)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21921ECC4(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelPickerElementModel(0);
  return sub_219BE1BA4();
}

uint64_t sub_21921ED64(void *a1)
{
  v3 = *(type metadata accessor for ChannelPickerElementModel(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_21921ECC4(a1, v4, v5);
}

uint64_t ChannelPickerDetailModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t ChannelPickerDetailModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_21921EEFC(uint64_t a1)
{
  result = type metadata accessor for AudioFeedGapLocation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21921EFC0(uint64_t a1)
{
  result = type metadata accessor for AudioFeedFailedData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21921F02C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v71 = a3;
  v72 = a2;
  v5 = sub_219BE6DF4();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21921FA54(0, &qword_280EE4B18, MEMORY[0x277D6DF88]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = (&v53 - v10);
  sub_218AB76D4(0);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v64);
  v60 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for AudioFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v59);
  v68 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21921FA54(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v17 = v16;
  v69 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  sub_21921FC28(0, &qword_280EE57C0, sub_218953904, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v53 - v21;
  sub_218953904(0);
  v24 = v23;
  MEMORY[0x28223BE20](v23);
  v62 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v53 - v27;
  v61 = v3;
  v73 = v17;
  v30 = v29;
  v70 = a1;
  sub_219BEB244();
  if ((*(v30 + 48))(v22, 1, v24) == 1)
  {
    sub_21921FB48(v22);
    sub_21921FBD4();
    *v11 = swift_allocError();
    (*(v9 + 104))(v11, *MEMORY[0x277D6DF68], v8);
    v72(v11);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v56 = v11;
    v57 = v9;
    v58 = v8;
    (*(v30 + 32))(v28, v22, v24);
    (*(v69 + 16))(v19, v70, v73);
    swift_storeEnumTagMultiPayload();
    sub_21921FC28(0, &qword_280E8BFE0, sub_218AB7640, MEMORY[0x277D84560]);
    v55 = v24;
    sub_218AB7640(0);
    v53 = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09BA0;
    sub_2186FB36C(0);
    v35 = *(v34 + 48);
    v36 = type metadata accessor for AudioFeedFailedData(0);
    v37 = v60;
    sub_219150184(v61 + *(v36 + 20), v60);
    v54 = v19;
    v61 = v30;
    v38 = v28;
    if (qword_27CC082B8 != -1)
    {
      swift_once();
    }

    v39 = sub_219BF1584();
    v40 = __swift_project_value_buffer(v39, qword_27CCD87C0);
    (*(*(v39 - 8) + 16))(v37 + v35, v40, v39);
    swift_storeEnumTagMultiPayload();
    sub_2186F6B30(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
    sub_219BE5FB4();
    v41 = sub_2186F6B30(&qword_280EE5CB8, sub_218AB7640, MEMORY[0x277D6D408]);
    v42 = sub_2186F6B30(&unk_280EE5CC0, sub_218AB7640, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9150](v33, v53, v41, v42);
    sub_2186F6B30(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
    v43 = v62;
    sub_219BE6924();
    v44 = v54;
    sub_219BEB234();
    v45 = *MEMORY[0x277D6D868];
    v47 = v66;
    v46 = v67;
    v48 = *(v66 + 104);
    v68 = v38;
    v49 = v65;
    v48(v65, v45, v67);
    sub_2186F6B30(&qword_280EBC458, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23ED4);
    v50 = v56;
    sub_219BE85E4();
    (*(v47 + 8))(v49, v46);
    v72(v50);
    (*(v57 + 8))(v50, v58);
    v51 = *(v61 + 8);
    v52 = v55;
    v51(v43, v55);
    (*(v69 + 8))(v44, v73);
    return (v51)(v68, v52);
  }
}

uint64_t sub_21921F910(uint64_t a1)
{
  v2 = sub_2186F6B30(&qword_27CC110F8, type metadata accessor for AudioFeedFailedBlueprintModifier, &unk_219C66D4C);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_21921FA54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_2186F6B30(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
    v8[3] = sub_2186F6B30(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21921FB48(uint64_t a1)
{
  sub_21921FC28(0, &qword_280EE57C0, sub_218953904, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21921FBD4()
{
  result = qword_27CC17AD8;
  if (!qword_27CC17AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17AD8);
  }

  return result;
}

void sub_21921FC28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21921FCA0()
{
  result = qword_27CC17AE0;
  if (!qword_27CC17AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17AE0);
  }

  return result;
}

uint64_t sub_21921FCF4(uint64_t a1, uint64_t a2)
{
  sub_2186E5834(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v2 + 32) appConfiguration];
  if (qword_280EE9738 != -1)
  {
    swift_once();
  }

  if ((sub_219BDC834() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    sub_219162EBC();
LABEL_10:
    type metadata accessor for AudioHistoryFeedConfigFetchResult(0);

    sub_219BE3204();

    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = v13;

    swift_unknownObjectRetain();
    v20 = sub_219BE2E54();
    type metadata accessor for AudioHistoryFeedServiceConfig(0);
    v16 = sub_219BE2F74();

    swift_unknownObjectRelease();

    return v16;
  }

  if (qword_27CC08160 != -1)
  {
    swift_once();
  }

  sub_2187005E0(&qword_27CC17AE8, v14, type metadata accessor for AudioHistoryFeedServiceConfigFetcher, &unk_219C66EB0);
  sub_219BDC7D4();
  sub_219BDB914();

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v12, v7, v8);
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    v17 = off_282A613E0;
    v18 = type metadata accessor for AudioHistoryFeedConfigManager();
    v17(v12, v18);
    (*(v9 + 8))(v12, v8);
    goto LABEL_10;
  }

  sub_218838478(v7);
  sub_219220454();
  swift_allocError();
  *v15 = 0;
  sub_2186E5834(0, &qword_27CC17AF8, type metadata accessor for AudioHistoryFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v16 = sub_219BE2FF4();
  swift_unknownObjectRelease();
  return v16;
}

double sub_219220170@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v10 = sub_219BEEA84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AudioHistoryFeedContentConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192204A8(a1, v16);
  v17 = *(a1 + *(type metadata accessor for AudioHistoryFeedConfigFetchResult(0) + 20));
  (*(v11 + 104))(v13, *MEMORY[0x277D32220], v10);
  *a5 = a2;
  *(a5 + 1) = a3;
  v18 = type metadata accessor for AudioHistoryFeedServiceConfig(0);
  sub_2192204A8(v16, &a5[v18[5]]);
  *&a5[v18[6]] = v17;
  *&a5[v18[7]] = a4;
  (*(v11 + 16))(&a5[v18[9]], v13, v10);
  v19 = v17;
  swift_unknownObjectRetain();

  v20 = [a4 autoRefreshMinimumInterval];
  (*(v11 + 8))(v13, v10);
  sub_21922050C(v16);
  result = v20;
  *&a5[v18[8]] = v20;
  return result;
}

unint64_t sub_219220454()
{
  result = qword_27CC17AF0;
  if (!qword_27CC17AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17AF0);
  }

  return result;
}

uint64_t sub_2192204A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedContentConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21922050C(uint64_t a1)
{
  v2 = type metadata accessor for AudioHistoryFeedContentConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21922057C()
{
  result = qword_27CC17B00;
  if (!qword_27CC17B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17B00);
  }

  return result;
}

uint64_t type metadata accessor for AudioHistoryFeedRouteModel(uint64_t a1)
{
  result = qword_27CC17B10;
  if (!qword_27CC17B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21922061C(uint64_t a1)
{
  result = sub_219BDD944();
  if (v2 <= 0x3F)
  {
    result = sub_218731D50();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_219220690()
{
  sub_219BE08A4();
  sub_218806380(&qword_280EE82B8, MEMORY[0x277D2E8A8], MEMORY[0x277D2E8A0]);
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_218806FD0(v1);
}

void sub_219220728()
{
  sub_2186C66AC();
  v1 = sub_219BF6F64();
  v0 = sub_219BF6214();
  sub_219BE5314("Sports session ended", 20, 2, &dword_2186C1000, v1, v0, MEMORY[0x277D84F90]);
}

uint64_t sub_219220870()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDCDE4();
  sub_219BDD154();

  sub_219BDBD24();
  sub_219BDCD94();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_219220BC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a4;
  sub_21922107C(0, &qword_27CC17B70, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219221028();
  sub_219BF7B44();
  v14 = 0;
  sub_219BF77F4();
  if (!v4)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_2189684CC();
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_219220D60(uint64_t a1)
{
  v2 = sub_219221028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219220D9C(uint64_t a1)
{
  v2 = sub_219221028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219220DD8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_219220E28(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_219220E28(void *a1)
{
  sub_21922107C(0, &qword_27CC17B60, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219221028();
  sub_219BF7B34();
  if (!v1)
  {
    v11 = 0;
    v8 = sub_219BF76F4();
    v10[15] = 1;
    sub_218968414();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_219221028()
{
  result = qword_27CC17B68;
  if (!qword_27CC17B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17B68);
  }

  return result;
}

void sub_21922107C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219221028();
    v7 = a3(a1, &type metadata for LegacyAudioFeedPaywallFeedGroupConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2192210F4()
{
  result = qword_27CC17B78;
  if (!qword_27CC17B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17B78);
  }

  return result;
}

unint64_t sub_21922114C()
{
  result = qword_27CC17B80;
  if (!qword_27CC17B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17B80);
  }

  return result;
}

unint64_t sub_2192211A4()
{
  result = qword_27CC17B88;
  if (!qword_27CC17B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17B88);
  }

  return result;
}

uint64_t sub_21922121C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  sub_219221F54(0, &qword_27CC17BC8, MEMORY[0x277D32CB0]);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_219BF0444();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v12, v2, v9, v14);
  v18 = MEMORY[0x277D32CB0];
  v27 = sub_218823A94(&qword_280E90F40, MEMORY[0x277D32CB0], MEMORY[0x277D32CC8]);
  sub_219BF70E4();
  v19 = v18;
  v20 = v30;
  sub_218823A94(&qword_27CC17BD0, v19, MEMORY[0x277D32CB8]);
  v28 = a2;
  v21 = sub_219BF53A4();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    (v17)(&v8[v22], v28, v9);
    (v17)(v12, v23, v9);
    sub_219BF7144();
  }

  v24 = v31;
  sub_219221EE8(v8, v31, &qword_27CC17BC8, MEMORY[0x277D32CB0]);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t sub_21922153C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  sub_219221F54(0, &qword_27CC17BB8, MEMORY[0x277D32F30]);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_219BF0744();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v12, v2, v9, v14);
  v18 = MEMORY[0x277D32F30];
  v27 = sub_218823A94(&qword_280E90EB8, MEMORY[0x277D32F30], MEMORY[0x277D32F48]);
  sub_219BF70E4();
  v19 = v18;
  v20 = v30;
  sub_218823A94(&qword_27CC17BC0, v19, MEMORY[0x277D32F38]);
  v28 = a2;
  v21 = sub_219BF53A4();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    (v17)(&v8[v22], v28, v9);
    (v17)(v12, v23, v9);
    sub_219BF7144();
  }

  v24 = v31;
  sub_219221EE8(v8, v31, &qword_27CC17BB8, MEMORY[0x277D32F30]);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t sub_21922185C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  sub_219221F54(0, &qword_27CC17B90, MEMORY[0x277D6DD18]);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_219BE7D04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v12, v2, v9, v14);
  v18 = MEMORY[0x277D6DD18];
  v27 = sub_218823A94(&qword_280EE4E38, MEMORY[0x277D6DD18], MEMORY[0x277D6DD28]);
  sub_219BF70E4();
  v19 = v18;
  v20 = v30;
  sub_218823A94(&qword_27CC17B98, v19, MEMORY[0x277D6DD20]);
  v28 = a2;
  v21 = sub_219BF53A4();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    (v17)(&v8[v22], v28, v9);
    (v17)(v12, v23, v9);
    sub_219BF7144();
  }

  v24 = v31;
  sub_219221EE8(v8, v31, &qword_27CC17B90, MEMORY[0x277D6DD18]);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t sub_219221B7C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  sub_219221F54(0, &qword_27CC17BA0, MEMORY[0x277D2FBB0]);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_219BDDA74();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v12, v2, v9, v14);
  v18 = MEMORY[0x277D2FBB0];
  v27 = sub_218823A94(&qword_27CC17BA8, MEMORY[0x277D2FBB0], MEMORY[0x277D2FBC8]);
  sub_219BF70E4();
  v19 = v18;
  v20 = v30;
  sub_218823A94(&qword_27CC17BB0, v19, MEMORY[0x277D2FBB8]);
  v28 = a2;
  v21 = sub_219BF53A4();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    (v17)(&v8[v22], v28, v9);
    (v17)(v12, v23, v9);
    sub_219BF7144();
  }

  v24 = v31;
  sub_219221EE8(v8, v31, &qword_27CC17BA0, MEMORY[0x277D2FBB0]);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t sub_219221E9C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_219221EE8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219221F54(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_219221F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata accessor for MagazineFeedRefreshBlueprintModifier(uint64_t a1)
{
  result = qword_280E9B3A0;
  if (!qword_280E9B3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219222030(uint64_t a1)
{
  result = type metadata accessor for MagazineFeedExpandResult(319);
  if (v2 <= 0x3F)
  {
    result = sub_2192220B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2192220B4()
{
  result = qword_280EAC5E0;
  if (!qword_280EAC5E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EAC5E0);
  }

  return result;
}

uint64_t sub_219222118(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v127 = a3;
  v128 = a2;
  sub_219223294(0, &qword_280EE4AF0, MEMORY[0x277D6DF88]);
  v125 = *(v4 - 8);
  v126 = v4;
  MEMORY[0x28223BE20](v4);
  v124 = &v103 - v5;
  v6 = type metadata accessor for MagazineFeedGapLocation(0);
  MEMORY[0x28223BE20](v6 - 8);
  v109 = (&v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BF0BD4();
  v114 = *(v8 - 8);
  v115 = v8;
  MEMORY[0x28223BE20](v8);
  v121 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0(0);
  MEMORY[0x28223BE20](v10 - 8);
  v113 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v107 = &v103 - v13;
  MEMORY[0x28223BE20](v14);
  v106 = &v103 - v15;
  sub_218951DB0(0);
  v17 = v16;
  v116 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v111 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v105 = (&v103 - v20);
  MEMORY[0x28223BE20](v21);
  v108 = (&v103 - v22);
  MEMORY[0x28223BE20](v23);
  v104 = &v103 - v24;
  v25 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v112 = &v103 - v29;
  MEMORY[0x28223BE20](v30);
  v110 = &v103 - v31;
  v32 = type metadata accessor for MagazineFeedExpandResult.Result(0);
  MEMORY[0x28223BE20](v32);
  v34 = (&v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218D51E90(0);
  MEMORY[0x28223BE20](v35 - 8);
  sub_219223294(0, &qword_280EE3600, MEMORY[0x277D6EC60]);
  v122 = *(v36 - 8);
  v123 = v36;
  MEMORY[0x28223BE20](v36);
  v38 = &v103 - v37;
  v39 = sub_219223204(&qword_280EE5950, sub_218951DB0, MEMORY[0x277D6D720]);
  v40 = sub_219223204(&qword_280EE5960, sub_218951DB0, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v17, v39, v40);
  v41 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  v42 = type metadata accessor for MagazineFeedModel(0);
  v43 = sub_219223204(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
  v44 = sub_219223204(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
  v129 = v38;
  v119 = v42;
  v120 = v41;
  v117 = v44;
  v118 = v43;
  sub_219BEB2D4();
  v45 = type metadata accessor for MagazineFeedExpandResult(0);
  sub_2192233EC(v3 + *(v45 + 20), v34, type metadata accessor for MagazineFeedExpandResult.Result);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218D52054(0);
    sub_219223388(v34, v27);
    refreshed = type metadata accessor for MagazineFeedRefreshBlueprintModifier(0);
    __swift_project_boxed_opaque_existential_1((v3 + *(refreshed + 20)), *(v3 + *(refreshed + 20) + 24));
    v47 = *(v3 + *(v45 + 24));
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_219223204(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v48 = v121;
    sub_219BEE7A4();
    v49 = v113;
    v112 = v27;
    sub_21997FEC4(v27, v47, v48, v113);
    (*(v114 + 8))(v48, v115);
    v50 = v116;
    if ((*(v116 + 48))(v49, 1, v17) == 1)
    {
      sub_2192234F0(v49, sub_218D51CC0);
      v51 = v126;
      v53 = v123;
      v52 = v124;
    }

    else
    {
      v60 = v111;
      (*(v50 + 32))(v111, v49, v17);
      v53 = v123;
      sub_219BEB1E4();
      (*(v50 + 8))(v60, v17);
      v51 = v126;
      v52 = v124;
    }

    sub_219BEEFF4();
    sub_219BEEFE4();
    v61 = sub_219BEEFC4();

    v62 = v112;
    v63 = 0;
    if (v61)
    {
      v63 = sub_219BEDC74();
    }

    else
    {
      v131 = 0;
      v132 = 0;
    }

    v59 = v128;
    v58 = v129;
    v130 = v61;
    v133 = v63;
    sub_219BEB2C4();

    sub_2192234F0(v62, type metadata accessor for MagazineFeedGroup);
    v57 = v125;
  }

  else
  {
    v54 = v121;
    v103 = v17;
    v55 = *v34;
    v56 = *v34 >> 61;
    if (v56 <= 1)
    {
      v52 = v124;
      v57 = v125;
      v53 = v123;
      if (v56)
      {

        v59 = v128;
        v51 = v126;
        v58 = v129;
      }

      else
      {
        sub_218D52294(0);
        v64 = v55;
        v66 = v65;
        v113 = v64;
        v67 = swift_projectBox();
        v68 = *(v67 + *(v66 + 48));
        v69 = v110;
        sub_2192233EC(v67, v110, type metadata accessor for MagazineFeedGroup);
        v70 = type metadata accessor for MagazineFeedRefreshBlueprintModifier(0);
        v105 = __swift_project_boxed_opaque_existential_1((v3 + *(v70 + 20)), *(v3 + *(v70 + 20) + 24));
        v71 = *(v3 + *(v45 + 24));
        v72 = type metadata accessor for MagazineFeedServiceConfig(0);
        v73 = sub_219223204(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);

        v112 = v68;
        v111 = v72;
        v107 = v73;
        sub_219BEE7A4();
        v74 = v106;
        sub_21997FEC4(v69, v71, v54, v106);
        (*(v114 + 8))(v54, v115);
        v75 = v116;
        v76 = v103;
        if ((*(v116 + 48))(v74, 1, v103) == 1)
        {
          sub_2192234F0(v74, sub_218D51CC0);
        }

        else
        {
          v93 = v104;
          (*(v75 + 32))(v104, v74, v76);
          sub_219BEB1E4();
          (*(v75 + 8))(v93, v76);
        }

        v94 = swift_allocObject();
        sub_219223454(0, &qword_280E91AD0, MEMORY[0x277D32188]);
        swift_allocObject();

        *(v94 + 16) = sub_219BEE874();
        v95 = v109;
        *v109 = v94;
        v96 = *MEMORY[0x277D33090];
        sub_219223454(0, &qword_280E909E0, MEMORY[0x277D33098]);
        v98 = v97;
        v99 = *(v97 - 8);
        (*(v99 + 104))(v95, v96, v97);
        (*(v99 + 56))(v95, 0, 1, v98);
        v100 = v108;
        sub_218BB8230(v95, v108);
        sub_2192234F0(v95, type metadata accessor for MagazineFeedGapLocation);
        sub_219BEB1E4();
        (*(v75 + 8))(v100, v103);
        sub_219BEEFF4();
        sub_219BEEFE4();
        v101 = sub_219BEEFC4();

        v51 = v126;
        v102 = 0;
        if (v101)
        {
          v102 = sub_219BEDC74();
        }

        else
        {
          v131 = 0;
          v132 = 0;
        }

        v59 = v128;
        v130 = v101;
        v133 = v102;
        v58 = v129;
        sub_219BEB2C4();

        sub_2192234F0(v110, type metadata accessor for MagazineFeedGroup);
      }
    }

    else
    {
      v57 = v125;
      v51 = v126;
      v53 = v123;
      v52 = v124;
      v58 = v129;
      if (v56 == 2)
      {
        sub_218D52294(0);
        v78 = v55;
        v80 = v79;
        v113 = v78;
        v81 = swift_projectBox();
        v82 = *(v81 + *(v80 + 48));
        sub_2192233EC(v81, v112, type metadata accessor for MagazineFeedGroup);
        v83 = type metadata accessor for MagazineFeedRefreshBlueprintModifier(0);
        v108 = __swift_project_boxed_opaque_existential_1((v3 + *(v83 + 20)), *(v3 + *(v83 + 20) + 24));
        v84 = *(v3 + *(v45 + 24));
        v85 = type metadata accessor for MagazineFeedServiceConfig(0);
        v86 = sub_219223204(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);

        v111 = v82;
        v110 = v85;
        v109 = v86;
        sub_219BEE7A4();
        v87 = v107;
        sub_21997FEC4(v112, v84, v54, v107);
        (*(v114 + 8))(v54, v115);
        v88 = v116;
        v89 = v103;
        if ((*(v116 + 48))(v87, 1, v103) == 1)
        {
          sub_2192234F0(v87, sub_218D51CC0);
          v58 = v129;
        }

        else
        {
          v90 = v105;
          (*(v88 + 32))(v105, v87, v89);
          v58 = v129;
          sub_219BEB1E4();
          (*(v88 + 8))(v90, v89);
        }

        sub_219BEEFF4();
        sub_219BEEFE4();
        v91 = sub_219BEEFC4();

        v92 = 0;
        if (v91)
        {
          v92 = sub_219BEDC74();
        }

        else
        {
          v131 = 0;
          v132 = 0;
        }

        v59 = v128;
        v130 = v91;
        v133 = v92;
        sub_219BEB2C4();

        sub_2192234F0(v112, type metadata accessor for MagazineFeedGroup);
      }

      else
      {
        if (v56 != 3)
        {

          (*(v57 + 104))(v52, *MEMORY[0x277D6DF80], v51);
          v128(v52);
          goto LABEL_17;
        }

        v59 = v128;
      }
    }
  }

  sub_219BE85C4();
  v59(v52);
LABEL_17:
  (*(v57 + 8))(v52, v51);
  return (*(v122 + 8))(v58, v53);
}

uint64_t sub_219223108(uint64_t a1)
{
  v2 = sub_219223204(&qword_280E9B3B8, type metadata accessor for MagazineFeedRefreshBlueprintModifier, &unk_219C67430);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_219223204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_219223294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_219223204(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    v8[3] = sub_219223204(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219223388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2192233EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219223454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MagazineFeedServiceConfig(255);
    v7 = sub_219223204(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2192234F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219223550@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v6);
  v3 = type metadata accessor for EmailSignupModule();
  v4 = swift_allocObject();
  result = sub_2186CB1F0(v6, v4 + 16);
  a2[3] = v3;
  a2[4] = &off_282A81D68;
  *a2 = v4;
  return result;
}

double sub_2192235C0()
{
  sub_2186C709C(0, qword_280EB8D90, &protocol descriptor for EmailSignupEventHandlerType, 0);
  sub_219BE2914();

  type metadata accessor for EmailSignupViewController(0);
  sub_219BE2904();

  sub_2186C709C(0, qword_280EA96A8, &protocol descriptor for EmailSignupViewModelFactoryType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280ECB470, &protocol descriptor for EmailSignupRouterType, 1);
  sub_219BE2914();
  type metadata accessor for EmailSignupRouter();
  sub_219BE19C4();

  sub_219BE2914();

  sub_2186C709C(0, &unk_280EBF058, &protocol descriptor for EmailSignupInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EBB870, &protocol descriptor for EmailSignupDataManagerType, 0);
  sub_219BE2914();

  return result;
}