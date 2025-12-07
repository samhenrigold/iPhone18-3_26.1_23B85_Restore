uint64_t sub_2688BD764@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_4();
  *a1 = result;
  return result;
}

uint64_t sub_2688BD790(uint64_t a1, id *a2)
{
  result = sub_268B37BD4();
  *a2 = 0;
  return result;
}

uint64_t sub_2688BD808(uint64_t a1, id *a2)
{
  v3 = sub_268B37BE4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2688BD888()
{
  sub_268B37BF4();
  v0 = sub_268B37BC4();

  return v0;
}

void sub_2688BD8C0()
{
  OUTLINED_FUNCTION_0();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_2688BD91C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2688BD888();
  *a1 = result;
  return result;
}

uint64_t sub_2688BD950@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2688EEF80(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2688BD9A0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_268B37BC4();

  *a2 = v3;
  return result;
}

uint64_t sub_2688BD9E8()
{
  v1 = OUTLINED_FUNCTION_0();
  result = sub_2688E04CC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2688BDA1C(uint64_t a1)
{
  v2 = sub_2688BDCE4(&qword_2802A5228, &unk_268B3B74C);
  v3 = sub_2688BDCE4(&unk_2802A5230, &unk_268B3B6F4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2688BDAB4()
{
  v0 = sub_268B37BF4();
  v1 = MEMORY[0x26D625680](v0);

  return v1;
}

uint64_t sub_2688BDAEC(uint64_t a1, uint64_t a2)
{
  sub_268B37BF4();
  sub_268B37C54();
}

uint64_t sub_2688BDB40(uint64_t a1, uint64_t a2)
{
  sub_268B37BF4();
  sub_268B38514();
  sub_268B37C54();
  v2 = sub_268B38544();

  return v2;
}

void sub_2688BDC30(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2688BDCE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Port(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2688BDDCC(uint64_t a1, uint64_t a2)
{
  if (!sub_268B372F4() || (sub_2689619F4(), v5 = v4, v6 = v4, , v6 == 5))
  {
    (*(a2 + 32))(a1, a2);
    if (v7)
    {

      return 1;
    }

    else
    {
      return 5;
    }
  }

  return v5;
}

uint64_t sub_2688BDE70(uint64_t a1, uint64_t a2)
{
  if (!sub_268B372F4())
  {
    return 0;
  }

  sub_268962000();
  v3 = v2;

  return v3;
}

void sub_2688BDEE0(uint64_t a1)
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v102 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  v90 = &v87 - v6;
  OUTLINED_FUNCTION_9();
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v100 = v8;
  v101 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v93 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v11 = OUTLINED_FUNCTION_22(v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v87 - v15;
  v16 = OUTLINED_FUNCTION_9();
  v92 = type metadata accessor for MediaPlayerIntent(v16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  v88 = v18;
  OUTLINED_FUNCTION_9();
  v19 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v95 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - v25;
  v27 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  v89 = v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18();
  v96 = v33;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  v87 = v35;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v37 = __swift_project_value_buffer(v27, qword_2802CDA10);
  v38 = *(v29 + 16);
  v97 = v37;
  v98 = v38;
  v99 = v29 + 16;
  (v38)(v1);
  v39 = sub_268B37A34();
  v40 = sub_268B37F04();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_14();
    v94 = v21;
    *v41 = 0;
    _os_log_impl(&dword_2688BB000, v39, v40, "ResumeMediaRoutingFlow#on called", v41, 2u);
    v2 = v1;
    v21 = v94;
    OUTLINED_FUNCTION_12();
  }

  v42 = *(v29 + 8);
  v42(v1, v27);
  sub_268B35414();
  v43 = (*(v21 + 88))(v26, v19);
  if (v43 == *MEMORY[0x277D5C128] || v43 == *MEMORY[0x277D5C148] || v43 == *MEMORY[0x277D5C160])
  {
    (*(v21 + 8))(v26, v19);
    v46 = v95;
    sub_268B35414();
    v47 = v91;
    sub_26893BC0C(v46, 1, v48, v49, v50, v51, v52, v53, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
    v54 = v92;
    if (__swift_getEnumTagSinglePayload(v47, 1, v92) == 1)
    {
      sub_2688C058C(v47, &qword_2802A5650, &unk_268B3BAC0);
      v55 = v87;
      v98(v87, v97, v27);
      v56 = sub_268B37A34();
      sub_268B37EE4();
      OUTLINED_FUNCTION_13();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v58);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v59, v60, "ResumeMediaRoutingFlow#on unable to create MediaPlayerIntent from parse");
        OUTLINED_FUNCTION_6();
      }

      v42(v55, v27);
    }

    else
    {
      v75 = v47;
      v76 = v88;
      sub_2688C0464(v75, v88);
      sub_2688C0464(v76, v14);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v54);
      v77 = OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_mediaPlayerIntent;
      OUTLINED_FUNCTION_24();
      sub_2688C06A8(v14, v2 + v77, &qword_2802A5650, &unk_268B3BAC0);
      swift_endAccess();
      v78 = v89;
      v98(v89, v97, v27);
      v79 = sub_268B37A34();
      sub_268B37ED4();
      OUTLINED_FUNCTION_13();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v81);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v82, v83, "ResumeMediaRoutingFlow#on supported parse");
        OUTLINED_FUNCTION_12();
      }

      v42(v78, v27);
      v84 = v101;
      v85 = v90;
      (*(v100 + 16))(v90, v102, v101);
      __swift_storeEnumTagSinglePayload(v85, 0, 1, v84);
      v86 = OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_input;
      OUTLINED_FUNCTION_24();
      sub_2688C06A8(v85, v2 + v86, &qword_2802A5660, &qword_268B3B8E8);
      swift_endAccess();
    }
  }

  else
  {
    v91 = v19;
    v92 = v26;
    v61 = v96;
    v98(v96, v97, v27);
    v62 = v93;
    (*(v100 + 16))(v93, v102, v101);
    v63 = sub_268B37A34();
    v64 = sub_268B37EE4();
    if (os_log_type_enabled(v63, v64))
    {
      v66 = v62;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v102 = v42;
      v103 = v68;
      v69 = v68;
      *v67 = 136315138;
      sub_268B35414();
      v70 = v91;
      v71 = sub_268B37C24();
      v94 = v21;
      v73 = v72;
      (*(v100 + 8))(v66, v101);
      v74 = sub_26892CDB8(v71, v73, &v103);

      *(v67 + 4) = v74;
      _os_log_impl(&dword_2688BB000, v63, v64, "ResumeMediaRoutingFlow#on received an unsupported parse type %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_6();

      v102(v96, v27);
      v21 = v94;
    }

    else
    {

      (*(v100 + 8))(v62, v101);
      v42(v61, v27);
      v70 = v91;
    }

    (*(v21 + 8))(v92, v70);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2688BE6E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v57 = v4;
  v58 = v5;
  v51 = *v2;
  v52 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v50 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v49 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v55 = v15;
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v53 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v54 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v24 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v25 = *(v18 + 16);
  v56 = v24;
  v25(v2);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_14();
    v48 = v12;
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "ResumeMediaRoutingFlow#execute called", v28, 2u);
    v3 = v2;
    v12 = v48;
    OUTLINED_FUNCTION_12();
  }

  v29 = *(v18 + 8);
  v29(v2, v16);
  v30 = OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_mediaPlayerIntent;
  swift_beginAccess();
  sub_2688C053C(v3 + v30, v12, &qword_2802A5650, &unk_268B3BAC0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2688C058C(v12, &qword_2802A5650, &unk_268B3BAC0);
    v31 = v53;
    (v25)(v53, v56, v16);
    v32 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v34);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v35, v36, "ResumeMediaRoutingFlow#execute mediaPlayerIntent is nil, falling back to ResumeMediaFlow");
      OUTLINED_FUNCTION_6();
    }

    v29(v31, v16);
    v37 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
    sub_2688BFA7C(v37, v57);
  }

  else
  {
    v38 = v55;
    sub_2688C0464(v12, v55);
    v39 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
    sub_2689A8C9C(v38);
    sub_2689781E0();
    if (v40)
    {
      v42 = v49;
      v41 = v50;
      v43 = v52;
      (*(v50 + 104))(v49, *MEMORY[0x277D5F660], v52);
      v44 = v39;

      sub_26894E810();

      (*(v41 + 8))(v42, v43);
    }

    else
    {
      (v25)(v54, v56, v16);
      v45 = sub_268B37A34();
      v46 = sub_268B37F04();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_14();
        *v47 = 0;
        _os_log_impl(&dword_2688BB000, v45, v46, "ResumeMediaRoutingFlow#execute not necessary to check for HomeAutomation redirect, pushing PauseMediaFlow", v47, 2u);
        v38 = v55;
        OUTLINED_FUNCTION_12();
      }

      v29(v54, v16);
      sub_2688BFA7C(v39, v57);
    }

    sub_2688C05E4(v38, type metadata accessor for MediaPlayerIntent);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2688BEC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v175 = v23;
  v176 = v24;
  v177 = v25;
  v174 = v26;
  v28 = v27;
  v30 = v29;
  sub_268B34F84();
  OUTLINED_FUNCTION_1();
  v167 = v32;
  v168 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2();
  v164 = v33;
  OUTLINED_FUNCTION_9();
  sub_268B34E44();
  OUTLINED_FUNCTION_1();
  v165 = v35;
  v166 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2();
  v163 = v36;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5658, &qword_268B3B8E0);
  OUTLINED_FUNCTION_1();
  v158 = v37;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v38);
  v157 = v153 - v39;
  v40 = OUTLINED_FUNCTION_9();
  v156 = type metadata accessor for DevicesWithParse(v40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2();
  v162 = v42;
  OUTLINED_FUNCTION_9();
  v171 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3();
  v155 = v46;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_18();
  v154 = v48;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18();
  v161 = v50;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v51);
  v170 = v153 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  OUTLINED_FUNCTION_22(v53);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v54);
  v56 = v153 - v55;
  v173 = sub_268B35434();
  OUTLINED_FUNCTION_1();
  v169 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_3();
  v160 = v59;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v60);
  v172 = v153 - v61;
  OUTLINED_FUNCTION_9();
  v62 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v64 = v63;
  v66 = MEMORY[0x28223BE20](v65);
  v67 = MEMORY[0x28223BE20](v66);
  v68 = MEMORY[0x28223BE20](v67);
  v70 = v153 - v69;
  v71 = MEMORY[0x28223BE20](v68);
  v73 = v153 - v72;
  v74 = MEMORY[0x28223BE20](v71);
  v76 = v153 - v75;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_15();
  if (!v28)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v62, qword_2802CDA10);
    OUTLINED_FUNCTION_17();
    v87(v20);
    v88 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v90);
      OUTLINED_FUNCTION_20(&dword_2688BB000, v91, v73, "ResumeMediaRoutingFlow#execute setting devices in intent and pushing ResumeMediaFlow");
      OUTLINED_FUNCTION_6();
    }

    v92 = *(v64 + 8);
    v64 += 8;
    v92(v20, v62);
    v93 = sub_2688EFD0C();
    v94 = MEMORY[0x277D84F90];
    if (v93)
    {
      v179 = MEMORY[0x277D84F90];
      sub_268B38234();
      if (v93 < 0)
      {
        __break(1u);
        goto LABEL_41;
      }

      sub_2688C063C();
      v95 = 0;
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v96 = MEMORY[0x26D625BD0](v95, v30);
        }

        else
        {
          v96 = *(v30 + 8 * v95 + 32);
        }

        v97 = v96;
        ++v95;
        v98 = sub_268B38054();
        [v97 setIsPreResolved_];

        sub_268B38214();
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
      }

      while (v93 != v95);
      v94 = v179;
    }

    v99 = v174;
    sub_2688C04C8(v94, v174);
    v100 = v99;
LABEL_27:
    sub_2688BFA7C(v100, v175);
    goto LABEL_28;
  }

  if (v28 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v62, qword_2802CDA10);
    OUTLINED_FUNCTION_17();
    v101(v76);
    v102 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v104);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v105, v106, "ResumeMediaRoutingFlow#execute pushing PauseMediaFlow so we can dialog a relevant error");
      OUTLINED_FUNCTION_6();
    }

    (*(v64 + 8))(v76, v62);
    goto LABEL_26;
  }

  v153[5] = v78;
  v153[4] = v77;
  v79 = OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_input;
  v80 = v177;
  swift_beginAccess();
  sub_2688C053C(v80 + v79, v56, &qword_2802A5660, &qword_268B3B8E8);
  v81 = v173;
  if (__swift_getEnumTagSinglePayload(v56, 1, v173) == 1)
  {
    sub_2688C058C(v56, &qword_2802A5660, &qword_268B3B8E8);
    if (qword_2802A4F30 == -1)
    {
LABEL_5:
      __swift_project_value_buffer(v62, qword_2802CDA10);
      OUTLINED_FUNCTION_17();
      v82(v73);
      v83 = sub_268B37A34();
      v84 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v84))
      {
        v85 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v85);
        OUTLINED_FUNCTION_20(&dword_2688BB000, v86, v73, "ResumeMediaRoutingFlow#execute input is nil, can't redirect to HomeAutomation");
        OUTLINED_FUNCTION_6();
      }

      (*(v64 + 8))(v73, v62);
LABEL_26:
      v100 = v174;
      goto LABEL_27;
    }

LABEL_41:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    goto LABEL_5;
  }

  v177 = v62;
  v107 = v169;
  v108 = v172;
  (*(v169 + 32))(v172, v56, v81);
  v109 = v170;
  sub_268B35414();
  v110 = v171;
  if ((*(v44 + 88))(v109, v171) == *MEMORY[0x277D5C128])
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v111 = __swift_project_value_buffer(v177, qword_2802CDA10);
    v112 = *(v64 + 16);
    v153[1] = v111;
    v153[2] = v112;
    v112(v70);
    v113 = sub_268B37A34();
    v114 = sub_268B37EE4();
    v115 = v44;
    if (OUTLINED_FUNCTION_19(v114))
    {
      v116 = OUTLINED_FUNCTION_14();
      *v116 = 0;
      _os_log_impl(&dword_2688BB000, v113, v70, "ResumeMediaRoutingFlow#execute input is NLv3IntentOnly, transform to HomeAutomationNLV3Intent parse", v116, 2u);
      v110 = v171;
      OUTLINED_FUNCTION_12();
    }

    v174 = *(v64 + 8);
    v153[3] = v64 + 8;
    (v174)(v70, v177);
    v117 = v162;
    sub_268B35414();
    *(v117 + *(v156 + 20)) = v30;
    v118 = v117;

    v119 = v157;
    sub_268B36764();
    v120 = v159;
    v121 = sub_268B36774();
    (v158[1])(v119, v120);
    v122 = v161;
    v123 = v110;
    v121(v118);

    v127 = OUTLINED_FUNCTION_11(&a9);
    v128(v127);
    v129 = v154;
    v130 = v122;
    v131 = *(v115 + 16);
    v131(v154, v130, v110);
    v132 = sub_268B37A34();
    sub_268B37EC4();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v132, v133))
    {
      v135 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v178 = v158;
      *v135 = 136315138;
      v136 = v155;
      v131(v155, v129, v123);
      v137 = sub_268B37C24();
      v138 = v129;
      v139 = v137;
      v159 = v131;
      v141 = v140;
      v171 = *(v115 + 8);
      v171(v138, v123);
      v142 = sub_26892CDB8(v139, v141, &v178);
      v131 = v159;

      *(v135 + 4) = v142;
      _os_log_impl(&dword_2688BB000, v132, OS_LOG_TYPE_DEFAULT, "ResumeMediaRoutingFlow#execute transformed home automation NLV3 parse %s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v158);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      OUTLINED_FUNCTION_16();
      v143();
      v145 = v167;
      v144 = v168;
      v146 = v165;
    }

    else
    {

      v171 = *(v115 + 8);
      v171(v129, v110);
      OUTLINED_FUNCTION_16();
      v147();
      v145 = v167;
      v144 = v168;
      v146 = v165;
      v136 = v155;
    }

    v148 = v161;
    v131(v136, v161, v123);
    sub_268B35424();
    v149 = v163;
    sub_268B34E34();
    v150 = v164;
    sub_268B34F74();
    v175(v150);
    (*(v145 + 8))(v150, v144);
    (*(v146 + 8))(v149, v166);
    v151 = v171;
    v171(v148, v123);
    OUTLINED_FUNCTION_5();
    sub_2688C05E4(v162, v152);
    (*(v169 + 8))(v172, v173);
    v151(v170, v123);
  }

  else
  {
    v124 = v81;
    (*(v107 + 16))(v160, v108, v81);
    v125 = v163;
    sub_268B34E34();
    v126 = v164;
    sub_268B34F74();
    v175(v126);
    (*(v167 + 8))(v126, v168);
    (*(v165 + 8))(v125, v166);
    (*(v107 + 8))(v108, v124);
    (*(v44 + 8))(v109, v110);
  }

LABEL_28:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688BFA7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_contextProvider + 24);
  v10 = *(v2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_contextProvider + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_contextProvider), v9);
  v11 = OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_analyticsService;
  v12 = swift_allocObject();
  v12[2] = v6;
  v12[3] = v4;
  v12[4] = v2;
  v12[5] = v8;

  sub_268AD35F4(v8, &off_287953B28, v2 + v11, sub_2688C03B0, v12, v9, v10);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688BFB54(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_268B34F84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_flowFactory), *(a3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_flowFactory + 24));
  sub_268B0494C();
  sub_268B34F54();

  a1(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2688BFC6C()
{
  sub_2688C058C(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_input, &qword_2802A5660, &qword_268B3B8E8);
  sub_2688C058C(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_mediaPlayerIntent, &qword_2802A5650, &unk_268B3BAC0);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_contextProvider));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_aceServiceInvoker));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_analyticsService));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_flowFactory));
  return v0;
}

