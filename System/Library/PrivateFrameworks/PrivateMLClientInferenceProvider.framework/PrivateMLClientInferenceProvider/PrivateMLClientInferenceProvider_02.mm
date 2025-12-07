char *sub_21D07A424()
{
  v141 = v0;
  v1 = *(v0 + 1528);
  *(v0 + 520) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 704);
    v4 = *(v0 + 696);
    v5 = *(v0 + 688);
    v6 = *(v0 + 680);
    v7 = *(v0 + 672);

    (*(v6 + 32))(v4, v3, v7);
    v137 = *(v6 + 16);
    v137(v5, v4, v7);

    v8 = sub_21D094210();
    v9 = sub_21D094570();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 688);
    v12 = *(v0 + 680);
    v13 = *(v0 + 672);
    if (v10)
    {
      v135 = v9;
      v14 = *(v0 + 624);
      v15 = *(v0 + 616);
      v16 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v140[0] = v133;
      *v16 = 136315394;
      *(v16 + 4) = sub_21D05550C(v15, v14, v140);
      *(v16 + 12) = 2080;
      sub_21D091B40(&qword_27CE544A0, MEMORY[0x277D29DE0], MEMORY[0x277D29DF0]);
      v17 = sub_21D094790();
      v19 = v18;
      v20 = *(v12 + 8);
      v20(v11, v13);
      v21 = sub_21D05550C(v17, v19, v140);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_21D044000, v8, v135, "Oneshot request %s failed: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v133, -1, -1);
      MEMORY[0x223D3CDF0](v16, -1, -1);
    }

    else
    {

      v20 = *(v12 + 8);
      v20(v11, v13);
    }

    v42 = *(v0 + 696);
    v43 = *(v0 + 672);
    v44 = *(v0 + 608);
    v45 = *(v0 + 600);
    v46 = *(v0 + 592);
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_allocError();
    v137(v47, v42, v43);
    swift_willThrow();

    v20(v42, v43);
    v48 = *(v0 + 520);
  }

  else
  {

    *(v0 + 528) = v1;
    v22 = v1;
    if (!swift_dynamicCast())
    {

      *(v0 + 536) = v1;
      v49 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54490, &qword_21D0964B0);
      if (swift_dynamicCast())
      {

        sub_21D046D78((v0 + 144), v0 + 304);
        sub_21D0590D0(v0 + 304, v0 + 344);
        sub_21D0590D0(v0 + 304, v0 + 384);
        sub_21D0590D0(v0 + 304, v0 + 424);
        v50 = sub_21D094210();
        v51 = sub_21D094550();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v140[0] = v53;
          *v52 = 136315650;
          __swift_project_boxed_opaque_existential_1((v0 + 344), *(v0 + 368));
          v54 = sub_21D094090();
          v56 = v55;
          __swift_destroy_boxed_opaque_existential_0((v0 + 344));
          v57 = sub_21D05550C(v54, v56, v140);

          *(v52 + 4) = v57;
          *(v52 + 12) = 2048;
          __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
          v58 = sub_21D093520();
          __swift_destroy_boxed_opaque_existential_0((v0 + 384));
          *(v52 + 14) = v58;
          *(v52 + 22) = 2080;
          __swift_project_boxed_opaque_existential_1((v0 + 424), *(v0 + 448));
          v59 = sub_21D093530();
          v61 = v60;
          __swift_destroy_boxed_opaque_existential_0((v0 + 424));
          v62 = sub_21D05550C(v59, v61, v140);

          *(v52 + 24) = v62;
          _os_log_impl(&dword_21D044000, v50, v51, "Request failed with PrivateMLClientError: %s %ld %s", v52, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223D3CDF0](v53, -1, -1);
          MEMORY[0x223D3CDF0](v52, -1, -1);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0((v0 + 384));

          __swift_destroy_boxed_opaque_existential_0((v0 + 344));
          __swift_destroy_boxed_opaque_existential_0((v0 + 424));
        }

        sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
        swift_allocError();
        v139 = v81;
        __swift_project_boxed_opaque_existential_1((v0 + 304), *(v0 + 328));
        sub_21D093530();
        __swift_project_boxed_opaque_existential_1((v0 + 304), *(v0 + 328));
        sub_21D094090();
        __swift_project_boxed_opaque_existential_1((v0 + 304), *(v0 + 328));
        result = sub_21D093520();
        if (!__OFADD__(result, 30000))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21D0959B0;
          *(inited + 32) = sub_21D0943F0();
          *(inited + 40) = v83;
          v84 = *(v0 + 328);
          v85 = *(v0 + 336);
          __swift_project_boxed_opaque_existential_1((v0 + 304), v84);
          *(inited + 48) = MEMORY[0x223D3C1D0](v84, *(v85 + 8));
          *(inited + 56) = v86;
          sub_21D0900B0(inited);
          swift_setDeallocating();
          sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
          v87 = *(v0 + 328);
          v88 = __swift_project_boxed_opaque_existential_1((v0 + 304), v87);
          v89 = *(v87 - 8);
          v90 = swift_task_alloc();
          (*(v89 + 16))(v90, v88, v87);
          if (sub_21D0947A0())
          {
            (*(v89 + 8))(v90, v87);
          }

          else
          {
            swift_allocError();
            (*(v89 + 32))(v113, v90, v87);
          }

          v114 = *(v0 + 680);
          v115 = *(v0 + 672);
          v116 = *(v0 + 608);
          v117 = *(v0 + 600);
          v118 = *(v0 + 592);
          sub_21D093EC0();

          (*(v114 + 104))(v139, *MEMORY[0x277D29DA8], v115);
          swift_willThrow();

          __swift_destroy_boxed_opaque_existential_0((v0 + 304));

          v66 = v118;
          v67 = v117;
          v68 = v116;
          goto LABEL_15;
        }

        __break(1u);
      }

      else
      {

        *(v0 + 544) = v1;
        v72 = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54378, &qword_21D0963A8);
        if (swift_dynamicCast())
        {

          sub_21D046D78((v0 + 184), v0 + 224);
          sub_21D0590D0(v0 + 224, v0 + 264);
          v73 = sub_21D094210();
          v74 = sub_21D094550();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            *v75 = 138412290;
            v77 = *(v0 + 288);
            v78 = __swift_project_boxed_opaque_existential_1((v0 + 264), v77);
            v79 = *(v77 - 8);
            v80 = swift_task_alloc();
            (*(v79 + 16))(v80, v78, v77);
            if (sub_21D0947A0())
            {
              (*(v79 + 8))(v80, v77);
            }

            else
            {
              swift_allocError();
              (*(v79 + 32))(v119, v80, v77);
            }

            v120 = _swift_stdlib_bridgeErrorToNSError();
            __swift_destroy_boxed_opaque_existential_0((v0 + 264));
            *(v75 + 4) = v120;
            *v76 = v120;
            _os_log_impl(&dword_21D044000, v73, v74, "Request failed with AppleIntelligenceError: %@", v75, 0xCu);
            sub_21D04D27C(v76, &qword_27CE54320, &qword_21D095EA0);
            MEMORY[0x223D3CDF0](v76, -1, -1);
            MEMORY[0x223D3CDF0](v75, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0((v0 + 264));
          }

          v121 = *(v0 + 248);
          v122 = __swift_project_boxed_opaque_existential_1((v0 + 224), v121);
          v123 = *(v121 - 8);
          v124 = swift_task_alloc();
          (*(v123 + 16))(v124, v122, v121);
          if (sub_21D0947A0())
          {
            (*(v123 + 8))(v124, v121);
          }

          else
          {
            swift_allocError();
            (*(v123 + 32))(v125, v124, v121);
          }

          v126 = *(v0 + 608);
          v127 = *(v0 + 600);
          v128 = *(v0 + 592);
          swift_willThrow();

          __swift_destroy_boxed_opaque_existential_0((v0 + 224));

          v66 = v128;
          v67 = v127;
          v68 = v126;
          goto LABEL_15;
        }

        v91 = v1;
        v92 = sub_21D094210();
        v93 = sub_21D094550();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v140[0] = v95;
          *v94 = 136315138;
          *(v0 + 560) = v1;
          v96 = v1;
          v97 = sub_21D094430();
          v99 = sub_21D05550C(v97, v98, v140);

          *(v94 + 4) = v99;
          _os_log_impl(&dword_21D044000, v92, v93, "Request failed: %s", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v95);
          MEMORY[0x223D3CDF0](v95, -1, -1);
          MEMORY[0x223D3CDF0](v94, -1, -1);
        }

        v100 = sub_21D092F10();
        sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
        swift_allocError();
        v102 = v101;
        *(v0 + 552) = v1;
        v103 = v1;
        sub_21D094430();
        v104 = [v100 domain];
        sub_21D0943F0();

        result = [v100 code];
        if (!__OFADD__(result, 40000))
        {
          v105 = *(v0 + 680);
          v131 = *(v0 + 600);
          v132 = *(v0 + 608);
          v129 = *(v0 + 672);
          v130 = *(v0 + 592);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
          v106 = swift_initStackObject();
          *(v106 + 16) = xmmword_21D0959B0;
          *(v106 + 32) = sub_21D0943F0();
          *(v106 + 40) = v107;
          v108 = [v100 description];
          v109 = sub_21D0943F0();
          v111 = v110;

          *(v106 + 48) = v109;
          *(v106 + 56) = v111;
          sub_21D0900B0(v106);
          swift_setDeallocating();
          sub_21D04D27C(v106 + 32, &qword_27CE542C0, &qword_21D095E28);
          v112 = v100;
          sub_21D093EC0();
          (*(v105 + 104))(v102, *MEMORY[0x277D29DA8], v129);
          swift_willThrow();

          v66 = v130;
          v67 = v131;
          v68 = v132;
          goto LABEL_15;
        }
      }

      __break(1u);
      return result;
    }

    v23 = *(v0 + 664);
    v24 = *(v0 + 656);
    v25 = *(v0 + 648);
    v26 = *(v0 + 640);
    v27 = *(v0 + 632);

    (*(v26 + 32))(v24, v23, v27);
    v138 = *(v26 + 16);
    v138(v25, v24, v27);

    v28 = sub_21D094210();
    v29 = sub_21D094570();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 648);
    v32 = *(v0 + 640);
    v33 = *(v0 + 632);
    if (v30)
    {
      v136 = v29;
      v34 = *(v0 + 624);
      v35 = *(v0 + 616);
      v36 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v140[0] = v134;
      *v36 = 136315394;
      *(v36 + 4) = sub_21D05550C(v35, v34, v140);
      *(v36 + 12) = 2080;
      sub_21D091B40(&qword_27CE54498, MEMORY[0x277D41440], MEMORY[0x277D41450]);
      v37 = sub_21D094790();
      v39 = v38;
      v40 = *(v32 + 8);
      v40(v31, v33);
      v41 = sub_21D05550C(v37, v39, v140);

      *(v36 + 14) = v41;
      _os_log_impl(&dword_21D044000, v28, v136, "%s One shot request failed with : %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v134, -1, -1);
      MEMORY[0x223D3CDF0](v36, -1, -1);
    }

    else
    {

      v40 = *(v32 + 8);
      v40(v31, v33);
    }

    v63 = *(v0 + 656);
    v64 = *(v0 + 632);
    v44 = *(v0 + 608);
    v45 = *(v0 + 600);
    v46 = *(v0 + 592);
    sub_21D091B40(&qword_27CE54380, MEMORY[0x277D41440], MEMORY[0x277D41448]);
    swift_allocError();
    v138(v65, v63, v64);
    swift_willThrow();

    v40(v63, v64);
    v48 = *(v0 + 528);
  }

  v66 = v46;
  v67 = v45;
  v68 = v44;
LABEL_15:
  sub_21D07BA24(v66, v67, v68);
  v69 = *(v0 + 1416);
  sub_21D04D27C(*(v0 + 1392), &qword_27CE54488, &unk_21D0964A0);
  sub_21D04D27C(v69, &qword_27CE54248, &unk_21D095CA0);

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_21D07BA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = a3;
  v3 = sub_21D0941C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21D094180();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21D0941A0();
  sub_21D0941D0();
  v12 = sub_21D094650();
  if (sub_21D094680())
  {

    sub_21D094200();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v11, v12, v15, "requestOneShot", v13, v14, 2u);
    MEMORY[0x223D3CDF0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  return sub_21D093640();
}

uint64_t sub_21D07BC88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 720) = v7;
  *(v8 + 712) = a7;
  *(v8 + 704) = a6;
  *(v8 + 696) = a5;
  *(v8 + 1072) = a4;
  *(v8 + 688) = a3;
  *(v8 + 680) = a2;
  *(v8 + 672) = a1;
  v9 = sub_21D093780();
  *(v8 + 728) = v9;
  *(v8 + 736) = *(v9 - 8);
  *(v8 + 744) = swift_task_alloc();
  v10 = sub_21D0930F0();
  *(v8 + 752) = v10;
  *(v8 + 760) = *(v10 - 8);
  *(v8 + 768) = swift_task_alloc();
  *(v8 + 776) = type metadata accessor for PrivateMLClientAlertService(0);
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  v11 = sub_21D093EF0();
  *(v8 + 800) = v11;
  *(v8 + 808) = *(v11 - 8);
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = swift_task_alloc();
  v12 = sub_21D093790();
  *(v8 + 832) = v12;
  *(v8 + 840) = *(v12 - 8);
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  v13 = sub_21D094080();
  *(v8 + 872) = v13;
  *(v8 + 880) = *(v13 - 8);
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = swift_task_alloc();
  v14 = sub_21D094230();
  *(v8 + 936) = v14;
  *(v8 + 944) = *(v14 - 8);
  *(v8 + 952) = swift_task_alloc();
  v15 = sub_21D094310();
  *(v8 + 960) = v15;
  *(v8 + 968) = *(v15 - 8);
  *(v8 + 976) = swift_task_alloc();
  v16 = sub_21D094180();
  *(v8 + 984) = v16;
  *(v8 + 992) = *(v16 - 8);
  *(v8 + 1000) = swift_task_alloc();
  v17 = sub_21D0936A0();
  *(v8 + 1008) = v17;
  *(v8 + 1016) = *(v17 - 8);
  *(v8 + 1024) = swift_task_alloc();
  sub_21D0936C0();
  *(v8 + 1032) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D07C10C, 0, 0);
}

uint64_t sub_21D07C10C()
{
  v31 = v0;
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  sub_21D0936F0();
  v4 = *(sub_21D093D00() - 8);
  swift_task_alloc();
  (*(v4 + 16))();
  sub_21D0900B0(MEMORY[0x277D84F90]);
  sub_21D093690();

  (*(v2 + 104))(v1, *MEMORY[0x277D41588], v3);
  sub_21D0936B0();
  v5 = sub_21D0936D0();
  v0[130] = v5;
  v6 = v5;
  sub_21D0941A0();
  sub_21D094150();

  v7 = sub_21D0941A0();
  v8 = sub_21D094670();

  v9 = sub_21D094680();
  v10 = v0[125];
  v11 = v0[124];
  v12 = v0[123];
  if (v9)
  {
    v28 = v8;
    v13 = v0[86];
    v14 = v0[85];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_21D05550C(v14, v13, &v30);
    v17 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v7, v28, v17, "executeWithPrivateMLClient", "PrivateMLClient created requestIdentifier=%{public, signpost.description=attribute,public}s)", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D3CDF0](v16, -1, -1);
    MEMORY[0x223D3CDF0](v15, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v18 = v0[119];
  v19 = v0[118];
  v20 = v0[117];
  v21 = v0[90];
  v22 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  v0[131] = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(v19 + 16))(v18, v21 + v22, v20);

  sub_21D093CD0();
  if (qword_281221758 != -1)
  {
    swift_once();
  }

  v23 = v0[88];

  sub_21D0942E0();
  v29 = (v23 + *v23);
  v24 = swift_task_alloc();
  v0[132] = v24;
  *v24 = v0;
  v24[1] = sub_21D07C680;
  v25 = v0[122];
  v26 = v0[84];

  return v29(v26, v6, v25);
}

uint64_t sub_21D07C680()
{
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v2 = sub_21D091FAC;
  }

  else
  {
    v2 = sub_21D091FC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D07C794(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 720) = v7;
  *(v8 + 712) = a7;
  *(v8 + 704) = a6;
  *(v8 + 696) = a5;
  *(v8 + 1072) = a4;
  *(v8 + 688) = a3;
  *(v8 + 680) = a2;
  *(v8 + 672) = a1;
  v9 = sub_21D093780();
  *(v8 + 728) = v9;
  *(v8 + 736) = *(v9 - 8);
  *(v8 + 744) = swift_task_alloc();
  v10 = sub_21D0930F0();
  *(v8 + 752) = v10;
  *(v8 + 760) = *(v10 - 8);
  *(v8 + 768) = swift_task_alloc();
  *(v8 + 776) = type metadata accessor for PrivateMLClientAlertService(0);
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  v11 = sub_21D093EF0();
  *(v8 + 800) = v11;
  *(v8 + 808) = *(v11 - 8);
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = swift_task_alloc();
  v12 = sub_21D093790();
  *(v8 + 832) = v12;
  *(v8 + 840) = *(v12 - 8);
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  v13 = sub_21D094080();
  *(v8 + 872) = v13;
  *(v8 + 880) = *(v13 - 8);
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = swift_task_alloc();
  v14 = sub_21D094230();
  *(v8 + 936) = v14;
  *(v8 + 944) = *(v14 - 8);
  *(v8 + 952) = swift_task_alloc();
  v15 = sub_21D094310();
  *(v8 + 960) = v15;
  *(v8 + 968) = *(v15 - 8);
  *(v8 + 976) = swift_task_alloc();
  v16 = sub_21D094180();
  *(v8 + 984) = v16;
  *(v8 + 992) = *(v16 - 8);
  *(v8 + 1000) = swift_task_alloc();
  v17 = sub_21D0936A0();
  *(v8 + 1008) = v17;
  *(v8 + 1016) = *(v17 - 8);
  *(v8 + 1024) = swift_task_alloc();
  sub_21D0936C0();
  *(v8 + 1032) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D07CC18, 0, 0);
}

uint64_t sub_21D07CC18()
{
  v31 = v0;
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  sub_21D0936F0();
  v4 = *(sub_21D093D00() - 8);
  swift_task_alloc();
  (*(v4 + 16))();
  sub_21D0900B0(MEMORY[0x277D84F90]);
  sub_21D093690();

  (*(v2 + 104))(v1, *MEMORY[0x277D41588], v3);
  sub_21D0936B0();
  v5 = sub_21D0936D0();
  v0[130] = v5;
  v6 = v5;
  sub_21D0941A0();
  sub_21D094150();

  v7 = sub_21D0941A0();
  v8 = sub_21D094670();

  v9 = sub_21D094680();
  v10 = v0[125];
  v11 = v0[124];
  v12 = v0[123];
  if (v9)
  {
    v28 = v8;
    v13 = v0[86];
    v14 = v0[85];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_21D05550C(v14, v13, &v30);
    v17 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v7, v28, v17, "executeWithPrivateMLClient", "PrivateMLClient created requestIdentifier=%{public, signpost.description=attribute,public}s)", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D3CDF0](v16, -1, -1);
    MEMORY[0x223D3CDF0](v15, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v18 = v0[119];
  v19 = v0[118];
  v20 = v0[117];
  v21 = v0[90];
  v22 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  v0[131] = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(v19 + 16))(v18, v21 + v22, v20);

  sub_21D093CD0();
  if (qword_281221758 != -1)
  {
    swift_once();
  }

  v23 = v0[88];

  sub_21D0942E0();
  v29 = (v23 + *v23);
  v24 = swift_task_alloc();
  v0[132] = v24;
  *v24 = v0;
  v24[1] = sub_21D07D18C;
  v25 = v0[122];
  v26 = v0[84];

  return v29(v26, v6, v25);
}

