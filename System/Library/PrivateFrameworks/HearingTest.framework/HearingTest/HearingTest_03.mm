void sub_2520C172C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v7 = sub_25214198C();
  __swift_project_value_buffer(v7, qword_27F4CDE68);

  sub_2520A8DDC(a3, v18);
  v8 = sub_25214196C();
  v9 = sub_252141FBC();

  sub_2520CB568(a3);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136446722;
    v12 = sub_2521425DC();
    v14 = sub_2520A5448(v12, v13, v18);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2520A5448(a1, a2, v18);
    *(v10 + 22) = 2080;
    v15 = sub_2520B052C();
    v17 = sub_2520A5448(v15, v16, v18);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] [Noise Tuning] %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v11, -1, -1);
    MEMORY[0x253099FD0](v10, -1, -1);
  }
}

id sub_2520C1908(id result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = result;
    [result open];
    [v6 setDispatchQueue_];
    v8 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = a5;
    aBlock[4] = sub_2520CC178;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2520C737C;
    aBlock[3] = &block_descriptor_436;
    v11 = _Block_copy(aBlock);
    v12 = v6;

    [v12 setInputReportHandler_];
    _Block_release(v11);
    return [v12 activate];
  }

  return result;
}

void sub_2520C1A74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a9;
  v15 = sub_252141A4C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v199 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_252141A8C();
  v198 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v197 = &v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_252141ABC();
  v196 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v202 = &v185 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v195 = &v185 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v33 = sub_25214198C();
    __swift_project_value_buffer(v33, qword_27F4CDE68);
    v34 = sub_25214196C();
    v35 = sub_252141FAC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v209 = v37;
      *v36 = 136446210;
      v38 = sub_2521425DC();
      v40 = sub_2520A5448(v38, v39, &v209);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_25207E000, v34, v35, "[%{public}s] ReqMgr not setup for HID device handler", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x253099FD0](v37, -1, -1);
      MEMORY[0x253099FD0](v36, -1, -1);
    }

    return;
  }

  v23 = Strong;
  if (Strong[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidListening] != 1)
  {

    return;
  }

  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  v192 = v16;
  if (byte_27F4D3492 == 1)
  {
    v194 = a9;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v24 = sub_25214198C();
    __swift_project_value_buffer(v24, qword_27F4CDE68);
    sub_2520CBC7C(a5, a6);
    sub_2520CBC7C(a5, a6);
    v25 = sub_25214196C();
    v26 = sub_252141FBC();
    if (!os_log_type_enabled(v25, v26))
    {
      sub_2520CB598(a5, a6);
      sub_2520CB598(a5, a6);

      v14 = v194;
      goto LABEL_27;
    }

    v191 = v15;
    v193 = v23;
    v27 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    *&aBlock = v189;
    *v27 = 136447234;
    v28 = sub_2521425DC();
    v30 = sub_2520A5448(v28, v29, &aBlock);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2048;
    *(v27 + 14) = a2;
    *(v27 + 22) = 2048;
    *(v27 + 24) = a4;
    v31 = a6 >> 62;
    *(v27 + 32) = 2048;
    LODWORD(v190) = v26;
    if ((a6 >> 62) > 1)
    {
      if (v31 != 2)
      {
        sub_2520CB598(a5, a6);
        v32 = 0;
        goto LABEL_26;
      }

      v42 = *(a5 + 16);
      v41 = *(a5 + 24);
      sub_2520CB598(a5, a6);
      v32 = v41 - v42;
      if (!__OFSUB__(v41, v42))
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v31)
    {
      sub_2520CB598(a5, a6);
      v32 = BYTE6(a6);
LABEL_26:
      *(v27 + 34) = v32;
      sub_2520CB598(a5, a6);
      *(v27 + 42) = 2080;
      *&v209 = sub_2520F79EC(a5, a6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E0, &qword_252144530);
      sub_2520A2F1C(&qword_27F4CDE60, &qword_27F4CE6E0, &qword_252144530, MEMORY[0x277D83958]);
      v43 = sub_252141B3C();
      v45 = v44;

      *&v209 = 30768;
      *(&v209 + 1) = 0xE200000000000000;
      MEMORY[0x253098DA0](v43, v45);

      v46 = sub_2520A5448(v209, *(&v209 + 1), &aBlock);

      *(v27 + 44) = v46;
      _os_log_impl(&dword_25207E000, v25, v190, "[%{public}s] HID Report %llu, %ld, %ld, %s", v27, 0x34u);
      v47 = v189;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v47, -1, -1);
      MEMORY[0x253099FD0](v27, -1, -1);

      v23 = v193;
      v14 = v194;
      v15 = v191;
      goto LABEL_27;
    }

    sub_2520CB598(a5, a6);
    LODWORD(v32) = HIDWORD(a5) - a5;
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      __break(1u);
LABEL_97:
      swift_once();
      goto LABEL_38;
    }

    v32 = v32;
    goto LABEL_26;
  }

LABEL_27:
  v48 = sub_252141B6C();
  v49 = [a8 propertyForKey_];

  if (v49)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
  }

  else
  {
    v204 = 0u;
    aBlock = 0u;
  }

  v209 = aBlock;
  v210 = v204;
  if (!*(&v204 + 1))
  {
    sub_2520A2584(&v209, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_42;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v71 = sub_25214198C();
    __swift_project_value_buffer(v71, qword_27F4CDE68);
    v72 = sub_25214196C();
    v73 = sub_252141FAC();
    if (!os_log_type_enabled(v72, v73))
    {
      goto LABEL_47;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v209 = v75;
    *v74 = 136446210;
    v76 = sub_2521425DC();
    v78 = sub_2520A5448(v76, v77, &v209);

    *(v74 + 4) = v78;
    v79 = "[%{public}s] HID payload size not available";
    goto LABEL_46;
  }

  if (v208[0] != 57)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v80 = sub_25214198C();
    __swift_project_value_buffer(v80, qword_27F4CDE68);
    v72 = sub_25214196C();
    v73 = sub_252141FAC();
    if (!os_log_type_enabled(v72, v73))
    {
      goto LABEL_47;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v209 = v75;
    *v74 = 136446210;
    v81 = sub_2521425DC();
    v83 = sub_2520A5448(v81, v82, &v209);

    *(v74 + 4) = v83;
    v79 = "[%{public}s] HID payload size unexpected";
LABEL_46:
    _os_log_impl(&dword_25207E000, v72, v73, v79, v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x253099FD0](v75, -1, -1);
    MEMORY[0x253099FD0](v74, -1, -1);
LABEL_47:

    return;
  }

  v191 = v15;
  v194 = v14;
  v193 = v23;
  v50 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidLock;
  v51 = 0x2796F5000uLL;
  [*&v193[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidLock] lock];
  v52 = sub_25210B148(&unk_28644DF88);
  v54 = v53;
  *&aBlock = v52;
  *(&aBlock + 1) = v53;
  *(&v210 + 1) = MEMORY[0x277CC9318];
  v211 = MEMORY[0x277CC9300];
  *&v209 = a5;
  *(&v209 + 1) = a6;
  v55 = __swift_project_boxed_opaque_existential_1(&v209, MEMORY[0x277CC9318]);
  v56 = *v55;
  v57 = v55[1];
  sub_2520CBC7C(a5, a6);
  sub_2520CBC7C(v52, v54);
  sub_2520CB22C(v56, v57, &aBlock);
  v190 = 0;
  sub_2520CB598(v52, v54);
  __swift_destroy_boxed_opaque_existential_0(&v209);
  v25 = &v193[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData];
  v58 = *&v193[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData];
  v59 = *&v193[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData + 8];
  *&v193[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData] = aBlock;
  sub_2520CB598(v58, v59);
  v60 = *&v193[v50];
  v27 = v193;
  a8 = 0x2796F5000uLL;
  [v60 unlock];
  if (qword_27F4CD7B8 != -1)
  {
    swift_once();
  }

  a4 = 0x27F4CD000uLL;
  if ((byte_27F4D3493 & 1) == 0)
  {
    goto LABEL_58;
  }

  v61 = v27 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_response;
  if (*(v27 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_response + 16) != 2)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v84 = sub_25214198C();
    __swift_project_value_buffer(v84, qword_27F4CDE68);
    v85 = v27;
    v86 = sub_25214196C();
    v87 = sub_252141FBC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      a8 = swift_slowAlloc();
      *&v209 = a8;
      *v88 = 136446466;
      v89 = sub_2521425DC();
      v91 = sub_2520A5448(v89, v90, &v209);

      *(v88 + 4) = v91;
      *(v88 + 12) = 1024;
      if (*(v61 + 16) == 2)
      {

        __break(1u);
        goto LABEL_102;
      }

      v92 = *(v61 + 32);

      *(v88 + 14) = v92 & 1;
      _os_log_impl(&dword_25207E000, v86, v87, "[%{public}s] User response is %{BOOL}d", v88, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(a8);
      MEMORY[0x253099FD0](a8, -1, -1);
      MEMORY[0x253099FD0](v88, -1, -1);

      v27 = v193;
      v51 = 0x2796F5000;
      a8 = 0x2796F5000;
    }

    else
    {

      v51 = 0x2796F5000uLL;
    }

    goto LABEL_58;
  }

  if (qword_27F4CD708 != -1)
  {
    goto LABEL_97;
  }

LABEL_38:
  v62 = sub_25214198C();
  __swift_project_value_buffer(v62, qword_27F4CDE68);
  v63 = sub_25214196C();
  v64 = sub_252141FBC();
  v51 = 0x2796F5000;
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v209 = v66;
    *v65 = 136446210;
    v67 = sub_2521425DC();
    v69 = a8;
    v70 = sub_2520A5448(v67, v68, &v209);

    *(v65 + 4) = v70;
    a8 = v69;
    a4 = 0x27F4CD000;
    _os_log_impl(&dword_25207E000, v63, v64, "[%{public}s] User response is nil", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x253099FD0](v66, -1, -1);
    MEMORY[0x253099FD0](v65, -1, -1);
  }

LABEL_58:
  if (qword_27F4CD780 != -1)
  {
    swift_once();
  }

  v93 = qword_27F4CE108;
  v94 = qword_27F4CE110;
  v95 = *(v27 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_accessoryManager);
  if (v95 && (v96 = *(v27 + *(a4 + 3528) + 16), v96 != 2))
  {
    LOBYTE(aBlock) = v96 & 1;
    v97 = v95;
    sub_2520F8EAC(&aBlock, &v209);

    v94 = *(&v209 + 1);
    v93 = v209;
  }

  else
  {
  }

  isa = v25->isa;
  v99 = v25[1].isa;
  v208[0] = v93;
  v208[1] = v94;
  v100 = *(a4 + 3528);
  v101 = v27;
  v102 = (v27 + v100);
  LOBYTE(v100) = *(v102 + 32);
  aBlock = *v102;
  v204 = v102[1];
  LOBYTE(v205) = v100;
  sub_2520CBC7C(isa, v99);

  sub_2520CB808(isa, v99, v208, &aBlock, &v209);
  if (*(v101 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_noiseMetaData))
  {
    v103 = v212;

    sub_2520ACB18(v103);
    sub_2520ABE70(v103, v213);
  }

  v104 = &unk_27F4D3000;
  v105 = v194;
  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v106 = sub_25214198C();
    __swift_project_value_buffer(v106, qword_27F4CDE68);
    sub_2520CBE7C(&v209, &aBlock);
    v107 = sub_25214196C();
    v108 = sub_252141FBC();
    sub_2520CBCE8(&v209);
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v189 = v94;
      v110 = v109;
      v111 = swift_slowAlloc();
      *&aBlock = v111;
      *v110 = 136447234;
      v112 = sub_2521425DC();
      v114 = a8;
      v115 = sub_2520A5448(v112, v113, &aBlock);

      *(v110 + 4) = v115;
      *(v110 + 12) = 2080;
      v116 = v209;
      [v209 *(v51 + 3640)];
      v117 = *(&v209 + 1);
      v208[0] = *(&v209 + 1);

      [v116 (v114 + 376)];
      v118 = MEMORY[0x253098E80](v117, MEMORY[0x277D839F8]);
      v120 = v119;
      sub_2520A2584(v208, &qword_27F4CDE58, &qword_252144528);
      v121 = sub_2520A5448(v118, v120, &aBlock);
      a8 = v114;
      v105 = v194;

      *(v110 + 14) = v121;
      *(v110 + 22) = 2048;
      *(v110 + 24) = v210;
      *(v110 + 32) = 2048;
      v122 = v212;
      *(v110 + 34) = v213;
      *(v110 + 42) = 2048;
      *(v110 + 44) = v122;
      _os_log_impl(&dword_25207E000, v107, v108, "[%{public}s] drumOctBand %s, drumAuditoryBand %f, drumdBA %f, drumdBAInst %f", v110, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v111, -1, -1);
      v123 = v110;
      v94 = v189;
      MEMORY[0x253099FD0](v123, -1, -1);
    }
  }

  v124 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_responseLock;
  v125 = v193;
  [*&v193[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_responseLock] *(v51 + 3640)];
  *v102 = 0;
  *(v102 + 1) = 0;
  v102[1] = xmmword_252143B10;
  *(v102 + 32) = 0;
  v126 = v125;
  [*&v125[v124] *(a8 + 3648)];
  sub_2520C3578(&v209);
  if ((v127 & 1) == 0)
  {

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v151 = sub_25214198C();
    __swift_project_value_buffer(v151, qword_27F4CDE68);
    v152 = sub_25214196C();
    v153 = sub_252141FAC();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *&aBlock = v155;
      *v154 = 136446210;
      v156 = sub_2521425DC();
      v158 = sub_2520A5448(v156, v157, &aBlock);

      *(v154 + 4) = v158;
      _os_log_impl(&dword_25207E000, v152, v153, "[%{public}s] Invalid Buffer, return without anaylsis", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v155);
      MEMORY[0x253099FD0](v155, -1, -1);
      MEMORY[0x253099FD0](v154, -1, -1);
    }

    sub_2520CBCE8(&v209);
    return;
  }

  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v128 = sub_25214198C();
    __swift_project_value_buffer(v128, qword_27F4CDE68);
    v129 = v125;
    v130 = sub_25214196C();
    v131 = sub_252141FBC();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      *&aBlock = v188;
      *v132 = 136447234;
      v133 = sub_2521425DC();
      v187 = v131;
      v135 = sub_2520A5448(v133, v134, &aBlock);
      v186 = v130;
      v136 = v135;

      *(v132 + 4) = v136;
      *(v132 + 12) = 2048;
      MEMORY[0x28223BE20](v137);
      *(&v185 - 2) = v138;
      v139 = v138;
      v189 = v94;
      v140 = v139;
      v141 = v190;
      sub_25214200C();

      *(v132 + 14) = v207;
      *(v132 + 22) = 2080;
      MEMORY[0x28223BE20](v142);
      *(&v185 - 2) = v143;
      v144 = v143;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB00, &qword_252143CA8);
      sub_25214200C();

      v145 = MEMORY[0x253098E80](v207, MEMORY[0x277D839F8]);
      v147 = v146;

      v148 = sub_2520A5448(v145, v147, &aBlock);
      v126 = v193;

      *(v132 + 24) = v148;
      *(v132 + 32) = 2048;

      sub_25214200C();

      *(v132 + 34) = v207;
      *(v132 + 42) = 2048;
      a8 = 0x2796F5000;
      v105 = v194;

      v94 = v189;
      sub_25214200C();
      v190 = v141;
      v104 = &unk_27F4D3000;

      *(v132 + 44) = v207;
      v149 = v186;
      _os_log_impl(&dword_25207E000, v186, v187, "[%{public}s] NoiseInterruption %ld, drumOctBandSm %s , dBAStationaryNoiseHighPct %f, dBAInstantNoiseHighPct %f", v132, 0x34u);
      v150 = v188;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v150, -1, -1);
      MEMORY[0x253099FD0](v132, -1, -1);
    }

    else
    {

      v105 = v194;
    }
  }

  if (v126[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_timerStarted])
  {

    goto LABEL_94;
  }

  v126[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_timerStarted] = 1;
  if (v104[1170] != 1)
  {
    goto LABEL_91;
  }

  if (qword_27F4CD708 != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    v159 = sub_25214198C();
    __swift_project_value_buffer(v159, qword_27F4CDE68);
    v160 = sub_25214196C();
    v161 = sub_252141FBC();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = v94;
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *&aBlock = v164;
      *v163 = 136446210;
      v165 = sub_2521425DC();
      v167 = sub_2520A5448(v165, v166, &aBlock);

      *(v163 + 4) = v167;
      _os_log_impl(&dword_25207E000, v160, v161, "[%{public}s] Starting noise classification timer", v163, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v164);
      MEMORY[0x253099FD0](v164, -1, -1);
      v168 = v163;
      v94 = v162;
      MEMORY[0x253099FD0](v168, -1, -1);
    }

LABEL_91:
    sub_25209D56C();
    v169 = sub_252141FFC();
    sub_252141AAC();
    v171 = *&v126[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
    v170 = *&v126[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID + 8];
    v172 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
    swift_beginAccess();
    if (!*(*&v126[v172] + 16))
    {
      __break(1u);
      goto LABEL_99;
    }

    v189 = v169;

    sub_25213E648(v171, v170);
    if (v173)
    {
      break;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    swift_once();
  }

  swift_endAccess();

  v174 = v195;
  v175 = v202;
  sub_252141AEC();
  v196 = *(v196 + 8);
  (v196)(v175, v201);
  v176 = swift_allocObject();
  v177 = v193;
  *(v176 + 16) = v193;
  *(v176 + 24) = v105;
  v205 = sub_2520CC1E8;
  v206 = v176;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v204 = sub_2520A3B78;
  *(&v204 + 1) = &block_descriptor_443_0;
  v178 = _Block_copy(&aBlock);
  v179 = v177;

  v180 = v197;
  sub_252141A6C();
  *&aBlock = MEMORY[0x277D84F90];
  sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
  v181 = v199;
  v182 = v191;
  sub_25214218C();
  v183 = v189;
  MEMORY[0x253099170](v174, v180, v181, v178);
  _Block_release(v178);

  (*(v192 + 8))(v181, v182);
  v184 = v180;
  v105 = v194;
  (*(v198 + 8))(v184, v200);
  (v196)(v174, v201);
  v126 = v177;
  v51 = 0x2796F5000uLL;
  a8 = 0x2796F5000uLL;
LABEL_94:
  v86 = *&v126[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requestLock];
  [v86 *(v51 + 3640)];
  a4 = v190;
  sub_2520C6CD8(v126, v105);
  if (!a4)
  {
    [v86 *(a8 + 3648)];

    sub_2520CBCE8(&v209);
    return;
  }

LABEL_102:

  [v86 *(a8 + 3648)];
  __break(1u);
}