uint64_t sub_2688BFD24()
{
  sub_2688BFC6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ResumeMediaRoutingFlow(uint64_t a1)
{
  result = qword_2802A5630;
  if (!qword_2802A5630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2688BFDD0(uint64_t a1)
{
  sub_2688BFEF0(319, &qword_2802A5640, MEMORY[0x277D5C118]);
  if (v1 <= 0x3F)
  {
    sub_2688BFEF0(319, &qword_2802A5648, type metadata accessor for MediaPlayerIntent);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2688BFEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_268B380A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2688BFF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2688C001C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2688C001C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2688C013C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2688C01F0;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2688C01F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2688C02E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ResumeMediaRoutingFlow(0);

  return MEMORY[0x2821BA658](v3, a2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2688C0368()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2688C0464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayerIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2688C04C8(uint64_t a1, void *a2)
{
  type metadata accessor for Device();
  v3 = sub_268B37CE4();

  [a2 setDevices_];
}

uint64_t sub_2688C053C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_25(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2688C058C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2688C05E4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2688C063C()
{
  result = qword_2802A5920;
  if (!qword_2802A5920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A5920);
  }

  return result;
}

uint64_t sub_2688C06A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_25(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_12()
{

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_14()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_19(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_20(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

id sub_2688C0980()
{
  result = [objc_allocWithZone(type metadata accessor for SkipTimeIntentHandler()) init];
  qword_2802CD8D0 = result;
  return result;
}

uint64_t sub_2688C09B4()
{
  v7 = sub_268B37F44();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37F34();
  MEMORY[0x28223BE20](v3);
  v4 = sub_268B37B14();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2688C2FC8();
  sub_268B37AF4();
  v8 = MEMORY[0x277D84F90];
  sub_2688C300C(&unk_2802A5890, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_268B37F74();
  qword_2802CD8D8 = result;
  return result;
}

uint64_t sub_2688C0C08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v72 = a2;
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v64 = v3;
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v63 = v5 - v4;
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v68 = v7;
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v70 = v8;
  MEMORY[0x28223BE20](v9);
  v73 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v63 - v12;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v66 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v67 = &v63 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v25 = *(v16 + 16);
  v25(v23, v24, v14);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "SkipTimeFlowStrategy#actionForInput called", v28, 2u);
    OUTLINED_FUNCTION_12();
  }

  v29 = *(v16 + 8);
  v29(v23, v14);
  v30 = v71;
  sub_268B35414();
  sub_26893BA8C(v13);
  v31 = type metadata accessor for MediaPlayerIntent(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v31);
  sub_2688C2E64(v13);
  if (EnumTagSinglePayload == 1)
  {
    v33 = v66;
    v25(v66, v24, v14);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "SkipTimeFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v36, 2u);
      OUTLINED_FUNCTION_12();
    }

    v29(v33, v14);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_16_0(v37 + 25, v38, v39);
    return sub_268B34ED4();
  }

  else
  {
    v66 = (v16 + 8);
    v41 = v70;
    sub_268B35414();
    v43 = v68;
    v42 = v69;
    v44 = (*(v68 + 88))(v41, v69);
    if (v44 == *MEMORY[0x277D5C128] || v44 == *MEMORY[0x277D5C150] || v44 == *MEMORY[0x277D5C160])
    {
      (*(v43 + 8))(v41, v42);
      return sub_268B34EC4();
    }

    else
    {
      v25(v67, v24, v14);
      v47 = v63;
      v48 = v64;
      v49 = v65;
      (*(v64 + 16))(v63, v30, v65);
      v50 = sub_268B37A34();
      v51 = sub_268B37EE4();
      if (os_log_type_enabled(v50, v51))
      {
        v53 = v47;
        v54 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v74 = v71;
        *v54 = 136315138;
        sub_268B35414();
        v55 = sub_268B37C24();
        v57 = v56;
        (*(v48 + 8))(v53, v49);
        v58 = sub_26892CDB8(v55, v57, &v74);
        v42 = v69;

        *(v54 + 4) = v58;
        _os_log_impl(&dword_2688BB000, v50, v51, "SkipTimeFlowStrategy#actionForInput received no valid parse %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        v43 = v68;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v48 + 8))(v47, v49);
      }

      v29(v67, v14);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_16_0(v60 | v59, v61, v62);
      sub_268B34ED4();
      return (*(v43 + 8))(v70, v42);
    }
  }
}

uint64_t sub_2688C128C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v35 = a3;
  v36 = a2;
  sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  v41 = v6;
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  sub_268B37B14();
  OUTLINED_FUNCTION_1();
  v39 = v11;
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v21 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4D28 != -1)
  {
    swift_once();
  }

  v34 = qword_2802CD8D8;
  (*(v17 + 16))(&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v22 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v17 + 32))(v25 + v22, v21, v15);
  v26 = (v25 + v23);
  v27 = v36;
  v29 = v37;
  v28 = v38;
  *v26 = v35;
  v26[1] = v28;
  *(v25 + v24) = v27;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_2688C2D5C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor;
  v30 = _Block_copy(aBlock);
  v31 = v27;

  sub_268B37AE4();
  v43 = MEMORY[0x277D84F90];
  sub_2688C300C(&unk_2802A7010, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v32 = v42;
  sub_268B38124();
  MEMORY[0x26D625950](0, v14, v9, v30);
  _Block_release(v30);
  (*(v41 + 8))(v9, v32);
  (*(v39 + 8))(v14, v40);
}

void sub_2688C1654(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4, void *a5)
{
  v63 = a5;
  v69 = a3;
  v70 = a4;
  v68 = a2;
  v65 = a1;
  v67 = sub_268B35494();
  v71 = *(v67 - 8);
  v5 = MEMORY[0x28223BE20](v67);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v59 - v10;
  v64 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v64);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v59 = *(v15 + 16);
  v60 = v20;
  v59(v19);
  v21 = sub_268B37A34();
  v22 = sub_268B37F04();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = v8;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "SkipTimeFlowStrategy#makeIntentFromParse called", v27, 2u);
    v28 = v27;
    v8 = v26;
    v15 = v25;
    v14 = v24;
    v13 = v23;
    MEMORY[0x26D6266E0](v28, -1, -1);
  }

  v61 = *(v15 + 8);
  v61(v19, v14);
  v29 = *(v71 + 16);
  v30 = v65;
  v31 = v67;
  v29(v8, v65, v67);
  sub_26893BC0C(v8, 1, v32, v33, v34, v35, v36, v37, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  if (__swift_getEnumTagSinglePayload(v11, 1, v64) == 1)
  {
    sub_2688C2E64(v11);
    (v59)(v66, v60, v14);
    v38 = v62;
    v29(v62, v30, v31);
    v39 = v31;
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72 = v70;
      *v42 = 136315138;
      v29(v8, v38, v39);
      v43 = sub_268B37C24();
      v45 = v44;
      (*(v71 + 8))(v38, v39);
      v46 = sub_26892CDB8(v43, v45, &v72);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_2688BB000, v40, v41, "SkipTimeFlowStrategy#makeIntentFromParse received unexpected parse: %s", v42, 0xCu);
      v47 = v70;
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      MEMORY[0x26D6266E0](v47, -1, -1);
      MEMORY[0x26D6266E0](v42, -1, -1);
    }

    else
    {

      (*(v71 + 8))(v38, v31);
    }

    v61(v66, v14);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD000000000000032, 0x8000000268B56D00, 0x656D695470696B53, 0xE800000000000000, 0xD000000000000014, 0x8000000268B56D40);
    sub_2688C2ECC();
    v49 = swift_allocError();
    *v50 = -124;
    v68(v49, 1);
  }

  else
  {
    sub_2688C0464(v11, v13);
    if (v70)
    {
      v48 = v70;
    }

    else
    {
      v48 = [objc_allocWithZone(type metadata accessor for SkipTimeIntent()) init];
    }

    v51 = v70;
    sub_268A7AFBC(v13);
    v52 = v63;
    v53 = v63[5];
    v54 = v63[6];
    __swift_project_boxed_opaque_existential_1(v63 + 2, v53);
    v55 = v13;
    v56 = swift_allocObject();
    v57 = v69;
    v56[2] = v68;
    v56[3] = v57;
    v56[4] = v48;
    v58 = v48;

    sub_268AD35F4(v58, &off_287953B68, (v52 + 7), sub_2688C2F60, v56, v53, v54);

    sub_2688C2F6C(v55);
  }
}

uint64_t sub_2688C1CEC(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "SkipTimeFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_2688C1EA8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2688C1F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2688C1FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_2688C2004()
{
  if (qword_2802A4D20 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD8D0;

  return v1;
}

uint64_t sub_2688C2060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2688C20CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2688C2138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2688C21A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_2688C2894@<X0>(void *a2@<X1>, uint64_t *a3@<X2>, void **a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a7@<X8>)
{
  v11 = *a3;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = *a4;
  a5(0);
  v13 = v12;
  v14 = a2;
  sub_268B34B24();
  v15 = sub_268B34B34();

  return __swift_storeEnumTagSinglePayload(a7, 0, 1, v15);
}

uint64_t sub_2688C2964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2688C29B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2688C2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2688C2AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2688C2BF4(uint64_t a1, uint64_t a2)
{
  result = sub_2688C300C(&qword_2802A5670, a2, type metadata accessor for SkipTimeFlowStrategy, &unk_268B3B9B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2688C2C94()
{
  v1 = sub_268B35494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_2688C2D5C()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = *(v5 + 8);

  sub_2688C1654(v0 + v2, v8, v9, v6, v7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2688C2E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2688C2ECC()
{
  result = qword_2802A6D80;
  if (!qword_2802A6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6D80);
  }

  return result;
}

uint64_t sub_2688C2F20()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2688C2F6C(uint64_t a1)
{
  v2 = type metadata accessor for MediaPlayerIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2688C2FC8()
{
  result = qword_2802A7320;
  if (!qword_2802A7320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A7320);
  }

  return result;
}

uint64_t sub_2688C300C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2688C3054(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  return static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(a1, a3 | 0x8000000000000000, a2, 0xE800000000000000, 0xD000000000000014, v3 | 0x8000000000000000);
}

uint64_t sub_2688C3240()
{
  if (sub_268B34CB4())
  {
    v0 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    v0 = sub_268B34C84() ^ 1;
  }

  return v0 & 1;
}

uint64_t sub_2688C32AC()
{
  if (sub_268B34D24())
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_1();

  return sub_268B34D04();
}

uint64_t sub_2688C3308()
{
  if (sub_268B34CE4())
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_1();
  if (sub_268B34CC4())
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_1();
  if (sub_268B34CD4())
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_1();

  return sub_268B34D14();
}

id sub_2688C337C(void *a1)
{
  if (!a1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  result = [a1 nowPlayingState];
  v2 = result;
  if (result != 1)
  {
LABEL_5:
    OUTLINED_FUNCTION_0_1();
    return (sub_268B34D04() & (v2 == 2));
  }

  return result;
}

uint64_t OpenAccessoryItemAppIntent.init(destination:)@<X0>(uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5688, &qword_268B3BAF0);
  swift_allocObject();
  result = sub_268B369C4();
  *a3 = result;
  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for OpenAccessoryItemAppIntent(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OpenAccessoryItemAppIntent(uint64_t result, int a2, int a3)
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

uint64_t sub_2688C3604()
{
  sub_268B344F4();
  swift_allocObject();
  result = sub_268B344E4();
  qword_2802A5690 = result;
  return result;
}

void sub_2688C3644(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v12 = MEMORY[0x277D84F90];
  v5 = sub_2688EFD0C();
  for (i = 0; v5 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D625BD0](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(a3 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = v7;
    a1(&v10, &v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      MEMORY[0x26D6256C0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }
  }
}

void sub_2688C3798()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
  v6 = OUTLINED_FUNCTION_139();
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_64();
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2688BB000, v8, v9, "ResumeMediaDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v10, 2u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v11 = OUTLINED_FUNCTION_190();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v13 = sub_268B35244();
  sub_268AE2278(v13);
  v15 = v14;

  v16 = sub_268B35244();
  sub_268AE23DC(v16);
  v18 = v17;

  sub_268AB07FC(v15, v18 & 1, v3, v1);

  OUTLINED_FUNCTION_23();
}

void *sub_2688C3970()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  return v0;
}

uint64_t sub_2688C39B8()
{
  sub_2688C3970();

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t sub_2688C3A10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v6;
    v18 = a4;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "DeviceDisambiguationStrategy.makeContextUpdate() called", v17, 2u);
    v20 = v19;
    a4 = v18;
    v6 = v26;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v21 = sub_268B35244();
  sub_2688E4594(v6 + 104, v27);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a4;
  v22[4] = a5;
  v23 = swift_allocObject();
  v23[2] = sub_2688E1900;
  v23[3] = v6;
  v23[4] = v21;
  v23[5] = sub_2688E1944;
  v23[6] = v22;
  swift_retain_n();
  v24 = a1;

  sub_2688DA838(v21, v27, sub_2688E1970, v23);

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t sub_2688C3CF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v6;
    v18 = a4;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "DeviceDisambiguationStrategy.makeContextUpdate() called", v17, 2u);
    v20 = v19;
    a4 = v18;
    v6 = v26;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v21 = sub_268B35244();
  sub_2688E4594(v6 + 104, v27);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a4;
  v22[4] = a5;
  v23 = swift_allocObject();
  v23[2] = sub_2688EA15C;
  v23[3] = v6;
  v23[4] = v21;
  v23[5] = sub_2688E8CB8;
  v23[6] = v22;
  swift_retain_n();
  v24 = a1;

  sub_2688DA838(v21, v27, sub_2688EA31C, v23);

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t sub_2688C3FD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v6;
    v18 = a4;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "DeviceDisambiguationStrategy.makeContextUpdate() called", v17, 2u);
    v20 = v19;
    a4 = v18;
    v6 = v26;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v21 = sub_268B35244();
  sub_2688E4594(v6 + 104, v27);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a4;
  v22[4] = a5;
  v23 = swift_allocObject();
  v23[2] = sub_2688EA15C;
  v23[3] = v6;
  v23[4] = v21;
  v23[5] = sub_2688E64E0;
  v23[6] = v22;
  swift_retain_n();
  v24 = a1;

  sub_2688DA838(v21, v27, sub_2688EA31C, v23);

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t sub_2688C42B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v6;
    v18 = a4;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "DeviceDisambiguationStrategy.makeContextUpdate() called", v17, 2u);
    v20 = v19;
    a4 = v18;
    v6 = v26;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v21 = sub_268B35244();
  sub_2688E4594(v6 + 104, v27);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a4;
  v22[4] = a5;
  v23 = swift_allocObject();
  v23[2] = sub_2688E60C0;
  v23[3] = v6;
  v23[4] = v21;
  v23[5] = sub_2688E6104;
  v23[6] = v22;
  swift_retain_n();
  v24 = a1;

  sub_2688DA838(v21, v27, sub_2688EA31C, v23);

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t sub_2688C4590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v6;
    v18 = a4;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "DeviceDisambiguationStrategy.makeContextUpdate() called", v17, 2u);
    v20 = v19;
    a4 = v18;
    v6 = v26;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v21 = sub_268B35244();
  sub_2688E4594(v6 + 104, v27);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a4;
  v22[4] = a5;
  v23 = swift_allocObject();
  v23[2] = sub_2688E6A38;
  v23[3] = v6;
  v23[4] = v21;
  v23[5] = sub_2688E6A7C;
  v23[6] = v22;
  swift_retain_n();
  v24 = a1;

  sub_2688DA838(v21, v27, sub_2688EA31C, v23);

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t sub_2688C4870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v6;
    v18 = a4;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "DeviceDisambiguationStrategy.makeContextUpdate() called", v17, 2u);
    v20 = v19;
    a4 = v18;
    v6 = v26;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v21 = sub_268B35244();
  sub_2688E4594(v6 + 104, v27);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a4;
  v22[4] = a5;
  v23 = swift_allocObject();
  v23[2] = sub_2688E6DAC;
  v23[3] = v6;
  v23[4] = v21;
  v23[5] = sub_2688E6DC8;
  v23[6] = v22;
  swift_retain_n();
  v24 = a1;

  sub_2688DA838(v21, v27, sub_2688EA31C, v23);

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t sub_2688C4B50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v6;
    v18 = a4;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "DeviceDisambiguationStrategy.makeContextUpdate() called", v17, 2u);
    v20 = v19;
    a4 = v18;
    v6 = v26;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v21 = sub_268B35244();
  sub_2688E4594(v6 + 104, v27);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a4;
  v22[4] = a5;
  v23 = swift_allocObject();
  v23[2] = sub_2688E711C;
  v23[3] = v6;
  v23[4] = v21;
  v23[5] = sub_2688E7160;
  v23[6] = v22;
  swift_retain_n();
  v24 = a1;

  sub_2688DAA64(v21, v27, sub_2688E7190, v23);

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t sub_2688C4E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v6;
    v18 = a4;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "DeviceDisambiguationStrategy.makeContextUpdate() called", v17, 2u);
    v20 = v19;
    a4 = v18;
    v6 = v26;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v21 = sub_268B35244();
  sub_2688E4594(v6 + 104, v27);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a4;
  v22[4] = a5;
  v23 = swift_allocObject();
  v23[2] = sub_2688EA1D4;
  v23[3] = v6;
  v23[4] = v21;
  v23[5] = sub_2688E8970;
  v23[6] = v22;
  swift_retain_n();
  v24 = a1;

  sub_2688DA838(v21, v27, sub_2688EA31C, v23);

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t sub_2688C5110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v6;
    v18 = a4;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "DeviceDisambiguationStrategy.makeContextUpdate() called", v17, 2u);
    v20 = v19;
    a4 = v18;
    v6 = v26;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v21 = sub_268B35244();
  sub_2688E4594(v6 + 104, v27);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a4;
  v22[4] = a5;
  v23 = swift_allocObject();
  v23[2] = sub_2688EA1D4;
  v23[3] = v6;
  v23[4] = v21;
  v23[5] = sub_2688E95BC;
  v23[6] = v22;
  swift_retain_n();
  v24 = a1;

  sub_2688DAA64(v21, v27, sub_2688EA328, v23);

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t sub_2688C53F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v6;
    v18 = a4;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "DeviceDisambiguationStrategy.makeContextUpdate() called", v17, 2u);
    v20 = v19;
    a4 = v18;
    v6 = v26;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v21 = sub_268B35244();
  sub_2688E4594(v6 + 104, v27);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a4;
  v22[4] = a5;
  v23 = swift_allocObject();
  v23[2] = sub_2688EA1D4;
  v23[3] = v6;
  v23[4] = v21;
  v23[5] = sub_2688E8600;
  v23[6] = v22;
  swift_retain_n();
  v24 = a1;

  sub_2688DAA64(v21, v27, sub_2688EA328, v23);

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

void sub_2688C56D8()
{
  type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

void sub_2688C5784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v27);
  v153 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_78();
  v157 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_74();
  v158 = v35;
  v36 = OUTLINED_FUNCTION_9();
  v160 = type metadata accessor for MediaPlayerIntent(v36);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2();
  v159 = v38;
  OUTLINED_FUNCTION_9();
  v39 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v39, qword_2802CDA10);
  v49 = v41 + 16;
  v156 = *(v41 + 16);
  (v156)(v20);
  v50 = sub_268B37A34();
  v51 = sub_268B37ED4();
  if (os_log_type_enabled(v50, v51))
  {
    OUTLINED_FUNCTION_64();
    v52 = swift_slowAlloc();
    v145 = v29;
    OUTLINED_FUNCTION_279(v52);
    OUTLINED_FUNCTION_306(&dword_2688BB000, v53, v54, "DeviceDisambiguationStrategy.actionForInput() called");
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v55 = OUTLINED_FUNCTION_138();
  v57 = v56;
  v56(v55);
  sub_268B35414();
  sub_26893BC0C(v157, 1, v58, v59, v60, v61, v62, v63, v144, v145, v146, v147, v148, v149, v151, v152, v153, v154, v155, v20);
  v64 = OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_135(v64, v65, v160);
  if (v66)
  {
    sub_2688C058C(v158, &qword_2802A5650, &unk_268B3BAC0);
    sub_268B34ED4();
    goto LABEL_30;
  }

  v67 = v24;
  OUTLINED_FUNCTION_37();
  sub_2688E7348();
  v68 = 7562617;
  switch(*(v159 + *(v160 + 36)))
  {
    case 1:
      v68 = 28526;
      goto LABEL_10;
    case 2:

      goto LABEL_17;
    case 3:
      goto LABEL_11;
    default:
LABEL_10:
      v69 = OUTLINED_FUNCTION_207(v68);

      if (v69)
      {
LABEL_17:
        OUTLINED_FUNCTION_175(&a15);
        OUTLINED_FUNCTION_73();
        OUTLINED_FUNCTION_176();
        v85();
        v86 = sub_268B37A34();
        sub_268B37ED4();
        v87 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v87, v88))
        {
          OUTLINED_FUNCTION_64();
          v89 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v89);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v90, v91, v92, v93, v94, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v95 = OUTLINED_FUNCTION_192();
        v57(v95);
        sub_268B34EB4();
        goto LABEL_29;
      }

LABEL_11:
      OUTLINED_FUNCTION_217();
      __swift_project_boxed_opaque_existential_1((v70 + 64), *(v70 + 88));
      OUTLINED_FUNCTION_129();
      if ((sub_268B36F54() & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_268B35414();
      if (!sub_268A40454())
      {
        v96 = OUTLINED_FUNCTION_265();
        v97(v96);
        OUTLINED_FUNCTION_203();
        goto LABEL_21;
      }

      sub_2689CD68C(&v162);

      v71 = OUTLINED_FUNCTION_265();
      v72(v71);
      if (!v163)
      {
LABEL_21:
        sub_2688C058C(&v162, &qword_2802A5928, &unk_268B41110);
LABEL_22:
        if (*(v159 + *(v160 + 92) + 8))
        {
          OUTLINED_FUNCTION_73();
          OUTLINED_FUNCTION_176();
          v98();
          v99 = sub_268B37A34();
          sub_268B37F04();
          v100 = OUTLINED_FUNCTION_28();
          if (os_log_type_enabled(v100, v101))
          {
            OUTLINED_FUNCTION_64();
            v102 = swift_slowAlloc();
            OUTLINED_FUNCTION_81(v102);
            OUTLINED_FUNCTION_27();
            _os_log_impl(v103, v104, v105, v106, v107, 2u);
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
          }

          v108 = OUTLINED_FUNCTION_122();
          v57(v108);
          sub_268B34EC4();
        }

        else
        {
          OUTLINED_FUNCTION_73();
          OUTLINED_FUNCTION_176();
          v109();
          v110 = sub_268B37A34();
          sub_268B37ED4();
          v111 = OUTLINED_FUNCTION_28();
          if (os_log_type_enabled(v111, v112))
          {
            OUTLINED_FUNCTION_64();
            v113 = swift_slowAlloc();
            OUTLINED_FUNCTION_81(v113);
            OUTLINED_FUNCTION_27();
            _os_log_impl(v114, v115, v116, v117, v118, 2u);
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
          }

          v119 = OUTLINED_FUNCTION_122();
          v57(v119);
          sub_268B34ED4();
        }

LABEL_29:
        sub_2688E73C0(v159, type metadata accessor for MediaPlayerIntent);
        goto LABEL_30;
      }

      sub_2688E6514(&v162, v164);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_176();
      v73();
      OUTLINED_FUNCTION_320();
      v74 = sub_268B37A34();
      sub_268B37ED4();
      v75 = OUTLINED_FUNCTION_28();
      if (os_log_type_enabled(v75, v76))
      {
        OUTLINED_FUNCTION_68();
        v49 = swift_slowAlloc();
        OUTLINED_FUNCTION_69();
        v161[0] = swift_slowAlloc();
        OUTLINED_FUNCTION_262(4.8149e-34);
        v67 = sub_268B385B4();
        OUTLINED_FUNCTION_319();
        v77 = OUTLINED_FUNCTION_97();
        sub_26892CDB8(v77, v78, v79);
        OUTLINED_FUNCTION_296();

        *(v49 + 4) = v67;
        OUTLINED_FUNCTION_27();
        _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
        OUTLINED_FUNCTION_77();
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v162);
      }

      (v57)(v150, v39);
      if ((OUTLINED_FUNCTION_199() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v164, v164[3]), OUTLINED_FUNCTION_202(), OUTLINED_FUNCTION_129(), sub_268B376D4(), v120 = sub_268B37124(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v120), sub_2688C058C(v49, &qword_2802A58C0, &unk_268B3F080), EnumTagSinglePayload != 1))
      {
        OUTLINED_FUNCTION_73();
        v156();
        OUTLINED_FUNCTION_320();
        v132 = sub_268B37A34();
        sub_268B37ED4();
        v133 = OUTLINED_FUNCTION_71();
        if (os_log_type_enabled(v133, v134))
        {
          OUTLINED_FUNCTION_68();
          v135 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v161[5] = swift_slowAlloc();
          *v135 = 136315138;
          sub_2688E4594(&v162, v161);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5930, &qword_268B3BEF0);
          v136 = v67;
          v137 = sub_268B37C24();
          OUTLINED_FUNCTION_319();
          v138 = OUTLINED_FUNCTION_97();
          sub_26892CDB8(v138, v139, v140);
          OUTLINED_FUNCTION_296();

          *(v135 + 4) = v137;
          OUTLINED_FUNCTION_169(&dword_2688BB000, v141, v142, "Got a valid uso parse as a response to the disambiguation prompt with task: %s. Handling...");
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();

          v143 = v136;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(&v162);
          v143 = v67;
        }

        (v57)(v143, v39);
        sub_268B34EC4();
      }

      else
      {
        OUTLINED_FUNCTION_175(&v165);
        OUTLINED_FUNCTION_73();
        v156();
        v122 = sub_268B37A34();
        sub_268B37F04();
        v123 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v123, v124))
        {
          OUTLINED_FUNCTION_64();
          v125 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v125);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v126, v127, v128, v129, v130, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v131 = OUTLINED_FUNCTION_192();
        v57(v131);
        sub_268B34ED4();
      }

      sub_2688E73C0(v159, type metadata accessor for MediaPlayerIntent);
      __swift_destroy_boxed_opaque_existential_0Tm(v164);
LABEL_30:
      OUTLINED_FUNCTION_23();
      return;
  }
}

void sub_2688C61A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v25);
  v135 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_78();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_74();
  v139 = v30;
  v31 = OUTLINED_FUNCTION_9();
  v32 = type metadata accessor for MediaIntent(v31);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  v34 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  __swift_project_value_buffer(v34, qword_2802CDA10);
  v44 = OUTLINED_FUNCTION_76();
  v45(v44);
  v46 = sub_268B37A34();
  v47 = sub_268B37ED4();
  if (os_log_type_enabled(v46, v47))
  {
    OUTLINED_FUNCTION_64();
    v48 = swift_slowAlloc();
    OUTLINED_FUNCTION_279(v48);
    OUTLINED_FUNCTION_306(&dword_2688BB000, v49, v50, "DeviceDisambiguationStrategy.actionForInput() called");
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v51 = *(v36 + 8);
  v52 = OUTLINED_FUNCTION_228();
  v51(v52);
  sub_268B35414();
  v53 = OUTLINED_FUNCTION_149();
  sub_26892E9C4(v53, v54, v55);
  OUTLINED_FUNCTION_124(v139);
  if (v56)
  {
    sub_2688C058C(v139, &qword_2802A59A0, &unk_268B3F0C0);
    sub_268B34ED4();
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_189();
  sub_2688E7348();
  v57 = 7562617;
  switch(*(v20 + 24))
  {
    case 1:
      v57 = 28526;
      goto LABEL_10;
    case 2:

      goto LABEL_17;
    case 3:
      goto LABEL_11;
    default:
LABEL_10:
      v58 = OUTLINED_FUNCTION_207(v57);

      if (v58)
      {
LABEL_17:
        OUTLINED_FUNCTION_41();
        v76();
        v77 = sub_268B37A34();
        sub_268B37ED4();
        v78 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v78, v79))
        {
          OUTLINED_FUNCTION_64();
          v80 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v80);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v81, v82, v83, v84, v85, 2u);
          OUTLINED_FUNCTION_260();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        (v51)(v137, v34);
        sub_268B34EB4();
        goto LABEL_29;
      }