uint64_t sub_21D07D18C()
{
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v2 = sub_21D07D458;
  }

  else
  {
    v2 = sub_21D07D2A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D07D2A0()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[120];
  sub_21D094300();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21D07D458()
{
  v295 = v0;
  v1 = v0;
  v2 = v0[133];
  v0[76] = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54378, &qword_21D0963A8);
  v292 = v0;
  if (swift_dynamicCast())
  {
    v4 = v0[115];
    v5 = v0[110];
    v6 = v1[109];
    sub_21D0590D0((v1 + 23), (v1 + 33));
    __swift_project_boxed_opaque_existential_1(v1 + 33, v1[36]);
    sub_21D0940A0();
    v282 = *(v5 + 104);
    v282(v4, *MEMORY[0x277CEDEC8], v6);
    sub_21D091B40(&qword_27CE543A0, MEMORY[0x277CEDF00], MEMORY[0x277CEDF08]);
    sub_21D094490();
    sub_21D094490();
    if (v1[64] == v1[66] && v1[65] == v1[67])
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_21D0947D0();
    }

    v8 = v1[116];
    v9 = v1[109];
    v10 = *(v1[110] + 8);
    v10(v1[115], v9);
    v10(v8, v9);

    if (v7)
    {

      v11 = sub_21D094210();
      v12 = sub_21D094570();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = v1[86];
        v14 = v1[85];
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v293 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_21D05550C(v14, v13, &v293);
        _os_log_impl(&dword_21D044000, v11, v12, "%s denied request due to rate limit.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x223D3CDF0](v16, -1, -1);
        MEMORY[0x223D3CDF0](v15, -1, -1);
      }

      logMetric(logger:name:startInstant:)(v1[90] + v1[131], 0xD000000000000015, 0x800000021D097260);
      v17 = v1[36];
      v18 = __swift_project_boxed_opaque_existential_1(v1 + 33, v17);
      v19 = *(v17 - 8);
      v20 = swift_task_alloc();
      (*(v19 + 16))(v20, v18, v17);
      if (sub_21D0947A0())
      {
        (*(v19 + 8))(v20, v17);
      }

      else
      {
        swift_allocError();
        (*(v19 + 32))(v50, v20, v17);
      }

      v51 = v1[122];
      v52 = v1[121];
      v53 = v1[120];
      v54 = v1[108];
      v55 = v292[105];
      v56 = v292[104];
      sub_21D093770();

      (*(v55 + 104))(v54, *MEMORY[0x277D71AC0], v56);
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      swift_allocError();
      sub_21D093760();
      swift_willThrow();
      (*(v55 + 8))(v54, v56);
      v1 = v292;
      __swift_destroy_boxed_opaque_existential_0(v292 + 33);
      __swift_destroy_boxed_opaque_existential_0(v292 + 23);

      sub_21D094300();

      (*(v52 + 8))(v51, v53);
      goto LABEL_81;
    }

    v21 = v1[113];
    v22 = v1[109];
    __swift_destroy_boxed_opaque_existential_0(v1 + 33);
    sub_21D0590D0((v1 + 23), (v1 + 38));
    __swift_project_boxed_opaque_existential_1(v1 + 38, v1[41]);
    sub_21D0940A0();
    v282(v21, *MEMORY[0x277CEDED8], v22);
    sub_21D094490();
    sub_21D094490();
    v23 = v1[114];
    v24 = v1[113];
    v25 = v1[109];
    if (v1[68] == v1[70] && v1[69] == v1[71])
    {
      v10(v1[113], v1[109]);
      v10(v23, v25);

      goto LABEL_15;
    }

    v26 = sub_21D0947D0();
    v10(v24, v25);
    v10(v23, v25);

    if (v26)
    {
LABEL_15:

      v27 = sub_21D093CB0();
      v28 = *(v27 - 8);
      v29 = swift_task_alloc();
      sub_21D0590D0((v292 + 38), (v292 + 18));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543A8, &qword_21D0963C0);
      v30 = swift_task_alloc();
      v31 = sub_21D093CC0();
      v32 = swift_dynamicCast();
      v33 = *(*(v31 - 8) + 56);
      if (v32)
      {
        v34 = *(v31 - 8);
        v33(v30, 0, 1, v31);
        v35 = (*(v34 + 88))(v30, v31);
        if (MEMORY[0x277D412E8] && v35 == *MEMORY[0x277D412E8])
        {
          (*(v34 + 96))(v30, v31);
          (*(v28 + 32))(v29, v30, v27);

          v36 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543D0, &qword_21D0963D8);
          v37 = swift_task_alloc();
          buf = v36;
          sub_21D093CA0();
          v38 = swift_task_alloc();
          v39 = *MEMORY[0x277D412E0];
          v40 = sub_21D093C90();
          v41 = *(v40 - 8);
          (*(v41 + 104))(v38, v39, v40);
          (*(v41 + 56))(v38, 0, 1, v40);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543D8, &qword_21D0963E0) - 8;
          v43 = swift_task_alloc();
          v44 = *(v42 + 56);
          sub_21D05B270(v37, v43, &qword_27CE543D0, &qword_21D0963D8);
          sub_21D05B270(v38, v43 + v44, &qword_27CE543D0, &qword_21D0963D8);
          v45 = *(v41 + 48);
          if (v45(v43, 1, v40) == 1)
          {
            sub_21D04D27C(v38, &qword_27CE543D0, &qword_21D0963D8);
            sub_21D04D27C(v37, &qword_27CE543D0, &qword_21D0963D8);
            v46 = v45(v43 + v44, 1, v40);
            v47 = v292;
            v48 = v28;
            if (v46 == 1)
            {
              sub_21D04D27C(v43, &qword_27CE543D0, &qword_21D0963D8);

              v49 = buf;
LABEL_102:
              v70 = sub_21D093C80();
              v72 = v241;
              (*(v48 + 8))(v49, v27);
              goto LABEL_35;
            }
          }

          else
          {
            v276 = v37;
            v233 = swift_task_alloc();
            sub_21D05B270(v43, v233, &qword_27CE543D0, &qword_21D0963D8);
            if (v45(v43 + v44, 1, v40) != 1)
            {
              v239 = swift_task_alloc();
              (*(v41 + 32))(v239, v43 + v44, v40);
              sub_21D090FE0(&qword_27CE543E0, MEMORY[0x282228170], MEMORY[0x282228180]);
              v278 = sub_21D0943D0();
              v240 = *(v41 + 8);
              v240(v239, v40);
              sub_21D04D27C(v38, &qword_27CE543D0, &qword_21D0963D8);
              sub_21D04D27C(v276, &qword_27CE543D0, &qword_21D0963D8);
              v240(v233, v40);

              sub_21D04D27C(v43, &qword_27CE543D0, &qword_21D0963D8);

              v47 = v292;
              v49 = buf;
              v48 = v28;
              if (v278)
              {
                goto LABEL_102;
              }

              goto LABEL_96;
            }

            sub_21D04D27C(v38, &qword_27CE543D0, &qword_21D0963D8);
            sub_21D04D27C(v276, &qword_27CE543D0, &qword_21D0963D8);
            (*(v41 + 8))(v233, v40);

            v48 = v28;
          }

          sub_21D04D27C(v43, &qword_27CE543D8, &qword_21D0963E0);

          v49 = buf;
LABEL_96:
          (*(v48 + 8))(v49, v27);
LABEL_26:

          v57 = sub_21D093D30();
          v58 = *(v57 - 8);
          v59 = swift_task_alloc();
          sub_21D0590D0((v292 + 38), (v292 + 28));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543B0, &qword_21D0963C8);
          v60 = swift_task_alloc();
          v61 = swift_dynamicCast();
          v62 = *(v58 + 56);
          if (v61)
          {
            v62(v60, 0, 1, v57);
            (*(v58 + 32))(v59, v60, v57);

            v63 = sub_21D093D10();
            v64 = *(v63 - 8);
            v65 = swift_task_alloc();
            sub_21D093D20();
            v66 = swift_task_alloc();
            (*(v64 + 104))(v66, *MEMORY[0x277D41308], v63);
            sub_21D090FE0(&qword_27CE543C8, MEMORY[0x2822281B0], MEMORY[0x2822281B8]);
            sub_21D094490();
            sub_21D094490();
            v67 = *(v64 + 8);
            v67(v66, v63);
            v67(v65, v63);
            v68 = v292[82];
            v69 = v292[83];

            if (v68 == v69)
            {
              sub_21D090FE0(&qword_27CE543B8, MEMORY[0x2822281C0], MEMORY[0x2822281D0]);
              v70 = sub_21D094790();
              v72 = v71;
              (*(v58 + 8))(v59, v57);
            }

            else
            {
              (*(v58 + 8))(v59, v57);
              v70 = 0;
              v72 = 0;
            }

            v47 = v292;
          }

          else
          {
            v62(v60, 1, 1, v57);
            sub_21D04D27C(v60, &qword_27CE543B0, &qword_21D0963C8);

            v70 = 0;
            v72 = 0;
            v47 = v292;
          }

LABEL_35:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543C0, &qword_21D0963D0);
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_21D0959B0;
          bufa = v79;
          sub_21D0590D0((v47 + 38), v79 + 32);
          if (v72)
          {
            v80 = v72;

            v81 = sub_21D094210();
            v82 = sub_21D094570();

            if (os_log_type_enabled(v81, v82))
            {
              v83 = v47[86];
              v84 = v47[85];
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              v293 = v86;
              *v85 = 136380675;
              *(v85 + 4) = sub_21D05550C(v84, v83, &v293);
              _os_log_impl(&dword_21D044000, v81, v82, "%{private}s failed because nodes are busy.", v85, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v86);
              MEMORY[0x223D3CDF0](v86, -1, -1);
              MEMORY[0x223D3CDF0](v85, -1, -1);
            }

            v273 = v47[122];
            v87 = v47[121];
            v279 = v47[120];
            v88 = v47[101];
            v272 = v47[100];
            sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
            swift_allocError();
            v90 = v89;
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_21D0959B0;
            *(inited + 32) = sub_21D0943F0();
            *(inited + 40) = v92;
            *(inited + 48) = v70;
            *(inited + 56) = v80;

            sub_21D0900B0(inited);
            swift_setDeallocating();
            sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
            sub_21D090BF4();
            swift_allocError();
            *v93 = bufa;
            *(v93 + 8) = 3;
            sub_21D093EC0();
            v94 = v90;
            v1 = v292;
            (*(v88 + 104))(v94, *MEMORY[0x277D29D90], v272);
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_0(v292 + 38);
            __swift_destroy_boxed_opaque_existential_0(v292 + 23);

            sub_21D094300();

            (*(v87 + 8))(v273, v279);
          }

          else
          {
            v293 = 0;
            v294 = 0xE000000000000000;
            __swift_project_boxed_opaque_existential_1(v47 + 38, v47[41]);
            sub_21D0947B0();

            v95 = sub_21D094210();
            v96 = sub_21D094570();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = v47[86];
              v98 = v47[85];
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v293 = v100;
              *v99 = 136380931;
              *(v99 + 4) = sub_21D05550C(v98, v97, &v293);
              *(v99 + 12) = 2080;
              *(v99 + 14) = sub_21D05550C(0, 0xE000000000000000, &v293);
              _os_log_impl(&dword_21D044000, v95, v96, "%{private}s denied due to availability. availabilityInfo: %s", v99, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D3CDF0](v100, -1, -1);
              MEMORY[0x223D3CDF0](v99, -1, -1);
            }

            else
            {
            }

            v101 = v47[103];
            v274 = v47[102];
            v102 = v47[101];
            v103 = v47[100];
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
            v104 = swift_initStackObject();
            *(v104 + 16) = xmmword_21D0959B0;
            *(v104 + 32) = sub_21D0943F0();
            *(v104 + 40) = v105;
            *(v104 + 48) = 0;
            *(v104 + 56) = 0xE000000000000000;

            sub_21D0900B0(v104);
            swift_setDeallocating();
            sub_21D04D27C(v104 + 32, &qword_27CE542C0, &qword_21D095E28);
            sub_21D090BF4();
            swift_allocError();
            *v106 = bufa;
            *(v106 + 8) = 3;
            sub_21D093EC0();
            (*(v102 + 104))(v101, *MEMORY[0x277D29DA8], v103);
            bufb = *(v102 + 16);
            (bufb)(v274, v101, v103);
            v107 = sub_21D094210();
            v108 = sub_21D094570();
            v109 = os_log_type_enabled(v107, v108);
            v110 = v47[102];
            v111 = v47[101];
            v112 = v47[100];
            if (v109)
            {
              v113 = swift_slowAlloc();
              v114 = swift_slowAlloc();
              *v113 = 138412290;
              sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
              swift_allocError();
              (bufb)(v115, v110, v112);
              v116 = _swift_stdlib_bridgeErrorToNSError();
              v117 = *(v111 + 8);
              v117(v110, v112);
              *(v113 + 4) = v116;
              *v114 = v116;
              _os_log_impl(&dword_21D044000, v107, v108, "inferenceError: %@", v113, 0xCu);
              sub_21D04D27C(v114, &qword_27CE54320, &qword_21D095EA0);
              MEMORY[0x223D3CDF0](v114, -1, -1);
              MEMORY[0x223D3CDF0](v113, -1, -1);
            }

            else
            {

              v117 = *(v111 + 8);
              v117(v110, v112);
            }

            v118 = v292[122];
            v119 = v292[121];
            v120 = v292[120];
            v121 = v292[103];
            v122 = v292[100];
            sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
            swift_allocError();
            (bufb)(v123, v121, v122);
            swift_willThrow();
            v117(v121, v122);
            v1 = v292;
            __swift_destroy_boxed_opaque_existential_0(v292 + 38);
            __swift_destroy_boxed_opaque_existential_0(v292 + 23);

            sub_21D094300();

            (*(v119 + 8))(v118, v120);
          }

          goto LABEL_81;
        }

        (*(v34 + 8))(v30, v31);
      }

      else
      {
        v33(v30, 1, 1, v31);
        sub_21D04D27C(v30, &qword_27CE543A8, &qword_21D0963C0);
      }

      goto LABEL_26;
    }

    v73 = v292;
    v74 = v292[111];
    v75 = v292[109];
    __swift_destroy_boxed_opaque_existential_0(v292 + 38);
    sub_21D046D78((v73 + 23), (v73 + 43));
    __swift_project_boxed_opaque_existential_1(v73 + 43, v73[46]);
    sub_21D0940A0();
    v282(v74, *MEMORY[0x277CEDEE8], v75);
    v1 = v292;
    sub_21D094490();
    sub_21D094490();
    v76 = v292[112];
    v77 = v292[111];
    v78 = v292[109];
    if (v73[72] == v73[74] && v292[73] == v292[75])
    {
      v10(v292[111], v292[109]);
      v10(v76, v78);

      goto LABEL_47;
    }

    v124 = sub_21D0947D0();
    v10(v77, v78);
    v10(v76, v78);

    if (v124)
    {
LABEL_47:

      v125 = sub_21D093C70();
      v126 = *(v125 - 8);
      v127 = swift_task_alloc();
      sub_21D0590D0((v292 + 43), (v292 + 48));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543A8, &qword_21D0963C0);
      v128 = swift_task_alloc();
      v129 = sub_21D093CC0();
      v130 = swift_dynamicCast();
      v131 = *(*(v129 - 8) + 56);
      if (v130)
      {
        v132 = *(v129 - 8);
        v131(v128, 0, 1, v129);
        v133 = (*(v132 + 88))(v128, v129);
        if (MEMORY[0x277D412D8] && v133 == *MEMORY[0x277D412D8])
        {
          (*(v132 + 96))(v128, v129);
          (*(v126 + 32))(v127, v128, v125);

          v134 = &qword_27CE54390;
          v135 = MEMORY[0x282228160];
          v136 = MEMORY[0x282228168];
          goto LABEL_55;
        }

        (*(v132 + 8))(v128, v129);
      }

      else
      {
        v131(v128, 1, 1, v129);
        sub_21D04D27C(v128, &qword_27CE543A8, &qword_21D0963C0);
      }

      v125 = sub_21D093D30();
      v126 = *(v125 - 8);
      v127 = swift_task_alloc();
      sub_21D0590D0((v292 + 43), (v292 + 53));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543B0, &qword_21D0963C8);
      v137 = swift_task_alloc();
      v138 = swift_dynamicCast();
      v139 = *(v126 + 56);
      if (!v138)
      {
        v139(v137, 1, 1, v125);
        sub_21D04D27C(v137, &qword_27CE543B0, &qword_21D0963C8);

        v142 = 0xEE006E6F69747069;
        v140 = 0x7263736564206F6ELL;
LABEL_57:

        sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);
        if ((sub_21D094630() & 1) == 0)
        {
LABEL_106:

          v243 = sub_21D094210();
          v244 = sub_21D094570();

          if (os_log_type_enabled(v243, v244))
          {
            v245 = v292[86];
            v246 = v292[85];
            v247 = swift_slowAlloc();
            v248 = swift_slowAlloc();
            v293 = v248;
            *v247 = 136315394;
            *(v247 + 4) = sub_21D05550C(v246, v245, &v293);
            *(v247 + 12) = 2080;
            *(v247 + 14) = sub_21D05550C(v140, v142, &v293);
            _os_log_impl(&dword_21D044000, v243, v244, "%s failed due to network error. networkErrorInfo: %s", v247, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D3CDF0](v248, -1, -1);
            MEMORY[0x223D3CDF0](v247, -1, -1);
          }

          logMetric(logger:name:startInstant:)(v292[90] + v292[131], 0xD000000000000015, 0x800000021D097260);
          sub_21D0942D0();
          __swift_project_boxed_opaque_existential_1(v292 + 43, v292[46]);
          sub_21D094790();
          v249 = v292[46];
          v250 = __swift_project_boxed_opaque_existential_1(v292 + 43, v249);
          v251 = *(v249 - 8);
          v252 = swift_task_alloc();
          (*(v251 + 16))(v252, v250, v249);
          if (sub_21D0947A0())
          {
            (*(v251 + 8))(v252, v249);
          }

          else
          {
            swift_allocError();
            (*(v251 + 32))(v253, v252, v249);
          }

          v254 = v292[122];
          v255 = v292[121];
          v256 = v292[120];
          v257 = v292[107];
          v258 = v292[105];
          v259 = v292[104];
          sub_21D093770();

          (*(v258 + 104))(v257, *MEMORY[0x277D71AB0], v259);
          sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
          swift_allocError();
          sub_21D093760();
          swift_willThrow();
          v260 = v259;
          v1 = v292;
          (*(v258 + 8))(v257, v260);
          __swift_destroy_boxed_opaque_existential_0(v292 + 43);

          sub_21D094300();

          (*(v255 + 8))(v254, v256);
          goto LABEL_81;
        }

        v143 = sub_21D094210();
        v144 = sub_21D094560();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          _os_log_impl(&dword_21D044000, v143, v144, "Test No Network ttr.", v145, 2u);
          MEMORY[0x223D3CDF0](v145, -1, -1);
        }

        v146 = v292[99];
        v147 = v292[97];

        *(v146 + *(v147 + 20)) = 1547038;
        sub_21D094220();
        sub_21D0946E0();

        v293 = 0xD000000000000030;
        v294 = 0x800000021D097310;
        MEMORY[0x223D3C530](v140, v142);
        v148 = sub_21D094620();
        if (v149)
        {
          v150 = v148;
          v151 = v149;
          v152 = HIBYTE(v149) & 0xF;
          if ((v149 & 0x2000000000000000) == 0)
          {
            v152 = v148 & 0xFFFFFFFFFFFFLL;
          }

          if (v152)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541D0, &qword_21D095B20);
            v153 = swift_allocObject();
            *(v153 + 16) = xmmword_21D0959B0;
            *(v153 + 32) = v150;
            *(v153 + 40) = v151;
LABEL_105:
            v242 = v292[99];
            sub_21D050168(0xD000000000000030, 0x800000021D097310, v292[85], v292[86], v153);

            sub_21D091138(v242, type metadata accessor for PrivateMLClientAlertService);
            goto LABEL_106;
          }
        }

        v153 = MEMORY[0x277D84F90];
        goto LABEL_105;
      }

      v139(v137, 0, 1, v125);
      (*(v126 + 32))(v127, v137, v125);

      v134 = &qword_27CE543B8;
      v135 = MEMORY[0x2822281C0];
      v136 = MEMORY[0x2822281D0];
LABEL_55:
      sub_21D090FE0(v134, v135, v136);
      v140 = sub_21D094790();
      v142 = v141;
      (*(v126 + 8))(v127, v125);
      goto LABEL_57;
    }

    __swift_destroy_boxed_opaque_existential_0(v292 + 43);
  }

  v154 = v1[133];

  v1[81] = v154;
  v155 = sub_21D093CC0();
  v156 = *(v155 - 8);
  v157 = swift_task_alloc();
  v158 = v154;
  if (swift_dynamicCast())
  {
    v159 = (*(v156 + 88))(v157, v155);
    if (MEMORY[0x277D412D8] && v159 == *MEMORY[0x277D412D8])
    {
      v277 = v159;

      (*(v156 + 96))(v157, v155);
      v160 = sub_21D093C70();
      v161 = *(v160 - 8);
      v162 = swift_task_alloc();
      (*(v161 + 32))(v162, v157, v160);
      v163 = swift_task_alloc();
      v280 = v162;
      v270 = *(v161 + 16);
      v270(v163, v162, v160);
      v164 = sub_21D094210();
      v165 = sub_21D094570();
      if (os_log_type_enabled(v164, v165))
      {
        bufe = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v293 = v166;
        *bufe = 136315138;
        sub_21D090FE0(&qword_27CE54390, MEMORY[0x282228160], MEMORY[0x282228168]);
        v283 = v165;
        v167 = sub_21D094790();
        v169 = v168;
        v268 = *(v161 + 8);
        v268(v163, v160);
        v170 = sub_21D05550C(v167, v169, &v293);

        *(bufe + 4) = v170;
        _os_log_impl(&dword_21D044000, v164, v283, "Request failed due to network error with info: %s", bufe, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v166);
        v171 = v166;
        v1 = v292;
        MEMORY[0x223D3CDF0](v171, -1, -1);
        MEMORY[0x223D3CDF0](bufe, -1, -1);
      }

      else
      {

        v268 = *(v161 + 8);
        v268(v163, v160);
      }

      sub_21D090FE0(&qword_27CE54390, MEMORY[0x282228160], MEMORY[0x282228168]);
      v285 = v160;
      v217 = sub_21D094790();
      bufd = v218;
      sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);
      if ((sub_21D094630() & 1) == 0)
      {
        goto LABEL_100;
      }

      v219 = v217;
      v220 = sub_21D094210();
      v221 = sub_21D094560();
      if (os_log_type_enabled(v220, v221))
      {
        v222 = swift_slowAlloc();
        *v222 = 0;
        _os_log_impl(&dword_21D044000, v220, v221, "Test No Network ttr.", v222, 2u);
        MEMORY[0x223D3CDF0](v222, -1, -1);
      }

      v223 = v1[98];
      v224 = v1[97];

      *(v223 + *(v224 + 20)) = 1547038;
      sub_21D094220();
      v293 = 0;
      v294 = 0xE000000000000000;
      sub_21D0946E0();
      MEMORY[0x223D3C530](0xD000000000000038, 0x800000021D0972D0);
      MEMORY[0x223D3C530](v219, bufd);
      v226 = v293;
      v225 = v294;
      v227 = sub_21D094620();
      if (v228)
      {
        v229 = v227;
        v230 = v228;
        v231 = HIBYTE(v228) & 0xF;
        if ((v228 & 0x2000000000000000) == 0)
        {
          v231 = v227 & 0xFFFFFFFFFFFFLL;
        }

        if (v231)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541D0, &qword_21D095B20);
          v232 = swift_allocObject();
          *(v232 + 16) = xmmword_21D0959B0;
          *(v232 + 32) = v229;
          *(v232 + 40) = v230;
LABEL_99:
          v234 = v1[98];
          sub_21D050168(v226, v225, v1[85], v1[86], v232);

          sub_21D091138(v234, type metadata accessor for PrivateMLClientAlertService);
LABEL_100:
          v262 = v1[122];
          v265 = v292[121];
          v267 = v292[120];
          v235 = v292[106];
          v236 = v292[105];
          v261 = v292[104];
          logMetric(logger:name:startInstant:)(v292[90] + v1[131], 0xD000000000000015, 0x800000021D097260);

          sub_21D0942D0();
          sub_21D090FE0(&qword_27CE54398, MEMORY[0x282228188], MEMORY[0x282228198]);
          swift_allocError();
          v238 = v237;
          v270(v237, v280, v285);
          (*(v156 + 104))(v238, v277, v155);
          sub_21D093770();
          (*(v236 + 104))(v235, *MEMORY[0x277D71AB0], v261);
          sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
          swift_allocError();
          sub_21D093760();
          swift_willThrow();
          (*(v236 + 8))(v235, v261);
          v268(v280, v285);

          sub_21D094300();

          (*(v265 + 8))(v262, v267);
          v1 = v292;
          goto LABEL_81;
        }
      }

      v232 = MEMORY[0x277D84F90];
      goto LABEL_99;
    }

    (*(v156 + 8))(v157, v155);
  }

  v172 = v1[133];

  v1[80] = v172;
  v173 = v172;
  if (swift_dynamicCast())
  {
    v174 = (*(v1[95] + 88))(v1[96], v1[94]);
    if (v174 == *MEMORY[0x277D41438])
    {
      bufc = v174;
      v175 = v1[96];
      v176 = v1[95];
      v177 = v1[94];

      (*(v176 + 96))(v175, v177);
      v178 = *v175;
      v179 = v175[1];

      v180 = sub_21D094210();
      v181 = sub_21D094570();

      if (os_log_type_enabled(v180, v181))
      {
        v182 = v178;
        v183 = v1[86];
        v184 = v1[85];
        v185 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        v293 = v186;
        *v185 = 136315650;
        v187 = v183;
        v178 = v182;
        *(v185 + 4) = sub_21D05550C(v184, v187, &v293);
        *(v185 + 12) = 2048;
        *(v185 + 14) = v182;
        *(v185 + 22) = 2048;
        *(v185 + 24) = v179;
        _os_log_impl(&dword_21D044000, v180, v181, "%s failed with maxContextLengthReached. input token count:%ld and maximum allowed:%ld", v185, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v186);
        MEMORY[0x223D3CDF0](v186, -1, -1);
        MEMORY[0x223D3CDF0](v185, -1, -1);
      }

      v188 = v179;
      v189 = v1[131];
      v275 = v1[122];
      v281 = v1[121];
      v284 = v1[120];
      v190 = v292[106];
      v191 = v292[105];
      v271 = v292[104];
      v192 = v292[95];
      v263 = v292[94];
      v264 = v292[93];
      v266 = v292[92];
      v269 = v292[91];
      logMetric(logger:name:startInstant:)(v292[90] + v189, 0xD000000000000015, 0x800000021D097260);
      v293 = 0;
      v294 = 0xE000000000000000;
      sub_21D0946E0();
      MEMORY[0x223D3C530](0xD00000000000002FLL, 0x800000021D097280);
      v292[78] = v178;
      v193 = sub_21D094790();
      MEMORY[0x223D3C530](v193);

      MEMORY[0x223D3C530](0xD000000000000013, 0x800000021D0972B0);
      v292[77] = v188;
      v194 = sub_21D094790();
      MEMORY[0x223D3C530](v194);

      sub_21D091B40(&qword_27CE54380, MEMORY[0x277D41440], MEMORY[0x277D41448]);
      swift_allocError();
      *v195 = v178;
      v195[1] = v188;
      (*(v192 + 104))(v195, bufc, v263);
      sub_21D093770();
      v196 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54388, &unk_21D0963B0) + 64);
      *v190 = v178;
      *(v190 + 1) = v188;
      (*(v266 + 16))(&v190[v196], v264, v269);
      (*(v191 + 104))(v190, *MEMORY[0x277D71AC8], v271);
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      swift_allocError();
      sub_21D093760();
      swift_willThrow();
      v197 = v190;
      v1 = v292;
      (*(v191 + 8))(v197, v271);
      (*(v266 + 8))(v264, v269);

      sub_21D094300();

      (*(v281 + 8))(v275, v284);
      goto LABEL_81;
    }

    (*(v1[95] + 8))(v1[96], v1[94]);
  }

  v198 = v1[133];

  v199 = v198;
  v200 = sub_21D094210();
  v201 = sub_21D094570();

  if (os_log_type_enabled(v200, v201))
  {
    v202 = v1[133];
    v203 = v1[86];
    v204 = v1[85];
    v205 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    v293 = v207;
    *v205 = 136315394;
    *(v205 + 4) = sub_21D05550C(v204, v203, &v293);
    *(v205 + 12) = 2112;
    v208 = v202;
    v209 = _swift_stdlib_bridgeErrorToNSError();
    *(v205 + 14) = v209;
    *v206 = v209;
    _os_log_impl(&dword_21D044000, v200, v201, "%s failed to execute private ML request error: %@", v205, 0x16u);
    sub_21D04D27C(v206, &qword_27CE54320, &qword_21D095EA0);
    MEMORY[0x223D3CDF0](v206, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v207);
    MEMORY[0x223D3CDF0](v207, -1, -1);
    MEMORY[0x223D3CDF0](v205, -1, -1);
  }

  v210 = v1[133];
  v211 = v1[122];
  v212 = v1[121];
  v213 = v1[120];
  logMetric(logger:name:startInstant:)(v1[90] + v1[131], 0xD000000000000015, 0x800000021D097260);
  v1[79] = v210;
  v214 = v210;
  sub_21D094430();
  sub_21D0942D0();
  swift_willThrow();
  sub_21D094300();

  (*(v212 + 8))(v211, v213);