void sub_2520C3578(uint64_t a1)
{
  v7 = v1;
  swift_getObjectType();
  v9 = MEMORY[0x277D84F90];
  v10 = 16;
  v11 = sub_252099194(0, 16, 0, MEMORY[0x277D84F90]);
  v12 = *(v11 + 2);
  do
  {
    v13 = *(v11 + 3);
    if (v12 >= v13 >> 1)
    {
      v11 = sub_252099194((v13 > 1), v12 + 1, 1, v11);
    }

    *(v11 + 2) = v12 + 1;
    *&v11[8 * v12++ + 32] = 0;
    --v10;
  }

  while (v10);
  v14 = *a1;
  [*a1 lock];
  v371 = a1;
  v15 = *(a1 + 8);
  [v14 unlock];
  v16 = *(v15 + 16);
  if (v16)
  {
    *&v376 = v9;
    sub_2520A3448(0, v16, 0);
    v17 = (v15 + 32);
    v18 = *(v9 + 16);
    v3 = 10.0;
    do
    {
      v19 = log10(*v17);
      *&v376 = v9;
      v20 = *(v9 + 24);
      v21 = v18 + 1;
      if (v18 >= v20 >> 1)
      {
        v4 = v19;
        sub_2520A3448(v20 > 1, v18 + 1, 1);
        v19 = v4;
        v9 = v376;
      }

      *(v9 + 16) = v21;
      *(v9 + 8 * v18 + 32) = v19 * 10.0;
      ++v17;
      ++v18;
      --v16;
    }

    while (v16);
  }

  else
  {
    v21 = *(v9 + 16);
  }

  for (i = 0; i != 16; ++i)
  {
    v23 = vcvtd_n_f64_u64(i, 1uLL);
    v24 = floor(v23);
    if (v24 <= -9.22337204e18)
    {
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      v225 = MEMORY[0x277D84F90];
      goto LABEL_213;
    }

    if (v24 >= 9.22337204e18)
    {
      goto LABEL_327;
    }

    if (v24 == INFINITY)
    {
      goto LABEL_328;
    }

    v25 = ceil(v23);
    if (v25 == INFINITY)
    {
      goto LABEL_328;
    }

    if (v25 <= -9.22337204e18)
    {
      goto LABEL_329;
    }

    if (v25 >= 9.22337204e18)
    {
      goto LABEL_330;
    }

    v26 = v24;
    if (v25 >= 7)
    {
      v27 = 7;
    }

    else
    {
      v27 = v25;
    }

    if (v21 <= v26)
    {
      goto LABEL_331;
    }

    if (v25 < 0 || v27 >= v21)
    {
      goto LABEL_332;
    }

    if (i >= *(v11 + 2))
    {
      goto LABEL_333;
    }

    *&v11[8 * i + 32] = (*(v9 + 32 + 8 * v26) + *(v9 + 32 + 8 * v27)) * 0.5;
  }

  v28 = &v7[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
  v30 = *&v7[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
  v29 = *&v7[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID + 8];
  v31 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v32 = *&v7[v31];
  if (!*(v32 + 16) || (, v33 = sub_25213E648(v30, v29), v35 = v34, , (v35 & 1) == 0))
  {
    swift_endAccess();

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v73 = sub_25214198C();
    __swift_project_value_buffer(v73, qword_27F4CDE68);
    v74 = sub_25214196C();
    v75 = sub_252141FAC();
    if (!os_log_type_enabled(v74, v75))
    {
      goto LABEL_44;
    }

    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *&v376 = v77;
    *v76 = 136446210;
    v78 = sub_2521425DC();
    v80 = sub_2520A5448(v78, v79, &v376);

    *(v76 + 4) = v80;
    v81 = "[%{public}s] Tuning unknown, returning false";
    goto LABEL_43;
  }

  v36 = *(v32 + 56) + 232 * v33;
  v38 = *(v36 + 16);
  v37 = *(v36 + 32);
  v376 = *v36;
  v377 = v38;
  v378 = v37;
  v39 = *(v36 + 48);
  v40 = *(v36 + 64);
  v41 = *(v36 + 96);
  v381 = *(v36 + 80);
  v382 = v41;
  v379 = v39;
  v380 = v40;
  v42 = *(v36 + 112);
  v43 = *(v36 + 128);
  v44 = *(v36 + 160);
  v385 = *(v36 + 144);
  v386 = v44;
  v383 = v42;
  v384 = v43;
  v45 = *(v36 + 176);
  v46 = *(v36 + 192);
  v47 = *(v36 + 208);
  v390 = *(v36 + 224);
  v388 = v46;
  v389 = v47;
  v387 = v45;
  swift_endAccess();
  sub_2520A8DDC(&v376, v375);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v48 = sub_25214198C();
  __swift_project_value_buffer(v48, qword_27F4CDE68);
  sub_2520A8DDC(&v376, v375);
  v49 = v7;
  v50 = sub_25214196C();
  v51 = sub_252141FBC();
  v374 = v49;

  sub_2520CB568(&v376);
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v375[0] = v53;
    *v52 = 136446722;
    v54 = sub_2521425DC();
    v56 = sub_2520A5448(v54, v55, v375);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    v57 = *v28;
    v58 = v28[1];

    v59 = sub_2520A5448(v57, v58, v375);

    *(v52 + 14) = v59;
    *(v52 + 22) = 2080;
    v60 = sub_2520B052C();
    v62 = sub_2520A5448(v60, v61, v375);

    *(v52 + 24) = v62;
    _os_log_impl(&dword_25207E000, v50, v51, "[%{public}s] NoiseAnalysis tuning currently loading %s: %s", v52, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v53, -1, -1);
    MEMORY[0x253099FD0](v52, -1, -1);
  }

  v63 = MEMORY[0x277D84F90];
  v365 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_output;
  MEMORY[0x28223BE20](v64);
  v66 = v65;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB00, &qword_252143CA8);
  sub_25214200C();

  v67 = v375[0];
  v68 = *(v375[0] + 16);
  if (v68)
  {
    v375[0] = v63;
    sub_2520A3448(0, v68, 0);
    v63 = v375[0];
    v3 = *&v385;
    v69 = *(v375[0] + 16);
    v70 = 32;
    do
    {
      v71 = *(v67 + v70);
      v375[0] = v63;
      v72 = *(v63 + 24);
      if (v69 >= v72 >> 1)
      {
        sub_2520A3448(v72 > 1, v69 + 1, 1);
        v63 = v375[0];
      }

      *(v63 + 16) = v69 + 1;
      *(v63 + 8 * v69 + 32) = v3 * v71;
      v70 += 8;
      ++v69;
      --v68;
    }

    while (v68);
  }

  v82 = *(v11 + 2);
  v83 = MEMORY[0x277D84F90];
  if (v82)
  {
    v375[0] = MEMORY[0x277D84F90];

    sub_2520A3448(0, v82, 0);
    v83 = v375[0];
    v3 = 1.0 - *&v385;
    v84 = *(v375[0] + 16);
    v85 = 32;
    do
    {
      v86 = *&v11[v85];
      v375[0] = v83;
      v87 = *(v83 + 24);
      if (v84 >= v87 >> 1)
      {
        sub_2520A3448(v87 > 1, v84 + 1, 1);
        v83 = v375[0];
      }

      *(v83 + 16) = v84 + 1;
      *(v83 + 8 * v84 + 32) = v3 * v86;
      v85 += 8;
      ++v84;
      --v82;
    }

    while (v82);
  }

  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492)
  {

    v88 = sub_25214196C();
    v89 = sub_252141FBC();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v362 = swift_slowAlloc();
      v375[0] = v362;
      *v90 = 136446722;
      v91 = sub_2521425DC();
      v93 = sub_2520A5448(v91, v92, v375);

      *(v90 + 4) = v93;
      *(v90 + 12) = 2080;
      v94 = MEMORY[0x253098E80](v9, MEMORY[0x277D839F8]);
      v96 = v95;

      v97 = sub_2520A5448(v94, v96, v375);

      *(v90 + 14) = v97;
      *(v90 + 22) = 2080;

      v99 = MEMORY[0x253098E80](v98, MEMORY[0x277D839F8]);
      v101 = v100;

      v102 = sub_2520A5448(v99, v101, v375);

      *(v90 + 24) = v102;
      _os_log_impl(&dword_25207E000, v88, v89, "[%{public}s] NoiseAnalysis octBanddB %s, octBand16 %s", v90, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v362, -1, -1);
      MEMORY[0x253099FD0](v90, -1, -1);
    }

    else
    {
    }

    v103 = sub_25214196C();
    v104 = sub_252141FBC();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v375[0] = v106;
      *v105 = 136446722;
      v107 = sub_2521425DC();
      v109 = sub_2520A5448(v107, v108, v375);

      *(v105 + 4) = v109;
      *(v105 + 12) = 2080;
      v110 = MEMORY[0x253098E80](v63, MEMORY[0x277D839F8]);
      v112 = sub_2520A5448(v110, v111, v375);

      *(v105 + 14) = v112;
      *(v105 + 22) = 2080;
      v113 = MEMORY[0x253098E80](v83, MEMORY[0x277D839F8]);
      v115 = sub_2520A5448(v113, v114, v375);

      *(v105 + 24) = v115;
      _os_log_impl(&dword_25207E000, v103, v104, "[%{public}s] NoiseAnalysis tmp1 %s, tmp2 %s", v105, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v106, -1, -1);
      MEMORY[0x253099FD0](v105, -1, -1);
    }
  }

  else
  {
  }

  v116 = v374;
  v117 = *&v374[v365];
  v118 = 0;
  v119 = sub_2520ADD14(v63, v83);

  sub_2520AFAC4(v119);

  v120 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_buffer;

  sub_25214200C();

  v121 = *(v375[0] + 16);

  if (!v121)
  {
    sub_2520CB568(&v376);
    v74 = sub_25214196C();
    v75 = sub_252141FAC();
    if (!os_log_type_enabled(v74, v75))
    {
      goto LABEL_44;
    }

    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v375[0] = v77;
    *v76 = 136446210;
    v132 = sub_2521425DC();
    v134 = sub_2520A5448(v132, v133, v375);

    *(v76 + 4) = v134;
    v81 = "[%{public}s] Buffer is empty #1";
LABEL_43:
    _os_log_impl(&dword_25207E000, v74, v75, v81, v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x253099FD0](v77, -1, -1);
    MEMORY[0x253099FD0](v76, -1, -1);
LABEL_44:

    return;
  }

  v122 = *&v374[v120];
  v123 = *(v122 + 16);

  sub_25214200C();
  if (*(v375[0] + 16))
  {
    sub_2521388EC(0, 1, v124);
    sub_2520AE19C(v375[0]);

    v122 = *&v374[v120];

    sub_25214200C();
    v123 = v375[0];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_64;
    }
  }

  else
  {
    __break(1u);
  }

  v123 = sub_252099194(0, *(v123 + 2) + 1, 1, v123);
LABEL_64:
  v126 = *(v123 + 2);
  v125 = *(v123 + 3);
  v2 = v126 + 1;
  if (v126 >= v125 >> 1)
  {
    v123 = sub_252099194((v125 > 1), v126 + 1, 1, v123);
  }

  v127 = *(v371 + 16);
  *(v123 + 2) = v2;
  *&v123[8 * v126 + 32] = v127;
  v128 = v123;
  v129 = v122;
  sub_2520AE19C(v128);

  v130 = *(v371 + 48);
  v364 = v120;
  v354 = v130;
  if (!v130)
  {
    v5 = 0.0;
    goto LABEL_173;
  }

  v131 = v367;
  if (v130 == -1)
  {
    v3 = *&v379;
  }

  else
  {
    v3 = 0.0;
    if (v130 == 1)
    {
      v3 = *(&v378 + 1);
    }
  }

  v4 = *(v371 + 40);
  v135 = round(v4 / 100.0);
  if ((*&v135 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_338;
  }

  if (v135 <= -9.22337204e18)
  {
LABEL_338:
    __break(1u);
    goto LABEL_339;
  }

  if (v135 >= 9.22337204e18)
  {
LABEL_339:
    __break(1u);
    goto LABEL_340;
  }

  if (__OFSUB__(v135, 1))
  {
LABEL_340:
    __break(1u);
LABEL_341:
    __break(1u);
    goto LABEL_342;
  }

  v136 = *(v377 + 16);
  if (v136 - 1 >= ((v135 - 1) & ~((v135 - 1) >> 63)))
  {
    v137 = (v135 - 1) & ~((v135 - 1) >> 63);
  }

  else
  {
    v137 = v136 - 1;
  }

  if (!v136)
  {
    goto LABEL_341;
  }

  v5 = *(v371 + 24);
  v351 = v377 + 32;
  v352 = v377;
  v138 = *(v377 + 32 + 8 * v137);
  v129 = *(*&v374[v120] + 16);

  sub_25214200C();

  if ((v378 & 0x8000000000000000) != 0)
  {
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
    goto LABEL_344;
  }

  v350 = v137;
  v139 = v5 + v138;
  v140 = v375[0];
  if (*(v375[0] + 16) >= v378)
  {
    v141 = v378;
  }

  else
  {
    v141 = *(v375[0] + 16);
  }

  v353 = v378;
  if (v378 && v141)
  {
    v375[0] = MEMORY[0x277D84F90];
    sub_2520A3448(0, v141, 0);
    v142 = 32;
    v129 = v375[0];
    do
    {
      v143 = *(v140 + v142);
      v375[0] = v129;
      v2 = *(v129 + 16);
      v144 = *(v129 + 24);
      if (v2 >= v144 >> 1)
      {
        sub_2520A3448(v144 > 1, v2 + 1, 1);
        v129 = v375[0];
      }

      *(v129 + 16) = v2 + 1;
      *(v129 + 8 * v2 + 32) = v139 - v143;
      v142 += 8;
      --v141;
    }

    while (v141);
    swift_unknownObjectRelease();
    v120 = v364;
  }

  else
  {
    swift_unknownObjectRelease();
    v129 = MEMORY[0x277D84F90];
  }

  v145 = *(v129 + 16);
  v146 = MEMORY[0x277D84F90];
  v362 = v129;
  if (!v145)
  {
    v152 = *(MEMORY[0x277D84F90] + 16);
    if (v152)
    {
      v147 = MEMORY[0x277D84F90];
      goto LABEL_102;
    }

    v116 = MEMORY[0x277D84F90];

    v156 = *(v116 + 16);
    if (!v156)
    {
      goto LABEL_116;
    }

LABEL_107:
    if (v156 > 3)
    {
      v157 = v156 & 0x7FFFFFFFFFFFFFFCLL;
      v158 = (v116 + 48);
      v3 = 0.0;
      v159 = v156 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v3 = v3 + *(v158 - 2) + *(v158 - 1) + *v158 + v158[1];
        v158 += 4;
        v159 -= 4;
      }

      while (v159);
      if (v156 == v157)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v157 = 0;
      v3 = 0.0;
    }

    v160 = v156 - v157;
    v161 = (v116 + 8 * v157 + 32);
    do
    {
      v162 = *v161++;
      v3 = v3 + v162;
      --v160;
    }

    while (v160);
    goto LABEL_117;
  }

  v375[0] = MEMORY[0x277D84F90];
  sub_25209B234(0, v145, 0);
  v147 = v375[0];
  v148 = (v129 + 32);
  v149 = *(v375[0] + 16);
  do
  {
    v150 = *v148;
    v375[0] = v147;
    v151 = *(v147 + 24);
    v152 = v149 + 1;
    if (v149 >= v151 >> 1)
    {
      sub_25209B234((v151 > 1), v149 + 1, 1);
      v147 = v375[0];
    }

    *(v147 + 16) = v152;
    *(v147 + v149 + 32) = v150 < v3;
    ++v148;
    ++v149;
    --v145;
  }

  while (v145);
  v146 = MEMORY[0x277D84F90];
LABEL_102:
  v375[0] = v146;
  sub_2520A3448(0, v152, 0);
  v116 = v375[0];
  v145 = *(v375[0] + 16);
  v153 = 32;
  do
  {
    v154 = *(v147 + v153);
    v375[0] = v116;
    v155 = *(v116 + 24);
    v2 = v145 + 1;
    if (v145 >= v155 >> 1)
    {
      sub_2520A3448(v155 > 1, v145 + 1, 1);
      v116 = v375[0];
    }

    *(v116 + 16) = v2;
    *(v116 + 8 * v145 + 32) = v154;
    ++v153;
    ++v145;
    --v152;
  }

  while (v152);

  v120 = v364;
  v131 = v367;
  v118 = 0;
  v156 = *(v116 + 16);
  if (v156)
  {
    goto LABEL_107;
  }

LABEL_116:
  v3 = 0.0;
LABEL_117:
  if ((byte_27F4D3492 & 1) == 0)
  {

    v174 = *(v116 + 16);
    if (!v174)
    {
      goto LABEL_185;
    }

    goto LABEL_123;
  }

  sub_2520A8DDC(&v376, v375);
  sub_2520CBE7C(v371, v375);

  v145 = v129;
  v129 = sub_25214196C();
  v2 = sub_252141FBC();
  sub_2520CBCE8(v371);
  sub_2520CB568(&v376);

  if (!os_log_type_enabled(v129, v2))
  {

    v174 = *(v116 + 16);
    if (!v174)
    {
      goto LABEL_185;
    }

    goto LABEL_123;
  }

  v349 = v2;
  v163 = swift_slowAlloc();
  v348 = swift_slowAlloc();
  v375[0] = v348;
  *v163 = 136448002;
  v164 = sub_2521425DC();
  v166 = sub_2520A5448(v164, v165, v375);

  *(v163 + 4) = v166;
  *(v163 + 12) = 2048;
  *(v163 + 14) = v5;
  *(v163 + 22) = 2048;
  *(v163 + 24) = v139;
  *(v163 + 32) = 2048;
  *(v163 + 34) = v4;
  *(v163 + 42) = 2048;
  *(v163 + 44) = v350;
  *(v163 + 52) = 2048;
  if (v350 >= *(v352 + 16))
  {
    goto LABEL_420;
  }

  *(v163 + 54) = *(v351 + 8 * v350);
  *(v163 + 62) = 2080;
  v167 = MEMORY[0x277D839F8];
  v168 = MEMORY[0x253098E80](v362, MEMORY[0x277D839F8]);
  v2 = v169;

  v170 = sub_2520A5448(v168, v2, v375);

  *(v163 + 64) = v170;
  *(v163 + 72) = 2080;
  v171 = MEMORY[0x253098E80](v116, v167);
  v145 = v172;
  v173 = sub_2520A5448(v171, v172, v375);

  *(v163 + 74) = v173;
  _os_log_impl(&dword_25207E000, v129, v349, "[%{public}s] AuditoryBand toneLevel in dBFS %f, toneLevelCorr %f, toneFreq %f, auditoryBandSnrLevelCorrection[%ld] %f, SNR %s, SnrFlags %s", v163, 0x52u);
  swift_arrayDestroy();
  MEMORY[0x253099FD0](v348, -1, -1);
  MEMORY[0x253099FD0](v163, -1, -1);

  v120 = v364;
  v131 = v367;
  v118 = 0;
  v174 = *(v116 + 16);
  if (!v174)
  {
LABEL_185:
    __break(1u);
LABEL_186:
    v206 = *&v388;
    v145 = v367;
    goto LABEL_187;
  }