LABEL_11:
      OUTLINED_FUNCTION_217();
      __swift_project_boxed_opaque_existential_1((v59 + 64), *(v59 + 88));
      OUTLINED_FUNCTION_129();
      if ((sub_268B36F54() & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_268B35414();
      if (!sub_268A40454())
      {
        OUTLINED_FUNCTION_153();
        v86(v134, v135);
        OUTLINED_FUNCTION_203();
        goto LABEL_21;
      }

      sub_2689CD68C(&v142);

      OUTLINED_FUNCTION_153();
      v60(v134, v135);
      if (!v143)
      {
LABEL_21:
        sub_2688C058C(&v142, &qword_2802A5928, &unk_268B41110);
LABEL_22:
        if (*(v20 + *(v32 + 76) + 8))
        {
          OUTLINED_FUNCTION_109(&a17);
          OUTLINED_FUNCTION_41();
          v87();
          v88 = sub_268B37A34();
          sub_268B37F04();
          v89 = OUTLINED_FUNCTION_28();
          if (os_log_type_enabled(v89, v90))
          {
            OUTLINED_FUNCTION_64();
            v91 = swift_slowAlloc();
            OUTLINED_FUNCTION_81(v91);
            OUTLINED_FUNCTION_27();
            _os_log_impl(v92, v93, v94, v95, v96, 2u);
            OUTLINED_FUNCTION_260();
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
          }

          (v51)(v138, v34);
          sub_268B34EC4();
        }

        else
        {
          OUTLINED_FUNCTION_109(&a14);
          OUTLINED_FUNCTION_41();
          v97();
          v98 = sub_268B37A34();
          sub_268B37ED4();
          v99 = OUTLINED_FUNCTION_28();
          if (os_log_type_enabled(v99, v100))
          {
            OUTLINED_FUNCTION_64();
            v101 = swift_slowAlloc();
            OUTLINED_FUNCTION_81(v101);
            OUTLINED_FUNCTION_27();
            _os_log_impl(v102, v103, v104, v105, v106, 2u);
            OUTLINED_FUNCTION_260();
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
          }

          (v51)(v136, v34);
          sub_268B34ED4();
        }

LABEL_29:
        sub_2688E73C0(v20, type metadata accessor for MediaIntent);
        goto LABEL_30;
      }

      v140 = v20;
      sub_2688E6514(&v142, v144);
      v61 = v133;
      OUTLINED_FUNCTION_41();
      v62();
      OUTLINED_FUNCTION_320();
      v63 = sub_268B37A34();
      sub_268B37ED4();
      v64 = OUTLINED_FUNCTION_28();
      v66 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
      if (os_log_type_enabled(v64, v65))
      {
        OUTLINED_FUNCTION_68();
        v61 = swift_slowAlloc();
        OUTLINED_FUNCTION_69();
        v141[0] = swift_slowAlloc();
        OUTLINED_FUNCTION_262(4.8149e-34);
        v67 = sub_268B385B4();
        OUTLINED_FUNCTION_319();
        v68 = OUTLINED_FUNCTION_97();
        sub_26892CDB8(v68, v69, v70);
        OUTLINED_FUNCTION_296();
        v66 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;

        *(v61 + 4) = v67;
        OUTLINED_FUNCTION_27();
        _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
        OUTLINED_FUNCTION_77();
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v142);
      }

      (v51)(v133, v34);
      if ((OUTLINED_FUNCTION_199() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v144, v144[3]), OUTLINED_FUNCTION_202(), OUTLINED_FUNCTION_129(), sub_268B376D4(), v107 = sub_268B37124(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v107), sub_2688C058C(v61, &qword_2802A58C0, &unk_268B3F080), EnumTagSinglePayload != 1))
      {
        OUTLINED_FUNCTION_41();
        v120();
        OUTLINED_FUNCTION_320();
        v121 = sub_268B37A34();
        sub_268B37ED4();
        v122 = OUTLINED_FUNCTION_71();
        if (os_log_type_enabled(v122, v123))
        {
          OUTLINED_FUNCTION_68();
          v124 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v141[5] = swift_slowAlloc();
          *v124 = v66[259];
          sub_2688E4594(&v142, v141);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5930, &qword_268B3BEF0);
          v125 = sub_268B37C24();
          OUTLINED_FUNCTION_319();
          v126 = OUTLINED_FUNCTION_97();
          sub_26892CDB8(v126, v127, v128);
          OUTLINED_FUNCTION_296();

          *(v124 + 4) = v125;
          OUTLINED_FUNCTION_169(&dword_2688BB000, v129, v130, "Got a valid uso parse as a response to the disambiguation prompt with task: %s. Handling...");
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();

          v131 = OUTLINED_FUNCTION_122();
          v51(v131);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(&v142);
          v132 = OUTLINED_FUNCTION_97();
          v51(v132);
        }

        sub_268B34EC4();
      }

      else
      {
        OUTLINED_FUNCTION_175(&v145);
        OUTLINED_FUNCTION_41();
        v109();
        v110 = sub_268B37A34();
        sub_268B37F04();
        v111 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v111, v112))
        {
          OUTLINED_FUNCTION_64();
          v113 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v113);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v114, v115, v116, v117, v118, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v119 = OUTLINED_FUNCTION_97();
        v51(v119);
        sub_268B34ED4();
      }

      sub_2688E73C0(v140, type metadata accessor for MediaIntent);
      __swift_destroy_boxed_opaque_existential_0Tm(v144);
LABEL_30:
      OUTLINED_FUNCTION_23();
      return;
  }
}

uint64_t sub_2688C6BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_2688F290C();
}

void sub_2688C6D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_26();
  v90 = v25;
  v82 = v26;
  v81 = v27;
  v91 = a25;
  v86 = a21;
  v87 = a22;
  v88 = a24;
  v89 = v28;
  v83 = a23;
  sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  v93 = v29;
  v94 = v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2();
  v92 = v31;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_1();
  v78 = v32;
  v80 = *(v33 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_74();
  v96 = v35;
  OUTLINED_FUNCTION_9();
  v76 = sub_268B35434();
  OUTLINED_FUNCTION_1();
  v95 = v36;
  v77 = *(v37 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_38(v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_268B37F44();
  OUTLINED_FUNCTION_1();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_0();
  v46 = v45 - v44;
  sub_268B37F34();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_98();
  sub_268B37B14();
  OUTLINED_FUNCTION_1();
  v84 = v49;
  v85 = v48;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  v52 = v51 - v50;
  v74 = sub_2688EA03C(0, &qword_2802A7320, 0x277D85C78);
  v72[1] = v52;
  sub_268B37AF4();
  v98[0] = MEMORY[0x277D84F90];
  sub_2688EA07C(&unk_2802A5890, 255, MEMORY[0x277D85230]);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  v75 = MEMORY[0x277D83970];
  sub_2688E44B8(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v42 + 104))(v46, *MEMORY[0x277D85260], v40);
  v74 = sub_268B37F74();
  v54 = v95;
  v55 = v73;
  v56 = v76;
  (*(v95 + 16))(v73, v81, v76);
  OUTLINED_FUNCTION_214();
  v57 = v79;
  (*(v53 + 16))(v96, v82, v79);
  v58 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v59 = (v77 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (*(v53 + 80) + v59 + 16) & ~*(v53 + 80);
  v61 = (v80 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v95 + 32))(v62 + v58, v55, v56);
  v63 = (v62 + v59);
  v64 = v87;
  *v63 = v86;
  v63[1] = v64;
  v65 = *(v53 + 32);
  v53 += 32;
  v65(v62 + v60, v96, v57);
  v66 = v89;
  *(v62 + v61) = v90;
  *(v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8)) = v66;
  v98[4] = v88;
  v98[5] = v62;
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 1107296256;
  v98[2] = sub_268A0B300;
  v98[3] = v91;
  v67 = _Block_copy(v98);

  v68 = v66;
  OUTLINED_FUNCTION_202();
  sub_268B37AE4();
  v97 = MEMORY[0x277D84F90];
  sub_2688EA07C(&unk_2802A7010, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688E44B8(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v70 = v92;
  v69 = v93;
  sub_268B38124();
  v71 = v74;
  MEMORY[0x26D625950](0, v53, v70, v67);
  _Block_release(v67);

  (*(v94 + 8))(v70, v69);
  (*(v84 + 8))(v53, v85);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688C7630(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v66 = a3;
  v67 = a8;
  v69 = a6;
  v70 = a4;
  v68 = a2;
  v71 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v64 = *(v9 - 8);
  v65 = v9;
  v62 = *(v64 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v57 - v10;
  v11 = sub_268B367A4();
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v58 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268B37A54();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v21 = *(v14 + 16);
  v21(v19, v20, v13);
  v22 = sub_268B37A34();
  v23 = sub_268B37ED4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "DeviceDisambiguationStrategy.makePromptForDisambiguation() called", v24, 2u);
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  v25 = *(v14 + 8);
  v25(v19, v13);
  sub_268B36754();
  v26 = sub_268B36734();
  if (!v26)
  {
    v26 = sub_268B36744();
  }

  v27 = v26;
  v61 = a9;
  v21(v17, v20, v13);

  v28 = sub_268B37A34();
  v29 = sub_268B37ED4();

  v30 = os_log_type_enabled(v28, v29);
  v72 = v27;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v75 = v32;
    *v31 = 136315138;
    sub_268B36714();
    v57 = v25;
    v33 = v58;
    sub_268B36B14();

    v34 = sub_268B36784();
    v36 = v35;
    (*(v59 + 8))(v33, v60);
    v37 = sub_26892CDB8(v34, v36, &v75);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_2688BB000, v28, v29, "DeviceDisambiguationStrategy.makePromptForDisambiguation cached responseMode = %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x26D6266E0](v32, -1, -1);
    MEMORY[0x26D6266E0](v31, -1, -1);

    v57(v17, v13);
  }

  else
  {

    v25(v17, v13);
  }

  v38 = v63;
  v39 = v64;
  v40 = v65;
  (*(v64 + 16))(v63, v73, v65);
  v41 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v42 = (v62 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v74;
  *(v44 + 2) = v72;
  *(v44 + 3) = v45;
  v47 = v68;
  v46 = v69;
  *(v44 + 4) = v68;
  *(v44 + 5) = v46;
  (*(v39 + 32))(&v44[v41], v38, v40);
  v48 = &v44[v42];
  v49 = v66;
  v50 = v61;
  *v48 = v67;
  v48[1] = v50;
  v51 = &v44[v43];
  v53 = v70;
  v52 = v71;
  *v51 = v49;
  v51[1] = v53;
  *&v44[(v43 + 23) & 0xFFFFFFFFFFFFFFF8] = v52;

  v54 = v47;
  v55 = v46;

  sub_2688C3798();
}

void sub_2688C7C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void (*a24)(uint64_t))
{
  OUTLINED_FUNCTION_26();
  v90 = v26;
  v91 = v24;
  v84 = v27;
  v85 = v28;
  v87 = v30;
  v88 = v29;
  v86 = v31;
  v89 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_1();
  v82 = v34;
  v83 = v33;
  OUTLINED_FUNCTION_21();
  v80 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_74();
  v81 = v37;
  OUTLINED_FUNCTION_9();
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v78 = v39;
  v79 = v38;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2();
  v77 = v40;
  OUTLINED_FUNCTION_9();
  v41 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v46 = __swift_project_value_buffer(v41, qword_2802CDA10);
  v47 = *(v43 + 16);
  v47(v24, v46, v41);
  v48 = sub_268B37A34();
  v49 = sub_268B37ED4();
  v50 = OUTLINED_FUNCTION_71();
  if (os_log_type_enabled(v50, v51))
  {
    OUTLINED_FUNCTION_64();
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v48, v49, "DeviceDisambiguationStrategy.makePromptForDisambiguation() called", v52, 2u);
    v53 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v53);
  }

  v54 = *(v43 + 8);
  v55 = OUTLINED_FUNCTION_189();
  v54(v55);
  sub_268B36754();
  v56 = sub_268B36734();
  if (!v56)
  {
    v56 = sub_268B36744();
  }

  v57 = v56;
  v58 = OUTLINED_FUNCTION_221();
  (v47)(v58);

  v59 = sub_268B37A34();
  v60 = sub_268B37ED4();

  if (os_log_type_enabled(v59, v60))
  {
    OUTLINED_FUNCTION_68();
    v61 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v92 = swift_slowAlloc();
    *v61 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v62 = sub_268B36784();
    (*(v78 + 8))(v77, v79);
    v63 = OUTLINED_FUNCTION_103();
    sub_26892CDB8(v63, v64, v65);
    OUTLINED_FUNCTION_129();

    *(v61 + 4) = v62;
    _os_log_impl(&dword_2688BB000, v59, v60, "DeviceDisambiguationStrategy.makePromptForDisambiguation cached responseMode = %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v92);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    v66 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v66);

    OUTLINED_FUNCTION_176();
    v67();
  }

  else
  {

    (v54)(v25, v41);
  }

  OUTLINED_FUNCTION_152();
  v68(v81, v90, v83);
  v69 = (*(v82 + 80) + 48) & ~*(v82 + 80);
  v70 = (v80 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  *(v72 + 2) = v57;
  *(v72 + 3) = v91;
  *(v72 + 4) = v86;
  *(v72 + 5) = v87;
  (*(v82 + 32))(&v72[v69], v81, v83);
  v73 = &v72[v70];
  *v73 = v85;
  *(v73 + 1) = a21;
  v74 = &v72[v71];
  *v74 = v84;
  *(v74 + 1) = v88;
  *&v72[(v71 + 23) & 0xFFFFFFFFFFFFFFF8] = v89;

  v86;
  v75 = v87;

  v76 = OUTLINED_FUNCTION_123();
  a24(v76);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688C83CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_2688C847C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_2688C852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_2688C85C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

void sub_2688C87BC()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v13 = swift_once();
  }

  OUTLINED_FUNCTION_61(v13, qword_2802CDA10);
  v14 = OUTLINED_FUNCTION_139();
  v15(v14);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_64();
    v9 = v11;
    v11 = v2;
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "DeviceDisambiguationStrategy.makeFlowCancelledResponse()", v2, 2u);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v18 = OUTLINED_FUNCTION_103();
  v19(v18);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_129();
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_268B3BBA0;
    *(v20 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v21 = swift_allocObject();
  v21[2] = v23;
  v21[3] = v25;
  v21[4] = v24;
  v21[5] = v7;
  v21[6] = v9;
  v21[7] = v0;
  v21[8] = v11;
  v21[9] = v20;

  v22 = v9;

  sub_268ABDE34(v2, v21);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688C8A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_2688C8AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_2688C8B94;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_2688C8B94()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  OUTLINED_FUNCTION_222();

  return v3();
}

uint64_t sub_2688C8C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();
  *v16 = v8;
  v16[1] = sub_2688EA0F0;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_2688C8EBC(uint64_t a1, uint64_t a2)
{
  result = sub_2688EA07C(&qword_2802A56C8, a2, type metadata accessor for ResumeMediaDeviceDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

void sub_2688C8F5C(uint64_t (*a1)(id *), uint64_t (*a2)(id *), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a3;
  v18 = MEMORY[0x277D84F90];
  v8 = a4(a3);
  v9 = 0;
  v10 = (v5 & 0xC000000000000001);
  v15 = v5;
  v16 = v5 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8 == v9)
    {

      return;
    }

    if (v10)
    {
      v14 = OUTLINED_FUNCTION_122();
      v11 = MEMORY[0x26D625BD0](v14);
    }

    else
    {
      if (v9 >= *(v16 + 16))
      {
        goto LABEL_16;
      }

      v11 = *(v5 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v17 = v11;
    v13 = a1(&v17);
    if (v4)
    {

      return;
    }

    if (v13)
    {
      sub_268B38214();
      v10 = a1;
      a1 = a2;
      a2 = *(v18 + 16);
      sub_268B38244();
      OUTLINED_FUNCTION_273();
      v5 = v15;
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++v9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_2688C90CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_197();
  v5 = v4;
  v32 = v6;
  v33 = v7;
  v35 = sub_268B372A4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v29 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = 0;
  v34 = *(v5 + 16);
  v31 = v9 + 16;
  v16 = (v9 + 8);
  v28 = (v9 + 32);
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v34 == v15)
    {

LABEL_15:
      OUTLINED_FUNCTION_198();
      return;
    }

    if (v15 >= *(v5 + 16))
    {
      break;
    }

    v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v18 = *(v9 + 72);
    v19 = v5;
    (*(v9 + 16))(v14, v5 + v17 + v18 * v15, v35);
    v20 = v32(v14);
    if (v3)
    {
      (*v16)(v14, v35);

      goto LABEL_15;
    }

    if (v20)
    {
      v27 = *v28;
      v27(v29, v14, v35);
      v21 = v30;
      v36 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v21;
      }

      else
      {
        sub_26894482C(0, *(v21 + 16) + 1, 1);
        v22 = v36;
      }

      v5 = v19;
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v30 = v24 + 1;
        v26 = v24;
        sub_26894482C(v23 > 1, v24 + 1, 1);
        v25 = v30;
        v24 = v26;
        v5 = v19;
        v22 = v36;
      }

      ++v15;
      *(v22 + 16) = v25;
      v30 = v22;
      v27(v22 + v17 + v24 * v18, v29, v35);
    }

    else
    {
      (*v16)(v14, v35);
      ++v15;
    }
  }

  __break(1u);
}

void sub_2688C9364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_197();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_2688EFD0C();
  for (i = 0; ; ++i)
  {
    if (v27 == i)
    {
      goto LABEL_13;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x26D625BD0](i, v24);
    }

    else
    {
      if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v29 = *(v24 + 8 * i + 32);
    }

    v30 = v29;
    if (__OFADD__(i, 1))
    {
      break;
    }

    a10 = v29;
    v31 = v26(&a10);
    if (v20)
    {

LABEL_13:
      OUTLINED_FUNCTION_198();
      return;
    }

    if (v31)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_2688C9440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_197();
  v6 = v5;
  v23 = v8;
  v24 = v7;
  v9 = sub_268B372A4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_98();
  v13 = 0;
  v14 = *(v6 + 16);
  while (1)
  {
    if (v14 == v13)
    {
      v19 = 1;
      v20 = v23;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_258();
    (*(v11 + 16))(v4, v6 + v15 + *(v11 + 72) * v13, v9);
    v16 = v24(v4);
    if (v3)
    {
      v21 = OUTLINED_FUNCTION_122();
      v22(v21);
      goto LABEL_10;
    }

    if (v16)
    {
      break;
    }

    v17 = OUTLINED_FUNCTION_122();
    v18(v17);
    ++v13;
  }

  v20 = v23;
  (*(v11 + 32))(v23, v4, v9);
  v19 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v20, v19, 1, v9);
LABEL_10:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_2688C95C8(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v175 = a6;
  v176 = a4;
  v182 = a3;
  v183 = a2;
  v179 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  MEMORY[0x28223BE20](v6 - 8);
  v169 = &v161 - v7;
  v171 = sub_268B37124();
  v164 = *(v171 - 8);
  v8 = MEMORY[0x28223BE20](v171);
  v163 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v170 = &v161 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C8, &qword_268B3BEB0);
  v173 = *(v11 - 8);
  v174 = v11;
  MEMORY[0x28223BE20](v11);
  v172 = &v161 - v12;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58D0, &qword_268B3BEB8);
  MEMORY[0x28223BE20](v180);
  v181 = (&v161 - v13);
  v14 = sub_268B35494();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v161 - v18;
  v20 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v20);
  v177 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_268B37A54();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v168 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v161 = &v161 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v162 = &v161 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v165 = &v161 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v167 = &v161 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v166 = &v161 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v178 = &v161 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v161 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v161 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v161 - v44;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v22, qword_2802CDA10);
  v47 = v23;
  v48 = *(v23 + 16);
  v184 = v23 + 16;
  v185 = v46;
  v188 = v22;
  v186 = v48;
  (v48)(v45);
  v49 = sub_268B37A34();
  v50 = sub_268B37ED4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_2688BB000, v49, v50, "DeviceDisambiguationStrategy.parseDisambiguationResult() called", v51, 2u);
    MEMORY[0x26D6266E0](v51, -1, -1);
  }

  v52 = *(v47 + 8);
  v53 = v188;
  v187 = v47 + 8;
  v52(v45, v188);
  sub_268B35414();
  sub_26893BC0C(v16, 1, v54, v55, v56, v57, v58, v59, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
  {
    v67 = v177;
    sub_2688E7348();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    v69 = sub_268B35254();
    MEMORY[0x28223BE20](v69);
    *(&v161 - 2) = v67;
    sub_2688C9364(sub_2688EA338, (&v161 - 4), v69, v70, v71, v72, v73, v74, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
    v76 = v75;

    v77 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
    if (v76)
    {
      v78 = v188;
      v186(v40, v185, v188);
      v79 = v76;
      v80 = sub_268B37A34();
      v81 = sub_268B37F04();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 138412290;
        *(v82 + 4) = v79;
        *v83 = v76;
        v84 = v79;
        _os_log_impl(&dword_2688BB000, v80, v81, "Found device using destination device id: %@", v82, 0xCu);
        sub_2688C058C(v83, &qword_2802A6420, &unk_268B3C680);
        MEMORY[0x26D6266E0](v83, -1, -1);
        v85 = v82;
        v78 = v188;
        MEMORY[0x26D6266E0](v85, -1, -1);
      }

      v52(v40, v78);
      goto LABEL_13;
    }

    v179 = v68;
    sub_2688EA07C(&qword_2802A58E0, 255, type metadata accessor for MediaPlayerIntent);
    v101 = sub_268B37834();
    v78 = v188;
    if (v101)
    {
      v102 = v167;
      v186(v167, v185, v188);
      v103 = sub_268B37A34();
      v104 = sub_268B37F04();
      v105 = os_log_type_enabled(v103, v104);
      v86 = v175;
      if (v105)
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&dword_2688BB000, v103, v104, "Found homeAutomation nodes in the intent. Mapping the user's selection to a device from the disambiguation list", v106, 2u);
        MEMORY[0x26D6266E0](v106, -1, -1);
      }

      v52(v102, v78);
      v107 = sub_268B35254();
      sub_2688E4FF0(v67, v107, sub_2688E44FC, sub_2688E4574, v108, v109, v110, v111, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
      v113 = v112;

      if (sub_2688EFD0C())
      {
        v114 = v165;
        v186(v165, v185, v78);

        v115 = sub_268B37A34();
        v116 = sub_268B37F04();

        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v189[0] = v118;
          *v117 = 136315138;
          v119 = type metadata accessor for Device();
          v120 = MEMORY[0x26D6256F0](v113, v119);
          v122 = sub_26892CDB8(v120, v121, v189);

          *(v117 + 4) = v122;
          v67 = v177;
          _os_log_impl(&dword_2688BB000, v115, v116, "Matching devices: %s", v117, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v118);
          v123 = v118;
          v78 = v188;
          MEMORY[0x26D6266E0](v123, -1, -1);
          MEMORY[0x26D6266E0](v117, -1, -1);
        }

        v52(v114, v78);
        v77 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
        if (sub_2688EFD0C() == 1)
        {
          sub_2688EFD10();
          if ((v113 & 0xC000000000000001) != 0)
          {
            v124 = MEMORY[0x26D625BD0](0, v113);
          }

          else
          {
            v124 = *(v113 + 32);
          }

          v79 = v124;

          v76 = v79;
          goto LABEL_14;
        }

        v149 = v161;
        v186(v161, v185, v78);
        v150 = sub_268B37A34();
        v151 = sub_268B37EE4();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&dword_2688BB000, v150, v151, "Too many devices matched. Returning an error", v152, 2u);
          MEMORY[0x26D6266E0](v152, -1, -1);
        }

        v52(v149, v78);
        sub_2688C2ECC();
        v146 = swift_allocError();
        v148 = 7;
      }

      else
      {

        v142 = v162;
        v186(v162, v185, v78);
        v143 = sub_268B37A34();
        v144 = sub_268B37EE4();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          _os_log_impl(&dword_2688BB000, v143, v144, "Could not match any devices. Returning an error", v145, 2u);
          MEMORY[0x26D6266E0](v145, -1, -1);
        }

        v52(v142, v78);
        sub_2688C2ECC();
        v146 = swift_allocError();
        v148 = 6;
      }
    }

    else
    {
      v125 = v169;
      sub_2688E451C();
      v126 = v171;
      if (__swift_getEnumTagSinglePayload(v125, 1, v171) == 1)
      {
        sub_2688C058C(v125, &qword_2802A58C0, &unk_268B3F080);
      }

      else
      {
        v127 = v164;
        v128 = v170;
        (*(v164 + 32))(v170, v125, v126);
        v186(v168, v185, v78);
        v129 = v163;
        (*(v127 + 16))(v163, v128, v126);
        v130 = sub_268B37A34();
        v131 = sub_268B37F04();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v189[0] = v133;
          *v132 = 136315138;
          v134 = sub_268B37104();
          v136 = v135;
          v137 = v129;
          v138 = *(v127 + 8);
          v138(v137, v171);
          v139 = sub_26892CDB8(v134, v136, v189);

          *(v132 + 4) = v139;
          _os_log_impl(&dword_2688BB000, v130, v131, "Found list position index: (%s) in the intent. Mapping the user's selection to a device from the disambiguation list", v132, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v133);
          v140 = v133;
          v78 = v188;
          MEMORY[0x26D6266E0](v140, -1, -1);
          v141 = v132;
          v126 = v171;
          MEMORY[0x26D6266E0](v141, -1, -1);
        }

        else
        {

          v153 = v129;
          v138 = *(v127 + 8);
          v138(v153, v126);
        }

        v52(v168, v78);
        sub_268B35254();
        v154 = v170;
        sub_2688CC6AC();
        v79 = v155;

        v138(v154, v126);
        v67 = v177;
        if (v79)
        {
          v76 = v79;
LABEL_13:
          v86 = v175;
LABEL_14:
          v87 = v79;
          sub_2688DBC64(v87);
          v186(v178, v185, v78);
          v88 = v87;
          v89 = sub_268B37A34();
          v90 = sub_268B37F04();

          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            *v91 = v77[368];
            *(v91 + 4) = v88;
            *v92 = v88;
            v93 = v88;
            _os_log_impl(&dword_2688BB000, v89, v90, "Found matching device from previous request, injecting it in the intent: %@", v91, 0xCu);
            sub_2688C058C(v92, &qword_2802A6420, &unk_268B3C680);
            MEMORY[0x26D6266E0](v92, -1, -1);
            v94 = v91;
            v78 = v188;
            MEMORY[0x26D6266E0](v94, -1, -1);
          }

          v52(v178, v78);
          v189[3] = type metadata accessor for Device();
          v189[0] = v88;
          type metadata accessor for ResumeMediaIntent();
          v95 = v88;
          v96 = v86;
          v97 = v172;
          sub_268B35184();
          v98 = v181;
          v99 = v174;
          sub_268B351E4();
          (*(v173 + 8))(v97, v99);
          swift_storeEnumTagMultiPayload();
          v183(v98);

          v100 = v98;
          goto LABEL_44;
        }
      }

      v156 = v166;
      v186(v166, v185, v78);
      v157 = sub_268B37A34();
      v158 = sub_268B37EE4();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        *v159 = 0;
        _os_log_impl(&dword_2688BB000, v157, v158, "Unable to match the user's selection to any items we presented in the disambiguation list", v159, 2u);
        MEMORY[0x26D6266E0](v159, -1, -1);
      }

      v52(v156, v78);
      sub_2688C2ECC();
      v146 = swift_allocError();
      v148 = 8;
    }

    *v147 = v148;
    v160 = v181;
    *v181 = v146;
    swift_storeEnumTagMultiPayload();
    v183(v160);
    v100 = v160;