LABEL_81:

  v215 = v1[1];

  return v215();
}

uint64_t sub_21D0806D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v26;
  *(v8 + 80) = v24;
  *(v8 + 96) = v25;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_21D093E20();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543F8, &qword_21D0963F8);
  *(v8 + 152) = swift_task_alloc();
  v10 = sub_21D093BA0();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  v11 = sub_21D093C10();
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();
  v12 = sub_21D094180();
  *(v8 + 208) = v12;
  *(v8 + 216) = *(v12 - 8);
  *(v8 + 224) = swift_task_alloc();
  v13 = sub_21D092FC0();
  *(v8 + 232) = v13;
  *(v8 + 240) = *(v13 - 8);
  *(v8 + 248) = swift_task_alloc();
  v14 = sub_21D094230();
  *(v8 + 256) = v14;
  *(v8 + 264) = *(v14 - 8);
  *(v8 + 272) = swift_task_alloc();
  v15 = sub_21D094070();
  *(v8 + 280) = v15;
  *(v8 + 288) = *(v15 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v16 = sub_21D0934B0();
  *(v8 + 312) = v16;
  *(v8 + 320) = *(v16 - 8);
  *(v8 + 328) = swift_task_alloc();
  v17 = sub_21D093AE0();
  *(v8 + 336) = v17;
  *(v8 + 344) = *(v17 - 8);
  *(v8 + 352) = swift_task_alloc();
  v18 = sub_21D093A10();
  *(v8 + 360) = v18;
  *(v8 + 368) = *(v18 - 8);
  *(v8 + 376) = swift_task_alloc();
  v19 = sub_21D093800();
  *(v8 + 384) = v19;
  *(v8 + 392) = *(v19 - 8);
  *(v8 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54400, &qword_21D096400);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54408, &qword_21D096408);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v20 = sub_21D093C60();
  *(v8 + 456) = v20;
  *(v8 + 464) = *(v20 - 8);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  v21 = sub_21D0939D0();
  *(v8 + 496) = v21;
  *(v8 + 504) = *(v21 - 8);
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D080D18, 0, 0);
}

uint64_t sub_21D080D18()
{
  v182 = v0;
  v1 = v0;
  v2 = *(v0 + 432);
  v5 = v0 + 392;
  v4 = *(v0 + 392);
  v3 = *(v5 + 8);
  v6 = *(v1 + 384);
  v7 = *(v1 + 40);
  v8 = *(*(v1 + 128) + 56);
  v8(v2, 1, 1, *(v1 + 120));
  (*(v4 + 16))(v3, v7, v6);
  v9 = (*(v4 + 88))(v3, v6);
  if (v9 == *MEMORY[0x277D71B98])
  {

    v10 = sub_21D094210();
    v11 = sub_21D094570();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v1 + 56);
      v13 = *(v1 + 64);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v181[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_21D05550C(v12, v13, v181);
      _os_log_impl(&dword_21D044000, v10, v11, "%s fetchModelMetadata must be handled before this", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223D3CDF0](v15, -1, -1);
      MEMORY[0x223D3CDF0](v14, -1, -1);
    }

    v16 = *(v1 + 432);
    v18 = *(v1 + 392);
    v17 = *(v1 + 400);
    v19 = *(v1 + 384);
    sub_21D090BF4();
    swift_allocError();
    v21 = 9;
    goto LABEL_13;
  }

  if (v9 == *MEMORY[0x277D71B78])
  {

    v22 = sub_21D094210();
    v23 = sub_21D094570();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v1 + 56);
      v25 = *(v1 + 64);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v181[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_21D05550C(v24, v25, v181);
      v28 = "%s No support for countTokens";
LABEL_11:
      _os_log_impl(&dword_21D044000, v22, v23, v28, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223D3CDF0](v27, -1, -1);
      MEMORY[0x223D3CDF0](v26, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (v9 == *MEMORY[0x277D71BB8])
  {

    v22 = sub_21D094210();
    v23 = sub_21D094570();

    if (os_log_type_enabled(v22, v23))
    {
      v29 = *(v1 + 56);
      v30 = *(v1 + 64);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v181[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_21D05550C(v29, v30, v181);
      v28 = "%s No Support for countTokensPromptTemplate";
      goto LABEL_11;
    }

LABEL_12:

    v16 = *(v1 + 432);
    v18 = *(v1 + 392);
    v17 = *(v1 + 400);
    v19 = *(v1 + 384);
    sub_21D090BF4();
    swift_allocError();
    v21 = 5;
LABEL_13:
    *v20 = v21;
    *(v20 + 8) = 4;
    swift_willThrow();
    sub_21D04D27C(v16, &qword_27CE54400, &qword_21D096400);
    (*(v18 + 8))(v17, v19);

    v31 = *(v1 + 8);

    return v31();
  }

  if (v9 == *MEMORY[0x277D71B90])
  {
    v33 = *(v1 + 400);
    v34 = *(v1 + 376);
    v35 = *(v1 + 360);
    v36 = *(v1 + 368);
    (*(*(v1 + 392) + 96))(v33, *(v1 + 384));
    (*(v36 + 32))(v34, v33, v35);

    v37 = sub_21D094210();
    v38 = sub_21D094580();

    if (os_log_type_enabled(v37, v38))
    {
      v40 = *(v1 + 56);
      v39 = *(v1 + 64);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v181[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_21D05550C(v40, v39, v181);
      _os_log_impl(&dword_21D044000, v37, v38, "%s received complete prompt request", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x223D3CDF0](v42, -1, -1);
      MEMORY[0x223D3CDF0](v41, -1, -1);
    }

    v43 = *(v1 + 368);
    v44 = *(v1 + 376);
    v45 = *(v1 + 360);
    v46 = *(v1 + 72);
    sub_21D093A00();
    sub_21D0939E0();
    sub_21D0939F0();
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    sub_21D093BC0();
    sub_21D0935F0();

    (*(v43 + 8))(v44, v45);
  }

  else
  {
    if (v9 != *MEMORY[0x277D71BA8])
    {

      v90 = sub_21D094210();
      v91 = sub_21D094570();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = *(v1 + 56);
        v93 = *(v1 + 64);
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v181[0] = v95;
        *v94 = 136315138;
        *(v94 + 4) = sub_21D05550C(v92, v93, v181);
        _os_log_impl(&dword_21D044000, v90, v91, "%s received unkown request payload", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x223D3CDF0](v95, -1, -1);
        MEMORY[0x223D3CDF0](v94, -1, -1);
      }

      v16 = *(v1 + 432);
      v18 = *(v1 + 392);
      v17 = *(v1 + 400);
      v19 = *(v1 + 384);
      sub_21D090BF4();
      swift_allocError();
      v21 = 1;
      goto LABEL_13;
    }

    v57 = *(v1 + 400);
    v59 = *(v1 + 344);
    v58 = *(v1 + 352);
    v60 = *(v1 + 336);
    (*(*(v1 + 392) + 96))(v57, *(v1 + 384));
    (*(v59 + 32))(v58, v57, v60);

    v61 = sub_21D094210();
    v62 = sub_21D094580();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v1 + 56);
      v64 = *(v1 + 64);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v181[0] = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_21D05550C(v63, v64, v181);
      _os_log_impl(&dword_21D044000, v61, v62, "%s received completePromptTemplate request", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x223D3CDF0](v66, -1, -1);
      MEMORY[0x223D3CDF0](v65, -1, -1);
    }

    v68 = *(v1 + 456);
    v67 = *(v1 + 464);
    v69 = *(v1 + 152);
    sub_21D093AD0();
    v70 = *(v67 + 48);
    if (v70(v69, 1, v68) == 1)
    {
      v71 = *(v1 + 456);
      v72 = *(v1 + 152);
      sub_21D093BD0();
      if (v70(v72, 1, v71) != 1)
      {
        sub_21D04D27C(*(v1 + 152), &qword_27CE543F8, &qword_21D0963F8);
      }
    }

    else
    {
      (*(*(v1 + 464) + 32))(*(v1 + 472), *(v1 + 152), *(v1 + 456));
    }

    v136 = *(v1 + 432);
    v137 = *(v1 + 416);
    v179 = *(v1 + 408);
    v139 = *(v1 + 120);
    v138 = *(v1 + 128);
    (*(*(v1 + 464) + 32))(*(v1 + 488), *(v1 + 472), *(v1 + 456));
    sub_21D093AB0();
    sub_21D093AC0();
    sub_21D093AA0();
    sub_21D04D27C(v136, &qword_27CE54400, &qword_21D096400);
    v8(v137, 0, 1, v139);
    sub_21D05B208(v137, v136, &qword_27CE54400, &qword_21D096400);
    sub_21D05B270(v136, v179, &qword_27CE54400, &qword_21D096400);
    v140 = (*(v138 + 48))(v179, 1, v139);
    v141 = *(v1 + 408);
    v142 = *(v1 + 344);
    v143 = *(v1 + 336);
    if (v140 == 1)
    {
      (*(v142 + 8))(*(v1 + 352), *(v1 + 336));
      sub_21D04D27C(v141, &qword_27CE54400, &qword_21D096400);
    }

    else
    {
      v145 = *(v1 + 136);
      v144 = *(v1 + 144);
      v146 = *(v1 + 120);
      v147 = *(v1 + 128);
      v148 = *(v1 + 72);
      v180 = *(v1 + 352);
      (*(v147 + 32))(v144, v141, v146);
      __swift_project_boxed_opaque_existential_1(v148, v148[3]);
      (*(v147 + 16))(v145, v144, v146);
      sub_21D094430();
      sub_21D0935F0();

      (*(v147 + 8))(v144, v146);
      (*(v142 + 8))(v180, v143);
    }
  }

  v48 = *(v1 + 504);
  v47 = *(v1 + 512);
  v49 = *(v1 + 488);
  v50 = *(v1 + 480);
  v51 = *(v1 + 456);
  v52 = *(v1 + 464);
  v162 = *(v1 + 448);
  v163 = *(v1 + 520);
  v160 = *(v1 + 496);
  v161 = *(v1 + 440);
  v165 = *(v1 + 424);
  v167 = *(v1 + 432);
  v175 = *(v1 + 304);
  v177 = *(v1 + 328);
  v53 = *(v1 + 264);
  v169 = *(v1 + 256);
  v171 = *(v1 + 272);
  v172 = *(v1 + 88);
  v54 = *(v1 + 80);
  v55 = *(v1 + 48);
  v159 = *(*(v1 + 288) + 16);
  v159();
  (*(v52 + 16))(v50, v49, v51);
  (*(v48 + 16))(v47, v163, v160);
  sub_21D05B270(v162, v161, &qword_27CE54408, &qword_21D096408);
  sub_21D05B270(v167, v165, &qword_27CE54400, &qword_21D096400);
  v56 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(v53 + 16))(v171, v55 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger, v169);
  sub_21D055C20(v54, v172);
  sub_21D083B2C(v54, v172, v175, v50, v47, v161, v165, v171, v177);
  v73 = *(v1 + 296);
  v74 = *(v1 + 280);
  v75 = *(v1 + 96);
  logMetric(logger:name:startInstant:)(v55 + v56, 0xD000000000000012, 0x800000021D097370);
  (v159)(v73, v75, v74);
  v76 = sub_21D094210();
  v77 = sub_21D094580();
  v78 = os_log_type_enabled(v76, v77);
  v79 = *(v1 + 288);
  v80 = *(v1 + 296);
  v81 = *(v1 + 280);
  v178 = v1;
  if (v78)
  {
    v82 = *(v1 + 248);
    v83 = *(v1 + 240);
    v84 = *(v178 + 232);
    v85 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v181[0] = v176;
    *v85 = 136315138;
    v173 = v77;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v86 = sub_21D094790();
    v88 = v87;
    (*(v83 + 8))(v82, v84);
    v1 = v178;
    (*(v79 + 8))(v80, v81);
    v89 = sub_21D05550C(v86, v88, v181);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_21D044000, v76, v173, "%s sending private ML request", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v176);
    MEMORY[0x223D3CDF0](v176, -1, -1);
    MEMORY[0x223D3CDF0](v85, -1, -1);
  }

  else
  {

    (*(v79 + 8))(v80, v81);
  }

  sub_21D0941A0();
  sub_21D094150();

  v96 = sub_21D0941A0();
  v97 = sub_21D094670();

  v98 = sub_21D094680();
  v100 = *(v1 + 216);
  v99 = *(v1 + 224);
  v101 = *(v1 + 208);
  if (v98)
  {
    v103 = *(v1 + 56);
    v102 = *(v1 + 64);
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v181[0] = v105;
    *v104 = 136446210;
    *(v104 + 4) = sub_21D05550C(v103, v102, v181);
    v106 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v96, v97, v106, "executePrivateMLRequest", "request parsed requestIdentifier=%{public, signpost.description=attribute,public}s)", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x223D3CDF0](v105, -1, -1);
    MEMORY[0x223D3CDF0](v104, -1, -1);
  }

  (*(v100 + 8))(v99, v101);
  v107 = sub_21D093BE0();
  v109 = v108;
  *(v1 + 528) = v108;
  v110 = sub_21D093BB0();
  v111 = *(v110 + 16);
  if (v111)
  {
    v164 = v109;
    v166 = v107;
    v112 = *(v1 + 192);
    v113 = *(v1 + 168);
    v181[0] = MEMORY[0x277D84F90];
    sub_21D08FADC(0, v111, 0);
    v114 = v181[0];
    v115 = *(v112 + 16);
    v112 += 16;
    v116 = v110 + ((*(v112 + 64) + 32) & ~*(v112 + 64));
    v168 = *(v112 + 56);
    v174 = v115;
    v170 = (v112 - 8);
    while (1)
    {
      v117 = *(v1 + 200);
      v118 = *(v1 + 176);
      v119 = *(v1 + 184);
      v120 = *(v1 + 160);
      v174(v117, v116, v119);
      sub_21D093BF0();
      v121 = sub_21D093B80();
      v123 = v122;
      (*(v113 + 8))(v118, v120);
      v124 = sub_21D093C00();
      v125 = (*v170)(v117, v119);
      if ((v124 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v124))
      {
        goto LABEL_52;
      }

      v181[0] = v114;
      v134 = *(v114 + 16);
      v133 = *(v114 + 24);
      if (v134 >= v133 >> 1)
      {
        sub_21D08FADC((v133 > 1), v134 + 1, 1);
        v114 = v181[0];
      }

      *(v114 + 16) = v134 + 1;
      v135 = v114 + 24 * v134;
      *(v135 + 32) = v121;
      *(v135 + 40) = v123;
      *(v135 + 48) = v124;
      v116 += v168;
      --v111;
      v1 = v178;
      if (!v111)
      {

        v109 = v164;
        v107 = v166;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {

    v114 = MEMORY[0x277D84F90];
LABEL_48:
    *(v1 + 536) = v114;
    v149 = v114;
    v150 = *(v1 + 328);
    v151 = *(v1 + 96);
    v153 = *(v1 + 48);
    v152 = *(v1 + 56);
    v154 = *(v1 + 32);
    v155 = swift_task_alloc();
    *(v1 + 544) = v155;
    v156 = *(v1 + 64);
    v157 = *(v1 + 104);
    *(v155 + 16) = v153;
    *(v155 + 24) = v151;
    *(v155 + 32) = v150;
    *(v155 + 40) = v152;
    *(v155 + 48) = v156;
    *(v155 + 64) = v154;
    *(v155 + 72) = v157;
    v158 = swift_task_alloc();
    *(v1 + 552) = v158;
    *v158 = v1;
    v158[1] = sub_21D082048;
    v126 = *(v1 + 328);
    v125 = *(v1 + 16);
    v130 = &unk_21D096528;
    v132 = MEMORY[0x277D84F78] + 8;
    v127 = v107;
    v128 = v109;
    v129 = v149;
    v131 = v155;
  }

  return MEMORY[0x2821A23A0](v125, v126, v127, v128, v129, v130, v131, v132);
}

uint64_t sub_21D082048()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_21D091FA8;
  }

  else
  {
    v2 = sub_21D091FB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D0821B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v26;
  *(v8 + 80) = v24;
  *(v8 + 96) = v25;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_21D093E20();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543F8, &qword_21D0963F8);
  *(v8 + 152) = swift_task_alloc();
  v10 = sub_21D093BA0();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  v11 = sub_21D093C10();
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();
  v12 = sub_21D094180();
  *(v8 + 208) = v12;
  *(v8 + 216) = *(v12 - 8);
  *(v8 + 224) = swift_task_alloc();
  v13 = sub_21D092FC0();
  *(v8 + 232) = v13;
  *(v8 + 240) = *(v13 - 8);
  *(v8 + 248) = swift_task_alloc();
  v14 = sub_21D094230();
  *(v8 + 256) = v14;
  *(v8 + 264) = *(v14 - 8);
  *(v8 + 272) = swift_task_alloc();
  v15 = sub_21D094070();
  *(v8 + 280) = v15;
  *(v8 + 288) = *(v15 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v16 = sub_21D0934B0();
  *(v8 + 312) = v16;
  *(v8 + 320) = *(v16 - 8);
  *(v8 + 328) = swift_task_alloc();
  v17 = sub_21D093AE0();
  *(v8 + 336) = v17;
  *(v8 + 344) = *(v17 - 8);
  *(v8 + 352) = swift_task_alloc();
  v18 = sub_21D093A10();
  *(v8 + 360) = v18;
  *(v8 + 368) = *(v18 - 8);
  *(v8 + 376) = swift_task_alloc();
  v19 = sub_21D093800();
  *(v8 + 384) = v19;
  *(v8 + 392) = *(v19 - 8);
  *(v8 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54400, &qword_21D096400);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54408, &qword_21D096408);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v20 = sub_21D093C60();
  *(v8 + 456) = v20;
  *(v8 + 464) = *(v20 - 8);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  v21 = sub_21D0939D0();
  *(v8 + 496) = v21;
  *(v8 + 504) = *(v21 - 8);
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D0827FC, 0, 0);
}