LABEL_123:
  v175 = *(v116 + 32);
  if ((*&v175 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_343;
  }

  if (v175 <= -9.22337204e18)
  {
LABEL_344:
    __break(1u);
    goto LABEL_345;
  }

  if (v175 >= 9.22337204e18)
  {
LABEL_345:
    __break(1u);
    goto LABEL_346;
  }

  v129 = &v374[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics];
  v176 = *&v374[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 32];
  v177 = __OFADD__(v176, v175);
  v178 = (v176 + v175);
  if (v177)
  {
LABEL_346:
    __break(1u);
    goto LABEL_347;
  }

  *(v129 + 32) = v178;
  if (v174 == 1)
  {
LABEL_347:
    __break(1u);
    goto LABEL_348;
  }

  v179 = *(v116 + 40);
  if ((*&v179 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_348:
    __break(1u);
    goto LABEL_349;
  }

  if (v179 <= -9.22337204e18)
  {
LABEL_349:
    __break(1u);
    goto LABEL_350;
  }

  if (v179 >= 9.22337204e18)
  {
LABEL_350:
    __break(1u);
    goto LABEL_351;
  }

  v180 = *(v129 + 40);
  v177 = __OFADD__(v180, v179);
  v181 = (v180 + v179);
  if (v177)
  {
LABEL_351:
    __break(1u);
    goto LABEL_352;
  }

  *(v129 + 40) = v181;
  if (v174 < 3)
  {
LABEL_352:
    __break(1u);
    goto LABEL_353;
  }

  v182 = *(v116 + 48);
  if ((*&v182 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_353:
    __break(1u);
    goto LABEL_354;
  }

  if (v182 <= -9.22337204e18)
  {
LABEL_354:
    __break(1u);
    goto LABEL_355;
  }

  if (v182 >= 9.22337204e18)
  {
LABEL_355:
    __break(1u);
    goto LABEL_356;
  }

  v183 = *(v129 + 48);
  v177 = __OFADD__(v183, v182);
  v184 = (v183 + v182);
  if (v177)
  {
LABEL_356:
    __break(1u);
    goto LABEL_357;
  }

  *(v129 + 48) = v184;
  if (v174 == 3)
  {
LABEL_357:
    __break(1u);
    goto LABEL_358;
  }

  v185 = *(v116 + 56);
  if ((*&v185 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_358:
    __break(1u);
    goto LABEL_359;
  }

  if (v185 <= -9.22337204e18)
  {
LABEL_359:
    __break(1u);
    goto LABEL_360;
  }

  if (v185 >= 9.22337204e18)
  {
LABEL_360:
    __break(1u);
    goto LABEL_361;
  }

  v186 = *(v129 + 56);
  v177 = __OFADD__(v186, v185);
  v187 = (v186 + v185);
  if (v177)
  {
LABEL_361:
    __break(1u);
    goto LABEL_362;
  }

  *(v129 + 56) = v187;
  if (v174 < 5)
  {
LABEL_362:
    __break(1u);
    goto LABEL_363;
  }

  v188 = *(v116 + 64);
  if ((*&v188 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_363:
    __break(1u);
    goto LABEL_364;
  }

  if (v188 <= -9.22337204e18)
  {
LABEL_364:
    __break(1u);
    goto LABEL_365;
  }

  if (v188 >= 9.22337204e18)
  {
LABEL_365:
    __break(1u);
    goto LABEL_366;
  }

  v189 = *(v129 + 64);
  v177 = __OFADD__(v189, v188);
  v190 = (v189 + v188);
  if (v177)
  {
LABEL_366:
    __break(1u);
    goto LABEL_367;
  }

  *(v129 + 64) = v190;
  if (v174 == 5)
  {
LABEL_367:
    __break(1u);
    goto LABEL_368;
  }

  v191 = *(v116 + 72);
  if ((*&v191 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_368:
    __break(1u);
    goto LABEL_369;
  }

  if (v191 <= -9.22337204e18)
  {
LABEL_369:
    __break(1u);
    goto LABEL_370;
  }

  if (v191 >= 9.22337204e18)
  {
LABEL_370:
    __break(1u);
    goto LABEL_371;
  }

  v192 = *(v129 + 72);
  v177 = __OFADD__(v192, v191);
  v193 = (v192 + v191);
  if (v177)
  {
    goto LABEL_372;
  }

  *(v129 + 72) = v193;
  if (v174 < 7)
  {
    __break(1u);
LABEL_375:
    __break(1u);
    goto LABEL_376;
  }

  v194 = *(v116 + 80);
  if ((*&v194 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_376:
    __break(1u);
    goto LABEL_377;
  }

  if (v194 <= -9.22337204e18)
  {
LABEL_377:
    __break(1u);
    goto LABEL_378;
  }

  if (v194 >= 9.22337204e18)
  {
LABEL_378:
    __break(1u);
    goto LABEL_379;
  }

  v195 = *(v129 + 80);
  v177 = __OFADD__(v195, v194);
  v196 = (v195 + v194);
  if (v177)
  {
    goto LABEL_380;
  }

  *(v129 + 80) = v196;
  if (v174 == 7)
  {
    goto LABEL_381;
  }

  v197 = *(v116 + 88);
  if ((*&v197 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_382;
  }

  if (v197 <= -9.22337204e18)
  {
    goto LABEL_383;
  }

  if (v197 >= 9.22337204e18)
  {
    goto LABEL_384;
  }

  v198 = *(v129 + 88);
  v177 = __OFADD__(v198, v197);
  v199 = (v198 + v197);
  if (v177)
  {
    goto LABEL_385;
  }

  *(v129 + 88) = v199;
  if (v174 < 9)
  {
    goto LABEL_386;
  }

  v200 = *(v116 + 96);
  if ((*&v200 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_388;
  }

  if (v200 <= -9.22337204e18)
  {
    goto LABEL_389;
  }

  if (v200 >= 9.22337204e18)
  {
    goto LABEL_390;
  }

  v201 = *(v129 + 96);
  v177 = __OFADD__(v201, v200);
  v202 = (v201 + v200);
  if (v177)
  {
    goto LABEL_391;
  }

  *(v129 + 96) = v202;
  if (v174 == 9)
  {
    goto LABEL_392;
  }

  v145 = *(v129 + 104);
  v4 = *(v116 + 104);

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_393;
  }

  v116 = v374;
  if (v4 <= -9.22337204e18)
  {
    goto LABEL_394;
  }

  if (v4 >= 9.22337204e18)
  {
    goto LABEL_395;
  }

  if (__OFADD__(v145, v4))
  {
    goto LABEL_396;
  }

  v5 = v3 / v353;
  *(v129 + 104) = v145 + v4;
LABEL_173:

  sub_25214200C();

  v203 = *(v375[0] + 16);

  if (!v203)
  {
    sub_2520CB568(&v376);
    v74 = sub_25214196C();
    v75 = sub_252141FAC();
    if (!os_log_type_enabled(v74, v75))
    {
      goto LABEL_44;
    }

    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v375[0] = v77;
    *v76 = 136446210;
    v207 = sub_2521425DC();
    v209 = sub_2520A5448(v207, v208, v375);

    *(v76 + 4) = v209;
    v81 = "[%{public}s] Buffer is empty #2";
    goto LABEL_43;
  }

  v129 = *(*(v116 + v120) + 16);

  sub_25214200C();
  if (*(v375[0] + 16))
  {
    sub_2521388EC(0, 1, v204);
    sub_2520AF6B8(v375[0]);

    sub_25214200C();
    v129 = v375[0];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_176;
    }

    goto LABEL_373;
  }

LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  v129 = sub_252099194(0, *(v129 + 16) + 1, 1, v129);
LABEL_176:
  v131 = *(v129 + 16);
  v205 = *(v129 + 24);
  if (v131 >= v205 >> 1)
  {
    v129 = sub_252099194((v205 > 1), v131 + 1, 1, v129);
  }

  v4 = *(v371 + 56);
  *(v129 + 16) = v131 + 1;
  *(v129 + 8 * v131 + 32) = v4;
  sub_2520AF6B8(v129);

  if (!v354)
  {
    goto LABEL_238;
  }

  if (v354 == -1)
  {
    goto LABEL_186;
  }

  v206 = 0.0;
  v145 = v367;
  if (v354 == 1)
  {
    v206 = *(&v387 + 1);
  }

LABEL_187:
  v3 = *(v371 + 32);
  v210 = v390;
  v129 = *(*(v116 + v120) + 16);

  sub_25214200C();

  if ((v387 & 0x8000000000000000) != 0)
  {
    goto LABEL_397;
  }

  v356 = 0;
  v6 = v3 * v210;
  v211 = v375[0];
  if (*(v375[0] + 16) >= v387)
  {
    v212 = v387;
  }

  else
  {
    v212 = *(v375[0] + 16);
  }

  v366 = v387;
  if (v387 && v212)
  {
    v375[0] = MEMORY[0x277D84F90];
    sub_2520A3448(0, v212, 0);
    v213 = 32;
    v214 = v375[0];
    do
    {
      v215 = *(v211 + v213);
      v375[0] = v214;
      v2 = *(v214 + 16);
      v216 = *(v214 + 24);
      if (v2 >= v216 >> 1)
      {
        sub_2520A3448(v216 > 1, v2 + 1, 1);
        v214 = v375[0];
      }

      *(v214 + 16) = v2 + 1;
      *(v214 + 8 * v2 + 32) = v6 - v215;
      v213 += 8;
      --v212;
    }

    while (v212);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v214 = MEMORY[0x277D84F90];
  }

  v217 = *(v214 + 16);
  v218 = MEMORY[0x277D84F90];
  v362 = v214;
  if (!v217)
  {
    v223 = *(MEMORY[0x277D84F90] + 16);
    if (v223)
    {
      v2 = MEMORY[0x277D84F90];
      goto LABEL_207;
    }

    goto LABEL_334;
  }

  v375[0] = MEMORY[0x277D84F90];
  sub_25209B234(0, v217, 0);
  v2 = v375[0];
  v219 = (v214 + 32);
  v220 = *(v375[0] + 16);
  do
  {
    v221 = *v219;
    v375[0] = v2;
    v222 = *(v2 + 24);
    v223 = v220 + 1;
    if (v220 >= v222 >> 1)
    {
      sub_25209B234((v222 > 1), v220 + 1, 1);
      v2 = v375[0];
    }

    *(v2 + 16) = v223;
    *(v2 + v220 + 32) = v221 < v206;
    ++v219;
    ++v220;
    --v217;
  }

  while (v217);
  v218 = MEMORY[0x277D84F90];
LABEL_207:
  v375[0] = v218;
  sub_2520DD944(v223);
  v224 = 32;
  v225 = v375[0];
  do
  {
    v226 = *(v2 + v224);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2520A3448(0, *(v225 + 16) + 1, 1);
      v225 = v375[0];
    }

    v228 = *(v225 + 16);
    v227 = *(v225 + 24);
    if (v228 >= v227 >> 1)
    {
      sub_2520A3448(v227 > 1, v228 + 1, 1);
      v225 = v375[0];
    }

    *(v225 + 16) = v228 + 1;
    *(v225 + 8 * v228 + 32) = v226;
    ++v224;
    --v223;
  }

  while (v223);
LABEL_213:

  v229 = *(v225 + 16);
  v116 = v374;
  if (v229)
  {
    if (v229 <= 3)
    {
      v230 = 0;
      v231 = 0.0;
      goto LABEL_220;
    }

    v230 = v229 & 0x7FFFFFFFFFFFFFFCLL;
    v232 = (v225 + 48);
    v231 = 0.0;
    v233 = v229 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v231 = v231 + *(v232 - 2) + *(v232 - 1) + *v232 + v232[1];
      v232 += 4;
      v233 -= 4;
    }

    while (v233);
    if (v229 != v230)
    {
LABEL_220:
      v234 = v229 - v230;
      v235 = (v225 + 8 * v230 + 32);
      do
      {
        v236 = *v235++;
        v231 = v231 + v236;
        --v234;
      }

      while (v234);
    }
  }

  else
  {
    v231 = 0.0;
  }

  v237 = v231 / v366;
  if (*(&v379 + 1) < v5)
  {
    v238 = *&v374[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 16];
    v177 = __OFADD__(v238, 1);
    v239 = v238 + 1;
    if (v177)
    {
LABEL_418:
      __break(1u);
    }

    else
    {
      *&v374[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 16] = v239;
      if (*(&v388 + 1) >= v237)
      {
LABEL_229:
        v242 = 1;
        goto LABEL_231;
      }

LABEL_227:
      v240 = *&v374[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 24];
      v177 = __OFADD__(v240, 1);
      v241 = v240 + 1;
      if (!v177)
      {
        *&v374[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 24] = v241;
        goto LABEL_229;
      }
    }

    __break(1u);
LABEL_420:
    __break(1u);
    return;
  }

  if (*(&v388 + 1) < v237)
  {
    goto LABEL_227;
  }

  v242 = 0;
LABEL_231:
  v243 = *&v374[v365];
  sub_2520AFCA4(v242);

  MEMORY[0x28223BE20](v244);
  v246 = v245;
  v118 = v356;
  sub_25214200C();

  if (byte_27F4D3492 == 1)
  {
    v247 = v375[0];

    v2 = v362;

    v248 = sub_25214196C();
    v249 = sub_252141FBC();

    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      v368 = swift_slowAlloc();
      v375[0] = v368;
      *v250 = 136447490;
      v251 = sub_2521425DC();
      v357 = v249;
      v253 = sub_2520A5448(v251, v252, v375);

      *(v250 + 4) = v253;
      *(v250 + 12) = 2048;
      *(v250 + 14) = v247;
      *(v250 + 22) = 2080;
      v254 = MEMORY[0x253098E80](v225, MEMORY[0x277D839F8]);
      v256 = v255;

      v257 = sub_2520A5448(v254, v256, v375);

      *(v250 + 24) = v257;
      *(v250 + 32) = 2048;
      *(v250 + 34) = v3;
      *(v250 + 42) = 2048;
      *(v250 + 44) = v6;
      *(v250 + 52) = 2080;
      v258 = MEMORY[0x253098E80](v362, MEMORY[0x277D839F8]);
      v260 = v259;

      v261 = sub_2520A5448(v258, v260, v375);

      *(v250 + 54) = v261;
      _os_log_impl(&dword_25207E000, v248, v357, "[%{public}s] toneInterferenceFlag %ld, dBAInstantSnrFlags %s. InstSPL toneLevelCorr in dBHL %f, weightedToneLevelCorr %f, dBAInstantSnr %s", v250, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v368, -1, -1);
      v262 = v250;
      v116 = v374;
      MEMORY[0x253099FD0](v262, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  v120 = v364;
LABEL_238:
  v5 = *(v371 + 64);
  v263 = *&v380;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDE40, &unk_2521444F0);
  sub_25214200C();
  v131 = v375[0];
  v145 = *(v116 + v120);
  v129 = *(v145 + 16);

  sub_25214200C();

  v367 = v381;
  if ((v381 & 0x8000000000000000) != 0)
  {
    goto LABEL_375;
  }

  v2 = v375[0];
  v145 = *(v116 + v120);

  sub_25214200C();

  v3 = *v375;
  v129 = v263 < v5;
  if (v2 >= *(v131 + 16))
  {
    v264 = sub_25214196C();
    v265 = sub_252141FAC();
    if (os_log_type_enabled(v264, v265))
    {
      v358 = swift_slowAlloc();
      v363 = swift_slowAlloc();
      v375[0] = v363;
      *v358 = 136446210;
      v266 = sub_2521425DC();
      v268 = v118;
      v269 = sub_2520A5448(v266, v267, v375);
      v120 = v364;

      *(v358 + 4) = v269;
      v118 = v268;
      _os_log_impl(&dword_25207E000, v264, v265, "[%{public}s] Flags count index out of range", v358, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v363);
      MEMORY[0x253099FD0](v363, -1, -1);
      MEMORY[0x253099FD0](v358, -1, -1);
    }

    v116 = v374;
    goto LABEL_252;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_398;
  }

  v145 = v118;
  v118 = *(v131 + 8 * v2 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_399;
  }

  while (2)
  {
    if (v2 >= *(v131 + 16))
    {
      __break(1u);
      goto LABEL_401;
    }

    *(v131 + 8 * v2 + 32) = v129;
    if (!v367)
    {
LABEL_401:
      __break(1u);
      goto LABEL_402;
    }

    if (__OFSUB__(v129, v118))
    {
      goto LABEL_403;
    }

    if (v367 - 1 > v2)
    {
      ++v2;
    }

    else
    {
      v2 = 0;
    }

    v3 = v3 + (v129 - v118) / v367;
    v118 = v145;
LABEL_252:
    sub_2520AE67C(v3);
    sub_2520AE360(v131);
    sub_2520AE524(v2);

    v270 = *&v383;

    sub_25214200C();
    v131 = v375[0];
    v145 = *(v116 + v120);
    v129 = *(v145 + 16);

    sub_25214200C();

    v362 = *(&v382 + 1);
    if ((*(&v382 + 1) & 0x8000000000000000) != 0)
    {
LABEL_379:
      __break(1u);
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
      goto LABEL_387;
    }

    v2 = v375[0];
    v145 = *(v116 + v120);

    sub_25214200C();

    v3 = *v375;
    v129 = v270 < v4;
    if (v2 >= *(v131 + 16))
    {
      v271 = sub_25214196C();
      v272 = sub_252141FAC();
      if (os_log_type_enabled(v271, v272))
      {
        v355 = swift_slowAlloc();
        v359 = swift_slowAlloc();
        v375[0] = v359;
        *v355 = 136446210;
        v273 = sub_2521425DC();
        v275 = v118;
        v276 = sub_2520A5448(v273, v274, v375);
        v120 = v364;

        *(v355 + 4) = v276;
        v118 = v275;
        _os_log_impl(&dword_25207E000, v271, v272, "[%{public}s] Flags count index out of range", v355, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v359);
        MEMORY[0x253099FD0](v359, -1, -1);
        MEMORY[0x253099FD0](v355, -1, -1);
      }

      v116 = v374;
LABEL_266:
      sub_2520AEF7C(v3);
      sub_2520AEC60(v131);
      sub_2520AEE24(v2);

      v277 = *(&v380 + 1);

      sub_25214200C();
      v131 = v375[0];

      sub_25214200C();

      v2 = v375[0];
      v145 = *(v116 + v120);

      sub_25214200C();

      v3 = *v375;
      v129 = v277 < v5;
      if (v2 >= *(v131 + 16))
      {
        v278 = sub_25214196C();
        v279 = sub_252141FAC();
        if (os_log_type_enabled(v278, v279))
        {
          v360 = swift_slowAlloc();
          v369 = swift_slowAlloc();
          v375[0] = v369;
          *v360 = 136446210;
          v280 = sub_2521425DC();
          v282 = v118;
          v283 = sub_2520A5448(v280, v281, v375);
          v120 = v364;

          *(v360 + 4) = v283;
          v118 = v282;
          _os_log_impl(&dword_25207E000, v278, v279, "[%{public}s] Flags count index out of range", v360, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v369);
          MEMORY[0x253099FD0](v369, -1, -1);
          MEMORY[0x253099FD0](v360, -1, -1);
        }

        v116 = v374;
        goto LABEL_279;
      }

      if ((v2 & 0x8000000000000000) == 0)
      {
        v145 = v118;
        v118 = *(v131 + 8 * v2 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_408;
        }

        goto LABEL_269;
      }

LABEL_406:
      __break(1u);
      goto LABEL_407;
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
      v145 = v118;
      v118 = *(v131 + 8 * v2 + 32);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_256;
      }

      goto LABEL_404;
    }

LABEL_402:
    __break(1u);
LABEL_403:
    __break(1u);
LABEL_404:
    v131 = sub_2520A59C8(v131);
LABEL_256:
    if (v2 >= *(v131 + 16))
    {
      __break(1u);
      goto LABEL_406;
    }

    *(v131 + 8 * v2 + 32) = v129;
    if (v362)
    {
      if (!__OFSUB__(v129, v118))
      {
        if (v362 - 1 > v2)
        {
          ++v2;
        }

        else
        {
          v2 = 0;
        }

        v3 = v3 + (v129 - v118) / v362;
        v118 = v145;
        goto LABEL_266;
      }

LABEL_410:
      __break(1u);
LABEL_411:
      __break(1u);
LABEL_412:
      __break(1u);
LABEL_413:
      v131 = sub_2520A59C8(v131);
LABEL_282:
      if (v2 >= *(v131 + 16))
      {
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
        goto LABEL_418;
      }

      *(v131 + 8 * v2 + 32) = v129;
      if (!v362)
      {
        goto LABEL_416;
      }

      if (__OFSUB__(v129, v118))
      {
        goto LABEL_417;
      }

      if (v362 - 1 > v2)
      {
        ++v2;
      }

      else
      {
        v2 = 0;
      }

      v3 = v3 + (v129 - v118) / v362;
      v118 = v145;
      goto LABEL_292;
    }

LABEL_407:
    __break(1u);
LABEL_408:
    v131 = sub_2520A59C8(v131);
LABEL_269:
    if (v2 >= *(v131 + 16))
    {
      __break(1u);
      goto LABEL_410;
    }

    *(v131 + 8 * v2 + 32) = v129;
    if (!v367)
    {
      goto LABEL_412;
    }

    if (__OFSUB__(v129, v118))
    {
      goto LABEL_415;
    }

    if (v367 - 1 > v2)
    {
      ++v2;
    }

    else
    {
      v2 = 0;
    }

    v3 = v3 + (v129 - v118) / v367;
    v118 = v145;
LABEL_279:
    sub_2520AEAFC(v3);
    sub_2520AE7E0(v131);
    sub_2520AE9A4(v2);

    v284 = *(&v383 + 1);

    sub_25214200C();
    v131 = v375[0];

    sub_25214200C();

    v2 = v375[0];
    v145 = *(v116 + v120);

    sub_25214200C();

    v3 = *v375;
    v129 = v284 < v4;
    if (v2 < *(v131 + 16))
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        goto LABEL_411;
      }

      v145 = v118;
      v118 = *(v131 + 8 * v2 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_413;
      }

      goto LABEL_282;
    }

    v285 = sub_25214196C();
    v286 = sub_252141FAC();
    if (os_log_type_enabled(v285, v286))
    {
      v362 = swift_slowAlloc();
      v370 = swift_slowAlloc();
      v375[0] = v370;
      *v362 = 136446210;
      v287 = sub_2521425DC();
      v289 = v118;
      v290 = sub_2520A5448(v287, v288, v375);

      *(v362 + 4) = v290;
      v118 = v289;
      _os_log_impl(&dword_25207E000, v285, v286, "[%{public}s] Flags count index out of range", v362, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v370);
      MEMORY[0x253099FD0](v370, -1, -1);
      MEMORY[0x253099FD0](v362, -1, -1);
    }

LABEL_292:
    sub_2520AF3FC(v3);
    sub_2520AF0E0(v131);
    sub_2520AF2A4(v2);

    sub_25214200C();

    v291 = v375[0];

    sub_25214200C();

    v292 = v375[0];

    sub_25214200C();

    v293 = v375[0];

    sub_25214200C();

    v367 = v375[0];

    sub_25214200C();

    v294 = v375[0];

    sub_25214200C();

    v295 = v375[0];

    v116 = v374;
    sub_25214200C();

    v296 = v375[0];

    sub_25214200C();

    v297 = v375[0];
    if (byte_27F4D3492)
    {

      v298 = sub_25214196C();
      v299 = sub_252141FBC();

      if (os_log_type_enabled(v298, v299))
      {
        v300 = swift_slowAlloc();
        v372 = swift_slowAlloc();
        v375[0] = v372;
        *v300 = 136448258;
        v301 = sub_2521425DC();
        LODWORD(v362) = v299;
        v303 = sub_2520A5448(v301, v302, v375);

        *(v300 + 4) = v303;
        *(v300 + 12) = 2048;
        *(v300 + 14) = v291;
        *(v300 + 22) = 2080;
        v304 = MEMORY[0x277D83B88];
        v361 = v118;
        v305 = MEMORY[0x253098E80](v292, MEMORY[0x277D83B88]);
        v307 = v306;

        v308 = sub_2520A5448(v305, v307, v375);

        *(v300 + 24) = v308;
        *(v300 + 32) = 2048;
        *(v300 + 34) = v293;
        *(v300 + 42) = 2080;
        v309 = MEMORY[0x253098E80](v367, v304);
        v311 = v310;

        v312 = sub_2520A5448(v309, v311, v375);

        *(v300 + 44) = v312;
        *(v300 + 52) = 2048;
        *(v300 + 54) = v294;
        *(v300 + 62) = 2080;
        v313 = MEMORY[0x253098E80](v295, v304);
        v315 = v314;

        v316 = sub_2520A5448(v313, v315, v375);

        *(v300 + 64) = v316;
        *(v300 + 72) = 2048;
        *(v300 + 74) = v296;
        *(v300 + 82) = 2080;
        v118 = v361;
        v317 = MEMORY[0x253098E80](v297, v304);
        v319 = v318;

        v320 = sub_2520A5448(v317, v319, v375);

        *(v300 + 84) = v320;
        _os_log_impl(&dword_25207E000, v298, v362, "[%{public}s] dBAStationaryNoiseHighPct %f, dBAStationaryFlags %s, dBAInstantNoiseHighPct %f, dBAInstantFlags %s, dBAStationaryNoiseHighPct2 %f, dBAStationaryFlags2 %s, dBAInstantNoiseHighPct2 %f, dBAInstantFlags2 %s", v300, 0x5Cu);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v372, -1, -1);
        v321 = v300;
        v116 = v374;
        MEMORY[0x253099FD0](v321, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    MEMORY[0x28223BE20](v322);
    v324 = v323;
    sub_25214200C();

    if (v375[0] == 1)
    {
      v3 = *(&v381 + 1);
      v4 = *&v384;
      goto LABEL_302;
    }

    MEMORY[0x28223BE20](v325);
    v327 = v326;
    sub_25214200C();

    if (v375[0] == 3)
    {
      v3 = *&v382;
      v4 = *(&v384 + 1);
LABEL_302:
      v5 = v4;
      v328 = v3;
    }

    else
    {
      v328 = *(&v381 + 1);
      v3 = *&v382;
      v4 = *(&v384 + 1);
      v5 = *&v384;
    }

    v120 = v364;

    sub_25214200C();

    v329 = *v375;
    v373 = v328 < *v375;

    sub_25214200C();

    v330 = *v375;
    v131 = v5 < *v375;

    sub_25214200C();

    v331 = *v375;
    v2 = v3 < *v375;

    sub_25214200C();

    v332 = *v375;
    v333 = v4 < *v375;
    *(v116 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1A) = v373;
    *(v116 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1B) = v131;
    *(v116 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2A) = v2;
    *(v116 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2B) = v333;
    if (byte_27F4D3492 == 1)
    {
      v334 = sub_25214196C();
      v335 = sub_252141FBC();
      if (os_log_type_enabled(v334, v335))
      {
        LODWORD(v367) = v5 < v330;
        v336 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v375[0] = v131;
        *v336 = 136447234;
        v337 = sub_2521425DC();
        v120 = v338;
        v2 = sub_2520A5448(v337, v338, v375);

        *(v336 + 4) = v2;
        *(v336 + 12) = 1024;
        *(v336 + 14) = v328 < v329;
        v116 = v374;
        *(v336 + 18) = 1024;
        *(v336 + 20) = v367;
        *(v336 + 24) = 1024;
        *(v336 + 26) = v3 < v331;
        *(v336 + 30) = 1024;
        *(v336 + 32) = v4 < v332;
        _os_log_impl(&dword_25207E000, v334, v335, "[%{public}s] check 1A %{BOOL}d, 1B %{BOOL}d, 2A %{BOOL}d, 2B %{BOOL}d", v336, 0x24u);
        __swift_destroy_boxed_opaque_existential_0(v131);
        MEMORY[0x253099FD0](v131, -1, -1);
        MEMORY[0x253099FD0](v336, -1, -1);
      }
    }

    v339 = v328 < v329;
    if (v5 < v330)
    {
      v339 = 1;
    }

    v340 = v3 < v331 || v339;
    if (v4 < v332)
    {
      v340 = 1;
    }

    v341 = !v339;
    v342 = 2;
    if (!v341)
    {
      v342 = 3;
    }

    if (v340)
    {
      v343 = v342;
    }

    else
    {
      v343 = 1;
    }

    v145 = *(v116 + v364);
    v129 = *(v145 + 16);

    sub_25214200C();
    if (__OFADD__(v375[0], 1))
    {
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
LABEL_398:
      __break(1u);
LABEL_399:
      v131 = sub_2520A59C8(v131);
      continue;
    }

    break;
  }

  sub_2520AF560(v375[0] + 1);

  MEMORY[0x28223BE20](v344);
  v346 = v345;
  sub_25214200C();

  if (v343 == v375[0])
  {
    sub_2520CB568(&v376);
LABEL_324:

    return;
  }

  sub_25214200C();

  sub_2520CB568(&v376);
  if (v375[0] < *(&v385 + 1))
  {
    goto LABEL_324;
  }

  v347 = *(v116 + v365);
  sub_2520AF944(v343);

  sub_2520AF560(0);
}

void sub_2520C6A60(_BYTE *a1, uint64_t a2)
{
  a1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_timerDone] = 1;
  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v3 = sub_25214198C();
    __swift_project_value_buffer(v3, qword_27F4CDE68);
    v4 = a1;
    oslog = sub_25214196C();
    v5 = sub_252141FBC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136446466;
      v8 = sub_2521425DC();
      v10 = sub_2520A5448(v8, v9, &v19);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2048;
      v12 = *&v4[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
      v11 = *&v4[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID + 8];
      v13 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
      swift_beginAccess();
      v14 = *&v4[v13];
      if (*(v14 + 16))
      {

        v15 = sub_25213E648(v12, v11);
        if (v16)
        {
          v17 = *(*(v14 + 56) + 232 * v15 + 160);
          swift_endAccess();

          *(v6 + 14) = v17;
          _os_log_impl(&dword_25207E000, oslog, v5, "[%{public}s] Noise classification timer of %f seconds completed", v6, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v7);
          MEMORY[0x253099FD0](v7, -1, -1);
          MEMORY[0x253099FD0](v6, -1, -1);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }
}

void sub_2520C6CD8(char *a1, uint64_t a2)
{
  v35 = a2;
  v45 = sub_252141A4C();
  v3 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_252141A8C();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests;
  swift_beginAccess();
  v44 = a1;
  v8 = *&a1[v7];
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;
  v38 = v50;
  v37 = (v3 + 8);
  v36 = (v5 + 8);
  v46 = v8;

  v14 = 0;
  *&v15 = 136446210;
  v34 = v15;
  v40 = v9;
  v39 = v13;
  while (v12)
  {
LABEL_10:
    sub_2520CB768(*(v46 + 48) + 40 * (__clz(__rbit64(v12)) | (v14 << 6)), v54);
    sub_2520CB7A0(v54, v52);
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v25 = sub_25214198C();
    __swift_project_value_buffer(v25, qword_27F4CDE68);
    v26 = sub_25214196C();
    v27 = sub_252141FBC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = v34;
      v30 = sub_2521425DC();
      v32 = sub_2520A5448(v30, v31, aBlock);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_25207E000, v26, v27, "[%{public}s] notifying noise analyzer observers", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x253099FD0](v29, -1, -1);
      MEMORY[0x253099FD0](v28, -1, -1);
    }

    v12 &= v12 - 1;
    v16 = swift_allocObject();
    v17 = v44;
    *(v16 + 16) = v44;
    v47 = v53;
    sub_2520CB768(v52, v51);
    v18 = swift_allocObject();
    sub_2520CB7A0(v51, v18 + 16);
    *(v18 + 56) = sub_2520CC228;
    *(v18 + 64) = v16;
    v50[2] = sub_2520CC280;
    v50[3] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v50[0] = sub_2520A3B78;
    v50[1] = &block_descriptor_456;
    v19 = _Block_copy(aBlock);
    v20 = v17;

    v21 = v41;
    sub_252141A6C();
    v48 = MEMORY[0x277D84F90];
    sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
    sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
    v22 = v43;
    v23 = v45;
    sub_25214218C();
    MEMORY[0x2530991B0](0, v21, v22, v19);
    _Block_release(v19);

    (*v37)(v22, v23);
    (*v36)(v21, v42);

    sub_2520CB7D8(v52);
    v9 = v40;
    v13 = v39;
  }

  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v24);
    ++v14;
    if (v12)
    {
      v14 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_2520C72E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v5 = *(a2 + 16);
  v6 = *(a3 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_output);
  v5();
}

uint64_t sub_2520C737C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v13 = a6;
  v14 = sub_25214184C();
  v16 = v15;

  v11(v12, a3, a4, a5, v14, v16);
  sub_2520CB598(v14, v16);
}

void sub_2520C7444(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2520C74B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_processTerminating] = 1;
  }
}