LABEL_44:
    sub_2688C058C(v100, &unk_2802A58D0, &qword_268B3BEB8);
    return sub_2688E73C0(v67, type metadata accessor for MediaPlayerIntent);
  }

  sub_2688C058C(v19, &qword_2802A5650, &unk_268B3BAC0);
  v186(v43, v185, v53);
  v60 = sub_268B37A34();
  v61 = sub_268B37EE4();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_2688BB000, v60, v61, "Unable to get intent type from parse", v62, 2u);
    MEMORY[0x26D6266E0](v62, -1, -1);
  }

  v52(v43, v53);
  sub_2688C2ECC();
  v63 = swift_allocError();
  *v64 = 5;
  v65 = v181;
  *v181 = v63;
  swift_storeEnumTagMultiPayload();
  v183(v65);
  return sub_2688C058C(v65, &unk_2802A58D0, &qword_268B3BEB8);
}

void sub_2688CA880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void (*a24)(void), void (*a25)(void), uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_26();
  a19 = v31;
  a20 = v32;
  OUTLINED_FUNCTION_173(v33, v34, v35, v36, v32, v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v40);
  v253 = sub_268B37124();
  OUTLINED_FUNCTION_1();
  v235 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v44);
  v45 = OUTLINED_FUNCTION_103();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
  OUTLINED_FUNCTION_156(v47);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v49);
  v266 = v29;
  v267 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(v29, v28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_9();
  v51 = sub_268B35494();
  v52 = OUTLINED_FUNCTION_22(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_0();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v53);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_75();
  type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2();
  v263 = v56;
  OUTLINED_FUNCTION_9();
  v57 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v59 = v58;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_31();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_295();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_132();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v70 = OUTLINED_FUNCTION_82(v57, qword_2802CDA10);
  v71 = v59;
  v73 = OUTLINED_FUNCTION_172(v70, v72);
  v74(v73);
  v75 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v75, v76))
  {
    OUTLINED_FUNCTION_64();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_304(&dword_2688BB000, v77, v78, "DeviceDisambiguationStrategy.parseDisambiguationResult() called");
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v79 = *(v71 + 8);
  v80 = v270;
  (v79)(v27);
  sub_268B35414();
  v81 = OUTLINED_FUNCTION_286();
  sub_26893BC0C(v81, v82, v83, v84, v85, v86, v87, v88, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259);
  OUTLINED_FUNCTION_124(v30);
  if (!v89)
  {
    OUTLINED_FUNCTION_37();
    v104 = v263;
    sub_2688E7348();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    v105 = sub_268B35254();
    MEMORY[0x28223BE20](v105);
    OUTLINED_FUNCTION_59();
    *(v106 - 16) = v263;
    v107 = OUTLINED_FUNCTION_216();
    sub_2688C9364(v107, v108, v109, v110, v111, v112, v113, v114, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254, v257, v260);
    OUTLINED_FUNCTION_101();

    OUTLINED_FUNCTION_108();
    sub_2688EA07C(v133, 255, v134);
    OUTLINED_FUNCTION_148();
    v135 = sub_268B37834();
    v136 = v262;
    if (v135)
    {
      v137 = a27;
      OUTLINED_FUNCTION_109(&a15);
      OUTLINED_FUNCTION_30();
      v138();
      v139 = sub_268B37A34();
      v140 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v140))
      {
        OUTLINED_FUNCTION_64();
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_2688BB000, v139, v140, "Found homeAutomation nodes in the intent. Mapping the user's selection to a device from the disambiguation list", v141, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      OUTLINED_FUNCTION_95();
      v79();
      sub_268B35254();
      v142 = OUTLINED_FUNCTION_227();
      sub_2688E4FF0(v142, v143, v144, v145, v146, v147, v148, v149, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v261);
      OUTLINED_FUNCTION_154();

      if (sub_2688EFD0C())
      {
        v150 = OUTLINED_FUNCTION_17_1(&a11);
        v151(v150);

        v152 = sub_268B37A34();
        v153 = sub_268B37F04();

        if (os_log_type_enabled(v152, v153))
        {
          OUTLINED_FUNCTION_68();
          v154 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v155 = swift_slowAlloc();
          OUTLINED_FUNCTION_280(v155);
          *v154 = 136315138;
          type metadata accessor for Device();
          v156 = OUTLINED_FUNCTION_148();
          v157 = MEMORY[0x26D6256F0](v156);
          sub_26892CDB8(v157, v158, &v271);
          OUTLINED_FUNCTION_241();
          *(v154 + 4) = v270;
          v80 = v270;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v159, v160, v161, v162, v163, 0xCu);
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          v164 = OUTLINED_FUNCTION_34();
          MEMORY[0x26D6266E0](v164);
        }

        OUTLINED_FUNCTION_95();
        v79();
        if (sub_2688EFD0C() == 1)
        {
          sub_2688EFD10();
          if ((v137 & 0xC000000000000001) != 0)
          {
            v197 = MEMORY[0x26D625BD0](0, v137);
          }

          else
          {
            v197 = *(v137 + 32);
          }

          v198 = v197;

LABEL_36:
          v212 = v198;
          v115 = v80;
          v116 = a24;
          v117 = a25;
          v118 = v198;
          v116();
          v269(v264, v268, v115);
          v119 = v118;
          v120 = sub_268B37A34();
          v121 = sub_268B37F04();

          if (os_log_type_enabled(v120, v121))
          {
            OUTLINED_FUNCTION_68();
            v122 = swift_slowAlloc();
            v123 = OUTLINED_FUNCTION_236();
            *v122 = 138412290;
            *(v122 + 4) = v119;
            *v123 = v119;
            v124 = v119;
            OUTLINED_FUNCTION_247();
            _os_log_impl(v125, v126, v127, v128, v122, 0xCu);
            sub_2688C058C(v123, &qword_2802A6420, &unk_268B3C680);
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
          }

          v79();
          v273 = type metadata accessor for Device();
          v271 = v119;
          v117(0);
          v129 = v119;
          OUTLINED_FUNCTION_209(v136);
          OUTLINED_FUNCTION_205();
          OUTLINED_FUNCTION_153();
          v130 = OUTLINED_FUNCTION_179();
          v131(v130);
          swift_storeEnumTagMultiPayload();
          v265(v121);

          v132 = v121;
          goto LABEL_41;
        }

        v199 = OUTLINED_FUNCTION_17_1(&v272);
        v200(v199);
        v184 = sub_268B37A34();
        sub_268B37EE4();
        v201 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v201, v202))
        {
          OUTLINED_FUNCTION_64();
          v203 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v203);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v204, v205, v206, v207, v208, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v209 = OUTLINED_FUNCTION_58();
        (v79)(v209);
        sub_2688C2ECC();
        OUTLINED_FUNCTION_99();
        v194 = swift_allocError();
        v196 = 7;
      }

      else
      {

        v182 = OUTLINED_FUNCTION_17_1(&v273);
        v183(v182);
        v184 = sub_268B37A34();
        sub_268B37EE4();
        v185 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v185, v186))
        {
          OUTLINED_FUNCTION_64();
          v187 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v187);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v188, v189, v190, v191, v192, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v193 = OUTLINED_FUNCTION_58();
        (v79)(v193);
        sub_2688C2ECC();
        OUTLINED_FUNCTION_99();
        v194 = swift_allocError();
        v196 = 6;
      }
    }

    else
    {
      OUTLINED_FUNCTION_301();
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_214();
      OUTLINED_FUNCTION_135(v165, v166, 0);
      if (v89)
      {
        sub_2688C058C(v263, &qword_2802A58C0, &unk_268B3F080);
      }

      else
      {
        OUTLINED_FUNCTION_133();
        v167 = OUTLINED_FUNCTION_123();
        v168(v167);
        OUTLINED_FUNCTION_109(&a10);
        OUTLINED_FUNCTION_30();
        v169();
        OUTLINED_FUNCTION_120();
        v170 = OUTLINED_FUNCTION_230();
        v171(v170);
        v172 = sub_268B37A34();
        v173 = sub_268B37F04();
        v174 = OUTLINED_FUNCTION_71();
        if (os_log_type_enabled(v174, v175))
        {
          OUTLINED_FUNCTION_68();
          v176 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v177 = swift_slowAlloc();
          OUTLINED_FUNCTION_280(v177);
          *v176 = 136315138;
          sub_268B37104();
          OUTLINED_FUNCTION_226();
          OUTLINED_FUNCTION_143();
          v270();
          v178 = OUTLINED_FUNCTION_190();
          sub_26892CDB8(v178, v179, v180);
          OUTLINED_FUNCTION_226();

          *(v176 + 4) = v234;
          OUTLINED_FUNCTION_204(&dword_2688BB000, v172, v173, "Found list position index: (%s) in the intent. Mapping the user's selection to a device from the disambiguation list", v228);
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          OUTLINED_FUNCTION_214();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();

          v181 = v243;
        }

        else
        {

          OUTLINED_FUNCTION_143();
          (v270)(v234, 0);
          v181 = v263;
        }

        (v79)(v181);
        sub_268B35254();
        OUTLINED_FUNCTION_103();
        sub_2688CC6AC();
        v198 = v210;

        v211 = OUTLINED_FUNCTION_189();
        (v270)(v211);
        v136 = v262;
        v104 = v263;
        v80 = v270;
        if (v198)
        {
          goto LABEL_36;
        }
      }

      v213 = OUTLINED_FUNCTION_17_1(&a9);
      v214(v213);
      v184 = sub_268B37A34();
      sub_268B37EE4();
      v215 = OUTLINED_FUNCTION_28();
      if (os_log_type_enabled(v215, v216))
      {
        OUTLINED_FUNCTION_64();
        v217 = swift_slowAlloc();
        OUTLINED_FUNCTION_81(v217);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v218, v219, v220, v221, v222, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      v223 = OUTLINED_FUNCTION_58();
      (v79)(v223);
      sub_2688C2ECC();
      OUTLINED_FUNCTION_99();
      v194 = swift_allocError();
      v196 = 8;
    }

    OUTLINED_FUNCTION_83(v194, v195, v196);
    v224 = OUTLINED_FUNCTION_269();
    v225(v224);
    v132 = v184;
LABEL_41:
    sub_2688C058C(v132, v266, v267);
    sub_2688E73C0(v104, type metadata accessor for MediaPlayerIntent);
    goto LABEL_42;
  }

  sub_2688C058C(v30, &qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_30();
  v90();
  v91 = sub_268B37A34();
  sub_268B37EE4();
  v92 = OUTLINED_FUNCTION_28();
  if (os_log_type_enabled(v92, v93))
  {
    OUTLINED_FUNCTION_64();
    v94 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v94);
    OUTLINED_FUNCTION_27();
    _os_log_impl(v95, v96, v97, v98, v99, 2u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  OUTLINED_FUNCTION_95();
  v79();
  sub_2688C2ECC();
  OUTLINED_FUNCTION_99();
  v100 = swift_allocError();
  OUTLINED_FUNCTION_83(v100, v101, 5);
  v102 = OUTLINED_FUNCTION_269();
  v103(v102);
  sub_2688C058C(v91, v266, v267);
LABEL_42:
  OUTLINED_FUNCTION_23();
}

void sub_2688CB6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void (*a24)(void), uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_26();
  a19 = v30;
  a20 = v31;
  OUTLINED_FUNCTION_173(v32, v33, v34, v35, v31, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v39);
  v240 = sub_268B37124();
  OUTLINED_FUNCTION_1();
  v230 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v43);
  v44 = OUTLINED_FUNCTION_103();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
  OUTLINED_FUNCTION_156(v46);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v48);
  v250 = v28;
  v251 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v27);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_9();
  v50 = sub_268B35494();
  v51 = OUTLINED_FUNCTION_22(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_0();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v52);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_75();
  type metadata accessor for MediaIntent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2();
  v247 = v55;
  OUTLINED_FUNCTION_9();
  v56 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v58 = v57;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_31();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_132();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v69 = OUTLINED_FUNCTION_82(v56, qword_2802CDA10);
  v70 = v58;
  v72 = OUTLINED_FUNCTION_172(v69, v71);
  v73(v72);
  v74 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v74, v75))
  {
    OUTLINED_FUNCTION_64();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_304(&dword_2688BB000, v76, v77, "DeviceDisambiguationStrategy.parseDisambiguationResult() called");
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v78 = *(v70 + 8);
  v79 = v254;
  (v78)(v26);
  sub_268B35414();
  v80 = OUTLINED_FUNCTION_286();
  sub_26892E9C4(v80, v81, v82);
  OUTLINED_FUNCTION_124(v29);
  if (!v83)
  {
    OUTLINED_FUNCTION_35();
    v98 = v247;
    sub_2688E7348();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    v99 = sub_268B35254();
    MEMORY[0x28223BE20](v99);
    OUTLINED_FUNCTION_59();
    *(v100 - 16) = v247;
    v101 = OUTLINED_FUNCTION_216();
    sub_2688C9364(v101, v102, v103, v104, v105, v106, v107, v108, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244);
    OUTLINED_FUNCTION_101();

    OUTLINED_FUNCTION_116();
    sub_2688EA07C(v126, 255, v127);
    OUTLINED_FUNCTION_148();
    v128 = sub_268B37834();
    v129 = v246;
    if (v128)
    {
      v130 = a26;
      OUTLINED_FUNCTION_109(&a15);
      OUTLINED_FUNCTION_30();
      v131();
      v132 = sub_268B37A34();
      v133 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v133))
      {
        OUTLINED_FUNCTION_64();
        v134 = swift_slowAlloc();
        *v134 = 0;
        OUTLINED_FUNCTION_247();
        _os_log_impl(v135, v136, v137, v138, v134, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      OUTLINED_FUNCTION_95();
      v78();
      sub_268B35254();
      v139 = OUTLINED_FUNCTION_227();
      sub_2688E7530(v139, v140, v141, v142, v143, v144, v145, v146, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245);
      OUTLINED_FUNCTION_154();

      if (sub_2688EFD0C())
      {
        v147 = OUTLINED_FUNCTION_17_1(&a11);
        v148(v147);

        v149 = sub_268B37A34();
        v150 = sub_268B37F04();

        if (os_log_type_enabled(v149, v150))
        {
          OUTLINED_FUNCTION_68();
          v151 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v152 = swift_slowAlloc();
          OUTLINED_FUNCTION_280(v152);
          *v151 = 136315138;
          type metadata accessor for Device();
          v153 = OUTLINED_FUNCTION_148();
          v154 = MEMORY[0x26D6256F0](v153);
          sub_26892CDB8(v154, v155, &v255);
          OUTLINED_FUNCTION_241();
          *(v151 + 4) = v254;
          v79 = v254;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v156, v157, v158, v159, v160, 0xCu);
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          v161 = OUTLINED_FUNCTION_34();
          MEMORY[0x26D6266E0](v161);
        }

        OUTLINED_FUNCTION_95();
        v78();
        if (sub_2688EFD0C() == 1)
        {
          sub_2688EFD10();
          if ((v130 & 0xC000000000000001) != 0)
          {
            v193 = MEMORY[0x26D625BD0](0, v130);
          }

          else
          {
            v193 = *(v130 + 32);
          }

          v194 = v193;

LABEL_36:
          v208 = v194;
          v109 = v79;
          v110 = a24;
          v111 = v194;
          sub_2688DC348(v111);
          v253(v248, v252, v109);
          v112 = v111;
          v113 = sub_268B37A34();
          v114 = sub_268B37F04();

          if (os_log_type_enabled(v113, v114))
          {
            OUTLINED_FUNCTION_68();
            v115 = swift_slowAlloc();
            v116 = OUTLINED_FUNCTION_236();
            *v115 = 138412290;
            *(v115 + 4) = v112;
            *v116 = v112;
            v117 = v112;
            OUTLINED_FUNCTION_247();
            _os_log_impl(v118, v119, v120, v121, v115, 0xCu);
            sub_2688C058C(v116, &qword_2802A6420, &unk_268B3C680);
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
          }

          v78();
          v257 = type metadata accessor for Device();
          v255 = v112;
          v110(0);
          v122 = v112;
          OUTLINED_FUNCTION_209(v129);
          OUTLINED_FUNCTION_205();
          OUTLINED_FUNCTION_153();
          v123 = OUTLINED_FUNCTION_179();
          v124(v123);
          swift_storeEnumTagMultiPayload();
          v249(v114);

          v125 = v114;
          goto LABEL_41;
        }

        v195 = OUTLINED_FUNCTION_17_1(&v256);
        v196(v195);
        v180 = sub_268B37A34();
        sub_268B37EE4();
        v197 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v197, v198))
        {
          OUTLINED_FUNCTION_64();
          v199 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v199);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v200, v201, v202, v203, v204, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v205 = OUTLINED_FUNCTION_58();
        (v78)(v205);
        sub_2688C2ECC();
        OUTLINED_FUNCTION_99();
        v190 = swift_allocError();
        v192 = 7;
      }

      else
      {

        v178 = OUTLINED_FUNCTION_17_1(&v257);
        v179(v178);
        v180 = sub_268B37A34();
        sub_268B37EE4();
        v181 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v181, v182))
        {
          OUTLINED_FUNCTION_64();
          v183 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v183);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v184, v185, v186, v187, v188, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v189 = OUTLINED_FUNCTION_58();
        (v78)(v189);
        sub_2688C2ECC();
        OUTLINED_FUNCTION_99();
        v190 = swift_allocError();
        v192 = 6;
      }
    }

    else
    {
      OUTLINED_FUNCTION_301();
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_214();
      OUTLINED_FUNCTION_135(v162, v163, 0);
      if (v83)
      {
        sub_2688C058C(v247, &qword_2802A58C0, &unk_268B3F080);
      }

      else
      {
        OUTLINED_FUNCTION_133();
        v164 = OUTLINED_FUNCTION_123();
        v165(v164);
        OUTLINED_FUNCTION_30();
        v166();
        OUTLINED_FUNCTION_120();
        v167 = OUTLINED_FUNCTION_230();
        v168(v167);
        v169 = sub_268B37A34();
        v170 = sub_268B37F04();
        v171 = OUTLINED_FUNCTION_71();
        if (os_log_type_enabled(v171, v172))
        {
          OUTLINED_FUNCTION_68();
          v173 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v174 = swift_slowAlloc();
          OUTLINED_FUNCTION_280(v174);
          *v173 = 136315138;
          sub_268B37104();
          OUTLINED_FUNCTION_226();
          OUTLINED_FUNCTION_143();
          v254();
          v175 = OUTLINED_FUNCTION_190();
          sub_26892CDB8(v175, v176, v177);
          OUTLINED_FUNCTION_226();

          *(v173 + 4) = v229;
          OUTLINED_FUNCTION_204(&dword_2688BB000, v169, v170, "Found list position index: (%s) in the intent. Mapping the user's selection to a device from the disambiguation list", v223);
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          OUTLINED_FUNCTION_214();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        else
        {

          OUTLINED_FUNCTION_143();
          (v254)(v229, 0);
        }

        (v78)(v227);
        sub_268B35254();
        OUTLINED_FUNCTION_103();
        sub_2688CC6AC();
        v194 = v206;

        v207 = OUTLINED_FUNCTION_189();
        (v254)(v207);
        v129 = v246;
        v98 = v247;
        v79 = v254;
        if (v194)
        {
          goto LABEL_36;
        }
      }

      v209 = OUTLINED_FUNCTION_17_1(&a10);
      v210(v209);
      v180 = sub_268B37A34();
      sub_268B37EE4();
      v211 = OUTLINED_FUNCTION_28();
      if (os_log_type_enabled(v211, v212))
      {
        OUTLINED_FUNCTION_64();
        v213 = swift_slowAlloc();
        OUTLINED_FUNCTION_81(v213);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v214, v215, v216, v217, v218, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      v219 = OUTLINED_FUNCTION_58();
      (v78)(v219);
      sub_2688C2ECC();
      OUTLINED_FUNCTION_99();
      v190 = swift_allocError();
      v192 = 8;
    }

    OUTLINED_FUNCTION_83(v190, v191, v192);
    v220 = OUTLINED_FUNCTION_269();
    v221(v220);
    v125 = v180;
LABEL_41:
    sub_2688C058C(v125, v250, v251);
    sub_2688E73C0(v98, type metadata accessor for MediaIntent);
    goto LABEL_42;
  }

  sub_2688C058C(v29, &qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_30();
  v84();
  v85 = sub_268B37A34();
  sub_268B37EE4();
  v86 = OUTLINED_FUNCTION_28();
  if (os_log_type_enabled(v86, v87))
  {
    OUTLINED_FUNCTION_64();
    v88 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v88);
    OUTLINED_FUNCTION_27();
    _os_log_impl(v89, v90, v91, v92, v93, 2u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  OUTLINED_FUNCTION_95();
  v78();
  sub_2688C2ECC();
  OUTLINED_FUNCTION_99();
  v94 = swift_allocError();
  OUTLINED_FUNCTION_83(v94, v95, 5);
  v96 = OUTLINED_FUNCTION_269();
  v97(v96);
  sub_2688C058C(v85, v28, v251);
LABEL_42:
  OUTLINED_FUNCTION_23();
}

BOOL sub_2688CC504(void *a1, uint64_t a2)
{
  v3 = [a1 routeId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_268B37BF4();
    v7 = v6;

    v8 = (a2 + *(type metadata accessor for MediaPlayerIntent(0) + 92));
    v9 = v8[1];
    if (v9)
    {
      if (v5 == *v8 && v9 == v7)
      {

        return 1;
      }

      else
      {
        OUTLINED_FUNCTION_278();
        sub_268B38444();
        OUTLINED_FUNCTION_270();

        return a2 & 1;
      }
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v12 = type metadata accessor for MediaPlayerIntent(0);
    return OUTLINED_FUNCTION_292(*(v12 + 92));
  }
}

BOOL sub_2688CC5D8(void *a1, uint64_t a2)
{
  v3 = [a1 routeId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_268B37BF4();
    v7 = v6;

    v8 = (a2 + *(type metadata accessor for MediaIntent(0) + 76));
    v9 = v8[1];
    if (v9)
    {
      if (v5 == *v8 && v9 == v7)
      {

        return 1;
      }

      else
      {
        OUTLINED_FUNCTION_278();
        sub_268B38444();
        OUTLINED_FUNCTION_270();

        return a2 & 1;
      }
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v12 = type metadata accessor for MediaIntent(0);
    return OUTLINED_FUNCTION_292(*(v12 + 76));
  }
}

void sub_2688CC6AC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = sub_268B37114();
  v13 = sub_2688CC9E8(v12, v1);
  v14 = v13;
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      v13 = swift_once();
    }

    OUTLINED_FUNCTION_61(v13, qword_2802CDA10);
    OUTLINED_FUNCTION_120();
    v15(v11);

    v16 = v14;
    v17 = sub_268B37A34();
    v18 = sub_268B37F04();

    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_69();
      v19 = swift_slowAlloc();
      v46 = OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_69();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v19 = 136315650;
      v20 = type metadata accessor for Device();
      v21 = MEMORY[0x26D6256F0](v1, v20);
      v45 = v17;
      v22 = v14;
      v23 = v21;
      v44 = v18;
      v25 = v24;

      v26 = v23;
      v27 = v22;
      v28 = sub_26892CDB8(v26, v25, &v48);

      *(v19 + 4) = v28;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v12;
      *(v19 + 22) = 2112;
      *(v19 + 24) = v16;
      v29 = v46;
      *v46 = v27;
      v30 = v16;
      v31 = v45;
      _os_log_impl(&dword_2688BB000, v45, v44, "Matching item from list: %s at index: %ld is: %@", v19, 0x20u);
      sub_2688C058C(v29, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    else
    {
    }

    (*(v4 + 8))(v11, v2);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      v13 = swift_once();
    }

    OUTLINED_FUNCTION_61(v13, qword_2802CDA10);
    OUTLINED_FUNCTION_120();
    v32 = OUTLINED_FUNCTION_290();
    v33(v32);
    v34 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v34, v35))
    {
      OUTLINED_FUNCTION_64();
      v36 = swift_slowAlloc();
      OUTLINED_FUNCTION_10(v36);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      v42 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v42);
    }

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688CC9E8(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a2 >> 62;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    result = sub_268B382A4();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = -v3;
  if (__OFSUB__(0, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 += result;
  if (__OFSUB__(result, v6))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v3 < 0)
  {
    return 0;
  }

LABEL_7:
  if (v4)
  {
    v7 = sub_268B382A4();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= v7)
  {
    return 0;
  }

  sub_2688EFD10();
  if ((a2 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x26D625BD0](v3, a2);
  }

  else
  {
    return *(a2 + 8 * v3 + 32);
  }
}

uint64_t sub_2688CCAB4()
{
  OUTLINED_FUNCTION_252();
  sub_268B36754();
  OUTLINED_FUNCTION_191();
  return sub_268B366F4();
}

uint64_t sub_2688CCB64(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69 = a2;
  v65 = a7;
  v66 = a8;
  v73 = a5;
  v67 = a3;
  v68 = a4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v64 = *(v72 - 8);
  v63 = *(v64 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v60 = *(v14 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v62 = &v52 - v15;
  v16 = sub_268B367A4();
  v56 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v55 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_268B37A54();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v70 = a11;
  v58 = a9;
  v59 = a10;
  v22 = __swift_project_value_buffer(v18, qword_2802CDA10);
  (*(v19 + 16))(v21, v22, v18);

  v23 = sub_268B37A34();
  v24 = sub_268B37ED4();

  v25 = os_log_type_enabled(v23, v24);
  v57 = a1;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v54 = a6;
    v27 = v26;
    v28 = swift_slowAlloc();
    v52 = v16;
    v53 = v28;
    v74 = v28;
    *v27 = 136315138;
    sub_268B36714();
    v29 = v55;
    sub_268B36B14();

    v30 = sub_268B36784();
    v32 = v31;
    (*(v56 + 8))(v29, v52);
    v33 = sub_26892CDB8(v30, v32, &v74);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_2688BB000, v23, v24, "DeviceDisambiguationStrategy.makePromptForDisambiguation responseMode before ContextUpdate  = %s", v27, 0xCu);
    v34 = v53;
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    MEMORY[0x26D6266E0](v34, -1, -1);
    MEMORY[0x26D6266E0](v27, -1, -1);
  }

  (*(v19 + 8))(v21, v18);
  sub_2688E451C();
  v35 = v64;
  (*(v64 + 16))(v71, v73, v72);
  v36 = (v61 + ((*(v60 + 80) + 24) & ~*(v60 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = ((v56 + 15) & 0xFFFFFFFFFFFFFFF8);
  v38 = &v55[*(v35 + 80) + 8] & ~*(v35 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v57;
  sub_2688E43D8();
  v40 = (v39 + v36);
  v41 = v66;
  *v40 = v65;
  v40[1] = v41;
  v42 = (v39 + v37);
  v43 = v59;
  *v42 = v58;
  v42[1] = v43;
  v45 = v67;
  v44 = v68;
  v46 = v60;
  *(v39 + v61) = v67;
  *(v39 + v46) = v44;
  v47 = v55;
  *(v39 + v56) = v69;
  v48 = v71;
  *&v47[v39] = v70;
  (*(v35 + 32))(v39 + v38, v48, v72);

  v49 = v45;
  v50 = v44;

  sub_2688C3A10(v49, v50, v73, sub_2688E18E8, v39);
}

void sub_2688CD138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void (*a26)(uint64_t))
{
  OUTLINED_FUNCTION_197();
  a19 = v26;
  a20 = v27;
  v96 = v28;
  v91 = v29;
  v92 = v30;
  v100 = v31;
  v93 = v32;
  v94 = v33;
  v35 = v34;
  v95 = a26;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_1();
  v90 = v36;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_74();
  v98 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_19_0(v39);
  v86 = v40;
  OUTLINED_FUNCTION_21();
  v88 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_9();
  v43 = sub_268B367A4();
  OUTLINED_FUNCTION_156(v43);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_0();
  v47 = v46 - v45;
  v48 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_0();
  v54 = v53 - v52;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v97 = a23;
  v84 = a21;
  v85 = a22;
  __swift_project_value_buffer(v48, qword_2802CDA10);
  v55 = OUTLINED_FUNCTION_104();
  v56(v55);

  v57 = sub_268B37A34();
  v58 = sub_268B37ED4();

  v83 = v35;
  if (os_log_type_enabled(v57, v58))
  {
    OUTLINED_FUNCTION_68();
    v59 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v81 = v48;
    v60 = swift_slowAlloc();
    a10 = v60;
    *v59 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v61 = sub_268B36784();
    v63 = v62;
    OUTLINED_FUNCTION_153();
    v64(v47);
    v65 = sub_26892CDB8(v61, v63, &a10);

    *(v59 + 4) = v65;
    _os_log_impl(&dword_2688BB000, v57, v58, "DeviceDisambiguationStrategy.makePromptForDisambiguation responseMode before ContextUpdate  = %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    v66 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v66);
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    (*(v50 + 8))(v54, v81);
  }

  else
  {

    v67 = OUTLINED_FUNCTION_191();
    v69(v67, v68);
  }

  sub_2688E451C();
  OUTLINED_FUNCTION_120();
  v70(v98, v100, v99);
  v71 = (v88 + ((*(v86 + 80) + 24) & ~*(v86 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v89 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
  v82 = (((v87 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = (*(v90 + 80) + v82 + 8) & ~*(v90 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = v83;
  sub_2688E43D8();
  v75 = (v74 + v71);
  *v75 = v91;
  v75[1] = v92;
  v76 = (v74 + v72);
  *v76 = v84;
  v76[1] = v85;
  *(v74 + v89) = v93;
  *(v74 + v87) = v94;
  OUTLINED_FUNCTION_176();
  *(v74 + v77) = v96;
  *(v74 + v82) = v97;
  (*(v90 + 32))(v74 + v73, v98, v99);

  v78 = v93;
  v79 = v94;

  v80 = OUTLINED_FUNCTION_189();
  v95(v80);

  OUTLINED_FUNCTION_198();
}

uint64_t sub_2688CD694()
{
  OUTLINED_FUNCTION_252();
  sub_268B36754();
  return sub_268B366F4();
}

uint64_t sub_2688CD74C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12)
{
  v79 = a6;
  v80 = a8;
  v91 = a7;
  v78 = a5;
  v92 = a3;
  v93 = a4;
  v83 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v12 - 8);
  v90 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v81 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v88 = &v67 - v17;
  v89 = sub_268B34E24();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v22 = MEMORY[0x28223BE20](v85);
  v82 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v71 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  v84 = &v67 - v26;
  v73 = sub_268B367A4();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_268B37A54();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v77 = (&v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v34 = &v67 - v33;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v29, qword_2802CDA10);
  v36 = *(v30 + 16);
  v75 = v35;
  v76 = v30 + 16;
  v74 = v36;
  (v36)(v34);

  v37 = v30;
  v38 = sub_268B37A34();
  v39 = sub_268B37ED4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v70 = v21;
    v41 = v40;
    v68 = swift_slowAlloc();
    v94[0] = v68;
    *v41 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v42 = sub_268B36784();
    v69 = v19;
    v67 = v37;
    v44 = v43;
    (*(v72 + 8))(v28, v73);
    v45 = sub_26892CDB8(v42, v44, v94);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_2688BB000, v38, v39, "DeviceDisambiguationStrategy.makePromptForDisambiguation responseMode before creating output = %s", v41, 0xCu);
    v46 = v68;
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    MEMORY[0x26D6266E0](v46, -1, -1);
    v47 = v41;
    v21 = v70;
    MEMORY[0x26D6266E0](v47, -1, -1);

    v48 = *(v67 + 8);
  }

  else
  {

    v48 = *(v37 + 8);
  }

  v48(v34, v29);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v21, &qword_2802A6300, &unk_268B3BD80);
    v49 = v77;
    v74(v77, v75, v29);
    v50 = sub_268B37A34();
    v51 = sub_268B37EE4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2688BB000, v50, v51, "DeviceDisambiguationStrategy.makeDialogForDisambiguation Unable to generate dialog.", v52, 2u);
      MEMORY[0x26D6266E0](v52, -1, -1);
    }

    v48(v49, v29);
    sub_2688C2ECC();
    v53 = swift_allocError();
    *v54 = -60;
    v94[0] = v53;
    v95 = 1;
    v92(v94);
    return sub_2688C058C(v94, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v83 = a12;
    v77 = a11;
    v76 = a10;
    sub_2688E43D8();
    sub_2688E1FD4(0, 2, v78, v79, v91, 0x6E776F6E6B6E75, 0xE700000000000000, v80, sub_2688EA0E4, sub_268921060, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
    __swift_project_boxed_opaque_existential_1((a9 + 144), *(a9 + 168));
    (*(v87 + 104))(v86, *MEMORY[0x277D5BB60], v89);
    v56 = v71;
    sub_2688E451C();

    v57 = sub_268B350F4();
    v58 = *(v57 - 8);
    v59 = v88;
    (*(v58 + 32))(v88, v56, v57);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v57);
    v60 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v90, 1, 1, v60);
    v61 = v81;
    sub_2688E451C();
    if (__swift_getEnumTagSinglePayload(v61, 1, v57) == 1)
    {
      sub_2688C058C(v61, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v58 + 8))(v61, v57);
    }

    v62 = v86;
    v63 = v90;
    sub_2688E3B38();

    sub_2688C058C(v63, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v88, &unk_2802A57B0, &unk_268B3CE00);
    (*(v87 + 8))(v62, v89);
    v64 = v84;
    v65 = v82;
    sub_2688E451C();
    v66 = *(v65 + *(v85 + 48));
    sub_2688CFE60(v77, v65, v66, v83, v92, v93);

    sub_2688C058C(v64, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v58 + 8))(v65, v57);
  }
}

uint64_t sub_2688CE210(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12)
{
  v79 = a6;
  v80 = a8;
  v91 = a7;
  v78 = a5;
  v92 = a3;
  v93 = a4;
  v83 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v12 - 8);
  v90 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v81 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v88 = &v67 - v17;
  v89 = sub_268B34E24();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v22 = MEMORY[0x28223BE20](v85);
  v82 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v71 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  v84 = &v67 - v26;
  v73 = sub_268B367A4();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_268B37A54();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v77 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v67 - v33;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v29, qword_2802CDA10);
  v36 = *(v30 + 16);
  v75 = v35;
  v76 = v30 + 16;
  v74 = v36;
  (v36)(v34);

  v37 = v30;
  v38 = sub_268B37A34();
  v39 = sub_268B37ED4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v70 = v21;
    v41 = v40;
    v68 = swift_slowAlloc();
    v94[0] = v68;
    *v41 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v42 = sub_268B36784();
    v69 = v19;
    v67 = v37;
    v44 = v43;
    (*(v72 + 8))(v28, v73);
    v45 = sub_26892CDB8(v42, v44, v94);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_2688BB000, v38, v39, "DeviceDisambiguationStrategy.makePromptForDisambiguation responseMode before creating output = %s", v41, 0xCu);
    v46 = v68;
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    MEMORY[0x26D6266E0](v46, -1, -1);
    v47 = v41;
    v21 = v70;
    MEMORY[0x26D6266E0](v47, -1, -1);

    v48 = *(v67 + 8);
  }

  else
  {

    v48 = *(v37 + 8);
  }

  v48(v34, v29);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v21, &qword_2802A6300, &unk_268B3BD80);
    v49 = v77;
    v74(v77, v75, v29);
    v50 = sub_268B37A34();
    v51 = sub_268B37EE4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2688BB000, v50, v51, "DeviceDisambiguationStrategy.makeDialogForDisambiguation Unable to generate dialog.", v52, 2u);
      MEMORY[0x26D6266E0](v52, -1, -1);
    }

    v48(v49, v29);
    sub_2688C2ECC();
    v53 = swift_allocError();
    *v54 = -60;
    v94[0] = v53;
    v95 = 1;
    v92(v94);
    return sub_2688C058C(v94, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v83 = a12;
    v77 = a11;
    v76 = a10;
    sub_2688E43D8();
    sub_2688E1C2C();
    __swift_project_boxed_opaque_existential_1((a9 + 144), *(a9 + 168));
    (*(v87 + 104))(v86, *MEMORY[0x277D5BB60], v89);
    v56 = v71;
    sub_2688E451C();

    v57 = sub_268B350F4();
    v58 = *(v57 - 8);
    v59 = v88;
    (*(v58 + 32))(v88, v56, v57);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v57);
    v60 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v90, 1, 1, v60);
    v61 = v81;
    sub_2688E451C();
    if (__swift_getEnumTagSinglePayload(v61, 1, v57) == 1)
    {
      sub_2688C058C(v61, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v58 + 8))(v61, v57);
    }

    v62 = v86;
    v63 = v90;
    sub_2688E3B38();

    sub_2688C058C(v63, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v88, &unk_2802A57B0, &unk_268B3CE00);
    (*(v87 + 8))(v62, v89);
    v64 = v84;
    v65 = v82;
    sub_2688E451C();
    v66 = *(v65 + *(v85 + 48));
    sub_2688D25D4(v77, v65, v66, v83, v92, v93);

    sub_2688C058C(v64, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v58 + 8))(v65, v57);
  }
}