uint64_t sub_21D0827FC()
{
  v182 = v0;
  v1 = v0;
  v2 = *(v0 + 432);
  v5 = v0 + 392;
  v4 = *(v0 + 392);
  v3 = *(v5 + 8);
  v6 = *(v1 + 384);
  v7 = *(v1 + 40);
  v8 = *(*(v1 + 128) + 56);
  v8(v2, 1, 1, *(v1 + 120));
  (*(v4 + 16))(v3, v7, v6);
  v9 = (*(v4 + 88))(v3, v6);
  if (v9 == *MEMORY[0x277D71B98])
  {

    v10 = sub_21D094210();
    v11 = sub_21D094570();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v1 + 56);
      v13 = *(v1 + 64);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v181[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_21D05550C(v12, v13, v181);
      _os_log_impl(&dword_21D044000, v10, v11, "%s fetchModelMetadata must be handled before this", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223D3CDF0](v15, -1, -1);
      MEMORY[0x223D3CDF0](v14, -1, -1);
    }

    v16 = *(v1 + 432);
    v18 = *(v1 + 392);
    v17 = *(v1 + 400);
    v19 = *(v1 + 384);
    sub_21D090BF4();
    swift_allocError();
    v21 = 9;
    goto LABEL_13;
  }

  if (v9 == *MEMORY[0x277D71B78])
  {

    v22 = sub_21D094210();
    v23 = sub_21D094570();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v1 + 56);
      v25 = *(v1 + 64);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v181[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_21D05550C(v24, v25, v181);
      v28 = "%s No support for countTokens";
LABEL_11:
      _os_log_impl(&dword_21D044000, v22, v23, v28, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223D3CDF0](v27, -1, -1);
      MEMORY[0x223D3CDF0](v26, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (v9 == *MEMORY[0x277D71BB8])
  {

    v22 = sub_21D094210();
    v23 = sub_21D094570();

    if (os_log_type_enabled(v22, v23))
    {
      v29 = *(v1 + 56);
      v30 = *(v1 + 64);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v181[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_21D05550C(v29, v30, v181);
      v28 = "%s No Support for countTokensPromptTemplate";
      goto LABEL_11;
    }

LABEL_12:

    v16 = *(v1 + 432);
    v18 = *(v1 + 392);
    v17 = *(v1 + 400);
    v19 = *(v1 + 384);
    sub_21D090BF4();
    swift_allocError();
    v21 = 5;
LABEL_13:
    *v20 = v21;
    *(v20 + 8) = 4;
    swift_willThrow();
    sub_21D04D27C(v16, &qword_27CE54400, &qword_21D096400);
    (*(v18 + 8))(v17, v19);

    v31 = *(v1 + 8);

    return v31();
  }

  if (v9 == *MEMORY[0x277D71B90])
  {
    v33 = *(v1 + 400);
    v34 = *(v1 + 376);
    v35 = *(v1 + 360);
    v36 = *(v1 + 368);
    (*(*(v1 + 392) + 96))(v33, *(v1 + 384));
    (*(v36 + 32))(v34, v33, v35);

    v37 = sub_21D094210();
    v38 = sub_21D094580();

    if (os_log_type_enabled(v37, v38))
    {
      v40 = *(v1 + 56);
      v39 = *(v1 + 64);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v181[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_21D05550C(v40, v39, v181);
      _os_log_impl(&dword_21D044000, v37, v38, "%s received complete prompt request", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x223D3CDF0](v42, -1, -1);
      MEMORY[0x223D3CDF0](v41, -1, -1);
    }

    v43 = *(v1 + 368);
    v44 = *(v1 + 376);
    v45 = *(v1 + 360);
    v46 = *(v1 + 72);
    sub_21D093A00();
    sub_21D0939E0();
    sub_21D0939F0();
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    sub_21D093BC0();
    sub_21D0935F0();

    (*(v43 + 8))(v44, v45);
  }

  else
  {
    if (v9 != *MEMORY[0x277D71BA8])
    {

      v90 = sub_21D094210();
      v91 = sub_21D094570();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = *(v1 + 56);
        v93 = *(v1 + 64);
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v181[0] = v95;
        *v94 = 136315138;
        *(v94 + 4) = sub_21D05550C(v92, v93, v181);
        _os_log_impl(&dword_21D044000, v90, v91, "%s received unkown request payload", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x223D3CDF0](v95, -1, -1);
        MEMORY[0x223D3CDF0](v94, -1, -1);
      }

      v16 = *(v1 + 432);
      v18 = *(v1 + 392);
      v17 = *(v1 + 400);
      v19 = *(v1 + 384);
      sub_21D090BF4();
      swift_allocError();
      v21 = 1;
      goto LABEL_13;
    }

    v57 = *(v1 + 400);
    v59 = *(v1 + 344);
    v58 = *(v1 + 352);
    v60 = *(v1 + 336);
    (*(*(v1 + 392) + 96))(v57, *(v1 + 384));
    (*(v59 + 32))(v58, v57, v60);

    v61 = sub_21D094210();
    v62 = sub_21D094580();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v1 + 56);
      v64 = *(v1 + 64);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v181[0] = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_21D05550C(v63, v64, v181);
      _os_log_impl(&dword_21D044000, v61, v62, "%s received completePromptTemplate request", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x223D3CDF0](v66, -1, -1);
      MEMORY[0x223D3CDF0](v65, -1, -1);
    }

    v68 = *(v1 + 456);
    v67 = *(v1 + 464);
    v69 = *(v1 + 152);
    sub_21D093AD0();
    v70 = *(v67 + 48);
    if (v70(v69, 1, v68) == 1)
    {
      v71 = *(v1 + 456);
      v72 = *(v1 + 152);
      sub_21D093BD0();
      if (v70(v72, 1, v71) != 1)
      {
        sub_21D04D27C(*(v1 + 152), &qword_27CE543F8, &qword_21D0963F8);
      }
    }

    else
    {
      (*(*(v1 + 464) + 32))(*(v1 + 472), *(v1 + 152), *(v1 + 456));
    }

    v136 = *(v1 + 432);
    v137 = *(v1 + 416);
    v179 = *(v1 + 408);
    v139 = *(v1 + 120);
    v138 = *(v1 + 128);
    (*(*(v1 + 464) + 32))(*(v1 + 488), *(v1 + 472), *(v1 + 456));
    sub_21D093AB0();
    sub_21D093AC0();
    sub_21D093AA0();
    sub_21D04D27C(v136, &qword_27CE54400, &qword_21D096400);
    v8(v137, 0, 1, v139);
    sub_21D05B208(v137, v136, &qword_27CE54400, &qword_21D096400);
    sub_21D05B270(v136, v179, &qword_27CE54400, &qword_21D096400);
    v140 = (*(v138 + 48))(v179, 1, v139);
    v141 = *(v1 + 408);
    v142 = *(v1 + 344);
    v143 = *(v1 + 336);
    if (v140 == 1)
    {
      (*(v142 + 8))(*(v1 + 352), *(v1 + 336));
      sub_21D04D27C(v141, &qword_27CE54400, &qword_21D096400);
    }

    else
    {
      v145 = *(v1 + 136);
      v144 = *(v1 + 144);
      v146 = *(v1 + 120);
      v147 = *(v1 + 128);
      v148 = *(v1 + 72);
      v180 = *(v1 + 352);
      (*(v147 + 32))(v144, v141, v146);
      __swift_project_boxed_opaque_existential_1(v148, v148[3]);
      (*(v147 + 16))(v145, v144, v146);
      sub_21D094430();
      sub_21D0935F0();

      (*(v147 + 8))(v144, v146);
      (*(v142 + 8))(v180, v143);
    }
  }

  v48 = *(v1 + 504);
  v47 = *(v1 + 512);
  v49 = *(v1 + 488);
  v50 = *(v1 + 480);
  v51 = *(v1 + 456);
  v52 = *(v1 + 464);
  v162 = *(v1 + 448);
  v163 = *(v1 + 520);
  v160 = *(v1 + 496);
  v161 = *(v1 + 440);
  v165 = *(v1 + 424);
  v167 = *(v1 + 432);
  v175 = *(v1 + 304);
  v177 = *(v1 + 328);
  v53 = *(v1 + 264);
  v169 = *(v1 + 256);
  v171 = *(v1 + 272);
  v172 = *(v1 + 88);
  v54 = *(v1 + 80);
  v55 = *(v1 + 48);
  v159 = *(*(v1 + 288) + 16);
  v159();
  (*(v52 + 16))(v50, v49, v51);
  (*(v48 + 16))(v47, v163, v160);
  sub_21D05B270(v162, v161, &qword_27CE54408, &qword_21D096408);
  sub_21D05B270(v167, v165, &qword_27CE54400, &qword_21D096400);
  v56 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(v53 + 16))(v171, v55 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger, v169);
  sub_21D055C20(v54, v172);
  sub_21D083B2C(v54, v172, v175, v50, v47, v161, v165, v171, v177);
  v73 = *(v1 + 296);
  v74 = *(v1 + 280);
  v75 = *(v1 + 96);
  logMetric(logger:name:startInstant:)(v55 + v56, 0xD000000000000012, 0x800000021D097370);
  (v159)(v73, v75, v74);
  v76 = sub_21D094210();
  v77 = sub_21D094580();
  v78 = os_log_type_enabled(v76, v77);
  v79 = *(v1 + 288);
  v80 = *(v1 + 296);
  v81 = *(v1 + 280);
  v178 = v1;
  if (v78)
  {
    v82 = *(v1 + 248);
    v83 = *(v1 + 240);
    v84 = *(v178 + 232);
    v85 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v181[0] = v176;
    *v85 = 136315138;
    v173 = v77;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v86 = sub_21D094790();
    v88 = v87;
    (*(v83 + 8))(v82, v84);
    v1 = v178;
    (*(v79 + 8))(v80, v81);
    v89 = sub_21D05550C(v86, v88, v181);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_21D044000, v76, v173, "%s sending private ML request", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v176);
    MEMORY[0x223D3CDF0](v176, -1, -1);
    MEMORY[0x223D3CDF0](v85, -1, -1);
  }

  else
  {

    (*(v79 + 8))(v80, v81);
  }

  sub_21D0941A0();
  sub_21D094150();

  v96 = sub_21D0941A0();
  v97 = sub_21D094670();

  v98 = sub_21D094680();
  v100 = *(v1 + 216);
  v99 = *(v1 + 224);
  v101 = *(v1 + 208);
  if (v98)
  {
    v103 = *(v1 + 56);
    v102 = *(v1 + 64);
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v181[0] = v105;
    *v104 = 136446210;
    *(v104 + 4) = sub_21D05550C(v103, v102, v181);
    v106 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v96, v97, v106, "executePrivateMLRequest", "request parsed requestIdentifier=%{public, signpost.description=attribute,public}s)", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x223D3CDF0](v105, -1, -1);
    MEMORY[0x223D3CDF0](v104, -1, -1);
  }

  (*(v100 + 8))(v99, v101);
  v107 = sub_21D093BE0();
  v109 = v108;
  *(v1 + 528) = v108;
  v110 = sub_21D093BB0();
  v111 = *(v110 + 16);
  if (v111)
  {
    v164 = v109;
    v166 = v107;
    v112 = *(v1 + 192);
    v113 = *(v1 + 168);
    v181[0] = MEMORY[0x277D84F90];
    sub_21D08FADC(0, v111, 0);
    v114 = v181[0];
    v115 = *(v112 + 16);
    v112 += 16;
    v116 = v110 + ((*(v112 + 64) + 32) & ~*(v112 + 64));
    v168 = *(v112 + 56);
    v174 = v115;
    v170 = (v112 - 8);
    while (1)
    {
      v117 = *(v1 + 200);
      v118 = *(v1 + 176);
      v119 = *(v1 + 184);
      v120 = *(v1 + 160);
      v174(v117, v116, v119);
      sub_21D093BF0();
      v121 = sub_21D093B80();
      v123 = v122;
      (*(v113 + 8))(v118, v120);
      v124 = sub_21D093C00();
      v125 = (*v170)(v117, v119);
      if ((v124 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v124))
      {
        goto LABEL_52;
      }

      v181[0] = v114;
      v134 = *(v114 + 16);
      v133 = *(v114 + 24);
      if (v134 >= v133 >> 1)
      {
        sub_21D08FADC((v133 > 1), v134 + 1, 1);
        v114 = v181[0];
      }

      *(v114 + 16) = v134 + 1;
      v135 = v114 + 24 * v134;
      *(v135 + 32) = v121;
      *(v135 + 40) = v123;
      *(v135 + 48) = v124;
      v116 += v168;
      --v111;
      v1 = v178;
      if (!v111)
      {

        v109 = v164;
        v107 = v166;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {

    v114 = MEMORY[0x277D84F90];
LABEL_48:
    *(v1 + 536) = v114;
    v149 = v114;
    v150 = *(v1 + 328);
    v151 = *(v1 + 96);
    v153 = *(v1 + 48);
    v152 = *(v1 + 56);
    v154 = *(v1 + 32);
    v155 = swift_task_alloc();
    *(v1 + 544) = v155;
    v156 = *(v1 + 64);
    v157 = *(v1 + 104);
    *(v155 + 16) = v153;
    *(v155 + 24) = v151;
    *(v155 + 32) = v150;
    *(v155 + 40) = v152;
    *(v155 + 48) = v156;
    *(v155 + 64) = v154;
    *(v155 + 72) = v157;
    v158 = swift_task_alloc();
    *(v1 + 552) = v158;
    v132 = sub_21D093EB0();
    *v158 = v1;
    v158[1] = sub_21D082048;
    v126 = *(v1 + 328);
    v125 = *(v1 + 16);
    v130 = &unk_21D096418;
    v127 = v107;
    v128 = v109;
    v129 = v149;
    v131 = v155;
  }

  return MEMORY[0x2821A23A0](v125, v126, v127, v128, v129, v130, v131, v132);
}

uint64_t sub_21D083B2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, unint64_t a9@<X8>)
{
  v861 = a8;
  v773 = a7;
  v778 = a6;
  v779 = a4;
  v761 = a2;
  v760 = a1;
  v812 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54420, &qword_21D096430);
  MEMORY[0x28223BE20](v11 - 8);
  v750 = &v739 - v12;
  v824 = sub_21D093BA0();
  v753 = *(v824 - 8);
  v13 = MEMORY[0x28223BE20](v824);
  v804 = &v739 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v849 = (&v739 - v15);
  v815 = sub_21D093D80();
  v771 = *(v815 - 8);
  MEMORY[0x28223BE20](v815);
  v826 = &v739 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v801 = sub_21D094370();
  v752 = *(v801 - 8);
  MEMORY[0x28223BE20](v801);
  v800 = &v739 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v828 = sub_21D093150();
  v770 = *(v828 - 8);
  MEMORY[0x28223BE20](v828);
  v827 = &v739 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v820 = sub_21D0943A0();
  v766 = *(v820 - 8);
  MEMORY[0x28223BE20](v820);
  v844 = &v739 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v864 = sub_21D0931B0();
  isa = v864[-1].isa;
  v20 = MEMORY[0x28223BE20](v864);
  v814 = &v739 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v813 = (&v739 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v817 = &v739 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v816 = (&v739 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v848 = &v739 - v29;
  MEMORY[0x28223BE20](v28);
  v847 = (&v739 - v30);
  v856 = sub_21D093DB0();
  v756 = *(v856 - 8);
  v31 = MEMORY[0x28223BE20](v856);
  v819 = &v739 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v830 = &v739 - v34;
  MEMORY[0x28223BE20](v33);
  v859 = &v739 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54428, &qword_21D096438);
  MEMORY[0x28223BE20](v36 - 8);
  v762 = &v739 - v37;
  v832 = sub_21D093DC0();
  v754 = *(v832 - 8);
  MEMORY[0x28223BE20](v832);
  v860 = (&v739 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v846 = sub_21D093DE0();
  v851 = *(v846 - 8);
  MEMORY[0x28223BE20](v846);
  v845 = &v739 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v765 = sub_21D0931D0();
  v755 = *(v765 - 8);
  MEMORY[0x28223BE20](v765);
  v853 = &v739 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v774 = sub_21D093DF0();
  v769 = *(v774 - 8);
  v41 = MEMORY[0x28223BE20](v774);
  v780 = &v739 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v763 = &v739 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54430, &qword_21D096440);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v768 = (&v739 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v45);
  v767 = (&v739 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54438, &qword_21D096448);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v837 = &v739 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v757 = &v739 - v51;
  v823 = sub_21D093C10();
  v805 = *(v823 - 8);
  v52 = MEMORY[0x28223BE20](v823);
  v803 = &v739 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v843 = &v739 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54400, &qword_21D096400);
  MEMORY[0x28223BE20](v55 - 8);
  v783 = (&v739 - v56);
  v759 = sub_21D093E20();
  v758 = *(v759 - 8);
  MEMORY[0x28223BE20](v759);
  v764 = &v739 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542F8, &qword_21D095E78);
  MEMORY[0x28223BE20](v58 - 8);
  v782 = &v739 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54440, &qword_21D096450);
  MEMORY[0x28223BE20](v60 - 8);
  v787 = (&v739 - v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54408, &qword_21D096408);
  MEMORY[0x28223BE20](v62 - 8);
  *&v795 = &v739 - v63;
  v789 = sub_21D0937A0();
  v791 = *(v789 - 1);
  MEMORY[0x28223BE20](v789);
  v788 = &v739 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v776 = sub_21D0932F0();
  v775 = *(v776 - 8);
  MEMORY[0x28223BE20](v776);
  v772 = (&v739 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54448, &qword_21D096458);
  MEMORY[0x28223BE20](v66 - 8);
  v793 = &v739 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54450, &qword_21D096460);
  v69 = MEMORY[0x28223BE20](v68 - 8);
  v784 = (&v739 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v69);
  v790 = &v739 - v71;
  v72 = sub_21D0944D0();
  MEMORY[0x28223BE20](v72 - 8);
  v792 = (&v739 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  v829 = sub_21D092FC0();
  v74 = *(v829 - 8);
  v75 = MEMORY[0x28223BE20](v829);
  v794 = (&v739 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v75);
  v831 = (&v739 - v77);
  v78 = sub_21D094070();
  v79 = *(v78 - 8);
  v80 = MEMORY[0x28223BE20](v78);
  v749 = &v739 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v786 = (&v739 - v83);
  v84 = MEMORY[0x28223BE20](v82);
  v744 = &v739 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v743 = &v739 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v798 = &v739 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v742 = &v739 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v797 = &v739 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v818 = &v739 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v751 = &v739 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v745 = &v739 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v808 = &v739 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v748 = &v739 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v746 = &v739 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v747 = (&v739 - v107);
  v108 = MEMORY[0x28223BE20](v106);
  v777 = (&v739 - v109);
  v110 = MEMORY[0x28223BE20](v108);
  v806 = &v739 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v854 = &v739 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v842 = (&v739 - v115);
  v116 = MEMORY[0x28223BE20](v114);
  v855 = (&v739 - v117);
  v118 = MEMORY[0x28223BE20](v116);
  v120 = (&v739 - v119);
  v121 = MEMORY[0x28223BE20](v118);
  v123 = &v739 - v122;
  MEMORY[0x28223BE20](v121);
  v125 = &v739 - v124;
  v781 = a5;
  sub_21D093970();
  v852 = a3;
  v862 = v78;
  v841 = v74;
  v840 = v120;
  if (v126)
  {
    (*(v79 + 16))(v125, a3, v78);
    v127 = sub_21D094210();
    v128 = v79;
    v129 = sub_21D094580();
    if (os_log_type_enabled(v127, v129))
    {
      v130 = swift_slowAlloc();
      v857 = v130;
      v858 = swift_slowAlloc();
      v872 = v858;
      *v130 = 136315138;
      v131 = v831;
      sub_21D094010();
      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v132 = v829;
      v133 = sub_21D094790();
      v135 = v134;
      (*(v841 + 8))(v131, v132);
      (*(v128 + 8))(v125, v862);
      v136 = sub_21D05550C(v133, v135, &v872);
      v78 = v862;

      v137 = v857;
      *(v857 + 1) = v136;
      v138 = v137;
      _os_log_impl(&dword_21D044000, v127, v129, "%s max tokens not set will be overriden.", v137, 0xCu);
      v139 = v858;
      __swift_destroy_boxed_opaque_existential_0(v858);
      MEMORY[0x223D3CDF0](v139, -1, -1);
      MEMORY[0x223D3CDF0](v138, -1, -1);
    }

    else
    {

      (*(v128 + 8))(v125, v78);
    }

    a3 = v852;
    v79 = v128;
    v120 = v840;
  }

  v140 = sub_21D093970();
  v857 = *(v79 + 16);
  v858 = (v79 + 16);
  if ((v141 & 1) == 0 && !v140)
  {
    (v857)(v123, a3, v78);
    v142 = sub_21D094210();
    v143 = sub_21D094580();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v838 = v144;
      v839 = swift_slowAlloc();
      v872 = v839;
      LODWORD(v144->isa) = 136315138;
      v145 = v831;
      sub_21D094010();
      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v146 = v829;
      v147 = sub_21D094790();
      v148 = v79;
      v150 = v149;
      (*(v841 + 8))(v145, v146);
      (*(v148 + 8))(v123, v862);
      v151 = sub_21D05550C(v147, v150, &v872);
      v79 = v148;
      a3 = v852;

      v152 = v838;
      *(v838 + 4) = v151;
      v153 = v152;
      _os_log_impl(&dword_21D044000, v142, v143, "%s max tokens is set to zero.", v152, 0xCu);
      v154 = v839;
      __swift_destroy_boxed_opaque_existential_0(v839);
      v78 = v862;
      MEMORY[0x223D3CDF0](v154, -1, -1);
      MEMORY[0x223D3CDF0](v153, -1, -1);
    }

    else
    {

      (*(v79 + 8))(v123, v78);
    }

    v120 = v840;
  }

  v155 = v857;
  (v857)(v120, a3, v78);
  v156 = v855;
  v155(v855, a3, v78);
  v157 = sub_21D094210();
  v158 = sub_21D094580();
  v159 = os_log_type_enabled(v157, v158);
  v863 = v79;
  if (v159)
  {
    v160 = swift_slowAlloc();
    LODWORD(v838) = v158;
    v161 = v160;
    v839 = swift_slowAlloc();
    v872 = v839;
    *v161 = 136315394;
    v162 = v831;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v163 = v829;
    v164 = sub_21D094790();
    v166 = v165;
    (*(v841 + 8))(v162, v163);
    v167 = *(v79 + 8);
    v167(v120, v862);
    v168 = sub_21D05550C(v164, v166, &v872);

    *(v161 + 4) = v168;
    *(v161 + 12) = 2080;
    sub_21D094040();
    v169 = sub_21D094540();
    v171 = v170;

    v855 = v167;
    v167(v156, v862);
    v172 = v169;
    v78 = v862;
    v173 = sub_21D05550C(v172, v171, &v872);
    a3 = v852;

    *(v161 + 14) = v173;
    _os_log_impl(&dword_21D044000, v157, v838, "%s initializing private ML request asset identifiers: %s", v161, 0x16u);
    v174 = v839;
    swift_arrayDestroy();
    MEMORY[0x223D3CDF0](v174, -1, -1);
    MEMORY[0x223D3CDF0](v161, -1, -1);
  }

  else
  {

    v175 = *(v79 + 8);
    v175(v156, v78);
    v855 = v175;
    v175(v120, v78);
  }

  v176 = v854;
  v177 = v842;
  v178 = v857;
  (v857)(v842, a3, v78);
  v178(v176, a3, v78);
  v179 = sub_21D094210();
  v180 = sub_21D094580();
  if (os_log_type_enabled(v179, v180))
  {
    v181 = swift_slowAlloc();
    v840 = swift_slowAlloc();
    v872 = v840;
    *v181 = 136315394;
    v182 = v831;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v183 = v176;
    v184 = v829;
    v185 = sub_21D094790();
    v187 = v186;
    (*(v841 + 8))(v182, v184);
    v188 = (v863 + 1);
    v189 = v855;
    (v855)(v177, v862);
    v190 = sub_21D05550C(v185, v187, &v872);

    *(v181 + 4) = v190;
    *(v181 + 12) = 2080;
    v191 = sub_21D094060();
    v193 = v192;
    v854 = v188;
    v189(v183, v862);
    v194 = sub_21D05550C(v191, v193, &v872);
    v78 = v862;

    *(v181 + 14) = v194;
    v195 = v180;
    v196 = v841;
    _os_log_impl(&dword_21D044000, v179, v195, "%s request assetBundleIdentifier: %s", v181, 0x16u);
    v197 = v840;
    swift_arrayDestroy();
    MEMORY[0x223D3CDF0](v197, -1, -1);
    v198 = v181;
    v199 = &qword_21D095000;
    MEMORY[0x223D3CDF0](v198, -1, -1);
  }

  else
  {

    v200 = (v863 + 1);
    v201 = v855;
    (v855)(v176, v78);
    v854 = v200;
    v201(v177, v78);
    v196 = v841;
    v199 = &qword_21D095000;
  }

  v802 = sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);
  v863 = sub_21D094590();
  v842 = v202;
  sub_21D093040();
  swift_allocObject();
  v796 = sub_21D093030();
  v203 = sub_21D094040();
  v810 = 0;
  v834 = 0;
  v811 = 0;
  v205 = 0;
  v207 = v203 + 56;
  v206 = *(v203 + 56);
  v840 = v203;
  v208 = 1 << *(v203 + 32);
  v209 = -1;
  if (v208 < 64)
  {
    v209 = ~(-1 << v208);
  }

  v210 = v209 & v206;
  v211 = ((v208 + 63) >> 6);
  v825 = (v196 + 8);
  v785 = "executePrivateMLRequest";
  v839 = 0xE300000000000000;
  v836 = 0xE000000000000000;
  *&v204 = v199[285];
  v809 = v204;
  *&v204 = 136315650;
  v799 = v204;
  v212 = 0xE000000000000000;
  v838 = 0xE000000000000000;
  v833 = 5065804;
  v213 = v861;
  v821 = (v203 + 56);
  v835 = v211;
  while (1)
  {
    while (1)
    {
      if (!v210)
      {
        while (1)
        {
          v214 = v205 + 1;
          if (__OFADD__(v205, 1))
          {
            __break(1u);
LABEL_238:
            __break(1u);
LABEL_239:
            __break(1u);
            goto LABEL_240;
          }

          if (v214 >= v211)
          {
            break;
          }

          v210 = *(v207 + 8 * v214);
          ++v205;
          if (v210)
          {
            v205 = v214;
            goto LABEL_26;
          }
        }

        v78 = v212;

        v339 = v831;
        sub_21D094010();
        sub_21D094050();
        sub_21D0933B0();
        sub_21D094010();
        v340 = sub_21D094030();
        sub_21D0605B4(v339, v340, 0);
        v341 = *v825;
        v342 = v339;
        v343 = v829;
        (*v825)(v342, v829);
        sub_21D093300();
        v344 = v794;
        sub_21D094010();
        v345 = sub_21D093FF0();
        v212 = sub_21D0605B4(v344, v345, 1);
        v872 = v212;
        v873 = v346;
        strcpy(&v870, "com.unknown.");
        BYTE13(v870) = 0;
        HIWORD(v870) = -5120;
        sub_21D091198();
        v347 = sub_21D0946A0();
        v821 = v341;
        v341(v344, v343);
        if (v347)
        {

          v212 = 0;
        }

        v348 = v781;
        v349 = v837;
        v196 = v795;
        v207 = v812;
        sub_21D093390();
        sub_21D093320();
        sub_21D093260();
        sub_21D093270();
        v350 = v852;
        sub_21D094060();
        sub_21D093170();
        sub_21D093B70();
        sub_21D093280();
        v211 = v348;
        v351 = sub_21D0939A0();
        if (v352)
        {
          v351 = 0;
        }

        if ((v351 & 0x8000000000000000) != 0)
        {
          goto LABEL_242;
        }

        v214 = HIDWORD(v351);
        if (HIDWORD(v351))
        {
          goto LABEL_243;
        }

        v207 = v812;
        sub_21D093100();
        sub_21D093370();
        sub_21D093950();
        sub_21D093180();
        v211 = v348;
        v353 = sub_21D093970();
        if ((v354 & 1) == 0)
        {
          if ((v353 & 0x8000000000000000) != 0)
          {
            goto LABEL_245;
          }

          v214 = HIDWORD(v353);
          if (HIDWORD(v353))
          {
            goto LABEL_246;
          }

          LOBYTE(v872) = 0;
          v207 = v812;
          sub_21D093490();
        }

        sub_21D093960();
        sub_21D093240();
        sub_21D093990();
        sub_21D093310();
        v211 = v348;
        v355 = sub_21D093940();
        if (v356)
        {
          v355 = 0;
        }

        if (v355 < 0)
        {
          goto LABEL_244;
        }

        sub_21D093110();
        v357 = v350;
        sub_21D094020();
        sub_21D0934A0();
        sub_21D0939B0();
        sub_21D093190();
        sub_21D093980();
        sub_21D093250();
        sub_21D093480();
        sub_21D0944F0();
        sub_21D0931E0();
        v358 = v793;
        sub_21D0939C0();
        v359 = v358;
        v360 = sub_21D093930();
        v361 = *(v360 - 8);
        if ((*(v361 + 48))(v359, 1, v360) == 1)
        {
          sub_21D04D27C(v359, &qword_27CE54448, &qword_21D096458);
          v362 = sub_21D093910();
          v363 = v790;
          (*(*(v362 - 8) + 56))(v790, 1, 1, v362);
          sub_21D04D27C(v363, &qword_27CE54450, &qword_21D096460);
LABEL_99:
          v370 = v789;
          v371 = v791;
          goto LABEL_100;
        }

        v364 = v790;
        sub_21D093920();
        (*(v361 + 8))(v359, v360);
        v365 = sub_21D093910();
        v366 = *(v365 - 8);
        (*(v366 + 56))(v364, 0, 1, v365);
        v367 = v784;
        sub_21D05B208(v364, v784, &qword_27CE54450, &qword_21D096460);
        v368 = (*(v366 + 88))(v367, v365);
        if (v368 == *MEMORY[0x277D71C40])
        {
          (*(v366 + 96))(v367, v365);
          v369 = v772;
          *v772 = *v367;
          (*(v775 + 104))(v369, *MEMORY[0x277D414B8], v776);
          sub_21D093350();
          goto LABEL_99;
        }

        v371 = v791;
        if (v368 == *MEMORY[0x277D71C48])
        {
          v381 = v784;
          (*(v366 + 96))(v784, v365);
          v382 = *v381;
          if ((*v381 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v370 = v789;
            if (!HIDWORD(v382))
            {
              v383 = v772;
              *v772 = v382;
              (*(v775 + 104))(v383, *MEMORY[0x277D414C0], v776);
              sub_21D093350();
              goto LABEL_100;
            }
          }

          __break(1u);
          goto LABEL_250;
        }

        if (v368 == *MEMORY[0x277D71C50])
        {
          (*(v775 + 104))(v772, *MEMORY[0x277D414C8], v776);
          sub_21D093350();
        }

        else
        {
          (*(v366 + 8))(v784, v365);
        }

        v370 = v789;
LABEL_100:
        sub_21D05B270(v778, v196, &qword_27CE54408, &qword_21D096408);
        v372 = (*(v371 + 48))(v196, 1, v370);
        v373 = v788;
        v374 = v787;
        if (v372 == 1)
        {
          sub_21D04D27C(v196, &qword_27CE54408, &qword_21D096408);
        }

        else
        {
          (*(v371 + 32))(v788, v196, v370);
          v375 = v822;
          Constraints.toTMLConstraints(logger:)(v861, v374);
          v822 = v375;
          if (v375)
          {

            sub_21D04FE3C(v760, v761);
            v376 = sub_21D094230();
            (*(*(v376 - 8) + 8))(v861, v376);
            sub_21D04D27C(v773, &qword_27CE54400, &qword_21D096400);
            sub_21D04D27C(v778, &qword_27CE54408, &qword_21D096408);
            v377 = sub_21D0939D0();
            (*(*(v377 - 8) + 8))(v348, v377);
            v378 = sub_21D093C60();
            (*(*(v378 - 8) + 8))(v779, v378);
            (v855)(v357, v862);
            (*(v371 + 8))(v373, v370);
            v379 = sub_21D0934B0();
            return (*(*(v379 - 8) + 8))(v812, v379);
          }

          sub_21D093290();
          (*(v371 + 8))(v373, v370);
        }

        v384 = v782;
        sub_21D094000();
        v385 = sub_21D093E70();
        v386 = *(v385 - 8);
        v387 = (*(v386 + 48))(v384, 1, v385);
        v388 = v349;
        if (v387 == 1)
        {
          sub_21D04D27C(v384, &qword_27CE542F8, &qword_21D095E78);
        }

        else
        {
          sub_21D093E50();
          (*(v386 + 8))(v384, v385);
        }

        v389 = v786;
        v390 = v783;
        LOBYTE(v872) = v387 == 1;
        sub_21D093360();
        sub_21D05B270(v773, v390, &qword_27CE54400, &qword_21D096400);
        v391 = v758;
        v392 = v759;
        if ((*(v758 + 48))(v390, 1, v759) != 1)
        {
          (*(v391 + 32))(v764, v390, v392);
          v414 = v757;
          sub_21D093E10();
          v415 = sub_21D092FE0();
          v416 = *(v415 - 8);
          if ((*(v416 + 48))(v414, 1, v415) == 1)
          {
            sub_21D04D27C(v414, &qword_27CE54438, &qword_21D096448);
            v417 = v862;
            goto LABEL_131;
          }

          v207 = sub_21D092FD0();
          v212 = v418;
          (*(v416 + 8))(v414, v415);
          v211 = sub_21D0933F0();
          v78 = v419;
          v196 = *v419;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v78 = v196;
          v214 = &v854;
          if (isUniquelyReferenced_nonNull_native)
          {
            v421 = v822;
            goto LABEL_128;
          }

          goto LABEL_247;
        }

        sub_21D04D27C(v390, &qword_27CE54400, &qword_21D096400);
        v393 = sub_21D093BB0();
        v394 = *(v393 + 16);
        if (v394)
        {
          v863 = *(v805 + 16);
          v395 = (*(v805 + 80) + 32) & ~*(v805 + 80);
          v853 = v393;
          v396 = v393 + v395;
          v860 = *(v805 + 72);
          v864 = (v805 + 16);
          v397 = (v805 + 8);
          v398 = (v753 + 8);
          do
          {
            v399 = v843;
            v400 = v823;
            (v863)(v843, v396, v823);
            v401 = v849;
            sub_21D093BF0();
            (*v397)(v399, v400);
            sub_21D093B90();
            (*v398)(v401, v824);
            v402 = sub_21D092FE0();
            v403 = *(v402 - 8);
            if ((*(v403 + 48))(v388, 1, v402) == 1)
            {
              sub_21D04D27C(v388, &qword_27CE54438, &qword_21D096448);
            }

            else
            {
              v859 = sub_21D092FD0();
              v856 = v404;
              (*(v403 + 8))(v388, v402);
              v405 = sub_21D0933F0();
              v407 = v406;
              v408 = *v406;
              v409 = swift_isUniquelyReferenced_nonNull_native();
              *v407 = v408;
              if ((v409 & 1) == 0)
              {
                v408 = sub_21D054FD0(0, *(v408 + 2) + 1, 1, v408);
                *v407 = v408;
              }

              v411 = *(v408 + 2);
              v410 = *(v408 + 3);
              if (v411 >= v410 >> 1)
              {
                v408 = sub_21D054FD0((v410 > 1), v411 + 1, 1, v408);
                *v407 = v408;
              }

              v388 = v837;
              *(v408 + 2) = v411 + 1;
              v412 = &v408[16 * v411];
              v413 = v856;
              *(v412 + 4) = v859;
              *(v412 + 5) = v413;
              v405(&v872, 0);
            }

            v396 += v860;
            --v394;
          }

          while (v394);

          v348 = v781;
          v389 = v786;
        }

        else
        {
        }

        v605 = v852;
        v606 = v862;
        (v857)(v389, v852, v862);
        v607 = sub_21D094210();
        v608 = sub_21D094580();
        if (os_log_type_enabled(v607, v608))
        {
          v609 = swift_slowAlloc();
          v864 = swift_slowAlloc();
          v872 = v864;
          *v609 = 136315138;
          v610 = v389;
          v611 = v831;
          LODWORD(v863) = v608;
          sub_21D094010();
          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v612 = v829;
          v613 = sub_21D094790();
          v615 = v614;
          v616 = v612;
          v605 = v852;
          v821(v611, v616);
          (v855)(v610, v606);
          v617 = sub_21D05550C(v613, v615, &v872);

          *(v609 + 4) = v617;
          _os_log_impl(&dword_21D044000, v607, v863, "%s Setup CompletePrompt.", v609, 0xCu);
          v618 = v864;
          __swift_destroy_boxed_opaque_existential_0(v864);
          MEMORY[0x223D3CDF0](v618, -1, -1);
          MEMORY[0x223D3CDF0](v609, -1, -1);
        }

        else
        {

          (v855)(v389, v606);
        }

        while (1)
        {
          v856 = sub_21D093BE0();
          v853 = v651;
          v652 = sub_21D093BB0();
          v653 = *(v652 + 16);
          if (!v653)
          {
            break;
          }

          v872 = MEMORY[0x277D84F90];
          sub_21D08FADC(0, v653, 0);
          v78 = v872;
          v864 = *(v805 + 16);
          v654 = (*(v805 + 80) + 32) & ~*(v805 + 80);
          v851 = v652;
          v655 = v652 + v654;
          v859 = *(v805 + 72);
          v863 = (v753 + 8);
          v805 += 16;
          v860 = (v805 - 8);
          while (1)
          {
            v196 = v803;
            v212 = v823;
            (v864)(v803, v655, v823);
            v656 = v804;
            sub_21D093BF0();
            v657 = sub_21D093B80();
            v659 = v658;
            (*v863)(v656, v824);
            v211 = v196;
            v207 = sub_21D093C00();
            (*v860)(v196, v212);
            if ((v207 & 0x8000000000000000) != 0)
            {
              break;
            }

            v214 = HIDWORD(v207);
            if (HIDWORD(v207))
            {
              goto LABEL_241;
            }

            v872 = v78;
            v661 = *(v78 + 16);
            v660 = *(v78 + 24);
            if (v661 >= v660 >> 1)
            {
              sub_21D08FADC((v660 > 1), v661 + 1, 1);
              v78 = v872;
            }

            *(v78 + 16) = v661 + 1;
            v662 = v78 + 24 * v661;
            *(v662 + 32) = v657;
            *(v662 + 40) = v659;
            *(v662 + 48) = v207;
            v655 += v859;
            if (!--v653)
            {

              v605 = v852;
              v348 = v781;
              goto LABEL_216;
            }
          }

LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          v421 = *(v214 - 256);
          v196 = sub_21D054FD0(0, *(v196 + 2) + 1, 1, v196);
          *v78 = v196;
LABEL_128:
          v423 = *(v196 + 2);
          v422 = *(v196 + 3);
          if (v423 >= v422 >> 1)
          {
            v196 = sub_21D054FD0((v422 > 1), v423 + 1, 1, v196);
            *v78 = v196;
          }

          v417 = v862;
          *(v196 + 2) = v423 + 1;
          v424 = &v196[16 * v423];
          *(v424 + 4) = v207;
          *(v424 + 5) = v212;
          (v211)(&v872, 0);
          v822 = v421;
LABEL_131:
          v425 = v855;
          sub_21D093D40();
          sub_21D093340();
          sub_21D093D50();
          sub_21D0933D0();
          v426 = v751;
          (v857)(v751, v852, v417);
          v427 = sub_21D094210();
          v428 = sub_21D094580();
          if (os_log_type_enabled(v427, v428))
          {
            v429 = v426;
            v430 = swift_slowAlloc();
            v863 = swift_slowAlloc();
            v872 = v863;
            *v430 = 136315138;
            v431 = v831;
            sub_21D094010();
            sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v432 = v829;
            v433 = sub_21D094790();
            v435 = v434;
            v821(v431, v432);
            v425(v429, v862);
            v436 = sub_21D05550C(v433, v435, &v872);

            *(v430 + 4) = v436;
            _os_log_impl(&dword_21D044000, v427, v428, "%s Setup PromptTemplate.", v430, 0xCu);
            v437 = v863;
            __swift_destroy_boxed_opaque_existential_0(v863);
            v438 = v862;
            MEMORY[0x223D3CDF0](v437, -1, -1);
            MEMORY[0x223D3CDF0](v430, -1, -1);
          }

          else
          {

            v438 = v417;
            v425(v426, v417);
          }

          v439 = v774;
          v440 = v832;
          v441 = v771;
          v442 = v770;
          v211 = v764;
          v443 = sub_21D093E00();
          v445 = 0;
          v447 = (v443 + 64);
          v446 = *(v443 + 64);
          v757 = v443;
          v448 = 1 << *(v443 + 32);
          v449 = -1;
          if (v448 < 64)
          {
            v449 = ~(-1 << v448);
          }

          v450 = v449 & v446;
          v745 = ((v448 + 63) >> 6);
          v751 = (v769 + 16);
          v777 = (v769 + 32);
          v842 = (v851 + 16);
          LODWORD(v841) = *MEMORY[0x277D71EA8];
          LODWORD(v811) = *MEMORY[0x277D71EB0];
          LODWORD(v793) = *MEMORY[0x277D71E98];
          v784 = (v441 + 32);
          v783 = (v441 + 8);
          v792 = (v766 + 32);
          v788 = v442 + 104;
          v787 = (v442 + 16);
          LODWORD(v782) = *MEMORY[0x277D41488];
          v786 = (v442 + 8);
          v794 = (v766 + 8);
          LODWORD(v791) = *MEMORY[0x277D42DA0];
          v810 = v756 + 4;
          *&v809 = v756 + 2;
          v840 = v756 + 1;
          LODWORD(v776) = *MEMORY[0x277D42D98];
          v747 = (v755 + 2);
          *&v444 = 136315138;
          v795 = v444;
          v746 = (v755 + 7);
          ++v755;
          LODWORD(v775) = *MEMORY[0x277D41478];
          LODWORD(v790) = *MEMORY[0x277D41468];
          LODWORD(v785) = *MEMORY[0x277D41498];
          LODWORD(v808) = *MEMORY[0x277D41490];
          v839 = (v851 + 8);
          v838 = (v754 + 88);
          v837 = (v754 + 96);
          v836 = isa + 13;
          v835 = isa + 2;
          v834 = isa + 4;
          v833 = &isa[1];
          v789 = (v752 + 88);
          v78 = &qword_27CE54468;
          v196 = &qword_21D096480;
          v756 = (v769 + 8);
          v748 = v447;
          while (1)
          {
            if (!v450)
            {
              if (v745 <= (v445 + 1))
              {
                v457 = (v445 + 1);
              }

              else
              {
                v457 = v745;
              }

              v207 = (v457 - 1);
              v212 = v856;
              while (1)
              {
                v214 = v445 + 1;
                if (__OFADD__(v445, 1))
                {
                  goto LABEL_239;
                }

                if (v214 >= v745)
                {
                  v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54468, &qword_21D096480);
                  v467 = v768;
                  (*(*(v580 - 8) + 56))(v768, 1, 1, v580);
                  v770 = 0;
                  v771 = v207;
                  goto LABEL_149;
                }

                v450 = *&v447[8 * v214];
                ++v445;
                if (v450)
                {
                  v456 = v439;
                  v771 = v214;
                  goto LABEL_148;
                }
              }
            }

            v456 = v439;
            v771 = v445;
            v214 = v445;
LABEL_148:
            v770 = (v450 - 1) & v450;
            v458 = __clz(__rbit64(v450)) | (v214 << 6);
            v459 = (*(v757 + 6) + 16 * v458);
            v461 = *v459;
            v460 = v459[1];
            v462 = v769;
            v463 = v763;
            v464 = v456;
            (*(v769 + 16))(v763, *(v757 + 7) + *(v769 + 72) * v458, v456);
            v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54468, &qword_21D096480);
            v466 = *(v465 + 48);
            v467 = v768;
            *v768 = v461;
            *(v467 + 8) = v460;
            v468 = *(v462 + 32);
            v439 = v464;
            v468(v467 + v466, v463, v464);
            (*(*(v465 - 8) + 56))(v467, 0, 1, v465);

            v212 = v856;
            v440 = v832;
LABEL_149:
            v469 = v767;
            sub_21D05B208(v467, v767, &qword_27CE54430, &qword_21D096440);
            v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54468, &qword_21D096480);
            if ((*(*(v207 - 8) + 48))(v469, 1, v207) == 1)
            {
              break;
            }

            v470 = v469[1];
            v766 = *v469;
            v772 = v470;
            v471 = v469 + *(v207 + 48);
            v211 = v780;
            (*v777)(v780, v471, v439);
            sub_21D0931C0();
            v472 = sub_21D093D60();
            v196 = v852;
            v849 = *(v472 + 16);
            if (v849)
            {
              v78 = 0;
              v843 = v472;
              do
              {
                v214 = *(v472 + 16);
                if (v78 >= v214)
                {
                  goto LABEL_238;
                }

                v475 = v851;
                v476 = v845;
                v477 = v846;
                (*(v851 + 16))(v845, v472 + ((*(v475 + 80) + 32) & ~*(v475 + 80)) + *(v475 + 72) * v78, v846);
                v478 = v860;
                sub_21D093DD0();
                (*(v475 + 8))(v476, v477);
                v479 = (*v838)(v478, v440);
                v863 = v78;
                if (v479 == v841)
                {
                  (*v837)(v478, v440);
                  v480 = v859;
                  (v810->isa)(v859, v478, v212);
                  v481 = v818;
                  v482 = v196;
                  v483 = v438;
                  (v857)(v818, v196, v438);
                  v484 = *v809;
                  v485 = v830;
                  (*v809)(v830, v480, v212);
                  v486 = v819;
                  v484(v819, v480, v212);
                  v487 = sub_21D094210();
                  v488 = sub_21D094560();
                  if (os_log_type_enabled(v487, v488))
                  {
                    v489 = swift_slowAlloc();
                    v807 = swift_slowAlloc();
                    v872 = v807;
                    *v489 = v799;
                    v490 = v831;
                    LODWORD(v806) = v488;
                    sub_21D094010();
                    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                    v491 = v829;
                    v492 = sub_21D094790();
                    v493 = v483;
                    v495 = v494;
                    v496 = v491;
                    v440 = v832;
                    v821(v490, v496);
                    (v855)(v481, v493);
                    v497 = sub_21D05550C(v492, v495, &v872);

                    *(v489 + 4) = v497;
                    *(v489 + 12) = 2080;
                    v498 = v830;
                    v499 = sub_21D093DA0();
                    v501 = v500;
                    v502 = v840->isa;
                    v503 = v498;
                    v504 = v856;
                    (v840->isa)(v503, v856);
                    v505 = sub_21D05550C(v499, v501, &v872);

                    *(v489 + 14) = v505;
                    *(v489 + 22) = 1024;
                    LODWORD(v505) = sub_21D093D90() & 1;
                    v502(v486, v504);
                    *(v489 + 24) = v505;
                    _os_log_impl(&dword_21D044000, v487, v806, "%s VB Text %s isSelfAttention:%{BOOL}d", v489, 0x1Cu);
                    v506 = v807;
                    swift_arrayDestroy();
                    v196 = v852;
                    MEMORY[0x223D3CDF0](v506, -1, -1);
                    MEMORY[0x223D3CDF0](v489, -1, -1);
                  }

                  else
                  {
                    v502 = v840->isa;
                    (v840->isa)(v486, v212);

                    v502(v485, v212);
                    (v855)(v481, v483);
                    v196 = v482;
                    v440 = v832;
                  }

                  v523 = sub_21D093DA0();
                  v525 = v524;
                  v526 = sub_21D093D90();
                  v527 = v847;
                  *v847 = v523;
                  v527[1] = v525;
                  *(v527 + 16) = v526 & 1;
                  v528 = v864;
                  (v836->isa)(v527, v808, v864);
                  (v835->isa)(v848, v527, v528);
                  v207 = sub_21D0931A0();
                  v530 = v529;
                  v531 = *v529;
                  v532 = swift_isUniquelyReferenced_nonNull_native();
                  *v530 = v531;
                  if ((v532 & 1) == 0)
                  {
                    v531 = sub_21D055274(0, v531[2] + 1, 1, v531);
                    *v530 = v531;
                  }

                  v534 = v531[2];
                  v533 = v531[3];
                  if (v534 >= v533 >> 1)
                  {
                    v531 = sub_21D055274((v533 > 1), v534 + 1, 1, v531);
                    *v530 = v531;
                  }

                  v531[2] = v534 + 1;
                  v535 = isa;
                  v536 = v531 + ((LOBYTE(v535[10].isa) + 32) & ~LOBYTE(v535[10].isa)) + v535[9].isa * v534;
                  v211 = v864;
                  (isa[4].isa)(v536, v848, v864);
                  (v207)(&v872, 0);
                  (v535[1].isa)(v847, v211);
                  v212 = v856;
                  v502(v859, v856);
                }

                else
                {
                  if (v479 == v811)
                  {
                    v507 = v860;
                    (*v837)(v860, v440);
                    (*v792)(v844, v507, v820);
                    v508 = v797;
                    (v857)(v797, v196, v438);
                    v509 = sub_21D094210();
                    v510 = sub_21D094560();
                    if (os_log_type_enabled(v509, v510))
                    {
                      v511 = v508;
                      v512 = swift_slowAlloc();
                      v513 = swift_slowAlloc();
                      v872 = v513;
                      *v512 = v795;
                      v514 = v831;
                      sub_21D094010();
                      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                      v515 = v829;
                      v516 = sub_21D094790();
                      v518 = v517;
                      v519 = v515;
                      v440 = v832;
                      v821(v514, v519);
                      v520 = v511;
                      v196 = v852;
                      v438 = v862;
                      (v855)(v520, v862);
                      v521 = sub_21D05550C(v516, v518, &v872);

                      *(v512 + 4) = v521;
                      _os_log_impl(&dword_21D044000, v509, v510, "%s received rich variable binding imageData", v512, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v513);
                      MEMORY[0x223D3CDF0](v513, -1, -1);
                      MEMORY[0x223D3CDF0](v512, -1, -1);
                    }

                    else
                    {

                      v522 = (v855)(v508, v438);
                    }

                    v552 = v800;
                    MEMORY[0x223D3C460](v522);
                    v553 = (*v789)(v552, v801);
                    v554 = v790;
                    if (v553 != v791)
                    {
                      v554 = v775;
                      if (v553 != v776)
                      {

                        v619 = v196;
                        v620 = v742;
                        (v857)(v742, v619, v438);
                        v621 = sub_21D094210();
                        v622 = v438;
                        v623 = sub_21D094570();
                        if (os_log_type_enabled(v621, v623))
                        {
                          v624 = swift_slowAlloc();
                          v625 = swift_slowAlloc();
                          v872 = v625;
                          *v624 = v795;
                          v626 = v831;
                          sub_21D094010();
                          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                          v627 = v829;
                          v628 = sub_21D094790();
                          v630 = v629;
                          v821(v626, v627);
                          v631 = v620;
                          v632 = v862;
                          v633 = v855;
                          (v855)(v631, v862);
                          v634 = sub_21D05550C(v628, v630, &v872);

                          *(v624 + 4) = v634;
                          _os_log_impl(&dword_21D044000, v621, v623, "%s Unknown default image format for variable binding", v624, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v625);
                          MEMORY[0x223D3CDF0](v625, -1, -1);
                          MEMORY[0x223D3CDF0](v624, -1, -1);

                          v635 = v781;
                          v636 = v812;
                        }

                        else
                        {

                          v700 = v438;
                          v633 = v855;
                          (v855)(v620, v700);
                          v635 = v781;
                          v636 = v812;
                          v632 = v622;
                        }

                        v701 = v774;
                        sub_21D090BF4();
                        v702 = swift_allocError();
                        *v703 = 7;
                        *(v703 + 8) = 4;
                        v822 = v702;
                        swift_willThrow();

                        sub_21D04FE3C(v760, v761);
                        v704 = sub_21D094230();
                        (*(*(v704 - 8) + 8))(v861, v704);
                        sub_21D04D27C(v773, &qword_27CE54400, &qword_21D096400);
                        sub_21D04D27C(v778, &qword_27CE54408, &qword_21D096408);
                        v705 = sub_21D0939D0();
                        (*(*(v705 - 8) + 8))(v635, v705);
                        v706 = sub_21D093C60();
                        (*(*(v706 - 8) + 8))(v779, v706);
                        v633(v852, v632);
                        (v794->isa)(v844, v820);
                        (*v755)(v853, v765);
                        (v756->isa)(v780, v701);
                        (*(v758 + 8))(v764, v759);
                        v707 = sub_21D0934B0();
                        (*(*(v707 - 8) + 8))(v636, v707);
                        return (*(v752 + 8))(v800, v801);
                      }
                    }

                    (*v788)(v827, v554, v828);
                    if (sub_21D0945D0())
                    {
                      v555 = sub_21D094210();
                      v556 = sub_21D094580();
                      if (os_log_type_enabled(v555, v556))
                      {
                        v557 = swift_slowAlloc();
                        *v557 = 0;
                        _os_log_impl(&dword_21D044000, v555, v556, "UserDefaults.convertJpgToBitmap is true. Converting jpg to bitmap", v557, 2u);
                        MEMORY[0x223D3CDF0](v557, -1, -1);
                      }
                    }

                    v558 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54470, &qword_21D096488) + 48);
                    v559 = sub_21D094380();
                    v560 = v816;
                    *v816 = v559;
                    v560[1] = v561;
                    (*v787)(v560 + v558, v827, v828);
                    v562 = v864;
                    (v836->isa)(v560, v785, v864);
                    (v835->isa)(v817, v560, v562);
                    v207 = sub_21D0931A0();
                    v564 = v563;
                    v565 = *v563;
                    v566 = swift_isUniquelyReferenced_nonNull_native();
                    *v564 = v565;
                    if ((v566 & 1) == 0)
                    {
                      v565 = sub_21D055274(0, v565[2] + 1, 1, v565);
                      *v564 = v565;
                    }

                    v568 = v565[2];
                    v567 = v565[3];
                    if (v568 >= v567 >> 1)
                    {
                      v565 = sub_21D055274((v567 > 1), v568 + 1, 1, v565);
                      *v564 = v565;
                    }

                    v565[2] = v568 + 1;
                    v473 = isa;
                    v474 = v565 + ((LOBYTE(v473[10].isa) + 32) & ~LOBYTE(v473[10].isa)) + v473[9].isa * v568;
                    v211 = v864;
                    (isa[4].isa)(v474, v817, v864);
                    (v207)(&v872, 0);
                    (v473[1].isa)(v816, v211);
                    (*v786)(v827, v828);
                    (v794->isa)(v844, v820);
                  }

                  else
                  {
                    v537 = v798;
                    if (v479 != v793)
                    {
                      v581 = *MEMORY[0x277D71EA0];
                      v582 = v479;

                      if (v582 == v581)
                      {
                        v583 = v743;
                        (v857)(v743, v852, v438);
                        v584 = sub_21D094210();
                        v585 = v438;
                        v586 = sub_21D094570();
                        v587 = os_log_type_enabled(v584, v586);
                        v588 = v781;
                        if (v587)
                        {
                          v589 = swift_slowAlloc();
                          v590 = swift_slowAlloc();
                          v872 = v590;
                          *v589 = v795;
                          v591 = v831;
                          sub_21D094010();
                          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                          v592 = v829;
                          v593 = sub_21D094790();
                          v595 = v594;
                          v821(v591, v592);
                          v596 = v583;
                          v597 = v862;
                          v598 = v855;
                          (v855)(v596, v862);
                          v599 = sub_21D05550C(v593, v595, &v872);

                          *(v589 + 4) = v599;
                          v588 = v781;
                          _os_log_impl(&dword_21D044000, v584, v586, "%s received rich variable binding imageEmbeddingData. Not supported.", v589, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v590);
                          MEMORY[0x223D3CDF0](v590, -1, -1);
                          MEMORY[0x223D3CDF0](v589, -1, -1);
                        }

                        else
                        {

                          v708 = v438;
                          v598 = v855;
                          (v855)(v583, v708);
                          v597 = v585;
                        }

                        v709 = v774;
                        sub_21D090BF4();
                        v710 = swift_allocError();
                        v712 = 8;
                      }

                      else
                      {
                        v637 = v744;
                        (v857)(v744, v852, v438);
                        v638 = sub_21D094210();
                        v639 = v438;
                        v640 = sub_21D094570();
                        v641 = os_log_type_enabled(v638, v640);
                        v588 = v781;
                        if (v641)
                        {
                          v642 = swift_slowAlloc();
                          v643 = swift_slowAlloc();
                          v872 = v643;
                          *v642 = v795;
                          v644 = v831;
                          sub_21D094010();
                          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                          v645 = v829;
                          v646 = sub_21D094790();
                          v648 = v647;
                          v821(v644, v645);
                          v649 = v637;
                          v597 = v862;
                          v598 = v855;
                          (v855)(v649, v862);
                          v650 = sub_21D05550C(v646, v648, &v872);

                          *(v642 + 4) = v650;
                          v588 = v781;
                          _os_log_impl(&dword_21D044000, v638, v640, "%s Unknown default variable binding", v642, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v643);
                          MEMORY[0x223D3CDF0](v643, -1, -1);
                          MEMORY[0x223D3CDF0](v642, -1, -1);
                        }

                        else
                        {

                          v713 = v438;
                          v598 = v855;
                          (v855)(v637, v713);
                          v597 = v639;
                        }

                        v709 = v774;
                        sub_21D090BF4();
                        v710 = swift_allocError();
                        v712 = 6;
                      }

                      *v711 = v712;
                      *(v711 + 8) = 4;
                      v822 = v710;
                      swift_willThrow();

                      sub_21D04FE3C(v760, v761);
                      v714 = sub_21D094230();
                      (*(*(v714 - 8) + 8))(v861, v714);
                      sub_21D04D27C(v773, &qword_27CE54400, &qword_21D096400);
                      sub_21D04D27C(v778, &qword_27CE54408, &qword_21D096408);
                      v715 = sub_21D0939D0();
                      (*(*(v715 - 8) + 8))(v588, v715);
                      v716 = sub_21D093C60();
                      (*(*(v716 - 8) + 8))(v779, v716);
                      v598(v852, v597);
                      (*v755)(v853, v765);
                      (v756->isa)(v780, v709);
                      (*(v758 + 8))(v764, v759);
                      v717 = sub_21D0934B0();
                      (*(*(v717 - 8) + 8))(v812, v717);
                      return (*(v754 + 8))(v860, v832);
                    }

                    v538 = v860;
                    (*v837)(v860, v440);
                    (*v784)(v826, v538, v815);
                    (v857)(v537, v196, v438);
                    v539 = sub_21D094210();
                    v540 = sub_21D094560();
                    if (os_log_type_enabled(v539, v540))
                    {
                      v541 = v537;
                      v542 = swift_slowAlloc();
                      v807 = swift_slowAlloc();
                      v872 = v807;
                      *v542 = v795;
                      v543 = v831;
                      sub_21D094010();
                      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                      v544 = v829;
                      v545 = sub_21D094790();
                      v547 = v546;
                      v548 = v544;
                      v440 = v832;
                      v821(v543, v548);
                      v549 = v541;
                      v196 = v852;
                      (v855)(v549, v438);
                      v550 = sub_21D05550C(v545, v547, &v872);

                      *(v542 + 4) = v550;
                      _os_log_impl(&dword_21D044000, v539, v540, "%s received rich variable binding imageSurface", v542, 0xCu);
                      v551 = v807;
                      __swift_destroy_boxed_opaque_existential_0(v807);
                      MEMORY[0x223D3CDF0](v551, -1, -1);
                      MEMORY[0x223D3CDF0](v542, -1, -1);
                    }

                    else
                    {

                      (v855)(v537, v438);
                    }

                    v569 = sub_21D093D70();
                    v570 = v813;
                    *v813 = v569;
                    v571 = v864;
                    (v836->isa)(v570, v782, v864);
                    (v835->isa)(v814, v570, v571);
                    v207 = sub_21D0931A0();
                    v573 = v572;
                    v574 = *v572;
                    v575 = swift_isUniquelyReferenced_nonNull_native();
                    *v573 = v574;
                    if ((v575 & 1) == 0)
                    {
                      v574 = sub_21D055274(0, v574[2] + 1, 1, v574);
                      *v573 = v574;
                    }

                    v577 = v574[2];
                    v576 = v574[3];
                    if (v577 >= v576 >> 1)
                    {
                      v574 = sub_21D055274((v576 > 1), v577 + 1, 1, v574);
                      *v573 = v574;
                    }

                    v574[2] = v577 + 1;
                    v578 = isa;
                    v579 = v574 + ((LOBYTE(v578[10].isa) + 32) & ~LOBYTE(v578[10].isa)) + v578[9].isa * v577;
                    v211 = v864;
                    (isa[4].isa)(v579, v814, v864);
                    (v207)(&v872, 0);
                    (v578[1].isa)(v813, v211);
                    (*v783)(v826, v815);
                  }

                  v212 = v856;
                }

                v78 = v863 + 1;
                v438 = v862;
                v472 = v843;
              }

              while (v849 != (v863 + 1));
            }

            v451 = v762;
            v452 = v853;
            v453 = v765;
            (*v747)(v762, v853, v765);
            (*v746)(v451, 0, 1, v453);
            v454 = sub_21D093380();
            v211 = v455;
            sub_21D05B73C(v451, v766, v772);
            v454(&v872, 0);
            (*v755)(v452, v453);
            v439 = v774;
            (v756->isa)(v780, v774);
            v447 = v748;
            v445 = v771;
            v450 = v770;
            v78 = &qword_27CE54468;
            v196 = &qword_21D096480;
          }

          (*(v758 + 8))(v764, v759);

          v348 = v781;
          v605 = v852;
        }

        v78 = MEMORY[0x277D84F90];