void sub_2520C7514(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_25209CDF8(&unk_28644E078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDE20, &unk_2521444C0);
  swift_arrayDestroy();
  if (v4[2] && (v5 = sub_25213E70C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 16 * v5);
  }

  else
  {
    v8 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
  }

  v9 = &v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
  *v9 = v7;
  v9[1] = v8;

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v10 = sub_25214198C();
  __swift_project_value_buffer(v10, qword_27F4CDE68);
  v11 = v2;
  v12 = sub_25214196C();
  v13 = sub_252141FBC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v105 = v15;
    *v14 = 136446466;
    v16 = sub_2521425DC();
    v17 = v9;
    v19 = sub_2520A5448(v16, v18, &v105);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = *v9;
    v21 = v17[1];

    v22 = sub_2520A5448(v20, v21, &v105);

    *(v14 + 14) = v22;
    v9 = v17;
    _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] Updating current tuning based on product ID %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v15, -1, -1);
    MEMORY[0x253099FD0](v14, -1, -1);
  }

  v23 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v24 = sub_252141B6C();
  v25 = [v23 initWithSuiteName_];

  if (!v25)
  {
    __break(1u);
    goto LABEL_34;
  }

  v26 = sub_252141B6C();
  v27 = [v25 objectForKey_];

  if (v27)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v105 = v101;
  v106 = v102;
  if (*(&v102 + 1))
  {
    if (swift_dynamicCast())
    {
      v29 = v103;
      v28 = v104;
      if (v103 == *v9 && v104 == v9[1] || (sub_25214247C() & 1) != 0)
      {

        v30 = v11;
        v31 = sub_25214196C();
        v32 = sub_252141FBC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *&v105 = v34;
          *v33 = 136446466;
          v35 = sub_2521425DC();
          v37 = sub_2520A5448(v35, v36, &v105);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2080;
          v38 = *v9;
          v39 = v9[1];

          v40 = sub_2520A5448(v38, v39, &v105);

          *(v33 + 14) = v40;
          _os_log_impl(&dword_25207E000, v31, v32, "[%{public}s] Connected device product ID %s matches stored user default, already applied cached tunings, no-op", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v34, -1, -1);
          MEMORY[0x253099FD0](v33, -1, -1);
        }

        return;
      }

      v53 = v11;

      v54 = sub_25214196C();
      v55 = sub_252141FAC();

      v100 = v53;

      if (os_log_type_enabled(v54, v55))
      {
        v56 = v9;
        v57 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v105 = v99;
        *v57 = 136446978;
        v58 = sub_2521425DC();
        v60 = sub_2520A5448(v58, v59, &v105);

        *(v57 + 4) = v60;
        *(v57 + 12) = 2080;
        v61 = *v56;
        v62 = v56[1];

        v63 = sub_2520A5448(v61, v62, &v105);

        *(v57 + 14) = v63;
        *(v57 + 22) = 2080;
        *(v57 + 24) = sub_2520A5448(v29, v28, &v105);
        *(v57 + 32) = 2080;
        *(v57 + 34) = sub_2520A5448(v29, v28, &v105);
        _os_log_impl(&dword_25207E000, v54, v55, "[%{public}s] Connected device product ID %s does not match stored user default %s, not overriding cached tuning for %s", v57, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v99, -1, -1);
        v64 = v57;
        v9 = v56;
        MEMORY[0x253099FD0](v64, -1, -1);
      }

      v66 = *v9;
      v65 = v9[1];
      v67 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
      swift_beginAccess();
      v68 = *&v100[v67];
      if (*(v68 + 16))
      {

        v69 = sub_25213E648(v66, v65);
        v71 = v70;

        if (v71)
        {
          v72 = *(v68 + 56) + 232 * v69;
          v74 = *(v72 + 16);
          v73 = *(v72 + 32);
          v105 = *v72;
          v106 = v74;
          v107 = v73;
          v75 = *(v72 + 48);
          v76 = *(v72 + 64);
          v77 = *(v72 + 96);
          v110 = *(v72 + 80);
          v111 = v77;
          v108 = v75;
          v109 = v76;
          v78 = *(v72 + 112);
          v79 = *(v72 + 128);
          v80 = *(v72 + 160);
          v114 = *(v72 + 144);
          v115 = v80;
          v112 = v78;
          v113 = v79;
          v81 = *(v72 + 176);
          v82 = *(v72 + 192);
          v83 = *(v72 + 208);
          v119 = *(v72 + 224);
          v117 = v82;
          v118 = v83;
          v116 = v81;
          swift_endAccess();
          sub_2520A8DDC(&v105, &v101);

          v84 = v100;
          sub_2520A8DDC(&v105, &v101);
          v85 = sub_25214196C();
          v86 = sub_252141FBC();

          sub_2520CB568(&v105);
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            *&v101 = v88;
            *v87 = 136446722;
            v89 = sub_2521425DC();
            v91 = sub_2520A5448(v89, v90, &v101);

            *(v87 + 4) = v91;
            *(v87 + 12) = 2080;
            v92 = *v9;
            v93 = v9[1];

            v94 = sub_2520A5448(v92, v93, &v101);

            *(v87 + 14) = v94;
            *(v87 + 22) = 2080;
            v95 = sub_2520B052C();
            v97 = v96;
            sub_2520CB568(&v105);
            v98 = sub_2520A5448(v95, v97, &v101);

            *(v87 + 24) = v98;
            _os_log_impl(&dword_25207E000, v85, v86, "[%{public}s] %s Tuning %s", v87, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x253099FD0](v88, -1, -1);
            MEMORY[0x253099FD0](v87, -1, -1);
          }

          else
          {

            sub_2520CB568(&v105);
          }

          return;
        }
      }

LABEL_34:
      swift_endAccess();
      __break(1u);
      return;
    }
  }

  else
  {

    sub_2520A2584(&v105, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v41 = v11;
  v42 = sub_25214196C();
  v43 = sub_252141FBC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v105 = v45;
    *v44 = 136446466;
    v46 = sub_2521425DC();
    v48 = sub_2520A5448(v46, v47, &v105);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = *v9;
    v50 = v9[1];

    v51 = sub_2520A5448(v49, v50, &v105);

    *(v44 + 14) = v51;
    _os_log_impl(&dword_25207E000, v42, v43, "[%{public}s] No stored user default for tuning target product ID, updating cached tuning for connected device %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v45, -1, -1);
    MEMORY[0x253099FD0](v44, -1, -1);
  }

  v52 = *v9;

  sub_2520B6E28(v52);
}

void sub_2520C7F08()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidLock);
  [v1 lock];
  *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidListening) = 1;
  [v1 unlock];
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  oslog = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25207E000, oslog, v3, "[%{public}s] Enabled hidListening", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }
}

void sub_2520C80A4()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requestLock);
  [v1 lock];
  v2 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests;
  swift_beginAccess();
  v3 = *(*(v0 + v2) + 16);
  [v1 unlock];
  if (v3)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v4 = sub_25214198C();
    __swift_project_value_buffer(v4, qword_27F4CDE68);
    v5 = sub_25214196C();
    v6 = sub_252141FAC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v9 = sub_2521425DC();
      v11 = sub_2520A5448(v9, v10, &v18);

      *(v7 + 4) = v11;
      v12 = "[%{public}s] Noise queue not empty, won't disable HID listening.";
LABEL_10:
      _os_log_impl(&dword_25207E000, v5, v6, v12, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }
  }

  else
  {
    v13 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidLock);
    [v13 lock];
    *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidListening) = 0;
    [v13 unlock];
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v14 = sub_25214198C();
    __swift_project_value_buffer(v14, qword_27F4CDE68);
    v5 = sub_25214196C();
    v6 = sub_252141FBC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v15 = sub_2521425DC();
      v17 = sub_2520A5448(v15, v16, &v18);

      *(v7 + 4) = v17;
      v12 = "[%{public}s] Disabled hidListening";
      goto LABEL_10;
    }
  }
}

void sub_2520C834C()
{
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  __swift_project_value_buffer(v1, qword_27F4CDE68);
  v2 = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v31 = v5;
    *v4 = 136446210;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v31);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] Activating HID Manager.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidActivated;
    v11 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidActivated);
    v12 = v9;
    oslog = v12;
    if (v11)
    {
      v13 = sub_25214196C();
      v14 = sub_252141FBC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v31 = v16;
        *v15 = 136446210;
        v17 = sub_2521425DC();
        v19 = sub_2520A5448(v17, v18, &v31);

        *(v15 + 4) = v19;
        v20 = "[%{public}s] hidActivated is already true.";
LABEL_13:
        _os_log_impl(&dword_25207E000, v13, v14, v20, v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x253099FD0](v16, -1, -1);
        MEMORY[0x253099FD0](v15, -1, -1);

        goto LABEL_14;
      }
    }

    else
    {
      [v12 activate];
      *(v0 + v10) = 1;
      v13 = sub_25214196C();
      v14 = sub_252141FBC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v31 = v16;
        *v15 = 136446210;
        v27 = sub_2521425DC();
        v29 = sub_2520A5448(v27, v28, &v31);

        *(v15 + 4) = v29;
        v20 = "[%{public}s] HID Manager activated.";
        goto LABEL_13;
      }
    }
  }

  else
  {
    oslog = sub_25214196C();
    v21 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136446210;
      v24 = sub_2521425DC();
      v26 = sub_2520A5448(v24, v25, &v31);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_25207E000, oslog, v21, "[%{public}s] HID Manager cannot be activated.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x253099FD0](v23, -1, -1);
      MEMORY[0x253099FD0](v22, -1, -1);
      goto LABEL_14;
    }
  }

LABEL_14:
}

void sub_2520C8748()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requestLock);
    v4 = v2;
    [v3 lock];
    v5 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests;
    swift_beginAccess();
    v6 = *(*(v1 + v5) + 16);
    [v3 unlock];
    if (v6)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v7 = sub_25214198C();
      __swift_project_value_buffer(v7, qword_27F4CDE68);
      v8 = sub_25214196C();
      v9 = sub_252141FAC();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_25;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136446210;
      v12 = sub_2521425DC();
      v14 = sub_2520A5448(v12, v13, &v36);

      *(v10 + 4) = v14;
      v15 = "[%{public}s] Noise queue not empty, won't cancel HID Manager.";
LABEL_24:
      _os_log_impl(&dword_25207E000, v8, v9, v15, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x253099FD0](v11, -1, -1);
      MEMORY[0x253099FD0](v10, -1, -1);
LABEL_25:

      return;
    }

    if (*(v1 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_processTerminating) != 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v31 = sub_25214198C();
      __swift_project_value_buffer(v31, qword_27F4CDE68);
      v8 = sub_25214196C();
      v9 = sub_252141FAC();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_25;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136446210;
      v32 = sub_2521425DC();
      v34 = sub_2520A5448(v32, v33, &v36);

      *(v10 + 4) = v34;
      v15 = "[%{public}s] Not terminating, won't cancel HID Manager";
      goto LABEL_24;
    }

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v23 = sub_25214198C();
    __swift_project_value_buffer(v23, qword_27F4CDE68);
    v24 = sub_25214196C();
    v25 = sub_252141FBC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136446210;
      v28 = sub_2521425DC();
      v30 = sub_2520A5448(v28, v29, &v36);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_25207E000, v24, v25, "[%{public}s] Cancelling HID Manager", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x253099FD0](v27, -1, -1);
      MEMORY[0x253099FD0](v26, -1, -1);
    }

    [v4 cancel];
    *(v1 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidActivated) = 0;
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v16 = sub_25214198C();
    __swift_project_value_buffer(v16, qword_27F4CDE68);
    oslog = sub_25214196C();
    v17 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37[0] = v19;
      *v18 = 136446210;
      v20 = sub_2521425DC();
      v22 = sub_2520A5448(v20, v21, v37);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_25207E000, oslog, v17, "[%{public}s] HID Manager cannot be cancelled.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x253099FD0](v19, -1, -1);
      MEMORY[0x253099FD0](v18, -1, -1);
    }

    else
    {
    }
  }
}

void sub_2520C8C70(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
  v9 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID + 8];
  v93 = &v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
  v11 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v94 = v11;
  v12 = *&v2[v11];
  if (*(v12 + 16) && (, v13 = sub_25213E648(v10, v9), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = (*(v12 + 56) + 232 * v13);
    v18 = v16[1];
    v17 = v16[2];
    v102 = *v16;
    v103 = v18;
    v104 = v17;
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[6];
    v107 = v16[5];
    v108 = v21;
    v105 = v19;
    v106 = v20;
    v22 = v16[7];
    v23 = v16[8];
    v24 = v16[10];
    v111 = v16[9];
    v112 = v24;
    v109 = v22;
    v110 = v23;
    v25 = v16[11];
    v26 = v16[12];
    v27 = v16[13];
    v116 = *(v16 + 28);
    v114 = v26;
    v115 = v27;
    v113 = v25;
    memmove(&v117, v16, 0xE8uLL);
    nullsub_1();
    sub_2520A8DDC(&v102, v100);
  }

  else
  {
    sub_2520CB6D4(&v102);
    v129 = v114;
    v130 = v115;
    v131 = v116;
    v125 = v110;
    v126 = v111;
    v127 = v112;
    v128 = v113;
    v121 = v106;
    v122 = v107;
    v123 = v108;
    v124 = v109;
    v117 = v102;
    v118 = v103;
    v119 = v104;
    v120 = v105;
  }

  v114 = v129;
  v115 = v130;
  v116 = v131;
  v110 = v125;
  v111 = v126;
  v112 = v127;
  v113 = v128;
  v106 = v121;
  v107 = v122;
  v108 = v123;
  v109 = v124;
  v102 = v117;
  v103 = v118;
  v104 = v119;
  v105 = v120;
  if (sub_2520CB6FC(&v102) == 1)
  {
    __break(1u);
    goto LABEL_37;
  }

  v96 = v130;
  v100[12] = v129;
  v100[13] = v130;
  v101 = v131;
  v100[8] = v125;
  v100[9] = v126;
  v100[10] = v127;
  v100[11] = v128;
  v100[4] = v121;
  v100[5] = v122;
  v100[6] = v123;
  v100[7] = v124;
  v100[0] = v117;
  v100[1] = v118;
  v100[2] = v119;
  v100[3] = v120;
  swift_endAccess();
  sub_2520CB568(v100);
  v28 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_responseLock];
  [v28 lock];
  v29 = &v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_response];
  *v29 = v4;
  *(v29 + 1) = v5;
  *(v29 + 2) = v6;
  *(v29 + 3) = v7;
  v29[32] = v8;
  [v28 unlock];
  v30 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v31 = sub_252141B6C();
  v32 = [v30 initWithSuiteName_];

  if (!v32)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v33 = sub_252141B6C();
  v34 = [v32 BOOLForKey_];

  if (v34)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v35 = sub_25214198C();
    __swift_project_value_buffer(v35, qword_27F4CDE68);
    v36 = sub_25214196C();
    v37 = sub_252141FBC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v132[0] = v39;
      *v38 = 136446210;
      v40 = sub_2521425DC();
      v42 = sub_2520A5448(v40, v41, v132);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_25207E000, v36, v37, "[%{public}s] InterferenceFlag is disabled by UserDefaults", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x253099FD0](v39, -1, -1);
      MEMORY[0x253099FD0](v38, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD780 != -1)
    {
      swift_once();
    }

    v43 = qword_27F4CE108;
    v44 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_accessoryManager];
    if (v44 && (v45 = v29[16], v45 != 2))
    {
      LOBYTE(v97[0]) = v45 & 1;
      v47 = v44;
      sub_2520F8EAC(v97, v132);

      v43 = v132[0];
      v46 = v132[1];
    }

    else
    {
    }

    v48 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData];
    v49 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData + 8];
    v99[0] = v43;
    v99[1] = v46;
    v97[0] = v4;
    v97[1] = v5;
    v97[2] = v6;
    v97[3] = v7;
    v98 = v8;
    sub_2520CBC7C(v48, v49);
    sub_2520CB808(v48, v49, v99, v97, v132);
    sub_2520C3578(v132);
    if ((v50 & 1) == 0)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v51 = sub_25214198C();
      __swift_project_value_buffer(v51, qword_27F4CDE68);
      v52 = sub_25214196C();
      v53 = sub_252141FAC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v97[0] = v55;
        *v54 = 136446210;
        v56 = sub_2521425DC();
        v58 = sub_2520A5448(v56, v57, v97);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_25207E000, v52, v53, "[%{public}s] Invalid Buffer for noise analysis", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x253099FD0](v55, -1, -1);
        MEMORY[0x253099FD0](v54, -1, -1);
      }
    }

    MEMORY[0x28223BE20](v50);
    v60 = v59;
    sub_25214200C();

    v61 = v97[0] == 1;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v62 = sub_25214198C();
    v63 = __swift_project_value_buffer(v62, qword_27F4CDE68);
    v64 = v2;
    v65 = sub_25214196C();
    v66 = sub_252141FBC();
    v92 = v64;
    if (os_log_type_enabled(v65, v66))
    {
      v90 = v63;
      v67 = v64;
      v68 = swift_slowAlloc();
      v91 = v61;
      v89 = swift_slowAlloc();
      v97[0] = v89;
      *v68 = 136446722;
      v69 = sub_2521425DC();
      v71 = sub_2520A5448(v69, v70, v97);

      v88[1] = v88;
      *(v68 + 4) = v71;
      *(v68 + 12) = 2048;
      MEMORY[0x28223BE20](v72);
      v74 = v73;
      sub_25214200C();

      *(v68 + 14) = v99[0];
      *(v68 + 22) = 2048;
      *(v68 + 24) = v96;
      _os_log_impl(&dword_25207E000, v65, v66, "[%{public}s] InterferenceFlag from response is %ld, repeat the previous tone for up to %ld times", v68, 0x20u);
      v75 = v89;
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x253099FD0](v75, -1, -1);
      MEMORY[0x253099FD0](v68, -1, -1);
    }

    else
    {
    }

    v76 = v94;
    v78 = *v93;
    v77 = v93[1];
    swift_beginAccess();
    if (*(*&v2[v76] + 16) && (, sub_25213E648(v78, v77), v80 = v79, , (v80 & 1) != 0))
    {
      swift_endAccess();
      sub_2520CBCE8(v132);
    }

    else
    {
      swift_endAccess();
      v81 = sub_25214196C();
      v82 = sub_252141FAC();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v97[0] = v84;
        *v83 = 136446210;
        v85 = sub_2521425DC();
        v87 = sub_2520A5448(v85, v86, v97);

        *(v83 + 4) = v87;
        _os_log_impl(&dword_25207E000, v81, v82, "[%{public}s] Tuning unknown, use cached tuning", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v84);
        MEMORY[0x253099FD0](v84, -1, -1);
        MEMORY[0x253099FD0](v83, -1, -1);
      }

      sub_2520CBCE8(v132);
    }
  }
}

void sub_2520C96A4(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a4;
  v9 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests;
  swift_beginAccess();

  v11 = sub_2520ADAD8(v10);

  swift_beginAccess();
  *a1 = v11;

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v12 = sub_25214198C();
  __swift_project_value_buffer(v12, qword_27F4CDE68);
  v13 = sub_25214196C();
  v14 = sub_252141FBC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v59[0] = v16;
    *v15 = 136446466;
    v17 = sub_2521425DC();
    v56 = a3;
    v19 = v9;
    v20 = sub_2520A5448(v17, v18, v59);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    swift_beginAccess();

    v22 = MEMORY[0x253098E80](v21, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = v22;
    v9 = v19;
    v26 = sub_2520A5448(v25, v24, v59);

    *(v15 + 14) = v26;
    a3 = v56;
    _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] observers before add are %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v16, -1, -1);
    MEMORY[0x253099FD0](v15, -1, -1);
  }

  v27 = *&a2[v9];

  v28 = sub_252112D14(a3, v27);

  if (v28)
  {
    swift_unknownObjectRetain();
    v29 = sub_25214196C();
    v30 = sub_252141FAC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v59[0] = v32;
      *v31 = 136446466;
      v33 = sub_2521425DC();
      v35 = a3;
      v36 = sub_2520A5448(v33, v34, v59);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      ObjectType = swift_getObjectType();
      v38 = (*(a5 + 8))(ObjectType);
      v40 = sub_2520A5448(v38, v39, v59);

      *(v31 + 14) = v40;
      a3 = v35;
      _os_log_impl(&dword_25207E000, v29, v30, "[%{public}s] Replacing old observer %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v32, -1, -1);
      MEMORY[0x253099FD0](v31, -1, -1);
    }

    swift_beginAccess();
    sub_25212B2D0(a3, v59);
    swift_endAccess();
    sub_2520A2584(v59, &qword_27F4CDE38, &unk_2521444E0);
  }

  sub_2520CB768(a3, v58);
  swift_beginAccess();
  sub_25213EB80(v59, v58);
  swift_endAccess();
  sub_2520CB7D8(v59);
  v41 = a2;
  swift_unknownObjectRetain();
  v42 = v41;
  v43 = sub_25214196C();
  v44 = v9;
  v45 = sub_252141FBC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v43, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v59[0] = v47;
    *v46 = 136446722;
    v48 = sub_2521425DC();
    v60 = v44;
    v50 = sub_2520A5448(v48, v49, v59);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v51 = swift_getObjectType();
    v52 = (*(a5 + 8))(v51);
    v54 = sub_2520A5448(v52, v53, v59);

    *(v46 + 14) = v54;
    *(v46 + 22) = 2048;
    v55 = *(*&a2[v60] + 16);

    *(v46 + 24) = v55;
    _os_log_impl(&dword_25207E000, v43, v45, "[%{public}s] Added observer %s, number of observers in queue is %ld", v46, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v47, -1, -1);
    MEMORY[0x253099FD0](v46, -1, -1);
  }

  else
  {
  }
}