void sub_2688CECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(uint64_t, void (*)(uint64_t (*)(void, void, void), uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t), uint64_t a23, uint64_t a24, uint64_t a25, void (*a26)(uint64_t (*)(void, void, void), uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a27)(uint64_t, uint64_t, void *, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_197();
  a19 = v29;
  a20 = v30;
  OUTLINED_FUNCTION_147(v31, v32, v33, v34, v35, v36, v37, v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  v167 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v43 = OUTLINED_FUNCTION_22(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v158 = v44;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_78();
  v165 = v46;
  OUTLINED_FUNCTION_9();
  v166 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v164 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2();
  v163 = v49;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v50);
  v52 = &v146 - v51;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3();
  v159 = v54;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_78();
  v161 = v57;
  OUTLINED_FUNCTION_9();
  v151 = sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v150 = v58;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2();
  v61 = v60;
  OUTLINED_FUNCTION_9();
  v62 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v64 = v63;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_136();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  __swift_project_value_buffer(v62, qword_2802CDA10);
  OUTLINED_FUNCTION_120();
  v153 = v67;
  v154 = v68;
  v152 = v69;
  v69(v28);

  v70 = sub_268B37A34();
  v71 = sub_268B37ED4();

  if (os_log_type_enabled(v70, v71))
  {
    OUTLINED_FUNCTION_68();
    v72 = swift_slowAlloc();
    v149 = v27;
    v73 = v72;
    OUTLINED_FUNCTION_69();
    v147 = swift_slowAlloc();
    v171[0] = v147;
    *v73 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v74 = sub_268B36784();
    OUTLINED_FUNCTION_259(&a9);
    OUTLINED_FUNCTION_153();
    v75(v61, v151);
    v76 = OUTLINED_FUNCTION_138();
    sub_26892CDB8(v76, v77, v78);
    OUTLINED_FUNCTION_285();
    v64 = v148;

    *(v73 + 4) = v74;
    OUTLINED_FUNCTION_267(&dword_2688BB000, v70, v71, "DeviceDisambiguationStrategy.makePromptForDisambiguation responseMode before creating output = %s");
    _os_log_impl(v79, v80, v81, v82, v83, v84);
    v85 = OUTLINED_FUNCTION_109(&v172);
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v86 = *(v64 + 8);
  v86(v28, v62);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v52, &qword_2802A6300, &unk_268B3BD80);
    v87 = OUTLINED_FUNCTION_175(&a16);
    v152(v87, v153, v62);
    v88 = sub_268B37A34();
    sub_268B37EE4();
    v89 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v89, v90))
    {
      OUTLINED_FUNCTION_64();
      v91 = swift_slowAlloc();
      OUTLINED_FUNCTION_10(v91);
      OUTLINED_FUNCTION_72();
      _os_log_impl(v92, v93, v94, v95, v52, 2u);
      v96 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v96);
    }

    v97 = OUTLINED_FUNCTION_97();
    (v86)(v97);
    sub_2688C2ECC();
    OUTLINED_FUNCTION_99();
    v98 = swift_allocError();
    v100 = OUTLINED_FUNCTION_39(v98, v99, 196);
    v101(v100);
    sub_2688C058C(v171, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v160 = a27;
    OUTLINED_FUNCTION_181();
    v152 = a22;
    v102 = a21;
    v153 = a26;
    v103 = a25;
    OUTLINED_FUNCTION_282();
    sub_2688E43D8();
    v104 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_206(v104, v105, v106, v107, v108, v109, v110, v111, sub_2688E0310, v103, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
    v113 = v112;
    v115 = v114;
    v116 = __swift_project_boxed_opaque_existential_1((v102 + 144), *(v102 + 168));
    (*(v164 + 104))(v163, *MEMORY[0x277D5BB60], v166);
    v117 = v156;
    OUTLINED_FUNCTION_282();
    sub_2688E451C();
    OUTLINED_FUNCTION_256();

    v119 = sub_268B350F4();
    OUTLINED_FUNCTION_182();
    (*(v120 + 32))(v165, v117, v119);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v119);
    sub_268B34B94();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
    v128 = *v116;
    v129 = v158;
    sub_2688E451C();
    if (__swift_getEnumTagSinglePayload(v129, 1, v119) == 1)
    {
      sub_2688C058C(v129, &unk_2802A57B0, &unk_268B3CE00);
      v130 = 0;
      v131 = 0;
    }

    else
    {
      v130 = sub_268B350B4();
      v131 = v132;
      v133 = OUTLINED_FUNCTION_278();
      v134(v133);
    }

    v145 = v128;
    v135 = v163;
    v136 = v167;
    v153(v152, v163, v168, v130, v131, v113, v115, v167, v145);

    sub_2688C058C(v136, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v165, &unk_2802A57B0, &unk_268B3CE00);
    (*(v164 + 8))(v135, v166);
    v137 = v159;
    sub_2688E451C();
    OUTLINED_FUNCTION_256();
    v139 = *(v137 + v138);
    v160(v154, v137, v139, v155, v169, v170);

    OUTLINED_FUNCTION_268();
    sub_2688C058C(v140, v141, v142);
    v143 = OUTLINED_FUNCTION_192();
    v144(v143);
  }

  OUTLINED_FUNCTION_198();
}