LABEL_216:
        v663 = v822;
        v664 = v861;
        if (*(v78 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541E8, &qword_21D095B38);
          v665 = sub_21D094770();
        }

        else
        {
          v665 = MEMORY[0x277D84F98];
        }

        v666 = v605;
        v872 = v665;
        sub_21D0911EC(v78, 1, &v872);
        v822 = v663;
        if (!v663)
        {

          sub_21D093330();
          sub_21D0933C0();
          sub_21D093400();
          v667 = v750;
          sub_21D0932A0();
          v668 = sub_21D0932C0();
          (*(*(v668 - 8) + 56))(v667, 0, 1, v668);
          sub_21D0932E0();
          v864 = sub_21D093160();
          v670 = v669;
          v671 = v749;
          v672 = v862;
          (v857)(v749, v666, v862);
          v673 = sub_21D094210();
          v674 = sub_21D094560();
          if (os_log_type_enabled(v673, v674))
          {
            v675 = swift_slowAlloc();
            v863 = swift_slowAlloc();
            v872 = v863;
            *v675 = 136315395;
            v676 = v671;
            v677 = v831;
            sub_21D094010();
            sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v678 = v829;
            v679 = sub_21D094790();
            v681 = v680;
            v821(v677, v678);
            v682 = v676;
            v683 = v862;
            v684 = v855;
            (v855)(v682, v862);
            v685 = sub_21D05550C(v679, v681, &v872);

            *(v675 + 4) = v685;
            *(v675 + 12) = 2081;
            v686 = sub_21D05550C(v864, v670, &v872);

            *(v675 + 14) = v686;
            _os_log_impl(&dword_21D044000, v673, v674, "%s initialized request %{private}s", v675, 0x16u);
            v687 = v863;
            swift_arrayDestroy();
            MEMORY[0x223D3CDF0](v687, -1, -1);
            MEMORY[0x223D3CDF0](v675, -1, -1);

            sub_21D04FE3C(v760, v761);

            v688 = sub_21D094230();
            (*(*(v688 - 8) + 8))(v861, v688);
            sub_21D04D27C(v773, &qword_27CE54400, &qword_21D096400);
            sub_21D04D27C(v778, &qword_27CE54408, &qword_21D096408);
            v689 = sub_21D0939D0();
            (*(*(v689 - 8) + 8))(v781, v689);
            v690 = sub_21D093C60();
            (*(*(v690 - 8) + 8))(v779, v690);
            return v684(v852, v683);
          }

          else
          {

            sub_21D04FE3C(v760, v761);

            v691 = sub_21D094230();
            (*(*(v691 - 8) + 8))(v664, v691);
            sub_21D04D27C(v773, &qword_27CE54400, &qword_21D096400);
            sub_21D04D27C(v778, &qword_27CE54408, &qword_21D096408);
            v692 = sub_21D0939D0();
            (*(*(v692 - 8) + 8))(v348, v692);
            v693 = sub_21D093C60();
            (*(*(v693 - 8) + 8))(v779, v693);
            v694 = v855;
            (v855)(v666, v672);
            return v694(v671, v672);
          }
        }