void sub_2520C9C88(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests;
  swift_beginAccess();
  v65 = v6;
  v66 = a1;

  v8 = sub_2520ADAD8(v7);

  v76 = v8;
  if (qword_27F4CD708 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v9 = sub_25214198C();
    __swift_project_value_buffer(v9, qword_27F4CDE68);
    v10 = sub_25214196C();
    v11 = sub_252141FBC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v75[0] = v13;
      *v12 = 136446466;
      v14 = sub_2521425DC();
      v63 = a3;
      v16 = sub_2520A5448(v14, v15, v75);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;

      v18 = MEMORY[0x253098E80](v17, MEMORY[0x277D837D0]);
      v20 = v19;

      v21 = sub_2520A5448(v18, v20, v75);
      a3 = v63;

      *(v12 + 14) = v21;
      _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] observers before remove are %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v13, -1, -1);
      MEMORY[0x253099FD0](v12, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v23 = (*(a3 + 8))(ObjectType, a3);
    v25 = v24;
    v26 = *(v66 + v65);
    v27 = 1 << *(v26 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    a3 = v28 & *(v26 + 56);
    v29 = (v27 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v30 = 0;
    if (a3)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v29)
      {

        v71 = xmmword_252143AF0;
        v73 = 0;
        v74 = 0;
        v72 = 0;
        goto LABEL_18;
      }

      a3 = *(v26 + 56 + 8 * v31);
      ++v30;
      if (a3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  while (1)
  {
    v31 = v30;
LABEL_11:
    sub_2520CB768(*(v26 + 48) + 40 * (__clz(__rbit64(a3)) | (v31 << 6)), v70);
    sub_2520CB7A0(v70, v67);
    if (v68 == v23 && v69 == v25)
    {
      break;
    }

    if (sub_25214247C())
    {
      break;
    }

    a3 &= a3 - 1;
    sub_2520CB7D8(v67);
    v30 = v31;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  sub_2520CB7A0(v67, &v71);
LABEL_18:

  if (v71 == __PAIR128__(1, 0))
  {
    sub_2520A2584(&v71, &qword_27F4CDE38, &unk_2521444E0);

    v32 = sub_25214196C();
    v33 = sub_252141FAC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75[0] = v35;
      *v34 = 136446466;
      v36 = sub_2521425DC();
      v38 = sub_2520A5448(v36, v37, v75);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = sub_2520A5448(v23, v25, v75);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_25207E000, v32, v33, "[%{public}s] Cannot remove observer %s because it was not in queue.", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v35, -1, -1);
      MEMORY[0x253099FD0](v34, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_2520CB7A0(&v71, v75);
    swift_beginAccess();
    sub_25212B2D0(v75, &v71);
    swift_endAccess();
    sub_2520A2584(&v71, &qword_27F4CDE38, &unk_2521444E0);
    v40 = *(*(v66 + v65) + 16);

    v41 = sub_25214196C();
    v42 = sub_252141FBC();

    if (os_log_type_enabled(v41, v42))
    {
      v64 = v40;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v71 = v44;
      *v43 = 136446722;
      v45 = sub_2521425DC();
      v47 = sub_2520A5448(v45, v46, &v71);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v48 = sub_2520A5448(v23, v25, &v71);

      *(v43 + 14) = v48;
      *(v43 + 22) = 2048;
      *(v43 + 24) = v64;
      _os_log_impl(&dword_25207E000, v41, v42, "[%{public}s] Removed observer %s; number of observers remaining in queue is %ld.", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v44, -1, -1);
      MEMORY[0x253099FD0](v43, -1, -1);
    }

    else
    {
    }

    v50 = sub_2520ADAD8(v49);

    swift_beginAccess();
    v76 = v50;

    v51 = sub_25214196C();
    v52 = sub_252141FBC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v70[0] = v54;
      *v53 = 136446466;
      v55 = sub_2521425DC();
      v57 = sub_2520A5448(v55, v56, v70);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;

      v59 = MEMORY[0x253098E80](v58, MEMORY[0x277D837D0]);
      v61 = v60;

      v62 = sub_2520A5448(v59, v61, v70);

      *(v53 + 14) = v62;
      _os_log_impl(&dword_25207E000, v51, v52, "[%{public}s] observers after remove are %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v54, -1, -1);
      MEMORY[0x253099FD0](v53, -1, -1);
    }

    sub_2520CB7D8(v75);
  }
}

id sub_2520CA47C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager;
  v4 = *&v0[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager];
  if (v4)
  {
    [v4 close];
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    v6 = sub_25214196C();
    v7 = sub_252141FAC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      v10 = sub_2521425DC();
      v12 = sub_2520A5448(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] HID Manager cannot be closed", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x253099FD0](v9, -1, -1);
      MEMORY[0x253099FD0](v8, -1, -1);
    }
  }

  v13 = *&v1[v3];
  *&v1[v3] = 0;

  v14 = *&v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_accessoryManager];
  *&v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_accessoryManager] = 0;

  v15 = *&v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_queue];
  *&v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_queue] = 0;

  v18.receiver = v1;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

uint64_t sub_2520CA83C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2520CA888(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2520CA930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_2520CA978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2520CAA04()
{
  result = qword_27F4CDE18;
  if (!qword_27F4CDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CDE18);
  }

  return result;
}

char *sub_2520CAA58()
{
  v0 = objc_allocWithZone(type metadata accessor for HTNoiseAnalyzer());
  result = sub_2520B16A4(0);
  qword_27F4D3430 = result;
  return result;
}

uint64_t sub_2520CAA90(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_2520CAB3C(uint64_t a1, char a2, void *a3)
{
  v100 = a3;
  v4 = 0;
  v5 = *(a1 + 16);
  v51 = a1 + 32;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_2:
  sub_2520CC300(&v68);
  v96 = v80;
  v97 = v81;
  v98 = v82;
  v99 = v83;
  v92 = v76;
  v93 = v77;
  v94 = v78;
  v95 = v79;
  v88 = v72;
  v89 = v73;
  v90 = v74;
  v91 = v75;
  v84 = v68;
  v85 = v69;
  v4 = v5;
  v86 = v70;
  v87 = v71;
  while (1)
  {
    v80 = v96;
    v81 = v97;
    v82 = v98;
    v83 = v99;
    v76 = v92;
    v77 = v93;
    v78 = v94;
    v79 = v95;
    v72 = v88;
    v73 = v89;
    v74 = v90;
    v75 = v91;
    v68 = v84;
    v69 = v85;
    v70 = v86;
    v71 = v87;
    if (sub_2520CC2E8(&v68) == 1)
    {

      return;
    }

    v22 = v5;
    v23 = v84;
    v65 = v97;
    v66 = v98;
    v67 = v99;
    v61 = v93;
    v62 = v94;
    v63 = v95;
    v64 = v96;
    v57 = v89;
    v58 = v90;
    v59 = v91;
    v60 = v92;
    v53 = v85;
    v54 = v86;
    v55 = v87;
    v56 = v88;
    v24 = *v100;
    v26 = sub_25213E648(v84, *(&v84 + 1));
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_2521424CC();
      __break(1u);
      goto LABEL_26;
    }

    v30 = v25;
    if (v24[3] < v29)
    {
      break;
    }

    if (a2)
    {
      if (v25)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_2520A7134();
      if (v30)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    v33 = *v100;
    v33[(v26 >> 6) + 8] |= 1 << v26;
    *(v33[6] + 16 * v26) = v23;
    v34 = v33[7] + 232 * v26;
    v35 = v53;
    v36 = v55;
    *(v34 + 16) = v54;
    *(v34 + 32) = v36;
    *v34 = v35;
    v37 = v56;
    v38 = v57;
    v39 = v59;
    *(v34 + 80) = v58;
    *(v34 + 96) = v39;
    *(v34 + 48) = v37;
    *(v34 + 64) = v38;
    v40 = v60;
    v41 = v61;
    v42 = v63;
    *(v34 + 144) = v62;
    *(v34 + 160) = v42;
    *(v34 + 112) = v40;
    *(v34 + 128) = v41;
    v43 = v64;
    v44 = v65;
    v45 = v66;
    *(v34 + 224) = v67;
    *(v34 + 192) = v44;
    *(v34 + 208) = v45;
    *(v34 + 176) = v43;
    v46 = v33[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_22;
    }

    v33[2] = v48;
    a2 = 1;
    v5 = v22;
    if (v4 == v22)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v4 >= *(a1 + 16))
    {
      goto LABEL_24;
    }

    v6 = (v51 + 248 * v4);
    v7 = v6[13];
    v8 = v6[11];
    v80 = v6[12];
    v81 = v7;
    v9 = v6[13];
    v82 = v6[14];
    v10 = v6[9];
    v11 = v6[7];
    v76 = v6[8];
    v77 = v10;
    v12 = v6[9];
    v13 = v6[11];
    v78 = v6[10];
    v79 = v13;
    v14 = v6[5];
    v15 = v6[3];
    v72 = v6[4];
    v73 = v14;
    v16 = v6[5];
    v17 = v6[7];
    v74 = v6[6];
    v75 = v17;
    v18 = v6[1];
    v68 = *v6;
    v69 = v18;
    v19 = v6[3];
    v21 = *v6;
    v20 = v6[1];
    v70 = v6[2];
    v71 = v19;
    v96 = v80;
    v97 = v9;
    v98 = v6[14];
    v92 = v76;
    v93 = v12;
    v94 = v78;
    v95 = v8;
    v88 = v72;
    v89 = v16;
    v90 = v74;
    v91 = v11;
    v84 = v21;
    v85 = v20;
    v83 = *(v6 + 30);
    v99 = *(v6 + 30);
    ++v4;
    v86 = v70;
    v87 = v15;
    nullsub_1();
    sub_2520A2D9C(&v68, &v53, &qword_27F4CDB48, &qword_252143CF8);
  }

  sub_2520A7F0C(v29, a2 & 1);
  v31 = sub_25213E648(v23, *(&v23 + 1));
  if ((v30 & 1) != (v32 & 1))
  {
    goto LABEL_25;
  }

  v26 = v31;
  if ((v30 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  v49 = swift_allocError();
  swift_willThrow();
  v50 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_2520CB568(&v53);

    return;
  }

LABEL_26:
  sub_25214222C();
  MEMORY[0x253098DA0](0xD00000000000001BLL, 0x8000000252148C50);
  sub_25214230C();
  MEMORY[0x253098DA0](39, 0xE100000000000000);
  sub_25214231C();
  __break(1u);
}

char *sub_2520CB018(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2521421AC() + 1) & ~v5;
    do
    {
      sub_25214255C();

      sub_252141BEC();
      v9 = sub_25214258C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 232 * v3);
        v15 = (v14 + 232 * v6);
        if (v3 != v6 || result >= v15 + 232)
        {
          result = memmove(result, v15, 0xE8uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2520CB1CC(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_2520A7134();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_2520A7F0C(v4, v5);
  return 1;
}

uint64_t sub_2520CB22C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_25214181C();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2520CB364(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_2520CB364(v4, v5);
  }

  return sub_25214181C();
}

uint64_t sub_2520CB364(uint64_t a1, uint64_t a2)
{
  result = sub_25214173C();
  if (!result || (result = sub_25214175C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25214174C();
      return sub_25214181C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2520CB3F8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  v3 = *(a2 + 24);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  v6 = result;
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if ((sub_2520AD354(*(result + 32), *(a2 + 32)) & 1) != 0 && *(v6 + 40) == *(a2 + 40) && *(v6 + 48) == *(a2 + 48) && (sub_2520AD354(*(v6 + 56), *(a2 + 56)) & 1) != 0 && *(v6 + 64) == *(a2 + 64) && *(v6 + 72) == *(a2 + 72) && (sub_2520AD354(*(v6 + 80), *(a2 + 80)) & 1) != 0 && *(v6 + 88) == *(a2 + 88) && *(v6 + 96) == *(a2 + 96) && (sub_2520AD354(*(v6 + 104), *(a2 + 104)) & 1) != 0 && *(v6 + 112) == *(a2 + 112) && *(v6 + 120) == *(a2 + 120) && *(v6 + 128) == *(a2 + 128))
    {
      v10 = *(v6 + 136);
      v11 = *(a2 + 136);

      return sub_2520AE140(v10, v11);
    }

    return 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2520CB598(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2520CB604()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520CB63C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2520CB684()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_2520CB6D4(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
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

uint64_t sub_2520CB6FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2520CB808@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = a3[1];
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  v11 = *(a4 + 32);
  v12 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v13 = sub_252141D3C();
  *(v13 + 16) = 8;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  if (v10 == 2)
  {

    v14 = 0;
    v15 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v59 = v6;
    v60 = v7;
    v15 = HTHeadphoneCalibration.dBFS(fromdBHL:atFrequency:)(v9, v8);

    if (v11)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }
  }

  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_39;
    }

    v19 = *(a1 + 16);
    v20 = sub_25214173C();
    if (v20)
    {
      v21 = v20;
      v22 = sub_25214175C();
      if (__OFSUB__(v19, v22))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v18 = (v19 - v22 + v21);
      sub_25214174C();
      if (v18)
      {
        v24 = *(a1 + 16);
        v23 = *(a1 + 24);
        v17 = v23 - v24;
        if (__OFSUB__(v23, v24))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
        }

        if (v17 <= 59)
        {
LABEL_39:
          sub_2520CB598(a1, a2);
          v38 = 0.0;
          v39 = 0.0;
          v41 = 0.0;
          goto LABEL_40;
        }

LABEL_16:
        v49 = v14;
        v25 = sub_252099F10(v17 >> 2, 0);
        memcpy(v25 + 8, v18, v17 & 0x7FFFFFFFFFFFFFFCLL);
        if (*(v25 + 2) < 4uLL)
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
        }

        else
        {
          v26 = 0;
          while (1)
          {
            v27 = v25[v26 + 11];
            [v12 lock];

            [v12 unlock];
            v28 = v13;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_2520A598C(v13);
            }

            if (v26 >= *(v28 + 2))
            {
              goto LABEL_42;
            }

            *&v28[8 * v26 + 32] = v27;
            [v12 lock];
            if (*(v28 + 2) <= 8uLL)
            {

              v13 = v28;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
              v29 = swift_allocObject();
              v30 = _swift_stdlib_malloc_size(v29);
              v31 = v30 - 32;
              if (v30 < 32)
              {
                v31 = v30 - 25;
              }

              *(v29 + 16) = 8;
              *(v29 + 24) = 2 * (v31 >> 3);
              v32 = *(v28 + 5);
              v34 = *(v28 + 2);
              v33 = *(v28 + 3);
              *(v29 + 64) = *(v28 + 4);
              *(v29 + 80) = v32;
              *(v29 + 32) = v34;
              *(v29 + 48) = v33;

              v13 = v29;
            }

            v35 = v26 + 3;
            [v12 unlock];
            if (v35 == 10)
            {
              break;
            }

            v36 = v35 + 1;
            v26 = v35 - 2;
            if (v36 >= *(v25 + 2))
            {
              goto LABEL_41;
            }
          }

          v37 = *(v25 + 2);
          if (v37 >= 0xC)
          {
            if (v37 != 12)
            {
              if (v37 >= 0xE)
              {
                v38 = v25[19];
                v39 = v25[20];
                v40 = v25[21];
                sub_2520CB598(a1, a2);

                v41 = v40;
                v14 = v49;
LABEL_40:
                *&v54 = v12;
                *(&v54 + 1) = v13;
                *&v55 = v38;
                *(&v55 + 1) = v15;
                *&v56 = v9;
                *(&v56 + 1) = v8;
                *&v57 = v14;
                *(&v57 + 1) = v39;
                v58 = v41;
                v59 = v12;
                v60 = v13;
                v61 = v38;
                v62 = v15;
                v63 = v9;
                v64 = v8;
                v65 = v14;
                v66 = v39;
                v67 = v41;
                sub_2520CBE7C(&v54, v53);
                result = sub_2520CBCE8(&v59);
                v47 = v55;
                v48 = v57;
                *(a5 + 32) = v56;
                *(a5 + 48) = v48;
                *(a5 + 64) = v58;
                *a5 = v54;
                *(a5 + 16) = v47;
                return result;
              }

              goto LABEL_45;
            }

LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }
        }

        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      sub_25214174C();
    }

    __break(1u);
    goto LABEL_53;
  }

  if (!v16)
  {
    v17 = BYTE6(a2);
    v18 = &v52;
    if (BYTE6(a2) <= 0x3BuLL)
    {
      goto LABEL_39;
    }

    goto LABEL_16;
  }

  if (a1 > a1 >> 32)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v42 = sub_25214173C();
  if (!v42)
  {
LABEL_53:
    result = sub_25214174C();
    goto LABEL_54;
  }

  v43 = v42;
  v44 = sub_25214175C();
  if (__OFSUB__(a1, v44))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v18 = (a1 - v44 + v43);
  result = sub_25214174C();
  if (v18)
  {
    v46 = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_50;
    }

    v17 = v46;
    if (v46 <= 59)
    {
      goto LABEL_39;
    }

    goto LABEL_16;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_2520CBC7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double sub_2520CBDB0@<D0>(double *a1@<X8>)
{
  result = *(v1 + 48);
  *a1 = result;
  return result;
}

double sub_2520CBDE8@<D0>(double *a1@<X8>)
{
  result = *(v1 + 96);
  *a1 = result;
  return result;
}

double sub_2520CBE4C@<D0>(double *a1@<X8>)
{
  result = *(v1 + 120);
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2520CBF10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_2520CBF48()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 120) = result;
  return result;
}

double sub_2520CBF84()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 96) = result;
  return result;
}

double sub_2520CBFA8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 48) = result;
  return result;
}

uint64_t sub_2520CBFB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_99Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520CC078()
{
  MEMORY[0x25309A090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520CC0E0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25214247C() & 1;
  }
}