void sub_2688CF550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_147(v32, v33, v34, v35, v36, v37, v38, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_74();
  v153 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v44 = OUTLINED_FUNCTION_22(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v146 = v45;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_78();
  v151 = v47;
  OUTLINED_FUNCTION_9();
  v152 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v150 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2();
  v149 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_74();
  v148 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3();
  v147 = v55;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9();
  v138 = sub_268B367A4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v59);
  v60 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_201();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_136();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  __swift_project_value_buffer(v60, qword_2802CDA10);
  v140 = *(v62 + 16);
  v140(v30);

  v65 = sub_268B37A34();
  v66 = sub_268B37ED4();

  if (os_log_type_enabled(v65, v66))
  {
    OUTLINED_FUNCTION_68();
    v135 = v29;
    v67 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v134 = v60;
    v132 = swift_slowAlloc();
    v155[0] = v132;
    *v67 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v68 = sub_268B36784();
    OUTLINED_FUNCTION_259(&v157);
    OUTLINED_FUNCTION_153();
    v69(v136, v138);
    v70 = OUTLINED_FUNCTION_138();
    sub_26892CDB8(v70, v71, v72);
    OUTLINED_FUNCTION_285();
    v31 = v133;

    *(v67 + 4) = v68;
    OUTLINED_FUNCTION_267(&dword_2688BB000, v65, v66, "DeviceDisambiguationStrategy.makePromptForDisambiguation responseMode before creating output = %s");
    _os_log_impl(v73, v74, v75, v76, v77, v78);
    v79 = OUTLINED_FUNCTION_109(&v156);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v80 = *(v62 + 8);
  v80(v30, v60);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v148, &qword_2802A6300, &unk_268B3BD80);
    OUTLINED_FUNCTION_217();
    v140(v81);
    v82 = sub_268B37A34();
    sub_268B37EE4();
    v83 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v83, v84))
    {
      OUTLINED_FUNCTION_64();
      v85 = swift_slowAlloc();
      OUTLINED_FUNCTION_10(v85);
      OUTLINED_FUNCTION_72();
      _os_log_impl(v86, v87, v88, v89, v51, 2u);
      v90 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v90);
    }

    v80(v31, v60);
    sub_2688C2ECC();
    OUTLINED_FUNCTION_99();
    v91 = swift_allocError();
    v93 = OUTLINED_FUNCTION_39(v91, v92, 196);
    v94(v93);
    sub_2688C058C(v155, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v95 = a22;
    OUTLINED_FUNCTION_282();
    sub_2688E43D8();
    v96 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_206(v96, v97, v98, v99, v100, v101, v102, v103, sub_2688DF9AC, a25, v132, v133, v134, v135, v136, a26, a27, a23, a24, a29, v141, v143);
    v144 = v104;
    v145 = v105;
    v106 = __swift_project_boxed_opaque_existential_1((a21 + 144), *(a21 + 168));
    (*(v150 + 104))(v149, *MEMORY[0x277D5BB60], v152);
    OUTLINED_FUNCTION_282();
    sub_2688E451C();
    OUTLINED_FUNCTION_256();

    v108 = sub_268B350F4();
    OUTLINED_FUNCTION_182();
    v110 = v109;
    v111 = OUTLINED_FUNCTION_275();
    v112(v111);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v108);
    sub_268B34B94();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
    v120 = *v106;
    sub_2688E451C();
    v121 = OUTLINED_FUNCTION_257();
    if (__swift_getEnumTagSinglePayload(v121, v122, v108) == 1)
    {
      sub_2688C058C(v146, &unk_2802A57B0, &unk_268B3CE00);
      v123 = 0;
      v124 = 0;
    }

    else
    {
      v123 = sub_268B350B4();
      v124 = v125;
      v95 = a22;
      (*(v110 + 8))(v146, v108);
    }

    sub_2688E2F9C(v95, v149, v154, v123, v124, v144, v145, v153, v120, a25, v137, v139);

    sub_2688C058C(v153, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v151, &unk_2802A57B0, &unk_268B3CE00);
    (*(v150 + 8))(v149, v152);
    sub_2688E451C();
    OUTLINED_FUNCTION_256();
    v127 = *(v147 + v126);
    OUTLINED_FUNCTION_217();
    v128();

    OUTLINED_FUNCTION_268();
    sub_2688C058C(v129, v130, v131);
    (*(v110 + 8))(v147, v108);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_2688CFE60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v7 = v6;
  v79 = a5;
  v80 = a6;
  v76 = a4;
  v77 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v62 - v11;
  v12 = sub_268B35044();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = v13;
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_268B36A54();
  v78 = *(v82 - 8);
  v14 = MEMORY[0x28223BE20](v82);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v15;
  MEMORY[0x28223BE20](v14);
  v81 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v65 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  v66 = v24;
  MEMORY[0x28223BE20](v21);
  v26 = &v62 - v25;
  v27 = sub_268B350F4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, a2, v27);
  *&v26[*(v17 + 48)] = a3;
  v29 = *(v7 + 88);
  v75 = v7;
  __swift_project_boxed_opaque_existential_1((v7 + 64), v29);
  v30 = a3;
  if (sub_268B36FA4())
  {
    v31 = v28;
    v63 = v27;
    v32 = v75;
    v64 = v20;
    v73 = v26;
    sub_2688E451C();
    v33 = *&v23[*(v17 + 48)];
    v34 = [v33 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v35 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      v36 = v32;
      if ((v35 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D625BD0](0, v35);
      }

      else
      {
        v37 = *(v35 + 32);
      }

      v38 = v37;
      v39 = v63;

      v40 = [v38 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v36 = v32;
      v39 = v63;
    }

    (*(v31 + 8))(v23, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v43 = v81;
    sub_2688D4D5C();

    __swift_project_boxed_opaque_existential_1((v36 + 144), *(v36 + 168));
    v44 = v82;
    v83[3] = v82;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v83);
    v46 = *(v78 + 16);
    v46(boxed_opaque_existential_0Tm, v43, v44);
    sub_268948494(v83);
    sub_2688C058C(v83, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v47 = sub_268B36734();
    if (v47)
    {
      v48 = v77;
      v76 = v47;
    }

    else
    {
      v76 = sub_268B36744();
      v48 = v77;
    }

    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 16))(v70, v48, v72);
    sub_2688E451C();
    v52 = v69;
    v46(v69, v81, v82);
    v53 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v54 = v78;
    v55 = (v66 + *(v78 + 80) + ((v68 + *(v65 + 80) + v53) & ~*(v65 + 80))) & ~*(v78 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v76;
    (*(v50 + 32))(v56 + v53, v49, v51);
    sub_2688E43D8();
    v57 = v56 + v55;
    v58 = v82;
    (*(v54 + 32))(v57, v52, v82);
    v59 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v59);
    v60 = swift_allocObject();
    v60[2] = 0;
    v60[3] = 0;
    v60[4] = &unk_268B3BE18;
    v60[5] = v56;
    v61 = v80;
    v60[6] = v79;
    v60[7] = v61;

    sub_2688DB634();

    (*(v54 + 8))(v81, v58);
    return sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v41 = *&v20[*(v17 + 48)];
    sub_2688D51EC(v77, v20, v41, v76, v79);

    sub_2688C058C(v26, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v28 + 8))(v20, v27);
  }
}

uint64_t sub_2688D0634(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v79 = a5;
  v80 = a6;
  v76 = a4;
  v77 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v62 - v11;
  v12 = sub_268B35044();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = v13;
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_268B36A54();
  v78 = *(v82 - 8);
  v14 = MEMORY[0x28223BE20](v82);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v15;
  MEMORY[0x28223BE20](v14);
  v81 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v65 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  v66 = v24;
  MEMORY[0x28223BE20](v21);
  v26 = &v62 - v25;
  v27 = sub_268B350F4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, a2, v27);
  *&v26[*(v17 + 48)] = a3;
  v29 = *(v7 + 88);
  v75 = v7;
  __swift_project_boxed_opaque_existential_1((v7 + 64), v29);
  v30 = a3;
  if (sub_268B36FA4())
  {
    v31 = v28;
    v63 = v27;
    v32 = v75;
    v64 = v20;
    v73 = v26;
    sub_2688E451C();
    v33 = *&v23[*(v17 + 48)];
    v34 = [v33 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v35 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      v36 = v32;
      if ((v35 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D625BD0](0, v35);
      }

      else
      {
        v37 = *(v35 + 32);
      }

      v38 = v37;
      v39 = v63;

      v40 = [v38 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v36 = v32;
      v39 = v63;
    }

    (*(v31 + 8))(v23, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v43 = v81;
    sub_2688D4D5C();

    __swift_project_boxed_opaque_existential_1((v36 + 144), *(v36 + 168));
    v44 = v82;
    v83[3] = v82;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v83);
    v46 = *(v78 + 16);
    v46(boxed_opaque_existential_0Tm, v43, v44);
    sub_268948494(v83);
    sub_2688C058C(v83, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v47 = sub_268B36734();
    if (v47)
    {
      v48 = v77;
      v76 = v47;
    }

    else
    {
      v76 = sub_268B36744();
      v48 = v77;
    }

    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 16))(v70, v48, v72);
    sub_2688E451C();
    v52 = v69;
    v46(v69, v81, v82);
    v53 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v54 = v78;
    v55 = (v66 + *(v78 + 80) + ((v68 + *(v65 + 80) + v53) & ~*(v65 + 80))) & ~*(v78 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v76;
    (*(v50 + 32))(v56 + v53, v49, v51);
    sub_2688E43D8();
    v57 = v56 + v55;
    v58 = v82;
    (*(v54 + 32))(v57, v52, v82);
    v59 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v59);
    v60 = swift_allocObject();
    v60[2] = 0;
    v60[3] = 0;
    v60[4] = &unk_268B3BEF8;
    v60[5] = v56;
    v61 = v80;
    v60[6] = v79;
    v60[7] = v61;

    sub_2688DB634();

    (*(v54 + 8))(v81, v58);
    return sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v41 = *&v20[*(v17 + 48)];
    sub_2688D550C();

    sub_2688C058C(v26, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v28 + 8))(v20, v27);
  }
}

uint64_t sub_2688D0E1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v79 = a5;
  v80 = a6;
  v76 = a4;
  v77 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v62 - v11;
  v12 = sub_268B35044();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = v13;
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_268B36A54();
  v78 = *(v82 - 8);
  v14 = MEMORY[0x28223BE20](v82);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v15;
  MEMORY[0x28223BE20](v14);
  v81 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v65 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  v66 = v24;
  MEMORY[0x28223BE20](v21);
  v26 = &v62 - v25;
  v27 = sub_268B350F4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, a2, v27);
  *&v26[*(v17 + 48)] = a3;
  v29 = *(v7 + 88);
  v75 = v7;
  __swift_project_boxed_opaque_existential_1((v7 + 64), v29);
  v30 = a3;
  if (sub_268B36FA4())
  {
    v31 = v28;
    v63 = v27;
    v32 = v75;
    v64 = v20;
    v73 = v26;
    sub_2688E451C();
    v33 = *&v23[*(v17 + 48)];
    v34 = [v33 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v35 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      v36 = v32;
      if ((v35 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D625BD0](0, v35);
      }

      else
      {
        v37 = *(v35 + 32);
      }

      v38 = v37;
      v39 = v63;

      v40 = [v38 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v36 = v32;
      v39 = v63;
    }

    (*(v31 + 8))(v23, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v43 = v81;
    sub_2688D4D5C();

    __swift_project_boxed_opaque_existential_1((v36 + 144), *(v36 + 168));
    v44 = v82;
    v83[3] = v82;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v83);
    v46 = *(v78 + 16);
    v46(boxed_opaque_existential_0Tm, v43, v44);
    sub_268948494(v83);
    sub_2688C058C(v83, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v47 = sub_268B36734();
    if (v47)
    {
      v48 = v77;
      v76 = v47;
    }

    else
    {
      v76 = sub_268B36744();
      v48 = v77;
    }

    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 16))(v70, v48, v72);
    sub_2688E451C();
    v52 = v69;
    v46(v69, v81, v82);
    v53 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v54 = v78;
    v55 = (v66 + *(v78 + 80) + ((v68 + *(v65 + 80) + v53) & ~*(v65 + 80))) & ~*(v78 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v76;
    (*(v50 + 32))(v56 + v53, v49, v51);
    sub_2688E43D8();
    v57 = v56 + v55;
    v58 = v82;
    (*(v54 + 32))(v57, v52, v82);
    v59 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v59);
    v60 = swift_allocObject();
    v60[2] = 0;
    v60[3] = 0;
    v60[4] = &unk_268B3BF28;
    v60[5] = v56;
    v61 = v80;
    v60[6] = v79;
    v60[7] = v61;

    sub_2688DB634();

    (*(v54 + 8))(v81, v58);
    return sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v41 = *&v20[*(v17 + 48)];
    sub_2688D550C();

    sub_2688C058C(v26, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v28 + 8))(v20, v27);
  }
}

uint64_t sub_2688D1604(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v79 = a5;
  v80 = a6;
  v76 = a4;
  v77 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v62 - v11;
  v12 = sub_268B35044();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = v13;
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_268B36A54();
  v78 = *(v82 - 8);
  v14 = MEMORY[0x28223BE20](v82);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v15;
  MEMORY[0x28223BE20](v14);
  v81 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v65 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  v66 = v24;
  MEMORY[0x28223BE20](v21);
  v26 = &v62 - v25;
  v27 = sub_268B350F4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, a2, v27);
  *&v26[*(v17 + 48)] = a3;
  v29 = *(v7 + 88);
  v75 = v7;
  __swift_project_boxed_opaque_existential_1((v7 + 64), v29);
  v30 = a3;
  if (sub_268B36FA4())
  {
    v31 = v28;
    v63 = v27;
    v32 = v75;
    v64 = v20;
    v73 = v26;
    sub_2688E451C();
    v33 = *&v23[*(v17 + 48)];
    v34 = [v33 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v35 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      v36 = v32;
      if ((v35 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D625BD0](0, v35);
      }

      else
      {
        v37 = *(v35 + 32);
      }

      v38 = v37;
      v39 = v63;

      v40 = [v38 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v36 = v32;
      v39 = v63;
    }

    (*(v31 + 8))(v23, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v43 = v81;
    sub_2688D4D5C();

    __swift_project_boxed_opaque_existential_1((v36 + 144), *(v36 + 168));
    v44 = v82;
    v83[3] = v82;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v83);
    v46 = *(v78 + 16);
    v46(boxed_opaque_existential_0Tm, v43, v44);
    sub_268948494(v83);
    sub_2688C058C(v83, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v47 = sub_268B36734();
    if (v47)
    {
      v48 = v77;
      v76 = v47;
    }

    else
    {
      v76 = sub_268B36744();
      v48 = v77;
    }

    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 16))(v70, v48, v72);
    sub_2688E451C();
    v52 = v69;
    v46(v69, v81, v82);
    v53 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v54 = v78;
    v55 = (v66 + *(v78 + 80) + ((v68 + *(v65 + 80) + v53) & ~*(v65 + 80))) & ~*(v78 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v76;
    (*(v50 + 32))(v56 + v53, v49, v51);
    sub_2688E43D8();
    v57 = v56 + v55;
    v58 = v82;
    (*(v54 + 32))(v57, v52, v82);
    v59 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v59);
    v60 = swift_allocObject();
    v60[2] = 0;
    v60[3] = 0;
    v60[4] = &unk_268B3BF48;
    v60[5] = v56;
    v61 = v80;
    v60[6] = v79;
    v60[7] = v61;

    sub_2688DB634();

    (*(v54 + 8))(v81, v58);
    return sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v41 = *&v20[*(v17 + 48)];
    sub_2688D550C();

    sub_2688C058C(v26, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v28 + 8))(v20, v27);
  }
}

uint64_t sub_2688D1DEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v79 = a5;
  v80 = a6;
  v76 = a4;
  v77 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v62 - v11;
  v12 = sub_268B35044();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = v13;
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_268B36A54();
  v78 = *(v82 - 8);
  v14 = MEMORY[0x28223BE20](v82);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v15;
  MEMORY[0x28223BE20](v14);
  v81 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v65 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  v66 = v24;
  MEMORY[0x28223BE20](v21);
  v26 = &v62 - v25;
  v27 = sub_268B350F4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, a2, v27);
  *&v26[*(v17 + 48)] = a3;
  v29 = *(v7 + 88);
  v75 = v7;
  __swift_project_boxed_opaque_existential_1((v7 + 64), v29);
  v30 = a3;
  if (sub_268B36FA4())
  {
    v31 = v28;
    v63 = v27;
    v32 = v75;
    v64 = v20;
    v73 = v26;
    sub_2688E451C();
    v33 = *&v23[*(v17 + 48)];
    v34 = [v33 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v35 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      v36 = v32;
      if ((v35 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D625BD0](0, v35);
      }

      else
      {
        v37 = *(v35 + 32);
      }

      v38 = v37;
      v39 = v63;

      v40 = [v38 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v36 = v32;
      v39 = v63;
    }

    (*(v31 + 8))(v23, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v43 = v81;
    sub_2688D4D5C();

    __swift_project_boxed_opaque_existential_1((v36 + 144), *(v36 + 168));
    v44 = v82;
    v83[3] = v82;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v83);
    v46 = *(v78 + 16);
    v46(boxed_opaque_existential_0Tm, v43, v44);
    sub_268948494(v83);
    sub_2688C058C(v83, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v47 = sub_268B36734();
    if (v47)
    {
      v48 = v77;
      v76 = v47;
    }

    else
    {
      v76 = sub_268B36744();
      v48 = v77;
    }

    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 16))(v70, v48, v72);
    sub_2688E451C();
    v52 = v69;
    v46(v69, v81, v82);
    v53 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v54 = v78;
    v55 = (v66 + *(v78 + 80) + ((v68 + *(v65 + 80) + v53) & ~*(v65 + 80))) & ~*(v78 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v76;
    (*(v50 + 32))(v56 + v53, v49, v51);
    sub_2688E43D8();
    v57 = v56 + v55;
    v58 = v82;
    (*(v54 + 32))(v57, v52, v82);
    v59 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v59);
    v60 = swift_allocObject();
    v60[2] = 0;
    v60[3] = 0;
    v60[4] = &unk_268B3BF68;
    v60[5] = v56;
    v61 = v80;
    v60[6] = v79;
    v60[7] = v61;

    sub_2688DB634();

    (*(v54 + 8))(v81, v58);
    return sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v41 = *&v20[*(v17 + 48)];
    sub_2688D550C();

    sub_2688C058C(v26, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v28 + 8))(v20, v27);
  }
}

uint64_t sub_2688D25D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v79 = a5;
  v80 = a6;
  v76 = a4;
  v77 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v62 - v11;
  v12 = sub_268B35044();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = v13;
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_268B36A54();
  v78 = *(v82 - 8);
  v14 = MEMORY[0x28223BE20](v82);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v15;
  MEMORY[0x28223BE20](v14);
  v81 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v65 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  v66 = v24;
  MEMORY[0x28223BE20](v21);
  v26 = &v62 - v25;
  v27 = sub_268B350F4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, a2, v27);
  *&v26[*(v17 + 48)] = a3;
  v29 = *(v7 + 88);
  v75 = v7;
  __swift_project_boxed_opaque_existential_1((v7 + 64), v29);
  v30 = a3;
  if (sub_268B36FA4())
  {
    v31 = v28;
    v63 = v27;
    v32 = v75;
    v64 = v20;
    v73 = v26;
    sub_2688E451C();
    v33 = *&v23[*(v17 + 48)];
    v34 = [v33 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v35 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      v36 = v32;
      if ((v35 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D625BD0](0, v35);
      }

      else
      {
        v37 = *(v35 + 32);
      }

      v38 = v37;
      v39 = v63;

      v40 = [v38 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v36 = v32;
      v39 = v63;
    }

    (*(v31 + 8))(v23, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v43 = v81;
    sub_2688D4D5C();

    __swift_project_boxed_opaque_existential_1((v36 + 144), *(v36 + 168));
    v44 = v82;
    v83[3] = v82;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v83);
    v46 = *(v78 + 16);
    v46(boxed_opaque_existential_0Tm, v43, v44);
    sub_268948494(v83);
    sub_2688C058C(v83, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v47 = sub_268B36734();
    if (v47)
    {
      v48 = v77;
      v76 = v47;
    }

    else
    {
      v76 = sub_268B36744();
      v48 = v77;
    }

    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 16))(v70, v48, v72);
    sub_2688E451C();
    v52 = v69;
    v46(v69, v81, v82);
    v53 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v54 = v78;
    v55 = (v66 + *(v78 + 80) + ((v68 + *(v65 + 80) + v53) & ~*(v65 + 80))) & ~*(v78 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v76;
    (*(v50 + 32))(v56 + v53, v49, v51);
    sub_2688E43D8();
    v57 = v56 + v55;
    v58 = v82;
    (*(v54 + 32))(v57, v52, v82);
    v59 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v59);
    v60 = swift_allocObject();
    v60[2] = 0;
    v60[3] = 0;
    v60[4] = &unk_268B3BF88;
    v60[5] = v56;
    v61 = v80;
    v60[6] = v79;
    v60[7] = v61;

    sub_2688DB634();

    (*(v54 + 8))(v81, v58);
    return sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v41 = *&v20[*(v17 + 48)];
    sub_2688D550C();

    sub_2688C058C(v26, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v28 + 8))(v20, v27);
  }
}