LABEL_250:

        __break(1u);
        return result;
      }

LABEL_26:
      v215 = (v840[6].isa + ((v205 << 10) | (16 * __clz(__rbit64(v210)))));
      v216 = *v215;
      v196 = v215[1];

      v841 = v216;
      v217 = v822;
      sub_21D093020();
      v822 = v217;
      if (v217)
      {

        sub_21D04FE3C(v760, v761);

        v600 = sub_21D094230();
        (*(*(v600 - 8) + 8))(v213, v600);
        sub_21D04D27C(v773, &qword_27CE54400, &qword_21D096400);
        sub_21D04D27C(v778, &qword_27CE54408, &qword_21D096408);
        v601 = sub_21D0939D0();
        (*(*(v601 - 8) + 8))(v781, v601);
        v602 = sub_21D093C60();
        (*(*(v602 - 8) + 8))(v779, v602);
        v603 = v852;
        v604 = v78;
        return (v855)(v603, v604);
      }

      v210 &= v210 - 1;
      if (!v871)
      {
        break;
      }

      sub_21D046D78(&v870, &v872);
      sub_21D0590D0(&v872, &v870);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54298, &qword_21D095E00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B0, &qword_21D095E18);
      if (swift_dynamicCast())
      {

        v218 = v806;
        (v857)(v806, v852, v78);

        v219 = sub_21D094210();
        v220 = sub_21D094580();

        v834 = v219;
        if (os_log_type_enabled(v219, v220))
        {
          v221 = swift_slowAlloc();
          LODWORD(v741) = v220;
          v222 = v221;
          v807 = swift_slowAlloc();
          v865 = v807;
          *v222 = v809;
          v223 = v831;
          sub_21D094010();
          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v224 = v829;
          v225 = sub_21D094790();
          v227 = v226;
          v228 = v223;
          v207 = v821;
          (*v825)(v228, v224);
          (v855)(v218, v862);
          v229 = sub_21D05550C(v225, v227, &v865);

          *(v222 + 4) = v229;
          *(v222 + 12) = 2080;
          v230 = v841;
          *(v222 + 14) = sub_21D05550C(v841, v196, &v865);
          v231 = v834;
          _os_log_impl(&dword_21D044000, v834, v741, "%s resource is tokenizer %s", v222, 0x16u);
          v232 = v807;
          swift_arrayDestroy();
          v78 = v862;
          MEMORY[0x223D3CDF0](v232, -1, -1);
          MEMORY[0x223D3CDF0](v222, -1, -1);
        }

        else
        {

          (v855)(v218, v78);
          v230 = v841;
        }

        v865 = v863;
        v866 = v842;

        MEMORY[0x223D3C530](v230, v196);

        v212 = v866;
        v834 = v865;
        __swift_destroy_boxed_opaque_existential_0(&v872);
        __swift_destroy_boxed_opaque_existential_0(&v867);
        v211 = v835;
LABEL_54:
        v213 = v861;
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542A0, &qword_21D095E08);
      v249 = swift_dynamicCast();
      v807 = v212;
      if (v249)
      {

        v250 = v196;
        v251 = v777;
        (v857)(v777, v852, v78);

        v252 = sub_21D094210();
        v253 = v78;
        v254 = sub_21D094580();

        v839 = v252;
        if (os_log_type_enabled(v252, v254))
        {
          v255 = swift_slowAlloc();
          v833 = swift_slowAlloc();
          v865 = v833;
          *v255 = v809;
          LODWORD(v741) = v254;
          v256 = v831;
          sub_21D094010();
          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v257 = v829;
          v258 = sub_21D094790();
          v260 = v259;
          v261 = v257;
          v207 = v821;
          (*v825)(v256, v261);
          (v855)(v251, v862);
          v262 = sub_21D05550C(v258, v260, &v865);
          v213 = v861;

          *(v255 + 4) = v262;
          *(v255 + 12) = 2080;
          v196 = v841;
          *(v255 + 14) = sub_21D05550C(v841, v250, &v865);
          v263 = v839;
          _os_log_impl(&dword_21D044000, v839, v741, "%s resource is model %s", v255, 0x16u);
          v264 = v833;
          swift_arrayDestroy();
          MEMORY[0x223D3CDF0](v264, -1, -1);
          MEMORY[0x223D3CDF0](v255, -1, -1);

          v78 = v862;
        }

        else
        {

          (v855)(v251, v253);
          v78 = v253;
          v196 = v841;
        }

        v865 = v863;
        v866 = v842;

        MEMORY[0x223D3C530](v196, v250);

        v306 = v866;
        v833 = v865;
        v307 = &v869;
LABEL_73:
        *(v307 - 32) = v306;
        __swift_destroy_boxed_opaque_existential_0(&v872);
        v325 = &v867;
        goto LABEL_74;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542A8, &qword_21D095E10);
      if (swift_dynamicCast())
      {

        v283 = v747;
        (v857)(v747, v852, v78);

        v284 = sub_21D094210();
        v285 = v78;
        v286 = sub_21D094580();
        v741 = v196;

        v838 = v284;
        if (os_log_type_enabled(v284, v286))
        {
          v287 = v283;
          v288 = swift_slowAlloc();
          v811 = swift_slowAlloc();
          v865 = v811;
          *v288 = v809;
          LODWORD(v740) = v286;
          v289 = v831;
          v290 = v285;
          sub_21D094010();
          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v291 = v829;
          v292 = sub_21D094790();
          v294 = v293;
          v295 = v291;
          v207 = v821;
          (*v825)(v289, v295);
          v78 = v290;
          (v855)(v287, v290);
          v296 = sub_21D05550C(v292, v294, &v865);
          v213 = v861;

          *(v288 + 4) = v296;
          *(v288 + 12) = 2080;
          v196 = v841;
          *(v288 + 14) = sub_21D05550C(v841, v741, &v865);
          v297 = v838;
          _os_log_impl(&dword_21D044000, v838, v740, "%s resource is adaptor %s", v288, 0x16u);
          v298 = v811;
          swift_arrayDestroy();
          MEMORY[0x223D3CDF0](v298, -1, -1);
          MEMORY[0x223D3CDF0](v288, -1, -1);

          v299 = v741;
        }

        else
        {

          (v855)(v283, v285);
          v78 = v285;
          v299 = v741;
          v196 = v841;
        }

        v865 = v863;
        v866 = v842;

        MEMORY[0x223D3C530](v196, v299);

        v306 = v866;
        v811 = v865;
        v307 = &v868;
        goto LABEL_73;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54460, &unk_21D096470);
      if (swift_dynamicCast())
      {

        v308 = v746;
        (v857)(v746, v852, v78);

        v309 = sub_21D094210();
        v310 = v78;
        v311 = sub_21D094580();
        v741 = v196;

        v836 = v309;
        if (os_log_type_enabled(v309, v311))
        {
          v312 = v308;
          v313 = swift_slowAlloc();
          v810 = swift_slowAlloc();
          v865 = v810;
          *v313 = v809;
          LODWORD(v740) = v311;
          v314 = v831;
          v315 = v310;
          sub_21D094010();
          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v316 = v829;
          v317 = sub_21D094790();
          v319 = v318;
          v320 = v316;
          v207 = v821;
          (*v825)(v314, v320);
          v78 = v315;
          (v855)(v312, v315);
          v321 = sub_21D05550C(v317, v319, &v865);

          *(v313 + 4) = v321;
          *(v313 + 12) = 2080;
          v322 = v841;
          v323 = v741;
          *(v313 + 14) = sub_21D05550C(v841, v741, &v865);
          v324 = v836;
          _os_log_impl(&dword_21D044000, v836, v740, "%s resource is draft %s", v313, 0x16u);
          v196 = v810;
          swift_arrayDestroy();
          MEMORY[0x223D3CDF0](v196, -1, -1);
          MEMORY[0x223D3CDF0](v313, -1, -1);
        }

        else
        {

          (v855)(v308, v310);
          v78 = v310;
          v323 = v741;
          v322 = v841;
        }

        v865 = v863;
        v866 = v842;

        MEMORY[0x223D3C530](v322, v323);

        v810 = v865;
        v836 = v866;
        __swift_destroy_boxed_opaque_existential_0(&v872);
        __swift_destroy_boxed_opaque_existential_0(&v867);
        v211 = v835;
        v212 = v807;
        goto LABEL_54;
      }

      (v857)(v748, v852, v78);

      v326 = sub_21D094210();
      v327 = sub_21D094580();

      LODWORD(v741) = v327;
      if (os_log_type_enabled(v326, v327))
      {
        v328 = swift_slowAlloc();
        v740 = swift_slowAlloc();
        v867 = v740;
        *v328 = v799;
        v329 = v831;
        v739 = v326;
        v330 = v748;
        sub_21D094010();
        sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v331 = v829;
        v332 = sub_21D094790();
        v334 = v333;
        (*v825)(v329, v331);
        (v855)(v330, v862);
        v335 = sub_21D05550C(v332, v334, &v867);
        v78 = v862;

        *(v328 + 4) = v335;
        *(v328 + 12) = 2080;
        v336 = sub_21D05550C(v841, v196, &v867);

        *(v328 + 14) = v336;
        v207 = v821;
        *(v328 + 22) = 2080;
        *(v328 + 24) = sub_21D05550C(v863, v842, &v867);
        v337 = v739;
        _os_log_impl(&dword_21D044000, v739, v741, "%s resource is default %s server scope: %s", v328, 0x20u);
        v338 = v740;
        swift_arrayDestroy();
        v213 = v861;
        MEMORY[0x223D3CDF0](v338, -1, -1);
        MEMORY[0x223D3CDF0](v328, -1, -1);
      }

      else
      {

        (v855)(v748, v78);
      }

      v325 = &v872;