uint64_t sub_2520CC138()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2520CC1F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520CC230()
{
  MEMORY[0x25309A090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_239Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_2520CC2E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_2520CC300(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2520CC350(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2520CC398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2520CCAA8()
{
  v0 = sub_25214198C();
  __swift_allocate_value_buffer(v0, qword_27F4CDF10);
  __swift_project_value_buffer(v0, qword_27F4CDF10);
  return sub_25214197C();
}

uint64_t sub_2520CCC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_2520CD084();
  result = sub_25214211C();
  *a4 = result;
  return result;
}

id sub_2520CCCA8(void *a1, void **a2, uint64_t a3)
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

uint64_t sub_2520CCD34(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_25214195C();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_25214194C();
}

uint64_t sub_2520CCDF8()
{
  v0 = sub_25214198C();
  __swift_allocate_value_buffer(v0, qword_27F4CDF68);
  __swift_project_value_buffer(v0, qword_27F4CDF68);
  return sub_25214197C();
}

uint64_t sub_2520CCECC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25214198C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_25214197C();
}

uint64_t sub_2520CCF7C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_2520CD084()
{
  result = qword_27F4CDF98;
  if (!qword_27F4CDF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4CDF98);
  }

  return result;
}

uint64_t sub_2520CD0D0()
{
  v0 = sub_252141A4C();
  v1 = *(v0 - 8);
  v37 = v0;
  v38 = v1;
  MEMORY[0x28223BE20](v0);
  v36 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_252141A1C();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_252141ABC();
  v39 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v7;
  v27 = sub_252141FEC();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252141FCC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_252141A8C();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25209D56C();
  sub_252141A7C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2520A2ED4(&qword_27F4CE0E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  sub_2520CEEB8(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50);
  sub_25214218C();
  (*(v8 + 104))(v10, *MEMORY[0x277D85260], v27);
  v27 = sub_25214202C();
  v15 = v28;
  sub_252141AAC();
  *v4 = 25;
  v16 = v30;
  v17 = v32;
  (*(v30 + 104))(v4, *MEMORY[0x277D85178], v32);
  v18 = v29;
  MEMORY[0x253098C70](v15, v4);
  (*(v16 + 8))(v4, v17);
  v19 = *(v39 + 8);
  v39 += 8;
  v20 = v31;
  v19(v15, v31);
  aBlock[4] = sub_2520CEE6C;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_3;
  v21 = _Block_copy(aBlock);

  sub_252141A6C();
  v40 = MEMORY[0x277D84F90];
  sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520CEEB8(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
  v23 = v36;
  v22 = v37;
  sub_25214218C();
  v24 = v27;
  MEMORY[0x253099170](v18, v14, v23, v21);
  _Block_release(v21);

  (*(v38 + 8))(v23, v22);
  (*(v33 + 8))(v14, v34);
  v19(v18, v20);
}

void *sub_2520CD70C()
{
  v1 = v0;
  v2 = sub_25214198C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11HearingTest15HTToneGenerator_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11HearingTest15HTToneGenerator_logger, v2, v4);
  v8 = sub_25214196C();
  v9 = sub_252141FBC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v7;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    v13 = sub_2521425DC();
    v15 = sub_2520A5448(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] dealloc", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x253099FD0](v12, -1, -1);
    v16 = v11;
    v7 = v19;
    MEMORY[0x253099FD0](v16, -1, -1);
  }

  v17 = *(v3 + 8);
  v17(v6, v2);
  *(v1 + 160) = 1;

  sub_2520A1FE4(*(v1 + 144), *(v1 + 152));

  v17((v1 + v7), v2);
  return v1;
}

uint64_t sub_2520CD93C()
{
  sub_2520CD70C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HTToneGenerator(uint64_t a1)
{
  result = qword_27F4CDFA8;
  if (!qword_27F4CDFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2520CD9E8(uint64_t a1)
{
  result = sub_25214198C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2520CDADC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_252141A4C();
  v72 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v70 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_252141A8C();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_252141ABC();
  v79 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v67 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = v62 - v8;
  v9 = sub_252141A1C();
  v74 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v0[2];
  v13 = v0[3];
  v14 = OBJC_IVAR____TtC11HearingTest15HTToneGenerator_logger;
  swift_bridgeObjectRetain_n();
  v15 = sub_25214196C();
  v16 = sub_252141F9C();

  v80 = v15;
  v17 = os_log_type_enabled(v15, v16);
  v77 = v9;
  v78 = v11;
  v73 = v12;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v18 = 136446466;
    v19 = sub_2521425DC();
    v21 = v2;
    v22 = sub_2520A5448(v19, v20, aBlock);

    *(v18 + 4) = v22;
    v2 = v21;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2520A5448(v12, v13, aBlock);
    v23 = v80;
    _os_log_impl(&dword_25207E000, v80, v16, "[%{public}s] Waiting: %s", v18, 0x16u);
    v24 = v66;
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v24, -1, -1);
    v25 = v18;
    v9 = v77;
    v11 = v78;
    MEMORY[0x253099FD0](v25, -1, -1);
  }

  else
  {
  }

  if (*(v1 + 161) == 1 && (v1[24] & 1) == 0)
  {
    v26 = sub_25214196C();
    v27 = sub_252141F9C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v80 = v14;
      v30 = v29;
      aBlock[0] = v29;
      *v28 = 136446210;
      v31 = sub_2521425DC();
      v33 = v3;
      v34 = sub_2520A5448(v31, v32, aBlock);

      *(v28 + 4) = v34;
      v3 = v33;
      _os_log_impl(&dword_25207E000, v26, v27, "[%{public}s] User requested to stop", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x253099FD0](v30, -1, -1);
      v35 = v28;
      v9 = v77;
      v11 = v78;
      MEMORY[0x253099FD0](v35, -1, -1);
    }

    *(v1 + 192) = 1;
  }

  v36 = *(v1 + 160);
  if (v36 == 1)
  {
    LODWORD(v80) = 1;

    v37 = sub_25214196C();
    v38 = sub_252141F9C();

    v39 = os_log_type_enabled(v37, v38);
    v65 = v3;
    v64 = v2;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136446466;
      v42 = sub_2521425DC();
      v44 = sub_2520A5448(v42, v43, aBlock);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = v73;
      *(v40 + 14) = sub_2520A5448(v73, v13, aBlock);
      _os_log_impl(&dword_25207E000, v37, v38, "[%{public}s] Signaled: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v41, -1, -1);
      MEMORY[0x253099FD0](v40, -1, -1);
    }

    else
    {

      v45 = v73;
    }

    *v11 = 250;
    v46 = v74;
    (*(v74 + 104))(v11, *MEMORY[0x277D85178], v9);
    v47 = v1[18];
    if (v47)
    {
      v48 = v1[19];
      v62[1] = v1[23];
      v66 = v1 + 18;

      v49 = v67;
      sub_252141AAC();
      MEMORY[0x253098C70](v49, v11);
      v50 = *(v79 + 8);
      v79 += 8;
      v63 = v50;
      v50(v49, v76);
      v51 = swift_allocObject();
      v51[2] = v1;
      v51[3] = v45;
      v51[4] = v13;
      v51[5] = v47;
      v62[0] = v48;
      v52 = v64;
      v51[6] = v48;
      v51[7] = v52;
      aBlock[4] = sub_2520CEF54;
      aBlock[5] = v51;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2520A3B78;
      aBlock[3] = &block_descriptor_5;
      v53 = _Block_copy(aBlock);
      sub_2520A283C(v47, v48);

      v54 = v68;
      sub_252141A6C();
      v81 = MEMORY[0x277D84F90];
      sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520CEEB8(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
      v55 = v70;
      v56 = v65;
      sub_25214218C();
      v57 = v75;
      MEMORY[0x253099170](v75, v54, v55, v53);
      _Block_release(v53);
      sub_2520A1FE4(v47, v62[0]);
      (*(v72 + 8))(v55, v56);
      (*(v69 + 8))(v54, v71);
      v63(v57, v76);
      (*(v46 + 8))(v78, v77);

      v58 = v1[18];
      v59 = v1[19];
      v60 = v66;
      *v66 = 0;
      v60[1] = 0;
      sub_2520A1FE4(v58, v59);
    }

    else
    {
      (*(v46 + 8))(v11, v9);
    }

    return v80;
  }

  else
  {
  }

  return v36;
}

uint64_t sub_2520CE400(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void, void), uint64_t a5, uint64_t a6)
{
  swift_retain_n();

  v10 = sub_25214196C();
  v11 = sub_252141FBC();

  if (os_log_type_enabled(v10, v11))
  {
    v19 = a4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446978;
    v14 = sub_2521425DC();
    v16 = sub_2520A5448(v14, v15, &v20);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2520A5448(a2, a3, &v20);
    *(v12 + 22) = 1024;
    LODWORD(v16) = *(a1 + 56);

    *(v12 + 24) = v16;

    *(v12 + 28) = 2048;
    v17 = *(a1 + 136);

    *(v12 + 30) = v17;

    _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] was stopped - calling completion: %s at frame count: %d with %lu silent buffers", v12, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v13, -1, -1);
    MEMORY[0x253099FD0](v12, -1, -1);

    return v19(*(a1 + 16), *(a1 + 24));
  }

  else
  {

    return a4(*(a1 + 16), *(a1 + 24));
  }
}

void *sub_2520CE5E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v13 = v12;
  v85 = *v12;
  v26 = sub_2521418EC();
  v87 = *(v26 - 8);
  v88 = v26;
  MEMORY[0x28223BE20](v26);
  v86 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25214198C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 14) = 0;
  *(v13 + 128) = 0;
  *(v13 + 192) = 0;
  v13[18] = 0;
  v13[19] = 0;
  v13[17] = 0;
  *(v13 + 80) = 0;
  v32 = OBJC_IVAR____TtC11HearingTest15HTToneGenerator_logger;
  if (qword_27F4CD728 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v33 = __swift_project_value_buffer(v28, qword_27F4CDEC8);
    v84 = v29;
    v34 = *(v29 + 16);
    v29 += 16;
    v82 = v34;
    v34(v13 + v32, v33, v28);
    v13[23] = a2;
    *(v13 + 5) = a5;
    v83 = v32;
    if (a8 <= 1.0)
    {
      a8 = 1.0;
      if (a10 <= 1.0)
      {
        goto LABEL_10;
      }
    }

    else if (a10 <= a8)
    {
      goto LABEL_10;
    }

    if (*&a8 >> 52 > 0x7FEuLL)
    {
      if ((*&a8 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        a10 = a8;
      }
    }

    else
    {
      a10 = a8;
    }

LABEL_10:
    *(v13 + 4) = a6;
    *(v13 + 176) = a6 == 0.0;
    *(v13 + 14) = 0;
    *(v13 + 128) = 0;
    v32 = v13[18];
    v35 = v13[19];
    v13[18] = a3;
    v13[19] = a4;
    v36 = a2;

    result = sub_2520A1FE4(v32, v35);
    if (a10 == 0.0)
    {
      v38 = 0;
    }

    else
    {
      v39 = ceil(a10 / 1000.0 * a5);
      if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_72;
      }

      if (v39 <= -9.22337204e18)
      {
        goto LABEL_73;
      }

      if (v39 >= 9.22337204e18)
      {
        goto LABEL_74;
      }

      v38 = v39;
    }

    v13[13] = v38;
    if (a1)
    {
      v40 = a1;
    }

    else
    {
      v40 = -1;
    }

    v13[10] = v40;
    v41 = ceil(a8 / 1000.0 * a5);
    if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v41 <= -9.22337204e18)
    {
      goto LABEL_61;
    }

    if (v41 >= 9.22337204e18)
    {
      goto LABEL_62;
    }

    v42 = v41;
    v13[11] = v41;
    if (a9 == 0.0)
    {
      v43 = 0;
    }

    else
    {
      v44 = ceil(a9 / 1000.0 * a5);
      if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_75;
      }

      if (v44 <= -9.22337204e18)
      {
        goto LABEL_76;
      }

      if (v44 >= 9.22337204e18)
      {
        goto LABEL_78;
      }

      v43 = v44;
    }

    v45 = fmax(a11, 0.0);
    v13[12] = v43;
    if (v45 == 0.0)
    {
      v46 = 0;
    }

    else
    {
      v47 = ceil(v45 / 1000.0 * a5);
      if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_77;
      }

      if (v47 <= -9.22337204e18)
      {
        goto LABEL_79;
      }

      if (v47 >= 9.22337204e18)
      {
        goto LABEL_81;
      }

      v46 = v47;
    }

    v48 = fmax(a12, 0.0);
    if (v48 == 0.0)
    {
      v49 = 0;
      v50 = -v46;
      if (!__OFSUB__(0, v46))
      {
        break;
      }

      goto LABEL_58;
    }

    v81 = ceil(v48 / 1000.0 * a5);
    if ((*&v81 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_80;
    }

    if (v81 <= -9.22337204e18)
    {
      goto LABEL_82;
    }

    if (v81 >= 9.22337204e18)
    {
      goto LABEL_83;
    }

    v49 = v81;
    v50 = -v46;
    if (!__OFSUB__(0, v46))
    {
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

  v13[9] = v50;
  v51 = __OFADD__(v42, v38);
  v52 = v42 + v38;
  if (v51)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v13[14] = v52;
  v51 = __OFSUB__(v43, v38);
  v53 = v43 - v38;
  if (v51)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (__OFSUB__(0, v53))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v13[15] = -v53;
  v54 = v52 * a1;
  if ((v52 * a1) >> 64 != (v52 * a1) >> 63)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v55 = v46 + v54;
  if (__OFADD__(v46, v54))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v56 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v57 = v53 * v56;
  if ((v53 * v56) >> 64 != (v53 * v56) >> 63)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v58 = v55 + v57;
  if (__OFADD__(v55, v57))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v51 = __OFADD__(v58, v49);
  v59 = v58 + v49;
  if (v51)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
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
    return result;
  }

  v13[21] = v59;
  v60 = __exp10(a7 * 0.05);
  if (v60 > 1.0)
  {
    v82(v31, v13 + v83, v28);
    v61 = sub_25214196C();
    v62 = sub_252141FAC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v89 = v64;
      *v63 = 136446722;
      v65 = sub_2521425DC();
      v67 = sub_2520A5448(v65, v66, &v89);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2048;
      *(v63 + 14) = a7;
      *(v63 + 22) = 2048;
      *(v63 + 24) = v60;
      _os_log_impl(&dword_25207E000, v61, v62, "[%{public}s] Playing a tone above amplitude 1.0 (dBFS: %f amplitude: %f).", v63, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x253099FD0](v64, -1, -1);
      MEMORY[0x253099FD0](v63, -1, -1);
    }

    (*(v84 + 8))(v31, v28);
  }

  *(v13 + 6) = v60;
  v68 = v86;
  sub_2521418DC();
  v69 = sub_2521418AC();
  v71 = v70;
  (*(v87 + 8))(v68, v88);
  v13[2] = v69;
  v13[3] = v71;
  *(v13 + 8) = a6 / a5;
  swift_retain_n();

  v72 = sub_25214196C();
  v73 = sub_252141F9C();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v89 = v75;
    *v74 = 136446978;
    v76 = sub_2521425DC();
    v78 = sub_2520A5448(v76, v77, &v89);

    *(v74 + 4) = v78;
    *(v74 + 12) = 2048;
    *(v74 + 14) = 0x4003333333333333;
    *(v74 + 22) = 2080;
    v79 = sub_2520A5448(v69, v71, &v89);

    *(v74 + 24) = v79;
    *(v74 + 32) = 2048;
    v80 = v13[21];

    *(v74 + 34) = v80;

    _os_log_impl(&dword_25207E000, v72, v73, "[%{public}s] Version: %f  Created: %s - duration: %ld", v74, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v75, -1, -1);
    MEMORY[0x253099FD0](v74, -1, -1);
  }

  else
  {
  }

  sub_2520CD0D0();
  return v13;
}

uint64_t sub_2520CEE6C()
{
  result = sub_2520CDADC();
  if ((result & 1) == 0)
  {

    return sub_2520CD0D0();
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2520CEEB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2520CEF0C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2520CEF6C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for ContinuationItem(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t HTANCFailureReason.hashValue.getter()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

uint64_t HTTonePlayerError.hashValue.getter()
{
  sub_25214255C();
  MEMORY[0x253099700](0);
  return sub_25214258C();
}

uint64_t sub_2520CF160()
{
  sub_25214255C();
  MEMORY[0x253099700](0);
  return sub_25214258C();
}

uint64_t sub_2520CF1CC()
{
  sub_25214255C();
  MEMORY[0x253099700](0);
  return sub_25214258C();
}

id sub_2520CF20C()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  qword_27F4CDFC0 = -1;
  qword_27F4CDFC8 = result;
  return result;
}

uint64_t sub_2520CF27C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t HTTonePlayer.__allocating_init(_:)(void *a1)
{
  swift_allocObject();
  sub_2520D7D60(a1);
  v3 = v2;

  return v3;
}

uint64_t HTTonePlayer.init(_:)(void *a1)
{
  sub_2520D7D60(a1);
  v3 = v2;

  return v3;
}

uint64_t sub_2520CF3F0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2520D7558(result);
  }

  return result;
}

uint64_t sub_2520CF448(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2520D8D7C();
  }

  return result;
}

char *HTTonePlayer.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_25214198C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  isa = v4[2].isa;
  v50 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_htLogger;
  v45 = isa;
  (isa)(&v44 - v8, &v1[OBJC_IVAR____TtC11HearingTest12HTTonePlayer_htLogger], v3, v7);
  v11 = sub_25214196C();
  LOBYTE(v12) = sub_252141FBC();
  v13 = os_log_type_enabled(v11, v12);
  v14 = 0x27F4CD000uLL;
  v44 = v2;
  if (!v13)
  {

    v49 = v4[1].isa;
    v49(v9, v3);
    v12 = v3;
    v11 = v4;
    goto LABEL_5;
  }

  v47 = v3;
  v48 = v4;
  v15 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  v52[0] = v2;
  *v15 = 136446466;
  v16 = sub_2521425DC();
  v18 = sub_2520A5448(v16, v17, v52);

  *(v15 + 4) = v18;
  *(v15 + 12) = 2048;
  if (qword_27F4CD778 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    swift_beginAccess();
    v19 = qword_27F4CDFC0;
    v20 = qword_27F4CDFC8;
    [v20 lock];
    [v20 unlock];

    *(v15 + 14) = v19;
    _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] Deinit tone player (%ld)", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v2);
    MEMORY[0x253099FD0](v2, -1, -1);
    MEMORY[0x253099FD0](v15, -1, -1);

    v12 = v47;
    v11 = v48;
    v49 = v48[1].isa;
    v49(v9, v47);
    v14 = 0x27F4CD000;