uint64_t sub_2688D2DBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v79 = a5;
  v80 = a6;
  v76 = a4;
  v77 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v62 - v11;
  v12 = sub_268B35044();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = v13;
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_268B36A54();
  v78 = *(v82 - 8);
  v14 = MEMORY[0x28223BE20](v82);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v15;
  MEMORY[0x28223BE20](v14);
  v81 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v65 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  v66 = v24;
  MEMORY[0x28223BE20](v21);
  v26 = &v62 - v25;
  v27 = sub_268B350F4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, a2, v27);
  *&v26[*(v17 + 48)] = a3;
  v29 = *(v7 + 88);
  v75 = v7;
  __swift_project_boxed_opaque_existential_1((v7 + 64), v29);
  v30 = a3;
  if (sub_268B36FA4())
  {
    v31 = v28;
    v63 = v27;
    v32 = v75;
    v64 = v20;
    v73 = v26;
    sub_2688E451C();
    v33 = *&v23[*(v17 + 48)];
    v34 = [v33 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v35 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      v36 = v32;
      if ((v35 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D625BD0](0, v35);
      }

      else
      {
        v37 = *(v35 + 32);
      }

      v38 = v37;
      v39 = v63;

      v40 = [v38 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v36 = v32;
      v39 = v63;
    }

    (*(v31 + 8))(v23, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v43 = v81;
    sub_2688D4D5C();

    __swift_project_boxed_opaque_existential_1((v36 + 144), *(v36 + 168));
    v44 = v82;
    v83[3] = v82;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v83);
    v46 = *(v78 + 16);
    v46(boxed_opaque_existential_0Tm, v43, v44);
    sub_268948494(v83);
    sub_2688C058C(v83, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v47 = sub_268B36734();
    if (v47)
    {
      v48 = v77;
      v76 = v47;
    }

    else
    {
      v76 = sub_268B36744();
      v48 = v77;
    }

    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 16))(v70, v48, v72);
    sub_2688E451C();
    v52 = v69;
    v46(v69, v81, v82);
    v53 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v54 = v78;
    v55 = (v66 + *(v78 + 80) + ((v68 + *(v65 + 80) + v53) & ~*(v65 + 80))) & ~*(v78 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v76;
    (*(v50 + 32))(v56 + v53, v49, v51);
    sub_2688E43D8();
    v57 = v56 + v55;
    v58 = v82;
    (*(v54 + 32))(v57, v52, v82);
    v59 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v59);
    v60 = swift_allocObject();
    v60[2] = 0;
    v60[3] = 0;
    v60[4] = &unk_268B3BFB0;
    v60[5] = v56;
    v61 = v80;
    v60[6] = v79;
    v60[7] = v61;

    sub_2688DB634();

    (*(v54 + 8))(v81, v58);
    return sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v41 = *&v20[*(v17 + 48)];
    sub_2688D550C();

    sub_2688C058C(v26, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v28 + 8))(v20, v27);
  }
}

uint64_t sub_2688D35A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v79 = a5;
  v80 = a6;
  v76 = a4;
  v77 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v62 - v11;
  v12 = sub_268B35044();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = v13;
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_268B36A54();
  v78 = *(v82 - 8);
  v14 = MEMORY[0x28223BE20](v82);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v15;
  MEMORY[0x28223BE20](v14);
  v81 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v65 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  v66 = v24;
  MEMORY[0x28223BE20](v21);
  v26 = &v62 - v25;
  v27 = sub_268B350F4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, a2, v27);
  *&v26[*(v17 + 48)] = a3;
  v29 = *(v7 + 88);
  v75 = v7;
  __swift_project_boxed_opaque_existential_1((v7 + 64), v29);
  v30 = a3;
  if (sub_268B36FA4())
  {
    v31 = v28;
    v63 = v27;
    v32 = v75;
    v64 = v20;
    v73 = v26;
    sub_2688E451C();
    v33 = *&v23[*(v17 + 48)];
    v34 = [v33 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v35 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      v36 = v32;
      if ((v35 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D625BD0](0, v35);
      }

      else
      {
        v37 = *(v35 + 32);
      }

      v38 = v37;
      v39 = v63;

      v40 = [v38 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v36 = v32;
      v39 = v63;
    }

    (*(v31 + 8))(v23, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v43 = v81;
    sub_2688D4D5C();

    __swift_project_boxed_opaque_existential_1((v36 + 144), *(v36 + 168));
    v44 = v82;
    v83[3] = v82;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v83);
    v46 = *(v78 + 16);
    v46(boxed_opaque_existential_0Tm, v43, v44);
    sub_268948494(v83);
    sub_2688C058C(v83, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v47 = sub_268B36734();
    if (v47)
    {
      v48 = v77;
      v76 = v47;
    }

    else
    {
      v76 = sub_268B36744();
      v48 = v77;
    }

    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 16))(v70, v48, v72);
    sub_2688E451C();
    v52 = v69;
    v46(v69, v81, v82);
    v53 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v54 = v78;
    v55 = (v66 + *(v78 + 80) + ((v68 + *(v65 + 80) + v53) & ~*(v65 + 80))) & ~*(v78 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v76;
    (*(v50 + 32))(v56 + v53, v49, v51);
    sub_2688E43D8();
    v57 = v56 + v55;
    v58 = v82;
    (*(v54 + 32))(v57, v52, v82);
    v59 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v59);
    v60 = swift_allocObject();
    v60[2] = 0;
    v60[3] = 0;
    v60[4] = &unk_268B3BFD0;
    v60[5] = v56;
    v61 = v80;
    v60[6] = v79;
    v60[7] = v61;

    sub_2688DB634();

    (*(v54 + 8))(v81, v58);
    return sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v41 = *&v20[*(v17 + 48)];
    sub_2688D550C();

    sub_2688C058C(v26, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v28 + 8))(v20, v27);
  }
}

uint64_t sub_2688D3D8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v79 = a5;
  v80 = a6;
  v76 = a4;
  v77 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v62 - v11;
  v12 = sub_268B35044();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = v13;
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_268B36A54();
  v78 = *(v82 - 8);
  v14 = MEMORY[0x28223BE20](v82);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v15;
  MEMORY[0x28223BE20](v14);
  v81 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v65 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  v66 = v24;
  MEMORY[0x28223BE20](v21);
  v26 = &v62 - v25;
  v27 = sub_268B350F4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, a2, v27);
  *&v26[*(v17 + 48)] = a3;
  v29 = *(v7 + 88);
  v75 = v7;
  __swift_project_boxed_opaque_existential_1((v7 + 64), v29);
  v30 = a3;
  if (sub_268B36FA4())
  {
    v31 = v28;
    v63 = v27;
    v32 = v75;
    v64 = v20;
    v73 = v26;
    sub_2688E451C();
    v33 = *&v23[*(v17 + 48)];
    v34 = [v33 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v35 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      v36 = v32;
      if ((v35 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D625BD0](0, v35);
      }

      else
      {
        v37 = *(v35 + 32);
      }

      v38 = v37;
      v39 = v63;

      v40 = [v38 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v36 = v32;
      v39 = v63;
    }

    (*(v31 + 8))(v23, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v43 = v81;
    sub_2688D4D5C();

    __swift_project_boxed_opaque_existential_1((v36 + 144), *(v36 + 168));
    v44 = v82;
    v83[3] = v82;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v83);
    v46 = *(v78 + 16);
    v46(boxed_opaque_existential_0Tm, v43, v44);
    sub_268948494(v83);
    sub_2688C058C(v83, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v47 = sub_268B36734();
    if (v47)
    {
      v48 = v77;
      v76 = v47;
    }

    else
    {
      v76 = sub_268B36744();
      v48 = v77;
    }

    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 16))(v70, v48, v72);
    sub_2688E451C();
    v52 = v69;
    v46(v69, v81, v82);
    v53 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v54 = v78;
    v55 = (v66 + *(v78 + 80) + ((v68 + *(v65 + 80) + v53) & ~*(v65 + 80))) & ~*(v78 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v76;
    (*(v50 + 32))(v56 + v53, v49, v51);
    sub_2688E43D8();
    v57 = v56 + v55;
    v58 = v82;
    (*(v54 + 32))(v57, v52, v82);
    v59 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v59);
    v60 = swift_allocObject();
    v60[2] = 0;
    v60[3] = 0;
    v60[4] = &unk_268B3BFF0;
    v60[5] = v56;
    v61 = v80;
    v60[6] = v79;
    v60[7] = v61;

    sub_2688DB634();

    (*(v54 + 8))(v81, v58);
    return sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v41 = *&v20[*(v17 + 48)];
    sub_2688D550C();

    sub_2688C058C(v26, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v28 + 8))(v20, v27);
  }
}

uint64_t sub_2688D4574(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v79 = a5;
  v80 = a6;
  v76 = a4;
  v77 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v62 - v11;
  v12 = sub_268B35044();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = v13;
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_268B36A54();
  v78 = *(v82 - 8);
  v14 = MEMORY[0x28223BE20](v82);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v15;
  MEMORY[0x28223BE20](v14);
  v81 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v65 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  v66 = v24;
  MEMORY[0x28223BE20](v21);
  v26 = &v62 - v25;
  v27 = sub_268B350F4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, a2, v27);
  *&v26[*(v17 + 48)] = a3;
  v29 = *(v7 + 88);
  v75 = v7;
  __swift_project_boxed_opaque_existential_1((v7 + 64), v29);
  v30 = a3;
  if (sub_268B36FA4())
  {
    v31 = v28;
    v63 = v27;
    v32 = v75;
    v64 = v20;
    v73 = v26;
    sub_2688E451C();
    v33 = *&v23[*(v17 + 48)];
    v34 = [v33 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v35 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      v36 = v32;
      if ((v35 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D625BD0](0, v35);
      }

      else
      {
        v37 = *(v35 + 32);
      }

      v38 = v37;
      v39 = v63;

      v40 = [v38 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v36 = v32;
      v39 = v63;
    }

    (*(v31 + 8))(v23, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v43 = v81;
    sub_2688D4D5C();

    __swift_project_boxed_opaque_existential_1((v36 + 144), *(v36 + 168));
    v44 = v82;
    v83[3] = v82;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v83);
    v46 = *(v78 + 16);
    v46(boxed_opaque_existential_0Tm, v43, v44);
    sub_268948494(v83);
    sub_2688C058C(v83, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v47 = sub_268B36734();
    if (v47)
    {
      v48 = v77;
      v76 = v47;
    }

    else
    {
      v76 = sub_268B36744();
      v48 = v77;
    }

    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 16))(v70, v48, v72);
    sub_2688E451C();
    v52 = v69;
    v46(v69, v81, v82);
    v53 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v54 = v78;
    v55 = (v66 + *(v78 + 80) + ((v68 + *(v65 + 80) + v53) & ~*(v65 + 80))) & ~*(v78 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v76;
    (*(v50 + 32))(v56 + v53, v49, v51);
    sub_2688E43D8();
    v57 = v56 + v55;
    v58 = v82;
    (*(v54 + 32))(v57, v52, v82);
    v59 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v59);
    v60 = swift_allocObject();
    v60[2] = 0;
    v60[3] = 0;
    v60[4] = &unk_268B3C010;
    v60[5] = v56;
    v61 = v80;
    v60[6] = v79;
    v60[7] = v61;

    sub_2688DB634();

    (*(v54 + 8))(v81, v58);
    return sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v41 = *&v20[*(v17 + 48)];
    sub_2688D550C();

    sub_2688C058C(v26, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v28 + 8))(v20, v27);
  }
}

void sub_2688D4D5C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v41 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57E8, &unk_268B3BE60);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_9();
  sub_268B36A44();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v7 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  if (qword_2802A4F30 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
  v11 = OUTLINED_FUNCTION_139();
  v12(v11);

  v13 = sub_268B37A34();
  v14 = sub_268B37F04();

  v43 = v2;
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_68();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v16 = swift_slowAlloc();
    v44 = v16;
    v17 = OUTLINED_FUNCTION_244(4.8149e-34);
    v18 = MEMORY[0x26D6256F0](v2, v17);
    v20 = sub_26892CDB8(v18, v19, &v44);

    *(v15 + 4) = v20;
    v2 = v43;
    OUTLINED_FUNCTION_204(&dword_2688BB000, v13, v14, "DeviceDisambiguationStrategy.snippetDisambiguationItems Creating disambiguation view with devices: %s", v40);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v9 + 8))(v0, v7);
  v7 = sub_2688EFD0C();
  v21 = 0;
  v9 = v2 & 0xC000000000000001;
  v0 = v2 & 0xFFFFFFFFFFFFFF8;
  v42 = MEMORY[0x277D84F90];
  while (v7 != v21)
  {
    if (v9)
    {
      v22 = MEMORY[0x26D625BD0](v21, v2);
    }

    else
    {
      if (v21 >= *(v0 + 16))
      {
        goto LABEL_23;
      }

      v22 = *(v2 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_268988580(v22);
    if (v25 || (sub_268988568(v23), v26))
    {
      sub_26892D418(v23);
      if (!v27)
      {

        v2 = v43;
        goto LABEL_14;
      }

      sub_268B34534();
      OUTLINED_FUNCTION_96();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      sub_268B36A34();

      v32 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_88();
        sub_2689879FC();
        v32 = v36;
      }

      v2 = v43;
      v33 = *(v32 + 16);
      if (v33 >= *(v32 + 24) >> 1)
      {
        sub_2689879FC();
        v32 = v37;
      }

      *(v32 + 16) = v33 + 1;
      OUTLINED_FUNCTION_258();
      v42 = v32;
      (*(v35 + 32))(v32 + v34 + *(v35 + 72) * v33);
      v21 = v24;
    }

    else
    {
LABEL_14:

      ++v21;
    }
  }

  sub_268B36AB4();
  v38 = *MEMORY[0x277D55558];
  sub_268B36A54();
  OUTLINED_FUNCTION_4();
  (*(v39 + 104))(v41, v38);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688D51EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *))
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = v26 - v16;
  v18 = sub_268B350F4();
  (*(*(v18 - 8) + 16))(v17, a2, v18);
  *&v17[*(v15 + 56)] = a3;
  v19 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v20 = sub_268B35254();
  sub_2688D57F8(v20);
  v22 = v21;

  __swift_project_boxed_opaque_existential_1(v6 + 18, v6[21]);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
  v28[0] = v22;

  sub_268948494(v28);
  sub_2688C058C(v28, &byte_2802A6450, &byte_268B3BE10);
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  sub_268B34CA4();
  v23 = sub_268B35044();
  (*(*(v23 - 8) + 16))(v13, a1, v23);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v23);
  v24 = sub_268B354F4();
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v29 = v24;
  v30 = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_0Tm(v28);
  sub_268B34F34();

  sub_2688C058C(v26, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v13, &qword_2802A57F0, &qword_268B3DDB0);
  v31 = 0;
  a5(v28);
  sub_2688C058C(v17, &unk_2802A56E0, &unk_268B3CDF0);
  return sub_2688C058C(v28, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_2688D550C()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v26 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_94();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  v14 = OUTLINED_FUNCTION_275();
  v15(v14);
  *&v13[*(v10 + 56)] = v5;
  v16 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  sub_268B35254();
  sub_2688D5B00();
  v18 = v17;

  __swift_project_boxed_opaque_existential_1(v2 + 18, v2[21]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
  v29[0] = v18;

  sub_268948494(v29);
  sub_2688C058C(v29, &byte_2802A6450, &byte_268B3BE10);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  OUTLINED_FUNCTION_129();
  sub_268B34CA4();
  v19 = sub_268B35044();
  OUTLINED_FUNCTION_4();
  (*(v20 + 16))(v1, v7, v19);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
  v24 = sub_268B354F4();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v30 = v24;
  v31 = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_0Tm(v29);
  sub_268B34F34();

  sub_2688C058C(v27, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v1, &qword_2802A57F0, &qword_268B3DDB0);
  v32 = 0;
  v26(v29);
  sub_2688C058C(v13, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v29, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

double sub_2688D57F8(uint64_t a1)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v6, v7, v3);

  v8 = sub_268B37A34();
  v9 = sub_268B37F04();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    v12 = type metadata accessor for Device();
    v13 = MEMORY[0x26D6256F0](a1, v12);
    v15 = sub_26892CDB8(v13, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2688BB000, v8, v9, "Creating disambiguation view with devices: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x26D6266E0](v11, -1, -1);
    MEMORY[0x26D6266E0](v10, -1, -1);
  }

  v16 = (*(v4 + 8))(v6, v3);
  MEMORY[0x28223BE20](v16);
  *(&v21 - 2) = &v23;
  sub_2688C3644(sub_2688EA370, (&v21 - 4), a1);
  v17 = [objc_allocWithZone(MEMORY[0x277D47A60]) init];
  sub_2688EA03C(0, &unk_2802A6430, 0x277D47AB8);
  v18 = sub_268B37CE4();

  [v17 setItems_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v19 = swift_allocObject();
  *&result = 1;
  *(v19 + 16) = xmmword_268B3BBA0;
  *(v19 + 32) = v17;
  return result;
}

void sub_2688D5B00()
{
  OUTLINED_FUNCTION_26();
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_98();
  v27 = v0;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v3, qword_2802CDA10);
  (*(v5 + 16))(v1);

  v7 = sub_268B37A34();
  v8 = sub_268B37F04();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_68();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    type metadata accessor for Device();
    v11 = OUTLINED_FUNCTION_148();
    v12 = MEMORY[0x26D6256F0](v11);
    sub_26892CDB8(v12, v13, &v26);
    OUTLINED_FUNCTION_234();
    *(v9 + 4) = v2;
    OUTLINED_FUNCTION_170(&dword_2688BB000, v14, v15, "Creating disambiguation view with devices: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v16 = OUTLINED_FUNCTION_122();
  v18 = v17(v16);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_59();
  *(v19 - 16) = &v27;
  v20 = OUTLINED_FUNCTION_290();
  sub_2688C3644(v20, v21, v22);
  v23 = [objc_allocWithZone(MEMORY[0x277D47A60]) init];
  sub_2688EA03C(0, &unk_2802A6430, 0x277D47AB8);
  OUTLINED_FUNCTION_148();
  v24 = sub_268B37CE4();

  [v23 setItems_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  OUTLINED_FUNCTION_220();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_268B3BBA0;
  *(v25 + 32) = v23;
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688D5D88(void (*a1)(uint64_t), void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unint64_t a9)
{
  v68 = a8;
  v74 = a6;
  v75 = a7;
  v63 = a5;
  v62 = a4;
  v76 = a2;
  v77 = a3;
  v71 = a1;
  v9 = sub_268B37A54();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v72 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v11 - 8);
  v69 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v64 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - v18;
  v20 = sub_268B34E24();
  v73 = *(v20 - 1);
  MEMORY[0x28223BE20](v20);
  v22 = (&v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v27 = MEMORY[0x28223BE20](v26);
  v70 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v61 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = (&v61 - v32);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v25, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v34 = v67;
    v35 = __swift_project_value_buffer(v67, qword_2802CDA10);
    v36 = v66;
    v66[2](v72, v35, v34);
    v37 = sub_268B37A34();
    v38 = sub_268B37EE4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2688BB000, v37, v38, "DeviceDisambiguationStrategy.makeFlowCancelledResponse Unable to generate dialog.", v39, 2u);
      MEMORY[0x26D6266E0](v39, -1, -1);
    }

    (*(v36 + 8))(v72, v34);
    sub_2688C2ECC();
    v40 = swift_allocError();
    *v41 = -78;
    v78[0] = v40;
    v79 = 1;
    v76(v78);
    return sub_2688C058C(v78, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v67 = a9;
    sub_2688E43D8();
    sub_2688E1FD4(0, 1, v62, v63, v74, 0x6E776F6E6B6E75, 0xE700000000000000, 0, sub_2688EA0E4, sub_268921060, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    v63 = v43;
    __swift_project_boxed_opaque_existential_1(v75 + 18, v75[21]);
    v44 = *MEMORY[0x277D5BC08];
    v45 = *(v73 + 104);
    v66 = v22;
    v71 = v20;
    v45(v22, v44, v20);
    v72 = v33;
    sub_2688E451C();

    v46 = sub_268B350F4();
    v47 = *(v46 - 8);
    (*(v47 + 32))(v19, v31, v46);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v46);
    v48 = sub_268B34B94();
    v49 = v65;
    __swift_storeEnumTagSinglePayload(v65, 1, 1, v48);
    v50 = v64;
    sub_2688E451C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v46);
    v61 = v26;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v50, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v47 + 8))(v50, v46);
    }

    v52 = v66;
    sub_2688E3B38();

    sub_2688C058C(v49, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v19, &unk_2802A57B0, &unk_268B3CE00);
    (*(v73 + 8))(v52, v71);
    v53 = v75[26];
    v54 = v75[27];
    __swift_project_boxed_opaque_existential_1(v75 + 23, v53);
    v55 = v70;
    sub_2688E451C();
    v56 = *(v55 + *(v61 + 48));
    v57 = sub_268B35044();
    v58 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v57);
    v59 = v67;
    if (v67 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      v55 = v70;
      v60 = sub_268B38294();

      v59 = v60;
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    (*(v54 + 32))(v55, v56, v58, v59, v76, v77, v53, v54);

    sub_2688C058C(v58, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v72, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v47 + 8))(v55, v46);
  }
}

uint64_t sub_2688D66CC(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unint64_t a9)
{
  v68 = a8;
  v74 = a6;
  v75 = a7;
  v63 = a5;
  v62 = a4;
  v76 = a2;
  v77 = a3;
  v71 = a1;
  v9 = sub_268B37A54();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v73 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v11 - 8);
  v69 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v64 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - v18;
  v20 = sub_268B34E24();
  v72 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = (&v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v27 = MEMORY[0x28223BE20](v26);
  v70 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v61 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v61 - v32;
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v25, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v34 = v67;
    v35 = __swift_project_value_buffer(v67, qword_2802CDA10);
    v36 = v66;
    v66[2](v73, v35, v34);
    v37 = sub_268B37A34();
    v38 = sub_268B37EE4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2688BB000, v37, v38, "DeviceDisambiguationStrategy.makeFlowCancelledResponse Unable to generate dialog.", v39, 2u);
      MEMORY[0x26D6266E0](v39, -1, -1);
    }

    (v36[1])(v73, v34);
    sub_2688C2ECC();
    v40 = swift_allocError();
    *v41 = -78;
    v78[0] = v40;
    v79 = 1;
    v76(v78);
    return sub_2688C058C(v78, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v67 = a9;
    sub_2688E43D8();
    sub_2688E1C2C();
    v62 = v43;
    __swift_project_boxed_opaque_existential_1(v75 + 18, v75[21]);
    v44 = *MEMORY[0x277D5BC08];
    v45 = *(v72 + 104);
    v66 = v22;
    v71 = v20;
    v45(v22, v44, v20);
    v73 = v33;
    sub_2688E451C();

    v46 = sub_268B350F4();
    v47 = *(v46 - 8);
    (*(v47 + 32))(v19, v31, v46);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v46);
    v48 = sub_268B34B94();
    v49 = v65;
    __swift_storeEnumTagSinglePayload(v65, 1, 1, v48);
    v50 = v64;
    sub_2688E451C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v46);
    v63 = v47;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v50, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v47 + 8))(v50, v46);
    }

    v52 = v66;
    sub_2688E3B38();

    sub_2688C058C(v49, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v19, &unk_2802A57B0, &unk_268B3CE00);
    (*(v72 + 8))(v52, v71);
    v53 = v75[26];
    v54 = v75[27];
    __swift_project_boxed_opaque_existential_1(v75 + 23, v53);
    v55 = v70;
    sub_2688E451C();
    v56 = *&v55[*(v26 + 48)];
    v57 = sub_268B35044();
    v58 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v57);
    v59 = v67;
    if (v67 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      v55 = v70;
      v60 = sub_268B38294();

      v59 = v60;
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    (*(v54 + 32))(v55, v56, v58, v59, v76, v77, v53, v54);

    sub_2688C058C(v58, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v63 + 8))(v55, v46);
  }
}