LABEL_74:
      __swift_destroy_boxed_opaque_existential_0(v325);
      v211 = v835;
      v212 = v807;
LABEL_75:
      __swift_destroy_boxed_opaque_existential_0(&v870);
    }

    sub_21D04D27C(&v870, &qword_27CE54458, &qword_21D096468);
    v233 = v808;
    (v857)(v808, v852, v78);

    v234 = sub_21D094210();
    v235 = v78;
    v236 = sub_21D094580();

    if (os_log_type_enabled(v234, v236))
    {
      v237 = swift_slowAlloc();
      v839 = swift_slowAlloc();
      v872 = v839;
      *v237 = v809;
      LODWORD(v836) = v236;
      v238 = v831;
      v838 = v234;
      sub_21D094010();
      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v239 = v829;
      v240 = sub_21D094790();
      v242 = v241;
      (*v825)(v238, v239);
      v243 = v233;
      v244 = v862;
      (v855)(v243, v862);
      v245 = sub_21D05550C(v240, v242, &v872);
      v213 = v861;

      *(v237 + 4) = v245;
      *(v237 + 12) = 2080;
      v246 = sub_21D05550C(v841, v196, &v872);

      *(v237 + 14) = v246;
      v247 = v838;
      _os_log_impl(&dword_21D044000, v838, v836, "%s found no resource for identifier %s", v237, 0x16u);
      v248 = v839;
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v248, -1, -1);
      MEMORY[0x223D3CDF0](v237, -1, -1);
    }

    else
    {

      (v855)(v233, v235);
      v244 = v235;
    }

    v265 = v842;
    if (qword_27CE53E90 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_27CE53EA8 == 1)
    {

      sub_21D090BF4();
      v695 = swift_allocError();
      *v696 = 0;
      *(v696 + 8) = 4;
      v822 = v695;
      swift_willThrow();

      sub_21D04FE3C(v760, v761);
      v697 = sub_21D094230();
      (*(*(v697 - 8) + 8))(v213, v697);
      sub_21D04D27C(v773, &qword_27CE54400, &qword_21D096400);
      sub_21D04D27C(v778, &qword_27CE54408, &qword_21D096408);
      v698 = sub_21D0939D0();
      (*(*(v698 - 8) + 8))(v781, v698);
      v699 = sub_21D093C60();
      (*(*(v699 - 8) + 8))(v779, v699);
      v603 = v852;
      v604 = v244;
      return (v855)(v603, v604);
    }

    v266 = sub_21D0945F0();
    if (!v266)
    {
      goto LABEL_233;
    }

    v267 = v266;
    if (!*(v266 + 16))
    {
      break;
    }

    v268 = sub_21D055BA8(0x6D614E6C65646F6DLL, 0xE900000000000065);
    if (v269)
    {
      v270 = (*(v267 + 56) + 16 * v268);
      v271 = *v270;
      v272 = v270[1];
    }

    else
    {
      v272 = 0xE300000000000000;
      v271 = 5065804;
    }

    v872 = v863;
    v873 = v265;

    MEMORY[0x223D3C530](v271, v272);

    v833 = v872;
    v839 = v873;
    if (*(v267 + 16) && (v273 = sub_21D055BA8(0xD000000000000010, v785 | 0x8000000000000000), (v274 & 1) != 0))
    {
      v275 = (*(v267 + 56) + 16 * v273);
      v276 = *v275;
      v277 = v275[1];
    }

    else
    {
      v277 = 0xE700000000000000;
      v276 = 0x726F7470616441;
    }

    v872 = v863;
    v873 = v265;

    MEMORY[0x223D3C530](v276, v277);

    v811 = v872;
    v838 = v873;
    if (!*(v267 + 16))
    {
      v196 = v213;
      v281 = 0x657A696E656B6F54;
LABEL_60:
      v282 = 0xE900000000000072;
      goto LABEL_61;
    }

    v278 = sub_21D055BA8(0x657A696E656B6F54, 0xED0000656D614E72);
    v196 = v213;
    if ((v279 & 1) == 0)
    {
      v281 = 0x657A696E656B6F54;
      goto LABEL_60;
    }

    v280 = (*(v267 + 56) + 16 * v278);
    v281 = *v280;
    v282 = v280[1];

LABEL_61:
    v872 = v863;
    v873 = v265;

    MEMORY[0x223D3C530](v281, v282);

    v300 = v873;
    v834 = v872;
    if (*(v267 + 16) && (v301 = sub_21D055BA8(0x646F4D7466617264, 0xEE00656D614E6C65), (v302 & 1) != 0))
    {
      v303 = (*(v267 + 56) + 16 * v301);
      v305 = *v303;
      v304 = v303[1];
    }

    else
    {
      v304 = 0xE500000000000000;
      v305 = 0x7466617244;
    }

    v872 = v863;
    v873 = v842;

    MEMORY[0x223D3C530](v305, v304);

    v810 = v872;
    v836 = v873;
    v78 = v862;
    v207 = v821;
    v211 = v835;
    v212 = v300;
    v213 = v196;
  }

LABEL_233:

  v718 = v745;
  v719 = v852;
  (v857)(v745, v852, v244);
  v720 = sub_21D094210();
  v721 = sub_21D094580();
  if (os_log_type_enabled(v720, v721))
  {
    v722 = swift_slowAlloc();
    v723 = swift_slowAlloc();
    v872 = v723;
    *v722 = 136315138;
    v724 = v831;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v725 = v829;
    v726 = sub_21D094790();
    v728 = v727;
    (*v825)(v724, v725);
    v729 = v718;
    v730 = v862;
    v731 = v855;
    (v855)(v729, v862);
    v732 = sub_21D05550C(v726, v728, &v872);

    *(v722 + 4) = v732;
    _os_log_impl(&dword_21D044000, v720, v721, "%s no or empty override catalog", v722, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v723);
    v733 = v723;
    v719 = v852;
    MEMORY[0x223D3CDF0](v733, -1, -1);
    MEMORY[0x223D3CDF0](v722, -1, -1);

    v244 = v730;
  }

  else
  {

    v731 = v855;
    (v855)(v718, v244);
  }

  sub_21D090BF4();
  v734 = swift_allocError();
  *v735 = 0;
  *(v735 + 8) = 4;
  v822 = v734;
  swift_willThrow();

  sub_21D04FE3C(v760, v761);
  v736 = sub_21D094230();
  (*(*(v736 - 8) + 8))(v861, v736);
  sub_21D04D27C(v773, &qword_27CE54400, &qword_21D096400);
  sub_21D04D27C(v778, &qword_27CE54408, &qword_21D096408);
  v737 = sub_21D0939D0();
  (*(*(v737 - 8) + 8))(v781, v737);
  v738 = sub_21D093C60();
  (*(*(v738 - 8) + 8))(v779, v738);
  return v731(v719, v244);
}

uint64_t sub_21D08B12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v18;
  *(v8 + 120) = v17;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v9 = sub_21D094180();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  _s18InstrumentedTokensV13AsyncIteratorVMa(0);
  *(v8 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542F8, &qword_21D095E78);
  *(v8 + 176) = swift_task_alloc();
  v10 = sub_21D093470();
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  v11 = sub_21D094730();
  *(v8 + 208) = v11;
  *(v8 + 216) = *(v11 - 8);
  *(v8 + 224) = swift_task_alloc();
  v12 = sub_21D094230();
  *(v8 + 232) = v12;
  *(v8 + 240) = *(v12 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = _s18InstrumentedTokensVMa(0);
  *(v8 + 264) = swift_task_alloc();
  v13 = sub_21D092FC0();
  *(v8 + 272) = v13;
  *(v8 + 280) = *(v13 - 8);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v14 = sub_21D094070();
  *(v8 + 304) = v14;
  *(v8 + 312) = *(v14 - 8);
  *(v8 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D08B478, 0, 0);
}

uint64_t sub_21D08B478()
{
  v71 = v0;
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(*(v0 + 312) + 16))(*(v0 + 320), *(v0 + 80), *(v0 + 304));
  v66 = v2;
  v67 = v1;
  v3 = sub_21D094210();
  v4 = sub_21D094580();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v8 = *(v0 + 304);
  if (v5)
  {
    v9 = *(v0 + 296);
    v59 = *(v0 + 304);
    v11 = *(v0 + 272);
    v10 = *(v0 + 280);
    v12 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70 = v64;
    *v12 = 136315138;
    v62 = v4;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_21D094790();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v59);
    v16 = sub_21D05550C(v13, v15, &v70);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21D044000, v3, v62, "%s waiting for private ML response tokens", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x223D3CDF0](v64, -1, -1);
    MEMORY[0x223D3CDF0](v12, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v17 = *(v0 + 224);
  v18 = *(v0 + 208);
  v19 = *(v0 + 216);
  v20 = *(v0 + 192);
  v21 = *(v0 + 176);
  v57 = *(v0 + 184);
  v60 = *(v0 + 200);
  v63 = *(v0 + 112);
  v23 = *(v0 + 64);
  v22 = *(v0 + 72);
  (*(*(v0 + 240) + 16))(*(v0 + 248), v67 + v66, *(v0 + 232));
  sub_21D0933A0();
  (*(v19 + 16))(v17, v22 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_initializationInstant, v18);
  (*(v20 + 16))(v60, v23, v57);
  sub_21D0590D0(v63, v0 + 16);
  sub_21D094000();
  v24 = sub_21D093E70();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 48))(v21, 1, v24);
  v27 = *(v0 + 176);
  if (v26 == 1)
  {
    sub_21D04D27C(*(v0 + 176), &qword_27CE542F8, &qword_21D095E78);
    v68 = 0;
  }

  else
  {
    v68 = sub_21D093E50();
    (*(v25 + 8))(v27, v24);
  }

  v65 = v26 == 1;
  v28 = *(v0 + 280);
  v29 = *(v0 + 288);
  v30 = *(v0 + 264);
  v31 = *(v0 + 272);
  v32 = *(v0 + 256);
  v33 = *(v0 + 216);
  v54 = *(v0 + 208);
  v55 = *(v0 + 224);
  v58 = *(v0 + 200);
  v34 = *(v0 + 192);
  v56 = *(v0 + 184);
  v36 = *(v0 + 96);
  v35 = *(v0 + 104);
  v61 = *(v0 + 168);
  (*(*(v0 + 240) + 32))(v30, *(v0 + 248), *(v0 + 232));
  (*(v28 + 32))(v30 + v32[5], v29, v31);
  v37 = (v30 + v32[6]);
  *v37 = v36;
  v37[1] = v35;
  (*(v33 + 32))(v30 + v32[8], v55, v54);
  (*(v34 + 32))(v30 + v32[7], v58, v56);
  sub_21D046D78((v0 + 16), v30 + v32[9]);
  v38 = v30 + v32[10];
  *v38 = v68;
  *(v38 + 4) = v65;

  sub_21D058B08(v61);
  sub_21D0941A0();
  sub_21D094150();

  v39 = sub_21D0941A0();
  v40 = sub_21D094670();

  v41 = sub_21D094680();
  v43 = *(v0 + 152);
  v42 = *(v0 + 160);
  v44 = *(v0 + 144);
  if (v41)
  {
    v46 = *(v0 + 96);
    v45 = *(v0 + 104);
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v70 = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_21D05550C(v46, v45, &v70);
    v49 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v39, v40, v49, "executePrivateMLRequest", "waiting for tokens requestIdentifier=%{public, signpost.description=attribute,public}s)", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x223D3CDF0](v48, -1, -1);
    MEMORY[0x223D3CDF0](v47, -1, -1);
  }

  (*(v43 + 8))(v42, v44);
  v69 = (*(v0 + 128) + **(v0 + 128));
  v50 = swift_task_alloc();
  *(v0 + 328) = v50;
  *v50 = v0;
  v50[1] = sub_21D08BA9C;
  v51 = *(v0 + 168);
  v52 = *(v0 + 56);

  return v69(v52, v51);
}

uint64_t sub_21D08BA9C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_21D091FB8;
  }

  else
  {
    v2 = sub_21D091FB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D08BBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v26;
  *(v8 + 80) = v24;
  *(v8 + 96) = v25;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_21D093E20();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543F8, &qword_21D0963F8);
  *(v8 + 152) = swift_task_alloc();
  v10 = sub_21D093BA0();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  v11 = sub_21D093C10();
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();
  v12 = sub_21D094180();
  *(v8 + 208) = v12;
  *(v8 + 216) = *(v12 - 8);
  *(v8 + 224) = swift_task_alloc();
  v13 = sub_21D092FC0();
  *(v8 + 232) = v13;
  *(v8 + 240) = *(v13 - 8);
  *(v8 + 248) = swift_task_alloc();
  v14 = sub_21D094230();
  *(v8 + 256) = v14;
  *(v8 + 264) = *(v14 - 8);
  *(v8 + 272) = swift_task_alloc();
  v15 = sub_21D094070();
  *(v8 + 280) = v15;
  *(v8 + 288) = *(v15 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v16 = sub_21D0934B0();
  *(v8 + 312) = v16;
  *(v8 + 320) = *(v16 - 8);
  *(v8 + 328) = swift_task_alloc();
  v17 = sub_21D093AE0();
  *(v8 + 336) = v17;
  *(v8 + 344) = *(v17 - 8);
  *(v8 + 352) = swift_task_alloc();
  v18 = sub_21D093A10();
  *(v8 + 360) = v18;
  *(v8 + 368) = *(v18 - 8);
  *(v8 + 376) = swift_task_alloc();
  v19 = sub_21D093A50();
  *(v8 + 384) = v19;
  *(v8 + 392) = *(v19 - 8);
  *(v8 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54400, &qword_21D096400);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54408, &qword_21D096408);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v20 = sub_21D093C60();
  *(v8 + 456) = v20;
  *(v8 + 464) = *(v20 - 8);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  v21 = sub_21D0939D0();
  *(v8 + 496) = v21;
  *(v8 + 504) = *(v21 - 8);
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D08C1F4, 0, 0);
}