LABEL_5:
    if (*(v14 + 1912) != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = qword_27F4CDFC0;
    v9 = qword_27F4CDFC8;
    v15 = 0x2796F5000uLL;
    [v9 lock];
    [v9 unlock];

    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (!v22)
    {
      break;
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  swift_beginAccess();
  v24 = qword_27F4CDFC8;
  [qword_27F4CDFC8 lock];
  qword_27F4CDFC0 = v23;
  [v24 unlock];
  swift_endAccess();
  v25 = objc_opt_self();
  v26 = [v25 defaultCenter];
  [v26 removeObserver:v1 name:*MEMORY[0x277D76E48] object:0];

  v27 = [v25 defaultCenter];
  [v27 removeObserver:v1 name:*MEMORY[0x277D76E80] object:0];

  if (*(v1 + 5))
  {
    if (v1[56])
    {
      swift_unknownObjectRetain();
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_25214209C();
    }

    v40 = v49;
    swift_getObjectType();
    sub_25214208C();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = v11;
    v28 = v46;
    v45(v46, &v1[v50], v12);
    v29 = sub_25214196C();
    v30 = sub_252141FAC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v12;
      v33 = v32;
      v51[0] = v32;
      *v31 = 136446466;
      v34 = sub_2521425DC();
      v36 = sub_2520A5448(v34, v35, v51);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2048;
      v37 = qword_27F4CDFC0;
      v38 = qword_27F4CDFC8;
      [v38 lock];
      [v38 unlock];

      *(v31 + 14) = v37;
      _os_log_impl(&dword_25207E000, v29, v30, "[%{public}s] Deinit HT_HEARTBEAT not setup (%ld)", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      v39 = v33;
      v12 = v47;
      MEMORY[0x253099FD0](v39, -1, -1);
      MEMORY[0x253099FD0](v31, -1, -1);
    }

    v40 = v49;
    v49(v28, v12);
  }

  sub_2520D737C();
  v41 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationsCache;
  swift_beginAccess();
  *&v1[v41] = 0;

  *(v1 + 5) = 0;
  swift_unknownObjectRelease();
  v42 = *(v1 + 6);
  *(v1 + 6) = 0;

  swift_unknownObjectRelease();

  v40(&v1[OBJC_IVAR____TtC11HearingTest12HTTonePlayer_logger], v12);
  v40(&v1[v50], v12);

  return v1;
}

uint64_t HTTonePlayer.__deallocating_deinit()
{
  HTTonePlayer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2520CFBA8(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = *v1;
  return MEMORY[0x2822009F8](sub_2520CFBF0, 0, 0);
}

uint64_t sub_2520CFBF0()
{
  v30 = v0;
  if (sub_2520D34B0())
  {
    v0[29] = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_htLogger;
    v1 = sub_25214196C();
    isEscapingClosureAtFileLocation = sub_252141FBC();
    v3 = &loc_252143000;
    if (!os_log_type_enabled(v1, isEscapingClosureAtFileLocation))
    {

      goto LABEL_9;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v29 = v5;
    *v4 = 136446466;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v29);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    if (qword_27F4CD778 != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      swift_beginAccess();
      v9 = qword_27F4CDFC0;
      v10 = qword_27F4CDFC8;
      [v10 lock];
      [v10 unlock];

      *(v4 + 14) = v9;
      _os_log_impl(&dword_25207E000, v1, isEscapingClosureAtFileLocation, "[%{public}s] enableANCHearingTestModeWithReason enable arbitration blocking mode (%ld).", v4, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x253099FD0](v5, -1, -1);
      MEMORY[0x253099FD0](v4, -1, -1);

      v3 = &loc_252143000;
LABEL_9:
      v13 = *(v0[27] + 32) + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode;
      v14 = *v13;
      if (*v13)
      {
        v15 = *(v13 + 8);

        v14(1);
        sub_2520A1FE4(v14, v15);
      }

      v16 = sub_25214196C();
      v17 = sub_252141FBC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v29 = v19;
        *v18 = v3[327];
        v20 = sub_2521425DC();
        v22 = sub_2520A5448(v20, v21, &v29);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2048;
        if (qword_27F4CD778 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v23 = qword_27F4CDFC0;
        v24 = qword_27F4CDFC8;
        [v24 lock];
        [v24 unlock];

        *(v18 + 14) = v23;
        _os_log_impl(&dword_25207E000, v16, v17, "[%{public}s] Sending enable ANC hearing test mode message (%ld).", v18, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x253099FD0](v19, -1, -1);
        MEMORY[0x253099FD0](v18, -1, -1);
      }

      v25 = *(v0[27] + 24);
      v0[30] = v25;
      v4 = *&v25[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
      v1 = swift_allocObject();
      *(v1 + 16) = v25;
      *(v1 + 24) = 0;
      v5 = swift_allocObject();
      v5[2] = sub_2520D8CD8;
      v5[3] = v1;
      v0[6] = sub_2520AD484;
      v0[7] = v5;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_252083924;
      v0[5] = &block_descriptor_4;
      v26 = _Block_copy(v0 + 2);
      v25;

      dispatch_sync(v4, v26);
      _Block_release(v26);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_20:
      swift_once();
    }

    v27 = swift_task_alloc();
    v0[31] = v27;
    *v27 = v0;
    v27[1] = sub_2520D0148;
    v28 = v0[26];

    return sub_2521085B4(1, &unk_28644E0F8, &unk_28644E120, v28, 3);
  }

  else
  {
    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_2520D0148(char a1)
{
  *(*v1 + 264) = a1;

  return MEMORY[0x2822009F8](sub_2520D0248, 0, 0);
}

uint64_t sub_2520D0248(uint64_t a1)
{
  v41 = v1;
  if (*(v1 + 264))
  {
    v2 = *(v1 + 216);
    if (*(v2 + 56))
    {
      v3 = sub_25214196C();
      v4 = sub_252141FAC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v40 = v6;
        *v5 = 136446466;
        v7 = sub_2521425DC();
        v9 = sub_2520A5448(v7, v8, &v40);

        *(v5 + 4) = v9;
        *(v5 + 12) = 2048;
        if (qword_27F4CD778 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v10 = qword_27F4CDFC0;
        v11 = qword_27F4CDFC8;
        [v11 lock];
        [v11 unlock];

        *(v5 + 14) = v10;
        v12 = "[%{public}s] HT_HEARTBEAT timer already resumed, no-op (%ld)";
LABEL_24:
        _os_log_impl(&dword_25207E000, v3, v4, v12, v5, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x253099FD0](v6, -1, -1);
        MEMORY[0x253099FD0](v5, -1, -1);
      }
    }

    else
    {
      if (*(v2 + 40))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_25214209C();
        *(v2 + 56) = 1;
        v25 = sub_25214196C();
        v26 = sub_252141FBC();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v40 = v28;
          *v27 = 136446466;
          v29 = sub_2521425DC();
          v31 = sub_2520A5448(v29, v30, &v40);

          *(v27 + 4) = v31;
          *(v27 + 12) = 2048;
          if (qword_27F4CD778 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v32 = qword_27F4CDFC0;
          v33 = qword_27F4CDFC8;
          [v33 lock];
          [v33 unlock];

          *(v27 + 14) = v32;
          _os_log_impl(&dword_25207E000, v25, v26, "[%{public}s] HT_HEARTBEAT timer resumed (%ld)", v27, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x253099FD0](v28, -1, -1);
          MEMORY[0x253099FD0](v27, -1, -1);
        }

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      v3 = sub_25214196C();
      v4 = sub_252141FAC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v40 = v6;
        *v5 = 136446466;
        v34 = sub_2521425DC();
        v36 = sub_2520A5448(v34, v35, &v40);

        *(v5 + 4) = v36;
        *(v5 + 12) = 2048;
        if (qword_27F4CD778 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v37 = qword_27F4CDFC0;
        v38 = qword_27F4CDFC8;
        [v38 lock];
        [v38 unlock];

        *(v5 + 14) = v37;
        v12 = "[%{public}s] HT_HEARTBEAT timer not setup (%ld)";
        goto LABEL_24;
      }
    }

LABEL_26:
    v39 = *(v1 + 8);

    return v39(1);
  }

  v13 = sub_25214196C();
  v14 = sub_252141FAC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40 = v16;
    *v15 = 136446466;
    v17 = sub_2521425DC();
    v19 = sub_2520A5448(v17, v18, &v40);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    if (qword_27F4CD778 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = qword_27F4CDFC0;
    v21 = qword_27F4CDFC8;
    [v21 lock];
    [v21 unlock];

    *(v15 + 14) = v20;
    _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] Failed to send HT_START Command (%ld).", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x253099FD0](v16, -1, -1);
    MEMORY[0x253099FD0](v15, -1, -1);
  }

  v22 = swift_task_alloc();
  *(v1 + 256) = v22;
  *v22 = v1;
  v22[1] = sub_2520D08C0;
  v23 = *(v1 + 208);

  return sub_2521085B4(1, &unk_28644E148, &unk_28644E170, v23, 3);
}

uint64_t sub_2520D08C0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2520D09BC()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2520D0A50;

  return sub_2520CFBA8(5);
}

uint64_t sub_2520D0A50(char a1)
{
  *(*v1 + 33) = a1;

  return MEMORY[0x2822009F8](sub_2520D0B50, 0, 0);
}

uint64_t sub_2520D0B50()
{
  if ((*(v0 + 33) & 1) == 0)
  {
    v2 = *(*(v0 + 16) + 24);
    *(swift_task_alloc() + 16) = v2;
    sub_25214200C();

    v3 = *(v0 + 32);
    sub_2520D8D18();
    swift_allocError();
    *v4 = v3;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2520D0C50(uint64_t a1)
{
  v2 = v1;
  v68 = *MEMORY[0x277D85DE8];
  isEscapingClosureAtFileLocation = sub_25214196C();
  LOBYTE(v4) = sub_252141FBC();
  if (!os_log_type_enabled(isEscapingClosureAtFileLocation, v4))
  {
    goto LABEL_4;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  aBlock = v6;
  *v5 = 136446466;
  v7 = sub_2521425DC();
  v9 = sub_2520A5448(v7, v8, &aBlock);

  *(v5 + 4) = v9;
  *(v5 + 6) = 2048;
  if (qword_27F4CD778 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    swift_beginAccess();
    v10 = qword_27F4CDFC0;
    v11 = qword_27F4CDFC8;
    [v11 lock];
    [v11 unlock];

    *(v5 + 14) = v10;
    _os_log_impl(&dword_25207E000, isEscapingClosureAtFileLocation, v4, "[%{public}s] disableANCHearingTestMode (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
LABEL_4:

    if (*(v2 + 56) != 1)
    {
      v12 = sub_25214196C();
      v21 = sub_252141FAC();
      if (!os_log_type_enabled(v12, v21))
      {
        goto LABEL_20;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v22 = 136446466;
      v24 = sub_2521425DC();
      v26 = sub_2520A5448(v24, v25, &aBlock);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v27 = qword_27F4CDFC0;
      v28 = qword_27F4CDFC8;
      [v28 lock];
      [v28 unlock];

      *(v22 + 14) = v27;
      v29 = "[%{public}s] disableANCHearingTestMode HT_HEARTBEAT timer already suspended, no-op (%ld)";
LABEL_19:
      _os_log_impl(&dword_25207E000, v12, v21, v29, v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x253099FD0](v23, -1, -1);
      MEMORY[0x253099FD0](v22, -1, -1);
      goto LABEL_20;
    }

    if (!*(v2 + 40))
    {
      v12 = sub_25214196C();
      v21 = sub_252141FAC();
      if (!os_log_type_enabled(v12, v21))
      {
        goto LABEL_20;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v22 = 136446466;
      v30 = sub_2521425DC();
      v32 = sub_2520A5448(v30, v31, &aBlock);

      *(v22 + 4) = v32;
      *(v22 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v33 = qword_27F4CDFC0;
      v34 = qword_27F4CDFC8;
      [v34 lock];
      [v34 unlock];

      *(v22 + 14) = v33;
      v29 = "[%{public}s] disableANCHearingTestMode Accessory manager not setup (%ld)";
      goto LABEL_19;
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2521420AC();
    *(v2 + 56) = 0;
    v12 = sub_25214196C();
    v13 = sub_252141FBC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v14 = 136446466;
      v16 = sub_2521425DC();
      v18 = sub_2520A5448(v16, v17, &aBlock);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v19 = qword_27F4CDFC0;
      v20 = qword_27F4CDFC8;
      [v20 lock];
      [v20 unlock];

      *(v14 + 14) = v19;
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] disableANCHearingTestMode HT_HEARTBEAT timer suspended (%ld)", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x253099FD0](v15, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_20:

    v35 = sub_25214196C();
    v36 = sub_252141FBC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136446466;
      v39 = sub_2521425DC();
      v41 = sub_2520A5448(v39, v40, &aBlock);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v42 = qword_27F4CDFC0;
      v43 = qword_27F4CDFC8;
      [v43 lock];
      [v43 unlock];

      *(v37 + 14) = v42;
      _os_log_impl(&dword_25207E000, v35, v36, "[%{public}s] disableANCHearingTestMode Sending disable hearing test mode message (%ld)", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x253099FD0](v38, -1, -1);
      MEMORY[0x253099FD0](v37, -1, -1);
    }

    v44 = *(v2 + 24);
    v45 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue;
    v4 = *&v44[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = v44;
    *(isEscapingClosureAtFileLocation + 24) = 1;
    v6 = swift_allocObject();
    v6[2] = sub_2520DB0B0;
    v6[3] = isEscapingClosureAtFileLocation;
    v66 = sub_2520ADA58;
    v67 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_252083924;
    v65 = &block_descriptor_21;
    v46 = _Block_copy(&aBlock);
    v5 = v44;

    dispatch_sync(v4, v46);
    _Block_release(v46);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  sub_252104450(0, 0x1000000000000uLL, 0xD000000000000024, 0x8000000252149ED0);
  v47 = sub_25214196C();
  v48 = sub_252141FBC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock = v50;
    *v49 = 136446466;
    v51 = sub_2521425DC();
    v53 = sub_2520A5448(v51, v52, &aBlock);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2048;
    if (qword_27F4CD778 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v54 = qword_27F4CDFC0;
    v55 = qword_27F4CDFC8;
    [v55 lock];
    [v55 unlock];

    *(v49 + 14) = v54;
    _os_log_impl(&dword_25207E000, v47, v48, "[%{public}s] disableANCHearingTestMode disable arbitration blocking mode (%ld)", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x253099FD0](v50, -1, -1);
    MEMORY[0x253099FD0](v49, -1, -1);
  }

  v56 = *(v2 + 32) + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode;
  v57 = *v56;
  if (*v56)
  {
    v58 = *(v56 + 8);

    v57(0);
    sub_2520A1FE4(v57, v58);
  }

  sub_2520D8D7C();
  v59 = *&v44[v45];
  v2 = swift_allocObject();
  *(v2 + 16) = v5;
  *(v2 + 24) = 1;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_2520D9734;
  *(v60 + 24) = v2;
  v66 = sub_2520ADA58;
  v67 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = sub_252083924;
  v65 = &block_descriptor_31;
  v4 = _Block_copy(&aBlock);
  v6 = v67;
  v5 = v5;

  dispatch_sync(v59, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_34;
  }

  return sub_2520F85B8(0);
}

void sub_2520D17C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v68 - v4;
  v6 = objc_opt_self();
  v7 = [v6 processInfo];
  v8 = [v7 processName];

  v9 = sub_252141B9C();
  v11 = v10;

  v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v71 = "tat";
  v13 = sub_252141B6C();
  v14 = [v12 initWithSuiteName_];

  if (!v14)
  {
    __break(1u);
    goto LABEL_34;
  }

  v70 = "HTLastSessionTimestamp";
  v15 = sub_252141B6C();
  v16 = [v14 stringForKey_];

  if (v16)
  {
    v69 = v6;
    v17 = sub_252141B9C();
    v19 = v18;

    if (v9 == v17 && v11 == v19)
    {

      goto LABEL_8;
    }

    v20 = sub_25214247C();

    if (v20)
    {
LABEL_8:
      v68 = 0xD000000000000014;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v21 = qword_27F4CDFC0;
      v22 = qword_27F4CDFC8;
      [v22 lock];
      [v22 unlock];

      if (v21 < 1)
      {
        if (qword_27F4CD740 != -1)
        {
          swift_once();
        }

        v40 = sub_25214198C();
        __swift_project_value_buffer(v40, qword_27F4CDF10);
        v24 = sub_25214196C();
        v41 = sub_252141FBC();
        if (os_log_type_enabled(v24, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v72 = v43;
          *v42 = 136315138;
          v44 = [v69 processInfo];
          v45 = [v44 processName];

          v46 = sub_252141B9C();
          v48 = v47;

          v49 = sub_2520A5448(v46, v48, &v72);

          *(v42 + 4) = v49;
          _os_log_impl(&dword_25207E000, v24, v41, "Updating current session timestamp for %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x253099FD0](v43, -1, -1);
          v36 = v42;
          goto LABEL_24;
        }
      }

      else
      {
        if (qword_27F4CD740 != -1)
        {
          swift_once();
        }

        v23 = sub_25214198C();
        __swift_project_value_buffer(v23, qword_27F4CDF10);
        v24 = sub_25214196C();
        v25 = sub_252141FBC();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v72 = v27;
          *v26 = 136315394;
          v28 = [v69 processInfo];
          v29 = [v28 processName];

          v30 = sub_252141B9C();
          v32 = v31;

          v33 = sub_2520A5448(v30, v32, &v72);

          *(v26 + 4) = v33;
          *(v26 + 12) = 2048;
          v34 = qword_27F4CDFC0;
          v35 = qword_27F4CDFC8;
          [v35 lock];
          [v35 unlock];

          *(v26 + 14) = v34;
          _os_log_impl(&dword_25207E000, v24, v25, "Updating current session timestamp for %s (%ld)", v26, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x253099FD0](v27, -1, -1);
          v36 = v26;
LABEL_24:
          MEMORY[0x253099FD0](v36, -1, -1);
        }
      }

      v50 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v51 = sub_252141B6C();
      v52 = [v50 initWithSuiteName_];

      if (v52)
      {
        sub_25214187C();
        v53 = sub_25214188C();
        v54 = *(v53 - 8);
        (*(v54 + 56))(v5, 0, 1, v53);
        sub_2520AA46C(v5, v2);
        v55 = 0;
        if ((*(v54 + 48))(v2, 1, v53) != 1)
        {
          v55 = sub_25214185C();
          (*(v54 + 8))(v2, v53);
        }

        v56 = sub_252141B6C();
        [v52 setValue:v55 forKey:v56];

        swift_unknownObjectRelease();
        sub_2520A2584(v5, &qword_27F4CDD08, &unk_252144B00);
        v57 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v58 = sub_252141B6C();
        v59 = [v57 initWithSuiteName_];

        if (v59)
        {
          v60 = [v69 processInfo];
          v61 = [v60 processName];

          if (!v61)
          {
            sub_252141B9C();
            v61 = sub_252141B6C();
          }

          v62 = sub_252141B6C();
          [v59 setValue:v61 forKey:v62];

          v63 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
          v64 = sub_252141B6C();
          v65 = [v63 initWithSuiteName_];

          if (v65)
          {
            sub_2520DC654();
            v66 = sub_252141B6C();

            v67 = sub_252141B6C();
            [v65 setValue:v66 forKey:v67];

            return;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
  }

  v71 = sub_25214196C();
  v37 = sub_252141FAC();
  if (os_log_type_enabled(v71, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_25207E000, v71, v37, "This process should not update a different process timestamp!", v38, 2u);
    MEMORY[0x253099FD0](v38, -1, -1);
  }

  v39 = v71;
}

uint64_t sub_2520D20E4(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_25214196C();
  v6 = sub_252141F9C();
  v7 = &loc_252143000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446466;
    v10 = v4;
    v11 = sub_2521425DC();
    v13 = sub_2520A5448(v11, v12, aBlock);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2048;
    if (qword_27F4CD778 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = qword_27F4CDFC0;
    v15 = qword_27F4CDFC8;
    [v15 lock];
    [v15 unlock];

    *(v8 + 14) = v14;
    _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] Attempting to start audio session (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);

    v4 = v10;
    v7 = &loc_252143000;
  }

  else
  {
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v16 = sub_25214198C();
  __swift_project_value_buffer(v16, qword_27F4CDE68);
  v17 = sub_25214196C();
  v18 = sub_252141FBC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = v7[327];
    v21 = v4;
    v22 = sub_2521425DC();
    v24 = sub_2520A5448(v22, v23, aBlock);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    if (qword_27F4CD778 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v25 = qword_27F4CDFC0;
    v26 = qword_27F4CDFC8;
    [v26 lock];
    [v26 unlock];

    *(v19 + 14) = v25;
    _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] startAudioSession enable arbitration blocking mode (%ld)", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x253099FD0](v20, -1, -1);
    MEMORY[0x253099FD0](v19, -1, -1);

    v4 = v21;
  }

  else
  {
  }

  v27 = v3[4] + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode;
  v28 = *v27;
  if (*v27)
  {
    v29 = *(v27 + 8);

    v28(1);
    sub_2520A1FE4(v28, v29);
  }

  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    v30 = sub_25214196C();
    v31 = sub_252141FAC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_25207E000, v30, v31, "Audio Session is in an interrupted state.", v32, 2u);
      MEMORY[0x253099FD0](v32, -1, -1);
    }

    LOBYTE(aBlock[0]) = 2;
    return a1(aBlock);
  }

  else
  {
    v34 = v3[13];
    swift_beginAccess();
    *(v34 + 24) = 1;
    v35 = swift_allocObject();
    v35[2] = v3;
    v35[3] = a1;
    v35[4] = a2;
    v35[5] = v4;

    sub_2520DE7F8(sub_2520D9748, v35, 0, 0);

    sub_2520D17C0();
    v36 = v3[3];
    v37 = *&v36[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    *(v38 + 24) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_2520D9754;
    *(v39 + 24) = v38;
    aBlock[4] = sub_2520ADA58;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252083924;
    aBlock[3] = &block_descriptor_44;
    v40 = _Block_copy(aBlock);
    v41 = v36;

    dispatch_sync(v37, v40);
    _Block_release(v40);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2520D270C(void *a1, uint64_t a2, void (*a3)(id *), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    *&v86 = a1;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
    sub_2520A5A94(0, &unk_27F4CE0C0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v8 = v84[0];
      if ([v84[0] code] == -16)
      {
        swift_beginAccess();
        if (*(a2 + 16))
        {
LABEL_15:
          LOBYTE(v84[0]) = 2;
          v23 = v84;
LABEL_33:
          a3(v23);
LABEL_34:

          return;
        }

        *(a2 + 16) = 1;
        v9 = v8;
        v10 = sub_25214196C();
        v11 = sub_252141FBC();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 138412290;
          *(v12 + 4) = v9;
          *v13 = v9;
          v14 = v9;
          _os_log_impl(&dword_25207E000, v10, v11, "Audio session interruption began. { error=%@ }", v12, 0xCu);
          sub_2520A2584(v13, &unk_27F4CE080, &qword_252144E30);
          MEMORY[0x253099FD0](v13, -1, -1);
          v15 = v12;
LABEL_13:
          MEMORY[0x253099FD0](v15, -1, -1);
          goto LABEL_14;
        }

        goto LABEL_14;
      }

      if ([v84[0] code] == -17)
      {
        swift_beginAccess();
        *(a2 + 16) = 0;
        v8 = v8;
        v10 = sub_25214196C();
        v19 = sub_252141FBC();

        if (os_log_type_enabled(v10, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v8;
          *v21 = v8;
          v22 = v8;
          _os_log_impl(&dword_25207E000, v10, v19, "Audio session interruption ended. { error=%@ }", v20, 0xCu);
          sub_2520A2584(v21, &unk_27F4CE080, &qword_252144E30);
          MEMORY[0x253099FD0](v21, -1, -1);
          v15 = v20;
          goto LABEL_13;
        }

LABEL_14:

        goto LABEL_15;
      }

      if ([v84[0] code] == -1)
      {
        v8 = v84[0];
        v30 = sub_25214196C();
        v31 = sub_252141FAC();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          *(v32 + 4) = v8;
          *v33 = v8;
          v34 = v8;
          _os_log_impl(&dword_25207E000, v30, v31, "Failed to start audio session. { error=%@ }", v32, 0xCu);
          sub_2520A2584(v33, &unk_27F4CE080, &qword_252144E30);
          MEMORY[0x253099FD0](v33, -1, -1);
          MEMORY[0x253099FD0](v32, -1, -1);
        }

        LOBYTE(v86) = 0;
        goto LABEL_32;
      }

      if ([v84[0] code] == -2)
      {
        v8 = v84[0];
        v24 = sub_25214196C();
        v25 = sub_252141FAC();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138412290;
          *(v26 + 4) = v8;
          *v27 = v8;
          v28 = v8;
          v29 = "Audio session route was changed. { error=%@ }";
LABEL_29:
          _os_log_impl(&dword_25207E000, v24, v25, v29, v26, 0xCu);
          sub_2520A2584(v27, &unk_27F4CE080, &qword_252144E30);
          MEMORY[0x253099FD0](v27, -1, -1);
LABEL_30:
          MEMORY[0x253099FD0](v26, -1, -1);
          goto LABEL_31;
        }

        goto LABEL_31;
      }

      if ([v84[0] code] != -3)
      {
        v8 = v84[0];
        v24 = sub_25214196C();
        v25 = sub_252141FAC();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138412290;
          *(v26 + 4) = v8;
          *v27 = v8;
          v37 = v8;
          v29 = "Unknown audio session interruption. { error=%@ }";
          goto LABEL_29;
        }

LABEL_31:

        LOBYTE(v86) = 2;
LABEL_32:
        v23 = &v86;
        goto LABEL_33;
      }

      v35 = [objc_opt_self() sharedAVSystemController];
      if (!v35)
      {
        v24 = sub_25214196C();
        v38 = sub_252141FAC();
        if (!os_log_type_enabled(v24, v38))
        {
          goto LABEL_31;
        }

        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_25207E000, v24, v38, "Failed to access shared AVSystemController.", v26, 2u);
        goto LABEL_30;
      }

      v36 = v35;
      if ([v35 attributeForKey_])
      {
        sub_25214215C();
        swift_unknownObjectRelease();
      }

      else
      {
        *v84 = 0u;
        v85 = 0u;
      }

      v86 = *v84;
      v87 = v85;
      if (*(&v85 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v82 == 1)
        {
          v39 = sub_25214196C();
          v40 = sub_252141F9C();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v84[0] = v42;
            *v41 = 136446466;
            v43 = sub_2521425DC();
            v45 = sub_2520A5448(v43, v44, v84);

            *(v41 + 4) = v45;
            *(v41 + 12) = 2048;
            if (qword_27F4CD778 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v46 = qword_27F4CDFC0;
            v47 = qword_27F4CDFC8;
            [v47 lock];
            [v47 unlock];

            *(v41 + 14) = v46;
            v48 = "[%{public}s] Detected interruption of phone call type. (%ld)";
            v49 = v40;
            v50 = v39;
            v51 = v41;
            v52 = 22;
            goto LABEL_64;
          }

          goto LABEL_65;
        }
      }

      else
      {
        sub_2520A2584(&v86, &unk_27F4CE0B0, &unk_252144AF0);
      }

      if ([v36 attributeForKey_])
      {
        sub_25214215C();
        swift_unknownObjectRelease();
      }

      else
      {
        *v84 = 0u;
        v85 = 0u;
      }

      v86 = *v84;
      v87 = v85;
      if (*(&v85 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v82 == 0x794D646E6946 && v83 == 0xE600000000000000 || (sub_25214247C() & 1) != 0 || v82 == 0x636E656772656D45 && v83 == 0xEF737472656C4179 || (sub_25214247C() & 1) != 0)
          {

            v53 = sub_25214196C();
            v54 = sub_252141F9C();

            if (os_log_type_enabled(v53, v54))
            {
              v81 = v54;
              v55 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              v84[0] = v79;
              *v55 = 136446722;
              v56 = sub_2521425DC();
              v58 = sub_2520A5448(v56, v57, v84);

              *(v55 + 4) = v58;
              *(v55 + 12) = 2080;
              v59 = sub_2520A5448(v82, v83, v84);

              *(v55 + 14) = v59;
              *(v55 + 22) = 2048;
              if (qword_27F4CD778 != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              v60 = qword_27F4CDFC0;
              v61 = qword_27F4CDFC8;
              [v61 lock];
              [v61 unlock];

              *(v55 + 24) = v60;
              _os_log_impl(&dword_25207E000, v53, v81, "[%{public}s] Detected active category change interruption that does not require checks. { activeCategory=%s } (%ld)", v55, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x253099FD0](v79, -1, -1);
              MEMORY[0x253099FD0](v55, -1, -1);
            }

            else
            {
            }

            v66 = 3;
            goto LABEL_68;
          }

          v67 = sub_25214196C();
          v68 = sub_252141F9C();

          v80 = v68;
          if (os_log_type_enabled(v67, v68))
          {
            log = v67;
            v69 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v84[0] = v77;
            *v69 = 136446722;
            v70 = sub_2521425DC();
            v72 = sub_2520A5448(v70, v71, v84);

            *(v69 + 4) = v72;
            *(v69 + 12) = 2080;
            v73 = sub_2520A5448(v82, v83, v84);
            v74 = v69;

            *(v69 + 14) = v73;
            *(v69 + 22) = 2048;
            if (qword_27F4CD778 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v75 = qword_27F4CDFC0;
            v76 = qword_27F4CDFC8;
            [v76 lock];
            [v76 unlock];

            *(v74 + 24) = v75;
            v67 = log;
            _os_log_impl(&dword_25207E000, log, v80, "[%{public}s] Detected active category change interruption that requires checks. { activeCategory=%s } (%ld)", v74, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x253099FD0](v77, -1, -1);
            MEMORY[0x253099FD0](v74, -1, -1);
          }

          else
          {
          }
        }
      }

      else
      {
        sub_2520A2584(&v86, &unk_27F4CE0B0, &unk_252144AF0);
      }

      v39 = sub_25214196C();
      v62 = sub_252141F9C();
      if (os_log_type_enabled(v39, v62))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v84[0] = v42;
        *v41 = 136446210;
        v63 = sub_2521425DC();
        v65 = sub_2520A5448(v63, v64, v84);

        *(v41 + 4) = v65;
        v48 = "[%{public}s] Detected interruption that requires checks.";
        v49 = v62;
        v50 = v39;
        v51 = v41;
        v52 = 12;
LABEL_64:
        _os_log_impl(&dword_25207E000, v50, v49, v48, v51, v52);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x253099FD0](v42, -1, -1);
        MEMORY[0x253099FD0](v41, -1, -1);
      }

LABEL_65:

      v66 = 2;
LABEL_68:
      LOBYTE(v84[0]) = v66;
      a3(v84);

      goto LABEL_34;
    }
  }

  v16 = sub_25214196C();
  v17 = sub_252141FAC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_25207E000, v16, v17, "Failed to cast NSError.", v18, 2u);
    MEMORY[0x253099FD0](v18, -1, -1);
  }
}

uint64_t sub_2520D34B0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentRoute];

  v2 = [v1 outputs];
  v44 = sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
  v3 = sub_252141CDC();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_27:

    v33 = sub_25214196C();
    v34 = sub_252141FAC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = v36;
      *v35 = 136446466;
      v37 = sub_2521425DC();
      v39 = sub_2520A5448(v37, v38, &v45);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = MEMORY[0x253098E80](v3, v44);
      v42 = v41;

      v43 = sub_2520A5448(v40, v42, &v45);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_25207E000, v33, v34, "[%{public}s] audioPortValid no valid output found in %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v36, -1, -1);
      MEMORY[0x253099FD0](v35, -1, -1);
    }

    else
    {
    }

    return 0;
  }

LABEL_26:
  v4 = sub_25214232C();
  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_3:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2530993D0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v9 = [v6 portType];
    v10 = sub_252141B9C();
    v12 = v11;
    if (v10 == sub_252141B9C() && v12 == v13)
    {
      break;
    }

    v15 = sub_25214247C();

    if (v15)
    {
      goto LABEL_20;
    }

    v9 = [v7 portType];
    v16 = sub_252141B9C();
    v18 = v17;
    if (v16 == sub_252141B9C() && v18 == v19)
    {
      break;
    }

    v20 = sub_25214247C();

    if (v20)
    {
      goto LABEL_20;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_27;
    }
  }

LABEL_20:

  v21 = sub_25214196C();
  v22 = sub_252141F9C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v45 = v24;
    *v23 = 136446466;
    v25 = sub_2521425DC();
    v27 = sub_2520A5448(v25, v26, &v45);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = MEMORY[0x253098E80](v3, v44);
    v30 = v29;

    v31 = sub_2520A5448(v28, v30, &v45);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_25207E000, v21, v22, "[%{public}s] audioPortValid valid output found in %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v24, -1, -1);
    MEMORY[0x253099FD0](v23, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_2520D3A04(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Handle interruption notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(v2 + 16) = 0;
  return result;
}

uint64_t sub_2520D3B94(NSObject *a1, char *a2, char *a3, uint64_t isEscapingClosureAtFileLocation)
{
  v5 = v4;
  v35 = *v4;
  v10 = sub_25214196C();
  v11 = sub_252141FBC();
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_4;
  }

  v12 = swift_slowAlloc();
  *v12 = 134217984;
  if (qword_27F4CD778 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    swift_beginAccess();
    v13 = qword_27F4CDFC0;
    v14 = qword_27F4CDFC8;
    [v14 lock];
    [v14 unlock];

    *(v12 + 4) = v13;
    _os_log_impl(&dword_25207E000, v10, v11, "Attempting to start audio session (%ld)", v12, 0xCu);
    MEMORY[0x253099FD0](v12, -1, -1);
LABEL_4:

    v15 = v5[13];
    swift_beginAccess();
    *(v15 + 24) = 1;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v16 = sub_25214198C();
    __swift_project_value_buffer(v16, qword_27F4CDE68);
    v17 = sub_25214196C();
    v18 = sub_252141FBC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v19 = 136446210;
      v20 = sub_2521425DC();
      v22 = a2;
      v23 = isEscapingClosureAtFileLocation;
      v24 = a3;
      v25 = sub_2520A5448(v20, v21, aBlock);

      *(v19 + 4) = v25;
      a3 = v24;
      isEscapingClosureAtFileLocation = v23;
      a2 = v22;
      _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] startHTAudioSession enable arbitration blocking mode ", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x253099FD0](v34, -1, -1);
      MEMORY[0x253099FD0](v19, -1, -1);
    }

    v26 = (v5[4] + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode);
    v12 = *v26;
    if (*v26)
    {
      v27 = v26[1];

      (v12)(1);
      sub_2520A1FE4(v12, v27);
    }

    v28 = swift_allocObject();
    v28[2] = v5;
    v28[3] = a1;
    v28[4] = a2;
    v28[5] = v35;
    v29 = swift_allocObject();
    *(v29 + 16) = a3;
    *(v29 + 24) = isEscapingClosureAtFileLocation;

    sub_2520DE7F8(sub_2520D9760, v28, sub_25209D474, v29);

    sub_2520D17C0();
    a3 = v5[3];
    v11 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue;
    v30 = *&a3[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
    v5 = swift_allocObject();
    v5[2] = a3;
    *(v5 + 24) = 1;
    v10 = swift_allocObject();
    v10[2].isa = sub_2520DB0B4;
    v10[3].isa = v5;
    aBlock[4] = sub_2520ADA58;
    v37 = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252083924;
    aBlock[3] = &block_descriptor_61;
    v31 = _Block_copy(aBlock);
    a1 = v37;
    a2 = a3;

    dispatch_sync(v30, v31);
    _Block_release(v31);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  MEMORY[0x28223BE20](v32);
  sub_25214200C();
  return LOBYTE(aBlock[0]);
}

void sub_2520D40E8(void *a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4, uint64_t a5)
{
  v6 = sub_25214196C();
  v7 = sub_252141F9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v74 = v9;
    *v8 = 136446210;
    v10 = sub_2521425DC();
    v12 = sub_2520A5448(v10, v11, &v74);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] HearingTest audio session status changed.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  v13 = [objc_opt_self() sharedAVSystemController];
  if (!v13)
  {
    v15 = sub_25214196C();
    v16 = sub_252141FAC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_25207E000, v15, v16, "Failed to access shared AVSystemController.", v17, 2u);
      MEMORY[0x253099FD0](v17, -1, -1);
    }

    LOBYTE(v74) = 2;
    a3(&v74);
    return;
  }

  v14 = v13;
  if ([v13 attributeForKey_])
  {
    sub_25214215C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v72 = 0u;
    v73 = 0u;
  }

  v74 = *v72;
  v75 = v73;
  if (*(&v73 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v70 == 1)
    {
      v18 = sub_25214196C();
      v19 = sub_252141F9C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v74 = v21;
        *v20 = 136446210;
        v22 = sub_2521425DC();
        v24 = sub_2520A5448(v22, v23, &v74);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_25207E000, v18, v19, "[%{public}s] Detected interruption of phone call type.", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x253099FD0](v21, -1, -1);
        MEMORY[0x253099FD0](v20, -1, -1);
      }

      LOBYTE(v74) = 2;