void sub_2688D6FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_26();
  v131 = v28;
  OUTLINED_FUNCTION_231(v29, v30, v31, v32, v33, v34, v35);
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v128 = v37;
  v129 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2();
  v134 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  v132 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v42);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_74();
  v126 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v46 = OUTLINED_FUNCTION_22(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3();
  v124 = v47;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15();
  v49 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v135 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_293();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_75();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3();
  v133 = v55;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v57);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = sub_2688C058C(v27, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      v58 = swift_once();
    }

    OUTLINED_FUNCTION_61(v58, qword_2802CDA10);
    (*(v128 + 16))(v134);
    v59 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v59, v60))
    {
      OUTLINED_FUNCTION_64();
      v61 = swift_slowAlloc();
      OUTLINED_FUNCTION_10(v61);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v62, v63, v64, v65, v66, 2u);
      v67 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v67);
    }

    (*(v128 + 8))(v134, v129);
    sub_2688C2ECC();
    OUTLINED_FUNCTION_99();
    v68 = swift_allocError();
    v70 = OUTLINED_FUNCTION_39(v68, v69, 178);
    v71(v70);
    sub_2688C058C(&v137, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_97();
    sub_2688E43D8();
    v72 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_177(v72, v73, v74, v75, v76, v77, v78, v79, sub_2688DF9AC, a22, v117, a22, v119, v121, a25, v122, v123, v124, v126, v128, a21, v131);
    OUTLINED_FUNCTION_156(v80);
    v81 = __swift_project_boxed_opaque_existential_1(v136 + 18, v136[21]);
    v82 = OUTLINED_FUNCTION_288();
    v83(v82);
    OUTLINED_FUNCTION_240();

    v84 = sub_268B350F4();
    OUTLINED_FUNCTION_182();
    v85 = OUTLINED_FUNCTION_138();
    v86(v85);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v84);
    sub_268B34B94();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
    v94 = *v81;
    sub_2688E451C();
    OUTLINED_FUNCTION_135(v125, 1, v84);
    if (v95)
    {
      sub_2688C058C(v125, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      v96 = OUTLINED_FUNCTION_194();
      v97(v96);
    }

    OUTLINED_FUNCTION_217();
    v116 = v98;
    OUTLINED_FUNCTION_128();
    sub_2688E2F9C(v99, v100, v101, v102, v103, v104, v105, v106, v94, v118, v120, v116);

    sub_2688C058C(v127, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v25, &unk_2802A57B0, &unk_268B3CE00);
    (*(v135 + 8))(v125, v49);
    __swift_project_boxed_opaque_existential_1(v136 + 23, v136[26]);
    sub_2688E451C();
    v107 = *(v133 + *(v53 + 48));
    sub_268B35044();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
    if (v130 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      OUTLINED_FUNCTION_190();
      sub_268B38294();
      OUTLINED_FUNCTION_129();
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    v112 = OUTLINED_FUNCTION_121();
    v113(v112);

    sub_2688C058C(v132, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v134, &unk_2802A56E0, &unk_268B3CDF0);
    v114 = OUTLINED_FUNCTION_150();
    v115(v114);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2688D7740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t))
{
  OUTLINED_FUNCTION_26();
  v118 = v26;
  OUTLINED_FUNCTION_231(v27, v28, v29, v30, v31, v32, v33);
  v123 = v34;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v117 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2();
  v115 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_74();
  v119 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_74();
  v113 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v44 = OUTLINED_FUNCTION_22(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v111 = v45;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_15();
  v47 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v125 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_293();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_75();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3();
  v121 = v53;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v55);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = sub_2688C058C(v25, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      v56 = swift_once();
    }

    OUTLINED_FUNCTION_61(v56, qword_2802CDA10);
    v57 = OUTLINED_FUNCTION_104();
    v58(v57);
    v59 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v59, v60))
    {
      OUTLINED_FUNCTION_64();
      v61 = swift_slowAlloc();
      OUTLINED_FUNCTION_10(v61);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v62, v63, v64, v65, v66, 2u);
      v67 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v67);
    }

    v68 = OUTLINED_FUNCTION_230();
    v69(v68);
    sub_2688C2ECC();
    OUTLINED_FUNCTION_99();
    v70 = swift_allocError();
    v72 = OUTLINED_FUNCTION_39(v70, v71, 178);
    v73(v72);
    sub_2688C058C(&v127, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    OUTLINED_FUNCTION_97();
    sub_2688E43D8();
    v74 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_177(v74, v75, v76, v77, v78, v79, v80, v81, sub_2688E0310, a22, a23, v109, v110, v111, v113, v115, a21, v117, v118, v119, v121, v123);
    OUTLINED_FUNCTION_156(v82);
    __swift_project_boxed_opaque_existential_1(v126 + 18, v126[21]);
    v83 = OUTLINED_FUNCTION_288();
    v84(v83);
    OUTLINED_FUNCTION_240();

    v85 = sub_268B350F4();
    OUTLINED_FUNCTION_182();
    v86 = OUTLINED_FUNCTION_138();
    v87(v86);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v85);
    sub_268B34B94();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
    sub_2688E451C();
    OUTLINED_FUNCTION_135(v112, 1, v85);
    if (v95)
    {
      sub_2688C058C(v112, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      v96 = OUTLINED_FUNCTION_194();
      v97(v96);
    }

    OUTLINED_FUNCTION_128();
    v108(v98);

    sub_2688C058C(v114, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v23, &unk_2802A57B0, &unk_268B3CE00);
    (*(v125 + 8))(v112, v47);
    __swift_project_boxed_opaque_existential_1(v126 + 23, v126[26]);
    sub_2688E451C();
    v99 = *(v122 + *(v51 + 48));
    sub_268B35044();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
    if (v116 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      OUTLINED_FUNCTION_190();
      sub_268B38294();
      OUTLINED_FUNCTION_129();
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    v104 = OUTLINED_FUNCTION_121();
    v105(v104);

    sub_2688C058C(v120, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v124, &unk_2802A56E0, &unk_268B3CDF0);
    v106 = OUTLINED_FUNCTION_150();
    v107(v106);
  }

  OUTLINED_FUNCTION_23();
}

id sub_2688D7E68(void *a1, void *a2)
{
  sub_268988580(a1);
  if (!v4)
  {
    sub_268988568(a1);
    if (!v5)
    {
      return 0;
    }
  }

  v6 = [a1 routeId];
  if (v6)
  {
    sub_268B37BF4();

    v6 = [objc_allocWithZone(MEMORY[0x277D47AB8]) init];
    v7 = sub_268B37BC4();

    [v6 setTitle_];

    type metadata accessor for DirectInvocationHelper();
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    OUTLINED_FUNCTION_186();
    v8 = sub_268B34D34();
    OUTLINED_FUNCTION_268();
    sub_268A691D8();
    v10 = v9;

    if (v10 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
      OUTLINED_FUNCTION_229();
      sub_268B38294();
      OUTLINED_FUNCTION_226();
    }

    else
    {
      sub_268B38454();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
    OUTLINED_FUNCTION_229();
    v11 = sub_268B37CE4();

    [v6 setCommands_];
  }

  else
  {
  }

  return v6;
}

uint64_t sub_2688D804C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = a2(0);
  OUTLINED_FUNCTION_245(v4);
  return a3();
}

uint64_t sub_2688D8090()
{
  v0 = sub_268B36434();
  OUTLINED_FUNCTION_245(v0);
  return sub_268B36424();
}

void sub_2688D80C8()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v57 = v4;
  v6 = v5;
  v8 = v7;
  v56 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v24 = v23 - v22;
  v59 = v6;
  v1(0);
  v25 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5950, &qword_268B3BF18);
  if (swift_dynamicCast())
  {
    v55 = v3;
    sub_2688E6514(v58, v60);
    v53 = v20;
    v54 = v18;
    (*(v20 + 16))(v24, v8, v18);
    v26 = v60[4];
    __swift_project_boxed_opaque_existential_1(v60, v60[3]);
    v27 = sub_268B35294();
    OUTLINED_FUNCTION_245(v27);
    sub_268B35284();
    (*(v26 + 8))();
    OUTLINED_FUNCTION_129();

    v28 = sub_268B35274();
    v30 = v29;

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v56, qword_2802CDA10);
    v31 = OUTLINED_FUNCTION_104();
    v32(v31);

    v33 = sub_268B37A34();
    v34 = sub_268B37F04();

    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_68();
      v35 = swift_slowAlloc();
      OUTLINED_FUNCTION_69();
      v36 = swift_slowAlloc();
      *&v58[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_26892CDB8(v28, v30, v58);
      OUTLINED_FUNCTION_267(&dword_2688BB000, v33, v34, "Adding machine utterance: %s as nlInput to the context update");
      _os_log_impl(v37, v38, v39, v40, v41, v42);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    v43 = OUTLINED_FUNCTION_191();
    v44(v43);
    v45 = v54;
    sub_268B35024();
    v57(v24);
    (*(v53 + 8))(v24, v45);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  else
  {
    OUTLINED_FUNCTION_203();
    sub_2688C058C(v58, &qword_2802A5958, &qword_268B3BF20);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v46 = v56;
    __swift_project_value_buffer(v56, qword_2802CDA10);
    v47 = OUTLINED_FUNCTION_76();
    v48(v47);
    v49 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_64();
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2688BB000, v49, v17, "Intent is not a machineUtteranceProvidingIntent. Returning the contextUpdate as is without providing an NL input", v51, 2u);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    (*(v10 + 8))(v14, v46);
    v57(v8);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2688D8540()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  v38 = v19;
  (*(v14 + 16))(v17 - v16, v5);
  v20 = sub_268B35294();
  OUTLINED_FUNCTION_245(v20);
  v37 = v3;
  sub_268B35284();
  sub_268B35264();
  OUTLINED_FUNCTION_154();

  v21 = sub_268B35274();
  v23 = v22;

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v6, qword_2802CDA10);
  v24 = OUTLINED_FUNCTION_104();
  v25(v24);

  v26 = sub_268B37A34();
  v27 = sub_268B37F04();

  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_68();
    v34 = v6;
    v28 = v21;
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v36 = v1;
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_26892CDB8(v28, v23, &v39);
    OUTLINED_FUNCTION_204(&dword_2688BB000, v26, v27, "Adding machine utterance: %s as nlInput to the context update", v34);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    v1 = v36;
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_260();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    (*(v8 + 8))(v12, v35);
  }

  else
  {

    v31 = OUTLINED_FUNCTION_192();
    v33(v31, v32);
  }

  sub_268B35024();
  v1(v18);
  (*(v14 + 8))(v18, v38);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688D8858(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_268B35044();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for SkipContentIntent();
  v39 = &off_287956B90;
  v37[0] = a2;
  v16 = *(v13 + 16);
  v35 = v12;
  v16(v15, a1, v12);
  __swift_project_boxed_opaque_existential_1(v37, v38);
  sub_268B35294();
  swift_allocObject();
  v17 = a2;
  sub_268B35284();
  sub_2689EA290();

  v34 = sub_268B35274();
  v19 = v18;

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v9 + 16))(v11, v20, v8);

  v21 = sub_268B37A34();
  v22 = v8;
  v23 = sub_268B37F04();

  if (os_log_type_enabled(v21, v23))
  {
    v24 = swift_slowAlloc();
    v33 = a3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v32 = a4;
    v27 = v26;
    v36 = v26;
    *v25 = 136315138;
    v31 = v22;
    *(v25 + 4) = sub_26892CDB8(v34, v19, &v36);
    _os_log_impl(&dword_2688BB000, v21, v23, "Adding machine utterance: %s as nlInput to the context update", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x26D6266E0](v27, -1, -1);
    v28 = v25;
    a3 = v33;
    MEMORY[0x26D6266E0](v28, -1, -1);

    (*(v9 + 8))(v11, v31);
  }

  else
  {

    (*(v9 + 8))(v11, v22);
  }

  sub_268B35024();
  a3(v15);
  (*(v13 + 8))(v15, v35);
  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

void sub_2688D8BF8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v12 = sub_268B35044();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2688D9250(1, a1);
  sub_2688D95E0();
  v16 = v15;

  sub_2688D9A20(a2, a3, a4);
  v39 = a1;

  sub_268984794(v16);
  v34 = v14;
  sub_2688D9BB0();

  v17 = sub_2688EFD0C();
  v37 = a6;
  v38 = a5;
  if (v17)
  {
    v18 = v17;
    if (v17 >= 1)
    {
      v19 = 0;
      v20 = MEMORY[0x277D84F90];
      while (1)
      {
        v21 = (a4 & 0xC000000000000001) != 0 ? MEMORY[0x26D625BD0](v19, a4) : *(a4 + 8 * v19 + 32);
        v22 = v21;
        sub_2689841C4();
        v24 = *(v23 + 16);
        v25 = *(v20 + 16);
        if (__OFADD__(v25, v24))
        {
          break;
        }

        v26 = v23;
        if (!swift_isUniquelyReferenced_nonNull_native() || (v27 = *(v20 + 24) >> 1, v27 < v25 + v24))
        {
          sub_268987774();
          v20 = v28;
          v27 = *(v28 + 24) >> 1;
        }

        if (*(v26 + 16))
        {
          v29 = v27 - *(v20 + 16);
          sub_268B37A94();
          if (v29 < v24)
          {
            goto LABEL_21;
          }

          swift_arrayInitWithCopy();

          if (v24)
          {
            v30 = *(v20 + 16);
            v31 = __OFADD__(v30, v24);
            v32 = v30 + v24;
            if (v31)
            {
              goto LABEL_22;
            }

            *(v20 + 16) = v32;
          }
        }

        else
        {

          if (v24)
          {
            goto LABEL_20;
          }
        }

        ++v19;

        if (v18 == v19)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    v33 = v34;
    sub_268B34F94();
    v38(v33);
    (*(v35 + 8))(v33, v36);
  }
}

void sub_2688D8F24(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v12 = sub_268B35044();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2688D9250(1, a1);
  sub_2688D95E0();
  v16 = v15;

  sub_2688D9A20(a2, a3, a4);
  v39 = a1;

  sub_268984794(v16);
  v34 = v14;
  sub_2688D9BB0();

  v17 = sub_2688EFD0C();
  v37 = a6;
  v38 = a5;
  if (v17)
  {
    v18 = v17;
    if (v17 >= 1)
    {
      v19 = 0;
      v20 = MEMORY[0x277D84F90];
      while (1)
      {
        v21 = (a4 & 0xC000000000000001) != 0 ? MEMORY[0x26D625BD0](v19, a4) : *(a4 + 8 * v19 + 32);
        v22 = v21;
        sub_2689841C4();
        v24 = *(v23 + 16);
        v25 = *(v20 + 16);
        if (__OFADD__(v25, v24))
        {
          break;
        }

        v26 = v23;
        if (!swift_isUniquelyReferenced_nonNull_native() || (v27 = *(v20 + 24) >> 1, v27 < v25 + v24))
        {
          sub_268987774();
          v20 = v28;
          v27 = *(v28 + 24) >> 1;
        }

        if (*(v26 + 16))
        {
          v29 = v27 - *(v20 + 16);
          sub_268B37A94();
          if (v29 < v24)
          {
            goto LABEL_21;
          }

          swift_arrayInitWithCopy();

          if (v24)
          {
            v30 = *(v20 + 16);
            v31 = __OFADD__(v30, v24);
            v32 = v30 + v24;
            if (v31)
            {
              goto LABEL_22;
            }

            *(v20 + 16) = v32;
          }
        }

        else
        {

          if (v24)
          {
            goto LABEL_20;
          }
        }

        ++v19;

        if (v18 == v19)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    v33 = v34;
    sub_268B34F94();
    v38(v33);
    (*(v35 + 8))(v33, v36);
  }
}

void sub_2688D9250(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B34DE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  if (a1 < 0)
  {
    goto LABEL_29;
  }

  if (a1)
  {
    v10 = *(a2 + 16);
    if (!v10)
    {
LABEL_25:

      return;
    }

    v11 = 0;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v15 = a2 + v14;
    v16 = *(v12 + 56);
    v38 = v13;
    v39 = v16;
    v34 = (v12 + 16);
    v30 = a2;
    v31 = (v12 + 24);
    v17 = v10 - 1;
    v18 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
    v32 = a1;
    v33 = v12;
    v35 = v14;
    v36 = &v30 - v8;
    while (1)
    {
      v38(v9, v15, v4);
      v20 = *(v19 + 16);
      if (v20 < a1)
      {
        break;
      }

      if (v11 >= v20)
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      v25 = v39 * v11;
      v38(v37, v19 + v14 + v39 * v11, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26894476C(0, *(v18 + 16) + 1, 1);
        v18 = v41;
      }

      v28 = *(v18 + 16);
      v27 = *(v18 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_26894476C(v27 > 1, v28 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v28 + 1;
      v14 = v35;
      (*v34)(v18 + v35 + v28 * v39, v37, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2688E1654();
        v19 = v29;
      }

      v9 = v36;
      if (v11 >= *(v19 + 16))
      {
        goto LABEL_28;
      }

      (*v31)(v19 + v14 + v25, v36, v4);
      ++v11;
      a1 = v32;
      if (v11 < v32)
      {
        goto LABEL_20;
      }

      if (!v17)
      {
        goto LABEL_25;
      }

      v11 = 0;
LABEL_24:
      --v17;
      v15 += v39;
    }

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v19;
    if ((v21 & 1) == 0)
    {
      sub_26894476C(0, v20 + 1, 1);
      v19 = v40;
    }

    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_26894476C(v22 > 1, v23 + 1, 1);
      v19 = v40;
    }

    *(v19 + 16) = v23 + 1;
    v14 = v35;
    v24 = v19 + v35 + v23 * v39;
    v9 = v36;
    (*v34)(v24, v36, v4);
LABEL_20:
    if (!v17)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }
}

void sub_2688D95E0()
{
  OUTLINED_FUNCTION_26();
  v38 = v0;
  v39 = v1;
  v36 = v2;
  v37 = v3;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  v7 = 0;
  *(inited + 16) = xmmword_268B3BBB0;
  *(inited + 32) = 0x7473726966;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0x646E6F636573;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 64) = 0x6472696874;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = 0x687472756F66;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x6874666966;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = 0x6874786973;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = 0x68746E65766573;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = 0x687468676965;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 160) = 0x68746E696ELL;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = 0x68746E6574;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = 0x68746E6576656C65;
  *(inited + 200) = 0xE800000000000000;
  *(inited + 208) = 0x6874666C657774;
  *(inited + 216) = 0xE700000000000000;
  OUTLINED_FUNCTION_261();
  *(v8 + 224) = v9;
  *(v8 + 232) = 0xEA00000000006874;
  OUTLINED_FUNCTION_261();
  v10[30] = v11;
  v10[31] = v12;
  v10[32] = 0x746E656574666966;
  v10[33] = 0xE900000000000068;
  v10[34] = 0x746E656574786973;
  v10[35] = 0xE900000000000068;
  v10[36] = 0x6565746E65766573;
  v10[37] = 0xEB0000000068746ELL;
  OUTLINED_FUNCTION_261();
  *(v13 + 304) = v14;
  *(v13 + 312) = v15;
  OUTLINED_FUNCTION_261();
  *(v16 + 320) = v17;
  *(v16 + 328) = v18;
  *(v16 + 336) = 0x746569746E657774;
  *(v16 + 344) = v19;
  strcpy((v16 + 352), "twenty first");
  *(v16 + 365) = 0;
  *(v16 + 366) = -5120;
  strcpy((v16 + 368), "twenty second");
  *(v16 + 382) = -4864;
  strcpy((v16 + 384), "twenty third");
  *(v16 + 397) = 0;
  *(v16 + 398) = -5120;
  strcpy((v16 + 400), "twenty fourth");
  *(v16 + 414) = -4864;
  strcpy((v16 + 416), "twenty fifth");
  *(v16 + 429) = 0;
  *(v16 + 430) = -5120;
  v40 = v16;
  v35 = v5;
  v20 = *(v5 + 16);
  v42[0] = 0;
  v21 = MEMORY[0x277D84F90];
  for (i = v20; ; v20 = i)
  {
    if (v20 == v7)
    {
      swift_setDeallocating();
      sub_268ACE684();
      OUTLINED_FUNCTION_23();
      return;
    }

    sub_268B34DE4();
    OUTLINED_FUNCTION_255();
    v24 = v7;
    sub_2688DC3D0(v35 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v23 + 72) * v7, v42, v40, v20, 0x4C6F546472696874, 0xEB00000000747361, 0x6F54646E6F636573, 0xEC0000007473614CLL, 1953718636, 0xE400000000000000, v36, v37, v38, v39, i, v35, v36, v37, v38, v39, v40, v41, v42[0], v42[1], v42[2], v42[3]);
    v26 = *(v25 + 16);
    v27 = *(v21 + 16);
    if (__OFADD__(v27, v26))
    {
      break;
    }

    v28 = v25;
    if (!swift_isUniquelyReferenced_nonNull_native() || v27 + v26 > *(v21 + 24) >> 1)
    {
      sub_268987924();
      v21 = v29;
    }

    if (*(v28 + 16))
    {
      if ((*(v21 + 24) >> 1) - *(v21 + 16) < v26)
      {
        goto LABEL_17;
      }

      swift_arrayInitWithCopy();

      v30 = v24;
      if (v26)
      {
        v31 = *(v21 + 16);
        v32 = __OFADD__(v31, v26);
        v33 = v31 + v26;
        if (v32)
        {
          goto LABEL_18;
        }

        *(v21 + 16) = v33;
      }
    }

    else
    {

      v30 = v24;
      if (v26)
      {
        goto LABEL_16;
      }
    }

    v7 = v30 + 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}