uint64_t sub_21D08C1F4()
{
  v171 = v0;
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[5];
  v5 = *(v0[16] + 56);
  v5(v0[54], 1, 1, v0[15]);
  (*(v2 + 16))(v1, v4, v3);
  v6 = (*(v2 + 88))(v1, v3);
  v169 = v0;
  if (v6 == *MEMORY[0x277D71CF0])
  {
    v7 = v0[50];
    v8 = v0[47];
    v9 = v0[45];
    v10 = v0[46];
    (*(v0[49] + 96))(v7, v0[48]);
    (*(v10 + 32))(v8, v7, v9);

    v11 = sub_21D094210();
    v12 = sub_21D094580();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[7];
      v13 = v0[8];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v170[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_21D05550C(v14, v13, v170);
      _os_log_impl(&dword_21D044000, v11, v12, "%s received complete prompt request", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223D3CDF0](v16, -1, -1);
      MEMORY[0x223D3CDF0](v15, -1, -1);
    }

    v18 = v0[46];
    v17 = v0[47];
    v19 = v0[45];
    v20 = v0[9];
    sub_21D093A00();
    sub_21D0939E0();
    sub_21D0939F0();
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_21D093BC0();
    v21 = v0;
    sub_21D0935F0();

    (*(v18 + 8))(v17, v19);
  }

  else
  {
    if (v6 != *MEMORY[0x277D71CF8])
    {

      v67 = sub_21D094210();
      v68 = sub_21D094570();

      if (os_log_type_enabled(v67, v68))
      {
        v70 = v0[7];
        v69 = v0[8];
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v170[0] = v72;
        *v71 = 136315138;
        *(v71 + 4) = sub_21D05550C(v70, v69, v170);
        _os_log_impl(&dword_21D044000, v67, v68, "%s received unknown streaming request payload", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v72);
        MEMORY[0x223D3CDF0](v72, -1, -1);
        MEMORY[0x223D3CDF0](v71, -1, -1);
      }

      v73 = v0[54];
      v75 = v0[49];
      v74 = v0[50];
      v76 = v0[48];
      sub_21D090BF4();
      swift_allocError();
      *v77 = 1;
      *(v77 + 8) = 4;
      swift_willThrow();
      sub_21D04D27C(v73, &qword_27CE54400, &qword_21D096400);
      (*(v75 + 8))(v74, v76);

      v78 = v0[1];

      return v78();
    }

    v34 = v0[50];
    v36 = v0[43];
    v35 = v0[44];
    v37 = v0[42];
    (*(v0[49] + 96))(v34, v0[48]);
    (*(v36 + 32))(v35, v34, v37);

    v38 = sub_21D094210();
    v39 = sub_21D094580();

    if (os_log_type_enabled(v38, v39))
    {
      v41 = v0[7];
      v40 = v0[8];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v170[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_21D05550C(v41, v40, v170);
      _os_log_impl(&dword_21D044000, v38, v39, "%s received completePromptTemplate request", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x223D3CDF0](v43, -1, -1);
      MEMORY[0x223D3CDF0](v42, -1, -1);
    }

    v44 = v0[57];
    v45 = v0[58];
    v46 = v0[19];
    sub_21D093AD0();
    v47 = *(v45 + 48);
    if (v47(v46, 1, v44) == 1)
    {
      v48 = v0[57];
      v49 = v0[19];
      sub_21D093BD0();
      if (v47(v49, 1, v48) != 1)
      {
        sub_21D04D27C(v0[19], &qword_27CE543F8, &qword_21D0963F8);
      }
    }

    else
    {
      (*(v0[58] + 32))(v0[59], v0[19], v0[57]);
    }

    v122 = v0[54];
    v123 = v0[52];
    v124 = v0[51];
    v125 = v0[16];
    v126 = v169[15];
    (*(v169[58] + 32))(v169[61], v169[59], v169[57]);
    v21 = v169;
    sub_21D093AB0();
    sub_21D093AC0();
    sub_21D093AA0();
    sub_21D04D27C(v122, &qword_27CE54400, &qword_21D096400);
    v5(v123, 0, 1, v126);
    sub_21D05B208(v123, v122, &qword_27CE54400, &qword_21D096400);
    sub_21D05B270(v122, v124, &qword_27CE54400, &qword_21D096400);
    v127 = (*(v125 + 48))(v124, 1, v126);
    v128 = v169[51];
    v130 = v169[43];
    v129 = v169[44];
    v131 = v169[42];
    if (v127 == 1)
    {
      (*(v130 + 8))(v169[44], v169[42]);
      sub_21D04D27C(v128, &qword_27CE54400, &qword_21D096400);
    }

    else
    {
      v133 = v169[17];
      v132 = v169[18];
      v134 = v169[15];
      v135 = v169[16];
      v136 = v169[9];
      (*(v135 + 32))(v132, v128, v134);
      v137 = v136[3];
      v138 = v136;
      v21 = v169;
      __swift_project_boxed_opaque_existential_1(v138, v137);
      (*(v135 + 16))(v133, v132, v134);
      sub_21D094430();
      sub_21D0935F0();

      (*(v135 + 8))(v132, v134);
      (*(v130 + 8))(v129, v131);
    }
  }

  v22 = v21[63];
  v23 = v21[64];
  v24 = v21[61];
  v25 = v21[60];
  v26 = v21[57];
  v27 = v21[58];
  v152 = v21[56];
  v153 = v21[65];
  v150 = v21[62];
  v151 = v21[55];
  v154 = v21[53];
  v156 = v21[54];
  v167 = v21[41];
  v28 = v21;
  v29 = v21[36];
  v30 = v21[33];
  v158 = v21[32];
  v160 = v21[34];
  v162 = v21[11];
  v164 = v21[38];
  v31 = v21[10];
  v32 = v28[6];
  v149 = *(v29 + 16);
  v149();
  (*(v27 + 16))(v25, v24, v26);
  (*(v22 + 16))(v23, v153, v150);
  sub_21D05B270(v152, v151, &qword_27CE54408, &qword_21D096408);
  sub_21D05B270(v156, v154, &qword_27CE54400, &qword_21D096400);
  v33 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(v30 + 16))(v160, v32 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger, v158);
  sub_21D055C20(v31, v162);
  sub_21D083B2C(v31, v162, v164, v25, v23, v151, v154, v160, v167);
  v50 = v28[37];
  v51 = v28[35];
  v52 = v28[12];
  logMetric(logger:name:startInstant:)(v32 + v33, 0xD000000000000012, 0x800000021D097370);
  (v149)(v50, v52, v51);
  v53 = sub_21D094210();
  v54 = sub_21D094580();
  v55 = os_log_type_enabled(v53, v54);
  v56 = v28[36];
  v57 = v28[37];
  v58 = v28[35];
  if (v55)
  {
    v60 = v28[30];
    v59 = v28[31];
    v61 = v28[29];
    v163 = v28[35];
    v62 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v170[0] = v168;
    *v62 = 136315138;
    v165 = v54;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v63 = sub_21D094790();
    v65 = v64;
    (*(v60 + 8))(v59, v61);
    (*(v56 + 8))(v57, v163);
    v66 = sub_21D05550C(v63, v65, v170);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_21D044000, v53, v165, "%s sending private ML request", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v168);
    MEMORY[0x223D3CDF0](v168, -1, -1);
    MEMORY[0x223D3CDF0](v62, -1, -1);
  }

  else
  {

    (*(v56 + 8))(v57, v58);
  }

  sub_21D0941A0();
  sub_21D094150();

  v80 = sub_21D0941A0();
  v81 = sub_21D094670();

  v82 = sub_21D094680();
  v84 = v28[27];
  v83 = v28[28];
  v85 = v28[26];
  v86 = v28;
  if (v82)
  {
    v88 = v28[7];
    v87 = v28[8];
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v170[0] = v90;
    *v89 = 136446210;
    *(v89 + 4) = sub_21D05550C(v88, v87, v170);
    v91 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v80, v81, v91, "executePrivateMLRequest", "request parsed requestIdentifier=%{public, signpost.description=attribute,public}s)", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v90);
    MEMORY[0x223D3CDF0](v90, -1, -1);
    v92 = v89;
    v86 = v169;
    MEMORY[0x223D3CDF0](v92, -1, -1);
  }

  (*(v84 + 8))(v83, v85);
  v93 = sub_21D093BE0();
  v95 = v94;
  v86[66] = v94;
  v96 = sub_21D093BB0();
  v97 = *(v96 + 16);
  if (v97)
  {
    v155 = v95;
    v157 = v93;
    v98 = v86[24];
    v99 = v86[21];
    v170[0] = MEMORY[0x277D84F90];
    sub_21D08FADC(0, v97, 0);
    v100 = v170[0];
    v101 = *(v98 + 16);
    v98 += 16;
    v102 = v96 + ((*(v98 + 64) + 32) & ~*(v98 + 64));
    v159 = *(v98 + 56);
    v166 = v101;
    v161 = (v98 - 8);
    while (1)
    {
      v103 = v169[25];
      v104 = v169[22];
      v105 = v169[23];
      v106 = v169[20];
      v166(v103, v102, v105);
      sub_21D093BF0();
      v107 = sub_21D093B80();
      v109 = v108;
      (*(v99 + 8))(v104, v106);
      v110 = sub_21D093C00();
      v111 = (*v161)(v103, v105);
      if ((v110 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v110))
      {
        goto LABEL_39;
      }

      v170[0] = v100;
      v120 = *(v100 + 16);
      v119 = *(v100 + 24);
      if (v120 >= v119 >> 1)
      {
        sub_21D08FADC((v119 > 1), v120 + 1, 1);
        v100 = v170[0];
      }

      *(v100 + 16) = v120 + 1;
      v121 = v100 + 24 * v120;
      *(v121 + 32) = v107;
      *(v121 + 40) = v109;
      *(v121 + 48) = v110;
      v102 += v159;
      if (!--v97)
      {

        v86 = v169;
        v95 = v155;
        v93 = v157;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {

    v100 = MEMORY[0x277D84F90];
LABEL_35:
    v86[67] = v100;
    v139 = v100;
    v140 = v86[41];
    v141 = v86[12];
    v143 = v86[6];
    v142 = v86[7];
    v144 = v86[4];
    v145 = swift_task_alloc();
    v86[68] = v145;
    v146 = *(v86 + 4);
    v147 = *(v86 + 13);
    *(v145 + 16) = v143;
    *(v145 + 24) = v141;
    *(v145 + 32) = v140;
    *(v145 + 40) = v142;
    *(v145 + 48) = v146;
    *(v145 + 64) = v144;
    *(v145 + 72) = v147;
    v148 = swift_task_alloc();
    v86[69] = v148;
    *v148 = v86;
    v148[1] = sub_21D08D274;
    v112 = v86[41];
    v111 = v86[2];
    v116 = &unk_21D096580;
    v118 = MEMORY[0x277D84F78] + 8;
    v113 = v93;
    v114 = v95;
    v115 = v139;
    v117 = v145;
  }

  return MEMORY[0x2821A23A0](v111, v112, v113, v114, v115, v116, v117, v118);
}

uint64_t sub_21D08D274()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_21D08D620;
  }

  else
  {
    v2 = sub_21D08D3E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D08D3E4()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[61];
  v5 = v0[57];
  v4 = v0[58];
  v6 = v0[56];
  v12 = v0[62];
  v7 = v0[40];
  v8 = v0[41];
  v9 = v0[39];
  sub_21D04D27C(v0[54], &qword_27CE54400, &qword_21D096400);
  sub_21D04D27C(v6, &qword_27CE54408, &qword_21D096408);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v12);
  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21D08D620()
{
  v12 = v0[65];
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[61];
  v4 = v0[57];
  v5 = v0[58];
  v6 = v0[56];
  v7 = v0[40];
  v8 = v0[41];
  v9 = v0[39];
  sub_21D04D27C(v0[54], &qword_27CE54400, &qword_21D096400);
  sub_21D04D27C(v6, &qword_27CE54408, &qword_21D096408);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v12, v1);
  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21D08D86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v18;
  *(v8 + 120) = v17;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v9 = sub_21D094180();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  _s18InstrumentedTokensV13AsyncIteratorVMa(0);
  *(v8 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542F8, &qword_21D095E78);
  *(v8 + 176) = swift_task_alloc();
  v10 = sub_21D093470();
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  v11 = sub_21D094730();
  *(v8 + 208) = v11;
  *(v8 + 216) = *(v11 - 8);
  *(v8 + 224) = swift_task_alloc();
  v12 = sub_21D094230();
  *(v8 + 232) = v12;
  *(v8 + 240) = *(v12 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = _s18InstrumentedTokensVMa(0);
  *(v8 + 264) = swift_task_alloc();
  v13 = sub_21D092FC0();
  *(v8 + 272) = v13;
  *(v8 + 280) = *(v13 - 8);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v14 = sub_21D094070();
  *(v8 + 304) = v14;
  *(v8 + 312) = *(v14 - 8);
  *(v8 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D08DBB8, 0, 0);
}

uint64_t sub_21D08DBB8()
{
  v71 = v0;
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(*(v0 + 312) + 16))(*(v0 + 320), *(v0 + 80), *(v0 + 304));
  v66 = v2;
  v67 = v1;
  v3 = sub_21D094210();
  v4 = sub_21D094580();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v8 = *(v0 + 304);
  if (v5)
  {
    v9 = *(v0 + 296);
    v59 = *(v0 + 304);
    v11 = *(v0 + 272);
    v10 = *(v0 + 280);
    v12 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70 = v64;
    *v12 = 136315138;
    v62 = v4;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_21D094790();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v59);
    v16 = sub_21D05550C(v13, v15, &v70);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21D044000, v3, v62, "%s waiting for private ML response tokens", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x223D3CDF0](v64, -1, -1);
    MEMORY[0x223D3CDF0](v12, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v17 = *(v0 + 224);
  v18 = *(v0 + 208);
  v19 = *(v0 + 216);
  v20 = *(v0 + 192);
  v21 = *(v0 + 176);
  v57 = *(v0 + 184);
  v60 = *(v0 + 200);
  v63 = *(v0 + 112);
  v23 = *(v0 + 64);
  v22 = *(v0 + 72);
  (*(*(v0 + 240) + 16))(*(v0 + 248), v67 + v66, *(v0 + 232));
  sub_21D0933A0();
  (*(v19 + 16))(v17, v22 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_initializationInstant, v18);
  (*(v20 + 16))(v60, v23, v57);
  sub_21D0590D0(v63, v0 + 16);
  sub_21D094000();
  v24 = sub_21D093E70();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 48))(v21, 1, v24);
  v27 = *(v0 + 176);
  if (v26 == 1)
  {
    sub_21D04D27C(*(v0 + 176), &qword_27CE542F8, &qword_21D095E78);
    v68 = 0;
  }

  else
  {
    v68 = sub_21D093E50();
    (*(v25 + 8))(v27, v24);
  }

  v65 = v26 == 1;
  v28 = *(v0 + 280);
  v29 = *(v0 + 288);
  v30 = *(v0 + 264);
  v31 = *(v0 + 272);
  v32 = *(v0 + 256);
  v33 = *(v0 + 216);
  v54 = *(v0 + 208);
  v55 = *(v0 + 224);
  v58 = *(v0 + 200);
  v34 = *(v0 + 192);
  v56 = *(v0 + 184);
  v36 = *(v0 + 96);
  v35 = *(v0 + 104);
  v61 = *(v0 + 168);
  (*(*(v0 + 240) + 32))(v30, *(v0 + 248), *(v0 + 232));
  (*(v28 + 32))(v30 + v32[5], v29, v31);
  v37 = (v30 + v32[6]);
  *v37 = v36;
  v37[1] = v35;
  (*(v33 + 32))(v30 + v32[8], v55, v54);
  (*(v34 + 32))(v30 + v32[7], v58, v56);
  sub_21D046D78((v0 + 16), v30 + v32[9]);
  v38 = v30 + v32[10];
  *v38 = v68;
  *(v38 + 4) = v65;

  sub_21D058B08(v61);
  sub_21D0941A0();
  sub_21D094150();

  v39 = sub_21D0941A0();
  v40 = sub_21D094670();

  v41 = sub_21D094680();
  v43 = *(v0 + 152);
  v42 = *(v0 + 160);
  v44 = *(v0 + 144);
  if (v41)
  {
    v46 = *(v0 + 96);
    v45 = *(v0 + 104);
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v70 = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_21D05550C(v46, v45, &v70);
    v49 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v39, v40, v49, "executePrivateMLRequest", "waiting for tokens requestIdentifier=%{public, signpost.description=attribute,public}s)", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x223D3CDF0](v48, -1, -1);
    MEMORY[0x223D3CDF0](v47, -1, -1);
  }

  (*(v43 + 8))(v42, v44);
  v69 = (*(v0 + 128) + **(v0 + 128));
  v50 = swift_task_alloc();
  *(v0 + 328) = v50;
  *v50 = v0;
  v50[1] = sub_21D08E1DC;
  v51 = *(v0 + 168);
  v52 = *(v0 + 56);

  return v69(v52, v51);
}

uint64_t sub_21D08E1DC()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_21D08E42C;
  }

  else
  {
    v2 = sub_21D08E2F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D08E2F0()
{
  v1 = v0[33];
  v2 = v0[21];
  sub_21D08E568(v0[15], v2, v0[9], v0[12], v0[13]);
  sub_21D091138(v2, _s18InstrumentedTokensV13AsyncIteratorVMa);
  sub_21D091138(v1, _s18InstrumentedTokensVMa);

  v3 = v0[1];

  return v3();
}

uint64_t sub_21D08E42C()
{
  v1 = v0[33];
  v2 = v0[21];
  sub_21D08E568(v0[15], v2, v0[9], v0[12], v0[13]);
  sub_21D091138(v2, _s18InstrumentedTokensV13AsyncIteratorVMa);
  sub_21D091138(v1, _s18InstrumentedTokensVMa);

  v3 = v0[1];

  return v3();
}

uint64_t sub_21D08E568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = sub_21D094180();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18InstrumentedTokensV13AsyncIteratorVMa(0);
  sub_21D0942F0();
  sub_21D0941A0();
  sub_21D094150();

  v11 = sub_21D0941A0();
  v12 = sub_21D094670();

  if (sub_21D094680())
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_21D05550C(a4, a5, &v18);
    v15 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v11, v12, v15, "executePrivateMLRequest", "request complete requestIdentifier=%{public, signpost.description=attribute,public}s)", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223D3CDF0](v14, -1, -1);
    MEMORY[0x223D3CDF0](v13, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t NewInferenceProvider.deinit()
{
  v1 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  v2 = sub_21D094230();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_initializationInstant;
  v4 = sub_21D094730();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  v6 = sub_21D0941B0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t NewInferenceProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  v2 = sub_21D094230();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_initializationInstant;
  v4 = sub_21D094730();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  v6 = sub_21D0941B0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_21D08E954@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21D094230();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21D0941B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  if (qword_281221778 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_2812217C8);
  v13 = *(v3 + 16);
  v13(v10 + v11, v12, v2);
  sub_21D094700();
  v13(v5, v10 + v11, v2);
  sub_21D094190();
  result = (*(v7 + 32))(v10 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster, v9, v6);
  *a1 = v10;
  return result;
}

uint64_t sub_21D08EB60(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0522A0;

  return NewInferenceProvider.loadIn(inferenceAssetIdentifier:)(a1, a2);
}

uint64_t sub_21D08EC08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0522A0;

  return NewInferenceProvider.loadOut(inferenceAssetIdentifier:)(a1, a2);
}

void sub_21D08ECB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D0522A0;

  JUMPOUT(0x223D3C040);
}

uint64_t sub_21D08EDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D08EE70;

  return NewInferenceProvider.requestOneShot(clientData:configuration:)(a1, a2, a3);
}

uint64_t sub_21D08EE70(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_21D08EF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0522A0;

  return NewInferenceProvider.requestOneShot(clientData:configuration:)(a1, a2, a3);
}

void sub_21D08F034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D051DB8;

  JUMPOUT(0x223D3C010);
}

uint64_t sub_21D08F0E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D051DB8;

  return NewInferenceProvider.prewarmHint(_:)(a1);
}

uint64_t sub_21D08F17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_21D094470();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_21D094470();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_21D0947D0();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_21D094470();
      v7 = v9;
    }

    while (v9);
  }

  sub_21D094470();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

double sub_21D08F2D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21D055BA8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D0573E8();
      v10 = v12;
    }

    *a3 = *(*(v10 + 56) + 16 * v8);
    sub_21D08F590(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_21D095DD0;
  }

  return result;
}

uint64_t sub_21D08F388(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21D055BA8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21D05756C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_21D08F740(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_21D08F420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_21D055BA8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D057844();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_21D0931D0();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_21D08F8F0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_21D0931D0();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_21D08F590(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21D0946C0() + 1) & ~v5;
    do
    {
      sub_21D094850();

      sub_21D094450();
      v9 = sub_21D094870();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21D08F740(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21D0946C0() + 1) & ~v5;
    do
    {
      sub_21D094850();

      sub_21D094450();
      v9 = sub_21D094870();

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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21D08F8F0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21D0946C0() + 1) & ~v5;
    while (1)
    {
      sub_21D094850();

      sub_21D094450();
      v9 = sub_21D094870();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_21D0931D0() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_21D08FADC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D08FB1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D08FAFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D08FC60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D08FB1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54410, &qword_21D096420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54418, &qword_21D096428);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D08FC60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544B8, &qword_21D0964C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_21D08FD64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543E8, &qword_21D0963E8);
    v3 = sub_21D094770();
    v4 = a1 + 32;

    while (1)
    {
      sub_21D05B270(v4, &v13, &qword_27CE543F0, &qword_21D0963F0);
      v5 = v13;
      v6 = v14;
      result = sub_21D055BA8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21D091028(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21D08FE94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54208, &qword_21D095B58);
    v3 = sub_21D094770();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21D055BA8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21D08FF98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54218, &qword_21D0964D0);
    v3 = sub_21D094770();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_21D055C20(v7, v8);
      result = sub_21D055BA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21D0900B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541C8, &unk_21D095B10);
    v3 = sub_21D094770();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21D055BA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21D0901C4(uint64_t a1)
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
  v11[1] = sub_21D051DB8;

  return sub_21D061B74(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_21D09029C(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_21D092F20();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_21D090360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_21D0936A0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_21D0936C0();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D090450, 0, 0);
}

uint64_t sub_21D090450()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  sub_21D0936F0();
  v4 = *(sub_21D093D00() - 8);
  swift_task_alloc();
  (*(v4 + 16))();
  sub_21D0900B0(MEMORY[0x277D84F90]);
  sub_21D093690();

  (*(v3 + 104))(v1, *MEMORY[0x277D41588], v2);
  sub_21D0936B0();
  v5 = sub_21D0936D0();
  v0[9] = v5;
  v9 = (v0[3] + *v0[3]);
  v6 = v5;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_21D0906D0;

  return v9(v6);
}

uint64_t sub_21D0906D0()
{

  return MEMORY[0x2822009F8](sub_21D0907CC, 0, 0);
}

uint64_t sub_21D0907CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D090864(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_21D0522A0;

  return sub_21D075130(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_21D09093C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_21D0522A0;

  return sub_21D0821B8(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t sub_21D090A4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_21D090A98()
{
  result = qword_27CE54348;
  if (!qword_27CE54348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54348);
  }

  return result;
}

unint64_t sub_21D090AF0()
{
  result = qword_27CE54350;
  if (!qword_27CE54350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54350);
  }

  return result;
}

unint64_t sub_21D090B48()
{
  result = qword_27CE54358;
  if (!qword_27CE54358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54358);
  }

  return result;
}

unint64_t sub_21D090BA0()
{
  result = qword_27CE54360;
  if (!qword_27CE54360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54360);
  }

  return result;
}

unint64_t sub_21D090BF4()
{
  result = qword_27CE54368;
  if (!qword_27CE54368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54368);
  }

  return result;
}

unint64_t sub_21D090C4C()
{
  result = qword_27CE54370;
  if (!qword_27CE54370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54370);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_32PrivateMLClientInferenceProvider0abcD5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21D090CD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21D090D18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D090D5C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_21D090D90(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_21D090DEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for NewInferenceProvider(uint64_t a1)
{
  result = qword_2812215D8;
  if (!qword_2812215D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D090EB0(uint64_t a1)
{
  result = sub_21D094230();
  if (v2 <= 0x3F)
  {
    result = sub_21D094730();
    if (v3 <= 0x3F)
    {
      result = sub_21D0941B0();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21D090FE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_21D091028(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21D091038(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21D0522A0;

  return sub_21D08B12C(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_21D091138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21D091198()
{
  result = qword_281221478;
  if (!qword_281221478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221478);
  }

  return result;
}

unint64_t sub_21D0911EC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_21D055BA8(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_21D056498(v15, v5 & 1);
    result = sub_21D055BA8(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_21D0947E0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v22 = (v18[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    *(v18[7] + 4 * result) = v9;
    v23 = v18[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_21D0576DC();
  result = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = *(v18[7] + 4 * result);
  v20 = result;

  *(v18[7] + 4 * v20) = v19;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v27 = *a3;

      result = sub_21D055BA8(v7, v6);
      v29 = v27[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v28;
      if (v27[3] < v31)
      {
        sub_21D056498(v31, 1);
        result = sub_21D055BA8(v7, v6);
        if ((v8 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v8)
      {
        v25 = *(v33[7] + 4 * result);
        v26 = result;

        *(v33[7] + 4 * v26) = v25;
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        v34 = (v33[6] + 16 * result);
        *v34 = v7;
        v34[1] = v6;
        *(v33[7] + 4 * result) = v9;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      v5 += 6;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_21D091454(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_21D094070() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1[3];
  v14 = v1[2];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_21D0522A0;

  return sub_21D06A970(a1, v14, v8, v9, v10, v1 + v4, v1 + v7, v11);
}

uint64_t sub_21D091638(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_21D0522A0;

  return sub_21D06D8A8(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21D091728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_21D0522A0;

  return sub_21D0806D4(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t sub_21D091838(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21D0522A0;

  return sub_21D08B12C(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_21D091938(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_21D094070() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_21D093EB0() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1[5];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_21D0522A0;

  return sub_21D0629D0(a1, v11, v12, v13, v14, v1 + v4, v1 + v7, v1 + v10);
}

uint64_t sub_21D091B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21D091B88(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_21D0522A0;

  return sub_21D065BE4(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21D091C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_21D0522A0;

  return sub_21D08BBB0(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t sub_21D091D88(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21D051DB8;

  return sub_21D08D86C(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_21D091E88(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_21D091EEC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21D0947D0() & 1;
  }
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

uint64_t sub_21D091FF0()
{
  v0 = sub_21D094230();
  __swift_allocate_value_buffer(v0, qword_281221760);
  __swift_project_value_buffer(v0, qword_281221760);

  return sub_21D094220();
}

uint64_t static Logger.viewCycle.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812217B0 != -1)
  {
    swift_once();
  }

  v2 = sub_21D094230();
  v3 = __swift_project_value_buffer(v2, qword_281221760);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t InferenceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  InferenceProvider.init()();
  return v0;
}

void *InferenceProvider.init()()
{
  v1 = v0;
  v2 = sub_21D094230();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21D0941B0();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812217B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_281221760);
  v9 = sub_21D094210();
  v10 = sub_21D094550();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21D044000, v9, v10, "Using NewInferenceProvider", v11, 2u);
    MEMORY[0x223D3CDF0](v11, -1, -1);
  }

  v12 = type metadata accessor for NewInferenceProvider(0);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  if (qword_281221778 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_2812217C8);
  v16 = *(v3 + 16);
  v16(v13 + v14, v15, v2);
  sub_21D094700();
  v16(v5, v13 + v14, v2);
  sub_21D094190();
  (*(v6 + 32))(v13 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster, v8, v19);
  v1[5] = v12;
  v1[6] = sub_21D092430();
  v1[2] = v13;
  return v1;
}

unint64_t sub_21D092430()
{
  result = qword_27CE54500;
  if (!qword_27CE54500)
  {
    type metadata accessor for NewInferenceProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54500);
  }

  return result;
}

uint64_t InferenceProvider.loadIn(inferenceAssetIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21D0924AC, 0, 0);
}

uint64_t sub_21D0924AC()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_21D092DD8;
  v6 = v0[2];
  v5 = v0[3];

  return MEMORY[0x282188C28](v6, v5, v2, v3);
}

uint64_t InferenceProvider.loadOut(inferenceAssetIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21D092590, 0, 0);
}

uint64_t sub_21D092590()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_21D092DD8;
  v6 = v0[2];
  v5 = v0[3];

  return MEMORY[0x282188C30](v6, v5, v2, v3);
}

uint64_t InferenceProvider.requestOneShot(clientData:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21D0926E8, 0, 0);
}

uint64_t sub_21D0926E8()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_21D0927AC;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x282188C20](v7, v5, v6, v2, v3);
}

uint64_t sub_21D0927AC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t InferenceProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_21D092914@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = InferenceProvider.init()();
  *a1 = v2;
  return result;
}

uint64_t sub_21D092950(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_21D092978, 0, 0);
}

uint64_t sub_21D092978()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_21D092A38;
  v6 = v0[2];
  v5 = v0[3];

  return MEMORY[0x282188C28](v6, v5, v2, v3);
}

uint64_t sub_21D092A38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21D092B2C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_21D092590, 0, 0);
}

uint64_t sub_21D092BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_21D092BF8, 0, 0);
}

uint64_t sub_21D092BF8()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_21D092DDC;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x282188C20](v7, v5, v6, v2, v3);
}

uint64_t sub_21D092CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21D0522A0;

  return MEMORY[0x282188C50](a1, a2, a3, a4, a5);
}