LABEL_42:
      a3(&v74);

      return;
    }
  }

  else
  {
    sub_2520A2584(&v74, &unk_27F4CE0B0, &unk_252144AF0);
  }

  if ([v14 attributeForKey_])
  {
    sub_25214215C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v72 = 0u;
    v73 = 0u;
  }

  v74 = *v72;
  v75 = v73;
  if (!*(&v73 + 1))
  {
    sub_2520A2584(&v74, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_31;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    if (!a1 || (*&v74 = a1, v35 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40), sub_2520A5A94(0, &unk_27F4CE0C0, 0x277CCA9B8), (swift_dynamicCast() & 1) == 0))
    {
      v43 = sub_25214196C();
      v44 = sub_252141FAC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_25207E000, v43, v44, "Failed to cast NSError.", v45, 2u);
        MEMORY[0x253099FD0](v45, -1, -1);
      }

      return;
    }

    if ([v72[0] code] == -1)
    {
      v36 = v72[0];
      v46 = sub_25214196C();
      v47 = sub_252141FAC();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        *(v48 + 4) = v36;
        *v49 = v36;
        v50 = v36;
        _os_log_impl(&dword_25207E000, v46, v47, "Failed to start audio session. { error=%@ }", v48, 0xCu);
        sub_2520A2584(v49, &unk_27F4CE080, &qword_252144E30);
        MEMORY[0x253099FD0](v49, -1, -1);
        MEMORY[0x253099FD0](v48, -1, -1);
      }

      LOBYTE(v74) = 0;
      goto LABEL_52;
    }

    if ([v72[0] code] == -2)
    {
      v36 = v72[0];
      v37 = sub_25214196C();
      v38 = sub_252141FAC();

      if (!os_log_type_enabled(v37, v38))
      {
LABEL_51:

        LOBYTE(v74) = 2;
LABEL_52:
        a3(&v74);

        return;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      v42 = "Audio session route was changed. { error=%@ }";
    }

    else
    {
      if ([v72[0] code] == -3)
      {

        return;
      }

      v36 = v72[0];
      v37 = sub_25214196C();
      v38 = sub_252141FAC();

      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_51;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = v36;
      v51 = v36;
      v42 = "Unknown audio session interruption. { error=%@ }";
    }

    _os_log_impl(&dword_25207E000, v37, v38, v42, v39, 0xCu);
    sub_2520A2584(v40, &unk_27F4CE080, &qword_252144E30);
    MEMORY[0x253099FD0](v40, -1, -1);
    MEMORY[0x253099FD0](v39, -1, -1);
    goto LABEL_51;
  }

  if (v70 == 0x794D646E6946 && v71 == 0xE600000000000000 || (sub_25214247C() & 1) != 0 || v70 == 0x636E656772656D45 && v71 == 0xEF737472656C4179 || (sub_25214247C() & 1) != 0)
  {

    v25 = sub_25214196C();
    v26 = sub_252141F9C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = a3;
      v29 = swift_slowAlloc();
      *&v74 = v29;
      *v27 = 136446466;
      v30 = sub_2521425DC();
      v32 = sub_2520A5448(v30, v31, &v74);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      v33 = sub_2520A5448(v70, v71, &v74);

      *(v27 + 14) = v33;
      _os_log_impl(&dword_25207E000, v25, v26, "[%{public}s] Detected active category change interruption that does not require checks. { activeCategory=%s }", v27, 0x16u);
      swift_arrayDestroy();
      v34 = v29;
      a3 = v28;
      MEMORY[0x253099FD0](v34, -1, -1);
      MEMORY[0x253099FD0](v27, -1, -1);
    }

    else
    {
    }

    LOBYTE(v74) = 3;
    goto LABEL_42;
  }

  v69 = a3;

  v52 = sub_25214196C();
  v53 = sub_252141F9C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v74 = v67;
    *v54 = 136446466;
    v55 = sub_2521425DC();
    log = v52;
    v57 = sub_2520A5448(v55, v56, &v74);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2080;
    v58 = sub_2520A5448(v70, v71, &v74);

    *(v54 + 14) = v58;
    v52 = log;
    _os_log_impl(&dword_25207E000, log, v53, "[%{public}s] Detected active category change interruption that requires checks. { activeCategory=%s }", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v67, -1, -1);
    MEMORY[0x253099FD0](v54, -1, -1);
  }

  else
  {
  }

  v59 = sub_25214196C();
  v60 = sub_252141F9C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v74 = v62;
    *v61 = 136446210;
    v63 = sub_2521425DC();
    v65 = sub_2520A5448(v63, v64, &v74);

    *(v61 + 4) = v65;
    _os_log_impl(&dword_25207E000, v59, v60, "[%{public}s] Detected interruption that requires checks.", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x253099FD0](v62, -1, -1);
    MEMORY[0x253099FD0](v61, -1, -1);
  }

  LOBYTE(v74) = 2;
  v69(&v74);
}

uint64_t sub_2520D4C40(void *a1, uint64_t isEscapingClosureAtFileLocation)
{
  v3 = v2;
  v6 = sub_25214196C();
  v7 = sub_252141FBC();
  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_4;
  }

  v8 = swift_slowAlloc();
  *v8 = 134217984;
  if (qword_27F4CD778 != -1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    swift_beginAccess();
    v9 = qword_27F4CDFC0;
    v10 = qword_27F4CDFC8;
    [v10 lock];
    [v10 unlock];

    *(v8 + 4) = v9;
    _os_log_impl(&dword_25207E000, v6, v7, "Attempting to stop audio session (%ld)", v8, 0xCu);
    MEMORY[0x253099FD0](v8, -1, -1);
LABEL_4:

    v11 = v3[13];
    swift_beginAccess();
    *(v11 + 24) = 1;
    v12 = swift_allocObject();
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = isEscapingClosureAtFileLocation;

    sub_2520DFFDC(sub_2520D9814, v12);

    v8 = v3[3];
    v13 = *(v8 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
    v3 = swift_allocObject();
    v3[2] = v8;
    *(v3 + 24) = 0;
    v6 = swift_allocObject();
    v6[2].isa = sub_2520DB0B4;
    v6[3].isa = v3;
    aBlock[4] = sub_2520ADA58;
    v17 = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252083924;
    aBlock[3] = &block_descriptor_75;
    a1 = _Block_copy(aBlock);
    v7 = v17;
    v14 = v8;

    dispatch_sync(v13, a1);
    _Block_release(a1);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_6:
    swift_once();
  }

  return result;
}

void sub_2520D4F20(void *a1, uint64_t a2, void (*a3)(char *))
{
  if (a1)
  {
    v6 = a1;
    v7 = sub_25214196C();
    v8 = sub_252141FAC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_25207E000, v7, v8, "Failed to stop audio session. { error=%@ }", v9, 0xCu);
      sub_2520A2584(v10, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v10, -1, -1);
      MEMORY[0x253099FD0](v9, -1, -1);
    }

    if (*(*(a2 + 104) + 65) == 1)
    {
      v13 = sub_25214196C();
      v14 = sub_252141FAC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_25207E000, v13, v14, "Audio session stop failed due to already inactivated", v15, 2u);
        MEMORY[0x253099FD0](v15, -1, -1);
      }

      swift_beginAccess();
      *(a2 + 16) = 0;
    }

    v16 = 1;
    a3(&v16);
  }

  else
  {
    sub_2520E1D90();
  }
}

uint64_t sub_2520D5110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = sub_2521418EC();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v9);
  v74 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - v12;
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  sub_2520D68F8(a2, a3, &v71 - v12);
  if (v14 >= 0.0)
  {
    v42 = sub_2521420CC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    v72 = v8;
    v43 = qword_27F4CDF28;
    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v44 = sub_25214195C();
    v45 = __swift_project_value_buffer(v44, qword_27F4CDF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_252143AB0;
    v47 = MEMORY[0x277D839F8];
    v48 = MEMORY[0x277D83A80];
    *(v46 + 56) = MEMORY[0x277D839F8];
    *(v46 + 64) = v48;
    *(v46 + 32) = v14;
    *(v46 + 96) = v47;
    *(v46 + 104) = v48;
    *(v46 + 72) = v15;
    LOBYTE(v70) = 2;
    sub_25214193C(v42, &dword_25207E000, v43, "HT tone playback", 16, 2, v45, "Request, freq %f, lvl %f", COERCE_DOUBLE(24), v70);

    byte_27F4D34A0 = 0;
    v49 = sub_25214196C();
    v50 = sub_252141F9C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *&v52 = COERCE_DOUBLE(swift_slowAlloc());
      v73 = v10;
      v53 = v13;
      v54 = v52;
      v77 = *&v52;
      *v51 = 136447234;
      v55 = sub_2521425DC();
      v57 = sub_2520A5448(v55, v56, &v77);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2048;
      *(v51 + 14) = v14;
      *(v51 + 22) = 2048;
      *(v51 + 24) = v15;
      *(v51 + 32) = 2048;
      *(v51 + 34) = v17;
      *(v51 + 42) = 2048;
      *(v51 + 44) = v16;
      _os_log_impl(&dword_25207E000, v49, v50, "[%{public}s] Tone playback requested. { frequency=%f, level=%f, duration=%f, ch=%ld }", v51, 0x34u);
      __swift_destroy_boxed_opaque_existential_0(v54);
      v58 = v54;
      v13 = v53;
      v10 = v73;
      MEMORY[0x253099FD0](v58, -1, -1);
      MEMORY[0x253099FD0](v51, -1, -1);
    }

    v77 = v14;
    v78 = v15;
    LOBYTE(v79) = v16;
    v80 = v17;
    sub_2520D7944(&v77);
    v73 = v59;
    v60 = v4[13];
    swift_beginAccess();
    *(v60 + 24) = 1;
    *(v4 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone) = 1;
    v61 = swift_allocObject();
    swift_weakInit();
    v62 = v74;
    v37 = v75;
    v38 = v76;
    (*(v75 + 16))(v74, v13, v76);
    v63 = *(v37 + 80);
    v71 = v4;
    v64 = (v63 + 24) & ~v63;
    v65 = v10 + v64 + 7;
    v18 = v13;
    v66 = v65 & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    *(v67 + 16) = v61;
    (*(v37 + 32))(v67 + v64, v62, v38);
    *(v67 + v66) = v72;

    v68 = v73;
    sub_2520E0844(v73, sub_2520D9928, v67);

    sub_2520D17C0();
  }

  else
  {
    v73 = v10;
    v18 = v13;
    type metadata accessor for HTAudioDeviceCapturedVolume();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 18) = 0;
    *(inited + 24) = 0;
    v20 = type metadata accessor for AVSessionCategoryVolume();
    *(inited + 32) = [objc_allocWithZone(v20) init];
    *(inited + 40) = [objc_allocWithZone(v20) init];
    sub_2520E6A2C(0.8125);
    v21 = sub_25214196C();
    v22 = sub_252141F9C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = COERCE_DOUBLE(swift_slowAlloc());
      v77 = v24;
      *v23 = 136446466;
      v25 = sub_2521425DC();
      v27 = sub_2520A5448(v25, v26, &v77);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v28 = qword_27F4CDFC0;
      v29 = qword_27F4CDFC8;
      [v29 lock];
      [v29 unlock];

      *(v23 + 14) = v28;
      _os_log_impl(&dword_25207E000, v21, v22, "[%{public}s] Ear completion tone playback requested (%ld)", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(*&v24);
      MEMORY[0x253099FD0](*&v24, -1, -1);
      MEMORY[0x253099FD0](v23, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE008, &unk_252144710);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_252143AB0;
    v77 = COERCE_DOUBLE(sub_252141B9C());
    v78 = v31;
    sub_2521421DC();
    *(v30 + 96) = MEMORY[0x277D839B0];
    *(v30 + 72) = 1;
    v77 = *MEMORY[0x277CBA660];
    v32 = v77;
    type metadata accessor for CFString(0);
    sub_2520DAFF4(&qword_27F4CD810, type metadata accessor for CFString, &unk_252143848);
    v33 = *&v32;
    sub_2521421DC();
    *(v30 + 168) = MEMORY[0x277D839F8];
    *(v30 + 144) = 0x3FE0000000000000;
    sub_25209CF0C(v30);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB68, &qword_252143D18);
    swift_arrayDestroy();
    v34 = sub_252141B0C();

    v35 = swift_allocObject();
    swift_weakInit();
    v36 = v74;
    v37 = v75;
    v38 = v76;
    (*(v75 + 16))(v74, v18, v76);
    v39 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v35;
    (*(v37 + 32))(v40 + v39, v36, v38);
    v81 = sub_2520D99D8;
    v82 = v40;
    v77 = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_2520A3B78;
    v80 = &block_descriptor_88;
    v41 = _Block_copy(&v77);

    AudioServicesPlaySystemSoundWithOptions();
    _Block_release(v41);

    swift_setDeallocating();
    sub_2520E6788();
    swift_deallocClassInstance();
  }

  return (*(v37 + 8))(v18, v38);
}

uint64_t sub_2520D5A50(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v27 = a1;
  v29 = sub_252141A4C();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_252141A8C();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2521418EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_252141ABC();
  v26 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  AudioServicesDisposeSystemSoundID(0x491u);
  sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
  v23 = sub_252141FFC();
  sub_252141AAC();
  sub_252141AEC();
  v25 = *(v10 + 8);
  v25(v12, v9);
  (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v6);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v27;
  (*(v7 + 32))(v17 + v16, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  aBlock[4] = sub_2520DAF10;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_147_1;
  v18 = _Block_copy(aBlock);

  sub_252141A6C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2520DAFF4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520CEEB8(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
  v19 = v28;
  v20 = v29;
  sub_25214218C();
  v21 = v23;
  MEMORY[0x253099170](v15, v5, v19, v18);
  _Block_release(v18);

  (*(v32 + 8))(v19, v20);
  (*(v30 + 8))(v5, v31);
  return (v25)(v15, v26);
}

uint64_t sub_2520D5EF8(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2520D6BD4(a2, 0);
  }

  return result;
}

uint64_t sub_2520D5F5C(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = sub_2521418EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v44[-v12];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = *(v8 + 16);
    v47 = a4;
    if (a2)
    {
      v16(v13, a4, v7);
      v17 = a2;
      v18 = sub_25214196C();
      v19 = sub_252141FBC();

      if (!os_log_type_enabled(v18, v19))
      {

        (*(v8 + 8))(v13, v7);
        goto LABEL_10;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45 = v19;
      v22 = v21;
      v46 = swift_slowAlloc();
      v48 = v46;
      *v20 = 136446722;
      v23 = sub_2521425DC();
      v25 = sub_2520A5448(v23, v24, &v48);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      v26 = a2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v27;
      *v22 = v27;
      *(v20 + 22) = 2080;
      sub_2520DAFF4(&qword_27F4CE078, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v28 = sub_25214244C();
      v30 = v29;
      (*(v8 + 8))(v13, v7);
      v31 = sub_2520A5448(v28, v30, &v48);

      *(v20 + 24) = v31;
      _os_log_impl(&dword_25207E000, v18, v45, "[%{public}s] Err %@ %s", v20, 0x20u);
      sub_2520A2584(v22, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v22, -1, -1);
      v32 = v46;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v32, -1, -1);
      v33 = v20;
    }

    else
    {
      v16(v10, a4, v7);
      v18 = sub_25214196C();
      v34 = sub_252141FBC();
      if (!os_log_type_enabled(v18, v34))
      {

        (*(v8 + 8))(v10, v7);
        goto LABEL_10;
      }

      v35 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v35 = 136446466;
      v36 = sub_2521425DC();
      v38 = sub_2520A5448(v36, v37, &v48);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      sub_2520DAFF4(&qword_27F4CE078, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v39 = sub_25214244C();
      v41 = v40;
      (*(v8 + 8))(v10, v7);
      v42 = sub_2520A5448(v39, v41, &v48);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_25207E000, v18, v34, "[%{public}s] playbackTone completed %s", v35, 0x16u);
      v43 = v46;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v43, -1, -1);
      v33 = v35;
    }

    MEMORY[0x253099FD0](v33, -1, -1);

LABEL_10:
    sub_2520D6BD4(v47, a2);
    *(v15 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone) = 0;
  }

  return result;
}

void sub_2520D6444(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25214196C();
  v4 = sub_252141F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22[0] = v6;
    *v5 = 136446466;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, v22);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    if (qword_27F4CD778 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = qword_27F4CDFC0;
    v11 = qword_27F4CDFC8;
    [v11 lock];
    [v11 unlock];

    *(v5 + 14) = v10;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Tone stop requested (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v12 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone;
  if (*(v2 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone) == 1)
  {
    sub_2520E1D90();
    *(v2 + v12) = 0;
    v13 = sub_25214196C();
    v14 = sub_252141F9C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446466;
      v17 = sub_2521425DC();
      v19 = sub_2520A5448(v17, v18, &v23);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v20 = qword_27F4CDFC0;
      v21 = qword_27F4CDFC8;
      [v21 lock];
      [v21 unlock];

      *(v15 + 14) = v20;
      _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] Asked HTAudioDevice to stop playback (%ld)", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x253099FD0](v16, -1, -1);
      MEMORY[0x253099FD0](v15, -1, -1);
    }
  }
}

uint64_t HTTonePlayer.HTInterruptionType.hashValue.getter()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

uint64_t sub_2520D6804()
{
  v1 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_testMode;
  swift_beginAccess();
  return *(v0 + v1);
}